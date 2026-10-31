Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/cast_x86_avx512?download=true
inline.NumInlined: 4
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK4ncnn15Cast_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE:bb.a
bb.ac:                                            ; preds = %bb.ab
  %i.dg = load i32, ptr %i.ax, align 4, !tbaa !54
  %i.dh = load i32, ptr %i.az, align 8, !tbaa !55
  %i.di = load i32, ptr %i.bb, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.dj = load i32, ptr %i.bd, align 8, !tbaa !53
  store i32 %i.dj, ptr %i.e, align 4, !tbaa !33
  %i.dk = load i32, ptr %i.bj, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  %i.dl = mul nsw i32 %i.dh, %i.dg
  %i.dm = mul nsw i32 %i.dl, %i.di
  %i.dn = mul nsw i32 %i.dm, %i.dk
  store i32 %i.dn, ptr %i.f, align 4, !tbaa !33
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !60
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.dp)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN4ncnnL21cast_fp16_to_fp32_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined, ptr nonnull %i.e, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  %.pr75.pre = load i32, ptr %i.l, align 8, !tbaa !47
  br label %.thread

.thread:                                          ; preds = %bb.ac, %bb.aa
  %.pr75 = phi i32 [ %.pr75.pre, %bb.ac ], [ %i.dc, %bb.aa ] ; 2 uses
  %i.dq = icmp eq i32 %.pr75, 3
  br i1 %i.dq, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %.thread
  %i.dr = load i32, ptr %i.n, align 4, !tbaa !48
  %i.ds = icmp eq i32 %i.dr, 1
  br i1 %i.ds, label %bb.ae, label %_ZN4ncnnL21cast_bf16_to_fp32_sseERKNS_3MatERS0_RKNS_6OptionE.exit

bb.ae:                                            ; preds = %bb.ad
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !60
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.du)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZNK4ncnn15Cast_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined, ptr nonnull %i.i, ptr nonnull %1, ptr nonnull %2, ptr nonnull %i.j)
  %.pr73 = load i32, ptr %i.l, align 8, !tbaa !47
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.thread
  %i.dv = phi i32 [ %.pr73, %bb.ae ], [ %.pr75, %.thread ]
  %i.dw = icmp eq i32 %i.dv, 1
  br i1 %i.dw, label %thread-pre-split, label %_ZN4ncnnL21cast_fp32_to_bf16_sseERKNS_3MatERS0_RKNS_6OptionE.exit

thread-pre-split:                                 ; preds = %bb.af
  %.pr77 = load i32, ptr %i.n, align 4, !tbaa !48
  br label %.thread76

.thread76:                                        ; preds = %bb.y, %thread-pre-split
  %i.dx = phi i32 [ %.pr77, %thread-pre-split ], [ %i.cq, %bb.y ]
  %i.dy = icmp eq i32 %i.dx, 4
  br i1 %i.dy, label %bb.ag, label %_ZN4ncnnL21cast_fp32_to_bf16_sseERKNS_3MatERS0_RKNS_6OptionE.exit

bb.ag:                                            ; preds = %.thread76
  %i.dz = call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not.i71 = icmp eq i32 %i.dz, 0
  br i1 %.not.i71, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @_ZN4ncnn32cast_fp32_to_bf16_sse_avx512bf16ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnnL21cast_fp32_to_bf16_sseERKNS_3MatERS0_RKNS_6OptionE.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ea = load i32, ptr %i.ax, align 4, !tbaa !54
  %i.eb = load i32, ptr %i.az, align 8, !tbaa !55
  %i.ec = load i32, ptr %i.bb, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  %i.ed = load i32, ptr %i.bd, align 8, !tbaa !53
  store i32 %i.ed, ptr %i.c, align 4, !tbaa !33
  %i.ee = load i32, ptr %i.bj, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  %i.ef = mul nsw i32 %i.eb, %i.ea
  %i.eg = mul nsw i32 %i.ef, %i.ec
  %i.eh = mul nsw i32 %i.eg, %i.ee
  store i32 %i.eh, ptr %i.d, align 4, !tbaa !33
  %i.ei = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !60
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.ej)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN4ncnnL21cast_fp32_to_bf16_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined, ptr nonnull %i.c, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  br label %_ZN4ncnnL21cast_fp32_to_bf16_sseERKNS_3MatERS0_RKNS_6OptionE.exit

_ZN4ncnnL21cast_fp32_to_bf16_sseERKNS_3MatERS0_RKNS_6OptionE.exit: ; preds = %bb.ab, %bb.ai, %bb.ah, %.thread76, %bb.af
  %.pr78 = load i32, ptr %i.l, align 8, !tbaa !47
  %i.ek = icmp eq i32 %.pr78, 4
  br i1 %i.ek, label %bb.aj, label %_ZN4ncnnL21cast_bf16_to_fp32_sseERKNS_3MatERS0_RKNS_6OptionE.exit

bb.aj:                                            ; preds = %_ZN4ncnnL21cast_fp32_to_bf16_sseERKNS_3MatERS0_RKNS_6OptionE.exit
  %i.el = load i32, ptr %i.n, align 4, !tbaa !48
  %i.em = icmp eq i32 %i.el, 1
  br i1 %i.em, label %bb.ak, label %_ZN4ncnnL21cast_bf16_to_fp32_sseERKNS_3MatERS0_RKNS_6OptionE.exit

bb.ak:                                            ; preds = %bb.aj
  %i.en = call noundef i32 @_ZN4ncnn27cpu_support_x86_avx512_bf16Ev()
  %.not.i72 = icmp eq i32 %i.en, 0
  br i1 %.not.i72, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZN4ncnn32cast_bf16_to_fp32_sse_avx512bf16ERKNS_3MatERS0_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(64) %3)
  br label %_ZN4ncnnL21cast_bf16_to_fp32_sseERKNS_3MatERS0_RKNS_6OptionE.exit

bb.am:                                            ; preds = %bb.ak
  %i.eo = load i32, ptr %i.ax, align 4, !tbaa !54
  %i.ep = load i32, ptr %i.az, align 8, !tbaa !55
  %i.eq = load i32, ptr %i.bb, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.er = load i32, ptr %i.bd, align 8, !tbaa !53
  store i32 %i.er, ptr %i.a, align 4, !tbaa !33
  %i.es = load i32, ptr %i.bj, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.et = mul nsw i32 %i.ep, %i.eo
  %i.eu = mul nsw i32 %i.et, %i.eq
  %i.ev = mul nsw i32 %i.eu, %i.es
  store i32 %i.ev, ptr %i.b, align 4, !tbaa !33
  %i.ew = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !60
  call void @__kmpc_push_num_threads(ptr nonnull @2, i32 %i.k, i32 %i.ex)
  call void (ptr, i32, ptr, ...) @__kmpc_fork_call(ptr nonnull @2, i32 4, ptr nonnull @_ZN4ncnnL21cast_bf16_to_fp32_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined, ptr nonnull %i.a, ptr nonnull align 8 dereferenceable(72) %1, ptr nonnull align 8 dereferenceable(72) %2, ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %_ZN4ncnnL21cast_bf16_to_fp32_sseERKNS_3MatERS0_RKNS_6OptionE.exit

_ZN4ncnnL21cast_bf16_to_fp32_sseERKNS_3MatERS0_RKNS_6OptionE.exit: ; preds = %bb.ad, %bb.am, %bb.al, %bb.aj, %_ZN4ncnnL21cast_fp32_to_bf16_sseERKNS_3MatERS0_RKNS_6OptionE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #6
  br label %_ZNK4ncnn3Mat5emptyEv.exit.thread

_ZNK4ncnn3Mat5emptyEv.exit.thread:                ; preds = %bb.w, %_ZNK4ncnn3Mat5emptyEv.exit, %_ZN4ncnnL21cast_bf16_to_fp32_sseERKNS_3MatERS0_RKNS_6OptionE.exit
  %.066 = phi i32 [ 0, %_ZN4ncnnL21cast_bf16_to_fp32_sseERKNS_3MatERS0_RKNS_6OptionE.exit ], [ -100, %_ZNK4ncnn3Mat5emptyEv.exit ], [ -100, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #6
  br label %_ZN4ncnn3MataSERKS0_.exit

_ZN4ncnn3MataSERKS0_.exit:                        ; preds = %_ZN4ncnn3Mat7releaseEv.exit, %bb.b, %_ZNK4ncnn3Mat5emptyEv.exit.thread
  %.1 = phi i32 [ %.066, %_ZNK4ncnn3Mat5emptyEv.exit.thread ], [ 0, %bb.b ], [ 0, %_ZN4ncnn3Mat7releaseEv.exit ]
  ret i32 %.1
}

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERSt6vectorINS_3MatESaIS2_EERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare noundef i32 @_ZNK4ncnn5Layer15forward_inplaceERNS_3MatERKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4ncnn15Cast_x86_avx512C2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #3 align 2 {
bb.a:
  tail call void @_ZN4ncnn4CastC2Ev(ptr noundef nonnull align 8 dereferenceable(216) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4ncnn15Cast_x86_avx512E, i64 16), ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.a, align 1, !tbaa !61
  ret void
}

declare void @_ZN4ncnn4CastC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare noundef i32 @_ZNK4ncnn4Cast7forwardERKNS_3MatERS1_RKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(216), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4ncnn3Mat6createEiiiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn15Cast_x86_avx5127forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 3 uses
  %.not56 = icmp sgt i32 %i.k, %i.j
  br i1 %.not56, label %._crit_edge58.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !28, !noalias !73 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !31, !noalias !73 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !32, !noalias !73 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !28, !noalias !74 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !31, !noalias !74 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !32, !noalias !74 ; 3 uses
  %factor.op.mul59 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !33     ; 4 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.preheader, label %._crit_edge58.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.x = sext i32 %i.k to i64                     ; 4 uses
  %i.y = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 10 uses
  %i.z = mul i64 %i.p, %i.n                       ; 2 uses
  %i.aa = mul i64 %i.u, %i.s
  %i.ab = sub i32 %i.j, %i.k
  %i.ac = zext i32 %i.ab to i64
  %i.ad = add nsw i64 %i.x, %i.ac                 ; 2 uses
  %i.ae = mul i64 %i.z, %i.ad
  %6 = getelementptr i8, ptr %i.l, i64 %i.ae
  %i.af = getelementptr i8, ptr %6, i64 %wide.trip.count
  %7 = mul i64 %i.p, %i.n
  %8 = mul i64 %7, %i.x
  %scevgep69 = getelementptr i8, ptr %i.l, i64 %8
  %i.ag = mul i64 %i.u, %i.s                      ; 2 uses
  %i.ah = mul i64 %i.ag, %i.ad
  %9 = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep70 = getelementptr i8, ptr %i.q, i64 %i.ah
  %scevgep74 = getelementptr i8, ptr %scevgep70, i64 %9
  %10 = mul i64 %i.ag, %i.x
  %scevgep71 = getelementptr i8, ptr %i.q, i64 %10
  %min.iters.check = icmp ult i32 %i.v, 8
  %bound0 = icmp ult ptr %scevgep71, %i.af
  %bound1 = icmp ult ptr %scevgep69, %scevgep74
  %found.conflict = and i1 %bound0, %bound1
  %i.ai = or i64 %i.z, %i.aa
  %i.aj = icmp slt i64 %i.ai, 0
  %i.ak = or i1 %found.conflict, %i.aj
  %min.iters.check73 = icmp ult i32 %i.v, 64
  %i.al = and i64 %wide.trip.count, 56
  %n.vec = and i64 %wide.trip.count, 2147483584   ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.al, 0
  %n.vec77 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %cmp.n81 = icmp eq i64 %n.vec77, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %iter.check

iter.check:                                       ; preds = %.noexc.preheader, %._crit_edge
  %indvars.iv62 = phi i64 [ %i.x, %.noexc.preheader ], [ %indvars.iv.next63, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv62
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 7 uses
  %.reass60 = mul i64 %factor.op.mul59, %indvars.iv62
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass60 ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ak
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check73, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  %wide.load = load <16 x i8>, ptr %i.ao, align 1, !tbaa !34, !alias.scope !75
  %wide.load74 = load <16 x i8>, ptr %i.ap, align 1, !tbaa !34, !alias.scope !75
  %wide.load75 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !34, !alias.scope !75
  %wide.load76 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !34, !alias.scope !75
  %i.as = sitofp fast <16 x i8> %wide.load to <16 x float>
  %i.at = sitofp fast <16 x i8> %wide.load74 to <16 x float>
  %i.au = sitofp fast <16 x i8> %wide.load75 to <16 x float>
  %i.av = sitofp fast <16 x i8> %wide.load76 to <16 x float>
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 128
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 192
  store <16 x float> %i.as, ptr %i.aw, align 4, !tbaa !36, !alias.scope !76, !noalias !75
  store <16 x float> %i.at, ptr %i.ax, align 4, !tbaa !36, !alias.scope !76, !noalias !75
  store <16 x float> %i.au, ptr %i.ay, align 4, !tbaa !36, !alias.scope !76, !noalias !75
  store <16 x float> %i.av, ptr %i.az, align 4, !tbaa !36, !alias.scope !76, !noalias !75
  %index.next = add nuw i64 %index, 64            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !40

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next80, %vec.epilog.vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.am, i64 %index78
  %wide.load79 = load <8 x i8>, ptr %i.bb, align 1, !tbaa !34, !alias.scope !75
  %i.bc = sitofp fast <8 x i8> %wide.load79 to <8 x float>
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index78
  store <8 x float> %i.bc, ptr %i.bd, align 4, !tbaa !36, !alias.scope !76, !noalias !75
  %index.next80 = add nuw i64 %index78, 8         ; 2 uses
  %i.be = icmp eq i64 %index.next80, %n.vec77
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !70

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n81, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec77, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.prol
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !34
  %i.bh = sitofp fast i8 %i.bg to float
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.prol
  store float %i.bh, ptr %i.bi, align 4, !tbaa !36
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !71

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bj = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bk = icmp ugt i64 %i.bj, -4
  br i1 %i.bk, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next63 to i32
  %exitcond65.not = icmp eq i32 %i.y, %lftr.wideiv
  br i1 %exitcond65.not, label %._crit_edge58.split, label %iter.check

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !34
  %i.bn = sitofp fast i8 %i.bm to float
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  store float %i.bn, ptr %i.bo, align 4, !tbaa !36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.next
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !34
  %i.br = sitofp fast i8 %i.bq to float
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next
  store float %i.br, ptr %i.bs, align 4, !tbaa !36
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.next.1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !34
  %i.bv = sitofp fast i8 %i.bu to float
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.1
  store float %i.bv, ptr %i.bw, align 4, !tbaa !36
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.next.2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !34
  %i.bz = sitofp fast i8 %i.by to float
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next.2
  store float %i.bz, ptr %i.ca, align 4, !tbaa !36
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !72

._crit_edge58.split:                              ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge58.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !42 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL21cast_fp32_to_fp16_sseERKNS_3MatERS0_RKNS_6OptionE.omp_outlined(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #10 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !33     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !33
end_hunk_0
