Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/dsp?download=true
inline.NumInlined: 81
inline.NumDeleted: 60
loop-unroll.NumCompletelyUnrolled: 168
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 307
begin_hunk_0_@apply_prof_uni_w_12:.preheader.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.a, label %.preheader, !llvm.loop !477

bb.a:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_bdof_12(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = alloca [2 x [256 x i16]], align 16       ; 6 uses
  %i.b = alloca [2 x [256 x i16]], align 16       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = lshr i64 %1, 1                           ; 2 uses
  %i.d = icmp sgt i32 %5, 0                       ; 2 uses
  %i.e = icmp sgt i32 %4, 0                       ; 2 uses
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %.preheader.preheader.i, label %prof_grad_filter_12.exit69

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.f = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.02535.i = phi i32 [ %i.y, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.02634.i = phi ptr [ %i.x, %._crit_edge.i ], [ %2, %.preheader.preheader.i ] ; 4 uses
  %.02733.i = phi ptr [ %i.v, %._crit_edge.i ], [ %i.a, %.preheader.preheader.i ] ; 3 uses
  %.02832.i = phi ptr [ %i.w, %._crit_edge.i ], [ %i.b, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.g = getelementptr i8, ptr %.02634.i, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.02634.i, i64 %i.h ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %wide.load = load <8 x i16>, ptr %i.i, align 2, !tbaa !45
  %i.j = ashr <8 x i16> %wide.load, splat (i16 6)
  %i.k = getelementptr inbounds i8, ptr %next.gep, i64 -2
  %wide.load108 = load <8 x i16>, ptr %i.k, align 2, !tbaa !45
  %i.l = ashr <8 x i16> %wide.load108, splat (i16 6)
  %i.m = sub nsw <8 x i16> %i.j, %i.l
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.02733.i, i64 %index
  store <8 x i16> %i.m, ptr %i.n, align 2, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %next.gep, i64 256
  %wide.load109 = load <8 x i16>, ptr %i.o, align 2, !tbaa !45
  %i.p = ashr <8 x i16> %wide.load109, splat (i16 6)
  %i.q = getelementptr inbounds i8, ptr %next.gep, i64 -256
  %wide.load110 = load <8 x i16>, ptr %i.q, align 2, !tbaa !45
  %i.r = ashr <8 x i16> %wide.load110, splat (i16 6)
  %i.s = sub nsw <8 x i16> %i.p, %i.r
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02832.i, i64 %index
  store <8 x i16> %i.s, ptr %i.t, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !478

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  %.02430.i.ph = phi ptr [ %.02634.i, %.preheader.i ], [ %i.g, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.v = getelementptr inbounds nuw i8, ptr %.02733.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.02832.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.02634.i, i64 256
  %i.y = add nuw nsw i32 %.02535.i, 1             ; 2 uses
  %exitcond38.not.i = icmp eq i32 %i.y, %5
  br i1 %exitcond38.not.i, label %prof_grad_filter_12.exit, label %.preheader.i, !llvm.loop !479

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.02430.i = phi ptr [ %i.z, %scalar.ph ], [ %.02430.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02430.i, i64 2 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !45
  %i.ab = ashr i16 %i.aa, 6
  %i.ac = getelementptr inbounds i8, ptr %.02430.i, i64 -2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !45
  %i.ae = ashr i16 %i.ad, 6
  %narrow.i = sub nsw i16 %i.ab, %i.ae
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.02733.i, i64 %indvars.iv.i
  store i16 %narrow.i, ptr %i.af, align 2, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %.02430.i, i64 256
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !45
  %i.ai = ashr i16 %i.ah, 6
  %i.aj = getelementptr inbounds i8, ptr %.02430.i, i64 -256
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !45
  %i.al = ashr i16 %i.ak, 6
  %narrow29.i = sub nsw i16 %i.ai, %i.al
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.02832.i, i64 %indvars.iv.i
  store i16 %narrow29.i, ptr %i.am, align 2, !tbaa !45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !480

prof_grad_filter_12.exit:                         ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %min.iters.check113 = icmp ult i32 %4, 8
  %n.vec115 = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.ap = shl nuw nsw i64 %n.vec115, 1
  %cmp.n125 = icmp eq i64 %n.vec115, %wide.trip.count.i
  br label %.preheader.i56

.preheader.i56:                                   ; preds = %._crit_edge.i67, %prof_grad_filter_12.exit
  %.02535.i57 = phi i32 [ %i.bi, %._crit_edge.i67 ], [ 0, %prof_grad_filter_12.exit ]
  %.02634.i58 = phi ptr [ %i.bh, %._crit_edge.i67 ], [ %3, %prof_grad_filter_12.exit ] ; 4 uses
  %.02733.i59 = phi ptr [ %i.bf, %._crit_edge.i67 ], [ %i.an, %prof_grad_filter_12.exit ] ; 3 uses
  %.02832.i60 = phi ptr [ %i.bg, %._crit_edge.i67 ], [ %i.ao, %prof_grad_filter_12.exit ] ; 3 uses
  br i1 %min.iters.check113, label %scalar.ph112.preheader, label %vector.ph114

vector.ph114:                                     ; preds = %.preheader.i56
  %i.aq = getelementptr i8, ptr %.02634.i58, i64 %i.ap
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next123, %vector.body116 ] ; 4 uses
  %i.ar = shl i64 %index117, 1
  %next.gep118 = getelementptr i8, ptr %.02634.i58, i64 %i.ar ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %next.gep118, i64 2
  %wide.load119 = load <8 x i16>, ptr %i.as, align 2, !tbaa !45
  %i.at = ashr <8 x i16> %wide.load119, splat (i16 6)
  %i.au = getelementptr inbounds i8, ptr %next.gep118, i64 -2
  %wide.load120 = load <8 x i16>, ptr %i.au, align 2, !tbaa !45
  %i.av = ashr <8 x i16> %wide.load120, splat (i16 6)
  %i.aw = sub nsw <8 x i16> %i.at, %i.av
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.02733.i59, i64 %index117
  store <8 x i16> %i.aw, ptr %i.ax, align 2, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep118, i64 256
  %wide.load121 = load <8 x i16>, ptr %i.ay, align 2, !tbaa !45
  %i.az = ashr <8 x i16> %wide.load121, splat (i16 6)
  %i.ba = getelementptr inbounds i8, ptr %next.gep118, i64 -256
  %wide.load122 = load <8 x i16>, ptr %i.ba, align 2, !tbaa !45
  %i.bb = ashr <8 x i16> %wide.load122, splat (i16 6)
  %i.bc = sub nsw <8 x i16> %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.02832.i60, i64 %index117
  store <8 x i16> %i.bc, ptr %i.bd, align 2, !tbaa !45
  %index.next123 = add nuw i64 %index117, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next123, %n.vec115
  br i1 %i.be, label %middle.block124, label %vector.body116, !llvm.loop !481

middle.block124:                                  ; preds = %vector.body116
  br i1 %cmp.n125, label %._crit_edge.i67, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %.preheader.i56, %middle.block124
  %indvars.iv.i61.ph = phi i64 [ 0, %.preheader.i56 ], [ %n.vec115, %middle.block124 ]
  %.02430.i62.ph = phi ptr [ %.02634.i58, %.preheader.i56 ], [ %i.aq, %middle.block124 ]
  br label %scalar.ph112

._crit_edge.i67:                                  ; preds = %scalar.ph112, %middle.block124
  %i.bf = getelementptr inbounds nuw i8, ptr %.02733.i59, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.02832.i60, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %.02634.i58, i64 256
  %i.bi = add nuw nsw i32 %.02535.i57, 1          ; 2 uses
  %exitcond38.not.i68 = icmp eq i32 %i.bi, %5
  br i1 %exitcond38.not.i68, label %prof_grad_filter_12.exit69, label %.preheader.i56, !llvm.loop !479

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i65, %scalar.ph112 ], [ %indvars.iv.i61.ph, %scalar.ph112.preheader ] ; 3 uses
  %.02430.i62 = phi ptr [ %i.bj, %scalar.ph112 ], [ %.02430.i62.ph, %scalar.ph112.preheader ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02430.i62, i64 2 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !45
  %i.bl = ashr i16 %i.bk, 6
  %i.bm = getelementptr inbounds i8, ptr %.02430.i62, i64 -2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !45
  %i.bo = ashr i16 %i.bn, 6
  %narrow.i63 = sub nsw i16 %i.bl, %i.bo
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.02733.i59, i64 %indvars.iv.i61
  store i16 %narrow.i63, ptr %i.bp, align 2, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %.02430.i62, i64 256
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !45
  %i.bs = ashr i16 %i.br, 6
  %i.bt = getelementptr inbounds i8, ptr %.02430.i62, i64 -256
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !45
  %i.bv = ashr i16 %i.bu, 6
  %narrow29.i64 = sub nsw i16 %i.bs, %i.bv
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.02832.i60, i64 %indvars.iv.i61
  store i16 %narrow29.i64, ptr %i.bw, align 2, !tbaa !45
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %wide.trip.count.i
  br i1 %exitcond.not.i66, label %._crit_edge.i67, label %scalar.ph112, !llvm.loop !482

prof_grad_filter_12.exit69:                       ; preds = %._crit_edge.i67, %bb.a
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge86.split

.preheader.lr.ph:                                 ; preds = %prof_grad_filter_12.exit69
  %.idx = shl nuw nsw i64 %i.c, 3
  br i1 %i.e, label %.preheader.preheader, label %._crit_edge86.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bx = zext nneg i32 %4 to i64
  %i.by = zext nneg i32 %4 to i64
  %i.bz = zext nneg i32 %5 to i64
  %i.ca = zext nneg i32 %5 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv92 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next93, %._crit_edge ] ; 4 uses
  %.085 = phi ptr [ %0, %.preheader.preheader ], [ %i.ch, %._crit_edge ] ; 2 uses
  %i.cd = shl nuw nsw i64 %indvars.iv92, 7        ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cd
  %6 = shl nuw nsw i64 %indvars.iv92, 4
  %i.cg = icmp eq i64 %indvars.iv92, 0
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 4 ; 3 uses
  %7 = icmp eq i64 %indvars.iv.next93, %i.bz
  br label %bb.b

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %prof_grad_filter_12.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

._crit_edge:                                      ; preds = %apply_bdof_min_block_12.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.085, i64 %.idx
  %i.ci = icmp samesign ult i64 %indvars.iv.next93, %i.ca
  br i1 %i.ci, label %.preheader, label %._crit_edge86.split, !llvm.loop !483

bb.b:                                             ; preds = %.preheader, %apply_bdof_min_block_12.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %apply_bdof_min_block_12.exit ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv ; 2 uses
  %i.cl = add nuw nsw i64 %indvars.iv, %6         ; 4 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cl ; 7 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cl ; 7 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cl ; 7 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cl ; 7 uses
  %.not = icmp ne i64 %indvars.iv, 0              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.cq = icmp eq i64 %indvars.iv.next, %i.bx
  %i.cr = sext i1 %.not to i32
  %i.cs = sext i1 %.not to i64                    ; 2 uses
  %i.ct = select i1 %i.cq, i32 3, i32 4           ; 2 uses
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.085, i64 %indvars.iv
  %i.cw = icmp sgt i32 %op.rdx141, 0
  br i1 %i.cw, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.d, %bb.b
  %.06116.i = phi i32 [ -1, %bb.b ], [ %i.hu, %bb.d ] ; 4 uses
  %.06215.i = phi i32 [ 0, %bb.b ], [ %op.rdx129, %bb.d ]
  %.06314.i = phi i32 [ 0, %bb.b ], [ %op.rdx132, %bb.d ]
  %.06513.i = phi i32 [ 0, %bb.b ], [ %op.rdx135, %bb.d ]
  %.06712.i = phi i32 [ 0, %bb.b ], [ %op.rdx138, %bb.d ]
  %.06911.i = phi i32 [ 0, %bb.b ], [ %op.rdx141, %bb.d ]
  %i.cx = icmp slt i32 %.06116.i, 0
  %i.cy = and i1 %i.cg, %i.cx
  %i.cz = zext i1 %i.cy to i32
  %i.da = add nsw i32 %.06116.i, %i.cz
  %i.db = icmp eq i32 %.06116.i, 4
  %i.dc = and i1 %7, %i.db
  %.neg.i = sext i1 %i.dc to i32
  %i.dd = add nsw i32 %i.da, %.neg.i              ; 2 uses
  %i.de = shl nsw i32 %i.dd, 7
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.cj, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.df ; 3 uses
  %i.di = shl nsw i32 %i.dd, 4                    ; 3 uses
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.dg, i64 %i.cs
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !45
  %i.dl = ashr i16 %i.dk, 4
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.cs
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !45
  %i.do = ashr i16 %i.dn, 4
  %narrow.i70 = sub nsw i16 %i.dl, %i.do
  %i.dp = sext i16 %narrow.i70 to i32             ; 3 uses
  %i.dq = add nsw i32 %i.di, %i.cr
  %i.dr = sext i32 %i.dq to i64                   ; 4 uses
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !45
  %i.du = sext i16 %i.dt to i32
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.dr
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !45
  %i.dx = sext i16 %i.dw to i32
  %i.dy = add nsw i32 %i.dx, %i.du
  %i.dz = ashr i32 %i.dy, 1                       ; 3 uses
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.dr
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !45
  %i.ec = sext i16 %i.eb to i32
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.dr
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !45
  %i.ef = sext i16 %i.ee to i32
  %i.eg = add nsw i32 %i.ef, %i.ec
  %i.eh = ashr i32 %i.eg, 1                       ; 3 uses
  %i.ei = icmp slt i32 %i.eh, 0
  %i.ej = icmp slt i32 %i.dz, 0
  %.not.i = icmp eq i32 %i.dz, 0
  %i.ek = sub nsw i32 0, %i.dp                    ; 2 uses
  %i.el = select i1 %.not.i, i32 0, i32 %i.ek
  %.neg76.i = select i1 %i.ej, i32 %i.dp, i32 %i.el
  %.not79.i = icmp eq i32 %i.eh, 0
  %i.em = select i1 %.not79.i, i32 0, i32 %i.ek
  %.neg78.i = select i1 %i.ei, i32 %i.dp, i32 %i.em
  %i.en = sext i32 %i.di to i64                   ; 4 uses
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.en
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.en
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.en
  %i.er = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.en
  %i.es = load <4 x i16>, ptr %i.eq, align 8, !tbaa !45
  %i.et = sext <4 x i16> %i.es to <4 x i32>
  %i.eu = load <4 x i16>, ptr %i.er, align 8, !tbaa !45
  %i.ev = sext <4 x i16> %i.eu to <4 x i32>
  %i.ew = add nsw <4 x i32> %i.ev, %i.et
  %i.ex = ashr <4 x i32> %i.ew, splat (i32 1)     ; 4 uses
  %i.ey = load <4 x i16>, ptr %i.dg, align 2, !tbaa !45
  %i.ez = ashr <4 x i16> %i.ey, splat (i16 4)
  %i.fa = load <4 x i16>, ptr %i.dh, align 2, !tbaa !45
  %i.fb = ashr <4 x i16> %i.fa, splat (i16 4)
  %i.fc = sub nsw <4 x i16> %i.ez, %i.fb          ; 3 uses
  %i.fd = sub nsw <4 x i16> zeroinitializer, %i.fc ; 2 uses
  %i.fe = icmp slt <4 x i32> %i.ex, zeroinitializer
  %i.ff = icmp eq <4 x i32> %i.ex, zeroinitializer
  %i.fg = select <4 x i1> %i.ff, <4 x i16> zeroinitializer, <4 x i16> %i.fd
  %i.fh = select <4 x i1> %i.fe, <4 x i16> %i.fc, <4 x i16> %i.fg
  %i.fi = insertelement <4 x i32> %i.ex, i32 %i.eh, i64 3 ; 2 uses
  %i.fj = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fi, i1 true)
  %i.fk = extractelement <4 x i32> %i.ex, i64 3   ; 2 uses
  %i.fl = tail call i32 @llvm.abs.i32(i32 %i.fk, i1 true)
  %i.fm = tail call i32 @llvm.scmp.i32.i32(i32 %i.fk, i32 0)
  %i.fn = load <4 x i16>, ptr %i.eo, align 8, !tbaa !45
  %i.fo = sext <4 x i16> %i.fn to <4 x i32>
  %i.fp = load <4 x i16>, ptr %i.ep, align 8, !tbaa !45
  %i.fq = sext <4 x i16> %i.fp to <4 x i32>
  %i.fr = add nsw <4 x i32> %i.fq, %i.fo
  %i.fs = ashr <4 x i32> %i.fr, splat (i32 1)     ; 4 uses
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.dz, i64 3 ; 2 uses
  %i.fu = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ft, i1 true)
  %i.fv = extractelement <4 x i32> %i.fs, i64 3   ; 2 uses
  %i.fw = tail call i32 @llvm.abs.i32(i32 %i.fv, i1 true)
  %i.fx = icmp slt <4 x i32> %i.fs, zeroinitializer
  %i.fy = icmp eq <4 x i32> %i.fs, zeroinitializer
  %i.fz = sext <4 x i16> %i.fd to <4 x i32>
  %i.ga = select <4 x i1> %i.fy, <4 x i32> zeroinitializer, <4 x i32> %i.fz
  %i.gb = sext <4 x i16> %i.fc to <4 x i32>
  %i.gc = select <4 x i1> %i.fx, <4 x i32> %i.gb, <4 x i32> %i.ga
  %i.gd = tail call <4 x i32> @llvm.scmp.v4i32.v4i32(<4 x i32> %i.fi, <4 x i32> zeroinitializer)
  %i.ge = mul nsw <4 x i32> %i.gd, %i.ft
  %i.gf = mul nsw i32 %i.fm, %i.fv
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.cu
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !45
  %i.gi = ashr i16 %i.gh, 4
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.cu
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !45
  %i.gl = ashr i16 %i.gk, 4
  %narrow.5.i = sub nsw i16 %i.gi, %i.gl
  %i.gm = sext i16 %narrow.5.i to i32             ; 3 uses
  %i.gn = or disjoint i32 %i.di, %i.ct
  %i.go = sext i32 %i.gn to i64                   ; 4 uses
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !45
  %i.gr = sext i16 %i.gq to i32
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.go
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !45
  %i.gu = sext i16 %i.gt to i32
  %i.gv = add nsw i32 %i.gu, %i.gr
  %i.gw = ashr i32 %i.gv, 1                       ; 4 uses
  %i.gx = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.go
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !45
  %i.gz = sext i16 %i.gy to i32
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.go
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !45
  %i.hc = sext i16 %i.hb to i32
  %i.hd = add nsw i32 %i.hc, %i.gz
  %i.he = ashr i32 %i.hd, 1                       ; 4 uses
  %i.hf = tail call i32 @llvm.abs.i32(i32 %i.gw, i1 true)
  %i.hg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fu)
  %op.rdx139 = add i32 %i.hg, %i.fw
  %op.rdx140 = add i32 %i.hf, %.06911.i
  %op.rdx141 = add i32 %op.rdx139, %op.rdx140     ; 5 uses
  %i.hh = tail call i32 @llvm.abs.i32(i32 %i.he, i1 true)
  %i.hi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fj)
  %op.rdx136 = add i32 %i.hi, %i.fl
  %op.rdx137 = add i32 %i.hh, %.06712.i
  %op.rdx138 = add i32 %op.rdx136, %op.rdx137     ; 5 uses
  %i.hj = icmp slt i32 %i.he, 0
  %i.hk = tail call i32 @llvm.scmp.i32.i32(i32 %i.he, i32 0)
  %i.hl = mul nsw i32 %i.hk, %i.gw
  %i.hm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ge)
  %op.rdx133 = add i32 %i.hm, %i.gf
  %op.rdx134 = add i32 %i.hl, %.06513.i
  %op.rdx135 = add i32 %op.rdx133, %op.rdx134     ; 2 uses
  %i.hn = icmp slt i32 %i.gw, 0
  %.not.5.i = icmp eq i32 %i.gw, 0
  %i.ho = sub nsw i32 0, %i.gm                    ; 2 uses
  %i.hp = select i1 %.not.5.i, i32 0, i32 %i.ho
  %.neg76.5.i = select i1 %i.hn, i32 %i.gm, i32 %i.hp
  %i.hq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gc)
  %op.rdx130 = add i32 %i.hq, %.neg76.i
  %op.rdx131 = add i32 %.neg76.5.i, %.06314.i
  %op.rdx132 = add i32 %op.rdx130, %op.rdx131     ; 2 uses
  %.not79.5.i = icmp eq i32 %i.he, 0
  %i.hr = select i1 %.not79.5.i, i32 0, i32 %i.ho
  %.neg78.5.i = select i1 %i.hj, i32 %i.gm, i32 %i.hr
  %i.hs = sext <4 x i16> %i.fh to <4 x i32>
  %i.ht = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.hs)
  %op.rdx = add i32 %i.ht, %.neg78.i
  %op.rdx128 = add i32 %.neg78.5.i, %.06215.i
  %op.rdx129 = add i32 %op.rdx, %op.rdx128        ; 2 uses
  %i.hu = add nsw i32 %.06116.i, 1                ; 2 uses
  %exitcond.not.i71 = icmp eq i32 %i.hu, 5
  br i1 %exitcond.not.i71, label %bb.c, label %bb.d, !llvm.loop !484

bb.e:                                             ; preds = %bb.c
  %i.hv = shl nsw i32 %op.rdx132, 2
  %.not.i82.i = icmp samesign ult i32 %op.rdx141, 65536 ; 2 uses
  %i.hw = lshr i32 %op.rdx141, 16
  %spec.select.i83.i = select i1 %.not.i82.i, i32 %op.rdx141, i32 %i.hw ; 3 uses
  %spec.select12.i84.i = select i1 %.not.i82.i, i32 0, i32 16 ; 2 uses
  %.not11.i85.i = icmp samesign ult i32 %spec.select.i83.i, 256 ; 2 uses
  %i.hx = lshr i32 %spec.select.i83.i, 8
  %i.hy = or disjoint i32 %spec.select12.i84.i, 8
  %.110.i86.i = select i1 %.not11.i85.i, i32 %spec.select.i83.i, i32 %i.hx
  %.1.i87.i = select i1 %.not11.i85.i, i32 %spec.select12.i84.i, i32 %i.hy
  %i.hz = zext nneg i32 %.110.i86.i to i64
  %i.ia = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !62
  %i.ic = zext i8 %i.ib to i32
  %i.id = add nuw nsw i32 %.1.i87.i, %i.ic
  %i.ie = ashr i32 %i.hv, %i.id
  %i.if = tail call i32 @llvm.smax.i32(i32 %i.ie, i32 -15)
  %.0.i81.i = tail call i32 @llvm.smin.i32(i32 %i.if, i32 15)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.ig = phi i32 [ %.0.i81.i, %bb.e ], [ 0, %bb.c ] ; 5 uses
  %i.ih = icmp sgt i32 %op.rdx138, 0
  br i1 %i.ih, label %bb.g, label %derive_bdof_vx_vy_12.exit

bb.g:                                             ; preds = %bb.f
  %i.ii = shl nsw i32 %op.rdx129, 2
  %i.ij = mul nsw i32 %i.ig, %op.rdx135
  %i.ik = ashr i32 %i.ij, 1
  %i.il = sub nsw i32 %i.ii, %i.ik
  %.not.i.i = icmp samesign ult i32 %op.rdx138, 65536 ; 2 uses
  %i.im = lshr i32 %op.rdx138, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %op.rdx138, i32 %i.im ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.in = lshr i32 %spec.select.i.i, 8
  %i.io = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.in
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.io
  %i.ip = zext nneg i32 %.110.i.i to i64
  %i.iq = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !62
  %i.is = zext i8 %i.ir to i32
  %i.it = add nuw nsw i32 %.1.i.i, %i.is
  %i.iu = ashr i32 %i.il, %i.it
  %i.iv = tail call i32 @llvm.smax.i32(i32 %i.iu, i32 -15)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.iv, i32 15)
  br label %derive_bdof_vx_vy_12.exit
end_hunk_0
begin_hunk_1_@apply_prof_uni_w_10:.preheader.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4
  br i1 %exitcond.not, label %bb.a, label %.preheader, !llvm.loop !1277

bb.a:                                             ; preds = %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @apply_bdof_10(ptr nofree noundef writeonly captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) #2 {
bb.a:
  %i.a = alloca [2 x [256 x i16]], align 16       ; 6 uses
  %i.b = alloca [2 x [256 x i16]], align 16       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = lshr i64 %1, 1                           ; 2 uses
  %i.d = icmp sgt i32 %5, 0                       ; 2 uses
  %i.e = icmp sgt i32 %4, 0                       ; 2 uses
  %or.cond.i = and i1 %i.e, %i.d
  br i1 %or.cond.i, label %.preheader.preheader.i, label %prof_grad_filter_10.exit69

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.f = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.02535.i = phi i32 [ %i.y, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.02634.i = phi ptr [ %i.x, %._crit_edge.i ], [ %2, %.preheader.preheader.i ] ; 4 uses
  %.02733.i = phi ptr [ %i.v, %._crit_edge.i ], [ %i.a, %.preheader.preheader.i ] ; 3 uses
  %.02832.i = phi ptr [ %i.w, %._crit_edge.i ], [ %i.b, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.g = getelementptr i8, ptr %.02634.i, i64 %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.h = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.02634.i, i64 %i.h ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %wide.load = load <8 x i16>, ptr %i.i, align 2, !tbaa !45
  %i.j = ashr <8 x i16> %wide.load, splat (i16 6)
  %i.k = getelementptr inbounds i8, ptr %next.gep, i64 -2
  %wide.load108 = load <8 x i16>, ptr %i.k, align 2, !tbaa !45
  %i.l = ashr <8 x i16> %wide.load108, splat (i16 6)
  %i.m = sub nsw <8 x i16> %i.j, %i.l
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %.02733.i, i64 %index
  store <8 x i16> %i.m, ptr %i.n, align 2, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %next.gep, i64 256
  %wide.load109 = load <8 x i16>, ptr %i.o, align 2, !tbaa !45
  %i.p = ashr <8 x i16> %wide.load109, splat (i16 6)
  %i.q = getelementptr inbounds i8, ptr %next.gep, i64 -256
  %wide.load110 = load <8 x i16>, ptr %i.q, align 2, !tbaa !45
  %i.r = ashr <8 x i16> %wide.load110, splat (i16 6)
  %i.s = sub nsw <8 x i16> %i.p, %i.r
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %.02832.i, i64 %index
  store <8 x i16> %i.s, ptr %i.t, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !1278

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  %.02430.i.ph = phi ptr [ %.02634.i, %.preheader.i ], [ %i.g, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.v = getelementptr inbounds nuw i8, ptr %.02733.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.02832.i, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %.02634.i, i64 256
  %i.y = add nuw nsw i32 %.02535.i, 1             ; 2 uses
  %exitcond38.not.i = icmp eq i32 %i.y, %5
  br i1 %exitcond38.not.i, label %prof_grad_filter_10.exit, label %.preheader.i, !llvm.loop !1279

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.02430.i = phi ptr [ %i.z, %scalar.ph ], [ %.02430.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.02430.i, i64 2 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !45
  %i.ab = ashr i16 %i.aa, 6
  %i.ac = getelementptr inbounds i8, ptr %.02430.i, i64 -2
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !45
  %i.ae = ashr i16 %i.ad, 6
  %narrow.i = sub nsw i16 %i.ab, %i.ae
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %.02733.i, i64 %indvars.iv.i
  store i16 %narrow.i, ptr %i.af, align 2, !tbaa !45
  %i.ag = getelementptr inbounds nuw i8, ptr %.02430.i, i64 256
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !45
  %i.ai = ashr i16 %i.ah, 6
  %i.aj = getelementptr inbounds i8, ptr %.02430.i, i64 -256
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !45
  %i.al = ashr i16 %i.ak, 6
  %narrow29.i = sub nsw i16 %i.ai, %i.al
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %.02832.i, i64 %indvars.iv.i
  store i16 %narrow29.i, ptr %i.am, align 2, !tbaa !45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1280

prof_grad_filter_10.exit:                         ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %min.iters.check113 = icmp ult i32 %4, 8
  %n.vec115 = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.ap = shl nuw nsw i64 %n.vec115, 1
  %cmp.n125 = icmp eq i64 %n.vec115, %wide.trip.count.i
  br label %.preheader.i56

.preheader.i56:                                   ; preds = %._crit_edge.i67, %prof_grad_filter_10.exit
  %.02535.i57 = phi i32 [ %i.bi, %._crit_edge.i67 ], [ 0, %prof_grad_filter_10.exit ]
  %.02634.i58 = phi ptr [ %i.bh, %._crit_edge.i67 ], [ %3, %prof_grad_filter_10.exit ] ; 4 uses
  %.02733.i59 = phi ptr [ %i.bf, %._crit_edge.i67 ], [ %i.an, %prof_grad_filter_10.exit ] ; 3 uses
  %.02832.i60 = phi ptr [ %i.bg, %._crit_edge.i67 ], [ %i.ao, %prof_grad_filter_10.exit ] ; 3 uses
  br i1 %min.iters.check113, label %scalar.ph112.preheader, label %vector.ph114

vector.ph114:                                     ; preds = %.preheader.i56
  %i.aq = getelementptr i8, ptr %.02634.i58, i64 %i.ap
  br label %vector.body116

vector.body116:                                   ; preds = %vector.body116, %vector.ph114
  %index117 = phi i64 [ 0, %vector.ph114 ], [ %index.next123, %vector.body116 ] ; 4 uses
  %i.ar = shl i64 %index117, 1
  %next.gep118 = getelementptr i8, ptr %.02634.i58, i64 %i.ar ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %next.gep118, i64 2
  %wide.load119 = load <8 x i16>, ptr %i.as, align 2, !tbaa !45
  %i.at = ashr <8 x i16> %wide.load119, splat (i16 6)
  %i.au = getelementptr inbounds i8, ptr %next.gep118, i64 -2
  %wide.load120 = load <8 x i16>, ptr %i.au, align 2, !tbaa !45
  %i.av = ashr <8 x i16> %wide.load120, splat (i16 6)
  %i.aw = sub nsw <8 x i16> %i.at, %i.av
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %.02733.i59, i64 %index117
  store <8 x i16> %i.aw, ptr %i.ax, align 2, !tbaa !45
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep118, i64 256
  %wide.load121 = load <8 x i16>, ptr %i.ay, align 2, !tbaa !45
  %i.az = ashr <8 x i16> %wide.load121, splat (i16 6)
  %i.ba = getelementptr inbounds i8, ptr %next.gep118, i64 -256
  %wide.load122 = load <8 x i16>, ptr %i.ba, align 2, !tbaa !45
  %i.bb = ashr <8 x i16> %wide.load122, splat (i16 6)
  %i.bc = sub nsw <8 x i16> %i.az, %i.bb
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %.02832.i60, i64 %index117
  store <8 x i16> %i.bc, ptr %i.bd, align 2, !tbaa !45
  %index.next123 = add nuw i64 %index117, 8       ; 2 uses
  %i.be = icmp eq i64 %index.next123, %n.vec115
  br i1 %i.be, label %middle.block124, label %vector.body116, !llvm.loop !1281

middle.block124:                                  ; preds = %vector.body116
  br i1 %cmp.n125, label %._crit_edge.i67, label %scalar.ph112.preheader

scalar.ph112.preheader:                           ; preds = %.preheader.i56, %middle.block124
  %indvars.iv.i61.ph = phi i64 [ 0, %.preheader.i56 ], [ %n.vec115, %middle.block124 ]
  %.02430.i62.ph = phi ptr [ %.02634.i58, %.preheader.i56 ], [ %i.aq, %middle.block124 ]
  br label %scalar.ph112

._crit_edge.i67:                                  ; preds = %scalar.ph112, %middle.block124
  %i.bf = getelementptr inbounds nuw i8, ptr %.02733.i59, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.02832.i60, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %.02634.i58, i64 256
  %i.bi = add nuw nsw i32 %.02535.i57, 1          ; 2 uses
  %exitcond38.not.i68 = icmp eq i32 %i.bi, %5
  br i1 %exitcond38.not.i68, label %prof_grad_filter_10.exit69, label %.preheader.i56, !llvm.loop !1279

scalar.ph112:                                     ; preds = %scalar.ph112.preheader, %scalar.ph112
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i65, %scalar.ph112 ], [ %indvars.iv.i61.ph, %scalar.ph112.preheader ] ; 3 uses
  %.02430.i62 = phi ptr [ %i.bj, %scalar.ph112 ], [ %.02430.i62.ph, %scalar.ph112.preheader ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.02430.i62, i64 2 ; 2 uses
  %i.bk = load i16, ptr %i.bj, align 2, !tbaa !45
  %i.bl = ashr i16 %i.bk, 6
  %i.bm = getelementptr inbounds i8, ptr %.02430.i62, i64 -2
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !45
  %i.bo = ashr i16 %i.bn, 6
  %narrow.i63 = sub nsw i16 %i.bl, %i.bo
  %i.bp = getelementptr inbounds nuw [2 x i8], ptr %.02733.i59, i64 %indvars.iv.i61
  store i16 %narrow.i63, ptr %i.bp, align 2, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %.02430.i62, i64 256
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !45
  %i.bs = ashr i16 %i.br, 6
  %i.bt = getelementptr inbounds i8, ptr %.02430.i62, i64 -256
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !45
  %i.bv = ashr i16 %i.bu, 6
  %narrow29.i64 = sub nsw i16 %i.bs, %i.bv
  %i.bw = getelementptr inbounds nuw [2 x i8], ptr %.02832.i60, i64 %indvars.iv.i61
  store i16 %narrow29.i64, ptr %i.bw, align 2, !tbaa !45
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %wide.trip.count.i
  br i1 %exitcond.not.i66, label %._crit_edge.i67, label %scalar.ph112, !llvm.loop !1282

prof_grad_filter_10.exit69:                       ; preds = %._crit_edge.i67, %bb.a
  br i1 %i.d, label %.preheader.lr.ph, label %._crit_edge86.split

.preheader.lr.ph:                                 ; preds = %prof_grad_filter_10.exit69
  %.idx = shl nuw nsw i64 %i.c, 3
  br i1 %i.e, label %.preheader.preheader, label %._crit_edge86.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bx = zext nneg i32 %4 to i64
  %i.by = zext nneg i32 %4 to i64
  %i.bz = zext nneg i32 %5 to i64
  %i.ca = zext nneg i32 %5 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv92 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next93, %._crit_edge ] ; 4 uses
  %.085 = phi ptr [ %0, %.preheader.preheader ], [ %i.ch, %._crit_edge ] ; 2 uses
  %i.cd = shl nuw nsw i64 %indvars.iv92, 7        ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cd
  %6 = shl nuw nsw i64 %indvars.iv92, 4
  %i.cg = icmp eq i64 %indvars.iv92, 0
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 4 ; 3 uses
  %7 = icmp eq i64 %indvars.iv.next93, %i.bz
  br label %bb.b

._crit_edge86.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %prof_grad_filter_10.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

._crit_edge:                                      ; preds = %apply_bdof_min_block_10.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %.085, i64 %.idx
  %i.ci = icmp samesign ult i64 %indvars.iv.next93, %i.ca
  br i1 %i.ci, label %.preheader, label %._crit_edge86.split, !llvm.loop !1283

bb.b:                                             ; preds = %.preheader, %apply_bdof_min_block_10.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %apply_bdof_min_block_10.exit ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv ; 2 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv ; 2 uses
  %i.cl = add nuw nsw i64 %indvars.iv, %6         ; 4 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cl ; 7 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cl ; 7 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cl ; 7 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cl ; 7 uses
  %.not = icmp ne i64 %indvars.iv, 0              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.cq = icmp eq i64 %indvars.iv.next, %i.bx
  %i.cr = sext i1 %.not to i32
  %i.cs = sext i1 %.not to i64                    ; 2 uses
  %i.ct = select i1 %i.cq, i32 3, i32 4           ; 2 uses
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr %.085, i64 %indvars.iv
  %i.cw = icmp sgt i32 %op.rdx141, 0
  br i1 %i.cw, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.d, %bb.b
  %.06116.i = phi i32 [ -1, %bb.b ], [ %i.hu, %bb.d ] ; 4 uses
  %.06215.i = phi i32 [ 0, %bb.b ], [ %op.rdx129, %bb.d ]
  %.06314.i = phi i32 [ 0, %bb.b ], [ %op.rdx132, %bb.d ]
  %.06513.i = phi i32 [ 0, %bb.b ], [ %op.rdx135, %bb.d ]
  %.06712.i = phi i32 [ 0, %bb.b ], [ %op.rdx138, %bb.d ]
  %.06911.i = phi i32 [ 0, %bb.b ], [ %op.rdx141, %bb.d ]
  %i.cx = icmp slt i32 %.06116.i, 0
  %i.cy = and i1 %i.cg, %i.cx
  %i.cz = zext i1 %i.cy to i32
  %i.da = add nsw i32 %.06116.i, %i.cz
  %i.db = icmp eq i32 %.06116.i, 4
  %i.dc = and i1 %7, %i.db
  %.neg.i = sext i1 %i.dc to i32
  %i.dd = add nsw i32 %i.da, %.neg.i              ; 2 uses
  %i.de = shl nsw i32 %i.dd, 7
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.cj, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.df ; 3 uses
  %i.di = shl nsw i32 %i.dd, 4                    ; 3 uses
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.dg, i64 %i.cs
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !45
  %i.dl = ashr i16 %i.dk, 4
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.cs
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !45
  %i.do = ashr i16 %i.dn, 4
  %narrow.i70 = sub nsw i16 %i.dl, %i.do
  %i.dp = sext i16 %narrow.i70 to i32             ; 3 uses
  %i.dq = add nsw i32 %i.di, %i.cr
  %i.dr = sext i32 %i.dq to i64                   ; 4 uses
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !45
  %i.du = sext i16 %i.dt to i32
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.dr
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !45
  %i.dx = sext i16 %i.dw to i32
  %i.dy = add nsw i32 %i.dx, %i.du
  %i.dz = ashr i32 %i.dy, 1                       ; 3 uses
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.dr
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !45
  %i.ec = sext i16 %i.eb to i32
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.dr
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !45
  %i.ef = sext i16 %i.ee to i32
  %i.eg = add nsw i32 %i.ef, %i.ec
  %i.eh = ashr i32 %i.eg, 1                       ; 3 uses
  %i.ei = icmp slt i32 %i.eh, 0
  %i.ej = icmp slt i32 %i.dz, 0
  %.not.i = icmp eq i32 %i.dz, 0
  %i.ek = sub nsw i32 0, %i.dp                    ; 2 uses
  %i.el = select i1 %.not.i, i32 0, i32 %i.ek
  %.neg76.i = select i1 %i.ej, i32 %i.dp, i32 %i.el
  %.not79.i = icmp eq i32 %i.eh, 0
  %i.em = select i1 %.not79.i, i32 0, i32 %i.ek
  %.neg78.i = select i1 %i.ei, i32 %i.dp, i32 %i.em
  %i.en = sext i32 %i.di to i64                   ; 4 uses
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.en
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.en
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.en
  %i.er = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.en
  %i.es = load <4 x i16>, ptr %i.eq, align 8, !tbaa !45
  %i.et = sext <4 x i16> %i.es to <4 x i32>
  %i.eu = load <4 x i16>, ptr %i.er, align 8, !tbaa !45
  %i.ev = sext <4 x i16> %i.eu to <4 x i32>
  %i.ew = add nsw <4 x i32> %i.ev, %i.et
  %i.ex = ashr <4 x i32> %i.ew, splat (i32 1)     ; 4 uses
  %i.ey = load <4 x i16>, ptr %i.dg, align 2, !tbaa !45
  %i.ez = ashr <4 x i16> %i.ey, splat (i16 4)
  %i.fa = load <4 x i16>, ptr %i.dh, align 2, !tbaa !45
  %i.fb = ashr <4 x i16> %i.fa, splat (i16 4)
  %i.fc = sub nsw <4 x i16> %i.ez, %i.fb          ; 3 uses
  %i.fd = sub nsw <4 x i16> zeroinitializer, %i.fc ; 2 uses
  %i.fe = icmp slt <4 x i32> %i.ex, zeroinitializer
  %i.ff = icmp eq <4 x i32> %i.ex, zeroinitializer
  %i.fg = select <4 x i1> %i.ff, <4 x i16> zeroinitializer, <4 x i16> %i.fd
  %i.fh = select <4 x i1> %i.fe, <4 x i16> %i.fc, <4 x i16> %i.fg
  %i.fi = insertelement <4 x i32> %i.ex, i32 %i.eh, i64 3 ; 2 uses
  %i.fj = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fi, i1 true)
  %i.fk = extractelement <4 x i32> %i.ex, i64 3   ; 2 uses
  %i.fl = tail call i32 @llvm.abs.i32(i32 %i.fk, i1 true)
  %i.fm = tail call i32 @llvm.scmp.i32.i32(i32 %i.fk, i32 0)
  %i.fn = load <4 x i16>, ptr %i.eo, align 8, !tbaa !45
  %i.fo = sext <4 x i16> %i.fn to <4 x i32>
  %i.fp = load <4 x i16>, ptr %i.ep, align 8, !tbaa !45
  %i.fq = sext <4 x i16> %i.fp to <4 x i32>
  %i.fr = add nsw <4 x i32> %i.fq, %i.fo
  %i.fs = ashr <4 x i32> %i.fr, splat (i32 1)     ; 4 uses
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.dz, i64 3 ; 2 uses
  %i.fu = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ft, i1 true)
  %i.fv = extractelement <4 x i32> %i.fs, i64 3   ; 2 uses
  %i.fw = tail call i32 @llvm.abs.i32(i32 %i.fv, i1 true)
  %i.fx = icmp slt <4 x i32> %i.fs, zeroinitializer
  %i.fy = icmp eq <4 x i32> %i.fs, zeroinitializer
  %i.fz = sext <4 x i16> %i.fd to <4 x i32>
  %i.ga = select <4 x i1> %i.fy, <4 x i32> zeroinitializer, <4 x i32> %i.fz
  %i.gb = sext <4 x i16> %i.fc to <4 x i32>
  %i.gc = select <4 x i1> %i.fx, <4 x i32> %i.gb, <4 x i32> %i.ga
  %i.gd = tail call <4 x i32> @llvm.scmp.v4i32.v4i32(<4 x i32> %i.fi, <4 x i32> zeroinitializer)
  %i.ge = mul nsw <4 x i32> %i.gd, %i.ft
  %i.gf = mul nsw i32 %i.fm, %i.fv
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.cu
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !45
  %i.gi = ashr i16 %i.gh, 4
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.cu
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !45
  %i.gl = ashr i16 %i.gk, 4
  %narrow.5.i = sub nsw i16 %i.gi, %i.gl
  %i.gm = sext i16 %narrow.5.i to i32             ; 3 uses
  %i.gn = or disjoint i32 %i.di, %i.ct
  %i.go = sext i32 %i.gn to i64                   ; 4 uses
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !45
  %i.gr = sext i16 %i.gq to i32
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.go
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !45
  %i.gu = sext i16 %i.gt to i32
  %i.gv = add nsw i32 %i.gu, %i.gr
  %i.gw = ashr i32 %i.gv, 1                       ; 4 uses
  %i.gx = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.go
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !45
  %i.gz = sext i16 %i.gy to i32
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.go
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !45
  %i.hc = sext i16 %i.hb to i32
  %i.hd = add nsw i32 %i.hc, %i.gz
  %i.he = ashr i32 %i.hd, 1                       ; 4 uses
  %i.hf = tail call i32 @llvm.abs.i32(i32 %i.gw, i1 true)
  %i.hg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fu)
  %op.rdx139 = add i32 %i.hg, %i.fw
  %op.rdx140 = add i32 %i.hf, %.06911.i
  %op.rdx141 = add i32 %op.rdx139, %op.rdx140     ; 5 uses
  %i.hh = tail call i32 @llvm.abs.i32(i32 %i.he, i1 true)
  %i.hi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fj)
  %op.rdx136 = add i32 %i.hi, %i.fl
  %op.rdx137 = add i32 %i.hh, %.06712.i
  %op.rdx138 = add i32 %op.rdx136, %op.rdx137     ; 5 uses
  %i.hj = icmp slt i32 %i.he, 0
  %i.hk = tail call i32 @llvm.scmp.i32.i32(i32 %i.he, i32 0)
  %i.hl = mul nsw i32 %i.hk, %i.gw
  %i.hm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ge)
  %op.rdx133 = add i32 %i.hm, %i.gf
  %op.rdx134 = add i32 %i.hl, %.06513.i
  %op.rdx135 = add i32 %op.rdx133, %op.rdx134     ; 2 uses
  %i.hn = icmp slt i32 %i.gw, 0
  %.not.5.i = icmp eq i32 %i.gw, 0
  %i.ho = sub nsw i32 0, %i.gm                    ; 2 uses
  %i.hp = select i1 %.not.5.i, i32 0, i32 %i.ho
  %.neg76.5.i = select i1 %i.hn, i32 %i.gm, i32 %i.hp
  %i.hq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gc)
  %op.rdx130 = add i32 %i.hq, %.neg76.i
  %op.rdx131 = add i32 %.neg76.5.i, %.06314.i
  %op.rdx132 = add i32 %op.rdx130, %op.rdx131     ; 2 uses
  %.not79.5.i = icmp eq i32 %i.he, 0
  %i.hr = select i1 %.not79.5.i, i32 0, i32 %i.ho
  %.neg78.5.i = select i1 %i.hj, i32 %i.gm, i32 %i.hr
  %i.hs = sext <4 x i16> %i.fh to <4 x i32>
  %i.ht = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.hs)
  %op.rdx = add i32 %i.ht, %.neg78.i
  %op.rdx128 = add i32 %.neg78.5.i, %.06215.i
  %op.rdx129 = add i32 %op.rdx, %op.rdx128        ; 2 uses
  %i.hu = add nsw i32 %.06116.i, 1                ; 2 uses
  %exitcond.not.i71 = icmp eq i32 %i.hu, 5
  br i1 %exitcond.not.i71, label %bb.c, label %bb.d, !llvm.loop !1284

bb.e:                                             ; preds = %bb.c
  %i.hv = shl nsw i32 %op.rdx132, 2
  %.not.i82.i = icmp samesign ult i32 %op.rdx141, 65536 ; 2 uses
  %i.hw = lshr i32 %op.rdx141, 16
  %spec.select.i83.i = select i1 %.not.i82.i, i32 %op.rdx141, i32 %i.hw ; 3 uses
  %spec.select12.i84.i = select i1 %.not.i82.i, i32 0, i32 16 ; 2 uses
  %.not11.i85.i = icmp samesign ult i32 %spec.select.i83.i, 256 ; 2 uses
  %i.hx = lshr i32 %spec.select.i83.i, 8
  %i.hy = or disjoint i32 %spec.select12.i84.i, 8
  %.110.i86.i = select i1 %.not11.i85.i, i32 %spec.select.i83.i, i32 %i.hx
  %.1.i87.i = select i1 %.not11.i85.i, i32 %spec.select12.i84.i, i32 %i.hy
  %i.hz = zext nneg i32 %.110.i86.i to i64
  %i.ia = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !62
  %i.ic = zext i8 %i.ib to i32
  %i.id = add nuw nsw i32 %.1.i87.i, %i.ic
  %i.ie = ashr i32 %i.hv, %i.id
  %i.if = tail call i32 @llvm.smax.i32(i32 %i.ie, i32 -15)
  %.0.i81.i = tail call i32 @llvm.smin.i32(i32 %i.if, i32 15)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.ig = phi i32 [ %.0.i81.i, %bb.e ], [ 0, %bb.c ] ; 5 uses
  %i.ih = icmp sgt i32 %op.rdx138, 0
  br i1 %i.ih, label %bb.g, label %derive_bdof_vx_vy_10.exit

bb.g:                                             ; preds = %bb.f
  %i.ii = shl nsw i32 %op.rdx129, 2
  %i.ij = mul nsw i32 %i.ig, %op.rdx135
  %i.ik = ashr i32 %i.ij, 1
  %i.il = sub nsw i32 %i.ii, %i.ik
  %.not.i.i = icmp samesign ult i32 %op.rdx138, 65536 ; 2 uses
  %i.im = lshr i32 %op.rdx138, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %op.rdx138, i32 %i.im ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.in = lshr i32 %spec.select.i.i, 8
  %i.io = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.in
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.io
  %i.ip = zext nneg i32 %.110.i.i to i64
  %i.iq = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !62
  %i.is = zext i8 %i.ir to i32
  %i.it = add nuw nsw i32 %.1.i.i, %i.is
  %i.iu = ashr i32 %i.il, %i.it
  %i.iv = tail call i32 @llvm.smax.i32(i32 %i.iu, i32 -15)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.iv, i32 15)
  br label %derive_bdof_vx_vy_10.exit
end_hunk_1
begin_hunk_2_@apply_bdof_8:bb.a
  %i.c = icmp sgt i32 %5, 0                       ; 2 uses
  %i.d = icmp sgt i32 %4, 0                       ; 2 uses
  %or.cond.i = and i1 %i.d, %i.c
  br i1 %or.cond.i, label %.preheader.preheader.i, label %prof_grad_filter_8.exit69

.preheader.preheader.i:                           ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %4 to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %4, 8
  %n.vec = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.e = shl nuw nsw i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.02535.i = phi i32 [ %i.x, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.02634.i = phi ptr [ %i.w, %._crit_edge.i ], [ %2, %.preheader.preheader.i ] ; 4 uses
  %.02733.i = phi ptr [ %i.u, %._crit_edge.i ], [ %i.a, %.preheader.preheader.i ] ; 3 uses
  %.02832.i = phi ptr [ %i.v, %._crit_edge.i ], [ %i.b, %.preheader.preheader.i ] ; 3 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.f = getelementptr i8, ptr %.02634.i, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.g = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %.02634.i, i64 %i.g ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %wide.load = load <8 x i16>, ptr %i.h, align 2, !tbaa !45
  %i.i = ashr <8 x i16> %wide.load, splat (i16 6)
  %i.j = getelementptr inbounds i8, ptr %next.gep, i64 -2
  %wide.load110 = load <8 x i16>, ptr %i.j, align 2, !tbaa !45
  %i.k = ashr <8 x i16> %wide.load110, splat (i16 6)
  %i.l = sub nsw <8 x i16> %i.i, %i.k
  %i.m = getelementptr inbounds nuw [2 x i8], ptr %.02733.i, i64 %index
  store <8 x i16> %i.l, ptr %i.m, align 2, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %next.gep, i64 256
  %wide.load111 = load <8 x i16>, ptr %i.n, align 2, !tbaa !45
  %i.o = ashr <8 x i16> %wide.load111, splat (i16 6)
  %i.p = getelementptr inbounds i8, ptr %next.gep, i64 -256
  %wide.load112 = load <8 x i16>, ptr %i.p, align 2, !tbaa !45
  %i.q = ashr <8 x i16> %wide.load112, splat (i16 6)
  %i.r = sub nsw <8 x i16> %i.o, %i.q
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %.02832.i, i64 %index
  store <8 x i16> %i.r, ptr %i.s, align 2, !tbaa !45
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !1993

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.preheader.i ], [ %n.vec, %middle.block ]
  %.02430.i.ph = phi ptr [ %.02634.i, %.preheader.i ], [ %i.f, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %i.u = getelementptr inbounds nuw i8, ptr %.02733.i, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.02832.i, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %.02634.i, i64 256
  %i.x = add nuw nsw i32 %.02535.i, 1             ; 2 uses
  %exitcond38.not.i = icmp eq i32 %i.x, %5
  br i1 %exitcond38.not.i, label %prof_grad_filter_8.exit, label %.preheader.i, !llvm.loop !1994

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %.02430.i = phi ptr [ %i.y, %scalar.ph ], [ %.02430.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02430.i, i64 2 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !45
  %i.aa = ashr i16 %i.z, 6
  %i.ab = getelementptr inbounds i8, ptr %.02430.i, i64 -2
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !45
  %i.ad = ashr i16 %i.ac, 6
  %narrow.i = sub nsw i16 %i.aa, %i.ad
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.02733.i, i64 %indvars.iv.i
  store i16 %narrow.i, ptr %i.ae, align 2, !tbaa !45
  %i.af = getelementptr inbounds nuw i8, ptr %.02430.i, i64 256
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !45
  %i.ah = ashr i16 %i.ag, 6
  %i.ai = getelementptr inbounds i8, ptr %.02430.i, i64 -256
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !45
  %i.ak = ashr i16 %i.aj, 6
  %narrow29.i = sub nsw i16 %i.ah, %i.ak
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %.02832.i, i64 %indvars.iv.i
  store i16 %narrow29.i, ptr %i.al, align 2, !tbaa !45
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1995

prof_grad_filter_8.exit:                          ; preds = %._crit_edge.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %min.iters.check115 = icmp ult i32 %4, 8
  %n.vec117 = and i64 %wide.trip.count.i, 2147483640 ; 4 uses
  %i.ao = shl nuw nsw i64 %n.vec117, 1
  %cmp.n127 = icmp eq i64 %n.vec117, %wide.trip.count.i
  br label %.preheader.i56

.preheader.i56:                                   ; preds = %._crit_edge.i67, %prof_grad_filter_8.exit
  %.02535.i57 = phi i32 [ %i.bh, %._crit_edge.i67 ], [ 0, %prof_grad_filter_8.exit ]
  %.02634.i58 = phi ptr [ %i.bg, %._crit_edge.i67 ], [ %3, %prof_grad_filter_8.exit ] ; 4 uses
  %.02733.i59 = phi ptr [ %i.be, %._crit_edge.i67 ], [ %i.am, %prof_grad_filter_8.exit ] ; 3 uses
  %.02832.i60 = phi ptr [ %i.bf, %._crit_edge.i67 ], [ %i.an, %prof_grad_filter_8.exit ] ; 3 uses
  br i1 %min.iters.check115, label %scalar.ph114.preheader, label %vector.ph116

vector.ph116:                                     ; preds = %.preheader.i56
  %i.ap = getelementptr i8, ptr %.02634.i58, i64 %i.ao
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph116
  %index119 = phi i64 [ 0, %vector.ph116 ], [ %index.next125, %vector.body118 ] ; 4 uses
  %i.aq = shl i64 %index119, 1
  %next.gep120 = getelementptr i8, ptr %.02634.i58, i64 %i.aq ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep120, i64 2
  %wide.load121 = load <8 x i16>, ptr %i.ar, align 2, !tbaa !45
  %i.as = ashr <8 x i16> %wide.load121, splat (i16 6)
  %i.at = getelementptr inbounds i8, ptr %next.gep120, i64 -2
  %wide.load122 = load <8 x i16>, ptr %i.at, align 2, !tbaa !45
  %i.au = ashr <8 x i16> %wide.load122, splat (i16 6)
  %i.av = sub nsw <8 x i16> %i.as, %i.au
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %.02733.i59, i64 %index119
  store <8 x i16> %i.av, ptr %i.aw, align 2, !tbaa !45
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep120, i64 256
  %wide.load123 = load <8 x i16>, ptr %i.ax, align 2, !tbaa !45
  %i.ay = ashr <8 x i16> %wide.load123, splat (i16 6)
  %i.az = getelementptr inbounds i8, ptr %next.gep120, i64 -256
  %wide.load124 = load <8 x i16>, ptr %i.az, align 2, !tbaa !45
  %i.ba = ashr <8 x i16> %wide.load124, splat (i16 6)
  %i.bb = sub nsw <8 x i16> %i.ay, %i.ba
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %.02832.i60, i64 %index119
  store <8 x i16> %i.bb, ptr %i.bc, align 2, !tbaa !45
  %index.next125 = add nuw i64 %index119, 8       ; 2 uses
  %i.bd = icmp eq i64 %index.next125, %n.vec117
  br i1 %i.bd, label %middle.block126, label %vector.body118, !llvm.loop !1996

middle.block126:                                  ; preds = %vector.body118
  br i1 %cmp.n127, label %._crit_edge.i67, label %scalar.ph114.preheader

scalar.ph114.preheader:                           ; preds = %.preheader.i56, %middle.block126
  %indvars.iv.i61.ph = phi i64 [ 0, %.preheader.i56 ], [ %n.vec117, %middle.block126 ]
  %.02430.i62.ph = phi ptr [ %.02634.i58, %.preheader.i56 ], [ %i.ap, %middle.block126 ]
  br label %scalar.ph114

._crit_edge.i67:                                  ; preds = %scalar.ph114, %middle.block126
  %i.be = getelementptr inbounds nuw i8, ptr %.02733.i59, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %.02832.i60, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %.02634.i58, i64 256
  %i.bh = add nuw nsw i32 %.02535.i57, 1          ; 2 uses
  %exitcond38.not.i68 = icmp eq i32 %i.bh, %5
  br i1 %exitcond38.not.i68, label %prof_grad_filter_8.exit69, label %.preheader.i56, !llvm.loop !1994

scalar.ph114:                                     ; preds = %scalar.ph114.preheader, %scalar.ph114
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i65, %scalar.ph114 ], [ %indvars.iv.i61.ph, %scalar.ph114.preheader ] ; 3 uses
  %.02430.i62 = phi ptr [ %i.bi, %scalar.ph114 ], [ %.02430.i62.ph, %scalar.ph114.preheader ] ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02430.i62, i64 2 ; 2 uses
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !45
  %i.bk = ashr i16 %i.bj, 6
  %i.bl = getelementptr inbounds i8, ptr %.02430.i62, i64 -2
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !45
  %i.bn = ashr i16 %i.bm, 6
  %narrow.i63 = sub nsw i16 %i.bk, %i.bn
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %.02733.i59, i64 %indvars.iv.i61
  store i16 %narrow.i63, ptr %i.bo, align 2, !tbaa !45
  %i.bp = getelementptr inbounds nuw i8, ptr %.02430.i62, i64 256
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !45
  %i.br = ashr i16 %i.bq, 6
  %i.bs = getelementptr inbounds i8, ptr %.02430.i62, i64 -256
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !45
  %i.bu = ashr i16 %i.bt, 6
  %narrow29.i64 = sub nsw i16 %i.br, %i.bu
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.02832.i60, i64 %indvars.iv.i61
  store i16 %narrow29.i64, ptr %i.bv, align 2, !tbaa !45
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i61, 1 ; 2 uses
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %wide.trip.count.i
  br i1 %exitcond.not.i66, label %._crit_edge.i67, label %scalar.ph114, !llvm.loop !1997

prof_grad_filter_8.exit69:                        ; preds = %._crit_edge.i67, %bb.a
  br i1 %i.c, label %.preheader.lr.ph, label %._crit_edge88.split

.preheader.lr.ph:                                 ; preds = %prof_grad_filter_8.exit69
  %i.bw = shl nsw i64 %1, 2
  br i1 %i.d, label %.preheader.preheader, label %._crit_edge88.split

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bx = zext nneg i32 %4 to i64
  %i.by = zext nneg i32 %4 to i64
  %i.bz = zext nneg i32 %5 to i64
  %i.ca = zext nneg i32 %5 to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 512
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv94 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next95, %._crit_edge ] ; 4 uses
  %.087 = phi ptr [ %0, %.preheader.preheader ], [ %i.ch, %._crit_edge ] ; 2 uses
  %i.cd = shl nuw nsw i64 %indvars.iv94, 7        ; 2 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.cd
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.cd
  %6 = shl nuw nsw i64 %indvars.iv94, 4
  %i.cg = icmp eq i64 %indvars.iv94, 0
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 4 ; 3 uses
  %7 = icmp eq i64 %indvars.iv.next95, %i.bz
  br label %bb.b

._crit_edge88.split:                              ; preds = %._crit_edge, %.preheader.lr.ph, %prof_grad_filter_8.exit69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

._crit_edge:                                      ; preds = %derive_bdof_vx_vy_8.exit
  %i.ch = getelementptr inbounds i8, ptr %.087, i64 %i.bw
  %i.ci = icmp samesign ult i64 %indvars.iv.next95, %i.ca
  br i1 %i.ci, label %.preheader, label %._crit_edge88.split, !llvm.loop !1998

bb.b:                                             ; preds = %.preheader, %derive_bdof_vx_vy_8.exit
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %derive_bdof_vx_vy_8.exit ] ; 6 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ce, i64 %indvars.iv ; 17 uses
  %i.ck = getelementptr inbounds nuw [2 x i8], ptr %i.cf, i64 %indvars.iv ; 17 uses
  %i.cl = add nuw nsw i64 %indvars.iv, %6         ; 4 uses
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.cl ; 19 uses
  %i.cn = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.cl ; 19 uses
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %i.cl ; 19 uses
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.cl ; 19 uses
  %.not = icmp ne i64 %indvars.iv, 0              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.cq = icmp eq i64 %indvars.iv.next, %i.bx
  %i.cr = sext i1 %.not to i32
  %i.cs = sext i1 %.not to i64                    ; 2 uses
  %i.ct = select i1 %i.cq, i32 3, i32 4           ; 2 uses
  %i.cu = zext nneg i32 %i.ct to i64              ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.cv = getelementptr inbounds nuw i8, ptr %.087, i64 %indvars.iv ; 5 uses
  %i.cw = icmp sgt i32 %op.rdx143, 0
  br i1 %i.cw, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.d, %bb.b
  %.06116.i = phi i32 [ -1, %bb.b ], [ %i.hu, %bb.d ] ; 4 uses
  %.06215.i = phi i32 [ 0, %bb.b ], [ %op.rdx131, %bb.d ]
  %.06314.i = phi i32 [ 0, %bb.b ], [ %op.rdx134, %bb.d ]
  %.06513.i = phi i32 [ 0, %bb.b ], [ %op.rdx137, %bb.d ]
  %.06712.i = phi i32 [ 0, %bb.b ], [ %op.rdx140, %bb.d ]
  %.06911.i = phi i32 [ 0, %bb.b ], [ %op.rdx143, %bb.d ]
  %i.cx = icmp slt i32 %.06116.i, 0
  %i.cy = and i1 %i.cg, %i.cx
  %i.cz = zext i1 %i.cy to i32
  %i.da = add nsw i32 %.06116.i, %i.cz
  %i.db = icmp eq i32 %.06116.i, 4
  %i.dc = and i1 %7, %i.db
  %.neg.i = sext i1 %i.dc to i32
  %i.dd = add nsw i32 %i.da, %.neg.i              ; 2 uses
  %i.de = shl nsw i32 %i.dd, 7
  %i.df = sext i32 %i.de to i64                   ; 2 uses
  %i.dg = getelementptr inbounds [2 x i8], ptr %i.cj, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [2 x i8], ptr %i.ck, i64 %i.df ; 3 uses
  %i.di = shl nsw i32 %i.dd, 4                    ; 3 uses
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.dg, i64 %i.cs
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !45
  %i.dl = ashr i16 %i.dk, 4
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.dh, i64 %i.cs
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !45
  %i.do = ashr i16 %i.dn, 4
  %narrow.i70 = sub nsw i16 %i.dl, %i.do
  %i.dp = sext i16 %narrow.i70 to i32             ; 3 uses
  %i.dq = add nsw i32 %i.di, %i.cr
  %i.dr = sext i32 %i.dq to i64                   ; 4 uses
  %i.ds = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !45
  %i.du = sext i16 %i.dt to i32
  %i.dv = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.dr
  %i.dw = load i16, ptr %i.dv, align 2, !tbaa !45
  %i.dx = sext i16 %i.dw to i32
  %i.dy = add nsw i32 %i.dx, %i.du
  %i.dz = ashr i32 %i.dy, 1                       ; 3 uses
  %i.ea = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.dr
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !45
  %i.ec = sext i16 %i.eb to i32
  %i.ed = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.dr
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !45
  %i.ef = sext i16 %i.ee to i32
  %i.eg = add nsw i32 %i.ef, %i.ec
  %i.eh = ashr i32 %i.eg, 1                       ; 3 uses
  %i.ei = icmp slt i32 %i.eh, 0
  %i.ej = icmp slt i32 %i.dz, 0
  %.not.i = icmp eq i32 %i.dz, 0
  %i.ek = sub nsw i32 0, %i.dp                    ; 2 uses
  %i.el = select i1 %.not.i, i32 0, i32 %i.ek
  %.neg76.i = select i1 %i.ej, i32 %i.dp, i32 %i.el
  %.not79.i = icmp eq i32 %i.eh, 0
  %i.em = select i1 %.not79.i, i32 0, i32 %i.ek
  %.neg78.i = select i1 %i.ei, i32 %i.dp, i32 %i.em
  %i.en = sext i32 %i.di to i64                   ; 4 uses
  %i.eo = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.en
  %i.ep = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.en
  %i.eq = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.en
  %i.er = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.en
  %i.es = load <4 x i16>, ptr %i.eq, align 8, !tbaa !45
  %i.et = sext <4 x i16> %i.es to <4 x i32>
  %i.eu = load <4 x i16>, ptr %i.er, align 8, !tbaa !45
  %i.ev = sext <4 x i16> %i.eu to <4 x i32>
  %i.ew = add nsw <4 x i32> %i.ev, %i.et
  %i.ex = ashr <4 x i32> %i.ew, splat (i32 1)     ; 4 uses
  %i.ey = load <4 x i16>, ptr %i.dg, align 2, !tbaa !45
  %i.ez = ashr <4 x i16> %i.ey, splat (i16 4)
  %i.fa = load <4 x i16>, ptr %i.dh, align 2, !tbaa !45
  %i.fb = ashr <4 x i16> %i.fa, splat (i16 4)
  %i.fc = sub nsw <4 x i16> %i.ez, %i.fb          ; 3 uses
  %i.fd = sub nsw <4 x i16> zeroinitializer, %i.fc ; 2 uses
  %i.fe = icmp slt <4 x i32> %i.ex, zeroinitializer
  %i.ff = icmp eq <4 x i32> %i.ex, zeroinitializer
  %i.fg = select <4 x i1> %i.ff, <4 x i16> zeroinitializer, <4 x i16> %i.fd
  %i.fh = select <4 x i1> %i.fe, <4 x i16> %i.fc, <4 x i16> %i.fg
  %i.fi = insertelement <4 x i32> %i.ex, i32 %i.eh, i64 3 ; 2 uses
  %i.fj = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.fi, i1 true)
  %i.fk = extractelement <4 x i32> %i.ex, i64 3   ; 2 uses
  %i.fl = tail call i32 @llvm.abs.i32(i32 %i.fk, i1 true)
  %i.fm = tail call i32 @llvm.scmp.i32.i32(i32 %i.fk, i32 0)
  %i.fn = load <4 x i16>, ptr %i.eo, align 8, !tbaa !45
  %i.fo = sext <4 x i16> %i.fn to <4 x i32>
  %i.fp = load <4 x i16>, ptr %i.ep, align 8, !tbaa !45
  %i.fq = sext <4 x i16> %i.fp to <4 x i32>
  %i.fr = add nsw <4 x i32> %i.fq, %i.fo
  %i.fs = ashr <4 x i32> %i.fr, splat (i32 1)     ; 4 uses
  %i.ft = insertelement <4 x i32> %i.fs, i32 %i.dz, i64 3 ; 2 uses
  %i.fu = tail call <4 x i32> @llvm.abs.v4i32(<4 x i32> %i.ft, i1 true)
  %i.fv = extractelement <4 x i32> %i.fs, i64 3   ; 2 uses
  %i.fw = tail call i32 @llvm.abs.i32(i32 %i.fv, i1 true)
  %i.fx = icmp slt <4 x i32> %i.fs, zeroinitializer
  %i.fy = icmp eq <4 x i32> %i.fs, zeroinitializer
  %i.fz = sext <4 x i16> %i.fd to <4 x i32>
  %i.ga = select <4 x i1> %i.fy, <4 x i32> zeroinitializer, <4 x i32> %i.fz
  %i.gb = sext <4 x i16> %i.fc to <4 x i32>
  %i.gc = select <4 x i1> %i.fx, <4 x i32> %i.gb, <4 x i32> %i.ga
  %i.gd = tail call <4 x i32> @llvm.scmp.v4i32.v4i32(<4 x i32> %i.fi, <4 x i32> zeroinitializer)
  %i.ge = mul nsw <4 x i32> %i.gd, %i.ft
  %i.gf = mul nsw i32 %i.fm, %i.fv
  %i.gg = getelementptr inbounds nuw [2 x i8], ptr %i.dg, i64 %i.cu
  %i.gh = load i16, ptr %i.gg, align 2, !tbaa !45
  %i.gi = ashr i16 %i.gh, 4
  %i.gj = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.cu
  %i.gk = load i16, ptr %i.gj, align 2, !tbaa !45
  %i.gl = ashr i16 %i.gk, 4
  %narrow.5.i = sub nsw i16 %i.gi, %i.gl
  %i.gm = sext i16 %narrow.5.i to i32             ; 3 uses
  %i.gn = or disjoint i32 %i.di, %i.ct
  %i.go = sext i32 %i.gn to i64                   ; 4 uses
  %i.gp = getelementptr inbounds [2 x i8], ptr %i.cm, i64 %i.go
  %i.gq = load i16, ptr %i.gp, align 2, !tbaa !45
  %i.gr = sext i16 %i.gq to i32
  %i.gs = getelementptr inbounds [2 x i8], ptr %i.cn, i64 %i.go
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !45
  %i.gu = sext i16 %i.gt to i32
  %i.gv = add nsw i32 %i.gu, %i.gr
  %i.gw = ashr i32 %i.gv, 1                       ; 4 uses
  %i.gx = getelementptr inbounds [2 x i8], ptr %i.co, i64 %i.go
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !45
  %i.gz = sext i16 %i.gy to i32
  %i.ha = getelementptr inbounds [2 x i8], ptr %i.cp, i64 %i.go
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !45
  %i.hc = sext i16 %i.hb to i32
  %i.hd = add nsw i32 %i.hc, %i.gz
  %i.he = ashr i32 %i.hd, 1                       ; 4 uses
  %i.hf = tail call i32 @llvm.abs.i32(i32 %i.gw, i1 true)
  %i.hg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fu)
  %op.rdx141 = add i32 %i.hg, %i.fw
  %op.rdx142 = add i32 %i.hf, %.06911.i
  %op.rdx143 = add i32 %op.rdx141, %op.rdx142     ; 5 uses
  %i.hh = tail call i32 @llvm.abs.i32(i32 %i.he, i1 true)
  %i.hi = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fj)
  %op.rdx138 = add i32 %i.hi, %i.fl
  %op.rdx139 = add i32 %i.hh, %.06712.i
  %op.rdx140 = add i32 %op.rdx138, %op.rdx139     ; 5 uses
  %i.hj = icmp slt i32 %i.he, 0
  %i.hk = tail call i32 @llvm.scmp.i32.i32(i32 %i.he, i32 0)
  %i.hl = mul nsw i32 %i.hk, %i.gw
  %i.hm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.ge)
  %op.rdx135 = add i32 %i.hm, %i.gf
  %op.rdx136 = add i32 %i.hl, %.06513.i
  %op.rdx137 = add i32 %op.rdx135, %op.rdx136     ; 2 uses
  %i.hn = icmp slt i32 %i.gw, 0
  %.not.5.i = icmp eq i32 %i.gw, 0
  %i.ho = sub nsw i32 0, %i.gm                    ; 2 uses
  %i.hp = select i1 %.not.5.i, i32 0, i32 %i.ho
  %.neg76.5.i = select i1 %i.hn, i32 %i.gm, i32 %i.hp
  %i.hq = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gc)
  %op.rdx132 = add i32 %i.hq, %.neg76.i
  %op.rdx133 = add i32 %.neg76.5.i, %.06314.i
  %op.rdx134 = add i32 %op.rdx132, %op.rdx133     ; 2 uses
  %.not79.5.i = icmp eq i32 %i.he, 0
  %i.hr = select i1 %.not79.5.i, i32 0, i32 %i.ho
  %.neg78.5.i = select i1 %i.hj, i32 %i.gm, i32 %i.hr
  %i.hs = sext <4 x i16> %i.fh to <4 x i32>
  %i.ht = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.hs)
  %op.rdx = add i32 %i.ht, %.neg78.i
  %op.rdx130 = add i32 %.neg78.5.i, %.06215.i
  %op.rdx131 = add i32 %op.rdx, %op.rdx130        ; 2 uses
  %i.hu = add nsw i32 %.06116.i, 1                ; 2 uses
  %exitcond.not.i71 = icmp eq i32 %i.hu, 5
  br i1 %exitcond.not.i71, label %bb.c, label %bb.d, !llvm.loop !1999

bb.e:                                             ; preds = %bb.c
  %i.hv = shl nsw i32 %op.rdx134, 2
  %.not.i82.i = icmp samesign ult i32 %op.rdx143, 65536 ; 2 uses
  %i.hw = lshr i32 %op.rdx143, 16
  %spec.select.i83.i = select i1 %.not.i82.i, i32 %op.rdx143, i32 %i.hw ; 3 uses
  %spec.select12.i84.i = select i1 %.not.i82.i, i32 0, i32 16 ; 2 uses
  %.not11.i85.i = icmp samesign ult i32 %spec.select.i83.i, 256 ; 2 uses
  %i.hx = lshr i32 %spec.select.i83.i, 8
  %i.hy = or disjoint i32 %spec.select12.i84.i, 8
  %.110.i86.i = select i1 %.not11.i85.i, i32 %spec.select.i83.i, i32 %i.hx
  %.1.i87.i = select i1 %.not11.i85.i, i32 %spec.select12.i84.i, i32 %i.hy
  %i.hz = zext nneg i32 %.110.i86.i to i64
  %i.ia = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.hz
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !62
  %i.ic = zext i8 %i.ib to i32
  %i.id = add nuw nsw i32 %.1.i87.i, %i.ic
  %i.ie = ashr i32 %i.hv, %i.id
  %i.if = tail call i32 @llvm.smax.i32(i32 %i.ie, i32 -15)
  %.0.i81.i = tail call i32 @llvm.smin.i32(i32 %i.if, i32 15)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %i.ig = phi i32 [ %.0.i81.i, %bb.e ], [ 0, %bb.c ] ; 17 uses
  %i.ih = icmp sgt i32 %op.rdx140, 0
  br i1 %i.ih, label %bb.g, label %derive_bdof_vx_vy_8.exit

bb.g:                                             ; preds = %bb.f
  %i.ii = shl nsw i32 %op.rdx131, 2
  %i.ij = mul nsw i32 %i.ig, %op.rdx137
  %i.ik = ashr i32 %i.ij, 1
  %i.il = sub nsw i32 %i.ii, %i.ik
  %.not.i.i = icmp samesign ult i32 %op.rdx140, 65536 ; 2 uses
  %i.im = lshr i32 %op.rdx140, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %op.rdx140, i32 %i.im ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.in = lshr i32 %spec.select.i.i, 8
  %i.io = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.in
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.io
  %i.ip = zext nneg i32 %.110.i.i to i64
  %i.iq = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ip
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !62
  %i.is = zext i8 %i.ir to i32
  %i.it = add nuw nsw i32 %.1.i.i, %i.is
  %i.iu = ashr i32 %i.il, %i.it
  %i.iv = tail call i32 @llvm.smax.i32(i32 %i.iu, i32 -15)
  %.0.i.i = tail call i32 @llvm.smin.i32(i32 %i.iv, i32 15)
  br label %derive_bdof_vx_vy_8.exit
end_hunk_2
