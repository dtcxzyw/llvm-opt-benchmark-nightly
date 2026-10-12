Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/layernorm?download=true
inline.NumInlined: 7
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4ncnn9LayerNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined:bb.a
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph71 ], [ %i.eg, %vector.body75 ]
  %vec.phi77 = phi <4 x float> [ zeroinitializer, %vector.ph71 ], [ %i.eh, %vector.body75 ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index76 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load78 = load <4 x float>, ptr %i.ea, align 4, !tbaa !44
  %wide.load79 = load <4 x float>, ptr %i.eb, align 4, !tbaa !44
  %i.ec = fsub fast <4 x float> %wide.load78, %broadcast.splat74 ; 2 uses
  %i.ed = fsub fast <4 x float> %wide.load79, %broadcast.splat74 ; 2 uses
  %i.ee = fmul fast <4 x float> %i.ec, %i.ec
  %i.ef = fmul fast <4 x float> %i.ed, %i.ed
  %i.eg = fadd fast <4 x float> %i.ee, %vec.phi   ; 2 uses
  %i.eh = fadd fast <4 x float> %i.ef, %vec.phi77 ; 2 uses
  %index.next80 = add nuw i64 %index76, 8         ; 2 uses
  %i.ei = icmp eq i64 %index.next80, %n.vec72
  br i1 %i.ei, label %middle.block81, label %vector.body75, !llvm.loop !88

middle.block81:                                   ; preds = %vector.body75
  %bin.rdx = fadd fast <4 x float> %i.eh, %i.eg
  %i.ej = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n82, label %._crit_edge63.i.loopexit.us35, label %.lr.ph62.i.us30.preheader

.lr.ph62.i.us30.preheader:                        ; preds = %.lr.ph62.preheader.i.us28, %middle.block81
  %indvars.iv72.i.us31.ph = phi i64 [ 0, %.lr.ph62.preheader.i.us28 ], [ %n.vec72, %middle.block81 ]
  %.05059.i.us32.ph = phi float [ 0.000000e+00, %.lr.ph62.preheader.i.us28 ], [ %i.ej, %middle.block81 ]
  br label %.lr.ph62.i.us30

.lr.ph62.i.us30:                                  ; preds = %.lr.ph62.i.us30.preheader, %.lr.ph62.i.us30
  %indvars.iv72.i.us31 = phi i64 [ %indvars.iv.next73.i.us33, %.lr.ph62.i.us30 ], [ %indvars.iv72.i.us31.ph, %.lr.ph62.i.us30.preheader ] ; 2 uses
  %.05059.i.us32 = phi float [ %i.eo, %.lr.ph62.i.us30 ], [ %.05059.i.us32.ph, %.lr.ph62.i.us30.preheader ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv72.i.us31
  %i.el = load float, ptr %i.ek, align 4, !tbaa !44
  %i.em = fsub fast float %i.el, %i.dz            ; 2 uses
  %i.en = fmul fast float %i.em, %i.em
  %i.eo = fadd fast float %i.en, %.05059.i.us32   ; 2 uses
  %indvars.iv.next73.i.us33 = add nuw nsw i64 %indvars.iv72.i.us31, 1 ; 2 uses
  %exitcond76.not.i.us34 = icmp eq i64 %indvars.iv.next73.i.us33, %wide.trip.count.i
  br i1 %exitcond76.not.i.us34, label %._crit_edge63.i.loopexit.us35, label %.lr.ph62.i.us30, !llvm.loop !89

._crit_edge63.i.loopexit.us35:                    ; preds = %.lr.ph62.i.us30, %middle.block81
  %.lcssa66 = phi float [ %i.ej, %middle.block81 ], [ %i.eo, %.lr.ph62.i.us30 ]
  %i.ep = fmul fast float %.lcssa66, %i.dn
  %i.eq = fadd fast float %i.ep, %i.dp
  %i.er = call fast float @llvm.sqrt.f32(float %i.eq) ; 2 uses
  br i1 %min.iters.check, label %.lr.ph66.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge63.i.loopexit.us35
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.er, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert67 = insertelement <4 x float> poison, float %i.dz, i64 0
  %broadcast.splat68 = shufflevector <4 x float> %broadcast.splatinsert67, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = fdiv fast <4 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.et, align 4, !tbaa !44
  %i.eu = fsub fast <4 x float> %wide.load, %broadcast.splat68
  %i.ev = fmul fast <4 x float> %i.eu, %i.es
  store <4 x float> %i.ev, ptr %i.et, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit16.us, label %.lr.ph66.i.us.preheader

.lr.ph66.i.us.preheader:                          ; preds = %._crit_edge63.i.loopexit.us35, %middle.block
  %indvars.iv77.i.us.ph = phi i64 [ 0, %._crit_edge63.i.loopexit.us35 ], [ %n.vec, %middle.block ]
  %i.ex = fdiv fast float 1.000000e+00, %i.er
  br label %.lr.ph66.i.us

.lr.ph66.i.us:                                    ; preds = %.lr.ph66.i.us.preheader, %.lr.ph66.i.us
  %indvars.iv77.i.us = phi i64 [ %indvars.iv.next78.i.us, %.lr.ph66.i.us ], [ %indvars.iv77.i.us.ph, %.lr.ph66.i.us.preheader ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv77.i.us ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !44
  %i.fa = fsub fast float %i.ez, %i.dz
  %i.fb = fmul fast float %i.fa, %i.ex
  store float %i.fb, ptr %i.ey, align 4, !tbaa !44
  %indvars.iv.next78.i.us = add nuw nsw i64 %indvars.iv77.i.us, 1 ; 2 uses
  %exitcond81.not.i.us = icmp eq i64 %indvars.iv.next78.i.us, %wide.trip.count.i
  br i1 %exitcond81.not.i.us, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit16.us, label %.lr.ph66.i.us, !llvm.loop !91

_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit16.us: ; preds = %.lr.ph66.i.us, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.dm, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.preheader.i.us22

._crit_edge:                                      ; preds = %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit16.us, %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us, %.lr.ph.split, %.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #10

; Function Attrs: nounwind
declare !callback !50 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #10

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9LayerNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not33 = icmp sgt i32 %i.k, %i.j
  br i1 %.not33, label %._crit_edge35.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = load i32, ptr %3, align 4, !tbaa !41     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 212 ; 2 uses
  br i1 %i.m, label %.preheader.lr.ph.split, label %._crit_edge35.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 296
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43, !noalias !115
  %i.u = load ptr, ptr %4, align 8, !tbaa !19, !noalias !115 ; 3 uses
  %i.v = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !115 ; 3 uses
  %i.w = load i64, ptr %i.q, align 8, !tbaa !40, !noalias !115 ; 5 uses
  %factor.op.mul36 = mul i64 %i.v, %i.w           ; 2 uses
  %i.x = sext i32 %i.t to i64                     ; 3 uses
  %factor.op.mul = mul i64 %i.w, %i.x             ; 2 uses
  %i.y = load ptr, ptr %i.p, align 8, !tbaa !19   ; 7 uses
  %i.z = load ptr, ptr %i.o, align 8, !tbaa !19   ; 7 uses
  %i.aa = load i32, ptr %6, align 4, !tbaa !41    ; 9 uses
  %i.ab = icmp sgt i32 %i.aa, 0                   ; 2 uses
  %wide.trip.count.i = zext i32 %i.aa to i64      ; 21 uses
  %i.ac = uitofp nneg i32 %i.aa to float          ; 3 uses
  %i.ad = fdiv fast float 1.000000e+00, %i.ac     ; 2 uses
  %i.ae = icmp ne ptr %i.y, null
  %i.af = icmp ne ptr %i.z, null
  %or.cond.i = and i1 %i.ae, %i.af
  br i1 %or.cond.i, label %.preheader.lr.ph.split.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.ag = sext i32 %i.k to i64
  %i.ah = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.l to i64
  %min.iters.check92 = icmp ult i32 %i.aa, 8
  %n.vec94 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n104 = icmp eq i64 %n.vec94, %wide.trip.count.i
  %min.iters.check77 = icmp ult i32 %i.aa, 8
  %n.vec79 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n89 = icmp eq i64 %n.vec79, %wide.trip.count.i
  %i.ai = fdiv fast float 1.000000e+00, %i.ac
  %min.iters.check = icmp ult i32 %i.aa, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph.split
  br i1 %i.ab, label %.preheader.us.us.preheader, label %._crit_edge35.split

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.split.us
  %i.aj = sext i32 %i.k to i64                    ; 2 uses
  %i.ak = add nsw i32 %i.j, 1
  %wide.trip.count54 = zext nneg i32 %i.l to i64  ; 2 uses
  %7 = mul i64 %i.v, %i.aj
  %8 = add nsw i64 %wide.trip.count54, -1
  %i.al = mul nsw i64 %8, %i.x
  %i.am = add i64 %7, %i.al
  %i.an = mul i64 %i.w, %i.am
  %i.ao = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %i.ap = mul i64 %i.v, %i.w
  %i.aq = mul i64 %i.w, %i.x
  %scevgep107 = getelementptr i8, ptr %i.y, i64 %i.ao
  %scevgep108 = getelementptr i8, ptr %i.z, i64 %i.ao
  %i.ar = getelementptr i8, ptr %i.u, i64 %i.an
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.ao
  %min.iters.check149 = icmp ult i32 %i.aa, 8
  %n.vec151 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n161 = icmp eq i64 %n.vec151, %wide.trip.count.i
  %min.iters.check131 = icmp ult i32 %i.aa, 8
  %n.vec133 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n145 = icmp eq i64 %n.vec133, %wide.trip.count.i
  %i.at = fdiv fast float 1.000000e+00, %i.ac
  %min.iters.check114 = icmp ult i32 %i.aa, 4
  %stride.check112 = icmp slt i64 %i.aq, 0
  %n.vec116 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n128 = icmp eq i64 %n.vec116, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.au = add nsw i64 %wide.trip.count.i, -1
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.split.us.us.split.us.us
  %indvar = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvar.next, %._crit_edge.split.us.us.split.us.us ] ; 2 uses
  %indvars.iv56 = phi i64 [ %i.aj, %.preheader.us.us.preheader ], [ %indvars.iv.next57, %._crit_edge.split.us.us.split.us.us ] ; 2 uses
  %i.av = mul i64 %i.ap, %indvar
  %scevgep = getelementptr i8, ptr %i.as, i64 %i.av ; 2 uses
  %.reass37.us.us = mul i64 %factor.op.mul36, %indvars.iv56
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 %.reass37.us.us ; 3 uses
  %bound0 = icmp ult ptr %i.aw, %scevgep107
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0109 = icmp ult ptr %i.aw, %scevgep108
  %bound1110 = icmp ult ptr %i.z, %scevgep
  %found.conflict111 = and i1 %bound0109, %bound1110
  %i.ax = or i1 %found.conflict111, %stride.check112
  %conflict.rdx = or i1 %found.conflict, %i.ax
  br label %.noexc22.us.us.us.us

.noexc22.us.us.us.us:                             ; preds = %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us, %.preheader.us.us
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us ], [ 0, %.preheader.us.us ] ; 2 uses
  %.reass.us.us.us.us = mul i64 %factor.op.mul, %indvars.iv51
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.reass.us.us.us.us ; 8 uses
  %i.az = load float, ptr %i.n, align 4, !tbaa !38
  br i1 %min.iters.check149, label %.lr.ph.i.us.us.us.us.preheader, label %vector.body152

vector.body152:                                   ; preds = %.noexc22.us.us.us.us, %vector.body152
  %index153 = phi i64 [ %index.next158, %vector.body152 ], [ 0, %.noexc22.us.us.us.us ] ; 2 uses
  %vec.phi154 = phi <4 x float> [ %i.bc, %vector.body152 ], [ zeroinitializer, %.noexc22.us.us.us.us ]
  %vec.phi155 = phi <4 x float> [ %i.bd, %vector.body152 ], [ zeroinitializer, %.noexc22.us.us.us.us ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index153 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load156 = load <4 x float>, ptr %i.ba, align 4, !tbaa !44
  %wide.load157 = load <4 x float>, ptr %i.bb, align 4, !tbaa !44
  %i.bc = fadd fast <4 x float> %wide.load156, %vec.phi154 ; 2 uses
  %i.bd = fadd fast <4 x float> %wide.load157, %vec.phi155 ; 2 uses
  %index.next158 = add nuw i64 %index153, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.be, label %middle.block159, label %vector.body152, !llvm.loop !98

middle.block159:                                  ; preds = %vector.body152
  %bin.rdx160 = fadd fast <4 x float> %i.bd, %i.bc
  %i.bf = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx160) ; 2 uses
  br i1 %cmp.n161, label %.lr.ph62.preheader.i.us.us.us.us, label %.lr.ph.i.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.preheader:                   ; preds = %.noexc22.us.us.us.us, %middle.block159
  %indvars.iv.i.us.us.us.us.ph = phi i64 [ 0, %.noexc22.us.us.us.us ], [ %n.vec151, %middle.block159 ]
  %.04858.i.us.us.us.us.ph = phi float [ 0.000000e+00, %.noexc22.us.us.us.us ], [ %i.bf, %middle.block159 ]
  br label %.lr.ph.i.us.us.us.us

.lr.ph.i.us.us.us.us:                             ; preds = %.lr.ph.i.us.us.us.us.preheader, %.lr.ph.i.us.us.us.us
  %indvars.iv.i.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us, %.lr.ph.i.us.us.us.us ], [ %indvars.iv.i.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.preheader ] ; 2 uses
  %.04858.i.us.us.us.us = phi float [ %i.bi, %.lr.ph.i.us.us.us.us ], [ %.04858.i.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.preheader ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv.i.us.us.us.us
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !44
  %i.bi = fadd fast float %i.bh, %.04858.i.us.us.us.us ; 2 uses
  %indvars.iv.next.i.us.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us.us = icmp eq i64 %indvars.iv.next.i.us.us.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.us.us, label %.lr.ph62.preheader.i.us.us.us.us, label %.lr.ph.i.us.us.us.us, !llvm.loop !99

.lr.ph62.preheader.i.us.us.us.us:                 ; preds = %.lr.ph.i.us.us.us.us, %middle.block159
  %.lcssa = phi float [ %i.bf, %middle.block159 ], [ %i.bi, %.lr.ph.i.us.us.us.us ]
  %i.bj = fmul fast float %.lcssa, %i.ad          ; 6 uses
  br i1 %min.iters.check131, label %.lr.ph62.i.us.us.us.us.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph62.preheader.i.us.us.us.us
  %broadcast.splatinsert134 = insertelement <4 x float> poison, float %i.bj, i64 0
  %broadcast.splat135 = shufflevector <4 x float> %broadcast.splatinsert134, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph132
  %index137 = phi i64 [ 0, %vector.ph132 ], [ %index.next142, %vector.body136 ] ; 2 uses
  %vec.phi138 = phi <4 x float> [ zeroinitializer, %vector.ph132 ], [ %i.bq, %vector.body136 ]
  %vec.phi139 = phi <4 x float> [ zeroinitializer, %vector.ph132 ], [ %i.br, %vector.body136 ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index137 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load140 = load <4 x float>, ptr %i.bk, align 4, !tbaa !44
  %wide.load141 = load <4 x float>, ptr %i.bl, align 4, !tbaa !44
  %i.bm = fsub fast <4 x float> %wide.load140, %broadcast.splat135 ; 2 uses
  %i.bn = fsub fast <4 x float> %wide.load141, %broadcast.splat135 ; 2 uses
  %i.bo = fmul fast <4 x float> %i.bm, %i.bm
  %i.bp = fmul fast <4 x float> %i.bn, %i.bn
  %i.bq = fadd fast <4 x float> %i.bo, %vec.phi138 ; 2 uses
  %i.br = fadd fast <4 x float> %i.bp, %vec.phi139 ; 2 uses
  %index.next142 = add nuw i64 %index137, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next142, %n.vec133
  br i1 %i.bs, label %middle.block143, label %vector.body136, !llvm.loop !100

middle.block143:                                  ; preds = %vector.body136
  %bin.rdx144 = fadd fast <4 x float> %i.br, %i.bq
  %i.bt = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx144) ; 2 uses
  br i1 %cmp.n145, label %._crit_edge63.i.loopexit.us.us.us.us, label %.lr.ph62.i.us.us.us.us.preheader

.lr.ph62.i.us.us.us.us.preheader:                 ; preds = %.lr.ph62.preheader.i.us.us.us.us, %middle.block143
  %indvars.iv72.i.us.us.us.us.ph = phi i64 [ 0, %.lr.ph62.preheader.i.us.us.us.us ], [ %n.vec133, %middle.block143 ]
  %.05059.i.us.us.us.us.ph = phi float [ 0.000000e+00, %.lr.ph62.preheader.i.us.us.us.us ], [ %i.bt, %middle.block143 ]
  br label %.lr.ph62.i.us.us.us.us

.lr.ph62.i.us.us.us.us:                           ; preds = %.lr.ph62.i.us.us.us.us.preheader, %.lr.ph62.i.us.us.us.us
  %indvars.iv72.i.us.us.us.us = phi i64 [ %indvars.iv.next73.i.us.us.us.us, %.lr.ph62.i.us.us.us.us ], [ %indvars.iv72.i.us.us.us.us.ph, %.lr.ph62.i.us.us.us.us.preheader ] ; 2 uses
  %.05059.i.us.us.us.us = phi float [ %i.by, %.lr.ph62.i.us.us.us.us ], [ %.05059.i.us.us.us.us.ph, %.lr.ph62.i.us.us.us.us.preheader ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv72.i.us.us.us.us
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !44
  %i.bw = fsub fast float %i.bv, %i.bj            ; 2 uses
  %i.bx = fmul fast float %i.bw, %i.bw
  %i.by = fadd fast float %i.bx, %.05059.i.us.us.us.us ; 2 uses
  %indvars.iv.next73.i.us.us.us.us = add nuw nsw i64 %indvars.iv72.i.us.us.us.us, 1 ; 2 uses
  %exitcond76.not.i.us.us.us.us = icmp eq i64 %indvars.iv.next73.i.us.us.us.us, %wide.trip.count.i
  br i1 %exitcond76.not.i.us.us.us.us, label %._crit_edge63.i.loopexit.us.us.us.us, label %.lr.ph62.i.us.us.us.us, !llvm.loop !101

._crit_edge63.i.loopexit.us.us.us.us:             ; preds = %.lr.ph62.i.us.us.us.us, %middle.block143
  %.lcssa71 = phi float [ %i.bt, %middle.block143 ], [ %i.by, %.lr.ph62.i.us.us.us.us ]
  %i.bz = fmul fast float %.lcssa71, %i.at
  %i.ca = fadd fast float %i.bz, %i.az
  %i.cb = call fast float @llvm.sqrt.f32(float %i.ca) ; 4 uses
  %brmerge = select i1 %min.iters.check114, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph68.i.us.us.us.us.preheader, label %vector.ph115

vector.ph115:                                     ; preds = %._crit_edge63.i.loopexit.us.us.us.us
  %broadcast.splatinsert117 = insertelement <4 x float> poison, float %i.cb, i64 0
  %broadcast.splat118 = shufflevector <4 x float> %broadcast.splatinsert117, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert119 = insertelement <4 x float> poison, float %i.bj, i64 0
  %broadcast.splat120 = shufflevector <4 x float> %broadcast.splatinsert119, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cc = fdiv fast <4 x float> splat (float 1.000000e+00), %broadcast.splat118
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph115
  %index122 = phi i64 [ 0, %vector.ph115 ], [ %index.next126, %vector.body121 ] ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %index122 ; 2 uses
  %wide.load123 = load <4 x float>, ptr %i.cd, align 4, !tbaa !44, !alias.scope !116, !noalias !117
  %i.ce = fsub fast <4 x float> %wide.load123, %broadcast.splat120
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %index122
  %wide.load124 = load <4 x float>, ptr %i.cf, align 4, !tbaa !44, !alias.scope !118
  %i.cg = fmul fast <4 x float> %i.ce, %wide.load124
  %i.ch = fmul fast <4 x float> %i.cg, %i.cc
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %index122
  %wide.load125 = load <4 x float>, ptr %i.ci, align 4, !tbaa !44, !alias.scope !119
  %i.cj = fadd fast <4 x float> %i.ch, %wide.load125
  store <4 x float> %i.cj, ptr %i.cd, align 4, !tbaa !44, !alias.scope !116, !noalias !117
  %index.next126 = add nuw i64 %index122, 4       ; 2 uses
  %i.ck = icmp eq i64 %index.next126, %n.vec116
  br i1 %i.ck, label %middle.block127, label %vector.body121, !llvm.loop !106

middle.block127:                                  ; preds = %vector.body121
  br i1 %cmp.n128, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us, label %.lr.ph68.i.us.us.us.us.preheader

.lr.ph68.i.us.us.us.us.preheader:                 ; preds = %._crit_edge63.i.loopexit.us.us.us.us, %middle.block127
  %indvars.iv82.i.us.us.us.us.ph = phi i64 [ %n.vec116, %middle.block127 ], [ 0, %._crit_edge63.i.loopexit.us.us.us.us ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph68.i.us.us.us.us.prol.loopexit, label %.lr.ph68.i.us.us.us.us.prol

.lr.ph68.i.us.us.us.us.prol:                      ; preds = %.lr.ph68.i.us.us.us.us.preheader
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv82.i.us.us.us.us.ph ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !44
  %i.cn = fsub fast float %i.cm, %i.bj
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv82.i.us.us.us.us.ph
  %i.cp = load float, ptr %i.co, align 4, !tbaa !44
  %i.cq = fmul fast float %i.cn, %i.cp
  %i.cr = fdiv fast float %i.cq, %i.cb
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv82.i.us.us.us.us.ph
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !44
  %i.cu = fadd fast float %i.cr, %i.ct
  store float %i.cu, ptr %i.cl, align 4, !tbaa !44
  %indvars.iv.next83.i.us.us.us.us.prol = or disjoint i64 %indvars.iv82.i.us.us.us.us.ph, 1
  br label %.lr.ph68.i.us.us.us.us.prol.loopexit

.lr.ph68.i.us.us.us.us.prol.loopexit:             ; preds = %.lr.ph68.i.us.us.us.us.prol, %.lr.ph68.i.us.us.us.us.preheader
  %indvars.iv82.i.us.us.us.us.unr = phi i64 [ %indvars.iv82.i.us.us.us.us.ph, %.lr.ph68.i.us.us.us.us.preheader ], [ %indvars.iv.next83.i.us.us.us.us.prol, %.lr.ph68.i.us.us.us.us.prol ]
  %i.cv = icmp eq i64 %indvars.iv82.i.us.us.us.us.ph, %i.au
  br i1 %i.cv, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us, label %.lr.ph68.i.us.us.us.us.preheader.new

.lr.ph68.i.us.us.us.us.preheader.new:             ; preds = %.lr.ph68.i.us.us.us.us.prol.loopexit
  %i.cw = fdiv fast float 1.000000e+00, %i.cb
  %i.cx = fdiv fast float 1.000000e+00, %i.cb
  br label %.lr.ph68.i.us.us.us.us

.lr.ph68.i.us.us.us.us:                           ; preds = %.lr.ph68.i.us.us.us.us, %.lr.ph68.i.us.us.us.us.preheader.new
  %indvars.iv82.i.us.us.us.us = phi i64 [ %indvars.iv82.i.us.us.us.us.unr, %.lr.ph68.i.us.us.us.us.preheader.new ], [ %indvars.iv.next83.i.us.us.us.us.1, %.lr.ph68.i.us.us.us.us ] ; 5 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv82.i.us.us.us.us ; 2 uses
end_hunk_0
begin_hunk_1_@_ZNK4ncnn9LayerNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.1:bb.a
  %wide.load99 = load <4 x float>, ptr %i.dv, align 4, !tbaa !44
  %wide.load100 = load <4 x float>, ptr %i.dw, align 4, !tbaa !44
  %i.dx = fadd fast <4 x float> %wide.load99, %vec.phi97 ; 2 uses
  %i.dy = fadd fast <4 x float> %wide.load100, %vec.phi98 ; 2 uses
  %index.next101 = add nuw i64 %index96, 8        ; 2 uses
  %i.dz = icmp eq i64 %index.next101, %n.vec94
  br i1 %i.dz, label %middle.block102, label %vector.body95, !llvm.loop !109

middle.block102:                                  ; preds = %vector.body95
  %bin.rdx103 = fadd fast <4 x float> %i.dy, %i.dx
  %i.ea = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx103) ; 2 uses
  br i1 %cmp.n104, label %.lr.ph62.preheader.i, label %.lr.ph.i.preheader171

.lr.ph.i.preheader171:                            ; preds = %.lr.ph.i.preheader, %middle.block102
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec94, %middle.block102 ]
  %.04858.i.ph = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.ea, %middle.block102 ]
  br label %.lr.ph.i

.lr.ph62.preheader.i:                             ; preds = %.lr.ph.i, %middle.block102
  %.lcssa72 = phi float [ %i.ea, %middle.block102 ], [ %i.eo, %.lr.ph.i ]
  %i.eb = fmul fast float %.lcssa72, %i.ad        ; 4 uses
  br i1 %min.iters.check77, label %.lr.ph62.i.preheader, label %vector.ph78

vector.ph78:                                      ; preds = %.lr.ph62.preheader.i
  %broadcast.splatinsert80 = insertelement <4 x float> poison, float %i.eb, i64 0
  %broadcast.splat81 = shufflevector <4 x float> %broadcast.splatinsert80, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph78
  %index83 = phi i64 [ 0, %vector.ph78 ], [ %index.next87, %vector.body82 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph78 ], [ %i.ei, %vector.body82 ]
  %vec.phi84 = phi <4 x float> [ zeroinitializer, %vector.ph78 ], [ %i.ej, %vector.body82 ]
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index83 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load85 = load <4 x float>, ptr %i.ec, align 4, !tbaa !44
  %wide.load86 = load <4 x float>, ptr %i.ed, align 4, !tbaa !44
  %i.ee = fsub fast <4 x float> %wide.load85, %broadcast.splat81 ; 2 uses
  %i.ef = fsub fast <4 x float> %wide.load86, %broadcast.splat81 ; 2 uses
  %i.eg = fmul fast <4 x float> %i.ee, %i.ee
  %i.eh = fmul fast <4 x float> %i.ef, %i.ef
  %i.ei = fadd fast <4 x float> %i.eg, %vec.phi   ; 2 uses
  %i.ej = fadd fast <4 x float> %i.eh, %vec.phi84 ; 2 uses
  %index.next87 = add nuw i64 %index83, 8         ; 2 uses
  %i.ek = icmp eq i64 %index.next87, %n.vec79
  br i1 %i.ek, label %middle.block88, label %vector.body82, !llvm.loop !110

middle.block88:                                   ; preds = %vector.body82
  %bin.rdx = fadd fast <4 x float> %i.ej, %i.ei
  %i.el = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n89, label %.lr.ph66.i.preheader, label %.lr.ph62.i.preheader

.lr.ph62.i.preheader:                             ; preds = %.lr.ph62.preheader.i, %middle.block88
  %indvars.iv72.i.ph = phi i64 [ 0, %.lr.ph62.preheader.i ], [ %n.vec79, %middle.block88 ]
  %.05059.i.ph = phi float [ 0.000000e+00, %.lr.ph62.preheader.i ], [ %i.el, %middle.block88 ]
  br label %.lr.ph62.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader171, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader171 ] ; 2 uses
  %.04858.i = phi float [ %i.eo, %.lr.ph.i ], [ %.04858.i.ph, %.lr.ph.i.preheader171 ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv.i
  %i.en = load float, ptr %i.em, align 4, !tbaa !44
  %i.eo = fadd fast float %i.en, %.04858.i        ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph62.preheader.i, label %.lr.ph.i, !llvm.loop !111

.lr.ph66.i.preheader:                             ; preds = %.lr.ph62.i, %middle.block88
  %.lcssa73 = phi float [ %i.el, %middle.block88 ], [ %i.fc, %.lr.ph62.i ]
  %i.ep = fmul fast float %.lcssa73, %i.ai
  %i.eq = fadd fast float %i.ep, %i.du
  %i.er = call fast float @llvm.sqrt.f32(float %i.eq) ; 2 uses
  br i1 %min.iters.check, label %.lr.ph66.i.preheader170, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph66.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.er, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert74 = insertelement <4 x float> poison, float %i.eb, i64 0
  %broadcast.splat75 = shufflevector <4 x float> %broadcast.splatinsert74, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = fdiv fast <4 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.et, align 4, !tbaa !44
  %i.eu = fsub fast <4 x float> %wide.load, %broadcast.splat75
  %i.ev = fmul fast <4 x float> %i.eu, %i.es
  store <4 x float> %i.ev, ptr %i.et, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit, label %.lr.ph66.i.preheader170

.lr.ph66.i.preheader170:                          ; preds = %.lr.ph66.i.preheader, %middle.block
  %indvars.iv77.i.ph = phi i64 [ 0, %.lr.ph66.i.preheader ], [ %n.vec, %middle.block ]
  %i.ex = fdiv fast float 1.000000e+00, %i.er
  br label %.lr.ph66.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.preheader, %.lr.ph62.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %.lr.ph62.i ], [ %indvars.iv72.i.ph, %.lr.ph62.i.preheader ] ; 2 uses
  %.05059.i = phi float [ %i.fc, %.lr.ph62.i ], [ %.05059.i.ph, %.lr.ph62.i.preheader ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv72.i
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !44
  %i.fa = fsub fast float %i.ez, %i.eb            ; 2 uses
  %i.fb = fmul fast float %i.fa, %i.fa
  %i.fc = fadd fast float %i.fb, %.05059.i        ; 2 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count.i
  br i1 %exitcond76.not.i, label %.lr.ph66.i.preheader, label %.lr.ph62.i, !llvm.loop !113

.lr.ph66.i:                                       ; preds = %.lr.ph66.i.preheader170, %.lr.ph66.i
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %.lr.ph66.i ], [ %indvars.iv77.i.ph, %.lr.ph66.i.preheader170 ] ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv77.i ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !44
  %i.ff = fsub fast float %i.fe, %i.eb
  %i.fg = fmul fast float %i.ff, %i.ex
  store float %i.fg, ptr %i.fd, align 4, !tbaa !44
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next78.i, %wide.trip.count.i
  br i1 %exitcond81.not.i, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit, label %.lr.ph66.i, !llvm.loop !114

_ZN4ncnnL9layernormEPfPKfS2_fi.exit:              ; preds = %.lr.ph66.i, %middle.block, %.noexc22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.noexc22, !llvm.loop !108

._crit_edge35.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us.split.us.us, %.preheader.lr.ph.split.split.us, %.preheader.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge35.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9LayerNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 5 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 4 uses
  %.not26 = icmp sgt i32 %i.k, %i.j
  br i1 %.not26, label %._crit_edge, label %.noexc18.lr.ph

.noexc18.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19, !noalias !138 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !138 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !40, !noalias !138 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 296
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19   ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 212 ; 2 uses
  %i.v = load i32, ptr %5, align 4, !tbaa !41
  %i.w = load i32, ptr %6, align 4, !tbaa !41
  %i.x = mul i32 %i.w, %i.v                       ; 9 uses
  %i.y = icmp sgt i32 %i.x, 0                     ; 2 uses
  %wide.trip.count.i = zext i32 %i.x to i64       ; 21 uses
  %i.z = uitofp nneg i32 %i.x to float            ; 3 uses
  %i.aa = fdiv fast float 1.000000e+00, %i.z      ; 2 uses
  %i.ab = icmp ne ptr %i.r, null
  %i.ac = icmp ne ptr %i.t, null
  %or.cond.i = and i1 %i.ab, %i.ac
  br i1 %or.cond.i, label %.noexc18.lr.ph.split.us, label %.noexc18.lr.ph.split

.noexc18.lr.ph.split.us:                          ; preds = %.noexc18.lr.ph
  br i1 %i.y, label %.noexc18.lr.ph.split.us.split.us, label %._crit_edge

.noexc18.lr.ph.split.us.split.us:                 ; preds = %.noexc18.lr.ph.split.us
  %i.ad = sext i32 %i.k to i64                    ; 3 uses
  %i.ae = add nsw i32 %i.j, 1
  %i.af = mul i64 %i.n, %i.p                      ; 2 uses
  %i.ag = mul i64 %i.af, %i.ad
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.ag ; 2 uses
  %i.ah = sub i32 %i.j, %i.k
  %i.ai = zext i32 %i.ah to i64
  %i.aj = add nsw i64 %i.ad, %i.ai
  %i.ak = mul i64 %i.af, %i.aj
  %i.al = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %i.am = getelementptr i8, ptr %i.l, i64 %i.ak
  %scevgep109 = getelementptr i8, ptr %i.am, i64 %i.al ; 2 uses
  %i.an = mul i64 %i.n, %i.p
  %scevgep110 = getelementptr i8, ptr %i.r, i64 %i.al
  %scevgep111 = getelementptr i8, ptr %i.t, i64 %i.al
  %min.iters.check152 = icmp ult i32 %i.x, 8
  %n.vec154 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n164 = icmp eq i64 %n.vec154, %wide.trip.count.i
  %min.iters.check134 = icmp ult i32 %i.x, 8
  %n.vec136 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n148 = icmp eq i64 %n.vec136, %wide.trip.count.i
  %i.ao = fdiv fast float 1.000000e+00, %i.z
  %min.iters.check117 = icmp ult i32 %i.x, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep110
  %bound1 = icmp ult ptr %i.r, %scevgep109
  %found.conflict = and i1 %bound0, %bound1
  %bound0112 = icmp ult ptr %scevgep, %scevgep111
  %bound1113 = icmp ult ptr %i.t, %scevgep109
  %found.conflict114 = and i1 %bound0112, %bound1113
  %stride.check115 = icmp slt i64 %i.an, 0
  %i.ap = or i1 %found.conflict114, %stride.check115
  %conflict.rdx = or i1 %found.conflict, %i.ap
  %n.vec119 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n131 = icmp eq i64 %n.vec119, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.aq = add nsw i64 %wide.trip.count.i, -1
  br label %.noexc18.us.us

.noexc18.us.us:                                   ; preds = %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us, %.noexc18.lr.ph.split.us.split.us
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us ], [ %i.ad, %.noexc18.lr.ph.split.us.split.us ] ; 2 uses
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv59
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us.us ; 8 uses
  %i.as = load float, ptr %i.u, align 4, !tbaa !38
  br i1 %min.iters.check152, label %.lr.ph.i.us.us.preheader, label %vector.body155

vector.body155:                                   ; preds = %.noexc18.us.us, %vector.body155
  %index156 = phi i64 [ %index.next161, %vector.body155 ], [ 0, %.noexc18.us.us ] ; 2 uses
  %vec.phi157 = phi <4 x float> [ %i.av, %vector.body155 ], [ zeroinitializer, %.noexc18.us.us ]
  %vec.phi158 = phi <4 x float> [ %i.aw, %vector.body155 ], [ zeroinitializer, %.noexc18.us.us ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index156 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %wide.load159 = load <4 x float>, ptr %i.at, align 4, !tbaa !44
  %wide.load160 = load <4 x float>, ptr %i.au, align 4, !tbaa !44
  %i.av = fadd fast <4 x float> %wide.load159, %vec.phi157 ; 2 uses
  %i.aw = fadd fast <4 x float> %wide.load160, %vec.phi158 ; 2 uses
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.ax, label %middle.block162, label %vector.body155, !llvm.loop !122

middle.block162:                                  ; preds = %vector.body155
  %bin.rdx163 = fadd fast <4 x float> %i.aw, %i.av
  %i.ay = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx163) ; 2 uses
  br i1 %cmp.n164, label %.lr.ph62.preheader.i.us.us, label %.lr.ph.i.us.us.preheader

.lr.ph.i.us.us.preheader:                         ; preds = %.noexc18.us.us, %middle.block162
  %indvars.iv.i.us.us.ph = phi i64 [ 0, %.noexc18.us.us ], [ %n.vec154, %middle.block162 ]
  %.04858.i.us.us.ph = phi float [ 0.000000e+00, %.noexc18.us.us ], [ %i.ay, %middle.block162 ]
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.preheader, %.lr.ph.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %.lr.ph.i.us.us ], [ %indvars.iv.i.us.us.ph, %.lr.ph.i.us.us.preheader ] ; 2 uses
  %.04858.i.us.us = phi float [ %i.bb, %.lr.ph.i.us.us ], [ %.04858.i.us.us.ph, %.lr.ph.i.us.us.preheader ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.us.us
  %i.ba = load float, ptr %i.az, align 4, !tbaa !44
  %i.bb = fadd fast float %i.ba, %.04858.i.us.us  ; 2 uses
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %.lr.ph62.preheader.i.us.us, label %.lr.ph.i.us.us, !llvm.loop !123

.lr.ph62.preheader.i.us.us:                       ; preds = %.lr.ph.i.us.us, %middle.block162
  %.lcssa = phi float [ %i.ay, %middle.block162 ], [ %i.bb, %.lr.ph.i.us.us ]
  %i.bc = fmul fast float %.lcssa, %i.aa          ; 6 uses
  br i1 %min.iters.check134, label %.lr.ph62.i.us.us.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %.lr.ph62.preheader.i.us.us
  %broadcast.splatinsert137 = insertelement <4 x float> poison, float %i.bc, i64 0
  %broadcast.splat138 = shufflevector <4 x float> %broadcast.splatinsert137, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph135
  %index140 = phi i64 [ 0, %vector.ph135 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %vec.phi141 = phi <4 x float> [ zeroinitializer, %vector.ph135 ], [ %i.bj, %vector.body139 ]
  %vec.phi142 = phi <4 x float> [ zeroinitializer, %vector.ph135 ], [ %i.bk, %vector.body139 ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index140 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load143 = load <4 x float>, ptr %i.bd, align 4, !tbaa !44
  %wide.load144 = load <4 x float>, ptr %i.be, align 4, !tbaa !44
  %i.bf = fsub fast <4 x float> %wide.load143, %broadcast.splat138 ; 2 uses
  %i.bg = fsub fast <4 x float> %wide.load144, %broadcast.splat138 ; 2 uses
  %i.bh = fmul fast <4 x float> %i.bf, %i.bf
  %i.bi = fmul fast <4 x float> %i.bg, %i.bg
  %i.bj = fadd fast <4 x float> %i.bh, %vec.phi141 ; 2 uses
  %i.bk = fadd fast <4 x float> %i.bi, %vec.phi142 ; 2 uses
  %index.next145 = add nuw i64 %index140, 8       ; 2 uses
  %i.bl = icmp eq i64 %index.next145, %n.vec136
  br i1 %i.bl, label %middle.block146, label %vector.body139, !llvm.loop !124

middle.block146:                                  ; preds = %vector.body139
  %bin.rdx147 = fadd fast <4 x float> %i.bk, %i.bj
  %i.bm = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx147) ; 2 uses
  br i1 %cmp.n148, label %._crit_edge63.i.loopexit.us.us, label %.lr.ph62.i.us.us.preheader

.lr.ph62.i.us.us.preheader:                       ; preds = %.lr.ph62.preheader.i.us.us, %middle.block146
  %indvars.iv72.i.us.us.ph = phi i64 [ 0, %.lr.ph62.preheader.i.us.us ], [ %n.vec136, %middle.block146 ]
  %.05059.i.us.us.ph = phi float [ 0.000000e+00, %.lr.ph62.preheader.i.us.us ], [ %i.bm, %middle.block146 ]
  br label %.lr.ph62.i.us.us

.lr.ph62.i.us.us:                                 ; preds = %.lr.ph62.i.us.us.preheader, %.lr.ph62.i.us.us
  %indvars.iv72.i.us.us = phi i64 [ %indvars.iv.next73.i.us.us, %.lr.ph62.i.us.us ], [ %indvars.iv72.i.us.us.ph, %.lr.ph62.i.us.us.preheader ] ; 2 uses
  %.05059.i.us.us = phi float [ %i.br, %.lr.ph62.i.us.us ], [ %.05059.i.us.us.ph, %.lr.ph62.i.us.us.preheader ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv72.i.us.us
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !44
  %i.bp = fsub fast float %i.bo, %i.bc            ; 2 uses
  %i.bq = fmul fast float %i.bp, %i.bp
  %i.br = fadd fast float %i.bq, %.05059.i.us.us  ; 2 uses
  %indvars.iv.next73.i.us.us = add nuw nsw i64 %indvars.iv72.i.us.us, 1 ; 2 uses
  %exitcond76.not.i.us.us = icmp eq i64 %indvars.iv.next73.i.us.us, %wide.trip.count.i
  br i1 %exitcond76.not.i.us.us, label %._crit_edge63.i.loopexit.us.us, label %.lr.ph62.i.us.us, !llvm.loop !125

._crit_edge63.i.loopexit.us.us:                   ; preds = %.lr.ph62.i.us.us, %middle.block146
  %.lcssa73 = phi float [ %i.bm, %middle.block146 ], [ %i.br, %.lr.ph62.i.us.us ]
  %i.bs = fmul fast float %.lcssa73, %i.ao
  %i.bt = fadd fast float %i.bs, %i.as
  %i.bu = call fast float @llvm.sqrt.f32(float %i.bt) ; 4 uses
  %brmerge = select i1 %min.iters.check117, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph68.i.us.us.preheader, label %vector.ph118

vector.ph118:                                     ; preds = %._crit_edge63.i.loopexit.us.us
  %broadcast.splatinsert120 = insertelement <4 x float> poison, float %i.bu, i64 0
  %broadcast.splat121 = shufflevector <4 x float> %broadcast.splatinsert120, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert122 = insertelement <4 x float> poison, float %i.bc, i64 0
  %broadcast.splat123 = shufflevector <4 x float> %broadcast.splatinsert122, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = fdiv fast <4 x float> splat (float 1.000000e+00), %broadcast.splat121
  br label %vector.body124

vector.body124:                                   ; preds = %vector.body124, %vector.ph118
  %index125 = phi i64 [ 0, %vector.ph118 ], [ %index.next129, %vector.body124 ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %index125 ; 2 uses
  %wide.load126 = load <4 x float>, ptr %i.bw, align 4, !tbaa !44, !alias.scope !139, !noalias !140
  %i.bx = fsub fast <4 x float> %wide.load126, %broadcast.splat123
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index125
  %wide.load127 = load <4 x float>, ptr %i.by, align 4, !tbaa !44, !alias.scope !141
  %i.bz = fmul fast <4 x float> %i.bx, %wide.load127
  %i.ca = fmul fast <4 x float> %i.bz, %i.bv
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index125
  %wide.load128 = load <4 x float>, ptr %i.cb, align 4, !tbaa !44, !alias.scope !142
  %i.cc = fadd fast <4 x float> %i.ca, %wide.load128
  store <4 x float> %i.cc, ptr %i.bw, align 4, !tbaa !44, !alias.scope !139, !noalias !140
  %index.next129 = add nuw i64 %index125, 4       ; 2 uses
  %i.cd = icmp eq i64 %index.next129, %n.vec119
  br i1 %i.cd, label %middle.block130, label %vector.body124, !llvm.loop !130

middle.block130:                                  ; preds = %vector.body124
  br i1 %cmp.n131, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us, label %.lr.ph68.i.us.us.preheader

.lr.ph68.i.us.us.preheader:                       ; preds = %._crit_edge63.i.loopexit.us.us, %middle.block130
  %indvars.iv82.i.us.us.ph = phi i64 [ %n.vec119, %middle.block130 ], [ 0, %._crit_edge63.i.loopexit.us.us ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph68.i.us.us.prol.loopexit, label %.lr.ph68.i.us.us.prol

.lr.ph68.i.us.us.prol:                            ; preds = %.lr.ph68.i.us.us.preheader
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv82.i.us.us.ph ; 2 uses
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !44
  %i.cg = fsub fast float %i.cf, %i.bc
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv82.i.us.us.ph
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !44
  %i.cj = fmul fast float %i.cg, %i.ci
  %i.ck = fdiv fast float %i.cj, %i.bu
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv82.i.us.us.ph
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !44
  %i.cn = fadd fast float %i.ck, %i.cm
  store float %i.cn, ptr %i.ce, align 4, !tbaa !44
  %indvars.iv.next83.i.us.us.prol = or disjoint i64 %indvars.iv82.i.us.us.ph, 1
  br label %.lr.ph68.i.us.us.prol.loopexit

.lr.ph68.i.us.us.prol.loopexit:                   ; preds = %.lr.ph68.i.us.us.prol, %.lr.ph68.i.us.us.preheader
  %indvars.iv82.i.us.us.unr = phi i64 [ %indvars.iv82.i.us.us.ph, %.lr.ph68.i.us.us.preheader ], [ %indvars.iv.next83.i.us.us.prol, %.lr.ph68.i.us.us.prol ]
  %i.co = icmp eq i64 %indvars.iv82.i.us.us.ph, %i.aq
  br i1 %i.co, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us, label %.lr.ph68.i.us.us.preheader.new

.lr.ph68.i.us.us.preheader.new:                   ; preds = %.lr.ph68.i.us.us.prol.loopexit
  %i.cp = fdiv fast float 1.000000e+00, %i.bu
  %i.cq = fdiv fast float 1.000000e+00, %i.bu
  br label %.lr.ph68.i.us.us

.lr.ph68.i.us.us:                                 ; preds = %.lr.ph68.i.us.us, %.lr.ph68.i.us.us.preheader.new
  %indvars.iv82.i.us.us = phi i64 [ %indvars.iv82.i.us.us.unr, %.lr.ph68.i.us.us.preheader.new ], [ %indvars.iv.next83.i.us.us.1, %.lr.ph68.i.us.us ] ; 5 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv82.i.us.us ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !44
  %i.ct = fsub fast float %i.cs, %i.bc
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv82.i.us.us
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !44
  %i.cw = fmul fast float %i.ct, %i.cv
  %i.cx = fmul fast float %i.cw, %i.cp
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv82.i.us.us
  %i.cz = load float, ptr %i.cy, align 4, !tbaa !44
  %i.da = fadd fast float %i.cx, %i.cz
  store float %i.da, ptr %i.cr, align 4, !tbaa !44
  %indvars.iv.next83.i.us.us = add nuw nsw i64 %indvars.iv82.i.us.us, 1 ; 3 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next83.i.us.us ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !44
  %i.dd = fsub fast float %i.dc, %i.bc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next83.i.us.us
end_hunk_1
begin_hunk_2_@_ZNK4ncnn9LayerNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.2:bb.a

vector.body97:                                    ; preds = %.noexc18.us28, %vector.body97
  %index98 = phi i64 [ %index.next103, %vector.body97 ], [ 0, %.noexc18.us28 ] ; 2 uses
  %vec.phi99 = phi <4 x float> [ %i.ds, %vector.body97 ], [ zeroinitializer, %.noexc18.us28 ]
  %vec.phi100 = phi <4 x float> [ %i.dt, %vector.body97 ], [ zeroinitializer, %.noexc18.us28 ]
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index98 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load101 = load <4 x float>, ptr %i.dq, align 4, !tbaa !44
  %wide.load102 = load <4 x float>, ptr %i.dr, align 4, !tbaa !44
  %i.ds = fadd fast <4 x float> %wide.load101, %vec.phi99 ; 2 uses
  %i.dt = fadd fast <4 x float> %wide.load102, %vec.phi100 ; 2 uses
  %index.next103 = add nuw i64 %index98, 8        ; 2 uses
  %i.du = icmp eq i64 %index.next103, %n.vec96
  br i1 %i.du, label %middle.block104, label %vector.body97, !llvm.loop !132

middle.block104:                                  ; preds = %vector.body97
  %bin.rdx105 = fadd fast <4 x float> %i.dt, %i.ds
  %i.dv = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx105) ; 2 uses
  br i1 %cmp.n106, label %.lr.ph62.preheader.i.us37, label %.lr.ph.i.us32.preheader

.lr.ph.i.us32.preheader:                          ; preds = %.noexc18.us28, %middle.block104
  %indvars.iv.i.us33.ph = phi i64 [ 0, %.noexc18.us28 ], [ %n.vec96, %middle.block104 ]
  %.04858.i.us34.ph = phi float [ 0.000000e+00, %.noexc18.us28 ], [ %i.dv, %middle.block104 ]
  br label %.lr.ph.i.us32

.lr.ph.i.us32:                                    ; preds = %.lr.ph.i.us32.preheader, %.lr.ph.i.us32
  %indvars.iv.i.us33 = phi i64 [ %indvars.iv.next.i.us35, %.lr.ph.i.us32 ], [ %indvars.iv.i.us33.ph, %.lr.ph.i.us32.preheader ] ; 2 uses
  %.04858.i.us34 = phi float [ %i.dy, %.lr.ph.i.us32 ], [ %.04858.i.us34.ph, %.lr.ph.i.us32.preheader ]
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i.us33
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !44
  %i.dy = fadd fast float %i.dx, %.04858.i.us34   ; 2 uses
  %indvars.iv.next.i.us35 = add nuw nsw i64 %indvars.iv.i.us33, 1 ; 2 uses
  %exitcond.not.i.us36 = icmp eq i64 %indvars.iv.next.i.us35, %wide.trip.count.i
  br i1 %exitcond.not.i.us36, label %.lr.ph62.preheader.i.us37, label %.lr.ph.i.us32, !llvm.loop !133

.lr.ph62.preheader.i.us37:                        ; preds = %.lr.ph.i.us32, %middle.block104
  %.lcssa74 = phi float [ %i.dv, %middle.block104 ], [ %i.dy, %.lr.ph.i.us32 ]
  %i.dz = fmul fast float %.lcssa74, %i.aa        ; 4 uses
  br i1 %min.iters.check79, label %.lr.ph62.i.us39.preheader, label %vector.ph80

vector.ph80:                                      ; preds = %.lr.ph62.preheader.i.us37
  %broadcast.splatinsert82 = insertelement <4 x float> poison, float %i.dz, i64 0
  %broadcast.splat83 = shufflevector <4 x float> %broadcast.splatinsert82, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph80
  %index85 = phi i64 [ 0, %vector.ph80 ], [ %index.next89, %vector.body84 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph80 ], [ %i.eg, %vector.body84 ]
  %vec.phi86 = phi <4 x float> [ zeroinitializer, %vector.ph80 ], [ %i.eh, %vector.body84 ]
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index85 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load87 = load <4 x float>, ptr %i.ea, align 4, !tbaa !44
  %wide.load88 = load <4 x float>, ptr %i.eb, align 4, !tbaa !44
  %i.ec = fsub fast <4 x float> %wide.load87, %broadcast.splat83 ; 2 uses
  %i.ed = fsub fast <4 x float> %wide.load88, %broadcast.splat83 ; 2 uses
  %i.ee = fmul fast <4 x float> %i.ec, %i.ec
  %i.ef = fmul fast <4 x float> %i.ed, %i.ed
  %i.eg = fadd fast <4 x float> %i.ee, %vec.phi   ; 2 uses
  %i.eh = fadd fast <4 x float> %i.ef, %vec.phi86 ; 2 uses
  %index.next89 = add nuw i64 %index85, 8         ; 2 uses
  %i.ei = icmp eq i64 %index.next89, %n.vec81
  br i1 %i.ei, label %middle.block90, label %vector.body84, !llvm.loop !134

middle.block90:                                   ; preds = %vector.body84
  %bin.rdx = fadd fast <4 x float> %i.eh, %i.eg
  %i.ej = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n91, label %._crit_edge63.i.loopexit.us44, label %.lr.ph62.i.us39.preheader

.lr.ph62.i.us39.preheader:                        ; preds = %.lr.ph62.preheader.i.us37, %middle.block90
  %indvars.iv72.i.us40.ph = phi i64 [ 0, %.lr.ph62.preheader.i.us37 ], [ %n.vec81, %middle.block90 ]
  %.05059.i.us41.ph = phi float [ 0.000000e+00, %.lr.ph62.preheader.i.us37 ], [ %i.ej, %middle.block90 ]
  br label %.lr.ph62.i.us39

.lr.ph62.i.us39:                                  ; preds = %.lr.ph62.i.us39.preheader, %.lr.ph62.i.us39
  %indvars.iv72.i.us40 = phi i64 [ %indvars.iv.next73.i.us42, %.lr.ph62.i.us39 ], [ %indvars.iv72.i.us40.ph, %.lr.ph62.i.us39.preheader ] ; 2 uses
  %.05059.i.us41 = phi float [ %i.eo, %.lr.ph62.i.us39 ], [ %.05059.i.us41.ph, %.lr.ph62.i.us39.preheader ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv72.i.us40
  %i.el = load float, ptr %i.ek, align 4, !tbaa !44
  %i.em = fsub fast float %i.el, %i.dz            ; 2 uses
  %i.en = fmul fast float %i.em, %i.em
  %i.eo = fadd fast float %i.en, %.05059.i.us41   ; 2 uses
  %indvars.iv.next73.i.us42 = add nuw nsw i64 %indvars.iv72.i.us40, 1 ; 2 uses
  %exitcond76.not.i.us43 = icmp eq i64 %indvars.iv.next73.i.us42, %wide.trip.count.i
  br i1 %exitcond76.not.i.us43, label %._crit_edge63.i.loopexit.us44, label %.lr.ph62.i.us39, !llvm.loop !135

._crit_edge63.i.loopexit.us44:                    ; preds = %.lr.ph62.i.us39, %middle.block90
  %.lcssa75 = phi float [ %i.ej, %middle.block90 ], [ %i.eo, %.lr.ph62.i.us39 ]
  %i.ep = fmul fast float %.lcssa75, %i.dn
  %i.eq = fadd fast float %i.ep, %i.dp
  %i.er = call fast float @llvm.sqrt.f32(float %i.eq) ; 2 uses
  br i1 %min.iters.check, label %.lr.ph66.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %._crit_edge63.i.loopexit.us44
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.er, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert76 = insertelement <4 x float> poison, float %i.dz, i64 0
  %broadcast.splat77 = shufflevector <4 x float> %broadcast.splatinsert76, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = fdiv fast <4 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.et, align 4, !tbaa !44
  %i.eu = fsub fast <4 x float> %wide.load, %broadcast.splat77
  %i.ev = fmul fast <4 x float> %i.eu, %i.es
  store <4 x float> %i.ev, ptr %i.et, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ew = icmp eq i64 %index.next, %n.vec
  br i1 %i.ew, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit24.us, label %.lr.ph66.i.us.preheader

.lr.ph66.i.us.preheader:                          ; preds = %._crit_edge63.i.loopexit.us44, %middle.block
  %indvars.iv77.i.us.ph = phi i64 [ 0, %._crit_edge63.i.loopexit.us44 ], [ %n.vec, %middle.block ]
  %i.ex = fdiv fast float 1.000000e+00, %i.er
  br label %.lr.ph66.i.us

.lr.ph66.i.us:                                    ; preds = %.lr.ph66.i.us.preheader, %.lr.ph66.i.us
  %indvars.iv77.i.us = phi i64 [ %indvars.iv.next78.i.us, %.lr.ph66.i.us ], [ %indvars.iv77.i.us.ph, %.lr.ph66.i.us.preheader ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv77.i.us ; 2 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !44
  %i.fa = fsub fast float %i.ez, %i.dz
  %i.fb = fmul fast float %i.fa, %i.ex
  store float %i.fb, ptr %i.ey, align 4, !tbaa !44
  %indvars.iv.next78.i.us = add nuw nsw i64 %indvars.iv77.i.us, 1 ; 2 uses
  %exitcond81.not.i.us = icmp eq i64 %indvars.iv.next78.i.us, %wide.trip.count.i
  br i1 %exitcond81.not.i.us, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit24.us, label %.lr.ph66.i.us, !llvm.loop !137

_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit24.us: ; preds = %.lr.ph66.i.us, %middle.block
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %i.dm, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %.noexc18.us28

._crit_edge:                                      ; preds = %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit24.us, %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us, %.noexc18.lr.ph.split, %.noexc18.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9LayerNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.3(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not67 = icmp sgt i32 %i.k, %i.j
  br i1 %.not67, label %._crit_edge.split69, label %.preheader59.lr.ph

.preheader59.lr.ph:                               ; preds = %bb.b
  %i.l = load i32, ptr %3, align 4, !tbaa !41     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 296
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 212 ; 2 uses
  br i1 %i.m, label %.preheader59.lr.ph.split, label %._crit_edge.split69

.preheader59.lr.ph.split:                         ; preds = %.preheader59.lr.ph
  %i.u = load i32, ptr %4, align 4, !tbaa !41     ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.preheader59.lr.ph.split.split, label %._crit_edge.split69

.preheader59.lr.ph.split.split:                   ; preds = %.preheader59.lr.ph.split
  %i.w = load i32, ptr %i.n, align 4, !tbaa !43, !noalias !163
  %i.x = load i32, ptr %i.o, align 8, !tbaa !48, !noalias !163
  %i.y = load ptr, ptr %5, align 8, !tbaa !19, !noalias !163 ; 3 uses
  %i.z = load i64, ptr %i.p, align 8, !tbaa !20, !noalias !163 ; 3 uses
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !40, !noalias !163 ; 5 uses
  %factor.op.mul71 = mul i64 %i.z, %i.aa          ; 2 uses
  %i.ab = sext i32 %i.w to i64                    ; 3 uses
  %i.ac = sext i32 %i.x to i64                    ; 2 uses
  %i.ad = mul i64 %i.aa, %i.ab                    ; 3 uses
  %factor.op.mul = mul i64 %i.ad, %i.ac           ; 2 uses
  %i.ae = load ptr, ptr %i.r, align 8, !tbaa !19  ; 7 uses
  %i.af = load ptr, ptr %i.s, align 8, !tbaa !19  ; 7 uses
  %i.ag = load i32, ptr %7, align 4, !tbaa !41    ; 9 uses
  %i.ah = icmp sgt i32 %i.ag, 0                   ; 2 uses
  %wide.trip.count.i = zext i32 %i.ag to i64      ; 21 uses
  %i.ai = uitofp nneg i32 %i.ag to float          ; 3 uses
  %i.aj = fdiv fast float 1.000000e+00, %i.ai     ; 2 uses
  %i.ak = icmp ne ptr %i.ae, null
  %i.al = icmp ne ptr %i.af, null
  %or.cond.i = and i1 %i.ak, %i.al
  br i1 %or.cond.i, label %.preheader59.lr.ph.split.split.split.us, label %.preheader59.preheader

.preheader59.preheader:                           ; preds = %.preheader59.lr.ph.split.split
  %i.am = sext i32 %i.k to i64
  %i.an = add nsw i32 %i.j, 1
  %wide.trip.count88 = zext nneg i32 %i.l to i64
  %wide.trip.count = zext nneg i32 %i.u to i64
  %min.iters.check141 = icmp ult i32 %i.ag, 8
  %n.vec143 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n153 = icmp eq i64 %n.vec143, %wide.trip.count.i
  %min.iters.check126 = icmp ult i32 %i.ag, 8
  %n.vec128 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n138 = icmp eq i64 %n.vec128, %wide.trip.count.i
  %i.ao = fdiv fast float 1.000000e+00, %i.ai
  %min.iters.check = icmp ult i32 %i.ag, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader59

.preheader59.lr.ph.split.split.split.us:          ; preds = %.preheader59.lr.ph.split.split
  br i1 %i.ah, label %.preheader59.us.us.preheader, label %._crit_edge.split69

.preheader59.us.us.preheader:                     ; preds = %.preheader59.lr.ph.split.split.split.us
  %i.ap = sext i32 %i.k to i64                    ; 2 uses
  %i.aq = add nsw i32 %i.j, 1
  %wide.trip.count102 = zext nneg i32 %i.l to i64
  %wide.trip.count97 = zext nneg i32 %i.u to i64  ; 2 uses
  %8 = mul i64 %i.z, %i.ap
  %9 = add nsw i64 %wide.trip.count97, -1
  %i.ar = mul nsw i64 %9, %i.ab
  %i.as = add i64 %8, %i.ar
  %i.at = mul i64 %i.aa, %i.as
  %i.au = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %i.av = mul i64 %i.z, %i.aa
  %i.aw = mul i64 %i.aa, %i.ab                    ; 2 uses
  %i.ax = mul i64 %i.aw, %i.ac
  %scevgep156 = getelementptr i8, ptr %i.ae, i64 %i.au
  %scevgep157 = getelementptr i8, ptr %i.af, i64 %i.au
  %i.ay = getelementptr i8, ptr %i.y, i64 %i.at
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.au
  %min.iters.check198 = icmp ult i32 %i.ag, 8
  %n.vec200 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n210 = icmp eq i64 %n.vec200, %wide.trip.count.i
  %min.iters.check180 = icmp ult i32 %i.ag, 8
  %n.vec182 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n194 = icmp eq i64 %n.vec182, %wide.trip.count.i
  %i.ba = fdiv fast float 1.000000e+00, %i.ai
  %min.iters.check163 = icmp ult i32 %i.ag, 4
  %stride.check161 = icmp slt i64 %i.aw, 0
  %n.vec165 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n177 = icmp eq i64 %n.vec165, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bb = add nsw i64 %wide.trip.count.i, -1
  br label %.preheader59.us.us

.preheader59.us.us:                               ; preds = %.preheader59.us.us.preheader, %._crit_edge63.split65.us.split.us.us.us
  %indvar = phi i64 [ 0, %.preheader59.us.us.preheader ], [ %indvar.next, %._crit_edge63.split65.us.split.us.us.us ] ; 2 uses
  %indvars.iv104 = phi i64 [ %i.ap, %.preheader59.us.us.preheader ], [ %indvars.iv.next105, %._crit_edge63.split65.us.split.us.us.us ] ; 2 uses
  %i.bc = mul i64 %i.av, %indvar
  %.reass72.us.us = mul i64 %factor.op.mul71, %indvars.iv104
  %i.bd = getelementptr inbounds nuw i8, ptr %i.y, i64 %.reass72.us.us
  %i.be = getelementptr i8, ptr %i.az, i64 %i.bc
  br label %.preheader.us.us.us.us

.preheader.us.us.us.us:                           ; preds = %._crit_edge.split.us.us.split.us.us.us.us, %.preheader59.us.us
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %._crit_edge.split.us.us.split.us.us.us.us ], [ 0, %.preheader59.us.us ] ; 3 uses
  %i.bf = mul i64 %i.ax, %indvars.iv99
  %scevgep = getelementptr i8, ptr %i.be, i64 %i.bf ; 2 uses
  %.reass.us.us.us.us = mul i64 %factor.op.mul, %indvars.iv99
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.reass.us.us.us.us ; 3 uses
  %bound0 = icmp ult ptr %i.bg, %scevgep156
  %bound1 = icmp ult ptr %i.ae, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0158 = icmp ult ptr %i.bg, %scevgep157
  %bound1159 = icmp ult ptr %i.af, %scevgep
  %found.conflict160 = and i1 %bound0158, %bound1159
  %i.bh = or i1 %found.conflict160, %stride.check161
  %conflict.rdx = or i1 %found.conflict, %i.bh
  br label %.noexc34.us.us.us.us.us.us

.noexc34.us.us.us.us.us.us:                       ; preds = %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us.us.us, %.preheader.us.us.us.us
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us ] ; 2 uses
  %i.bi = mul i64 %i.ad, %indvars.iv94
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi ; 8 uses
  %i.bk = load float, ptr %i.t, align 4, !tbaa !38
  br i1 %min.iters.check198, label %.lr.ph.i.us.us.us.us.us.us.preheader, label %vector.body201

vector.body201:                                   ; preds = %.noexc34.us.us.us.us.us.us, %vector.body201
  %index202 = phi i64 [ %index.next207, %vector.body201 ], [ 0, %.noexc34.us.us.us.us.us.us ] ; 2 uses
  %vec.phi203 = phi <4 x float> [ %i.bn, %vector.body201 ], [ zeroinitializer, %.noexc34.us.us.us.us.us.us ]
  %vec.phi204 = phi <4 x float> [ %i.bo, %vector.body201 ], [ zeroinitializer, %.noexc34.us.us.us.us.us.us ]
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index202 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %wide.load205 = load <4 x float>, ptr %i.bl, align 4, !tbaa !44
  %wide.load206 = load <4 x float>, ptr %i.bm, align 4, !tbaa !44
  %i.bn = fadd fast <4 x float> %wide.load205, %vec.phi203 ; 2 uses
  %i.bo = fadd fast <4 x float> %wide.load206, %vec.phi204 ; 2 uses
  %index.next207 = add nuw i64 %index202, 8       ; 2 uses
  %i.bp = icmp eq i64 %index.next207, %n.vec200
  br i1 %i.bp, label %middle.block208, label %vector.body201, !llvm.loop !145

middle.block208:                                  ; preds = %vector.body201
  %bin.rdx209 = fadd fast <4 x float> %i.bo, %i.bn
  %i.bq = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx209) ; 2 uses
  br i1 %cmp.n210, label %.lr.ph62.preheader.i.us.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.us.us.preheader:             ; preds = %.noexc34.us.us.us.us.us.us, %middle.block208
  %indvars.iv.i.us.us.us.us.us.us.ph = phi i64 [ 0, %.noexc34.us.us.us.us.us.us ], [ %n.vec200, %middle.block208 ]
  %.04858.i.us.us.us.us.us.us.ph = phi float [ 0.000000e+00, %.noexc34.us.us.us.us.us.us ], [ %i.bq, %middle.block208 ]
  br label %.lr.ph.i.us.us.us.us.us.us

.lr.ph.i.us.us.us.us.us.us:                       ; preds = %.lr.ph.i.us.us.us.us.us.us.preheader, %.lr.ph.i.us.us.us.us.us.us
  %indvars.iv.i.us.us.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us.us.us, %.lr.ph.i.us.us.us.us.us.us ], [ %indvars.iv.i.us.us.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.us.us.preheader ] ; 2 uses
  %.04858.i.us.us.us.us.us.us = phi float [ %i.bt, %.lr.ph.i.us.us.us.us.us.us ], [ %.04858.i.us.us.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.us.us.preheader ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.i.us.us.us.us.us.us
  %i.bs = load float, ptr %i.br, align 4, !tbaa !44
  %i.bt = fadd fast float %i.bs, %.04858.i.us.us.us.us.us.us ; 2 uses
  %indvars.iv.next.i.us.us.us.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.us = icmp eq i64 %indvars.iv.next.i.us.us.us.us.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.us.us.us.us, label %.lr.ph62.preheader.i.us.us.us.us.us.us, label %.lr.ph.i.us.us.us.us.us.us, !llvm.loop !146

.lr.ph62.preheader.i.us.us.us.us.us.us:           ; preds = %.lr.ph.i.us.us.us.us.us.us, %middle.block208
  %.lcssa = phi float [ %i.bq, %middle.block208 ], [ %i.bt, %.lr.ph.i.us.us.us.us.us.us ]
  %i.bu = fmul fast float %.lcssa, %i.aj          ; 6 uses
  br i1 %min.iters.check180, label %.lr.ph62.i.us.us.us.us.us.us.preheader, label %vector.ph181

vector.ph181:                                     ; preds = %.lr.ph62.preheader.i.us.us.us.us.us.us
  %broadcast.splatinsert183 = insertelement <4 x float> poison, float %i.bu, i64 0
  %broadcast.splat184 = shufflevector <4 x float> %broadcast.splatinsert183, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body185

vector.body185:                                   ; preds = %vector.body185, %vector.ph181
  %index186 = phi i64 [ 0, %vector.ph181 ], [ %index.next191, %vector.body185 ] ; 2 uses
  %vec.phi187 = phi <4 x float> [ zeroinitializer, %vector.ph181 ], [ %i.cb, %vector.body185 ]
  %vec.phi188 = phi <4 x float> [ zeroinitializer, %vector.ph181 ], [ %i.cc, %vector.body185 ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index186 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load189 = load <4 x float>, ptr %i.bv, align 4, !tbaa !44
  %wide.load190 = load <4 x float>, ptr %i.bw, align 4, !tbaa !44
  %i.bx = fsub fast <4 x float> %wide.load189, %broadcast.splat184 ; 2 uses
  %i.by = fsub fast <4 x float> %wide.load190, %broadcast.splat184 ; 2 uses
  %i.bz = fmul fast <4 x float> %i.bx, %i.bx
  %i.ca = fmul fast <4 x float> %i.by, %i.by
  %i.cb = fadd fast <4 x float> %i.bz, %vec.phi187 ; 2 uses
  %i.cc = fadd fast <4 x float> %i.ca, %vec.phi188 ; 2 uses
  %index.next191 = add nuw i64 %index186, 8       ; 2 uses
  %i.cd = icmp eq i64 %index.next191, %n.vec182
  br i1 %i.cd, label %middle.block192, label %vector.body185, !llvm.loop !147

middle.block192:                                  ; preds = %vector.body185
  %bin.rdx193 = fadd fast <4 x float> %i.cc, %i.cb
  %i.ce = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx193) ; 2 uses
  br i1 %cmp.n194, label %._crit_edge63.i.loopexit.us.us.us.us.us.us, label %.lr.ph62.i.us.us.us.us.us.us.preheader

.lr.ph62.i.us.us.us.us.us.us.preheader:           ; preds = %.lr.ph62.preheader.i.us.us.us.us.us.us, %middle.block192
  %indvars.iv72.i.us.us.us.us.us.us.ph = phi i64 [ 0, %.lr.ph62.preheader.i.us.us.us.us.us.us ], [ %n.vec182, %middle.block192 ]
  %.05059.i.us.us.us.us.us.us.ph = phi float [ 0.000000e+00, %.lr.ph62.preheader.i.us.us.us.us.us.us ], [ %i.ce, %middle.block192 ]
  br label %.lr.ph62.i.us.us.us.us.us.us

.lr.ph62.i.us.us.us.us.us.us:                     ; preds = %.lr.ph62.i.us.us.us.us.us.us.preheader, %.lr.ph62.i.us.us.us.us.us.us
  %indvars.iv72.i.us.us.us.us.us.us = phi i64 [ %indvars.iv.next73.i.us.us.us.us.us.us, %.lr.ph62.i.us.us.us.us.us.us ], [ %indvars.iv72.i.us.us.us.us.us.us.ph, %.lr.ph62.i.us.us.us.us.us.us.preheader ] ; 2 uses
  %.05059.i.us.us.us.us.us.us = phi float [ %i.cj, %.lr.ph62.i.us.us.us.us.us.us ], [ %.05059.i.us.us.us.us.us.us.ph, %.lr.ph62.i.us.us.us.us.us.us.preheader ]
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv72.i.us.us.us.us.us.us
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !44
  %i.ch = fsub fast float %i.cg, %i.bu            ; 2 uses
  %i.ci = fmul fast float %i.ch, %i.ch
  %i.cj = fadd fast float %i.ci, %.05059.i.us.us.us.us.us.us ; 2 uses
  %indvars.iv.next73.i.us.us.us.us.us.us = add nuw nsw i64 %indvars.iv72.i.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond76.not.i.us.us.us.us.us.us = icmp eq i64 %indvars.iv.next73.i.us.us.us.us.us.us, %wide.trip.count.i
  br i1 %exitcond76.not.i.us.us.us.us.us.us, label %._crit_edge63.i.loopexit.us.us.us.us.us.us, label %.lr.ph62.i.us.us.us.us.us.us, !llvm.loop !148

._crit_edge63.i.loopexit.us.us.us.us.us.us:       ; preds = %.lr.ph62.i.us.us.us.us.us.us, %middle.block192
  %.lcssa120 = phi float [ %i.ce, %middle.block192 ], [ %i.cj, %.lr.ph62.i.us.us.us.us.us.us ]
  %i.ck = fmul fast float %.lcssa120, %i.ba
  %i.cl = fadd fast float %i.ck, %i.bk
  %i.cm = call fast float @llvm.sqrt.f32(float %i.cl) ; 4 uses
  %brmerge = select i1 %min.iters.check163, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph68.i.us.us.us.us.us.us.preheader, label %vector.ph164

vector.ph164:                                     ; preds = %._crit_edge63.i.loopexit.us.us.us.us.us.us
  %broadcast.splatinsert166 = insertelement <4 x float> poison, float %i.cm, i64 0
  %broadcast.splat167 = shufflevector <4 x float> %broadcast.splatinsert166, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert168 = insertelement <4 x float> poison, float %i.bu, i64 0
  %broadcast.splat169 = shufflevector <4 x float> %broadcast.splatinsert168, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cn = fdiv fast <4 x float> splat (float 1.000000e+00), %broadcast.splat167
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph164
  %index171 = phi i64 [ 0, %vector.ph164 ], [ %index.next175, %vector.body170 ] ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index171 ; 2 uses
  %wide.load172 = load <4 x float>, ptr %i.co, align 4, !tbaa !44, !alias.scope !164, !noalias !165
  %i.cp = fsub fast <4 x float> %wide.load172, %broadcast.splat169
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %index171
  %wide.load173 = load <4 x float>, ptr %i.cq, align 4, !tbaa !44, !alias.scope !166
  %i.cr = fmul fast <4 x float> %i.cp, %wide.load173
  %i.cs = fmul fast <4 x float> %i.cr, %i.cn
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %index171
  %wide.load174 = load <4 x float>, ptr %i.ct, align 4, !tbaa !44, !alias.scope !167
  %i.cu = fadd fast <4 x float> %i.cs, %wide.load174
  store <4 x float> %i.cu, ptr %i.co, align 4, !tbaa !44, !alias.scope !164, !noalias !165
  %index.next175 = add nuw i64 %index171, 4       ; 2 uses
  %i.cv = icmp eq i64 %index.next175, %n.vec165
  br i1 %i.cv, label %middle.block176, label %vector.body170, !llvm.loop !153

middle.block176:                                  ; preds = %vector.body170
  br i1 %cmp.n177, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us.us.us, label %.lr.ph68.i.us.us.us.us.us.us.preheader

.lr.ph68.i.us.us.us.us.us.us.preheader:           ; preds = %._crit_edge63.i.loopexit.us.us.us.us.us.us, %middle.block176
  %indvars.iv82.i.us.us.us.us.us.us.ph = phi i64 [ %n.vec165, %middle.block176 ], [ 0, %._crit_edge63.i.loopexit.us.us.us.us.us.us ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph68.i.us.us.us.us.us.us.prol.loopexit, label %.lr.ph68.i.us.us.us.us.us.us.prol

.lr.ph68.i.us.us.us.us.us.us.prol:                ; preds = %.lr.ph68.i.us.us.us.us.us.us.preheader
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv82.i.us.us.us.us.us.us.ph ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !44
  %i.cy = fsub fast float %i.cx, %i.bu
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv82.i.us.us.us.us.us.us.ph
  %i.da = load float, ptr %i.cz, align 4, !tbaa !44
  %i.db = fmul fast float %i.cy, %i.da
  %i.dc = fdiv fast float %i.db, %i.cm
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv82.i.us.us.us.us.us.us.ph
  %i.de = load float, ptr %i.dd, align 4, !tbaa !44
  %i.df = fadd fast float %i.dc, %i.de
  store float %i.df, ptr %i.cw, align 4, !tbaa !44
  %indvars.iv.next83.i.us.us.us.us.us.us.prol = or disjoint i64 %indvars.iv82.i.us.us.us.us.us.us.ph, 1
  br label %.lr.ph68.i.us.us.us.us.us.us.prol.loopexit

.lr.ph68.i.us.us.us.us.us.us.prol.loopexit:       ; preds = %.lr.ph68.i.us.us.us.us.us.us.prol, %.lr.ph68.i.us.us.us.us.us.us.preheader
  %indvars.iv82.i.us.us.us.us.us.us.unr = phi i64 [ %indvars.iv82.i.us.us.us.us.us.us.ph, %.lr.ph68.i.us.us.us.us.us.us.preheader ], [ %indvars.iv.next83.i.us.us.us.us.us.us.prol, %.lr.ph68.i.us.us.us.us.us.us.prol ]
  %i.dg = icmp eq i64 %indvars.iv82.i.us.us.us.us.us.us.ph, %i.bb
  br i1 %i.dg, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us.us.us, label %.lr.ph68.i.us.us.us.us.us.us.preheader.new

.lr.ph68.i.us.us.us.us.us.us.preheader.new:       ; preds = %.lr.ph68.i.us.us.us.us.us.us.prol.loopexit
  %i.dh = fdiv fast float 1.000000e+00, %i.cm
  %i.di = fdiv fast float 1.000000e+00, %i.cm
  br label %.lr.ph68.i.us.us.us.us.us.us

.lr.ph68.i.us.us.us.us.us.us:                     ; preds = %.lr.ph68.i.us.us.us.us.us.us, %.lr.ph68.i.us.us.us.us.us.us.preheader.new
  %indvars.iv82.i.us.us.us.us.us.us = phi i64 [ %indvars.iv82.i.us.us.us.us.us.us.unr, %.lr.ph68.i.us.us.us.us.us.us.preheader.new ], [ %indvars.iv.next83.i.us.us.us.us.us.us.1, %.lr.ph68.i.us.us.us.us.us.us ] ; 5 uses
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv82.i.us.us.us.us.us.us ; 2 uses
  %i.dk = load float, ptr %i.dj, align 4, !tbaa !44
  %i.dl = fsub fast float %i.dk, %i.bu
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv82.i.us.us.us.us.us.us
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !44
  %i.do = fmul fast float %i.dl, %i.dn
  %i.dp = fmul fast float %i.do, %i.dh
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv82.i.us.us.us.us.us.us
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !44
  %i.ds = fadd fast float %i.dp, %i.dr
  store float %i.ds, ptr %i.dj, align 4, !tbaa !44
  %indvars.iv.next83.i.us.us.us.us.us.us = add nuw nsw i64 %indvars.iv82.i.us.us.us.us.us.us, 1 ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %indvars.iv.next83.i.us.us.us.us.us.us ; 2 uses
  %i.du = load float, ptr %i.dt, align 4, !tbaa !44
  %i.dv = fsub fast float %i.du, %i.bu
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %indvars.iv.next83.i.us.us.us.us.us.us
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !44
  %i.dy = fmul fast float %i.dv, %i.dx
  %i.dz = fmul fast float %i.dy, %i.di
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv.next83.i.us.us.us.us.us.us
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !44
  %i.ec = fadd fast float %i.dz, %i.eb
  store float %i.ec, ptr %i.dt, align 4, !tbaa !44
  %indvars.iv.next83.i.us.us.us.us.us.us.1 = add nuw nsw i64 %indvars.iv82.i.us.us.us.us.us.us, 2 ; 2 uses
  %exitcond86.not.i.us.us.us.us.us.us.1 = icmp eq i64 %indvars.iv.next83.i.us.us.us.us.us.us.1, %wide.trip.count.i
  br i1 %exitcond86.not.i.us.us.us.us.us.us.1, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us.us.us, label %.lr.ph68.i.us.us.us.us.us.us, !llvm.loop !154

_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us.us.us: ; preds = %.lr.ph68.i.us.us.us.us.us.us.prol.loopexit, %.lr.ph68.i.us.us.us.us.us.us, %middle.block176
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
end_hunk_2
begin_hunk_3_@_ZNK4ncnn9LayerNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.3:bb.a
  %vec.phi133 = phi <4 x float> [ zeroinitializer, %vector.ph127 ], [ %i.ew, %vector.body131 ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index132 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %wide.load134 = load <4 x float>, ptr %i.ep, align 4, !tbaa !44
  %wide.load135 = load <4 x float>, ptr %i.eq, align 4, !tbaa !44
  %i.er = fsub fast <4 x float> %wide.load134, %broadcast.splat130 ; 2 uses
  %i.es = fsub fast <4 x float> %wide.load135, %broadcast.splat130 ; 2 uses
  %i.et = fmul fast <4 x float> %i.er, %i.er
  %i.eu = fmul fast <4 x float> %i.es, %i.es
  %i.ev = fadd fast <4 x float> %i.et, %vec.phi   ; 2 uses
  %i.ew = fadd fast <4 x float> %i.eu, %vec.phi133 ; 2 uses
  %index.next136 = add nuw i64 %index132, 8       ; 2 uses
  %i.ex = icmp eq i64 %index.next136, %n.vec128
  br i1 %i.ex, label %middle.block137, label %vector.body131, !llvm.loop !158

middle.block137:                                  ; preds = %vector.body131
  %bin.rdx = fadd fast <4 x float> %i.ew, %i.ev
  %i.ey = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n138, label %.lr.ph66.i.preheader, label %.lr.ph62.i.preheader

.lr.ph62.i.preheader:                             ; preds = %.lr.ph62.preheader.i, %middle.block137
  %indvars.iv72.i.ph = phi i64 [ 0, %.lr.ph62.preheader.i ], [ %n.vec128, %middle.block137 ]
  %.05059.i.ph = phi float [ 0.000000e+00, %.lr.ph62.preheader.i ], [ %i.ey, %middle.block137 ]
  br label %.lr.ph62.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader220, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader220 ] ; 2 uses
  %.04858.i = phi float [ %i.fb, %.lr.ph.i ], [ %.04858.i.ph, %.lr.ph.i.preheader220 ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !44
  %i.fb = fadd fast float %i.fa, %.04858.i        ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph62.preheader.i, label %.lr.ph.i, !llvm.loop !159

.lr.ph66.i.preheader:                             ; preds = %.lr.ph62.i, %middle.block137
  %.lcssa122 = phi float [ %i.ey, %middle.block137 ], [ %i.fp, %.lr.ph62.i ]
  %i.fc = fmul fast float %.lcssa122, %i.ao
  %i.fd = fadd fast float %i.fc, %i.eh
  %i.fe = call fast float @llvm.sqrt.f32(float %i.fd) ; 2 uses
  br i1 %min.iters.check, label %.lr.ph66.i.preheader219, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph66.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fe, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <4 x float> poison, float %i.eo, i64 0
  %broadcast.splat124 = shufflevector <4 x float> %broadcast.splatinsert123, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ff = fdiv fast <4 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.fg, align 4, !tbaa !44
  %i.fh = fsub fast <4 x float> %wide.load, %broadcast.splat124
  %i.fi = fmul fast <4 x float> %i.fh, %i.ff
  store <4 x float> %i.fi, ptr %i.fg, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !160

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit, label %.lr.ph66.i.preheader219

.lr.ph66.i.preheader219:                          ; preds = %.lr.ph66.i.preheader, %middle.block
  %indvars.iv77.i.ph = phi i64 [ 0, %.lr.ph66.i.preheader ], [ %n.vec, %middle.block ]
  %i.fk = fdiv fast float 1.000000e+00, %i.fe
  br label %.lr.ph66.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.preheader, %.lr.ph62.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %.lr.ph62.i ], [ %indvars.iv72.i.ph, %.lr.ph62.i.preheader ] ; 2 uses
  %.05059.i = phi float [ %i.fp, %.lr.ph62.i ], [ %.05059.i.ph, %.lr.ph62.i.preheader ]
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv72.i
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !44
  %i.fn = fsub fast float %i.fm, %i.eo            ; 2 uses
  %i.fo = fmul fast float %i.fn, %i.fn
  %i.fp = fadd fast float %i.fo, %.05059.i        ; 2 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count.i
  br i1 %exitcond76.not.i, label %.lr.ph66.i.preheader, label %.lr.ph62.i, !llvm.loop !161

.lr.ph66.i:                                       ; preds = %.lr.ph66.i.preheader219, %.lr.ph66.i
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %.lr.ph66.i ], [ %indvars.iv77.i.ph, %.lr.ph66.i.preheader219 ] ; 2 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv77.i ; 2 uses
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !44
  %i.fs = fsub fast float %i.fr, %i.eo
  %i.ft = fmul fast float %i.fs, %i.fk
  store float %i.ft, ptr %i.fq, align 4, !tbaa !44
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next78.i, %wide.trip.count.i
  br i1 %exitcond81.not.i, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit, label %.lr.ph66.i, !llvm.loop !162

_ZN4ncnnL9layernormEPfPKfS2_fi.exit:              ; preds = %.lr.ph66.i, %middle.block, %.noexc34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.noexc34, !llvm.loop !155

._crit_edge.split69:                              ; preds = %._crit_edge63.split65, %._crit_edge63.split65.us.split.us.us.us, %.preheader59.lr.ph.split.split.split.us, %.preheader59.lr.ph, %.preheader59.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.split69, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9LayerNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not55 = icmp sgt i32 %i.k, %i.j
  br i1 %.not55, label %._crit_edge57.split, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.l = load i32, ptr %3, align 4, !tbaa !41     ; 3 uses
  %i.m = icmp sgt i32 %i.l, 0
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 212 ; 2 uses
  br i1 %i.m, label %.preheader.lr.ph.split, label %._crit_edge57.split

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 296
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 224
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43, !noalias !187
  %i.v = load i32, ptr %i.s, align 8, !tbaa !48, !noalias !187
  %i.w = load ptr, ptr %4, align 8, !tbaa !19, !noalias !187 ; 3 uses
  %i.x = load i64, ptr %i.r, align 8, !tbaa !20, !noalias !187 ; 3 uses
  %i.y = load i64, ptr %i.q, align 8, !tbaa !40, !noalias !187 ; 5 uses
  %factor.op.mul58 = mul i64 %i.x, %i.y           ; 2 uses
  %i.z = sext i32 %i.u to i64                     ; 3 uses
  %i.aa = sext i32 %i.v to i64                    ; 3 uses
  %factor.op.mul = mul nsw i64 %i.z, %i.aa
  %factor.op.mul54 = mul i64 %factor.op.mul, %i.y ; 2 uses
  %i.ab = load ptr, ptr %i.p, align 8, !tbaa !19  ; 7 uses
  %i.ac = load ptr, ptr %i.o, align 8, !tbaa !19  ; 7 uses
  %i.ad = load i32, ptr %6, align 4, !tbaa !41
  %i.ae = load i32, ptr %7, align 4, !tbaa !41
  %i.af = mul i32 %i.ae, %i.ad                    ; 9 uses
  %i.ag = icmp sgt i32 %i.af, 0                   ; 2 uses
  %wide.trip.count.i = zext i32 %i.af to i64      ; 21 uses
  %i.ah = uitofp nneg i32 %i.af to float          ; 3 uses
  %i.ai = fdiv fast float 1.000000e+00, %i.ah     ; 2 uses
  %i.aj = icmp ne ptr %i.ab, null
  %i.ak = icmp ne ptr %i.ac, null
  %or.cond.i = and i1 %i.aj, %i.ak
  br i1 %or.cond.i, label %.preheader.lr.ph.split.split.us, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %i.al = sext i32 %i.k to i64
  %i.am = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.l to i64
  %min.iters.check113 = icmp ult i32 %i.af, 8
  %n.vec115 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n125 = icmp eq i64 %n.vec115, %wide.trip.count.i
  %min.iters.check98 = icmp ult i32 %i.af, 8
  %n.vec100 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n110 = icmp eq i64 %n.vec100, %wide.trip.count.i
  %i.an = fdiv fast float 1.000000e+00, %i.ah
  %min.iters.check = icmp ult i32 %i.af, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader

.preheader.lr.ph.split.split.us:                  ; preds = %.preheader.lr.ph.split
  br i1 %i.ag, label %.preheader.us.us.preheader, label %._crit_edge57.split

.preheader.us.us.preheader:                       ; preds = %.preheader.lr.ph.split.split.us
  %i.ao = sext i32 %i.k to i64                    ; 2 uses
  %i.ap = add nsw i32 %i.j, 1
  %wide.trip.count75 = zext nneg i32 %i.l to i64  ; 2 uses
  %i.aq = add nsw i64 %wide.trip.count75, -1
  %i.ar = mul nsw i64 %i.aq, %i.z
  %i.as = mul i64 %i.ar, %i.aa
  %i.at = mul i64 %i.x, %i.ao
  %i.au = add i64 %i.as, %i.at
  %i.av = mul i64 %i.y, %i.au
  %i.aw = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %i.ax = mul i64 %i.x, %i.y
  %i.ay = mul i64 %i.y, %i.z
  %i.az = mul i64 %i.ay, %i.aa
  %scevgep128 = getelementptr i8, ptr %i.ab, i64 %i.aw
  %scevgep129 = getelementptr i8, ptr %i.ac, i64 %i.aw
  %i.ba = getelementptr i8, ptr %i.w, i64 %i.av
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.aw
  %min.iters.check170 = icmp ult i32 %i.af, 8
  %n.vec172 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n182 = icmp eq i64 %n.vec172, %wide.trip.count.i
  %min.iters.check152 = icmp ult i32 %i.af, 8
  %n.vec154 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n166 = icmp eq i64 %n.vec154, %wide.trip.count.i
  %i.bc = fdiv fast float 1.000000e+00, %i.ah
  %min.iters.check135 = icmp ult i32 %i.af, 4
  %stride.check133 = icmp slt i64 %i.az, 0
  %n.vec137 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n149 = icmp eq i64 %n.vec137, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.bd = add nsw i64 %wide.trip.count.i, -1
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.split.us.us.split.us.us
  %indvar = phi i64 [ 0, %.preheader.us.us.preheader ], [ %indvar.next, %._crit_edge.split.us.us.split.us.us ] ; 2 uses
  %indvars.iv77 = phi i64 [ %i.ao, %.preheader.us.us.preheader ], [ %indvars.iv.next78, %._crit_edge.split.us.us.split.us.us ] ; 2 uses
  %i.be = mul i64 %i.ax, %indvar
  %scevgep = getelementptr i8, ptr %i.bb, i64 %i.be ; 2 uses
  %.reass.us.us = mul i64 %factor.op.mul58, %indvars.iv77
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 %.reass.us.us ; 3 uses
  %bound0 = icmp ult ptr %i.bf, %scevgep128
  %bound1 = icmp ult ptr %i.ab, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0130 = icmp ult ptr %i.bf, %scevgep129
  %bound1131 = icmp ult ptr %i.ac, %scevgep
  %found.conflict132 = and i1 %bound0130, %bound1131
  %i.bg = or i1 %found.conflict132, %stride.check133
  %conflict.rdx = or i1 %found.conflict, %i.bg
  br label %.noexc30.us.us.us.us

.noexc30.us.us.us.us:                             ; preds = %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us, %.preheader.us.us
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us ], [ 0, %.preheader.us.us ] ; 2 uses
  %.reass.reass.us.us.us.us = mul i64 %factor.op.mul54, %indvars.iv72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.reass.reass.us.us.us.us ; 8 uses
  %i.bi = load float, ptr %i.n, align 4, !tbaa !38
  br i1 %min.iters.check170, label %.lr.ph.i.us.us.us.us.preheader, label %vector.body173

vector.body173:                                   ; preds = %.noexc30.us.us.us.us, %vector.body173
  %index174 = phi i64 [ %index.next179, %vector.body173 ], [ 0, %.noexc30.us.us.us.us ] ; 2 uses
  %vec.phi175 = phi <4 x float> [ %i.bl, %vector.body173 ], [ zeroinitializer, %.noexc30.us.us.us.us ]
  %vec.phi176 = phi <4 x float> [ %i.bm, %vector.body173 ], [ zeroinitializer, %.noexc30.us.us.us.us ]
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index174 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %wide.load177 = load <4 x float>, ptr %i.bj, align 4, !tbaa !44
  %wide.load178 = load <4 x float>, ptr %i.bk, align 4, !tbaa !44
  %i.bl = fadd fast <4 x float> %wide.load177, %vec.phi175 ; 2 uses
  %i.bm = fadd fast <4 x float> %wide.load178, %vec.phi176 ; 2 uses
  %index.next179 = add nuw i64 %index174, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next179, %n.vec172
  br i1 %i.bn, label %middle.block180, label %vector.body173, !llvm.loop !170

middle.block180:                                  ; preds = %vector.body173
  %bin.rdx181 = fadd fast <4 x float> %i.bm, %i.bl
  %i.bo = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx181) ; 2 uses
  br i1 %cmp.n182, label %.lr.ph62.preheader.i.us.us.us.us, label %.lr.ph.i.us.us.us.us.preheader

.lr.ph.i.us.us.us.us.preheader:                   ; preds = %.noexc30.us.us.us.us, %middle.block180
  %indvars.iv.i.us.us.us.us.ph = phi i64 [ 0, %.noexc30.us.us.us.us ], [ %n.vec172, %middle.block180 ]
  %.04858.i.us.us.us.us.ph = phi float [ 0.000000e+00, %.noexc30.us.us.us.us ], [ %i.bo, %middle.block180 ]
  br label %.lr.ph.i.us.us.us.us

.lr.ph.i.us.us.us.us:                             ; preds = %.lr.ph.i.us.us.us.us.preheader, %.lr.ph.i.us.us.us.us
  %indvars.iv.i.us.us.us.us = phi i64 [ %indvars.iv.next.i.us.us.us.us, %.lr.ph.i.us.us.us.us ], [ %indvars.iv.i.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.preheader ] ; 2 uses
  %.04858.i.us.us.us.us = phi float [ %i.br, %.lr.ph.i.us.us.us.us ], [ %.04858.i.us.us.us.us.ph, %.lr.ph.i.us.us.us.us.preheader ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.us.us.us.us
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !44
  %i.br = fadd fast float %i.bq, %.04858.i.us.us.us.us ; 2 uses
  %indvars.iv.next.i.us.us.us.us = add nuw nsw i64 %indvars.iv.i.us.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us.us = icmp eq i64 %indvars.iv.next.i.us.us.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.us.us, label %.lr.ph62.preheader.i.us.us.us.us, label %.lr.ph.i.us.us.us.us, !llvm.loop !171

.lr.ph62.preheader.i.us.us.us.us:                 ; preds = %.lr.ph.i.us.us.us.us, %middle.block180
  %.lcssa = phi float [ %i.bo, %middle.block180 ], [ %i.br, %.lr.ph.i.us.us.us.us ]
  %i.bs = fmul fast float %.lcssa, %i.ai          ; 6 uses
  br i1 %min.iters.check152, label %.lr.ph62.i.us.us.us.us.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %.lr.ph62.preheader.i.us.us.us.us
  %broadcast.splatinsert155 = insertelement <4 x float> poison, float %i.bs, i64 0
  %broadcast.splat156 = shufflevector <4 x float> %broadcast.splatinsert155, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body157

vector.body157:                                   ; preds = %vector.body157, %vector.ph153
  %index158 = phi i64 [ 0, %vector.ph153 ], [ %index.next163, %vector.body157 ] ; 2 uses
  %vec.phi159 = phi <4 x float> [ zeroinitializer, %vector.ph153 ], [ %i.bz, %vector.body157 ]
  %vec.phi160 = phi <4 x float> [ zeroinitializer, %vector.ph153 ], [ %i.ca, %vector.body157 ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index158 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %wide.load161 = load <4 x float>, ptr %i.bt, align 4, !tbaa !44
  %wide.load162 = load <4 x float>, ptr %i.bu, align 4, !tbaa !44
  %i.bv = fsub fast <4 x float> %wide.load161, %broadcast.splat156 ; 2 uses
  %i.bw = fsub fast <4 x float> %wide.load162, %broadcast.splat156 ; 2 uses
  %i.bx = fmul fast <4 x float> %i.bv, %i.bv
  %i.by = fmul fast <4 x float> %i.bw, %i.bw
  %i.bz = fadd fast <4 x float> %i.bx, %vec.phi159 ; 2 uses
  %i.ca = fadd fast <4 x float> %i.by, %vec.phi160 ; 2 uses
  %index.next163 = add nuw i64 %index158, 8       ; 2 uses
  %i.cb = icmp eq i64 %index.next163, %n.vec154
  br i1 %i.cb, label %middle.block164, label %vector.body157, !llvm.loop !172

middle.block164:                                  ; preds = %vector.body157
  %bin.rdx165 = fadd fast <4 x float> %i.ca, %i.bz
  %i.cc = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx165) ; 2 uses
  br i1 %cmp.n166, label %._crit_edge63.i.loopexit.us.us.us.us, label %.lr.ph62.i.us.us.us.us.preheader

.lr.ph62.i.us.us.us.us.preheader:                 ; preds = %.lr.ph62.preheader.i.us.us.us.us, %middle.block164
  %indvars.iv72.i.us.us.us.us.ph = phi i64 [ 0, %.lr.ph62.preheader.i.us.us.us.us ], [ %n.vec154, %middle.block164 ]
  %.05059.i.us.us.us.us.ph = phi float [ 0.000000e+00, %.lr.ph62.preheader.i.us.us.us.us ], [ %i.cc, %middle.block164 ]
  br label %.lr.ph62.i.us.us.us.us

.lr.ph62.i.us.us.us.us:                           ; preds = %.lr.ph62.i.us.us.us.us.preheader, %.lr.ph62.i.us.us.us.us
  %indvars.iv72.i.us.us.us.us = phi i64 [ %indvars.iv.next73.i.us.us.us.us, %.lr.ph62.i.us.us.us.us ], [ %indvars.iv72.i.us.us.us.us.ph, %.lr.ph62.i.us.us.us.us.preheader ] ; 2 uses
  %.05059.i.us.us.us.us = phi float [ %i.ch, %.lr.ph62.i.us.us.us.us ], [ %.05059.i.us.us.us.us.ph, %.lr.ph62.i.us.us.us.us.preheader ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv72.i.us.us.us.us
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !44
  %i.cf = fsub fast float %i.ce, %i.bs            ; 2 uses
  %i.cg = fmul fast float %i.cf, %i.cf
  %i.ch = fadd fast float %i.cg, %.05059.i.us.us.us.us ; 2 uses
  %indvars.iv.next73.i.us.us.us.us = add nuw nsw i64 %indvars.iv72.i.us.us.us.us, 1 ; 2 uses
  %exitcond76.not.i.us.us.us.us = icmp eq i64 %indvars.iv.next73.i.us.us.us.us, %wide.trip.count.i
  br i1 %exitcond76.not.i.us.us.us.us, label %._crit_edge63.i.loopexit.us.us.us.us, label %.lr.ph62.i.us.us.us.us, !llvm.loop !173

._crit_edge63.i.loopexit.us.us.us.us:             ; preds = %.lr.ph62.i.us.us.us.us, %middle.block164
  %.lcssa92 = phi float [ %i.cc, %middle.block164 ], [ %i.ch, %.lr.ph62.i.us.us.us.us ]
  %i.ci = fmul fast float %.lcssa92, %i.bc
  %i.cj = fadd fast float %i.ci, %i.bi
  %i.ck = call fast float @llvm.sqrt.f32(float %i.cj) ; 4 uses
  %brmerge = select i1 %min.iters.check135, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph68.i.us.us.us.us.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %._crit_edge63.i.loopexit.us.us.us.us
  %broadcast.splatinsert138 = insertelement <4 x float> poison, float %i.ck, i64 0
  %broadcast.splat139 = shufflevector <4 x float> %broadcast.splatinsert138, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert140 = insertelement <4 x float> poison, float %i.bs, i64 0
  %broadcast.splat141 = shufflevector <4 x float> %broadcast.splatinsert140, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cl = fdiv fast <4 x float> splat (float 1.000000e+00), %broadcast.splat139
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph136
  %index143 = phi i64 [ 0, %vector.ph136 ], [ %index.next147, %vector.body142 ] ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index143 ; 2 uses
  %wide.load144 = load <4 x float>, ptr %i.cm, align 4, !tbaa !44, !alias.scope !188, !noalias !189
  %i.cn = fsub fast <4 x float> %wide.load144, %broadcast.splat141
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index143
  %wide.load145 = load <4 x float>, ptr %i.co, align 4, !tbaa !44, !alias.scope !190
  %i.cp = fmul fast <4 x float> %i.cn, %wide.load145
  %i.cq = fmul fast <4 x float> %i.cp, %i.cl
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index143
  %wide.load146 = load <4 x float>, ptr %i.cr, align 4, !tbaa !44, !alias.scope !191
  %i.cs = fadd fast <4 x float> %i.cq, %wide.load146
  store <4 x float> %i.cs, ptr %i.cm, align 4, !tbaa !44, !alias.scope !188, !noalias !189
  %index.next147 = add nuw i64 %index143, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next147, %n.vec137
  br i1 %i.ct, label %middle.block148, label %vector.body142, !llvm.loop !178

middle.block148:                                  ; preds = %vector.body142
  br i1 %cmp.n149, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us, label %.lr.ph68.i.us.us.us.us.preheader

.lr.ph68.i.us.us.us.us.preheader:                 ; preds = %._crit_edge63.i.loopexit.us.us.us.us, %middle.block148
  %indvars.iv82.i.us.us.us.us.ph = phi i64 [ %n.vec137, %middle.block148 ], [ 0, %._crit_edge63.i.loopexit.us.us.us.us ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph68.i.us.us.us.us.prol.loopexit, label %.lr.ph68.i.us.us.us.us.prol

.lr.ph68.i.us.us.us.us.prol:                      ; preds = %.lr.ph68.i.us.us.us.us.preheader
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv82.i.us.us.us.us.ph ; 2 uses
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !44
  %i.cw = fsub fast float %i.cv, %i.bs
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv82.i.us.us.us.us.ph
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !44
  %i.cz = fmul fast float %i.cw, %i.cy
  %i.da = fdiv fast float %i.cz, %i.ck
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv82.i.us.us.us.us.ph
  %i.dc = load float, ptr %i.db, align 4, !tbaa !44
  %i.dd = fadd fast float %i.da, %i.dc
  store float %i.dd, ptr %i.cu, align 4, !tbaa !44
  %indvars.iv.next83.i.us.us.us.us.prol = or disjoint i64 %indvars.iv82.i.us.us.us.us.ph, 1
  br label %.lr.ph68.i.us.us.us.us.prol.loopexit

.lr.ph68.i.us.us.us.us.prol.loopexit:             ; preds = %.lr.ph68.i.us.us.us.us.prol, %.lr.ph68.i.us.us.us.us.preheader
  %indvars.iv82.i.us.us.us.us.unr = phi i64 [ %indvars.iv82.i.us.us.us.us.ph, %.lr.ph68.i.us.us.us.us.preheader ], [ %indvars.iv.next83.i.us.us.us.us.prol, %.lr.ph68.i.us.us.us.us.prol ]
  %i.de = icmp eq i64 %indvars.iv82.i.us.us.us.us.ph, %i.bd
  br i1 %i.de, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us.us.us, label %.lr.ph68.i.us.us.us.us.preheader.new

.lr.ph68.i.us.us.us.us.preheader.new:             ; preds = %.lr.ph68.i.us.us.us.us.prol.loopexit
  %i.df = fdiv fast float 1.000000e+00, %i.ck
  %i.dg = fdiv fast float 1.000000e+00, %i.ck
  br label %.lr.ph68.i.us.us.us.us

.lr.ph68.i.us.us.us.us:                           ; preds = %.lr.ph68.i.us.us.us.us, %.lr.ph68.i.us.us.us.us.preheader.new
  %indvars.iv82.i.us.us.us.us = phi i64 [ %indvars.iv82.i.us.us.us.us.unr, %.lr.ph68.i.us.us.us.us.preheader.new ], [ %indvars.iv.next83.i.us.us.us.us.1, %.lr.ph68.i.us.us.us.us ] ; 5 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv82.i.us.us.us.us ; 2 uses
  %i.di = load float, ptr %i.dh, align 4, !tbaa !44
  %i.dj = fsub fast float %i.di, %i.bs
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv82.i.us.us.us.us
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !44
end_hunk_3
begin_hunk_4_@_ZNK4ncnn9LayerNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.4:bb.a
  %i.eg = fadd fast <4 x float> %wide.load120, %vec.phi118 ; 2 uses
  %i.eh = fadd fast <4 x float> %wide.load121, %vec.phi119 ; 2 uses
  %index.next122 = add nuw i64 %index117, 8       ; 2 uses
  %i.ei = icmp eq i64 %index.next122, %n.vec115
  br i1 %i.ei, label %middle.block123, label %vector.body116, !llvm.loop !181

middle.block123:                                  ; preds = %vector.body116
  %bin.rdx124 = fadd fast <4 x float> %i.eh, %i.eg
  %i.ej = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx124) ; 2 uses
  br i1 %cmp.n125, label %.lr.ph62.preheader.i, label %.lr.ph.i.preheader192

.lr.ph.i.preheader192:                            ; preds = %.lr.ph.i.preheader, %middle.block123
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec115, %middle.block123 ]
  %.04858.i.ph = phi float [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.ej, %middle.block123 ]
  br label %.lr.ph.i

.lr.ph62.preheader.i:                             ; preds = %.lr.ph.i, %middle.block123
  %.lcssa93 = phi float [ %i.ej, %middle.block123 ], [ %i.ex, %.lr.ph.i ]
  %i.ek = fmul fast float %.lcssa93, %i.ai        ; 4 uses
  br i1 %min.iters.check98, label %.lr.ph62.i.preheader, label %vector.ph99

vector.ph99:                                      ; preds = %.lr.ph62.preheader.i
  %broadcast.splatinsert101 = insertelement <4 x float> poison, float %i.ek, i64 0
  %broadcast.splat102 = shufflevector <4 x float> %broadcast.splatinsert101, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph99
  %index104 = phi i64 [ 0, %vector.ph99 ], [ %index.next108, %vector.body103 ] ; 2 uses
  %vec.phi = phi <4 x float> [ zeroinitializer, %vector.ph99 ], [ %i.er, %vector.body103 ]
  %vec.phi105 = phi <4 x float> [ zeroinitializer, %vector.ph99 ], [ %i.es, %vector.body103 ]
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %index104 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load106 = load <4 x float>, ptr %i.el, align 4, !tbaa !44
  %wide.load107 = load <4 x float>, ptr %i.em, align 4, !tbaa !44
  %i.en = fsub fast <4 x float> %wide.load106, %broadcast.splat102 ; 2 uses
  %i.eo = fsub fast <4 x float> %wide.load107, %broadcast.splat102 ; 2 uses
  %i.ep = fmul fast <4 x float> %i.en, %i.en
  %i.eq = fmul fast <4 x float> %i.eo, %i.eo
  %i.er = fadd fast <4 x float> %i.ep, %vec.phi   ; 2 uses
  %i.es = fadd fast <4 x float> %i.eq, %vec.phi105 ; 2 uses
  %index.next108 = add nuw i64 %index104, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next108, %n.vec100
  br i1 %i.et, label %middle.block109, label %vector.body103, !llvm.loop !182

middle.block109:                                  ; preds = %vector.body103
  %bin.rdx = fadd fast <4 x float> %i.es, %i.er
  %i.eu = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx) ; 2 uses
  br i1 %cmp.n110, label %.lr.ph66.i.preheader, label %.lr.ph62.i.preheader

.lr.ph62.i.preheader:                             ; preds = %.lr.ph62.preheader.i, %middle.block109
  %indvars.iv72.i.ph = phi i64 [ 0, %.lr.ph62.preheader.i ], [ %n.vec100, %middle.block109 ]
  %.05059.i.ph = phi float [ 0.000000e+00, %.lr.ph62.preheader.i ], [ %i.eu, %middle.block109 ]
  br label %.lr.ph62.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader192, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader192 ] ; 2 uses
  %.04858.i = phi float [ %i.ex, %.lr.ph.i ], [ %.04858.i.ph, %.lr.ph.i.preheader192 ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !44
  %i.ex = fadd fast float %i.ew, %.04858.i        ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph62.preheader.i, label %.lr.ph.i, !llvm.loop !183

.lr.ph66.i.preheader:                             ; preds = %.lr.ph62.i, %middle.block109
  %.lcssa94 = phi float [ %i.eu, %middle.block109 ], [ %i.fl, %.lr.ph62.i ]
  %i.ey = fmul fast float %.lcssa94, %i.an
  %i.ez = fadd fast float %i.ey, %i.ed
  %i.fa = call fast float @llvm.sqrt.f32(float %i.ez) ; 2 uses
  br i1 %min.iters.check, label %.lr.ph66.i.preheader191, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph66.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <4 x float> poison, float %i.ek, i64 0
  %broadcast.splat96 = shufflevector <4 x float> %broadcast.splatinsert95, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fb = fdiv fast <4 x float> splat (float 1.000000e+00), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %index ; 2 uses
  %wide.load = load <4 x float>, ptr %i.fc, align 4, !tbaa !44
  %i.fd = fsub fast <4 x float> %wide.load, %broadcast.splat96
  %i.fe = fmul fast <4 x float> %i.fd, %i.fb
  store <4 x float> %i.fe, ptr %i.fc, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ff = icmp eq i64 %index.next, %n.vec
  br i1 %i.ff, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit, label %.lr.ph66.i.preheader191

.lr.ph66.i.preheader191:                          ; preds = %.lr.ph66.i.preheader, %middle.block
  %indvars.iv77.i.ph = phi i64 [ 0, %.lr.ph66.i.preheader ], [ %n.vec, %middle.block ]
  %i.fg = fdiv fast float 1.000000e+00, %i.fa
  br label %.lr.ph66.i

.lr.ph62.i:                                       ; preds = %.lr.ph62.i.preheader, %.lr.ph62.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %.lr.ph62.i ], [ %indvars.iv72.i.ph, %.lr.ph62.i.preheader ] ; 2 uses
  %.05059.i = phi float [ %i.fl, %.lr.ph62.i ], [ %.05059.i.ph, %.lr.ph62.i.preheader ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv72.i
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !44
  %i.fj = fsub fast float %i.fi, %i.ek            ; 2 uses
  %i.fk = fmul fast float %i.fj, %i.fj
  %i.fl = fadd fast float %i.fk, %.05059.i        ; 2 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 2 uses
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count.i
  br i1 %exitcond76.not.i, label %.lr.ph66.i.preheader, label %.lr.ph62.i, !llvm.loop !185

.lr.ph66.i:                                       ; preds = %.lr.ph66.i.preheader191, %.lr.ph66.i
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %.lr.ph66.i ], [ %indvars.iv77.i.ph, %.lr.ph66.i.preheader191 ] ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv77.i ; 2 uses
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !44
  %i.fo = fsub fast float %i.fn, %i.ek
  %i.fp = fmul fast float %i.fo, %i.fg
  store float %i.fp, ptr %i.fm, align 4, !tbaa !44
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next78.i, %wide.trip.count.i
  br i1 %exitcond81.not.i, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit, label %.lr.ph66.i, !llvm.loop !186

_ZN4ncnnL9layernormEPfPKfS2_fi.exit:              ; preds = %.lr.ph66.i, %middle.block, %.noexc30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.split, label %.noexc30, !llvm.loop !180

._crit_edge57.split:                              ; preds = %._crit_edge.split, %._crit_edge.split.us.us.split.us.us, %.preheader.lr.ph.split.split.us, %.preheader.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge57.split, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9LayerNorm15forward_inplaceERNS_3MatERKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 5 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 4 uses
  %.not27 = icmp sgt i32 %i.k, %i.j
  br i1 %.not27, label %._crit_edge, label %.noexc19.lr.ph

.noexc19.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !19, !noalias !210 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !20, !noalias !210 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !40, !noalias !210 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p             ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 224
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 296
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !19   ; 7 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 212 ; 2 uses
  %i.v = load i32, ptr %5, align 4, !tbaa !41
  %i.w = load i32, ptr %6, align 4, !tbaa !41
  %i.x = mul i32 %i.w, %i.v
  %i.y = load i32, ptr %7, align 4, !tbaa !41
  %i.z = mul i32 %i.x, %i.y                       ; 9 uses
  %i.aa = icmp sgt i32 %i.z, 0                    ; 2 uses
  %wide.trip.count.i = zext i32 %i.z to i64       ; 21 uses
  %i.ab = uitofp nneg i32 %i.z to float           ; 3 uses
  %i.ac = fdiv fast float 1.000000e+00, %i.ab     ; 2 uses
  %i.ad = icmp ne ptr %i.r, null
  %i.ae = icmp ne ptr %i.t, null
  %or.cond.i = and i1 %i.ad, %i.ae
  br i1 %or.cond.i, label %.noexc19.lr.ph.split.us, label %.noexc19.lr.ph.split

.noexc19.lr.ph.split.us:                          ; preds = %.noexc19.lr.ph
  br i1 %i.aa, label %.noexc19.lr.ph.split.us.split.us, label %._crit_edge

.noexc19.lr.ph.split.us.split.us:                 ; preds = %.noexc19.lr.ph.split.us
  %i.af = sext i32 %i.k to i64                    ; 3 uses
  %i.ag = add nsw i32 %i.j, 1
  %i.ah = mul i64 %i.n, %i.p                      ; 2 uses
  %i.ai = mul i64 %i.ah, %i.af
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.ai ; 2 uses
  %i.aj = sub i32 %i.j, %i.k
  %i.ak = zext i32 %i.aj to i64
  %i.al = add nsw i64 %i.af, %i.ak
  %i.am = mul i64 %i.ah, %i.al
  %i.an = shl nuw nsw i64 %wide.trip.count.i, 2   ; 3 uses
  %i.ao = getelementptr i8, ptr %i.l, i64 %i.am
  %scevgep110 = getelementptr i8, ptr %i.ao, i64 %i.an ; 2 uses
  %i.ap = mul i64 %i.n, %i.p
  %scevgep111 = getelementptr i8, ptr %i.r, i64 %i.an
  %scevgep112 = getelementptr i8, ptr %i.t, i64 %i.an
  %min.iters.check153 = icmp ult i32 %i.z, 8
  %n.vec155 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n165 = icmp eq i64 %n.vec155, %wide.trip.count.i
  %min.iters.check135 = icmp ult i32 %i.z, 8
  %n.vec137 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n149 = icmp eq i64 %n.vec137, %wide.trip.count.i
  %i.aq = fdiv fast float 1.000000e+00, %i.ab
  %min.iters.check118 = icmp ult i32 %i.z, 4
  %bound0 = icmp ult ptr %scevgep, %scevgep111
  %bound1 = icmp ult ptr %i.r, %scevgep110
  %found.conflict = and i1 %bound0, %bound1
  %bound0113 = icmp ult ptr %scevgep, %scevgep112
  %bound1114 = icmp ult ptr %i.t, %scevgep110
  %found.conflict115 = and i1 %bound0113, %bound1114
  %stride.check116 = icmp slt i64 %i.ap, 0
  %i.ar = or i1 %found.conflict115, %stride.check116
  %conflict.rdx = or i1 %found.conflict, %i.ar
  %n.vec120 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n132 = icmp eq i64 %n.vec120, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.as = add nsw i64 %wide.trip.count.i, -1
  br label %.noexc19.us.us

.noexc19.us.us:                                   ; preds = %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us, %.noexc19.lr.ph.split.us.split.us
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us ], [ %i.af, %.noexc19.lr.ph.split.us.split.us ] ; 2 uses
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv60
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass.us.us ; 8 uses
  %i.au = load float, ptr %i.u, align 4, !tbaa !38
  br i1 %min.iters.check153, label %.lr.ph.i.us.us.preheader, label %vector.body156

vector.body156:                                   ; preds = %.noexc19.us.us, %vector.body156
  %index157 = phi i64 [ %index.next162, %vector.body156 ], [ 0, %.noexc19.us.us ] ; 2 uses
  %vec.phi158 = phi <4 x float> [ %i.ax, %vector.body156 ], [ zeroinitializer, %.noexc19.us.us ]
  %vec.phi159 = phi <4 x float> [ %i.ay, %vector.body156 ], [ zeroinitializer, %.noexc19.us.us ]
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index157 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load160 = load <4 x float>, ptr %i.av, align 4, !tbaa !44
  %wide.load161 = load <4 x float>, ptr %i.aw, align 4, !tbaa !44
  %i.ax = fadd fast <4 x float> %wide.load160, %vec.phi158 ; 2 uses
  %i.ay = fadd fast <4 x float> %wide.load161, %vec.phi159 ; 2 uses
  %index.next162 = add nuw i64 %index157, 8       ; 2 uses
  %i.az = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.az, label %middle.block163, label %vector.body156, !llvm.loop !194

middle.block163:                                  ; preds = %vector.body156
  %bin.rdx164 = fadd fast <4 x float> %i.ay, %i.ax
  %i.ba = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx164) ; 2 uses
  br i1 %cmp.n165, label %.lr.ph62.preheader.i.us.us, label %.lr.ph.i.us.us.preheader

.lr.ph.i.us.us.preheader:                         ; preds = %.noexc19.us.us, %middle.block163
  %indvars.iv.i.us.us.ph = phi i64 [ 0, %.noexc19.us.us ], [ %n.vec155, %middle.block163 ]
  %.04858.i.us.us.ph = phi float [ 0.000000e+00, %.noexc19.us.us ], [ %i.ba, %middle.block163 ]
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.preheader, %.lr.ph.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %.lr.ph.i.us.us ], [ %indvars.iv.i.us.us.ph, %.lr.ph.i.us.us.preheader ] ; 2 uses
  %.04858.i.us.us = phi float [ %i.bd, %.lr.ph.i.us.us ], [ %.04858.i.us.us.ph, %.lr.ph.i.us.us.preheader ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.us.us
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !44
  %i.bd = fadd fast float %i.bc, %.04858.i.us.us  ; 2 uses
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %.lr.ph62.preheader.i.us.us, label %.lr.ph.i.us.us, !llvm.loop !195

.lr.ph62.preheader.i.us.us:                       ; preds = %.lr.ph.i.us.us, %middle.block163
  %.lcssa = phi float [ %i.ba, %middle.block163 ], [ %i.bd, %.lr.ph.i.us.us ]
  %i.be = fmul fast float %.lcssa, %i.ac          ; 6 uses
  br i1 %min.iters.check135, label %.lr.ph62.i.us.us.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph62.preheader.i.us.us
  %broadcast.splatinsert138 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat139 = shufflevector <4 x float> %broadcast.splatinsert138, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body140

vector.body140:                                   ; preds = %vector.body140, %vector.ph136
  %index141 = phi i64 [ 0, %vector.ph136 ], [ %index.next146, %vector.body140 ] ; 2 uses
  %vec.phi142 = phi <4 x float> [ zeroinitializer, %vector.ph136 ], [ %i.bl, %vector.body140 ]
  %vec.phi143 = phi <4 x float> [ zeroinitializer, %vector.ph136 ], [ %i.bm, %vector.body140 ]
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index141 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load144 = load <4 x float>, ptr %i.bf, align 4, !tbaa !44
  %wide.load145 = load <4 x float>, ptr %i.bg, align 4, !tbaa !44
  %i.bh = fsub fast <4 x float> %wide.load144, %broadcast.splat139 ; 2 uses
  %i.bi = fsub fast <4 x float> %wide.load145, %broadcast.splat139 ; 2 uses
  %i.bj = fmul fast <4 x float> %i.bh, %i.bh
  %i.bk = fmul fast <4 x float> %i.bi, %i.bi
  %i.bl = fadd fast <4 x float> %i.bj, %vec.phi142 ; 2 uses
  %i.bm = fadd fast <4 x float> %i.bk, %vec.phi143 ; 2 uses
  %index.next146 = add nuw i64 %index141, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next146, %n.vec137
  br i1 %i.bn, label %middle.block147, label %vector.body140, !llvm.loop !196

middle.block147:                                  ; preds = %vector.body140
  %bin.rdx148 = fadd fast <4 x float> %i.bm, %i.bl
  %i.bo = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %bin.rdx148) ; 2 uses
  br i1 %cmp.n149, label %._crit_edge63.i.loopexit.us.us, label %.lr.ph62.i.us.us.preheader

.lr.ph62.i.us.us.preheader:                       ; preds = %.lr.ph62.preheader.i.us.us, %middle.block147
  %indvars.iv72.i.us.us.ph = phi i64 [ 0, %.lr.ph62.preheader.i.us.us ], [ %n.vec137, %middle.block147 ]
  %.05059.i.us.us.ph = phi float [ 0.000000e+00, %.lr.ph62.preheader.i.us.us ], [ %i.bo, %middle.block147 ]
  br label %.lr.ph62.i.us.us

.lr.ph62.i.us.us:                                 ; preds = %.lr.ph62.i.us.us.preheader, %.lr.ph62.i.us.us
  %indvars.iv72.i.us.us = phi i64 [ %indvars.iv.next73.i.us.us, %.lr.ph62.i.us.us ], [ %indvars.iv72.i.us.us.ph, %.lr.ph62.i.us.us.preheader ] ; 2 uses
  %.05059.i.us.us = phi float [ %i.bt, %.lr.ph62.i.us.us ], [ %.05059.i.us.us.ph, %.lr.ph62.i.us.us.preheader ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv72.i.us.us
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !44
  %i.br = fsub fast float %i.bq, %i.be            ; 2 uses
  %i.bs = fmul fast float %i.br, %i.br
  %i.bt = fadd fast float %i.bs, %.05059.i.us.us  ; 2 uses
  %indvars.iv.next73.i.us.us = add nuw nsw i64 %indvars.iv72.i.us.us, 1 ; 2 uses
  %exitcond76.not.i.us.us = icmp eq i64 %indvars.iv.next73.i.us.us, %wide.trip.count.i
  br i1 %exitcond76.not.i.us.us, label %._crit_edge63.i.loopexit.us.us, label %.lr.ph62.i.us.us, !llvm.loop !197

._crit_edge63.i.loopexit.us.us:                   ; preds = %.lr.ph62.i.us.us, %middle.block147
  %.lcssa74 = phi float [ %i.bo, %middle.block147 ], [ %i.bt, %.lr.ph62.i.us.us ]
  %i.bu = fmul fast float %.lcssa74, %i.aq
  %i.bv = fadd fast float %i.bu, %i.au
  %i.bw = call fast float @llvm.sqrt.f32(float %i.bv) ; 4 uses
  %brmerge = select i1 %min.iters.check118, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %.lr.ph68.i.us.us.preheader, label %vector.ph119

vector.ph119:                                     ; preds = %._crit_edge63.i.loopexit.us.us
  %broadcast.splatinsert121 = insertelement <4 x float> poison, float %i.bw, i64 0
  %broadcast.splat122 = shufflevector <4 x float> %broadcast.splatinsert121, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert123 = insertelement <4 x float> poison, float %i.be, i64 0
  %broadcast.splat124 = shufflevector <4 x float> %broadcast.splatinsert123, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bx = fdiv fast <4 x float> splat (float 1.000000e+00), %broadcast.splat122
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph119
  %index126 = phi i64 [ 0, %vector.ph119 ], [ %index.next130, %vector.body125 ] ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %index126 ; 2 uses
  %wide.load127 = load <4 x float>, ptr %i.by, align 4, !tbaa !44, !alias.scope !211, !noalias !212
  %i.bz = fsub fast <4 x float> %wide.load127, %broadcast.splat124
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index126
  %wide.load128 = load <4 x float>, ptr %i.ca, align 4, !tbaa !44, !alias.scope !213
  %i.cb = fmul fast <4 x float> %i.bz, %wide.load128
  %i.cc = fmul fast <4 x float> %i.cb, %i.bx
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %index126
  %wide.load129 = load <4 x float>, ptr %i.cd, align 4, !tbaa !44, !alias.scope !214
  %i.ce = fadd fast <4 x float> %i.cc, %wide.load129
  store <4 x float> %i.ce, ptr %i.by, align 4, !tbaa !44, !alias.scope !211, !noalias !212
  %index.next130 = add nuw i64 %index126, 4       ; 2 uses
  %i.cf = icmp eq i64 %index.next130, %n.vec120
  br i1 %i.cf, label %middle.block131, label %vector.body125, !llvm.loop !202

middle.block131:                                  ; preds = %vector.body125
  br i1 %cmp.n132, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us, label %.lr.ph68.i.us.us.preheader

.lr.ph68.i.us.us.preheader:                       ; preds = %._crit_edge63.i.loopexit.us.us, %middle.block131
  %indvars.iv82.i.us.us.ph = phi i64 [ %n.vec120, %middle.block131 ], [ 0, %._crit_edge63.i.loopexit.us.us ] ; 6 uses
  br i1 %lcmp.mod.not, label %.lr.ph68.i.us.us.prol.loopexit, label %.lr.ph68.i.us.us.prol

.lr.ph68.i.us.us.prol:                            ; preds = %.lr.ph68.i.us.us.preheader
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv82.i.us.us.ph ; 2 uses
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !44
  %i.ci = fsub fast float %i.ch, %i.be
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv82.i.us.us.ph
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !44
  %i.cl = fmul fast float %i.ci, %i.ck
  %i.cm = fdiv fast float %i.cl, %i.bw
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv82.i.us.us.ph
  %i.co = load float, ptr %i.cn, align 4, !tbaa !44
  %i.cp = fadd fast float %i.cm, %i.co
  store float %i.cp, ptr %i.cg, align 4, !tbaa !44
  %indvars.iv.next83.i.us.us.prol = or disjoint i64 %indvars.iv82.i.us.us.ph, 1
  br label %.lr.ph68.i.us.us.prol.loopexit

.lr.ph68.i.us.us.prol.loopexit:                   ; preds = %.lr.ph68.i.us.us.prol, %.lr.ph68.i.us.us.preheader
  %indvars.iv82.i.us.us.unr = phi i64 [ %indvars.iv82.i.us.us.ph, %.lr.ph68.i.us.us.preheader ], [ %indvars.iv.next83.i.us.us.prol, %.lr.ph68.i.us.us.prol ]
  %i.cq = icmp eq i64 %indvars.iv82.i.us.us.ph, %i.as
  br i1 %i.cq, label %_ZN4ncnnL9layernormEPfPKfS2_fi.exit.loopexit.us.us, label %.lr.ph68.i.us.us.preheader.new

.lr.ph68.i.us.us.preheader.new:                   ; preds = %.lr.ph68.i.us.us.prol.loopexit
  %i.cr = fdiv fast float 1.000000e+00, %i.bw
  %i.cs = fdiv fast float 1.000000e+00, %i.bw
  br label %.lr.ph68.i.us.us

.lr.ph68.i.us.us:                                 ; preds = %.lr.ph68.i.us.us, %.lr.ph68.i.us.us.preheader.new
  %indvars.iv82.i.us.us = phi i64 [ %indvars.iv82.i.us.us.unr, %.lr.ph68.i.us.us.preheader.new ], [ %indvars.iv.next83.i.us.us.1, %.lr.ph68.i.us.us ] ; 5 uses
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv82.i.us.us ; 2 uses
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !44
  %i.cv = fsub fast float %i.cu, %i.be
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv82.i.us.us
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !44
  %i.cy = fmul fast float %i.cv, %i.cx
  %i.cz = fmul fast float %i.cy, %i.cr
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv82.i.us.us
  %i.db = load float, ptr %i.da, align 4, !tbaa !44
  %i.dc = fadd fast float %i.cz, %i.db
  store float %i.dc, ptr %i.ct, align 4, !tbaa !44
  %indvars.iv.next83.i.us.us = add nuw nsw i64 %indvars.iv82.i.us.us, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.next83.i.us.us ; 2 uses
  %i.de = load float, ptr %i.dd, align 4, !tbaa !44
  %i.df = fsub fast float %i.de, %i.be
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next83.i.us.us
end_hunk_4
