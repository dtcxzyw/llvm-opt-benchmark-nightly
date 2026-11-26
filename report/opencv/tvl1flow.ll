Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tvl1flow?download=true
inline.NumInlined: 906
inline.NumDeleted: 164
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNK2cv7optflow16BuildFlowMapBodyclERKNS_5RangeE:bb.a

.lr.ph.preheader:                                 ; preds = %.lr.ph24
  %i.x = sext i32 %i.a to i64                     ; 5 uses
  %wide.trip.count30 = sext i32 %i.c to i64       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.v to i64    ; 6 uses
  %i.y = add nsw i64 %wide.trip.count30, -1       ; 4 uses
  %i.z = mul i64 %i.l, %i.y
  %i.aa = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %i.ab = getelementptr i8, ptr %i.j, i64 %i.z
  %scevgep = getelementptr i8, ptr %i.ab, i64 %i.aa ; 2 uses
  %i.ac = mul i64 %i.l, %i.x
  %scevgep59 = getelementptr i8, ptr %i.j, i64 %i.ac ; 2 uses
  %i.ad = mul i64 %i.h, %i.y
  %i.ae = getelementptr i8, ptr %i.f, i64 %i.ad
  %scevgep60 = getelementptr i8, ptr %i.ae, i64 %i.aa ; 2 uses
  %i.af = mul i64 %i.h, %i.x
  %scevgep61 = getelementptr i8, ptr %i.f, i64 %i.af ; 2 uses
  %i.ag = mul i64 %i.t, %i.y
  %i.ah = getelementptr i8, ptr %i.r, i64 %i.ag
  %scevgep62 = getelementptr i8, ptr %i.ah, i64 %i.aa ; 3 uses
  %i.ai = mul i64 %i.t, %i.x
  %scevgep63 = getelementptr i8, ptr %i.r, i64 %i.ai ; 3 uses
  %i.aj = mul i64 %i.p, %i.y
  %i.ak = getelementptr i8, ptr %i.n, i64 %i.aj
  %scevgep64 = getelementptr i8, ptr %i.ak, i64 %i.aa ; 3 uses
  %i.al = mul i64 %i.p, %i.x
  %scevgep65 = getelementptr i8, ptr %i.n, i64 %i.al ; 3 uses
  %min.iters.check = icmp ult i32 %i.v, 12
  %bound0 = icmp ult ptr %scevgep65, %scevgep62
  %bound1 = icmp ult ptr %scevgep63, %scevgep64
  %found.conflict = and i1 %bound0, %bound1
  %i.am = or i64 %i.t, %i.p
  %i.an = icmp slt i64 %i.am, 0
  %i.ao = or i1 %found.conflict, %i.an
  %bound067 = icmp ult ptr %scevgep65, %scevgep60
  %bound168 = icmp ult ptr %scevgep61, %scevgep64
  %found.conflict69 = and i1 %bound067, %bound168
  %stride.check70 = icmp slt i64 %i.h, 0
  %i.ap = or i1 %found.conflict69, %stride.check70
  %conflict.rdx = or i1 %i.ao, %i.ap
  %bound071 = icmp ult ptr %scevgep65, %scevgep
  %bound172 = icmp ult ptr %scevgep59, %scevgep64
  %found.conflict73 = and i1 %bound071, %bound172
  %stride.check74 = icmp slt i64 %i.l, 0
  %i.aq = or i1 %found.conflict73, %stride.check74
  %conflict.rdx75 = or i1 %conflict.rdx, %i.aq
  %bound076 = icmp ult ptr %scevgep63, %scevgep60
  %bound177 = icmp ult ptr %scevgep61, %scevgep62
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx79 = or i1 %conflict.rdx75, %found.conflict78
  %bound080 = icmp ult ptr %scevgep63, %scevgep
  %bound181 = icmp ult ptr %scevgep59, %scevgep62
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %conflict.rdx79, %found.conflict82
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ar = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

._crit_edge25.split:                              ; preds = %._crit_edge, %.lr.ph24, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv27 = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next28, %._crit_edge ] ; 6 uses
  %i.as = mul i64 %i.h, %indvars.iv27
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.as ; 4 uses
  %i.au = mul i64 %i.l, %indvars.iv27
  %i.av = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.au ; 4 uses
  %i.aw = mul i64 %i.p, %indvars.iv27
  %i.ax = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.aw ; 4 uses
  %i.ay = mul i64 %i.t, %indvars.iv27
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ay ; 4 uses
  %i.ba = trunc nsw i64 %indvars.iv27 to i32
  %i.bb = sitofp i32 %i.ba to float               ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx83
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.bb, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.bc = uitofp nneg <4 x i32> %vec.ind to <4 x float>
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index
  %wide.load = load <4 x float>, ptr %i.bd, align 4, !tbaa !76, !alias.scope !145
  %i.be = fadd <4 x float> %wide.load, %i.bc
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %index
  store <4 x float> %i.be, ptr %i.bf, align 4, !tbaa !76, !alias.scope !146, !noalias !147
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index
  %wide.load84 = load <4 x float>, ptr %i.bg, align 4, !tbaa !76, !alias.scope !148
  %i.bh = fadd <4 x float> %wide.load84, %broadcast.splat
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index
  store <4 x float> %i.bh, ptr %i.bi, align 4, !tbaa !76, !alias.scope !149, !noalias !150
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bj = icmp eq i64 %index.next, %n.vec
  br i1 %i.bj, label %middle.block, label %vector.body, !llvm.loop !142

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 8 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bk = trunc nuw nsw i64 %indvars.iv.ph to i32
  %i.bl = uitofp nneg i32 %i.bk to float
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.ph
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !76
  %i.bo = fadd float %i.bn, %i.bl
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.ph
  store float %i.bo, ptr %i.bp, align 4, !tbaa !76
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.ph
  %i.br = load float, ptr %i.bq, align 4, !tbaa !76
  %i.bs = fadd float %i.br, %i.bb
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.ph
  store float %i.bs, ptr %i.bt, align 4, !tbaa !76
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bu = icmp eq i64 %indvars.iv.ph, %i.ar
  br i1 %i.bu, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next28 = add nsw i64 %indvars.iv27, 1 ; 2 uses
  %exitcond31.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count30
  br i1 %exitcond31.not, label %._crit_edge25.split, label %.lr.ph, !llvm.loop !143

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %i.bv = trunc nuw nsw i64 %indvars.iv to i32
  %i.bw = uitofp nneg i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.by = load float, ptr %i.bx, align 4, !tbaa !76
  %i.bz = fadd float %i.by, %i.bw
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  store float %i.bz, ptr %i.ca, align 4, !tbaa !76
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !76
  %i.cd = fadd float %i.cc, %i.bb
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv
  store float %i.cd, ptr %i.ce, align 4, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.cf = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.cg = uitofp nneg i32 %i.cf to float
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !76
  %i.cj = fadd float %i.ci, %i.cg
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv.next
  store float %i.cj, ptr %i.ck, align 4, !tbaa !76
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !76
  %i.cn = fadd float %i.cm, %i.bb
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next
  store float %i.cn, ptr %i.co, align 4, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !144
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK2cv7optflow20CenteredGradientBodyclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(632) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 3 uses
  %i.c = add i32 %i.b, -1
  %i.d = load i32, ptr %1, align 4, !tbaa !70     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !71   ; 2 uses
  %i.g = icmp slt i32 %i.d, %i.f
  br i1 %i.g, label %.lr.ph27, label %._crit_edge.split

.lr.ph27:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74   ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i64, ptr %i.j, align 8, !tbaa !67   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.o = load i64, ptr %i.n, align 8, !tbaa !67   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.s = load i64, ptr %i.r, align 8, !tbaa !67   ; 4 uses
  %i.t = icmp sgt i32 %i.b, 2
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph27
  %i.u = sext i32 %i.d to i64                     ; 6 uses
  %wide.trip.count32 = sext i32 %i.f to i64       ; 4 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 4 uses
  %i.v = add nsw i64 %wide.trip.count32, -1       ; 3 uses
  %i.w = mul i64 %i.k, %i.v
  %i.x = shl nuw nsw i64 %wide.trip.count, 2      ; 5 uses
  %i.y = getelementptr i8, ptr %i.i, i64 %i.w
  %i.z = getelementptr i8, ptr %i.y, i64 %i.x
  %scevgep = getelementptr i8, ptr %i.z, i64 4    ; 2 uses
  %i.aa = mul i64 %i.k, %i.u
  %scevgep69 = getelementptr i8, ptr %i.i, i64 %i.aa ; 2 uses
  %i.ab = mul i64 %i.k, %wide.trip.count32
  %i.ac = getelementptr i8, ptr %i.i, i64 %i.ab
  %scevgep70 = getelementptr i8, ptr %i.ac, i64 %i.x ; 2 uses
  %i.ad = add nsw i64 %i.u, 1
  %i.ae = mul i64 %i.k, %i.ad
  %i.af = getelementptr i8, ptr %i.i, i64 %i.ae
  %2 = add nsw i64 %wide.trip.count32, -2
  %3 = mul i64 %i.k, %2
  %4 = getelementptr i8, ptr %i.i, i64 %3
  %scevgep72 = getelementptr i8, ptr %4, i64 %i.x ; 2 uses
  %5 = add nsw i64 %i.u, -1
  %6 = mul i64 %i.k, %5
  %i.ag = getelementptr i8, ptr %i.i, i64 %6
  %7 = insertelement <2 x ptr> poison, ptr %i.ag, i64 0
  %8 = insertelement <2 x ptr> %7, ptr %i.af, i64 1
  %9 = getelementptr i8, <2 x ptr> %8, i64 4      ; 2 uses
  %i.ah = mul i64 %i.s, %i.v
  %i.ai = getelementptr i8, ptr %i.q, i64 %i.ah
  %scevgep74 = getelementptr i8, ptr %i.ai, i64 %i.x ; 2 uses
  %i.aj = mul i64 %i.s, %i.u
  %i.ak = getelementptr i8, ptr %i.q, i64 %i.aj
  %scevgep75 = getelementptr i8, ptr %i.ak, i64 4 ; 2 uses
  %i.al = mul i64 %i.o, %i.v
  %i.am = getelementptr i8, ptr %i.m, i64 %i.al
  %scevgep76 = getelementptr i8, ptr %i.am, i64 %i.x
  %i.an = mul i64 %i.o, %i.u
  %i.ao = getelementptr i8, ptr %i.m, i64 %i.an
  %scevgep77 = getelementptr i8, ptr %i.ao, i64 4
  %i.ap = insertelement <4 x ptr> poison, ptr %scevgep77, i64 0
  %i.aq = shufflevector <4 x ptr> %i.ap, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ar = insertelement <4 x ptr> poison, ptr %scevgep74, i64 0 ; 2 uses
  %i.as = insertelement <4 x ptr> %i.ar, ptr %scevgep72, i64 1
  %i.at = insertelement <4 x ptr> %i.as, ptr %scevgep70, i64 2
  %i.au = insertelement <4 x ptr> %i.at, ptr %scevgep, i64 3
  %i.av = insertelement <2 x ptr> poison, ptr %scevgep72, i64 0
  %i.aw = insertelement <2 x ptr> %i.av, ptr %scevgep70, i64 1
  %i.ax = insertelement <4 x ptr> poison, ptr %scevgep76, i64 0
  %i.ay = shufflevector <4 x ptr> %i.ax, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.az = shufflevector <4 x ptr> %i.ar, <4 x ptr> poison, <2 x i32> zeroinitializer
  %10 = shufflevector <2 x ptr> %9, <2 x ptr> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %11 = insertelement <4 x ptr> %10, ptr %scevgep75, i64 0 ; 2 uses
  %12 = insertelement <4 x ptr> %11, ptr %scevgep69, i64 3
  %i.ba = add nsw i64 %wide.trip.count, -1        ; 3 uses
  %min.iters.check = icmp ult i64 %i.ba, 12
  %i.bb = icmp ult <4 x ptr> %i.aq, %i.au
  %i.bc = icmp ult <4 x ptr> %12, %i.ay
  %i.bd = or i64 %i.s, %i.o
  %stride.check82 = icmp slt i64 %i.k, 0
  %i.be = shufflevector <4 x ptr> %11, <4 x ptr> poison, <2 x i32> zeroinitializer
  %i.bf = icmp ult <2 x ptr> %i.be, %i.aw
  %i.bg = icmp ult <2 x ptr> %9, %i.az
  %bound099 = icmp ult ptr %scevgep75, %scevgep
  %bound1100 = icmp ult ptr %scevgep69, %scevgep74
  %i.bh = icmp slt i64 %i.bd, 0
  %i.bi = insertelement <8 x i1> poison, i1 %bound099, i64 6
  %i.bj = insertelement <8 x i1> %i.bi, i1 %i.bh, i64 7
  %i.bk = shufflevector <4 x i1> %i.bb, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bl = shufflevector <8 x i1> %i.bk, <8 x i1> %i.bj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bm = shufflevector <2 x i1> %i.bf, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bn = shufflevector <8 x i1> %i.bl, <8 x i1> %i.bm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %13 = insertelement <8 x i1> <i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 poison, i1 true>, i1 %bound1100, i64 6
  %14 = shufflevector <4 x i1> %i.bc, <4 x i1> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %15 = shufflevector <8 x i1> %14, <8 x i1> %13, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %16 = shufflevector <2 x i1> %i.bg, <2 x i1> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %17 = shufflevector <8 x i1> %15, <8 x i1> %16, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bo = and <8 x i1> %i.bn, %17
  %i.bp = bitcast <8 x i1> %i.bo to i8
  %i.bq = icmp ne i8 %i.bp, 0
  %op.rdx = or i1 %i.bq, %stride.check82
  %n.vec = and i64 %i.ba, -4                      ; 3 uses
  %i.br = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  %i.bs = and i32 %i.b, 1
  %lcmp.mod.not = icmp eq i32 %i.bs, 0
  %i.bt = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count32
  br i1 %exitcond33.not, label %._crit_edge.split, label %.lr.ph, !llvm.loop !151

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph27, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %indvars.iv29 = phi i64 [ %i.u, %.lr.ph.preheader ], [ %indvars.iv.next30, %..loopexit_crit_edge ] ; 5 uses
  %i.bu = add nsw i64 %indvars.iv29, -1
  %i.bv = mul i64 %i.k, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bv ; 4 uses
  %i.bx = mul i64 %i.k, %indvars.iv29
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bx ; 8 uses
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, 1 ; 3 uses
  %i.bz = mul i64 %i.k, %indvars.iv.next30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bz ; 4 uses
  %i.cb = mul i64 %i.o, %indvars.iv29
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.cb ; 4 uses
  %i.cd = mul i64 %i.s, %indvars.iv29
  %i.ce = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.cd ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 3 uses
  %i.cf = or disjoint i64 %index, 1               ; 5 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %index
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %wide.load = load <4 x float>, ptr %i.ch, align 4, !tbaa !76, !alias.scope !160
  %i.ci = getelementptr [4 x i8], ptr %i.by, i64 %i.cf
  %i.cj = getelementptr i8, ptr %i.ci, i64 -4
  %wide.load103 = load <4 x float>, ptr %i.cj, align 4, !tbaa !76, !alias.scope !160
  %i.ck = fsub <4 x float> %wide.load, %wide.load103
  %i.cl = fmul <4 x float> %i.ck, splat (float 5.000000e-01)
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %i.cf
  store <4 x float> %i.cl, ptr %i.cm, align 4, !tbaa !76, !alias.scope !161, !noalias !162
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %i.cf
  %wide.load104 = load <4 x float>, ptr %i.cn, align 4, !tbaa !76, !alias.scope !163
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %i.cf
  %wide.load105 = load <4 x float>, ptr %i.co, align 4, !tbaa !76, !alias.scope !164
  %i.cp = fsub <4 x float> %wide.load104, %wide.load105
  %i.cq = fmul <4 x float> %i.cp, splat (float 5.000000e-01)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.cf
  store <4 x float> %i.cq, ptr %i.cr, align 4, !tbaa !76, !alias.scope !165, !noalias !166
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cs = icmp eq i64 %index.next, %n.vec
  br i1 %i.cs, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.br, %middle.block ], [ 1, %.lr.ph ] ; 8 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1 ; 2 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.prol
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !76
  %i.cv = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv.ph
  %i.cw = getelementptr i8, ptr %i.cv, i64 -4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !76
  %i.cy = fsub float %i.cu, %i.cx
  %i.cz = fmul float %i.cy, 5.000000e-01
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.ph
  store float %i.cz, ptr %i.da, align 4, !tbaa !76
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.ph
  %i.dc = load float, ptr %i.db, align 4, !tbaa !76
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.ph
  %i.de = load float, ptr %i.dd, align 4, !tbaa !76
  %i.df = fsub float %i.dc, %i.de
  %i.dg = fmul float %i.df, 5.000000e-01
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.ph
  store float %i.dg, ptr %i.dh, align 4, !tbaa !76
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.di = icmp eq i64 %indvars.iv.ph, %i.bt
  br i1 %i.di, label %..loopexit_crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 6 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !76
  %i.dl = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv
  %i.dm = getelementptr i8, ptr %i.dl, i64 -4
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !76
  %i.do = fsub float %i.dk, %i.dn
  %i.dp = fmul float %i.do, 5.000000e-01
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv
  store float %i.dp, ptr %i.dq, align 4, !tbaa !76
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !76
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv
  %i.du = load float, ptr %i.dt, align 4, !tbaa !76
  %i.dv = fsub float %i.ds, %i.du
  %i.dw = fmul float %i.dv, 5.000000e-01
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv
  store float %i.dw, ptr %i.dx, align 4, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %indvars.iv.next.1
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !76
  %i.ea = getelementptr [4 x i8], ptr %i.by, i64 %indvars.iv.next
  %i.eb = getelementptr i8, ptr %i.ea, i64 -4
  %i.ec = load float, ptr %i.eb, align 4, !tbaa !76
  %i.ed = fsub float %i.dz, %i.ec
  %i.ee = fmul float %i.ed, 5.000000e-01
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cc, i64 %indvars.iv.next
  store float %i.ee, ptr %i.ef, align 4, !tbaa !76
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.next
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !76
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.next
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !76
  %i.ek = fsub float %i.eh, %i.ej
  %i.el = fmul float %i.ek, 5.000000e-01
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next
  store float %i.el, ptr %i.em, align 4, !tbaa !76
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !159
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK2cv7optflow19ForwardGradientBodyclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(632) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !61   ; 3 uses
  %i.c = add i32 %i.b, -1
  %i.d = load i32, ptr %1, align 4, !tbaa !70     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !71   ; 2 uses
  %i.g = icmp slt i32 %i.d, %i.f
  br i1 %i.g, label %.lr.ph26, label %._crit_edge.split

.lr.ph26:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !74   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.k = load i64, ptr %i.j, align 8, !tbaa !67   ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.o = load i64, ptr %i.n, align 8, !tbaa !67   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !74   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.s = load i64, ptr %i.r, align 8, !tbaa !67   ; 4 uses
  %i.t = icmp sgt i32 %i.b, 1
  br i1 %i.t, label %.lr.ph.preheader, label %._crit_edge.split

.lr.ph.preheader:                                 ; preds = %.lr.ph26
  %i.u = sext i32 %i.d to i64                     ; 5 uses
  %wide.trip.count31 = sext i32 %i.f to i64       ; 3 uses
  %wide.trip.count = zext i32 %i.c to i64         ; 6 uses
  %2 = add nsw i64 %wide.trip.count31, -1         ; 3 uses
  %i.v = mul i64 %i.k, %2
  %i.w = shl nuw nsw i64 %wide.trip.count, 2      ; 4 uses
  %i.x = getelementptr i8, ptr %i.i, i64 %i.v
  %i.y = getelementptr i8, ptr %i.x, i64 %i.w
  %scevgep = getelementptr i8, ptr %i.y, i64 4    ; 2 uses
  %i.z = mul i64 %i.k, %i.u
  %scevgep58 = getelementptr i8, ptr %i.i, i64 %i.z ; 2 uses
  %i.aa = mul i64 %i.k, %wide.trip.count31
  %i.ab = getelementptr i8, ptr %i.i, i64 %i.aa
  %scevgep59.a = getelementptr i8, ptr %i.ab, i64 %i.w ; 2 uses
  %3 = add nsw i64 %i.u, 1
  %i.ac = mul i64 %i.k, %3
  %scevgep60 = getelementptr i8, ptr %i.i, i64 %i.ac ; 2 uses
  %i.ad = mul i64 %i.s, %2
  %i.ae = getelementptr i8, ptr %i.q, i64 %i.ad
  %scevgep61 = getelementptr i8, ptr %i.ae, i64 %i.w ; 3 uses
  %i.af = mul i64 %i.s, %i.u
  %scevgep62 = getelementptr i8, ptr %i.q, i64 %i.af ; 3 uses
  %i.ag = mul i64 %i.o, %2
  %i.ah = getelementptr i8, ptr %i.m, i64 %i.ag
  %scevgep63 = getelementptr i8, ptr %i.ah, i64 %i.w ; 3 uses
  %i.ai = mul i64 %i.o, %i.u
  %scevgep64 = getelementptr i8, ptr %i.m, i64 %i.ai ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 13
  %bound0 = icmp ult ptr %scevgep64, %scevgep61
  %bound1 = icmp ult ptr %scevgep62, %scevgep63
  %found.conflict = and i1 %bound0, %bound1
  %i.aj = or i64 %i.s, %i.o
  %i.ak = icmp slt i64 %i.aj, 0
  %i.al = or i1 %found.conflict, %i.ak
  %bound066 = icmp ult ptr %scevgep64, %scevgep59.a
  %bound167 = icmp ult ptr %scevgep60, %scevgep63
  %found.conflict68 = and i1 %bound066, %bound167
  %stride.check69 = icmp slt i64 %i.k, 0
  %i.am = or i1 %found.conflict68, %stride.check69
  %conflict.rdx = or i1 %i.al, %i.am
  %bound070 = icmp ult ptr %scevgep64, %scevgep
  %bound171 = icmp ult ptr %scevgep58, %scevgep63
  %found.conflict72 = and i1 %bound070, %bound171
  %conflict.rdx73 = or i1 %conflict.rdx, %found.conflict72
  %bound074 = icmp ult ptr %scevgep62, %scevgep59.a
  %bound175 = icmp ult ptr %scevgep60, %scevgep61
  %found.conflict76 = and i1 %bound074, %bound175
  %conflict.rdx77 = or i1 %conflict.rdx73, %found.conflict76
  %bound078 = icmp ult ptr %scevgep62, %scevgep
  %bound179 = icmp ult ptr %scevgep58, %scevgep61
  %found.conflict80 = and i1 %bound078, %bound179
  %conflict.rdx81 = or i1 %conflict.rdx77, %found.conflict80
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.an = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

..loopexit_crit_edge:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %._crit_edge.split, label %.lr.ph, !llvm.loop !167

._crit_edge.split:                                ; preds = %..loopexit_crit_edge, %.lr.ph26, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..loopexit_crit_edge
  %indvars.iv28 = phi i64 [ %i.u, %.lr.ph.preheader ], [ %indvars.iv.next29, %..loopexit_crit_edge ] ; 4 uses
  %i.ao = mul i64 %i.k, %indvars.iv28
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ao ; 8 uses
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, 1 ; 3 uses
  %i.aq = mul i64 %i.k, %indvars.iv.next29
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aq ; 4 uses
  %i.as = mul i64 %i.o, %indvars.iv28
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.as ; 4 uses
  %i.au = mul i64 %i.s, %indvars.iv28
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.au ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx81
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 6 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %wide.load = load <4 x float>, ptr %i.ax, align 4, !tbaa !76, !alias.scope !175
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %index
  %wide.load82 = load <4 x float>, ptr %i.ay, align 4, !tbaa !76, !alias.scope !175 ; 2 uses
  %i.az = fsub <4 x float> %wide.load, %wide.load82
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index
  store <4 x float> %i.az, ptr %i.ba, align 4, !tbaa !76, !alias.scope !176, !noalias !177
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index
  %wide.load83 = load <4 x float>, ptr %i.bb, align 4, !tbaa !76, !alias.scope !178
  %i.bc = fsub <4 x float> %wide.load83, %wide.load82
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index
  store <4 x float> %i.bc, ptr %i.bd, align 4, !tbaa !76, !alias.scope !179, !noalias !180
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 7 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.prol
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !76
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.ph ; 2 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !76
  %i.bj = fsub float %i.bg, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.ph
  store float %i.bj, ptr %i.bk, align 4, !tbaa !76
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.ph
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !76
  %i.bn = load float, ptr %i.bh, align 4, !tbaa !76
  %i.bo = fsub float %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.ph
  store float %i.bo, ptr %i.bp, align 4, !tbaa !76
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.bq = icmp eq i64 %indvars.iv.ph, %i.an
  br i1 %i.bq, label %..loopexit_crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 5 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  %i.bs = load float, ptr %i.br, align 4, !tbaa !76
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv ; 2 uses
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !76
  %i.bv = fsub float %i.bs, %i.bu
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv
  store float %i.bv, ptr %i.bw, align 4, !tbaa !76
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.by = load float, ptr %i.bx, align 4, !tbaa !76
  %i.bz = load float, ptr %i.bt, align 4, !tbaa !76
  %i.ca = fsub float %i.by, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  store float %i.ca, ptr %i.cb, align 4, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next.1
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !76
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv.next ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !76
  %i.cg = fsub float %i.cd, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next
  store float %i.cg, ptr %i.ch, align 4, !tbaa !76
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !76
  %i.ck = load float, ptr %i.ce, align 4, !tbaa !76
  %i.cl = fsub float %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next
  store float %i.cl, ptr %i.cm, align 4, !tbaa !76
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %scalar.ph, !llvm.loop !174
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK2cv7optflow14DivergenceBodyclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(632) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !70     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !71   ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph26, label %._crit_edge27.split

.lr.ph26:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.l = load i64, ptr %i.k, align 8, !tbaa !67   ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.p = load i64, ptr %i.o, align 8, !tbaa !67   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !61   ; 3 uses
  %i.s = icmp sgt i32 %i.r, 1
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge27.split

.lr.ph.preheader:                                 ; preds = %.lr.ph26
  %i.t = sext i32 %i.a to i64                     ; 5 uses
  %wide.trip.count32 = sext i32 %i.c to i64       ; 3 uses
  %wide.trip.count = zext nneg i32 %i.r to i64    ; 5 uses
  %i.u = add nsw i64 %wide.trip.count32, -1       ; 3 uses
  %i.v = mul i64 %i.l, %i.u
  %i.w = shl nuw nsw i64 %wide.trip.count, 2      ; 4 uses
  %i.x = getelementptr i8, ptr %i.j, i64 %i.v
  %scevgep = getelementptr i8, ptr %i.x, i64 %i.w
  %i.y = mul i64 %i.l, %i.t
  %i.z = getelementptr i8, ptr %i.j, i64 %i.y
  %scevgep52 = getelementptr i8, ptr %i.z, i64 4
  %i.aa = add nsw i64 %wide.trip.count32, -2
  %i.ab = mul i64 %i.l, %i.aa
  %i.ac = getelementptr i8, ptr %i.j, i64 %i.ab
  %scevgep53 = getelementptr i8, ptr %i.ac, i64 %i.w
  %2 = add nsw i64 %i.t, -1
  %i.ad = mul i64 %i.l, %2
  %i.ae = getelementptr i8, ptr %i.j, i64 %i.ad
  %scevgep54 = getelementptr i8, ptr %i.ae, i64 4
  %i.af = mul i64 %i.h, %i.u
  %i.ag = getelementptr i8, ptr %i.f, i64 %i.af
  %scevgep55 = getelementptr i8, ptr %i.ag, i64 %i.w
  %i.ah = mul i64 %i.h, %i.t
  %scevgep56 = getelementptr i8, ptr %i.f, i64 %i.ah
  %i.ai = mul i64 %i.p, %i.u
  %i.aj = getelementptr i8, ptr %i.n, i64 %i.ai
  %scevgep57 = getelementptr i8, ptr %i.aj, i64 %i.w ; 3 uses
  %i.ak = mul i64 %i.p, %i.t
  %i.al = getelementptr i8, ptr %i.n, i64 %i.ak
  %scevgep58 = getelementptr i8, ptr %i.al, i64 4 ; 3 uses
  %i.am = add nsw i64 %wide.trip.count, -1        ; 2 uses
  %min.iters.check = icmp ult i32 %i.r, 9
  %bound0 = icmp ult ptr %scevgep58, %scevgep55
  %bound1 = icmp ult ptr %scevgep56, %scevgep57
  %found.conflict = and i1 %bound0, %bound1
  %i.an = or i64 %i.h, %i.p
  %i.ao = icmp slt i64 %i.an, 0
  %i.ap = or i1 %found.conflict, %i.ao
  %bound060 = icmp ult ptr %scevgep58, %scevgep53
  %bound161 = icmp ult ptr %scevgep54, %scevgep57
  %found.conflict62 = and i1 %bound060, %bound161
  %stride.check63 = icmp slt i64 %i.l, 0
  %i.aq = or i1 %found.conflict62, %stride.check63
  %conflict.rdx = or i1 %i.ap, %i.aq
  %bound064 = icmp ult ptr %scevgep58, %scevgep
  %bound165 = icmp ult ptr %scevgep52, %scevgep57
  %found.conflict66 = and i1 %bound064, %bound165
  %conflict.rdx67 = or i1 %conflict.rdx, %found.conflict66
  %n.vec = and i64 %i.am, -8                      ; 3 uses
  %i.ar = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.am, %n.vec
  %i.as = and i64 %wide.trip.count, 1
  %lcmp.mod.not.not = icmp eq i64 %i.as, 0
  %i.at = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

._crit_edge27.split:                              ; preds = %._crit_edge, %.lr.ph26, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv29 = phi i64 [ %i.t, %.lr.ph.preheader ], [ %indvars.iv.next30, %._crit_edge ] ; 5 uses
  %i.au = mul i64 %i.h, %indvars.iv29
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.au ; 4 uses
  %i.aw = add nsw i64 %indvars.iv29, -1
  %i.ax = mul i64 %i.l, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.ax ; 4 uses
  %i.az = mul i64 %i.l, %indvars.iv29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.az ; 4 uses
  %i.bb = mul i64 %i.p, %indvars.iv29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bb ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx67
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 2 uses
  %i.bd = or disjoint i64 %index, 1               ; 4 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bd ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load = load <4 x float>, ptr %i.be, align 4, !tbaa !76, !alias.scope !189
  %wide.load68 = load <4 x float>, ptr %i.bf, align 4, !tbaa !76, !alias.scope !189
  %i.bg = getelementptr i8, ptr %i.be, i64 -4
  %i.bh = getelementptr i8, ptr %i.be, i64 12
  %wide.load69 = load <4 x float>, ptr %i.bg, align 4, !tbaa !76, !alias.scope !189
  %wide.load70 = load <4 x float>, ptr %i.bh, align 4, !tbaa !76, !alias.scope !189
  %i.bi = fsub <4 x float> %wide.load, %wide.load69
  %i.bj = fsub <4 x float> %wide.load68, %wide.load70
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %i.bd ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load71 = load <4 x float>, ptr %i.bk, align 4, !tbaa !76, !alias.scope !190
  %wide.load72 = load <4 x float>, ptr %i.bl, align 4, !tbaa !76, !alias.scope !190
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bd ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load73 = load <4 x float>, ptr %i.bm, align 4, !tbaa !76, !alias.scope !191
  %wide.load74 = load <4 x float>, ptr %i.bn, align 4, !tbaa !76, !alias.scope !191
  %i.bo = fsub <4 x float> %wide.load71, %wide.load73
  %i.bp = fsub <4 x float> %wide.load72, %wide.load74
  %i.bq = fadd <4 x float> %i.bi, %i.bo
  %i.br = fadd <4 x float> %i.bj, %i.bp
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %i.bd ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <4 x float> %i.bq, ptr %i.bs, align 4, !tbaa !76, !alias.scope !192, !noalias !193
  store <4 x float> %i.br, ptr %i.bt, align 4, !tbaa !76, !alias.scope !192, !noalias !193
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bu = icmp eq i64 %index.next, %n.vec
  br i1 %i.bu, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ar, %middle.block ], [ 1, %.lr.ph ] ; 7 uses
  br i1 %lcmp.mod.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.ph ; 2 uses
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !76
  %i.bx = getelementptr i8, ptr %i.bv, i64 -4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !76
  %i.bz = fsub float %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.ph
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !76
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.ph
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !76
  %i.ce = fsub float %i.cb, %i.cd
  %i.cf = fadd float %i.bz, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.ph
  store float %i.cf, ptr %i.cg, align 4, !tbaa !76
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ch = icmp eq i64 %indvars.iv.ph, %i.at
  br i1 %i.ch, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count32
  br i1 %exitcond33.not, label %._crit_edge27.split, label %.lr.ph, !llvm.loop !187

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.cj = load float, ptr %i.ci, align 4, !tbaa !76
  %i.ck = getelementptr i8, ptr %i.ci, i64 -4
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !76
  %i.cm = fsub float %i.cj, %i.cl
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv
  %i.co = load float, ptr %i.cn, align 4, !tbaa !76
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !76
  %i.cr = fsub float %i.co, %i.cq
  %i.cs = fadd float %i.cm, %i.cr
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  store float %i.cs, ptr %i.ct, align 4, !tbaa !76
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !76
  %i.cw = getelementptr i8, ptr %i.cu, i64 -4
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !76
  %i.cy = fsub float %i.cv, %i.cx
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv.next
  %i.da = load float, ptr %i.cz, align 4, !tbaa !76
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.next
  %i.dc = load float, ptr %i.db, align 4, !tbaa !76
  %i.dd = fsub float %i.da, %i.dc
  %i.de = fadd float %i.cy, %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.next
  store float %i.de, ptr %i.df, align 4, !tbaa !76
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !188
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK2cv7optflow15CalcGradRhoBodyclERKNS_5RangeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1672) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) unnamed_addr #6 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !70     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !71   ; 2 uses
  %i.d = icmp slt i32 %i.a, %i.c
  br i1 %i.d, label %.lr.ph44, label %._crit_edge45.split

.lr.ph44:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !74   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.h = load i64, ptr %i.g, align 8, !tbaa !67   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !74   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.l = load i64, ptr %i.k, align 8, !tbaa !67   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74   ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.p = load i64, ptr %i.o, align 8, !tbaa !67   ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !74   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.t = load i64, ptr %i.s, align 8, !tbaa !67   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !74   ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 968
  %i.x = load i64, ptr %i.w, align 8, !tbaa !67   ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !74   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !67 ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 1280
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1384
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !67 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !74 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !67 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !61 ; 3 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph.preheader, label %._crit_edge45.split

.lr.ph.preheader:                                 ; preds = %.lr.ph44
  %i.an = sext i32 %i.a to i64                    ; 9 uses
  %wide.trip.count50 = sext i32 %i.c to i64       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.al to i64   ; 4 uses
end_hunk_0
begin_hunk_1_@llvm.memset.p0.i64
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn }
attributes #19 = { builtin nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !57}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"double", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"_ZTSN2cv9AlgorithmE"}
!14 = !{!"_ZTSN2cv16DenseOpticalFlowE", !13, i64 0}
!15 = !{!"_ZTSN2cv7optflow19DualTVL1OpticalFlowE", !14, i64 0}
!16 = !{!"bool", !5, i64 0}
!17 = !{!"any pointer", !5, i64 0}
!18 = !{!"p1 _ZTSN2cv4Mat_IfEE", !17, i64 0}
!19 = !{!"_ZTSNSt12_Vector_baseIN2cv4Mat_IfEESaIS2_EE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!20 = !{!"_ZTSNSt12_Vector_baseIN2cv4Mat_IfEESaIS2_EE12_Vector_implE", !19, i64 0}
!21 = !{!"_ZTSSt12_Vector_baseIN2cv4Mat_IfEESaIS2_EE", !20, i64 0}
!22 = !{!"_ZTSSt6vectorIN2cv4Mat_IfEESaIS2_EE", !21, i64 0}
!23 = !{!"p1 omnipotent char", !17, i64 0}
!24 = !{!"p1 _ZTSN2cv12MatAllocatorE", !17, i64 0}
!25 = !{!"p1 _ZTSN2cv8UMatDataE", !17, i64 0}
!26 = !{!"_ZTSN2cv10DataLayoutE", !5, i64 0}
!27 = !{!"_ZTSN2cv8MatShapeE", !6, i64 0, !26, i64 4, !6, i64 8, !5, i64 12}
!28 = !{!"_ZTSN2cv7MatStepE", !5, i64 0}
!29 = !{!"_ZTSN2cv3MatE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !23, i64 24, !23, i64 32, !23, i64 40, !23, i64 48, !24, i64 56, !25, i64 64, !27, i64 72, !28, i64 128}
!30 = !{!"_ZTSN2cv4Mat_IfEE", !29, i64 0}
!31 = !{!"_ZTSN2cv7optflow20OpticalFlowDual_TVL17dataMatE", !22, i64 0, !22, i64 24, !22, i64 48, !22, i64 72, !22, i64 96, !30, i64 120, !30, i64 328, !30, i64 536, !30, i64 744, !30, i64 952, !30, i64 1160, !30, i64 1368, !30, i64 1576, !30, i64 1784, !30, i64 1992, !30, i64 2200, !30, i64 2408, !30, i64 2616, !30, i64 2824, !30, i64 3032, !30, i64 3240, !30, i64 3448, !30, i64 3656, !30, i64 3864, !30, i64 4072, !30, i64 4280, !30, i64 4488, !30, i64 4696, !30, i64 4904, !30, i64 5112, !30, i64 5320, !30, i64 5528}
!32 = !{!"_ZTSN2cv7optflow20OpticalFlowDual_TVL1E", !15, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !6, i64 40, !6, i64 44, !11, i64 48, !6, i64 56, !6, i64 60, !16, i64 64, !11, i64 72, !6, i64 80, !31, i64 88}
!33 = !{!32, !6, i64 40}
!34 = !{!32, !6, i64 44}
!35 = !{!32, !11, i64 48}
!36 = !{!32, !6, i64 56}
!37 = !{!32, !6, i64 60}
!38 = !{!32, !16, i64 64}
!39 = !{!32, !6, i64 80}
!40 = !{!32, !11, i64 72}
!41 = !{!29, !6, i64 0}
!42 = !{!"_ZTSN2cv5Size_IiEE", !6, i64 0, !6, i64 4}
!43 = !{!"_ZTSN2cv11_InputArrayE", !6, i64 0, !17, i64 8, !42, i64 16}
!44 = !{!43, !17, i64 8}
!45 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!46 = !{!"long", !5, i64 0}
!47 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !45, i64 0, !46, i64 8, !5, i64 16}
!48 = !{!47, !23, i64 0}
!49 = !{!5, !5, i64 0}
!50 = !{!27, !6, i64 0}
!51 = !{!6, !6, i64 0}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!32, !11, i64 32}
!55 = !{!19, !18, i64 8}
!56 = !{!19, !18, i64 0}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!43, !6, i64 0}
!59 = !{!42, !6, i64 0}
!60 = !{!42, !6, i64 4}
!61 = !{!29, !6, i64 12}
!62 = !{!29, !6, i64 8}
!63 = !{!"p1 _ZTSN2cv5utils5trace7details6Region4ImplE", !17, i64 0}
!64 = !{!"_ZTSN2cv5utils5trace7details6RegionE", !63, i64 0, !6, i64 8}
!65 = !{!64, !6, i64 8}
!66 = !{!45, !23, i64 0}
!67 = !{!46, !46, i64 0}
!68 = !{!47, !46, i64 8}
!69 = !{!"_ZTSN2cv5RangeE", !6, i64 0, !6, i64 4}
!70 = !{!69, !6, i64 0}
!71 = !{!69, !6, i64 4}
!72 = !{ptr @_ZN2cv7optflow20CenteredGradientBodyD2Ev}
!73 = !{!29, !6, i64 4}
!74 = !{!29, !23, i64 24}
!75 = !{!"float", !5, i64 0}
!76 = !{!75, !75, i64 0}
!77 = !{!32, !11, i64 16}
!78 = !{!32, !11, i64 24}
!79 = !{!32, !11, i64 8}
!80 = !{ptr @_ZN2cv7optflow16BuildFlowMapBodyD2Ev}
!81 = !{ptr @_ZN2cv7optflow15CalcGradRhoBodyD2Ev}
!82 = !{!"_ZTSN2cv16ParallelLoopBodyE"}
!83 = !{!"_ZTSN2cv7optflow13EstimateVBodyE", !82, i64 0, !30, i64 8, !30, i64 216, !30, i64 424, !30, i64 632, !30, i64 840, !30, i64 1048, !30, i64 1256, !30, i64 1464, !30, i64 1672, !30, i64 1880, !75, i64 2088, !75, i64 2092}
!84 = !{!83, !75, i64 2088}
!85 = !{!83, !75, i64 2092}
!86 = !{ptr @_ZN2cv7optflow13EstimateVBodyD2Ev}
!87 = !{!"_ZTSN2cv7optflow25EstimateDualVariablesBodyE", !82, i64 0, !30, i64 8, !30, i64 216, !30, i64 424, !30, i64 632, !30, i64 840, !30, i64 1048, !30, i64 1256, !30, i64 1464, !30, i64 1672, !30, i64 1880, !30, i64 2088, !30, i64 2296, !75, i64 2504, !16, i64 2508}
!88 = !{!87, !75, i64 2504}
!89 = !{!87, !16, i64 2508}
!90 = !{ptr @_ZN2cv7optflow25EstimateDualVariablesBodyD2Ev}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = !{ptr @_ZN2cv7optflow14DivergenceBodyD2Ev}
!94 = !{ptr @_ZN2cv7optflow19ForwardGradientBodyD2Ev}
!95 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !6, i64 8, !6, i64 12}
!96 = !{!95, !6, i64 8}
!97 = !{!95, !6, i64 12}
!98 = !{!"p1 _ZTSN2cv7optflow19DualTVL1OpticalFlowE", !17, i64 0}
!99 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!100 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !99, i64 0}
!101 = !{!"_ZTSSt12__shared_ptrIN2cv7optflow19DualTVL1OpticalFlowELN9__gnu_cxx12_Lock_policyE2EE", !98, i64 0, !100, i64 8}
!102 = !{!101, !98, i64 0}
!103 = !{!100, !99, i64 0}
!104 = !{!19, !18, i64 16}
!105 = distinct !{!105, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!106 = distinct !{!106, !105, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!108 = distinct !{!108, !107, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!109 = distinct !{!109, i1 true, !"_ZNK2cv11_InputArray6getMatEi"}
!110 = distinct !{!110, !109, !"_ZNK2cv11_InputArray6getMatEi: argument 0"}
!111 = distinct !{!111, i1 true, !"_ZN2cv7Scalar_IdE3allEd"}
!112 = distinct !{!112, !111, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!113 = distinct !{!113, i1 true, !"_ZN2cv7Scalar_IdE3allEd"}
!114 = distinct !{!114, !113, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!115 = distinct !{!115, !57}
!116 = distinct !{!116, i1 true, !"_ZN2cv7Scalar_IdE3allEd"}
!117 = distinct !{!117, !116, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!118 = distinct !{!118, i1 true, !"_ZN2cv7Scalar_IdE3allEd"}
!119 = distinct !{!119, !118, !"_ZN2cv7Scalar_IdE3allEd: argument 0"}
!120 = !{!106}
!121 = !{!108}
!122 = !{!110}
!123 = !{!112}
!124 = !{!114}
!125 = !{!117}
!126 = !{!119}
!127 = distinct !{!127, !57}
!128 = distinct !{!128, !57}
!129 = distinct !{!129, !57}
!130 = distinct !{!130, !57}
!131 = distinct !{!131, !57}
!132 = distinct !{!132, !57}
!133 = distinct !{!133, !57}
!134 = !{!"_ZTSN2cv5Rect_IiEE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12}
!135 = !{!134, !6, i64 0}
!136 = !{!134, !6, i64 4}
!137 = distinct !{!137, i1 false, !"LVerDomain"}
!138 = distinct !{!138, !137}
!139 = distinct !{!139, !137}
!140 = distinct !{!140, !137}
!141 = distinct !{!141, !137}
!142 = distinct !{!142, !57, !91, !92}
!143 = distinct !{!143, !57}
!144 = distinct !{!144, !57, !91}
!145 = !{!138}
!146 = !{!139}
!147 = !{!141, !138, !140}
!148 = !{!140}
!149 = !{!141}
!150 = !{!138, !140}
!151 = distinct !{!151, !57}
!152 = distinct !{!152, i1 false, !"LVerDomain"}
!153 = distinct !{!153, !152}
!154 = distinct !{!154, !152}
!155 = distinct !{!155, !152}
!156 = distinct !{!156, !152}
!157 = distinct !{!157, !152}
!158 = distinct !{!158, !57, !91, !92}
!159 = distinct !{!159, !57, !91}
!160 = !{!153}
!161 = !{!154}
!162 = !{!157, !156, !155, !153}
!163 = !{!155}
!164 = !{!156}
!165 = !{!157}
!166 = !{!156, !155, !153}
!167 = distinct !{!167, !57}
!168 = distinct !{!168, i1 false, !"LVerDomain"}
!169 = distinct !{!169, !168}
!170 = distinct !{!170, !168}
!171 = distinct !{!171, !168}
!172 = distinct !{!172, !168}
!173 = distinct !{!173, !57, !91, !92}
!174 = distinct !{!174, !57, !91}
!175 = !{!169}
!176 = !{!170}
!177 = !{!172, !171, !169}
!178 = !{!171}
!179 = !{!172}
!180 = !{!171, !169}
!181 = distinct !{!181, i1 false, !"LVerDomain"}
!182 = distinct !{!182, !181}
!183 = distinct !{!183, !181}
!184 = distinct !{!184, !181}
!185 = distinct !{!185, !181}
!186 = distinct !{!186, !57, !91, !92}
!187 = distinct !{!187, !57}
!188 = distinct !{!188, !57, !91}
!189 = !{!182}
!190 = !{!183}
!191 = !{!184}
!192 = !{!185}
!193 = !{!182, !184, !183}
!194 = distinct !{!194, i1 false, !"LVerDomain"}
!195 = distinct !{!195, !194}
!196 = distinct !{!196, !194}
!197 = distinct !{!197, !194}
!198 = distinct !{!198, !194}
!199 = distinct !{!199, !194}
!200 = distinct !{!200, !194}
!201 = distinct !{!201, !194}
!202 = distinct !{!202, !194}
!203 = distinct !{!203, !57, !91, !92}
!204 = distinct !{!204, !57}
!205 = distinct !{!205, !57, !91}
!206 = !{!195}
!207 = !{!196}
!208 = !{!197}
!209 = !{!202, !195, !196, !201, !200, !199, !198}
!210 = !{!201}
!211 = !{!200}
!212 = !{!199}
!213 = !{!198}
!214 = !{!202}
!215 = !{!195, !196, !201, !200, !199, !198}
!216 = distinct !{!216, !57}
!217 = distinct !{!217, !57}
!218 = distinct !{!218, !57}
!219 = distinct !{!219, !57}
!220 = distinct !{!220, i1 false, !"LVerDomain"}
!221 = distinct !{!221, !220}
!222 = distinct !{!222, !220}
!223 = distinct !{!223, !220}
!224 = distinct !{!224, !57, !91, !92}
!225 = distinct !{!225, !57}
!226 = distinct !{!226, !57, !91}
!227 = !{!221}
!228 = !{!222}
!229 = !{!223}
!230 = !{!221, !222}
!231 = distinct !{!231, !57}
!232 = distinct !{!232, !57}
!233 = distinct !{!233, i1 true, !"_ZN2cvL7makePtrINS_7optflow20OpticalFlowDual_TVL1EJEEENS_3PtrIT_EEDpRKT0_"}
!234 = distinct !{!234, !233, !"_ZN2cvL7makePtrINS_7optflow20OpticalFlowDual_TVL1EJEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!235 = distinct !{!235, i1 true, !"_ZSt11make_sharedIN2cv7optflow20OpticalFlowDual_TVL1EJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_"}
!236 = distinct !{!236, !235, !"_ZSt11make_sharedIN2cv7optflow20OpticalFlowDual_TVL1EJEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueES5_E4typeEEDpOT0_: argument 0"}
!237 = distinct !{!237, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv7optflow20OpticalFlowDual_TVL1ESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!238 = distinct !{!238, !237, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv7optflow20OpticalFlowDual_TVL1ESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!239 = !{!238, !236, !234}
!240 = !{!236, !234}
!241 = distinct !{!241, i1 true, !"_ZN2cvL7makePtrINS_7optflow20OpticalFlowDual_TVL1EJdddiidiiddibEEENS_3PtrIT_EEDpRKT0_"}
!242 = distinct !{!242, !241, !"_ZN2cvL7makePtrINS_7optflow20OpticalFlowDual_TVL1EJdddiidiiddibEEENS_3PtrIT_EEDpRKT0_: argument 0"}
!243 = distinct !{!243, i1 true, !"_ZSt11make_sharedIN2cv7optflow20OpticalFlowDual_TVL1EJRKdS4_S4_RKiS6_S4_S6_S6_S4_S4_S6_RKbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_"}
!244 = distinct !{!244, !243, !"_ZSt11make_sharedIN2cv7optflow20OpticalFlowDual_TVL1EJRKdS4_S4_RKiS6_S4_S6_S6_S4_S4_S6_RKbEESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESB_E4typeEEDpOT0_: argument 0"}
!245 = distinct !{!245, i1 true, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv7optflow20OpticalFlowDual_TVL1ESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_"}
!246 = distinct !{!246, !245, !"_ZSt18__allocate_guardedISaISt23_Sp_counted_ptr_inplaceIN2cv7optflow20OpticalFlowDual_TVL1ESaIvELN9__gnu_cxx12_Lock_policyE2EEEESt15__allocated_ptrIT_ERSA_: argument 0"}
!247 = !{!246, !244, !242}
!248 = !{!244, !242}
!249 = !{ptr @_ZN2cv7optflow20OpticalFlowDual_TVL1D2Ev}
!250 = distinct !{!250, !57}
!251 = distinct !{!251, !57}
!252 = distinct !{null}
!253 = !{!"_ZTSSt9type_info", !23, i64 8}
!254 = !{!253, !23, i64 8}
end_hunk_1
