inline.NumInlined: 38
inline.NumDeleted: 30
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4ncnn9Pooling3D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.4:bb.a
  %.reass194 = mul i64 %indvars.iv150, %factor.op.mul193.a
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 %.reass194
  %scevgep = getelementptr i8, ptr %.042115.us.us135, i64 %i.ba
  %bound0 = icmp ult ptr %.042115.us.us135, %scevgep202
  %bound1 = icmp ult ptr %scevgep201, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.do = or i1 %found.conflict, %stride.check
  br label %.preheader.us.us118.us

.preheader.us.us118.us:                           ; preds = %._crit_edge103.split.us111.us.us, %.preheader99.us.us133
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %._crit_edge103.split.us111.us.us ], [ 0, %.preheader99.us.us133 ] ; 2 uses
  %.1106.us.us120.us = phi ptr [ %i.er, %._crit_edge103.split.us111.us.us ], [ %.042115.us.us135, %.preheader99.us.us133 ] ; 7 uses
  %.reass = mul i64 %indvars.iv145, %factor.op.mul192
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.reass ; 6 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.do
  br i1 %brmerge, label %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.us.us118.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.us.us118.us ] ; 3 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %wide.load = load <4 x float>, ptr %i.dq, align 4, !tbaa !85, !alias.scope !138
  %wide.load203 = load <4 x float>, ptr %i.dr, align 4, !tbaa !85, !alias.scope !138
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %.1106.us.us120.us, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  store <4 x float> %wide.load, ptr %i.ds, align 4, !tbaa !85, !alias.scope !141, !noalias !138
  store <4 x float> %wide.load203, ptr %i.dt, align 4, !tbaa !85, !alias.scope !141, !noalias !138
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge103.split.us111.us.us, label %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.preheader

_ZN4ncnn3MatD2Ev.exit44.us109.us.us.preheader:    ; preds = %.preheader.us.us118.us, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.us.us118.us ] ; 3 uses
  br i1 %lcmp.mod.not, label %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol.loopexit, label %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol

_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol:         ; preds = %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.preheader, %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol ], [ %indvars.iv.ph, %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol ], [ 0, %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.preheader ]
  %i.dv = mul nsw i64 %indvars.iv.prol, %i.ar
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !85
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %.1106.us.us120.us, i64 %indvars.iv.prol
  store float %i.dx, ptr %i.dy, align 4, !tbaa !85
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol.loopexit, label %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol, !llvm.loop !144

_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol.loopexit: ; preds = %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol, %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.preheader ], [ %indvars.iv.next.prol, %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol ]
  %i.dz = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ea = icmp ugt i64 %i.dz, -4
  br i1 %i.ea, label %._crit_edge103.split.us111.us.us, label %_ZN4ncnn3MatD2Ev.exit44.us109.us.us

_ZN4ncnn3MatD2Ev.exit44.us109.us.us:              ; preds = %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol.loopexit, %_ZN4ncnn3MatD2Ev.exit44.us109.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %_ZN4ncnn3MatD2Ev.exit44.us109.us.us ], [ %indvars.iv.unr, %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol.loopexit ] ; 6 uses
  %i.eb = mul nsw i64 %indvars.iv, %i.ar
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.eb
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !85
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %.1106.us.us120.us, i64 %indvars.iv
  store float %i.ed, ptr %i.ee, align 4, !tbaa !85
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ef = mul nsw i64 %indvars.iv.next, %i.ar
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.ef
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !85
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %.1106.us.us120.us, i64 %indvars.iv.next
  store float %i.eh, ptr %i.ei, align 4, !tbaa !85
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ej = mul nsw i64 %indvars.iv.next.1, %i.ar
  %i.ek = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.ej
  %i.el = load float, ptr %i.ek, align 4, !tbaa !85
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %.1106.us.us120.us, i64 %indvars.iv.next.1
  store float %i.el, ptr %i.em, align 4, !tbaa !85
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.en = mul nsw i64 %indvars.iv.next.2, %i.ar
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.en
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !85
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.1106.us.us120.us, i64 %indvars.iv.next.2
  store float %i.ep, ptr %i.eq, align 4, !tbaa !85
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge103.split.us111.us.us, label %_ZN4ncnn3MatD2Ev.exit44.us109.us.us, !llvm.loop !145

._crit_edge103.split.us111.us.us:                 ; preds = %_ZN4ncnn3MatD2Ev.exit44.us109.us.us.prol.loopexit, %_ZN4ncnn3MatD2Ev.exit44.us109.us.us, %middle.block
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.1106.us.us120.us, i64 %i.al ; 2 uses
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count148
  br i1 %exitcond149.not, label %._crit_edge.split.us.split.us121.us, label %.preheader.us.us118.us, !llvm.loop !136

._crit_edge.split.us.split.us121.us:              ; preds = %._crit_edge103.split.us111.us.us
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1 ; 2 uses
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count153
  br i1 %exitcond154.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split125.us.split.us136, label %.preheader99.us.us133, !llvm.loop !137

._ZN4ncnn3MatD2Ev.exit_crit_edge.split125.us.split.us136: ; preds = %._crit_edge.split.us.split.us121.us
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next156 to i32
  %exitcond158.not = icmp eq i32 %i.av, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond158.not, label %._crit_edge.split131, label %.noexc46.us

._crit_edge.split131:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split125.us.split.us136, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split125.us.split.us.us.us, %.noexc46.lr.ph.split.split, %.noexc46.lr.ph, %.noexc46.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split131, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9Pooling3D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %12, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %14) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !50     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.h = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !50
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !50
  %i.k = load i32, ptr %i.a, align 4, !tbaa !50   ; 3 uses
  %.not228 = icmp sgt i32 %i.k, %i.j
  br i1 %.not228, label %._crit_edge.split232, label %.noexc96.lr.ph

.noexc96.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !47, !noalias !146
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !51, !noalias !146
  %i.p = load ptr, ptr %3, align 8, !tbaa !57, !noalias !146
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !58, !noalias !146
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !54, !noalias !146 ; 2 uses
  %factor.op.mul = mul i64 %i.r, %i.t
  %i.u = sext i32 %i.m to i64
  %i.v = sext i32 %i.o to i64
  %i.w = load ptr, ptr %4, align 8, !tbaa !57, !noalias !149 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !58, !noalias !149
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !54, !noalias !149
  %factor.op.mul230 = mul i64 %i.y, %i.aa         ; 2 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !50    ; 3 uses
  %factor.op.mul216 = mul i64 %i.t, %i.u          ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %factor.op.mul.reass = mul i64 %factor.op.mul216, %i.v
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 228
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 224
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 220
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 252
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 256
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 216
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 244
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 248
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 212
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 236
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 240
  br i1 %i.ac, label %.noexc96.lr.ph.split, label %._crit_edge.split232

.noexc96.lr.ph.split:                             ; preds = %.noexc96.lr.ph
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 232
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !33
  %i.aq = load i32, ptr %7, align 4, !tbaa !50    ; 3 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.noexc96.lr.ph.split.split, label %._crit_edge.split232

.noexc96.lr.ph.split.split:                       ; preds = %.noexc96.lr.ph.split
  %i.as = load i32, ptr %i.ad, align 4, !tbaa !32
  %i.at = load i32, ptr %8, align 4, !tbaa !50    ; 5 uses
  %i.au = icmp sgt i32 %i.at, 0
  %i.av = sext i32 %i.at to i64                   ; 2 uses
  br i1 %i.au, label %.noexc96.lr.ph.split.split.split.us, label %._crit_edge.split232

.noexc96.lr.ph.split.split.split.us:              ; preds = %.noexc96.lr.ph.split.split
  %i.aw = load i32, ptr %i.af, align 4, !tbaa !30 ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.noexc96.lr.ph.split.split.split.us.split.us, label %.noexc96.us.preheader

.noexc96.us.preheader:                            ; preds = %.noexc96.lr.ph.split.split.split.us
  %15 = sext i32 %i.k to i64
  %16 = add nsw i32 %i.j, 1
  %wide.trip.count = zext nneg i32 %i.at to i64   ; 3 uses
  %min.iters.check = icmp ult i32 %i.at, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.noexc96.us.a

.noexc96.lr.ph.split.split.split.us.split.us:     ; preds = %.noexc96.lr.ph.split.split.split.us
  %i.ay = load i32, ptr %i.ae, align 8, !tbaa !31
  %i.az = load i32, ptr %i.ag, align 4, !tbaa !38
  %i.ba = sext i32 %i.az to i64
  %i.bb = sext i32 %i.ay to i64
  %i.bc = sext i32 %i.as to i64
  %i.bd = sext i32 %i.ap to i64
  %i.be = sext i32 %i.k to i64
  %i.bf = add nsw i32 %i.j, 1
  %wide.trip.count280 = zext nneg i32 %i.ab to i64
  %wide.trip.count275 = zext nneg i32 %i.aq to i64
  %wide.trip.count270 = zext nneg i32 %i.at to i64
  %wide.trip.count265 = zext nneg i32 %i.aw to i64
  br label %.noexc96.us.us

.noexc96.us.us:                                   ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us.us.us, %.noexc96.lr.ph.split.split.split.us.split.us
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us.us.us ], [ %i.be, %.noexc96.lr.ph.split.split.split.us.split.us ] ; 3 uses
  %.reass.us.us = mul i64 %factor.op.mul, %indvars.iv282
  %i.bg = getelementptr inbounds nuw i8, ptr %i.p, i64 %.reass.us.us
  %.reass231.us.us = mul i64 %factor.op.mul230, %indvars.iv282
  %i.bh = getelementptr inbounds nuw i8, ptr %i.w, i64 %.reass231.us.us
  br label %.lr.ph.us.us.us.us

.lr.ph.us.us.us.us:                               ; preds = %._crit_edge.split.us.split.us.us.us.us.us, %.noexc96.us.us
  %indvars.iv277 = phi i64 [ %indvars.iv.next278, %._crit_edge.split.us.split.us.us.us.us.us ], [ 0, %.noexc96.us.us ] ; 2 uses
  %.066218.us.us.us.us = phi ptr [ %i.dc, %._crit_edge.split.us.split.us.us.us.us.us ], [ %i.bh, %.noexc96.us.us ]
  %i.bi = mul nsw i64 %indvars.iv277, %i.bd
  br label %.lr.ph205.us.us.us.us.us.us

.lr.ph205.us.us.us.us.us.us:                      ; preds = %._crit_edge206.split.us.us.us.us.us.us.us, %.lr.ph.us.us.us.us
  %indvars.iv272 = phi i64 [ %indvars.iv.next273, %._crit_edge206.split.us.us.us.us.us.us.us ], [ 0, %.lr.ph.us.us.us.us ] ; 2 uses
  %.1209.us.us.us.us.us.us = phi ptr [ %i.dc, %._crit_edge206.split.us.us.us.us.us.us.us ], [ %.066218.us.us.us.us, %.lr.ph.us.us.us.us ] ; 2 uses
  %i.bj = mul nsw i64 %indvars.iv272, %i.bc
  br label %.lr.ph196.us.us.us.us.us.us.us

.lr.ph196.us.us.us.us.us.us.us:                   ; preds = %._crit_edge.us.us.us.us.us.us.us, %.lr.ph205.us.us.us.us.us.us
  %indvars.iv267 = phi i64 [ %indvars.iv.next268, %._crit_edge.us.us.us.us.us.us.us ], [ 0, %.lr.ph205.us.us.us.us.us.us ] ; 3 uses
  %i.bk = mul nsw i64 %indvars.iv267, %i.bb
  br label %bb.c

bb.c:                                             ; preds = %.loopexit175.us.us.us.us.us.us.us, %.lr.ph196.us.us.us.us.us.us.us
  %indvars.iv262 = phi i64 [ %indvars.iv.next263, %.loopexit175.us.us.us.us.us.us.us ], [ 0, %.lr.ph196.us.us.us.us.us.us.us ] ; 2 uses
  %.073194.us.us.us.us.us.us.us = phi i32 [ %.7.ph.us.us.us.us.us.us.us, %.loopexit175.us.us.us.us.us.us.us ], [ 0, %.lr.ph196.us.us.us.us.us.us.us ] ; 4 uses
  %.076193.us.us.us.us.us.us.us = phi float [ %.783.ph.us.us.us.us.us.us.us, %.loopexit175.us.us.us.us.us.us.us ], [ 0.000000e+00, %.lr.ph196.us.us.us.us.us.us.us ] ; 4 uses
  %i.bl = add nsw i64 %indvars.iv262, %i.bi       ; 3 uses
  %i.bm = icmp slt i64 %i.bl, %i.ba
  br i1 %i.bm, label %.loopexit175.us.us.us.us.us.us.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bn = load i32, ptr %9, align 4, !tbaa !50
  %i.bo = load i32, ptr %i.ah, align 8, !tbaa !39
  %i.bp = load i32, ptr %10, align 4, !tbaa !50
  %i.bq = add i32 %i.bo, %i.bp
  %i.br = sub i32 %i.bn, %i.bq
  %i.bs = sext i32 %i.br to i64
  %.not91.us.us.us.us.us.us.us = icmp slt i64 %i.bl, %i.bs
  br i1 %.not91.us.us.us.us.us.us.us, label %.preheader174.us.us.us.us.us.us.us, label %._crit_edge.us.us.us.us.us.us.us

bb.e:                                             ; preds = %.lr.ph187.us.us.us.us.us.us.us, %.loopexit.us.us.us.us.us.us.us
  %indvars.iv257 = phi i64 [ 0, %.lr.ph187.us.us.us.us.us.us.us ], [ %indvars.iv.next258, %.loopexit.us.us.us.us.us.us.us ] ; 2 uses
  %.174185.us.us.us.us.us.us.us = phi i32 [ %.073194.us.us.us.us.us.us.us, %.lr.ph187.us.us.us.us.us.us.us ], [ %.5.ph.us.us.us.us.us.us.us, %.loopexit.us.us.us.us.us.us.us ] ; 4 uses
  %.177184.us.us.us.us.us.us.us = phi float [ %.076193.us.us.us.us.us.us.us, %.lr.ph187.us.us.us.us.us.us.us ], [ %.581.ph.us.us.us.us.us.us.us, %.loopexit.us.us.us.us.us.us.us ] ; 4 uses
  %i.bt = add nsw i64 %indvars.iv257, %i.bj       ; 3 uses
  %i.bu = icmp slt i64 %i.bt, %i.db
  br i1 %i.bu, label %.loopexit.us.us.us.us.us.us.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bv = load i32, ptr %11, align 4, !tbaa !50
  %i.bw = load i32, ptr %i.ak, align 8, !tbaa !37
  %i.bx = load i32, ptr %12, align 4, !tbaa !50
  %i.by = add i32 %i.bw, %i.bx
  %i.bz = sub i32 %i.bv, %i.by
  %i.ca = sext i32 %i.bz to i64
  %.not92.us.us.us.us.us.us.us = icmp slt i64 %i.bt, %i.ca
  br i1 %.not92.us.us.us.us.us.us.us, label %.preheader.us.us.us.us.us.us.us, label %.loopexit175.us.us.us.us.us.us.us

bb.g:                                             ; preds = %.lr.ph.us.us.us.us.us.us.us, %bb.i
  %indvars.iv252.a = phi i64 [ 0, %.lr.ph.us.us.us.us.us.us.us ], [ %indvars.iv.next253.a, %bb.i ] ; 2 uses
  %.275177.us.us.us.us.us.us.us = phi i32 [ %.174185.us.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.us ], [ %.3.ph.us.us.us.us.us.us.us, %bb.i ] ; 3 uses
  %.278176.us.us.us.us.us.us.us = phi float [ %.177184.us.us.us.us.us.us.us, %.lr.ph.us.us.us.us.us.us.us ], [ %.379.ph.us.us.us.us.us.us.us, %bb.i ] ; 3 uses
  %i.cb = add nsw i64 %indvars.iv252.a, %i.bk     ; 3 uses
  %i.cc = icmp slt i64 %i.cb, %i.cx
  br i1 %i.cc, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cd = load i32, ptr %13, align 4, !tbaa !50
  %i.ce = load i32, ptr %i.an, align 8, !tbaa !35
  %i.cf = load i32, ptr %14, align 4, !tbaa !50
  %i.cg = add i32 %i.ce, %i.cf
  %i.ch = sub i32 %i.cd, %i.cg
  %i.ci = sext i32 %i.ch to i64
  %.not93.us.us.us.us.us.us.us = icmp slt i64 %i.cb, %i.ci
  br i1 %.not93.us.us.us.us.us.us.us, label %_ZN4ncnn3MatD2Ev.exit94.us.us.us.us.us.us.us, label %.loopexit.us.us.us.us.us.us.us

_ZN4ncnn3MatD2Ev.exit94.us.us.us.us.us.us.us:     ; preds = %bb.h
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %i.cb
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !85
  %i.cl = fadd fast float %i.ck, %.278176.us.us.us.us.us.us.us
  %i.cm = add nsw i32 %.275177.us.us.us.us.us.us.us, 1
  br label %bb.i

bb.i:                                             ; preds = %_ZN4ncnn3MatD2Ev.exit94.us.us.us.us.us.us.us, %bb.g
  %.379.ph.us.us.us.us.us.us.us = phi float [ %.278176.us.us.us.us.us.us.us, %bb.g ], [ %i.cl, %_ZN4ncnn3MatD2Ev.exit94.us.us.us.us.us.us.us ] ; 2 uses
  %.3.ph.us.us.us.us.us.us.us = phi i32 [ %.275177.us.us.us.us.us.us.us, %bb.g ], [ %i.cm, %_ZN4ncnn3MatD2Ev.exit94.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next253.a = add nuw nsw i64 %indvars.iv252.a, 1 ; 2 uses
  %exitcond256.not = icmp eq i64 %indvars.iv.next253.a, %wide.trip.count255
  br i1 %exitcond256.not, label %.loopexit.us.us.us.us.us.us.us, label %bb.g, !llvm.loop !152

.loopexit.us.us.us.us.us.us.us:                   ; preds = %bb.i, %bb.h, %.preheader.us.us.us.us.us.us.us, %bb.e
  %.581.ph.us.us.us.us.us.us.us = phi float [ %.177184.us.us.us.us.us.us.us, %bb.e ], [ %.177184.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us ], [ %.278176.us.us.us.us.us.us.us, %bb.h ], [ %.379.ph.us.us.us.us.us.us.us, %bb.i ] ; 2 uses
  %.5.ph.us.us.us.us.us.us.us = phi i32 [ %.174185.us.us.us.us.us.us.us, %bb.e ], [ %.174185.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us.us ], [ %.275177.us.us.us.us.us.us.us, %bb.h ], [ %.3.ph.us.us.us.us.us.us.us, %bb.i ] ; 2 uses
  %indvars.iv.next258 = add nuw nsw i64 %indvars.iv257, 1 ; 2 uses
  %exitcond261.not = icmp eq i64 %indvars.iv.next258, %wide.trip.count260
  br i1 %exitcond261.not, label %.loopexit175.us.us.us.us.us.us.us, label %bb.e, !llvm.loop !153

.loopexit175.us.us.us.us.us.us.us:                ; preds = %.loopexit.us.us.us.us.us.us.us, %bb.f, %.preheader174.us.us.us.us.us.us.us, %bb.c
  %.783.ph.us.us.us.us.us.us.us = phi float [ %.076193.us.us.us.us.us.us.us, %bb.c ], [ %.076193.us.us.us.us.us.us.us, %.preheader174.us.us.us.us.us.us.us ], [ %.177184.us.us.us.us.us.us.us, %bb.f ], [ %.581.ph.us.us.us.us.us.us.us, %.loopexit.us.us.us.us.us.us.us ] ; 2 uses
  %.7.ph.us.us.us.us.us.us.us = phi i32 [ %.073194.us.us.us.us.us.us.us, %bb.c ], [ %.073194.us.us.us.us.us.us.us, %.preheader174.us.us.us.us.us.us.us ], [ %.174185.us.us.us.us.us.us.us, %bb.f ], [ %.5.ph.us.us.us.us.us.us.us, %.loopexit.us.us.us.us.us.us.us ] ; 2 uses
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond266.not = icmp eq i64 %indvars.iv.next263, %wide.trip.count265
  br i1 %exitcond266.not, label %._crit_edge.us.us.us.us.us.us.us, label %bb.c, !llvm.loop !154

._crit_edge.us.us.us.us.us.us.us:                 ; preds = %.loopexit175.us.us.us.us.us.us.us, %bb.d
  %.076.lcssa.us.us.us.us.us.us.us = phi float [ %.076193.us.us.us.us.us.us.us, %bb.d ], [ %.783.ph.us.us.us.us.us.us.us, %.loopexit175.us.us.us.us.us.us.us ]
  %.073.lcssa.us.us.us.us.us.us.us = phi i32 [ %.073194.us.us.us.us.us.us.us, %bb.d ], [ %.7.ph.us.us.us.us.us.us.us, %.loopexit175.us.us.us.us.us.us.us ]
  %i.cn = sitofp fast i32 %.073.lcssa.us.us.us.us.us.us.us to float
  %i.co = fdiv fast float %.076.lcssa.us.us.us.us.us.us.us, %i.cn
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.1209.us.us.us.us.us.us, i64 %indvars.iv267
  store float %i.co, ptr %i.cp, align 4, !tbaa !85
  %indvars.iv.next268 = add nuw nsw i64 %indvars.iv267, 1 ; 2 uses
  %exitcond271.not = icmp eq i64 %indvars.iv.next268, %wide.trip.count270
  br i1 %exitcond271.not, label %._crit_edge206.split.us.us.us.us.us.us.us, label %.lr.ph196.us.us.us.us.us.us.us, !llvm.loop !155

.preheader.us.us.us.us.us.us.us:                  ; preds = %bb.f
  %i.cq = load i32, ptr %i.al, align 4, !tbaa !28 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph.us.us.us.us.us.us.us, label %.loopexit.us.us.us.us.us.us.us

.preheader174.us.us.us.us.us.us.us:               ; preds = %bb.d
  %i.cs = load i32, ptr %i.ai, align 8, !tbaa !29 ; 2 uses
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph187.us.us.us.us.us.us.us, label %.loopexit175.us.us.us.us.us.us.us

.lr.ph.us.us.us.us.us.us.us:                      ; preds = %.preheader.us.us.us.us.us.us.us
  %i.cu = load i32, ptr %i.am, align 4, !tbaa !34
  %i.cv = mul i64 %factor.op.mul216, %i.bt
  %i.cw = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cv
  %i.cx = sext i32 %i.cu to i64
  %wide.trip.count255 = zext nneg i32 %i.cq to i64
  br label %bb.g

.lr.ph187.us.us.us.us.us.us.us:                   ; preds = %.preheader174.us.us.us.us.us.us.us
  %i.cy = load i32, ptr %i.aj, align 4, !tbaa !36
  %i.cz = mul i64 %factor.op.mul.reass, %i.bl
  %i.da = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cz
  %i.db = sext i32 %i.cy to i64
  %wide.trip.count260 = zext nneg i32 %i.cs to i64
  br label %bb.e

._crit_edge206.split.us.us.us.us.us.us.us:        ; preds = %._crit_edge.us.us.us.us.us.us.us
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.1209.us.us.us.us.us.us, i64 %i.av ; 2 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1 ; 2 uses
  %exitcond276.not = icmp eq i64 %indvars.iv.next273, %wide.trip.count275
  br i1 %exitcond276.not, label %._crit_edge.split.us.split.us.us.us.us.us, label %.lr.ph205.us.us.us.us.us.us, !llvm.loop !156

._crit_edge.split.us.split.us.us.us.us.us:        ; preds = %._crit_edge206.split.us.us.us.us.us.us.us
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond281.not = icmp eq i64 %indvars.iv.next278, %wide.trip.count280
  br i1 %exitcond281.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us.us.us, label %.lr.ph.us.us.us.us, !llvm.loop !157

._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us.us.us: ; preds = %._crit_edge.split.us.split.us.us.us.us.us
  %indvars.iv.next283 = add nsw i64 %indvars.iv282, 1 ; 2 uses
  %lftr.wideiv285 = trunc i64 %indvars.iv.next283 to i32
  %exitcond286.not = icmp eq i32 %i.bf, %lftr.wideiv285
  br i1 %exitcond286.not, label %._crit_edge.split232, label %.noexc96.us.us

.noexc96.us.a:                                    ; preds = %.noexc96.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us237
  %indvars.iv248 = phi i64 [ %15, %.noexc96.us.preheader ], [ %indvars.iv.next249, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us237 ] ; 2 uses
  %.reass231.us.a = mul i64 %factor.op.mul230, %indvars.iv248
  %17 = getelementptr inbounds nuw i8, ptr %i.w, i64 %.reass231.us.a
  br label %.lr.ph.us.us234.a

.lr.ph.us.us234.a:                                ; preds = %.noexc96.us.a, %._crit_edge.split.us.split.us223.us
  %.066218.us.us235 = phi ptr [ %17, %.noexc96.us.a ], [ %i.dh, %._crit_edge.split.us.split.us223.us ]
  %.068217.us.us236 = phi i32 [ 0, %.noexc96.us.a ], [ %19, %._crit_edge.split.us.split.us223.us ]
  br label %.lr.ph205.us.us220.us

.lr.ph205.us.us220.us:                            ; preds = %._crit_edge206.split.us212.us.us, %.lr.ph.us.us234.a
  %.1209.us.us221.us = phi ptr [ %.066218.us.us235, %.lr.ph.us.us234.a ], [ %i.dh, %._crit_edge206.split.us212.us.us ] ; 3 uses
  %.085208.us.us222.us = phi i32 [ 0, %.lr.ph.us.us234.a ], [ %18, %._crit_edge206.split.us212.us.us ]
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph205.us.us220.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph205.us.us220.us ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.1209.us.us221.us, i64 %index ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <4 x float> splat (float +qnan), ptr %i.dd, align 4, !tbaa !85
  store <4 x float> splat (float +qnan), ptr %i.de, align 4, !tbaa !85
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge206.split.us212.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph205.us.us220.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph205.us.us220.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %.1209.us.us221.us, i64 %indvars.iv
  store float +qnan, ptr %i.dg, align 4, !tbaa !85
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge206.split.us212.us.us, label %scalar.ph, !llvm.loop !159

._crit_edge206.split.us212.us.us:                 ; preds = %scalar.ph, %middle.block
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.1209.us.us221.us, i64 %i.av ; 2 uses
  %18 = add nuw nsw i32 %.085208.us.us222.us, 1   ; 2 uses
  %exitcond246.not = icmp eq i32 %18, %i.aq
  br i1 %exitcond246.not, label %._crit_edge.split.us.split.us223.us, label %.lr.ph205.us.us220.us, !llvm.loop !156

._crit_edge.split.us.split.us223.us:              ; preds = %._crit_edge206.split.us212.us.us
  %19 = add nuw nsw i32 %.068217.us.us236, 1      ; 2 uses
  %exitcond247.not = icmp eq i32 %19, %i.ab
  br i1 %exitcond247.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us237, label %.lr.ph.us.us234.a, !llvm.loop !157

._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us237: ; preds = %._crit_edge.split.us.split.us223.us
  %indvars.iv.next249 = add nsw i64 %indvars.iv248, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next249 to i32
  %exitcond251.not = icmp eq i32 %16, %lftr.wideiv
  br i1 %exitcond251.not, label %._crit_edge.split232, label %.noexc96.us.a

._crit_edge.split232:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us237, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split227.us.split.us.us.us, %.noexc96.lr.ph.split.split, %.noexc96.lr.ph, %.noexc96.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.split232, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn9Pooling3D7forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.6(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef readonly captures(none) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %10) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !50     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !50
  %i.h = load i32, ptr %0, align 4, !tbaa !50     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !50
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !50
  %i.k = load i32, ptr %i.a, align 4, !tbaa !50   ; 3 uses
  %.not130 = icmp sgt i32 %i.k, %i.j
  br i1 %.not130, label %._crit_edge.split135, label %.noexc50.lr.ph

.noexc50.lr.ph:                                   ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = load i32, ptr %i.l, align 4, !tbaa !47, !noalias !160
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !51, !noalias !160
  %i.p = load ptr, ptr %3, align 8, !tbaa !57, !noalias !160
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.r = load i64, ptr %i.q, align 8, !tbaa !58, !noalias !160
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !54, !noalias !160 ; 3 uses
  %factor.op.mul132 = mul i64 %i.r, %i.t
  %i.u = sext i32 %i.m to i64                     ; 2 uses
  %i.v = sext i32 %i.o to i64
  %i.w = load ptr, ptr %4, align 8, !tbaa !57, !noalias !163 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.y = load i64, ptr %i.x, align 8, !tbaa !58, !noalias !163
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !54, !noalias !163
  %factor.op.mul133 = mul i64 %i.y, %i.aa         ; 2 uses
  %i.ab = load i32, ptr %5, align 4, !tbaa !50    ; 5 uses
  %factor.op.mul = mul i64 %i.t, %i.v
  %i.ac = icmp sgt i32 %i.ab, 0
  %factor.op.mul109.reass = mul i64 %factor.op.mul, %i.u
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 232
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 228
  %i.af = mul i64 %i.t, %i.u
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 224
  br i1 %i.ac, label %.noexc50.lr.ph.split, label %._crit_edge.split135

.noexc50.lr.ph.split:                             ; preds = %.noexc50.lr.ph
  %i.ah = load i32, ptr %6, align 4, !tbaa !50    ; 4 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.noexc50.lr.ph.split.split, label %._crit_edge.split135

.noexc50.lr.ph.split.split:                       ; preds = %.noexc50.lr.ph.split
  %i.aj = load i32, ptr %7, align 4, !tbaa !50    ; 4 uses
  %i.ak = icmp sgt i32 %i.aj, 0
  %i.al = sext i32 %i.aj to i64                   ; 2 uses
  br i1 %i.ak, label %.noexc50.lr.ph.split.split.split.us, label %._crit_edge.split135

.noexc50.lr.ph.split.split.split.us:              ; preds = %.noexc50.lr.ph.split.split
  %i.am = load i32, ptr %9, align 4, !tbaa !50    ; 4 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.noexc50.lr.ph.split.split.split.us.split.us, label %.noexc50.us.preheader

.noexc50.us.preheader:                            ; preds = %.noexc50.lr.ph.split.split.split.us
  %11 = zext nneg i32 %i.aj to i64
  %12 = zext nneg i32 %i.ah to i64
  %13 = mul nuw nsw i64 %11, %12
  %14 = shl nuw i64 %13, 2                        ; 9 uses
  %15 = add nsw i32 %i.ah, -1
  %16 = zext nneg i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = add nuw nsw i64 %17, 4
  %19 = mul nuw i64 %18, %i.al                    ; 9 uses
  %20 = sext i32 %i.k to i64
  %21 = add nsw i32 %i.j, 1
  %xtraiter = and i32 %i.ab, 7                    ; 3 uses
  %22 = icmp ult i32 %i.ab, 8
  %unroll_iter = and i32 %i.ab, 2147483640
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod191 = icmp ne i32 %xtraiter, 0
  br label %.noexc50.us.a

.noexc50.lr.ph.split.split.split.us.split.us:     ; preds = %.noexc50.lr.ph.split.split.split.us
  %i.ao = sitofp fast i32 %i.am to float
  %i.ap = load i32, ptr %i.ag, align 8, !tbaa !31
  %i.aq = load i32, ptr %i.ae, align 4, !tbaa !32
  %i.ar = load i32, ptr %i.ad, align 8, !tbaa !33
  %i.as = load ptr, ptr %10, align 8, !tbaa !72   ; 5 uses
  %i.at = sext i32 %i.ap to i64
  %i.au = sext i32 %i.aq to i64
  %i.av = sext i32 %i.ar to i64
  %i.aw = sext i32 %i.k to i64
  %i.ax = add nsw i32 %i.j, 1
  %wide.trip.count169 = zext nneg i32 %i.ab to i64
  %factor.op.mul185.a = mul i64 %factor.op.mul109.reass, %i.av
  %wide.trip.count164 = zext nneg i32 %i.ah to i64
  %factor.op.mul184 = mul i64 %i.af, %i.au
  %wide.trip.count159 = zext nneg i32 %i.aj to i64
  %wide.trip.count = zext nneg i32 %i.am to i64   ; 2 uses
  %xtraiter192 = and i64 %wide.trip.count, 3      ; 3 uses
  %i.ay = icmp ult i32 %i.am, 4
  %unroll_iter197 = and i64 %wide.trip.count, 2147483644
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  %lcmp.mod196 = icmp ne i64 %xtraiter192, 0
  %i.az = fdiv fast float 1.000000e+00, %i.ao
  br label %.noexc50.us.us

.noexc50.us.us:                                   ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us.us.us, %.noexc50.lr.ph.split.split.split.us.split.us
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us.us.us ], [ %i.aw, %.noexc50.lr.ph.split.split.split.us.split.us ] ; 3 uses
  %.reass.us.us = mul i64 %factor.op.mul132, %indvars.iv171
  %i.ba = getelementptr inbounds nuw i8, ptr %i.p, i64 %.reass.us.us
  %.reass134.us.us = mul i64 %factor.op.mul133, %indvars.iv171
  %i.bb = getelementptr inbounds nuw i8, ptr %i.w, i64 %.reass134.us.us
  br label %.preheader101.us.us.us.us

.preheader101.us.us.us.us:                        ; preds = %._crit_edge.split.us.split.us.us.us.us.us, %.noexc50.us.us
  %indvars.iv166 = phi i64 [ %indvars.iv.next167, %._crit_edge.split.us.split.us.us.us.us.us ], [ 0, %.noexc50.us.us ] ; 2 uses
  %.042121.us.us.us.us = phi ptr [ %i.cp, %._crit_edge.split.us.split.us.us.us.us.us ], [ %i.bb, %.noexc50.us.us ]
  %.reass186 = mul i64 %indvars.iv166, %factor.op.mul185.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 %.reass186
  br label %.preheader.us.us.us.us.us.us

.preheader.us.us.us.us.us.us:                     ; preds = %._crit_edge107.split.us.us.us.us.us.us.us, %.preheader101.us.us.us.us
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %._crit_edge107.split.us.us.us.us.us.us.us ], [ 0, %.preheader101.us.us.us.us ] ; 2 uses
  %.1111.us.us.us.us.us.us = phi ptr [ %i.cp, %._crit_edge107.split.us.us.us.us.us.us.us ], [ %.042121.us.us.us.us, %.preheader101.us.us.us.us ] ; 2 uses
  %.reass = mul i64 %indvars.iv161, %factor.op.mul184
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.reass
  br label %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us

_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us:     ; preds = %._crit_edge.us.us.us.us.us.us.us, %.preheader.us.us.us.us.us.us
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %._crit_edge.us.us.us.us.us.us.us ], [ 0, %.preheader.us.us.us.us.us.us ] ; 3 uses
  %i.be = mul nsw i64 %indvars.iv156, %i.at
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.be ; 5 uses
  br i1 %i.ay, label %.epil.preheader, label %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new

_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new: ; preds = %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new
  %indvars.iv152 = phi i64 [ %indvars.iv.next153.3, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us ] ; 5 uses
  %.041103.us.us.us.us.us.us.us = phi float [ %i.cg, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new ], [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us ]
  %niter198 = phi i64 [ %niter198.next.3, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new ], [ 0, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv152
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !50
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bi
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !85
  %i.bl = fadd fast float %i.bk, %.041103.us.us.us.us.us.us.us
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv152
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !50
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bp
  %i.br = load float, ptr %i.bq, align 4, !tbaa !85
  %i.bs = fadd fast float %i.br, %i.bl
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv152
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !50
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !85
  %i.bz = fadd fast float %i.by, %i.bs
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv152
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !50
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !85
  %i.cg = fadd fast float %i.cf, %i.bz            ; 3 uses
  %indvars.iv.next153.3 = add nuw nsw i64 %indvars.iv152, 4 ; 2 uses
  %niter198.next.3 = add i64 %niter198, 4         ; 2 uses
  %niter198.ncmp.3 = icmp eq i64 %niter198.next.3, %unroll_iter197
  br i1 %niter198.ncmp.3, label %._crit_edge.us.us.us.us.us.us.us.unr-lcssa, label %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new, !llvm.loop !166

._crit_edge.us.us.us.us.us.us.us.unr-lcssa:       ; preds = %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us.new
  br i1 %lcmp.mod194.not, label %._crit_edge.us.us.us.us.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.us.us.us.us.us.unr-lcssa, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us
  %indvars.iv152.epil.init = phi i64 [ 0, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us ], [ %indvars.iv.next153.3, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa ]
  %.041103.us.us.us.us.us.us.us.epil.init = phi float [ 0.000000e+00, %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us ], [ %i.cg, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod196)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv152.epil = phi i64 [ %indvars.iv.next153.epil, %bb.c ], [ %indvars.iv152.epil.init, %.epil.preheader ] ; 2 uses
  %.041103.us.us.us.us.us.us.us.epil = phi float [ %i.cm, %bb.c ], [ %.041103.us.us.us.us.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter193 = phi i64 [ %epil.iter193.next, %bb.c ], [ 0, %.epil.preheader ]
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv152.epil
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !50
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.bf, i64 %i.cj
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !85
  %i.cm = fadd fast float %i.cl, %.041103.us.us.us.us.us.us.us.epil ; 2 uses
  %indvars.iv.next153.epil = add nuw nsw i64 %indvars.iv152.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %._crit_edge.us.us.us.us.us.us.us, label %bb.c, !llvm.loop !167

._crit_edge.us.us.us.us.us.us.us:                 ; preds = %bb.c, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa
  %.lcssa = phi float [ %i.cg, %._crit_edge.us.us.us.us.us.us.us.unr-lcssa ], [ %i.cm, %bb.c ]
  %i.cn = fmul fast float %.lcssa, %i.az
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %.1111.us.us.us.us.us.us, i64 %indvars.iv156
  store float %i.cn, ptr %i.co, align 4, !tbaa !85
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %._crit_edge107.split.us.us.us.us.us.us.us, label %_ZN4ncnn3MatD2Ev.exit48.us.us.us.us.us.us.us, !llvm.loop !168

._crit_edge107.split.us.us.us.us.us.us.us:        ; preds = %._crit_edge.us.us.us.us.us.us.us
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.1111.us.us.us.us.us.us, i64 %i.al ; 2 uses
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond165.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count164
  br i1 %exitcond165.not, label %._crit_edge.split.us.split.us.us.us.us.us, label %.preheader.us.us.us.us.us.us, !llvm.loop !169

._crit_edge.split.us.split.us.us.us.us.us:        ; preds = %._crit_edge107.split.us.us.us.us.us.us.us
  %indvars.iv.next167 = add nuw nsw i64 %indvars.iv166, 1 ; 2 uses
  %exitcond170.not = icmp eq i64 %indvars.iv.next167, %wide.trip.count169
  br i1 %exitcond170.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us.us.us, label %.preheader101.us.us.us.us, !llvm.loop !170

._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us.us.us: ; preds = %._crit_edge.split.us.split.us.us.us.us.us
  %indvars.iv.next172 = add nsw i64 %indvars.iv171, 1 ; 2 uses
  %lftr.wideiv174 = trunc i64 %indvars.iv.next172 to i32
  %exitcond175.not = icmp eq i32 %i.ax, %lftr.wideiv174
  br i1 %exitcond175.not, label %._crit_edge.split135, label %.noexc50.us.us

.noexc50.us.a:                                    ; preds = %.noexc50.us.preheader, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us140
  %indvars.iv = phi i64 [ %20, %.noexc50.us.preheader ], [ %indvars.iv.next, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us140 ] ; 2 uses
  %.reass134.us = mul i64 %factor.op.mul133, %indvars.iv
  %23 = getelementptr inbounds nuw i8, ptr %i.w, i64 %.reass134.us ; 2 uses
  br i1 %22, label %.preheader101.us.us137.epil.preheader, label %.preheader101.us.us137

.preheader101.us.us137:                           ; preds = %.noexc50.us.a, %.preheader101.us.us137
  %.042121.us.us138 = phi ptr [ %scevgep.7, %.preheader101.us.us137 ], [ %23, %.noexc50.us.a ] ; 2 uses
  %niter = phi i32 [ %niter.next.7, %.preheader101.us.us137 ], [ 0, %.noexc50.us.a ]
  call void @llvm.memset.p0.i64(ptr align 4 %.042121.us.us138, i8 0, i64 %14, i1 false), !tbaa !85
  %scevgep = getelementptr i8, ptr %.042121.us.us138, i64 %19 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %14, i1 false), !tbaa !85
  %scevgep.1 = getelementptr i8, ptr %scevgep, i64 %19 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.1, i8 0, i64 %14, i1 false), !tbaa !85
  %scevgep.2.a = getelementptr i8, ptr %scevgep.1, i64 %19 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.2.a, i8 0, i64 %14, i1 false), !tbaa !85
  %scevgep.3 = getelementptr i8, ptr %scevgep.2.a, i64 %19 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.3, i8 0, i64 %14, i1 false), !tbaa !85
  %scevgep.4 = getelementptr i8, ptr %scevgep.3, i64 %19 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.4, i8 0, i64 %14, i1 false), !tbaa !85
  %scevgep.5 = getelementptr i8, ptr %scevgep.4, i64 %19 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.5, i8 0, i64 %14, i1 false), !tbaa !85
  %scevgep.6 = getelementptr i8, ptr %scevgep.5, i64 %19 ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %scevgep.6, i8 0, i64 %14, i1 false), !tbaa !85
  %scevgep.7 = getelementptr i8, ptr %scevgep.6, i64 %19 ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us140.unr-lcssa, label %.preheader101.us.us137, !llvm.loop !170

._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us140.unr-lcssa: ; preds = %.preheader101.us.us137
  br i1 %lcmp.mod.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us140, label %.preheader101.us.us137.epil.preheader

.preheader101.us.us137.epil.preheader:            ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us140.unr-lcssa, %.noexc50.us.a
  %.042121.us.us138.epil.init = phi ptr [ %23, %.noexc50.us.a ], [ %scevgep.7, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us140.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod191)
  br label %.preheader101.us.us137.epil

.preheader101.us.us137.epil:                      ; preds = %.preheader101.us.us137.epil, %.preheader101.us.us137.epil.preheader
  %.042121.us.us138.epil = phi ptr [ %.042121.us.us138.epil.init, %.preheader101.us.us137.epil.preheader ], [ %scevgep.epil, %.preheader101.us.us137.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.preheader101.us.us137.epil.preheader ], [ %epil.iter.next, %.preheader101.us.us137.epil ]
  call void @llvm.memset.p0.i64(ptr align 4 %.042121.us.us138.epil, i8 0, i64 %14, i1 false), !tbaa !85
  %scevgep.epil = getelementptr i8, ptr %.042121.us.us138.epil, i64 %19
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us140, label %.preheader101.us.us137.epil, !llvm.loop !171

._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us140: ; preds = %.preheader101.us.us137.epil, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us140.unr-lcssa
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond151.not = icmp eq i32 %21, %lftr.wideiv
  br i1 %exitcond151.not, label %._crit_edge.split135, label %.noexc50.us.a

._crit_edge.split135:                             ; preds = %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us140, %._ZN4ncnn3MatD2Ev.exit_crit_edge.split129.us.split.us.us.us, %.noexc50.lr.ph.split.split, %.noexc50.lr.ph, %.noexc50.lr.ph.split, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.split135, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

declare void @_ZN4ncnn19copy_make_border_3dERKNS_3MatERS0_iiiiiiifRKNS_6OptionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, float noundef nofpclass(nan inf), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #15

attributes #0 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { alwaysinline norecurse nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noinline noreturn nounwind uwtable "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "reciprocal-estimates"="none" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #16 = { builtin nounwind }
attributes #17 = { noreturn }
attributes #18 = { builtin allocsize(0) }
attributes #19 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 7, !"openmp", i32 51}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !6, i64 208}
!10 = !{!"_ZTSN4ncnn9Pooling3DE", !11, i64 0, !6, i64 208, !6, i64 212, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284}
!11 = !{!"_ZTSN4ncnn5LayerE", !12, i64 8, !12, i64 9, !12, i64 10, !12, i64 11, !12, i64 12, !12, i64 13, !12, i64 14, !12, i64 15, !12, i64 16, !12, i64 17, !12, i64 18, !12, i64 19, !12, i64 20, !12, i64 21, !12, i64 22, !12, i64 23, !12, i64 24, !12, i64 25, !12, i64 26, !12, i64 27, !6, i64 28, !13, i64 32, !6, i64 40, !14, i64 48, !14, i64 80, !18, i64 112, !18, i64 136, !23, i64 160, !23, i64 184}
!12 = !{!"bool", !7, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !15, i64 0, !17, i64 8, !7, i64 16}
!15 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !16, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"long", !7, i64 0}
!18 = !{!"_ZTSSt6vectorIiSaIiEE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 int", !13, i64 0}
!23 = !{!"_ZTSSt6vectorIN4ncnn3MatESaIS1_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseIN4ncnn3MatESaIS1_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN4ncnn3MatESaIS1_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSN4ncnn3MatE", !13, i64 0}
!28 = !{!10, !6, i64 212}
!29 = !{!10, !6, i64 216}
!30 = !{!10, !6, i64 220}
!31 = !{!10, !6, i64 224}
!32 = !{!10, !6, i64 228}
!33 = !{!10, !6, i64 232}
!34 = !{!10, !6, i64 236}
!35 = !{!10, !6, i64 240}
!36 = !{!10, !6, i64 244}
!37 = !{!10, !6, i64 248}
!38 = !{!10, !6, i64 252}
!39 = !{!10, !6, i64 256}
!40 = !{!10, !6, i64 260}
!41 = !{!10, !6, i64 264}
!42 = !{!10, !6, i64 268}
!43 = !{!10, !6, i64 272}
!44 = !{!10, !6, i64 276}
!45 = !{!10, !6, i64 280}
!46 = !{!10, !6, i64 284}
!47 = !{!48, !6, i64 44}
!48 = !{!"_ZTSN4ncnn3MatE", !13, i64 0, !22, i64 8, !17, i64 16, !6, i64 24, !49, i64 32, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !17, i64 64}
!49 = !{!"p1 _ZTSN4ncnn9AllocatorE", !13, i64 0}
!50 = !{!6, !6, i64 0}
!51 = !{!48, !6, i64 48}
!52 = !{!48, !6, i64 52}
!53 = !{!48, !6, i64 56}
!54 = !{!48, !17, i64 16}
!55 = !{!56, !49, i64 8}
!56 = !{!"_ZTSN4ncnn6OptionE", !12, i64 0, !12, i64 1, !12, i64 2, !12, i64 3, !6, i64 4, !49, i64 8, !49, i64 16, !6, i64 24, !12, i64 28, !12, i64 29, !12, i64 30, !12, i64 31, !12, i64 32, !12, i64 33, !12, i64 34, !12, i64 35, !12, i64 36, !12, i64 37, !12, i64 38, !12, i64 39, !6, i64 40, !12, i64 44, !12, i64 45, !12, i64 46, !12, i64 47, !7, i64 48, !12, i64 49, !12, i64 50, !12, i64 51, !12, i64 52, !12, i64 53, !12, i64 54, !12, i64 55, !12, i64 56, !12, i64 57, !12, i64 58, !12, i64 59, !12, i64 60, !12, i64 61, !12, i64 62, !12, i64 63}
!57 = !{!48, !13, i64 0}
!58 = !{!48, !17, i64 64}
!59 = !{!56, !6, i64 4}
!60 = !{!48, !22, i64 8}
!61 = !{!48, !49, i64 32}
!62 = !{!63, !63, i64 0}
!63 = !{!"vtable pointer", !8, i64 0}
!64 = distinct !{null}
!65 = !{!13, !13, i64 0}
!66 = !{!48, !6, i64 24}
!67 = !{i64 0, i64 1, !68, i64 1, i64 1, !68, i64 2, i64 1, !68, i64 3, i64 1, !68, i64 4, i64 4, !50, i64 8, i64 8, !69, i64 16, i64 8, !69, i64 24, i64 4, !50, i64 28, i64 1, !68, i64 29, i64 1, !68, i64 30, i64 1, !68, i64 31, i64 1, !68, i64 32, i64 1, !68, i64 33, i64 1, !68, i64 34, i64 1, !68, i64 35, i64 1, !68, i64 36, i64 1, !68, i64 37, i64 1, !68, i64 38, i64 1, !68, i64 39, i64 1, !68, i64 40, i64 4, !50, i64 44, i64 1, !68, i64 45, i64 1, !68, i64 46, i64 1, !68, i64 47, i64 1, !68, i64 48, i64 1, !70, i64 49, i64 1, !68, i64 50, i64 1, !68, i64 51, i64 1, !68, i64 52, i64 1, !68, i64 53, i64 1, !68, i64 54, i64 1, !68, i64 55, i64 1, !68, i64 56, i64 1, !68, i64 57, i64 1, !68, i64 58, i64 1, !68, i64 59, i64 1, !68, i64 60, i64 1, !68, i64 61, i64 1, !68, i64 62, i64 1, !68, i64 63, i64 1, !68}
!68 = !{!12, !12, i64 0}
!69 = !{!49, !49, i64 0}
!70 = !{!7, !7, i64 0}
!71 = !{!56, !12, i64 39}
!72 = !{!22, !22, i64 0}
!73 = distinct !{!73, !74, !75, !76}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = distinct !{!77, !74, !76, !75}
!78 = distinct !{!78, !74}
!79 = distinct !{!79, !74}
!80 = !{!11, !12, i64 8}
!81 = !{!11, !12, i64 9}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!84 = distinct !{!84, !"_ZNK4ncnn3Mat7channelEi"}
!85 = !{!86, !86, i64 0}
!86 = !{!"float", !7, i64 0}
!87 = distinct !{!87, !88}
!88 = !{!"llvm.loop.unroll.disable"}
!89 = distinct !{!89, !74, !75, !76}
!90 = distinct !{!90, !74, !76, !75}
!91 = !{!92}
!92 = !{i64 2, i64 -1, i64 -1, i1 true}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!95 = distinct !{!95, !"_ZNK4ncnn3Mat7channelEi"}
!96 = distinct !{!96, !74, !75, !76}
!97 = distinct !{!97, !74, !76, !75}
!98 = !{!99}
!99 = distinct !{!99, !100, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!100 = distinct !{!100, !"_ZNK4ncnn3Mat7channelEi"}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!103 = distinct !{!103, !"_ZN4ncnn3Mat7channelEi"}
!104 = distinct !{!104, !74}
!105 = distinct !{!105, !74}
!106 = distinct !{!106, !74}
!107 = distinct !{!107, !74, !75, !76}
!108 = distinct !{!108, !88}
!109 = distinct !{!109, !74, !75}
!110 = distinct !{!110, !74}
!111 = distinct !{!111, !74}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZNK4ncnn3Mat7channelEi: argument 0"}
!114 = distinct !{!114, !"_ZNK4ncnn3Mat7channelEi"}
!115 = !{!116}
!116 = distinct !{!116, !117, !"_ZN4ncnn3Mat7channelEi: argument 0"}
!117 = distinct !{!117, !"_ZN4ncnn3Mat7channelEi"}
!118 = distinct !{!118, !74}
!119 = distinct !{!119, !74}
!120 = distinct !{!120, !74}
!121 = distinct !{!121, !74, !75, !76}
!122 = distinct !{!122, !88}
!123 = distinct !{!123, !74, !75}
!124 = distinct !{!124, !74}
!125 = distinct !{!125, !74}
!126 = !{!56, !49, i64 16}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN4ncnn3Mat7channelEi: argument 0"}
end_hunk_0
