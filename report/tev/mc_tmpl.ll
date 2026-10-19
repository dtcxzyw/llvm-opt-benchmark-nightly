Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/mc_tmpl?download=true
inline.NumInlined: 87
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 22
begin_hunk_0_@put_bilin_c:bb.a

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.ax = phi i16 [ %i.bb, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ay = zext i16 %i.ax to i32                   ; 2 uses
  %i.az = shl nuw nsw i32 %i.ay, 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.099, i64 %indvars.iv.next
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !10 ; 2 uses
  %i.bc = zext i16 %i.bb to i32
  %i.bd = sub nsw i32 %i.bc, %i.ay
  %i.be = mul nsw i32 %i.bd, %6
  %i.bf = add nuw nsw i32 %i.az, %i.ab
  %i.bg = add i32 %i.bf, %i.be
  %i.bh = ashr i32 %i.bg, %i.z
  %i.bi = trunc i32 %i.bh to i16
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.097, i64 %indvars.iv
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !26

.lr.ph125:                                        ; preds = %.preheader121.split, %._crit_edge126
  %.0102 = phi i32 [ %i.cc, %._crit_edge126 ], [ %5, %.preheader121.split ]
  %.198 = phi ptr [ %i.ca, %._crit_edge126 ], [ %i.a, %.preheader121.split ] ; 3 uses
  %.092 = phi ptr [ %i.cb, %._crit_edge126 ], [ %0, %.preheader121.split ] ; 3 uses
  br i1 %min.iters.check169, label %scalar.ph168.preheader, label %vector.body180

vector.body180:                                   ; preds = %.lr.ph125, %vector.body180
  %index181 = phi i64 [ %index.next184, %vector.body180 ], [ 0, %.lr.ph125 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.198, i64 %index181 ; 2 uses
  %wide.load182 = load <8 x i16>, ptr %i.bk, align 2, !tbaa !10
  %i.bl = sext <8 x i16> %wide.load182 to <8 x i32> ; 2 uses
  %i.bm = shl nsw <8 x i32> %i.bl, splat (i32 4)
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 256
  %wide.load183 = load <8 x i16>, ptr %i.bn, align 2, !tbaa !10
  %i.bo = sext <8 x i16> %wide.load183 to <8 x i32>
  %i.bp = sub nsw <8 x i32> %i.bo, %i.bl
  %i.bq = mul nsw <8 x i32> %i.bp, %broadcast.splat173
  %i.br = add nsw <8 x i32> %i.bm, %broadcast.splat175
  %i.bs = add <8 x i32> %i.br, %i.bq
  %i.bt = ashr <8 x i32> %i.bs, %broadcast.splat177 ; 2 uses
  %i.bu = icmp slt <8 x i32> %i.bt, zeroinitializer
  %i.bv = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bt, <8 x i32> %broadcast.splat179)
  %i.bw = trunc <8 x i32> %i.bv to <8 x i16>
  %i.bx = select <8 x i1> %i.bu, <8 x i16> zeroinitializer, <8 x i16> %i.bw
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.092, i64 %index181
  store <8 x i16> %i.bx, ptr %i.by, align 2, !tbaa !10
  %index.next184 = add nuw i64 %index181, 8       ; 2 uses
  %i.bz = icmp eq i64 %index.next184, %n.vec171
  br i1 %i.bz, label %middle.block185, label %vector.body180, !llvm.loop !27

middle.block185:                                  ; preds = %vector.body180
  br i1 %cmp.n186, label %._crit_edge126, label %scalar.ph168.preheader

scalar.ph168.preheader:                           ; preds = %.lr.ph125, %middle.block185
  %indvars.iv138.ph = phi i64 [ 0, %.lr.ph125 ], [ %n.vec171, %middle.block185 ]
  br label %scalar.ph168

._crit_edge126:                                   ; preds = %scalar.ph168, %middle.block185
  %i.ca = getelementptr inbounds nuw i8, ptr %.198, i64 256
  %i.cb = getelementptr inbounds i8, ptr %.092, i64 %1
  %i.cc = add nsw i32 %.0102, -1                  ; 2 uses
  %.not117 = icmp eq i32 %i.cc, 0
  br i1 %.not117, label %.split127, label %.lr.ph125

scalar.ph168:                                     ; preds = %scalar.ph168.preheader, %scalar.ph168
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %scalar.ph168 ], [ %indvars.iv138.ph, %scalar.ph168.preheader ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %.198, i64 %indvars.iv138 ; 2 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !10
  %i.cf = sext i16 %i.ce to i32                   ; 2 uses
  %i.cg = shl nsw i32 %i.cf, 4
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 256
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !10
  %i.cj = sext i16 %i.ci to i32
  %i.ck = sub nsw i32 %i.cj, %i.cf
  %i.cl = mul nsw i32 %i.ck, %7
  %i.cm = add nsw i32 %i.cg, %i.aw
  %i.cn = add i32 %i.cm, %i.cl
  %i.co = ashr i32 %i.cn, %i.au                   ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  %i.cq = tail call i32 @llvm.smin.i32(i32 %i.co, i32 %8)
  %i.cr = trunc i32 %i.cq to i16
  %i.cs = select i1 %i.cp, i16 0, i16 %i.cr
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.092, i64 %indvars.iv138
  store i16 %i.cs, ptr %i.ct, align 2, !tbaa !10
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %._crit_edge126, label %scalar.ph168, !llvm.loop !28

.split127:                                        ; preds = %._crit_edge126, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit.split

.lr.ph130:                                        ; preds = %.lr.ph130.preheader, %._crit_edge131
  %.1103 = phi i32 [ %i.dp, %._crit_edge131 ], [ %5, %.lr.ph130.preheader ]
  %.1100 = phi ptr [ %i.do, %._crit_edge131 ], [ %2, %.lr.ph130.preheader ] ; 5 uses
  %.1 = phi ptr [ %i.dn, %._crit_edge131 ], [ %0, %.lr.ph130.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check191, i1 true, i1 %i.x
  br i1 %brmerge, label %scalar.ph190.preheader, label %vector.body206

vector.body206:                                   ; preds = %.lr.ph130, %vector.body206
  %index207 = phi i64 [ %index.next210, %vector.body206 ], [ 0, %.lr.ph130 ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.1100, i64 %index207
  %wide.load208 = load <8 x i16>, ptr %i.cu, align 2, !tbaa !10, !alias.scope !40
  %i.cv = zext <8 x i16> %wide.load208 to <8 x i32> ; 2 uses
  %i.cw = shl nuw nsw <8 x i32> %i.cv, splat (i32 4)
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.1100, i64 %index207
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 2
  %wide.load209 = load <8 x i16>, ptr %i.cy, align 2, !tbaa !10, !alias.scope !40
  %i.cz = zext <8 x i16> %wide.load209 to <8 x i32>
  %i.da = sub nsw <8 x i32> %i.cz, %i.cv
  %i.db = mul nsw <8 x i32> %i.da, %broadcast.splat195
  %i.dc = add nuw nsw <8 x i32> %i.cw, %broadcast.splat197
  %i.dd = add <8 x i32> %i.dc, %i.db
  %i.de = ashr <8 x i32> %i.dd, %broadcast.splat199
  %i.df = add nsw <8 x i32> %i.de, %broadcast.splat201
  %i.dg = ashr <8 x i32> %i.df, %broadcast.splat203 ; 2 uses
  %i.dh = icmp slt <8 x i32> %i.dg, zeroinitializer
  %i.di = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.dg, <8 x i32> %broadcast.splat205)
  %i.dj = trunc <8 x i32> %i.di to <8 x i16>
  %i.dk = select <8 x i1> %i.dh, <8 x i16> zeroinitializer, <8 x i16> %i.dj
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %index207
  store <8 x i16> %i.dk, ptr %i.dl, align 2, !tbaa !10, !alias.scope !41, !noalias !40
  %index.next210 = add nuw i64 %index207, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next210, %n.vec193
  br i1 %i.dm, label %middle.block211, label %vector.body206, !llvm.loop !32

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
  %conflict.rdx = or i1 %i.ew, %found.conflict226
  %n.vec232 = and i64 %wide.trip.count151, 2147483640 ; 3 uses
  %broadcast.splatinsert233.a = insertelement <8 x i32> poison, i32 %7, i64 0
  %broadcast.splat234.a = shufflevector <8 x i32> %broadcast.splatinsert233.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert235 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat236 = shufflevector <8 x i32> %broadcast.splatinsert235, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n243 = icmp eq i64 %n.vec232, %wide.trip.count151
  br label %.lr.ph134

.lr.ph134:                                        ; preds = %.lr.ph134.preheader, %._crit_edge135
  %.2104 = phi i32 [ %i.fp, %._crit_edge135 ], [ %5, %.lr.ph134.preheader ]
  %.2101 = phi ptr [ %i.ex, %._crit_edge135 ], [ %2, %.lr.ph134.preheader ] ; 3 uses
  %.2 = phi ptr [ %i.fo, %._crit_edge135 ], [ %0, %.lr.ph134.preheader ] ; 3 uses
  %i.ex = getelementptr i8, ptr %.2101, i64 %3    ; 3 uses
  %brmerge246 = select i1 %min.iters.check230, i1 true, i1 %conflict.rdx
  br i1 %brmerge246, label %scalar.ph229.preheader, label %vector.body237

vector.body237:                                   ; preds = %.lr.ph134, %vector.body237
  %index238 = phi i64 [ %index.next241, %vector.body237 ], [ 0, %.lr.ph134 ] ; 4 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %.2101, i64 %index238
  %wide.load239 = load <8 x i16>, ptr %i.ey, align 2, !tbaa !10, !alias.scope !42
  %i.ez = zext <8 x i16> %wide.load239 to <8 x i32> ; 2 uses
  %i.fa = shl nuw nsw <8 x i32> %i.ez, splat (i32 4)
  %i.fb = getelementptr [2 x i8], ptr %i.ex, i64 %index238
  %wide.load240 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !10, !alias.scope !43
  %i.fc = zext <8 x i16> %wide.load240 to <8 x i32>
  %i.fd = sub nsw <8 x i32> %i.fc, %i.ez
  %i.fe = mul nsw <8 x i32> %i.fd, %broadcast.splat234.a
  %i.ff = or disjoint <8 x i32> %i.fa, splat (i32 8)
  %i.fg = add <8 x i32> %i.ff, %i.fe
  %i.fh = ashr <8 x i32> %i.fg, splat (i32 4)     ; 2 uses
  %i.fi = icmp slt <8 x i32> %i.fh, zeroinitializer
  %i.fj = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fh, <8 x i32> %broadcast.splat236)
  %i.fk = trunc <8 x i32> %i.fj to <8 x i16>
  %i.fl = select <8 x i1> %i.fi, <8 x i16> zeroinitializer, <8 x i16> %i.fk
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %index238
  store <8 x i16> %i.fl, ptr %i.fm, align 2, !tbaa !10, !alias.scope !44, !noalias !45
  %index.next241 = add nuw i64 %index238, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next241, %n.vec232
  br i1 %i.fn, label %middle.block242, label %vector.body237, !llvm.loop !38

middle.block242:                                  ; preds = %vector.body237
  br i1 %cmp.n243, label %._crit_edge135, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %.lr.ph134, %middle.block242
  %indvars.iv148.ph = phi i64 [ %n.vec232, %middle.block242 ], [ 0, %.lr.ph134 ]
  br label %scalar.ph229

._crit_edge135:                                   ; preds = %scalar.ph229, %middle.block242
  %i.fo = getelementptr inbounds i8, ptr %.2, i64 %1
  %i.fp = add nsw i32 %.2104, -1                  ; 2 uses
  %.not113 = icmp eq i32 %i.fp, 0
  br i1 %.not113, label %.loopexit.split, label %.lr.ph134

scalar.ph229:                                     ; preds = %scalar.ph229.preheader, %scalar.ph229
  %indvars.iv148 = phi i64 [ %indvars.iv.next149, %scalar.ph229 ], [ %indvars.iv148.ph, %scalar.ph229.preheader ] ; 4 uses
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %.2101, i64 %indvars.iv148
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !10
  %i.fs = zext i16 %i.fr to i32                   ; 2 uses
  %i.ft = shl nuw nsw i32 %i.fs, 4
  %i.fu = getelementptr [2 x i8], ptr %i.ex, i64 %indvars.iv148
  %i.fv = load i16, ptr %i.fu, align 2, !tbaa !10
  %i.fw = zext i16 %i.fv to i32
  %i.fx = sub nsw i32 %i.fw, %i.fs
  %i.fy = mul nsw i32 %i.fx, %7
  %i.fz = or disjoint i32 %i.ft, 8
  %i.ga = add i32 %i.fz, %i.fy
  %i.gb = ashr i32 %i.ga, 4                       ; 2 uses
  %i.gc = icmp slt i32 %i.gb, 0
  %i.gd = tail call i32 @llvm.smin.i32(i32 %i.gb, i32 %8)
  %i.ge = trunc i32 %i.gd to i16
  %i.gf = select i1 %i.gc, i16 0, i16 %i.ge
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %indvars.iv148
  store i16 %i.gf, ptr %i.gg, align 2, !tbaa !10
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
  %.058.us.us = phi i32 [ %i.ce, %._crit_edge.us72.us ], [ %7, %.split.us.split.us.preheader ] ; 3 uses
  %.057.us.us = phi i32 [ %i.cg, %._crit_edge.us72.us ], [ %5, %.split.us.split.us.preheader ]
  %.055.us.us = phi ptr [ %.156.lcssa.us.us, %._crit_edge.us72.us ], [ %2, %.split.us.split.us.preheader ] ; 2 uses
  %.054.us.us = phi ptr [ %i.cf, %._crit_edge.us72.us ], [ %0, %.split.us.split.us.preheader ] ; 3 uses
  %.052.us.us = phi i32 [ %.153.lcssa.us.us, %._crit_edge.us72.us ], [ -2, %.split.us.split.us.preheader ] ; 3 uses
  %i.l = ashr i32 %.058.us.us, 10                 ; 3 uses
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
  %i.at = add nsw i32 %.15365.us.us.us, 1         ; 3 uses
  %i.au = icmp slt i32 %i.at, %i.l
  br i1 %i.au, label %.lr.ph.us.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us.us, %.split.us.split.us
  %wide.trip.count94.pre-phi = phi i64 [ %.pre, %.split.us.split.us ], [ %wide.trip.count, %._crit_edge.us.us.us ] ; 4 uses
  %.156.lcssa.us.us = phi ptr [ %.055.us.us, %.split.us.split.us ], [ %i.as, %._crit_edge.us.us.us ]
  %.153.lcssa.us.us = phi i32 [ %.052.us.us, %.split.us.split.us ], [ %i.at, %._crit_edge.us.us.us ]
  %i.av = lshr i32 %.058.us.us, 6
  %i.aw = and i32 %i.av, 15                       ; 2 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count94.pre-phi, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us
  %n.vec = and i64 %wide.trip.count94.pre-phi, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index
  %wide.load = load <8 x i16>, ptr %i.ax, align 16, !tbaa !10
end_hunk_0
begin_hunk_1_@prep_bilin_c:bb.a
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %index167 ; 2 uses
  %wide.load168 = load <8 x i16>, ptr %i.ba, align 2, !tbaa !10
  %i.bb = sext <8 x i16> %wide.load168 to <8 x i32> ; 2 uses
  %i.bc = shl nsw <8 x i32> %i.bb, splat (i32 4)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 256
  %wide.load169 = load <8 x i16>, ptr %i.bd, align 2, !tbaa !10
  %i.be = sext <8 x i16> %wide.load169 to <8 x i32>
  %i.bf = sub nsw <8 x i32> %i.be, %i.bb
  %i.bg = mul nsw <8 x i32> %i.bf, %broadcast.splat165
  %i.bh = or disjoint <8 x i32> %i.bc, splat (i32 8)
  %i.bi = add <8 x i32> %i.bh, %i.bg
  %i.bj = lshr <8 x i32> %i.bi, splat (i32 4)
  %i.bk = trunc <8 x i32> %i.bj to <8 x i16>
  %i.bl = add <8 x i16> %i.bk, splat (i16 -8192)
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.089, i64 %index167
  store <8 x i16> %i.bl, ptr %i.bm, align 2, !tbaa !10
  %index.next170 = add nuw i64 %index167, 8       ; 2 uses
  %i.bn = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.bn, label %middle.block171, label %vector.body166, !llvm.loop !50

middle.block171:                                  ; preds = %vector.body166
  br i1 %cmp.n172, label %._crit_edge118, label %scalar.ph160.preheader

scalar.ph160.preheader:                           ; preds = %.lr.ph117, %middle.block171
  %indvars.iv130.ph = phi i64 [ 0, %.lr.ph117 ], [ %n.vec163, %middle.block171 ]
  br label %scalar.ph160

._crit_edge118:                                   ; preds = %scalar.ph160, %middle.block171
  %i.bo = getelementptr inbounds nuw i8, ptr %.1, i64 256
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.089, i64 %i.am
  %i.bq = add nsw i32 %.094, -1                   ; 2 uses
  %.not110 = icmp eq i32 %i.bq, 0
  br i1 %.not110, label %.split119, label %.lr.ph117

scalar.ph160:                                     ; preds = %scalar.ph160.preheader, %scalar.ph160
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %scalar.ph160 ], [ %indvars.iv130.ph, %scalar.ph160.preheader ] ; 3 uses
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %indvars.iv130 ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !10
  %i.bt = sext i16 %i.bs to i32                   ; 2 uses
  %i.bu = shl nsw i32 %i.bt, 4
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 256
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !10
  %i.bx = sext i16 %i.bw to i32
  %i.by = sub nsw i32 %i.bx, %i.bt
  %i.bz = mul nsw i32 %i.by, %6
  %i.ca = or disjoint i32 %i.bu, 8
  %i.cb = add i32 %i.ca, %i.bz
  %i.cc = lshr i32 %i.cb, 4
  %i.cd = trunc i32 %i.cc to i16
  %i.ce = add i16 %i.cd, -8192
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %.089, i64 %indvars.iv130
  store i16 %i.ce, ptr %i.cf, align 2, !tbaa !10
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %._crit_edge118, label %scalar.ph160, !llvm.loop !51

.split119:                                        ; preds = %._crit_edge118, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit.split

.lr.ph122:                                        ; preds = %.lr.ph122.preheader, %._crit_edge123
  %.195 = phi i32 [ %i.dn, %._crit_edge123 ], [ %4, %.lr.ph122.preheader ]
  %.192 = phi ptr [ %i.dm, %._crit_edge123 ], [ %1, %.lr.ph122.preheader ] ; 9 uses
  %.190 = phi ptr [ %i.dl, %._crit_edge123 ], [ %0, %.lr.ph122.preheader ] ; 5 uses
  %brmerge = select i1 %min.iters.check176, i1 true, i1 %i.s
  br i1 %brmerge, label %scalar.ph175.preheader, label %vector.body185

vector.body185:                                   ; preds = %.lr.ph122, %vector.body185
  %index186 = phi i64 [ %index.next189, %vector.body185 ], [ 0, %.lr.ph122 ] ; 4 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %index186
  %wide.load187 = load <8 x i16>, ptr %i.cg, align 2, !tbaa !10, !alias.scope !63
  %i.ch = zext <8 x i16> %wide.load187 to <8 x i32> ; 2 uses
  %i.ci = shl nuw nsw <8 x i32> %i.ch, splat (i32 4)
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %index186
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 2
  %wide.load188 = load <8 x i16>, ptr %i.ck, align 2, !tbaa !10, !alias.scope !63
  %i.cl = zext <8 x i16> %wide.load188 to <8 x i32>
  %i.cm = sub nsw <8 x i32> %i.cl, %i.ch
  %i.cn = mul nsw <8 x i32> %i.cm, %broadcast.splat180
  %i.co = add nuw nsw <8 x i32> %i.ci, %broadcast.splat182
  %i.cp = add <8 x i32> %i.co, %i.cn
  %i.cq = ashr <8 x i32> %i.cp, %broadcast.splat184
  %i.cr = trunc <8 x i32> %i.cq to <8 x i16>
  %i.cs = add <8 x i16> %i.cr, splat (i16 -8192)
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.190, i64 %index186
  store <8 x i16> %i.cs, ptr %i.ct, align 2, !tbaa !10, !alias.scope !64, !noalias !63
  %index.next189 = add nuw i64 %index186, 8       ; 2 uses
  %i.cu = icmp eq i64 %index.next189, %n.vec178
  br i1 %i.cu, label %middle.block190, label %vector.body185, !llvm.loop !55

middle.block190:                                  ; preds = %vector.body185
  br i1 %cmp.n191, label %._crit_edge123, label %scalar.ph175.preheader

scalar.ph175.preheader:                           ; preds = %.lr.ph122, %middle.block190
  %indvars.iv135.ph = phi i64 [ %n.vec178, %middle.block190 ], [ 0, %.lr.ph122 ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph175.prol.loopexit, label %scalar.ph175.prol

scalar.ph175.prol:                                ; preds = %scalar.ph175.preheader
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %indvars.iv135.ph
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !10
  %i.cx = zext i16 %i.cw to i32                   ; 2 uses
  %i.cy = shl nuw nsw i32 %i.cx, 4
  %indvars.iv.next136.prol = or disjoint i64 %indvars.iv135.ph, 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %indvars.iv.next136.prol
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !10
  %i.db = zext i16 %i.da to i32
  %i.dc = sub nsw i32 %i.db, %i.cx
  %i.dd = mul nsw i32 %i.dc, %5
  %i.de = add nuw nsw i32 %i.cy, %i.h
  %i.df = add i32 %i.de, %i.dd
  %i.dg = ashr i32 %i.df, %i.f
  %i.dh = trunc i32 %i.dg to i16
  %i.di = add i16 %i.dh, -8192
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %.190, i64 %indvars.iv135.ph
  store i16 %i.di, ptr %i.dj, align 2, !tbaa !10
  br label %scalar.ph175.prol.loopexit

scalar.ph175.prol.loopexit:                       ; preds = %scalar.ph175.prol, %scalar.ph175.preheader
  %indvars.iv135.unr = phi i64 [ %indvars.iv135.ph, %scalar.ph175.preheader ], [ %indvars.iv.next136.prol, %scalar.ph175.prol ]
  %i.dk = icmp eq i64 %indvars.iv135.ph, %i.t
  br i1 %i.dk, label %._crit_edge123, label %scalar.ph175

._crit_edge123:                                   ; preds = %scalar.ph175.prol.loopexit, %scalar.ph175, %middle.block190
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %.190, i64 %i.i
  %i.dm = getelementptr inbounds i8, ptr %.192, i64 %2
  %i.dn = add nsw i32 %.195, -1                   ; 2 uses
  %.not108 = icmp eq i32 %i.dn, 0
  br i1 %.not108, label %.loopexit.split, label %.lr.ph122

scalar.ph175:                                     ; preds = %scalar.ph175.prol.loopexit, %scalar.ph175
  %indvars.iv135 = phi i64 [ %indvars.iv.next136.1, %scalar.ph175 ], [ %indvars.iv135.unr, %scalar.ph175.prol.loopexit ] ; 4 uses
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %indvars.iv135
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !10
  %i.dq = zext i16 %i.dp to i32                   ; 2 uses
  %i.dr = shl nuw nsw i32 %i.dq, 4
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 3 uses
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %indvars.iv.next136
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !10
  %i.du = zext i16 %i.dt to i32
  %i.dv = sub nsw i32 %i.du, %i.dq
  %i.dw = mul nsw i32 %i.dv, %5
  %i.dx = add nuw nsw i32 %i.dr, %i.h
  %i.dy = add i32 %i.dx, %i.dw
  %i.dz = ashr i32 %i.dy, %i.f
  %i.ea = trunc i32 %i.dz to i16
  %i.eb = add i16 %i.ea, -8192
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %.190, i64 %indvars.iv135
  store i16 %i.eb, ptr %i.ec, align 2, !tbaa !10
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %indvars.iv.next136
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !10
  %i.ef = zext i16 %i.ee to i32                   ; 2 uses
  %i.eg = shl nuw nsw i32 %i.ef, 4
  %indvars.iv.next136.1 = add nuw nsw i64 %indvars.iv135, 2 ; 3 uses
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %.192, i64 %indvars.iv.next136.1
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !10
  %i.ej = zext i16 %i.ei to i32
  %i.ek = sub nsw i32 %i.ej, %i.ef
  %i.el = mul nsw i32 %i.ek, %5
  %i.em = add nuw nsw i32 %i.eg, %i.h
  %i.en = add i32 %i.em, %i.el
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
  %stride.check201 = icmp slt i64 %2, 0
  %8 = or i1 %found.conflict200, %stride.check201
  %bound0202 = icmp ult ptr %0, %scevgep197
  %bound1203 = icmp ult ptr %1, %scevgep194
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx = or i1 %8, %found.conflict204
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
  %i.fi = add nsw i64 %wide.trip.count143, -1
  br label %.lr.ph126

.lr.ph126:                                        ; preds = %.lr.ph126.preheader, %._crit_edge127
  %.296 = phi i32 [ %i.gp, %._crit_edge127 ], [ %4, %.lr.ph126.preheader ]
  %.293 = phi ptr [ %i.fj, %._crit_edge127 ], [ %1, %.lr.ph126.preheader ] ; 5 uses
  %.2 = phi ptr [ %i.go, %._crit_edge127 ], [ %0, %.lr.ph126.preheader ] ; 5 uses
  %i.fj = getelementptr i8, ptr %.293, i64 %2     ; 5 uses
  %brmerge227 = select i1 %min.iters.check207, i1 true, i1 %conflict.rdx
  br i1 %brmerge227, label %scalar.ph206.preheader, label %vector.body216

vector.body216:                                   ; preds = %.lr.ph126, %vector.body216
  %index217 = phi i64 [ %index.next220, %vector.body216 ], [ 0, %.lr.ph126 ] ; 4 uses
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %.293, i64 %index217
  %wide.load218.a = load <8 x i16>, ptr %i.fk, align 2, !tbaa !10, !alias.scope !65
  %i.fl = zext <8 x i16> %wide.load218.a to <8 x i32> ; 2 uses
  %i.fm = shl nuw nsw <8 x i32> %i.fl, splat (i32 4)
  %i.fn = getelementptr [2 x i8], ptr %i.fj, i64 %index217
  %wide.load219 = load <8 x i16>, ptr %i.fn, align 2, !tbaa !10, !alias.scope !66
  %i.fo = zext <8 x i16> %wide.load219 to <8 x i32>
  %i.fp = sub nsw <8 x i32> %i.fo, %i.fl
  %i.fq = mul nsw <8 x i32> %i.fp, %broadcast.splat211
  %i.fr = add nuw nsw <8 x i32> %i.fm, %broadcast.splat213
  %i.fs = add <8 x i32> %i.fr, %i.fq
  %i.ft = ashr <8 x i32> %i.fs, %broadcast.splat215
  %i.fu = trunc <8 x i32> %i.ft to <8 x i16>
  %i.fv = add <8 x i16> %i.fu, splat (i16 -8192)
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %index217
  store <8 x i16> %i.fv, ptr %i.fw, align 2, !tbaa !10, !alias.scope !67, !noalias !68
  %index.next220 = add nuw i64 %index217, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next220, %n.vec209
  br i1 %i.fx, label %middle.block221, label %vector.body216, !llvm.loop !61

middle.block221:                                  ; preds = %vector.body216
  br i1 %cmp.n222, label %._crit_edge127, label %scalar.ph206.preheader

scalar.ph206.preheader:                           ; preds = %.lr.ph126, %middle.block221
  %indvars.iv140.ph = phi i64 [ %n.vec209, %middle.block221 ], [ 0, %.lr.ph126 ] ; 6 uses
  br i1 %lcmp.mod226.not, label %scalar.ph206.prol.loopexit, label %scalar.ph206.prol

scalar.ph206.prol:                                ; preds = %scalar.ph206.preheader
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %.293, i64 %indvars.iv140.ph
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !10
  %i.ga = zext i16 %i.fz to i32                   ; 2 uses
  %i.gb = shl nuw nsw i32 %i.ga, 4
  %i.gc = getelementptr [2 x i8], ptr %i.fj, i64 %indvars.iv140.ph
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !10
  %i.ge = zext i16 %i.gd to i32
  %i.gf = sub nsw i32 %i.ge, %i.ga
  %i.gg = mul nsw i32 %i.gf, %6
  %i.gh = add nuw nsw i32 %i.gb, %i.ew
  %i.gi = add i32 %i.gh, %i.gg
  %i.gj = ashr i32 %i.gi, %i.eu
  %i.gk = trunc i32 %i.gj to i16
  %i.gl = add i16 %i.gk, -8192
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %indvars.iv140.ph
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !10
  %indvars.iv.next141.prol = or disjoint i64 %indvars.iv140.ph, 1
  br label %scalar.ph206.prol.loopexit

scalar.ph206.prol.loopexit:                       ; preds = %scalar.ph206.prol, %scalar.ph206.preheader
  %indvars.iv140.unr = phi i64 [ %indvars.iv140.ph, %scalar.ph206.preheader ], [ %indvars.iv.next141.prol, %scalar.ph206.prol ]
  %i.gn = icmp eq i64 %indvars.iv140.ph, %i.fi
  br i1 %i.gn, label %._crit_edge127, label %scalar.ph206

._crit_edge127:                                   ; preds = %scalar.ph206.prol.loopexit, %scalar.ph206, %middle.block221
  %i.go = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %i.es
  %i.gp = add nsw i32 %.296, -1                   ; 2 uses
  %.not106 = icmp eq i32 %i.gp, 0
  br i1 %.not106, label %.loopexit.split, label %.lr.ph126

scalar.ph206:                                     ; preds = %scalar.ph206.prol.loopexit, %scalar.ph206
  %indvars.iv140 = phi i64 [ %indvars.iv.next141.1, %scalar.ph206 ], [ %indvars.iv140.unr, %scalar.ph206.prol.loopexit ] ; 5 uses
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %.293, i64 %indvars.iv140
  %i.gr = load i16, ptr %i.gq, align 2, !tbaa !10
  %i.gs = zext i16 %i.gr to i32                   ; 2 uses
  %i.gt = shl nuw nsw i32 %i.gs, 4
  %i.gu = getelementptr [2 x i8], ptr %i.fj, i64 %indvars.iv140
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !10
  %i.gw = zext i16 %i.gv to i32
  %i.gx = sub nsw i32 %i.gw, %i.gs
  %i.gy = mul nsw i32 %i.gx, %6
  %i.gz = add nuw nsw i32 %i.gt, %i.ew
  %i.ha = add i32 %i.gz, %i.gy
  %i.hb = ashr i32 %i.ha, %i.eu
  %i.hc = trunc i32 %i.hb to i16
  %i.hd = add i16 %i.hc, -8192
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %indvars.iv140
  store i16 %i.hd, ptr %i.he, align 2, !tbaa !10
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 3 uses
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %.293, i64 %indvars.iv.next141
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !10
  %i.hh = zext i16 %i.hg to i32                   ; 2 uses
  %i.hi = shl nuw nsw i32 %i.hh, 4
  %i.hj = getelementptr [2 x i8], ptr %i.fj, i64 %indvars.iv.next141
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !10
  %i.hl = zext i16 %i.hk to i32
  %i.hm = sub nsw i32 %i.hl, %i.hh
  %i.hn = mul nsw i32 %i.hm, %6
  %i.ho = add nuw nsw i32 %i.hi, %i.ew
  %i.hp = add i32 %i.ho, %i.hn
  %i.hq = ashr i32 %i.hp, %i.eu
  %i.hr = trunc i32 %i.hq to i16
  %i.hs = add i16 %i.hr, -8192
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %indvars.iv.next141
  store i16 %i.hs, ptr %i.ht, align 2, !tbaa !10
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
  %.055.us.us = phi i32 [ %i.bx, %._crit_edge.us69.us ], [ %6, %.split.us.split.us.preheader ] ; 3 uses
  %.054.us.us = phi i32 [ %i.bz, %._crit_edge.us69.us ], [ %4, %.split.us.split.us.preheader ]
  %.052.us.us = phi ptr [ %.153.lcssa.us.us, %._crit_edge.us69.us ], [ %1, %.split.us.split.us.preheader ] ; 2 uses
  %.051.us.us = phi ptr [ %i.by, %._crit_edge.us69.us ], [ %0, %.split.us.split.us.preheader ] ; 3 uses
  %.049.us.us = phi i32 [ %.150.lcssa.us.us, %._crit_edge.us69.us ], [ -2, %.split.us.split.us.preheader ] ; 3 uses
  %i.i = ashr i32 %.055.us.us, 10                 ; 3 uses
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
  %i.aq = add nsw i32 %.15062.us.us.us, 1         ; 3 uses
  %i.ar = icmp slt i32 %i.aq, %i.i
  br i1 %i.ar, label %.lr.ph.us.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge.us.us.us, %.split.us.split.us
  %wide.trip.count91.pre-phi = phi i64 [ %.pre, %.split.us.split.us ], [ %wide.trip.count, %._crit_edge.us.us.us ] ; 4 uses
  %.153.lcssa.us.us = phi ptr [ %.052.us.us, %.split.us.split.us ], [ %i.ap, %._crit_edge.us.us.us ]
  %.150.lcssa.us.us = phi i32 [ %.049.us.us, %.split.us.split.us ], [ %i.aq, %._crit_edge.us.us.us ]
  %i.as = lshr i32 %.055.us.us, 6
  %i.at = and i32 %i.as, 15                       ; 2 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count91.pre-phi, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.us.us
  %n.vec = and i64 %wide.trip.count91.pre-phi, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index
  %wide.load = load <8 x i16>, ptr %i.au, align 16, !tbaa !10
  %i.av = sext <8 x i16> %wide.load to <8 x i32>  ; 2 uses
  %i.aw = shl nsw <8 x i32> %i.av, splat (i32 4)
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %index
  %wide.load98 = load <8 x i16>, ptr %i.ax, align 16, !tbaa !10
  %i.ay = sext <8 x i16> %wide.load98 to <8 x i32>
  %i.az = sub nsw <8 x i32> %i.ay, %i.av
  %i.ba = mul nsw <8 x i32> %i.az, %broadcast.splat
  %i.bb = or disjoint <8 x i32> %i.aw, splat (i32 8)
  %i.bc = add nsw <8 x i32> %i.bb, %i.ba
  %i.bd = lshr <8 x i32> %i.bc, splat (i32 4)
  %i.be = trunc <8 x i32> %i.bd to <8 x i16>
  %i.bf = add <8 x i16> %i.be, splat (i16 -8192)
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %.051.us.us, i64 %index
  store <8 x i16> %i.bf, ptr %i.bg, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count91.pre-phi, %n.vec
  br i1 %cmp.n, label %._crit_edge.us69.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.us.us, %middle.block
  %indvars.iv88.ph = phi i64 [ 0, %.preheader.us.us ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %scalar.ph ], [ %indvars.iv88.ph, %scalar.ph.preheader ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %indvars.iv88
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !10
  %i.bk = sext i16 %i.bj to i32                   ; 2 uses
  %i.bl = shl nsw i32 %i.bk, 4
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %indvars.iv88
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !10
  %i.bo = sext i16 %i.bn to i32
  %i.bp = sub nsw i32 %i.bo, %i.bk
  %i.bq = mul nsw i32 %i.bp, %i.at
  %i.br = or disjoint i32 %i.bl, 8
  %i.bs = add nsw i32 %i.br, %i.bq
  %i.bt = lshr i32 %i.bs, 4
  %i.bu = trunc i32 %i.bt to i16
  %i.bv = add i16 %i.bu, -8192
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.051.us.us, i64 %indvars.iv88
  store i16 %i.bv, ptr %i.bw, align 2, !tbaa !10
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91.pre-phi
  br i1 %exitcond92.not, label %._crit_edge.us69.us, label %scalar.ph, !llvm.loop !70

._crit_edge.us69.us:                              ; preds = %scalar.ph, %middle.block
  %i.bx = add nsw i32 %.055.us.us, %8
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.051.us.us, i64 %i.c
  %i.bz = add nsw i32 %.054.us.us, -1             ; 2 uses
  %.not.us.us = icmp eq i32 %i.bz, 0
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
  %stride.check = icmp slt i64 %1, 0
  %7 = or i1 %found.conflict, %stride.check
  %bound033 = icmp ult ptr %0, %scevgep32
  %bound134 = icmp ult ptr %3, %scevgep
  %found.conflict35 = and i1 %bound033, %bound134
  %conflict.rdx = or i1 %7, %found.conflict35
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
  %i.q = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.024 = phi ptr [ %i.au, %._crit_edge ], [ %3, %.lr.ph.preheader ] ; 5 uses
  %.023 = phi ptr [ %i.at, %._crit_edge ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.022 = phi i32 [ %i.aw, %._crit_edge ], [ %5, %.lr.ph.preheader ]
  %.021 = phi ptr [ %i.av, %._crit_edge ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.023, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !10, !alias.scope !77
  %i.s = sext <8 x i16> %wide.load to <8 x i32>
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.024, i64 %index
  %wide.load41 = load <8 x i16>, ptr %i.t, align 2, !tbaa !10, !alias.scope !78
  %i.u = sext <8 x i16> %wide.load41 to <8 x i32>
  %i.v = add nsw <8 x i32> %broadcast.splat, %i.s
  %i.w = add nsw <8 x i32> %i.v, %i.u
  %i.x = ashr <8 x i32> %i.w, %broadcast.splat38  ; 2 uses
  %i.y = icmp slt <8 x i32> %i.x, zeroinitializer
  %i.z = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.x, <8 x i32> %broadcast.splat40)
  %i.aa = trunc <8 x i32> %i.z to <8 x i16>
  %i.ab = select <8 x i1> %i.y, <8 x i16> zeroinitializer, <8 x i16> %i.aa
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %index
  store <8 x i16> %i.ab, ptr %i.ac, align 2, !tbaa !10, !alias.scope !79, !noalias !80
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !75

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.023, i64 %indvars.iv.ph
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !10
  %i.ag = sext i16 %i.af to i32
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.024, i64 %indvars.iv.ph
  %i.ai = load i16, ptr %i.ah, align 2, !tbaa !10
  %i.aj = sext i16 %i.ai to i32
  %i.ak = add nsw i32 %i.h, %i.ag
  %i.al = add nsw i32 %i.ak, %i.aj
  %i.am = ashr i32 %i.al, %i.c                    ; 2 uses
  %i.an = icmp slt i32 %i.am, 0
  %i.ao = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %6)
  %i.ap = trunc i32 %i.ao to i16
  %i.aq = select i1 %i.an, i16 0, i16 %i.ap
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %indvars.iv.ph
  store i16 %i.aq, ptr %i.ar, align 2, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.as = icmp eq i64 %indvars.iv.ph, %i.q
  br i1 %i.as, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.023, i64 %i.e
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.024, i64 %i.e
  %i.av = getelementptr inbounds i8, ptr %.021, i64 %1
  %i.aw = add nsw i32 %.022, -1                   ; 2 uses
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %.split28, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.023, i64 %indvars.iv
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !10
  %i.az = sext i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.024, i64 %indvars.iv
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !10
  %i.bc = sext i16 %i.bb to i32
  %i.bd = add nsw i32 %i.h, %i.az
  %i.be = add nsw i32 %i.bd, %i.bc
  %i.bf = ashr i32 %i.be, %i.c                    ; 2 uses
  %i.bg = icmp slt i32 %i.bf, 0
  %i.bh = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %6)
  %i.bi = trunc i32 %i.bh to i16
  %i.bj = select i1 %i.bg, i16 0, i16 %i.bi
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %indvars.iv
  store i16 %i.bj, ptr %i.bk, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.023, i64 %indvars.iv.next
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !10
  %i.bn = sext i16 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.024, i64 %indvars.iv.next
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !10
  %i.bq = sext i16 %i.bp to i32
  %i.br = add nsw i32 %i.h, %i.bn
  %i.bs = add nsw i32 %i.br, %i.bq
  %i.bt = ashr i32 %i.bs, %i.c                    ; 2 uses
  %i.bu = icmp slt i32 %i.bt, 0
  %i.bv = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 %6)
  %i.bw = trunc i32 %i.bv to i16
  %i.bx = select i1 %i.bu, i16 0, i16 %i.bw
  %i.by = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %indvars.iv.next
  store i16 %i.bx, ptr %i.by, align 2, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !76

.split28:                                         ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @w_avg_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %7, i1 true) ; 2 uses
  %i.b = add nsw i32 %i.a, -18
  %i.c = add nsw i32 %i.a, -14                    ; 2 uses
  %i.d = shl nuw nsw i32 8, %i.b
  %i.e = sext i32 %4 to i64                       ; 3 uses
  %i.f = icmp sgt i32 %4, 0
  %i.g = and i64 %1, 1
  %.not.i = icmp eq i64 %i.g, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.h = sub nsw i32 16, %6                       ; 2 uses
  %i.i = add nuw nsw i32 %i.d, 131072             ; 2 uses
  br i1 %i.f, label %.lr.ph.preheader, label %.split30

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 5 uses
  %i.j = add i32 %5, -1
  %i.k = zext i32 %i.j to i64                     ; 2 uses
  %i.l = mul i64 %1, %i.k
  %i.m = shl nuw nsw i64 %wide.trip.count, 1
  %i.n = getelementptr i8, ptr %0, i64 %i.l
  %scevgep = getelementptr i8, ptr %i.n, i64 %i.m ; 2 uses
  %i.o = mul nuw nsw i64 %i.e, %i.k
  %i.p = add nuw i64 %i.o, %wide.trip.count
  %i.q = shl i64 %i.p, 1                          ; 2 uses
  %scevgep33 = getelementptr i8, ptr %2, i64 %i.q
  %scevgep34 = getelementptr i8, ptr %3, i64 %i.q
  %min.iters.check = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %0, %scevgep33
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %8 = or i1 %found.conflict, %stride.check
  %bound035 = icmp ult ptr %0, %scevgep34
  %bound136 = icmp ult ptr %3, %scevgep
  %found.conflict37 = and i1 %bound035, %bound136
  %conflict.rdx = or i1 %8, %found.conflict37
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert39 = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat40 = shufflevector <8 x i32> %broadcast.splatinsert39, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert41 = insertelement <8 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat42 = shufflevector <8 x i32> %broadcast.splatinsert41, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert43 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat44 = shufflevector <8 x i32> %broadcast.splatinsert43, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert45 = insertelement <8 x i32> poison, i32 %7, i64 0
  %broadcast.splat46 = shufflevector <8 x i32> %broadcast.splatinsert45, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.026 = phi ptr [ %i.ah, %._crit_edge ], [ %3, %.lr.ph.preheader ] ; 3 uses
  %.025 = phi i32 [ %i.aj, %._crit_edge ], [ %5, %.lr.ph.preheader ]
  %.024 = phi ptr [ %i.ag, %._crit_edge ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.023 = phi ptr [ %i.ai, %._crit_edge ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.024, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !10, !alias.scope !87
  %i.s = sext <8 x i16> %wide.load to <8 x i32>
  %i.t = mul nsw <8 x i32> %broadcast.splat, %i.s
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.026, i64 %index
  %wide.load47 = load <8 x i16>, ptr %i.u, align 2, !tbaa !10, !alias.scope !88
  %i.v = sext <8 x i16> %wide.load47 to <8 x i32>
  %i.w = mul nsw <8 x i32> %broadcast.splat40, %i.v
  %i.x = add <8 x i32> %broadcast.splat42, %i.t
  %i.y = add <8 x i32> %i.x, %i.w
  %i.z = ashr <8 x i32> %i.y, %broadcast.splat44  ; 2 uses
  %i.aa = icmp slt <8 x i32> %i.z, zeroinitializer
  %i.ab = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.z, <8 x i32> %broadcast.splat46)
  %i.ac = trunc <8 x i32> %i.ab to <8 x i16>
  %i.ad = select <8 x i1> %i.aa, <8 x i16> zeroinitializer, <8 x i16> %i.ac
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.023, i64 %index
  store <8 x i16> %i.ad, ptr %i.ae, align 2, !tbaa !10, !alias.scope !89, !noalias !90
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.024, i64 %i.e
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.026, i64 %i.e
  %i.ai = getelementptr inbounds i8, ptr %.023, i64 %1
  %i.aj = add nsw i32 %.025, -1                   ; 2 uses
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %.split30, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.024, i64 %indvars.iv
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !10
  %i.am = sext i16 %i.al to i32
  %i.an = mul nsw i32 %6, %i.am
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.026, i64 %indvars.iv
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !10
  %i.aq = sext i16 %i.ap to i32
  %i.ar = mul nsw i32 %i.h, %i.aq
  %i.as = add i32 %i.i, %i.an
  %i.at = add i32 %i.as, %i.ar
  %i.au = ashr i32 %i.at, %i.c                    ; 2 uses
  %i.av = icmp slt i32 %i.au, 0
  %i.aw = tail call i32 @llvm.smin.i32(i32 %i.au, i32 %7)
  %i.ax = trunc i32 %i.aw to i16
  %i.ay = select i1 %i.av, i16 0, i16 %i.ax
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.023, i64 %indvars.iv
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !86

.split30:                                         ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @mask_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef readonly captures(none) %6, i32 noundef %7) #3 {
bb.a:
  %i.a = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %7, i1 true) ; 2 uses
  %i.b = add nsw i32 %i.a, -18
  %i.c = add nsw i32 %i.a, -12                    ; 2 uses
  %i.d = shl nuw nsw i32 32, %i.b
  %i.e = sext i32 %4 to i64                       ; 4 uses
  %i.f = icmp sgt i32 %4, 0
  %i.g = and i64 %1, 1
  %.not.i = icmp eq i64 %i.g, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.h = add nuw nsw i32 %i.d, 524288             ; 2 uses
  br i1 %i.f, label %.lr.ph.preheader, label %.split35

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %i.i = add i32 %5, -1
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = mul i64 %1, %i.j
  %i.l = shl nuw nsw i64 %wide.trip.count, 1
  %i.m = getelementptr i8, ptr %0, i64 %i.k
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.l ; 3 uses
  %i.n = mul nuw nsw i64 %i.e, %i.j               ; 2 uses
  %i.o = add nuw i64 %i.n, %wide.trip.count
  %i.p = shl i64 %i.o, 1                          ; 2 uses
  %scevgep38 = getelementptr i8, ptr %2, i64 %i.p
  %i.q = getelementptr i8, ptr %6, i64 %i.n
  %scevgep39 = getelementptr i8, ptr %i.q, i64 %wide.trip.count
  %scevgep40 = getelementptr i8, ptr %3, i64 %i.p
  %min.iters.check = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %0, %scevgep38
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %8 = or i1 %found.conflict, %stride.check
  %bound041 = icmp ult ptr %0, %scevgep39
  %bound142 = icmp ult ptr %6, %scevgep
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx = or i1 %8, %found.conflict43
  %bound045 = icmp ult ptr %0, %scevgep40
  %bound146 = icmp ult ptr %3, %scevgep
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx49 = or i1 %conflict.rdx, %found.conflict47
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert50.a = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat51.a = shufflevector <8 x i32> %broadcast.splatinsert50.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <8 x i32> poison, i32 %7, i64 0
  %broadcast.splat53 = shufflevector <8 x i32> %broadcast.splatinsert52, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.031 = phi ptr [ %i.ak, %._crit_edge ], [ %3, %.lr.ph.preheader ] ; 3 uses
  %.030 = phi ptr [ %i.aj, %._crit_edge ], [ %2, %.lr.ph.preheader ] ; 3 uses
  %.029 = phi i32 [ %i.an, %._crit_edge ], [ %5, %.lr.ph.preheader ]
  %.028 = phi ptr [ %i.al, %._crit_edge ], [ %6, %.lr.ph.preheader ] ; 3 uses
  %.027 = phi ptr [ %i.am, %._crit_edge ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx49
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 5 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.030, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !10, !alias.scope !98
  %i.s = sext <8 x i16> %wide.load to <8 x i32>
  %i.t = getelementptr inbounds nuw i8, ptr %.028, i64 %index
  %wide.load54 = load <8 x i8>, ptr %i.t, align 1, !tbaa !13, !alias.scope !99
  %i.u = zext <8 x i8> %wide.load54 to <8 x i32>  ; 2 uses
  %i.v = mul nsw <8 x i32> %i.u, %i.s
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.031, i64 %index
  %wide.load55 = load <8 x i16>, ptr %i.w, align 2, !tbaa !10, !alias.scope !100
  %i.x = sext <8 x i16> %wide.load55 to <8 x i32>
  %i.y = sub nsw <8 x i32> splat (i32 64), %i.u
  %i.z = mul nsw <8 x i32> %i.y, %i.x
  %i.aa = add nsw <8 x i32> %broadcast.splat, %i.v
  %i.ab = add nsw <8 x i32> %i.aa, %i.z
  %i.ac = ashr <8 x i32> %i.ab, %broadcast.splat51.a ; 2 uses
  %i.ad = icmp slt <8 x i32> %i.ac, zeroinitializer
  %i.ae = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ac, <8 x i32> %broadcast.splat53)
  %i.af = trunc <8 x i32> %i.ae to <8 x i16>
  %i.ag = select <8 x i1> %i.ad, <8 x i16> zeroinitializer, <8 x i16> %i.af
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %.027, i64 %index
  store <8 x i16> %i.ag, ptr %i.ah, align 2, !tbaa !10, !alias.scope !101, !noalias !102
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !96

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.030, i64 %i.e
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.031, i64 %i.e
  %i.al = getelementptr inbounds nuw i8, ptr %.028, i64 %i.e
  %i.am = getelementptr inbounds i8, ptr %.027, i64 %1
  %i.an = add nsw i32 %.029, -1                   ; 2 uses
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %.split35, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.030, i64 %indvars.iv
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !10
  %i.aq = sext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %.028, i64 %indvars.iv
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !13
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = mul nsw i32 %i.at, %i.aq
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.031, i64 %indvars.iv
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !10
  %i.ax = sext i16 %i.aw to i32
  %i.ay = sub nsw i32 64, %i.at
  %i.az = mul nsw i32 %i.ay, %i.ax
  %i.ba = add nsw i32 %i.h, %i.au
  %i.bb = add nsw i32 %i.ba, %i.az
  %i.bc = ashr i32 %i.bb, %i.c                    ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  %i.be = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %7)
  %i.bf = trunc i32 %i.be to i16
  %i.bg = select i1 %i.bd, i16 0, i16 %i.bf
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.027, i64 %indvars.iv
  store i16 %i.bg, ptr %i.bh, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !97

.split35:                                         ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @blend_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) #3 {
bb.a:
  %i.a = and i64 %1, 1
  %.not.i = icmp eq i64 %i.a, 0
  %i.b = icmp sgt i32 %3, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.c = sext i32 %3 to i64                       ; 3 uses
  br i1 %i.b, label %.lr.ph.preheader, label %.split26

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 8 uses
  %i.d = add i32 %4, -1
  %i.e = zext i32 %i.d to i64                     ; 2 uses
  %i.f = mul i64 %1, %i.e
  %i.g = shl nuw nsw i64 %wide.trip.count, 1
  %i.h = getelementptr i8, ptr %0, i64 %i.f
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.g ; 2 uses
  %i.i = mul nuw nsw i64 %i.c, %i.e               ; 2 uses
  %i.j = getelementptr i8, ptr %5, i64 %i.i
  %scevgep29 = getelementptr i8, ptr %i.j, i64 %wide.trip.count
  %i.k = add nuw i64 %i.i, %wide.trip.count
  %i.l = shl i64 %i.k, 1
  %scevgep30 = getelementptr i8, ptr %2, i64 %i.l
  %min.iters.check = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %0, %scevgep29
  %bound1 = icmp ult ptr %5, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %6 = or i1 %found.conflict, %stride.check
  %bound031 = icmp ult ptr %0, %scevgep30
  %bound132 = icmp ult ptr %2, %scevgep
  %found.conflict33 = and i1 %bound031, %bound132
  %conflict.rdx = or i1 %6, %found.conflict33
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.m = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.022 = phi ptr [ %i.at, %._crit_edge ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.021 = phi ptr [ %i.as, %._crit_edge ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %.020 = phi i32 [ %i.av, %._crit_edge ], [ %4, %.lr.ph.preheader ]
  %.019 = phi ptr [ %i.au, %._crit_edge ], [ %5, %.lr.ph.preheader ] ; 5 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 4 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.n, align 2, !tbaa !10, !alias.scope !109, !noalias !110
  %i.o = zext <8 x i16> %wide.load to <8 x i32>
  %i.p = getelementptr inbounds nuw i8, ptr %.019, i64 %index
  %wide.load35.a = load <8 x i8>, ptr %i.p, align 1, !tbaa !13, !alias.scope !111
  %i.q = zext <8 x i8> %wide.load35.a to <8 x i32> ; 2 uses
  %i.r = sub nsw <8 x i32> splat (i32 64), %i.q
  %i.s = mul nsw <8 x i32> %i.r, %i.o
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.022, i64 %index
  %wide.load36 = load <8 x i16>, ptr %i.t, align 2, !tbaa !10, !alias.scope !112
  %i.u = zext <8 x i16> %wide.load36 to <8 x i32>
  %i.v = mul nuw nsw <8 x i32> %i.u, %i.q
  %i.w = add nuw nsw <8 x i32> %i.v, splat (i32 32)
  %i.x = add nsw <8 x i32> %i.w, %i.s
  %i.y = lshr <8 x i32> %i.x, splat (i32 6)
  %i.z = trunc <8 x i32> %i.y to <8 x i16>
  store <8 x i16> %i.z, ptr %i.n, align 2, !tbaa !10, !alias.scope !109, !noalias !110
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !107

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %indvars.iv.ph ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !10
  %i.ad = zext i16 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %.019, i64 %indvars.iv.ph
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !13
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = sub nsw i32 64, %i.ag
  %i.ai = mul nsw i32 %i.ah, %i.ad
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.022, i64 %indvars.iv.ph
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !10
  %i.al = zext i16 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.al, %i.ag
  %i.an = add nuw nsw i32 %i.am, 32
  %i.ao = add nsw i32 %i.an, %i.ai
  %i.ap = lshr i32 %i.ao, 6
  %i.aq = trunc i32 %i.ap to i16
  store i16 %i.aq, ptr %i.ab, align 2, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ar = icmp eq i64 %indvars.iv.ph, %i.m
  br i1 %i.ar, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.as = getelementptr inbounds i8, ptr %.021, i64 %1
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %.022, i64 %i.c
  %i.au = getelementptr inbounds nuw i8, ptr %.019, i64 %i.c
  %i.av = add nsw i32 %.020, -1                   ; 2 uses
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %.split26, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %indvars.iv ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !10
  %i.ay = zext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %.019, i64 %indvars.iv
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !13
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = sub nsw i32 64, %i.bb
  %i.bd = mul nsw i32 %i.bc, %i.ay
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %.022, i64 %indvars.iv
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !10
  %i.bg = zext i16 %i.bf to i32
  %i.bh = mul nuw nsw i32 %i.bg, %i.bb
  %i.bi = add nuw nsw i32 %i.bh, 32
  %i.bj = add nsw i32 %i.bi, %i.bd
  %i.bk = lshr i32 %i.bj, 6
  %i.bl = trunc i32 %i.bk to i16
  store i16 %i.bl, ptr %i.aw, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %indvars.iv.next ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !10
  %i.bo = zext i16 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %.019, i64 %indvars.iv.next
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !13
  %i.br = zext i8 %i.bq to i32                    ; 2 uses
  %i.bs = sub nsw i32 64, %i.br
  %i.bt = mul nsw i32 %i.bs, %i.bo
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.022, i64 %indvars.iv.next
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !10
  %i.bw = zext i16 %i.bv to i32
  %i.bx = mul nuw nsw i32 %i.bw, %i.br
  %i.by = add nuw nsw i32 %i.bx, 32
  %i.bz = add nsw i32 %i.by, %i.bt
  %i.ca = lshr i32 %i.bz, 6
  %i.cb = trunc i32 %i.ca to i16
  store i16 %i.cb, ptr %i.bm, align 2, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !108

.split26:                                         ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @blend_v_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = sext i32 %3 to i64                       ; 4 uses
  %i.b = getelementptr i8, ptr @dav1d_obmc_masks, i64 %i.a ; 5 uses
  %i.c = and i64 %1, 1
  %.not.i = icmp eq i64 %i.c, 0
  %i.d = mul nsw i32 %3, 3
  %i.e = ashr i32 %i.d, 2                         ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  tail call void @llvm.assume(i1 %.not.i)
  br i1 %i.f, label %.lr.ph.preheader, label %.split23

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 8 uses
  %i.g = add i32 %4, -1
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = mul i64 %1, %i.h
  %i.j = shl nuw nsw i64 %wide.trip.count, 1
  %i.k = getelementptr i8, ptr %0, i64 %i.i
  %scevgep = getelementptr i8, ptr %i.k, i64 %i.j ; 2 uses
  %i.l = getelementptr i8, ptr @dav1d_obmc_masks, i64 %i.a
  %scevgep26 = getelementptr i8, ptr %i.l, i64 %wide.trip.count
  %i.m = mul nsw i64 %i.a, %i.h
  %i.n = add i64 %i.m, %wide.trip.count
  %i.o = shl i64 %i.n, 1
  %scevgep27 = getelementptr i8, ptr %2, i64 %i.o
  %min.iters.check = icmp ult i32 %i.e, 8
  %bound0 = icmp ult ptr %0, %scevgep26
  %bound1 = icmp ult ptr %i.b, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %5 = or i1 %found.conflict, %stride.check
  %bound028 = icmp ult ptr %0, %scevgep27
  %bound129 = icmp ult ptr %2, %scevgep
  %found.conflict30 = and i1 %bound028, %bound129
  %stride.check32 = icmp slt i32 %3, 0
  %i.p = or i1 %found.conflict30, %stride.check32
  %conflict.rdx = or i1 %5, %i.p
  %n.vec = and i64 %wide.trip.count, 536870904    ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.q = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.020 = phi ptr [ %i.ax, %._crit_edge ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.019 = phi ptr [ %i.aw, %._crit_edge ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %.018 = phi i32 [ %i.ay, %._crit_edge ], [ %4, %.lr.ph.preheader ]
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph ] ; 4 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.019, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !10, !alias.scope !119, !noalias !120
  %i.s = zext <8 x i16> %wide.load to <8 x i32>
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 %index
  %wide.load33.a = load <8 x i8>, ptr %i.t, align 1, !tbaa !13, !alias.scope !121
  %i.u = zext <8 x i8> %wide.load33.a to <8 x i32> ; 2 uses
  %i.v = sub nsw <8 x i32> splat (i32 64), %i.u
  %i.w = mul nsw <8 x i32> %i.v, %i.s
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.020, i64 %index
  %wide.load34 = load <8 x i16>, ptr %i.x, align 2, !tbaa !10, !alias.scope !122
  %i.y = zext <8 x i16> %wide.load34 to <8 x i32>
  %i.z = mul nuw nsw <8 x i32> %i.y, %i.u
  %i.aa = add nuw nsw <8 x i32> %i.z, splat (i32 32)
  %i.ab = add nsw <8 x i32> %i.aa, %i.w
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 6)
  %i.ad = trunc <8 x i32> %i.ac to <8 x i16>
  store <8 x i16> %i.ad, ptr %i.r, align 2, !tbaa !10, !alias.scope !119, !noalias !120
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 6 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.019, i64 %indvars.iv.ph ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !10
  %i.ah = zext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.ph
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !13
  %i.ak = zext i8 %i.aj to i32                    ; 2 uses
  %i.al = sub nsw i32 64, %i.ak
  %i.am = mul nsw i32 %i.al, %i.ah
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %.020, i64 %indvars.iv.ph
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !10
  %i.ap = zext i16 %i.ao to i32
  %i.aq = mul nuw nsw i32 %i.ap, %i.ak
  %i.ar = add nuw nsw i32 %i.aq, 32
  %i.as = add nsw i32 %i.ar, %i.am
  %i.at = lshr i32 %i.as, 6
  %i.au = trunc i32 %i.at to i16
  store i16 %i.au, ptr %i.af, align 2, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.av = icmp eq i64 %indvars.iv.ph, %i.q
  br i1 %i.av, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.aw = getelementptr inbounds i8, ptr %.019, i64 %1
  %i.ax = getelementptr inbounds [2 x i8], ptr %.020, i64 %i.a
  %i.ay = add nsw i32 %.018, -1                   ; 2 uses
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %.split23, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.019, i64 %indvars.iv ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !10
  %i.bb = zext i16 %i.ba to i32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !13
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = sub nsw i32 64, %i.be
  %i.bg = mul nsw i32 %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %.020, i64 %indvars.iv
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !10
  %i.bj = zext i16 %i.bi to i32
  %i.bk = mul nuw nsw i32 %i.bj, %i.be
  %i.bl = add nuw nsw i32 %i.bk, 32
  %i.bm = add nsw i32 %i.bl, %i.bg
  %i.bn = lshr i32 %i.bm, 6
  %i.bo = trunc i32 %i.bn to i16
  store i16 %i.bo, ptr %i.az, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.019, i64 %indvars.iv.next ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !10
  %i.br = zext i16 %i.bq to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !13
  %i.bu = zext i8 %i.bt to i32                    ; 2 uses
  %i.bv = sub nsw i32 64, %i.bu
  %i.bw = mul nsw i32 %i.bv, %i.br
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.020, i64 %indvars.iv.next
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !10
  %i.bz = zext i16 %i.by to i32
  %i.ca = mul nuw nsw i32 %i.bz, %i.bu
  %i.cb = add nuw nsw i32 %i.ca, 32
  %i.cc = add nsw i32 %i.cb, %i.bw
  %i.cd = lshr i32 %i.cc, 6
  %i.ce = trunc i32 %i.cd to i16
  store i16 %i.ce, ptr %i.bp, align 2, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !118

.split23:                                         ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @blend_h_c(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #3 {
bb.a:
  %i.a = and i64 %1, 1
  %.not.i = icmp eq i64 %i.a, 0
  %i.b = icmp sgt i32 %3, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.c = sext i32 %3 to i64                       ; 2 uses
  br i1 %i.b, label %.lr.ph.preheader, label %.split25

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = mul nsw i32 %4, 3
  %i.e = ashr i32 %i.d, 2                         ; 2 uses
  %i.f = sext i32 %4 to i64
  %i.g = getelementptr inbounds i8, ptr @dav1d_obmc_masks, i64 %i.f
  %wide.trip.count = zext nneg i32 %3 to i64      ; 7 uses
  %i.h = add nsw i32 %i.e, -1
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = mul i64 %1, %i.i
  %i.k = shl nuw nsw i64 %wide.trip.count, 1
  %i.l = getelementptr i8, ptr %0, i64 %i.j
  %scevgep = getelementptr i8, ptr %i.l, i64 %i.k
  %i.m = mul nuw nsw i64 %i.c, %i.i
  %i.n = add nuw i64 %i.m, %wide.trip.count
  %i.o = shl i64 %i.n, 1
  %scevgep28 = getelementptr i8, ptr %2, i64 %i.o
  %min.iters.check = icmp ult i32 %3, 8
  %bound0 = icmp ult ptr %0, %scevgep28
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %i.p = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.q = add nsw i64 %wide.trip.count, -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %.021 = phi ptr [ %i.au, %._crit_edge ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.020 = phi ptr [ %i.at, %._crit_edge ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %.019 = phi i32 [ %i.av, %._crit_edge ], [ %i.e, %.lr.ph.preheader ]
  %.018 = phi ptr [ %i.as, %._crit_edge ], [ %i.g, %.lr.ph.preheader ] ; 2 uses
  %i.r = load i8, ptr %.018, align 1, !tbaa !13
  %i.s = zext i8 %i.r to i32                      ; 5 uses
  %i.t = sub nsw i32 64, %i.s                     ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.p
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert29 = insertelement <8 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat30 = shufflevector <8 x i32> %broadcast.splatinsert29, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [2 x i8], ptr %.020, i64 %index ; 2 uses
  %wide.load = load <8 x i16>, ptr %i.u, align 2, !tbaa !10, !alias.scope !128, !noalias !129
  %i.v = zext <8 x i16> %wide.load to <8 x i32>
  %i.w = mul nsw <8 x i32> %broadcast.splat30, %i.v
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %index
  %wide.load31 = load <8 x i16>, ptr %i.x, align 2, !tbaa !10, !alias.scope !129
  %i.y = zext <8 x i16> %wide.load31 to <8 x i32>
  %i.z = mul nuw nsw <8 x i32> %broadcast.splat, %i.y
  %i.aa = add nsw <8 x i32> %i.w, splat (i32 32)
  %i.ab = add nsw <8 x i32> %i.aa, %i.z
  %i.ac = lshr <8 x i32> %i.ab, splat (i32 6)
  %i.ad = trunc <8 x i32> %i.ac to <8 x i16>
  store <8 x i16> %i.ad, ptr %i.u, align 2, !tbaa !10, !alias.scope !128, !noalias !129
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !126

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph ] ; 5 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.020, i64 %indvars.iv.ph ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !10
  %i.ah = zext i16 %i.ag to i32
  %i.ai = mul nsw i32 %i.t, %i.ah
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %indvars.iv.ph
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !10
  %i.al = zext i16 %i.ak to i32
  %i.am = mul nuw nsw i32 %i.al, %i.s
  %i.an = add nsw i32 %i.ai, 32
  %i.ao = add nsw i32 %i.an, %i.am
  %i.ap = lshr i32 %i.ao, 6
  %i.aq = trunc i32 %i.ap to i16
  store i16 %i.aq, ptr %i.af, align 2, !tbaa !10
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ar = icmp eq i64 %indvars.iv.ph, %i.q
  br i1 %i.ar, label %._crit_edge, label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.as = getelementptr inbounds nuw i8, ptr %.018, i64 1
  %i.at = getelementptr inbounds i8, ptr %.020, i64 %1
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %i.c
  %i.av = add nsw i32 %.019, -1                   ; 2 uses
  %.not = icmp eq i32 %i.av, 0
  br i1 %.not, label %.split25, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.020, i64 %indvars.iv ; 2 uses
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !10
  %i.ay = zext i16 %i.ax to i32
  %i.az = mul nsw i32 %i.t, %i.ay
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %indvars.iv
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !10
  %i.bc = zext i16 %i.bb to i32
  %i.bd = mul nuw nsw i32 %i.bc, %i.s
  %i.be = add nsw i32 %i.az, 32
  %i.bf = add nsw i32 %i.be, %i.bd
  %i.bg = lshr i32 %i.bf, 6
  %i.bh = trunc i32 %i.bg to i16
  store i16 %i.bh, ptr %i.aw, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %.020, i64 %indvars.iv.next ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !10
  %i.bk = zext i16 %i.bj to i32
  %i.bl = mul nsw i32 %i.t, %i.bk
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.021, i64 %indvars.iv.next
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !10
  %i.bo = zext i16 %i.bn to i32
  %i.bp = mul nuw nsw i32 %i.bo, %i.s
  %i.bq = add nsw i32 %i.bl, 32
  %i.br = add nsw i32 %i.bq, %i.bp
  %i.bs = lshr i32 %i.br, 6
  %i.bt = trunc i32 %i.bs to i16
  store i16 %i.bt, ptr %i.bi, align 2, !tbaa !10
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !127

.split25:                                         ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @w_mask_444_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6, i32 %7, i32 noundef %8) #3 {
bb.a:
  %i.a = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %8, i1 true) ; 2 uses
  %i.b = add nsw i32 %i.a, -18
  %i.c = add nsw i32 %i.a, -12                    ; 2 uses
  %i.d = shl nuw nsw i32 32, %i.b
  %i.e = add nuw nsw i32 %i.d, 524288             ; 2 uses
  %i.f = sext i32 %4 to i64                       ; 4 uses
  %i.g = icmp sgt i32 %4, 0
  %i.h = and i64 %1, 1
  %.not.i.i = icmp eq i64 %i.h, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  br i1 %i.g, label %.split.i, label %w_mask_c.exit

.split.i:                                         ; preds = %bb.a
  %wide.trip.count103.i = zext nneg i32 %4 to i64 ; 6 uses
  %i.i = add i32 %5, -1
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  %i.k = mul i64 %1, %i.j
  %i.l = shl nuw nsw i64 %wide.trip.count103.i, 1
  %i.m = getelementptr i8, ptr %0, i64 %i.k
  %scevgep = getelementptr i8, ptr %i.m, i64 %i.l ; 3 uses
  %i.n = mul nuw nsw i64 %i.f, %i.j               ; 2 uses
  %i.o = getelementptr i8, ptr %6, i64 %i.n
  %scevgep9 = getelementptr i8, ptr %i.o, i64 %wide.trip.count103.i ; 3 uses
  %i.p = add nuw i64 %i.n, %wide.trip.count103.i
  %i.q = shl i64 %i.p, 1                          ; 2 uses
  %scevgep10 = getelementptr i8, ptr %2, i64 %i.q ; 2 uses
  %scevgep11 = getelementptr i8, ptr %3, i64 %i.q ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %0, %scevgep9
  %bound1 = icmp ult ptr %6, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %9 = or i1 %found.conflict, %stride.check
  %bound012 = icmp ult ptr %0, %scevgep10
  %bound113 = icmp ult ptr %2, %scevgep
  %found.conflict14 = and i1 %bound012, %bound113
  %conflict.rdx = or i1 %9, %found.conflict14
  %bound016 = icmp ult ptr %0, %scevgep11
  %bound117 = icmp ult ptr %3, %scevgep
  %found.conflict18 = and i1 %bound016, %bound117
  %conflict.rdx20 = or i1 %conflict.rdx, %found.conflict18
  %bound021 = icmp ult ptr %6, %scevgep10
  %bound122 = icmp ult ptr %2, %scevgep9
  %found.conflict23 = and i1 %bound021, %bound122
  %conflict.rdx24 = or i1 %conflict.rdx20, %found.conflict23
  %bound025 = icmp ult ptr %6, %scevgep11
  %bound126 = icmp ult ptr %3, %scevgep9
  %found.conflict27 = and i1 %bound025, %bound126
  %conflict.rdx28 = or i1 %conflict.rdx24, %found.conflict27
  %n.vec = and i64 %wide.trip.count103.i, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert29.a = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat30.a = shufflevector <8 x i32> %broadcast.splatinsert29.a, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert31 = insertelement <8 x i32> poison, i32 %8, i64 0
  %broadcast.splat32 = shufflevector <8 x i32> %broadcast.splatinsert31, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count103.i
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %._crit_edge.split.us.us.us.i, %.split.i
  %.081.us.us.i = phi ptr [ %.182.us.us.i, %._crit_edge.split.us.us.us.i ], [ %6, %.split.i ] ; 3 uses
  %.080.us.us.i = phi i32 [ %i.bp, %._crit_edge.split.us.us.us.i ], [ %5, %.split.i ]
  %.079.us.us.i = phi ptr [ %i.bn, %._crit_edge.split.us.us.us.i ], [ %3, %.split.i ] ; 3 uses
  %.078.us.us.i = phi ptr [ %i.bm, %._crit_edge.split.us.us.us.i ], [ %2, %.split.i ] ; 3 uses
  %.077.us.us.i = phi ptr [ %i.bo, %._crit_edge.split.us.us.us.i ], [ %0, %.split.i ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx28
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us.i ] ; 5 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %.078.us.us.i, i64 %index
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !10, !alias.scope !137
  %i.s = sext <8 x i16> %wide.load to <8 x i32>
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.079.us.us.i, i64 %index
  %wide.load33 = load <8 x i16>, ptr %i.t, align 2, !tbaa !10, !alias.scope !138
  %i.u = sext <8 x i16> %wide.load33 to <8 x i32> ; 2 uses
  %i.v = sub nsw <8 x i32> %i.s, %i.u             ; 2 uses
  %i.w = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.v, i1 true)
  %i.x = add nuw nsw <8 x i32> %i.w, splat (i32 32)
  %i.y = lshr <8 x i32> %i.x, splat (i32 10)
  %i.z = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.y, <8 x i32> splat (i32 26))
  %i.aa = add nuw nsw <8 x i32> %i.z, splat (i32 38) ; 2 uses
  %i.ab = mul nsw <8 x i32> %i.aa, %i.v
  %i.ac = shl nsw <8 x i32> %i.u, splat (i32 6)
  %i.ad = add nsw <8 x i32> %broadcast.splat, %i.ac
  %i.ae = add nsw <8 x i32> %i.ad, %i.ab
  %i.af = ashr <8 x i32> %i.ae, %broadcast.splat30.a ; 2 uses
  %i.ag = icmp slt <8 x i32> %i.af, zeroinitializer
  %i.ah = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.af, <8 x i32> %broadcast.splat32)
  %i.ai = trunc <8 x i32> %i.ah to <8 x i16>
  %i.aj = select <8 x i1> %i.ag, <8 x i16> zeroinitializer, <8 x i16> %i.ai
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %.077.us.us.i, i64 %index
  store <8 x i16> %i.aj, ptr %i.ak, align 2, !tbaa !10, !alias.scope !139, !noalias !140
  %i.al = trunc nuw nsw <8 x i32> %i.aa to <8 x i8>
  %i.am = getelementptr inbounds nuw i8, ptr %.081.us.us.i, i64 %index
  store <8 x i8> %i.al, ptr %i.am, align 1, !tbaa !13, !alias.scope !141, !noalias !142
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !135

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.i, %middle.block
  %indvars.iv97.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i, %scalar.ph ], [ %indvars.iv97.i.ph, %scalar.ph.preheader ] ; 5 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %.078.us.us.i, i64 %indvars.iv97.i
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !10
  %i.aq = sext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.079.us.us.i, i64 %indvars.iv97.i
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !10
  %i.at = sext i16 %i.as to i32                   ; 2 uses
  %i.au = sub nsw i32 %i.aq, %i.at                ; 2 uses
  %i.av = tail call i32 @llvm.abs.i32(i32 %i.au, i1 true)
  %i.aw = add nuw nsw i32 %i.av, 32
  %i.ax = lshr i32 %i.aw, 10
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 26)
  %i.az = add nuw nsw i32 %i.ay, 38               ; 2 uses
  %i.ba = mul nsw i32 %i.az, %i.au
  %i.bb = shl nsw i32 %i.at, 6
  %i.bc = add nsw i32 %i.e, %i.bb
  %i.bd = add nsw i32 %i.bc, %i.ba
  %i.be = ashr i32 %i.bd, %i.c                    ; 2 uses
  %i.bf = icmp slt i32 %i.be, 0
  %i.bg = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %8)
  %i.bh = trunc i32 %i.bg to i16
  %i.bi = select i1 %i.bf, i16 0, i16 %i.bh
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %.077.us.us.i, i64 %indvars.iv97.i
  store i16 %i.bi, ptr %i.bj, align 2, !tbaa !10
  %i.bk = trunc nuw nsw i32 %i.az to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %.081.us.us.i, i64 %indvars.iv97.i
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !13
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next98.i, %wide.trip.count103.i
  br i1 %exitcond.not.i, label %._crit_edge.split.us.us.us.i, label %scalar.ph, !llvm.loop !136

._crit_edge.split.us.us.us.i:                     ; preds = %scalar.ph, %middle.block
  %i.bm = getelementptr inbounds nuw [2 x i8], ptr %.078.us.us.i, i64 %i.f
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %.079.us.us.i, i64 %i.f
  %i.bo = getelementptr inbounds i8, ptr %.077.us.us.i, i64 %1
  %.182.us.us.i = getelementptr inbounds nuw i8, ptr %.081.us.us.i, i64 %i.f
  %i.bp = add nsw i32 %.080.us.us.i, -1           ; 2 uses
  %.not86.us.us.i = icmp eq i32 %i.bp, 0
  br i1 %.not86.us.us.i, label %w_mask_c.exit, label %.lr.ph.us.us.i

w_mask_c.exit:                                    ; preds = %._crit_edge.split.us.us.us.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @w_mask_422_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7, i32 noundef %8) #3 {
bb.a:
  %i.a = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %8, i1 true) ; 2 uses
  %i.b = add nsw i32 %i.a, -18
  %i.c = add nsw i32 %i.a, -12                    ; 3 uses
  %i.d = shl nuw nsw i32 32, %i.b
  %i.e = add nuw nsw i32 %i.d, 524288             ; 3 uses
  %i.f = sext i32 %4 to i64                       ; 6 uses
  %i.g = icmp sgt i32 %4, 0
  %i.h = and i64 %1, 1
  %.not.i.i = icmp eq i64 %i.h, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.i = ashr i32 %4, 1
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  br i1 %i.g, label %.lr.ph.i.preheader, label %w_mask_c.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.k = add i32 %5, -1
  %i.l = zext i32 %i.k to i64                     ; 3 uses
  %i.m = mul i64 %1, %i.l
  %i.n = add nsw i64 %i.f, -1
  %i.o = lshr i64 %i.n, 1                         ; 2 uses
  %i.p = shl i64 %i.o, 2                          ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 %i.m
  %i.r = getelementptr i8, ptr %i.q, i64 %i.p
  %scevgep = getelementptr i8, ptr %i.r, i64 4    ; 3 uses
  %i.s = mul nuw nsw i64 %i.j, %i.l
  %i.t = getelementptr i8, ptr %6, i64 %i.o
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %scevgep9 = getelementptr i8, ptr %i.u, i64 1   ; 3 uses
  %i.v = mul nuw nsw i64 %i.f, %i.l
  %i.w = shl nuw i64 %i.v, 1
  %i.x = add i64 %i.w, %i.p
  %i.y = add i64 %i.x, 4                          ; 2 uses
  %scevgep10 = getelementptr i8, ptr %2, i64 %i.y ; 2 uses
  %scevgep11 = getelementptr i8, ptr %3, i64 %i.y ; 2 uses
  %i.z = add nsw i64 %i.f, -1
  %i.aa = lshr i64 %i.z, 1
  %i.ab = add nuw i64 %i.aa, 1                    ; 2 uses
  %min.iters.check = icmp ult i32 %4, 7
  %bound0 = icmp ult ptr %0, %scevgep9
  %bound1 = icmp ult ptr %6, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %9 = or i1 %found.conflict, %stride.check
  %bound013 = icmp ult ptr %0, %scevgep10
  %bound114 = icmp ult ptr %2, %scevgep
  %found.conflict15 = and i1 %bound013, %bound114
  %conflict.rdx = or i1 %9, %found.conflict15
  %bound017 = icmp ult ptr %0, %scevgep11
  %bound118 = icmp ult ptr %3, %scevgep
  %found.conflict19 = and i1 %bound017, %bound118
  %conflict.rdx21 = or i1 %conflict.rdx, %found.conflict19
  %bound022 = icmp ult ptr %6, %scevgep10
  %bound123 = icmp ult ptr %2, %scevgep9
  %found.conflict24 = and i1 %bound022, %bound123
  %conflict.rdx26 = or i1 %conflict.rdx21, %found.conflict24
  %bound027 = icmp ult ptr %6, %scevgep11
  %bound128 = icmp ult ptr %3, %scevgep9
  %found.conflict29 = and i1 %bound027, %bound128
  %conflict.rdx31 = or i1 %conflict.rdx26, %found.conflict29
  %n.vec = and i64 %i.ab, -4                      ; 3 uses
  %i.ac = shl i64 %n.vec, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert32.a = insertelement <4 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat33.a = shufflevector <4 x i32> %broadcast.splatinsert32.a, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert34 = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat35 = shufflevector <4 x i32> %broadcast.splatinsert34, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert36 = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat37 = shufflevector <4 x i32> %broadcast.splatinsert36, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.op = sub <4 x i32> splat (i32 39), %broadcast.splat37
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  %invariant.op42 = sub i32 39, %7
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %._crit_edge.split.i
  %.081.i = phi ptr [ %.182.i, %._crit_edge.split.i ], [ %6, %.lr.ph.i.preheader ] ; 3 uses
  %.080.i = phi i32 [ %i.bv, %._crit_edge.split.i ], [ %5, %.lr.ph.i.preheader ]
  %.079.i = phi ptr [ %i.bt, %._crit_edge.split.i ], [ %3, %.lr.ph.i.preheader ] ; 4 uses
  %.078.i = phi ptr [ %i.bs, %._crit_edge.split.i ], [ %2, %.lr.ph.i.preheader ] ; 4 uses
  %.077.i = phi ptr [ %i.bu, %._crit_edge.split.i ], [ %0, %.lr.ph.i.preheader ] ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx31
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.ad = shl nuw i64 %index, 1                   ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.078.i, i64 %i.ad
  %wide.vec = load <8 x i16>, ptr %i.ae, align 2, !tbaa !10, !alias.scope !150 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec38 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.af = sext <4 x i16> %strided.vec to <4 x i32>
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %.079.i, i64 %i.ad
  %wide.vec39 = load <8 x i16>, ptr %i.ag, align 2, !tbaa !10, !alias.scope !151 ; 2 uses
  %strided.vec40 = shufflevector <8 x i16> %wide.vec39, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec41 = shufflevector <8 x i16> %wide.vec39, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ah = sext <4 x i16> %strided.vec40 to <4 x i32> ; 2 uses
  %i.ai = sub nsw <4 x i32> %i.af, %i.ah          ; 2 uses
  %i.aj = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ai, i1 true)
  %i.ak = add nuw nsw <4 x i32> %i.aj, splat (i32 32)
  %i.al = lshr <4 x i32> %i.ak, splat (i32 10)
  %i.am = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.al, <4 x i32> splat (i32 26)) ; 2 uses
  %i.an = add nuw nsw <4 x i32> %i.am, splat (i32 38)
  %i.ao = mul nsw <4 x i32> %i.an, %i.ai
  %i.ap = shl nsw <4 x i32> %i.ah, splat (i32 6)
  %i.aq = add nsw <4 x i32> %i.ap, %broadcast.splat
  %i.ar = add nsw <4 x i32> %i.aq, %i.ao
  %i.as = ashr <4 x i32> %i.ar, %broadcast.splat33.a ; 2 uses
  %i.at = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.as, <4 x i32> %broadcast.splat35)
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %.077.i, i64 %i.ad
  %i.av = sext <4 x i16> %strided.vec38 to <4 x i32>
  %i.aw = sext <4 x i16> %strided.vec41 to <4 x i32> ; 2 uses
  %i.ax = sub nsw <4 x i32> %i.av, %i.aw          ; 2 uses
  %i.ay = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ax, i1 true)
  %i.az = add nuw nsw <4 x i32> %i.ay, splat (i32 32)
  %i.ba = lshr <4 x i32> %i.az, splat (i32 10)
  %i.bb = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ba, <4 x i32> splat (i32 26))
  %i.bc = add nuw nsw <4 x i32> %i.bb, splat (i32 38) ; 2 uses
  %i.bd = mul nsw <4 x i32> %i.bc, %i.ax
  %i.be = shl nsw <4 x i32> %i.aw, splat (i32 6)
  %i.bf = add nsw <4 x i32> %i.be, %broadcast.splat
  %i.bg = add nsw <4 x i32> %i.bf, %i.bd
  %i.bh = ashr <4 x i32> %i.bg, %broadcast.splat33.a ; 2 uses
  %i.bi = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bh, <4 x i32> %broadcast.splat35)
  %i.bj = shufflevector <4 x i32> %i.as, <4 x i32> %i.bh, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bk = icmp slt <8 x i32> %i.bj, zeroinitializer
  %i.bl = shufflevector <4 x i32> %i.at, <4 x i32> %i.bi, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.bm = trunc <8 x i32> %i.bl to <8 x i16>
  %interleaved.vec = select <8 x i1> %i.bk, <8 x i16> zeroinitializer, <8 x i16> %i.bm
  store <8 x i16> %interleaved.vec, ptr %i.au, align 2, !tbaa !10, !alias.scope !152, !noalias !153
  %.reass = add <4 x i32> %i.am, %invariant.op
  %i.bn = add <4 x i32> %.reass, %i.bc
  %i.bo = lshr <4 x i32> %i.bn, splat (i32 1)
  %i.bp = trunc <4 x i32> %i.bo to <4 x i8>
  %i.bq = getelementptr inbounds nuw i8, ptr %.081.i, i64 %index
  store <4 x i8> %i.bp, ptr %i.bq, align 1, !tbaa !13, !alias.scope !154, !noalias !155
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.br = icmp eq i64 %index.next, %n.vec
  br i1 %i.br, label %middle.block, label %vector.body, !llvm.loop !148

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.ac, %middle.block ], [ 0, %.lr.ph.i ]
  br label %scalar.ph

._crit_edge.split.i:                              ; preds = %scalar.ph, %middle.block
  %i.bs = getelementptr inbounds nuw [2 x i8], ptr %.078.i, i64 %i.f
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.079.i, i64 %i.f
  %i.bu = getelementptr inbounds i8, ptr %.077.i, i64 %1
  %.182.i = getelementptr inbounds nuw i8, ptr %.081.i, i64 %i.j
  %i.bv = add nsw i32 %.080.i, -1                 ; 2 uses
  %.not86.i = icmp eq i32 %i.bv, 0
  br i1 %.not86.i, label %w_mask_c.exit, label %.lr.ph.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 6 uses
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.078.i, i64 %indvars.iv.i
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !10
  %i.by = sext i16 %i.bx to i32
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.079.i, i64 %indvars.iv.i
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !10
  %i.cb = sext i16 %i.ca to i32                   ; 2 uses
  %i.cc = sub nsw i32 %i.by, %i.cb                ; 2 uses
  %i.cd = tail call i32 @llvm.abs.i32(i32 %i.cc, i1 true)
  %i.ce = add nuw nsw i32 %i.cd, 32
  %i.cf = lshr i32 %i.ce, 10
  %i.cg = tail call i32 @llvm.umin.i32(i32 %i.cf, i32 26) ; 2 uses
  %i.ch = add nuw nsw i32 %i.cg, 38
  %i.ci = mul nsw i32 %i.ch, %i.cc
  %i.cj = shl nsw i32 %i.cb, 6
  %i.ck = add nsw i32 %i.cj, %i.e
  %i.cl = add nsw i32 %i.ck, %i.ci
  %i.cm = ashr i32 %i.cl, %i.c                    ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 0
  %i.co = tail call i32 @llvm.smin.i32(i32 %i.cm, i32 %8)
  %i.cp = trunc i32 %i.co to i16
  %i.cq = select i1 %i.cn, i16 0, i16 %i.cp
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %.077.i, i64 %indvars.iv.i
  store i16 %i.cq, ptr %i.cr, align 2, !tbaa !10
  %i.cs = or disjoint i64 %indvars.iv.i, 1        ; 3 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.078.i, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !10
  %i.cv = sext i16 %i.cu to i32
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %.079.i, i64 %i.cs
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !10
  %i.cy = sext i16 %i.cx to i32                   ; 2 uses
  %i.cz = sub nsw i32 %i.cv, %i.cy                ; 2 uses
  %i.da = tail call i32 @llvm.abs.i32(i32 %i.cz, i1 true)
  %i.db = add nuw nsw i32 %i.da, 32
  %i.dc = lshr i32 %i.db, 10
  %i.dd = tail call i32 @llvm.umin.i32(i32 %i.dc, i32 26)
  %i.de = add nuw nsw i32 %i.dd, 38               ; 2 uses
  %i.df = mul nsw i32 %i.de, %i.cz
  %i.dg = shl nsw i32 %i.cy, 6
  %i.dh = add nsw i32 %i.dg, %i.e
  %i.di = add nsw i32 %i.dh, %i.df
  %i.dj = ashr i32 %i.di, %i.c                    ; 2 uses
  %i.dk = icmp slt i32 %i.dj, 0
  %i.dl = tail call i32 @llvm.smin.i32(i32 %i.dj, i32 %8)
  %i.dm = trunc i32 %i.dl to i16
  %i.dn = select i1 %i.dk, i16 0, i16 %i.dm
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %.077.i, i64 %i.cs
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !10
  %.reass112.i.reass.reass = add i32 %i.cg, %invariant.op42
  %i.dp = add i32 %.reass112.i.reass.reass, %i.de
  %i.dq = lshr i32 %i.dp, 1
  %i.dr = trunc i32 %i.dq to i8
  %i.ds = lshr exact i64 %indvars.iv.i, 1
  %i.dt = getelementptr inbounds nuw i8, ptr %.081.i, i64 %i.ds
  store i8 %i.dr, ptr %i.dt, align 1, !tbaa !13
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %i.du = icmp slt i64 %indvars.iv.next.i, %i.f
  br i1 %i.du, label %scalar.ph, label %._crit_edge.split.i, !llvm.loop !149

w_mask_c.exit:                                    ; preds = %._crit_edge.split.i, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @w_mask_420_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6, i32 noundef %7, i32 noundef %8) #3 {
bb.a:
  tail call fastcc void @w_mask_c(ptr noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, i32 noundef 1, i32 noundef 1, i32 noundef %8)
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal void @warp_affine_8x8_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) #3 {
bb.a:
  %i.a = alloca [120 x i16], align 16             ; 4 uses
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %7, i1 true) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.c = and i64 %3, 1
  %.not.i = icmp eq i64 %i.c, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.d = ashr exact i64 %3, 1
  %.idx = mul i64 %i.d, -6
  %i.e = getelementptr inbounds i8, ptr %2, i64 %.idx
  %i.f = sub nsw i32 25, %i.b                     ; 9 uses
  %i.g = shl nuw nsw i32 1, %i.f
  %i.h = lshr i32 %i.g, 1                         ; 8 uses
  %i.i = load i16, ptr %4, align 2, !tbaa !10
  %i.j = sext i16 %i.i to i32                     ; 7 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 2
  %i.l = load i16, ptr %i.k, align 2, !tbaa !10
  %i.m = sext i16 %i.l to i32
  %invariant.op = add nsw i32 %i.j, 512
  br label %.preheader97

.preheader97:                                     ; preds = %bb.a, %.preheader97
  %.088103 = phi ptr [ %i.e, %bb.a ], [ %i.sc, %.preheader97 ] ; 34 uses
end_hunk_1
begin_hunk_2_@resize_c:bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !13
  %i.ar = sext i8 %i.aq to i32
  %i.as = icmp slt i32 %.05077, 0
  %i.at = tail call i32 @llvm.smin.i32(i32 %.05077, i32 %i.d)
  %i.au = select i1 %i.as, i32 0, i32 %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %.052, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !10
  %i.ay = zext i16 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.ba = load i8, ptr %i.az, align 4, !tbaa !13
  %i.bb = sext i8 %i.ba to i32
  %i.bc = add nsw i32 %.05077, 1
  %i.bd = icmp slt i32 %.05077, -1
  %i.be = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %i.d)
  %i.bf = select i1 %i.bd, i32 0, i32 %i.be
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [2 x i8], ptr %.052, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !10
  %i.bj = zext i16 %i.bi to i32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 5
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !13
  %i.bm = sext i8 %i.bl to i32
  %i.bn = add nsw i32 %.05077, 2
  %i.bo = icmp slt i32 %.05077, -2
  %i.bp = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 %i.d)
  %i.bq = select i1 %i.bo, i32 0, i32 %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [2 x i8], ptr %.052, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !10
  %i.bu = zext i16 %i.bt to i32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 6
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !13
  %i.bx = sext i8 %i.bw to i32
  %i.by = add nsw i32 %.05077, 3
  %i.bz = icmp slt i32 %.05077, -3
  %i.ca = tail call i32 @llvm.smin.i32(i32 %i.by, i32 %i.d)
  %i.cb = select i1 %i.bz, i32 0, i32 %i.ca
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %.052, i64 %i.cc
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !10
  %i.cf = zext i16 %i.ce to i32
  %i.cg = getelementptr inbounds nuw i8, ptr %i.j, i64 7
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !13
  %i.ci = sext i8 %i.ch to i32
  %i.cj = add nsw i32 %.05077, 4
  %i.ck = icmp slt i32 %.05077, -4
  %i.cl = tail call i32 @llvm.smin.i32(i32 %i.cj, i32 %i.d)
  %i.cm = select i1 %i.ck, i32 0, i32 %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [2 x i8], ptr %.052, i64 %i.cn
  %i.cp = load i16, ptr %i.co, align 2, !tbaa !10
  %i.cq = zext i16 %i.cp to i32
  %.neg = mul nsw i32 %i.t, %i.l
  %.neg56 = mul nsw i32 %i.ae, %i.w
  %.neg58 = mul nsw i32 %i.ao, %i.ah
  %.neg60 = mul nsw i32 %i.ay, %i.ar
  %.neg62 = mul nsw i32 %i.bj, %i.bb
  %.neg64 = mul nsw i32 %i.bu, %i.bm
  %.neg66 = mul nsw i32 %i.cf, %i.bx
  %.neg68 = mul nsw i32 %i.cq, %i.ci
  %reass.add = add nsw i32 %.neg56, %.neg
  %reass.add70 = add nsw i32 %reass.add, %.neg58
  %reass.add71 = add nsw i32 %reass.add70, %.neg60
  %reass.add72 = add nsw i32 %reass.add71, %.neg62
  %reass.add73 = add nsw i32 %reass.add72, %.neg64
  %reass.add74 = add nsw i32 %reass.add73, %.neg66
  %reass.add75 = add nsw i32 %reass.add74, %.neg68
  %i.cr = sub nsw i32 64, %reass.add75
  %i.cs = ashr i32 %i.cr, 7                       ; 2 uses
  %i.ct = icmp slt i32 %i.cs, 0
  %i.cu = tail call i32 @llvm.smin.i32(i32 %i.cs, i32 %9)
  %i.cv = trunc i32 %i.cu to i16
  %i.cw = select i1 %i.ct, i16 0, i16 %i.cv
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.0, i64 %indvars.iv
  store i16 %i.cw, ptr %i.cx, align 2, !tbaa !10
  %i.cy = add nsw i32 %.05176, %7                 ; 2 uses
  %i.cz = ashr i32 %i.cy, 14
  %i.da = add nsw i32 %i.cz, %.05077
  %i.db = and i32 %i.cy, 16383
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

.split79:                                         ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @put_8tap_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef range(i32 0, 11) %8, i32 noundef %9) unnamed_addr #4 {
bb.a:
  %i.a = alloca [17280 x i16], align 16           ; 4 uses
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %9, i1 true) ; 2 uses
  %i.c = sub nsw i32 24, %i.b                     ; 3 uses
  %i.d = shl nuw nsw i32 1, %i.c
  %i.e = lshr i32 %i.d, 1                         ; 3 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %4, 4
  %i.g = sext i32 %6 to i64                       ; 2 uses
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %8, 3
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.i
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %i.g
  %i.l = getelementptr i8, ptr %i.k, i64 -8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = and i32 %8, 1
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.n
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %i.g
  %i.q = getelementptr i8, ptr %i.p, i64 352
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.a
  %i.r = phi ptr [ null, %bb.a ], [ %i.l, %bb.c ], [ %i.q, %bb.d ] ; 13 uses
  %.not199 = icmp eq i32 %7, 0
  br i1 %.not199, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = icmp sgt i32 %5, 4
  %i.t = lshr i32 %8, 2                           ; 2 uses
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.u
  %i.w = sext i32 %7 to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 -8
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.z = and i32 %i.t, 1
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [120 x i8], ptr @dav1d_mc_subpel_filters, i64 %i.aa
  %i.ac = sext i32 %7 to i64
  %i.ad = getelementptr [8 x i8], ptr %i.ab, i64 %i.ac
  %i.ae = getelementptr i8, ptr %i.ad, i64 352
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.e
  %i.af = phi ptr [ null, %bb.e ], [ %i.y, %bb.g ], [ %i.ae, %bb.h ] ; 23 uses
  %i.ag = and i64 %1, 1
  %.not.i = icmp eq i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.ah = ashr exact i64 %1, 1
  %i.ai = and i64 %3, 1
  %.not.i211 = icmp eq i64 %i.ai, 0
  tail call void @llvm.assume(i1 %.not.i211)
  %i.aj = ashr exact i64 %3, 1                    ; 7 uses
  %.not200 = icmp eq ptr %i.r, null
  %.not201 = icmp eq ptr %i.af, null              ; 2 uses
  br i1 %.not200, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %.not201, label %.preheader212, label %bb.k

.preheader212:                                    ; preds = %bb.j
  %i.ak = icmp sgt i32 %4, 0
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 5
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 7
  %i.as = add nuw nsw i32 %i.e, 32                ; 2 uses
  br i1 %i.ak, label %.lr.ph223.preheader, label %.loopexit.split

.lr.ph223.preheader:                              ; preds = %.preheader212
  %wide.trip.count239 = zext nneg i32 %4 to i64   ; 4 uses
  %i.at = add i32 %5, -1
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = mul i64 %1, %i.au
  %i.aw = shl nuw nsw i64 %wide.trip.count239, 1  ; 2 uses
  %i.ax = getelementptr i8, ptr %0, i64 %i.av
  %scevgep325 = getelementptr i8, ptr %i.ax, i64 %i.aw ; 2 uses
  %scevgep326 = getelementptr i8, ptr %i.r, i64 8
  %scevgep327 = getelementptr i8, ptr %2, i64 -6
  %i.ay = mul i64 %3, %i.au
  %i.az = getelementptr i8, ptr %2, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.aw
  %scevgep328 = getelementptr i8, ptr %i.ba, i64 8
  %min.iters.check339 = icmp ult i32 %4, 8
  %bound0329 = icmp ult ptr %0, %scevgep326
  %bound1330 = icmp ult ptr %i.r, %scevgep325
  %found.conflict331 = and i1 %bound0329, %bound1330
  %stride.check332 = icmp slt i64 %1, 0
  %i.bb = or i1 %found.conflict331, %stride.check332
  %bound0333 = icmp ult ptr %0, %scevgep328
  %bound1334 = icmp ult ptr %scevgep327, %scevgep325
  %found.conflict335 = and i1 %bound0333, %bound1334
  %i.bc = icmp slt i64 %3, 0
  %i.bd = or i1 %found.conflict335, %i.bc
  %conflict.rdx = or i1 %i.bb, %i.bd
  %n.vec341 = and i64 %wide.trip.count239, 2147483640 ; 3 uses
  %broadcast.splatinsert358 = insertelement <8 x i32> poison, i32 %i.as, i64 0
  %broadcast.splat359 = shufflevector <8 x i32> %broadcast.splatinsert358, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert360 = insertelement <8 x i32> poison, i32 %9, i64 0
  %broadcast.splat361 = shufflevector <8 x i32> %broadcast.splatinsert360, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n374 = icmp eq i64 %n.vec341, %wide.trip.count239
  br label %.lr.ph223

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.be = icmp sgt i32 %4, 0
  br i1 %i.be, label %.split, label %.split220

.split:                                           ; preds = %bb.k
  %.idx208 = mul i64 %i.aj, -6
  %i.bf = getelementptr inbounds i8, ptr %2, i64 %.idx208
  %i.bg = add nsw i32 %5, 7
  %i.bh = load <8 x i8>, ptr %i.r, align 1, !tbaa !13
  %i.bi = sext <8 x i8> %i.bh to <8 x i32>        ; 9 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splat = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat260 = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat262 = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat264 = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat266 = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat268 = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat270 = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat272 = shufflevector <8 x i32> %i.bi, <8 x i32> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %broadcast.splatinsert273 = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat274 = shufflevector <8 x i32> %broadcast.splatinsert273, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert275 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat276 = shufflevector <8 x i32> %broadcast.splatinsert275, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge, %.split
  %.0184 = phi ptr [ %i.bf, %.split ], [ %i.cw, %._crit_edge ] ; 6 uses
  %.0181 = phi i32 [ %i.bg, %.split ], [ %i.cx, %._crit_edge ]
  %.0180 = phi ptr [ %i.a, %.split ], [ %i.cv, %._crit_edge ] ; 3 uses
  %.pre = load i16, ptr %.0184, align 2, !tbaa !10 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %vector.recur.init = insertelement <8 x i16> poison, i16 %.pre, i64 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %vector.recur = phi <8 x i16> [ %vector.recur.init, %vector.ph ], [ %wide.load279, %vector.body ]
  %i.bj = getelementptr [2 x i8], ptr %.0184, i64 %index ; 6 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -6
  %wide.load = load <8 x i16>, ptr %i.bk, align 2, !tbaa !10
  %i.bl = zext <8 x i16> %wide.load to <8 x i32>
  %i.bm = mul nsw <8 x i32> %broadcast.splat, %i.bl
  %i.bn = getelementptr i8, ptr %i.bj, i64 -4
  %wide.load277 = load <8 x i16>, ptr %i.bn, align 2, !tbaa !10
  %i.bo = zext <8 x i16> %wide.load277 to <8 x i32>
  %i.bp = mul nsw <8 x i32> %broadcast.splat260, %i.bo
  %i.bq = getelementptr i8, ptr %i.bj, i64 -2
  %wide.load278 = load <8 x i16>, ptr %i.bq, align 2, !tbaa !10
  %i.br = zext <8 x i16> %wide.load278 to <8 x i32>
  %i.bs = mul nsw <8 x i32> %broadcast.splat262, %i.br
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.0184, i64 %index
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  %wide.load279 = load <8 x i16>, ptr %i.bu, align 2, !tbaa !10 ; 4 uses
  %i.bv = shufflevector <8 x i16> %vector.recur, <8 x i16> %wide.load279, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.bw = zext <8 x i16> %i.bv to <8 x i32>
  %i.bx = mul nsw <8 x i32> %broadcast.splat264, %i.bw
  %i.by = zext <8 x i16> %wide.load279 to <8 x i32>
  %i.bz = mul nsw <8 x i32> %broadcast.splat266, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bj, i64 4
  %wide.load280 = load <8 x i16>, ptr %i.ca, align 2, !tbaa !10
  %i.cb = zext <8 x i16> %wide.load280 to <8 x i32>
  %i.cc = mul nsw <8 x i32> %broadcast.splat268, %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 6
  %wide.load281 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !10
  %i.ce = zext <8 x i16> %wide.load281 to <8 x i32>
  %i.cf = mul nsw <8 x i32> %broadcast.splat270, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %wide.load282 = load <8 x i16>, ptr %i.cg, align 2, !tbaa !10
  %i.ch = zext <8 x i16> %wide.load282 to <8 x i32>
  %i.ci = mul nsw <8 x i32> %broadcast.splat272, %i.ch
  %i.cj = add nsw <8 x i32> %i.bm, %broadcast.splat274
  %i.ck = add nsw <8 x i32> %i.cj, %i.bp
  %i.cl = add nsw <8 x i32> %i.ck, %i.bs
  %i.cm = add nsw <8 x i32> %i.cl, %i.bx
  %i.cn = add nsw <8 x i32> %i.cm, %i.bz
  %i.co = add nsw <8 x i32> %i.cn, %i.cc
  %i.cp = add nsw <8 x i32> %i.co, %i.cf
  %i.cq = add nsw <8 x i32> %i.cp, %i.ci
  %i.cr = ashr <8 x i32> %i.cq, %broadcast.splat276
  %i.cs = trunc <8 x i32> %i.cr to <8 x i16>
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %.0180, i64 %index
  store <8 x i16> %i.cs, ptr %i.ct, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cu = icmp eq i64 %index.next, %n.vec
  br i1 %i.cu, label %middle.block, label %vector.body, !llvm.loop !180

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <8 x i16> %wide.load279, i64 7
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.ph = phi i16 [ %.pre, %.lr.ph ], [ %vector.recur.extract, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %i.cv = getelementptr inbounds nuw i8, ptr %.0180, i64 256
  %i.cw = getelementptr inbounds i8, ptr %.0184, i64 %3
  %i.cx = add nsw i32 %.0181, -1                  ; 2 uses
  %.not209 = icmp eq i32 %i.cx, 0
  br i1 %.not209, label %.split215, label %.lr.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.cy = phi i16 [ %i.dg, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cz = getelementptr [2 x i8], ptr %.0184, i64 %indvars.iv ; 2 uses
  %i.da = getelementptr i8, ptr %i.cz, i64 -6
  %i.db = getelementptr i8, ptr %i.cz, i64 -2
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.0184, i64 %indvars.iv.next ; 2 uses
  %i.de = load <2 x i16>, ptr %i.da, align 2, !tbaa !10
  %i.df = load <4 x i16>, ptr %i.dd, align 2, !tbaa !10
  %i.dg = load i16, ptr %i.dd, align 2, !tbaa !10
  %i.dh = shufflevector <2 x i16> %i.de, <2 x i16> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.dc, i64 2
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.cy, i64 3
  %i.dk = shufflevector <4 x i16> %i.df, <4 x i16> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dl = shufflevector <8 x i16> %i.dj, <8 x i16> %i.dk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.dm = zext <8 x i16> %i.dl to <8 x i32>
  %i.dn = mul nsw <8 x i32> %i.dm, %i.bi
  %i.do = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.dn)
  %op.rdx492 = add i32 %i.do, %i.e
  %i.dp = ashr i32 %op.rdx492, %i.c
  %i.dq = trunc i32 %i.dp to i16
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %.0180, i64 %indvars.iv
  store i16 %i.dq, ptr %i.dr, align 2, !tbaa !10
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !181

.split215:                                        ; preds = %._crit_edge
  %i.ds = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.af, i64 3 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.af, i64 5 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.af, i64 6 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.af, i64 7 ; 2 uses
  %i.dz = add nsw i32 %i.b, -12                   ; 3 uses
  %i.ea = shl nuw nsw i32 1, %i.dz
  %i.eb = lshr i32 %i.ea, 1                       ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.a, i64 768
  %wide.trip.count234 = zext nneg i32 %4 to i64
  %i.ed = add i32 %5, -1
  %i.ee = zext i32 %i.ed to i64
  %i.ef = mul i64 %1, %i.ee
  %i.eg = shl nuw nsw i64 %wide.trip.count, 1
  %i.eh = getelementptr i8, ptr %0, i64 %i.ef
  %scevgep = getelementptr i8, ptr %i.eh, i64 %i.eg
  %scevgep283 = getelementptr i8, ptr %i.af, i64 8
  %min.iters.check285 = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %0, %scevgep283
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %i.ei = or i1 %found.conflict, %stride.check
  %n.vec287 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert304 = insertelement <8 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat305 = shufflevector <8 x i32> %broadcast.splatinsert304, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert306 = insertelement <8 x i32> poison, i32 %i.dz, i64 0
  %broadcast.splat307 = shufflevector <8 x i32> %broadcast.splatinsert306, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert308 = insertelement <8 x i32> poison, i32 %9, i64 0
  %broadcast.splat309 = shufflevector <8 x i32> %broadcast.splatinsert308, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n322 = icmp eq i64 %n.vec287, %wide.trip.count
  br label %.lr.ph218

.lr.ph218:                                        ; preds = %.split215, %._crit_edge219
  %.0187 = phi i32 [ %i.go, %._crit_edge219 ], [ %5, %.split215 ]
  %.0182 = phi ptr [ %i.gn, %._crit_edge219 ], [ %0, %.split215 ] ; 3 uses
  %.1 = phi ptr [ %i.gm, %._crit_edge219 ], [ %i.ec, %.split215 ] ; 3 uses
  %brmerge = select i1 %min.iters.check285, i1 true, i1 %i.ei
  br i1 %brmerge, label %scalar.ph284.preheader, label %vector.ph286

vector.ph286:                                     ; preds = %.lr.ph218
  %i.ej = load i8, ptr %i.af, align 1, !tbaa !13, !alias.scope !206
  %broadcast.splatinsert288 = insertelement <8 x i8> poison, i8 %i.ej, i64 0
  %broadcast.splat289 = shufflevector <8 x i8> %broadcast.splatinsert288, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ek = sext <8 x i8> %broadcast.splat289 to <8 x i32>
  %i.el = load i8, ptr %i.ds, align 1, !tbaa !13, !alias.scope !206
  %broadcast.splatinsert290 = insertelement <8 x i8> poison, i8 %i.el, i64 0
  %broadcast.splat291 = shufflevector <8 x i8> %broadcast.splatinsert290, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.em = sext <8 x i8> %broadcast.splat291 to <8 x i32>
  %i.en = load i8, ptr %i.dt, align 1, !tbaa !13, !alias.scope !206
  %broadcast.splatinsert292 = insertelement <8 x i8> poison, i8 %i.en, i64 0
end_hunk_2
begin_hunk_3_@put_8tap_c:bb.a
  %i.jc = sext <8 x i8> %broadcast.splat345 to <8 x i32>
  %i.jd = load i8, ptr %i.am, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert346 = insertelement <8 x i8> poison, i8 %i.jd, i64 0
  %broadcast.splat347 = shufflevector <8 x i8> %broadcast.splatinsert346, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.je = sext <8 x i8> %broadcast.splat347 to <8 x i32>
  %i.jf = load i8, ptr %i.an, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert348 = insertelement <8 x i8> poison, i8 %i.jf, i64 0
  %broadcast.splat349 = shufflevector <8 x i8> %broadcast.splatinsert348, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.jg = sext <8 x i8> %broadcast.splat349 to <8 x i32>
  %i.jh = load i8, ptr %i.ao, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert350 = insertelement <8 x i8> poison, i8 %i.jh, i64 0
  %broadcast.splat351 = shufflevector <8 x i8> %broadcast.splatinsert350, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ji = sext <8 x i8> %broadcast.splat351 to <8 x i32>
  %i.jj = load i8, ptr %i.ap, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert352 = insertelement <8 x i8> poison, i8 %i.jj, i64 0
  %broadcast.splat353 = shufflevector <8 x i8> %broadcast.splatinsert352, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.jk = sext <8 x i8> %broadcast.splat353 to <8 x i32>
  %i.jl = load i8, ptr %i.aq, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert354 = insertelement <8 x i8> poison, i8 %i.jl, i64 0
  %broadcast.splat355 = shufflevector <8 x i8> %broadcast.splatinsert354, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.jm = sext <8 x i8> %broadcast.splat355 to <8 x i32>
  %i.jn = load i8, ptr %i.ar, align 1, !tbaa !13, !alias.scope !208
  %broadcast.splatinsert356 = insertelement <8 x i8> poison, i8 %i.jn, i64 0
  %broadcast.splat357 = shufflevector <8 x i8> %broadcast.splatinsert356, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.jo = sext <8 x i8> %broadcast.splat357 to <8 x i32>
  br label %vector.body362

vector.body362:                                   ; preds = %vector.body362, %vector.ph340
  %index363 = phi i64 [ 0, %vector.ph340 ], [ %index.next372, %vector.body362 ] ; 4 uses
  %i.jp = getelementptr [2 x i8], ptr %.1185, i64 %index363 ; 7 uses
  %i.jq = getelementptr i8, ptr %i.jp, i64 -6
  %wide.load364.a = load <8 x i16>, ptr %i.jq, align 2, !tbaa !10, !alias.scope !209
  %i.jr = zext <8 x i16> %wide.load364.a to <8 x i32>
  %i.js = mul nsw <8 x i32> %i.jr, %i.ja
  %i.jt = getelementptr i8, ptr %i.jp, i64 -4
  %wide.load365.a = load <8 x i16>, ptr %i.jt, align 2, !tbaa !10, !alias.scope !209
  %i.ju = zext <8 x i16> %wide.load365.a to <8 x i32>
  %i.jv = mul nsw <8 x i32> %i.ju, %i.jc
  %i.jw = getelementptr i8, ptr %i.jp, i64 -2
  %wide.load366.a = load <8 x i16>, ptr %i.jw, align 2, !tbaa !10, !alias.scope !209
  %i.jx = zext <8 x i16> %wide.load366.a to <8 x i32>
  %i.jy = mul nsw <8 x i32> %i.jx, %i.je
  %wide.load367.a = load <8 x i16>, ptr %i.jp, align 2, !tbaa !10, !alias.scope !209
  %i.jz = zext <8 x i16> %wide.load367.a to <8 x i32>
  %i.ka = mul nsw <8 x i32> %i.jz, %i.jg
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %.1185, i64 %index363
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 2
  %wide.load368.a = load <8 x i16>, ptr %i.kc, align 2, !tbaa !10, !alias.scope !209
  %i.kd = zext <8 x i16> %wide.load368.a to <8 x i32>
  %i.ke = mul nsw <8 x i32> %i.kd, %i.ji
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %wide.load369.a = load <8 x i16>, ptr %i.kf, align 2, !tbaa !10, !alias.scope !209
  %i.kg = zext <8 x i16> %wide.load369.a to <8 x i32>
  %i.kh = mul nsw <8 x i32> %i.kg, %i.jk
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jp, i64 6
  %wide.load370.a = load <8 x i16>, ptr %i.ki, align 2, !tbaa !10, !alias.scope !209
  %i.kj = zext <8 x i16> %wide.load370.a to <8 x i32>
  %i.kk = mul nsw <8 x i32> %i.kj, %i.jm
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jp, i64 8
  %wide.load371 = load <8 x i16>, ptr %i.kl, align 2, !tbaa !10, !alias.scope !209
  %i.km = zext <8 x i16> %wide.load371 to <8 x i32>
  %i.kn = mul nsw <8 x i32> %i.km, %i.jo
  %i.ko = add nsw <8 x i32> %broadcast.splat359, %i.js
  %i.kp = add nsw <8 x i32> %i.ko, %i.jv
  %i.kq = add nsw <8 x i32> %i.kp, %i.jy
  %i.kr = add nsw <8 x i32> %i.kq, %i.ka
  %i.ks = add nsw <8 x i32> %i.kr, %i.ke
  %i.kt = add nsw <8 x i32> %i.ks, %i.kh
  %i.ku = add nsw <8 x i32> %i.kt, %i.kk
  %i.kv = add nsw <8 x i32> %i.ku, %i.kn
  %i.kw = ashr <8 x i32> %i.kv, splat (i32 6)     ; 2 uses
  %i.kx = icmp slt <8 x i32> %i.kw, zeroinitializer
  %i.ky = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.kw, <8 x i32> %broadcast.splat361)
  %i.kz = trunc <8 x i32> %i.ky to <8 x i16>
  %i.la = select <8 x i1> %i.kx, <8 x i16> zeroinitializer, <8 x i16> %i.kz
  %i.lb = getelementptr inbounds nuw [2 x i8], ptr %.1183, i64 %index363
  store <8 x i16> %i.la, ptr %i.lb, align 2, !tbaa !10, !alias.scope !210, !noalias !211
  %index.next372 = add nuw i64 %index363, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next372, %n.vec341
  br i1 %i.lc, label %middle.block373, label %vector.body362, !llvm.loop !191

middle.block373:                                  ; preds = %vector.body362
  br i1 %cmp.n374, label %._crit_edge224, label %scalar.ph338.preheader

scalar.ph338.preheader:                           ; preds = %.lr.ph223, %middle.block373
  %indvars.iv236.ph = phi i64 [ %n.vec341, %middle.block373 ], [ 0, %.lr.ph223 ]
  br label %scalar.ph338

._crit_edge224:                                   ; preds = %scalar.ph338, %middle.block373
  %i.ld = getelementptr inbounds i8, ptr %.1183, i64 %1
  %i.le = getelementptr inbounds i8, ptr %.1185, i64 %3
  %i.lf = add nsw i32 %.1188, -1                  ; 2 uses
  %.not207 = icmp eq i32 %i.lf, 0
  br i1 %.not207, label %.loopexit.split, label %.lr.ph223

scalar.ph338:                                     ; preds = %scalar.ph338.preheader, %scalar.ph338
  %indvars.iv236 = phi i64 [ %indvars.iv.next237, %scalar.ph338 ], [ %indvars.iv236.ph, %scalar.ph338.preheader ] ; 3 uses
  %i.lg = getelementptr [2 x i8], ptr %.1185, i64 %indvars.iv236
  %i.lh = getelementptr i8, ptr %i.lg, i64 -6
  %indvars.iv.next237 = add nuw nsw i64 %indvars.iv236, 1 ; 2 uses
  %i.li = load <8 x i8>, ptr %i.r, align 1, !tbaa !13
  %i.lj = sext <8 x i8> %i.li to <8 x i32>
  %i.lk = load <8 x i16>, ptr %i.lh, align 2, !tbaa !10
  %i.ll = zext <8 x i16> %i.lk to <8 x i32>
  %i.lm = mul nsw <8 x i32> %i.ll, %i.lj
  %i.ln = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.lm)
  %op.rdx491 = add i32 %i.ln, %i.as
  %i.lo = ashr i32 %op.rdx491, 6                  ; 2 uses
  %i.lp = icmp slt i32 %i.lo, 0
  %i.lq = tail call i32 @llvm.smin.i32(i32 %i.lo, i32 %9)
  %i.lr = trunc i32 %i.lq to i16
  %i.ls = select i1 %i.lp, i16 0, i16 %i.lr
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr %.1183, i64 %indvars.iv236
  store i16 %i.ls, ptr %i.lt, align 2, !tbaa !10
  %exitcond240.not = icmp eq i64 %indvars.iv.next237, %wide.trip.count239
  br i1 %exitcond240.not, label %._crit_edge224, label %scalar.ph338, !llvm.loop !192

bb.l:                                             ; preds = %bb.i
  br i1 %.not201, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.l
  %i.lu = icmp sgt i32 %4, 0
  %.idx = mul i64 %i.aj, -6                       ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.af, i64 1 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.af, i64 3 ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.af, i64 5 ; 2 uses
  %.idx203 = shl i64 %3, 1                        ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.af, i64 6 ; 2 uses
  %.idx204 = mul i64 %i.aj, 6                     ; 4 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.af, i64 7 ; 2 uses
  %.idx205 = shl i64 %3, 2                        ; 2 uses
  br i1 %i.lu, label %.lr.ph227.preheader, label %.loopexit.split

.lr.ph227.preheader:                              ; preds = %.preheader
  %wide.trip.count244 = zext nneg i32 %4 to i64   ; 4 uses
  %i.mc = add i32 %5, -1
  %i.md = zext i32 %i.mc to i64                   ; 6 uses
  %i.me = mul i64 %1, %i.md
  %i.mf = shl nuw nsw i64 %wide.trip.count244, 1  ; 8 uses
  %i.mg = getelementptr i8, ptr %0, i64 %i.me
  %scevgep377.a = getelementptr i8, ptr %i.mg, i64 %i.mf ; 2 uses
  %scevgep378.a = getelementptr i8, ptr %i.af, i64 8
  %scevgep379.a = getelementptr i8, ptr %2, i64 %.idx205
  %i.mh = add nuw nsw i64 %i.md, 4
  %i.mi = mul i64 %3, %i.mh
  %i.mj = getelementptr i8, ptr %2, i64 %i.mi
  %scevgep380.a = getelementptr i8, ptr %i.mj, i64 %i.mf
  %scevgep381.a = getelementptr i8, ptr %2, i64 %.idx204
  %i.mk = mul i64 %3, %i.md                       ; 3 uses
  %i.ml = getelementptr i8, ptr %2, i64 %i.mk
  %i.mm = getelementptr i8, ptr %i.ml, i64 %.idx204
  %scevgep382.a = getelementptr i8, ptr %i.mm, i64 %i.mf
  %scevgep383.a = getelementptr i8, ptr %2, i64 %.idx203
  %i.mn = add nuw nsw i64 %i.md, 2
  %i.mo = mul i64 %3, %i.mn
  %i.mp = getelementptr i8, ptr %2, i64 %i.mo
  %scevgep384.a = getelementptr i8, ptr %i.mp, i64 %i.mf
  %scevgep385.a = getelementptr i8, ptr %2, i64 %3
  %i.mq = add nuw nsw i64 %i.md, 1
  %i.mr = mul i64 %3, %i.mq
  %i.ms = getelementptr i8, ptr %2, i64 %i.mr
  %scevgep386.a = getelementptr i8, ptr %i.ms, i64 %i.mf
  %i.mt = add i64 %i.mk, %i.mf                    ; 2 uses
  %scevgep387.a = getelementptr i8, ptr %2, i64 %i.mt
  %i.mu = mul i64 %i.aj, -2
  %scevgep388.a = getelementptr i8, ptr %2, i64 %i.mu
  %i.mv = sub i64 %i.mt, %3
  %scevgep389.a = getelementptr i8, ptr %2, i64 %i.mv
  %i.mw = mul i64 %3, -2
  %scevgep390.a = getelementptr i8, ptr %2, i64 %i.mw
  %i.mx = add nsw i64 %i.md, -2
  %i.my = mul i64 %3, %i.mx
  %i.mz = getelementptr i8, ptr %2, i64 %i.my
  %scevgep391.a = getelementptr i8, ptr %i.mz, i64 %i.mf
  %scevgep392.a = getelementptr i8, ptr %2, i64 %.idx
  %i.na = add i64 %i.mk, %i.mf
  %i.nb = sub i64 %i.na, %.idx204
  %scevgep393 = getelementptr i8, ptr %2, i64 %i.nb
  %i.nc = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.nd = shufflevector <8 x ptr> %i.nc, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.ne = insertelement <8 x ptr> poison, ptr %scevgep378.a, i64 0
  %i.nf = insertelement <8 x ptr> %i.ne, ptr %scevgep380.a, i64 1
  %i.ng = insertelement <8 x ptr> %i.nf, ptr %scevgep382.a, i64 2
  %i.nh = insertelement <8 x ptr> %i.ng, ptr %scevgep384.a, i64 3
  %i.ni = insertelement <8 x ptr> %i.nh, ptr %scevgep386.a, i64 4
  %i.nj = insertelement <8 x ptr> %i.ni, ptr %scevgep387.a, i64 5
  %i.nk = insertelement <8 x ptr> %i.nj, ptr %scevgep389.a, i64 6
  %i.nl = insertelement <8 x ptr> %i.nk, ptr %scevgep391.a, i64 7
  %i.nm = insertelement <8 x ptr> poison, ptr %i.af, i64 0
  %i.nn = insertelement <8 x ptr> %i.nm, ptr %scevgep379.a, i64 1
  %i.no = insertelement <8 x ptr> %i.nn, ptr %scevgep381.a, i64 2
  %i.np = insertelement <8 x ptr> %i.no, ptr %scevgep383.a, i64 3
  %i.nq = insertelement <8 x ptr> %i.np, ptr %scevgep385.a, i64 4
  %i.nr = insertelement <8 x ptr> %i.nq, ptr %2, i64 5
  %i.ns = insertelement <8 x ptr> %i.nr, ptr %scevgep388.a, i64 6
  %i.nt = insertelement <8 x ptr> %i.ns, ptr %scevgep390.a, i64 7
  %i.nu = insertelement <8 x ptr> poison, ptr %scevgep377.a, i64 0
  %i.nv = shufflevector <8 x ptr> %i.nu, <8 x ptr> poison, <8 x i32> zeroinitializer
  %min.iters.check447 = icmp ult i32 %4, 8
  %i.nw = icmp ult <8 x ptr> %i.nd, %i.nl
  %i.nx = icmp ult <8 x ptr> %i.nt, %i.nv
  %i.ny = and <8 x i1> %i.nw, %i.nx
  %bound0440 = icmp ult ptr %0, %scevgep393
  %bound1441 = icmp ult ptr %scevgep392.a, %scevgep377.a
  %found.conflict442 = and i1 %bound0440, %bound1441
  %i.nz = bitcast <8 x i1> %i.ny to i8
  %i.oa = icmp ne i8 %i.nz, 0
  %op.rdx488 = or i1 %i.oa, %found.conflict442
  %10 = or i64 %1, %3
  %op.rdx466 = icmp slt i64 %10, 0
  %op.rdx490 = or i1 %op.rdx488, %op.rdx466
  %n.vec449 = and i64 %wide.trip.count244, 2147483640 ; 3 uses
  %broadcast.splatinsert466 = insertelement <8 x i32> poison, i32 %9, i64 0
  %broadcast.splat467 = shufflevector <8 x i32> %broadcast.splatinsert466, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n480 = icmp eq i64 %n.vec449, %wide.trip.count244
  br label %.lr.ph227

.lr.ph227:                                        ; preds = %.lr.ph227.preheader, %._crit_edge228
  %.2189 = phi i32 [ %i.qm, %._crit_edge228 ], [ %5, %.lr.ph227.preheader ]
  %.2186 = phi ptr [ %i.oc, %._crit_edge228 ], [ %2, %.lr.ph227.preheader ] ; 11 uses
  %.2 = phi ptr [ %i.ql, %._crit_edge228 ], [ %0, %.lr.ph227.preheader ] ; 3 uses
  %i.ob = getelementptr i8, ptr %.2186, i64 %.idx ; 2 uses
  %i.oc = getelementptr i8, ptr %.2186, i64 %3    ; 3 uses
  %i.od = getelementptr i8, ptr %.2186, i64 %.idx203 ; 2 uses
  %i.oe = getelementptr i8, ptr %.2186, i64 %.idx204 ; 2 uses
  %i.of = getelementptr i8, ptr %.2186, i64 %.idx205 ; 2 uses
  %brmerge495 = select i1 %min.iters.check447, i1 true, i1 %op.rdx490
  br i1 %brmerge495, label %scalar.ph446.preheader, label %vector.ph448

vector.ph448:                                     ; preds = %.lr.ph227
  %i.og = load i8, ptr %i.af, align 1, !tbaa !13, !alias.scope !212
  %broadcast.splatinsert450 = insertelement <8 x i8> poison, i8 %i.og, i64 0
  %broadcast.splat451 = shufflevector <8 x i8> %broadcast.splatinsert450, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.oh = sext <8 x i8> %broadcast.splat451 to <8 x i32>
  %i.oi = load i8, ptr %i.lv, align 1, !tbaa !13, !alias.scope !212
  %broadcast.splatinsert452 = insertelement <8 x i8> poison, i8 %i.oi, i64 0
  %broadcast.splat453 = shufflevector <8 x i8> %broadcast.splatinsert452, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.oj = sext <8 x i8> %broadcast.splat453 to <8 x i32>
  %i.ok = load i8, ptr %i.lw, align 1, !tbaa !13, !alias.scope !212
  %broadcast.splatinsert454 = insertelement <8 x i8> poison, i8 %i.ok, i64 0
  %broadcast.splat455 = shufflevector <8 x i8> %broadcast.splatinsert454, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ol = sext <8 x i8> %broadcast.splat455 to <8 x i32>
  %i.om = load i8, ptr %i.lx, align 1, !tbaa !13, !alias.scope !212
  %broadcast.splatinsert456 = insertelement <8 x i8> poison, i8 %i.om, i64 0
  %broadcast.splat457 = shufflevector <8 x i8> %broadcast.splatinsert456, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.on = sext <8 x i8> %broadcast.splat457 to <8 x i32>
  %i.oo = load i8, ptr %i.ly, align 1, !tbaa !13, !alias.scope !212
  %broadcast.splatinsert458 = insertelement <8 x i8> poison, i8 %i.oo, i64 0
  %broadcast.splat459 = shufflevector <8 x i8> %broadcast.splatinsert458, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.op = sext <8 x i8> %broadcast.splat459 to <8 x i32>
  %i.oq = load i8, ptr %i.lz, align 1, !tbaa !13, !alias.scope !212
  %broadcast.splatinsert460 = insertelement <8 x i8> poison, i8 %i.oq, i64 0
  %broadcast.splat461 = shufflevector <8 x i8> %broadcast.splatinsert460, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.or = sext <8 x i8> %broadcast.splat461 to <8 x i32>
  %i.os = load i8, ptr %i.ma, align 1, !tbaa !13, !alias.scope !212
  %broadcast.splatinsert462 = insertelement <8 x i8> poison, i8 %i.os, i64 0
  %broadcast.splat463 = shufflevector <8 x i8> %broadcast.splatinsert462, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ot = sext <8 x i8> %broadcast.splat463 to <8 x i32>
  %i.ou = load i8, ptr %i.mb, align 1, !tbaa !13, !alias.scope !212
  %broadcast.splatinsert464 = insertelement <8 x i8> poison, i8 %i.ou, i64 0
  %broadcast.splat465 = shufflevector <8 x i8> %broadcast.splatinsert464, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ov = sext <8 x i8> %broadcast.splat465 to <8 x i32>
  br label %vector.body468

vector.body468:                                   ; preds = %vector.body468, %vector.ph448
  %index469 = phi i64 [ 0, %vector.ph448 ], [ %index.next478, %vector.body468 ] ; 10 uses
  %i.ow = getelementptr [2 x i8], ptr %i.ob, i64 %index469
  %wide.load470 = load <8 x i16>, ptr %i.ow, align 2, !tbaa !10, !alias.scope !213
  %i.ox = zext <8 x i16> %wide.load470 to <8 x i32>
  %i.oy = mul nsw <8 x i32> %i.ox, %i.oh
  %i.oz = sub i64 %index469, %3
  %i.pa = getelementptr inbounds [2 x i8], ptr %.2186, i64 %i.oz
  %wide.load471 = load <8 x i16>, ptr %i.pa, align 2, !tbaa !10, !alias.scope !214
  %i.pb = zext <8 x i16> %wide.load471 to <8 x i32>
  %i.pc = mul nsw <8 x i32> %i.pb, %i.oj
  %i.pd = sub nsw i64 %index469, %i.aj
  %i.pe = getelementptr inbounds [2 x i8], ptr %.2186, i64 %i.pd
  %wide.load472 = load <8 x i16>, ptr %i.pe, align 2, !tbaa !10, !alias.scope !215
  %i.pf = zext <8 x i16> %wide.load472 to <8 x i32>
  %i.pg = mul nsw <8 x i32> %i.pf, %i.ol
  %i.ph = getelementptr inbounds nuw [2 x i8], ptr %.2186, i64 %index469
  %wide.load473 = load <8 x i16>, ptr %i.ph, align 2, !tbaa !10, !alias.scope !216
  %i.pi = zext <8 x i16> %wide.load473 to <8 x i32>
  %i.pj = mul nsw <8 x i32> %i.pi, %i.on
  %i.pk = getelementptr [2 x i8], ptr %i.oc, i64 %index469
  %wide.load474 = load <8 x i16>, ptr %i.pk, align 2, !tbaa !10, !alias.scope !217
  %i.pl = zext <8 x i16> %wide.load474 to <8 x i32>
  %i.pm = mul nsw <8 x i32> %i.pl, %i.op
  %i.pn = getelementptr [2 x i8], ptr %i.od, i64 %index469
  %wide.load475 = load <8 x i16>, ptr %i.pn, align 2, !tbaa !10, !alias.scope !218
  %i.po = zext <8 x i16> %wide.load475 to <8 x i32>
  %i.pp = mul nsw <8 x i32> %i.po, %i.or
  %i.pq = getelementptr [2 x i8], ptr %i.oe, i64 %index469
  %wide.load476 = load <8 x i16>, ptr %i.pq, align 2, !tbaa !10, !alias.scope !219
  %i.pr = zext <8 x i16> %wide.load476 to <8 x i32>
  %i.ps = mul nsw <8 x i32> %i.pr, %i.ot
  %i.pt = getelementptr [2 x i8], ptr %i.of, i64 %index469
  %wide.load477 = load <8 x i16>, ptr %i.pt, align 2, !tbaa !10, !alias.scope !220
  %i.pu = zext <8 x i16> %wide.load477 to <8 x i32>
  %i.pv = mul nsw <8 x i32> %i.pu, %i.ov
  %i.pw = add nsw <8 x i32> %i.oy, splat (i32 32)
  %i.px = add nsw <8 x i32> %i.pw, %i.pc
  %i.py = add nsw <8 x i32> %i.px, %i.pg
  %i.pz = add nsw <8 x i32> %i.py, %i.pj
  %i.qa = add nsw <8 x i32> %i.pz, %i.pm
  %i.qb = add nsw <8 x i32> %i.qa, %i.pp
  %i.qc = add nsw <8 x i32> %i.qb, %i.ps
  %i.qd = add nsw <8 x i32> %i.qc, %i.pv
  %i.qe = ashr <8 x i32> %i.qd, splat (i32 6)     ; 2 uses
  %i.qf = icmp slt <8 x i32> %i.qe, zeroinitializer
  %i.qg = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.qe, <8 x i32> %broadcast.splat467)
  %i.qh = trunc <8 x i32> %i.qg to <8 x i16>
  %i.qi = select <8 x i1> %i.qf, <8 x i16> zeroinitializer, <8 x i16> %i.qh
  %i.qj = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %index469
  store <8 x i16> %i.qi, ptr %i.qj, align 2, !tbaa !10, !alias.scope !221, !noalias !222
  %index.next478 = add nuw i64 %index469, 8       ; 2 uses
  %i.qk = icmp eq i64 %index.next478, %n.vec449
  br i1 %i.qk, label %middle.block479, label %vector.body468, !llvm.loop !204

middle.block479:                                  ; preds = %vector.body468
  br i1 %cmp.n480, label %._crit_edge228, label %scalar.ph446.preheader

scalar.ph446.preheader:                           ; preds = %.lr.ph227, %middle.block479
  %indvars.iv241.ph = phi i64 [ %n.vec449, %middle.block479 ], [ 0, %.lr.ph227 ]
  br label %scalar.ph446

._crit_edge228:                                   ; preds = %scalar.ph446, %middle.block479
  %i.ql = getelementptr inbounds i8, ptr %.2, i64 %1
  %i.qm = add nsw i32 %.2189, -1                  ; 2 uses
  %.not202 = icmp eq i32 %i.qm, 0
  br i1 %.not202, label %.loopexit.split, label %.lr.ph227

scalar.ph446:                                     ; preds = %scalar.ph446.preheader, %scalar.ph446
  %indvars.iv241 = phi i64 [ %indvars.iv.next242, %scalar.ph446 ], [ %indvars.iv241.ph, %scalar.ph446.preheader ] ; 10 uses
  %i.qn = load i8, ptr %i.af, align 1, !tbaa !13
  %i.qo = sext i8 %i.qn to i32
  %i.qp = getelementptr [2 x i8], ptr %i.ob, i64 %indvars.iv241
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !10
  %i.qr = zext i16 %i.qq to i32
  %i.qs = mul nsw i32 %i.qr, %i.qo
  %i.qt = load i8, ptr %i.lv, align 1, !tbaa !13
  %i.qu = sext i8 %i.qt to i32
  %i.qv = sub i64 %indvars.iv241, %3
  %i.qw = getelementptr inbounds [2 x i8], ptr %.2186, i64 %i.qv
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !10
  %i.qy = zext i16 %i.qx to i32
  %i.qz = mul nsw i32 %i.qy, %i.qu
  %i.ra = load i8, ptr %i.lw, align 1, !tbaa !13
  %i.rb = sext i8 %i.ra to i32
  %i.rc = sub nsw i64 %indvars.iv241, %i.aj
  %i.rd = getelementptr inbounds [2 x i8], ptr %.2186, i64 %i.rc
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !10
  %i.rf = zext i16 %i.re to i32
  %i.rg = mul nsw i32 %i.rf, %i.rb
  %i.rh = load i8, ptr %i.lx, align 1, !tbaa !13
  %i.ri = sext i8 %i.rh to i32
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr %.2186, i64 %indvars.iv241
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !10
  %i.rl = zext i16 %i.rk to i32
  %i.rm = mul nsw i32 %i.rl, %i.ri
  %i.rn = load i8, ptr %i.ly, align 1, !tbaa !13
  %i.ro = sext i8 %i.rn to i32
  %i.rp = getelementptr [2 x i8], ptr %i.oc, i64 %indvars.iv241
  %i.rq = load i16, ptr %i.rp, align 2, !tbaa !10
  %i.rr = zext i16 %i.rq to i32
  %i.rs = mul nsw i32 %i.rr, %i.ro
  %i.rt = load i8, ptr %i.lz, align 1, !tbaa !13
  %i.ru = sext i8 %i.rt to i32
  %i.rv = getelementptr [2 x i8], ptr %i.od, i64 %indvars.iv241
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !10
  %i.rx = zext i16 %i.rw to i32
  %i.ry = mul nsw i32 %i.rx, %i.ru
  %i.rz = load i8, ptr %i.ma, align 1, !tbaa !13
  %i.sa = sext i8 %i.rz to i32
  %i.sb = getelementptr [2 x i8], ptr %i.oe, i64 %indvars.iv241
  %i.sc = load i16, ptr %i.sb, align 2, !tbaa !10
  %i.sd = zext i16 %i.sc to i32
  %i.se = mul nsw i32 %i.sd, %i.sa
  %i.sf = load i8, ptr %i.mb, align 1, !tbaa !13
  %i.sg = sext i8 %i.sf to i32
  %i.sh = getelementptr [2 x i8], ptr %i.of, i64 %indvars.iv241
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !10
  %i.sj = zext i16 %i.si to i32
  %i.sk = mul nsw i32 %i.sj, %i.sg
  %i.sl = add nsw i32 %i.qs, 32
  %i.sm = add nsw i32 %i.sl, %i.qz
  %i.sn = add nsw i32 %i.sm, %i.rg
  %i.so = add nsw i32 %i.sn, %i.rm
  %i.sp = add nsw i32 %i.so, %i.rs
  %i.sq = add nsw i32 %i.sp, %i.ry
  %i.sr = add nsw i32 %i.sq, %i.se
  %i.ss = add nsw i32 %i.sr, %i.sk
  %i.st = ashr i32 %i.ss, 6                       ; 2 uses
  %i.su = icmp slt i32 %i.st, 0
  %i.sv = tail call i32 @llvm.smin.i32(i32 %i.st, i32 %9)
  %i.sw = trunc i32 %i.sv to i16
  %i.sx = select i1 %i.su, i16 0, i16 %i.sw
  %i.sy = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %indvars.iv241
  store i16 %i.sx, ptr %i.sy, align 2, !tbaa !10
  %indvars.iv.next242 = add nuw nsw i64 %indvars.iv241, 1 ; 2 uses
  %exitcond245.not = icmp eq i64 %indvars.iv.next242, %wide.trip.count244
  br i1 %exitcond245.not, label %._crit_edge228, label %scalar.ph446, !llvm.loop !205

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @put_c(ptr noundef %0, i64 noundef %i.ah, ptr noundef %2, i64 noundef %i.aj, i32 noundef %4, i32 noundef %5)
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %._crit_edge224, %._crit_edge228, %.preheader212, %.preheader, %bb.m, %.split220
  ret void
}

end_hunk_3
begin_hunk_4_@put_8tap_scaled_c:bb.a
  %stride.check227 = icmp slt i64 %1, 0
  %n.vec266 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert283 = insertelement <8 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat284 = shufflevector <8 x i32> %broadcast.splatinsert283, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert285 = insertelement <8 x i32> poison, i32 %i.ak, i64 0
  %broadcast.splat286 = shufflevector <8 x i32> %broadcast.splatinsert285, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert287 = insertelement <8 x i32> poison, i32 %11, i64 0
  %broadcast.splat288 = shufflevector <8 x i32> %broadcast.splatinsert287, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n301 = icmp eq i64 %n.vec266, %wide.trip.count
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert210 = insertelement <8 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat211 = shufflevector <8 x i32> %broadcast.splatinsert210, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert212 = insertelement <8 x i32> poison, i32 %11, i64 0
  %broadcast.splat213 = shufflevector <8 x i32> %broadcast.splatinsert212, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter310 = and i64 %wide.trip.count, 1
  %lcmp.mod311.not = icmp eq i64 %xtraiter310, 0
  %i.ax = add nsw i64 %wide.trip.count, -1
  br label %bb.b

._crit_edge150:                                   ; preds = %._crit_edge, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  ret void

bb.b:                                             ; preds = %.lr.ph149, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph149 ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.56.187 = phi ptr [ %i.k, %.lr.ph149 ], [ %.56.200, %._crit_edge ]
  %.0111147 = phi i32 [ 0, %.lr.ph149 ], [ %i.kl, %._crit_edge ]
  %.0113146 = phi i32 [ -8, %.lr.ph149 ], [ %.1114.lcssa202, %._crit_edge ] ; 7 uses
  %.0115144 = phi ptr [ %0, %.lr.ph149 ], [ %i.kk, %._crit_edge ] ; 7 uses
  %.0116143 = phi ptr [ %i.r, %.lr.ph149 ], [ %.1117.lcssa201, %._crit_edge ] ; 4 uses
  %.0118142 = phi i32 [ %7, %.lr.ph149 ], [ %i.kj, %._crit_edge ] ; 3 uses
  %i.ay = mul i64 %1, %indvar
  %i.az = add i64 %i.ay, %i.a
  %i.ba = ashr i32 %.0118142, 10                  ; 8 uses
  %i.bb = lshr i32 %.0118142, 6
  %i.bc = and i32 %i.bb, 15                       ; 2 uses
  %.not = icmp eq i32 %i.bc, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bd = zext nneg i32 %i.bc to i64              ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.be = getelementptr [8 x i8], ptr %i.y, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 -8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bg = getelementptr [8 x i8], ptr %i.w, i64 %i.bd
  %i.bh = getelementptr i8, ptr %i.bg, i64 352
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  %i.bi = phi ptr [ null, %bb.b ], [ %i.bf, %bb.d ], [ %i.bh, %bb.e ] ; 12 uses
  %i.bj = icmp slt i32 %.0113146, %i.ba
  br i1 %i.bj, label %.lr.ph138, label %.preheader

.lr.ph138:                                        ; preds = %bb.f
  br i1 %i.z, label %.lr.ph138.split.us, label %.lr.ph138.split.preheader

.lr.ph138.split.preheader:                        ; preds = %.lr.ph138
  %i.bk = sub i32 %i.ba, %.0113146
  %xtraiter = and i32 %i.bk, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph138.split.prol.loopexit, label %.lr.ph138.split.prol

.lr.ph138.split.prol:                             ; preds = %.lr.ph138.split.preheader, %.lr.ph138.split.prol
  %.1114136.prol = phi i32 [ %i.bm, %.lr.ph138.split.prol ], [ %.0113146, %.lr.ph138.split.preheader ]
  %.1117135.prol = phi ptr [ %i.bl, %.lr.ph138.split.prol ], [ %.0116143, %.lr.ph138.split.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph138.split.prol ], [ 0, %.lr.ph138.split.preheader ]
  %.0..0..prol = load ptr, ptr %i.c, align 16, !tbaa !17 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx315, i64 56, i1 false), !tbaa !17
  store ptr %.0..0..prol, ptr %.56..56..sroa_idx326, align 8, !tbaa !17
  %i.bl = getelementptr inbounds i8, ptr %.1117135.prol, i64 %3 ; 3 uses
  %i.bm = add nsw i32 %.1114136.prol, 1           ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph138.split.prol.loopexit, label %.lr.ph138.split.prol, !llvm.loop !224

.lr.ph138.split.prol.loopexit:                    ; preds = %.lr.ph138.split.prol, %.lr.ph138.split.preheader
  %.0..lcssa.unr = phi ptr [ poison, %.lr.ph138.split.preheader ], [ %.0..0..prol, %.lr.ph138.split.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph138.split.preheader ], [ %i.bl, %.lr.ph138.split.prol ]
  %.1114136.unr = phi i32 [ %.0113146, %.lr.ph138.split.preheader ], [ %i.bm, %.lr.ph138.split.prol ]
  %.1117135.unr = phi ptr [ %.0116143, %.lr.ph138.split.preheader ], [ %i.bl, %.lr.ph138.split.prol ]
  %i.bn = sub i32 %.0113146, %i.ba
  %i.bo = icmp ugt i32 %i.bn, -4
  br i1 %i.bo, label %._crit_edge, label %.lr.ph138.split

.lr.ph138.split.us:                               ; preds = %.lr.ph138, %._crit_edge.us
  %.1114136.us = phi i32 [ %i.ct, %._crit_edge.us ], [ %.0113146, %.lr.ph138 ]
  %.1117135.us = phi ptr [ %i.cs, %._crit_edge.us ], [ %.0116143, %.lr.ph138 ] ; 3 uses
  %.0..0.174 = load ptr, ptr %i.c, align 16, !tbaa !17 ; 3 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx314, i64 56, i1 false), !tbaa !17
  store ptr %.0..0.174, ptr %.56..56..sroa_idx325, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph138.split.us, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph138.split.us ], [ %indvars.iv.next, %bb.j ] ; 2 uses
  %.0108134.us = phi i32 [ 0, %.lr.ph138.split.us ], [ %i.cq, %bb.j ] ; 3 uses
  %.0109133.us = phi i32 [ %6, %.lr.ph138.split.us ], [ %i.cr, %bb.j ] ; 2 uses
  %i.bp = ashr i32 %.0109133.us, 6                ; 2 uses
  %.not126.us = icmp eq i32 %i.bp, 0
  br i1 %.not126.us, label %.thread.us, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.ad, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 352
  %i.bt = getelementptr [8 x i8], ptr %i.ag, i64 %i.bq
  %i.bu = getelementptr i8, ptr %i.bt, i64 -8
  %i.bv = select i1 %i.aa, ptr %i.bu, ptr %i.bs   ; 2 uses
  %.not127.us = icmp eq ptr %i.bv, null
  br i1 %.not127.us, label %.thread.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = sext i32 %.0108134.us to i64
  %i.bx = getelementptr [2 x i8], ptr %.1117135.us, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -6
  %i.bz = load <8 x i8>, ptr %i.bv, align 8, !tbaa !13
  %i.ca = sext <8 x i8> %i.bz to <8 x i32>
  %i.cb = load <8 x i16>, ptr %i.by, align 2, !tbaa !10
  %i.cc = zext <8 x i16> %i.cb to <8 x i32>
  %i.cd = mul nsw <8 x i32> %i.cc, %i.ca
  %i.ce = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.cd)
  %op.rdx304 = add i32 %i.ce, %i.aj
  %i.cf = ashr i32 %op.rdx304, %i.ah
  br label %bb.j

.thread.us:                                       ; preds = %bb.h, %bb.g
  %i.cg = sext i32 %.0108134.us to i64
  %i.ch = getelementptr inbounds [2 x i8], ptr %.1117135.us, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !10
  %i.cj = zext i16 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, %i.m
  br label %bb.j

bb.j:                                             ; preds = %.thread.us, %bb.i
  %i.cl = phi i32 [ %i.cf, %bb.i ], [ %i.ck, %.thread.us ]
  %i.cm = trunc i32 %i.cl to i16
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %.0..0.174, i64 %indvars.iv
  store i16 %i.cm, ptr %i.cn, align 2, !tbaa !10
  %i.co = add nsw i32 %.0109133.us, %8            ; 2 uses
  %i.cp = ashr i32 %i.co, 10
  %i.cq = add nsw i32 %i.cp, %.0108134.us
  %i.cr = and i32 %i.co, 1023
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond160.not, label %._crit_edge.us, label %bb.g

._crit_edge.us:                                   ; preds = %bb.j
  %i.cs = getelementptr inbounds i8, ptr %.1117135.us, i64 %3 ; 2 uses
  %i.ct = add nsw i32 %.1114136.us, 1             ; 2 uses
  %exitcond161.not = icmp eq i32 %i.ct, %i.ba
  br i1 %exitcond161.not, label %.preheader, label %.lr.ph138.split.us

.preheader:                                       ; preds = %._crit_edge.us, %bb.f
  %.56. = phi ptr [ %.56.187, %bb.f ], [ %.0..0.174, %._crit_edge.us ] ; 10 uses
  %.1117.lcssa = phi ptr [ %.0116143, %bb.f ], [ %i.cs, %._crit_edge.us ] ; 6 uses
  %.1114.lcssa = phi i32 [ %.0113146, %bb.f ], [ %i.ba, %._crit_edge.us ] ; 6 uses
  br i1 %i.z, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %.not125 = icmp eq ptr %i.bi, null
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bi, i64 2 ; 2 uses
  %.16..16. = load ptr, ptr %.16..16..sroa_idx321, align 16 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bi, i64 3 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bi, i64 4 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bi, i64 5 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bi, i64 6 ; 2 uses
  %.0.313 = load <2 x ptr>, ptr %i.c, align 16
  %.8..8. = load ptr, ptr %.8..8..sroa_idx320, align 8 ; 3 uses
  %.0..0.173 = load ptr, ptr %i.c, align 16       ; 3 uses
  %.24. = load <2 x ptr>, ptr %.24..24..sroa_idx, align 8 ; 4 uses
  %i.da = extractelement <2 x ptr> %.24., i64 0   ; 8 uses
  %.40. = load <2 x ptr>, ptr %.40..40..sroa_idx, align 8 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.bi, i64 7 ; 2 uses
  br i1 %.not125, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  br i1 %min.iters.check, label %.lr.ph.split.preheader306, label %vector.memcheck214

vector.memcheck214:                               ; preds = %.lr.ph.split.preheader
  %scevgep215 = getelementptr i8, ptr %i.bi, i64 8
  %scevgep216 = getelementptr i8, ptr %.0..0.173, i64 %i.ar
  %scevgep217 = getelementptr i8, ptr %.8..8., i64 %i.ar
  %scevgep218 = getelementptr i8, ptr %.16..16., i64 %i.ar
  %scevgep219 = getelementptr i8, ptr %i.da, i64 %i.ar
  %i.dc = extractelement <2 x ptr> %.24., i64 1   ; 2 uses
  %scevgep220 = getelementptr i8, ptr %i.dc, i64 %i.ar
  %i.dd = extractelement <2 x ptr> %.40., i64 0   ; 2 uses
  %scevgep221 = getelementptr i8, ptr %i.dd, i64 %i.ar
  %i.de = extractelement <2 x ptr> %.40., i64 1   ; 2 uses
  %scevgep222 = getelementptr i8, ptr %i.de, i64 %i.ar
  %scevgep223 = getelementptr i8, ptr %.56., i64 %i.ar
  %12 = shufflevector <2 x ptr> %.0.313, <2 x ptr> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.df = insertelement <8 x ptr> %12, ptr %i.bi, i64 0
  %i.dg = insertelement <8 x ptr> %i.df, ptr %.16..16., i64 3
  %i.dh = shufflevector <2 x ptr> %.40., <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.di = shufflevector <8 x ptr> %i.dg, <8 x ptr> %i.dh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 8, i32 9>
  %i.dj = shufflevector <2 x ptr> %.24., <2 x ptr> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <8 x ptr> %i.di, <8 x ptr> %i.dj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.dl = icmp ult <8 x ptr> %i.dk, %i.aw
  %i.dm = insertelement <8 x ptr> poison, ptr %scevgep215, i64 0
  %i.dn = insertelement <8 x ptr> %i.dm, ptr %scevgep216, i64 1
  %i.do = insertelement <8 x ptr> %i.dn, ptr %scevgep217, i64 2
  %i.dp = insertelement <8 x ptr> %i.do, ptr %scevgep218, i64 3
  %i.dq = insertelement <8 x ptr> %i.dp, ptr %scevgep219, i64 4
  %i.dr = insertelement <8 x ptr> %i.dq, ptr %scevgep220, i64 5
  %i.ds = insertelement <8 x ptr> %i.dr, ptr %scevgep221, i64 6
  %i.dt = insertelement <8 x ptr> %i.ds, ptr %scevgep222, i64 7
  %i.du = icmp ult <8 x ptr> %i.au, %i.dt
  %i.dv = and <8 x i1> %i.du, %i.dl
  %bound0258 = icmp ult ptr %0, %scevgep223
  %bound1259 = icmp ult ptr %.56., %scevgep
  %found.conflict260 = and i1 %bound0258, %bound1259
  %i.dw = bitcast <8 x i1> %i.dv to i8
  %i.dx = icmp ne i8 %i.dw, 0
  %op.rdx = or i1 %i.dx, %found.conflict260
  %op.rdx303 = or i1 %op.rdx, %stride.check227
  br i1 %op.rdx303, label %.lr.ph.split.preheader306, label %vector.ph265

vector.ph265:                                     ; preds = %vector.memcheck214
  %i.dy = load i8, ptr %i.bi, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert267.a = insertelement <8 x i8> poison, i8 %i.dy, i64 0
  %broadcast.splat268.a = shufflevector <8 x i8> %broadcast.splatinsert267.a, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.dz = sext <8 x i8> %broadcast.splat268.a to <8 x i32>
  %i.ea = load i8, ptr %i.cu, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert269.a = insertelement <8 x i8> poison, i8 %i.ea, i64 0
  %broadcast.splat270.a = shufflevector <8 x i8> %broadcast.splatinsert269.a, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.eb = sext <8 x i8> %broadcast.splat270.a to <8 x i32>
  %i.ec = load i8, ptr %i.cv, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert271.a = insertelement <8 x i8> poison, i8 %i.ec, i64 0
  %broadcast.splat272.a = shufflevector <8 x i8> %broadcast.splatinsert271.a, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ed = sext <8 x i8> %broadcast.splat272.a to <8 x i32>
  %i.ee = load i8, ptr %i.cw, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert273.a = insertelement <8 x i8> poison, i8 %i.ee, i64 0
  %broadcast.splat274.a = shufflevector <8 x i8> %broadcast.splatinsert273.a, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ef = sext <8 x i8> %broadcast.splat274.a to <8 x i32>
  %i.eg = load i8, ptr %i.cx, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert275 = insertelement <8 x i8> poison, i8 %i.eg, i64 0
  %broadcast.splat276 = shufflevector <8 x i8> %broadcast.splatinsert275, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.eh = sext <8 x i8> %broadcast.splat276 to <8 x i32>
  %i.ei = load i8, ptr %i.cy, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert277 = insertelement <8 x i8> poison, i8 %i.ei, i64 0
  %broadcast.splat278 = shufflevector <8 x i8> %broadcast.splatinsert277, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ej = sext <8 x i8> %broadcast.splat278 to <8 x i32>
  %i.ek = load i8, ptr %i.cz, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert279 = insertelement <8 x i8> poison, i8 %i.ek, i64 0
  %broadcast.splat280 = shufflevector <8 x i8> %broadcast.splatinsert279, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.el = sext <8 x i8> %broadcast.splat280 to <8 x i32>
  %i.em = load i8, ptr %i.db, align 1, !tbaa !13, !alias.scope !240
  %broadcast.splatinsert281 = insertelement <8 x i8> poison, i8 %i.em, i64 0
  %broadcast.splat282 = shufflevector <8 x i8> %broadcast.splatinsert281, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.en = sext <8 x i8> %broadcast.splat282 to <8 x i32>
  br label %vector.body289

vector.body289:                                   ; preds = %vector.body289, %vector.ph265
  %index290 = phi i64 [ 0, %vector.ph265 ], [ %index.next299, %vector.body289 ] ; 10 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.0..0.173, i64 %index290
  %wide.load291 = load <8 x i16>, ptr %i.eo, align 2, !tbaa !10, !alias.scope !241
  %i.ep = sext <8 x i16> %wide.load291 to <8 x i32>
  %i.eq = mul nsw <8 x i32> %i.ep, %i.dz
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %.8..8., i64 %index290
  %wide.load292 = load <8 x i16>, ptr %i.er, align 2, !tbaa !10, !alias.scope !242
  %i.es = sext <8 x i16> %wide.load292 to <8 x i32>
  %i.et = mul nsw <8 x i32> %i.es, %i.eb
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr %.16..16., i64 %index290
  %wide.load293 = load <8 x i16>, ptr %i.eu, align 2, !tbaa !10, !alias.scope !243
  %i.ev = sext <8 x i16> %wide.load293 to <8 x i32>
  %i.ew = mul nsw <8 x i32> %i.ev, %i.ed
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %index290
  %wide.load294 = load <8 x i16>, ptr %i.ex, align 2, !tbaa !10, !alias.scope !244
  %i.ey = sext <8 x i16> %wide.load294 to <8 x i32>
  %i.ez = mul nsw <8 x i32> %i.ey, %i.ef
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr %i.dc, i64 %index290
  %wide.load295 = load <8 x i16>, ptr %i.fa, align 2, !tbaa !10, !alias.scope !245
  %i.fb = sext <8 x i16> %wide.load295 to <8 x i32>
  %i.fc = mul nsw <8 x i32> %i.fb, %i.eh
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %i.dd, i64 %index290
  %wide.load296 = load <8 x i16>, ptr %i.fd, align 2, !tbaa !10, !alias.scope !246
  %i.fe = sext <8 x i16> %wide.load296 to <8 x i32>
  %i.ff = mul nsw <8 x i32> %i.fe, %i.ej
  %i.fg = getelementptr inbounds nuw [2 x i8], ptr %i.de, i64 %index290
  %wide.load297 = load <8 x i16>, ptr %i.fg, align 2, !tbaa !10, !alias.scope !247
  %i.fh = sext <8 x i16> %wide.load297 to <8 x i32>
  %i.fi = mul nsw <8 x i32> %i.fh, %i.el
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %.56., i64 %index290
  %wide.load298 = load <8 x i16>, ptr %i.fj, align 2, !tbaa !10, !alias.scope !248
  %i.fk = sext <8 x i16> %wide.load298 to <8 x i32>
  %i.fl = mul nsw <8 x i32> %i.fk, %i.en
  %i.fm = add nsw <8 x i32> %i.eq, %broadcast.splat284
  %i.fn = add nsw <8 x i32> %i.fm, %i.et
  %i.fo = add nsw <8 x i32> %i.fn, %i.ew
  %i.fp = add nsw <8 x i32> %i.fo, %i.ez
  %i.fq = add nsw <8 x i32> %i.fp, %i.fc
  %i.fr = add nsw <8 x i32> %i.fq, %i.ff
  %i.fs = add nsw <8 x i32> %i.fr, %i.fi
  %i.ft = add nsw <8 x i32> %i.fs, %i.fl
  %i.fu = ashr <8 x i32> %i.ft, %broadcast.splat286 ; 2 uses
  %i.fv = icmp slt <8 x i32> %i.fu, zeroinitializer
  %i.fw = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.fu, <8 x i32> %broadcast.splat288)
  %i.fx = trunc <8 x i32> %i.fw to <8 x i16>
  %i.fy = select <8 x i1> %i.fv, <8 x i16> zeroinitializer, <8 x i16> %i.fx
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %.0115144, i64 %index290
  store <8 x i16> %i.fy, ptr %i.fz, align 2, !tbaa !10, !alias.scope !249, !noalias !250
  %index.next299 = add nuw i64 %index290, 8       ; 2 uses
  %i.ga = icmp eq i64 %index.next299, %n.vec266
  br i1 %i.ga, label %middle.block300, label %vector.body289, !llvm.loop !236

middle.block300:                                  ; preds = %vector.body289
  br i1 %cmp.n301, label %._crit_edge, label %.lr.ph.split.preheader306

.lr.ph.split.preheader306:                        ; preds = %vector.memcheck214, %.lr.ph.split.preheader, %middle.block300
  %indvars.iv162.ph = phi i64 [ 0, %vector.memcheck214 ], [ 0, %.lr.ph.split.preheader ], [ %n.vec266, %middle.block300 ]
  %i.gb = extractelement <2 x ptr> %.24., i64 1
  %i.gc = extractelement <2 x ptr> %.40., i64 0
  %i.gd = extractelement <2 x ptr> %.40., i64 1
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %.24.179209 = ptrtoaddr ptr %i.da to i64
  %i.ge = sub i64 %.24.179209, %i.az
  %diff.check = icmp ugt i64 %i.ge, -16
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.split.us.preheader305, label %vector.body

vector.body:                                      ; preds = %.lr.ph.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.split.us.preheader ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %index
  %wide.load = load <8 x i16>, ptr %i.gf, align 2, !tbaa !10
  %i.gg = sext <8 x i16> %wide.load to <8 x i32>
  %i.gh = add nsw <8 x i32> %broadcast.splat, %i.gg
  %i.gi = ashr <8 x i32> %i.gh, %broadcast.splat211 ; 2 uses
  %i.gj = icmp slt <8 x i32> %i.gi, zeroinitializer
  %i.gk = call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.gi, <8 x i32> %broadcast.splat213)
  %i.gl = trunc <8 x i32> %i.gk to <8 x i16>
  %i.gm = select <8 x i1> %i.gj, <8 x i16> zeroinitializer, <8 x i16> %i.gl
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %.0115144, i64 %index
  store <8 x i16> %i.gm, ptr %i.gn, align 2, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.go = icmp eq i64 %index.next, %n.vec
  br i1 %i.go, label %middle.block, label %vector.body, !llvm.loop !237

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.split.us.preheader305

.lr.ph.split.us.preheader305:                     ; preds = %.lr.ph.split.us.preheader, %middle.block
  %indvars.iv167.ph = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  br i1 %lcmp.mod311.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol

.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader305
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv167.ph
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !10
  %i.gr = sext i16 %i.gq to i32
  %i.gs = add nsw i32 %i.o, %i.gr
  %i.gt = ashr i32 %i.gs, %i.m                    ; 2 uses
  %i.gu = icmp slt i32 %i.gt, 0
  %i.gv = call i32 @llvm.smin.i32(i32 %i.gt, i32 %11)
  %i.gw = trunc i32 %i.gv to i16
  %i.gx = select i1 %i.gu, i16 0, i16 %i.gw
  %i.gy = getelementptr inbounds nuw [2 x i8], ptr %.0115144, i64 %indvars.iv167.ph
  store i16 %i.gx, ptr %i.gy, align 2, !tbaa !10
  %indvars.iv.next168.prol = or disjoint i64 %indvars.iv167.ph, 1
  br label %.lr.ph.split.us.prol.loopexit

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader305
  %indvars.iv167.unr = phi i64 [ %indvars.iv167.ph, %.lr.ph.split.us.preheader305 ], [ %indvars.iv.next168.prol, %.lr.ph.split.us.prol ]
  %i.gz = icmp eq i64 %indvars.iv167.ph, %i.ax
  br i1 %i.gz, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv167 = phi i64 [ %indvars.iv.next168.1, %.lr.ph.split.us ], [ %indvars.iv167.unr, %.lr.ph.split.us.prol.loopexit ] ; 4 uses
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv167
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !10
  %i.hc = sext i16 %i.hb to i32
  %i.hd = add nsw i32 %i.o, %i.hc
  %i.he = ashr i32 %i.hd, %i.m                    ; 2 uses
  %i.hf = icmp slt i32 %i.he, 0
  %i.hg = call i32 @llvm.smin.i32(i32 %i.he, i32 %11)
  %i.hh = trunc i32 %i.hg to i16
  %i.hi = select i1 %i.hf, i16 0, i16 %i.hh
  %i.hj = getelementptr inbounds nuw [2 x i8], ptr %.0115144, i64 %indvars.iv167
  store i16 %i.hi, ptr %i.hj, align 2, !tbaa !10
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1 ; 2 uses
  %i.hk = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %indvars.iv.next168
  %i.hl = load i16, ptr %i.hk, align 2, !tbaa !10
  %i.hm = sext i16 %i.hl to i32
  %i.hn = add nsw i32 %i.o, %i.hm
  %i.ho = ashr i32 %i.hn, %i.m                    ; 2 uses
  %i.hp = icmp slt i32 %i.ho, 0
  %i.hq = call i32 @llvm.smin.i32(i32 %i.ho, i32 %11)
  %i.hr = trunc i32 %i.hq to i16
  %i.hs = select i1 %i.hp, i16 0, i16 %i.hr
  %i.ht = getelementptr inbounds nuw [2 x i8], ptr %.0115144, i64 %indvars.iv.next168
  store i16 %i.hs, ptr %i.ht, align 2, !tbaa !10
  %indvars.iv.next168.1 = add nuw nsw i64 %indvars.iv167, 2 ; 2 uses
  %exitcond171.not.1 = icmp eq i64 %indvars.iv.next168.1, %wide.trip.count170
  br i1 %exitcond171.not.1, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !238

.lr.ph138.split:                                  ; preds = %.lr.ph138.split.prol.loopexit, %.lr.ph138.split
  %.1114136 = phi i32 [ %i.hy, %.lr.ph138.split ], [ %.1114136.unr, %.lr.ph138.split.prol.loopexit ]
  %.1117135 = phi ptr [ %i.hx, %.lr.ph138.split ], [ %.1117135.unr, %.lr.ph138.split.prol.loopexit ]
  %.0..0. = load ptr, ptr %i.c, align 16, !tbaa !17
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx, i64 56, i1 false), !tbaa !17
end_hunk_4
begin_hunk_5_@prep_8tap_c:bb.a
  %indvars.iv.next240 = add nuw nsw i64 %indvars.iv239, 1 ; 2 uses
  %exitcond243.not = icmp eq i64 %indvars.iv.next240, %wide.trip.count242
  br i1 %exitcond243.not, label %._crit_edge227, label %scalar.ph303, !llvm.loop !254

.split228:                                        ; preds = %._crit_edge227, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit.split

.lr.ph231:                                        ; preds = %.lr.ph231.preheader, %._crit_edge232
  %.1188 = phi i32 [ %i.mf, %._crit_edge232 ], [ %4, %.lr.ph231.preheader ]
  %.1185 = phi ptr [ %i.me, %._crit_edge232 ], [ %1, %.lr.ph231.preheader ] ; 4 uses
  %.1 = phi ptr [ %i.md, %._crit_edge232 ], [ %0, %.lr.ph231.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check344, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph343.preheader, label %vector.ph345

vector.ph345:                                     ; preds = %.lr.ph231
  %i.kb = load i8, ptr %i.z, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert347 = insertelement <8 x i8> poison, i8 %i.kb, i64 0
  %broadcast.splat348 = shufflevector <8 x i8> %broadcast.splatinsert347, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.kc = sext <8 x i8> %broadcast.splat348 to <8 x i32>
  %i.kd = load i8, ptr %i.ac, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert349 = insertelement <8 x i8> poison, i8 %i.kd, i64 0
  %broadcast.splat350 = shufflevector <8 x i8> %broadcast.splatinsert349, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ke = sext <8 x i8> %broadcast.splat350 to <8 x i32>
  %i.kf = load i8, ptr %i.ad, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert351 = insertelement <8 x i8> poison, i8 %i.kf, i64 0
  %broadcast.splat352 = shufflevector <8 x i8> %broadcast.splatinsert351, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.kg = sext <8 x i8> %broadcast.splat352 to <8 x i32>
  %i.kh = load i8, ptr %i.ae, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert353 = insertelement <8 x i8> poison, i8 %i.kh, i64 0
  %broadcast.splat354 = shufflevector <8 x i8> %broadcast.splatinsert353, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ki = sext <8 x i8> %broadcast.splat354 to <8 x i32>
  %i.kj = load i8, ptr %i.af, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert355 = insertelement <8 x i8> poison, i8 %i.kj, i64 0
  %broadcast.splat356 = shufflevector <8 x i8> %broadcast.splatinsert355, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.kk = sext <8 x i8> %broadcast.splat356 to <8 x i32>
  %i.kl = load i8, ptr %i.ag, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert357 = insertelement <8 x i8> poison, i8 %i.kl, i64 0
  %broadcast.splat358 = shufflevector <8 x i8> %broadcast.splatinsert357, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.km = sext <8 x i8> %broadcast.splat358 to <8 x i32>
  %i.kn = load i8, ptr %i.ah, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert359 = insertelement <8 x i8> poison, i8 %i.kn, i64 0
  %broadcast.splat360 = shufflevector <8 x i8> %broadcast.splatinsert359, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.ko = sext <8 x i8> %broadcast.splat360 to <8 x i32>
  %i.kp = load i8, ptr %i.ai, align 1, !tbaa !13, !alias.scope !273
  %broadcast.splatinsert361 = insertelement <8 x i8> poison, i8 %i.kp, i64 0
  %broadcast.splat362 = shufflevector <8 x i8> %broadcast.splatinsert361, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.kq = sext <8 x i8> %broadcast.splat362 to <8 x i32>
  br label %vector.body367

vector.body367:                                   ; preds = %vector.body367, %vector.ph345
  %index368 = phi i64 [ 0, %vector.ph345 ], [ %index.next377, %vector.body367 ] ; 4 uses
  %i.kr = getelementptr [2 x i8], ptr %.1185, i64 %index368 ; 7 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 -6
  %wide.load369 = load <8 x i16>, ptr %i.ks, align 2, !tbaa !10, !alias.scope !274
  %i.kt = zext <8 x i16> %wide.load369 to <8 x i32>
  %i.ku = mul nsw <8 x i32> %i.kt, %i.kc
  %i.kv = getelementptr i8, ptr %i.kr, i64 -4
  %wide.load370 = load <8 x i16>, ptr %i.kv, align 2, !tbaa !10, !alias.scope !274
  %i.kw = zext <8 x i16> %wide.load370 to <8 x i32>
  %i.kx = mul nsw <8 x i32> %i.kw, %i.ke
  %i.ky = getelementptr i8, ptr %i.kr, i64 -2
  %wide.load371 = load <8 x i16>, ptr %i.ky, align 2, !tbaa !10, !alias.scope !274
  %i.kz = zext <8 x i16> %wide.load371 to <8 x i32>
  %i.la = mul nsw <8 x i32> %i.kz, %i.kg
  %wide.load372 = load <8 x i16>, ptr %i.kr, align 2, !tbaa !10, !alias.scope !274
  %i.lb = zext <8 x i16> %wide.load372 to <8 x i32>
  %i.lc = mul nsw <8 x i32> %i.lb, %i.ki
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %.1185, i64 %index368
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 2
  %wide.load373 = load <8 x i16>, ptr %i.le, align 2, !tbaa !10, !alias.scope !274
  %i.lf = zext <8 x i16> %wide.load373 to <8 x i32>
  %i.lg = mul nsw <8 x i32> %i.lf, %i.kk
  %i.lh = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %wide.load374 = load <8 x i16>, ptr %i.lh, align 2, !tbaa !10, !alias.scope !274
  %i.li = zext <8 x i16> %wide.load374 to <8 x i32>
  %i.lj = mul nsw <8 x i32> %i.li, %i.km
  %i.lk = getelementptr inbounds nuw i8, ptr %i.kr, i64 6
  %wide.load375 = load <8 x i16>, ptr %i.lk, align 2, !tbaa !10, !alias.scope !274
  %i.ll = zext <8 x i16> %wide.load375 to <8 x i32>
  %i.lm = mul nsw <8 x i32> %i.ll, %i.ko
  %i.ln = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %wide.load376 = load <8 x i16>, ptr %i.ln, align 2, !tbaa !10, !alias.scope !274
  %i.lo = zext <8 x i16> %wide.load376 to <8 x i32>
  %i.lp = mul nsw <8 x i32> %i.lo, %i.kq
  %i.lq = add nsw <8 x i32> %i.ku, %broadcast.splat364
  %i.lr = add nsw <8 x i32> %i.lq, %i.kx
  %i.ls = add nsw <8 x i32> %i.lr, %i.la
  %i.lt = add nsw <8 x i32> %i.ls, %i.lc
  %i.lu = add nsw <8 x i32> %i.lt, %i.lg
  %i.lv = add nsw <8 x i32> %i.lu, %i.lj
  %i.lw = add nsw <8 x i32> %i.lv, %i.lm
  %i.lx = add nsw <8 x i32> %i.lw, %i.lp
  %i.ly = ashr <8 x i32> %i.lx, %broadcast.splat366
  %i.lz = trunc <8 x i32> %i.ly to <8 x i16>
  %i.ma = add <8 x i16> %i.lz, splat (i16 -8192)
  %i.mb = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %index368
  store <8 x i16> %i.ma, ptr %i.mb, align 2, !tbaa !10, !alias.scope !275, !noalias !276
  %index.next377 = add nuw i64 %index368, 8       ; 2 uses
  %i.mc = icmp eq i64 %index.next377, %n.vec346
  br i1 %i.mc, label %middle.block378, label %vector.body367, !llvm.loop !259

middle.block378:                                  ; preds = %vector.body367
  br i1 %cmp.n379, label %._crit_edge232, label %scalar.ph343.preheader

scalar.ph343.preheader:                           ; preds = %.lr.ph231, %middle.block378
  %indvars.iv244.ph = phi i64 [ %n.vec346, %middle.block378 ], [ 0, %.lr.ph231 ]
  br label %scalar.ph343

._crit_edge232:                                   ; preds = %scalar.ph343, %middle.block378
  %i.md = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %i.aa
  %i.me = getelementptr inbounds [2 x i8], ptr %.1185, i64 %i.y
  %i.mf = add nsw i32 %.1188, -1                  ; 2 uses
  %.not208 = icmp eq i32 %i.mf, 0
  br i1 %.not208, label %.loopexit.split, label %.lr.ph231

scalar.ph343:                                     ; preds = %scalar.ph343.preheader, %scalar.ph343
  %indvars.iv244 = phi i64 [ %indvars.iv.next245, %scalar.ph343 ], [ %indvars.iv244.ph, %scalar.ph343.preheader ] ; 3 uses
  %i.mg = getelementptr [2 x i8], ptr %.1185, i64 %indvars.iv244
  %i.mh = getelementptr i8, ptr %i.mg, i64 -6
  %indvars.iv.next245 = add nuw nsw i64 %indvars.iv244, 1 ; 2 uses
  %i.mi = load <8 x i8>, ptr %i.z, align 1, !tbaa !13
  %i.mj = sext <8 x i8> %i.mi to <8 x i32>
  %i.mk = load <8 x i16>, ptr %i.mh, align 2, !tbaa !10
  %i.ml = zext <8 x i16> %i.mk to <8 x i32>
  %i.mm = mul nsw <8 x i32> %i.ml, %i.mj
  %i.mn = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.mm)
  %op.rdx476 = add i32 %i.mn, %i.al
  %i.mo = ashr i32 %op.rdx476, %i.aj
  %i.mp = trunc i32 %i.mo to i16
  %i.mq = add i16 %i.mp, -8192
  %i.mr = getelementptr inbounds nuw [2 x i8], ptr %.1, i64 %indvars.iv244
  store i16 %i.mq, ptr %i.mr, align 2, !tbaa !10
  %exitcond248.not = icmp eq i64 %indvars.iv.next245, %wide.trip.count247
  br i1 %exitcond248.not, label %._crit_edge232, label %scalar.ph343, !llvm.loop !260

bb.f:                                             ; preds = %bb.c
  br i1 %.not202, label %.thread214, label %.preheader

.preheader:                                       ; preds = %bb.f
  %i.ms = sext i32 %3 to i64                      ; 2 uses
  %i.mt = icmp sgt i32 %3, 0
  %.idx = mul i64 %i.v, -6                        ; 2 uses
  %.idx204 = shl i64 %2, 1                        ; 2 uses
  %.idx205 = mul i64 %i.v, 6                      ; 4 uses
  %.idx206 = shl i64 %2, 2                        ; 2 uses
  %i.mu = sub nsw i32 24, %i.b                    ; 3 uses
  %i.mv = shl nuw nsw i32 1, %i.mu
  %i.mw = lshr i32 %i.mv, 1                       ; 2 uses
  br i1 %i.mt, label %.preheader.split, label %.loopexit.split

.preheader.split:                                 ; preds = %.preheader
  %i.mx = load <8 x i8>, ptr %i.t, align 8, !tbaa !13
  %i.my = sext <8 x i8> %i.mx to <8 x i32>        ; 9 uses
  %wide.trip.count252 = zext nneg i32 %3 to i64   ; 5 uses
  %i.mz = add i32 %4, -1
  %i.na = zext i32 %i.mz to i64                   ; 6 uses
  %i.nb = mul nuw nsw i64 %i.ms, %i.na
  %i.nc = shl nuw nsw i64 %wide.trip.count252, 1  ; 7 uses
  %i.nd = add nuw i64 %i.nb, %wide.trip.count252
  %i.ne = shl i64 %i.nd, 1
  %scevgep382 = getelementptr i8, ptr %0, i64 %i.ne
  %scevgep383 = getelementptr i8, ptr %1, i64 %.idx206
  %i.nf = add nuw nsw i64 %i.na, 4
  %i.ng = mul i64 %2, %i.nf
  %i.nh = getelementptr i8, ptr %1, i64 %i.ng
  %scevgep384 = getelementptr i8, ptr %i.nh, i64 %i.nc
  %scevgep385 = getelementptr i8, ptr %1, i64 %.idx205
  %i.ni = mul i64 %2, %i.na                       ; 3 uses
  %i.nj = getelementptr i8, ptr %1, i64 %i.ni
  %i.nk = getelementptr i8, ptr %i.nj, i64 %.idx205
  %scevgep386 = getelementptr i8, ptr %i.nk, i64 %i.nc
  %scevgep387 = getelementptr i8, ptr %1, i64 %.idx204
  %i.nl = add nuw nsw i64 %i.na, 2
  %i.nm = mul i64 %2, %i.nl
  %i.nn = getelementptr i8, ptr %1, i64 %i.nm
  %scevgep388 = getelementptr i8, ptr %i.nn, i64 %i.nc
  %scevgep389 = getelementptr i8, ptr %1, i64 %2
  %i.no = add nuw nsw i64 %i.na, 1
  %i.np = mul i64 %2, %i.no
  %i.nq = getelementptr i8, ptr %1, i64 %i.np
  %scevgep390 = getelementptr i8, ptr %i.nq, i64 %i.nc
  %i.nr = add i64 %i.ni, %i.nc                    ; 2 uses
  %scevgep391 = getelementptr i8, ptr %1, i64 %i.nr
  %i.ns = mul i64 %i.v, -2
  %scevgep392 = getelementptr i8, ptr %1, i64 %i.ns
  %i.nt = sub i64 %i.nr, %2
  %scevgep393 = getelementptr i8, ptr %1, i64 %i.nt
  %i.nu = mul i64 %2, -2
  %scevgep394 = getelementptr i8, ptr %1, i64 %i.nu
  %i.nv = add nsw i64 %i.na, -2
  %i.nw = mul i64 %2, %i.nv
  %i.nx = getelementptr i8, ptr %1, i64 %i.nw
  %scevgep395 = getelementptr i8, ptr %i.nx, i64 %i.nc
  %scevgep396 = getelementptr i8, ptr %1, i64 %.idx
  %i.ny = add i64 %i.ni, %i.nc
  %i.nz = sub i64 %i.ny, %.idx205
  %scevgep397 = getelementptr i8, ptr %1, i64 %i.nz
  %i.oa = insertelement <8 x ptr> poison, ptr %0, i64 0
  %i.ob = shufflevector <8 x ptr> %i.oa, <8 x ptr> poison, <8 x i32> zeroinitializer
  %i.oc = insertelement <8 x ptr> poison, ptr %scevgep384, i64 0
  %i.od = insertelement <8 x ptr> %i.oc, ptr %scevgep386, i64 1
  %i.oe = insertelement <8 x ptr> %i.od, ptr %scevgep388, i64 2
  %i.of = insertelement <8 x ptr> %i.oe, ptr %scevgep390, i64 3
  %i.og = insertelement <8 x ptr> %i.of, ptr %scevgep391, i64 4
  %i.oh = insertelement <8 x ptr> %i.og, ptr %scevgep393, i64 5
  %i.oi = insertelement <8 x ptr> %i.oh, ptr %scevgep395, i64 6
  %i.oj = insertelement <8 x ptr> %i.oi, ptr %scevgep397, i64 7
  %i.ok = insertelement <8 x ptr> poison, ptr %scevgep383, i64 0
  %i.ol = insertelement <8 x ptr> %i.ok, ptr %scevgep385, i64 1
  %i.om = insertelement <8 x ptr> %i.ol, ptr %scevgep387, i64 2
  %i.on = insertelement <8 x ptr> %i.om, ptr %scevgep389, i64 3
  %i.oo = insertelement <8 x ptr> %i.on, ptr %1, i64 4
  %i.op = insertelement <8 x ptr> %i.oo, ptr %scevgep392, i64 5
  %i.oq = insertelement <8 x ptr> %i.op, ptr %scevgep394, i64 6
  %i.or = insertelement <8 x ptr> %i.oq, ptr %scevgep396, i64 7
  %i.os = insertelement <8 x ptr> poison, ptr %scevgep382, i64 0
  %i.ot = shufflevector <8 x ptr> %i.os, <8 x ptr> poison, <8 x i32> zeroinitializer
  %min.iters.check438 = icmp ult i32 %3, 8
  %i.ou = icmp ult <8 x ptr> %i.ob, %i.oj
  %i.ov = icmp ult <8 x ptr> %i.or, %i.ot
  %stride.check405 = icmp slt i64 %2, 0
  %i.ow = and <8 x i1> %i.ou, %i.ov
  %i.ox = bitcast <8 x i1> %i.ow to i8
  %i.oy = icmp ne i8 %i.ox, 0
  %op.rdx475 = or i1 %i.oy, %stride.check405
  %n.vec440 = and i64 %wide.trip.count252, 2147483640 ; 3 uses
  %broadcast.splat442 = shufflevector <8 x i32> %i.my, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splat444 = shufflevector <8 x i32> %i.my, <8 x i32> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat446 = shufflevector <8 x i32> %i.my, <8 x i32> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat448 = shufflevector <8 x i32> %i.my, <8 x i32> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat450 = shufflevector <8 x i32> %i.my, <8 x i32> poison, <8 x i32> <i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4>
  %broadcast.splat452 = shufflevector <8 x i32> %i.my, <8 x i32> poison, <8 x i32> <i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5, i32 5>
  %broadcast.splat454 = shufflevector <8 x i32> %i.my, <8 x i32> poison, <8 x i32> <i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6, i32 6>
  %broadcast.splat456 = shufflevector <8 x i32> %i.my, <8 x i32> poison, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7>
  %broadcast.splatinsert457 = insertelement <8 x i32> poison, i32 %i.mw, i64 0
  %broadcast.splat458 = shufflevector <8 x i32> %broadcast.splatinsert457, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert459 = insertelement <8 x i32> poison, i32 %i.mu, i64 0
  %broadcast.splat460 = shufflevector <8 x i32> %broadcast.splatinsert459, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n473 = icmp eq i64 %n.vec440, %wide.trip.count252
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.preheader.split, %._crit_edge236
  %.2189 = phi i32 [ %i.qs, %._crit_edge236 ], [ %4, %.preheader.split ]
  %.2186 = phi ptr [ %i.pa, %._crit_edge236 ], [ %1, %.preheader.split ] ; 11 uses
  %.2 = phi ptr [ %i.qr, %._crit_edge236 ], [ %0, %.preheader.split ] ; 3 uses
  %i.oz = getelementptr i8, ptr %.2186, i64 %.idx ; 2 uses
  %i.pa = getelementptr i8, ptr %.2186, i64 %2    ; 3 uses
  %i.pb = getelementptr i8, ptr %.2186, i64 %.idx204 ; 2 uses
  %i.pc = getelementptr i8, ptr %.2186, i64 %.idx205 ; 2 uses
  %i.pd = getelementptr i8, ptr %.2186, i64 %.idx206 ; 2 uses
  %brmerge478 = select i1 %min.iters.check438, i1 true, i1 %op.rdx475
  br i1 %brmerge478, label %scalar.ph437.preheader, label %vector.body461

vector.body461:                                   ; preds = %.lr.ph235, %vector.body461
  %index462 = phi i64 [ %index.next471, %vector.body461 ], [ 0, %.lr.ph235 ] ; 10 uses
  %i.pe = getelementptr [2 x i8], ptr %i.oz, i64 %index462
  %wide.load463.a = load <8 x i16>, ptr %i.pe, align 2, !tbaa !10, !alias.scope !277
  %i.pf = zext <8 x i16> %wide.load463.a to <8 x i32>
  %i.pg = mul nsw <8 x i32> %broadcast.splat442, %i.pf
  %i.ph = sub i64 %index462, %2
  %i.pi = getelementptr inbounds [2 x i8], ptr %.2186, i64 %i.ph
  %wide.load464 = load <8 x i16>, ptr %i.pi, align 2, !tbaa !10, !alias.scope !278
  %i.pj = zext <8 x i16> %wide.load464 to <8 x i32>
  %i.pk = mul nsw <8 x i32> %broadcast.splat444, %i.pj
  %i.pl = sub nsw i64 %index462, %i.v
  %i.pm = getelementptr inbounds [2 x i8], ptr %.2186, i64 %i.pl
  %wide.load465 = load <8 x i16>, ptr %i.pm, align 2, !tbaa !10, !alias.scope !279
  %i.pn = zext <8 x i16> %wide.load465 to <8 x i32>
  %i.po = mul nsw <8 x i32> %broadcast.splat446, %i.pn
  %i.pp = getelementptr inbounds nuw [2 x i8], ptr %.2186, i64 %index462
  %wide.load466 = load <8 x i16>, ptr %i.pp, align 2, !tbaa !10, !alias.scope !280
  %i.pq = zext <8 x i16> %wide.load466 to <8 x i32>
  %i.pr = mul nsw <8 x i32> %broadcast.splat448, %i.pq
  %i.ps = getelementptr [2 x i8], ptr %i.pa, i64 %index462
  %wide.load467 = load <8 x i16>, ptr %i.ps, align 2, !tbaa !10, !alias.scope !281
  %i.pt = zext <8 x i16> %wide.load467 to <8 x i32>
  %i.pu = mul nsw <8 x i32> %broadcast.splat450, %i.pt
  %i.pv = getelementptr [2 x i8], ptr %i.pb, i64 %index462
  %wide.load468 = load <8 x i16>, ptr %i.pv, align 2, !tbaa !10, !alias.scope !282
  %i.pw = zext <8 x i16> %wide.load468 to <8 x i32>
  %i.px = mul nsw <8 x i32> %broadcast.splat452, %i.pw
  %i.py = getelementptr [2 x i8], ptr %i.pc, i64 %index462
  %wide.load469 = load <8 x i16>, ptr %i.py, align 2, !tbaa !10, !alias.scope !283
  %i.pz = zext <8 x i16> %wide.load469 to <8 x i32>
  %i.qa = mul nsw <8 x i32> %broadcast.splat454, %i.pz
  %i.qb = getelementptr [2 x i8], ptr %i.pd, i64 %index462
  %wide.load470 = load <8 x i16>, ptr %i.qb, align 2, !tbaa !10, !alias.scope !284
  %i.qc = zext <8 x i16> %wide.load470 to <8 x i32>
  %i.qd = mul nsw <8 x i32> %broadcast.splat456, %i.qc
  %i.qe = add nsw <8 x i32> %i.pg, %broadcast.splat458
  %i.qf = add nsw <8 x i32> %i.qe, %i.pk
  %i.qg = add nsw <8 x i32> %i.qf, %i.po
  %i.qh = add nsw <8 x i32> %i.qg, %i.pr
  %i.qi = add nsw <8 x i32> %i.qh, %i.pu
  %i.qj = add nsw <8 x i32> %i.qi, %i.px
  %i.qk = add nsw <8 x i32> %i.qj, %i.qa
  %i.ql = add nsw <8 x i32> %i.qk, %i.qd
  %i.qm = ashr <8 x i32> %i.ql, %broadcast.splat460
  %i.qn = trunc <8 x i32> %i.qm to <8 x i16>
  %i.qo = add <8 x i16> %i.qn, splat (i16 -8192)
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %index462
  store <8 x i16> %i.qo, ptr %i.qp, align 2, !tbaa !10, !alias.scope !285, !noalias !286
  %index.next471 = add nuw i64 %index462, 8       ; 2 uses
  %i.qq = icmp eq i64 %index.next471, %n.vec440
  br i1 %i.qq, label %middle.block472, label %vector.body461, !llvm.loop !271

middle.block472:                                  ; preds = %vector.body461
  br i1 %cmp.n473, label %._crit_edge236, label %scalar.ph437.preheader

scalar.ph437.preheader:                           ; preds = %.lr.ph235, %middle.block472
  %indvars.iv249.ph = phi i64 [ %n.vec440, %middle.block472 ], [ 0, %.lr.ph235 ]
  br label %scalar.ph437

._crit_edge236:                                   ; preds = %scalar.ph437, %middle.block472
  %i.qr = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %i.ms
  %i.qs = add nsw i32 %.2189, -1                  ; 2 uses
  %.not203 = icmp eq i32 %i.qs, 0
  br i1 %.not203, label %.loopexit.split, label %.lr.ph235

scalar.ph437:                                     ; preds = %scalar.ph437.preheader, %scalar.ph437
  %indvars.iv249 = phi i64 [ %indvars.iv.next250, %scalar.ph437 ], [ %indvars.iv249.ph, %scalar.ph437.preheader ] ; 10 uses
  %i.qt = getelementptr [2 x i8], ptr %i.oz, i64 %indvars.iv249
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !10
  %i.qv = sub i64 %indvars.iv249, %2
  %i.qw = getelementptr inbounds [2 x i8], ptr %.2186, i64 %i.qv
  %i.qx = load i16, ptr %i.qw, align 2, !tbaa !10
  %i.qy = sub nsw i64 %indvars.iv249, %i.v
  %i.qz = getelementptr inbounds [2 x i8], ptr %.2186, i64 %i.qy
  %i.ra = load i16, ptr %i.qz, align 2, !tbaa !10
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr %.2186, i64 %indvars.iv249
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !10
  %i.rd = getelementptr [2 x i8], ptr %i.pa, i64 %indvars.iv249
  %i.re = load i16, ptr %i.rd, align 2, !tbaa !10
  %i.rf = getelementptr [2 x i8], ptr %i.pb, i64 %indvars.iv249
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !10
  %i.rh = getelementptr [2 x i8], ptr %i.pc, i64 %indvars.iv249
  %i.ri = load i16, ptr %i.rh, align 2, !tbaa !10
  %i.rj = getelementptr [2 x i8], ptr %i.pd, i64 %indvars.iv249
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !10
  %i.rl = insertelement <8 x i16> poison, i16 %i.qu, i64 0
  %i.rm = insertelement <8 x i16> %i.rl, i16 %i.qx, i64 1
  %i.rn = insertelement <8 x i16> %i.rm, i16 %i.ra, i64 2
  %i.ro = insertelement <8 x i16> %i.rn, i16 %i.rc, i64 3
  %i.rp = insertelement <8 x i16> %i.ro, i16 %i.re, i64 4
  %i.rq = insertelement <8 x i16> %i.rp, i16 %i.rg, i64 5
  %i.rr = insertelement <8 x i16> %i.rq, i16 %i.ri, i64 6
  %i.rs = insertelement <8 x i16> %i.rr, i16 %i.rk, i64 7
  %i.rt = zext <8 x i16> %i.rs to <8 x i32>
  %i.ru = mul nsw <8 x i32> %i.rt, %i.my
  %i.rv = tail call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %i.ru)
  %op.rdx = add i32 %i.rv, %i.mw
  %i.rw = ashr i32 %op.rdx, %i.mu
  %i.rx = trunc i32 %i.rw to i16
  %i.ry = add i16 %i.rx, -8192
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr %.2, i64 %indvars.iv249
  store i16 %i.ry, ptr %i.rz, align 2, !tbaa !10
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %._crit_edge236, label %scalar.ph437, !llvm.loop !272

.thread214:                                       ; preds = %.thread, %.thread.thread, %bb.f
  %i.sa = phi i64 [ %i.v, %bb.f ], [ %i.k, %.thread.thread ], [ %i.x, %.thread ]
  tail call fastcc void @prep_c(ptr noundef %0, ptr noundef %1, i64 noundef %i.sa, i32 noundef %3, i32 noundef %4, i32 noundef %8)
  br label %.loopexit.split

.loopexit.split:                                  ; preds = %._crit_edge232, %._crit_edge236, %.preheader220, %.preheader, %.thread214, %.split228
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @prep_c(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 -4611686018427387904, 4611686018427387904) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #6 {
bb.a:
  %i.a = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %5, i1 true)
  %i.b = add nsw i32 %i.a, -18                    ; 7 uses
  %i.c = sext i32 %3 to i64                       ; 2 uses
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph.preheader, label %.split19

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %3 to i64      ; 10 uses
  %i.e = add i32 %4, -1
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = mul nuw nsw i64 %i.c, %i.f
  %i.h = add nuw i64 %i.g, %wide.trip.count
  %i.i = shl i64 %i.h, 1
  %scevgep = getelementptr i8, ptr %0, i64 %i.i
  %i.j = mul i64 %2, %i.f
  %i.k = add i64 %i.j, %wide.trip.count
  %i.l = shl i64 %i.k, 1
  %scevgep22 = getelementptr i8, ptr %1, i64 %i.l
  %min.iters.check = icmp ult i32 %3, 4
  %bound0 = icmp ult ptr %0, %scevgep22
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %2, 0
  %i.m = or i1 %found.conflict, %stride.check
  %min.iters.check23 = icmp ult i32 %3, 16
  %i.n = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %min.epilog.iters.check = icmp eq i64 %i.n, 0
  %n.vec25 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert26 = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %broadcast.splat27 = shufflevector <4 x i32> %broadcast.splatinsert26, <4 x i32> poison, <4 x i32> zeroinitializer
  %cmp.n31 = icmp eq i64 %n.vec25, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
end_hunk_5
begin_hunk_6_@prep_8tap_scaled_c:bb.a
.lr.ph.split.us.prol:                             ; preds = %.lr.ph.split.us.preheader, %.lr.ph.split.us.prol
  %indvars.iv160.prol = phi i64 [ %indvars.iv.next161.prol, %.lr.ph.split.us.prol ], [ %indvars.iv160.ph, %.lr.ph.split.us.preheader ] ; 3 uses
  %prol.iter297 = phi i64 [ %prol.iter297.next, %.lr.ph.split.us.prol ], [ 0, %.lr.ph.split.us.preheader ]
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv160.prol
  %i.gn = load i16, ptr %i.gm, align 2, !tbaa !10
  %i.go = add i16 %i.gn, -8192
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %indvars.iv160.prol
  store i16 %i.go, ptr %i.gp, align 2, !tbaa !10
  %indvars.iv.next161.prol = add nuw nsw i64 %indvars.iv160.prol, 1 ; 2 uses
  %prol.iter297.next = add i64 %prol.iter297, 1   ; 2 uses
  %prol.iter297.cmp.not = icmp eq i64 %prol.iter297.next, %xtraiter295
  br i1 %prol.iter297.cmp.not, label %.lr.ph.split.us.prol.loopexit, label %.lr.ph.split.us.prol, !llvm.loop !311

.lr.ph.split.us.prol.loopexit:                    ; preds = %.lr.ph.split.us.prol, %.lr.ph.split.us.preheader
  %indvars.iv160.unr = phi i64 [ %indvars.iv160.ph, %.lr.ph.split.us.preheader ], [ %indvars.iv.next161.prol, %.lr.ph.split.us.prol ]
  %i.gq = sub nsw i64 %indvars.iv160.ph, %wide.trip.count
  %i.gr = icmp ugt i64 %i.gq, -4
  br i1 %i.gr, label %._crit_edge, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us
  %indvars.iv160 = phi i64 [ %indvars.iv.next161.3, %.lr.ph.split.us ], [ %indvars.iv160.unr, %.lr.ph.split.us.prol.loopexit ] ; 6 uses
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv160
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !10
  %i.gu = add i16 %i.gt, -8192
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %indvars.iv160
  store i16 %i.gu, ptr %i.gv, align 2, !tbaa !10
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.next161
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !10
  %i.gy = add i16 %i.gx, -8192
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %indvars.iv.next161
  store i16 %i.gy, ptr %i.gz, align 2, !tbaa !10
  %indvars.iv.next161.1 = add nuw nsw i64 %indvars.iv160, 2 ; 2 uses
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.next161.1
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !10
  %i.hc = add i16 %i.hb, -8192
  %i.hd = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %indvars.iv.next161.1
  store i16 %i.hc, ptr %i.hd, align 2, !tbaa !10
  %indvars.iv.next161.2 = add nuw nsw i64 %indvars.iv160, 3 ; 2 uses
  %i.he = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.next161.2
  %i.hf = load i16, ptr %i.he, align 2, !tbaa !10
  %i.hg = add i16 %i.hf, -8192
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %indvars.iv.next161.2
  store i16 %i.hg, ptr %i.hh, align 2, !tbaa !10
  %indvars.iv.next161.3 = add nuw nsw i64 %indvars.iv160, 4 ; 2 uses
  %exitcond164.not.3 = icmp eq i64 %indvars.iv.next161.3, %wide.trip.count163
  br i1 %exitcond164.not.3, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !312

.lr.ph131.split:                                  ; preds = %.lr.ph131.split.prol.loopexit, %.lr.ph131.split
  %.1107129 = phi i32 [ %i.hm, %.lr.ph131.split ], [ %.1107129.unr, %.lr.ph131.split.prol.loopexit ]
  %.1110128 = phi ptr [ %i.hl, %.lr.ph131.split ], [ %.1110128.unr, %.lr.ph131.split.prol.loopexit ]
  %.0..0. = load ptr, ptr %i.c, align 16, !tbaa !17
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx, i64 56, i1 false), !tbaa !17
  store ptr %.0..0., ptr %.56..56..sroa_idx309, align 8, !tbaa !17
  %i.hi = getelementptr inbounds i8, ptr %.1110128, i64 %2
  %.0..0..1 = load ptr, ptr %i.c, align 16, !tbaa !17
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx301, i64 56, i1 false), !tbaa !17
  store ptr %.0..0..1, ptr %.56..56..sroa_idx312, align 8, !tbaa !17
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 %2
  %.0..0..2 = load ptr, ptr %i.c, align 16, !tbaa !17
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx302, i64 56, i1 false), !tbaa !17
  store ptr %.0..0..2, ptr %.56..56..sroa_idx313, align 8, !tbaa !17
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 %2
  %.0..0..3 = load ptr, ptr %i.c, align 16, !tbaa !17 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %.8..8..sroa_idx303, i64 56, i1 false), !tbaa !17
  store ptr %.0..0..3, ptr %.56..56..sroa_idx314, align 8, !tbaa !17
  %i.hl = getelementptr inbounds i8, ptr %i.hk, i64 %2 ; 2 uses
  %i.hm = add nsw i32 %.1107129, 4                ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.hm, %i.ax
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph131.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader291, %.lr.ph.split
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %.lr.ph.split ], [ %indvars.iv155.ph, %.lr.ph.split.preheader291 ] ; 10 uses
  %i.hn = load i8, ptr %i.bf, align 1, !tbaa !13
  %i.ho = sext i8 %i.hn to i32
  %i.hp = getelementptr inbounds nuw [2 x i8], ptr %.0..0.166, i64 %indvars.iv155
  %i.hq = load i16, ptr %i.hp, align 2, !tbaa !10
  %i.hr = sext i16 %i.hq to i32
  %i.hs = mul nsw i32 %i.hr, %i.ho
  %i.ht = load i8, ptr %i.cr, align 1, !tbaa !13
  %i.hu = sext i8 %i.ht to i32
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %.8..8., i64 %indvars.iv155
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !10
  %i.hx = sext i16 %i.hw to i32
  %i.hy = mul nsw i32 %i.hx, %i.hu
  %i.hz = load i8, ptr %i.cs, align 1, !tbaa !13
  %i.ia = sext i8 %i.hz to i32
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr %.16..16., i64 %indvars.iv155
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !10
  %i.id = sext i16 %i.ic to i32
  %i.ie = mul nsw i32 %i.id, %i.ia
  %i.if = load i8, ptr %i.ct, align 1, !tbaa !13
  %i.ig = sext i8 %i.if to i32
  %i.ih = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv155
  %i.ii = load i16, ptr %i.ih, align 2, !tbaa !10
  %i.ij = sext i16 %i.ii to i32
  %i.ik = mul nsw i32 %i.ij, %i.ig
  %i.il = load i8, ptr %i.cu, align 1, !tbaa !13
  %i.im = sext i8 %i.il to i32
  %i.in = getelementptr inbounds nuw [2 x i8], ptr %i.fx, i64 %indvars.iv155
  %i.io = load i16, ptr %i.in, align 2, !tbaa !10
  %i.ip = sext i16 %i.io to i32
  %i.iq = mul nsw i32 %i.ip, %i.im
  %i.ir = load i8, ptr %i.cv, align 1, !tbaa !13
  %i.is = sext i8 %i.ir to i32
  %i.it = getelementptr inbounds nuw [2 x i8], ptr %i.fy, i64 %indvars.iv155
  %i.iu = load i16, ptr %i.it, align 2, !tbaa !10
  %i.iv = sext i16 %i.iu to i32
  %i.iw = mul nsw i32 %i.iv, %i.is
  %i.ix = load i8, ptr %i.cw, align 1, !tbaa !13
  %i.iy = sext i8 %i.ix to i32
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr %i.fz, i64 %indvars.iv155
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !10
  %i.jb = sext i16 %i.ja to i32
  %i.jc = mul nsw i32 %i.jb, %i.iy
  %i.jd = load i8, ptr %i.cy, align 1, !tbaa !13
  %i.je = sext i8 %i.jd to i32
  %i.jf = getelementptr inbounds nuw [2 x i8], ptr %.56., i64 %indvars.iv155
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !10
  %i.jh = sext i16 %i.jg to i32
  %i.ji = mul nsw i32 %i.jh, %i.je
  %i.jj = add nsw i32 %i.hs, 32
  %i.jk = add nsw i32 %i.jj, %i.hy
  %i.jl = add nsw i32 %i.jk, %i.ie
  %i.jm = add nsw i32 %i.jl, %i.ik
  %i.jn = add nsw i32 %i.jm, %i.iq
  %i.jo = add nsw i32 %i.jn, %i.iw
  %i.jp = add nsw i32 %i.jo, %i.jc
  %i.jq = add nsw i32 %i.jp, %i.ji
  %i.jr = lshr i32 %i.jq, 6
  %i.js = trunc i32 %i.jr to i16
  %i.jt = add i16 %i.js, -8192
  %i.ju = getelementptr inbounds nuw [2 x i8], ptr %.0108137, i64 %indvars.iv155
  store i16 %i.jt, ptr %i.ju, align 2, !tbaa !10
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count158
  br i1 %exitcond159.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !313

._crit_edge:                                      ; preds = %.lr.ph131.split.prol.loopexit, %.lr.ph131.split, %.lr.ph.split, %.lr.ph.split.us.prol.loopexit, %.lr.ph.split.us, %middle.block287, %middle.block, %vec.epilog.middle.block, %.preheader
  %.1107.lcssa195 = phi i32 [ %.1107.lcssa, %.preheader ], [ %.1107.lcssa, %middle.block287 ], [ %.1107.lcssa, %middle.block ], [ %.1107.lcssa, %.lr.ph.split.us.prol.loopexit ], [ %.1107.lcssa, %vec.epilog.middle.block ], [ %.1107.lcssa, %.lr.ph.split ], [ %.1107.lcssa, %.lr.ph.split.us ], [ %i.ax, %.lr.ph131.split ], [ %i.ax, %.lr.ph131.split.prol.loopexit ]
  %.1110.lcssa194 = phi ptr [ %.1110.lcssa, %.preheader ], [ %.1110.lcssa, %middle.block287 ], [ %.1110.lcssa, %middle.block ], [ %.1110.lcssa, %.lr.ph.split.us.prol.loopexit ], [ %.1110.lcssa, %vec.epilog.middle.block ], [ %.1110.lcssa, %.lr.ph.split ], [ %.1110.lcssa, %.lr.ph.split.us ], [ %.lcssa.unr, %.lr.ph131.split.prol.loopexit ], [ %i.hl, %.lr.ph131.split ]
  %.56.193 = phi ptr [ %.56., %.preheader ], [ %.56., %middle.block287 ], [ %.56., %middle.block ], [ %.56., %.lr.ph.split.us.prol.loopexit ], [ %.56., %vec.epilog.middle.block ], [ %.56., %.lr.ph.split ], [ %.56., %.lr.ph.split.us ], [ %.0..lcssa.unr, %.lr.ph131.split.prol.loopexit ], [ %.0..0..3, %.lr.ph131.split ]
  %i.jv = add nsw i32 %.0111135, %8
  %i.jw = getelementptr inbounds [2 x i8], ptr %.0108137, i64 %i.ai
  %i.jx = add nuw nsw i32 %.0104140, 1            ; 2 uses
  %exitcond165.not = icmp eq i32 %i.jx, %4
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond165.not, label %._crit_edge143, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @w_mask_c(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6, i32 noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 2) %9, i32 noundef %10) unnamed_addr #3 {
bb.a:
  %i.a = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %10, i1 true) ; 2 uses
  %i.b = add nsw i32 %i.a, -18
  %i.c = add nsw i32 %i.a, -12                    ; 6 uses
  %i.d = shl nuw nsw i32 32, %i.b
  %i.e = add nuw nsw i32 %i.d, 524288             ; 6 uses
  %i.f = sext i32 %4 to i64                       ; 9 uses
  %i.g = icmp sgt i32 %4, 0
  %i.h = and i64 %1, 1
  %.not.i = icmp eq i64 %i.h, 0
  tail call void @llvm.assume(i1 %.not.i)
  %.not = icmp ne i32 %9, 0                       ; 3 uses
  %i.i = ashr i32 %4, %8
  %i.j = sext i32 %i.i to i64                     ; 4 uses
  br i1 %i.g, label %.split, label %.split91

.split:                                           ; preds = %bb.a
  %.not87 = icmp eq i32 %8, 0
  br i1 %.not87, label %.split.split.us, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.split
  %invariant.op = sub i32 40, %7
  %invariant.op191 = sub i32 39, %7
  br label %.lr.ph

.split.split.us:                                  ; preds = %.split
  %wide.trip.count103 = zext nneg i32 %4 to i64   ; 11 uses
  %i.k = add i32 %5, -1
  %i.l = zext i32 %i.k to i64                     ; 4 uses
  %i.m = mul i64 %1, %i.l
  %i.n = shl nuw nsw i64 %wide.trip.count103, 1
  %i.o = getelementptr i8, ptr %0, i64 %i.m
  %scevgep145 = getelementptr i8, ptr %i.o, i64 %i.n ; 6 uses
  br i1 %.not, label %.lr.ph.us.preheader, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.split.split.us
  %i.p = mul nuw nsw i64 %i.j, %i.l
  %i.q = getelementptr i8, ptr %6, i64 %i.p
  %scevgep116 = getelementptr i8, ptr %i.q, i64 %wide.trip.count103 ; 3 uses
  %i.r = mul nuw nsw i64 %i.f, %i.l
  %i.s = add nuw i64 %i.r, %wide.trip.count103
  %i.t = shl i64 %i.s, 1                          ; 2 uses
  %scevgep117 = getelementptr i8, ptr %2, i64 %i.t ; 2 uses
  %scevgep118 = getelementptr i8, ptr %3, i64 %i.t ; 2 uses
  %min.iters.check = icmp ult i32 %4, 8
  %bound0 = icmp ult ptr %0, %scevgep116
  %bound1 = icmp ult ptr %6, %scevgep145
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %1, 0
  %11 = or i1 %found.conflict, %stride.check
  %bound0120 = icmp ult ptr %0, %scevgep117
  %bound1121 = icmp ult ptr %2, %scevgep145
  %found.conflict122 = and i1 %bound0120, %bound1121
  %conflict.rdx = or i1 %11, %found.conflict122
  %bound0124 = icmp ult ptr %0, %scevgep118
  %bound1125 = icmp ult ptr %3, %scevgep145
  %found.conflict126 = and i1 %bound0124, %bound1125
  %conflict.rdx128 = or i1 %conflict.rdx, %found.conflict126
  %bound0129 = icmp ult ptr %6, %scevgep117
  %bound1130 = icmp ult ptr %2, %scevgep116
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx133 = or i1 %conflict.rdx128, %found.conflict131
  %bound0134 = icmp ult ptr %6, %scevgep118
  %bound1135 = icmp ult ptr %3, %scevgep116
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx138 = or i1 %conflict.rdx133, %found.conflict136
  %n.vec = and i64 %wide.trip.count103, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert139 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat140 = shufflevector <8 x i32> %broadcast.splatinsert139, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert141 = insertelement <8 x i32> poison, i32 %10, i64 0
  %broadcast.splat142 = shufflevector <8 x i32> %broadcast.splatinsert141, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count103
  br label %.lr.ph.us.us

.lr.ph.us.preheader:                              ; preds = %.split.split.us
  %i.u = mul nuw nsw i64 %i.f, %i.l
  %i.v = add nuw i64 %i.u, %wide.trip.count103
  %i.w = shl i64 %i.v, 1                          ; 2 uses
  %scevgep147 = getelementptr i8, ptr %2, i64 %i.w ; 2 uses
  %scevgep148 = getelementptr i8, ptr %3, i64 %i.w ; 2 uses
  %min.iters.check172 = icmp ult i32 %4, 8
  %stride.check148 = icmp slt i64 %1, 0
  %bound0153.a = icmp ult ptr %0, %scevgep147
  %bound1154.a = icmp ult ptr %2, %scevgep145
  %found.conflict155.a = and i1 %bound0153.a, %bound1154.a
  %i.x = or i1 %stride.check148, %found.conflict155.a
  %bound0158 = icmp ult ptr %0, %scevgep148
  %bound1159 = icmp ult ptr %3, %scevgep145
  %found.conflict160 = and i1 %bound0158, %bound1159
  %invariant.op192 = or i1 %i.x, %found.conflict160
  %n.vec174 = and i64 %wide.trip.count103, 2147483640 ; 3 uses
  %broadcast.splatinsert175 = insertelement <8 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat176 = shufflevector <8 x i32> %broadcast.splatinsert175, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert177 = insertelement <8 x i32> poison, i32 %i.c, i64 0
  %broadcast.splat178 = shufflevector <8 x i32> %broadcast.splatinsert177, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert179 = insertelement <8 x i32> poison, i32 %10, i64 0
  %broadcast.splat180 = shufflevector <8 x i32> %broadcast.splatinsert179, <8 x i32> poison, <8 x i32> zeroinitializer
  %cmp.n187 = icmp eq i64 %n.vec174, %wide.trip.count103
  br label %.lr.ph.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.split.us.us.us
  %.081.us.us = phi ptr [ %.182.us.us, %._crit_edge.split.us.us.us ], [ %6, %.lr.ph.us.us.preheader ] ; 3 uses
  %.080.us.us = phi i32 [ %i.bw, %._crit_edge.split.us.us.us ], [ %5, %.lr.ph.us.us.preheader ]
  %.079.us.us = phi ptr [ %i.bu, %._crit_edge.split.us.us.us ], [ %3, %.lr.ph.us.us.preheader ] ; 3 uses
  %.078.us.us = phi ptr [ %i.bt, %._crit_edge.split.us.us.us ], [ %2, %.lr.ph.us.us.preheader ] ; 3 uses
  %.077.us.us = phi ptr [ %i.bv, %._crit_edge.split.us.us.us ], [ %0, %.lr.ph.us.us.preheader ] ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx138
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us ] ; 5 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %.078.us.us, i64 %index
  %wide.load = load <8 x i16>, ptr %i.y, align 2, !tbaa !10, !alias.scope !339
  %i.z = sext <8 x i16> %wide.load to <8 x i32>
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %.079.us.us, i64 %index
  %wide.load143 = load <8 x i16>, ptr %i.aa, align 2, !tbaa !10, !alias.scope !340
  %i.ab = sext <8 x i16> %wide.load143 to <8 x i32> ; 2 uses
  %i.ac = sub nsw <8 x i32> %i.z, %i.ab           ; 2 uses
  %i.ad = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.ac, i1 true)
  %i.ae = add nuw nsw <8 x i32> %i.ad, splat (i32 32)
  %i.af = lshr <8 x i32> %i.ae, splat (i32 10)
  %i.ag = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.af, <8 x i32> splat (i32 26))
  %i.ah = add nuw nsw <8 x i32> %i.ag, splat (i32 38) ; 2 uses
  %i.ai = mul nsw <8 x i32> %i.ah, %i.ac
  %i.aj = shl nsw <8 x i32> %i.ab, splat (i32 6)
  %i.ak = add nsw <8 x i32> %i.aj, %broadcast.splat
  %i.al = add nsw <8 x i32> %i.ak, %i.ai
  %i.am = ashr <8 x i32> %i.al, %broadcast.splat140 ; 2 uses
  %i.an = icmp slt <8 x i32> %i.am, zeroinitializer
  %i.ao = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.am, <8 x i32> %broadcast.splat142)
  %i.ap = trunc <8 x i32> %i.ao to <8 x i16>
  %i.aq = select <8 x i1> %i.an, <8 x i16> zeroinitializer, <8 x i16> %i.ap
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %.077.us.us, i64 %index
  store <8 x i16> %i.aq, ptr %i.ar, align 2, !tbaa !10, !alias.scope !341, !noalias !342
  %i.as = trunc nuw nsw <8 x i32> %i.ah to <8 x i8>
  %i.at = getelementptr inbounds nuw i8, ptr %.081.us.us, i64 %index
  store <8 x i8> %i.as, ptr %i.at, align 1, !tbaa !13, !alias.scope !343, !noalias !344
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !330

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.split.us.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us, %middle.block
  %indvars.iv97.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.us.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %scalar.ph ], [ %indvars.iv97.ph, %scalar.ph.preheader ] ; 5 uses
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %.078.us.us, i64 %indvars.iv97
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !10
  %i.ax = sext i16 %i.aw to i32
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr %.079.us.us, i64 %indvars.iv97
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !10
  %i.ba = sext i16 %i.az to i32                   ; 2 uses
  %i.bb = sub nsw i32 %i.ax, %i.ba                ; 2 uses
  %i.bc = tail call i32 @llvm.abs.i32(i32 %i.bb, i1 true)
  %i.bd = add nuw nsw i32 %i.bc, 32
  %i.be = lshr i32 %i.bd, 10
  %i.bf = tail call i32 @llvm.umin.i32(i32 %i.be, i32 26)
  %i.bg = add nuw nsw i32 %i.bf, 38               ; 2 uses
  %i.bh = mul nsw i32 %i.bg, %i.bb
  %i.bi = shl nsw i32 %i.ba, 6
  %i.bj = add nsw i32 %i.bi, %i.e
  %i.bk = add nsw i32 %i.bj, %i.bh
  %i.bl = ashr i32 %i.bk, %i.c                    ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  %i.bn = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 %10)
  %i.bo = trunc i32 %i.bn to i16
  %i.bp = select i1 %i.bm, i16 0, i16 %i.bo
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %.077.us.us, i64 %indvars.iv97
  store i16 %i.bp, ptr %i.bq, align 2, !tbaa !10
  %i.br = trunc nuw nsw i32 %i.bg to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %.081.us.us, i64 %indvars.iv97
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !13
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count103
  br i1 %exitcond.not, label %._crit_edge.split.us.us.us, label %scalar.ph, !llvm.loop !331

._crit_edge.split.us.us.us:                       ; preds = %scalar.ph, %middle.block
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.078.us.us, i64 %i.f
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %.079.us.us, i64 %i.f
  %i.bv = getelementptr inbounds i8, ptr %.077.us.us, i64 %1
  %.182.us.us = getelementptr inbounds nuw i8, ptr %.081.us.us, i64 %i.j
  %i.bw = add nsw i32 %.080.us.us, -1             ; 2 uses
  %.not86.us.us = icmp eq i32 %i.bw, 0
  br i1 %.not86.us.us, label %.split91, label %.lr.ph.us.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.split.us.us
  %.081.us = phi ptr [ %.182.us, %._crit_edge.split.us.us ], [ %6, %.lr.ph.us.preheader ] ; 7 uses
  %.080.us = phi i32 [ %i.dw, %._crit_edge.split.us.us ], [ %5, %.lr.ph.us.preheader ] ; 2 uses
  %.079.us = phi ptr [ %i.dt, %._crit_edge.split.us.us ], [ %3, %.lr.ph.us.preheader ] ; 3 uses
  %.078.us = phi ptr [ %i.ds, %._crit_edge.split.us.us ], [ %2, %.lr.ph.us.preheader ] ; 3 uses
  %.077.us = phi ptr [ %i.du, %._crit_edge.split.us.us ], [ %0, %.lr.ph.us.preheader ] ; 3 uses
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.memcheck144

vector.memcheck144:                               ; preds = %.lr.ph.us
  %scevgep146 = getelementptr i8, ptr %.081.us, i64 %wide.trip.count103 ; 3 uses
  %bound0149 = icmp ult ptr %0, %scevgep146
  %bound1150 = icmp ult ptr %.081.us, %scevgep145
  %found.conflict151 = and i1 %bound0149, %bound1150
  %conflict.rdx162.reass = or i1 %found.conflict151, %invariant.op192
  %bound0163 = icmp ult ptr %.081.us, %scevgep147
  %bound1164 = icmp ult ptr %2, %scevgep146
  %found.conflict165 = and i1 %bound0163, %bound1164
  %conflict.rdx166 = or i1 %conflict.rdx162.reass, %found.conflict165
  %bound0167 = icmp ult ptr %.081.us, %scevgep148
  %bound1168 = icmp ult ptr %3, %scevgep146
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %conflict.rdx166, %found.conflict169
  br i1 %conflict.rdx170, label %scalar.ph171.preheader, label %vector.body181

vector.body181:                                   ; preds = %vector.memcheck144, %vector.body181
  %index182 = phi i64 [ %index.next185, %vector.body181 ], [ 0, %vector.memcheck144 ] ; 5 uses
  %i.bx = getelementptr inbounds nuw [2 x i8], ptr %.078.us, i64 %index182
  %wide.load183 = load <8 x i16>, ptr %i.bx, align 2, !tbaa !10, !alias.scope !345
  %i.by = sext <8 x i16> %wide.load183 to <8 x i32>
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.079.us, i64 %index182
  %wide.load184 = load <8 x i16>, ptr %i.bz, align 2, !tbaa !10, !alias.scope !346
  %i.ca = sext <8 x i16> %wide.load184 to <8 x i32> ; 2 uses
  %i.cb = sub nsw <8 x i32> %i.by, %i.ca          ; 2 uses
  %i.cc = tail call <8 x i32> @llvm.abs.v8i32(<8 x i32> %i.cb, i1 true)
  %i.cd = add nuw nsw <8 x i32> %i.cc, splat (i32 32)
  %i.ce = lshr <8 x i32> %i.cd, splat (i32 10)
  %i.cf = tail call <8 x i32> @llvm.umin.v8i32(<8 x i32> %i.ce, <8 x i32> splat (i32 26))
  %i.cg = add nuw nsw <8 x i32> %i.cf, splat (i32 38) ; 2 uses
  %i.ch = mul nsw <8 x i32> %i.cg, %i.cb
  %i.ci = shl nsw <8 x i32> %i.ca, splat (i32 6)
  %i.cj = add nsw <8 x i32> %i.ci, %broadcast.splat176
  %i.ck = add nsw <8 x i32> %i.cj, %i.ch
  %i.cl = ashr <8 x i32> %i.ck, %broadcast.splat178 ; 2 uses
  %i.cm = icmp slt <8 x i32> %i.cl, zeroinitializer
  %i.cn = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.cl, <8 x i32> %broadcast.splat180)
  %i.co = trunc <8 x i32> %i.cn to <8 x i16>
  %i.cp = select <8 x i1> %i.cm, <8 x i16> zeroinitializer, <8 x i16> %i.co
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %.077.us, i64 %index182
  store <8 x i16> %i.cp, ptr %i.cq, align 2, !tbaa !10, !alias.scope !347, !noalias !348
  %i.cr = trunc nuw nsw <8 x i32> %i.cg to <8 x i8>
  %i.cs = getelementptr inbounds nuw i8, ptr %.081.us, i64 %index182
  store <8 x i8> %i.cr, ptr %i.cs, align 1, !tbaa !13, !alias.scope !349, !noalias !350
  %index.next185 = add nuw i64 %index182, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next185, %n.vec174
  br i1 %i.ct, label %middle.block186, label %vector.body181, !llvm.loop !337

middle.block186:                                  ; preds = %vector.body181
  br i1 %cmp.n187, label %._crit_edge.split.us.us, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %vector.memcheck144, %.lr.ph.us, %middle.block186
  %indvars.iv100.ph = phi i64 [ 0, %vector.memcheck144 ], [ 0, %.lr.ph.us ], [ %n.vec174, %middle.block186 ]
  br label %scalar.ph171

scalar.ph171:                                     ; preds = %scalar.ph171.preheader, %scalar.ph171
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %scalar.ph171 ], [ %indvars.iv100.ph, %scalar.ph171.preheader ] ; 5 uses
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %.078.us, i64 %indvars.iv100
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !10
  %i.cw = sext i16 %i.cv to i32
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.079.us, i64 %indvars.iv100
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !10
  %i.cz = sext i16 %i.cy to i32                   ; 2 uses
  %i.da = sub nsw i32 %i.cw, %i.cz                ; 2 uses
  %i.db = tail call i32 @llvm.abs.i32(i32 %i.da, i1 true)
  %i.dc = add nuw nsw i32 %i.db, 32
  %i.dd = lshr i32 %i.dc, 10
  %i.de = tail call i32 @llvm.umin.i32(i32 %i.dd, i32 26)
  %i.df = add nuw nsw i32 %i.de, 38               ; 2 uses
  %i.dg = mul nsw i32 %i.df, %i.da
  %i.dh = shl nsw i32 %i.cz, 6
  %i.di = add nsw i32 %i.dh, %i.e
  %i.dj = add nsw i32 %i.di, %i.dg
  %i.dk = ashr i32 %i.dj, %i.c                    ; 2 uses
  %i.dl = icmp slt i32 %i.dk, 0
  %i.dm = tail call i32 @llvm.smin.i32(i32 %i.dk, i32 %10)
  %i.dn = trunc i32 %i.dm to i16
  %i.do = select i1 %i.dl, i16 0, i16 %i.dn
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %.077.us, i64 %indvars.iv100
  store i16 %i.do, ptr %i.dp, align 2, !tbaa !10
  %i.dq = trunc nuw nsw i32 %i.df to i8
  %i.dr = getelementptr inbounds nuw i8, ptr %.081.us, i64 %indvars.iv100
  store i8 %i.dq, ptr %i.dr, align 1, !tbaa !13
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge.split.us.us, label %scalar.ph171, !llvm.loop !338

._crit_edge.split.us.us:                          ; preds = %scalar.ph171, %middle.block186
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %.078.us, i64 %i.f
end_hunk_6
