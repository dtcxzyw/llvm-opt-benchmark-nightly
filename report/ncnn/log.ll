Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/log?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK4ncnn3Log15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !60 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load i32, ptr %4, align 4, !tbaa !33     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 4 uses
  %i.t = getelementptr i8, ptr %5, i64 212        ; 5 uses
  br i1 %i.r, label %.noexc.preheader, label %._crit_edge32.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.u = sext i32 %i.k to i64                     ; 3 uses
  %i.v = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 6 uses
  %i.w = mul i64 %i.p, %i.n                       ; 2 uses
  %scevgep = getelementptr i8, ptr %5, i64 220
  %i.x = sub i32 %i.j, %i.k
  %i.y = zext i32 %i.x to i64
  %i.z = add nsw i64 %i.u, %i.y
  %i.aa = mul i64 %i.w, %i.z
  %i.ab = shl nuw nsw i64 %wide.trip.count, 2
  %i.ac = getelementptr i8, ptr %i.l, i64 %i.aa
  %scevgep43 = getelementptr i8, ptr %i.ac, i64 %i.ab
  %i.ad = mul i64 %i.p, %i.n
  %i.ae = mul i64 %i.ad, %i.u
  %scevgep44 = getelementptr i8, ptr %i.l, i64 %i.ae
  %min.iters.check = icmp ult i32 %i.q, 4
  %bound0 = icmp ult ptr %scevgep44, %scevgep
  %bound1 = icmp ult ptr %i.t, %scevgep43
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.w, 0
  %i.af = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ag = add nsw i64 %wide.trip.count, -1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %indvars.iv34 = phi i64 [ %i.u, %.noexc.preheader ], [ %indvars.iv.next35, %._crit_edge ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv34
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.af
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc
  %i.ai = load float, ptr %i.s, align 8, !tbaa !30, !alias.scope !61
  %broadcast.splatinsert45 = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat46 = shufflevector <4 x float> %broadcast.splatinsert45, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = load float, ptr %i.t, align 4, !tbaa !29, !alias.scope !61
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ak, align 4, !tbaa !34, !alias.scope !62, !noalias !61
  %i.al = fmul fast <4 x float> %broadcast.splat, %wide.load
  %i.am = fadd fast <4 x float> %i.al, %broadcast.splat46
  %i.an = call fast <4 x float> @llvm.log.v4f32(<4 x float> %i.am)
  store <4 x float> %i.an, ptr %i.ak, align 4, !tbaa !34, !alias.scope !62, !noalias !61
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !58

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ap = load float, ptr %i.s, align 8, !tbaa !30
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.ph ; 2 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !34
  %i.as = load float, ptr %i.t, align 4, !tbaa !29
  %i.at = fmul fast float %i.as, %i.ar
  %i.au = fadd fast float %i.at, %i.ap
  %i.av = call fast float @llvm.log.f32(float %i.au)
  store float %i.av, ptr %i.aq, align 4, !tbaa !34
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.aw = icmp eq i64 %indvars.iv.ph, %i.ag
  br i1 %i.aw, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next35 = add nsw i64 %indvars.iv34, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next35 to i32
  %exitcond37.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond37.not, label %._crit_edge32.split, label %.noexc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ax = load float, ptr %i.s, align 8, !tbaa !30
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.az = load float, ptr %i.ay, align 4, !tbaa !34
  %i.ba = load float, ptr %i.t, align 4, !tbaa !29
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fadd fast float %i.bb, %i.ax
  %i.bd = call fast float @llvm.log.f32(float %i.bc)
  store float %i.bd, ptr %i.ay, align 4, !tbaa !34
  %i.be = load float, ptr %i.s, align 8, !tbaa !30
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !34
  %i.bi = load float, ptr %i.t, align 4, !tbaa !29
  %i.bj = fmul fast float %i.bi, %i.bh
  %i.bk = fadd fast float %i.bj, %i.be
  %i.bl = call fast float @llvm.log.f32(float %i.bk)
  store float %i.bl, ptr %i.bg, align 4, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !59

._crit_edge32.split:                              ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge32.split, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #7

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.log.f32(float) #8

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #7

; Function Attrs: nounwind
declare !callback !42 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #7

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn3Log15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #6 personality ptr @__gxx_personality_v0 {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 0, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %i.g, ptr %i.b, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 1, ptr %i.c, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 0, ptr %i.d, align 4, !tbaa !33
  %i.h = load i32, ptr %0, align 4, !tbaa !33     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !33
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !33
  %i.k = load i32, ptr %i.a, align 4, !tbaa !33   ; 3 uses
  %.not31 = icmp sgt i32 %i.k, %i.j
  br i1 %.not31, label %._crit_edge33.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !35, !noalias !71 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !71 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !37, !noalias !71 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load i32, ptr %4, align 4, !tbaa !33     ; 3 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 216 ; 4 uses
  %i.t = getelementptr i8, ptr %5, i64 212        ; 5 uses
  br i1 %i.r, label %.noexc.preheader, label %._crit_edge33.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.u = sext i32 %i.k to i64                     ; 3 uses
  %i.v = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.q to i64    ; 6 uses
  %scevgep = getelementptr inbounds nuw i8, ptr %6, i64 4
  %7 = mul i64 %i.p, %i.n                         ; 2 uses
  %scevgep48 = getelementptr i8, ptr %5, i64 220
  %i.w = sub i32 %i.j, %i.k
  %i.x = zext i32 %i.w to i64
  %i.y = add nsw i64 %i.u, %i.x
  %i.z = mul i64 %7, %i.y
  %i.aa = shl nuw nsw i64 %wide.trip.count, 2
  %i.ab = getelementptr i8, ptr %i.l, i64 %i.z
  %scevgep49 = getelementptr i8, ptr %i.ab, i64 %i.aa ; 2 uses
  %i.ac = mul i64 %i.p, %i.n
  %i.ad = mul i64 %i.ac, %i.u
  %scevgep50 = getelementptr i8, ptr %i.l, i64 %i.ad ; 2 uses
  %min.iters.check = icmp ult i32 %i.q, 4
  %bound0 = icmp ult ptr %scevgep50, %scevgep48
  %bound1 = icmp ult ptr %i.t, %scevgep49
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %7, 0
  %i.ae = or i1 %found.conflict, %stride.check
  %bound051 = icmp ult ptr %scevgep50, %scevgep
  %bound152 = icmp ult ptr %6, %scevgep49
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx = or i1 %i.ae, %found.conflict53
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.af = add nsw i64 %wide.trip.count, -1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %indvars.iv35 = phi i64 [ %i.u, %.noexc.preheader ], [ %indvars.iv.next36, %._crit_edge ] ; 2 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc
  %i.ah = load float, ptr %i.s, align 8, !tbaa !30, !alias.scope !72
  %broadcast.splatinsert54 = insertelement <4 x float> poison, float %i.ah, i64 0
  %broadcast.splat55 = shufflevector <4 x float> %broadcast.splatinsert54, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = load float, ptr %i.t, align 4, !tbaa !29, !alias.scope !72
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ai, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aj = load float, ptr %6, align 4, !tbaa !34, !alias.scope !73
  %broadcast.splatinsert56 = insertelement <4 x float> poison, float %i.aj, i64 0
  %broadcast.splat57 = shufflevector <4 x float> %broadcast.splatinsert56, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.ak, align 4, !tbaa !34, !alias.scope !74, !noalias !75
  %i.al = fmul fast <4 x float> %broadcast.splat, %wide.load
  %i.am = fadd fast <4 x float> %i.al, %broadcast.splat55
  %i.an = call fast <4 x float> @llvm.log.v4f32(<4 x float> %i.am)
  %i.ao = fmul fast <4 x float> %i.an, %broadcast.splat57
  store <4 x float> %i.ao, ptr %i.ak, align 4, !tbaa !34, !alias.scope !74, !noalias !75
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc ] ; 4 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.aq = load float, ptr %i.s, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.ph ; 2 uses
  %i.as = load float, ptr %i.ar, align 4, !tbaa !34
  %i.at = load float, ptr %i.t, align 4, !tbaa !29
  %i.au = fmul fast float %i.at, %i.as
  %i.av = fadd fast float %i.au, %i.aq
  %i.aw = call fast float @llvm.log.f32(float %i.av)
  %i.ax = load float, ptr %6, align 4, !tbaa !34
  %i.ay = fmul fast float %i.aw, %i.ax
  store float %i.ay, ptr %i.ar, align 4, !tbaa !34
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.az = icmp eq i64 %indvars.iv.ph, %i.af
  br i1 %i.az, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next36 to i32
  %exitcond38.not = icmp eq i32 %i.v, %lftr.wideiv
  br i1 %exitcond38.not, label %._crit_edge33.split, label %.noexc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ba = load float, ptr %i.s, align 8, !tbaa !30
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv ; 2 uses
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !34
  %i.bd = load float, ptr %i.t, align 4, !tbaa !29
  %i.be = fmul fast float %i.bd, %i.bc
  %i.bf = fadd fast float %i.be, %i.ba
  %i.bg = call fast float @llvm.log.f32(float %i.bf)
  %i.bh = load float, ptr %6, align 4, !tbaa !34
  %i.bi = fmul fast float %i.bg, %i.bh
  store float %i.bi, ptr %i.bb, align 4, !tbaa !34
  %i.bj = load float, ptr %i.s, align 8, !tbaa !30
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 2 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !34
  %i.bn = load float, ptr %i.t, align 4, !tbaa !29
  %i.bo = fmul fast float %i.bn, %i.bm
  %i.bp = fadd fast float %i.bo, %i.bj
  %i.bq = call fast float @llvm.log.f32(float %i.bp)
  %i.br = load float, ptr %6, align 4, !tbaa !34
  %i.bs = fmul fast float %i.bq, %i.br
  store float %i.bs, ptr %i.bl, align 4, !tbaa !34
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !70

._crit_edge33.split:                              ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge33.split, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.log.v4f32(<4 x float>) #8

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"bool", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 omnipotent char", !10, i64 0}
!12 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0, !13, i64 8, !5, i64 16}
!15 = !{!"p1 int", !10, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !15, i64 0, !15, i64 8, !15, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !16, i64 0}
!18 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !17, i64 0}
!19 = !{!"_ZTSSt6vectorIiSaIiEE", !18, i64 0}
!20 = !{!"p1 _ZTSN4ncnn3MatE", !10, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !23, i64 0}
!25 = !{!"_ZTSN4ncnn5LayerE", !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !9, i64 19, !9, i64 20, !9, i64 21, !9, i64 22, !9, i64 23, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 27, !6, i64 28, !10, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !19, i64 112, !19, i64 136, !24, i64 160, !24, i64 184}
!26 = !{!"float", !5, i64 0}
!27 = !{!"_ZTSN4ncnn3LogE", !25, i64 0, !26, i64 208, !26, i64 212, !26, i64 216}
!28 = !{!27, !26, i64 208}
!29 = !{!27, !26, i64 212}
!30 = !{!27, !26, i64 216}
!31 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!32 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !15, i64 8, !13, i64 16, !6, i64 24, !31, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!33 = !{!6, !6, i64 0}
!34 = !{!26, !26, i64 0}
!35 = !{!32, !10, i64 0}
!36 = !{!32, !13, i64 64}
!37 = !{!32, !13, i64 16}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{i64 2, i64 -1, i64 -1, i1 true}
!42 = !{!41}
!43 = !{!32, !6, i64 44}
end_hunk_0
