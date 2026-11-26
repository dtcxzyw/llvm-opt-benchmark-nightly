Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cfhdencdsp?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define void @ff_cfhdencdsp_init(ptr nofree noundef writeonly captures(none) initializes((0, 16)) %0) local_unnamed_addr #0 {
bb.a:
  store ptr @horiz_filter, ptr %0, align 8, !tbaa !16
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @vert_filter, ptr %i.a, align 8, !tbaa !17
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
  %i.h = add nsw i32 %7, -1
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = mul i64 %3, %i.i
  %smax = tail call i64 @llvm.smax.i64(i64 %i.d, i64 4)
  %i.k = add nsw i64 %smax, -3                    ; 2 uses
  %i.l = and i64 %i.k, 4611686018427387902
  %i.m = add i64 %i.j, %i.l
  %i.n = shl i64 %i.m, 1
  %i.o = getelementptr i8, ptr %0, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 12   ; 2 uses
  %i.p = mul i64 %5, %i.i
  %i.q = shl i64 %i.p, 1
  %i.r = and i64 %i.k, -2                         ; 2 uses
  %i.s = getelementptr i8, ptr %2, i64 %i.q
  %i.t = getelementptr i8, ptr %i.s, i64 %i.r
  %scevgep49 = getelementptr i8, ptr %i.t, i64 4  ; 2 uses
  %scevgep50 = getelementptr i8, ptr %2, i64 2    ; 2 uses
  %i.u = mul i64 %4, %i.i
  %i.v = shl i64 %i.u, 1
  %i.w = getelementptr i8, ptr %1, i64 %i.v
  %i.x = getelementptr i8, ptr %i.w, i64 %i.r
  %scevgep51 = getelementptr i8, ptr %i.x, i64 4  ; 2 uses
  %scevgep52 = getelementptr i8, ptr %1, i64 2    ; 2 uses
  %i.y = tail call i64 @llvm.smax.i64(i64 %i.d, i64 4)
  %i.z = add nsw i64 %i.y, -3
  %i.aa = lshr i64 %i.z, 1
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp slt i32 %i.b, 9
  %bound0 = icmp ult ptr %scevgep52, %scevgep49
  %bound1 = icmp ult ptr %scevgep50, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  %i.ac = or i64 %5, %4
  %i.ad = and i64 %i.ac, 4611686018427387904
  %i.ae = icmp ne i64 %i.ad, 0
  %i.af = or i1 %found.conflict, %i.ae
  %bound054 = icmp ult ptr %scevgep52, %scevgep
  %bound155 = icmp ult ptr %0, %scevgep51
  %found.conflict56 = and i1 %bound054, %bound155
  %.mask = and i64 %3, 4611686018427387904
  %stride.check57 = icmp ne i64 %.mask, 0
  %i.ag = or i1 %found.conflict56, %stride.check57
  %conflict.rdx = or i1 %i.af, %i.ag
  %bound058 = icmp ult ptr %scevgep50, %scevgep
  %bound159 = icmp ult ptr %0, %scevgep49
  %found.conflict60 = and i1 %bound058, %bound159
  %conflict.rdx61 = or i1 %conflict.rdx, %found.conflict60
  %n.vec = and i64 %i.ab, 9223372036854775804     ; 3 uses
  %i.ah = shl nuw i64 %n.vec, 1
  %i.ai = or disjoint i64 %i.ah, 2
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %filter.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph33, %filter.exit
  %.032 = phi i32 [ 0, %.lr.ph33 ], [ %i.ff, %filter.exit ]
  %.01231 = phi ptr [ %0, %.lr.ph33 ], [ %i.fc, %filter.exit ] ; 14 uses
  %.01330 = phi ptr [ %1, %.lr.ph33 ], [ %i.fd, %filter.exit ] ; 5 uses
  %.01429 = phi ptr [ %2, %.lr.ph33 ], [ %i.fe, %filter.exit ] ; 5 uses
  %i.aj = load i16, ptr %.01231, align 2, !tbaa !10
  %i.ak = getelementptr inbounds nuw i8, ptr %.01231, i64 2 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !10
  %i.am = tail call i16 @llvm.sadd.sat.i16(i16 %i.aj, i16 %i.al)
  store i16 %i.am, ptr %.01330, align 2, !tbaa !10
  %i.an = load i16, ptr %.01231, align 2, !tbaa !10
  %i.ao = sext i16 %i.an to i32
  %i.ap = mul nsw i32 %i.ao, 5
  %i.aq = load i16, ptr %i.ak, align 2, !tbaa !10
  %i.ar = sext i16 %i.aq to i32
  %.neg.i = mul nsw i32 %i.ar, -11
  %i.as = getelementptr inbounds nuw i8, ptr %.01231, i64 4
  %i.at = load i16, ptr %i.as, align 2, !tbaa !10
  %i.au = sext i16 %i.at to i32
  %i.av = getelementptr inbounds nuw i8, ptr %.01231, i64 6
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !10
  %i.ax = sext i16 %i.aw to i32
  %i.ay = add nsw i32 %i.ax, %i.au
  %i.az = shl nsw i32 %i.ay, 2
  %i.ba = getelementptr inbounds nuw i8, ptr %.01231, i64 8
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !10
  %i.bc = sext i16 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %.01231, i64 10
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !10
  %i.bf = sext i16 %i.be to i32
  %.neg22 = add nsw i32 %i.ap, 4
  %i.bg = add nsw i32 %.neg22, %.neg.i
  %i.bh = add nsw i32 %i.bg, %i.az
  %i.bi = add nsw i32 %i.bc, %i.bf
  %i.bj = sub nsw i32 %i.bh, %i.bi
  %i.bk = ashr i32 %i.bj, 3
  %i.bl = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 -32768)
  %i.bm = tail call i32 @llvm.smin.i32(i32 %i.bl, i32 32767)
  %.0.i19 = trunc nsw i32 %i.bm to i16
  store i16 %.0.i19, ptr %.01429, align 2, !tbaa !10
  br i1 %i.c, label %.lr.ph.preheader, label %filter.exit

.lr.ph.preheader:                                 ; preds = %bb.b
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx61
  br i1 %brmerge, label %.lr.ph.preheader73, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.bn = shl nuw i64 %index, 1                   ; 2 uses
  %i.bo = or disjoint i64 %i.bn, 2                ; 3 uses
  %i.bp = getelementptr [2 x i8], ptr %.01231, i64 %i.bo ; 3 uses
  %wide.vec = load <8 x i16>, ptr %i.bp, align 2, !tbaa !10, !alias.scope !25 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec62 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bq = tail call <4 x i16> @llvm.sadd.sat.v4i16(<4 x i16> %strided.vec, <4 x i16> %strided.vec62)
  %i.br = getelementptr inbounds nuw i8, ptr %.01330, i64 %i.bo
  store <4 x i16> %i.bq, ptr %i.br, align 2, !tbaa !10, !alias.scope !26, !noalias !27
  %i.bs = getelementptr i8, ptr %i.bp, i64 -4
  %wide.vec63 = load <8 x i16>, ptr %i.bs, align 2, !tbaa !10, !alias.scope !25 ; 2 uses
  %strided.vec64 = shufflevector <8 x i16> %wide.vec63, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec65 = shufflevector <8 x i16> %wide.vec63, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bt = sext <4 x i16> %strided.vec64 to <4 x i32>
  %i.bu = sext <4 x i16> %strided.vec65 to <4 x i32>
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr %.01231, i64 %i.bn
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %wide.vec66 = load <8 x i16>, ptr %i.bw, align 2, !tbaa !10, !alias.scope !25 ; 2 uses
  %strided.vec67 = shufflevector <8 x i16> %wide.vec66, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec68 = shufflevector <8 x i16> %wide.vec66, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.bx = sext <4 x i16> %strided.vec67 to <4 x i32>
  %i.by = sext <4 x i16> %strided.vec68 to <4 x i32>
  %i.bz = add nsw <4 x i32> %i.bt, %i.bu
  %i.ca = sub nsw <4 x i32> %i.bx, %i.bz
  %i.cb = add nsw <4 x i32> %i.ca, splat (i32 4)
  %i.cc = add nsw <4 x i32> %i.cb, %i.by
  %i.cd = ashr <4 x i32> %i.cc, splat (i32 3)
  %wide.vec69 = load <8 x i16>, ptr %i.bp, align 2, !tbaa !10, !alias.scope !25 ; 2 uses
  %strided.vec70 = shufflevector <8 x i16> %wide.vec69, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec71 = shufflevector <8 x i16> %wide.vec69, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ce = sext <4 x i16> %strided.vec70 to <4 x i32>
  %i.cf = sext <4 x i16> %strided.vec71 to <4 x i32>
  %i.cg = sub nsw <4 x i32> %i.ce, %i.cf
  %i.ch = add nsw <4 x i32> %i.cg, %i.cd
  %i.ci = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ch, <4 x i32> splat (i32 -32768))
  %i.cj = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.ci, <4 x i32> splat (i32 32767))
  %i.ck = trunc nsw <4 x i32> %i.cj to <4 x i16>
  %i.cl = getelementptr inbounds nuw i8, ptr %.01429, i64 %i.bo
  store <4 x i16> %i.ck, ptr %i.cl, align 2, !tbaa !10, !alias.scope !28, !noalias !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %filter.exit, label %.lr.ph.preheader73

.lr.ph.preheader73:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ai, %middle.block ], [ 2, %.lr.ph.preheader ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader73, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader73 ] ; 4 uses
  %i.cn = getelementptr [2 x i8], ptr %.01231, i64 %indvars.iv ; 6 uses
  %i.co = load i16, ptr %i.cn, align 2, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 2 ; 2 uses
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !10
  %i.cr = tail call i16 @llvm.sadd.sat.i16(i16 %i.co, i16 %i.cq)
  %i.cs = getelementptr inbounds nuw i8, ptr %.01330, i64 %indvars.iv
  store i16 %i.cr, ptr %i.cs, align 2, !tbaa !10
  %i.ct = getelementptr i8, ptr %i.cn, i64 -4
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !10
  %i.cv = sext i16 %i.cu to i32
  %i.cw = getelementptr i8, ptr %i.cn, i64 -2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !10
  %i.cy = sext i16 %i.cx to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %.01231, i64 %indvars.iv.next
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !10
  %i.db = sext i16 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cn, i64 6
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !10
  %i.de = sext i16 %i.dd to i32
  %i.df = add nsw i32 %i.cv, %i.cy
  %reass.sub = sub nsw i32 %i.db, %i.df
  %i.dg = add nsw i32 %reass.sub, 4
  %i.dh = add nsw i32 %i.dg, %i.de
  %i.di = ashr i32 %i.dh, 3
  %i.dj = load i16, ptr %i.cn, align 2, !tbaa !10
  %i.dk = sext i16 %i.dj to i32
  %i.dl = load i16, ptr %i.cp, align 2, !tbaa !10
  %i.dm = sext i16 %i.dl to i32
  %i.dn = sub nsw i32 %i.dk, %i.dm
  %i.do = add nsw i32 %i.dn, %i.di
  %i.dp = tail call i32 @llvm.smax.i32(i32 %i.do, i32 -32768)
  %i.dq = tail call i32 @llvm.smin.i32(i32 %i.dp, i32 32767)
  %.0.i15 = trunc nsw i32 %i.dq to i16
  %i.dr = getelementptr inbounds nuw i8, ptr %.01429, i64 %indvars.iv
  store i16 %.0.i15, ptr %i.dr, align 2, !tbaa !10
  %i.ds = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.ds, label %.lr.ph, label %filter.exit, !llvm.loop !23

filter.exit:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %i.dt = getelementptr inbounds [2 x i8], ptr %.01231, i64 %i.d ; 2 uses
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !10
  %i.dv = getelementptr [2 x i8], ptr %.01231, i64 %i.e ; 5 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 -2     ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !10
  %i.dy = tail call i16 @llvm.sadd.sat.i16(i16 %i.du, i16 %i.dx)
  %i.dz = getelementptr inbounds [2 x i8], ptr %.01330, i64 %i.g
  store i16 %i.dy, ptr %i.dz, align 2, !tbaa !10
  %i.ea = load i16, ptr %i.dt, align 2, !tbaa !10
  %i.eb = sext i16 %i.ea to i32
  %i.ec = mul nsw i32 %i.eb, 11
  %i.ed = load i16, ptr %i.dw, align 2, !tbaa !10
  %i.ee = sext i16 %i.ed to i32
  %.neg86.i = mul nsw i32 %i.ee, -5
  %i.ef = getelementptr i8, ptr %i.dv, i64 -6
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !10
  %i.eh = sext i16 %i.eg to i32
  %i.ei = getelementptr i8, ptr %i.dv, i64 -8
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !10
  %i.ek = sext i16 %i.ej to i32
  %i.el = add nsw i32 %i.ek, %i.eh
  %i.em = getelementptr i8, ptr %i.dv, i64 -10
  %i.en = load i16, ptr %i.em, align 2, !tbaa !10
  %i.eo = sext i16 %i.en to i32
  %i.ep = getelementptr i8, ptr %i.dv, i64 -12
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !10
  %i.er = sext i16 %i.eq to i32
  %i.es = add nsw i32 %i.ec, 4
  %i.et = add nsw i32 %i.es, %.neg86.i
  %i.eu = add nsw i32 %i.et, %i.eo
  %i.ev = shl nsw i32 %i.el, 2
  %i.ew = sub nsw i32 %i.eu, %i.ev
  %i.ex = add nsw i32 %i.ew, %i.er
  %i.ey = ashr i32 %i.ex, 3
  %i.ez = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 -32768)
  %i.fa = tail call i32 @llvm.smin.i32(i32 %i.ez, i32 32767)
  %.0.i17 = trunc nsw i32 %i.fa to i16
  %i.fb = getelementptr inbounds [2 x i8], ptr %.01429, i64 %i.g
  store i16 %.0.i17, ptr %i.fb, align 2, !tbaa !10
  %i.fc = getelementptr inbounds [2 x i8], ptr %.01231, i64 %3
  %i.fd = getelementptr inbounds [2 x i8], ptr %.01330, i64 %4
  %i.fe = getelementptr inbounds [2 x i8], ptr %.01429, i64 %5
  %i.ff = add nuw nsw i32 %.032, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ff, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !24
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @vert_filter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i32 noundef %6, i32 noundef %7) #1 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  br i1 %i.a, label %.lr.ph27, label %._crit_edge

.lr.ph27:                                         ; preds = %bb.a
  %.idx.i = shl nsw i64 %3, 2
  %.idx83.i = mul nsw i64 %3, 6
  %.idx84.i = shl nsw i64 %3, 3
  %.idx85.i = mul nsw i64 %3, 10
  %i.b = add i32 %7, -2                           ; 3 uses
  %i.c = icmp sgt i32 %7, 4
  %i.d = sext i32 %i.b to i64                     ; 4 uses
  %i.e = mul nsw i64 %3, %i.d
  %i.f = add nsw i32 %7, -1
  %i.g = sext i32 %i.f to i64
  %i.h = mul nsw i64 %3, %i.g
  %i.i = ashr i32 %i.b, 1
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = mul nsw i64 %4, %i.j
  %i.l = add nsw i32 %7, -3
  %i.m = sext i32 %i.l to i64
  %i.n = mul nsw i64 %3, %i.m
  %i.o = add nsw i32 %7, -4
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %3, %i.p
  %i.r = add nsw i32 %7, -5
  %i.s = sext i32 %i.r to i64
  %i.t = mul nsw i64 %3, %i.s
  %i.u = add nsw i32 %7, -6
  %i.v = sext i32 %i.u to i64
  %i.w = mul nsw i64 %3, %i.v
  %i.x = mul nsw i64 %5, %i.j
  %wide.trip.count = zext nneg i32 %6 to i64      ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %i.d, i64 4)
  %8 = add nsw i64 %smax, -3                      ; 2 uses
  %9 = shl nuw nsw i64 %8, 1
  %10 = and i64 %9, 9223372036854775804
  %11 = shl nuw nsw i64 %wide.trip.count, 1       ; 2 uses
  %12 = getelementptr i8, ptr %0, i64 %10
  %13 = getelementptr i8, ptr %12, i64 %11
  %scevgep = getelementptr i8, ptr %13, i64 10    ; 2 uses
  %14 = and i64 %8, -2
  %15 = add i64 %14, %11
  %16 = add i64 %15, 2                            ; 2 uses
  %scevgep45 = getelementptr i8, ptr %2, i64 %16  ; 2 uses
  %scevgep46 = getelementptr i8, ptr %2, i64 2    ; 2 uses
  %scevgep47 = getelementptr i8, ptr %1, i64 %16  ; 2 uses
  %scevgep48 = getelementptr i8, ptr %1, i64 2    ; 2 uses
  %17 = tail call i64 @llvm.smax.i64(i64 %i.d, i64 4)
  %18 = add nsw i64 %17, -3
  %19 = lshr i64 %18, 1
  %20 = add nuw nsw i64 %19, 1                    ; 2 uses
  %min.iters.check = icmp slt i32 %i.b, 9
  %ident.check = icmp ne i64 %3, 1
  %ident.check32 = icmp ne i64 %4, 1
  %ident.check33 = icmp ne i64 %5, 1
  %21 = or i1 %ident.check, %ident.check32
  %22 = or i1 %21, %ident.check33
  %bound0 = icmp ult ptr %scevgep48, %scevgep45
  %bound1 = icmp ult ptr %scevgep46, %scevgep47
  %found.conflict = and i1 %bound0, %bound1
  %bound049 = icmp ult ptr %scevgep48, %scevgep
  %bound150 = icmp ult ptr %0, %scevgep47
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx = or i1 %found.conflict, %found.conflict51
  %bound052 = icmp ult ptr %scevgep46, %scevgep
  %bound153 = icmp ult ptr %0, %scevgep45
  %found.conflict54 = and i1 %bound052, %bound153
  %conflict.rdx55 = or i1 %conflict.rdx, %found.conflict54
  %n.vec = and i64 %20, 9223372036854775804       ; 3 uses
  %23 = shl nuw i64 %n.vec, 1
  %24 = or disjoint i64 %23, 2
  %cmp.n = icmp eq i64 %20, %n.vec
  br label %bb.b

._crit_edge:                                      ; preds = %filter.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph27, %filter.exit
  %indvars.iv29 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next30, %filter.exit ] ; 4 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv29 ; 22 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %indvars.iv29 ; 4 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv29 ; 4 uses
  %i.ab = load i16, ptr %i.y, align 2, !tbaa !10
  %i.ac = getelementptr inbounds [2 x i8], ptr %i.y, i64 %3 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !10
  %i.ae = tail call i16 @llvm.sadd.sat.i16(i16 %i.ab, i16 %i.ad)
  store i16 %i.ae, ptr %i.z, align 2, !tbaa !10
  %i.af = load i16, ptr %i.y, align 2, !tbaa !10
  %i.ag = sext i16 %i.af to i32
  %i.ah = mul nsw i32 %i.ag, 5
  %i.ai = load i16, ptr %i.ac, align 2, !tbaa !10
  %i.aj = sext i16 %i.ai to i32
  %.neg.i = mul nsw i32 %i.aj, -11
  %i.ak = getelementptr inbounds i8, ptr %i.y, i64 %.idx.i
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !10
  %i.am = sext i16 %i.al to i32
  %i.an = getelementptr inbounds i8, ptr %i.y, i64 %.idx83.i
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !10
  %i.ap = sext i16 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, %i.am
  %i.ar = shl nsw i32 %i.aq, 2
  %i.as = getelementptr inbounds i8, ptr %i.y, i64 %.idx84.i
  %i.at = load i16, ptr %i.as, align 2, !tbaa !10
  %i.au = sext i16 %i.at to i32
  %i.av = getelementptr inbounds i8, ptr %i.y, i64 %.idx85.i
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !10
  %i.ax = sext i16 %i.aw to i32
  %.neg19 = add nsw i32 %i.ah, 4
  %i.ay = add nsw i32 %.neg19, %.neg.i
  %i.az = add nsw i32 %i.ay, %i.ar
  %i.ba = add nsw i32 %i.au, %i.ax
  %i.bb = sub nsw i32 %i.az, %i.ba
  %i.bc = ashr i32 %i.bb, 3
  %i.bd = tail call i32 @llvm.smax.i32(i32 %i.bc, i32 -32768)
  %i.be = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 32767)
  %.0.i16 = trunc nsw i32 %i.be to i16
  store i16 %.0.i16, ptr %i.aa, align 2, !tbaa !10
  br i1 %i.c, label %.lr.ph.preheader, label %filter.exit

.lr.ph.preheader:                                 ; preds = %bb.b
  %brmerge = or i1 %min.iters.check, %22
  %brmerge67 = select i1 %brmerge, i1 true, i1 %conflict.rdx55
  br i1 %brmerge67, label %.lr.ph.preheader66, label %vector.body

vector.body:                                      ; preds = %.lr.ph.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %25 = shl nuw i64 %index, 1                     ; 3 uses
  %26 = or disjoint i64 %25, 2                    ; 3 uses
  %27 = getelementptr inbounds [2 x i8], ptr %i.y, i64 %26 ; 2 uses
  %wide.vec = load <8 x i16>, ptr %27, align 2, !tbaa !10, !alias.scope !36 ; 2 uses
  %strided.vec = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec56 = shufflevector <8 x i16> %wide.vec, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %28 = tail call <4 x i16> @llvm.sadd.sat.v4i16(<4 x i16> %strided.vec, <4 x i16> %strided.vec56)
  %29 = getelementptr inbounds i8, ptr %i.z, i64 %26
  store <4 x i16> %28, ptr %29, align 2, !tbaa !10, !alias.scope !37, !noalias !38
  %30 = getelementptr inbounds [2 x i8], ptr %i.y, i64 %25
  %wide.vec57 = load <8 x i16>, ptr %30, align 2, !tbaa !10, !alias.scope !36 ; 2 uses
  %strided.vec58 = shufflevector <8 x i16> %wide.vec57, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec59 = shufflevector <8 x i16> %wide.vec57, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %31 = sext <4 x i16> %strided.vec58 to <4 x i32>
  %32 = sext <4 x i16> %strided.vec59 to <4 x i32>
  %33 = getelementptr [2 x i8], ptr %i.y, i64 %25
  %34 = getelementptr i8, ptr %33, i64 8
  %wide.vec60 = load <8 x i16>, ptr %34, align 2, !tbaa !10, !alias.scope !36 ; 2 uses
  %strided.vec61 = shufflevector <8 x i16> %wide.vec60, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec62 = shufflevector <8 x i16> %wide.vec60, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %35 = sext <4 x i16> %strided.vec61 to <4 x i32>
  %36 = sext <4 x i16> %strided.vec62 to <4 x i32>
  %37 = add nsw <4 x i32> %31, %32
  %38 = sub nsw <4 x i32> %35, %37
  %39 = add nsw <4 x i32> %38, splat (i32 4)
  %40 = add nsw <4 x i32> %39, %36
  %41 = ashr <4 x i32> %40, splat (i32 3)
  %wide.vec63 = load <8 x i16>, ptr %27, align 2, !tbaa !10, !alias.scope !36 ; 2 uses
  %strided.vec64 = shufflevector <8 x i16> %wide.vec63, <8 x i16> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec65 = shufflevector <8 x i16> %wide.vec63, <8 x i16> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %42 = sext <4 x i16> %strided.vec64 to <4 x i32>
  %43 = sext <4 x i16> %strided.vec65 to <4 x i32>
  %44 = sub nsw <4 x i32> %42, %43
  %45 = add nsw <4 x i32> %44, %41
  %46 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %45, <4 x i32> splat (i32 -32768))
  %47 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %46, <4 x i32> splat (i32 32767))
  %48 = trunc nsw <4 x i32> %47 to <4 x i16>
  %49 = getelementptr inbounds i8, ptr %i.aa, i64 %26
  store <4 x i16> %48, ptr %49, align 2, !tbaa !10, !alias.scope !39, !noalias !36
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %50 = icmp eq i64 %index.next, %n.vec
  br i1 %50, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %filter.exit, label %.lr.ph.preheader66

.lr.ph.preheader66:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 2, %.lr.ph.preheader ], [ %24, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader66, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader66 ] ; 7 uses
  %i.bf = mul nsw i64 %3, %indvars.iv
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.bf ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !10
  %i.bi = or disjoint i64 %indvars.iv, 1
  %i.bj = mul nsw i64 %3, %i.bi
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.bj ; 2 uses
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !10
  %i.bm = tail call i16 @llvm.sadd.sat.i16(i16 %i.bh, i16 %i.bl)
  %i.bn = lshr exact i64 %indvars.iv, 1           ; 2 uses
  %i.bo = mul nsw i64 %4, %i.bn
  %i.bp = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.bo
  store i16 %i.bm, ptr %i.bp, align 2, !tbaa !10
  %i.bq = add nsw i64 %indvars.iv, -2
  %i.br = mul nsw i64 %3, %i.bq
  %i.bs = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.br
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !10
  %i.bu = sext i16 %i.bt to i32
  %i.bv = add nsw i64 %indvars.iv, -1
  %i.bw = mul nsw i64 %3, %i.bv
  %i.bx = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.bw
  %i.by = load i16, ptr %i.bx, align 2, !tbaa !10
  %i.bz = sext i16 %i.by to i32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.ca = mul nsw i64 %3, %indvars.iv.next
  %i.cb = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !10
  %i.cd = sext i16 %i.cc to i32
  %i.ce = add nuw nsw i64 %indvars.iv, 3
  %i.cf = mul nsw i64 %3, %i.ce
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !10
  %i.ci = sext i16 %i.ch to i32
  %i.cj = add nsw i32 %i.bu, %i.bz
  %reass.sub = sub nsw i32 %i.cd, %i.cj
  %i.ck = add nsw i32 %reass.sub, 4
  %i.cl = add nsw i32 %i.ck, %i.ci
  %i.cm = ashr i32 %i.cl, 3
  %i.cn = load i16, ptr %i.bg, align 2, !tbaa !10
  %i.co = sext i16 %i.cn to i32
  %i.cp = load i16, ptr %i.bk, align 2, !tbaa !10
  %i.cq = sext i16 %i.cp to i32
  %i.cr = sub nsw i32 %i.co, %i.cq
  %i.cs = add nsw i32 %i.cr, %i.cm
  %i.ct = tail call i32 @llvm.smax.i32(i32 %i.cs, i32 -32768)
  %i.cu = tail call i32 @llvm.smin.i32(i32 %i.ct, i32 32767)
  %.0.i12 = trunc nsw i32 %i.cu to i16
  %i.cv = mul nsw i64 %5, %i.bn
  %i.cw = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.cv
  store i16 %.0.i12, ptr %i.cw, align 2, !tbaa !10
  %i.cx = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.cx, label %.lr.ph, label %filter.exit, !llvm.loop !34

filter.exit:                                      ; preds = %.lr.ph, %middle.block, %bb.b
  %i.cy = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.e ; 2 uses
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !10
  %i.da = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.h ; 2 uses
  %i.db = load i16, ptr %i.da, align 2, !tbaa !10
  %i.dc = tail call i16 @llvm.sadd.sat.i16(i16 %i.cz, i16 %i.db)
  %i.dd = getelementptr inbounds [2 x i8], ptr %i.z, i64 %i.k
  store i16 %i.dc, ptr %i.dd, align 2, !tbaa !10
  %i.de = load i16, ptr %i.cy, align 2, !tbaa !10
  %i.df = sext i16 %i.de to i32
  %i.dg = mul nsw i32 %i.df, 11
  %i.dh = load i16, ptr %i.da, align 2, !tbaa !10
  %i.di = sext i16 %i.dh to i32
  %.neg86.i = mul nsw i32 %i.di, -5
  %i.dj = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.n
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !10
  %i.dl = sext i16 %i.dk to i32
  %i.dm = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.q
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !10
  %i.do = sext i16 %i.dn to i32
  %i.dp = add nsw i32 %i.do, %i.dl
  %i.dq = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.t
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !10
  %i.ds = sext i16 %i.dr to i32
  %i.dt = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.w
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !10
  %i.dv = sext i16 %i.du to i32
  %i.dw = add nsw i32 %i.dg, 4
  %i.dx = add nsw i32 %i.dw, %.neg86.i
  %i.dy = add nsw i32 %i.dx, %i.ds
  %i.dz = shl nsw i32 %i.dp, 2
  %i.ea = sub nsw i32 %i.dy, %i.dz
  %i.eb = add nsw i32 %i.ea, %i.dv
  %i.ec = ashr i32 %i.eb, 3
  %i.ed = tail call i32 @llvm.smax.i32(i32 %i.ec, i32 -32768)
  %i.ee = tail call i32 @llvm.smin.i32(i32 %i.ed, i32 32767)
  %.0.i14 = trunc nsw i32 %i.ee to i16
  %i.ef = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.x
  store i16 %.0.i14, ptr %i.ef, align 2, !tbaa !10
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !35
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.sadd.sat.i16(i16, i16) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.sadd.sat.v4i16(<4 x i16>, <4 x i16>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #2

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"short", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!"CFHDEncDSPContext", !14, i64 0, !14, i64 8}
!16 = !{!15, !14, i64 0}
!17 = !{!15, !14, i64 8}
!18 = distinct !{!18, i1 false, !"LVerDomain"}
!19 = distinct !{!19, !18}
!20 = distinct !{!20, !18}
!21 = distinct !{!21, !18}
!22 = distinct !{!22, !11, !12, !13}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11}
!25 = !{!19}
!26 = !{!20}
!27 = !{!21, !19}
!28 = !{!21}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !29}
!33 = distinct !{!33, !11, !12, !13}
!34 = distinct !{!34, !11, !12}
!35 = distinct !{!35, !11}
!36 = !{!30}
!37 = !{!31}
!38 = !{!32, !30}
!39 = !{!32}
end_hunk_0
