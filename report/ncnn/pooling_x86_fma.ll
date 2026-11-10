Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/pooling_x86_fma?download=true
inline.NumInlined: 55
inline.NumDeleted: 31
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE:bb.a
  %i.bd = add i32 %.05072, %i.at                  ; 2 uses
  %broadcast.splatinsert86 = insertelement <4 x i32> poison, i32 %bc.resume.val, i64 0
  %broadcast.splat87 = shufflevector <4 x i32> %broadcast.splatinsert86, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction88 = add nsw <4 x i32> %broadcast.splat87, <i32 0, i32 1, i32 2, i32 3>
  %invariant.gep98 = getelementptr [4 x i8], ptr %.sroa.055.0, i64 %i.au
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index89 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next91, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind90 = phi <4 x i32> [ %induction88, %vec.epilog.ph ], [ %vec.ind.next92, %vec.epilog.vector.body ] ; 2 uses
  %gep99 = getelementptr [4 x i8], ptr %invariant.gep98, i64 %index89
  store <4 x i32> %vec.ind90, ptr %gep99, align 4, !tbaa !35
  %index.next91 = add nuw i64 %index89, 4         ; 2 uses
  %vec.ind.next92 = add nsw <4 x i32> %vec.ind90, splat (i32 4)
  %i.be = icmp eq i64 %index.next91, %n.vec85
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !232

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n93, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ %i.au, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bc, %vec.epilog.middle.block ]
  %.168.ph = phi i32 [ %.05072, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bd, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge74.split:                              ; preds = %._crit_edge, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.bf = icmp eq i32 %12, 0
  br i1 %i.bf, label %bb.b, label %bb.h

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi i32 [ %i.bd, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %i.bj, %vec.epilog.scalar.ph ]
  %i.bg = add nsw i32 %i.an, %.lcssa
  %i.bh = add nuw nsw i32 %.04973, 1              ; 2 uses
  %exitcond77.not = icmp eq i32 %i.bh, %4
  br i1 %exitcond77.not, label %._crit_edge74.split, label %iter.check, !llvm.loop !233

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.168 = phi i32 [ %i.bj, %vec.epilog.scalar.ph ], [ %.168.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bi = getelementptr inbounds [4 x i8], ptr %.sroa.055.0, i64 %indvars.iv
  store i32 %.168, ptr %i.bi, align 4, !tbaa !35
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.bj = add nsw i32 %.168, 1                    ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.av, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !234

bb.b:                                             ; preds = %._crit_edge74.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #7
  store i32 0, ptr %i.p, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #7
  store i32 0, ptr %i.q, align 4, !tbaa !35
  %i.bk = icmp eq i32 %11, 0
  br i1 %i.bk, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bl = load i32, ptr %i.s, align 4, !tbaa !34
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !34
  %i.bo = add i32 %i.bn, %7
  %i.bp = add i32 %i.bo, %8
  %i.bq = sub i32 %i.bl, %i.bp
  store i32 %i.bq, ptr %i.p, align 4, !tbaa !35
  %i.br = load i32, ptr %i.u, align 8, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !36
  %i.bu = add i32 %i.bt, %9
  %i.bv = add i32 %i.bu, %10
  %i.bw = sub i32 %i.br, %i.bv
  store i32 %i.bw, ptr %i.q, align 4, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  switch i32 %i.z, label %bb.g [
    i32 8, label %.critedge
    i32 4, label %bb.e
    i32 1, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.bx = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !43
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.by)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 17, ptr nonnull @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.17, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.m, ptr nonnull %i.d, ptr nonnull %i.l, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.g, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.q, ptr nonnull %i.a, ptr nonnull %i.e, ptr nonnull %i.i, ptr nonnull %i.f, ptr nonnull %i.p)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  br label %bb.l

bb.h:                                             ; preds = %._crit_edge74.split
  switch i32 %i.z, label %bb.l [
    i32 8, label %bb.i
    i32 4, label %bb.j
    i32 1, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !43
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.ca)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.18, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.n, ptr nonnull %i.m, ptr nonnull %i.l, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.o)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.cb = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !43
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.cc)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.19, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.n, ptr nonnull %i.m, ptr nonnull %i.l, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.o)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.cd = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !43
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.ce)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 9, ptr nonnull @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.20, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.m, ptr nonnull %i.l, ptr nonnull %i.d, ptr nonnull %i.c, ptr nonnull %i.n, ptr nonnull %i.o)
  br label %bb.l

.critedge:                                        ; preds = %bb.d, %bb.e
  %_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.16.sink = phi ptr [ @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.16, %bb.e ], [ @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined, %bb.d ]
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !43
  tail call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.r, i32 %i.cg)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 17, ptr nonnull %_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.16.sink, ptr nonnull %i.k, ptr nonnull %0, ptr nonnull %2, ptr nonnull %i.m, ptr nonnull %i.d, ptr nonnull %i.l, ptr nonnull %i.c, ptr nonnull %i.b, ptr nonnull %i.g, ptr nonnull %i.j, ptr nonnull %i.h, ptr nonnull %i.q, ptr nonnull %i.a, ptr nonnull %i.e, ptr nonnull %i.i, ptr nonnull %i.f, ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.g, %bb.h, %.critedge, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #7
  %.not.i.i.i = icmp eq ptr %.sroa.055.0, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ch = ptrtoint ptr %.sroa.9.0 to i64
  %i.ci = ptrtoint ptr %.sroa.055.0 to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.055.0, i64 noundef %i.cj) #21
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.l, %bb.m
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
  %.not43 = icmp sgt i32 %i.k, %i.j
  br i1 %.not43, label %._crit_edge45, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !40, !noalias !238
  %i.q = load i64, ptr %i.l, align 8, !tbaa !41, !noalias !238
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !238
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 3 uses
  %i.v = load <8 x i16>, ptr %i.u, align 1, !tbaa !63 ; 2 uses
  %6 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.v, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %7 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.v, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.w = shufflevector <8 x i16> %6, <8 x i16> %7, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.x = bitcast <16 x i16> %i.w to <8 x i32>
  %i.y = load i32, ptr %4, align 4, !tbaa !35     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 1
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.aa = bitcast <16 x i16> %i.w to <8 x float>  ; 2 uses
  %i.ab = add nsw i32 %i.y, -1                    ; 3 uses
  %xtraiter = and i32 %i.ab, 1
  %i.ac = icmp eq i32 %i.y, 2
  br i1 %i.ac, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ab, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.pn41 = phi ptr [ %i.u, %.lr.ph.preheader.new ], [ %.025.1, %.lr.ph ] ; 2 uses
  %.03940 = phi <8 x float> [ %i.aa, %.lr.ph.preheader.new ], [ %i.ak, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %.025 = getelementptr inbounds nuw i8, ptr %.pn41, i64 16
  %i.ad = load <8 x i16>, ptr %.025, align 1, !tbaa !63 ; 2 uses
  %8 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ad, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %9 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ad, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ae = shufflevector <8 x i16> %8, <8 x i16> %9, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.af = bitcast <16 x i16> %i.ae to <8 x float>
  %i.ag = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.03940, <8 x float> nofpclass(nan inf) %i.af)
  %.025.1 = getelementptr inbounds nuw i8, ptr %.pn41, i64 32 ; 3 uses
  %i.ah = load <8 x i16>, ptr %.025.1, align 1, !tbaa !63 ; 2 uses
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ah, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %11 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ah, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ai = shufflevector <8 x i16> %10, <8 x i16> %11, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aj = bitcast <16 x i16> %i.ai to <8 x float>
  %i.ak = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.ag, <8 x float> nofpclass(nan inf) %i.aj) ; 3 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !237

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.pn41.epil.init = phi ptr [ %i.u, %.lr.ph.preheader ], [ %.025.1, %._crit_edge.loopexit.unr-lcssa ]
  %.03940.epil.init = phi <8 x float> [ %i.aa, %.lr.ph.preheader ], [ %i.ak, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod52 = trunc i32 %i.ab to i1
  call void @llvm.assume(i1 %lcmp.mod52)
  %.025.epil = getelementptr inbounds nuw i8, ptr %.pn41.epil.init, i64 16
  %i.al = load <8 x i16>, ptr %.025.epil, align 1, !tbaa !63 ; 2 uses
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.al, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %13 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.al, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.am = shufflevector <8 x i16> %12, <8 x i16> %13, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.an = bitcast <16 x i16> %i.am to <8 x float>
  %i.ao = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.03940.epil.init, <8 x float> nofpclass(nan inf) %i.an)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %.lcssa = phi <8 x float> [ %i.ak, %._crit_edge.loopexit.unr-lcssa ], [ %i.ao, %.lr.ph.epil.preheader ]
  %i.ap = bitcast <8 x float> %.lcssa to <8 x i32>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.noexc
  %.039.lcssa = phi <8 x i32> [ %i.x, %.noexc ], [ %i.ap, %._crit_edge.loopexit ] ; 2 uses
  %i.aq = load ptr, ptr %5, align 8, !tbaa !40
  %i.ar = shufflevector <8 x i32> %.039.lcssa, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.as = shufflevector <8 x i32> %.039.lcssa, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.at = lshr <4 x i32> %i.ar, splat (i32 16)
  %i.au = lshr <4 x i32> %i.as, splat (i32 16)
  %i.av = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.at, <4 x i32> %i.au)
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.aw = getelementptr inbounds i8, ptr %i.aq, i64 %.idx
  store <8 x i16> %i.av, ptr %i.aw, align 1, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond47.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond47.not, label %._crit_edge45, label %.noexc

._crit_edge45:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge45, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28pooling_global_max_bf16s_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5) #11 personality ptr @__gxx_personality_v0 {
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
  %i.p = load ptr, ptr %3, align 8, !tbaa !40, !noalias !243
  %i.q = load i64, ptr %i.l, align 8, !tbaa !41, !noalias !243
  %i.r = mul i64 %i.q, %indvars.iv
  %i.s = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !243
  %i.t = mul i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.t ; 3 uses
  %i.v = load i64, ptr %i.u, align 1, !tbaa !63
  %i.w = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %i.x = bitcast <2 x i64> %i.w to <8 x i16>
  %6 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.x, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.y = bitcast <8 x i16> %6 to <4 x float>      ; 3 uses
  %i.z = load i32, ptr %4, align 4, !tbaa !35     ; 3 uses
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.ab = add nsw i32 %i.z, -1                    ; 2 uses
  %i.ac = add nsw i32 %i.z, -2
  %xtraiter = and i32 %i.ab, 3                    ; 3 uses
  %i.ad = icmp ult i32 %i.ac, 3
  br i1 %i.ad, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.ab, -4
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.pn40 = phi ptr [ %i.u, %.lr.ph.preheader.new ], [ %.025.3, %.lr.ph ] ; 4 uses
  %.03839 = phi <4 x float> [ %i.y, %.lr.ph.preheader.new ], [ %i.ax, %.lr.ph ]
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %.025 = getelementptr inbounds nuw i8, ptr %.pn40, i64 8
  %i.ae = load i64, ptr %.025, align 1, !tbaa !63
  %i.af = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %i.ag = bitcast <2 x i64> %i.af to <8 x i16>
  %7 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ag, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ah = bitcast <8 x i16> %7 to <4 x float>
  %i.ai = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03839, <4 x float> nofpclass(nan inf) %i.ah)
  %.025.1 = getelementptr inbounds nuw i8, ptr %.pn40, i64 16
  %i.aj = load i64, ptr %.025.1, align 1, !tbaa !63
  %i.ak = insertelement <2 x i64> poison, i64 %i.aj, i64 0
  %i.al = bitcast <2 x i64> %i.ak to <8 x i16>
  %8 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.al, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.am = bitcast <8 x i16> %8 to <4 x float>
  %i.an = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.ai, <4 x float> nofpclass(nan inf) %i.am)
  %.025.2 = getelementptr inbounds nuw i8, ptr %.pn40, i64 24
  %i.ao = load i64, ptr %.025.2, align 1, !tbaa !63
  %i.ap = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %i.aq = bitcast <2 x i64> %i.ap to <8 x i16>
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aq, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ar = bitcast <8 x i16> %9 to <4 x float>
  %i.as = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.an, <4 x float> nofpclass(nan inf) %i.ar)
  %.025.3 = getelementptr inbounds nuw i8, ptr %.pn40, i64 32 ; 3 uses
  %i.at = load i64, ptr %.025.3, align 1, !tbaa !63
  %i.au = insertelement <2 x i64> poison, i64 %i.at, i64 0
  %i.av = bitcast <2 x i64> %i.au to <8 x i16>
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.av, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aw = bitcast <8 x i16> %10 to <4 x float>
  %i.ax = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.as, <4 x float> nofpclass(nan inf) %i.aw) ; 3 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !241

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.pn40.epil.init = phi ptr [ %i.u, %.lr.ph.preheader ], [ %.025.3, %._crit_edge.loopexit.unr-lcssa ]
  %.03839.epil.init = phi <4 x float> [ %i.y, %.lr.ph.preheader ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod51 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod51)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.pn40.epil = phi ptr [ %.025.epil, %.lr.ph.epil ], [ %.pn40.epil.init, %.lr.ph.epil.preheader ]
  %.03839.epil = phi <4 x float> [ %i.bc, %.lr.ph.epil ], [ %.03839.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %.025.epil = getelementptr inbounds nuw i8, ptr %.pn40.epil, i64 8 ; 2 uses
  %i.ay = load i64, ptr %.025.epil, align 1, !tbaa !63
  %i.az = insertelement <2 x i64> poison, i64 %i.ay, i64 0
  %i.ba = bitcast <2 x i64> %i.az to <8 x i16>
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ba, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bb = bitcast <8 x i16> %11 to <4 x float>
  %i.bc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.03839.epil, <4 x float> nofpclass(nan inf) %i.bb) ; 2 uses
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !242

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.noexc
  %.038.lcssa = phi <4 x float> [ %i.y, %.noexc ], [ %i.ax, %._crit_edge.loopexit.unr-lcssa ], [ %i.bc, %.lr.ph.epil ]
  %i.bd = load ptr, ptr %5, align 8, !tbaa !40
  %i.be = bitcast <4 x float> %.038.lcssa to <4 x i32>
  %i.bf = lshr <4 x i32> %i.be, splat (i32 16)
  %i.bg = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bf, <4 x i32> poison)
  %i.bh = bitcast <8 x i16> %i.bg to <2 x i64>
  %.idx = shl nsw i64 %indvars.iv, 3
  %i.bi = getelementptr inbounds i8, ptr %i.bd, i64 %.idx
  %i.bj = extractelement <2 x i64> %i.bh, i64 0
  store i64 %i.bj, ptr %i.bi, align 1, !tbaa !63
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
  %i.z = getelementptr i8, ptr %i.s, i64 %i.y
  %i.aa = sub i32 %i.j, %i.k
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = add nsw i64 %i.t, %i.ab
  %i.ad = shl nsw i64 %i.ac, 1
  %i.ae = getelementptr i8, ptr %i.s, i64 %i.ad
  %i.af = getelementptr i8, ptr %i.ae, i64 2
  %i.ag = add nsw i64 %i.t, %i.ab
  %i.ah = mul i64 %i.p, %i.n                      ; 2 uses
  %i.ai = mul i64 %i.ah, %i.ag
  %i.aj = getelementptr i8, ptr %i.l, i64 %i.ai   ; 4 uses
  %i.ak = mul i64 %i.ah, %i.t
  %i.al = getelementptr i8, ptr %i.l, i64 %i.ak   ; 4 uses
  %i.am = icmp ult ptr %i.aj, %i.al
  %i.an = select i1 %i.am, ptr %i.aj, ptr %i.al
  %i.ao = icmp ugt ptr %i.aj, %i.al
  %i.ap = select i1 %i.ao, ptr %i.aj, ptr %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 2
  %bound0 = icmp ult ptr %i.z, %i.aq
  %bound1 = icmp ult ptr %i.an, %i.af
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.noexc.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check58 = icmp ult i32 %i.v, 15
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ar = and i64 %i.x, 8
  %n.vec = and i64 %i.x, 8589934576               ; 4 uses
  %i.as = add nsw i64 %n.vec, %i.t
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.at = add i64 %index, %i.t                    ; 17 uses
  %i.au = add i64 %i.at, 1
  %i.av = add i64 %i.at, 2
  %i.aw = add i64 %i.at, 3
  %i.ax = add i64 %i.at, 4
  %i.ay = add i64 %i.at, 5
  %i.az = add i64 %i.at, 6
  %i.ba = add i64 %i.at, 7
  %i.bb = add i64 %i.at, 8
  %i.bc = add i64 %i.at, 9
  %i.bd = add i64 %i.at, 10
  %i.be = add i64 %i.at, 11
  %i.bf = add i64 %i.at, 12
  %i.bg = add i64 %i.at, 13
  %i.bh = add i64 %i.at, 14
  %i.bi = add i64 %i.at, 15
  %i.bj = mul i64 %factor.op.mul, %i.at
  %i.bk = mul i64 %factor.op.mul, %i.au
  %i.bl = mul i64 %factor.op.mul, %i.av
  %i.bm = mul i64 %factor.op.mul, %i.aw
  %i.bn = mul i64 %factor.op.mul, %i.ax
  %i.bo = mul i64 %factor.op.mul, %i.ay
  %i.bp = mul i64 %factor.op.mul, %i.az
  %i.bq = mul i64 %factor.op.mul, %i.ba
  %i.br = mul i64 %factor.op.mul, %i.bb
  %i.bs = mul i64 %factor.op.mul, %i.bc
  %i.bt = mul i64 %factor.op.mul, %i.bd
  %i.bu = mul i64 %factor.op.mul, %i.be
  %i.bv = mul i64 %factor.op.mul, %i.bf
  %i.bw = mul i64 %factor.op.mul, %i.bg
  %i.bx = mul i64 %factor.op.mul, %i.bh
  %i.by = mul i64 %factor.op.mul, %i.bi
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bj
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bk
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bl
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bm
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bn
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bo
  %i.cf = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bp
  %i.cg = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bq
  %i.ch = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.br
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bs
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bt
  %i.ck = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bu
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bv
  %i.cm = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bw
  %i.cn = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bx
  %i.co = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.by
  %i.cp = load i16, ptr %i.bz, align 2, !tbaa !71, !alias.scope !257
  %i.cq = load i16, ptr %i.ca, align 2, !tbaa !71, !alias.scope !257
  %i.cr = load i16, ptr %i.cb, align 2, !tbaa !71, !alias.scope !257
  %i.cs = load i16, ptr %i.cc, align 2, !tbaa !71, !alias.scope !257
  %i.ct = load i16, ptr %i.cd, align 2, !tbaa !71, !alias.scope !257
  %i.cu = load i16, ptr %i.ce, align 2, !tbaa !71, !alias.scope !257
  %i.cv = load i16, ptr %i.cf, align 2, !tbaa !71, !alias.scope !257
  %i.cw = load i16, ptr %i.cg, align 2, !tbaa !71, !alias.scope !257
  %i.cx = load i16, ptr %i.ch, align 2, !tbaa !71, !alias.scope !257
  %i.cy = load i16, ptr %i.ci, align 2, !tbaa !71, !alias.scope !257
  %i.cz = load i16, ptr %i.cj, align 2, !tbaa !71, !alias.scope !257
  %i.da = load i16, ptr %i.ck, align 2, !tbaa !71, !alias.scope !257
  %i.db = load i16, ptr %i.cl, align 2, !tbaa !71, !alias.scope !257
  %i.dc = load i16, ptr %i.cm, align 2, !tbaa !71, !alias.scope !257
  %i.dd = load i16, ptr %i.cn, align 2, !tbaa !71, !alias.scope !257
  %i.de = load i16, ptr %i.co, align 2, !tbaa !71, !alias.scope !257
  %i.df = insertelement <16 x i16> poison, i16 %i.cp, i64 0
  %i.dg = insertelement <16 x i16> %i.df, i16 %i.cq, i64 1
  %i.dh = insertelement <16 x i16> %i.dg, i16 %i.cr, i64 2
  %i.di = insertelement <16 x i16> %i.dh, i16 %i.cs, i64 3
  %i.dj = insertelement <16 x i16> %i.di, i16 %i.ct, i64 4
  %i.dk = insertelement <16 x i16> %i.dj, i16 %i.cu, i64 5
  %i.dl = insertelement <16 x i16> %i.dk, i16 %i.cv, i64 6
  %i.dm = insertelement <16 x i16> %i.dl, i16 %i.cw, i64 7
  %i.dn = insertelement <16 x i16> %i.dm, i16 %i.cx, i64 8
  %i.do = insertelement <16 x i16> %i.dn, i16 %i.cy, i64 9
  %i.dp = insertelement <16 x i16> %i.do, i16 %i.cz, i64 10
  %i.dq = insertelement <16 x i16> %i.dp, i16 %i.da, i64 11
  %i.dr = insertelement <16 x i16> %i.dq, i16 %i.db, i64 12
  %i.ds = insertelement <16 x i16> %i.dr, i16 %i.dc, i64 13
end_hunk_0
begin_hunk_1_@_ZN4ncnnL28pooling_global_max_bf16s_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined.11:bb.a
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 18
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gf, i64 34
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 50
  %wide.load = load <8 x i16>, ptr %i.gg, align 2, !tbaa !71
  %wide.load73 = load <8 x i16>, ptr %i.gh, align 2, !tbaa !71
  %wide.load74 = load <8 x i16>, ptr %i.gi, align 2, !tbaa !71
  %wide.load75 = load <8 x i16>, ptr %i.gj, align 2, !tbaa !71
  %i.gk = zext <8 x i16> %wide.load to <8 x i32>
  %i.gl = zext <8 x i16> %wide.load73 to <8 x i32>
  %i.gm = zext <8 x i16> %wide.load74 to <8 x i32>
  %i.gn = zext <8 x i16> %wide.load75 to <8 x i32>
  %i.go = shl nuw <8 x i32> %i.gk, splat (i32 16)
  %i.gp = shl nuw <8 x i32> %i.gl, splat (i32 16)
  %i.gq = shl nuw <8 x i32> %i.gm, splat (i32 16)
  %i.gr = shl nuw <8 x i32> %i.gn, splat (i32 16)
  %i.gs = bitcast <8 x i32> %i.go to <8 x float>
  %i.gt = bitcast <8 x i32> %i.gp to <8 x float>
  %i.gu = bitcast <8 x i32> %i.gq to <8 x float>
  %i.gv = bitcast <8 x i32> %i.gr to <8 x float>
  %i.gw = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi, <8 x float> %i.gs) ; 2 uses
  %i.gx = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi70, <8 x float> %i.gt) ; 2 uses
  %i.gy = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi71, <8 x float> %i.gu) ; 2 uses
  %i.gz = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %vec.phi72, <8 x float> %i.gv) ; 2 uses
  %index.next76 = add nuw i64 %index69, 32        ; 2 uses
  %i.ha = icmp eq i64 %index.next76, %n.vec67
  br i1 %i.ha, label %middle.block77, label %vector.body68, !llvm.loop !252

middle.block77:                                   ; preds = %vector.body68
  %rdx.minmax.select = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %i.gw, <8 x float> %i.gx)
  %rdx.minmax.select79 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select, <8 x float> %i.gy)
  %rdx.minmax.select81 = call nnan ninf nsz <8 x float> @llvm.maxnum.v8f32(<8 x float> %rdx.minmax.select79, <8 x float> %i.gz)
  %i.hb = call nnan ninf nsz float @llvm.vector.reduce.fmax.v8f32(<8 x float> %rdx.minmax.select81) ; 3 uses
  br i1 %cmp.n82, label %._crit_edge.us, label %vec.epilog.iter.check84

vec.epilog.iter.check84:                          ; preds = %middle.block77
  br i1 %min.epilog.iters.check86, label %vec.epilog.scalar.ph85.preheader, label %vec.epilog.ph87, !prof !69

vec.epilog.ph87:                                  ; preds = %vector.main.loop.iter.check64, %vec.epilog.iter.check84
  %vec.epilog.resume.val88 = phi i64 [ %n.vec67, %vec.epilog.iter.check84 ], [ 0, %vector.main.loop.iter.check64 ]
  %bc.merge.rdx = phi float [ %i.hb, %vec.epilog.iter.check84 ], [ %i.ge, %vector.main.loop.iter.check64 ]
  %broadcast.splatinsert92 = insertelement <4 x float> poison, float %bc.merge.rdx, i64 0
  %broadcast.splat93 = shufflevector <4 x float> %broadcast.splatinsert92, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body90

vec.epilog.vector.body90:                         ; preds = %vec.epilog.vector.body90, %vec.epilog.ph87
  %index91 = phi i64 [ %vec.epilog.resume.val88, %vec.epilog.ph87 ], [ %index.next96, %vec.epilog.vector.body90 ] ; 2 uses
  %vec.phi94 = phi <4 x float> [ %broadcast.splat93, %vec.epilog.ph87 ], [ %i.hh, %vec.epilog.vector.body90 ]
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %index91
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %wide.load95 = load <4 x i16>, ptr %i.hd, align 2, !tbaa !71
  %i.he = zext <4 x i16> %wide.load95 to <4 x i32>
  %i.hf = shl nuw <4 x i32> %i.he, splat (i32 16)
  %i.hg = bitcast <4 x i32> %i.hf to <4 x float>
  %i.hh = call nnan ninf nsz <4 x float> @llvm.maxnum.v4f32(<4 x float> %vec.phi94, <4 x float> %i.hg) ; 2 uses
  %index.next96 = add nuw i64 %index91, 4         ; 2 uses
  %i.hi = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.hi, label %vec.epilog.middle.block97, label %vec.epilog.vector.body90, !llvm.loop !253

vec.epilog.middle.block97:                        ; preds = %vec.epilog.vector.body90
  %i.hj = call nnan ninf nsz float @llvm.vector.reduce.fmax.v4f32(<4 x float> %i.hh) ; 2 uses
  br i1 %cmp.n98, label %._crit_edge.us, label %vec.epilog.scalar.ph85.preheader

vec.epilog.scalar.ph85.preheader:                 ; preds = %iter.check83, %vec.epilog.iter.check84, %vec.epilog.middle.block97
  %indvars.iv40.ph = phi i64 [ 1, %iter.check83 ], [ %i.fy, %vec.epilog.iter.check84 ], [ %i.fz, %vec.epilog.middle.block97 ]
  %.03233.us.ph = phi float [ %i.ge, %iter.check83 ], [ %i.hb, %vec.epilog.iter.check84 ], [ %i.hj, %vec.epilog.middle.block97 ]
  br label %vec.epilog.scalar.ph85

vec.epilog.scalar.ph85:                           ; preds = %vec.epilog.scalar.ph85.preheader, %vec.epilog.scalar.ph85
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %vec.epilog.scalar.ph85 ], [ %indvars.iv40.ph, %vec.epilog.scalar.ph85.preheader ] ; 2 uses
  %.03233.us = phi float [ %.sroa.speculated.us, %vec.epilog.scalar.ph85 ], [ %.03233.us.ph, %vec.epilog.scalar.ph85.preheader ]
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.ga, i64 %indvars.iv40
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !71
  %i.hm = zext i16 %i.hl to i32
  %i.hn = shl nuw i32 %i.hm, 16
  %i.ho = bitcast i32 %i.hn to float
  %.sroa.speculated.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.03233.us, float %i.ho) ; 2 uses
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond43.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond43.not, label %._crit_edge.us, label %vec.epilog.scalar.ph85, !llvm.loop !254

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph85, %vec.epilog.middle.block97, %middle.block77
  %.sroa.speculated.us.lcssa = phi float [ %i.hj, %vec.epilog.middle.block97 ], [ %i.hb, %middle.block77 ], [ %.sroa.speculated.us, %vec.epilog.scalar.ph85 ]
  %i.hp = bitcast float %.sroa.speculated.us.lcssa to i32
  %i.hq = lshr i32 %i.hp, 16
  %i.hr = trunc nuw i32 %i.hq to i16
  %i.hs = getelementptr inbounds [2 x i8], ptr %i.s, i64 %indvars.iv44
  store i16 %i.hr, ptr %i.hs, align 2, !tbaa !71
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1 ; 2 uses
  %lftr.wideiv47 = trunc i64 %indvars.iv.next45 to i32
  %exitcond48.not = icmp eq i32 %i.u, %lftr.wideiv47
  br i1 %exitcond48.not, label %._crit_edge37, label %iter.check83

.noexc:                                           ; preds = %.noexc.prol.loopexit, %.noexc
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.noexc ], [ %indvars.iv.unr, %.noexc.prol.loopexit ] ; 6 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ht = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %i.hu = load i16, ptr %i.ht, align 2, !tbaa !71
  %i.hv = getelementptr inbounds [2 x i8], ptr %i.s, i64 %indvars.iv
  store i16 %i.hu, ptr %i.hv, align 2, !tbaa !71
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.reass.1 = mul i64 %factor.op.mul, %indvars.iv.next
  %i.hw = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.1
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !71
  %i.hy = getelementptr inbounds [2 x i8], ptr %i.s, i64 %indvars.iv.next
  store i16 %i.hx, ptr %i.hy, align 2, !tbaa !71
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %.reass.2 = mul i64 %factor.op.mul, %indvars.iv.next.1
  %i.hz = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.2
  %i.ia = load i16, ptr %i.hz, align 2, !tbaa !71
  %i.ib = getelementptr inbounds [2 x i8], ptr %i.s, i64 %indvars.iv.next.1
  store i16 %i.ia, ptr %i.ib, align 2, !tbaa !71
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %.reass.3 = mul i64 %factor.op.mul, %indvars.iv.next.2
  %i.ic = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.3
  %i.id = load i16, ptr %i.ic, align 2, !tbaa !71
  %i.ie = getelementptr inbounds [2 x i8], ptr %i.s, i64 %indvars.iv.next.2
  store i16 %i.id, ptr %i.ie, align 2, !tbaa !71
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %lftr.wideiv.3 = trunc i64 %indvars.iv.next.3 to i32
  %exitcond.not.3 = icmp eq i32 %i.u, %lftr.wideiv.3
  br i1 %exitcond.not.3, label %._crit_edge37, label %.noexc, !llvm.loop !255

._crit_edge37:                                    ; preds = %.noexc.prol.loopexit, %.noexc, %._crit_edge.us, %middle.block, %vec.epilog.middle.block, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge37, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32>, <4 x i32>) #13

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28pooling_global_avg_bf16s_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5) #6 personality ptr @__gxx_personality_v0 {
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
  %.not43 = icmp sgt i32 %i.k, %i.j
  br i1 %.not43, label %._crit_edge45, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.p = load i32, ptr %4, align 4, !tbaa !35     ; 6 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.r = load ptr, ptr %3, align 8, !tbaa !40, !noalias !263
  %i.s = load i64, ptr %i.l, align 8, !tbaa !41, !noalias !263
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !263
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  %xtraiter = and i32 %i.p, 1
  %i.x = icmp eq i32 %i.p, 1
  br i1 %i.x, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.p, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02640 = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ]
  %.02739 = phi ptr [ %i.w, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.y = load <8 x i16>, ptr %.02739, align 1, !tbaa !63 ; 2 uses
  %6 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.y, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %7 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.y, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.z = shufflevector <8 x i16> %6, <8 x i16> %7, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.aa = bitcast <16 x i16> %i.z to <8 x float>
  %i.ab = fadd fast <8 x float> %.02640, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %.02739, i64 16
  %i.ad = load <8 x i16>, ptr %i.ac, align 1, !tbaa !63 ; 2 uses
  %8 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ad, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %9 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ad, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ae = shufflevector <8 x i16> %8, <8 x i16> %9, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.af = bitcast <16 x i16> %i.ae to <8 x float>
  %i.ag = fadd fast <8 x float> %i.ab, %i.af      ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.02739, i64 32 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !262

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02640.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ]
  %.02739.epil.init = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.ah, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod52 = trunc i32 %i.p to i1
  call void @llvm.assume(i1 %lcmp.mod52)
  %i.ai = load <8 x i16>, ptr %.02739.epil.init, align 1, !tbaa !63 ; 2 uses
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ai, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %11 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ai, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.aj = shufflevector <8 x i16> %10, <8 x i16> %11, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ak = bitcast <16 x i16> %i.aj to <8 x float>
  %i.al = fadd fast <8 x float> %.02640.epil.init, %i.ak
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.noexc
  %.026.lcssa = phi <8 x float> [ zeroinitializer, %.noexc ], [ %i.ag, %._crit_edge.loopexit.unr-lcssa ], [ %i.al, %.lr.ph.epil.preheader ]
  %i.am = sitofp fast i32 %i.p to float
  %i.an = fdiv fast float 1.000000e+00, %i.am
  %i.ao = insertelement <8 x float> poison, float %i.an, i64 0
  %i.ap = shufflevector <8 x float> %i.ao, <8 x float> poison, <8 x i32> zeroinitializer
  %i.aq = fmul fast <8 x float> %i.ap, %.026.lcssa
  %i.ar = load ptr, ptr %5, align 8, !tbaa !40
  %i.as = bitcast <8 x float> %i.aq to <8 x i32>  ; 2 uses
  %i.at = shufflevector <8 x i32> %i.as, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.au = shufflevector <8 x i32> %i.as, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.av = lshr <4 x i32> %i.at, splat (i32 16)
  %i.aw = lshr <4 x i32> %i.au, splat (i32 16)
  %i.ax = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.av, <4 x i32> %i.aw)
  %.idx = shl nsw i64 %indvars.iv, 4
  %i.ay = getelementptr inbounds i8, ptr %i.ar, i64 %.idx
  store <8 x i16> %i.ax, ptr %i.ay, align 1, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond47.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond47.not, label %._crit_edge45, label %.noexc

._crit_edge45:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge45, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28pooling_global_avg_bf16s_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined.12(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5) #11 personality ptr @__gxx_personality_v0 {
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
  %.not43 = icmp sgt i32 %i.k, %i.j
  br i1 %.not43, label %._crit_edge45, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = sext i32 %i.k to i64
  %i.o = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph, %._crit_edge
  %indvars.iv = phi i64 [ %i.n, %.noexc.lr.ph ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.p = load i32, ptr %4, align 4, !tbaa !35     ; 5 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.noexc
  %i.r = load ptr, ptr %3, align 8, !tbaa !40, !noalias !268
  %i.s = load i64, ptr %i.l, align 8, !tbaa !41, !noalias !268
  %i.t = mul i64 %i.s, %indvars.iv
  %i.u = load i64, ptr %i.m, align 8, !tbaa !33, !noalias !268
  %i.v = mul i64 %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.v ; 2 uses
  %xtraiter = and i32 %i.p, 3                     ; 3 uses
  %i.x = icmp ult i32 %i.p, 4
  br i1 %i.x, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %i.p, 2147483644
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.02640 = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.au, %.lr.ph ]
  %.02739 = phi ptr [ %i.w, %.lr.ph.preheader.new ], [ %i.av, %.lr.ph ] ; 5 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.y = load i64, ptr %.02739, align 1, !tbaa !63
  %i.z = insertelement <2 x i64> poison, i64 %i.y, i64 0
  %i.aa = bitcast <2 x i64> %i.z to <8 x i16>
  %6 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.aa, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ab = bitcast <8 x i16> %6 to <4 x float>
  %i.ac = fadd fast <4 x float> %.02640, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %.02739, i64 8
  %i.ae = load i64, ptr %i.ad, align 1, !tbaa !63
  %i.af = insertelement <2 x i64> poison, i64 %i.ae, i64 0
  %i.ag = bitcast <2 x i64> %i.af to <8 x i16>
  %7 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ag, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ah = bitcast <8 x i16> %7 to <4 x float>
  %i.ai = fadd fast <4 x float> %i.ac, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %.02739, i64 16
  %i.ak = load i64, ptr %i.aj, align 1, !tbaa !63
  %i.al = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %i.am = bitcast <2 x i64> %i.al to <8 x i16>
  %8 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.am, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.an = bitcast <8 x i16> %8 to <4 x float>
  %i.ao = fadd fast <4 x float> %i.ai, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %.02739, i64 24
  %i.aq = load i64, ptr %i.ap, align 1, !tbaa !63
  %i.ar = insertelement <2 x i64> poison, i64 %i.aq, i64 0
  %i.as = bitcast <2 x i64> %i.ar to <8 x i16>
  %9 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.as, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.at = bitcast <8 x i16> %9 to <4 x float>
  %i.au = fadd fast <4 x float> %i.ao, %i.at      ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02739, i64 32 ; 2 uses
  %niter.next.3 = add nuw nsw i32 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !266

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.02640.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ]
  %.02739.epil.init = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.av, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod52)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.02640.epil = phi <4 x float> [ %i.ba, %.lr.ph.epil ], [ %.02640.epil.init, %.lr.ph.epil.preheader ]
  %.02739.epil = phi ptr [ %i.bb, %.lr.ph.epil ], [ %.02739.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aw = load i64, ptr %.02739.epil, align 1, !tbaa !63
  %i.ax = insertelement <2 x i64> poison, i64 %i.aw, i64 0
  %i.ay = bitcast <2 x i64> %i.ax to <8 x i16>
  %10 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ay, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.az = bitcast <8 x i16> %10 to <4 x float>
  %i.ba = fadd fast <4 x float> %.02640.epil, %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02739.epil, i64 8
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !267

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %.noexc
  %.026.lcssa = phi <4 x float> [ zeroinitializer, %.noexc ], [ %i.au, %._crit_edge.loopexit.unr-lcssa ], [ %i.ba, %.lr.ph.epil ]
  %i.bc = sitofp fast i32 %i.p to float
  %i.bd = fdiv fast float 1.000000e+00, %i.bc
  %i.be = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bf = shufflevector <4 x float> %i.be, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bg = fmul fast <4 x float> %i.bf, %.026.lcssa
  %i.bh = load ptr, ptr %5, align 8, !tbaa !40
  %i.bi = bitcast <4 x float> %i.bg to <4 x i32>
  %i.bj = lshr <4 x i32> %i.bi, splat (i32 16)
  %i.bk = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.bj, <4 x i32> poison)
  %i.bl = bitcast <8 x i16> %i.bk to <2 x i64>
  %.idx = shl nsw i64 %indvars.iv, 3
  %i.bm = getelementptr inbounds i8, ptr %i.bh, i64 %.idx
  %i.bn = extractelement <2 x i64> %i.bl, i64 0
  store i64 %i.bn, ptr %i.bm, align 1, !tbaa !63
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond47.not = icmp eq i32 %i.o, %lftr.wideiv
  br i1 %exitcond47.not, label %._crit_edge45, label %.noexc

._crit_edge45:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge45, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL28pooling_global_avg_bf16s_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined.13(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5) #17 personality ptr @__gxx_personality_v0 {
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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !35
  %i.k = load i32, ptr %i.a, align 4, !tbaa !35   ; 3 uses
  %.not36 = icmp sgt i32 %i.k, %i.j
  br i1 %.not36, label %._crit_edge38, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !40, !noalias !274
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !274
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !33, !noalias !274
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load i32, ptr %4, align 4, !tbaa !35     ; 5 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = load ptr, ptr %5, align 8, !tbaa !40     ; 2 uses
  %i.t = sext i32 %i.k to i64                     ; 2 uses
  br i1 %i.r, label %.noexc.us.preheader, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.u = shl nsw i64 %i.t, 1
  %scevgep = getelementptr i8, ptr %i.s, i64 %i.u
  %i.v = sub i32 %i.j, %i.k
  %i.w = zext i32 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 1
  %i.y = add nuw nsw i64 %i.x, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %scevgep, i8 0, i64 %i.y, i1 false), !tbaa !71
  br label %._crit_edge38

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph
  %i.z = sitofp fast i32 %i.q to float
  %i.aa = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %i.q, 4
  %min.iters.check49 = icmp ult i32 %i.q, 32
  %i.ab = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  %n.vec58 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n63 = icmp eq i64 %n.vec58, %wide.trip.count
  %i.ac = fdiv fast float 1.000000e+00, %i.z
  br label %iter.check

iter.check:                                       ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv42 = phi i64 [ %i.t, %.noexc.us.preheader ], [ %indvars.iv.next43, %._crit_edge.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv42
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us ; 3 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check49, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %vec.phi = phi <8 x float> [ %i.au, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi50 = phi <8 x float> [ %i.av, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi51 = phi <8 x float> [ %i.aw, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %vec.phi52 = phi <8 x float> [ %i.ax, %vector.body ], [ zeroinitializer, %vector.main.loop.iter.check ]
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %index ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %wide.load = load <8 x i16>, ptr %i.ae, align 2, !tbaa !71
  %wide.load53 = load <8 x i16>, ptr %i.af, align 2, !tbaa !71
  %wide.load54 = load <8 x i16>, ptr %i.ag, align 2, !tbaa !71
  %wide.load55 = load <8 x i16>, ptr %i.ah, align 2, !tbaa !71
  %i.ai = zext <8 x i16> %wide.load to <8 x i32>
  %i.aj = zext <8 x i16> %wide.load53 to <8 x i32>
  %i.ak = zext <8 x i16> %wide.load54 to <8 x i32>
  %i.al = zext <8 x i16> %wide.load55 to <8 x i32>
  %i.am = shl nuw <8 x i32> %i.ai, splat (i32 16)
  %i.an = shl nuw <8 x i32> %i.aj, splat (i32 16)
  %i.ao = shl nuw <8 x i32> %i.ak, splat (i32 16)
  %i.ap = shl nuw <8 x i32> %i.al, splat (i32 16)
  %i.aq = bitcast <8 x i32> %i.am to <8 x float>
  %i.ar = bitcast <8 x i32> %i.an to <8 x float>
  %i.as = bitcast <8 x i32> %i.ao to <8 x float>
  %i.at = bitcast <8 x i32> %i.ap to <8 x float>
  %i.au = fadd fast <8 x float> %vec.phi, %i.aq   ; 2 uses
  %i.av = fadd fast <8 x float> %vec.phi50, %i.ar ; 2 uses
  %i.aw = fadd fast <8 x float> %vec.phi51, %i.as ; 2 uses
  %i.ax = fadd fast <8 x float> %vec.phi52, %i.at ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ay = icmp eq i64 %index.next, %n.vec
  br i1 %i.ay, label %middle.block, label %vector.body, !llvm.loop !271

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <8 x float> %i.av, %i.au
  %bin.rdx56 = fadd fast <8 x float> %i.aw, %bin.rdx
  %bin.rdx57 = fadd fast <8 x float> %i.ax, %bin.rdx56
  %i.az = call fast float @llvm.vector.reduce.fadd.v8f32(float 0.000000e+00, <8 x float> %bin.rdx57) ; 3 uses
  br i1 %cmp.n, label %._crit_edge.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !69

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi float [ %i.az, %vec.epilog.iter.check ], [ 0.000000e+00, %vector.main.loop.iter.check ]
  %i.ba = insertelement <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, float %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index59 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next62, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi60 = phi <4 x float> [ %i.ba, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %index59
  %wide.load61 = load <4 x i16>, ptr %i.bb, align 2, !tbaa !71
  %i.bc = zext <4 x i16> %wide.load61 to <4 x i32>
  %i.bd = shl nuw <4 x i32> %i.bc, splat (i32 16)
  %i.be = bitcast <4 x i32> %i.bd to <4 x float>
  %i.bf = fadd fast <4 x float> %vec.phi60, %i.be ; 2 uses
  %index.next62 = add nuw i64 %index59, 4         ; 2 uses
  %i.bg = icmp eq i64 %index.next62, %n.vec58
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !272

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bh = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bf) ; 2 uses
  br i1 %cmp.n63, label %._crit_edge.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec58, %vec.epilog.middle.block ]
  %.02533.us.ph = phi float [ 0.000000e+00, %iter.check ], [ %i.az, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.02533.us = phi float [ %i.bn, %vec.epilog.scalar.ph ], [ %.02533.us.ph, %vec.epilog.scalar.ph.preheader ]
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %indvars.iv
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !71
  %i.bk = zext i16 %i.bj to i32
  %i.bl = shl nuw i32 %i.bk, 16
  %i.bm = bitcast i32 %i.bl to float
  %i.bn = fadd fast float %.02533.us, %i.bm       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %vec.epilog.scalar.ph, !llvm.loop !273

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa = phi float [ %i.bh, %vec.epilog.middle.block ], [ %i.az, %middle.block ], [ %i.bn, %vec.epilog.scalar.ph ]
  %i.bo = fmul fast float %.lcssa, %i.ac
  %i.bp = bitcast float %i.bo to i32
  %i.bq = lshr i32 %i.bp, 16
  %i.br = trunc nuw i32 %i.bq to i16
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.s, i64 %indvars.iv42
  store i16 %i.br, ptr %i.bs, align 2, !tbaa !71
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next43 to i32
  %exitcond45.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond45.not, label %._crit_edge38, label %iter.check

._crit_edge38:                                    ; preds = %._crit_edge.us, %.noexc.preheader, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge38, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21pooling_max_bf16s_sseERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

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
  %.not83 = icmp sgt i32 %i.k, %i.j
  br i1 %.not83, label %._crit_edge85, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i32, ptr %5, align 4, !tbaa !35     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.noexc.preheader, label %._crit_edge85

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.q, %.noexc.preheader ], [ %i.ar, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = phi i32 [ %i.q, %.noexc.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv94 = phi i64 [ %i.s, %.noexc.preheader ], [ %indvars.iv.next95, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !40, !noalias !283
  %i.x = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !283
  %i.y = mul i64 %i.x, %indvars.iv94
  %i.z = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !283 ; 2 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  %i.ac = icmp sgt i32 %i.v, 0
  br i1 %i.ac, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %.noexc
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !283
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul i64 %i.z, %i.ae
  %i.ag = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ai = load ptr, ptr %4, align 8, !tbaa !40, !noalias !284
  %i.aj = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !284
  %i.ak = mul i64 %i.aj, %indvars.iv94
  %i.al = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !284
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge79
  %i.ao = phi i32 [ %i.at, %._crit_edge79 ], [ %i.u, %.preheader.preheader ]
  %i.ap = phi i32 [ %i.au, %._crit_edge79 ], [ %i.ag, %.preheader.preheader ] ; 2 uses
  %.03882 = phi i32 [ %i.ay, %._crit_edge79 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.03981 = phi ptr [ %i.ax, %._crit_edge79 ], [ %i.an, %.preheader.preheader ] ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph78, label %._crit_edge79

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge79, %.preheader.lr.ph, %.noexc
  %i.ar = phi i32 [ %i.u, %.noexc ], [ %i.u, %.preheader.lr.ph ], [ %i.at, %._crit_edge79 ]
  %i.as = phi i32 [ %i.v, %.noexc ], [ %i.v, %.preheader.lr.ph ], [ %i.at, %._crit_edge79 ]
  %indvars.iv.next95 = add nsw i64 %indvars.iv94, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next95 to i32
  %exitcond97.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond97.not, label %._crit_edge85, label %.noexc, !llvm.loop !279

._crit_edge79.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %5, align 4, !tbaa !35
  br label %._crit_edge79

._crit_edge79:                                    ; preds = %._crit_edge79.loopexit, %.preheader
  %i.at = phi i32 [ %i.ao, %.preheader ], [ %.pre, %._crit_edge79.loopexit ] ; 4 uses
  %i.au = phi i32 [ %i.ap, %.preheader ], [ %i.dc, %._crit_edge79.loopexit ] ; 2 uses
  %i.av = shl nsw i32 %i.au, 3
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %.03981, i64 %i.aw
  %i.ay = add nuw nsw i32 %.03882, 1              ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.at
  br i1 %i.az, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !280

.lr.ph78:                                         ; preds = %.preheader, %._crit_edge
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %._crit_edge ], [ 0, %.preheader ] ; 3 uses
  %i.ba = load i32, ptr %7, align 4, !tbaa !35
  %i.bb = mul nsw i32 %i.ba, %.03882
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul i64 %i.af, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bd
  %i.bf = load i32, ptr %8, align 4, !tbaa !35
  %i.bg = trunc nuw nsw i64 %indvars.iv91 to i32
  %i.bh = shl i32 %i.bg, 3
  %i.bi = mul i32 %i.bh, %i.bf
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bj ; 4 uses
  %i.bl = load <8 x i16>, ptr %i.bk, align 1, !tbaa !63 ; 2 uses
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %12 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bl, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bm = shufflevector <8 x i16> %11, <8 x i16> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15> ; 2 uses
  %i.bn = bitcast <16 x i16> %i.bm to <8 x i32>
  %i.bo = load i32, ptr %9, align 4, !tbaa !35    ; 4 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph78
  %i.bq = bitcast <16 x i16> %i.bm to <8 x float> ; 2 uses
  %i.br = load ptr, ptr %10, align 8, !tbaa !47   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bo to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bs = icmp eq i32 %i.bo, 1
  br i1 %i.bs, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.07475 = phi <8 x float> [ %i.bq, %.lr.ph.new ], [ %i.cl, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !35
  %i.bv = shl nsw i32 %i.bu, 3
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.bw
  %i.by = load <8 x i16>, ptr %i.bx, align 1, !tbaa !63 ; 2 uses
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.by, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %14 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.by, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.bz = shufflevector <8 x i16> %13, <8 x i16> %14, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ca = bitcast <16 x i16> %i.bz to <8 x float>
  %i.cb = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.07475, <8 x float> nofpclass(nan inf) %i.ca)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !35
  %i.cf = shl nsw i32 %i.ce, 3
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.cg
  %i.ci = load <8 x i16>, ptr %i.ch, align 1, !tbaa !63 ; 2 uses
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ci, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %16 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ci, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cj = shufflevector <8 x i16> %15, <8 x i16> %16, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ck = bitcast <16 x i16> %i.cj to <8 x float>
  %i.cl = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %i.cb, <8 x float> nofpclass(nan inf) %i.ck) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !281

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.07475.epil.init = phi <8 x float> [ %i.bq, %.lr.ph ], [ %i.cl, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod115 = trunc i32 %i.bo to i1
  call void @llvm.assume(i1 %lcmp.mod115)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !35
  %i.co = shl nsw i32 %i.cn, 3
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.cp
  %i.cr = load <8 x i16>, ptr %i.cq, align 1, !tbaa !63 ; 2 uses
  %17 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cr, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %18 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cr, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cs = shufflevector <8 x i16> %17, <8 x i16> %18, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ct = bitcast <16 x i16> %i.cs to <8 x float>
  %i.cu = call fast noundef nofpclass(nan inf) <8 x float> @llvm.x86.avx.max.ps.256(<8 x float> nofpclass(nan inf) %.07475.epil.init, <8 x float> nofpclass(nan inf) %i.ct)
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi <8 x float> [ %i.cl, %._crit_edge.loopexit.unr-lcssa ], [ %i.cu, %.epil.preheader ]
  %i.cv = bitcast <8 x float> %.lcssa to <8 x i32>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph78
  %.074.lcssa = phi <8 x i32> [ %i.bn, %.lr.ph78 ], [ %i.cv, %._crit_edge.loopexit ] ; 2 uses
  %i.cw = shufflevector <8 x i32> %.074.lcssa, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cx = shufflevector <8 x i32> %.074.lcssa, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cy = lshr <4 x i32> %i.cw, splat (i32 16)
  %i.cz = lshr <4 x i32> %i.cx, splat (i32 16)
  %i.da = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cy, <4 x i32> %i.cz)
  %.idx = shl nuw nsw i64 %indvars.iv91, 4
  %i.db = getelementptr inbounds nuw i8, ptr %.03981, i64 %.idx
  store <8 x i16> %i.da, ptr %i.db, align 1, !tbaa !63
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %i.dc = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  %i.dd = sext i32 %i.dc to i64
  %i.de = icmp slt i64 %indvars.iv.next92, %i.dd
  br i1 %i.de, label %.lr.ph78, label %._crit_edge79.loopexit, !llvm.loop !282

._crit_edge85:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge85, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21pooling_max_bf16s_sseERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined.14(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

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
  %.not82 = icmp sgt i32 %i.k, %i.j
  br i1 %.not82, label %._crit_edge84, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i32, ptr %5, align 4, !tbaa !35     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.noexc.preheader, label %._crit_edge84

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.q, %.noexc.preheader ], [ %i.ar, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = phi i32 [ %i.q, %.noexc.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv93 = phi i64 [ %i.s, %.noexc.preheader ], [ %indvars.iv.next94, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !40, !noalias !293
  %i.x = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !293
  %i.y = mul i64 %i.x, %indvars.iv93
  %i.z = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !293 ; 2 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  %i.ac = icmp sgt i32 %i.v, 0
  br i1 %i.ac, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %.noexc
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !293
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul i64 %i.z, %i.ae
  %i.ag = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.ai = load ptr, ptr %4, align 8, !tbaa !40, !noalias !294
  %i.aj = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !294
  %i.ak = mul i64 %i.aj, %indvars.iv93
  %i.al = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !294
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge78
  %i.ao = phi i32 [ %i.at, %._crit_edge78 ], [ %i.u, %.preheader.preheader ]
  %i.ap = phi i32 [ %i.au, %._crit_edge78 ], [ %i.ag, %.preheader.preheader ] ; 2 uses
  %.03881 = phi i32 [ %i.ay, %._crit_edge78 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.03980 = phi ptr [ %i.ax, %._crit_edge78 ], [ %i.an, %.preheader.preheader ] ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.lr.ph77, label %._crit_edge78

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge78, %.preheader.lr.ph, %.noexc
  %i.ar = phi i32 [ %i.u, %.noexc ], [ %i.u, %.preheader.lr.ph ], [ %i.at, %._crit_edge78 ]
  %i.as = phi i32 [ %i.v, %.noexc ], [ %i.v, %.preheader.lr.ph ], [ %i.at, %._crit_edge78 ]
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next94 to i32
  %exitcond96.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond96.not, label %._crit_edge84, label %.noexc, !llvm.loop !289

._crit_edge78.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %5, align 4, !tbaa !35
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %.preheader
  %i.at = phi i32 [ %i.ao, %.preheader ], [ %.pre, %._crit_edge78.loopexit ] ; 4 uses
  %i.au = phi i32 [ %i.ap, %.preheader ], [ %i.de, %._crit_edge78.loopexit ] ; 2 uses
  %i.av = shl nsw i32 %i.au, 2
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [2 x i8], ptr %.03980, i64 %i.aw
  %i.ay = add nuw nsw i32 %.03881, 1              ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.at
  br i1 %i.az, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !290

.lr.ph77:                                         ; preds = %.preheader, %._crit_edge
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge ], [ 0, %.preheader ] ; 3 uses
  %i.ba = load i32, ptr %7, align 4, !tbaa !35
  %i.bb = mul nsw i32 %i.ba, %.03881
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul i64 %i.af, %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bd
  %i.bf = load i32, ptr %8, align 4, !tbaa !35
  %i.bg = trunc nuw nsw i64 %indvars.iv90 to i32
  %i.bh = shl i32 %i.bg, 2
  %i.bi = mul i32 %i.bh, %i.bf
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.be, i64 %i.bj ; 4 uses
  %i.bl = load i64, ptr %i.bk, align 1, !tbaa !63
  %i.bm = insertelement <2 x i64> poison, i64 %i.bl, i64 0
  %i.bn = bitcast <2 x i64> %i.bm to <8 x i16>
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bn, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.bo = bitcast <8 x i16> %11 to <4 x float>    ; 3 uses
  %i.bp = load i32, ptr %9, align 4, !tbaa !35    ; 4 uses
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph77
  %i.br = load ptr, ptr %10, align 8, !tbaa !47   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bp to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bs = icmp eq i32 %i.bp, 1
  br i1 %i.bs, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.07374 = phi <4 x float> [ %i.bo, %.lr.ph.new ], [ %i.cn, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !35
  %i.bv = shl nsw i32 %i.bu, 2
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 1, !tbaa !63
  %i.bz = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %i.ca = bitcast <2 x i64> %i.bz to <8 x i16>
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ca, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cb = bitcast <8 x i16> %12 to <4 x float>
  %i.cc = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.07374, <4 x float> nofpclass(nan inf) %i.cb)
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !35
  %i.cg = shl nsw i32 %i.cf, 2
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 1, !tbaa !63
  %i.ck = insertelement <2 x i64> poison, i64 %i.cj, i64 0
  %i.cl = bitcast <2 x i64> %i.ck to <8 x i16>
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cl, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cm = bitcast <8 x i16> %13 to <4 x float>
  %i.cn = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %i.cc, <4 x float> nofpclass(nan inf) %i.cm) ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !291

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.07374.epil.init = phi <4 x float> [ %i.bo, %.lr.ph ], [ %i.cn, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod114 = trunc i32 %i.bp to i1
  call void @llvm.assume(i1 %lcmp.mod114)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.epil.init
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !35
  %i.cq = shl nsw i32 %i.cp, 2
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.cr
  %i.ct = load i64, ptr %i.cs, align 1, !tbaa !63
  %i.cu = insertelement <2 x i64> poison, i64 %i.ct, i64 0
  %i.cv = bitcast <2 x i64> %i.cu to <8 x i16>
  %14 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cv, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cw = bitcast <8 x i16> %14 to <4 x float>
  %i.cx = call fast noundef nofpclass(nan inf) <4 x float> @llvm.x86.sse.max.ps(<4 x float> nofpclass(nan inf) %.07374.epil.init, <4 x float> nofpclass(nan inf) %i.cw)
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.lr.ph77
  %.073.lcssa = phi <4 x float> [ %i.bo, %.lr.ph77 ], [ %i.cn, %._crit_edge.loopexit.unr-lcssa ], [ %i.cx, %.epil.preheader ]
  %i.cy = bitcast <4 x float> %.073.lcssa to <4 x i32>
  %i.cz = lshr <4 x i32> %i.cy, splat (i32 16)
  %i.da = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cz, <4 x i32> poison)
  %i.db = bitcast <8 x i16> %i.da to <2 x i64>
  %.idx = shl nuw nsw i64 %indvars.iv90, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %.03980, i64 %.idx
  %i.dd = extractelement <2 x i64> %i.db, i64 0
  store i64 %i.dd, ptr %i.dc, align 1, !tbaa !63
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.de = load i32, ptr %6, align 4, !tbaa !35    ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next91, %i.df
  br i1 %i.dg, label %.lr.ph77, label %._crit_edge78.loopexit, !llvm.loop !292

._crit_edge84:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge84, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21pooling_max_bf16s_sseERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined.15(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !35
  %i.k = load i32, ptr %i.a, align 4, !tbaa !35   ; 3 uses
  %.not81 = icmp sgt i32 %i.k, %i.j
  br i1 %.not81, label %._crit_edge.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !310
  %i.n = load ptr, ptr %3, align 8, !tbaa !40, !noalias !310 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !310 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !33, !noalias !310 ; 4 uses
  %factor.op.mul = mul i64 %i.p, %i.r             ; 2 uses
  %i.s = sext i32 %i.m to i64                     ; 2 uses
  %i.t = load ptr, ptr %4, align 8, !tbaa !40, !noalias !311 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41, !noalias !311 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !33, !noalias !311 ; 3 uses
  %factor.op.mul83 = mul i64 %i.v, %i.x           ; 2 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !35     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = mul i64 %i.r, %i.s                      ; 2 uses
  br i1 %i.z, label %.noexc.lr.ph.split, label %._crit_edge.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.ab = load i32, ptr %6, align 4, !tbaa !35    ; 6 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = sext i32 %i.ab to i64                   ; 3 uses
  br i1 %i.ac, label %.noexc.lr.ph.split.split, label %._crit_edge.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ae = load i32, ptr %7, align 4, !tbaa !35    ; 2 uses
  %i.af = load i32, ptr %8, align 4, !tbaa !35    ; 3 uses
  %i.ag = load i32, ptr %9, align 4, !tbaa !35    ; 3 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.noexc.lr.ph.split.split.split.us, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.ai = sext i32 %i.af to i64                   ; 5 uses
  %i.aj = sext i32 %i.ae to i64                   ; 2 uses
  %i.ak = sext i32 %i.k to i64                    ; 3 uses
  %i.al = add nsw i32 %i.j, 1
  %wide.trip.count93 = zext nneg i32 %i.y to i64  ; 2 uses
  %factor.op.mul125 = mul i64 %i.aa, %i.aj        ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ab to i64   ; 9 uses
  %i.am = add nsw i64 %wide.trip.count93, -1      ; 2 uses
  %i.an = mul nsw i64 %i.am, %i.s
  %i.ao = mul i64 %i.an, %i.aj
  %i.ap = mul i64 %i.p, %i.ak
  %i.aq = add i64 %i.ao, %i.ap
  %i.ar = mul i64 %i.r, %i.aq
  %i.as = shl nuw nsw i64 %wide.trip.count, 1     ; 2 uses
  %i.at = mul i64 %i.p, %i.r
  %i.au = mul i64 %i.x, %i.v
  %i.av = mul i64 %i.au, %i.ak
  %i.aw = mul nsw i64 %i.am, %i.ad
  %i.ax = shl i64 %i.aw, 1
  %i.ay = mul i64 %i.x, %i.v
  %i.az = getelementptr i8, ptr %i.n, i64 %i.ar
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.as
  %i.bb = getelementptr i8, ptr %i.t, i64 %i.av
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.ax
  %i.bd = getelementptr i8, ptr %i.bc, i64 %i.as
  %min.iters.check = icmp ugt i32 %i.ab, 7
  %ident.check.not = icmp eq i32 %i.af, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %stride.check = icmp slt i64 %factor.op.mul125, 0
  %min.iters.check132 = icmp ult i32 %i.ab, 64
  %i.be = and i64 %wide.trip.count, 56
  %n.vec = and i64 %wide.trip.count, 2147483584   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.be, 0
  %n.vec136 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n140 = icmp eq i64 %n.vec136, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.noexc

.noexc.lr.ph.split.split.split.us:                ; preds = %.noexc.lr.ph.split.split
  %i.bf = load ptr, ptr %10, align 8, !tbaa !47   ; 5 uses
  %i.bg = sext i32 %i.af to i64
  %i.bh = sext i32 %i.ae to i64
  %i.bi = sext i32 %i.k to i64
  %i.bj = add nsw i32 %i.j, 1
  %wide.trip.count112 = zext nneg i32 %i.y to i64
  %factor.op.mul127 = mul i64 %i.aa, %i.bh
  %wide.trip.count107 = zext nneg i32 %i.ab to i64
  %wide.trip.count102 = zext nneg i32 %i.ag to i64 ; 2 uses
  %xtraiter142 = and i64 %wide.trip.count102, 3   ; 3 uses
  %i.bk = icmp ult i32 %i.ag, 4
  %unroll_iter = and i64 %wide.trip.count102, 2147483644
  %lcmp.mod143.not = icmp eq i64 %xtraiter142, 0
  %lcmp.mod145 = icmp ne i64 %xtraiter142, 0
  br label %.noexc.us

.noexc.us:                                        ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split80.us.us, %.noexc.lr.ph.split.split.split.us
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split80.us.us ], [ %i.bi, %.noexc.lr.ph.split.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv114
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass.us
  %.reass84.us = mul i64 %factor.op.mul83, %indvars.iv114
  %i.bm = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass84.us
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge74.split.us.us.us, %.noexc.us
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %._crit_edge74.split.us.us.us ], [ 0, %.noexc.us ] ; 2 uses
  %.03876.us.us = phi ptr [ %i.dp, %._crit_edge74.split.us.us.us ], [ %i.bm, %.noexc.us ] ; 2 uses
  %.reass128 = mul i64 %indvars.iv109, %factor.op.mul127
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %.reass128
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.preheader.us.us
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %._crit_edge.us.us.us ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.bo = mul nsw i64 %indvars.iv104, %i.bg
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bn, i64 %i.bo ; 6 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !71
  %i.br = zext i16 %i.bq to i32
  %i.bs = shl nuw i32 %i.br, 16
  %i.bt = bitcast i32 %i.bs to float              ; 2 uses
  br i1 %i.bk, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %indvars.iv99 = phi i64 [ %indvars.iv.next100.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ] ; 5 uses
  %.06970.us.us.us = phi float [ %.sroa.speculated.us.us.us.3, %.lr.ph.us.us.us.new ], [ %i.bt, %.lr.ph.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv99
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !35
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !71
  %i.bz = zext i16 %i.by to i32
  %i.ca = shl nuw i32 %i.bz, 16
  %i.cb = bitcast i32 %i.ca to float
  %.sroa.speculated.us.us.us = call nnan ninf nsz float @llvm.maxnum.f32(float %.06970.us.us.us, float %i.cb)
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv99
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !35
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !71
  %i.ci = zext i16 %i.ch to i32
  %i.cj = shl nuw i32 %i.ci, 16
end_hunk_1
begin_hunk_2_@_ZN4ncnnL21pooling_max_bf16s_sseERKNS_3MatERS0_iiiiRKNS_6OptionE.omp_outlined.15:bb.a
  %i.fc = getelementptr inbounds [2 x i8], ptr %i.dv, i64 %i.fb
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !71
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr %.03876, i64 %indvars.iv.next.2
  store i16 %i.fd, ptr %i.fe, align 2, !tbaa !71
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge74.split, label %vec.epilog.scalar.ph, !llvm.loop !309

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split80, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split80.us.us, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

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
  %.not150 = icmp sgt i32 %i.k, %i.j
  br i1 %.not150, label %._crit_edge152, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i32, ptr %5, align 4, !tbaa !35     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.noexc.preheader, label %._crit_edge152

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.q, %.noexc.preheader ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = phi i32 [ %i.q, %.noexc.preheader ], [ %i.ap, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv165 = phi i64 [ %i.s, %.noexc.preheader ], [ %indvars.iv.next166, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !40, !noalias !323
  %i.x = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !323
  %i.y = mul i64 %i.x, %indvars.iv165
  %i.z = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !323 ; 2 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  %i.ac = icmp sgt i32 %i.v, 0
  br i1 %i.ac, label %.lr.ph149, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph149:                                        ; preds = %.noexc
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !323
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul i64 %i.z, %i.ae
  %i.ag = load i32, ptr %7, align 4, !tbaa !35    ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph149.split.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph149.split.preheader:                        ; preds = %.lr.ph149
  %i.ai = load ptr, ptr %4, align 8, !tbaa !40, !noalias !324
  %i.aj = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !324
  %i.ak = mul i64 %i.aj, %indvars.iv165
  %i.al = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !324
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  br label %.lr.ph149.split

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge145, %.lr.ph149, %.noexc
  %i.ao = phi i32 [ %i.u, %.noexc ], [ %i.u, %.lr.ph149 ], [ %i.aw, %._crit_edge145 ]
  %i.ap = phi i32 [ %i.v, %.noexc ], [ %i.v, %.lr.ph149 ], [ %i.aw, %._crit_edge145 ]
  %indvars.iv.next166 = add nsw i64 %indvars.iv165, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next166 to i32
  %exitcond168.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond168.not, label %._crit_edge152, label %.noexc, !llvm.loop !318

.lr.ph149.split:                                  ; preds = %.lr.ph149.split.preheader, %._crit_edge145
  %i.aq = phi i32 [ %i.aw, %._crit_edge145 ], [ %i.u, %.lr.ph149.split.preheader ]
  %i.ar = phi i32 [ %i.ax, %._crit_edge145 ], [ %i.ag, %.lr.ph149.split.preheader ] ; 2 uses
  %.072148 = phi i32 [ %i.bb, %._crit_edge145 ], [ 0, %.lr.ph149.split.preheader ] ; 2 uses
  %.073147 = phi ptr [ %i.ba, %._crit_edge145 ], [ %i.an, %.lr.ph149.split.preheader ] ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph144.preheader, label %._crit_edge145

.lr.ph144.preheader:                              ; preds = %.lr.ph149.split
  %i.at = load i32, ptr %6, align 4, !tbaa !35
  %i.au = mul nsw i32 %i.at, %.072148
  %i.av = sext i32 %i.au to i64
  br label %.lr.ph144

._crit_edge145.loopexit:                          ; preds = %._crit_edge
  %.pre = load i32, ptr %5, align 4, !tbaa !35
  br label %._crit_edge145

._crit_edge145:                                   ; preds = %._crit_edge145.loopexit, %.lr.ph149.split
  %i.aw = phi i32 [ %i.aq, %.lr.ph149.split ], [ %.pre, %._crit_edge145.loopexit ] ; 4 uses
  %i.ax = phi i32 [ %i.ar, %.lr.ph149.split ], [ %i.cz, %._crit_edge145.loopexit ] ; 2 uses
  %i.ay = shl nsw i32 %i.ax, 3
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %.073147, i64 %i.az
  %i.bb = add nuw nsw i32 %.072148, 1             ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %i.aw
  br i1 %i.bc, label %.lr.ph149.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !319

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %._crit_edge
  %indvars.iv162 = phi i64 [ 0, %.lr.ph144.preheader ], [ %indvars.iv.next163, %._crit_edge ] ; 3 uses
  %i.bd = load i32, ptr %9, align 4, !tbaa !35    ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph136, label %._crit_edge

.lr.ph136:                                        ; preds = %.lr.ph144
  %i.bf = load i32, ptr %8, align 4, !tbaa !35
  %i.bg = trunc nuw nsw i64 %indvars.iv162 to i32
  %i.bh = mul nsw i32 %i.bf, %i.bg
  %i.bi = load i32, ptr %10, align 4, !tbaa !35
  %i.bj = sext i32 %i.bh to i64
  %i.bk = sext i32 %i.bi to i64
  %wide.trip.count160 = zext nneg i32 %i.bd to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph136, %.loopexit
  %indvars.iv157 = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next158, %.loopexit ] ; 2 uses
  %.062134 = phi i32 [ 0, %.lr.ph136 ], [ %.4.ph, %.loopexit ] ; 4 uses
  %.063133 = phi <8 x float> [ zeroinitializer, %.lr.ph136 ], [ %.467.ph, %.loopexit ] ; 4 uses
  %i.bl = add nsw i64 %indvars.iv157, %i.av       ; 3 uses
  %i.bm = icmp slt i64 %i.bl, %i.bk
  br i1 %i.bm, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = load i32, ptr %11, align 4, !tbaa !35
  %i.bo = load i32, ptr %12, align 4, !tbaa !35
  %i.bp = load i32, ptr %13, align 4, !tbaa !35
  %i.bq = add i32 %i.bo, %i.bp
  %i.br = sub i32 %i.bn, %i.bq
  %i.bs = sext i32 %i.br to i64
  %.not78 = icmp slt i64 %i.bl, %i.bs
  br i1 %.not78, label %.preheader, label %._crit_edge.loopexit

.preheader:                                       ; preds = %bb.d
  %i.bt = load i32, ptr %14, align 4, !tbaa !35   ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.bv = load i32, ptr %15, align 4, !tbaa !35
  %i.bw = mul i64 %i.af, %i.bl
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bw
  %i.by = sext i32 %i.bv to i64
  %wide.trip.count = zext nneg i32 %i.bt to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.1127 = phi i32 [ %.062134, %.lr.ph ], [ %.2.ph, %bb.h ] ; 3 uses
  %.164126 = phi <8 x float> [ %.063133, %.lr.ph ], [ %.265.ph, %bb.h ] ; 3 uses
  %i.bz = add nsw i64 %indvars.iv, %i.bj          ; 3 uses
  %i.ca = icmp slt i64 %i.bz, %i.by
  br i1 %i.ca, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = load i32, ptr %16, align 4, !tbaa !35
  %i.cc = load i32, ptr %17, align 4, !tbaa !35
  %i.cd = load i32, ptr %18, align 4, !tbaa !35
  %i.ce = add i32 %i.cc, %i.cd
  %i.cf = sub i32 %i.cb, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %.not79 = icmp slt i64 %i.bz, %i.cg
  br i1 %.not79, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %.idx = shl nsw i64 %i.bz, 4
  %i.ch = getelementptr inbounds i8, ptr %i.bx, i64 %.idx
  %i.ci = load <8 x i16>, ptr %i.ch, align 1, !tbaa !63 ; 2 uses
  %19 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ci, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %20 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.ci, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.cj = shufflevector <8 x i16> %19, <8 x i16> %20, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ck = bitcast <16 x i16> %i.cj to <8 x float>
  %i.cl = fadd fast <8 x float> %.164126, %i.ck
  %i.cm = add nsw i32 %.1127, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.265.ph = phi <8 x float> [ %.164126, %bb.e ], [ %i.cl, %bb.g ] ; 2 uses
  %.2.ph = phi i32 [ %.1127, %bb.e ], [ %i.cm, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !320

.loopexit:                                        ; preds = %bb.f, %bb.h, %.preheader, %bb.c
  %.467.ph = phi <8 x float> [ %.063133, %bb.c ], [ %.063133, %.preheader ], [ %.164126, %bb.f ], [ %.265.ph, %bb.h ] ; 2 uses
  %.4.ph = phi i32 [ %.062134, %bb.c ], [ %.062134, %.preheader ], [ %.1127, %bb.f ], [ %.2.ph, %bb.h ] ; 2 uses
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count160
  br i1 %exitcond161.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !321

._crit_edge.loopexit:                             ; preds = %bb.d, %.loopexit
  %.063.lcssa.ph = phi <8 x float> [ %.467.ph, %.loopexit ], [ %.063133, %bb.d ]
  %.062.lcssa.ph = phi i32 [ %.4.ph, %.loopexit ], [ %.062134, %bb.d ]
  %i.cn = sitofp fast i32 %.062.lcssa.ph to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph144
  %.063.lcssa = phi <8 x float> [ zeroinitializer, %.lr.ph144 ], [ %.063.lcssa.ph, %._crit_edge.loopexit ]
  %.062.lcssa = phi float [ 0.000000e+00, %.lr.ph144 ], [ %i.cn, %._crit_edge.loopexit ]
  %i.co = fdiv fast float 1.000000e+00, %.062.lcssa
  %i.cp = insertelement <8 x float> poison, float %i.co, i64 0
  %i.cq = shufflevector <8 x float> %i.cp, <8 x float> poison, <8 x i32> zeroinitializer
  %i.cr = fmul fast <8 x float> %i.cq, %.063.lcssa
  %i.cs = bitcast <8 x float> %i.cr to <8 x i32>  ; 2 uses
  %i.ct = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cu = shufflevector <8 x i32> %i.cs, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.cv = lshr <4 x i32> %i.ct, splat (i32 16)
  %i.cw = lshr <4 x i32> %i.cu, splat (i32 16)
  %i.cx = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cv, <4 x i32> %i.cw)
  %.idx182 = shl nuw nsw i64 %indvars.iv162, 4
  %i.cy = getelementptr inbounds nuw i8, ptr %.073147, i64 %.idx182
  store <8 x i16> %i.cx, ptr %i.cy, align 1, !tbaa !63
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.cz = load i32, ptr %7, align 4, !tbaa !35    ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next163, %i.da
  br i1 %i.db, label %.lr.ph144, label %._crit_edge145.loopexit, !llvm.loop !322

._crit_edge152:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge152, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.16(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

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
  %.not150 = icmp sgt i32 %i.k, %i.j
  br i1 %.not150, label %._crit_edge152, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i32, ptr %5, align 4, !tbaa !35     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.noexc.preheader, label %._crit_edge152

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.q, %.noexc.preheader ], [ %i.ao, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = phi i32 [ %i.q, %.noexc.preheader ], [ %i.ap, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv165 = phi i64 [ %i.s, %.noexc.preheader ], [ %indvars.iv.next166, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !40, !noalias !334
  %i.x = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !334
  %i.y = mul i64 %i.x, %indvars.iv165
  %i.z = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !334 ; 2 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  %i.ac = icmp sgt i32 %i.v, 0
  br i1 %i.ac, label %.lr.ph149, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph149:                                        ; preds = %.noexc
  %i.ad = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !334
  %i.ae = sext i32 %i.ad to i64
  %i.af = mul i64 %i.z, %i.ae
  %i.ag = load i32, ptr %7, align 4, !tbaa !35    ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph149.split.preheader, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph149.split.preheader:                        ; preds = %.lr.ph149
  %i.ai = load ptr, ptr %4, align 8, !tbaa !40, !noalias !335
  %i.aj = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !335
  %i.ak = mul i64 %i.aj, %indvars.iv165
  %i.al = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !335
  %i.am = mul i64 %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.am
  br label %.lr.ph149.split

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge145, %.lr.ph149, %.noexc
  %i.ao = phi i32 [ %i.u, %.noexc ], [ %i.u, %.lr.ph149 ], [ %i.aw, %._crit_edge145 ]
  %i.ap = phi i32 [ %i.v, %.noexc ], [ %i.v, %.lr.ph149 ], [ %i.aw, %._crit_edge145 ]
  %indvars.iv.next166 = add nsw i64 %indvars.iv165, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next166 to i32
  %exitcond168.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond168.not, label %._crit_edge152, label %.noexc, !llvm.loop !329

.lr.ph149.split:                                  ; preds = %.lr.ph149.split.preheader, %._crit_edge145
  %i.aq = phi i32 [ %i.aw, %._crit_edge145 ], [ %i.u, %.lr.ph149.split.preheader ]
  %i.ar = phi i32 [ %i.ax, %._crit_edge145 ], [ %i.ag, %.lr.ph149.split.preheader ] ; 2 uses
  %.072148 = phi i32 [ %i.bb, %._crit_edge145 ], [ 0, %.lr.ph149.split.preheader ] ; 2 uses
  %.073147 = phi ptr [ %i.ba, %._crit_edge145 ], [ %i.an, %.lr.ph149.split.preheader ] ; 2 uses
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph144.preheader, label %._crit_edge145

.lr.ph144.preheader:                              ; preds = %.lr.ph149.split
  %i.at = load i32, ptr %6, align 4, !tbaa !35
  %i.au = mul nsw i32 %i.at, %.072148
  %i.av = sext i32 %i.au to i64
  br label %.lr.ph144

._crit_edge145.loopexit:                          ; preds = %._crit_edge
  %.pre = load i32, ptr %5, align 4, !tbaa !35
  br label %._crit_edge145

._crit_edge145:                                   ; preds = %._crit_edge145.loopexit, %.lr.ph149.split
  %i.aw = phi i32 [ %i.aq, %.lr.ph149.split ], [ %.pre, %._crit_edge145.loopexit ] ; 4 uses
  %i.ax = phi i32 [ %i.ar, %.lr.ph149.split ], [ %i.cz, %._crit_edge145.loopexit ] ; 2 uses
  %i.ay = shl nsw i32 %i.ax, 2
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [2 x i8], ptr %.073147, i64 %i.az
  %i.bb = add nuw nsw i32 %.072148, 1             ; 2 uses
  %i.bc = icmp slt i32 %i.bb, %i.aw
  br i1 %i.bc, label %.lr.ph149.split, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !330

.lr.ph144:                                        ; preds = %.lr.ph144.preheader, %._crit_edge
  %indvars.iv162 = phi i64 [ 0, %.lr.ph144.preheader ], [ %indvars.iv.next163, %._crit_edge ] ; 3 uses
  %i.bd = load i32, ptr %9, align 4, !tbaa !35    ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph136, label %._crit_edge

.lr.ph136:                                        ; preds = %.lr.ph144
  %i.bf = load i32, ptr %8, align 4, !tbaa !35
  %i.bg = trunc nuw nsw i64 %indvars.iv162 to i32
  %i.bh = mul nsw i32 %i.bf, %i.bg
  %i.bi = load i32, ptr %10, align 4, !tbaa !35
  %i.bj = sext i32 %i.bh to i64
  %i.bk = sext i32 %i.bi to i64
  %wide.trip.count160 = zext nneg i32 %i.bd to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph136, %.loopexit
  %indvars.iv157 = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next158, %.loopexit ] ; 2 uses
  %.062134 = phi i32 [ 0, %.lr.ph136 ], [ %.4.ph, %.loopexit ] ; 4 uses
  %.063133 = phi <4 x float> [ zeroinitializer, %.lr.ph136 ], [ %.467.ph, %.loopexit ] ; 4 uses
  %i.bl = add nsw i64 %indvars.iv157, %i.av       ; 3 uses
  %i.bm = icmp slt i64 %i.bl, %i.bk
  br i1 %i.bm, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = load i32, ptr %11, align 4, !tbaa !35
  %i.bo = load i32, ptr %12, align 4, !tbaa !35
  %i.bp = load i32, ptr %13, align 4, !tbaa !35
  %i.bq = add i32 %i.bo, %i.bp
  %i.br = sub i32 %i.bn, %i.bq
  %i.bs = sext i32 %i.br to i64
  %.not78 = icmp slt i64 %i.bl, %i.bs
  br i1 %.not78, label %.preheader, label %._crit_edge.loopexit

.preheader:                                       ; preds = %bb.d
  %i.bt = load i32, ptr %14, align 4, !tbaa !35   ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.bv = load i32, ptr %15, align 4, !tbaa !35
  %i.bw = mul i64 %i.af, %i.bl
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bw
  %i.by = sext i32 %i.bv to i64
  %wide.trip.count = zext nneg i32 %i.bt to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.1127 = phi i32 [ %.062134, %.lr.ph ], [ %.2.ph, %bb.h ] ; 3 uses
  %.164126 = phi <4 x float> [ %.063133, %.lr.ph ], [ %.265.ph, %bb.h ] ; 3 uses
  %i.bz = add nsw i64 %indvars.iv, %i.bj          ; 3 uses
  %i.ca = icmp slt i64 %i.bz, %i.by
  br i1 %i.ca, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = load i32, ptr %16, align 4, !tbaa !35
  %i.cc = load i32, ptr %17, align 4, !tbaa !35
  %i.cd = load i32, ptr %18, align 4, !tbaa !35
  %i.ce = add i32 %i.cc, %i.cd
  %i.cf = sub i32 %i.cb, %i.ce
  %i.cg = sext i32 %i.cf to i64
  %.not79 = icmp slt i64 %i.bz, %i.cg
  br i1 %.not79, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %.idx = shl nsw i64 %i.bz, 3
  %i.ch = getelementptr inbounds i8, ptr %i.bx, i64 %.idx
  %i.ci = load i64, ptr %i.ch, align 1, !tbaa !63
  %i.cj = insertelement <2 x i64> poison, i64 %i.ci, i64 0
  %i.ck = bitcast <2 x i64> %i.cj to <8 x i16>
  %19 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ck, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cl = bitcast <8 x i16> %19 to <4 x float>
  %i.cm = fadd fast <4 x float> %.164126, %i.cl
  %i.cn = add nsw i32 %.1127, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %.265.ph = phi <4 x float> [ %.164126, %bb.e ], [ %i.cm, %bb.g ] ; 2 uses
  %.2.ph = phi i32 [ %.1127, %bb.e ], [ %i.cn, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !331

.loopexit:                                        ; preds = %bb.f, %bb.h, %.preheader, %bb.c
  %.467.ph = phi <4 x float> [ %.063133, %bb.c ], [ %.063133, %.preheader ], [ %.164126, %bb.f ], [ %.265.ph, %bb.h ] ; 2 uses
  %.4.ph = phi i32 [ %.062134, %bb.c ], [ %.062134, %.preheader ], [ %.1127, %bb.f ], [ %.2.ph, %bb.h ] ; 2 uses
  %indvars.iv.next158 = add nuw nsw i64 %indvars.iv157, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next158, %wide.trip.count160
  br i1 %exitcond161.not, label %._crit_edge.loopexit, label %bb.c, !llvm.loop !332

._crit_edge.loopexit:                             ; preds = %.loopexit, %bb.d
  %.063.lcssa.ph = phi <4 x float> [ %.063133, %bb.d ], [ %.467.ph, %.loopexit ]
  %.062.lcssa.ph = phi i32 [ %.062134, %bb.d ], [ %.4.ph, %.loopexit ]
  %i.co = sitofp fast i32 %.062.lcssa.ph to float
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph144
  %.063.lcssa = phi <4 x float> [ zeroinitializer, %.lr.ph144 ], [ %.063.lcssa.ph, %._crit_edge.loopexit ]
  %.062.lcssa = phi float [ 0.000000e+00, %.lr.ph144 ], [ %i.co, %._crit_edge.loopexit ]
  %i.cp = fdiv fast float 1.000000e+00, %.062.lcssa
  %i.cq = insertelement <4 x float> poison, float %i.cp, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cs = fmul fast <4 x float> %i.cr, %.063.lcssa
  %i.ct = bitcast <4 x float> %i.cs to <4 x i32>
  %i.cu = lshr <4 x i32> %i.ct, splat (i32 16)
  %i.cv = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.cu, <4 x i32> poison)
  %i.cw = bitcast <8 x i16> %i.cv to <2 x i64>
  %.idx182 = shl nuw nsw i64 %indvars.iv162, 3
  %i.cx = getelementptr inbounds nuw i8, ptr %.073147, i64 %.idx182
  %i.cy = extractelement <2 x i64> %i.cw, i64 0
  store i64 %i.cy, ptr %i.cx, align 1, !tbaa !63
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.cz = load i32, ptr %7, align 4, !tbaa !35    ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next163, %i.da
  br i1 %i.db, label %.lr.ph144, label %._crit_edge145.loopexit, !llvm.loop !333

._crit_edge152:                                   ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge152, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.17(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %18) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.i

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !35
  %i.k = load i32, ptr %i.a, align 4, !tbaa !35   ; 3 uses
  %.not148 = icmp sgt i32 %i.k, %i.j
  br i1 %.not148, label %._crit_edge.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !347
  %i.n = load ptr, ptr %3, align 8, !tbaa !40, !noalias !347
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !347
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !33, !noalias !347 ; 2 uses
  %factor.op.mul = mul i64 %i.p, %i.r
  %i.s = sext i32 %i.m to i64
  %i.t = load ptr, ptr %4, align 8, !tbaa !40, !noalias !348 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41, !noalias !348
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !33, !noalias !348
  %factor.op.mul150 = mul i64 %i.v, %i.x          ; 2 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !35     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = mul i64 %i.r, %i.s
  br i1 %i.z, label %.noexc.lr.ph.split, label %._crit_edge.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.ab = load i32, ptr %6, align 4, !tbaa !35
  %i.ac = load i32, ptr %7, align 4, !tbaa !35    ; 6 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  %i.ae = sext i32 %i.ac to i64                   ; 2 uses
  br i1 %i.ad, label %.noexc.lr.ph.split.split, label %._crit_edge.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.af = load i32, ptr %9, align 4, !tbaa !35    ; 2 uses
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.noexc.lr.ph.split.split.split.us, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.ah = sext i32 %i.k to i64
  %i.ai = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.ac to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.ac, 8
  %min.iters.check198 = icmp ult i32 %i.ac, 64
  %i.aj = and i64 %wide.trip.count, 56
  %n.vec = and i64 %wide.trip.count, 2147483584   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.aj, 0
  %n.vec199 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n202 = icmp eq i64 %n.vec199, %wide.trip.count
  br label %.noexc

.noexc.lr.ph.split.split.split.us:                ; preds = %.noexc.lr.ph.split.split
  %i.ak = load i32, ptr %8, align 4, !tbaa !35
  %i.al = load i32, ptr %10, align 4, !tbaa !35
  %i.am = sext i32 %i.al to i64
  %i.an = sext i32 %i.ak to i64
  %i.ao = sext i32 %i.ab to i64
  %i.ap = sext i32 %i.k to i64
  %i.aq = add nsw i32 %i.j, 1
  %wide.trip.count180 = zext nneg i32 %i.y to i64
  %wide.trip.count175 = zext nneg i32 %i.ac to i64
  %wide.trip.count170 = zext nneg i32 %i.af to i64
  br label %.noexc.us

.noexc.us:                                        ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split147.us.us, %.noexc.lr.ph.split.split.split.us
  %indvars.iv182 = phi i64 [ %indvars.iv.next183, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split147.us.us ], [ %i.ap, %.noexc.lr.ph.split.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv182
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass.us
  %.reass151.us = mul i64 %factor.op.mul150, %indvars.iv182
  %i.as = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass151.us
  br label %.lr.ph140.us.us

.lr.ph140.us.us:                                  ; preds = %._crit_edge141.split.us.us.us, %.noexc.us
  %indvars.iv177 = phi i64 [ %indvars.iv.next178, %._crit_edge141.split.us.us.us ], [ 0, %.noexc.us ] ; 2 uses
  %.071143.us.us = phi ptr [ %i.ce, %._crit_edge141.split.us.us.us ], [ %i.as, %.noexc.us ] ; 2 uses
  %i.at = mul nsw i64 %indvars.iv177, %i.ao
  br label %.lr.ph132.us.us.us

.lr.ph132.us.us.us:                               ; preds = %._crit_edge.us.us.us, %.lr.ph140.us.us
  %indvars.iv172 = phi i64 [ %indvars.iv.next173, %._crit_edge.us.us.us ], [ 0, %.lr.ph140.us.us ] ; 3 uses
  %i.au = mul nsw i64 %indvars.iv172, %i.an
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.us.us.us, %.lr.ph132.us.us.us
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %.loopexit.us.us.us ], [ 0, %.lr.ph132.us.us.us ] ; 2 uses
  %.060130.us.us.us = phi i32 [ %.4.ph.us.us.us, %.loopexit.us.us.us ], [ 0, %.lr.ph132.us.us.us ] ; 4 uses
  %.061129.us.us.us = phi float [ %.465.ph.us.us.us, %.loopexit.us.us.us ], [ 0.000000e+00, %.lr.ph132.us.us.us ] ; 4 uses
  %i.av = add nsw i64 %indvars.iv167, %i.at       ; 3 uses
  %i.aw = icmp slt i64 %i.av, %i.am
  br i1 %i.aw, label %.loopexit.us.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ax = load i32, ptr %11, align 4, !tbaa !35
  %i.ay = load i32, ptr %12, align 4, !tbaa !35
  %i.az = load i32, ptr %13, align 4, !tbaa !35
  %i.ba = add i32 %i.ay, %i.az
  %i.bb = sub i32 %i.ax, %i.ba
  %i.bc = sext i32 %i.bb to i64
  %.not76.us.us.us = icmp slt i64 %i.av, %i.bc
  br i1 %.not76.us.us.us, label %.preheader.us.us.us, label %._crit_edge.us.us.us

.preheader.us.us.us:                              ; preds = %bb.d
  %i.bd = load i32, ptr %14, align 4, !tbaa !35   ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph.us.us.us, label %.loopexit.us.us.us

.lr.ph.us.us.us:                                  ; preds = %.preheader.us.us.us
  %i.bf = load i32, ptr %15, align 4, !tbaa !35
  %i.bg = mul i64 %i.aa, %i.av
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bg
  %i.bi = sext i32 %i.bf to i64
  %wide.trip.count165 = zext nneg i32 %i.bd to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph.us.us.us
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %bb.h ], [ 0, %.lr.ph.us.us.us ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.17:bb.a

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge141.split, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !72

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index200 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next201, %vec.epilog.vector.body ] ; 2 uses
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %.071143, i64 %index200
  store <8 x i16> splat (i16 32704), ptr %i.cl, align 2, !tbaa !71
  %index.next201 = add nuw i64 %index200, 8       ; 2 uses
  %i.cm = icmp eq i64 %index.next201, %n.vec199
  br i1 %i.cm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !345

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n202, label %._crit_edge141.split, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec199, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge141.split:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %.071143, i64 %i.ae
  %i.co = add nuw nsw i32 %.070145, 1             ; 2 uses
  %exitcond157.not = icmp eq i32 %i.co, %i.y
  br i1 %exitcond157.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split147, label %iter.check, !llvm.loop !343

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %.071143, i64 %indvars.iv
  store i16 32704, ptr %i.cp, align 2, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge141.split, label %vec.epilog.scalar.ph, !llvm.loop !346

._crit_edge.split:                                ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split147, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split147.us.us, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.18(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

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
  %.not82 = icmp sgt i32 %i.k, %i.j
  br i1 %.not82, label %._crit_edge84, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i32, ptr %6, align 4, !tbaa !35     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.noexc.preheader, label %._crit_edge84

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.q, %.noexc.preheader ], [ %i.aw, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = phi i32 [ %i.q, %.noexc.preheader ], [ %i.ax, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv93 = phi i64 [ %i.s, %.noexc.preheader ], [ %indvars.iv.next94, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !40, !noalias !357
  %i.x = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !357
  %i.y = mul i64 %i.x, %indvars.iv93
  %i.z = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !357 ; 2 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  %i.ac = load i32, ptr %5, align 4, !tbaa !35
  %i.ad = sitofp fast i32 %i.ac to float
  %i.ae = fdiv fast float 1.000000e+00, %i.ad
  %i.af = insertelement <8 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <8 x float> %i.af, <8 x float> poison, <8 x i32> zeroinitializer
  %i.ah = icmp sgt i32 %i.v, 0
  br i1 %i.ah, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %.noexc
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !357
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul i64 %i.z, %i.aj
  %i.al = load i32, ptr %7, align 4, !tbaa !35    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.an = load ptr, ptr %4, align 8, !tbaa !40, !noalias !358
  %i.ao = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !358
  %i.ap = mul i64 %i.ao, %indvars.iv93
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !358
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge78
  %i.at = phi i32 [ %i.ay, %._crit_edge78 ], [ %i.u, %.preheader.preheader ]
  %i.au = phi i32 [ %i.az, %._crit_edge78 ], [ %i.al, %.preheader.preheader ] ; 2 uses
  %.04181 = phi i32 [ %i.bd, %._crit_edge78 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04280 = phi ptr [ %i.bc, %._crit_edge78 ], [ %i.as, %.preheader.preheader ] ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph77, label %._crit_edge78

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge78, %.preheader.lr.ph, %.noexc
  %i.aw = phi i32 [ %i.u, %.noexc ], [ %i.u, %.preheader.lr.ph ], [ %i.ay, %._crit_edge78 ]
  %i.ax = phi i32 [ %i.v, %.noexc ], [ %i.v, %.preheader.lr.ph ], [ %i.ay, %._crit_edge78 ]
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next94 to i32
  %exitcond96.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond96.not, label %._crit_edge84, label %.noexc, !llvm.loop !353

._crit_edge78.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %6, align 4, !tbaa !35
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %.preheader
  %i.ay = phi i32 [ %i.at, %.preheader ], [ %.pre, %._crit_edge78.loopexit ] ; 4 uses
  %i.az = phi i32 [ %i.au, %.preheader ], [ %i.de, %._crit_edge78.loopexit ] ; 2 uses
  %i.ba = shl nsw i32 %i.az, 3
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %.04280, i64 %i.bb
  %i.bd = add nuw nsw i32 %.04181, 1              ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.ay
  br i1 %i.be, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !354

.lr.ph77:                                         ; preds = %.preheader, %._crit_edge
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge ], [ 0, %.preheader ] ; 3 uses
  %i.bf = load i32, ptr %8, align 4, !tbaa !35
  %i.bg = mul nsw i32 %i.bf, %.04181
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul i64 %i.ak, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bi
  %i.bk = load i32, ptr %9, align 4, !tbaa !35
  %i.bl = trunc nuw nsw i64 %indvars.iv90 to i32
  %i.bm = shl i32 %i.bl, 3
  %i.bn = mul i32 %i.bm, %i.bk
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %i.bo ; 3 uses
  %i.bq = load i32, ptr %5, align 4, !tbaa !35    ; 4 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph77
  %i.bs = load ptr, ptr %10, align 8, !tbaa !47   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bq to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bt = icmp eq i32 %i.bq, 1
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.03974 = phi <8 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.cm, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !35
  %i.bw = shl nsw i32 %i.bv, 3
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load <8 x i16>, ptr %i.by, align 1, !tbaa !63 ; 2 uses
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.bz, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %12 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.bz, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ca = shufflevector <8 x i16> %11, <8 x i16> %12, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cb = bitcast <16 x i16> %i.ca to <8 x float>
  %i.cc = fadd fast <8 x float> %.03974, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !35
  %i.cg = shl nsw i32 %i.cf, 3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.ch
  %i.cj = load <8 x i16>, ptr %i.ci, align 1, !tbaa !63 ; 2 uses
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cj, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %14 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cj, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ck = shufflevector <8 x i16> %13, <8 x i16> %14, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cl = bitcast <16 x i16> %i.ck to <8 x float>
  %i.cm = fadd fast <8 x float> %i.cc, %i.cl      ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !355

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.03974.epil.init = phi <8 x float> [ zeroinitializer, %.lr.ph ], [ %i.cm, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod114 = trunc i32 %i.bq to i1
  call void @llvm.assume(i1 %lcmp.mod114)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.epil.init
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !35
  %i.cp = shl nsw i32 %i.co, 3
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.cq
  %i.cs = load <8 x i16>, ptr %i.cr, align 1, !tbaa !63 ; 2 uses
  %15 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cs, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %16 = shufflevector <8 x i16> <i16 poison, i16 poison, i16 poison, i16 poison, i16 0, i16 0, i16 0, i16 0>, <8 x i16> %i.cs, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  %i.ct = shufflevector <8 x i16> %15, <8 x i16> %16, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cu = bitcast <16 x i16> %i.ct to <8 x float>
  %i.cv = fadd fast <8 x float> %.03974.epil.init, %i.cu
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi <8 x float> [ %i.cm, %._crit_edge.loopexit.unr-lcssa ], [ %i.cv, %.epil.preheader ]
  %i.cw = fmul fast <8 x float> %.lcssa, %i.ag
  %i.cx = bitcast <8 x float> %i.cw to <8 x i32>
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph77
  %.039.lcssa = phi <8 x i32> [ zeroinitializer, %.lr.ph77 ], [ %i.cx, %._crit_edge.loopexit ] ; 2 uses
  %i.cy = shufflevector <8 x i32> %.039.lcssa, <8 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cz = shufflevector <8 x i32> %.039.lcssa, <8 x i32> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.da = lshr <4 x i32> %i.cy, splat (i32 16)
  %i.db = lshr <4 x i32> %i.cz, splat (i32 16)
  %i.dc = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %i.da, <4 x i32> %i.db)
  %.idx = shl nuw nsw i64 %indvars.iv90, 4
  %i.dd = getelementptr inbounds nuw i8, ptr %.04280, i64 %.idx
  store <8 x i16> %i.dc, ptr %i.dd, align 1, !tbaa !63
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.de = load i32, ptr %7, align 4, !tbaa !35    ; 2 uses
  %i.df = sext i32 %i.de to i64
  %i.dg = icmp slt i64 %indvars.iv.next91, %i.df
  br i1 %i.dg, label %.lr.ph77, label %._crit_edge78.loopexit, !llvm.loop !356

._crit_edge84:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge84, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.19(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #11 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

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
  %.not82 = icmp sgt i32 %i.k, %i.j
  br i1 %.not82, label %._crit_edge84, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = load i32, ptr %6, align 4, !tbaa !35     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.noexc.preheader, label %._crit_edge84

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.s = sext i32 %i.k to i64
  %i.t = add nsw i32 %i.j, 1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.q, %.noexc.preheader ], [ %i.aw, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.v = phi i32 [ %i.q, %.noexc.preheader ], [ %i.ax, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv93 = phi i64 [ %i.s, %.noexc.preheader ], [ %indvars.iv.next94, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !40, !noalias !367
  %i.x = load i64, ptr %i.m, align 8, !tbaa !41, !noalias !367
  %i.y = mul i64 %i.x, %indvars.iv93
  %i.z = load i64, ptr %i.n, align 8, !tbaa !33, !noalias !367 ; 2 uses
  %i.aa = mul i64 %i.y, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.aa
  %i.ac = load i32, ptr %5, align 4, !tbaa !35
  %i.ad = sitofp fast i32 %i.ac to float
  %i.ae = fdiv fast float 1.000000e+00, %i.ad
  %i.af = insertelement <4 x float> poison, float %i.ae, i64 0
  %i.ag = shufflevector <4 x float> %i.af, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ah = icmp sgt i32 %i.v, 0
  br i1 %i.ah, label %.preheader.lr.ph, label %_ZN4ncnn3MatD2Ev.exit

.preheader.lr.ph:                                 ; preds = %.noexc
  %i.ai = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !367
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul i64 %i.z, %i.aj
  %i.al = load i32, ptr %7, align 4, !tbaa !35    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.preheader.preheader, label %_ZN4ncnn3MatD2Ev.exit

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.an = load ptr, ptr %4, align 8, !tbaa !40, !noalias !368
  %i.ao = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !368
  %i.ap = mul i64 %i.ao, %indvars.iv93
  %i.aq = load i64, ptr %i.p, align 8, !tbaa !33, !noalias !368
  %i.ar = mul i64 %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ar
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge78
  %i.at = phi i32 [ %i.ay, %._crit_edge78 ], [ %i.u, %.preheader.preheader ]
  %i.au = phi i32 [ %i.az, %._crit_edge78 ], [ %i.al, %.preheader.preheader ] ; 2 uses
  %.04181 = phi i32 [ %i.bd, %._crit_edge78 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.04280 = phi ptr [ %i.bc, %._crit_edge78 ], [ %i.as, %.preheader.preheader ] ; 2 uses
  %i.av = icmp sgt i32 %i.au, 0
  br i1 %i.av, label %.lr.ph77, label %._crit_edge78

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %._crit_edge78, %.preheader.lr.ph, %.noexc
  %i.aw = phi i32 [ %i.u, %.noexc ], [ %i.u, %.preheader.lr.ph ], [ %i.ay, %._crit_edge78 ]
  %i.ax = phi i32 [ %i.v, %.noexc ], [ %i.v, %.preheader.lr.ph ], [ %i.ay, %._crit_edge78 ]
  %indvars.iv.next94 = add nsw i64 %indvars.iv93, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next94 to i32
  %exitcond96.not = icmp eq i32 %i.t, %lftr.wideiv
  br i1 %exitcond96.not, label %._crit_edge84, label %.noexc, !llvm.loop !363

._crit_edge78.loopexit:                           ; preds = %._crit_edge
  %.pre = load i32, ptr %6, align 4, !tbaa !35
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %.preheader
  %i.ay = phi i32 [ %i.at, %.preheader ], [ %.pre, %._crit_edge78.loopexit ] ; 4 uses
  %i.az = phi i32 [ %i.au, %.preheader ], [ %i.dg, %._crit_edge78.loopexit ] ; 2 uses
  %i.ba = shl nsw i32 %i.az, 2
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %.04280, i64 %i.bb
  %i.bd = add nuw nsw i32 %.04181, 1              ; 2 uses
  %i.be = icmp slt i32 %i.bd, %i.ay
  br i1 %i.be, label %.preheader, label %_ZN4ncnn3MatD2Ev.exit, !llvm.loop !364

.lr.ph77:                                         ; preds = %.preheader, %._crit_edge
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge ], [ 0, %.preheader ] ; 3 uses
  %i.bf = load i32, ptr %8, align 4, !tbaa !35
  %i.bg = mul nsw i32 %i.bf, %.04181
  %i.bh = sext i32 %i.bg to i64
  %i.bi = mul i64 %i.ak, %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.bi
  %i.bk = load i32, ptr %9, align 4, !tbaa !35
  %i.bl = trunc nuw nsw i64 %indvars.iv90 to i32
  %i.bm = shl i32 %i.bl, 2
  %i.bn = mul i32 %i.bm, %i.bk
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.bj, i64 %i.bo ; 3 uses
  %i.bq = load i32, ptr %5, align 4, !tbaa !35    ; 4 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph77
  %i.bs = load ptr, ptr %10, align 8, !tbaa !47   ; 3 uses
  %wide.trip.count = zext nneg i32 %i.bq to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.bt = icmp eq i32 %i.bq, 1
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.c ] ; 3 uses
  %.03974 = phi <4 x float> [ zeroinitializer, %.lr.ph.new ], [ %i.co, %bb.c ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.c ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !35
  %i.bw = shl nsw i32 %i.bv, 2
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.bx
  %i.bz = load i64, ptr %i.by, align 1, !tbaa !63
  %i.ca = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <8 x i16>
  %11 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cb, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cc = bitcast <8 x i16> %11 to <4 x float>
  %i.cd = fadd fast <4 x float> %.03974, %i.cc
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !35
  %i.ch = shl nsw i32 %i.cg, 2
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 1, !tbaa !63
  %i.cl = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %i.cm = bitcast <2 x i64> %i.cl to <8 x i16>
  %12 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cn = bitcast <8 x i16> %12 to <4 x float>
  %i.co = fadd fast <4 x float> %i.cd, %i.cn      ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !365

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ]
  %.03974.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph ], [ %i.co, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod114 = trunc i32 %i.bq to i1
  call void @llvm.assume(i1 %lcmp.mod114)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %indvars.iv.epil.init
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !35
  %i.cr = shl nsw i32 %i.cq, 2
  %i.cs = sext i32 %i.cr to i64
  %i.ct = getelementptr inbounds [2 x i8], ptr %i.bp, i64 %i.cs
  %i.cu = load i64, ptr %i.ct, align 1, !tbaa !63
  %i.cv = insertelement <2 x i64> poison, i64 %i.cu, i64 0
  %i.cw = bitcast <2 x i64> %i.cv to <8 x i16>
  %13 = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.cw, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.cx = bitcast <8 x i16> %13 to <4 x float>
  %i.cy = fadd fast <4 x float> %.03974.epil.init, %i.cx
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %._crit_edge.loopexit.unr-lcssa, %.epil.preheader
  %.lcssa = phi <4 x float> [ %i.co, %._crit_edge.loopexit.unr-lcssa ], [ %i.cy, %.epil.preheader ]
  %i.cz = fmul fast <4 x float> %.lcssa, %i.ag
  %i.da = bitcast <4 x float> %i.cz to <4 x i32>
  %i.db = lshr <4 x i32> %i.da, splat (i32 16)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph77
  %.039.lcssa = phi <4 x i32> [ zeroinitializer, %.lr.ph77 ], [ %i.db, %._crit_edge.loopexit ]
  %i.dc = call <8 x i16> @llvm.x86.sse41.packusdw(<4 x i32> %.039.lcssa, <4 x i32> poison)
  %i.dd = bitcast <8 x i16> %i.dc to <2 x i64>
  %.idx = shl nuw nsw i64 %indvars.iv90, 3
  %i.de = getelementptr inbounds nuw i8, ptr %.04280, i64 %.idx
  %i.df = extractelement <2 x i64> %i.dd, i64 0
  store i64 %i.df, ptr %i.de, align 1, !tbaa !63
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %i.dg = load i32, ptr %7, align 4, !tbaa !35    ; 2 uses
  %i.dh = sext i32 %i.dg to i64
  %i.di = icmp slt i64 %indvars.iv.next91, %i.dh
  br i1 %i.di, label %.lr.ph77, label %._crit_edge78.loopexit, !llvm.loop !366

._crit_edge84:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge84, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21pooling_avg_bf16s_sseERKNS_3MatES2_RS0_iiiiiiiiiiRKNS_6OptionE.omp_outlined.20(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #17 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !35     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

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
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 6 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !35
  %i.k = load i32, ptr %i.a, align 4, !tbaa !35   ; 5 uses
  %.not84 = icmp sgt i32 %i.k, %i.j
  br i1 %.not84, label %._crit_edge.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !34, !noalias !378
  %i.n = load ptr, ptr %3, align 8, !tbaa !40, !noalias !378
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !41, !noalias !378
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !33, !noalias !378 ; 2 uses
  %factor.op.mul = mul i64 %i.p, %i.r
  %i.s = sext i32 %i.m to i64
  %i.t = load ptr, ptr %4, align 8, !tbaa !40, !noalias !379 ; 10 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.v = load i64, ptr %i.u, align 8, !tbaa !41, !noalias !379
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !33, !noalias !379
  %factor.op.mul86 = mul i64 %i.v, %i.x           ; 10 uses
  %i.y = load i32, ptr %5, align 4, !tbaa !35     ; 3 uses
  %i.z = icmp sgt i32 %i.y, 0
  %i.aa = mul i64 %i.r, %i.s
  br i1 %i.z, label %.noexc.lr.ph.split, label %._crit_edge.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.ab = load i32, ptr %6, align 4, !tbaa !35    ; 4 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %i.ad = sext i32 %i.ab to i64
  br i1 %i.ac, label %.noexc.lr.ph.split.split, label %._crit_edge.split

.noexc.lr.ph.split.split:                         ; preds = %.noexc.lr.ph.split
  %i.ae = load i32, ptr %9, align 4, !tbaa !35    ; 4 uses
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.noexc.lr.ph.split.split.split.us, label %.noexc.preheader

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split.split
  %i.ag = zext nneg i32 %i.ab to i64
  %i.ah = zext nneg i32 %i.y to i64
  %i.ai = mul nuw nsw i64 %i.ag, %i.ah
  %i.aj = shl nuw nsw i64 %i.ai, 1                ; 9 uses
  %i.ak = sext i32 %i.k to i64                    ; 2 uses
  %i.al = add nsw i32 %i.j, 1
  %i.am = add i32 %i.j, 1
  %i.an = sub i32 %i.am, %i.k
  %i.ao = sub i32 %i.j, %i.k
  %xtraiter = and i32 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.noexc.prol.loopexit, label %.noexc.prol

.noexc.prol:                                      ; preds = %.noexc.preheader, %.noexc.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.noexc.prol ], [ %i.ak, %.noexc.preheader ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.noexc.prol ], [ 0, %.noexc.preheader ]
  %.reass87.prol = mul i64 %factor.op.mul86, %indvars.iv.prol
  %i.ap = getelementptr i8, ptr %i.t, i64 %.reass87.prol
  call void @llvm.memset.p0.i64(ptr align 2 %i.ap, i8 0, i64 %i.aj, i1 false), !tbaa !71
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.noexc.prol.loopexit, label %.noexc.prol, !llvm.loop !373

.noexc.prol.loopexit:                             ; preds = %.noexc.prol, %.noexc.preheader
  %indvars.iv.unr = phi i64 [ %i.ak, %.noexc.preheader ], [ %indvars.iv.next.prol, %.noexc.prol ]
  %i.aq = icmp ult i32 %i.ao, 7
  br i1 %i.aq, label %._crit_edge.split, label %.noexc

.noexc.lr.ph.split.split.split.us:                ; preds = %.noexc.lr.ph.split.split
  %i.ar = sitofp fast i32 %i.ae to float
  %i.as = load i32, ptr %8, align 4, !tbaa !35
  %i.at = load i32, ptr %7, align 4, !tbaa !35
  %i.au = load ptr, ptr %10, align 8, !tbaa !47   ; 5 uses
  %i.av = sext i32 %i.as to i64
  %i.aw = sext i32 %i.at to i64
  %i.ax = sext i32 %i.k to i64
  %i.ay = add nsw i32 %i.j, 1
  %wide.trip.count106 = zext nneg i32 %i.y to i64
  %factor.op.mul119 = mul i64 %i.aa, %i.aw
  %wide.trip.count101 = zext nneg i32 %i.ab to i64
  %wide.trip.count = zext nneg i32 %i.ae to i64   ; 2 uses
  %xtraiter122 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.az = icmp ult i32 %i.ae, 4
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  %lcmp.mod123.not = icmp eq i64 %xtraiter122, 0
  %lcmp.mod125 = icmp ne i64 %xtraiter122, 0
  %i.ba = fdiv fast float 1.000000e+00, %i.ar
  br label %.noexc.us

.noexc.us:                                        ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us, %.noexc.lr.ph.split.split.split.us
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split83.us.us ], [ %i.ax, %.noexc.lr.ph.split.split.split.us ] ; 3 uses
  %.reass.us = mul i64 %factor.op.mul, %indvars.iv108
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 %.reass.us
  %.reass87.us = mul i64 %factor.op.mul86, %indvars.iv108
  %i.bc = getelementptr inbounds nuw i8, ptr %i.t, i64 %.reass87.us
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge77.split.us.us.us, %.noexc.us
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %._crit_edge77.split.us.us.us ], [ 0, %.noexc.us ] ; 2 uses
  %.04079.us.us = phi ptr [ %i.dh, %._crit_edge77.split.us.us.us ], [ %i.bc, %.noexc.us ] ; 2 uses
  %.reass = mul i64 %indvars.iv103, %factor.op.mul119
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.reass
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.preheader.us.us
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %._crit_edge.us.us.us ], [ 0, %.preheader.us.us ] ; 3 uses
  %i.be = mul nsw i64 %indvars.iv98, %i.av
  %i.bf = getelementptr inbounds [2 x i8], ptr %i.bd, i64 %i.be ; 5 uses
  br i1 %i.az, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %indvars.iv94 = phi i64 [ %indvars.iv.next95.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ] ; 5 uses
  %.03772.us.us.us = phi float [ %i.cs, %.lr.ph.us.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv94
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !35
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !71
  %i.bl = zext i16 %i.bk to i32
  %i.bm = shl nuw i32 %i.bl, 16
  %i.bn = bitcast i32 %i.bm to float
  %i.bo = fadd fast float %.03772.us.us.us, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv94
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !35
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.bs
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !71
  %i.bv = zext i16 %i.bu to i32
  %i.bw = shl nuw i32 %i.bv, 16
  %i.bx = bitcast i32 %i.bw to float
  %i.by = fadd fast float %i.bo, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %indvars.iv94
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !35
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %i.bf, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !71
end_hunk_3
