Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/faiss/original/LocalSearchQuantizer?download=true
inline.NumInlined: 876
inline.NumDeleted: 439
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN5faiss14FaissExceptionD2Ev:bb.a
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !72
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #16
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN5faiss20LocalSearchQuantizer5trainEmPKf.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %5) #15 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !87   ; 2 uses
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i64 %i.f, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 0, ptr %i.a, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store i64 %i.h, ptr %i.b, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  store i64 1, ptr %i.c, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #16
  store i32 0, ptr %i.d, align 4, !tbaa !91
  %i.i = load i32, ptr %0, align 4, !tbaa !91     ; 2 uses
  call void @__kmpc_for_static_init_8(ptr nonnull @1, i32 %i.i, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i64 1, i64 1)
  %i.j = load i64, ptr %i.b, align 8, !tbaa !65
  %i.k = call i64 @llvm.smin.i64(i64 %i.j, i64 %i.h) ; 5 uses
  store i64 %i.k, ptr %i.b, align 8, !tbaa !65
  %i.l = load i64, ptr %i.a, align 8, !tbaa !65   ; 6 uses
  %.not46 = icmp sgt i64 %i.l, %i.k
  br i1 %.not46, label %._crit_edge48, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.m = load i64, ptr %3, align 8, !tbaa !65     ; 8 uses
  %i.n = uitofp i64 %i.m to float                 ; 3 uses
  %.not58 = icmp eq i64 %i.m, 0
  %i.o = load ptr, ptr %5, align 8, !tbaa !17     ; 3 uses
  br i1 %.not58, label %.preheader.lr.ph.split, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.p = load ptr, ptr %4, align 8, !tbaa !66
  %i.q = load i64, ptr %i.e, align 8, !tbaa !87   ; 10 uses
  %xtraiter = and i64 %i.m, 3                     ; 3 uses
  %i.r = icmp ult i64 %i.m, 4
  %unroll_iter = and i64 %i.m, -4
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod75 = icmp ne i64 %xtraiter, 0
  %xtraiter77 = and i64 %i.m, 3                   ; 3 uses
  %i.s = icmp ult i64 %i.m, 4
  %unroll_iter82 = and i64 %i.m, -4
  %lcmp.mod79.not = icmp eq i64 %xtraiter77, 0
  %lcmp.mod81 = icmp ne i64 %xtraiter77, 0
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge42.us.us, %.preheader.lr.ph.split.us
  %.047.us.us = phi i64 [ %i.l, %.preheader.lr.ph.split.us ], [ %i.bq, %._crit_edge42.us.us ] ; 4 uses
  %invariant.gep.us.us = getelementptr [4 x i8], ptr %i.p, i64 %.047.us.us ; 10 uses
  br i1 %i.r, label %.epil.preheader, label %.preheader.us.us.new

.preheader.us.us.new:                             ; preds = %.preheader.us.us, %.preheader.us.us.new
  %.03136.us.us = phi i64 [ %i.ai, %.preheader.us.us.new ], [ 0, %.preheader.us.us ] ; 5 uses
  %.03235.us.us = phi float [ %i.ah, %.preheader.us.us.new ], [ 0.000000e+00, %.preheader.us.us ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.us.new ], [ 0, %.preheader.us.us ]
  %i.t = mul i64 %i.q, %.03136.us.us
  %gep.us.us = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.t
  %i.u = load float, ptr %gep.us.us, align 4, !tbaa !95
  %i.v = fadd float %.03235.us.us, %i.u
  %i.w = or disjoint i64 %.03136.us.us, 1
  %i.x = mul i64 %i.q, %i.w
  %gep.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.x
  %i.y = load float, ptr %gep.us.us.1, align 4, !tbaa !95
  %i.z = fadd float %i.v, %i.y
  %i.aa = or disjoint i64 %.03136.us.us, 2
  %i.ab = mul i64 %i.q, %i.aa
  %gep.us.us.2 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.ab
  %i.ac = load float, ptr %gep.us.us.2, align 4, !tbaa !95
  %i.ad = fadd float %i.z, %i.ac
  %i.ae = or disjoint i64 %.03136.us.us, 3
  %i.af = mul i64 %i.q, %i.ae
  %gep.us.us.3 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.af
  %i.ag = load float, ptr %gep.us.us.3, align 4, !tbaa !95
  %i.ah = fadd float %i.ad, %i.ag                 ; 3 uses
  %i.ai = add nuw i64 %.03136.us.us, 4            ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.unr-lcssa, label %.preheader.us.us.new, !llvm.loop !150

._crit_edge.us.us.unr-lcssa:                      ; preds = %.preheader.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.preheader.us.us
  %.03136.us.us.epil.init = phi i64 [ 0, %.preheader.us.us ], [ %i.ai, %._crit_edge.us.us.unr-lcssa ]
  %.03235.us.us.epil.init = phi float [ 0.000000e+00, %.preheader.us.us ], [ %i.ah, %._crit_edge.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod75)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.03136.us.us.epil = phi i64 [ %.03136.us.us.epil.init, %.epil.preheader ], [ %i.am, %bb.c ] ; 2 uses
  %.03235.us.us.epil = phi float [ %.03235.us.us.epil.init, %.epil.preheader ], [ %i.al, %bb.c ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.aj = mul i64 %i.q, %.03136.us.us.epil
  %gep.us.us.epil = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.aj
  %i.ak = load float, ptr %gep.us.us.epil, align 4, !tbaa !95
  %i.al = fadd float %.03235.us.us.epil, %i.ak    ; 2 uses
  %i.am = add nuw i64 %.03136.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us, label %bb.c, !llvm.loop !151

._crit_edge.us.us:                                ; preds = %bb.c, %._crit_edge.us.us.unr-lcssa
  %.lcssa = phi float [ %i.ah, %._crit_edge.us.us.unr-lcssa ], [ %i.al, %bb.c ]
  %i.an = fdiv float %.lcssa, %i.n                ; 5 uses
  br i1 %i.s, label %.epil.preheader76, label %._crit_edge.us.us.new

._crit_edge.us.us.new:                            ; preds = %._crit_edge.us.us, %._crit_edge.us.us.new
  %.02939.us.us = phi i64 [ %i.bh, %._crit_edge.us.us.new ], [ 0, %._crit_edge.us.us ] ; 5 uses
  %.03038.us.us = phi float [ %i.bg, %._crit_edge.us.us.new ], [ 0.000000e+00, %._crit_edge.us.us ]
  %niter83 = phi i64 [ %niter83.next.3, %._crit_edge.us.us.new ], [ 0, %._crit_edge.us.us ]
  %i.ao = mul i64 %i.q, %.02939.us.us
  %gep45.us.us = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.ao
  %i.ap = load float, ptr %gep45.us.us, align 4, !tbaa !95
  %i.aq = fsub float %i.ap, %i.an                 ; 2 uses
  %i.ar = call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %.03038.us.us)
  %i.as = or disjoint i64 %.02939.us.us, 1
  %i.at = mul i64 %i.q, %i.as
  %gep45.us.us.1 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.at
  %i.au = load float, ptr %gep45.us.us.1, align 4, !tbaa !95
  %i.av = fsub float %i.au, %i.an                 ; 2 uses
  %i.aw = call float @llvm.fmuladd.f32(float %i.av, float %i.av, float %i.ar)
  %i.ax = or disjoint i64 %.02939.us.us, 2
  %i.ay = mul i64 %i.q, %i.ax
  %gep45.us.us.2 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.ay
  %i.az = load float, ptr %gep45.us.us.2, align 4, !tbaa !95
  %i.ba = fsub float %i.az, %i.an                 ; 2 uses
  %i.bb = call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.aw)
  %i.bc = or disjoint i64 %.02939.us.us, 3
  %i.bd = mul i64 %i.q, %i.bc
  %gep45.us.us.3 = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.bd
  %i.be = load float, ptr %gep45.us.us.3, align 4, !tbaa !95
  %i.bf = fsub float %i.be, %i.an                 ; 2 uses
  %i.bg = call float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.bb) ; 3 uses
  %i.bh = add nuw i64 %.02939.us.us, 4            ; 2 uses
  %niter83.next.3 = add nuw i64 %niter83, 4       ; 2 uses
  %niter83.ncmp.3 = icmp eq i64 %niter83.next.3, %unroll_iter82
  br i1 %niter83.ncmp.3, label %._crit_edge42.us.us.unr-lcssa, label %._crit_edge.us.us.new, !llvm.loop !152

._crit_edge42.us.us.unr-lcssa:                    ; preds = %._crit_edge.us.us.new
  br i1 %lcmp.mod79.not, label %._crit_edge42.us.us, label %.epil.preheader76

.epil.preheader76:                                ; preds = %._crit_edge42.us.us.unr-lcssa, %._crit_edge.us.us
  %.02939.us.us.epil.init = phi i64 [ 0, %._crit_edge.us.us ], [ %i.bh, %._crit_edge42.us.us.unr-lcssa ]
  %.03038.us.us.epil.init = phi float [ 0.000000e+00, %._crit_edge.us.us ], [ %i.bg, %._crit_edge42.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod81)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader76
  %.02939.us.us.epil = phi i64 [ %.02939.us.us.epil.init, %.epil.preheader76 ], [ %i.bm, %bb.d ] ; 2 uses
  %.03038.us.us.epil = phi float [ %.03038.us.us.epil.init, %.epil.preheader76 ], [ %i.bl, %bb.d ]
  %epil.iter78 = phi i64 [ 0, %.epil.preheader76 ], [ %epil.iter78.next, %bb.d ]
  %i.bi = mul i64 %i.q, %.02939.us.us.epil
  %gep45.us.us.epil = getelementptr [4 x i8], ptr %invariant.gep.us.us, i64 %i.bi
  %i.bj = load float, ptr %gep45.us.us.epil, align 4, !tbaa !95
  %i.bk = fsub float %i.bj, %i.an                 ; 2 uses
  %i.bl = call float @llvm.fmuladd.f32(float %i.bk, float %i.bk, float %.03038.us.us.epil) ; 2 uses
  %i.bm = add nuw i64 %.02939.us.us.epil, 1
  %epil.iter78.next = add i64 %epil.iter78, 1     ; 2 uses
  %epil.iter78.cmp.not = icmp eq i64 %epil.iter78.next, %xtraiter77
  br i1 %epil.iter78.cmp.not, label %._crit_edge42.us.us, label %bb.d, !llvm.loop !153

._crit_edge42.us.us:                              ; preds = %bb.d, %._crit_edge42.us.us.unr-lcssa
  %.lcssa73 = phi float [ %i.bg, %._crit_edge42.us.us.unr-lcssa ], [ %i.bl, %bb.d ]
  %i.bn = fdiv float %.lcssa73, %i.n
  %i.bo = call float @sqrtf(float noundef %i.bn) #16
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.047.us.us
  store float %i.bo, ptr %i.bp, align 4, !tbaa !95
  %i.bq = add i64 %.047.us.us, 1
  %exitcond62.not = icmp eq i64 %.047.us.us, %i.k
  br i1 %exitcond62.not, label %._crit_edge48, label %.preheader.us.us

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.br = fdiv float 0.000000e+00, %i.n
  %i.bs = call float @sqrtf(float noundef %i.br) #16 ; 2 uses
  %i.bt = add nsw i64 %i.k, 1
  %i.bu = sub i64 %i.bt, %i.l                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bu, 8
  br i1 %min.iters.check, label %.preheader.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.lr.ph.split
  %n.vec = and i64 %i.bu, -8                      ; 3 uses
  %i.bv = add i64 %i.l, %n.vec
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bs, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %i.o, i64 %i.l
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bx = getelementptr [4 x i8], ptr %i.bw, i64 %index ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  store <4 x float> %broadcast.splat, ptr %i.bx, align 4, !tbaa !95
  store <4 x float> %broadcast.splat, ptr %i.by, align 4, !tbaa !95
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bu, %n.vec
  br i1 %cmp.n, label %._crit_edge48, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split, %middle.block
  %.047.ph = phi i64 [ %i.l, %.preheader.lr.ph.split ], [ %i.bv, %middle.block ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.047 = phi i64 [ %i.cb, %.preheader ], [ %.047.ph, %.preheader.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %.047
  store float %i.bs, ptr %i.ca, align 4, !tbaa !95
  %i.cb = add i64 %.047, 1
  %exitcond63.not = icmp eq i64 %.047, %i.k
  br i1 %exitcond63.not, label %._crit_edge48, label %.preheader, !llvm.loop !155

._crit_edge48:                                    ; preds = %._crit_edge42.us.us, %.preheader, %middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge48, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_8(ptr, i32, i32, ptr, ptr, ptr, ptr, i64, i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #16

; Function Attrs: nounwind
declare !callback !117 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define noundef float @_ZNK5faiss20LocalSearchQuantizer8evaluateEPKiPKfmPf(ptr noundef nonnull align 8 dereferenceable(497) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca float, align 4                    ; 5 uses
  %i.b = alloca ptr, align 8                      ; 2 uses
  %i.c = alloca ptr, align 8                      ; 2 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 2 uses
  %5 = alloca %"struct.faiss::lsq::LSQTimerScope", align 8 ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::vector.11", align 8    ; 10 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !119
  store ptr %2, ptr %i.c, align 8, !tbaa !66
  store i64 %3, ptr %i.d, align 8, !tbaa !65
  store ptr %4, ptr %i.e, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.f, ptr %6, align 8, !tbaa !69
  store i64 7310575252086552165, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 8, ptr %i.g, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 0, ptr %i.h, align 8, !tbaa !72
  invoke void @_ZN5faiss3lsq13LSQTimerScopeC1EPNS0_8LSQTimerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(49) %5, ptr noundef nonnull @_ZN5faiss9lsq_timerE, ptr noundef nonnull align 8 %6)
          to label %bb.a unwind label %bb.e

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.i = load ptr, ptr %6, align 8, !tbaa !73     ; 2 uses
  %i.j = icmp eq ptr %i.i, %i.f
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.f, align 8, !tbaa !72
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.l) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !87
  %i.o = mul i64 %i.n, %3                         ; 4 uses
  %i.p = icmp ugt i64 %i.o, 2305843009213693951
  br i1 %i.p, label %bb.b, label %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #26
          to label %.noexc11 unwind label %bb.f

.noexc11:                                         ; preds = %bb.b
  unreachable

_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.not.i.i.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i, label %bb.c

_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.c:                                             ; preds = %_ZNSt6vectorIfSaIfEE17_S_check_init_lenEmRKS0_.exit.i
  %i.q = shl nuw nsw i64 %i.o, 2                  ; 3 uses
  %i.r = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #27
          to label %.noexc12 unwind label %bb.f   ; 4 uses

.noexc12:                                         ; preds = %bb.c
  store ptr %i.r, ptr %7, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %i.s, ptr %i.t, align 8, !tbaa !18
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.r, i8 0, i64 %i.q, i1 false), !tbaa !95
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc12, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIfSaIfEEC2EmRKS0_.exit.thread.i ], [ %i.u, %.noexc12 ]
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.v, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !95
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 7, ptr nonnull @"_ZZNK5faiss20LocalSearchQuantizer8evaluateEPKiPKfmPfENK3$_0clILNS_9SIMDLevelE0EEEDav.omp_outlined", ptr nonnull %i.d, ptr nonnull %i.b, ptr nonnull %0, ptr nonnull %7, ptr nonnull %i.c, ptr nonnull %i.a, ptr nonnull %i.e)
  %i.w = load float, ptr %i.a, align 4, !tbaa !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.x = load i64, ptr %i.d, align 8, !tbaa !65
  %i.y = load ptr, ptr %7, align 8, !tbaa !17     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIfSaIfEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %.loopexit
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit

_ZNSt6vectorIfSaIfEED2Ev.exit:                    ; preds = %.loopexit, %bb.d
  %i.ae = uitofp i64 %i.x to float
  %i.af = fdiv float %i.w, %i.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @_ZN5faiss3lsq13LSQTimerScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  ret float %i.af

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %6, align 8, !tbaa !73    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.f
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13: ; preds = %bb.e
  %i.aj = load i64, ptr %i.f, align 8, !tbaa !72
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

bb.f:                                             ; preds = %bb.c, %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @_ZN5faiss3lsq13LSQTimerScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %5) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit15: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13, %bb.f
  %.pn6.pn = phi { ptr, i32 } [ %i.al, %bb.f ], [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i13 ], [ %i.ag, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss20LocalSearchQuantizer16update_codebooksEPKfPKim(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(497) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %i.a = alloca i32, align 4                      ; 10 uses
end_hunk_0
begin_hunk_1_@_ZN5faiss20LocalSearchQuantizer16update_codebooksEPKfPKim:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.pm = sub i64 %.sroa.11242.0, %i.pl
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.0, i64 noundef %i.pm) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit222

_ZNSt6vectorIdSaIdEED2Ev.exit222:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ch
  %.not.i.i.i223 = icmp eq ptr %.sroa.0246.0, null
  br i1 %.not.i.i.i223, label %_ZNSt6vectorIfSaIfEED2Ev.exit159, label %_ZNSt6vectorIfSaIfEED2Ev.exit159.sink.split

bb.ci:                                            ; preds = %bb.ce, %bb.cd
  %i.pn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit226

bb.cj:                                            ; preds = %_ZNSt6vectorIdSaIdEEC2EmRKS0_.exit
  %i.po = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  %.not.i.i.i225 = icmp eq ptr %.sroa.0231.0, null
  br i1 %.not.i.i.i225, label %_ZNSt6vectorIdSaIdEED2Ev.exit226, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.pp = ptrtoint ptr %.sroa.11.0 to i64
  %i.pq = ptrtoint ptr %.sroa.0231.0 to i64
  %i.pr = sub i64 %i.pp, %i.pq
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0231.0, i64 noundef %i.pr) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit226

scalar.ph427:                                     ; preds = %scalar.ph427.preheader, %scalar.ph427
  %.0319 = phi i64 [ %i.pw, %scalar.ph427 ], [ %.0319.ph, %scalar.ph427.preheader ] ; 3 uses
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0231.0, i64 %.0319
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !105
  %i.pu = fptrunc double %i.pt to float
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.pa, i64 %.0319
  store float %i.pu, ptr %i.pv, align 4, !tbaa !95
  %i.pw = add nuw i64 %.0319, 1                   ; 2 uses
  %exitcond345.not = icmp eq i64 %i.pw, %i.oy
  br i1 %exitcond345.not, label %._crit_edge321.thread, label %scalar.ph427, !llvm.loop !173

._crit_edge321.thread:                            ; preds = %scalar.ph427, %middle.block436
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #16
  br label %bb.cg

_ZNSt6vectorIdSaIdEED2Ev.exit226:                 ; preds = %bb.ck, %bb.cj, %bb.ci
  %.pn129 = phi { ptr, i32 } [ %i.pn, %bb.ci ], [ %i.po, %bb.cj ], [ %i.po, %bb.ck ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #16
  br label %.body213

.body213:                                         ; preds = %bb.cf, %_ZNSt6vectorIiSaIiEED2Ev.exit35.i189, %_ZNSt6vectorIdSaIdEED2Ev.exit226
  %.pn129.pn = phi { ptr, i32 } [ %.pn129, %_ZNSt6vectorIdSaIdEED2Ev.exit226 ], [ %i.nt, %bb.cf ], [ %.pn17.pn.pn71.i190, %_ZNSt6vectorIiSaIiEED2Ev.exit35.i189 ] ; 2 uses
  %.not.i.i.i227 = icmp eq ptr %.sroa.0237.0, null
  br i1 %.not.i.i.i227, label %_ZNSt6vectorIdSaIdEED2Ev.exit228, label %bb.cl

bb.cl:                                            ; preds = %.body213
  %i.px = ptrtoint ptr %.sroa.0237.0 to i64
  %i.py = sub i64 %.sroa.11242.0, %i.px
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0237.0, i64 noundef %i.py) #25
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit228

_ZNSt6vectorIdSaIdEED2Ev.exit228:                 ; preds = %bb.cl, %.body213, %bb.ax
  %.pn129.pn.pn = phi { ptr, i32 } [ %i.ik, %bb.ax ], [ %.pn129.pn, %.body213 ], [ %.pn129.pn, %bb.cl ] ; 2 uses
  %.not.i.i.i229 = icmp eq ptr %.sroa.0246.0, null
  br i1 %.not.i.i.i229, label %_ZNSt6vectorIfSaIfEED2Ev.exit163, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit228
  %i.pz = ptrtoint ptr %.sroa.0246.0 to i64
  %i.qa = sub i64 %.sroa.15.0, %i.pz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0246.0, i64 noundef %i.qa) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit163

_ZNSt6vectorIfSaIfEED2Ev.exit159.sink.split:      ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit222, %_ZNSt6vectorIfSaIfEED2Ev.exit
  %.sroa.0246.0.sink422 = phi ptr [ %.sroa.0266.0, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %.sroa.0246.0, %_ZNSt6vectorIdSaIdEED2Ev.exit222 ] ; 2 uses
  %.sroa.15.0.sink = phi i64 [ %.sroa.15275.0, %_ZNSt6vectorIfSaIfEED2Ev.exit ], [ %.sroa.15.0, %_ZNSt6vectorIdSaIdEED2Ev.exit222 ]
  %i.qb = ptrtoint ptr %.sroa.0246.0.sink422 to i64
  %i.qc = sub i64 %.sroa.15.0.sink, %i.qb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0246.0.sink422, i64 noundef %i.qc) #25
  br label %_ZNSt6vectorIfSaIfEED2Ev.exit159

_ZNSt6vectorIfSaIfEED2Ev.exit159:                 ; preds = %_ZNSt6vectorIfSaIfEED2Ev.exit159.sink.split, %_ZNSt6vectorIdSaIdEED2Ev.exit222, %_ZNSt6vectorIfSaIfEED2Ev.exit
  call void @_ZN5faiss3lsq13LSQTimerScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %8) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  ret void

_ZNSt6vectorIfSaIfEED2Ev.exit163:                 ; preds = %bb.aw, %_ZNSt6vectorIdSaIdEED2Ev.exit228, %bb.cm, %_ZNSt6vectorIfSaIfEED2Ev.exit161, %bb.ar
  %.pn129.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn124.pn, %bb.ar ], [ %.pn129.pn.pn, %bb.cm ], [ %.pn124.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit161 ], [ %i.ij, %bb.aw ], [ %.pn129.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit228 ]
  call void @_ZN5faiss3lsq13LSQTimerScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %8) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %_ZNSt6vectorIfSaIfEED2Ev.exit163
  %.pn129.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn129.pn.pn.pn.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit163 ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %i.bf, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  resume { ptr, i32 } %.pn129.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss20LocalSearchQuantizer17perturb_codebooksEfRKSt6vectorIfSaIfEERSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(497) %0, float noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(5000) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i:
  %4 = alloca %"struct.faiss::lsq::LSQTimerScope", align 8 ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !69
  %i.b = call noalias noundef nonnull dereferenceable(18) ptr @_Znwm(i64 noundef 18) #27 ; 3 uses
  store ptr %i.b, ptr %5, align 8, !tbaa !73
  store i64 17, ptr %i.a, align 8, !tbaa !72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.b, ptr noundef nonnull align 1 dereferenceable(17) @.str.18, i64 17, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 17, ptr %i.c, align 8, !tbaa !71
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  store i8 0, ptr %i.d, align 1, !tbaa !72
  invoke void @_ZN5faiss3lsq13LSQTimerScopeC1EPNS0_8LSQTimerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(49) %4, ptr noundef nonnull @_ZN5faiss9lsq_timerE, ptr noundef nonnull align 8 %5)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.e = load ptr, ptr %5, align 8, !tbaa !73     ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8, !tbaa !72
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !87   ; 2 uses
  %.not = icmp eq i64 %i.j, 0
  br i1 %.not, label %.preheader53, label %.lr.ph

.preheader53.loopexit:                            ; preds = %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE12emplace_backIJfRKfEEERS1_DpOT_.exit
  %i.k = ptrtoint ptr %.sroa.12.1 to i64
  br label %.preheader53

.preheader53:                                     ; preds = %.preheader53.loopexit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.l = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.aw, %.preheader53.loopexit ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0.1, %.preheader53.loopexit ] ; 6 uses
  %.sroa.12.0.lcssa = phi i64 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.k, %.preheader53.loopexit ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !57   ; 2 uses
  %.not77 = icmp eq i64 %i.n, 0
  br i1 %.not77, label %._crit_edge76, label %.preheader52.lr.ph

.preheader52.lr.ph:                               ; preds = %.preheader53
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load i64, ptr %i.o, align 8, !tbaa !60   ; 3 uses
  %.not78 = icmp eq i64 %i.q, 0
  br i1 %.not78, label %._crit_edge76, label %.preheader52

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %5, align 8, !tbaa !73     ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.a
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.b
  %i.u = load i64, ptr %i.a, align 8, !tbaa !72
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.v) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE12emplace_backIJfRKfEEERS1_DpOT_.exit
  %i.w = phi i64 [ %i.aw, %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE12emplace_backIJfRKfEEERS1_DpOT_.exit ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %.02068 = phi i64 [ %i.ax, %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE12emplace_backIJfRKfEEERS1_DpOT_.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.12.067 = phi ptr [ %.sroa.12.1, %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE12emplace_backIJfRKfEEERS1_DpOT_.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.9.066 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE12emplace_backIJfRKfEEERS1_DpOT_.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 5 uses
  %.sroa.0.065 = phi ptr [ %.sroa.0.1, %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE12emplace_backIJfRKfEEERS1_DpOT_.exit ], [ null, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 8 uses
  %i.x = load ptr, ptr %2, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.02068 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.9.066, %.sroa.12.067
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.z = load float, ptr %i.y, align 4, !tbaa !95
  store float 0.000000e+00, ptr %.sroa.9.066, align 4, !tbaa !122
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.9.066, i64 4
  %i.ab = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.z, i64 0
  store <2 x float> %i.ab, ptr %i.aa, align 4, !tbaa !95
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.9.066, i64 12
  store i8 0, ptr %i.ac, align 4, !tbaa !124
  br label %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE12emplace_backIJfRKfEEERS1_DpOT_.exit

bb.d:                                             ; preds = %.lr.ph
  %i.ad = ptrtoint ptr %.sroa.12.067 to i64
  %i.ae = ptrtoint ptr %.sroa.0.065 to i64
  %i.af = sub i64 %i.ad, %i.ae                    ; 5 uses
  %i.ag = icmp eq i64 %i.af, 9223372036854775792
  br i1 %i.ag, label %bb.e, label %_ZNKSt6vectorISt19normal_distributionIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #26
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %bb.e
  unreachable

_ZNKSt6vectorISt19normal_distributionIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.d
  %i.ah = ashr exact i64 %i.af, 4                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ah, i64 1)
  %i.ai = add nsw i64 %.sroa.speculated.i.i.i, %i.ah ; 2 uses
  %i.aj = icmp ult i64 %i.ai, %i.ah
  %i.ak = call i64 @llvm.umin.i64(i64 %i.ai, i64 576460752303423487)
  %i.al = select i1 %i.aj, i64 576460752303423487, i64 %i.ak ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.al, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.am = shl nuw nsw i64 %i.al, 4
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #27
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit ; 5 uses

.noexc35:                                         ; preds = %_ZNKSt6vectorISt19normal_distributionIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.af ; 3 uses
  %i.ap = load float, ptr %i.y, align 4, !tbaa !95
  store float 0.000000e+00, ptr %i.ao, align 4, !tbaa !122
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ar = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ap, i64 0
  store <2 x float> %i.ar, ptr %i.aq, align 4, !tbaa !95
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  store i8 0, ptr %i.as, align 4, !tbaa !124
  %.not10.i.i.i.i.i = icmp eq ptr %.sroa.0.065, %.sroa.12.067
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc35, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i ], [ %i.an, %.noexc35 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.065, %.noexc35 ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !184, !alias.scope !185
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.at, %.sroa.12.067
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !178

_ZNSt6vectorISt19normal_distributionIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i: ; preds = %.lr.ph.i.i.i.i.i, %.noexc35
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.an, %.noexc35 ], [ %i.au, %.lr.ph.i.i.i.i.i ]
  %.not.i34.i.i = icmp eq ptr %.sroa.0.065, null
  br i1 %.not.i34.i.i, label %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE17_M_realloc_insertIJfRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.065, i64 noundef %i.af) #25
  br label %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE17_M_realloc_insertIJfRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorISt19normal_distributionIfESaIS1_EE17_M_realloc_insertIJfRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.f, %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit33.i.i
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %i.al
  %.pre = load i64, ptr %i.i, align 8, !tbaa !87
  br label %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE12emplace_backIJfRKfEEERS1_DpOT_.exit

_ZNSt6vectorISt19normal_distributionIfESaIS1_EE12emplace_backIJfRKfEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE17_M_realloc_insertIJfRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.c
  %i.aw = phi i64 [ %.pre, %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE17_M_realloc_insertIJfRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.w, %bb.c ] ; 3 uses
  %.sroa.0.1 = phi ptr [ %i.an, %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE17_M_realloc_insertIJfRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.0.065, %bb.c ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE17_M_realloc_insertIJfRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.9.066, %bb.c ]
  %.sroa.12.1 = phi ptr [ %i.av, %_ZNSt6vectorISt19normal_distributionIfESaIS1_EE17_M_realloc_insertIJfRKfEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.12.067, %bb.c ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.pn, i64 16
  %i.ax = add nuw i64 %.02068, 1                  ; 2 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  br i1 %i.ay, label %.lr.ph, label %.preheader53.loopexit, !llvm.loop !179

.preheader52:                                     ; preds = %.preheader52.lr.ph, %._crit_edge73
  %i.az = phi i64 [ %i.bj, %._crit_edge73 ], [ %i.n, %.preheader52.lr.ph ] ; 3 uses
  %i.ba = phi i64 [ %i.bk, %._crit_edge73 ], [ %i.q, %.preheader52.lr.ph ] ; 3 uses
  %i.bb = phi i64 [ %i.bl, %._crit_edge73 ], [ %i.l, %.preheader52.lr.ph ] ; 3 uses
  %i.bc = phi i64 [ %i.bm, %._crit_edge73 ], [ %i.l, %.preheader52.lr.ph ] ; 2 uses
  %i.bd = phi i64 [ %i.bn, %._crit_edge73 ], [ %i.q, %.preheader52.lr.ph ] ; 2 uses
  %.01974 = phi i64 [ %i.bo, %._crit_edge73 ], [ 0, %.preheader52.lr.ph ] ; 2 uses
  %.not79 = icmp eq i64 %i.bd, 0
  br i1 %.not79, label %._crit_edge73, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader52
  %.not80 = icmp eq i64 %i.bc, 0
  br i1 %.not80, label %._crit_edge73, label %.preheader

._crit_edge76:                                    ; preds = %._crit_edge73, %.preheader52.lr.ph, %.preheader53
  %.not.i.i.i36 = icmp eq ptr %.sroa.0.0.lcssa, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorISt19normal_distributionIfESaIS1_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge76
  %i.be = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %i.bf = sub i64 %.sroa.12.0.lcssa, %i.be
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0.lcssa, i64 noundef %i.bf) #25
  br label %_ZNSt6vectorISt19normal_distributionIfESaIS1_EED2Ev.exit

_ZNSt6vectorISt19normal_distributionIfESaIS1_EED2Ev.exit: ; preds = %._crit_edge76, %bb.g
  call void @_ZN5faiss3lsq13LSQTimerScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  ret void

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.bg = phi i64 [ %i.bq, %._crit_edge ], [ %i.az, %.preheader.lr.ph ]
  %i.bh = phi i64 [ %i.br, %._crit_edge ], [ %i.ba, %.preheader.lr.ph ]
  %i.bi = phi i64 [ %i.bs, %._crit_edge ], [ %i.bb, %.preheader.lr.ph ]
  %.01872 = phi i64 [ %i.bt, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 2 uses
  %.not81 = icmp eq i64 %i.bi, 0
  br i1 %.not81, label %._crit_edge, label %.lr.ph71

._crit_edge73:                                    ; preds = %._crit_edge, %.preheader.lr.ph, %.preheader52
  %i.bj = phi i64 [ %i.az, %.preheader.lr.ph ], [ %i.az, %.preheader52 ], [ %i.bq, %._crit_edge ] ; 2 uses
  %i.bk = phi i64 [ %i.ba, %.preheader.lr.ph ], [ %i.ba, %.preheader52 ], [ %i.br, %._crit_edge ]
  %i.bl = phi i64 [ %i.bb, %.preheader.lr.ph ], [ %i.bb, %.preheader52 ], [ %i.bs, %._crit_edge ]
  %i.bm = phi i64 [ 0, %.preheader.lr.ph ], [ %i.bc, %.preheader52 ], [ %i.bs, %._crit_edge ]
  %i.bn = phi i64 [ %i.bd, %.preheader.lr.ph ], [ 0, %.preheader52 ], [ %i.br, %._crit_edge ]
  %i.bo = add nuw i64 %.01974, 1                  ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bj
  br i1 %i.bp, label %.preheader52, label %._crit_edge76, !llvm.loop !180

._crit_edge:                                      ; preds = %_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit, %.preheader
  %i.bq = phi i64 [ %i.bg, %.preheader ], [ %i.by, %_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit ] ; 2 uses
  %i.br = phi i64 [ %i.bh, %.preheader ], [ %i.cb, %_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit ] ; 4 uses
  %i.bs = phi i64 [ 0, %.preheader ], [ %i.cd, %_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit ] ; 3 uses
  %i.bt = add nuw i64 %.01872, 1                  ; 2 uses
  %i.bu = icmp ult i64 %i.bt, %i.br
  br i1 %i.bu, label %.preheader, label %._crit_edge73, !llvm.loop !181

.lr.ph71:                                         ; preds = %.preheader, %_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit
  %.070 = phi i64 [ %i.cl, %_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit ], [ 0, %.preheader ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.lcssa, i64 %.070 ; 2 uses
  %i.bw = invoke noundef float @_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_RKNS0_10param_typeE(ptr noundef nonnull align 4 dereferenceable(13) %i.bv, ptr noundef nonnull align 8 dereferenceable(5000) %3, ptr noundef nonnull align 4 dereferenceable(13) %i.bv)
          to label %_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit unwind label %.thread

_ZNSt19normal_distributionIfEclISt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EEEEfRT_.exit: ; preds = %.lr.ph71
  %i.bx = fmul float %1, %i.bw
  %i.by = load i64, ptr %i.m, align 8, !tbaa !57  ; 2 uses
  %i.bz = uitofp i64 %i.by to float
  %i.ca = fdiv float %i.bx, %i.bz
  %i.cb = load i64, ptr %i.o, align 8, !tbaa !60  ; 2 uses
  %i.cc = mul i64 %i.cb, %.01974
  %i.cd = load i64, ptr %i.i, align 8, !tbaa !87  ; 3 uses
  %i.ce = add i64 %i.cc, %.01872
  %i.cf = mul i64 %i.ce, %i.cd
  %i.cg = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.ch = getelementptr [4 x i8], ptr %i.cg, i64 %i.cf
  %i.ci = getelementptr [4 x i8], ptr %i.ch, i64 %.070 ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !95
  %i.ck = fadd float %i.ca, %i.cj
  store float %i.ck, ptr %i.ci, align 4, !tbaa !95
  %i.cl = add nuw i64 %.070, 1                    ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %i.cd
  br i1 %i.cm, label %.lr.ph71, label %._crit_edge, !llvm.loop !182

.thread:                                          ; preds = %.lr.ph71
  %i.cn = landingpad { ptr, i32 }
          cleanup
  %.pre91 = ptrtoint ptr %.sroa.0.0.lcssa to i64
  %.pre93 = sub i64 %.sroa.12.0.lcssa, %.pre91
  br label %bb.h

.loopexit.split-lp.loopexit:                      ; preds = %_ZNKSt6vectorISt19normal_distributionIfESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.a

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.e
  %lpad.loopexit.split-lp141 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.a

.loopexit.split-lp.loopexit.split-lp.a:           ; preds = %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit
  %6 = phi i64 [ %i.af, %.loopexit.split-lp.loopexit ], [ 9223372036854775792, %.loopexit.split-lp.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp141, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i38 = icmp eq ptr %.sroa.0.065, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorISt19normal_distributionIfESaIS1_EED2Ev.exit39, label %bb.h

bb.h:                                             ; preds = %.thread, %.loopexit.split-lp.loopexit.split-lp.a
  %.pre-phi94 = phi i64 [ %.pre93, %.thread ], [ %6, %.loopexit.split-lp.loopexit.split-lp.a ]
  %.sroa.0.064 = phi ptr [ %.sroa.0.0.lcssa, %.thread ], [ %.sroa.0.065, %.loopexit.split-lp.loopexit.split-lp.a ]
  %.pn2650 = phi { ptr, i32 } [ %i.cn, %.thread ], [ %lpad.phi, %.loopexit.split-lp.loopexit.split-lp.a ]
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.064, i64 noundef %.pre-phi94) #25
  br label %_ZNSt6vectorISt19normal_distributionIfESaIS1_EED2Ev.exit39

_ZNSt6vectorISt19normal_distributionIfESaIS1_EED2Ev.exit39: ; preds = %.loopexit.split-lp.loopexit.split-lp.a, %bb.h
  %.pn2651 = phi { ptr, i32 } [ %lpad.phi, %.loopexit.split-lp.loopexit.split-lp.a ], [ %.pn2650, %bb.h ]
  call void @_ZN5faiss3lsq13LSQTimerScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %4) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31, %_ZNSt6vectorISt19normal_distributionIfESaIS1_EED2Ev.exit39
  %.pn26.pn = phi { ptr, i32 } [ %.pn2651, %_ZNSt6vectorISt19normal_distributionIfESaIS1_EED2Ev.exit39 ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31 ], [ %i.r, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  resume { ptr, i32 } %.pn26.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5faiss20LocalSearchQuantizer10icm_encodeEPiPKfmmRSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE(ptr noundef nonnull align 8 dereferenceable(497) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(5000) %5) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %6 = alloca %"struct.faiss::lsq::LSQTimerScope", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.a, ptr %7, align 8, !tbaa !69
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %i.a, ptr noundef nonnull align 1 dereferenceable(10) @.str.27, i64 10, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 10, ptr %i.b, align 8, !tbaa !71
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 26
  store i8 0, ptr %i.c, align 2, !tbaa !72
  invoke void @_ZN5faiss3lsq13LSQTimerScopeC1EPNS0_8LSQTimerENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(49) %6, ptr noundef nonnull @_ZN5faiss9lsq_timerE, ptr noundef nonnull align 8 %7)
          to label %bb.a unwind label %bb.d

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %7, align 8, !tbaa !73     ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.f = load i64, ptr %i.a, align 8, !tbaa !72
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !112  ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #27
          to label %.noexc39 unwind label %.body  ; 3 uses

.noexc39:                                         ; preds = %bb.b
  invoke void @_ZN5faiss3lsq10IcmEncoderC1EPKNS_20LocalSearchQuantizerE(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull %0)
          to label %_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EE5resetEPS2_.exit unwind label %bb.c

bb.c:                                             ; preds = %.noexc39
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef 48) #25
  br label %_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EED2Ev.exit48

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = load ptr, ptr %7, align 8, !tbaa !73     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.a
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40: ; preds = %bb.d
  %i.p = load i64, ptr %i.a, align 8, !tbaa !72
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = invoke noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull %0)
          to label %_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EE5resetEPS2_.exit unwind label %.body

_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.e, %.noexc39
  %.sroa.050.0 = phi ptr [ %i.k, %.noexc39 ], [ %i.t, %bb.e ] ; 11 uses
  %i.u = load ptr, ptr %.sroa.050.0, align 8, !tbaa !13
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  invoke void %i.w(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.050.0)
          to label %bb.f unwind label %_ZNKSt14default_deleteIN5faiss3lsq10IcmEncoderEEclEPS2_.exit.i47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !111  ; 4 uses
  %i.z = add i64 %3, -1
  %i.aa = add i64 %i.z, %i.y                      ; 2 uses
  %i.ab = udiv i64 %i.aa, %i.y                    ; 3 uses
  %.not = icmp ugt i64 %i.y, %i.aa
  br i1 %.not, label %_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EED2Ev.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 3 uses
  %i.ad = add i64 %i.ab, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.050.0, i64 32 ; 2 uses
  %.sroa.speculated.peel = call i64 @llvm.umin.i64(i64 %3, i64 %i.y) ; 2 uses
  %i.ah = load i8, ptr %i.ac, align 1, !tbaa !86, !range !63, !noundef !64
  %i.ai = trunc nuw i8 %i.ah to i1
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i64 noundef %.sroa.speculated.peel, i64 noundef %3) ; 0 uses
  %i.ak = load ptr, ptr @stdout, align 8, !tbaa !189
  %i.al = call i32 @fflush(ptr noundef %i.ak)     ; 0 uses
  %putchar.peel = call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %i.am = load i8, ptr %i.ac, align 1, !tbaa !86, !range !63, !noundef !64
  store i8 %i.am, ptr %i.ag, align 8, !tbaa !62
  %i.an = load ptr, ptr %.sroa.050.0, align 8, !tbaa !13
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  invoke void %i.ap(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.050.0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(5000) %5, i64 noundef %.sroa.speculated.peel, i64 noundef %4)
          to label %bb.i unwind label %_ZNKSt14default_deleteIN5faiss3lsq10IcmEncoderEEclEPS2_.exit.i47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.h
  %i.aq = icmp ugt i64 %i.ab, 1
  br i1 %i.aq, label %.peel.next, label %_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.m, %bb.i, %bb.f
  %i.ar = load ptr, ptr %.sroa.050.0, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  call void %i.at(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.050.0) #16, !inline_history !186
  call void @_ZN5faiss3lsq13LSQTimerScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %6) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  ret void

.peel.next:                                       ; preds = %bb.i, %bb.m
  %.069 = phi i64 [ %i.bp, %bb.m ], [ 1, %bb.i ]  ; 4 uses
  %i.au = load i64, ptr %i.x, align 8, !tbaa !111 ; 2 uses
  %i.av = mul i64 %i.au, %.069                    ; 2 uses
  %i.aw = sub i64 %3, %i.av
  %.sroa.speculated = call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.au) ; 2 uses
  %i.ax = load i8, ptr %i.ac, align 1, !tbaa !86, !range !63, !noundef !64
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.peel.next
  %i.az = add i64 %.sroa.speculated, %i.av
  %i.ba = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i64 noundef %i.az, i64 noundef %3) ; 0 uses
  %i.bb = load ptr, ptr @stdout, align 8, !tbaa !189
  %i.bc = call i32 @fflush(ptr noundef %i.bb)     ; 0 uses
  %i.bd = icmp eq i64 %.069, %i.ad
  br i1 %i.bd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %.peel.next
  %i.be = load i64, ptr %i.x, align 8, !tbaa !111
  %i.bf = mul i64 %i.be, %.069                    ; 2 uses
  %i.bg = load i64, ptr %i.ae, align 8, !tbaa !87
  %i.bh = mul i64 %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bh
  %i.bj = load i64, ptr %i.af, align 8, !tbaa !57
  %i.bk = mul i64 %i.bj, %i.bf
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bk
  store i8 0, ptr %i.ag, align 8, !tbaa !62
  %i.bm = load ptr, ptr %.sroa.050.0, align 8, !tbaa !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.050.0, ptr noundef %i.bl, ptr noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(5000) %5, i64 noundef %.sroa.speculated, i64 noundef %4)
          to label %bb.m unwind label %_ZNKSt14default_deleteIN5faiss3lsq10IcmEncoderEEclEPS2_.exit.i47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.l
  %i.bp = add nuw i64 %.069, 1                    ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.ab
  br i1 %i.bq, label %.peel.next, label %_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EED2Ev.exit, !llvm.loop !187

.body:                                            ; preds = %bb.b, %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EED2Ev.exit48

_ZNKSt14default_deleteIN5faiss3lsq10IcmEncoderEEclEPS2_.exit.i47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.h, %_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EE5resetEPS2_.exit
  %lpad.loopexit.split-lp80 = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %.sroa.050.0, align 8, !tbaa !13
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  call void %i.bt(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.050.0) #16, !inline_history !186
  br label %_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EED2Ev.exit48

_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EED2Ev.exit48: ; preds = %bb.c, %.body, %_ZNKSt14default_deleteIN5faiss3lsq10IcmEncoderEEclEPS2_.exit.i47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn3461 = phi { ptr, i32 } [ %lpad.loopexit.split-lp80, %_ZNKSt14default_deleteIN5faiss3lsq10IcmEncoderEEclEPS2_.exit.i47.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.l, %bb.c ]
  call void @_ZN5faiss3lsq13LSQTimerScopeD1Ev(ptr noundef nonnull align 8 dead_on_return(49) dereferenceable(49) %6) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit42: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40, %_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EED2Ev.exit48
  %.pn34.pn = phi { ptr, i32 } [ %.pn3461, %_ZNSt10unique_ptrIN5faiss3lsq10IcmEncoderESt14default_deleteIS2_EED2Ev.exit48 ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i40 ], [ %i.m, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  resume { ptr, i32 } %.pn34.pn
}

end_hunk_1
