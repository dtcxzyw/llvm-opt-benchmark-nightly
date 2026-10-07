Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/glu?download=true
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK4ncnn3GLU7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2:bb.a
  %i.ab = add nsw i32 %i.j, 1
  %i.ac = mul i64 %i.w, %i.u
  %i.ad = mul i64 %i.ac, %i.aa
  %scevgep = getelementptr i8, ptr %i.r, i64 %i.ad ; 2 uses
  %i.ae = sub i32 %i.j, %i.k
  %i.af = zext i32 %i.ae to i64
  %i.ag = add nsw i64 %i.aa, %i.af                ; 2 uses
  %i.ah = mul i64 %i.w, %i.ag
  %i.ai = mul i64 %i.ah, %i.u
  %i.aj = shl nuw nsw i64 %i.z, 2                 ; 3 uses
  %i.ak = getelementptr i8, ptr %i.r, i64 %i.ai
  %scevgep44 = getelementptr i8, ptr %i.ak, i64 %i.aj ; 2 uses
  %i.al = mul i64 %i.w, %i.u                      ; 2 uses
  %i.am = mul i64 %i.q, %i.o
  %i.an = mul i64 %i.am, %i.aa                    ; 2 uses
  %scevgep45 = getelementptr i8, ptr %i.l, i64 %i.an
  %i.ao = mul i64 %i.q, %i.ag
  %i.ap = mul i64 %i.ao, %i.o                     ; 2 uses
  %i.aq = getelementptr i8, ptr %i.l, i64 %i.ap
  %scevgep46 = getelementptr i8, ptr %i.aq, i64 %i.aj
  %i.ar = mul i64 %i.q, %i.o                      ; 2 uses
  %i.as = getelementptr i8, ptr %i.l, i64 %i.an
  %scevgep47 = getelementptr i8, ptr %i.as, i64 %i.aj
  %i.at = shl nuw nsw i64 %i.z, 3
  %i.au = getelementptr i8, ptr %i.l, i64 %i.ap
  %scevgep48 = getelementptr i8, ptr %i.au, i64 %i.at
  %min.iters.check = icmp ult i32 %i.x, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep46
  %bound1 = icmp ult ptr %scevgep45, %scevgep44
  %found.conflict = and i1 %bound0, %bound1
  %i.av = or i64 %i.ar, %i.al
  %i.aw = icmp slt i64 %i.av, 0
  %i.ax = or i1 %found.conflict, %i.aw
  %bound050 = icmp ult ptr %scevgep, %scevgep48
  %bound151 = icmp ult ptr %scevgep47, %scevgep44
  %found.conflict52 = and i1 %bound050, %bound151
  %i.ay = or i64 %i.ar, %i.al
  %i.az = icmp slt i64 %i.ay, 0
  %i.ba = or i1 %found.conflict52, %i.az
  %conflict.rdx = or i1 %i.ax, %i.ba
  %n.vec = and i64 %i.z, 2147483644               ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.z
  %xtraiter = and i64 %i.z, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bb = add nsw i64 %i.z, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv37 = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next38, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv37
  %i.bc = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 5 uses
  %.reass35 = mul i64 %factor.op.mul34, %indvars.iv37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass35 ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.z ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x float>, ptr %i.be, align 4, !tbaa !39, !alias.scope !66
  %i.bf = fneg fast <4 x float> %wide.load
  %i.bg = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bf)
  %i.bh = fadd fast <4 x float> %i.bg, splat (float 1.000000e+00)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %index
  %wide.load55 = load <4 x float>, ptr %i.bi, align 4, !tbaa !39, !alias.scope !67
  %i.bj = fdiv fast <4 x float> %wide.load55, %i.bh
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %index
  store <4 x float> %i.bj, ptr %i.bk, align 4, !tbaa !39, !alias.scope !68, !noalias !69
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.bm = load float, ptr %gep.prol, align 4, !tbaa !39
  %i.bn = fneg fast float %i.bm
  %i.bo = call fast float @llvm.exp.f32(float %i.bn)
  %i.bp = fadd fast float %i.bo, 1.000000e+00
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.ph
  %i.br = load float, ptr %i.bq, align 4, !tbaa !39
  %i.bs = fdiv fast float %i.br, %i.bp
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.ph
  store float %i.bs, ptr %i.bt, align 4, !tbaa !39
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bu = icmp eq i64 %indvars.iv.ph, %i.bb
  br i1 %i.bu, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next38 to i32
  %exitcond40.not = icmp eq i32 %i.ab, %lftr.wideiv
  br i1 %exitcond40.not, label %._crit_edge33.split, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bv = load float, ptr %gep, align 4, !tbaa !39
  %i.bw = fneg fast float %i.bv
  %i.bx = call fast float @llvm.exp.f32(float %i.bw)
  %i.by = fadd fast float %i.bx, 1.000000e+00
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !39
  %i.cb = fdiv fast float %i.ca, %i.by
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv
  store float %i.cb, ptr %i.cc, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.cd = load float, ptr %gep.1, align 4, !tbaa !39
  %i.ce = fneg fast float %i.cd
  %i.cf = call fast float @llvm.exp.f32(float %i.ce)
  %i.cg = fadd fast float %i.cf, 1.000000e+00
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !39
  %i.cj = fdiv fast float %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.next
  store float %i.cj, ptr %i.ck, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.z
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !65

._crit_edge33.split:                              ; preds = %._crit_edge, %.lr.ph32, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge33.split, %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZN4ncnn3Mat6createEiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn3GLU7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !31     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.h = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !31
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !31
  %i.k = load i32, ptr %i.a, align 4, !tbaa !31   ; 3 uses
  %.not60 = icmp sgt i32 %i.k, %i.j
  br i1 %.not60, label %._crit_edge62.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !32, !noalias !80 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44, !noalias !80 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !32, !noalias !81 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !81 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44, !noalias !81 ; 3 uses
  %factor.op.mul63 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !31     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.lr.ph.split, label %._crit_edge62.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.x = load i64, ptr %6, align 8, !tbaa !37     ; 2 uses
  %i.y = sext i32 %i.k to i64                     ; 4 uses
  %i.z = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %i.aa = mul i64 %i.u, %i.s                      ; 2 uses
  %i.ab = mul i64 %i.aa, %i.y
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ab ; 2 uses
  %i.ac = sub i32 %i.j, %i.k
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nsw i64 %i.y, %i.ad                 ; 2 uses
  %i.af = mul i64 %i.aa, %i.ae
  %i.ag = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.ah = getelementptr i8, ptr %i.q, i64 %i.af
  %scevgep73 = getelementptr i8, ptr %i.ah, i64 %i.ag ; 2 uses
  %i.ai = mul i64 %i.u, %i.s                      ; 2 uses
  %i.aj = mul i64 %i.p, %i.n                      ; 4 uses
  %i.ak = mul i64 %i.aj, %i.y                     ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.l, i64 %i.ak
  %i.al = mul i64 %i.aj, %i.ae                    ; 2 uses
  %i.am = getelementptr i8, ptr %i.l, i64 %i.al
  %scevgep75 = getelementptr i8, ptr %i.am, i64 %i.ag
  %i.an = shl i64 %i.x, 2                         ; 2 uses
  %i.ao = getelementptr i8, ptr %i.l, i64 %i.ak
  %scevgep76 = getelementptr i8, ptr %i.ao, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.l, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.an
  %scevgep77 = getelementptr i8, ptr %i.aq, i64 %i.ag
  %min.iters.check = icmp ult i32 %i.v, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep75
  %bound1 = icmp ult ptr %scevgep74, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  %i.ar = or i64 %i.aj, %i.ai
  %i.as = icmp slt i64 %i.ar, 0
  %i.at = or i1 %found.conflict, %i.as
  %bound079 = icmp ult ptr %scevgep, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep73
  %found.conflict81 = and i1 %bound079, %bound180
  %i.au = or i64 %i.aj, %i.ai
  %i.av = icmp slt i64 %i.au, 0
  %i.aw = or i1 %found.conflict81, %i.av
  %conflict.rdx = or i1 %i.at, %i.aw
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ax = add nsw i64 %wide.trip.count, -1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split, %._crit_edge
  %indvars.iv66 = phi i64 [ %i.y, %.noexc.lr.ph.split ], [ %indvars.iv.next67, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv66
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 5 uses
  %.reass64 = mul i64 %factor.op.mul63, %indvars.iv66
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass64 ; 4 uses
  %i.ba = getelementptr [4 x i8], ptr %i.ay, i64 %i.x ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc ] ; 4 uses
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %index
  %wide.load = load <4 x float>, ptr %i.bb, align 4, !tbaa !39, !alias.scope !82
  %i.bc = fneg fast <4 x float> %wide.load
  %i.bd = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bc)
  %i.be = fadd fast <4 x float> %i.bd, splat (float 1.000000e+00)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index
  %wide.load84 = load <4 x float>, ptr %i.bf, align 4, !tbaa !39, !alias.scope !83
  %i.bg = fdiv fast <4 x float> %wide.load84, %i.be
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  store <4 x float> %i.bg, ptr %i.bh, align 4, !tbaa !39, !alias.scope !84, !noalias !85
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bj = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv.ph
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !39
  %i.bl = fneg fast float %i.bk
  %i.bm = call fast float @llvm.exp.f32(float %i.bl)
  %i.bn = fadd fast float %i.bm, 1.000000e+00
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.ph
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !39
  %i.bq = fdiv fast float %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.ph
  store float %i.bq, ptr %i.br, align 4, !tbaa !39
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bs = icmp eq i64 %indvars.iv.ph, %i.ax
  br i1 %i.bs, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next67 to i32
  %exitcond69.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond69.not, label %._crit_edge62.split, label %.noexc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bt = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !39
  %i.bv = fneg fast float %i.bu
  %i.bw = call fast float @llvm.exp.f32(float %i.bv)
  %i.bx = fadd fast float %i.bw, 1.000000e+00
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.bz = load float, ptr %i.by, align 4, !tbaa !39
  %i.ca = fdiv fast float %i.bz, %i.bx
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  store float %i.ca, ptr %i.cb, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cc = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv.next
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !39
  %i.ce = fneg fast float %i.cd
  %i.cf = call fast float @llvm.exp.f32(float %i.ce)
  %i.cg = fadd fast float %i.cf, 1.000000e+00
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !39
  %i.cj = fdiv fast float %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next
  store float %i.cj, ptr %i.ck, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !79

._crit_edge62.split:                              ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge62.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn3GLU7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !31     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.h = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !31
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !31
  %i.k = load i32, ptr %i.a, align 4, !tbaa !31   ; 3 uses
  %.not60 = icmp sgt i32 %i.k, %i.j
  br i1 %.not60, label %._crit_edge62.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !32, !noalias !96 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !96 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44, !noalias !96 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !32, !noalias !97 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !97 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44, !noalias !97 ; 3 uses
  %factor.op.mul63 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !31     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.lr.ph.split, label %._crit_edge62.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.x = load i32, ptr %6, align 4, !tbaa !31
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = sext i32 %i.k to i64                     ; 4 uses
  %i.aa = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %i.ab = mul i64 %i.u, %i.s                      ; 2 uses
  %i.ac = mul i64 %i.ab, %i.z
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ac ; 2 uses
  %i.ad = sub i32 %i.j, %i.k
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nsw i64 %i.z, %i.ae                 ; 2 uses
  %i.ag = mul i64 %i.ab, %i.af
  %i.ah = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ag
  %scevgep73 = getelementptr i8, ptr %i.ai, i64 %i.ah ; 2 uses
  %i.aj = mul i64 %i.u, %i.s                      ; 2 uses
  %i.ak = mul i64 %i.p, %i.n                      ; 4 uses
  %i.al = mul i64 %i.ak, %i.z                     ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.l, i64 %i.al
  %i.am = mul i64 %i.ak, %i.af                    ; 2 uses
  %i.an = getelementptr i8, ptr %i.l, i64 %i.am
  %scevgep75 = getelementptr i8, ptr %i.an, i64 %i.ah
  %i.ao = shl nsw i64 %i.y, 2                     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.l, i64 %i.al
  %scevgep76 = getelementptr i8, ptr %i.ap, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.l, i64 %i.am
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ao
  %scevgep77 = getelementptr i8, ptr %i.ar, i64 %i.ah
  %min.iters.check = icmp ult i32 %i.v, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep75
  %bound1 = icmp ult ptr %scevgep74, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  %i.as = or i64 %i.ak, %i.aj
  %i.at = icmp slt i64 %i.as, 0
  %i.au = or i1 %found.conflict, %i.at
  %bound079 = icmp ult ptr %scevgep, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep73
  %found.conflict81 = and i1 %bound079, %bound180
  %i.av = or i64 %i.ak, %i.aj
  %i.aw = icmp slt i64 %i.av, 0
  %i.ax = or i1 %found.conflict81, %i.aw
  %conflict.rdx = or i1 %i.au, %i.ax
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ay = add nsw i64 %wide.trip.count, -1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split, %._crit_edge
  %indvars.iv66 = phi i64 [ %i.z, %.noexc.lr.ph.split ], [ %indvars.iv.next67, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv66
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 5 uses
  %.reass64 = mul i64 %factor.op.mul63, %indvars.iv66
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass64 ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.az, i64 %i.y ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc ] ; 4 uses
  %i.bb = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x float>, ptr %i.bb, align 4, !tbaa !39, !alias.scope !98
  %i.bc = fneg fast <4 x float> %wide.load
  %i.bd = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bc)
  %i.be = fadd fast <4 x float> %i.bd, splat (float 1.000000e+00)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  %wide.load84 = load <4 x float>, ptr %i.bf, align 4, !tbaa !39, !alias.scope !99
  %i.bg = fdiv fast <4 x float> %wide.load84, %i.be
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index
  store <4 x float> %i.bg, ptr %i.bh, align 4, !tbaa !39, !alias.scope !100, !noalias !101
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.bj = load float, ptr %gep.prol, align 4, !tbaa !39
  %i.bk = fneg fast float %i.bj
  %i.bl = call fast float @llvm.exp.f32(float %i.bk)
  %i.bm = fadd fast float %i.bl, 1.000000e+00
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.ph
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !39
  %i.bp = fdiv fast float %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.ph
  store float %i.bp, ptr %i.bq, align 4, !tbaa !39
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.br = icmp eq i64 %indvars.iv.ph, %i.ay
  br i1 %i.br, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next67 to i32
  %exitcond69.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond69.not, label %._crit_edge62.split, label %.noexc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bs = load float, ptr %gep, align 4, !tbaa !39
  %i.bt = fneg fast float %i.bs
  %i.bu = call fast float @llvm.exp.f32(float %i.bt)
  %i.bv = fadd fast float %i.bu, 1.000000e+00
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !39
  %i.by = fdiv fast float %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  store float %i.by, ptr %i.bz, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ca = load float, ptr %gep.1, align 4, !tbaa !39
  %i.cb = fneg fast float %i.ca
  %i.cc = call fast float @llvm.exp.f32(float %i.cb)
  %i.cd = fadd fast float %i.cc, 1.000000e+00
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !39
  %i.cg = fdiv fast float %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next
  store float %i.cg, ptr %i.ch, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !95

._crit_edge62.split:                              ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge62.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn3GLU7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !31     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.h = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !31
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !31
  %i.k = load i32, ptr %i.a, align 4, !tbaa !31   ; 2 uses
  %.not73 = icmp sgt i32 %i.k, %i.j
  br i1 %.not73, label %._crit_edge75.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !32, !noalias !113 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !113 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44, !noalias !113 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !32, !noalias !114 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !114 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44, !noalias !114 ; 3 uses
  %factor.op.mul76 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !31     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.lr.ph.split, label %._crit_edge75.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.x = load i32, ptr %6, align 4, !tbaa !31     ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  %i.z = load i32, ptr %7, align 4, !tbaa !31     ; 2 uses
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  %i.ab = sext i32 %i.x to i64                    ; 2 uses
  br i1 %i.y, label %.noexc.preheader, label %._crit_edge75.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph.split
  %i.ac = zext nneg i32 %i.x to i64               ; 8 uses
  %i.ad = sext i32 %i.k to i64                    ; 3 uses
  %i.ae = add nsw i32 %i.j, 1
  %i.af = mul i64 %i.u, %i.s
  %i.ag = mul i64 %i.af, %i.ad
  %i.ah = add nsw i32 %i.v, -1
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ab, %i.ai
  %i.ak = shl i64 %i.aj, 2
  %i.al = shl nuw nsw i64 %i.ac, 2                ; 3 uses
  %i.am = mul i64 %i.u, %i.s
  %i.an = mul i64 %i.p, %i.n
  %i.ao = mul i64 %i.an, %i.ad                    ; 2 uses
  %i.ap = mul nsw i64 %i.aa, %i.ai
  %i.aq = shl i64 %i.ap, 2
  %i.ar = add i64 %i.ao, %i.aq                    ; 2 uses
  %i.as = mul i64 %i.p, %i.n
  %i.at = shl nuw nsw i64 %i.ac, 3
  %i.au = getelementptr i8, ptr %i.q, i64 %i.ag
  %i.av = getelementptr i8, ptr %i.au, i64 %i.ak
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.al
  %i.ax = getelementptr i8, ptr %i.l, i64 %i.ar
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.al
  %i.az = getelementptr i8, ptr %i.l, i64 %i.ao
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.al
  %i.bb = getelementptr i8, ptr %i.l, i64 %i.ar
  %i.bc = getelementptr i8, ptr %i.bb, i64 %i.at
  %min.iters.check = icmp ult i32 %i.x, 4
  %stride.check96 = icmp slt i32 %i.z, 0
  %n.vec = and i64 %i.ac, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ac
  %xtraiter = and i64 %i.ac, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bd = add nsw i64 %i.ac, -1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge72
  %indvar = phi i64 [ 0, %.noexc.preheader ], [ %indvar.next, %._crit_edge72 ] ; 3 uses
  %indvars.iv81 = phi i64 [ %i.ad, %.noexc.preheader ], [ %indvars.iv.next82, %._crit_edge72 ] ; 3 uses
  %i.be = mul i64 %i.am, %indvar
  %scevgep = getelementptr i8, ptr %i.aw, i64 %i.be ; 2 uses
  %i.bf = mul i64 %i.as, %indvar                  ; 3 uses
  %scevgep90 = getelementptr i8, ptr %i.ay, i64 %i.bf
  %scevgep91 = getelementptr i8, ptr %i.ba, i64 %i.bf
  %scevgep92 = getelementptr i8, ptr %i.bc, i64 %i.bf
  %.reass = mul i64 %factor.op.mul, %indvars.iv81
  %i.bg = getelementptr i8, ptr %i.l, i64 %.reass ; 2 uses
  %.reass77 = mul i64 %factor.op.mul76, %indvars.iv81
  %i.bh = getelementptr i8, ptr %i.q, i64 %.reass77 ; 3 uses
  %bound0 = icmp ult ptr %i.bh, %scevgep90
  %bound1 = icmp ult ptr %i.bg, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound093 = icmp ult ptr %i.bh, %scevgep92
  %bound194 = icmp ult ptr %scevgep91, %scevgep
  %found.conflict95 = and i1 %bound093, %bound194
  %i.bi = or i1 %found.conflict95, %stride.check96
  %conflict.rdx = or i1 %found.conflict, %i.bi
  br label %.preheader

.preheader:                                       ; preds = %.noexc, %._crit_edge
  %.03371 = phi i32 [ 0, %.noexc ], [ %i.cc, %._crit_edge ]
  %.03470 = phi ptr [ %i.bh, %.noexc ], [ %i.cb, %._crit_edge ] ; 5 uses
  %.03569 = phi ptr [ %i.bg, %.noexc ], [ %i.ca, %._crit_edge ] ; 6 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %.03569, i64 %i.ac ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x float>, ptr %i.bj, align 4, !tbaa !39, !alias.scope !115
  %i.bk = fneg fast <4 x float> %wide.load
  %i.bl = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bk)
  %i.bm = fadd fast <4 x float> %i.bl, splat (float 1.000000e+00)
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.03569, i64 %index
  %wide.load97 = load <4 x float>, ptr %i.bn, align 4, !tbaa !39, !alias.scope !116
  %i.bo = fdiv fast <4 x float> %wide.load97, %i.bm
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.03470, i64 %index
  store <4 x float> %i.bo, ptr %i.bp, align 4, !tbaa !39, !alias.scope !117, !noalias !118
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !110

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.br = load float, ptr %gep.prol, align 4, !tbaa !39
  %i.bs = fneg fast float %i.br
  %i.bt = call fast float @llvm.exp.f32(float %i.bs)
  %i.bu = fadd fast float %i.bt, 1.000000e+00
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %.03569, i64 %indvars.iv.ph
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !39
  %i.bx = fdiv fast float %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %.03470, i64 %indvars.iv.ph
  store float %i.bx, ptr %i.by, align 4, !tbaa !39
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bz = icmp eq i64 %indvars.iv.ph, %i.bd
  br i1 %i.bz, label %._crit_edge, label %scalar.ph

._crit_edge72:                                    ; preds = %._crit_edge
  %indvars.iv.next82 = add nsw i64 %indvars.iv81, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next82 to i32
  %exitcond84.not = icmp eq i32 %i.ae, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond84.not, label %._crit_edge75.split, label %.noexc

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ca = getelementptr inbounds [4 x i8], ptr %.03569, i64 %i.aa
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.03470, i64 %i.ab
  %i.cc = add nuw nsw i32 %.03371, 1              ; 2 uses
  %exitcond80.not = icmp eq i32 %i.cc, %i.v
  br i1 %exitcond80.not, label %._crit_edge72, label %.preheader, !llvm.loop !111

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cd = load float, ptr %gep, align 4, !tbaa !39
  %i.ce = fneg fast float %i.cd
  %i.cf = call fast float @llvm.exp.f32(float %i.ce)
  %i.cg = fadd fast float %i.cf, 1.000000e+00
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.03569, i64 %indvars.iv
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !39
  %i.cj = fdiv fast float %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %.03470, i64 %indvars.iv
  store float %i.cj, ptr %i.ck, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.cl = load float, ptr %gep.1, align 4, !tbaa !39
  %i.cm = fneg fast float %i.cl
  %i.cn = call fast float @llvm.exp.f32(float %i.cm)
  %i.co = fadd fast float %i.cn, 1.000000e+00
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.03569, i64 %indvars.iv.next
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !39
  %i.cr = fdiv fast float %i.cq, %i.co
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %.03470, i64 %indvars.iv.next
  store float %i.cr, ptr %i.cs, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.ac
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !112

._crit_edge75.split:                              ; preds = %._crit_edge72, %.noexc.lr.ph, %.noexc.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge75.split, %bb.a
  ret void
}

declare void @_ZN4ncnn3Mat6createEiiiimPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn3GLU7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %6) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !31     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.h = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !31
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !31
  %i.k = load i32, ptr %i.a, align 4, !tbaa !31   ; 3 uses
  %.not60 = icmp sgt i32 %i.k, %i.j
  br i1 %.not60, label %._crit_edge62.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !32, !noalias !129 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !129 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44, !noalias !129 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !32, !noalias !130 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !130 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44, !noalias !130 ; 3 uses
  %factor.op.mul63 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !31     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.lr.ph.split, label %._crit_edge62.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.x = load i64, ptr %6, align 8, !tbaa !37     ; 2 uses
  %i.y = sext i32 %i.k to i64                     ; 4 uses
  %i.z = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %i.aa = mul i64 %i.u, %i.s                      ; 2 uses
  %i.ab = mul i64 %i.aa, %i.y
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ab ; 2 uses
  %i.ac = sub i32 %i.j, %i.k
  %i.ad = zext i32 %i.ac to i64
  %i.ae = add nsw i64 %i.y, %i.ad                 ; 2 uses
  %i.af = mul i64 %i.aa, %i.ae
  %i.ag = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.ah = getelementptr i8, ptr %i.q, i64 %i.af
  %scevgep73 = getelementptr i8, ptr %i.ah, i64 %i.ag ; 2 uses
  %i.ai = mul i64 %i.u, %i.s                      ; 2 uses
  %i.aj = mul i64 %i.p, %i.n                      ; 4 uses
  %i.ak = mul i64 %i.aj, %i.y                     ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.l, i64 %i.ak
  %i.al = mul i64 %i.aj, %i.ae                    ; 2 uses
  %i.am = getelementptr i8, ptr %i.l, i64 %i.al
  %scevgep75 = getelementptr i8, ptr %i.am, i64 %i.ag
  %i.an = shl i64 %i.x, 2                         ; 2 uses
  %i.ao = getelementptr i8, ptr %i.l, i64 %i.ak
  %scevgep76 = getelementptr i8, ptr %i.ao, i64 %i.an
  %i.ap = getelementptr i8, ptr %i.l, i64 %i.al
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.an
  %scevgep77 = getelementptr i8, ptr %i.aq, i64 %i.ag
  %min.iters.check = icmp ult i32 %i.v, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep75
  %bound1 = icmp ult ptr %scevgep74, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  %i.ar = or i64 %i.aj, %i.ai
  %i.as = icmp slt i64 %i.ar, 0
  %i.at = or i1 %found.conflict, %i.as
  %bound079 = icmp ult ptr %scevgep, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep73
  %found.conflict81 = and i1 %bound079, %bound180
  %i.au = or i64 %i.aj, %i.ai
  %i.av = icmp slt i64 %i.au, 0
  %i.aw = or i1 %found.conflict81, %i.av
  %conflict.rdx = or i1 %i.at, %i.aw
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ax = add nsw i64 %wide.trip.count, -1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split, %._crit_edge
  %indvars.iv66 = phi i64 [ %i.y, %.noexc.lr.ph.split ], [ %indvars.iv.next67, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv66
  %i.ay = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 5 uses
  %.reass64 = mul i64 %factor.op.mul63, %indvars.iv66
  %i.az = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass64 ; 4 uses
  %i.ba = getelementptr [4 x i8], ptr %i.ay, i64 %i.x ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc ] ; 4 uses
  %i.bb = getelementptr [4 x i8], ptr %i.ba, i64 %index
  %wide.load = load <4 x float>, ptr %i.bb, align 4, !tbaa !39, !alias.scope !131
  %i.bc = fneg fast <4 x float> %wide.load
  %i.bd = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bc)
  %i.be = fadd fast <4 x float> %i.bd, splat (float 1.000000e+00)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index
  %wide.load84 = load <4 x float>, ptr %i.bf, align 4, !tbaa !39, !alias.scope !132
  %i.bg = fdiv fast <4 x float> %wide.load84, %i.be
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  store <4 x float> %i.bg, ptr %i.bh, align 4, !tbaa !39, !alias.scope !133, !noalias !134
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !127

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bj = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv.ph
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !39
  %i.bl = fneg fast float %i.bk
  %i.bm = call fast float @llvm.exp.f32(float %i.bl)
  %i.bn = fadd fast float %i.bm, 1.000000e+00
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.ph
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !39
  %i.bq = fdiv fast float %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.ph
  store float %i.bq, ptr %i.br, align 4, !tbaa !39
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bs = icmp eq i64 %indvars.iv.ph, %i.ax
  br i1 %i.bs, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next67 to i32
  %exitcond69.not = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond69.not, label %._crit_edge62.split, label %.noexc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bt = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !39
  %i.bv = fneg fast float %i.bu
  %i.bw = call fast float @llvm.exp.f32(float %i.bv)
  %i.bx = fadd fast float %i.bw, 1.000000e+00
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.bz = load float, ptr %i.by, align 4, !tbaa !39
  %i.ca = fdiv fast float %i.bz, %i.bx
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  store float %i.ca, ptr %i.cb, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.cc = getelementptr [4 x i8], ptr %i.ba, i64 %indvars.iv.next
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !39
  %i.ce = fneg fast float %i.cd
  %i.cf = call fast float @llvm.exp.f32(float %i.ce)
  %i.cg = fadd fast float %i.cf, 1.000000e+00
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !39
  %i.cj = fdiv fast float %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next
  store float %i.cj, ptr %i.ck, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !128

._crit_edge62.split:                              ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge62.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn3GLU7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.7(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !31     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.h = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !31
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !31
  %i.k = load i32, ptr %i.a, align 4, !tbaa !31   ; 3 uses
  %.not60 = icmp sgt i32 %i.k, %i.j
  br i1 %.not60, label %._crit_edge62.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !32, !noalias !145 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36, !noalias !145 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !44, !noalias !145 ; 2 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !32, !noalias !146 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !36, !noalias !146 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !44, !noalias !146 ; 3 uses
  %factor.op.mul63 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !31     ; 3 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc.lr.ph.split, label %._crit_edge62.split

.noexc.lr.ph.split:                               ; preds = %.noexc.lr.ph
  %i.x = load i32, ptr %6, align 4, !tbaa !31
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = sext i32 %i.k to i64                     ; 4 uses
  %i.aa = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %i.ab = mul i64 %i.u, %i.s                      ; 2 uses
  %i.ac = mul i64 %i.ab, %i.z
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.ac ; 2 uses
  %i.ad = sub i32 %i.j, %i.k
  %i.ae = zext i32 %i.ad to i64
  %i.af = add nsw i64 %i.z, %i.ae                 ; 2 uses
  %i.ag = mul i64 %i.ab, %i.af
  %i.ah = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ag
  %scevgep73 = getelementptr i8, ptr %i.ai, i64 %i.ah ; 2 uses
  %i.aj = mul i64 %i.u, %i.s                      ; 2 uses
  %i.ak = mul i64 %i.p, %i.n                      ; 4 uses
  %i.al = mul i64 %i.ak, %i.z                     ; 2 uses
  %scevgep74 = getelementptr i8, ptr %i.l, i64 %i.al
  %i.am = mul i64 %i.ak, %i.af                    ; 2 uses
  %i.an = getelementptr i8, ptr %i.l, i64 %i.am
  %scevgep75 = getelementptr i8, ptr %i.an, i64 %i.ah
  %i.ao = shl nsw i64 %i.y, 2                     ; 2 uses
  %i.ap = getelementptr i8, ptr %i.l, i64 %i.al
  %scevgep76 = getelementptr i8, ptr %i.ap, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.l, i64 %i.am
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.ao
  %scevgep77 = getelementptr i8, ptr %i.ar, i64 %i.ah
  %min.iters.check = icmp ult i32 %i.v, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep75
  %bound1 = icmp ult ptr %scevgep74, %scevgep73
  %found.conflict = and i1 %bound0, %bound1
  %i.as = or i64 %i.ak, %i.aj
  %i.at = icmp slt i64 %i.as, 0
  %i.au = or i1 %found.conflict, %i.at
  %bound079 = icmp ult ptr %scevgep, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep73
  %found.conflict81 = and i1 %bound079, %bound180
  %i.av = or i64 %i.ak, %i.aj
  %i.aw = icmp slt i64 %i.av, 0
  %i.ax = or i1 %found.conflict81, %i.aw
  %conflict.rdx = or i1 %i.au, %i.ax
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ay = add nsw i64 %wide.trip.count, -1
  br label %.noexc

.noexc:                                           ; preds = %.noexc.lr.ph.split, %._crit_edge
  %indvars.iv66 = phi i64 [ %i.z, %.noexc.lr.ph.split ], [ %indvars.iv.next67, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv66
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 5 uses
  %.reass64 = mul i64 %factor.op.mul63, %indvars.iv66
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass64 ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.az, i64 %i.y ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc ] ; 4 uses
  %i.bb = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x float>, ptr %i.bb, align 4, !tbaa !39, !alias.scope !147
  %i.bc = fneg fast <4 x float> %wide.load
  %i.bd = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.bc)
  %i.be = fadd fast <4 x float> %i.bd, splat (float 1.000000e+00)
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  %wide.load84 = load <4 x float>, ptr %i.bf, align 4, !tbaa !39, !alias.scope !148
  %i.bg = fdiv fast <4 x float> %wide.load84, %i.be
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %index
  store <4 x float> %i.bg, ptr %i.bh, align 4, !tbaa !39, !alias.scope !149, !noalias !150
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.bj = load float, ptr %gep.prol, align 4, !tbaa !39
  %i.bk = fneg fast float %i.bj
  %i.bl = call fast float @llvm.exp.f32(float %i.bk)
  %i.bm = fadd fast float %i.bl, 1.000000e+00
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.ph
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !39
  %i.bp = fdiv fast float %i.bo, %i.bm
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.ph
  store float %i.bp, ptr %i.bq, align 4, !tbaa !39
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.br = icmp eq i64 %indvars.iv.ph, %i.ay
  br i1 %i.br, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next67 to i32
  %exitcond69.not = icmp eq i32 %i.aa, %lftr.wideiv
  br i1 %exitcond69.not, label %._crit_edge62.split, label %.noexc

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.bs = load float, ptr %gep, align 4, !tbaa !39
  %i.bt = fneg fast float %i.bs
  %i.bu = call fast float @llvm.exp.f32(float %i.bt)
  %i.bv = fadd fast float %i.bu, 1.000000e+00
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !39
  %i.by = fdiv fast float %i.bx, %i.bv
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  store float %i.by, ptr %i.bz, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ca = load float, ptr %gep.1, align 4, !tbaa !39
  %i.cb = fneg fast float %i.ca
  %i.cc = call fast float @llvm.exp.f32(float %i.cb)
  %i.cd = fadd fast float %i.cc, 1.000000e+00
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !39
  %i.cg = fdiv fast float %i.cf, %i.cd
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next
  store float %i.cg, ptr %i.ch, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !144

._crit_edge62.split:                              ; preds = %._crit_edge, %.noexc.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge62.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn3GLU7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.8(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !31     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.h = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !31
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !31
  %i.k = load i32, ptr %i.a, align 4, !tbaa !31   ; 2 uses
  %.not123 = icmp sgt i32 %i.k, %i.j
  br i1 %.not123, label %._crit_edge125.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = load i32, ptr %3, align 4, !tbaa !31     ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader.lr.ph.split, label %._crit_edge125.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !30, !noalias !162
  %i.w = load i32, ptr %i.t, align 8, !tbaa !35, !noalias !162
  %i.x = load ptr, ptr %4, align 8, !tbaa !32, !noalias !162 ; 4 uses
  %i.y = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !162 ; 3 uses
  %i.z = load i64, ptr %i.r, align 8, !tbaa !44, !noalias !162 ; 5 uses
  %factor.op.mul126 = mul i64 %i.y, %i.z
  %i.aa = sext i32 %i.v to i64                    ; 3 uses
  %i.ab = sext i32 %i.w to i64                    ; 3 uses
  %factor.op.mul = mul nsw i64 %i.aa, %i.ab
  %factor.op.mul119 = mul i64 %factor.op.mul, %i.z
  %i.ac = load i32, ptr %i.q, align 4, !tbaa !30, !noalias !163
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !35, !noalias !163
  %i.ae = load ptr, ptr %5, align 8, !tbaa !32, !noalias !163 ; 2 uses
  %i.af = load i64, ptr %i.o, align 8, !tbaa !36, !noalias !163 ; 3 uses
  %i.ag = load i64, ptr %i.n, align 8, !tbaa !44, !noalias !163 ; 5 uses
  %factor.op.mul127 = mul i64 %i.af, %i.ag
  %i.ah = sext i32 %i.ac to i64                   ; 3 uses
  %i.ai = sext i32 %i.ad to i64                   ; 3 uses
  %factor.op.mul120 = mul nsw i64 %i.ah, %i.ai
  %factor.op.mul121 = mul i64 %factor.op.mul120, %i.ag
  %i.aj = load i32, ptr %6, align 4, !tbaa !31    ; 3 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.preheader.lr.ph.split.split, label %._crit_edge125.split

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.al = load i32, ptr %7, align 4, !tbaa !31
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = sext i32 %i.k to i64                    ; 4 uses
  %i.ao = add nsw i32 %i.j, 1
  %wide.trip.count134 = zext nneg i32 %i.l to i64 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.aj to i64   ; 6 uses
  %i.ap = add nsw i64 %wide.trip.count134, -1     ; 2 uses
  %i.aq = mul nsw i64 %i.ap, %i.ai
  %i.ar = mul i64 %i.aq, %i.ah
  %i.as = mul i64 %i.af, %i.an
  %i.at = add i64 %i.ar, %i.as
  %i.au = mul i64 %i.ag, %i.at
  %i.av = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %i.aw = mul i64 %i.af, %i.ag
  %i.ax = mul i64 %i.ag, %i.ai
  %i.ay = mul i64 %i.ax, %i.ah                    ; 2 uses
  %i.az = mul nsw i64 %i.ap, %i.ab
  %i.ba = mul i64 %i.az, %i.aa
  %i.bb = mul i64 %i.y, %i.an
  %i.bc = add i64 %i.ba, %i.bb
  %i.bd = mul i64 %i.z, %i.bc                     ; 2 uses
  %i.be = mul i64 %i.y, %i.z                      ; 2 uses
  %i.bf = mul i64 %i.z, %i.ab
  %i.bg = mul i64 %i.bf, %i.aa                    ; 2 uses
  %i.bh = mul i64 %i.be, %i.an
  %i.bi = shl nsw i64 %i.am, 2                    ; 2 uses
  %i.bj = getelementptr i8, ptr %i.ae, i64 %i.au
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.av
  %i.bl = getelementptr i8, ptr %i.x, i64 %i.bd
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.av
  %i.bn = getelementptr i8, ptr %i.x, i64 %i.bh
  %i.bo = getelementptr i8, ptr %i.bn, i64 %i.bi
  %i.bp = getelementptr i8, ptr %i.x, i64 %i.bd
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bi
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.av
  %min.iters.check = icmp ult i32 %i.aj, 4
  %i.bs = or i64 %i.bg, %i.ay
  %i.bt = icmp slt i64 %i.bs, 0
  %i.bu = or i64 %i.bg, %i.ay
  %i.bv = icmp slt i64 %i.bu, 0
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bw = add nsw i64 %wide.trip.count, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split.split, %._crit_edge118
  %indvar = phi i64 [ 0, %.preheader.lr.ph.split.split ], [ %indvar.next, %._crit_edge118 ] ; 3 uses
  %indvars.iv136 = phi i64 [ %i.an, %.preheader.lr.ph.split.split ], [ %indvars.iv.next137, %._crit_edge118 ] ; 3 uses
  %i.bx = mul i64 %i.aw, %indvar
  %scevgep = getelementptr i8, ptr %i.bk, i64 %i.bx ; 2 uses
  %i.by = mul i64 %i.be, %indvar                  ; 3 uses
  %scevgep144 = getelementptr i8, ptr %i.bm, i64 %i.by
  %scevgep145 = getelementptr i8, ptr %i.bo, i64 %i.by
  %scevgep146 = getelementptr i8, ptr %i.br, i64 %i.by
  %.reass = mul i64 %factor.op.mul126, %indvars.iv136
  %i.bz = getelementptr inbounds nuw i8, ptr %i.x, i64 %.reass ; 2 uses
  %.reass128 = mul i64 %factor.op.mul127, %indvars.iv136
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.reass128 ; 3 uses
  %bound0 = icmp ult ptr %i.ca, %scevgep144
  %bound1 = icmp ult ptr %i.bz, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.cb = or i1 %found.conflict, %i.bt
  %bound0148 = icmp ult ptr %i.ca, %scevgep146
  %bound1149 = icmp ult ptr %scevgep145, %scevgep
  %found.conflict150 = and i1 %bound0148, %bound1149
  %i.cc = or i1 %found.conflict150, %i.bv
  %conflict.rdx = or i1 %i.cb, %i.cc
  br label %.noexc

._crit_edge118:                                   ; preds = %._crit_edge
  %indvars.iv.next137 = add nsw i64 %indvars.iv136, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next137 to i32
  %exitcond139.not = icmp eq i32 %i.ao, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond139.not, label %._crit_edge125.split, label %.preheader

.noexc:                                           ; preds = %.preheader, %._crit_edge
  %indvars.iv131 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next132, %._crit_edge ] ; 3 uses
  %.reass.reass = mul i64 %factor.op.mul119, %indvars.iv131
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.reass.reass ; 5 uses
  %.reass.reass122 = mul i64 %factor.op.mul121, %indvars.iv131
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.reass.reass122 ; 4 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.cd, i64 %i.am ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.noexc, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.noexc ] ; 4 uses
  %i.cf = getelementptr [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x float>, ptr %i.cf, align 4, !tbaa !39, !alias.scope !164
  %i.cg = fneg fast <4 x float> %wide.load
  %i.ch = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.cg)
  %i.ci = fadd fast <4 x float> %i.ch, splat (float 1.000000e+00)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index
  %wide.load153 = load <4 x float>, ptr %i.cj, align 4, !tbaa !39, !alias.scope !165
  %i.ck = fdiv fast <4 x float> %wide.load153, %i.ci
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index
  store <4 x float> %i.ck, ptr %i.cl, align 4, !tbaa !39, !alias.scope !166, !noalias !167
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !159

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.noexc ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.prol = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.cn = load float, ptr %gep.prol, align 4, !tbaa !39
  %i.co = fneg fast float %i.cn
  %i.cp = call fast float @llvm.exp.f32(float %i.co)
  %i.cq = fadd fast float %i.cp, 1.000000e+00
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.ph
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !39
  %i.ct = fdiv fast float %i.cs, %i.cq
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.ph
  store float %i.ct, ptr %i.cu, align 4, !tbaa !39
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.cv = icmp eq i64 %indvars.iv.ph, %i.bw
  br i1 %i.cv, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond135.not = icmp eq i64 %indvars.iv.next132, %wide.trip.count134
  br i1 %exitcond135.not, label %._crit_edge118, label %.noexc, !llvm.loop !160

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cw = load float, ptr %gep, align 4, !tbaa !39
  %i.cx = fneg fast float %i.cw
  %i.cy = call fast float @llvm.exp.f32(float %i.cx)
  %i.cz = fadd fast float %i.cy, 1.000000e+00
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv
  %i.db = load float, ptr %i.da, align 4, !tbaa !39
  %i.dc = fdiv fast float %i.db, %i.cz
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv
  store float %i.dc, ptr %i.dd, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.de = load float, ptr %gep.1, align 4, !tbaa !39
  %i.df = fneg fast float %i.de
  %i.dg = call fast float @llvm.exp.f32(float %i.df)
  %i.dh = fadd fast float %i.dg, 1.000000e+00
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv.next
  %i.dj = load float, ptr %i.di, align 4, !tbaa !39
  %i.dk = fdiv fast float %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next
  store float %i.dk, ptr %i.dl, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !161

._crit_edge125.split:                             ; preds = %._crit_edge118, %.preheader.lr.ph, %.preheader.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge125.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn3GLU7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.9(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !31     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !31
  %i.h = load i32, ptr %0, align 4, !tbaa !31     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !31
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !31
  %i.k = load i32, ptr %i.a, align 4, !tbaa !31   ; 2 uses
  %.not135 = icmp sgt i32 %i.k, %i.j
  br i1 %.not135, label %._crit_edge137.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = load i32, ptr %3, align 4, !tbaa !31     ; 2 uses
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.preheader.lr.ph.split, label %._crit_edge137.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !30, !noalias !180
  %i.w = load i32, ptr %i.t, align 8, !tbaa !35, !noalias !180
  %i.x = load ptr, ptr %4, align 8, !tbaa !32, !noalias !180 ; 4 uses
  %i.y = load i64, ptr %i.s, align 8, !tbaa !36, !noalias !180 ; 3 uses
  %i.z = load i64, ptr %i.r, align 8, !tbaa !44, !noalias !180 ; 6 uses
  %factor.op.mul138 = mul i64 %i.y, %i.z
  %i.aa = sext i32 %i.v to i64                    ; 4 uses
  %i.ab = sext i32 %i.w to i64                    ; 2 uses
  %i.ac = mul i64 %i.z, %i.aa                     ; 2 uses
  %factor.op.mul = mul i64 %i.ac, %i.ab
  %i.ad = load i32, ptr %i.q, align 4, !tbaa !30, !noalias !181
  %i.ae = load i32, ptr %i.p, align 8, !tbaa !35, !noalias !181
  %i.af = load ptr, ptr %5, align 8, !tbaa !32, !noalias !181 ; 2 uses
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !36, !noalias !181 ; 3 uses
  %i.ah = load i64, ptr %i.n, align 8, !tbaa !44, !noalias !181 ; 6 uses
  %factor.op.mul140 = mul i64 %i.ag, %i.ah
  %i.ai = sext i32 %i.ad to i64                   ; 4 uses
  %i.aj = sext i32 %i.ae to i64                   ; 2 uses
  %i.ak = mul i64 %i.ah, %i.ai                    ; 2 uses
  %factor.op.mul132 = mul i64 %i.ak, %i.aj
  %i.al = load i32, ptr %6, align 4, !tbaa !31    ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.preheader.lr.ph.split.split, label %._crit_edge137.split

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %i.an = load i32, ptr %7, align 4, !tbaa !31    ; 3 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.preheader.preheader, label %._crit_edge137.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split.split
  %i.ap = zext nneg i32 %i.an to i64              ; 8 uses
  %i.aq = sext i32 %i.k to i64                    ; 4 uses
  %i.ar = add nsw i32 %i.j, 1
  %wide.trip.count153 = zext nneg i32 %i.l to i64
  %wide.trip.count148 = zext nneg i32 %i.al to i64 ; 2 uses
  %8 = add nsw i64 %wide.trip.count148, -1        ; 2 uses
  %9 = mul nsw i64 %8, %i.ai
  %i.as = mul i64 %i.ag, %i.aq
  %i.at = add i64 %9, %i.as
  %i.au = mul i64 %i.ah, %i.at
  %i.av = shl nuw nsw i64 %i.ap, 2                ; 3 uses
  %i.aw = mul i64 %i.ag, %i.ah
  %10 = mul i64 %i.ah, %i.aj
  %i.ax = mul i64 %10, %i.ai
  %i.ay = mul i64 %i.ah, %i.ai                    ; 2 uses
  %i.az = mul nsw i64 %8, %i.aa
  %i.ba = mul i64 %i.y, %i.aq
  %i.bb = add i64 %i.az, %i.ba
  %i.bc = mul i64 %i.z, %i.bb                     ; 2 uses
  %i.bd = mul i64 %i.y, %i.z                      ; 2 uses
  %11 = mul i64 %i.z, %i.ab
  %i.be = mul i64 %11, %i.aa
  %i.bf = mul i64 %i.z, %i.aa                     ; 2 uses
  %i.bg = mul i64 %i.bd, %i.aq
  %i.bh = shl nuw nsw i64 %i.ap, 3
  %i.bi = getelementptr i8, ptr %i.af, i64 %i.au
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.av
  %i.bk = getelementptr i8, ptr %i.x, i64 %i.bc
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.av
  %i.bm = getelementptr i8, ptr %i.x, i64 %i.bg
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.av
  %i.bo = getelementptr i8, ptr %i.x, i64 %i.bc
  %i.bp = getelementptr i8, ptr %i.bo, i64 %i.bh
  %min.iters.check = icmp ult i32 %i.an, 4
  %i.bq = or i64 %i.bf, %i.ay
  %i.br = icmp slt i64 %i.bq, 0
  %i.bs = or i64 %i.bf, %i.ay
  %i.bt = icmp slt i64 %i.bs, 0
  %n.vec = and i64 %i.ap, 2147483644              ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ap
  %xtraiter = and i64 %i.ap, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bu = add nsw i64 %i.ap, -1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge131
  %indvar = phi i64 [ 0, %.preheader.preheader ], [ %indvar.next, %._crit_edge131 ] ; 3 uses
  %indvars.iv155 = phi i64 [ %i.aq, %.preheader.preheader ], [ %indvars.iv.next156, %._crit_edge131 ] ; 3 uses
  %i.bv = mul i64 %i.aw, %indvar
  %i.bw = mul i64 %i.bd, %indvar                  ; 3 uses
  %.reass139 = mul i64 %factor.op.mul138, %indvars.iv155
  %i.bx = getelementptr inbounds nuw i8, ptr %i.x, i64 %.reass139
  %.reass141 = mul i64 %factor.op.mul140, %indvars.iv155
  %i.by = getelementptr inbounds nuw i8, ptr %i.af, i64 %.reass141
  %i.bz = getelementptr i8, ptr %i.bj, i64 %i.bv
  %i.ca = getelementptr i8, ptr %i.bl, i64 %i.bw
  %i.cb = getelementptr i8, ptr %i.bn, i64 %i.bw
  %i.cc = getelementptr i8, ptr %i.bp, i64 %i.bw
  br label %.noexc

._crit_edge131:                                   ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next156 to i32
  %exitcond158.not = icmp eq i32 %i.ar, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond158.not, label %._crit_edge137.split, label %.preheader

.noexc:                                           ; preds = %.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge
  %indvars.iv150 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next151, %._ZN4ncnn3MatD2Ev.exit_crit_edge ] ; 5 uses
  %i.cd = mul i64 %i.ax, %indvars.iv150
  %scevgep = getelementptr i8, ptr %i.bz, i64 %i.cd ; 2 uses
  %i.ce = mul i64 %i.be, %indvars.iv150           ; 3 uses
  %scevgep164 = getelementptr i8, ptr %i.ca, i64 %i.ce
  %scevgep165 = getelementptr i8, ptr %i.cb, i64 %i.ce
  %scevgep166 = getelementptr i8, ptr %i.cc, i64 %i.ce
  %.reass = mul i64 %factor.op.mul, %indvars.iv150
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.reass ; 2 uses
  %.reass133 = mul i64 %factor.op.mul132, %indvars.iv150
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 %.reass133 ; 3 uses
  %bound0 = icmp ult ptr %i.cg, %scevgep164
  %bound1 = icmp ult ptr %i.cf, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.ch = or i1 %found.conflict, %i.br
  %bound0168 = icmp ult ptr %i.cg, %scevgep166
  %bound1169 = icmp ult ptr %scevgep165, %scevgep
  %found.conflict170 = and i1 %bound0168, %bound1169
  %i.ci = or i1 %found.conflict170, %i.bt
  %conflict.rdx = or i1 %i.ch, %i.ci
  br label %.lr.ph

._ZN4ncnn3MatD2Ev.exit_crit_edge:                 ; preds = %._crit_edge
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._crit_edge131, label %.noexc, !llvm.loop !172

.lr.ph:                                           ; preds = %.noexc, %._crit_edge
  %indvars.iv145 = phi i64 [ 0, %.noexc ], [ %indvars.iv.next146, %._crit_edge ] ; 3 uses
  %i.cj = mul i64 %i.ac, %indvars.iv145
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cj ; 5 uses
  %i.cl = mul i64 %i.ak, %indvars.iv145
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cl ; 4 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.ap ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index
  %wide.load = load <4 x float>, ptr %i.cn, align 4, !tbaa !39, !alias.scope !182
  %i.co = fneg fast <4 x float> %wide.load
  %i.cp = call fast <4 x float> @llvm.exp.v4f32(<4 x float> %i.co)
  %i.cq = fadd fast <4 x float> %i.cp, splat (float 1.000000e+00)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %index
  %wide.load173 = load <4 x float>, ptr %i.cr, align 4, !tbaa !39, !alias.scope !183
  %i.cs = fdiv fast <4 x float> %wide.load173, %i.cq
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index
  store <4 x float> %i.cs, ptr %i.ct, align 4, !tbaa !39, !alias.scope !184, !noalias !185
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %gep.prol = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.ph
  %i.cv = load float, ptr %gep.prol, align 4, !tbaa !39
  %i.cw = fneg fast float %i.cv
  %i.cx = call fast float @llvm.exp.f32(float %i.cw)
  %i.cy = fadd fast float %i.cx, 1.000000e+00
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.ph
  %i.da = load float, ptr %i.cz, align 4, !tbaa !39
  %i.db = fdiv fast float %i.da, %i.cy
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.ph
  store float %i.db, ptr %i.dc, align 4, !tbaa !39
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.dd = icmp eq i64 %indvars.iv.ph, %i.bu
  br i1 %i.dd, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge, label %.lr.ph, !llvm.loop !178

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.de = load float, ptr %gep, align 4, !tbaa !39
  %i.df = fneg fast float %i.de
  %i.dg = call fast float @llvm.exp.f32(float %i.df)
  %i.dh = fadd fast float %i.dg, 1.000000e+00
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv
  %i.dj = load float, ptr %i.di, align 4, !tbaa !39
  %i.dk = fdiv fast float %i.dj, %i.dh
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv
  store float %i.dk, ptr %i.dl, align 4, !tbaa !39
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.dm = load float, ptr %gep.1, align 4, !tbaa !39
  %i.dn = fneg fast float %i.dm
  %i.do = call fast float @llvm.exp.f32(float %i.dn)
  %i.dp = fadd fast float %i.do, 1.000000e+00
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %indvars.iv.next
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !39
  %i.ds = fdiv fast float %i.dr, %i.dp
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next
  store float %i.ds, ptr %i.dt, align 4, !tbaa !39
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %i.ap
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !179

._crit_edge137.split:                             ; preds = %._crit_edge131, %.preheader.lr.ph, %.preheader.lr.ph.split.split, %.preheader.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge137.split, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.exp.v4f32(<4 x float>) #7

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { builtin nounwind }

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
!26 = !{!"_ZTSN4ncnn3GLUE", !25, i64 0, !6, i64 208}
!27 = !{!26, !6, i64 208}
!28 = !{!"p1 _ZTSN4ncnn9AllocatorE", !10, i64 0}
!29 = !{!"_ZTSN4ncnn3MatE", !10, i64 0, !15, i64 8, !13, i64 16, !6, i64 24, !28, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !13, i64 64}
!30 = !{!29, !6, i64 44}
!31 = !{!6, !6, i64 0}
!32 = !{!29, !10, i64 0}
!33 = !{!"p1 float", !10, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!29, !6, i64 48}
!36 = !{!29, !13, i64 64}
!37 = !{!13, !13, i64 0}
!38 = !{!"float", !5, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"llvm.loop.isvectorized", i32 1}
!41 = !{!"llvm.loop.unroll.runtime.disable"}
!42 = !{i64 2, i64 -1, i64 -1, i1 true}
!43 = !{!42}
!44 = !{!29, !13, i64 16}
!45 = !{!"llvm.loop.mustprogress"}
!46 = !{!29, !6, i64 40}
!47 = !{!"_ZTSN4ncnn6OptionE", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !6, i64 4, !28, i64 8, !28, i64 16, !6, i64 24, !9, i64 28, !9, i64 29, !9, i64 30, !9, i64 31, !9, i64 32, !9, i64 33, !9, i64 34, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 38, !9, i64 39, !6, i64 40, !9, i64 44, !9, i64 45, !9, i64 46, !9, i64 47, !5, i64 48, !9, i64 49, !9, i64 50, !9, i64 51, !9, i64 52, !9, i64 53, !9, i64 54, !9, i64 55, !9, i64 56, !9, i64 57, !9, i64 58, !9, i64 59, !9, i64 60, !9, i64 61, !9, i64 62, !9, i64 63}
!48 = !{!47, !28, i64 8}
!49 = !{!47, !6, i64 4}
!50 = !{!29, !6, i64 56}
!51 = !{!29, !6, i64 52}
!52 = !{!"vtable pointer", !4, i64 0}
!53 = !{!52, !52, i64 0}
!54 = !{!25, !9, i64 8}
!55 = !{!25, !9, i64 9}
!56 = distinct !{!56, !40, !41}
end_hunk_0
