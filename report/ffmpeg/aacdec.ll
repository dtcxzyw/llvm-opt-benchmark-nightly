Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/aacdec?download=true
inline.NumInlined: 233
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 27
begin_hunk_0_@ff_aac_decode_tns:bb.a
  %i.ce = and i32 %i.bx, 7
  %i.cf = shl i32 %i.cd, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv106
  %.sink116 = add i32 %i.bx, %.sink116.v
  %.sink = lshr i32 %i.cf, %.sink.v               ; 4 uses
  %i.ch = tail call i32 @llvm.umin.i32(i32 %i.by, i32 %.sink116)
  store i32 %i.ch, ptr %i.n, align 8, !tbaa !93
  store i32 %.sink, ptr %i.cg, align 4, !tbaa !23
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv106 ; 3 uses
  %.not88 = icmp sgt i32 %.sink, %.081
  br i1 %.not88, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !22
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ck, i32 noundef 16, ptr noundef nonnull @.str.10, i32 noundef %.sink, i32 noundef %.081) #12
  store i32 0, ptr %i.ci, align 4, !tbaa !23
  br label %.loopexit94

bb.e:                                             ; preds = %bb.d
  %.not86 = icmp eq i32 %.sink, 0
  br i1 %.not86, label %.thread91, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cl = load i32, ptr %i.n, align 8, !tbaa !93  ; 4 uses
  %i.cm = lshr i32 %i.cl, 3
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !33
  %i.cq = load i32, ptr %i.o, align 8, !tbaa !92
  %i.cr = icmp slt i32 %i.cl, %i.cq
  %i.cs = zext i1 %i.cr to i32
  %spec.select.i89 = add i32 %i.cl, %i.cs
  %i.ct = zext i8 %i.cp to i32
  %i.cu = and i32 %i.cl, 7
  %i.cv = shl nuw nsw i32 %i.ct, %i.cu
  %i.cw = lshr i32 %i.cv, 7
  store i32 %spec.select.i89, ptr %i.n, align 8, !tbaa !93
  %i.cx = and i32 %i.cw, 1
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv106
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !23
  %i.cz = load i32, ptr %i.n, align 8, !tbaa !93  ; 4 uses
  %i.da = lshr i32 %i.cz, 3
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !33
  %i.de = load i32, ptr %i.o, align 8, !tbaa !92
  %i.df = icmp slt i32 %i.cz, %i.de
  %i.dg = zext i1 %i.df to i32
  %spec.select.i90 = add i32 %i.cz, %i.dg
  %i.dh = zext i8 %i.dd to i32
  %i.di = and i32 %i.cz, 7
  %i.dj = shl nuw nsw i32 %i.dh, %i.di
  %i.dk = lshr i32 %i.dj, 7
  store i32 %spec.select.i90, ptr %i.n, align 8, !tbaa !93
  %i.dl = and i32 %i.dk, 1                        ; 2 uses
  %i.dm = sub nuw nsw i32 %i.bh, %i.dl            ; 2 uses
  %i.dn = load i32, ptr %i.ci, align 4, !tbaa !23
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph, label %.thread91

.lr.ph:                                           ; preds = %bb.f
  %i.dp = shl nuw nsw i32 %i.dl, 1
  %i.dq = or disjoint i32 %i.dp, %i.bb
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr @ff_tns_tmp2_map, i64 %i.dr
  %i.dt = sub nuw nsw i32 32, %i.dm
  %i.du = getelementptr inbounds nuw [80 x i8], ptr %i.bi, i64 %indvars.iv106 ; 2 uses
  %i.dv = load ptr, ptr %i.ds, align 8, !tbaa !170
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 3 uses
  %i.dw = load i32, ptr %i.z, align 8, !tbaa !94
  %.not87 = icmp eq i32 %i.dw, 0
  %i.dx = load i32, ptr %i.n, align 8, !tbaa !93  ; 3 uses
  %i.dy = load i32, ptr %i.o, align 8, !tbaa !92
  %i.dz = load ptr, ptr %2, align 8, !tbaa !90
  %i.ea = lshr i32 %i.dx, 3
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 1, !tbaa !33
  %i.ee = tail call i32 @llvm.bswap.i32(i32 %i.ed)
  %i.ef = and i32 %i.dx, 7
  %i.eg = shl i32 %i.ee, %i.ef
  %i.eh = lshr i32 %i.eg, %i.dt
  %i.ei = add i32 %i.dx, %i.dm
  %i.ej = tail call i32 @llvm.umin.i32(i32 %i.dy, i32 %i.ei)
  store i32 %i.ej, ptr %i.n, align 8, !tbaa !93
  %i.ek = zext nneg i32 %i.eh to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.dv, i64 %i.ek
  %i.em = load float, ptr %i.el, align 4, !tbaa !95 ; 2 uses
  br i1 %.not87, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.en = fpext nsz float %i.em to double
  %i.eo = tail call nsz double @llvm.fmuladd.f64(double %i.en, double f0x41E0000000000000, double 5.000000e-01)
  %i.ep = fptosi double %i.eo to i32
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv
  store i32 %i.ep, ptr %i.eq, align 4, !tbaa !33
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %indvars.iv
  store float %i.em, ptr %i.er, align 4, !tbaa !33
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.es = load i32, ptr %i.ci, align 4, !tbaa !23
  %i.et = sext i32 %i.es to i64
  %i.eu = icmp slt i64 %indvars.iv.next, %i.et
  br i1 %i.eu, label %bb.g, label %.thread91, !llvm.loop !166

.thread91:                                        ; preds = %bb.j, %bb.f, %bb.e
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %i.ev = load i32, ptr %i.ao, align 4, !tbaa !23
  %i.ew = sext i32 %i.ev to i64
  %i.ex = icmp slt i64 %indvars.iv.next107, %i.ew
  br i1 %i.ex, label %bb.d, label %.loopexit, !llvm.loop !167

.loopexit:                                        ; preds = %.thread91, %bb.c, %bb.b
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.ey = load i32, ptr %i.j, align 4, !tbaa !99
  %i.ez = sext i32 %i.ey to i64
  %i.fa = icmp slt i64 %indvars.iv.next110, %i.ez
  br i1 %i.fa, label %bb.b, label %.loopexit94, !llvm.loop !168

.loopexit94:                                      ; preds = %.loopexit, %bb.a, %.thread
  %.4 = phi i32 [ -1094995529, %.thread ], [ 0, %bb.a ], [ 0, %.loopexit ]
  ret i32 %.4
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: nounwind uwtable
define range(i32 -2147483648, 1) i32 @ff_aac_decode_ics(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.Pulse, align 4              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 992 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 23256 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !96   ; 2 uses
  %i.d = icmp eq i32 %i.c, 39                     ; 3 uses
  switch i32 %i.c, label %bb.b [
    i32 17, label %bb.c
    i32 19, label %bb.c
    i32 23, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.b
  %i.e = phi i1 [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ %i.d, %bb.b ] ; 2 uses
  store i32 0, ptr %5, align 4, !tbaa !101
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 29 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !93   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !92
  %i.j = load ptr, ptr %2, align 8, !tbaa !90
  %i.k = lshr i32 %i.g, 3
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l
  %i.n = load i32, ptr %i.m, align 1, !tbaa !33
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = and i32 %i.g, 7
  %i.q = shl i32 %i.o, %i.p
  %i.r = lshr i32 %i.q, 24                        ; 2 uses
  %i.s = add i32 %i.g, 8
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.i, i32 %i.s)
  store i32 %i.t, ptr %i.f, align 8, !tbaa !93
  %i.u = icmp ne i32 %3, 0
  %.not = icmp eq i32 %4, 0
  %i.v = or i32 %4, %3
  %or.cond.not = icmp eq i32 %i.v, 0
  br i1 %or.cond.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = tail call fastcc i32 @decode_ics_info(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %decode_band_types.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !23
  %i.aa = icmp eq i32 %i.z, 2
  %i.ab = select i1 %i.aa, i32 3, i32 5           ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !102 ; 3 uses
  %.not4864.i = icmp sgt i32 %i.ad, 0
  br i1 %.not4864.i, label %.preheader53.lr.ph.i, label %decode_band_types.exit.thread109

.preheader53.lr.ph.i:                             ; preds = %bb.e
  %i.ae = load i8, ptr %1, align 8, !tbaa !103    ; 6 uses
  %i.af = zext i8 %i.ae to i32                    ; 3 uses
  %.not61.not.i = icmp eq i8 %i.ae, 0
  %i.ag = sub nuw nsw i32 32, %i.ab
  %i.ah = getelementptr i8, ptr %2, i64 12
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 3972 ; 2 uses
  br i1 %.not61.not.i, label %.preheader.lr.ph.i, label %.preheader53.lr.ph.split.i

.preheader53.lr.ph.split.i:                       ; preds = %.preheader53.lr.ph.i
  %i.aj = load ptr, ptr %2, align 8, !tbaa !90    ; 2 uses
  %i.ak = zext i8 %i.ae to i64
  %i.al = zext nneg i32 %i.ad to i64
  %notmask = shl nsw i32 -1, %i.ab
  %invariant.op = sub nuw i32 -1, %notmask
  br label %.preheader53.i

.preheader53.i:                                   ; preds = %..critedge_crit_edge.i, %.preheader53.lr.ph.split.i
  %indvars.iv69.i = phi i64 [ 0, %.preheader53.lr.ph.split.i ], [ %indvars.iv.next70.i, %..critedge_crit_edge.i ] ; 2 uses
  %i.am = mul nuw nsw i64 %indvars.iv69.i, %i.ak
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.am ; 2 uses
  br label %bb.f

.loopexit.i:                                      ; preds = %.lr.ph.i, %middle.block, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.03762.i, %.preheader.i ], [ %i.br, %middle.block ], [ %i.br, %.lr.ph.i ] ; 2 uses
  %.not.i = icmp samesign ult i32 %.1.lcssa.i, %i.af
  br i1 %.not.i, label %bb.f, label %..critedge_crit_edge.i, !llvm.loop !171

bb.f:                                             ; preds = %.loopexit.i, %.preheader53.i
  %.03762.i = phi i32 [ 0, %.preheader53.i ], [ %.1.lcssa.i, %.loopexit.i ] ; 4 uses
  %i.an = load i32, ptr %i.f, align 8, !tbaa !93  ; 3 uses
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !92  ; 2 uses
  %i.ap = lshr i32 %i.an, 3
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 1, !tbaa !33
  %i.at = tail call i32 @llvm.bswap.i32(i32 %i.as)
  %i.au = and i32 %i.an, 7
  %i.av = shl i32 %i.at, %i.au
  %i.aw = lshr i32 %i.av, 28                      ; 3 uses
  %i.ax = add i32 %i.an, 4
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.ax) ; 2 uses
  store i32 %i.ay, ptr %i.f, align 8, !tbaa !93
  %i.az = icmp eq i32 %i.aw, 12
  br i1 %i.az, label %bb.g, label %.preheader52.i

.preheader52.i:                                   ; preds = %bb.f
  %.val49.i = load i32, ptr %i.ah, align 4, !tbaa !91
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !22
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bb, i32 noundef 16, ptr noundef nonnull @.str.43) #12
  br label %decode_band_types.exit.thread

bb.h:                                             ; preds = %bb.l, %.preheader52.i
  %i.bc = phi i32 [ %i.bm, %bb.l ], [ %i.ay, %.preheader52.i ] ; 3 uses
  %.0.i = phi i32 [ %i.bn, %bb.l ], [ %.03762.i, %.preheader52.i ]
  %i.bd = lshr i32 %i.bc, 3
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.be
  %i.bg = load i32, ptr %i.bf, align 1, !tbaa !33
  %i.bh = tail call i32 @llvm.bswap.i32(i32 %i.bg)
  %i.bi = and i32 %i.bc, 7
  %i.bj = shl i32 %i.bh, %i.bi
  %i.bk = lshr i32 %i.bj, %i.ag                   ; 2 uses
  %i.bl = add i32 %i.bc, %i.ab
  %i.bm = tail call i32 @llvm.umin.i32(i32 %i.ao, i32 %i.bl) ; 3 uses
  store i32 %i.bm, ptr %i.f, align 8, !tbaa !93
  %i.bn = add i32 %i.bk, %.0.i                    ; 2 uses
  %i.bo = icmp slt i32 %.val49.i, %i.bm
  br i1 %i.bo, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !22
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bq, i32 noundef 16, ptr noundef nonnull @.str.44) #12
  br label %decode_band_types.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.br = and i32 %i.bn, 255                      ; 6 uses
  %i.bs = icmp samesign ugt i32 %i.br, %i.af
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !22
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bu, i32 noundef 16, ptr noundef nonnull @.str.45, i32 noundef %i.br, i32 noundef %i.af) #12
  br label %decode_band_types.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.bv = icmp eq i32 %i.bk, %invariant.op
  br i1 %i.bv, label %bb.h, label %.preheader.i, !llvm.loop !172

.preheader.i:                                     ; preds = %bb.l
  %i.bw = icmp samesign ult i32 %.03762.i, %i.br
  br i1 %i.bw, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.bx = zext nneg i32 %.03762.i to i64          ; 4 uses
  %wide.trip.count.i = zext nneg i32 %i.br to i64 ; 2 uses
  %i.by = sub nsw i64 %wide.trip.count.i, %i.bx   ; 3 uses
  %min.iters.check = icmp ult i64 %i.by, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %i.by, -8                      ; 3 uses
  %i.bz = add nsw i64 %n.vec, %i.bx
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.aw, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %invariant.gep.i, i64 %i.bx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %gep, align 4, !tbaa !23
  store <4 x i32> %broadcast.splat, ptr %i.ca, align 4, !tbaa !23
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cb = icmp eq i64 %index.next, %n.vec
  br i1 %i.cb, label %middle.block, label %vector.body, !llvm.loop !173

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.bx, %.lr.ph.preheader.i ], [ %i.bz, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i32 %i.aw, ptr %gep.i, align 4, !tbaa !23
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !174

..critedge_crit_edge.i:                           ; preds = %.loopexit.i
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next70.i, %i.al
  br i1 %exitcond.not, label %.preheader.lr.ph.i, label %.preheader53.i, !llvm.loop !175

.preheader.lr.ph.i:                               ; preds = %..critedge_crit_edge.i, %.preheader53.lr.ph.i
  %i.cc = add nsw i32 %i.r, -90
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 4484
  br label %.preheader.i94

.preheader.i94:                                   ; preds = %._crit_edge.i, %.preheader.lr.ph.i
  %i.cf = phi i32 [ %i.ad, %.preheader.lr.ph.i ], [ %i.ky, %._crit_edge.i ]
  %i.cg = phi i8 [ %i.ae, %.preheader.lr.ph.i ], [ %i.kz, %._crit_edge.i ] ; 2 uses
  %i.ch = phi i8 [ %i.ae, %.preheader.lr.ph.i ], [ %i.la, %._crit_edge.i ] ; 2 uses
  %i.ci = phi i8 [ %i.ae, %.preheader.lr.ph.i ], [ %i.lb, %._crit_edge.i ] ; 2 uses
  %.057101.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %i.lc, %._crit_edge.i ] ; 4 uses
  %.058100.i = phi i32 [ 1, %.preheader.lr.ph.i ], [ %.159.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.0.099.i = phi i32 [ %i.r, %.preheader.lr.ph.i ], [ %.sroa.0.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.8.098.i = phi i32 [ %i.cc, %.preheader.lr.ph.i ], [ %.sroa.8.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.16.097.i = phi i32 [ 0, %.preheader.lr.ph.i ], [ %.sroa.16.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.not7087.not.i = icmp eq i8 %i.ci, 0
  br i1 %.not7087.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i95

.lr.ph.preheader.i95:                             ; preds = %.preheader.i94
  %i.cj = zext i8 %i.ci to i32
  br label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %bb.ad, %.lr.ph.preheader.i95
  %i.ck = phi i8 [ %i.ku, %bb.ad ], [ %i.cg, %.lr.ph.preheader.i95 ] ; 4 uses
  %i.cl = phi i8 [ %i.ku, %bb.ad ], [ %i.ch, %.lr.ph.preheader.i95 ] ; 2 uses
  %i.cm = phi i32 [ %i.kx, %bb.ad ], [ %i.cj, %.lr.ph.preheader.i95 ]
  %.092.i = phi i32 [ %i.kw, %bb.ad ], [ 0, %.lr.ph.preheader.i95 ] ; 4 uses
  %.15991.i = phi i32 [ %.2.i, %bb.ad ], [ %.058100.i, %.lr.ph.preheader.i95 ] ; 5 uses
  %.sroa.0.190.i = phi i32 [ %.sroa.0.2.i, %bb.ad ], [ %.sroa.0.099.i, %.lr.ph.preheader.i95 ] ; 4 uses
  %.sroa.8.189.i = phi i32 [ %.sroa.8.3.i, %bb.ad ], [ %.sroa.8.098.i, %.lr.ph.preheader.i95 ] ; 4 uses
  %.sroa.16.188.i = phi i32 [ %.sroa.16.2.i, %bb.ad ], [ %.sroa.16.097.i, %.lr.ph.preheader.i95 ] ; 4 uses
  %i.cn = mul nuw nsw i32 %i.cm, %.057101.i
  %i.co = add nuw nsw i32 %i.cn, %.092.i
  %i.cp = zext nneg i32 %i.co to i64              ; 3 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cp
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !23 ; 2 uses
  switch i32 %i.cr, label %bb.z [
    i32 0, label %bb.ad
    i32 15, label %bb.m
    i32 14, label %bb.m
    i32 13, label %bb.r
  ]

bb.m:                                             ; preds = %.lr.ph.i96, %.lr.ph.i96
  %i.cs = load i32, ptr %i.f, align 8, !tbaa !93  ; 4 uses
  %i.ct = load i32, ptr %i.h, align 8, !tbaa !92  ; 3 uses
  %i.cu = load ptr, ptr %2, align 8, !tbaa !90    ; 3 uses
  %i.cv = lshr i32 %i.cs, 3
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cw
  %i.cy = load i32, ptr %i.cx, align 1, !tbaa !33
  %i.cz = tail call i32 @llvm.bswap.i32(i32 %i.cy)
  %i.da = and i32 %i.cs, 7
  %i.db = shl i32 %i.cz, %i.da
  %i.dc = lshr i32 %i.db, 25
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.dd ; 2 uses
  %i.df = load i16, ptr %i.de, align 2, !tbaa !33
  %i.dg = sext i16 %i.df to i32                   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !33 ; 2 uses
  %i.dj = sext i16 %i.di to i32                   ; 3 uses
  %i.dk = icmp slt i16 %i.di, 0
  br i1 %i.dk, label %bb.n, label %get_vlc2.exit81.i

bb.n:                                             ; preds = %bb.m
  %i.dl = add i32 %i.cs, 7
  %i.dm = tail call i32 @llvm.umin.i32(i32 %i.ct, i32 %i.dl) ; 4 uses
  %i.dn = lshr i32 %i.dm, 3
  %i.do = zext nneg i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.do
  %i.dq = load i32, ptr %i.dp, align 1, !tbaa !33
  %i.dr = tail call i32 @llvm.bswap.i32(i32 %i.dq)
  %i.ds = and i32 %i.dm, 7
  %i.dt = shl i32 %i.dr, %i.ds
  %i.du = add nsw i32 %i.dj, 32
  %i.dv = lshr i32 %i.dt, %i.du
  %i.dw = add i32 %i.dv, %i.dg
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.dx ; 2 uses
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !33
  %i.ea = sext i16 %i.dz to i32                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 2
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !33 ; 2 uses
  %i.ed = sext i16 %i.ec to i32                   ; 2 uses
  %i.ee = icmp slt i16 %i.ec, 0
  br i1 %i.ee, label %bb.o, label %get_vlc2.exit81.i

bb.o:                                             ; preds = %bb.n
  %i.ef = sub i32 %i.dm, %i.dj
  %i.eg = tail call i32 @llvm.umin.i32(i32 %i.ct, i32 %i.ef) ; 3 uses
  %i.eh = lshr i32 %i.eg, 3
  %i.ei = zext nneg i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 1, !tbaa !33
  %i.el = tail call i32 @llvm.bswap.i32(i32 %i.ek)
  %i.em = and i32 %i.eg, 7
  %i.en = shl i32 %i.el, %i.em
  %i.eo = add nsw i32 %i.ed, 32
  %i.ep = lshr i32 %i.en, %i.eo
  %i.eq = add i32 %i.ep, %i.ea
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr @ff_vlc_scalefactors, i64 %i.er ; 2 uses
  %i.et = load i16, ptr %i.es, align 2, !tbaa !33
  %i.eu = sext i16 %i.et to i32
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 2
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !33
  %i.ex = sext i16 %i.ew to i32
  br label %get_vlc2.exit81.i

get_vlc2.exit81.i:                                ; preds = %bb.o, %bb.n, %bb.m
  %.167.i78.i = phi i32 [ %i.dg, %bb.m ], [ %i.eu, %bb.o ], [ %i.ea, %bb.n ]
  %.165.i79.i = phi i32 [ %i.cs, %bb.m ], [ %i.eg, %bb.o ], [ %i.dm, %bb.n ]
  %.1.i80.i = phi i32 [ %i.dj, %bb.m ], [ %i.ex, %bb.o ], [ %i.ed, %bb.n ]
  %i.ey = add i32 %.1.i80.i, %.165.i79.i
  %i.ez = tail call i32 @llvm.umin.i32(i32 %i.ct, i32 %i.ey)
  store i32 %i.ez, ptr %i.f, align 8, !tbaa !93
  %i.fa = add i32 %.sroa.16.188.i, -60
  %i.fb = add i32 %i.fa, %.167.i78.i              ; 4 uses
  %i.fc = tail call i32 @llvm.smax.i32(i32 %i.fb, i32 -155)
  %.0.i73.i = tail call i32 @llvm.smin.i32(i32 %i.fc, i32 100) ; 3 uses
  %.not69.i = icmp eq i32 %i.fb, %.0.i73.i
  br i1 %.not69.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %get_vlc2.exit81.i
  %i.fd = load ptr, ptr %i.cd, align 8, !tbaa !22
  tail call void (ptr, ptr, ...) @avpriv_request_sample(ptr noundef %i.fd, ptr noundef nonnull @.str.46, i32 noundef %i.fb, i32 noundef %.0.i73.i) #12
  %.pre103.i = load i8, ptr %1, align 8, !tbaa !103 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %get_vlc2.exit81.i
  %i.fe = phi i8 [ %.pre103.i, %bb.p ], [ %i.ck, %get_vlc2.exit81.i ]
  %i.ff = phi i8 [ %.pre103.i, %bb.p ], [ %i.cl, %get_vlc2.exit81.i ]
  %i.fg = add nsw i32 %.0.i73.i, -100
  %i.fh = zext i8 %i.ff to i32
  %i.fi = mul nuw nsw i32 %.057101.i, %i.fh
  %i.fj = add nuw nsw i32 %i.fi, %.092.i
  %i.fk = zext nneg i32 %i.fj to i64
  br label %bb.ad

bb.r:                                             ; preds = %.lr.ph.i96
  %i.fl = add nsw i32 %.15991.i, -1
  %i.fm = icmp sgt i32 %.15991.i, 0
  %i.fn = load i32, ptr %i.f, align 8, !tbaa !93  ; 5 uses
  %i.fo = load i32, ptr %i.h, align 8, !tbaa !92  ; 4 uses
  %i.fp = load ptr, ptr %2, align 8, !tbaa !90    ; 3 uses
  %i.fq = lshr i32 %i.fn, 3
end_hunk_0
