Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/hamming?download=true
inline.NumInlined: 1832
inline.NumDeleted: 565
loop-unroll.NumCompletelyUnrolled: 204
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 208
begin_hunk_0_@_ZN5faiss13fvecs2bitvecsEPKfPhmm.omp_outlined:bb.a
  %i.af = getelementptr [4 x i8], ptr %i.ac, i64 %.025.i.epil
  %i.ag = load float, ptr %i.af, align 4, !tbaa !114, !alias.scope !923, !noalias !924
  %i.ah = fcmp ult float %i.ag, 0.000000e+00
  %i.ai = select i1 %i.ah, i8 0, i8 %.01824.i.epil
  %spec.select.i.epil = or i8 %i.ai, %.01923.i.epil ; 2 uses
  %i.aj = shl i8 %.01824.i.epil, 1
  %i.ak = add nuw i64 %.025.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.c, !llvm.loop !921

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %bb.c, %.lr.ph29.i
  %.019.lcssa.i = phi i8 [ 0, %.lr.ph29.i ], [ %spec.select.i.3, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select.i.epil, %bb.c ]
  store i8 %.019.lcssa.i, ptr %.02126.i, align 1, !tbaa !41, !alias.scope !924, !noalias !923
  %i.al = getelementptr inbounds nuw i8, ptr %.02126.i, i64 1
  %i.am = icmp ult i64 %i.x, %i.o
  %indvar.next = add i64 %indvar, 1
  br i1 %i.am, label %.lr.ph29.i, label %_ZN5faiss11fvec2bitvecEPKfPhm.exit.loopexit, !llvm.loop !2

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.new
  %.025.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bk, %bb.d ] ; 5 uses
  %.01824.i = phi i8 [ 1, %.lr.ph.i.new ], [ %i.bj, %bb.d ] ; 5 uses
  %.01923.i = phi i8 [ 0, %.lr.ph.i.new ], [ %spec.select.i.3, %bb.d ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.d ]
  %i.an = getelementptr [4 x i8], ptr %i.ac, i64 %.025.i
  %i.ao = load float, ptr %i.an, align 4, !tbaa !114, !alias.scope !923, !noalias !924
  %i.ap = fcmp ult float %i.ao, 0.000000e+00
  %i.aq = select i1 %i.ap, i8 0, i8 %.01824.i
  %spec.select.i = or i8 %i.aq, %.01923.i
  %i.ar = shl i8 %.01824.i, 1
  %i.as = getelementptr [4 x i8], ptr %i.ac, i64 %.025.i
  %i.at = getelementptr i8, ptr %i.as, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !114, !alias.scope !923, !noalias !924
  %i.av = fcmp ult float %i.au, 0.000000e+00
  %i.aw = select i1 %i.av, i8 0, i8 %i.ar
  %spec.select.i.1 = or i8 %i.aw, %spec.select.i
  %i.ax = shl i8 %.01824.i, 2
  %i.ay = getelementptr [4 x i8], ptr %i.ac, i64 %.025.i
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = load float, ptr %i.az, align 4, !tbaa !114, !alias.scope !923, !noalias !924
  %i.bb = fcmp ult float %i.ba, 0.000000e+00
  %i.bc = select i1 %i.bb, i8 0, i8 %i.ax
  %spec.select.i.2 = or i8 %i.bc, %spec.select.i.1
  %i.bd = shl i8 %.01824.i, 3
  %i.be = getelementptr [4 x i8], ptr %i.ac, i64 %.025.i
  %i.bf = getelementptr i8, ptr %i.be, i64 12
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !114, !alias.scope !923, !noalias !924
  %i.bh = fcmp ult float %i.bg, 0.000000e+00
  %i.bi = select i1 %i.bh, i8 0, i8 %i.bd
  %spec.select.i.3 = or i8 %i.bi, %spec.select.i.2 ; 3 uses
  %i.bj = shl i8 %.01824.i, 4                     ; 2 uses
  %i.bk = add nuw i64 %.025.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %._crit_edge.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !3

_ZN5faiss11fvec2bitvecEPKfPhm.exit.loopexit:      ; preds = %._crit_edge.i
  %.pre = load i64, ptr %i.b, align 8, !tbaa !30
  br label %_ZN5faiss11fvec2bitvecEPKfPhm.exit

_ZN5faiss11fvec2bitvecEPKfPhm.exit:               ; preds = %_ZN5faiss11fvec2bitvecEPKfPhm.exit.loopexit, %.lr.ph.split
  %i.bl = phi i64 [ %.pre, %_ZN5faiss11fvec2bitvecEPKfPhm.exit.loopexit ], [ %i.p, %.lr.ph.split ] ; 2 uses
  %.not.not = icmp slt i64 %.017, %i.bl
  br i1 %.not.not, label %.lr.ph.splitthread-pre-split, label %._crit_edge, !llvm.loop !922

._crit_edge:                                      ; preds = %_ZN5faiss11fvec2bitvecEPKfPhm.exit, %.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_serialized_parallel(ptr, i32) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @__kmpc_end_serialized_parallel(ptr, i32) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5faiss13bitvecs2fvecsEPKhPfmm(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #16 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 3 uses
  %i.c = alloca i64, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 2 uses
  %i.g = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !20
  store ptr %1, ptr %i.b, align 8, !tbaa !117
  store i64 %2, ptr %i.c, align 8, !tbaa !30
  store i64 %3, ptr %i.d, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  %i.h = add i64 %2, 7
  %i.i = lshr i64 %i.h, 3
  store i64 %i.i, ptr %i.e, align 8, !tbaa !30
  %i.j = icmp ugt i64 %3, 100000
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 5, ptr nonnull @_ZN5faiss13bitvecs2fvecsEPKhPfmm.omp_outlined, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.e, ptr nonnull %i.b)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.g)
  store i32 %i.g, ptr %i.f, align 4, !tbaa !15
  call void @_ZN5faiss13bitvecs2fvecsEPKhPfmm.omp_outlined(ptr nonnull %i.f, ptr nonnull poison, ptr %i.d, ptr %i.c, ptr %i.a, ptr %i.e, ptr %i.b) #4
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.g)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  ret void
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss13bitvecs2fvecsEPKhPfmm.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #19 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 0, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 %i.g, ptr %i.b, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i64 1, ptr %i.c, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.h = load i32, ptr %0, align 4, !tbaa !15     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !30
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !30
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not16 = icmp sgt i64 %i.k, %i.j
  br i1 %.not16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %.017 = phi i64 [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 4 uses
  %i.l = load i64, ptr %3, align 8, !tbaa !30     ; 2 uses
  %i.m = load ptr, ptr %4, align 8, !tbaa !20
  %i.n = load i64, ptr %5, align 8, !tbaa !30
  %i.o = mul nsw i64 %i.n, %.017
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.o
  %i.q = load ptr, ptr %6, align 8, !tbaa !117
  %i.r = mul i64 %i.l, %.017
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.r
  invoke void @_ZN5faiss14binary_to_realEmPKhPf(i64 noundef %i.l, ptr noundef %i.p, ptr noundef %i.s)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.t = add nsw i64 %.017, 1
  %i.u = load i64, ptr %i.b, align 8, !tbaa !30
  %.not.not = icmp slt i64 %.017, %i.u
  br i1 %.not.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.a
  ret void

bb.e:                                             ; preds = %.lr.ph
  %i.v = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %i.v, 0
  call void @__clang_call_terminate(ptr %i.w) #26
  unreachable
}

declare void @_ZN5faiss14binary_to_realEmPKhPf(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN5faiss12bitvec_printEPKhm(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #20 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %_ZN5faissL19uint64_reverse_bitsEm.exit._crit_edge
  %.01118 = phi i64 [ %.1.lcssa, %_ZN5faissL19uint64_reverse_bitsEm.exit._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %.01217 = phi ptr [ %i.aa, %_ZN5faissL19uint64_reverse_bitsEm.exit._crit_edge ], [ %0, %bb.a ] ; 2 uses
  %i.a = load i64, ptr %.01217, align 8, !tbaa !30
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph19
  %.011.i = phi i64 [ 0, %.lr.ph19 ], [ %i.n, %bb.b ]
  %.0710.i = phi i32 [ 0, %.lr.ph19 ], [ %i.p, %bb.b ]
  %.089.i = phi i64 [ %i.a, %.lr.ph19 ], [ %i.o, %bb.b ] ; 5 uses
  %i.b = shl i64 %.011.i, 3
  %i.c = shl i64 %.089.i, 2
  %i.d = and i64 %i.c, 4
  %i.e = or disjoint i64 %i.b, %i.d
  %i.f = and i64 %.089.i, 2
  %i.g = or disjoint i64 %i.f, %i.e
  %i.h = lshr i64 %.089.i, 2
  %i.i = and i64 %i.h, 1
  %i.j = or disjoint i64 %i.i, %i.g
  %i.k = lshr i64 %.089.i, 3
  %i.l = shl i64 %i.j, 1
  %i.m = and i64 %i.k, 1
  %i.n = or disjoint i64 %i.m, %i.l               ; 2 uses
  %i.o = lshr i64 %.089.i, 4
  %i.p = add nuw nsw i32 %.0710.i, 4              ; 2 uses
  %exitcond.not.i.3 = icmp eq i32 %i.p, 64
  br i1 %exitcond.not.i.3, label %_ZN5faissL19uint64_reverse_bitsEm.exit.preheader, label %bb.b, !llvm.loop !925

_ZN5faissL19uint64_reverse_bitsEm.exit.preheader: ; preds = %bb.b
  %i.q = icmp ult i64 %.01118, %1
  br i1 %i.q, label %_ZN5faissL19uint64_reverse_bitsEm.exit, label %_ZN5faissL19uint64_reverse_bitsEm.exit._crit_edge

_ZN5faissL19uint64_reverse_bitsEm.exit:           ; preds = %_ZN5faissL19uint64_reverse_bitsEm.exit.preheader, %_ZN5faissL19uint64_reverse_bitsEm.exit
  %.016 = phi i64 [ %i.u, %_ZN5faissL19uint64_reverse_bitsEm.exit ], [ %i.n, %_ZN5faissL19uint64_reverse_bitsEm.exit.preheader ] ; 2 uses
  %.01015 = phi i64 [ %i.v, %_ZN5faissL19uint64_reverse_bitsEm.exit ], [ 0, %_ZN5faissL19uint64_reverse_bitsEm.exit.preheader ] ; 2 uses
  %.114 = phi i64 [ %i.w, %_ZN5faissL19uint64_reverse_bitsEm.exit ], [ %.01118, %_ZN5faissL19uint64_reverse_bitsEm.exit.preheader ]
  %i.r = trunc i64 %.016 to i32
  %i.s = and i32 %i.r, 1
  %i.t = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %i.s) ; 0 uses
  %i.u = lshr i64 %.016, 1
  %i.v = add nuw nsw i64 %.01015, 1
  %i.w = add nuw i64 %.114, 1                     ; 3 uses
  %i.x = icmp samesign ult i64 %.01015, 63
  %i.y = icmp ult i64 %i.w, %1
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %_ZN5faissL19uint64_reverse_bitsEm.exit, label %_ZN5faissL19uint64_reverse_bitsEm.exit._crit_edge, !llvm.loop !926

_ZN5faissL19uint64_reverse_bitsEm.exit._crit_edge: ; preds = %_ZN5faissL19uint64_reverse_bitsEm.exit, %_ZN5faissL19uint64_reverse_bitsEm.exit.preheader
  %.1.lcssa = phi i64 [ %.01118, %_ZN5faissL19uint64_reverse_bitsEm.exit.preheader ], [ %i.w, %_ZN5faissL19uint64_reverse_bitsEm.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01217, i64 8
  %putchar = tail call i32 @putchar(i32 32)       ; 0 uses
  %i.ab = icmp ult i64 %.1.lcssa, %1
  br i1 %i.ab, label %.lr.ph19, label %._crit_edge, !llvm.loop !927

._crit_edge:                                      ; preds = %_ZN5faissL19uint64_reverse_bitsEm.exit._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss14bitvec_shuffleEmmmPKiPKhPh(i64 noundef %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noalias noundef %4, ptr noalias noundef %5) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 2 uses
  %i.i = tail call i32 @__kmpc_global_thread_num(ptr nonnull @2) ; 3 uses
  store i64 %0, ptr %i.a, align 8, !tbaa !30
  store i64 %2, ptr %i.b, align 8, !tbaa !30
  store ptr %3, ptr %i.c, align 8, !tbaa !60
  store ptr %4, ptr %i.d, align 8, !tbaa !20
  store ptr %5, ptr %i.e, align 8, !tbaa !20
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nuw i64 %.01116, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.j, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !928

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #4
  %i.k = add i64 %1, 7
  %i.l = lshr i64 %i.k, 3
  store i64 %i.l, ptr %i.f, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #4
  %i.m = add i64 %2, 7
  %i.n = lshr i64 %i.m, 3
  store i64 %i.n, ptr %i.g, align 8, !tbaa !30
  %i.o = icmp ugt i64 %0, 10000
  br i1 %i.o, label %bb.k, label %bb.l

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01116 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.01116
  %i.q = load i32, ptr %i.p, align 4, !tbaa !15   ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  %i.s = zext nneg i32 %i.q to i64
  %i.t = icmp ugt i64 %1, %i.s
  %or.cond = select i1 %i.r, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  store ptr %i.u, ptr %6, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.v, align 8, !tbaa !40
  store i8 0, ptr %i.u, align 8, !tbaa !41
  %i.w = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15) #4 ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.y = zext nneg i32 %i.w to i64                ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.z)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %6, align 8, !tbaa !42
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !40
  %i.ac = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.aa, i64 noundef %i.ab, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.15) #4 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.y)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e, %bb.d
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.g:                                             ; preds = %bb.e, %bb.c
  %i.ae = call ptr @__cxa_allocate_exception(i64 40) #4 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss14bitvec_shuffleEmmmPKiPKhPh, ptr noundef nonnull @.str.16, i32 noundef 120)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.ae, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #25
          to label %bb.n unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ae) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ad, %bb.f ], [ %i.af, %bb.i ]
  %i.ag = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.u
  br i1 %i.ah, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ai = load i64, ptr %i.u, align 8, !tbaa !41
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.aj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  resume { ptr, i32 } %.pn

bb.k:                                             ; preds = %._crit_edge
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @_ZN5faiss14bitvec_shuffleEmmmPKiPKhPh.omp_outlined, ptr nonnull %i.a, ptr nonnull %i.d, ptr nonnull %i.f, ptr nonnull %i.e, ptr nonnull %i.g, ptr nonnull %i.b, ptr nonnull %i.c)
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  tail call void @__kmpc_serialized_parallel(ptr nonnull @2, i32 %i.i)
  store i32 %i.i, ptr %i.h, align 4, !tbaa !15
  call void @_ZN5faiss14bitvec_shuffleEmmmPKiPKhPh.omp_outlined(ptr nonnull %i.h, ptr nonnull poison, ptr %i.a, ptr %i.d, ptr %i.f, ptr %i.e, ptr %i.g, ptr %i.b, ptr %i.c) #4
  tail call void @__kmpc_end_serialized_parallel(ptr nonnull @2, i32 %i.i)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #4
  ret void

bb.n:                                             ; preds = %bb.h
  unreachable
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @_ZN5faiss14bitvec_shuffleEmmmPKiPKhPh.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %8) #19 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i64, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i64 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 0, ptr %i.a, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 %i.g, ptr %i.b, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i64 1, ptr %i.c, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.h = load i32, ptr %0, align 4, !tbaa !15     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !30
  %i.j = call i64 @llvm.smin.i64(i64 %i.i, i64 %i.g) ; 2 uses
  store i64 %i.j, ptr %i.b, align 8, !tbaa !30
  %i.k = load i64, ptr %i.a, align 8, !tbaa !30   ; 2 uses
  %.not31 = icmp sgt i64 %i.k, %i.j
  br i1 %.not31, label %._crit_edge35, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.b, %._crit_edge
  %.032 = phi i64 [ %i.u, %._crit_edge ], [ %i.k, %bb.b ] ; 4 uses
  %i.l = load ptr, ptr %3, align 8, !tbaa !20
  %i.m = load i64, ptr %4, align 8, !tbaa !30
  %i.n = mul i64 %i.m, %.032
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  %i.p = load ptr, ptr %5, align 8, !tbaa !20
  %i.q = load i64, ptr %6, align 8, !tbaa !30     ; 2 uses
  %i.r = mul i64 %i.q, %.032
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.q, i1 false)
  %i.t = load i64, ptr %7, align 8, !tbaa !30
  %.not36 = icmp eq i64 %i.t, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph34
  %i.u = add nsw i64 %.032, 1
  %i.v = load i64, ptr %i.b, align 8, !tbaa !30
  %.not.not = icmp slt i64 %.032, %i.v
  br i1 %.not.not, label %.lr.ph34, label %._crit_edge35

.lr.ph:                                           ; preds = %.lr.ph34, %.lr.ph
  %.02930 = phi i64 [ %i.ap, %.lr.ph ], [ 0, %.lr.ph34 ] ; 4 uses
  %i.w = load ptr, ptr %8, align 8, !tbaa !60
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.02930
  %i.y = load i32, ptr %i.x, align 4, !tbaa !15   ; 2 uses
  %i.z = ashr i32 %i.y, 3
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds i8, ptr %i.o, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !41
  %i.ad = zext i8 %i.ac to i32
  %i.ae = and i32 %i.y, 7
  %i.af = lshr i32 %i.ad, %i.ae
  %i.ag = and i32 %i.af, 1
  %i.ah = trunc i64 %.02930 to i32
  %i.ai = and i32 %i.ah, 7
end_hunk_0
