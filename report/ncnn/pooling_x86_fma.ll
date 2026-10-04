Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/pooling_x86_fma?download=true
inline.NumInlined: 55
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4ncnnL28pooling_global_max_bf16s_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined.10:bb.a
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
  %i.p = load ptr, ptr %3, align 8, !tbaa !40, !noalias !243
  %i.q = load i64, ptr %i.l, align 8, !tbaa !41, !noalias !243
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !243
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 3 uses
  %i.v = load i64, ptr %i.u, align 1, !tbaa !63
  %i.w = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %i.x = bitcast <2 x i64> %i.w to <8 x i16>
  %i.y = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.x, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.z = bitcast <8 x i16> %i.y to <4 x float>    ; 3 uses
  %i.aa = load i32, ptr %4, align 4, !tbaa !35    ; 3 uses
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.ac = add nsw i32 %i.aa, -1                   ; 2 uses
  %i.ad = add nsw i32 %i.aa, -2
  %xtraiter = and i32 %i.ac, 3                    ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 3
  br i1 %i.ae, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ac, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.pn40 = phi ptr [ %i.u, %.lr.ph.preheader.new ], [ %.025.3, %.lr.ph ] ; 4 uses
  %.03839 = phi <4 x float> [ %i.z, %.lr.ph.preheader.new ], [ %i.bc, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.025 = getelementptr inbounds nuw i8, ptr %.pn40, i64 8
  %i.af = load i64, ptr %.025, align 1, !tbaa !63
  %i.ag = insertelement <2 x i64> poison, i64 %i.af, i64 0
  %i.ah = bitcast <2 x i64> %i.ag to <8 x i16>
  %i.ai = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ah, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aj = bitcast <8 x i16> %i.ai to <4 x float>
  %i.ak = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03839, <4 x float> nofpclass(nan inf) %i.aj)
  %.025.1 = getelementptr inbounds nuw i8, ptr %.pn40, i64 16
  %i.al = load i64, ptr %.025.1, align 1, !tbaa !63
  %i.am = insertelement <2 x i64> poison, i64 %i.al, i64 0
  %i.an = bitcast <2 x i64> %i.am to <8 x i16>
  %i.ao = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.an, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ap = bitcast <8 x i16> %i.ao to <4 x float>
  %i.aq = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ak, <4 x float> nofpclass(nan inf) %i.ap)
  %.025.2 = getelementptr inbounds nuw i8, ptr %.pn40, i64 24
  %i.ar = load i64, ptr %.025.2, align 1, !tbaa !63
  %i.as = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %i.at = bitcast <2 x i64> %i.as to <8 x i16>
  %i.au = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.at, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.av = bitcast <8 x i16> %i.au to <4 x float>
  %i.aw = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aq, <4 x float> nofpclass(nan inf) %i.av)
  %.025.3 = getelementptr inbounds nuw i8, ptr %.pn40, i64 32 ; 3 uses
  %i.ax = load i64, ptr %.025.3, align 1, !tbaa !63
  %i.ay = insertelement <2 x i64> poison, i64 %i.ax, i64 0
  %i.az = bitcast <2 x i64> %i.ay to <8 x i16>
  %i.ba = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.az, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bb = bitcast <8 x i16> %i.ba to <4 x float>
  %i.bc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.aw, <4 x float> nofpclass(nan inf) %i.bb) ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !241

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.pn40.epil.init = phi ptr [ %i.u, %.lr.ph.preheader ], [ %.025.3, %._crit_edge.loopexit.unr-lcssa ]
  %.03839.epil.init = phi <4 x float> [ %i.z, %.lr.ph.preheader ], [ %i.bc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.pn40.epil = phi ptr [ %.025.epil, %.lr.ph.epil ], [ %.pn40.epil.init, %.lr.ph.epil.preheader ]
  %.03839.epil = phi <4 x float> [ %i.bi, %.lr.ph.epil ], [ %.03839.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.025.epil = getelementptr inbounds nuw i8, ptr %.pn40.epil, i64 8 ; 2 uses
  %i.bd = load i64, ptr %.025.epil, align 1, !tbaa !63
  %i.be = insertelement <2 x i64> poison, i64 %i.bd, i64 0
  %i.bf = bitcast <2 x i64> %i.be to <8 x i16>
  %i.bg = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bf, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bh = bitcast <8 x i16> %i.bg to <4 x float>
  %i.bi = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03839.epil, <4 x float> nofpclass(nan inf) %i.bh) ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !242

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.noexc
  %.038.lcssa = phi <4 x float> [ %i.z, %.noexc ], [ %i.bc, %._crit_edge.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph.epil ]
  %i.bj = load ptr, ptr %5, align 8, !tbaa !40
  %i.bk = bitcast <4 x float> %.038.lcssa to <4 x i32>
  %i.bl = lshr <4 x i32> %i.bk, splat (i32 16)
  %i.bm = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bl, <4 x i32> poison)
  %i.bn = bitcast <8 x i16> %i.bm to <2 x i64>
  %.idx = shl nsw i64 %indvars.iv, 3
  %i.bo = getelementptr inbounds i8, ptr %i.bj, i64 %.idx
  %i.bp = extractelement <2 x i64> %i.bn, i64 0
  store i64 %i.bp, ptr %i.bo, align 1, !tbaa !63
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
define internal void @_ZN4ncnnL28pooling_global_max_bf16s_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5) #17 personality ptr @__gxx_personality_v0 {
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
  %i.l = load ptr, ptr %3, align 8, !tbaa !40, !noalias !256 ; 32 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !256 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33, !noalias !256 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p             ; 30 uses
  %i.q = load i32, ptr %4, align 4, !tbaa !35     ; 4 uses
  %i.r = icmp sgt i32 %i.q, 1
  %i.s = load ptr, ptr %5, align 8, !tbaa !40     ; 10 uses
  %i.t = sext i32 %i.k to i64                     ; 11 uses
  %i.u = add nsw i32 %i.j, 1                      ; 2 uses
  br i1 %i.r, label %.noexc.us.preheader, label %iter.check

iter.check:                                       ; preds = %.noexc.lr.ph
  %i.v = sub i32 %i.j, %i.k                       ; 3 uses
  %i.w = zext i32 %i.v to i64
  %i.x = add nuw nsw i64 %i.w, 1                  ; 5 uses
  %min.iters.check = icmp ult i32 %i.v, 7
  br i1 %min.iters.check, label %.noexc.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = shl nsw i64 %i.t, 1
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.y
  %i.z = sub i32 %i.j, %i.k
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = add nsw i64 %i.t, %i.aa
  %i.ac = shl nsw i64 %i.ab, 1
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac
  %scevgep54 = getelementptr i8, ptr %i.ad, i64 2
  %6 = mul i64 %i.n, %i.p                         ; 2 uses
  %7 = add nsw i64 %i.t, %i.aa
  %i.ae = mul i64 %6, %7
  %scevgep55 = getelementptr i8, ptr %i.l, i64 %i.ae ; 4 uses
  %i.af = mul i64 %6, %i.t
  %scevgep56 = getelementptr i8, ptr %i.l, i64 %i.af ; 4 uses
  %i.ag = icmp ult ptr %scevgep55, %scevgep56
  %umin = select i1 %i.ag, ptr %scevgep55, ptr %scevgep56
  %i.ah = icmp ugt ptr %scevgep55, %scevgep56
  %umax = select i1 %i.ah, ptr %scevgep55, ptr %scevgep56
  %scevgep57 = getelementptr i8, ptr %umax, i64 2
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %umin, %scevgep54
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.noexc.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check58 = icmp ult i32 %i.v, 15
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ai = and i64 %i.x, 8
  %n.vec = and i64 %i.x, 8589934576               ; 4 uses
  %i.aj = add nsw i64 %n.vec, %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = add i64 %index, %i.t                    ; 17 uses
  %i.al = add i64 %i.ak, 1
  %i.am = add i64 %i.ak, 2
  %i.an = add i64 %i.ak, 3
  %i.ao = add i64 %i.ak, 4
  %i.ap = add i64 %i.ak, 5
  %i.aq = add i64 %i.ak, 6
  %i.ar = add i64 %i.ak, 7
  %i.as = add i64 %i.ak, 8
  %i.at = add i64 %i.ak, 9
  %i.au = add i64 %i.ak, 10
  %i.av = add i64 %i.ak, 11
  %i.aw = add i64 %i.ak, 12
  %i.ax = add i64 %i.ak, 13
  %i.ay = add i64 %i.ak, 14
  %i.az = add i64 %i.ak, 15
  %i.ba = mul i64 %factor.op.mul, %i.ak
  %i.bb = mul i64 %factor.op.mul, %i.al
  %i.bc = mul i64 %factor.op.mul, %i.am
  %i.bd = mul i64 %factor.op.mul, %i.an
  %i.be = mul i64 %factor.op.mul, %i.ao
  %i.bf = mul i64 %factor.op.mul, %i.ap
  %i.bg = mul i64 %factor.op.mul, %i.aq
  %i.bh = mul i64 %factor.op.mul, %i.ar
  %i.bi = mul i64 %factor.op.mul, %i.as
  %i.bj = mul i64 %factor.op.mul, %i.at
  %i.bk = mul i64 %factor.op.mul, %i.au
  %i.bl = mul i64 %factor.op.mul, %i.av
  %i.bm = mul i64 %factor.op.mul, %i.aw
  %i.bn = mul i64 %factor.op.mul, %i.ax
  %i.bo = mul i64 %factor.op.mul, %i.ay
  %i.bp = mul i64 %factor.op.mul, %i.az
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ba
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bb
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bc
  %i.bt = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bd
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.be
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bf
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bg
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bh
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bi
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bj
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bk
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bl
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bm
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bn
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bo
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bp
  %i.cg = load i16, ptr %i.bq, align 2, !tbaa !71, !alias.scope !257
  %i.ch = load i16, ptr %i.br, align 2, !tbaa !71, !alias.scope !257
  %i.ci = load i16, ptr %i.bs, align 2, !tbaa !71, !alias.scope !257
  %i.cj = load i16, ptr %i.bt, align 2, !tbaa !71, !alias.scope !257
  %i.ck = load i16, ptr %i.bu, align 2, !tbaa !71, !alias.scope !257
  %i.cl = load i16, ptr %i.bv, align 2, !tbaa !71, !alias.scope !257
  %i.cm = load i16, ptr %i.bw, align 2, !tbaa !71, !alias.scope !257
  %i.cn = load i16, ptr %i.bx, align 2, !tbaa !71, !alias.scope !257
  %i.co = load i16, ptr %i.by, align 2, !tbaa !71, !alias.scope !257
  %i.cp = load i16, ptr %i.bz, align 2, !tbaa !71, !alias.scope !257
  %i.cq = load i16, ptr %i.ca, align 2, !tbaa !71, !alias.scope !257
  %i.cr = load i16, ptr %i.cb, align 2, !tbaa !71, !alias.scope !257
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !71, !alias.scope !257
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !71, !alias.scope !257
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !71, !alias.scope !257
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !71, !alias.scope !257
  %i.cw = insertelement <16 x i16> poison, i16 %i.cg, i64 0
  %i.cx = insertelement <16 x i16> %i.cw, i16 %i.ch, i64 1
  %i.cy = insertelement <16 x i16> %i.cx, i16 %i.ci, i64 2
  %i.cz = insertelement <16 x i16> %i.cy, i16 %i.cj, i64 3
  %i.da = insertelement <16 x i16> %i.cz, i16 %i.ck, i64 4
  %i.db = insertelement <16 x i16> %i.da, i16 %i.cl, i64 5
  %i.dc = insertelement <16 x i16> %i.db, i16 %i.cm, i64 6
  %i.dd = insertelement <16 x i16> %i.dc, i16 %i.cn, i64 7
  %i.de = insertelement <16 x i16> %i.dd, i16 %i.co, i64 8
  %i.df = insertelement <16 x i16> %i.de, i16 %i.cp, i64 9
  %i.dg = insertelement <16 x i16> %i.df, i16 %i.cq, i64 10
  %i.dh = insertelement <16 x i16> %i.dg, i16 %i.cr, i64 11
  %i.di = insertelement <16 x i16> %i.dh, i16 %i.cs, i64 12
  %i.dj = insertelement <16 x i16> %i.di, i16 %i.ct, i64 13
  %i.dk = insertelement <16 x i16> %i.dj, i16 %i.cu, i64 14
  %i.dl = insertelement <16 x i16> %i.dk, i16 %i.cv, i64 15
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.ak
  store <16 x i16> %i.dl, ptr %i.dm, align 2, !tbaa !71, !alias.scope !258, !noalias !257
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %._crit_edge37, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.ai, 0
  br i1 %min.epilog.iters.check.not.not, label %.noexc.preheader, label %vec.epilog.ph, !prof !259

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec59 = and i64 %i.x, 8589934584             ; 3 uses
  %i.do = add nsw i64 %n.vec59, %i.t
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index60 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next61, %vec.epilog.vector.body ] ; 2 uses
  %i.dp = add i64 %index60, %i.t                  ; 9 uses
  %i.dq = add i64 %i.dp, 1
  %i.dr = add i64 %i.dp, 2
  %i.ds = add i64 %i.dp, 3
  %i.dt = add i64 %i.dp, 4
  %i.du = add i64 %i.dp, 5
  %i.dv = add i64 %i.dp, 6
  %i.dw = add i64 %i.dp, 7
  %i.dx = mul i64 %factor.op.mul, %i.dp
  %i.dy = mul i64 %factor.op.mul, %i.dq
  %i.dz = mul i64 %factor.op.mul, %i.dr
  %i.ea = mul i64 %factor.op.mul, %i.ds
  %i.eb = mul i64 %factor.op.mul, %i.dt
  %i.ec = mul i64 %factor.op.mul, %i.du
  %i.ed = mul i64 %factor.op.mul, %i.dv
  %i.ee = mul i64 %factor.op.mul, %i.dw
  %i.ef = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dx
  %i.eg = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dy
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dz
  %i.ei = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ea
  %i.ej = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.eb
  %i.ek = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ec
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ed
  %i.em = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ee
  %i.en = load i16, ptr %i.ef, align 2, !tbaa !71, !alias.scope !257
  %i.eo = load i16, ptr %i.eg, align 2, !tbaa !71, !alias.scope !257
  %i.ep = load i16, ptr %i.eh, align 2, !tbaa !71, !alias.scope !257
  %i.eq = load i16, ptr %i.ei, align 2, !tbaa !71, !alias.scope !257
  %i.er = load i16, ptr %i.ej, align 2, !tbaa !71, !alias.scope !257
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !71, !alias.scope !257
  %i.et = load i16, ptr %i.el, align 2, !tbaa !71, !alias.scope !257
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !71, !alias.scope !257
  %i.ev = insertelement <8 x i16> poison, i16 %i.en, i64 0
  %i.ew = insertelement <8 x i16> %i.ev, i16 %i.eo, i64 1
  %i.ex = insertelement <8 x i16> %i.ew, i16 %i.ep, i64 2
  %i.ey = insertelement <8 x i16> %i.ex, i16 %i.eq, i64 3
  %i.ez = insertelement <8 x i16> %i.ey, i16 %i.er, i64 4
  %i.fa = insertelement <8 x i16> %i.ez, i16 %i.es, i64 5
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 6
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 7
  %i.fd = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.dp
  store <8 x i16> %i.fc, ptr %i.fd, align 2, !tbaa !71, !alias.scope !258, !noalias !257
  %index.next61 = add nuw i64 %index60, 8         ; 2 uses
  %i.fe = icmp eq i64 %index.next61, %n.vec59
  br i1 %i.fe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !250

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n62 = icmp eq i64 %i.x, %n.vec59
  br i1 %cmp.n62, label %._crit_edge37, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.t, %iter.check ], [ %i.t, %vector.memcheck ], [ %i.aj, %vec.epilog.iter.check ], [ %i.do, %vec.epilog.middle.block ] ; 3 uses
  %i.ff = add i32 %i.j, 1
  %i.fg = trunc i64 %indvars.iv.ph to i32         ; 2 uses
  %i.fh = sub i32 %i.ff, %i.fg
  %i.fi = sub i32 %i.j, %i.fg
  %xtraiter = and i32 %i.fh, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc.prol.loopexit, label %.noexc.prol

.noexc.prol:                                      ; preds = %.noexc.preheader, %.noexc.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.noexc.prol ], [ %indvars.iv.ph, %.noexc.preheader ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.noexc.prol ], [ 0, %.noexc.preheader ]
  %.reass.prol = mul i64 %factor.op.mul, %indvars.iv.prol
  %i.fj = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.prol
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !71
  %i.fl = getelementptr inbounds [2 x i8], ptr %i.s, i64 %indvars.iv.prol
  store i16 %i.fk, ptr %i.fl, align 2, !tbaa !71
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.noexc.prol.loopexit, label %.noexc.prol, !llvm.loop !251

.noexc.prol.loopexit:                             ; preds = %.noexc.prol, %.noexc.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.noexc.preheader ], [ %indvars.iv.next.prol, %.noexc.prol ]
end_hunk_0
