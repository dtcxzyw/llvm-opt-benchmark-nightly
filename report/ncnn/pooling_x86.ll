Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/pooling_x86?download=true
inline.NumInlined: 48
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE:bb.a
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !43
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.bt)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.9, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.n, ptr nonnull %i.m, ptr nonnull %i.l, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.o)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !43
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.bv)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.10, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.m, ptr nonnull %i.l, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.n, ptr nonnull %i.o)
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  %.not.i.i.i = icmp eq ptr %.sroa.048.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = ptrtoint ptr %.sroa.9.0 to i64
  %i.bx = ptrtoint ptr %.sroa.048.0 to i64
  %i.by = sub i64 %i.bw, %i.bx
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.048.0, i64 noundef %i.by) #20
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28pooling_global_max_bf16s_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !35
  %i.h = load i32, ptr %0, align 4, !tbaa !35     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !35
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !35
  %i.k = load i32, ptr %i.a, align 4, !tbaa !35   ; 2 uses
  %.not42 = icmp sgt i32 %i.k, %i.j
  br i1 %.not42, label %._crit_edge44, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !40, !noalias !151
  %i.q = load i64, ptr %i.l, align 8, !tbaa !41, !noalias !151
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !151
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 3 uses
  %i.v = load i64, ptr %i.u, align 1, !tbaa !63
  %i.w = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %i.x = bitcast <2 x i64> %i.w to <8 x i16>
  %i.y = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.x, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11> ; 2 uses
  %i.z = load i32, ptr %4, align 4, !tbaa !35     ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.ab = bitcast <8 x i16> %i.y to <4 x float>   ; 2 uses
  %i.ac = add nsw i32 %i.z, -1                    ; 3 uses
  %xtraiter = and i32 %i.ac, 1
  %i.ad = icmp eq i32 %i.z, 2
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ac, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.pn40 = phi ptr [ %i.u, %.lr.ph.preheader.new ], [ %.025.1, %.lr.ph ] ; 2 uses
  %.03839 = phi <4 x float> [ %i.ab, %.lr.ph.preheader.new ], [ %i.ap, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.025 = getelementptr inbounds nuw i8, ptr %.pn40, i64 8
  %i.ae = load i64, ptr %.025, align 1, !tbaa !63
  %i.af = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %i.ag = bitcast <2 x i64> %i.af to <8 x i16>
  %i.ah = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ag, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ai = bitcast <8 x i16> %i.ah to <4 x float>
  %i.aj = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03839, <4 x float> nofpclass(nan inf) %i.ai)
  %.025.1 = getelementptr inbounds nuw i8, ptr %.pn40, i64 16 ; 3 uses
  %i.ak = load i64, ptr %.025.1, align 1, !tbaa !63
  %i.al = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %i.am = bitcast <2 x i64> %i.al to <8 x i16>
  %i.an = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.am, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ao = bitcast <8 x i16> %i.an to <4 x float>
  %i.ap = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aj, <4 x float> nofpclass(nan inf) %i.ao) ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !150

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.pn40.epil.init = phi ptr [ %i.u, %.lr.ph.preheader ], [ %.025.1, %._crit_edge.loopexit.unr-lcssa ]
  %.03839.epil.init = phi <4 x float> [ %i.ab, %.lr.ph.preheader ], [ %i.ap, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod51 = trunc i32 %i.ac to i1
  call void @llvm.assume(i1 %lcmp.mod51)
  %.025.epil = getelementptr inbounds nuw i8, ptr %.pn40.epil.init, i64 8
  %i.aq = load i64, ptr %.025.epil, align 1, !tbaa !63
  %i.ar = insertelement <2 x i64> poison, i64 %i.aq, i64 0
  %i.as = bitcast <2 x i64> %i.ar to <8 x i16>
  %i.at = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.as, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.au = bitcast <8 x i16> %i.at to <4 x float>
  %i.av = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03839.epil.init, <4 x float> nofpclass(nan inf) %i.au)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi <4 x float> [ %i.ap, %._crit_edge.loopexit.unr-lcssa ], [ %i.av, %.lr.ph.epil.preheader ]
  %i.aw = bitcast <4 x float> %.lcssa to <8 x i16>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %.038.lcssa = phi <8 x i16> [ %i.y, %.noexc ], [ %i.aw, %._crit_edge.loopexit ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !40
  %i.ay = shufflevector <8 x i16> %.038.lcssa, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.az = bitcast <8 x i16> %i.ay to <4 x float>
  %i.ba = shufflevector <4 x float> %i.az, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.bb = bitcast <4 x float> %i.ba to <2 x i64>
  %.idx = shl nsw i64 %indvars.iv, 3
  %i.bc = getelementptr inbounds i8, ptr %i.ax, i64 %.idx
  %i.bd = extractelement <2 x i64> %i.bb, i64 0
  store i64 %i.bd, ptr %i.bc, align 1, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond46.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond46.not, label %._crit_edge44, label %.noexc

._crit_edge44:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge44, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28pooling_global_max_bf16s_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5) #16 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !35
  %i.h = load i32, ptr %0, align 4, !tbaa !35     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !35
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 7 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !35
  %i.k = load i32, ptr %i.a, align 4, !tbaa !35   ; 4 uses
  %.not35 = icmp sgt i32 %i.k, %i.j
  br i1 %.not35, label %._crit_edge37, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !40, !noalias !162 ; 16 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !162 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33, !noalias !162 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p             ; 14 uses
  %i.q = load i32, ptr %4, align 4, !tbaa !35     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 1
  %i.s = load ptr, ptr %5, align 8, !tbaa !40     ; 9 uses
  %i.t = sext i32 %i.k to i64                     ; 9 uses
  %i.u = add nsw i32 %i.j, 1                      ; 2 uses
  br i1 %i.r, label %.noexc.us.preheader, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.v = sub i32 %i.j, %i.k                       ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i32 %i.v, 55
  br i1 %min.iters.check, label %.noexc.preheader72, label %vector.memcheck

vector.memcheck:                                  ; preds = %.noexc.preheader
  %i.y = shl nsw i64 %i.t, 1
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.y
  %6 = sub i32 %i.j, %i.k
  %7 = zext i32 %6 to i64                         ; 2 uses
  %i.z = add nsw i64 %i.t, %7
  %i.aa = shl nsw i64 %i.z, 1
  %i.ab = getelementptr i8, ptr %i.s, i64 %i.aa
  %scevgep54 = getelementptr i8, ptr %i.ab, i64 2
  %8 = mul i64 %i.n, %i.p                         ; 2 uses
  %9 = add nsw i64 %i.t, %7
  %i.ac = mul i64 %8, %9
  %scevgep55 = getelementptr i8, ptr %i.l, i64 %i.ac ; 4 uses
  %i.ad = mul i64 %8, %i.t
  %scevgep56 = getelementptr i8, ptr %i.l, i64 %i.ad ; 4 uses
  %i.ae = icmp ult ptr %scevgep55, %scevgep56
  %umin = select i1 %i.ae, ptr %scevgep55, ptr %scevgep56
  %i.af = icmp ugt ptr %scevgep55, %scevgep56
  %umax = select i1 %i.af, ptr %scevgep55, ptr %scevgep56
  %scevgep57 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %umin, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.noexc.preheader72, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.x, 8589934584               ; 3 uses
  %i.ag = add nsw i64 %n.vec, %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = add i64 %index, %i.t                    ; 9 uses
  %i.ai = add i64 %i.ah, 1
  %i.aj = add i64 %i.ah, 2
  %i.ak = add i64 %i.ah, 3
  %i.al = add i64 %i.ah, 4
  %i.am = add i64 %i.ah, 5
  %i.an = add i64 %i.ah, 6
  %i.ao = add i64 %i.ah, 7
  %i.ap = mul i64 %factor.op.mul, %i.ah
  %i.aq = mul i64 %factor.op.mul, %i.ai
  %i.ar = mul i64 %factor.op.mul, %i.aj
  %i.as = mul i64 %factor.op.mul, %i.ak
  %i.at = mul i64 %factor.op.mul, %i.al
  %i.au = mul i64 %factor.op.mul, %i.am
  %i.av = mul i64 %factor.op.mul, %i.an
  %i.aw = mul i64 %factor.op.mul, %i.ao
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ap
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aq
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ar
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.as
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.at
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.au
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.av
  %i.be = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aw
  %i.bf = load i16, ptr %i.ax, align 2, !tbaa !70, !alias.scope !163
  %i.bg = load i16, ptr %i.ay, align 2, !tbaa !70, !alias.scope !163
  %i.bh = load i16, ptr %i.az, align 2, !tbaa !70, !alias.scope !163
  %i.bi = load i16, ptr %i.ba, align 2, !tbaa !70, !alias.scope !163
  %i.bj = load i16, ptr %i.bb, align 2, !tbaa !70, !alias.scope !163
  %i.bk = load i16, ptr %i.bc, align 2, !tbaa !70, !alias.scope !163
  %i.bl = load i16, ptr %i.bd, align 2, !tbaa !70, !alias.scope !163
  %i.bm = load i16, ptr %i.be, align 2, !tbaa !70, !alias.scope !163
  %i.bn = insertelement <8 x i16> poison, i16 %i.bf, i64 0
  %i.bo = insertelement <8 x i16> %i.bn, i16 %i.bg, i64 1
  %i.bp = insertelement <8 x i16> %i.bo, i16 %i.bh, i64 2
  %i.bq = insertelement <8 x i16> %i.bp, i16 %i.bi, i64 3
  %i.br = insertelement <8 x i16> %i.bq, i16 %i.bj, i64 4
  %i.bs = insertelement <8 x i16> %i.br, i16 %i.bk, i64 5
  %i.bt = insertelement <8 x i16> %i.bs, i16 %i.bl, i64 6
  %i.bu = insertelement <8 x i16> %i.bt, i16 %i.bm, i64 7
  %i.bv = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.ah
  store <8 x i16> %i.bu, ptr %i.bv, align 2, !tbaa !70, !alias.scope !164, !noalias !163
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !157

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge37, label %.noexc.preheader72

.noexc.preheader72:                               ; preds = %vector.memcheck, %.noexc.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %vector.memcheck ], [ %i.t, %.noexc.preheader ], [ %i.ag, %middle.block ] ; 3 uses
  %i.bx = add i32 %i.j, 1
  %i.by = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.bz = sub i32 %i.bx, %i.by
  %i.ca = sub i32 %i.j, %i.by
  %xtraiter = and i32 %i.bz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc.prol.loopexit, label %.noexc.prol

.noexc.prol:                                      ; preds = %.noexc.preheader72, %.noexc.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.noexc.prol ], [ %indvars.iv.ph, %.noexc.preheader72 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.noexc.prol ], [ 0, %.noexc.preheader72 ]
  %.reass.prol = mul i64 %factor.op.mul, %indvars.iv.prol
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.prol
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !70
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.s, i64 %indvars.iv.prol
  store i16 %i.cc, ptr %i.cd, align 2, !tbaa !70
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.noexc.prol.loopexit, label %.noexc.prol, !llvm.loop !158

.noexc.prol.loopexit:                             ; preds = %.noexc.prol, %.noexc.preheader72
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.noexc.preheader72 ], [ %indvars.iv.next.prol, %.noexc.prol ]
  %i.ce = icmp ult i32 %i.ca, 3
  br i1 %i.ce, label %._crit_edge37, label %.noexc

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 2 uses
  %i.cf = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check59 = icmp ult i32 %i.q, 9
  %n.vec61 = and i64 %i.cf, -8                    ; 3 uses
  %i.cg = or disjoint i64 %n.vec61, 1
  %cmp.n68 = icmp eq i64 %i.cf, %n.vec61
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv44 = phi i64 [ %i.t, %.noexc.us.preheader ], [ %indvars.iv.next45, %._crit_edge.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv44
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us ; 3 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !70
  %i.cj = zext i16 %i.ci to i32
  %i.ck = shl nuw i32 %i.cj, 16
  %i.cl = bitcast i32 %i.ck to float              ; 2 uses
  br i1 %min.iters.check59, label %scalar.ph58.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %.noexc.us
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.cl, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next66, %vector.body62 ] ; 2 uses
  %vec.phi = phi <4 x float> [ %broadcast.splat, %vector.ph60 ], [ %i.cv, %vector.body62 ]
  %vec.phi64 = phi <4 x float> [ %broadcast.splat, %vector.ph60 ], [ %i.cw, %vector.body62 ]
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %index63 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 2
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 10
  %wide.load = load <4 x i16>, ptr %i.cn, align 2, !tbaa !70
  %wide.load65 = load <4 x i16>, ptr %i.co, align 2, !tbaa !70
  %i.cp = zext <4 x i16> %wide.load to <4 x i32>
  %i.cq = zext <4 x i16> %wide.load65 to <4 x i32>
  %i.cr = shl nuw <4 x i32> %i.cp, splat (i32 16)
  %i.cs = shl nuw <4 x i32> %i.cq, splat (i32 16)
  %i.ct = bitcast <4 x i32> %i.cr to <4 x float>
  %i.cu = bitcast <4 x i32> %i.cs to <4 x float>
  %i.cv = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi, <4 x float> %i.ct) ; 2 uses
  %i.cw = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi64, <4 x float> %i.cu) ; 2 uses
  %index.next66 = add nuw i64 %index63, 8         ; 2 uses
  %i.cx = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.cx, label %middle.block67, label %vector.body62, !llvm.loop !159

middle.block67:                                   ; preds = %vector.body62
  %rdx.minmax.select = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %i.cv, <4 x float> %i.cw)
  %i.cy = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax.select) ; 2 uses
  br i1 %cmp.n68, label %._crit_edge.us, label %scalar.ph58.preheader

scalar.ph58.preheader:                            ; preds = %.noexc.us, %middle.block67
  %indvars.iv40.ph = phi i64 [ 1, %.noexc.us ], [ %i.cg, %middle.block67 ]
  %.03233.us.ph = phi float [ %i.cl, %.noexc.us ], [ %i.cy, %middle.block67 ]
  br label %scalar.ph58

scalar.ph58:                                      ; preds = %scalar.ph58.preheader, %scalar.ph58
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %scalar.ph58 ], [ %indvars.iv40.ph, %scalar.ph58.preheader ] ; 2 uses
  %.03233.us = phi float [ %.sroa.speculated.us, %scalar.ph58 ], [ %.03233.us.ph, %scalar.ph58.preheader ]
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.ch, i64 %indvars.iv40
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !70
  %i.db = zext i16 %i.da to i32
  %i.dc = shl nuw i32 %i.db, 16
  %i.dd = bitcast i32 %i.dc to float
  %.sroa.speculated.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.03233.us, float %i.dd) ; 2 uses
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond43.not, label %._crit_edge.us, label %scalar.ph58, !llvm.loop !160

._crit_edge.us:                                   ; preds = %scalar.ph58, %middle.block67
  %.sroa.speculated.us.lcssa = phi float [ %i.cy, %middle.block67 ], [ %.sroa.speculated.us, %scalar.ph58 ]
  %i.de = bitcast float %.sroa.speculated.us.lcssa to i32
  %i.df = lshr i32 %i.de, 16
  %i.dg = trunc nuw i32 %i.df to i16
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.s, i64 %indvars.iv44
  store i16 %i.dg, ptr %i.dh, align 2, !tbaa !70
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1 ; 2 uses
  %lftr.wideiv47 = trunc i64 %indvars.iv.next45 to i32
  %exitcond48.not = icmp eq i32 %i.u, %lftr.wideiv47
  br i1 %exitcond48.not, label %._crit_edge37, label %.noexc.us

.noexc:                                           ; preds = %.noexc.prol.loopexit, %.noexc
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.noexc ], [ %indvars.iv.unr, %.noexc.prol.loopexit ] ; 6 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.di = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !70
  %i.dk = getelementptr inbounds [2 x i8], ptr %i.s, i64 %indvars.iv
  store i16 %i.dj, ptr %i.dk, align 2, !tbaa !70
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.reass.1 = mul i64 %factor.op.mul, %indvars.iv.next
  %i.dl = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.1
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !70
  %i.dn = getelementptr inbounds [2 x i8], ptr %i.s, i64 %indvars.iv.next
  store i16 %i.dm, ptr %i.dn, align 2, !tbaa !70
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %.reass.2 = mul i64 %factor.op.mul, %indvars.iv.next.1
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.2
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !70
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.s, i64 %indvars.iv.next.1
  store i16 %i.dp, ptr %i.dq, align 2, !tbaa !70
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %.reass.3 = mul i64 %factor.op.mul, %indvars.iv.next.2
  %i.dr = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.3
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !70
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.s, i64 %indvars.iv.next.2
end_hunk_0
