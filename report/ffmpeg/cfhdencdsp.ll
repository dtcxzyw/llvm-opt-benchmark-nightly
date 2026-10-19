Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cfhdencdsp?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_cfhdencdsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @horiz_filter, ptr %0, align 8, !tbaa !14
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @vert_filter, ptr %i.a, align 8, !tbaa !15
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @horiz_filter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph33, label %._crit_edge

.lr.ph33:                                         ; preds = %bb.a
  %i.b = add i32 %6, -2                           ; 3 uses
  %i.c = icmp sgt i32 %6, 4
  %i.d = sext i32 %i.b to i64                     ; 4 uses
  %i.e = sext i32 %6 to i64
  %i.f = ashr i32 %i.b, 1
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 2      ; 2 uses
  %i.h = add nsw i32 %7, -1
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = mul i64 %4, %i.i
  %i.k = shl i64 %i.j, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.d, i64 4)
  %i.l = add nsw i64 %smax, -3                    ; 2 uses
  %i.m = and i64 %i.l, -2                         ; 2 uses
  %i.n = getelementptr i8, ptr %1, i64 %i.k
  %i.o = getelementptr i8, ptr %i.n, i64 %i.m
  %scevgep36 = getelementptr i8, ptr %i.o, i64 4  ; 2 uses
  %scevgep37 = getelementptr i8, ptr %2, i64 2    ; 2 uses
  %i.p = mul i64 %5, %i.i
  %i.q = shl i64 %i.p, 1
  %i.r = getelementptr i8, ptr %2, i64 %i.q
  %i.s = getelementptr i8, ptr %i.r, i64 %i.m
  %scevgep38 = getelementptr i8, ptr %i.s, i64 4  ; 2 uses
  %i.t = mul i64 %3, %i.i
  %i.u = and i64 %i.l, 4611686018427387902
  %i.v = add i64 %i.t, %i.u
  %i.w = shl i64 %i.v, 1
  %i.x = getelementptr i8, ptr %0, i64 %i.w
  %scevgep39 = getelementptr i8, ptr %i.x, i64 12 ; 2 uses
  %i.y = tail call i64 @llvm.smax.i64(i64 %i.d, i64 4)
  %i.z = add nsw i64 %i.y, -3
  %i.aa = lshr i64 %i.z, 1
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp slt i32 %i.b, 9
  %bound0 = icmp ult ptr %scevgep, %scevgep38
  %bound1 = icmp ult ptr %scevgep37, %scevgep36
  %found.conflict = and i1 %bound0, %bound1
  %i.ac = or i64 %5, %4
  %8 = and i64 %i.ac, 4611686018427387904
  %9 = icmp ne i64 %8, 0
  %i.ad = or i1 %found.conflict, %9
  %bound041 = icmp ult ptr %scevgep, %scevgep39
  %bound142 = icmp ult ptr %0, %scevgep36
  %found.conflict43 = and i1 %bound041, %bound142
  %.mask = and i64 %3, 4611686018427387904
  %stride.check44 = icmp ne i64 %.mask, 0
  %i.ae = or i1 %found.conflict43, %stride.check44
  %conflict.rdx = or i1 %i.ad, %i.ae
  %bound046 = icmp ult ptr %scevgep37, %scevgep39
  %bound147 = icmp ult ptr %0, %scevgep38
  %found.conflict48 = and i1 %bound046, %bound147
  %conflict.rdx51 = or i1 %conflict.rdx, %found.conflict48
  %n.vec = and i64 %i.ab, 9223372036854775804     ; 3 uses
  %i.af = shl nuw i64 %n.vec, 1
  %i.ag = or disjoint i64 %i.af, 2
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %filter.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph33, %filter.exit
  %.032 = phi i32 [ 0, %.lr.ph33 ], [ %i.fd, %filter.exit ]
  %.01231 = phi ptr [ %0, %.lr.ph33 ], [ %i.fa, %filter.exit ] ; 14 uses
  %.01330 = phi ptr [ %1, %.lr.ph33 ], [ %i.fb, %filter.exit ] ; 5 uses
  %.01429 = phi ptr [ %2, %.lr.ph33 ], [ %i.fc, %filter.exit ] ; 5 uses
  %i.ah = load i16, ptr %.01231, align 2, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %.01231, i64 2 ; 2 uses
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !10
  %i.ak = tail call i16 @llvm.sadd.sat.i16(i16 %i.ah, i16 %i.aj)
  store i16 %i.ak, ptr %.01330, align 2, !tbaa !10
  %i.al = load i16, ptr %.01231, align 2, !tbaa !10
  %i.am = sext i16 %i.al to i32
  %i.an = mul nsw i32 %i.am, 5
  %i.ao = load i16, ptr %i.ai, align 2, !tbaa !10
  %i.ap = sext i16 %i.ao to i32
  %.neg.i = mul nsw i32 %i.ap, -11
  %i.aq = getelementptr inbounds nuw i8, ptr %.01231, i64 4
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !10
  %i.as = sext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %.01231, i64 6
  %i.au = load i16, ptr %i.at, align 2, !tbaa !10
  %i.av = sext i16 %i.au to i32
  %i.aw = add nsw i32 %i.av, %i.as
  %i.ax = shl nsw i32 %i.aw, 2
  %i.ay = getelementptr inbounds nuw i8, ptr %.01231, i64 8
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !10
  %i.ba = sext i16 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %.01231, i64 10
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !10
  %i.bd = sext i16 %i.bc to i32
  %.neg22 = add nsw i32 %i.an, 4
  %i.be = add nsw i32 %.neg22, %.neg.i
  %i.bf = add nsw i32 %i.be, %i.ax
  %i.bg = add nsw i32 %i.ba, %i.bd
  %i.bh = sub nsw i32 %i.bf, %i.bg
  %i.bi = ashr i32 %i.bh, 3
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 -32768)
  %i.bk = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 32767)
  %.0.i19 = trunc nsw i32 %i.bk to i16
  store i16 %.0.i19, ptr %.01429, align 2, !tbaa !10
  br i1 %i.c, label %.lr.ph.preheader, label %filter.exit

.lr.ph.preheader:                                 ; preds = %bb.b
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx51
  br i1 %brmerge, label %.lr.ph.preheader62, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bl = shl nuw i64 %index, 1                   ; 2 uses
  %i.bm = or disjoint i64 %i.bl, 2                ; 3 uses
  %i.bn = getelementptr [2 x i8], ptr %.01231, i64 %i.bm ; 3 uses
  %wide.vec = load <8 x i16>, ptr %i.bn, align 2, !tbaa !10, !alias.scope !23 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec52.a = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bo = tail call <4 x i16> @llvm.sadd.sat.v4i16(<4 x i16> %strided.vec, <4 x i16> %strided.vec52.a)
  %i.bp = getelementptr inbounds nuw i8, ptr %.01330, i64 %i.bm
  store <4 x i16> %i.bo, ptr %i.bp, align 2, !tbaa !10, !alias.scope !24, !noalias !25
  %i.bq = getelementptr i8, ptr %i.bn, i64 -4
  %wide.vec53.a = load <8 x i16>, ptr %i.bq, align 2, !tbaa !10, !alias.scope !23 ; 2 uses
  %strided.vec54.a = shufflevector <8 x i16> %wide.vec53.a, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec55.a = shufflevector <8 x i16> %wide.vec53.a, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.br = sext <4 x i16> %strided.vec54.a to <4 x i32>
  %i.bs = sext <4 x i16> %strided.vec55.a to <4 x i32>
  %i.bt = getelementptr inbounds nuw [2 x i8], ptr %.01231, i64 %i.bl
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %wide.vec56.a = load <8 x i16>, ptr %i.bu, align 2, !tbaa !10, !alias.scope !23 ; 2 uses
  %strided.vec57.a = shufflevector <8 x i16> %wide.vec56.a, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec58.a = shufflevector <8 x i16> %wide.vec56.a, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bv = sext <4 x i16> %strided.vec57.a to <4 x i32>
  %i.bw = sext <4 x i16> %strided.vec58.a to <4 x i32>
  %i.bx = add nsw <4 x i32> %i.br, %i.bs
  %i.by = sub nsw <4 x i32> %i.bv, %i.bx
  %i.bz = add nsw <4 x i32> %i.by, splat (i32 4)
  %i.ca = add nsw <4 x i32> %i.bz, %i.bw
  %i.cb = ashr <4 x i32> %i.ca, splat (i32 3)
  %wide.vec59 = load <8 x i16>, ptr %i.bn, align 2, !tbaa !10, !alias.scope !23 ; 2 uses
  %strided.vec60 = shufflevector <8 x i16> %wide.vec59, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec61 = shufflevector <8 x i16> %wide.vec59, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.cc = sext <4 x i16> %strided.vec60 to <4 x i32>
  %i.cd = sext <4 x i16> %strided.vec61 to <4 x i32>
  %i.ce = sub nsw <4 x i32> %i.cc, %i.cd
  %i.cf = add nsw <4 x i32> %i.ce, %i.cb
  %i.cg = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.cf, <4 x i32> splat (i32 -32768))
  %i.ch = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.cg, <4 x i32> splat (i32 32767))
  %i.ci = trunc nsw <4 x i32> %i.ch to <4 x i16>
  %i.cj = getelementptr inbounds nuw i8, ptr %.01429, i64 %i.bm
  store <4 x i16> %i.ci, ptr %i.cj, align 2, !tbaa !10, !alias.scope !26, !noalias !23
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ck = icmp eq i64 %index.next, %n.vec
  br i1 %i.ck, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %filter.exit, label %.lr.ph.preheader62

.lr.ph.preheader62:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ag, %middle.block ], [ 2, %.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader62, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader62 ] ; 4 uses
  %i.cl = getelementptr [2 x i8], ptr %.01231, i64 %indvars.iv ; 6 uses
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cl, i64 2 ; 2 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !10
  %i.cp = tail call i16 @llvm.sadd.sat.i16(i16 %i.cm, i16 %i.co)
  %i.cq = getelementptr inbounds nuw i8, ptr %.01330, i64 %indvars.iv
  store i16 %i.cp, ptr %i.cq, align 2, !tbaa !10
  %i.cr = getelementptr i8, ptr %i.cl, i64 -4
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !10
  %i.ct = sext i16 %i.cs to i32
  %i.cu = getelementptr i8, ptr %i.cl, i64 -2
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !10
  %i.cw = sext i16 %i.cv to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %.01231, i64 %indvars.iv.next
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !10
  %i.cz = sext i16 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cl, i64 6
  %i.db = load i16, ptr %i.da, align 2, !tbaa !10
  %i.dc = sext i16 %i.db to i32
  %i.dd = add nsw i32 %i.ct, %i.cw
  %reass.sub = sub nsw i32 %i.cz, %i.dd
  %i.de = add nsw i32 %reass.sub, 4
  %i.df = add nsw i32 %i.de, %i.dc
  %i.dg = ashr i32 %i.df, 3
  %i.dh = load i16, ptr %i.cl, align 2, !tbaa !10
  %i.di = sext i16 %i.dh to i32
  %i.dj = load i16, ptr %i.cn, align 2, !tbaa !10
  %i.dk = sext i16 %i.dj to i32
  %i.dl = sub nsw i32 %i.di, %i.dk
  %i.dm = add nsw i32 %i.dl, %i.dg
  %i.dn = tail call i32 @llvm.smax.i32(i32 %i.dm, i32 -32768)
  %i.do = tail call i32 @llvm.smin.i32(i32 %i.dn, i32 32767)
  %.0.i15 = trunc nsw i32 %i.do to i16
  %i.dp = getelementptr inbounds nuw i8, ptr %.01429, i64 %indvars.iv
  store i16 %.0.i15, ptr %i.dp, align 2, !tbaa !10
  %i.dq = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.dq, label %.lr.ph, label %filter.exit, !llvm.loop !21

filter.exit:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %i.dr = getelementptr inbounds [2 x i8], ptr %.01231, i64 %i.d ; 2 uses
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !10
  %i.dt = getelementptr [2 x i8], ptr %.01231, i64 %i.e ; 5 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 -2     ; 2 uses
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !10
  %i.dw = tail call i16 @llvm.sadd.sat.i16(i16 %i.ds, i16 %i.dv)
  %i.dx = getelementptr inbounds [2 x i8], ptr %.01330, i64 %i.g
  store i16 %i.dw, ptr %i.dx, align 2, !tbaa !10
  %i.dy = load i16, ptr %i.dr, align 2, !tbaa !10
  %i.dz = sext i16 %i.dy to i32
  %i.ea = mul nsw i32 %i.dz, 11
  %i.eb = load i16, ptr %i.du, align 2, !tbaa !10
  %i.ec = sext i16 %i.eb to i32
  %.neg86.i = mul nsw i32 %i.ec, -5
  %i.ed = getelementptr i8, ptr %i.dt, i64 -6
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !10
  %i.ef = sext i16 %i.ee to i32
  %i.eg = getelementptr i8, ptr %i.dt, i64 -8
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !10
  %i.ei = sext i16 %i.eh to i32
  %i.ej = add nsw i32 %i.ei, %i.ef
  %i.ek = getelementptr i8, ptr %i.dt, i64 -10
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !10
  %i.em = sext i16 %i.el to i32
  %i.en = getelementptr i8, ptr %i.dt, i64 -12
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !10
  %i.ep = sext i16 %i.eo to i32
  %i.eq = add nsw i32 %i.ea, 4
  %i.er = add nsw i32 %i.eq, %.neg86.i
  %i.es = add nsw i32 %i.er, %i.em
  %i.et = shl nsw i32 %i.ej, 2
  %i.eu = sub nsw i32 %i.es, %i.et
  %i.ev = add nsw i32 %i.eu, %i.ep
  %i.ew = ashr i32 %i.ev, 3
  %i.ex = tail call i32 @llvm.smax.i32(i32 %i.ew, i32 -32768)
  %i.ey = tail call i32 @llvm.smin.i32(i32 %i.ex, i32 32767)
  %.0.i17 = trunc nsw i32 %i.ey to i16
  %i.ez = getelementptr inbounds [2 x i8], ptr %.01429, i64 %i.g
  store i16 %.0.i17, ptr %i.ez, align 2, !tbaa !10
  %i.fa = getelementptr inbounds [2 x i8], ptr %.01231, i64 %3
  %i.fb = getelementptr inbounds [2 x i8], ptr %.01330, i64 %4
  %i.fc = getelementptr inbounds [2 x i8], ptr %.01429, i64 %5
  %i.fd = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.fd, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !22
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vert_filter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
end_hunk_0
