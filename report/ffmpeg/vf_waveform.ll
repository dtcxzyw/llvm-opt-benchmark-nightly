Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_waveform?download=true
inline.NumInlined: 250
inline.NumDeleted: 7
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 37
begin_hunk_0_@graticule_row:bb.a
  %i.cu = icmp slt i32 %i.cs, 10
  %spec.store.select = select i1 %i.cu, i32 4, i32 %i.ct
  %i.cv = load ptr, ptr %i.ac, align 8, !tbaa !133
  tail call void %i.cv(ptr noundef %1, i32 noundef %spec.store.select, i32 noundef %i.at, i32 noundef 1, float noundef %i.f, float noundef %i.g, ptr noundef nonnull %i.ci, ptr noundef nonnull %i.v) #12
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.cw = load i32, ptr %i.w, align 8, !tbaa !135
  %i.cx = sext i32 %i.cw to i64
  %i.cy = icmp slt i64 %indvars.iv.next110, %i.cx
  br i1 %i.cy, label %bb.k, label %.critedge.loopexit, !llvm.loop !318

.critedge.loopexit:                               ; preds = %bb.o, %bb.k
  %.pre113.pre = load i32, ptr %i.q, align 4, !tbaa !111
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph93, %.critedge.loopexit, %.preheader
  %.pre113 = phi i32 [ %.pre113.pre, %.critedge.loopexit ], [ %.pre113114, %.preheader ], [ %.pre113117, %.lr.ph93 ] ; 2 uses
  %i.cz = load i32, ptr %i.z, align 8, !tbaa !97
  %i.da = load i32, ptr %i.h, align 4, !tbaa !115 ; 3 uses
  %i.db = icmp eq i32 %i.da, 1
  %i.dc = select i1 %i.db, i32 %i.cz, i32 0
  %i.dd = add nsw i32 %i.dc, %.07899
  %i.de = icmp eq i32 %i.da, 2
  %i.df = select i1 %i.de, i32 %i.p, i32 0
  %i.dg = add nsw i32 %i.df, %.0100
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.e, %.critedge
  %.pre113118 = phi i32 [ %.pre113117, %bb.e ], [ %.pre113, %.critedge ], [ %.pre113117, %bb.d ]
  %i.dh = phi i32 [ %i.ad, %bb.e ], [ %.pre113, %.critedge ], [ %i.ad, %bb.d ] ; 2 uses
  %i.di = phi i32 [ 0, %bb.e ], [ %i.da, %.critedge ], [ %i.ae, %bb.d ]
  %.185 = phi i32 [ %.08497, %bb.e ], [ %i.ak, %.critedge ], [ %.08497, %bb.d ]
  %.179 = phi i32 [ %.07899, %bb.e ], [ %i.dd, %.critedge ], [ %.07899, %bb.d ]
  %.1 = phi i32 [ %.0100, %bb.e ], [ %i.dg, %.critedge ], [ %.0100, %bb.d ]
  %i.dj = add nuw nsw i32 %.08398, 1              ; 2 uses
  %i.dk = icmp slt i32 %i.dj, %i.dh
  br i1 %i.dk, label %bb.d, label %._crit_edge103, !llvm.loop !319

._crit_edge103:                                   ; preds = %bb.p, %bb.c
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare ptr @avpriv_cga_font_get() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @config_output(ptr noundef %0) #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !335    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !69   ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 22 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 4 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !111  ; 5 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !137
  br label %bb.l

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !113  ; 2 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i32 %i.h, 2147483640               ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.q, %vector.body ]
  %vec.phi175 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add nuw <4 x i32> %vec.ind, splat (i32 4)
  %i.m = lshr <4 x i32> %broadcast.splat, %vec.ind
  %i.n = lshr <4 x i32> %broadcast.splat, %step.add
  %i.o = and <4 x i32> %i.m, splat (i32 1)
  %i.p = and <4 x i32> %i.n, splat (i32 1)
  %i.q = add <4 x i32> %i.o, %vec.phi             ; 2 uses
  %i.r = add <4 x i32> %i.p, %vec.phi175          ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <4 x i32> %vec.ind, splat (i32 8)
  %i.s = icmp eq i32 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !320

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.r, %i.q
  %i.t = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %.0116138.ph = phi i32 [ 0, %.lr.ph ], [ %i.t, %middle.block ]
  %.0117137.ph = phi i32 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.0116138 = phi i32 [ %spec.select, %scalar.ph ], [ %.0116138.ph, %scalar.ph.preheader ]
  %.0117137 = phi i32 [ %i.w, %scalar.ph ], [ %.0117137.ph, %scalar.ph.preheader ] ; 2 uses
  %i.u = lshr i32 %i.l, %.0117137
  %i.v = and i32 %i.u, 1
  %spec.select = add nuw nsw i32 %i.v, %.0116138  ; 2 uses
  %i.w = add nuw nsw i32 %.0117137, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.w, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !321

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %spec.select.lcssa = phi i32 [ %i.t, %middle.block ], [ %spec.select, %scalar.ph ] ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %spec.select.lcssa, ptr %i.x, align 4, !tbaa !137
  %i.y = icmp eq i32 %spec.select.lcssa, 0
  br i1 %i.y, label %bb.l, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !130
  %i.ab = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.aa) #12 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 504
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !102
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !87
  %i.af = zext i8 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !100
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 352 ; 6 uses
  tail call void @av_freep(ptr noundef nonnull %i.ah) #12
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !116
  %.not = icmp eq i32 %i.aj, 0
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !97
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.an = load i32, ptr %i.am, align 4, !tbaa !115 ; 2 uses
  %i.ao = icmp eq i32 %i.an, 1
  %i.ap = select i1 %i.ao, i32 %spec.select.lcssa, i32 1
  %spec.select134 = mul nsw i32 %i.ap, %i.al      ; 2 uses
  %i.aq = icmp eq i32 %i.an, 2
  %i.ar = select i1 %i.aq, i32 %spec.select.lcssa, i32 1 ; 2 uses
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !98
  %i.au = mul nsw i32 %i.at, %i.ar
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 44 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !99
  %i.ax = mul nsw i32 %i.aw, %i.ar
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink = phi i32 [ %spec.select134, %bb.d ], [ %i.au, %bb.c ]
  %spec.select133.sink = phi i32 [ %i.ax, %bb.d ], [ %spec.select134, %bb.c ]
  %.0119.in = phi ptr [ %i.av, %bb.d ], [ %i.as, %bb.c ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sink, ptr %i.ay, align 8, !tbaa !98
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %spec.select133.sink, ptr %i.az, align 4, !tbaa !99
  %.0119 = load i32, ptr %.0119.in, align 4, !tbaa !84
  %.0119.fr = freeze i32 %.0119                   ; 4 uses
  %i.ba = sext i32 %.0119.fr to i64               ; 25 uses
  %i.bb = tail call ptr @av_malloc_array(i64 noundef %i.ba, i64 noundef 128) #12 ; 4 uses
  store ptr %i.bb, ptr %i.ah, align 8, !tbaa !336
  %.not129 = icmp eq ptr %i.bb, null
  br i1 %.not129, label %bb.l, label %.preheader136

.preheader136:                                    ; preds = %bb.e
  %i.bc = load i32, ptr %i.g, align 4, !tbaa !111 ; 3 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.lr.ph144, label %._crit_edge145

.lr.ph144:                                        ; preds = %.preheader136
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 496
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !114
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.f, i64 224 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 376 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %i.bo = icmp sgt i32 %.0119.fr, 0
  br i1 %i.bo, label %.lr.ph144.split.us.preheader, label %.lr.ph144.split

.lr.ph144.split.us.preheader:                     ; preds = %.lr.ph144
  %wide.trip.count = zext nneg i32 %.0119.fr to i64 ; 9 uses
  %scevgep = getelementptr i8, ptr %i.f, i64 84
  %i.bp = shl nuw nsw i64 %wide.trip.count, 2     ; 3 uses
  %min.iters.check333 = icmp ult i32 %.0119.fr, 48
  %n.vec474 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %cmp.n483 = icmp eq i64 %n.vec474, %wide.trip.count
  br label %.lr.ph144.split.us

.lr.ph144.split.us:                               ; preds = %.lr.ph144.split.us.preheader, %..loopexit_crit_edge.us
  %i.bq = phi i32 [ %i.bc, %.lr.ph144.split.us.preheader ], [ %i.bx, %..loopexit_crit_edge.us ]
  %i.br = phi ptr [ %i.bb, %.lr.ph144.split.us.preheader ], [ %i.by, %..loopexit_crit_edge.us ] ; 3 uses
  %indvars.iv162 = phi i64 [ 0, %.lr.ph144.split.us.preheader ], [ %indvars.iv.next163, %..loopexit_crit_edge.us ] ; 3 uses
  %.0123142.us = phi i32 [ 0, %.lr.ph144.split.us.preheader ], [ %.1124.us, %..loopexit_crit_edge.us ] ; 3 uses
  %i.bs = trunc nuw nsw i64 %indvars.iv162 to i32
  %i.bt = shl nuw i32 1, %i.bs
  %i.bu = load i32, ptr %i.bh, align 8, !tbaa !113
  %i.bv = and i32 %i.bu, %i.bt
  %.not131.us = icmp eq i32 %i.bv, 0
  br i1 %.not131.us, label %..loopexit_crit_edge.us, label %.preheader135.us

..loopexit_crit_edge.us.loopexit:                 ; preds = %.preheader.us, %middle.block482
  %i.bw = add nsw i32 %.0123142.us, 1
  %.pre165 = load i32, ptr %i.g, align 4, !tbaa !111
  br label %..loopexit_crit_edge.us

..loopexit_crit_edge.us:                          ; preds = %..loopexit_crit_edge.us.loopexit, %.lr.ph144.split.us
  %i.bx = phi i32 [ %i.bq, %.lr.ph144.split.us ], [ %.pre165, %..loopexit_crit_edge.us.loopexit ] ; 2 uses
  %i.by = phi ptr [ %i.br, %.lr.ph144.split.us ], [ %i.de, %..loopexit_crit_edge.us.loopexit ]
  %.1124.us = phi i32 [ %.0123142.us, %.lr.ph144.split.us ], [ %i.bw, %..loopexit_crit_edge.us.loopexit ]
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1 ; 2 uses
  %i.bz = sext i32 %i.bx to i64
  %i.ca = icmp slt i64 %indvars.iv.next163, %i.bz
  br i1 %i.ca, label %.lr.ph144.split.us, label %._crit_edge145, !llvm.loop !322

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %.preheader.us ], [ %indvars.iv158.ph, %.preheader.us.preheader ] ; 9 uses
  %i.cb = load i32, ptr %i.ei, align 4, !tbaa !84
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %indvars.iv158
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !84
  %i.cd = load i32, ptr %i.em, align 4, !tbaa !84
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv158
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !84
  %i.cf = load i32, ptr %i.ei, align 4, !tbaa !84
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %indvars.iv158
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !84
  %i.ch = load i32, ptr %i.em, align 4, !tbaa !84
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %indvars.iv158
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !84
  %i.cj = load i32, ptr %i.ei, align 4, !tbaa !84
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv158
  store i32 %i.cj, ptr %i.ck, align 4, !tbaa !84
  %i.cl = load i32, ptr %i.em, align 4, !tbaa !84
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %indvars.iv158
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !84
  %i.cn = load i32, ptr %i.ei, align 4, !tbaa !84
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %indvars.iv158
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !84
  %i.cp = load i32, ptr %i.em, align 4, !tbaa !84
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv158
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !84
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %exitcond161.not = icmp eq i64 %indvars.iv.next159, %wide.trip.count
  br i1 %exitcond161.not, label %..loopexit_crit_edge.us.loopexit, label %.preheader.us, !llvm.loop !323

.preheader135.us:                                 ; preds = %.lr.ph144.split.us
  %i.cr = getelementptr inbounds nuw [20 x i8], ptr %i.bg, i64 %indvars.iv162
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !103 ; 2 uses
  %i.ct = shl i32 %i.cs, 2
  %i.cu = sext i32 %i.cs to i64                   ; 5 uses
  %i.cv = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.cu ; 4 uses
  %i.cw = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.cu ; 4 uses
  %i.cx = sext i32 %i.ct to i64                   ; 12 uses
  %i.cy = mul nsw i64 %i.cx, %i.ba
  %i.cz = getelementptr [4 x i8], ptr %i.br, i64 %i.cy ; 11 uses
  store ptr %i.cz, ptr %i.cv, align 8, !tbaa !140
  %i.da = load ptr, ptr %i.ah, align 8, !tbaa !336 ; 2 uses
  %i.db = add nsw i64 %i.cx, 16                   ; 2 uses
  %i.dc = mul nsw i64 %i.db, %i.ba
  %i.dd = getelementptr [4 x i8], ptr %i.da, i64 %i.dc ; 11 uses
  store ptr %i.dd, ptr %i.cw, align 8, !tbaa !140
  %i.de = load ptr, ptr %i.ah, align 8, !tbaa !336 ; 16 uses
  %i.df = or disjoint i64 %i.cx, 1
  %i.dg = mul nsw i64 %i.df, %i.ba
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dg ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.cv, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !140
  %i.dj = add nsw i64 %i.cx, 17                   ; 2 uses
  %i.dk = mul nsw i64 %i.dj, %i.ba
  %i.dl = getelementptr [4 x i8], ptr %i.de, i64 %i.dk ; 11 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !140
  %i.dn = or disjoint i64 %i.cx, 2
  %i.do = mul nsw i64 %i.dn, %i.ba
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.do ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !140
  %i.dr = add nsw i64 %i.cx, 18                   ; 2 uses
  %i.ds = mul nsw i64 %i.dr, %i.ba
  %i.dt = getelementptr [4 x i8], ptr %i.de, i64 %i.ds ; 11 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !140
  %i.dv = or disjoint i64 %i.cx, 3
  %i.dw = mul nsw i64 %i.dv, %i.ba
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.dw ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !140
  %i.dz = add nsw i64 %i.cx, 19                   ; 2 uses
  %i.ea = mul nsw i64 %i.dz, %i.ba
  %i.eb = getelementptr [4 x i8], ptr %i.de, i64 %i.ea ; 11 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.eb, ptr %i.ec, align 8, !tbaa !140
  %i.ed = load i32, ptr %i.bk, align 8, !tbaa !97
  %i.ee = mul nsw i32 %i.ed, %.0123142.us
  %i.ef = load i32, ptr %i.bl, align 4, !tbaa !115
  %i.eg = icmp eq i32 %i.ef, 1
  %i.eh = select i1 %i.eg, i32 %i.ee, i32 0       ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.cu ; 14 uses
  store i32 %i.eh, ptr %i.ei, align 4, !tbaa !84
  %i.ej = load i32, ptr %i.bk, align 8, !tbaa !97
  %i.ek = add i32 %i.ej, -1
  %i.el = add i32 %i.ek, %i.eh
  %i.em = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.cu ; 6 uses
  store i32 %i.el, ptr %i.em, align 4, !tbaa !84
  br i1 %min.iters.check333, label %.preheader.us.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader135.us
  %i.en = mul nsw i64 %i.ba, %i.cx
  %i.eo = add i64 %i.en, %wide.trip.count
  %i.ep = shl i64 %i.eo, 2
  %i.eq = getelementptr i8, ptr %i.br, i64 %i.ep  ; 8 uses
  %i.er = mul nsw i64 %i.db, %i.ba
  %i.es = add i64 %i.er, %wide.trip.count
  %i.et = shl i64 %i.es, 2
  %i.eu = getelementptr i8, ptr %i.da, i64 %i.et  ; 8 uses
  %i.ev = or disjoint i64 %i.cx, 1
  %i.ew = mul nsw i64 %i.ev, %i.ba
  %i.ex = shl i64 %i.ew, 2                        ; 2 uses
  %i.ey = getelementptr i8, ptr %i.de, i64 %i.ex  ; 8 uses
  %i.ez = getelementptr i8, ptr %i.de, i64 %i.ex
  %i.fa = getelementptr i8, ptr %i.ez, i64 %i.bp  ; 8 uses
  %i.fb = mul nsw i64 %i.dj, %i.ba
  %i.fc = add i64 %i.fb, %wide.trip.count
  %i.fd = shl i64 %i.fc, 2
  %i.fe = getelementptr i8, ptr %i.de, i64 %i.fd  ; 8 uses
  %i.ff = or disjoint i64 %i.cx, 2
  %i.fg = mul nsw i64 %i.ff, %i.ba
  %i.fh = shl i64 %i.fg, 2                        ; 2 uses
  %i.fi = getelementptr i8, ptr %i.de, i64 %i.fh  ; 8 uses
  %i.fj = getelementptr i8, ptr %i.de, i64 %i.fh
  %i.fk = getelementptr i8, ptr %i.fj, i64 %i.bp  ; 8 uses
  %i.fl = mul nsw i64 %i.dr, %i.ba
  %i.fm = add i64 %i.fl, %wide.trip.count
  %i.fn = shl i64 %i.fm, 2
  %i.fo = getelementptr i8, ptr %i.de, i64 %i.fn  ; 8 uses
  %i.fp = or disjoint i64 %i.cx, 3
  %i.fq = mul nsw i64 %i.fp, %i.ba
  %i.fr = shl i64 %i.fq, 2                        ; 2 uses
  %i.fs = getelementptr i8, ptr %i.de, i64 %i.fr  ; 8 uses
  %i.ft = getelementptr i8, ptr %i.de, i64 %i.fr
  %i.fu = getelementptr i8, ptr %i.ft, i64 %i.bp  ; 8 uses
  %i.fv = mul nsw i64 %i.dz, %i.ba
  %i.fw = add i64 %i.fv, %wide.trip.count
  %i.fx = shl i64 %i.fw, 2
  %i.fy = getelementptr i8, ptr %i.de, i64 %i.fx  ; 8 uses
  %i.fz = shl nsw i64 %i.cu, 2
  %i.ga = getelementptr i8, ptr %scevgep, i64 %i.fz ; 8 uses
  %bound0 = icmp ult ptr %i.cz, %i.eu
  %bound1 = icmp ult ptr %i.dd, %i.eq
  %found.conflict = and i1 %bound0, %bound1
  %bound0334 = icmp ult ptr %i.cz, %i.fa
  %bound1335 = icmp ult ptr %i.ey, %i.eq
  %found.conflict336 = and i1 %bound0334, %bound1335
  %conflict.rdx = or i1 %found.conflict, %found.conflict336
  %bound0337 = icmp ult ptr %i.cz, %i.fe
  %bound1338 = icmp ult ptr %i.dl, %i.eq
  %found.conflict339 = and i1 %bound0337, %bound1338
  %conflict.rdx340 = or i1 %conflict.rdx, %found.conflict339
  %bound0341 = icmp ult ptr %i.cz, %i.fk
  %bound1342 = icmp ult ptr %i.fi, %i.eq
  %found.conflict343 = and i1 %bound0341, %bound1342
  %conflict.rdx344 = or i1 %conflict.rdx340, %found.conflict343
  %bound0345 = icmp ult ptr %i.cz, %i.fo
  %bound1346 = icmp ult ptr %i.dt, %i.eq
  %found.conflict347 = and i1 %bound0345, %bound1346
  %conflict.rdx348 = or i1 %conflict.rdx344, %found.conflict347
  %bound0349.a = icmp ult ptr %i.cz, %i.fu
  %bound1350.a = icmp ult ptr %i.fs, %i.eq
  %found.conflict351.a = and i1 %bound0349.a, %bound1350.a
  %conflict.rdx352 = or i1 %conflict.rdx348, %found.conflict351.a
  %bound0353.a = icmp ult ptr %i.cz, %i.fy
  %bound1354.a = icmp ult ptr %i.eb, %i.eq
  %found.conflict355.a = and i1 %bound0353.a, %bound1354.a
  %conflict.rdx356.a = or i1 %conflict.rdx352, %found.conflict355.a
  %bound0357.a = icmp ult ptr %i.cz, %i.ga
  %bound1358.a = icmp ult ptr %i.ei, %i.eq
  %found.conflict359.a = and i1 %bound0357.a, %bound1358.a
  %conflict.rdx360.a = or i1 %conflict.rdx356.a, %found.conflict359.a
  %bound0361.a = icmp ult ptr %i.dd, %i.fa
  %bound1362.a = icmp ult ptr %i.ey, %i.eu
  %found.conflict363.a = and i1 %bound0361.a, %bound1362.a
  %conflict.rdx364.a = or i1 %conflict.rdx360.a, %found.conflict363.a
  %bound0365.a = icmp ult ptr %i.dd, %i.fe
  %bound1366.a = icmp ult ptr %i.dl, %i.eu
  %found.conflict367.a = and i1 %bound0365.a, %bound1366.a
  %conflict.rdx368.a = or i1 %conflict.rdx364.a, %found.conflict367.a
  %bound0369.a = icmp ult ptr %i.dd, %i.fk
  %bound1370.a = icmp ult ptr %i.fi, %i.eu
  %found.conflict371.a = and i1 %bound0369.a, %bound1370.a
  %conflict.rdx372.a = or i1 %conflict.rdx368.a, %found.conflict371.a
  %bound0373.a = icmp ult ptr %i.dd, %i.fo
  %bound1374.a = icmp ult ptr %i.dt, %i.eu
  %found.conflict375.a = and i1 %bound0373.a, %bound1374.a
  %conflict.rdx376.a = or i1 %conflict.rdx372.a, %found.conflict375.a
  %bound0377.a = icmp ult ptr %i.dd, %i.fu
  %bound1378.a = icmp ult ptr %i.fs, %i.eu
  %found.conflict379.a = and i1 %bound0377.a, %bound1378.a
  %conflict.rdx380.a = or i1 %conflict.rdx376.a, %found.conflict379.a
  %bound0381.a = icmp ult ptr %i.dd, %i.fy
  %bound1382.a = icmp ult ptr %i.eb, %i.eu
  %found.conflict383.a = and i1 %bound0381.a, %bound1382.a
  %conflict.rdx384.a = or i1 %conflict.rdx380.a, %found.conflict383.a
  %bound0385.a = icmp ult ptr %i.dd, %i.ga
  %bound1386.a = icmp ult ptr %i.ei, %i.eu
  %found.conflict387.a = and i1 %bound0385.a, %bound1386.a
  %conflict.rdx388.a = or i1 %conflict.rdx384.a, %found.conflict387.a
  %bound0389.a = icmp ult ptr %i.ey, %i.fe
  %bound1390.a = icmp ult ptr %i.dl, %i.fa
  %found.conflict391.a = and i1 %bound0389.a, %bound1390.a
  %conflict.rdx392.a = or i1 %conflict.rdx388.a, %found.conflict391.a
  %bound0393.a = icmp ult ptr %i.ey, %i.fk
  %bound1394.a = icmp ult ptr %i.fi, %i.fa
  %found.conflict395.a = and i1 %bound0393.a, %bound1394.a
  %conflict.rdx396.a = or i1 %conflict.rdx392.a, %found.conflict395.a
  %bound0397.a = icmp ult ptr %i.ey, %i.fo
  %bound1398.a = icmp ult ptr %i.dt, %i.fa
  %found.conflict399.a = and i1 %bound0397.a, %bound1398.a
  %conflict.rdx400.a = or i1 %conflict.rdx396.a, %found.conflict399.a
  %bound0401.a = icmp ult ptr %i.ey, %i.fu
  %bound1402.a = icmp ult ptr %i.fs, %i.fa
  %found.conflict403.a = and i1 %bound0401.a, %bound1402.a
  %conflict.rdx404.a = or i1 %conflict.rdx400.a, %found.conflict403.a
  %bound0405.a = icmp ult ptr %i.ey, %i.fy
  %bound1406.a = icmp ult ptr %i.eb, %i.fa
  %found.conflict407.a = and i1 %bound0405.a, %bound1406.a
  %conflict.rdx408.a = or i1 %conflict.rdx404.a, %found.conflict407.a
  %bound0409.a = icmp ult ptr %i.ey, %i.ga
  %bound1410.a = icmp ult ptr %i.ei, %i.fa
  %found.conflict411.a = and i1 %bound0409.a, %bound1410.a
  %conflict.rdx412.a = or i1 %conflict.rdx408.a, %found.conflict411.a
  %bound0413.a = icmp ult ptr %i.dl, %i.fk
  %bound1414.a = icmp ult ptr %i.fi, %i.fe
  %found.conflict415.a = and i1 %bound0413.a, %bound1414.a
  %conflict.rdx416.a = or i1 %conflict.rdx412.a, %found.conflict415.a
  %bound0417.a = icmp ult ptr %i.dl, %i.fo
  %bound1418.a = icmp ult ptr %i.dt, %i.fe
  %found.conflict419.a = and i1 %bound0417.a, %bound1418.a
  %conflict.rdx420.a = or i1 %conflict.rdx416.a, %found.conflict419.a
  %bound0421.a = icmp ult ptr %i.dl, %i.fu
  %bound1422.a = icmp ult ptr %i.fs, %i.fe
  %found.conflict423.a = and i1 %bound0421.a, %bound1422.a
  %conflict.rdx424.a = or i1 %conflict.rdx420.a, %found.conflict423.a
  %bound0425.a = icmp ult ptr %i.dl, %i.fy
  %bound1426.a = icmp ult ptr %i.eb, %i.fe
  %found.conflict427.a = and i1 %bound0425.a, %bound1426.a
  %conflict.rdx428.a = or i1 %conflict.rdx424.a, %found.conflict427.a
  %bound0429.a = icmp ult ptr %i.dl, %i.ga
  %bound1430.a = icmp ult ptr %i.ei, %i.fe
  %found.conflict431.a = and i1 %bound0429.a, %bound1430.a
  %conflict.rdx432.a = or i1 %conflict.rdx428.a, %found.conflict431.a
  %bound0433 = icmp ult ptr %i.fi, %i.fo
  %bound1434 = icmp ult ptr %i.dt, %i.fk
  %found.conflict435 = and i1 %bound0433, %bound1434
  %conflict.rdx436 = or i1 %conflict.rdx432.a, %found.conflict435
  %bound0437 = icmp ult ptr %i.fi, %i.fu
  %bound1438 = icmp ult ptr %i.fs, %i.fk
  %found.conflict439 = and i1 %bound0437, %bound1438
  %conflict.rdx440 = or i1 %conflict.rdx436, %found.conflict439
  %bound0441 = icmp ult ptr %i.fi, %i.fy
  %bound1442 = icmp ult ptr %i.eb, %i.fk
  %found.conflict443 = and i1 %bound0441, %bound1442
  %conflict.rdx444 = or i1 %conflict.rdx440, %found.conflict443
  %bound0445 = icmp ult ptr %i.fi, %i.ga
  %bound1446 = icmp ult ptr %i.ei, %i.fk
  %found.conflict447 = and i1 %bound0445, %bound1446
  %conflict.rdx448 = or i1 %conflict.rdx444, %found.conflict447
  %bound0449 = icmp ult ptr %i.dt, %i.fu
  %bound1450 = icmp ult ptr %i.fs, %i.fo
  %found.conflict451 = and i1 %bound0449, %bound1450
  %conflict.rdx452 = or i1 %conflict.rdx448, %found.conflict451
  %bound0453 = icmp ult ptr %i.dt, %i.fy
  %bound1454 = icmp ult ptr %i.eb, %i.fo
  %found.conflict455 = and i1 %bound0453, %bound1454
  %conflict.rdx456 = or i1 %conflict.rdx452, %found.conflict455
  %bound0457 = icmp ult ptr %i.dt, %i.ga
  %bound1458 = icmp ult ptr %i.ei, %i.fo
  %found.conflict459 = and i1 %bound0457, %bound1458
  %conflict.rdx460 = or i1 %conflict.rdx456, %found.conflict459
  %bound0461 = icmp ult ptr %i.fs, %i.fy
  %bound1462 = icmp ult ptr %i.eb, %i.fu
  %found.conflict463 = and i1 %bound0461, %bound1462
  %conflict.rdx464 = or i1 %conflict.rdx460, %found.conflict463
  %bound0465 = icmp ult ptr %i.fs, %i.ga
  %bound1466 = icmp ult ptr %i.ei, %i.fu
  %found.conflict467 = and i1 %bound0465, %bound1466
  %conflict.rdx468 = or i1 %conflict.rdx464, %found.conflict467
  %bound0469 = icmp ult ptr %i.eb, %i.ga
  %bound1470 = icmp ult ptr %i.ei, %i.fy
  %found.conflict471 = and i1 %bound0469, %bound1470
  %conflict.rdx472 = or i1 %conflict.rdx468, %found.conflict471
  br i1 %conflict.rdx472, label %.preheader.us.preheader, label %vector.ph473

vector.ph473:                                     ; preds = %vector.memcheck
  %i.gb = load i32, ptr %i.ei, align 4, !tbaa !84, !alias.scope !337
  %broadcast.splatinsert477 = insertelement <4 x i32> poison, i32 %i.gb, i64 0
  %broadcast.splat478 = shufflevector <4 x i32> %broadcast.splatinsert477, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.gc = load i32, ptr %i.em, align 4, !tbaa !84, !alias.scope !337
  %broadcast.splatinsert479 = insertelement <4 x i32> poison, i32 %i.gc, i64 0
  %broadcast.splat480 = shufflevector <4 x i32> %broadcast.splatinsert479, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body475

vector.body475:                                   ; preds = %vector.body475, %vector.ph473
  %index476 = phi i64 [ 0, %vector.ph473 ], [ %index.next481, %vector.body475 ] ; 9 uses
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %index476
  store <4 x i32> %broadcast.splat478, ptr %i.gd, align 4, !tbaa !84, !alias.scope !338, !noalias !339
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %index476
  store <4 x i32> %broadcast.splat480, ptr %i.ge, align 4, !tbaa !84, !alias.scope !340, !noalias !341
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %index476
  store <4 x i32> %broadcast.splat478, ptr %i.gf, align 4, !tbaa !84, !alias.scope !342, !noalias !343
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.dl, i64 %index476
  store <4 x i32> %broadcast.splat480, ptr %i.gg, align 4, !tbaa !84, !alias.scope !344, !noalias !345
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %index476
  store <4 x i32> %broadcast.splat478, ptr %i.gh, align 4, !tbaa !84, !alias.scope !346, !noalias !347
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %index476
  store <4 x i32> %broadcast.splat480, ptr %i.gi, align 4, !tbaa !84, !alias.scope !348, !noalias !349
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.dx, i64 %index476
  store <4 x i32> %broadcast.splat478, ptr %i.gj, align 4, !tbaa !84, !alias.scope !350, !noalias !351
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %index476
  store <4 x i32> %broadcast.splat480, ptr %i.gk, align 4, !tbaa !84, !alias.scope !352, !noalias !337
  %index.next481 = add nuw i64 %index476, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next481, %n.vec474
  br i1 %i.gl, label %middle.block482, label %vector.body475, !llvm.loop !334

middle.block482:                                  ; preds = %vector.body475
  br i1 %cmp.n483, label %..loopexit_crit_edge.us.loopexit, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %vector.memcheck, %.preheader135.us, %middle.block482
  %indvars.iv158.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader135.us ], [ %n.vec474, %middle.block482 ]
  br label %.preheader.us

.lr.ph144.split:                                  ; preds = %.lr.ph144, %bb.f
  %i.gm = phi i32 [ %i.ip, %bb.f ], [ %i.bc, %.lr.ph144 ]
  %i.gn = phi ptr [ %i.iq, %bb.f ], [ %i.bb, %.lr.ph144 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.lr.ph144 ] ; 3 uses
  %.0123142 = phi i32 [ %.1124, %bb.f ], [ 0, %.lr.ph144 ] ; 3 uses
  %i.go = trunc nuw nsw i64 %indvars.iv to i32
  %i.gp = shl nuw i32 1, %i.go
  %i.gq = load i32, ptr %i.bh, align 8, !tbaa !113
  %i.gr = and i32 %i.gq, %i.gp
  %.not131 = icmp eq i32 %i.gr, 0
  br i1 %.not131, label %bb.f, label %.preheader135

.preheader135:                                    ; preds = %.lr.ph144.split
  %i.gs = getelementptr inbounds nuw [20 x i8], ptr %i.bg, i64 %indvars.iv
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !103 ; 2 uses
  %i.gu = shl nsw i32 %i.gt, 2
  %i.gv = sext i32 %i.gt to i64                   ; 4 uses
  %i.gw = getelementptr inbounds [32 x i8], ptr %i.bi, i64 %i.gv ; 4 uses
  %i.gx = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.gv ; 4 uses
  %i.gy = sext i32 %i.gu to i64                   ; 8 uses
  %i.gz = mul nsw i64 %i.gy, %i.ba
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gn, i64 %i.gz
  store ptr %i.ha, ptr %i.gw, align 8, !tbaa !140
  %i.hb = load ptr, ptr %i.ah, align 8, !tbaa !336
  %i.hc = add nsw i64 %i.gy, 16
  %i.hd = mul nsw i64 %i.hc, %i.ba
  %i.he = getelementptr inbounds [4 x i8], ptr %i.hb, i64 %i.hd
  store ptr %i.he, ptr %i.gx, align 8, !tbaa !140
  %i.hf = load ptr, ptr %i.ah, align 8, !tbaa !336 ; 7 uses
  %i.hg = or disjoint i64 %i.gy, 1
  %i.hh = mul nsw i64 %i.hg, %i.ba
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.hh
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr %i.hi, ptr %i.hj, align 8, !tbaa !140
  %i.hk = add nsw i64 %i.gy, 17
  %i.hl = mul nsw i64 %i.hk, %i.ba
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.hl
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gx, i64 8
  store ptr %i.hm, ptr %i.hn, align 8, !tbaa !140
  %i.ho = or disjoint i64 %i.gy, 2
  %i.hp = mul nsw i64 %i.ho, %i.ba
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store ptr %i.hq, ptr %i.hr, align 8, !tbaa !140
  %i.hs = add nsw i64 %i.gy, 18
  %i.ht = mul nsw i64 %i.hs, %i.ba
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store ptr %i.hu, ptr %i.hv, align 8, !tbaa !140
  %i.hw = or disjoint i64 %i.gy, 3
  %i.hx = mul nsw i64 %i.hw, %i.ba
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.gw, i64 24
  store ptr %i.hy, ptr %i.hz, align 8, !tbaa !140
  %i.ia = add nsw i64 %i.gy, 19
  %i.ib = mul nsw i64 %i.ia, %i.ba
  %i.ic = getelementptr inbounds [4 x i8], ptr %i.hf, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  store ptr %i.ic, ptr %i.id, align 8, !tbaa !140
  %i.ie = add nsw i32 %.0123142, 1
  %i.if = load i32, ptr %i.bk, align 8, !tbaa !97
  %i.ig = mul nsw i32 %i.if, %.0123142
  %i.ih = load i32, ptr %i.bl, align 4, !tbaa !115
  %i.ii = icmp eq i32 %i.ih, 1
  %i.ij = select i1 %i.ii, i32 %i.ig, i32 0       ; 2 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.gv
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !84
  %i.il = load i32, ptr %i.bk, align 8, !tbaa !97
  %i.im = add i32 %i.il, -1
  %i.in = add i32 %i.im, %i.ij
  %i.io = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.gv
  store i32 %i.in, ptr %i.io, align 4, !tbaa !84
  %.pre = load i32, ptr %i.g, align 4, !tbaa !111
  br label %bb.f

bb.f:                                             ; preds = %.preheader135, %.lr.ph144.split
  %i.ip = phi i32 [ %i.gm, %.lr.ph144.split ], [ %.pre, %.preheader135 ] ; 2 uses
  %i.iq = phi ptr [ %i.gn, %.lr.ph144.split ], [ %i.hf, %.preheader135 ]
  %.1124 = phi i32 [ %.0123142, %.lr.ph144.split ], [ %i.ie, %.preheader135 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ir = sext i32 %i.ip to i64
  %i.is = icmp slt i64 %indvars.iv.next, %i.ir
  br i1 %i.is, label %.lr.ph144.split, label %._crit_edge145, !llvm.loop !322

._crit_edge145:                                   ; preds = %bb.f, %..loopexit_crit_edge.us, %.preheader136
  %i.it = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !353
  switch i32 %i.iu, label %._crit_edge145._crit_edge [
    i32 0, label %bb.g
    i32 1, label %bb.h
  ]

._crit_edge145._crit_edge:                        ; preds = %._crit_edge145
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre166 = load i32, ptr %.phi.trans.insert, align 8, !tbaa !354
  %.phi.trans.insert167 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.pre168 = load i32, ptr %.phi.trans.insert167, align 4, !tbaa !355
  br label %bb.k

bb.g:                                             ; preds = %._crit_edge145
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.iv, align 8, !tbaa !84
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !84
  br label %bb.k

bb.h:                                             ; preds = %._crit_edge145
  %i.iw = load i32, ptr %i.ai, align 8, !tbaa !116
  %.not130 = icmp eq i32 %i.iw, 0
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  br i1 %.not130, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.iy = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !97
  %i.ja = mul nsw i32 %i.iz, %spec.select.lcssa   ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !99 ; 2 uses
  store i32 %i.ja, ptr %i.ix, align 8, !tbaa !84
  store i32 %i.jc, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !84
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.jd = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !98 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.jg = load i32, ptr %i.jf, align 8, !tbaa !97
  %i.jh = mul nsw i32 %i.jg, %spec.select.lcssa   ; 2 uses
  store i32 %i.je, ptr %i.ix, align 8, !tbaa !84
  store i32 %i.jh, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !84
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge145._crit_edge, %bb.i, %bb.j, %bb.g
  %i.ji = phi i32 [ %.pre168, %._crit_edge145._crit_edge ], [ %i.jc, %bb.i ], [ %i.jh, %bb.j ], [ 1, %bb.g ]
  %i.jj = phi i32 [ %.pre166, %._crit_edge145._crit_edge ], [ %i.ja, %bb.i ], [ %i.je, %bb.j ], [ 1, %bb.g ]
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jm = sext i32 %i.jj to i64
  %i.jn = sext i32 %i.ji to i64
  %i.jo = tail call i32 @av_reduce(ptr noundef nonnull %i.jk, ptr noundef nonnull %i.jl, i64 noundef %i.jm, i64 noundef %i.jn, i64 noundef 2147483647) #12 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread, %bb.e, %._crit_edge, %bb.k
  %.0 = phi i32 [ -22, %._crit_edge ], [ 0, %bb.k ], [ -12, %bb.e ], [ -22, %._crit_edge.thread ]
  ret i32 %.0
}

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare ptr @av_malloc_array(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @av_reduce(ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @av_default_item_name(ptr noundef) #2

declare i32 @ff_formats_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @ff_make_pixel_format_list(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!47, !48, !49}
!llvm.ident = !{!50}
!llvm.errno.tbaa = !{!55}

!0 = distinct !{!0, !90}
!1 = distinct !{!1, !90}
!2 = distinct !{!2, !90}
!3 = distinct !{!3, !90}
!4 = distinct !{!4, !90}
!5 = distinct !{!5, !90}
!6 = distinct !{!6, !90}
!7 = distinct !{!7, !90}
!8 = distinct !{!8, !90}
!9 = distinct !{!9, !90}
!10 = distinct !{!10, !90}
!11 = distinct !{!11, !90}
!12 = distinct !{!12, !90}
!13 = distinct !{!13, !90}
!14 = distinct !{!14, !90}
!15 = distinct !{!15, !90}
!16 = distinct !{!16, !90}
!17 = distinct !{!17, !90}
!18 = distinct !{!18, !90}
!19 = distinct !{!19, !90}
!20 = distinct !{!20, !90}
!21 = distinct !{!21, !90}
!22 = distinct !{!22, !90}
!23 = distinct !{!23, !90}
!24 = distinct !{!24, !90}
!25 = distinct !{!25, !90}
!26 = distinct !{!26, !90}
!27 = distinct !{!27, !90}
!28 = distinct !{!28, !90}
!29 = distinct !{!29, !90}
!30 = distinct !{!30, !90}
!31 = distinct !{!31, !90}
!32 = distinct !{!32, !90}
!33 = distinct !{!33, !90}
!34 = distinct !{!34, !90}
!35 = distinct !{!35, !90}
!36 = distinct !{!36, !90}
!37 = distinct !{!37, !90}
!38 = distinct !{!38, !90}
!39 = distinct !{!39, !90}
!40 = distinct !{!40, !90}
!41 = distinct !{!41, !90}
!42 = distinct !{!42, !90}
!43 = distinct !{!43, !90}
!44 = distinct !{!44, !90}
!45 = distinct !{!45, !90}
!46 = distinct !{!46, !90}
!47 = !{i32 8, !"PIC Level", i32 2}
!48 = !{i32 7, !"uwtable", i32 2}
!49 = !{i32 1, !"override-stack-alignment", i32 16}
!50 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !{!"omnipotent char", !51, i64 0}
!53 = !{!"int", !52, i64 0}
!54 = !{!"__libc_errno", !53, i64 0}
!55 = !{!54, !53, i64 0}
!56 = !{!"any pointer", !52, i64 0}
!57 = !{!"p1 _ZTS7AVClass", !56, i64 0}
!58 = !{!"p1 _ZTS8AVFilter", !56, i64 0}
!59 = !{!"p1 omnipotent char", !56, i64 0}
!60 = !{!"p1 _ZTS11AVFilterPad", !56, i64 0}
!61 = !{!"any p2 pointer", !56, i64 0}
!62 = !{!"p2 _ZTS12AVFilterLink", !61, i64 0}
!63 = !{!"p1 _ZTS13AVFilterGraph", !56, i64 0}
!64 = !{!"p1 _ZTS11AVBufferRef", !56, i64 0}
!65 = !{!"AVFilterContext", !57, i64 0, !58, i64 8, !59, i64 16, !60, i64 24, !62, i64 32, !53, i64 40, !60, i64 48, !62, i64 56, !53, i64 64, !56, i64 72, !63, i64 80, !53, i64 88, !53, i64 92, !59, i64 96, !53, i64 104, !64, i64 112, !53, i64 120}
!66 = !{!65, !56, i64 72}
!67 = !{!65, !62, i64 32}
!68 = !{!"p1 _ZTS12AVFilterLink", !56, i64 0}
!69 = !{!68, !68, i64 0}
!70 = !{!"p1 _ZTS15AVFilterContext", !56, i64 0}
!71 = !{!"AVRational", !53, i64 0, !53, i64 4}
!72 = !{!"AVChannelLayout", !53, i64 0, !53, i64 4, !52, i64 8, !56, i64 16}
!73 = !{!"p2 _ZTS15AVFrameSideData", !61, i64 0}
!74 = !{!"p1 _ZTS15AVFilterFormats", !56, i64 0}
!75 = !{!"p1 _ZTS22AVFilterChannelLayouts", !56, i64 0}
!76 = !{!"AVFilterFormatsConfig", !74, i64 0, !74, i64 8, !75, i64 16, !74, i64 24, !74, i64 32, !74, i64 40}
!77 = !{!"AVFilterLink", !70, i64 0, !60, i64 8, !70, i64 16, !60, i64 24, !53, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !71, i64 48, !53, i64 56, !53, i64 60, !53, i64 64, !72, i64 72, !71, i64 96, !73, i64 104, !53, i64 112, !53, i64 116, !76, i64 120, !76, i64 168}
!78 = !{!"p1 int", !56, i64 0}
!79 = !{!"float", !52, i64 0}
!80 = !{!"p1 _ZTS14GraticuleLines", !56, i64 0}
!81 = !{!"p1 _ZTS18AVPixFmtDescriptor", !56, i64 0}
!82 = !{!"WaveformContext", !57, i64 0, !53, i64 8, !53, i64 12, !53, i64 16, !53, i64 20, !53, i64 24, !52, i64 28, !79, i64 32, !53, i64 36, !53, i64 40, !53, i64 44, !53, i64 48, !53, i64 52, !79, i64 56, !79, i64 60, !52, i64 64, !52, i64 80, !52, i64 96, !52, i64 224, !78, i64 352, !53, i64 360, !53, i64 364, !53, i64 368, !53, i64 372, !53, i64 376, !53, i64 380, !52, i64 384, !52, i64 388, !52, i64 404, !80, i64 424, !53, i64 432, !53, i64 436, !52, i64 440, !52, i64 448, !53, i64 456, !53, i64 460, !56, i64 464, !56, i64 472, !56, i64 480, !56, i64 488, !81, i64 496, !81, i64 504}
!83 = !{!82, !53, i64 360}
!84 = !{!53, !53, i64 0}
!85 = !{!"long", !52, i64 0}
!86 = !{!"AVPixFmtDescriptor", !59, i64 0, !52, i64 8, !52, i64 9, !52, i64 10, !85, i64 16, !52, i64 24, !59, i64 104}
!87 = !{!86, !52, i64 8}
!88 = !{!"AVComponentDescriptor", !53, i64 0, !53, i64 4, !53, i64 8, !53, i64 12, !53, i64 16}
!89 = !{!88, !53, i64 16}
!90 = !{!"llvm.loop.mustprogress"}
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v4i32
!145 = distinct !{!145, !90}
!146 = !{!77, !74, i64 120}
!147 = !{!"any p3 pointer", !61, i64 0}
!148 = !{!"p3 _ZTS15AVFilterFormats", !147, i64 0}
!149 = !{!"AVFilterFormats", !53, i64 0, !78, i64 8, !53, i64 16, !148, i64 24}
!150 = !{!149, !53, i64 0}
!151 = !{!77, !74, i64 168}
!152 = !{!149, !78, i64 8}
!153 = !{!86, !85, i64 16}
!154 = !{!82, !53, i64 460}
!155 = distinct !{!155, !90, !107}
!156 = distinct !{!156, i1 false, !"LVerDomain"}
!157 = distinct !{!157, !156}
!158 = distinct !{!158, !156}
!159 = distinct !{!159, !90, !107, !108}
!160 = distinct !{!160, !90, !107, !108}
!161 = distinct !{!161, !110}
!162 = distinct !{!162, !90}
!163 = distinct !{!163, !90}
!164 = distinct !{!164, !90}
!165 = distinct !{!165, i1 false, !"LVerDomain"}
!166 = distinct !{!166, !165}
!167 = distinct !{!167, !165}
!168 = distinct !{!168, !90, !107, !108}
!169 = distinct !{!169, !90, !107, !108}
!170 = distinct !{!170, !110}
!171 = distinct !{!171, !90, !107}
!172 = distinct !{!172, !90, !112}
!173 = distinct !{!173, !90}
!174 = !{!92, !92, i64 0}
!175 = !{!82, !79, i64 32}
!176 = !{!82, !79, i64 60}
!177 = !{!79, !79, i64 0}
!178 = !{!157}
!179 = !{!158}
!180 = !{!166}
!181 = !{!167}
!182 = !{!129, !53, i64 280}
!183 = !{!86, !52, i64 9}
!184 = !{!86, !52, i64 10}
!185 = !{!82, !53, i64 52}
!186 = !{!82, !53, i64 380}
!187 = distinct !{!187, !90}
!188 = distinct !{!188, !90}
!189 = distinct !{!189, !90}
!190 = distinct !{!190, !90}
!191 = distinct !{!191, !90}
!192 = distinct !{!192, !90}
!193 = distinct !{!193, !90}
!194 = distinct !{!194, !90}
!195 = distinct !{!195, !90}
!196 = distinct !{!196, !90}
!197 = distinct !{!197, !90}
!198 = distinct !{!198, !90}
!199 = distinct !{!199, !90}
!200 = distinct !{!200, !90}
!201 = distinct !{!201, !90}
!202 = distinct !{!202, !90}
!203 = distinct !{!203, !90}
!204 = distinct !{!204, !90}
!205 = distinct !{!205, !90}
!206 = distinct !{!206, !90}
!207 = distinct !{!207, !90}
!208 = distinct !{!208, !90}
!209 = distinct !{!209, !90}
!210 = distinct !{!210, !90}
!211 = distinct !{!211, !90}
!212 = distinct !{!212, !90}
!213 = distinct !{!213, !90}
!214 = distinct !{!214, !90}
!215 = distinct !{!215, !90, !107, !108}
!216 = distinct !{!216, !110}
!217 = distinct !{!217, !90, !107, !108}
!218 = distinct !{!218, !90}
!219 = distinct !{!219, !90}
!220 = distinct !{!220, !90}
!221 = distinct !{!221, !90}
!222 = distinct !{!222, !90}
!223 = distinct !{!223, !90}
!224 = distinct !{!224, !90}
!225 = distinct !{!225, !90}
!226 = distinct !{!226, !90}
!227 = distinct !{!227, !90}
!228 = distinct !{!228, !90}
!229 = distinct !{!229, !90}
!230 = distinct !{!230, !90}
!231 = distinct !{!231, !90}
!232 = distinct !{!232, !90}
!233 = distinct !{!233, !90}
!234 = distinct !{!234, !90}
!235 = distinct !{!235, !90}
!236 = distinct !{!236, !90}
!237 = distinct !{!237, !90}
!238 = distinct !{!238, !90}
!239 = distinct !{!239, !90}
!240 = distinct !{!240, !90}
!241 = distinct !{!241, !90}
!242 = distinct !{!242, !90}
!243 = distinct !{!243, !90}
!244 = distinct !{!244, !90}
!245 = distinct !{!245, !90}
!246 = distinct !{!246, !90}
!247 = distinct !{!247, !90}
!248 = distinct !{!248, !90}
!249 = distinct !{!249, !90}
!250 = distinct !{!250, !90}
!251 = distinct !{!251, !90}
!252 = distinct !{!252, !90}
!253 = distinct !{!253, !90}
!254 = distinct !{!254, !90}
!255 = distinct !{!255, !90}
!256 = distinct !{!256, !90}
!257 = distinct !{!257, !90}
!258 = distinct !{!258, !90}
!259 = distinct !{!259, !90}
!260 = distinct !{!260, !90}
!261 = distinct !{!261, !90}
!262 = distinct !{!262, !90}
!263 = distinct !{!263, !90}
!264 = distinct !{!264, !90}
!265 = distinct !{!265, !90}
!266 = distinct !{!266, !90}
!267 = distinct !{!267, !90}
!268 = distinct !{!268, !90}
!269 = distinct !{!269, !90}
!270 = distinct !{!270, !90}
!271 = distinct !{!271, !90}
!272 = distinct !{!272, !90}
!273 = distinct !{!273, !90}
!274 = distinct !{!274, !90, !107, !108}
!275 = distinct !{!275, !90, !107, !108}
!276 = distinct !{!276, !90, !107}
!277 = distinct !{!277, !90, !107, !108}
!278 = distinct !{!278, !90, !107}
!279 = distinct !{!279, !90}
!280 = distinct !{!280, !90}
!281 = distinct !{!281, !90}
!282 = distinct !{!282, !90}
!283 = distinct !{!283, !90}
!284 = distinct !{!284, !90}
!285 = distinct !{!285, !90}
!286 = distinct !{!286, !90}
!287 = distinct !{!287, !90}
!288 = distinct !{!288, !90}
!289 = distinct !{!289, !90}
!290 = distinct !{!290, !90}
!291 = distinct !{!291, !90}
!292 = distinct !{!292, !90}
!293 = distinct !{!293, !90, !107, !108}
!294 = distinct !{!294, !90, !107, !108}
!295 = distinct !{!295, !90, !107}
!296 = distinct !{!296, !90, !107, !108}
!297 = distinct !{!297, !90, !107}
!298 = distinct !{!298, !90}
!299 = distinct !{!299, !90}
!300 = distinct !{!300, !90}
!301 = distinct !{!301, !90}
!302 = distinct !{!302, !90}
!303 = distinct !{!303, !90}
!304 = distinct !{!304, !90}
!305 = distinct !{!305, !90, !112}
!306 = distinct !{!306, !90}
!307 = distinct !{!307, !90}
!308 = distinct !{!308, !90}
!309 = distinct !{!309, !90, !112}
!310 = distinct !{!310, !90}
!311 = distinct !{!311, !90}
!312 = distinct !{!312, !90}
!313 = distinct !{!313, !90, !112}
!314 = distinct !{!314, !90}
!315 = distinct !{!315, !90}
!316 = distinct !{!316, !90}
!317 = distinct !{!317, !90, !112}
!318 = distinct !{!318, !90}
!319 = distinct !{!319, !90}
!320 = distinct !{!320, !90, !107, !108}
!321 = distinct !{!321, !90, !108, !107}
!322 = distinct !{!322, !90}
!323 = distinct !{!323, !90, !107}
!324 = distinct !{!324, i1 false, !"LVerDomain"}
!325 = distinct !{!325, !324}
!326 = distinct !{!326, !324}
!327 = distinct !{!327, !324}
!328 = distinct !{!328, !324}
!329 = distinct !{!329, !324}
!330 = distinct !{!330, !324}
!331 = distinct !{!331, !324}
!332 = distinct !{!332, !324}
!333 = distinct !{!333, !324}
!334 = distinct !{!334, !90, !107, !108}
!335 = !{!77, !70, i64 0}
!336 = !{!82, !78, i64 352}
!337 = !{!325}
!338 = !{!326}
!339 = !{!333, !332, !331, !330, !329, !328, !327, !325}
!340 = !{!333}
!341 = !{!332, !331, !330, !329, !328, !327, !325}
!342 = !{!332}
!343 = !{!331, !330, !329, !328, !327, !325}
!344 = !{!331}
!345 = !{!330, !329, !328, !327, !325}
!346 = !{!330}
!347 = !{!329, !328, !327, !325}
!348 = !{!329}
!349 = !{!328, !327, !325}
!350 = !{!328}
!351 = !{!327, !325}
!352 = !{!327}
!353 = !{!82, !53, i64 456}
!354 = !{!77, !53, i64 48}
!355 = !{!77, !53, i64 52}
end_hunk_1
