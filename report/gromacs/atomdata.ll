Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/atomdata?download=true
inline.NumInlined: 1593
inline.NumDeleted: 777
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN3gmx31nbnxn_atomdata_copy_x_to_nbat_xERKNS_7GridSetENS_12AtomLocalityEPA3_KfPNS_16nbnxn_atomdata_tE.omp_outlined:bb.a
          catch ptr @_ZTISt9exception
          catch ptr null
  br label %bb.o

_ZN3gmxL23copyXToNbatXForGridPartERKNS_4GridERKNS_5RangeIiEEPA3_KfPNS_16nbnxn_atomdata_tE.exit: ; preds = %.noexc54, %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us26.i, %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us22.i, %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us18.i, %_ZN3gmxL21copyRVecToNbatXYZRealILi3EEEviPA3_KfPfi.exit.us.i, %bb.m, %_ZN3gmx5RangeIiEC2Eii.exit, %.lr.ph.i
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.jg = trunc nsw i64 %indvars.iv.next to i32
  %.not60 = icmp eq i32 %i.t, %i.jg
  br i1 %.not60, label %._crit_edge.loopexit, label %bb.c

bb.o:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ig, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.2 = extractvalue { ptr, i32 } %.pn.pn.pn, 1
  %.240 = extractvalue { ptr, i32 } %.pn.pn.pn, 0 ; 2 uses
  %i.jh = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9exception) #22
  %i.ji = icmp eq i32 %.2, %i.jh
  br i1 %i.ji, label %bb.p, label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.jj = call ptr @__cxa_begin_catch(ptr %.240) #22
  invoke void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8) %i.jj) #33
          to label %bb.q unwind label %bb.s

bb.q:                                             ; preds = %bb.p
  unreachable

._crit_edge71:                                    ; preds = %._crit_edge, %.lr.ph70, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge71, %bb.a
  ret void

bb.s:                                             ; preds = %bb.p
  %i.jk = landingpad { ptr, i32 }
          catch ptr null
  %i.jl = extractvalue { ptr, i32 } %i.jk, 0
  call void @__clang_call_terminate(ptr %i.jl) #34
  unreachable

bb.t:                                             ; preds = %bb.o
  call void @__clang_call_terminate(ptr %.240) #34
  unreachable
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #25

; Function Attrs: noreturn
declare void @_ZN3gmx28processExceptionAsFatalErrorERKSt9exception(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN3gmx30nbnxn_atomdata_x_to_nbat_x_gpuERKNS_7GridSetENS_12AtomLocalityEPNS_8NbnxmGpuEPvP20GpuEventSynchronizer(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(232) %0, i32 noundef %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val14 = load i32, ptr %i.b, align 8
  switch i32 %1, label %_ZN3gmxL12getGridRangeERKNS_7GridSetENS_12AtomLocalityE.exit [
    i32 2, label %bb.c
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.04.i = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  %i.c = sext i32 %.val14 to i64
  %.not.i.i5.i = icmp eq ptr %.val, null
  %i.d = getelementptr inbounds nuw [376 x i8], ptr %.val, i64 %i.c
  %spec.select.i.i6.i = select i1 %.not.i.i5.i, ptr null, ptr %i.d
  %i.e = ptrtoint ptr %spec.select.i.i6.i to i64
  %i.f = ptrtoint ptr %.val to i64
  %i.g = sub i64 %i.e, %i.f
  %.0.in.i = sdiv exact i64 %i.g, 376
  %.0.i = trunc i64 %.0.in.i to i32
  %.not.i.i = icmp sgt i32 %.04.i, %.0.i
  br i1 %.not.i.i, label %bb.d, label %_ZN3gmxL12getGridRangeERKNS_7GridSetENS_12AtomLocalityE.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @__PRETTY_FUNCTION__._ZZN3gmx5RangeIiEC1EiiENKUlvE_clEv, ptr noundef nonnull @.str.35, i32 noundef 111) #33
  unreachable

_ZN3gmxL12getGridRangeERKNS_7GridSetENS_12AtomLocalityE.exit: ; preds = %bb.a, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN3gmx16nbnxn_atomdata_t23reduceForcesOverThreadsEv(ptr noundef nonnull align 8 dereferenceable(656) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !222
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !230
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 144
  %i.k = trunc i64 %i.j to i32                    ; 2 uses
  store i32 %i.k, ptr %i.a, align 4, !tbaa !109
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.b, i32 %i.k)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 2, ptr nonnull @_ZN3gmx16nbnxn_atomdata_t23reduceForcesOverThreadsEv.omp_outlined, ptr nonnull %i.a, ptr nonnull %0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN3gmx16nbnxn_atomdata_t23reduceForcesOverThreadsEv.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef readonly captures(none) %3) #26 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.std::array.132", align 16  ; 4 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [128 x ptr], align 16             ; 22 uses
  %i.f = load i32, ptr %2, align 4, !tbaa !109    ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i32 0, ptr %i.a, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i32 %i.h, ptr %i.b, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i32 1, ptr %i.c, align 4, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i32 0, ptr %i.d, align 4, !tbaa !109
  %i.i = load i32, ptr %0, align 4, !tbaa !109    ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.j = load i32, ptr %i.b, align 4, !tbaa !109
  %i.k = call i32 @llvm.smin.i32(i32 %i.j, i32 %i.h) ; 3 uses
  store i32 %i.k, ptr %i.b, align 4, !tbaa !109
  %i.l = load i32, ptr %i.a, align 4, !tbaa !109  ; 2 uses
  %.not68 = icmp sgt i32 %i.l, %i.k
  br i1 %.not68, label %._crit_edge72, label %.lr.ph71

.lr.ph71:                                         ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 632
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 640
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 468
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 600
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 608
  %i.r = sext i32 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph71, %._crit_edge67
  %i.s = phi i32 [ %i.k, %.lr.ph71 ], [ %i.ak, %._crit_edge67 ]
  %indvars.iv = phi i64 [ %i.r, %.lr.ph71 ], [ %indvars.iv.next, %._crit_edge67 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  %i.t = load ptr, ptr %i.m, align 8, !tbaa !220  ; 4 uses
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !221
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 4                   ; 2 uses
  %i.z = mul i64 %i.y, %indvars.iv
  %i.aa = load i32, ptr %2, align 4, !tbaa !109
  %i.ab = sext i32 %i.aa to i64                   ; 2 uses
  %i.ac = udiv i64 %i.z, %i.ab                    ; 2 uses
  %i.ad = trunc i64 %i.ac to i32
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ae = mul i64 %i.y, %indvars.iv.next
  %i.af = udiv i64 %i.ae, %i.ab                   ; 2 uses
  %i.ag = trunc i64 %i.af to i32
  %i.ah = icmp slt i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph66.preheader, label %._crit_edge67

.lr.ph66.preheader:                               ; preds = %bb.c
  %sext = shl i64 %i.ac, 32
  %i.ai = ashr exact i64 %sext, 32
  %sext84 = shl i64 %i.af, 32
  %i.aj = ashr exact i64 %sext84, 32
  br label %.lr.ph66

._crit_edge67.loopexit:                           ; preds = %_ZN3gmxL32nbnxn_atomdata_reduce_reals_simdEPfbPPKfiii.exit
  %.pre = load i32, ptr %i.b, align 4, !tbaa !109
  br label %._crit_edge67

._crit_edge67:                                    ; preds = %._crit_edge67.loopexit, %bb.c
  %i.ak = phi i32 [ %.pre, %._crit_edge67.loopexit ], [ %i.s, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  %i.al = sext i32 %i.ak to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.al
  br i1 %.not.not, label %bb.c, label %._crit_edge72

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %_ZN3gmxL32nbnxn_atomdata_reduce_reals_simdEPfbPPKfiii.exit
  %indvars.iv75 = phi i64 [ %i.ai, %.lr.ph66.preheader ], [ %indvars.iv.next76, %_ZN3gmxL32nbnxn_atomdata_reduce_reals_simdEPfbPPKfiii.exit ] ; 5 uses
  %i.am = load i32, ptr %i.o, align 4, !tbaa !90  ; 4 uses
  %indvars.iv75.tr = trunc i64 %indvars.iv75 to i32
  %i.an = shl i32 %indvars.iv75.tr, 4
  %i.ao = mul nsw i32 %i.am, %i.an                ; 6 uses
  %indvars.iv.next76 = add nsw i64 %indvars.iv75, 1 ; 3 uses
  %indvars.iv.next76.tr = trunc i64 %indvars.iv.next76 to i32
  %i.ap = shl i32 %indvars.iv.next76.tr, 4
  %i.aq = mul nsw i32 %i.am, %i.ap                ; 4 uses
  %i.ar = load ptr, ptr %i.q, align 8, !tbaa !222
  %i.as = load ptr, ptr %i.p, align 8, !tbaa !230 ; 4 uses
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au                    ; 2 uses
  %i.aw = icmp sgt i64 %i.av, 144
  br i1 %i.aw, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.lr.ph66
  %i.ax = udiv exact i64 %i.av, 144
  %i.ay = getelementptr inbounds [16 x i8], ptr %i.t, i64 %indvars.iv75
  %i.az = load <2 x i64>, ptr %i.ay, align 8
  %i.ba = call i64 @llvm.umax.i64(i64 %i.ax, i64 2)
  br label %bb.d

._crit_edge:                                      ; preds = %bb.f
  %i.bb = icmp sgt i32 %.1, 0
  br i1 %i.bb, label %bb.g, label %._crit_edge.thread

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.04262 = phi i64 [ 1, %.lr.ph ], [ %i.br, %bb.f ] ; 3 uses
  %.04361 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.f ] ; 3 uses
  %i.bc = trunc i64 %.04262 to i32                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x i64> %i.az, ptr %4, align 16
  %i.bd = sdiv i32 %i.bc, 64
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.be
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !131
  %i.bh = srem i32 %i.bc, 64
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = shl nuw i64 1, %i.bi
  %i.bk = and i64 %i.bg, %i.bj
  %.not57 = icmp eq i64 %i.bk, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br i1 %.not57, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bl = getelementptr inbounds nuw [144 x i8], ptr %i.as, i64 %.04262
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !71
  %i.bo = add nsw i32 %.04361, 1
  %i.bp = sext i32 %.04361 to i64
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bp
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !107
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.1 = phi i32 [ %i.bo, %bb.e ], [ %.04361, %bb.d ] ; 7 uses
  %i.br = add nuw nsw i64 %.04262, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.br, %i.ba
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !384

bb.g:                                             ; preds = %._crit_edge
  %i.bs = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !71 ; 3 uses
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.t, i64 %indvars.iv75
  %.sroa.01.0.copyload = load i64, ptr %i.bu, align 8
  %i.bv = and i64 %.sroa.01.0.copyload, 1
  %.not55 = icmp eq i64 %i.bv, 0
  call void @llvm.experimental.noalias.scope.decl(metadata !385)
  call void @llvm.experimental.noalias.scope.decl(metadata !388)
  %i.bw = icmp sgt i32 %i.am, 0                   ; 2 uses
  br i1 %.not55, label %.preheader49.i, label %.preheader.i

.preheader49.i:                                   ; preds = %bb.g
  br i1 %i.bw, label %.lr.ph54.i, label %_ZN3gmxL32nbnxn_atomdata_reduce_reals_simdEPfbPPKfiii.exit

.lr.ph54.i:                                       ; preds = %.preheader49.i
  %i.bx = load ptr, ptr %i.e, align 16, !tbaa !107, !alias.scope !388, !noalias !385 ; 2 uses
  %.not56 = icmp eq i32 %.1, 1
  %i.by = sext i32 %i.ao to i64                   ; 2 uses
  br i1 %.not56, label %.lr.ph54.split.preheader.i, label %.lr.ph.us.preheader.i

.lr.ph54.split.preheader.i:                       ; preds = %.lr.ph54.i
  %i.bz = shl nsw i64 %i.by, 2                    ; 2 uses
  %scevgep.i = getelementptr i8, ptr %i.bt, i64 %i.bz
  %scevgep61.i = getelementptr i8, ptr %i.bx, i64 %i.bz
  %5 = add i32 %i.ao, 16
  %smax.i = call i32 @llvm.smax.i32(i32 %i.aq, i32 %5)
  %i.ca = xor i32 %i.ao, -1
  %i.cb = add i32 %smax.i, %i.ca
  %i.cc = lshr i32 %i.cb, 4
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 6
  %i.cf = add nuw nsw i64 %i.ce, 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 64 dereferenceable(1) %scevgep61.i, i64 %i.cf, i1 false), !tbaa !129, !noalias !388
  br label %_ZN3gmxL32nbnxn_atomdata_reduce_reals_simdEPfbPPKfiii.exit

.lr.ph.us.preheader.i:                            ; preds = %.lr.ph54.i
  %i.cg = sext i32 %i.aq to i64
  %wide.trip.count.i = zext nneg i32 %.1 to i64
  %i.ch = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter95 = and i64 %i.ch, 7                  ; 3 uses
  %i.ci = add nsw i32 %.1, -2
  %i.cj = icmp ult i32 %i.ci, 7
  %unroll_iter100 = and i64 %i.ch, -8
  %lcmp.mod97.not = icmp eq i64 %xtraiter95, 0
  %lcmp.mod99 = icmp ne i64 %xtraiter95, 0
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %._crit_edge.us.i, %.lr.ph.us.preheader.i
  %indvars.iv64.i = phi i64 [ %i.by, %.lr.ph.us.preheader.i ], [ %indvars.iv.next65.i, %._crit_edge.us.i ] ; 12 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv64.i
  %.val42.us.i = load <16 x float>, ptr %i.ck, align 64, !tbaa !129, !noalias !390 ; 2 uses
  br i1 %i.cj, label %.epil.preheader94, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph.us.i.new ], [ 1, %.lr.ph.us.i ] ; 9 uses
  %.sroa.045.151.us.i = phi <16 x float> [ %i.dx, %.lr.ph.us.i.new ], [ %.val42.us.i, %.lr.ph.us.i ]
  %niter101 = phi i64 [ %niter101.next.7, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !107, !alias.scope !388, !noalias !385
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv64.i
  %.val.us.i = load <16 x float>, ptr %i.cn, align 64, !tbaa !129, !noalias !390
  %i.co = fadd <16 x float> %.sroa.045.151.us.i, %.val.us.i
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !107, !alias.scope !388, !noalias !385
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv64.i
  %.val.us.i.1 = load <16 x float>, ptr %i.cs, align 64, !tbaa !129, !noalias !390
  %i.ct = fadd <16 x float> %i.co, %.val.us.i.1
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !107, !alias.scope !388, !noalias !385
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %indvars.iv64.i
  %.val.us.i.2 = load <16 x float>, ptr %i.cx, align 64, !tbaa !129, !noalias !390
  %i.cy = fadd <16 x float> %i.ct, %.val.us.i.2
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !107, !alias.scope !388, !noalias !385
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %indvars.iv64.i
  %.val.us.i.3 = load <16 x float>, ptr %i.dc, align 64, !tbaa !129, !noalias !390
  %i.dd = fadd <16 x float> %i.cy, %.val.us.i.3
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !107, !alias.scope !388, !noalias !385
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv64.i
  %.val.us.i.4 = load <16 x float>, ptr %i.dh, align 64, !tbaa !129, !noalias !390
  %i.di = fadd <16 x float> %i.dd, %.val.us.i.4
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !107, !alias.scope !388, !noalias !385
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %indvars.iv64.i
  %.val.us.i.5 = load <16 x float>, ptr %i.dm, align 64, !tbaa !129, !noalias !390
  %i.dn = fadd <16 x float> %i.di, %.val.us.i.5
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 48
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !107, !alias.scope !388, !noalias !385
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %indvars.iv64.i
  %.val.us.i.6 = load <16 x float>, ptr %i.dr, align 64, !tbaa !129, !noalias !390
  %i.ds = fadd <16 x float> %i.dn, %.val.us.i.6
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !107, !alias.scope !388, !noalias !385
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dv, i64 %indvars.iv64.i
  %.val.us.i.7 = load <16 x float>, ptr %i.dw, align 64, !tbaa !129, !noalias !390
  %i.dx = fadd <16 x float> %i.ds, %.val.us.i.7   ; 3 uses
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter101.next.7 = add i64 %niter101, 8         ; 2 uses
  %niter101.ncmp.7 = icmp eq i64 %niter101.next.7, %unroll_iter100
  br i1 %niter101.ncmp.7, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !391

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod97.not, label %._crit_edge.us.i, label %.epil.preheader94

.epil.preheader94:                                ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %indvars.iv.i.epil.init = phi i64 [ 1, %.lr.ph.us.i ], [ %indvars.iv.next.i.7, %._crit_edge.us.i.unr-lcssa ]
  %.sroa.045.151.us.i.epil.init = phi <16 x float> [ %.val42.us.i, %.lr.ph.us.i ], [ %i.dx, %._crit_edge.us.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod99)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader94
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader94 ], [ %indvars.iv.next.i.epil, %bb.h ] ; 2 uses
  %.sroa.045.151.us.i.epil = phi <16 x float> [ %.sroa.045.151.us.i.epil.init, %.epil.preheader94 ], [ %i.eb, %bb.h ]
  %epil.iter96 = phi i64 [ 0, %.epil.preheader94 ], [ %epil.iter96.next, %bb.h ]
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i.epil
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !107, !alias.scope !388, !noalias !385
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %indvars.iv64.i
  %.val.us.i.epil = load <16 x float>, ptr %i.ea, align 64, !tbaa !129, !noalias !390
  %i.eb = fadd <16 x float> %.sroa.045.151.us.i.epil, %.val.us.i.epil ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter96.next = add i64 %epil.iter96, 1     ; 2 uses
  %epil.iter96.cmp.not = icmp eq i64 %epil.iter96.next, %xtraiter95
  br i1 %epil.iter96.cmp.not, label %._crit_edge.us.i, label %bb.h, !llvm.loop !392

._crit_edge.us.i:                                 ; preds = %bb.h, %._crit_edge.us.i.unr-lcssa
  %.lcssa91 = phi <16 x float> [ %i.dx, %._crit_edge.us.i.unr-lcssa ], [ %i.eb, %bb.h ]
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv64.i
  store <16 x float> %.lcssa91, ptr %i.ec, align 64, !tbaa !129, !alias.scope !385, !noalias !388
  %indvars.iv.next65.i = add nsw i64 %indvars.iv64.i, 16 ; 2 uses
  %i.ed = icmp slt i64 %indvars.iv.next65.i, %i.cg
  br i1 %i.ed, label %.lr.ph.us.i, label %_ZN3gmxL32nbnxn_atomdata_reduce_reals_simdEPfbPPKfiii.exit, !llvm.loop !393

.preheader.i:                                     ; preds = %bb.g
  br i1 %i.bw, label %.lr.ph.preheader.i, label %_ZN3gmxL32nbnxn_atomdata_reduce_reals_simdEPfbPPKfiii.exit

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ee = sext i32 %i.ao to i64
  %i.ef = sext i32 %i.aq to i64
  %wide.trip.count70.i = zext nneg i32 %.1 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count70.i, 7     ; 3 uses
  %i.eg = icmp ult i32 %.1, 8
  %unroll_iter = and i64 %wide.trip.count70.i, 2147483640
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod93 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.epilog-lcssa, %.lr.ph.preheader.i
  %indvars.iv72.i = phi i64 [ %i.ee, %.lr.ph.preheader.i ], [ %indvars.iv.next73.i, %.epilog-lcssa ] ; 11 uses
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %indvars.iv72.i ; 2 uses
  %.val44.i = load <16 x float>, ptr %i.eh, align 64, !tbaa !129, !alias.scope !385, !noalias !388 ; 2 uses
  br i1 %i.eg, label %.epil.preheader, label %.lr.ph.i.new

.unr-lcssa:                                       ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.lr.ph.i
  %indvars.iv67.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next68.i.7, %.unr-lcssa ]
  %.sroa.045.055.i.epil.init = phi <16 x float> [ %.val44.i, %.lr.ph.i ], [ %i.fz, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod93)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %indvars.iv67.i.epil = phi i64 [ %indvars.iv67.i.epil.init, %.epil.preheader ], [ %indvars.iv.next68.i.epil, %bb.i ] ; 2 uses
  %.sroa.045.055.i.epil = phi <16 x float> [ %.sroa.045.055.i.epil.init, %.epil.preheader ], [ %i.el, %bb.i ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv67.i.epil
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !107, !alias.scope !388, !noalias !385
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %indvars.iv72.i
  %.val43.i.epil = load <16 x float>, ptr %i.ek, align 64, !tbaa !129, !noalias !390
  %i.el = fadd <16 x float> %.sroa.045.055.i.epil, %.val43.i.epil ; 2 uses
  %indvars.iv.next68.i.epil = add nuw nsw i64 %indvars.iv67.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.i, !llvm.loop !394

.epilog-lcssa:                                    ; preds = %bb.i, %.unr-lcssa
  %.lcssa = phi <16 x float> [ %i.fz, %.unr-lcssa ], [ %i.el, %bb.i ]
  store <16 x float> %.lcssa, ptr %i.eh, align 64, !tbaa !129, !alias.scope !385, !noalias !388
  %indvars.iv.next73.i = add nsw i64 %indvars.iv72.i, 16 ; 2 uses
  %i.em = icmp slt i64 %indvars.iv.next73.i, %i.ef
  br i1 %i.em, label %.lr.ph.i, label %_ZN3gmxL32nbnxn_atomdata_reduce_reals_simdEPfbPPKfiii.exit, !llvm.loop !395

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i.7, %.lr.ph.i.new ], [ 0, %.lr.ph.i ] ; 9 uses
  %.sroa.045.055.i = phi <16 x float> [ %i.fz, %.lr.ph.i.new ], [ %.val44.i, %.lr.ph.i ]
  %niter = phi i64 [ %niter.next.7, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv67.i
  %i.eo = load ptr, ptr %i.en, align 16, !tbaa !107, !alias.scope !388, !noalias !385
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %indvars.iv72.i
  %.val43.i = load <16 x float>, ptr %i.ep, align 64, !tbaa !129, !noalias !390
  %i.eq = fadd <16 x float> %.sroa.045.055.i, %.val43.i
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv67.i
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !107, !alias.scope !388, !noalias !385
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.et, i64 %indvars.iv72.i
  %.val43.i.1 = load <16 x float>, ptr %i.eu, align 64, !tbaa !129, !noalias !390
  %i.ev = fadd <16 x float> %i.eq, %.val43.i.1
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv67.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.ey = load ptr, ptr %i.ex, align 16, !tbaa !107, !alias.scope !388, !noalias !385
  %i.ez = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %indvars.iv72.i
  %.val43.i.2 = load <16 x float>, ptr %i.ez, align 64, !tbaa !129, !noalias !390
  %i.fa = fadd <16 x float> %i.ev, %.val43.i.2
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv67.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !107, !alias.scope !388, !noalias !385
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %indvars.iv72.i
  %.val43.i.3 = load <16 x float>, ptr %i.fe, align 64, !tbaa !129, !noalias !390
  %i.ff = fadd <16 x float> %i.fa, %.val43.i.3
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv67.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load ptr, ptr %i.fh, align 16, !tbaa !107, !alias.scope !388, !noalias !385
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.fi, i64 %indvars.iv72.i
  %.val43.i.4 = load <16 x float>, ptr %i.fj, align 64, !tbaa !129, !noalias !390
  %i.fk = fadd <16 x float> %i.ff, %.val43.i.4
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv67.i
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 40
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !107, !alias.scope !388, !noalias !385
  %i.fo = getelementptr inbounds [4 x i8], ptr %i.fn, i64 %indvars.iv72.i
  %.val43.i.5 = load <16 x float>, ptr %i.fo, align 64, !tbaa !129, !noalias !390
end_hunk_0
