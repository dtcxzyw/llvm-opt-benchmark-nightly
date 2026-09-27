Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/mc_tmpl?download=true
inline.NumInlined: 87
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 22
begin_hunk_0_@put_bilin_c:bb.a

middle.block211:                                  ; preds = %vector.body206
  br i1 %cmp.n212, label %._crit_edge131, label %scalar.ph190.preheader

scalar.ph190.preheader:                           ; preds = %.lr.ph130, %middle.block211
  %indvars.iv143.ph = phi i64 [ %n.vec193, %middle.block211 ], [ 0, %.lr.ph130 ]
  br label %scalar.ph190

._crit_edge131:                                   ; preds = %scalar.ph190, %middle.block211
  %i.dn = getelementptr inbounds i8, ptr %.1, i64 %1
  %i.do = getelementptr inbounds i8, ptr %.1100, i64 %3
  %i.dp = add nsw i32 %.1103, -1                  ; 2 uses
  %.not115 = icmp eq i32 %i.dp, 0
  br i1 %.not115, label %.loopexit.split, label %.lr.ph130

scalar.ph190:                                     ; preds = %scalar.ph190.preheader, %scalar.ph190
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %scalar.ph190 ], [ %indvars.iv143.ph, %scalar.ph190.preheader ] ; 3 uses
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %.1100, i64 %indvars.iv143
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !10
  %i.ds = zext i16 %i.dr to i32                   ; 2 uses
  %i.dt = shl nuw nsw i32 %i.ds, 4
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 3 uses
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %.1100, i64 %indvars.iv.next144
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !10
  %i.dw = zext i16 %i.dv to i32
  %i.dx = sub nsw i32 %i.dw, %i.ds
  %i.dy = mul nsw i32 %i.dx, %6
  %i.dz = add nuw nsw i32 %i.dt, %i.m
  %i.ea = add i32 %i.dz, %i.dy
  %i.eb = ashr i32 %i.ea, %i.k
  %i.ec = add nsw i32 %i.eb, %i.e
  %i.ed = ashr i32 %i.ec, %i.c                    ; 2 uses
  %i.ee = icmp slt i32 %i.ed, 0
  %i.ef = tail call i32 @llvm.smin.i32(i32 %i.ed, i32 %8)
  %i.eg = trunc i32 %i.ef to i16
  %i.eh = select i1 %i.ee, i16 0, i16 %i.eg
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %indvars.iv143
  store i16 %i.eh, ptr %i.ei, align 2, !tbaa !10
  %exitcond147.not = icmp eq i64 %indvars.iv.next144, %wide.trip.count146
  br i1 %exitcond147.not, label %._crit_edge131, label %scalar.ph190, !llvm.loop !33

bb.d:                                             ; preds = %bb.a
  br i1 %.not112, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.ej = icmp sgt i32 %4, 0
  br i1 %i.ej, label %.lr.ph134.preheader, label %.loopexit.split

.lr.ph134.preheader:                              ; preds = %.preheader
  %wide.trip.count151 = zext nneg i32 %4 to i64   ; 4 uses
  %i.ek = add i32 %5, -1
  %i.el = zext i32 %i.ek to i64                   ; 3 uses
  %i.em = mul i64 %1, %i.el
  %i.en = shl nuw nsw i64 %wide.trip.count151, 1  ; 3 uses
  %i.eo = getelementptr i8, ptr %0, i64 %i.em
  %scevgep215 = getelementptr i8, ptr %i.eo, i64 %i.en ; 2 uses
  %scevgep216 = getelementptr i8, ptr %2, i64 %3
  %i.ep = add nuw nsw i64 %i.el, 1
  %i.eq = mul i64 %3, %i.ep
  %i.er = getelementptr i8, ptr %2, i64 %i.eq
  %scevgep217 = getelementptr i8, ptr %i.er, i64 %i.en
  %i.es = mul i64 %3, %i.el
  %i.et = getelementptr i8, ptr %2, i64 %i.es
  %scevgep218 = getelementptr i8, ptr %i.et, i64 %i.en
  %min.iters.check230 = icmp ult i32 %4, 8
  %bound0219 = icmp ult ptr %0, %scevgep217
  %bound1220 = icmp ult ptr %scevgep216, %scevgep215
  %found.conflict221 = and i1 %bound0219, %bound1220
  %i.eu = or i64 %3, %1
  %i.ev = icmp slt i64 %i.eu, 0
  %i.ew = or i1 %found.conflict221, %i.ev
  %bound0224 = icmp ult ptr %0, %scevgep218
  %bound1225 = icmp ult ptr %2, %scevgep215
  %found.conflict226 = and i1 %bound0224, %bound1225
  %i.ex = or i64 %3, %1
  %i.ey = icmp slt i64 %i.ex, 0
  %i.ez = or i1 %found.conflict226, %i.ey
  %conflict.rdx = or i1 %i.ew, %i.ez
  %n.vec232 = and i64 %wide.trip.count151, 2147483640 ; 3 uses
  %broadcast.splatinsert233 = insertelement <8 x i32> poison, i32 %7, i64 0
  %broadcast.splat234 = shufflevector <8 x i32> %broadcast.splatinsert233, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert235 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat236 = shufflevector <8 x i32> %broadcast.splatinsert235, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n243 = icmp eq i64 %n.vec232, %wide.trip.count151
  br label %.lr.ph134

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %._crit_edge135
  %.2104 = phi i32 [ %i.fs, %._crit_edge135 ], [ %5, %.lr.ph134.preheader ]
  %.2101 = phi ptr [ %i.fa, %._crit_edge135 ], [ %2, %.lr.ph134.preheader ] ; 3 uses
  %.2 = phi ptr [ %i.fr, %._crit_edge135 ], [ %0, %.lr.ph134.preheader ] ; 3 uses
  %i.fa = getelementptr i8, ptr %.2101, i64 %3    ; 3 uses
  %brmerge246 = select i1 %min.iters.check230, i1 true, i1 %conflict.rdx
  br i1 %brmerge246, label %scalar.ph229.preheader, label %vector.body237

vector.body237:                                   ; preds = %.lr.ph134, %vector.body237
  %index238 = phi i64 [ %index.next241, %vector.body237 ], [ 0, %.lr.ph134 ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %.2101, i64 %index238
  %wide.load239 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !10, !alias.scope !42
  %i.fc = zext <8 x i16> %wide.load239 to <8 x i32> ; 2 uses
  %i.fd = shl nuw nsw <8 x i32> %i.fc, splat (i32 4)
  %i.fe = getelementptr [2 x i8], ptr %i.fa, i64 %index238
  %wide.load240 = load <8 x i16>, ptr %i.fe, align 2, !tbaa !10, !alias.scope !43
  %i.ff = zext <8 x i16> %wide.load240 to <8 x i32>
  %i.fg = sub nsw <8 x i32> %i.ff, %i.fc
  %i.fh = mul nsw <8 x i32> %i.fg, %broadcast.splat234
  %i.fi = or disjoint <8 x i32> %i.fd, splat (i32 8)
  %i.fj = add <8 x i32> %i.fi, %i.fh
  %i.fk = ashr <8 x i32> %i.fj, splat (i32 4)     ; 2 uses
  %i.fl = icmp slt <8 x i32> %i.fk, zeroinitializer
  %i.fm = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fk, <8 x i32> %broadcast.splat236)
  %i.fn = trunc <8 x i32> %i.fm to <8 x i16>
  %i.fo = select <8 x i1> %i.fl, <8 x i16> zeroinitializer, <8 x i16> %i.fn
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %index238
  store <8 x i16> %i.fo, ptr %i.fp, align 2, !tbaa !10, !alias.scope !44, !noalias !45
  %index.next241 = add nuw i64 %index238, 8       ; 2 uses
  %i.fq = icmp eq i64 %index.next241, %n.vec232
  br i1 %i.fq, label %middle.block242, label %vector.body237, !llvm.loop !38

middle.block242:                                  ; preds = %vector.body237
  br i1 %cmp.n243, label %._crit_edge135, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %.lr.ph134, %middle.block242
  %indvars.iv148.ph = phi i64 [ %n.vec232, %middle.block242 ], [ 0, %.lr.ph134 ]
  br label %scalar.ph229

._crit_edge135:                                   ; preds = %scalar.ph229, %middle.block242
  %i.fr = getelementptr inbounds i8, ptr %.2, i64 %1
  %i.fs = add nsw i32 %.2104, -1                  ; 2 uses
  %.not113 = icmp eq i32 %i.fs, 0
  br i1 %.not113, label %.loopexit.split, label %.lr.ph134

scalar.ph229:                                     ; preds = %scalar.ph229.preheader, %scalar.ph229
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %scalar.ph229 ], [ %indvars.iv148.ph, %scalar.ph229.preheader ] ; 4 uses
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %.2101, i64 %indvars.iv148
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !10
  %i.fv = zext i16 %i.fu to i32                   ; 2 uses
  %i.fw = shl nuw nsw i32 %i.fv, 4
  %i.fx = getelementptr [2 x i8], ptr %i.fa, i64 %indvars.iv148
  %i.fy = load i16, ptr %i.fx, align 2, !tbaa !10
  %i.fz = zext i16 %i.fy to i32
  %i.ga = sub nsw i32 %i.fz, %i.fv
  %i.gb = mul nsw i32 %i.ga, %7
  %i.gc = or disjoint i32 %i.fw, 8
  %i.gd = add i32 %i.gc, %i.gb
  %i.ge = ashr i32 %i.gd, 4                       ; 2 uses
  %i.gf = icmp slt i32 %i.ge, 0
  %i.gg = tail call i32 @llvm.smin.i32(i32 %i.ge, i32 %8)
  %i.gh = trunc i32 %i.gg to i16
  %i.gi = select i1 %i.gf, i16 0, i16 %i.gh
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %indvars.iv148
  store i16 %i.gi, ptr %i.gj, align 2, !tbaa !10
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond152.not = icmp eq i64 %indvars.iv.next149, %wide.trip.count151
  br i1 %exitcond152.not, label %._crit_edge135, label %scalar.ph229, !llvm.loop !39

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @put_c(ptr noundef %0, i64 noundef %i.g, ptr noundef %2, i64 noundef %i.i, i32 noundef %4, i32 noundef %5)
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %._crit_edge131, %._crit_edge135, %.preheader119, %.preheader, %bb.e, %.split127
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @put_bilin_scaled_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10) #3 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 5 uses
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %10, i1 true) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = and i64 %1, 1
  %.not.i60 = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %.not.i60)
  %i.d = icmp sgt i32 %4, 0
  %i.e = sub nsw i32 22, %i.b                     ; 2 uses
  %i.f = shl nuw nsw i32 1, %i.e
  %i.g = lshr i32 %i.f, 1
  %i.h = and i64 %3, 1
  %.not.i = icmp eq i64 %i.h, 0
  %i.i = add nsw i32 %i.b, -14                    ; 3 uses
  %i.j = shl nuw nsw i32 1, %i.i
  %i.k = lshr i32 %i.j, 1                         ; 2 uses
  br i1 %i.d, label %.split.us.split.us.preheader, label %.split74.us

.split.us.split.us.preheader:                     ; preds = %bb.a
  %.pre = zext nneg i32 %4 to i64
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %broadcast.splatinsert101 = insertelement <8 x i32> poison, i32 %i.k, i64 0
  %broadcast.splat102 = shufflevector <8 x i32> %broadcast.splatinsert101, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert103 = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat104 = shufflevector <8 x i32> %broadcast.splatinsert103, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert105 = insertelement <8 x i32> poison, i32 %10, i64 0
  %broadcast.splat106 = shufflevector <8 x i32> %broadcast.splatinsert105, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %.split.us.split.us

.split.us.split.us:                               ; preds = %.split.us.split.us.preheader, %._crit_edge.us72.us
  %.058.us.us = phi i32 [ %i.cd, %._crit_edge.us72.us ], [ %7, %.split.us.split.us.preheader ] ; 3 uses
  %.057.us.us = phi i32 [ %i.cf, %._crit_edge.us72.us ], [ %5, %.split.us.split.us.preheader ]
  %.055.us.us = phi ptr [ %.156.lcssa.us.us, %._crit_edge.us72.us ], [ %2, %.split.us.split.us.preheader ] ; 2 uses
  %.054.us.us = phi ptr [ %i.ce, %._crit_edge.us72.us ], [ %0, %.split.us.split.us.preheader ] ; 3 uses
  %.052.us.us = phi i32 [ %.153.lcssa.us.us, %._crit_edge.us72.us ], [ -2, %.split.us.split.us.preheader ] ; 3 uses
  %i.l = ashr i32 %.058.us.us, 10                 ; 4 uses
  %i.m = shl nsw i32 %i.l, 7
  %i.n = and i32 %i.m, 128                        ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = xor i32 %i.n, 128
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.r ; 2 uses
  %i.t = icmp slt i32 %.052.us.us, %i.l
  br i1 %i.t, label %.lr.ph67.us.us, label %.preheader.us.us

.lr.ph67.us.us:                                   ; preds = %.split.us.split.us
  tail call void @llvm.assume(i1 %.not.i)
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.lr.ph67.us.us
  %.15365.us.us.us = phi i32 [ %.052.us.us, %.lr.ph67.us.us ], [ %i.at, %._crit_edge.us.us.us ] ; 2 uses
  %.15664.us.us.us = phi ptr [ %.055.us.us, %.lr.ph67.us.us ], [ %i.as, %._crit_edge.us.us.us ] ; 2 uses
  %i.u = shl i32 %.15365.us.us.us, 7
  %i.v = and i32 %i.u, 128
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.w
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us.us ] ; 2 uses
  %.063.us.us.us = phi i32 [ %i.aq, %bb.b ], [ 0, %.lr.ph.us.us.us ] ; 2 uses
  %.05062.us.us.us = phi i32 [ %i.ar, %bb.b ], [ %6, %.lr.ph.us.us.us ] ; 2 uses
  %i.y = sext i32 %.063.us.us.us to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %.15664.us.us.us, i64 %i.y ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !10
  %i.ab = zext i16 %i.aa to i32                   ; 2 uses
  %i.ac = shl nuw nsw i32 %i.ab, 4
  %i.ad = ashr i32 %.05062.us.us.us, 6
  %i.ae = getelementptr i8, ptr %i.z, i64 2
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !10
  %i.ag = zext i16 %i.af to i32
  %i.ah = sub nsw i32 %i.ag, %i.ab
  %i.ai = mul nsw i32 %i.ah, %i.ad
  %i.aj = add nuw nsw i32 %i.ac, %i.g
  %i.ak = add i32 %i.aj, %i.ai
  %i.al = ashr i32 %i.ak, %i.e
  %i.am = trunc i32 %i.al to i16
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %indvars.iv
  store i16 %i.am, ptr %i.an, align 2, !tbaa !10
  %i.ao = add nsw i32 %.05062.us.us.us, %8        ; 2 uses
  %i.ap = ashr i32 %i.ao, 10
  %i.aq = add nsw i32 %i.ap, %.063.us.us.us
  %i.ar = and i32 %i.ao, 1023
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.b

._crit_edge.us.us.us:                             ; preds = %bb.b
  %i.as = getelementptr inbounds i8, ptr %.15664.us.us.us, i64 %3 ; 2 uses
  %i.at = add nsw i32 %.15365.us.us.us, 1         ; 2 uses
  %exitcond91.not = icmp eq i32 %i.at, %i.l
  br i1 %exitcond91.not, label %.preheader.us.us, label %.lr.ph.us.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us.us, %.split.us.split.us
  %wide.trip.count94.pre-phi = phi i64 [ %.pre, %.split.us.split.us ], [ %wide.trip.count, %._crit_edge.us.us.us ] ; 4 uses
  %.156.lcssa.us.us = phi ptr [ %.055.us.us, %.split.us.split.us ], [ %i.as, %._crit_edge.us.us.us ]
  %.153.lcssa.us.us = phi i32 [ %.052.us.us, %.split.us.split.us ], [ %i.l, %._crit_edge.us.us.us ]
  %i.au = lshr i32 %.058.us.us, 6
  %i.av = and i32 %i.au, 15                       ; 2 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count94.pre-phi, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us
  %n.vec = and i64 %wide.trip.count94.pre-phi, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index
  %wide.load = load <8 x i16>, ptr %i.aw, align 16, !tbaa !10
  %i.ax = sext <8 x i16> %wide.load to <8 x i32>  ; 2 uses
  %i.ay = shl nsw <8 x i32> %i.ax, splat (i32 4)
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %index
  %wide.load107 = load <8 x i16>, ptr %i.az, align 16, !tbaa !10
  %i.ba = sext <8 x i16> %wide.load107 to <8 x i32>
  %i.bb = sub nsw <8 x i32> %i.ba, %i.ax
  %i.bc = mul nsw <8 x i32> %i.bb, %broadcast.splat
  %i.bd = add nsw <8 x i32> %i.ay, %broadcast.splat102
  %i.be = add nsw <8 x i32> %i.bd, %i.bc
  %i.bf = ashr <8 x i32> %i.be, %broadcast.splat104 ; 2 uses
  %i.bg = icmp slt <8 x i32> %i.bf, zeroinitializer
  %i.bh = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bf, <8 x i32> %broadcast.splat106)
  %i.bi = trunc <8 x i32> %i.bh to <8 x i16>
  %i.bj = select <8 x i1> %i.bg, <8 x i16> zeroinitializer, <8 x i16> %i.bi
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.054.us.us, i64 %index
  store <8 x i16> %i.bj, ptr %i.bk, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bl = icmp eq i64 %index.next, %n.vec
  br i1 %i.bl, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count94.pre-phi, %n.vec
  br i1 %cmp.n, label %._crit_edge.us72.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us, %middle.block
  %indvars.iv91.ph = phi i64 [ 0, %.preheader.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %scalar.ph ], [ %indvars.iv91.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv91
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !10
  %i.bo = sext i16 %i.bn to i32                   ; 2 uses
  %i.bp = shl nsw i32 %i.bo, 4
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %indvars.iv91
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !10
  %i.bs = sext i16 %i.br to i32
  %i.bt = sub nsw i32 %i.bs, %i.bo
  %i.bu = mul nsw i32 %i.bt, %i.av
  %i.bv = add nsw i32 %i.bp, %i.k
  %i.bw = add nsw i32 %i.bv, %i.bu
  %i.bx = ashr i32 %i.bw, %i.i                    ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  %i.bz = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %10)
  %i.ca = trunc i32 %i.bz to i16
  %i.cb = select i1 %i.by, i16 0, i16 %i.ca
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %.054.us.us, i64 %indvars.iv91
  store i16 %i.cb, ptr %i.cc, align 2, !tbaa !10
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94.pre-phi
  br i1 %exitcond95.not, label %._crit_edge.us72.us, label %scalar.ph, !llvm.loop !47

._crit_edge.us72.us:                              ; preds = %scalar.ph, %middle.block
  %i.cd = add nsw i32 %.058.us.us, %9
  %i.ce = getelementptr inbounds i8, ptr %.054.us.us, i64 %1
  %i.cf = add nsw i32 %.057.us.us, -1             ; 2 uses
  %.not.us.us = icmp eq i32 %i.cf, 0
  br i1 %.not.us.us, label %.split74.us, label %.split.us.split.us

.split74.us:                                      ; preds = %._crit_edge.us72.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @prep_bilin_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = alloca [16512 x i16], align 16           ; 4 uses
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %7, i1 true) ; 2 uses
  %i.c = and i64 %2, 1
  %.not.i = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.d = ashr exact i64 %2, 1
  %.not = icmp eq i32 %5, 0
  %.not105 = icmp eq i32 %6, 0                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp sgt i32 %3, 0                       ; 2 uses
  %i.f = sub nsw i32 22, %i.b                     ; 7 uses
  %i.g = shl nuw nsw i32 1, %i.f
  %i.h = lshr i32 %i.g, 1                         ; 6 uses
  br i1 %.not105, label %.preheader111, label %bb.c

.preheader111:                                    ; preds = %bb.b
  %i.i = sext i32 %3 to i64                       ; 2 uses
  br i1 %i.e, label %.lr.ph122.preheader, label %.loopexit.split

.lr.ph122.preheader:                              ; preds = %.preheader111
  %wide.trip.count138 = zext nneg i32 %3 to i64   ; 7 uses
  %i.j = add i32 %4, -1
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = mul nuw nsw i64 %i.i, %i.k
  %i.m = shl nuw nsw i64 %wide.trip.count138, 1
  %i.n = add nuw i64 %i.l, %wide.trip.count138
  %i.o = shl i64 %i.n, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.o
  %i.p = mul i64 %2, %i.k
  %i.q = getelementptr i8, ptr %1, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 %i.m
  %scevgep174 = getelementptr i8, ptr %i.r, i64 2
  %min.iters.check176 = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %0, %scevgep174
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %2, 0
  %i.s = or i1 %found.conflict, %stride.check
  %n.vec178 = and i64 %wide.trip.count138, 2147483640 ; 3 uses
  %broadcast.splatinsert179 = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat180 = shufflevector <8 x i32> %broadcast.splatinsert179, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert181 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat182 = shufflevector <8 x i32> %broadcast.splatinsert181, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert183 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat184 = shufflevector <8 x i32> %broadcast.splatinsert183, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n191 = icmp eq i64 %n.vec178, %wide.trip.count138
  %xtraiter = and i64 %wide.trip.count138, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.t = add nsw i64 %wide.trip.count138, -1
  br label %.lr.ph122

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br i1 %i.e, label %.lr.ph.preheader, label %.split119

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.u = add nsw i32 %4, 1
  %wide.trip.count = zext nneg i32 %3 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %5, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert156 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat157 = shufflevector <8 x i32> %broadcast.splatinsert156, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert158 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat159 = shufflevector <8 x i32> %broadcast.splatinsert158, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.091 = phi ptr [ %i.ak, %._crit_edge ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.088 = phi ptr [ %i.aj, %._crit_edge ], [ %i.a, %.lr.ph.preheader ] ; 3 uses
  %.087 = phi i32 [ %i.al, %._crit_edge ], [ %i.u, %.lr.ph.preheader ]
  %.pre = load i16, ptr %.091, align 2, !tbaa !10 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %vector.recur.init = insertelement <8 x i16> poison, i16 %.pre, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph ], [ %wide.load, %vector.body ]
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %.091, i64 %index
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  %wide.load = load <8 x i16>, ptr %i.w, align 2, !tbaa !10 ; 4 uses
  %i.x = shufflevector <8 x i16> %vector.recur, <8 x i16> %wide.load, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.y = zext <8 x i16> %i.x to <8 x i32>         ; 2 uses
  %i.z = shl nuw nsw <8 x i32> %i.y, splat (i32 4)
  %i.aa = zext <8 x i16> %wide.load to <8 x i32>
  %i.ab = sub nsw <8 x i32> %i.aa, %i.y
  %i.ac = mul nsw <8 x i32> %i.ab, %broadcast.splat
  %i.ad = add nuw nsw <8 x i32> %i.z, %broadcast.splat157
  %i.ae = add <8 x i32> %i.ad, %i.ac
  %i.af = ashr <8 x i32> %i.ae, %broadcast.splat159
  %i.ag = trunc <8 x i32> %i.af to <8 x i16>
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.088, i64 %index
  store <8 x i16> %i.ag, ptr %i.ah, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !48

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i16> %wide.load, i64 7
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph = phi i16 [ %.pre, %.lr.ph ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.aj = getelementptr inbounds nuw i8, ptr %.088, i64 256
  %i.ak = getelementptr inbounds i8, ptr %.091, i64 %2
  %i.al = add nsw i32 %.087, -1                   ; 2 uses
  %.not109 = icmp eq i32 %i.al, 0
end_hunk_0
begin_hunk_1_@prep_bilin_c:bb.a
  %i.eo = ashr i32 %i.en, %i.f
  %i.ep = trunc i32 %i.eo to i16
  %i.eq = add i16 %i.ep, -8192
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %.190, i64 %indvars.iv.next136
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !10
  %exitcond139.not.1 = icmp eq i64 %indvars.iv.next136.1, %wide.trip.count138
  br i1 %exitcond139.not.1, label %._crit_edge123, label %scalar.ph175, !llvm.loop !56

bb.d:                                             ; preds = %bb.a
  br i1 %.not105, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.es = sext i32 %3 to i64                      ; 2 uses
  %i.et = icmp sgt i32 %3, 0
  %i.eu = sub nsw i32 22, %i.b                    ; 5 uses
  %i.ev = shl nuw nsw i32 1, %i.eu
  %i.ew = lshr i32 %i.ev, 1                       ; 4 uses
  br i1 %i.et, label %.lr.ph126.preheader, label %.loopexit.split

.lr.ph126.preheader:                              ; preds = %.preheader
  %wide.trip.count143 = zext nneg i32 %3 to i64   ; 7 uses
  %i.ex = add i32 %4, -1
  %i.ey = zext i32 %i.ex to i64                   ; 3 uses
  %i.ez = mul nuw nsw i64 %i.es, %i.ey
  %i.fa = shl nuw nsw i64 %wide.trip.count143, 1  ; 2 uses
  %i.fb = add nuw i64 %i.ez, %wide.trip.count143
  %i.fc = shl i64 %i.fb, 1
  %scevgep194 = getelementptr i8, ptr %0, i64 %i.fc ; 2 uses
  %scevgep195 = getelementptr i8, ptr %1, i64 %2
  %i.fd = add nuw nsw i64 %i.ey, 1
  %i.fe = mul i64 %2, %i.fd
  %i.ff = getelementptr i8, ptr %1, i64 %i.fe
  %scevgep196 = getelementptr i8, ptr %i.ff, i64 %i.fa
  %i.fg = mul i64 %2, %i.ey
  %i.fh = getelementptr i8, ptr %1, i64 %i.fg
  %scevgep197 = getelementptr i8, ptr %i.fh, i64 %i.fa
  %min.iters.check207 = icmp ult i32 %3, 8
  %bound0198 = icmp ult ptr %0, %scevgep196
  %bound1199 = icmp ult ptr %scevgep195, %scevgep194
  %found.conflict200 = and i1 %bound0198, %bound1199
  %bound0202 = icmp ult ptr %0, %scevgep197
  %bound1203 = icmp ult ptr %1, %scevgep194
  %found.conflict204 = and i1 %bound0202, %bound1203
  %stride.check205 = icmp slt i64 %2, 0
  %i.fi = or i1 %found.conflict204, %stride.check205
  %conflict.rdx = or i1 %found.conflict200, %i.fi
  %n.vec209 = and i64 %wide.trip.count143, 2147483640 ; 3 uses
  %broadcast.splatinsert210 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat211 = shufflevector <8 x i32> %broadcast.splatinsert210, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert212 = insertelement <8 x i32> poison, i32 %i.ew, i64 0
  %broadcast.splat213 = shufflevector <8 x i32> %broadcast.splatinsert212, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert214 = insertelement <8 x i32> poison, i32 %i.eu, i64 0
  %broadcast.splat215 = shufflevector <8 x i32> %broadcast.splatinsert214, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n222 = icmp eq i64 %n.vec209, %wide.trip.count143
  %xtraiter225 = and i64 %wide.trip.count143, 1
  %lcmp.mod226.not = icmp eq i64 %xtraiter225, 0
  %i.fj = add nsw i64 %wide.trip.count143, -1
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %._crit_edge127
  %.296 = phi i32 [ %i.gq, %._crit_edge127 ], [ %4, %.lr.ph126.preheader ]
  %.293 = phi ptr [ %i.fk, %._crit_edge127 ], [ %1, %.lr.ph126.preheader ] ; 5 uses
  %.2 = phi ptr [ %i.gp, %._crit_edge127 ], [ %0, %.lr.ph126.preheader ] ; 5 uses
  %i.fk = getelementptr i8, ptr %.293, i64 %2     ; 5 uses
  %brmerge227 = select i1 %min.iters.check207, i1 true, i1 %conflict.rdx
  br i1 %brmerge227, label %scalar.ph206.preheader, label %vector.body216

vector.body216:                                   ; preds = %.lr.ph126, %vector.body216
  %index217 = phi i64 [ %index.next220, %vector.body216 ], [ 0, %.lr.ph126 ] ; 4 uses
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %.293, i64 %index217
  %wide.load218 = load <8 x i16>, ptr %i.fl, align 2, !tbaa !10, !alias.scope !65
  %i.fm = zext <8 x i16> %wide.load218 to <8 x i32> ; 2 uses
  %i.fn = shl nuw nsw <8 x i32> %i.fm, splat (i32 4)
  %i.fo = getelementptr [2 x i8], ptr %i.fk, i64 %index217
  %wide.load219 = load <8 x i16>, ptr %i.fo, align 2, !tbaa !10, !alias.scope !66
  %i.fp = zext <8 x i16> %wide.load219 to <8 x i32>
  %i.fq = sub nsw <8 x i32> %i.fp, %i.fm
  %i.fr = mul nsw <8 x i32> %i.fq, %broadcast.splat211
  %i.fs = add nuw nsw <8 x i32> %i.fn, %broadcast.splat213
  %i.ft = add <8 x i32> %i.fs, %i.fr
  %i.fu = ashr <8 x i32> %i.ft, %broadcast.splat215
  %i.fv = trunc <8 x i32> %i.fu to <8 x i16>
  %i.fw = add <8 x i16> %i.fv, splat (i16 -8192)
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %index217
  store <8 x i16> %i.fw, ptr %i.fx, align 2, !tbaa !10, !alias.scope !67, !noalias !68
  %index.next220 = add nuw i64 %index217, 8       ; 2 uses
  %i.fy = icmp eq i64 %index.next220, %n.vec209
  br i1 %i.fy, label %middle.block221, label %vector.body216, !llvm.loop !61

middle.block221:                                  ; preds = %vector.body216
  br i1 %cmp.n222, label %._crit_edge127, label %scalar.ph206.preheader

scalar.ph206.preheader:                           ; preds = %.lr.ph126, %middle.block221
  %indvars.iv140.ph = phi i64 [ %n.vec209, %middle.block221 ], [ 0, %.lr.ph126 ] ; 6 uses
  br i1 %lcmp.mod226.not, label %scalar.ph206.prol.loopexit, label %scalar.ph206.prol

scalar.ph206.prol:                                ; preds = %scalar.ph206.preheader
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %.293, i64 %indvars.iv140.ph
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !10
  %i.gb = zext i16 %i.ga to i32                   ; 2 uses
  %i.gc = shl nuw nsw i32 %i.gb, 4
  %i.gd = getelementptr [2 x i8], ptr %i.fk, i64 %indvars.iv140.ph
  %i.ge = load i16, ptr %i.gd, align 2, !tbaa !10
  %i.gf = zext i16 %i.ge to i32
  %i.gg = sub nsw i32 %i.gf, %i.gb
  %i.gh = mul nsw i32 %i.gg, %6
  %i.gi = add nuw nsw i32 %i.gc, %i.ew
  %i.gj = add i32 %i.gi, %i.gh
  %i.gk = ashr i32 %i.gj, %i.eu
  %i.gl = trunc i32 %i.gk to i16
  %i.gm = add i16 %i.gl, -8192
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %indvars.iv140.ph
  store i16 %i.gm, ptr %i.gn, align 2, !tbaa !10
  %indvars.iv.next141.prol = or disjoint i64 %indvars.iv140.ph, 1
  br label %scalar.ph206.prol.loopexit

scalar.ph206.prol.loopexit:                       ; preds = %scalar.ph206.prol, %scalar.ph206.preheader
  %indvars.iv140.unr = phi i64 [ %indvars.iv140.ph, %scalar.ph206.preheader ], [ %indvars.iv.next141.prol, %scalar.ph206.prol ]
  %i.go = icmp eq i64 %indvars.iv140.ph, %i.fj
  br i1 %i.go, label %._crit_edge127, label %scalar.ph206

._crit_edge127:                                   ; preds = %scalar.ph206.prol.loopexit, %scalar.ph206, %middle.block221
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %i.es
  %i.gq = add nsw i32 %.296, -1                   ; 2 uses
  %.not106 = icmp eq i32 %i.gq, 0
  br i1 %.not106, label %.loopexit.split, label %.lr.ph126

scalar.ph206:                                     ; preds = %scalar.ph206.prol.loopexit, %scalar.ph206
  %indvars.iv140 = phi i64 [ %indvars.iv.next141.1, %scalar.ph206 ], [ %indvars.iv140.unr, %scalar.ph206.prol.loopexit ] ; 5 uses
  %i.gr = getelementptr inbounds nuw [2 x i8], ptr %.293, i64 %indvars.iv140
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !10
  %i.gt = zext i16 %i.gs to i32                   ; 2 uses
  %i.gu = shl nuw nsw i32 %i.gt, 4
  %i.gv = getelementptr [2 x i8], ptr %i.fk, i64 %indvars.iv140
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !10
  %i.gx = zext i16 %i.gw to i32
  %i.gy = sub nsw i32 %i.gx, %i.gt
  %i.gz = mul nsw i32 %i.gy, %6
  %i.ha = add nuw nsw i32 %i.gu, %i.ew
  %i.hb = add i32 %i.ha, %i.gz
  %i.hc = ashr i32 %i.hb, %i.eu
  %i.hd = trunc i32 %i.hc to i16
  %i.he = add i16 %i.hd, -8192
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %indvars.iv140
  store i16 %i.he, ptr %i.hf, align 2, !tbaa !10
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 3 uses
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %.293, i64 %indvars.iv.next141
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !10
  %i.hi = zext i16 %i.hh to i32                   ; 2 uses
  %i.hj = shl nuw nsw i32 %i.hi, 4
  %i.hk = getelementptr [2 x i8], ptr %i.fk, i64 %indvars.iv.next141
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !10
  %i.hm = zext i16 %i.hl to i32
  %i.hn = sub nsw i32 %i.hm, %i.hi
  %i.ho = mul nsw i32 %i.hn, %6
  %i.hp = add nuw nsw i32 %i.hj, %i.ew
  %i.hq = add i32 %i.hp, %i.ho
  %i.hr = ashr i32 %i.hq, %i.eu
  %i.hs = trunc i32 %i.hr to i16
  %i.ht = add i16 %i.hs, -8192
  %i.hu = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %indvars.iv.next141
  store i16 %i.ht, ptr %i.hu, align 2, !tbaa !10
  %indvars.iv.next141.1 = add nuw nsw i64 %indvars.iv140, 2 ; 2 uses
  %exitcond144.not.1 = icmp eq i64 %indvars.iv.next141.1, %wide.trip.count143
  br i1 %exitcond144.not.1, label %._crit_edge127, label %scalar.ph206, !llvm.loop !62

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @prep_c(ptr noundef %0, ptr noundef %1, i64 noundef %i.d, i32 noundef %3, i32 noundef %4, i32 noundef %7)
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %._crit_edge123, %._crit_edge127, %.preheader111, %.preheader, %bb.e, %.split119
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @prep_bilin_scaled_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9) #3 {
bb.a:
  %i.a = alloca [256 x i16], align 16             ; 5 uses
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %9, i1 true)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = sext i32 %3 to i64
  %i.d = icmp sgt i32 %3, 0
  %i.e = sub nsw i32 22, %i.b                     ; 2 uses
  %i.f = shl nuw nsw i32 1, %i.e
  %i.g = lshr i32 %i.f, 1
  %i.h = and i64 %2, 1
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %i.d, label %.split.us.split.us.preheader, label %.split71.us

.split.us.split.us.preheader:                     ; preds = %bb.a
  %.pre = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  br label %.split.us.split.us

.split.us.split.us:                               ; preds = %.split.us.split.us.preheader, %._crit_edge.us69.us
  %.055.us.us = phi i32 [ %i.bw, %._crit_edge.us69.us ], [ %6, %.split.us.split.us.preheader ] ; 3 uses
  %.054.us.us = phi i32 [ %i.by, %._crit_edge.us69.us ], [ %4, %.split.us.split.us.preheader ]
  %.052.us.us = phi ptr [ %.153.lcssa.us.us, %._crit_edge.us69.us ], [ %1, %.split.us.split.us.preheader ] ; 2 uses
  %.051.us.us = phi ptr [ %i.bx, %._crit_edge.us69.us ], [ %0, %.split.us.split.us.preheader ] ; 3 uses
  %.049.us.us = phi i32 [ %.150.lcssa.us.us, %._crit_edge.us69.us ], [ -2, %.split.us.split.us.preheader ] ; 3 uses
  %i.i = ashr i32 %.055.us.us, 10                 ; 4 uses
  %i.j = shl nsw i32 %i.i, 7
  %i.k = and i32 %i.j, 128                        ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.l ; 2 uses
  %i.n = xor i32 %i.k, 128
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = icmp slt i32 %.049.us.us, %i.i
  br i1 %i.q, label %.lr.ph64.us.us, label %.preheader.us.us

.lr.ph64.us.us:                                   ; preds = %.split.us.split.us
  tail call void @llvm.assume(i1 %.not.i)
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %._crit_edge.us.us.us, %.lr.ph64.us.us
  %.15062.us.us.us = phi i32 [ %.049.us.us, %.lr.ph64.us.us ], [ %i.aq, %._crit_edge.us.us.us ] ; 2 uses
  %.15361.us.us.us = phi ptr [ %.052.us.us, %.lr.ph64.us.us ], [ %i.ap, %._crit_edge.us.us.us ] ; 2 uses
  %i.r = shl i32 %.15062.us.us.us, 7
  %i.s = and i32 %i.r, 128
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.t
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ 0, %.lr.ph.us.us.us ] ; 2 uses
  %.060.us.us.us = phi i32 [ %i.an, %bb.b ], [ 0, %.lr.ph.us.us.us ] ; 2 uses
  %.04759.us.us.us = phi i32 [ %i.ao, %bb.b ], [ %5, %.lr.ph.us.us.us ] ; 2 uses
  %i.v = sext i32 %.060.us.us.us to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %.15361.us.us.us, i64 %i.v ; 2 uses
  %i.x = load i16, ptr %i.w, align 2, !tbaa !10
  %i.y = zext i16 %i.x to i32                     ; 2 uses
  %i.z = shl nuw nsw i32 %i.y, 4
  %i.aa = ashr i32 %.04759.us.us.us, 6
  %i.ab = getelementptr i8, ptr %i.w, i64 2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !10
  %i.ad = zext i16 %i.ac to i32
  %i.ae = sub nsw i32 %i.ad, %i.y
  %i.af = mul nsw i32 %i.ae, %i.aa
  %i.ag = add nuw nsw i32 %i.z, %i.g
  %i.ah = add i32 %i.ag, %i.af
  %i.ai = ashr i32 %i.ah, %i.e
  %i.aj = trunc i32 %i.ai to i16
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %indvars.iv
  store i16 %i.aj, ptr %i.ak, align 2, !tbaa !10
  %i.al = add nsw i32 %.04759.us.us.us, %7        ; 2 uses
  %i.am = ashr i32 %i.al, 10
  %i.an = add nsw i32 %i.am, %.060.us.us.us
  %i.ao = and i32 %i.al, 1023
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us.us, label %bb.b

._crit_edge.us.us.us:                             ; preds = %bb.b
  %i.ap = getelementptr inbounds i8, ptr %.15361.us.us.us, i64 %2 ; 2 uses
  %i.aq = add nsw i32 %.15062.us.us.us, 1         ; 2 uses
  %exitcond88.not = icmp eq i32 %i.aq, %i.i
  br i1 %exitcond88.not, label %.preheader.us.us, label %.lr.ph.us.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us.us, %.split.us.split.us
  %wide.trip.count91.pre-phi = phi i64 [ %.pre, %.split.us.split.us ], [ %wide.trip.count, %._crit_edge.us.us.us ] ; 4 uses
  %.153.lcssa.us.us = phi ptr [ %.052.us.us, %.split.us.split.us ], [ %i.ap, %._crit_edge.us.us.us ]
  %.150.lcssa.us.us = phi i32 [ %.049.us.us, %.split.us.split.us ], [ %i.i, %._crit_edge.us.us.us ]
  %i.ar = lshr i32 %.055.us.us, 6
  %i.as = and i32 %i.ar, 15                       ; 2 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count91.pre-phi, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us
  %n.vec = and i64 %wide.trip.count91.pre-phi, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index
  %wide.load = load <8 x i16>, ptr %i.at, align 16, !tbaa !10
  %i.au = sext <8 x i16> %wide.load to <8 x i32>  ; 2 uses
  %i.av = shl nsw <8 x i32> %i.au, splat (i32 4)
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index
  %wide.load98 = load <8 x i16>, ptr %i.aw, align 16, !tbaa !10
  %i.ax = sext <8 x i16> %wide.load98 to <8 x i32>
  %i.ay = sub nsw <8 x i32> %i.ax, %i.au
  %i.az = mul nsw <8 x i32> %i.ay, %broadcast.splat
  %i.ba = or disjoint <8 x i32> %i.av, splat (i32 8)
  %i.bb = add nsw <8 x i32> %i.ba, %i.az
  %i.bc = lshr <8 x i32> %i.bb, splat (i32 4)
  %i.bd = trunc <8 x i32> %i.bc to <8 x i16>
  %i.be = add <8 x i16> %i.bd, splat (i16 -8192)
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %.051.us.us, i64 %index
  store <8 x i16> %i.be, ptr %i.bf, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count91.pre-phi, %n.vec
  br i1 %cmp.n, label %._crit_edge.us69.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us, %middle.block
  %indvars.iv88.ph = phi i64 [ 0, %.preheader.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %scalar.ph ], [ %indvars.iv88.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv88
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !10
  %i.bj = sext i16 %i.bi to i32                   ; 2 uses
  %i.bk = shl nsw i32 %i.bj, 4
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv88
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !10
  %i.bn = sext i16 %i.bm to i32
  %i.bo = sub nsw i32 %i.bn, %i.bj
  %i.bp = mul nsw i32 %i.bo, %i.as
  %i.bq = or disjoint i32 %i.bk, 8
  %i.br = add nsw i32 %i.bq, %i.bp
  %i.bs = lshr i32 %i.br, 4
  %i.bt = trunc i32 %i.bs to i16
  %i.bu = add i16 %i.bt, -8192
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.051.us.us, i64 %indvars.iv88
  store i16 %i.bu, ptr %i.bv, align 2, !tbaa !10
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91.pre-phi
  br i1 %exitcond92.not, label %._crit_edge.us69.us, label %scalar.ph, !llvm.loop !70

._crit_edge.us69.us:                              ; preds = %scalar.ph, %middle.block
  %i.bw = add nsw i32 %.055.us.us, %8
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.051.us.us, i64 %i.c
  %i.by = add nsw i32 %.054.us.us, -1             ; 2 uses
  %.not.us.us = icmp eq i32 %i.by, 0
  br i1 %.not.us.us, label %.split71.us, label %.split.us.split.us

.split71.us:                                      ; preds = %._crit_edge.us69.us, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @avg_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #3 {
bb.a:
  %i.a = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %6, i1 true) ; 2 uses
  %i.b = add nsw i32 %i.a, -18
  %i.c = add nsw i32 %i.a, -17                    ; 4 uses
  %i.d = shl nuw nsw i32 1, %i.b
  %i.e = sext i32 %4 to i64                       ; 3 uses
  %i.f = icmp sgt i32 %4, 0
  %i.g = and i64 %1, 1
  %.not.i = icmp eq i64 %i.g, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.h = add nuw nsw i32 %i.d, 16384              ; 4 uses
  br i1 %i.f, label %.lr.ph.preheader, label %.split28

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 7 uses
  %i.i = add i32 %5, -1
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = mul i64 %1, %i.j
  %i.l = shl nuw nsw i64 %wide.trip.count, 1
  %i.m = getelementptr i8, ptr %0, i64 %i.k
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.l ; 2 uses
  %i.n = mul nuw nsw i64 %i.e, %i.j
  %i.o = add nuw i64 %i.n, %wide.trip.count
  %i.p = shl i64 %i.o, 1                          ; 2 uses
  %scevgep31 = getelementptr i8, ptr %2, i64 %i.p
  %scevgep32 = getelementptr i8, ptr %3, i64 %i.p
  %min.iters.check = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %0, %scevgep31
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound033 = icmp ult ptr %0, %scevgep32
  %bound134 = icmp ult ptr %3, %scevgep
  %found.conflict35 = and i1 %bound033, %bound134
  %stride.check36 = icmp slt i64 %1, 0
  %i.q = or i1 %found.conflict35, %stride.check36
  %conflict.rdx = or i1 %found.conflict, %i.q
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert37 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat38 = shufflevector <8 x i32> %broadcast.splatinsert37, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert39 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat40 = shufflevector <8 x i32> %broadcast.splatinsert39, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.r = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.024 = phi ptr [ %i.av, %._crit_edge ], [ %3, %.lr.ph.preheader ] ; 5 uses
  %.023 = phi ptr [ %i.au, %._crit_edge ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.022 = phi i32 [ %i.ax, %._crit_edge ], [ %5, %.lr.ph.preheader ]
  %.021 = phi ptr [ %i.aw, %._crit_edge ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 4 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %.023, i64 %index
  %wide.load = load <8 x i16>, ptr %i.s, align 2, !tbaa !10, !alias.scope !77
  %i.t = sext <8 x i16> %wide.load to <8 x i32>
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.024, i64 %index
  %wide.load41 = load <8 x i16>, ptr %i.u, align 2, !tbaa !10, !alias.scope !78
  %i.v = sext <8 x i16> %wide.load41 to <8 x i32>
  %i.w = add nsw <8 x i32> %broadcast.splat, %i.t
  %i.x = add nsw <8 x i32> %i.w, %i.v
  %i.y = ashr <8 x i32> %i.x, %broadcast.splat38  ; 2 uses
  %i.z = icmp slt <8 x i32> %i.y, zeroinitializer
  %i.aa = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.y, <8 x i32> %broadcast.splat40)
  %i.ab = trunc <8 x i32> %i.aa to <8 x i16>
  %i.ac = select <8 x i1> %i.z, <8 x i16> zeroinitializer, <8 x i16> %i.ab
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %index
  store <8 x i16> %i.ac, ptr %i.ad, align 2, !tbaa !10, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.023, i64 %indvars.iv.ph
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !10
  %i.ah = sext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %.024, i64 %indvars.iv.ph
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !10
  %i.ak = sext i16 %i.aj to i32
  %i.al = add nsw i32 %i.h, %i.ah
  %i.am = add nsw i32 %i.al, %i.ak
  %i.an = ashr i32 %i.am, %i.c                    ; 2 uses
  %i.ao = icmp slt i32 %i.an, 0
  %i.ap = tail call i32 @llvm.smin.i32(i32 %i.an, i32 %6)
  %i.aq = trunc i32 %i.ap to i16
  %i.ar = select i1 %i.ao, i16 0, i16 %i.aq
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %indvars.iv.ph
  store i16 %i.ar, ptr %i.as, align 2, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.at = icmp eq i64 %indvars.iv.ph, %i.r
  br i1 %i.at, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.023, i64 %i.e
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.024, i64 %i.e
  %i.aw = getelementptr inbounds i8, ptr %.021, i64 %1
  %i.ax = add nsw i32 %.022, -1                   ; 2 uses
  %.not = icmp eq i32 %i.ax, 0
  br i1 %.not, label %.split28, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.023, i64 %indvars.iv
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !10
  %i.ba = sext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %.024, i64 %indvars.iv
end_hunk_1
