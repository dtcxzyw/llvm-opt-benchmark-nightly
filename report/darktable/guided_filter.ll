Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/guided_filter?download=true
inline.NumInlined: 16
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @guided_filter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, float noundef %7, float noundef %8, float noundef %9, float noundef %10) local_unnamed_addr #0 {
bb.a:
  %i.a = mul nsw i32 %6, 3
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = tail call i64 @dt_round_size(i64 noundef %i.b, i64 noundef 16) #7
  %i.d = icmp ugt i64 %i.c, 512
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @dt_round_size(i64 noundef %i.b, i64 noundef 16) #7
  %i.f = trunc i64 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 512, %bb.a ]  ; 4 uses
  %i.h = fmul reassoc nsz arcp contract afn float %7, %7 ; 4 uses
  %i.i = icmp sgt i32 %4, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge56

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.j = icmp sgt i32 %3, 0
  %.pre.i = sext i32 %6 to i64                    ; 7 uses
  %i.k = sext i32 %3 to i64                       ; 8 uses
  %i.l = sext i32 %5 to i64                       ; 2 uses
  br i1 %i.j, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.m = sext i32 %i.g to i64                     ; 7 uses
  %i.n = zext nneg i32 %4 to i64
  %i.o = mul nsw i64 %i.m, %i.k
  %i.p = shl i64 %i.o, 2
  %i.q = shl nsw i64 %i.m, 2
  %i.r = zext nneg i32 %4 to i64
  %i.s = shl nuw nsw i64 %i.k, 2
  %i.t = shl nuw nsw i64 %i.k, 2
  %i.u = shl nuw nsw i64 %i.k, 2
  %scevgep201 = getelementptr i8, ptr %0, i64 8
  %ident.check167.not = icmp eq i32 %5, 1
  %broadcast.splatinsert232 = insertelement <8 x float> poison, float %8, i64 0
  %broadcast.splat233 = shufflevector <8 x float> %broadcast.splatinsert232, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.v = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %8, i64 1
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %broadcast.splatinsert134 = insertelement <8 x float> poison, float %i.h, i64 0
  %broadcast.splat135 = shufflevector <8 x float> %broadcast.splatinsert134, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %ident.check.not = icmp eq i32 %5, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %8, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert106 = insertelement <8 x float> poison, float %10, i64 0
  %broadcast.splat107 = shufflevector <8 x float> %broadcast.splatinsert106, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert108 = insertelement <8 x float> poison, float %9, i64 0
  %broadcast.splat109 = shufflevector <8 x float> %broadcast.splatinsert108, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvar91 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvar.next92, %._crit_edge.us ] ; 4 uses
  %indvars.iv60 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next61, %._crit_edge.us ] ; 5 uses
  %i.x = mul i64 %i.p, %indvar91                  ; 3 uses
  %11 = add i64 %i.x, 4                           ; 2 uses
  %i.y = trunc i64 %indvar91 to i32
  %i.z = add i32 %i.y, 1
  %i.aa = mul i32 %i.z, %i.g
  %i.ab = sext i32 %i.aa to i64
  %smin.a = tail call i64 @llvm.smin.i64(i64 %i.r, i64 %i.ab)
  %i.ac = mul i64 %indvar91, %i.m
  %i.ad = xor i64 %i.ac, -1
  %i.ae = add i64 %smin.a, %i.ad                  ; 2 uses
  %i.af = mul i64 %i.s, %i.ae
  %indvars.iv.next61 = add i64 %indvars.iv60, %i.m ; 3 uses
  %i.ag = trunc nsw i64 %indvars.iv.next61 to i32
  %i.ah = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %4) ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = icmp slt i64 %indvars.iv60, %i.ai
  %i.ak = trunc nsw i64 %indvars.iv60 to i32
  %i.al = getelementptr i8, ptr %0, i64 %i.x
  %i.am = getelementptr i8, ptr %i.al, i64 12
  %i.an = getelementptr i8, ptr %2, i64 %11
  %i.ao = getelementptr i8, ptr %2, i64 %11
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.af
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %_guided_filter_tiling.exit.us
  %indvar = phi i64 [ 0, %.preheader.us ], [ %indvar.next, %_guided_filter_tiling.exit.us ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_guided_filter_tiling.exit.us ] ; 7 uses
  %i.aq = mul i64 %i.q, %indvar                   ; 4 uses
  %scevgep = getelementptr i8, ptr %i.am, i64 %i.aq
  %i.ar = trunc i64 %indvar to i32
  %i.as = add i32 %i.ar, 1
  %i.at = mul i32 %i.as, %i.g
  %i.au = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.at)
  %smin93 = sext i32 %i.au to i64
  %i.av = mul i64 %indvar, %i.m
  %i.aw = xor i64 %i.av, -1
  %i.ax = add i64 %smin93, %i.aw                  ; 2 uses
  %i.ay = shl i64 %i.ax, 2                        ; 3 uses
  %scevgep94 = getelementptr i8, ptr %scevgep, i64 %i.ay
  %i.az = add i64 %i.x, %i.aq                     ; 2 uses
  %scevgep96 = getelementptr i8, ptr %0, i64 %i.az
  %scevgep97 = getelementptr i8, ptr %i.an, i64 %i.aq
  %scevgep95 = getelementptr i8, ptr %scevgep97, i64 %i.ay
  %i.ba = shl i64 %i.ax, 4
  %scevgep100.a = getelementptr i8, ptr %i.ap, i64 %i.aq
  %scevgep101 = getelementptr i8, ptr %scevgep100.a, i64 %i.ay
  %scevgep102.a = getelementptr i8, ptr %2, i64 %i.az ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.m ; 3 uses
  %i.bb = trunc nsw i64 %indvars.iv.next to i32
  %i.bc = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 %3) ; 2 uses
  %i.bd = tail call i64 @dt_round_size(i64 noundef %i.b, i64 noundef 16) #7
  %i.be = trunc i64 %i.bd to i32                  ; 5 uses
  %i.bf = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.bg = sub nsw i32 %i.bf, %i.be
  %i.bh = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 0) ; 4 uses
  %i.bi = add nsw i32 %i.bc, %i.be                ; 2 uses
  %i.bj = tail call i32 @llvm.smin.i32(i32 %i.bi, i32 %3) ; 3 uses
  %i.bk = sub nsw i32 %i.ak, %i.be
  %i.bl = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 0) ; 7 uses
  %i.bm = add nsw i32 %i.ah, %i.be
  %i.bn = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %4) ; 4 uses
  %i.bo = sub nsw i32 %i.bj, %i.bh                ; 3 uses
  %i.bp = sub nsw i32 %i.bn, %i.bl
  %i.bq = sext i32 %i.bo to i64                   ; 13 uses
  %i.br = sext i32 %i.bp to i64                   ; 6 uses
  %i.bs = mul nsw i64 %i.bq, %i.br                ; 6 uses
  %i.bt = shl nsw i64 %i.bq, 2
  %i.bu = mul i64 %i.bt, %i.br                    ; 2 uses
  %i.bv = shl i64 %i.bu, 2
  %i.bw = tail call ptr @dt_alloc_aligned(i64 noundef %i.bv) #7, !noalias !33 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bw, i64 64) ]
  %i.bx = mul i64 %i.bu, 9
  %i.by = tail call ptr @dt_alloc_aligned(i64 noundef %i.bx) #7, !noalias !34 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.by, i64 64) ]
  %i.bz = tail call i64 @dt_round_size(i64 noundef %i.bq, i64 noundef 16) #7
  %i.ca = mul i64 %i.bz, 36
  %i.cb = add i64 %i.ca, 60
  %i.cc = and i64 %i.cb, -64
  %i.cd = tail call ptr @dt_alloc_aligned(i64 noundef %i.cc) #7 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cd, i64 64) ]
  %i.ce = icmp slt i32 %i.bl, %i.bn
  br i1 %i.ce, label %.lr.ph324.i.us, label %._crit_edge325.i.us

.lr.ph324.i.us:                                   ; preds = %bb.d
  %i.cf = shl i32 %i.bo, 2                        ; 2 uses
  %i.cg = mul i32 %i.bo, 9                        ; 2 uses
  %i.ch = icmp slt i32 %i.bh, %i.bj
  br i1 %i.ch, label %.lr.ph.us.preheader.i.us, label %.lr.ph324.split.preheader.i.us

.lr.ph324.split.preheader.i.us:                   ; preds = %.lr.ph324.i.us
  %i.ci = zext nneg i32 %i.bl to i64
  %wide.trip.count.i.us = zext nneg i32 %i.bn to i64
  br label %.lr.ph324.split.i.us

.lr.ph324.split.i.us:                             ; preds = %.lr.ph324.split.i.us, %.lr.ph324.split.preheader.i.us
  %indvars.iv.i.us = phi i64 [ %i.ci, %.lr.ph324.split.preheader.i.us ], [ %indvars.iv.next.i.us, %.lr.ph324.split.i.us ] ; 2 uses
  %i.cj = trunc i64 %indvars.iv.i.us to i32
  %i.ck = sub i32 %i.cj, %i.bl                    ; 2 uses
  %i.cl = mul i32 %i.ck, %i.cf
  %i.cm = sext i32 %i.cl to i64
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.cm
  %i.co = mul i32 %i.ck, %i.cg
  %i.cp = sext i32 %i.co to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.cp
  tail call void @dt_box_mean_horizontal(ptr noundef %i.cn, i64 noundef %i.bq, i32 noundef 16777220, i64 noundef %.pre.i, ptr noundef %i.cd) #7
  tail call void @dt_box_mean_horizontal(ptr noundef %i.cq, i64 noundef %i.bq, i32 noundef 16777225, i64 noundef %.pre.i, ptr noundef %i.cd) #7
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %._crit_edge325.i.us, label %.lr.ph324.split.i.us

.lr.ph.us.preheader.i.us:                         ; preds = %.lr.ph324.i.us
  %i.cr = zext nneg i32 %i.bh to i64              ; 11 uses
  %i.cs = zext nneg i32 %i.bl to i64              ; 4 uses
  %wide.trip.count348.i.us = zext i32 %i.bn to i64 ; 2 uses
  %wide.trip.count343.i.us = zext nneg i32 %i.bj to i64 ; 5 uses
  %i.ct = xor i64 %i.cs, -1
  %i.cu = add nsw i64 %i.ct, %wide.trip.count348.i.us
  %i.cv = mul i64 %i.t, %i.cu
  %i.cw = mul nuw nsw i64 %i.k, %i.cs             ; 2 uses
  %i.cx = add nuw nsw i64 %i.cw, %wide.trip.count343.i.us
  %i.cy = shl i64 %i.cx, 2
  %i.cz = add i64 %i.cv, %i.cy                    ; 2 uses
  %scevgep199 = getelementptr i8, ptr %1, i64 %i.cz ; 2 uses
  %i.da = mul nuw i64 %i.u, %i.cs
  %i.db = shl nuw nsw i64 %i.cr, 2
  %i.dc = getelementptr i8, ptr %1, i64 %i.da
  %scevgep200 = getelementptr i8, ptr %i.dc, i64 %i.db ; 2 uses
  %scevgep202 = getelementptr i8, ptr %scevgep201, i64 %i.cz ; 2 uses
  %i.dd = add nuw nsw i64 %i.cw, %i.cr
  %i.de = shl i64 %i.dd, 2
  %scevgep203 = getelementptr i8, ptr %0, i64 %i.de ; 2 uses
  %i.df = mul nuw nsw i64 %wide.trip.count343.i.us, 36
  %.neg = mul nsw i64 %i.cr, -36
  %i.dg = getelementptr i8, ptr %i.by, i64 %.neg
  %scevgep204 = getelementptr i8, ptr %i.dg, i64 %i.df
  %i.dh = sub nsw i64 %wide.trip.count343.i.us, %i.cr
  %i.di = shl nsw i64 %i.dh, 4
  %scevgep205 = getelementptr i8, ptr %i.bw, i64 %i.di
  %i.dj = sub nsw i64 %wide.trip.count343.i.us, %i.cr ; 3 uses
  %min.iters.check207 = icmp ugt i64 %i.dj, 7
  %or.cond = and i1 %min.iters.check207, %ident.check167.not
  %n.vec229 = and i64 %i.dj, -8                   ; 3 uses
  %i.dk = add nsw i64 %n.vec229, %i.cr
  %broadcast.splatinsert230 = insertelement <8 x i64> poison, i64 %i.cr, i64 0
  %broadcast.splat231 = shufflevector <8 x i64> %broadcast.splatinsert230, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <8 x i64> %broadcast.splat231, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n254 = icmp eq i64 %i.dj, %n.vec229
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %._crit_edge.us.i.us, %.lr.ph.us.preheader.i.us
  %indvars.iv345.i.us = phi i64 [ %i.cs, %.lr.ph.us.preheader.i.us ], [ %indvars.iv.next346.i.us, %._crit_edge.us.i.us ] ; 3 uses
  %i.dl = trunc i64 %indvars.iv345.i.us to i32
  %i.dm = sub i32 %i.dl, %i.bl                    ; 2 uses
  %i.dn = mul i32 %i.dm, %i.cf
  %i.do = sext i32 %i.dn to i64                   ; 2 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.do ; 6 uses
  %i.dq = mul i32 %i.dm, %i.cg
  %i.dr = sext i32 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dr ; 6 uses
  %i.dt = mul nuw nsw i64 %indvars.iv345.i.us, %i.k ; 3 uses
  %i.du = getelementptr [4 x i8], ptr %1, i64 %i.dt ; 2 uses
  br i1 %or.cond, label %vector.memcheck208, label %scalar.ph206.preheader

vector.memcheck208:                               ; preds = %.lr.ph.us.i.us
  %i.dv = shl nsw i64 %i.do, 2
  %i.dw = getelementptr i8, ptr %scevgep205, i64 %i.dv ; 3 uses
  %i.dx = shl nsw i64 %i.dr, 2
  %i.dy = getelementptr i8, ptr %scevgep204, i64 %i.dx ; 3 uses
  %bound0209 = icmp ult ptr %i.dp, %i.dy
  %bound1210 = icmp ult ptr %i.ds, %i.dw
  %found.conflict211 = and i1 %bound0209, %bound1210
  %bound0212 = icmp ult ptr %i.dp, %scevgep202
  %bound1213 = icmp ult ptr %scevgep203, %i.dw
  %found.conflict214 = and i1 %bound0212, %bound1213
  %conflict.rdx215 = or i1 %found.conflict211, %found.conflict214
  %bound0216 = icmp ult ptr %i.dp, %scevgep199
  %bound1217 = icmp ult ptr %scevgep200, %i.dw
  %found.conflict218 = and i1 %bound0216, %bound1217
  %conflict.rdx219 = or i1 %conflict.rdx215, %found.conflict218
  %bound0220 = icmp ult ptr %i.ds, %scevgep202
  %bound1221 = icmp ult ptr %scevgep203, %i.dy
  %found.conflict222 = and i1 %bound0220, %bound1221
  %conflict.rdx223 = or i1 %conflict.rdx219, %found.conflict222
  %bound0224 = icmp ult ptr %i.ds, %scevgep199
  %bound1225 = icmp ult ptr %scevgep200, %i.dy
  %found.conflict226 = and i1 %bound0224, %bound1225
  %conflict.rdx227 = or i1 %conflict.rdx223, %found.conflict226
  br i1 %conflict.rdx227, label %scalar.ph206.preheader, label %vector.ph228

vector.ph228:                                     ; preds = %vector.memcheck208
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.dt
  br label %vector.body234

vector.body234:                                   ; preds = %vector.body234, %vector.ph228
  %index235 = phi i64 [ 0, %vector.ph228 ], [ %index.next251, %vector.body234 ] ; 2 uses
  %vec.ind236 = phi <8 x i64> [ %induction, %vector.ph228 ], [ %vec.ind.next252, %vector.body234 ] ; 2 uses
  %i.dz = add nuw i64 %index235, %i.cr            ; 2 uses
  %i.ea = sub nuw nsw <8 x i64> %vec.ind236, %broadcast.splat231 ; 2 uses
  %i.eb = extractelement <8 x i64> %i.ea, i64 0
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.dz ; 3 uses
  %wide.load237 = load <8 x float>, ptr %gep, align 4, !tbaa !36, !alias.scope !37
  %i.ec = fmul reassoc nsz arcp contract afn <8 x float> %wide.load237, %broadcast.splat233 ; 6 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load238 = load <8 x float>, ptr %i.ed, align 4, !tbaa !36, !alias.scope !37
  %i.ee = fmul reassoc nsz arcp contract afn <8 x float> %wide.load238, %broadcast.splat233 ; 6 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load239 = load <8 x float>, ptr %i.ef, align 4, !tbaa !36, !alias.scope !37
  %i.eg = fmul reassoc nsz arcp contract afn <8 x float> %wide.load239, %broadcast.splat233 ; 6 uses
  %i.eh = getelementptr [4 x i8], ptr %i.du, i64 %i.dz
  %wide.load240 = load <8 x float>, ptr %i.eh, align 4, !tbaa !36, !alias.scope !38 ; 4 uses
  %i.ei = shl nuw nsw i64 %i.eb, 4
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.ei
  %i.ek = shufflevector <8 x float> %wide.load240, <8 x float> %i.ec, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.el = shufflevector <8 x float> %i.ee, <8 x float> %i.eg, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec241 = shufflevector <16 x float> %i.ek, <16 x float> %i.el, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec241, ptr %i.ej, align 16, !tbaa !36, !alias.scope !39, !noalias !40
  %i.em = fmul reassoc nsz arcp contract afn <8 x float> %wide.load240, %i.ec
  %i.en = mul nuw nsw <8 x i64> %i.ea, splat (i64 36)
  %wide.gep242 = getelementptr inbounds nuw i8, ptr %i.ds, <8 x i64> %i.en ; 9 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.em, <8 x ptr> align 4 %wide.gep242, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.eo = fmul reassoc nsz arcp contract afn <8 x float> %wide.load240, %i.ee
  %wide.gep243 = getelementptr i8, <8 x ptr> %wide.gep242, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eo, <8 x ptr> align 4 %wide.gep243, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %i.eg, %wide.load240
  %wide.gep244 = getelementptr i8, <8 x ptr> %wide.gep242, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ep, <8 x ptr> align 4 %wide.gep244, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.eq = fmul reassoc nsz arcp contract afn <8 x float> %i.ec, %i.ec
  %wide.gep245 = getelementptr i8, <8 x ptr> %wide.gep242, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eq, <8 x ptr> align 4 %wide.gep245, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.er = fmul reassoc nsz arcp contract afn <8 x float> %i.ee, %i.ec
  %wide.gep246 = getelementptr i8, <8 x ptr> %wide.gep242, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.er, <8 x ptr> align 4 %wide.gep246, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.es = fmul reassoc nsz arcp contract afn <8 x float> %i.eg, %i.ec
  %wide.gep247 = getelementptr i8, <8 x ptr> %wide.gep242, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.es, <8 x ptr> align 4 %wide.gep247, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.et = fmul reassoc nsz arcp contract afn <8 x float> %i.ee, %i.ee
  %wide.gep248 = getelementptr i8, <8 x ptr> %wide.gep242, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.et, <8 x ptr> align 4 %wide.gep248, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %i.eg, %i.ee
  %wide.gep249 = getelementptr i8, <8 x ptr> %wide.gep242, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eu, <8 x ptr> align 4 %wide.gep249, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ev = fmul reassoc nsz arcp contract afn <8 x float> %i.eg, %i.eg
  %wide.gep250 = getelementptr i8, <8 x ptr> %wide.gep242, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ev, <8 x ptr> align 4 %wide.gep250, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %index.next251 = add nuw i64 %index235, 8       ; 2 uses
  %vec.ind.next252 = add nuw nsw <8 x i64> %vec.ind236, splat (i64 8)
end_hunk_0
begin_hunk_1_@guided_filter:bb.a
  %i.it = fadd reassoc nsz arcp contract afn <8 x float> %i.io, %i.is
  %i.iu = fsub reassoc nsz arcp contract afn <8 x float> %i.ig, %i.if
  %i.iv = fmul reassoc nsz arcp contract afn <8 x float> %i.iu, %i.gs
  %i.iw = fmul reassoc nsz arcp contract afn <8 x float> %i.hw, %i.hq
  %i.ix = fadd reassoc nsz arcp contract afn <8 x float> %i.iv, %i.iw
  %i.iy = fmul reassoc nsz arcp contract afn <8 x float> %i.gu, %i.ir
  %i.iz = fsub reassoc nsz arcp contract afn <8 x float> %i.ix, %i.iy
  %i.ja = fdiv reassoc nsz arcp contract afn <8 x float> %i.il, %i.hs ; 2 uses
  %i.jb = fdiv reassoc nsz arcp contract afn <8 x float> %i.it, %i.hs ; 2 uses
  %i.jc = fdiv reassoc nsz arcp contract afn <8 x float> %i.iz, %i.hs ; 2 uses
  %i.jd = fmul reassoc nsz arcp contract afn <8 x float> %i.jb, %strided.vec141
  %i.je = fmul reassoc nsz arcp contract afn <8 x float> %i.jc, %strided.vec142
  %i.jf = fmul reassoc nsz arcp contract afn <8 x float> %i.ja, %strided.vec140
  %i.jg = fadd reassoc nsz arcp contract afn <8 x float> %i.jd, %i.je
  %i.jh = fadd reassoc nsz arcp contract afn <8 x float> %i.jg, %i.jf
  %i.ji = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec139, %i.jh
  %predphi = select nsz <8 x i1> %i.hu, <8 x float> %i.ja, <8 x float> zeroinitializer
  %predphi159 = select nsz <8 x i1> %i.hu, <8 x float> %i.jb, <8 x float> zeroinitializer
  %predphi160 = select nsz <8 x i1> %i.hu, <8 x float> %i.jc, <8 x float> zeroinitializer
  %predphi161 = select nsz <8 x i1> %i.hu, <8 x float> %i.ji, <8 x float> %strided.vec139
  %i.jj = shufflevector <8 x float> %predphi, <8 x float> %predphi159, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jk = shufflevector <8 x float> %predphi160, <8 x float> %predphi161, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.jj, <16 x float> %i.jk, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.go, align 64, !tbaa !36, !alias.scope !45, !noalias !46
  %index.next162 = add nuw i64 %index137, 8       ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.jl = icmp eq i64 %index.next162, %n.vec133
  br i1 %i.jl, label %middle.block163, label %vector.body136, !llvm.loop !25

middle.block163:                                  ; preds = %vector.body136
  %cmp.n164 = icmp eq i64 %i.bs, %n.vec133
  br i1 %cmp.n164, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader257

.lr.ph.i.us.preheader257:                         ; preds = %vector.memcheck128, %vector.scevcheck117, %.lr.ph.i.us.preheader, %middle.block163
  %.0273326.i.us.ph = phi i64 [ 0, %vector.memcheck128 ], [ 0, %vector.scevcheck117 ], [ 0, %.lr.ph.i.us.preheader ], [ %n.vec133, %middle.block163 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader257, %bb.f
  %.0273326.i.us = phi i64 [ %i.ng, %bb.f ], [ %.0273326.i.us.ph, %.lr.ph.i.us.preheader257 ] ; 3 uses
  %.idx308.i.us = shl i64 %.0273326.i.us, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx308.i.us ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 12 ; 2 uses
  %.idx309.i.us = mul i64 %.0273326.i.us, 36
  %i.jq = getelementptr inbounds nuw i8, ptr %i.by, i64 %.idx309.i.us ; 9 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  %i.js = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 20
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 28
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.jx = load float, ptr %i.jm, align 16, !tbaa !36 ; 5 uses
  %i.jy = load float, ptr %i.jn, align 4, !tbaa !36 ; 6 uses
  %i.jz = load float, ptr %i.jo, align 8, !tbaa !36 ; 6 uses
  %i.ka = load float, ptr %i.jp, align 4, !tbaa !36 ; 6 uses
  %i.kb = load float, ptr %i.jr, align 4, !tbaa !36
  %i.kc = fmul reassoc nsz arcp contract afn float %i.jy, %i.jy
  %i.kd = fsub reassoc nsz arcp contract afn float %i.kb, %i.kc
  %i.ke = fadd reassoc nsz arcp contract afn float %i.kd, %i.h ; 3 uses
  %i.kf = load float, ptr %i.js, align 4, !tbaa !36
  %i.kg = fmul reassoc nsz arcp contract afn float %i.jz, %i.jy
  %i.kh = fsub reassoc nsz arcp contract afn float %i.kf, %i.kg ; 6 uses
  %i.ki = load float, ptr %i.jt, align 4, !tbaa !36
  %i.kj = fmul reassoc nsz arcp contract afn float %i.ka, %i.jy
  %i.kk = fsub reassoc nsz arcp contract afn float %i.ki, %i.kj ; 6 uses
  %i.kl = load float, ptr %i.ju, align 4, !tbaa !36
  %i.km = fmul reassoc nsz arcp contract afn float %i.jz, %i.jz
  %i.kn = fsub reassoc nsz arcp contract afn float %i.kl, %i.km
  %i.ko = fadd reassoc nsz arcp contract afn float %i.kn, %i.h ; 3 uses
  %i.kp = load float, ptr %i.jv, align 4, !tbaa !36
  %i.kq = fmul reassoc nsz arcp contract afn float %i.ka, %i.jz
  %i.kr = fsub reassoc nsz arcp contract afn float %i.kp, %i.kq ; 6 uses
  %i.ks = load float, ptr %i.jw, align 4, !tbaa !36
  %i.kt = fmul reassoc nsz arcp contract afn float %i.ka, %i.ka
  %i.ku = fsub reassoc nsz arcp contract afn float %i.ks, %i.kt
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ku, %i.h ; 3 uses
  %i.kw = fmul reassoc nsz arcp contract afn float %i.kv, %i.ko
  %i.kx = fmul reassoc nsz arcp contract afn float %i.kr, %i.kr
  %i.ky = fsub reassoc nsz arcp contract afn float %i.kw, %i.kx ; 2 uses
  %i.kz = fmul reassoc nsz arcp contract afn float %i.ky, %i.ke
  %i.la = fmul reassoc nsz arcp contract afn float %i.kv, %i.kh
  %i.lb = fmul reassoc nsz arcp contract afn float %i.kr, %i.kk
  %i.lc = fsub reassoc nsz arcp contract afn float %i.la, %i.lb ; 2 uses
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lc, %i.kh
  %i.le = fsub reassoc nsz arcp contract afn float %i.kz, %i.ld
  %i.lf = fmul reassoc nsz arcp contract afn float %i.kr, %i.kh
  %i.lg = fmul reassoc nsz arcp contract afn float %i.ko, %i.kk
  %i.lh = fsub reassoc nsz arcp contract afn float %i.lf, %i.lg ; 2 uses
  %i.li = fmul reassoc nsz arcp contract afn float %i.lh, %i.kk
  %i.lj = fadd reassoc nsz arcp contract afn float %i.le, %i.li ; 3 uses
  %i.lk = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.lj)
  %i.ll = fcmp reassoc nsz arcp contract afn ogt float %i.lk, f0x35000000
  br i1 %i.ll, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.us
  %i.lm = load float, ptr %i.jq, align 4, !tbaa !36
  %i.ln = fmul reassoc nsz arcp contract afn float %i.jy, %i.jx
  %i.lo = fsub reassoc nsz arcp contract afn float %i.lm, %i.ln ; 3 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.jq, i64 4
  %i.lq = fmul reassoc nsz arcp contract afn float %i.jz, %i.jx
  %i.lr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.ls = fmul reassoc nsz arcp contract afn float %i.ka, %i.jx
  %i.lt = fmul reassoc nsz arcp contract afn float %i.lo, %i.lh
  %i.lu = load float, ptr %i.lp, align 4, !tbaa !36
  %i.lv = fsub reassoc nsz arcp contract afn float %i.lu, %i.lq ; 3 uses
  %i.lw = load float, ptr %i.lr, align 4, !tbaa !36
  %i.lx = fsub reassoc nsz arcp contract afn float %i.lw, %i.ls ; 3 uses
  %i.ly = fmul reassoc nsz arcp contract afn float %i.lo, %i.ky
  %i.lz = fmul reassoc nsz arcp contract afn float %i.lv, %i.kv
  %i.ma = fmul reassoc nsz arcp contract afn float %i.lx, %i.kr
  %i.mb = fsub reassoc nsz arcp contract afn float %i.lz, %i.ma ; 2 uses
  %i.mc = fmul reassoc nsz arcp contract afn float %i.lv, %i.kr ; 2 uses
  %i.md = fmul reassoc nsz arcp contract afn float %i.lx, %i.ko ; 2 uses
  %i.me = fsub reassoc nsz arcp contract afn float %i.mc, %i.md
  %i.mf = fmul reassoc nsz arcp contract afn float %i.me, %i.kk
  %i.mg = fadd reassoc nsz arcp contract afn float %i.mf, %i.ly
  %i.mh = fmul reassoc nsz arcp contract afn float %i.kh, %i.mb
  %i.mi = fsub reassoc nsz arcp contract afn float %i.mg, %i.mh
  %i.mj = fmul reassoc nsz arcp contract afn float %i.mb, %i.ke
  %i.mk = fmul reassoc nsz arcp contract afn float %i.lc, %i.lo
  %i.ml = fsub reassoc nsz arcp contract afn float %i.mj, %i.mk
  %i.mm = fmul reassoc nsz arcp contract afn float %i.lx, %i.kh
  %i.mn = fmul reassoc nsz arcp contract afn float %i.lv, %i.kk
  %i.mo = fsub reassoc nsz arcp contract afn float %i.mm, %i.mn ; 2 uses
  %i.mp = fmul reassoc nsz arcp contract afn float %i.mo, %i.kk
  %i.mq = fadd reassoc nsz arcp contract afn float %i.ml, %i.mp
  %i.mr = fsub reassoc nsz arcp contract afn float %i.md, %i.mc
  %i.ms = fmul reassoc nsz arcp contract afn float %i.mr, %i.ke
  %i.mt = fadd reassoc nsz arcp contract afn float %i.ms, %i.lt
  %i.mu = fmul reassoc nsz arcp contract afn float %i.kh, %i.mo
  %i.mv = fsub reassoc nsz arcp contract afn float %i.mt, %i.mu
  %i.mw = insertelement <2 x float> poison, float %i.mi, i64 0
  %i.mx = insertelement <2 x float> %i.mw, float %i.mq, i64 1
  %i.my = insertelement <2 x float> poison, float %i.lj, i64 0
  %i.mz = shufflevector <2 x float> %i.my, <2 x float> poison, <2 x i32> zeroinitializer
  %i.na = fdiv reassoc nsz arcp contract afn <2 x float> %i.mx, %i.mz ; 3 uses
  %i.nb = fdiv reassoc nsz arcp contract afn float %i.mv, %i.lj ; 2 uses
  %i.nc = extractelement <2 x float> %i.na, i64 1
  %.neg317.i.neg.us = fmul reassoc nsz arcp contract afn float %i.nc, %i.jz
  %.neg315.i.neg.us = fmul reassoc nsz arcp contract afn float %i.nb, %i.ka
  %i.nd = extractelement <2 x float> %i.na, i64 0
  %.neg316.i.neg.us = fmul reassoc nsz arcp contract afn float %i.nd, %i.jy
  %reass.add.us = fadd reassoc nsz arcp contract afn float %.neg317.i.neg.us, %.neg315.i.neg.us
  %reass.add52.us = fadd reassoc nsz arcp contract afn float %reass.add.us, %.neg316.i.neg.us
  %i.ne = fsub reassoc nsz arcp contract afn float %i.jx, %reass.add52.us
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.us
  %.0270.i.us = phi nsz float [ %i.nb, %bb.e ], [ 0.000000e+00, %.lr.ph.i.us ]
  %.0269.i.us = phi nsz float [ %i.ne, %bb.e ], [ %i.jx, %.lr.ph.i.us ]
  %i.nf = phi <2 x float> [ %i.na, %bb.e ], [ zeroinitializer, %.lr.ph.i.us ]
  store <2 x float> %i.nf, ptr %i.jm, align 16, !tbaa !36
  store float %.0270.i.us, ptr %i.jo, align 8, !tbaa !36
  store float %.0269.i.us, ptr %i.jp, align 4, !tbaa !36
  %i.ng = add nuw i64 %.0273326.i.us, 1           ; 2 uses
  %exitcond350.not.i.us = icmp eq i64 %i.ng, %i.bs
  br i1 %exitcond350.not.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us, !llvm.loop !26

._crit_edge.i.us:                                 ; preds = %bb.f, %middle.block163, %._crit_edge325.i.us
  tail call void @free(ptr noundef %i.by) #7
  tail call void @dt_box_mean(ptr noundef %i.bw, i64 noundef %i.br, i64 noundef %i.bq, i32 noundef 16777220, i64 noundef %.pre.i, i32 noundef 1) #7
  br i1 %i.aj, label %.lr.ph335.i.us, label %_guided_filter_tiling.exit.us

.lr.ph335.i.us:                                   ; preds = %._crit_edge.i.us
  %i.nh = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %i.be)
  %i.ni = sext i32 %i.nh to i64                   ; 2 uses
  %i.nj = sext i32 %i.bc to i64                   ; 3 uses
  %i.nk = icmp slt i64 %indvars.iv, %i.nj
  br i1 %i.nk, label %.lr.ph331.preheader.i.us, label %_guided_filter_tiling.exit.us

.lr.ph331.preheader.i.us:                         ; preds = %.lr.ph335.i.us
  %i.nl = zext nneg i32 %i.bl to i64              ; 2 uses
  %i.nm = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.bi)
  %smin96 = sext i32 %i.nm to i64
  %i.nn = zext nneg i32 %i.bh to i64
  %i.no = sub nsw i64 %smin96, %i.nn              ; 2 uses
  %i.np = shl nsw i64 %i.no, 4
  %scevgep97.a = getelementptr i8, ptr %i.bw, i64 16
  %i.nq = sub i64 %indvars.iv60, %i.nl
  %i.nr = shl i64 %i.nq, 4
  %i.ns = mul i64 %i.nr, %i.bq                    ; 2 uses
  %i.nt = mul i64 %i.ae, %i.np
  %i.nu = shl nsw i64 %i.ni, 4                    ; 2 uses
  %i.nv = getelementptr i8, ptr %scevgep97.a, i64 %i.ns
  %i.nw = getelementptr i8, ptr %i.nv, i64 %i.nt
  %i.nx = getelementptr i8, ptr %i.nw, i64 %i.nu
  %scevgep98 = getelementptr i8, ptr %i.nx, i64 %i.ba
  %i.ny = getelementptr i8, ptr %i.bw, i64 %i.ns
  %scevgep99 = getelementptr i8, ptr %i.ny, i64 %i.nu
  %i.nz = mul i64 %indvar, %i.m
  %i.oa = sub i64 %i.nj, %i.nz                    ; 3 uses
  %min.iters.check = icmp ugt i64 %i.oa, 7
  %or.cond256 = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %scevgep102.a, %scevgep98
  %bound1 = icmp ult ptr %scevgep99, %scevgep101
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.no, 0
  %i.ob = or i1 %found.conflict, %stride.check
  %bound0103 = icmp ult ptr %scevgep102.a, %scevgep94
  %bound1104 = icmp ult ptr %scevgep96, %scevgep95
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx = or i1 %i.ob, %found.conflict105
  %n.vec = and i64 %i.oa, -8                      ; 5 uses
  %i.oc = add i64 %indvars.iv, %n.vec
  %cmp.n = icmp eq i64 %i.oa, %n.vec
  br label %.lr.ph331.i.us

.lr.ph331.i.us:                                   ; preds = %._crit_edge332.i.us, %.lr.ph331.preheader.i.us
  %indvars.iv356.i.us = phi i64 [ %indvars.iv60, %.lr.ph331.preheader.i.us ], [ %indvars.iv.next357.i.us, %._crit_edge332.i.us ] ; 3 uses
  %i.od = mul nsw i64 %indvars.iv356.i.us, %i.k   ; 2 uses
  %i.oe = add nsw i64 %i.od, %indvars.iv          ; 3 uses
  %i.of = sub nsw i64 %indvars.iv356.i.us, %i.nl
  %i.og = mul nsw i64 %i.of, %i.bq
  %i.oh = add nsw i64 %i.og, %i.ni                ; 3 uses
  %i.oi = getelementptr [4 x i8], ptr %2, i64 %i.od ; 2 uses
  %or.cond256.not = xor i1 %or.cond256, true
  %brmerge = select i1 %or.cond256.not, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph331.i.us
  %i.oj = add i64 %i.oh, %n.vec
  %i.ok = add i64 %i.oe, %n.vec
  %i.ol = getelementptr [4 x i8], ptr %0, i64 %i.oe
  %i.om = getelementptr [4 x i8], ptr %i.oi, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.on = add i64 %i.oh, %index
  %i.oo = getelementptr [4 x i8], ptr %i.ol, i64 %index ; 3 uses
  %i.op = shl i64 %i.on, 4
  %i.oq = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.op
  %wide.vec = load <32 x float>, ptr %i.oq, align 16, !tbaa !36, !alias.scope !47 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec110 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec111 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec112 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.load = load <8 x float>, ptr %i.oo, align 4, !tbaa !36, !alias.scope !48
  %i.or = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %strided.vec
  %i.os = getelementptr inbounds nuw i8, ptr %i.oo, i64 4
  %wide.load113 = load <8 x float>, ptr %i.os, align 4, !tbaa !36, !alias.scope !48
  %i.ot = fmul reassoc nsz arcp contract afn <8 x float> %wide.load113, %strided.vec110
  %i.ou = fadd reassoc nsz arcp contract afn <8 x float> %i.ot, %i.or
  %i.ov = getelementptr inbounds nuw i8, ptr %i.oo, i64 8
  %wide.load114 = load <8 x float>, ptr %i.ov, align 4, !tbaa !36, !alias.scope !48
  %i.ow = fmul reassoc nsz arcp contract afn <8 x float> %wide.load114, %strided.vec111
  %i.ox = fadd reassoc nsz arcp contract afn <8 x float> %i.ou, %i.ow
  %i.oy = fmul reassoc nsz arcp contract afn <8 x float> %i.ox, %broadcast.splat
  %i.oz = fadd reassoc nsz arcp contract afn <8 x float> %i.oy, %strided.vec112 ; 3 uses
  %i.pa = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.oz, %broadcast.splat107
  %i.pb = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.oz, %broadcast.splat109
  %i.pc = select reassoc nsz arcp contract afn <8 x i1> %i.pb, <8 x float> %broadcast.splat109, <8 x float> %i.oz
  %i.pd = select reassoc nsz arcp contract afn <8 x i1> %i.pa, <8 x float> %broadcast.splat107, <8 x float> %i.pc
  %i.pe = getelementptr [4 x i8], ptr %i.om, i64 %index
  store <8 x float> %i.pd, ptr %i.pe, align 4, !tbaa !36, !alias.scope !49, !noalias !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pf = icmp eq i64 %index.next, %n.vec
  br i1 %i.pf, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge332.i.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph331.i.us, %middle.block
  %indvars.iv351.i.us.ph = phi i64 [ %i.oc, %middle.block ], [ %indvars.iv, %.lr.ph331.i.us ]
  %.0266328.i.us.ph = phi i64 [ %i.oj, %middle.block ], [ %i.oh, %.lr.ph331.i.us ]
  %.0267327.i.us.ph = phi i64 [ %i.ok, %middle.block ], [ %i.oe, %.lr.ph331.i.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv351.i.us = phi i64 [ %indvars.iv.next352.i.us, %scalar.ph ], [ %indvars.iv351.i.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.0266328.i.us = phi i64 [ %i.qh, %scalar.ph ], [ %.0266328.i.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.0267327.i.us = phi i64 [ %i.qi, %scalar.ph ], [ %.0267327.i.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.pg = mul i64 %.0267327.i.us, %i.l
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pg ; 3 uses
  %.idx.i.us = shl i64 %.0266328.i.us, 4
  %i.pi = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx.i.us ; 4 uses
  %i.pj = load float, ptr %i.pi, align 16, !tbaa !36
  %i.pk = load float, ptr %i.ph, align 4, !tbaa !36
  %i.pl = fmul reassoc nsz arcp contract afn float %i.pk, %i.pj
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pi, i64 4
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !36
  %i.po = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.pp = load float, ptr %i.po, align 4, !tbaa !36
  %i.pq = fmul reassoc nsz arcp contract afn float %i.pp, %i.pn
  %i.pr = fadd reassoc nsz arcp contract afn float %i.pq, %i.pl
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pi, i64 8
  %i.pt = load float, ptr %i.ps, align 8, !tbaa !36
  %i.pu = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !36
  %i.pw = fmul reassoc nsz arcp contract afn float %i.pv, %i.pt
  %i.px = fadd reassoc nsz arcp contract afn float %i.pr, %i.pw
  %i.py = fmul reassoc nsz arcp contract afn float %i.px, %8
  %i.pz = getelementptr inbounds nuw i8, ptr %i.pi, i64 12
  %i.qa = load float, ptr %i.pz, align 4, !tbaa !36
  %i.qb = fadd reassoc nsz arcp contract afn float %i.py, %i.qa ; 3 uses
  %i.qc = fcmp reassoc nsz arcp contract afn ogt float %i.qb, %10
  %i.qd = fcmp reassoc nsz arcp contract afn olt float %i.qb, %9
  %i.qe = select reassoc nsz arcp contract afn i1 %i.qd, float %9, float %i.qb
  %i.qf = select reassoc nsz arcp contract afn i1 %i.qc, float %10, float %i.qe
  %i.qg = getelementptr [4 x i8], ptr %i.oi, i64 %indvars.iv351.i.us
  store float %i.qf, ptr %i.qg, align 4, !tbaa !36
  %indvars.iv.next352.i.us = add nsw i64 %indvars.iv351.i.us, 1 ; 2 uses
  %i.qh = add i64 %.0266328.i.us, 1
  %i.qi = add i64 %.0267327.i.us, 1
  %exitcond355.not.i.us = icmp eq i64 %indvars.iv.next352.i.us, %i.nj
  br i1 %exitcond355.not.i.us, label %._crit_edge332.i.us, label %scalar.ph, !llvm.loop !32

._crit_edge332.i.us:                              ; preds = %scalar.ph, %middle.block
  %indvars.iv.next357.i.us = add nsw i64 %indvars.iv356.i.us, 1 ; 2 uses
  %exitcond360.not.i.us = icmp eq i64 %indvars.iv.next357.i.us, %i.ai
  br i1 %exitcond360.not.i.us, label %_guided_filter_tiling.exit.us, label %.lr.ph331.i.us

_guided_filter_tiling.exit.us:                    ; preds = %._crit_edge332.i.us, %.lr.ph335.i.us, %._crit_edge.i.us
  tail call void @free(ptr noundef %i.bw) #7
  %i.qj = icmp slt i64 %indvars.iv.next, %i.k
  %indvar.next = add i64 %indvar, 1
  br i1 %i.qj, label %bb.d, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %_guided_filter_tiling.exit.us
  %i.qk = icmp slt i64 %indvars.iv.next61, %i.n
  %indvar.next92 = add i64 %indvar91, 1
  br i1 %i.qk, label %.preheader.us, label %._crit_edge56

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04355 = phi i32 [ %i.ql, %.preheader ], [ 0, %.preheader.lr.ph ]
  %i.ql = add nsw i32 %.04355, %i.g               ; 2 uses
  %i.qm = icmp slt i32 %i.ql, %4
  br i1 %i.qm, label %.preheader, label %._crit_edge56

._crit_edge56:                                    ; preds = %.preheader, %._crit_edge.us, %bb.c
  ret void
}

declare i64 @dt_round_size(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #2

declare void @dt_box_mean_horizontal(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare void @dt_box_mean_vertical(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

declare void @dt_box_mean(ptr noundef, i64 noundef, i64 noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr>, <8 x i1>, <8 x float>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(write)
declare void @llvm.masked.scatter.v8f32.v8p0(<8 x float>, <8 x ptr>, <8 x i1>) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = distinct !{!11, i1 true, !"_new_color_image"}
!12 = distinct !{!12, !11, !"_new_color_image: argument 0"}
!13 = distinct !{!13, i1 true, !"_new_color_image"}
end_hunk_1
