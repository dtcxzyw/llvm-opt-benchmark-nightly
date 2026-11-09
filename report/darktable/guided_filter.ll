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
  %i.q = shl nuw nsw i64 %i.k, 2
  %i.r = zext nneg i32 %4 to i64
  %i.s = shl nsw i64 %i.m, 2
  %i.t = shl nuw nsw i64 %i.k, 2
  %i.u = shl nuw nsw i64 %i.k, 2
  %scevgep201 = getelementptr i8, ptr %0, i64 8
  %ident.check167.not = icmp eq i32 %5, 1
  %broadcast.splatinsert230 = insertelement <8 x float> poison, float %8, i64 0
  %broadcast.splat231 = shufflevector <8 x float> %broadcast.splatinsert230, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
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
  %i.y = trunc i64 %indvar91 to i32
  %i.z = add i32 %i.y, 1
  %i.aa = mul i32 %i.z, %i.g
  %i.ab = sext i32 %i.aa to i64
  %smin93 = tail call i64 @llvm.smin.i64(i64 %i.r, i64 %i.ab)
  %i.ac = mul i64 %indvar91, %i.m
  %i.ad = xor i64 %i.ac, -1
  %i.ae = add i64 %smin93, %i.ad                  ; 2 uses
  %i.af = mul i64 %i.q, %i.ae                     ; 2 uses
  %indvars.iv.next61 = add i64 %indvars.iv60, %i.m ; 3 uses
  %i.ag = trunc nsw i64 %indvars.iv.next61 to i32
  %i.ah = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %4) ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = icmp slt i64 %indvars.iv60, %i.ai
  %i.ak = trunc nsw i64 %indvars.iv60 to i32
  %i.al = getelementptr i8, ptr %0, i64 %i.x
  %i.am = getelementptr i8, ptr %i.al, i64 12
  %i.an = getelementptr i8, ptr %i.am, i64 %i.af
  %i.ao = getelementptr i8, ptr %2, i64 %i.x
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.af
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %_guided_filter_tiling.exit.us
  %indvar = phi i64 [ 0, %.preheader.us ], [ %indvar.next, %_guided_filter_tiling.exit.us ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_guided_filter_tiling.exit.us ] ; 7 uses
  %i.ar = mul i64 %i.s, %indvar                   ; 3 uses
  %scevgep = getelementptr i8, ptr %i.an, i64 %i.ar
  %i.as = trunc i64 %indvar to i32
  %i.at = add i32 %i.as, 1
  %i.au = mul i32 %i.at, %i.g
  %i.av = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.au)
  %smin94 = sext i32 %i.av to i64
  %i.aw = mul i64 %indvar, %i.m
  %i.ax = xor i64 %i.aw, -1
  %i.ay = add i64 %smin94, %i.ax                  ; 2 uses
  %i.az = shl i64 %i.ay, 2                        ; 2 uses
  %scevgep95 = getelementptr i8, ptr %scevgep, i64 %i.az
  %i.ba = add i64 %i.x, %i.ar                     ; 2 uses
  %scevgep96 = getelementptr i8, ptr %0, i64 %i.ba
  %i.bb = shl i64 %i.ay, 4
  %scevgep100 = getelementptr i8, ptr %i.aq, i64 %i.ar
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.az ; 2 uses
  %scevgep102 = getelementptr i8, ptr %2, i64 %i.ba ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.m ; 3 uses
  %i.bc = trunc nsw i64 %indvars.iv.next to i32
  %i.bd = tail call i32 @llvm.smin.i32(i32 %i.bc, i32 %3) ; 2 uses
  %i.be = tail call i64 @dt_round_size(i64 noundef %i.b, i64 noundef 16) #7
  %i.bf = trunc i64 %i.be to i32                  ; 5 uses
  %i.bg = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.bh = sub nsw i32 %i.bg, %i.bf
  %i.bi = tail call i32 @llvm.smax.i32(i32 %i.bh, i32 0) ; 4 uses
  %i.bj = add nsw i32 %i.bd, %i.bf                ; 2 uses
  %i.bk = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %3) ; 3 uses
  %i.bl = sub nsw i32 %i.ak, %i.bf
  %i.bm = tail call i32 @llvm.smax.i32(i32 %i.bl, i32 0) ; 7 uses
  %i.bn = add nsw i32 %i.ah, %i.bf
  %i.bo = tail call i32 @llvm.smin.i32(i32 %i.bn, i32 %4) ; 4 uses
  %i.bp = sub nsw i32 %i.bk, %i.bi                ; 3 uses
  %i.bq = sub nsw i32 %i.bo, %i.bm
  %i.br = sext i32 %i.bp to i64                   ; 13 uses
  %i.bs = sext i32 %i.bq to i64                   ; 6 uses
  %i.bt = mul nsw i64 %i.br, %i.bs                ; 6 uses
  %i.bu = shl nsw i64 %i.br, 2
  %i.bv = mul i64 %i.bu, %i.bs                    ; 2 uses
  %i.bw = shl i64 %i.bv, 2
  %i.bx = tail call ptr @dt_alloc_aligned(i64 noundef %i.bw) #7, !noalias !33 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bx, i64 64) ]
  %i.by = mul i64 %i.bv, 9
  %i.bz = tail call ptr @dt_alloc_aligned(i64 noundef %i.by) #7, !noalias !34 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.bz, i64 64) ]
  %i.ca = tail call i64 @dt_round_size(i64 noundef %i.br, i64 noundef 16) #7
  %i.cb = mul i64 %i.ca, 36
  %i.cc = add i64 %i.cb, 60
  %i.cd = and i64 %i.cc, -64
  %i.ce = tail call ptr @dt_alloc_aligned(i64 noundef %i.cd) #7 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ce, i64 64) ]
  %i.cf = icmp slt i32 %i.bm, %i.bo
  br i1 %i.cf, label %.lr.ph324.i.us, label %._crit_edge325.i.us

.lr.ph324.i.us:                                   ; preds = %bb.d
  %i.cg = shl i32 %i.bp, 2                        ; 2 uses
  %i.ch = mul i32 %i.bp, 9                        ; 2 uses
  %i.ci = icmp slt i32 %i.bi, %i.bk
  br i1 %i.ci, label %.lr.ph.us.preheader.i.us, label %.lr.ph324.split.preheader.i.us

.lr.ph324.split.preheader.i.us:                   ; preds = %.lr.ph324.i.us
  %i.cj = zext nneg i32 %i.bm to i64
  %wide.trip.count.i.us = zext nneg i32 %i.bo to i64
  br label %.lr.ph324.split.i.us

.lr.ph324.split.i.us:                             ; preds = %.lr.ph324.split.i.us, %.lr.ph324.split.preheader.i.us
  %indvars.iv.i.us = phi i64 [ %i.cj, %.lr.ph324.split.preheader.i.us ], [ %indvars.iv.next.i.us, %.lr.ph324.split.i.us ] ; 2 uses
  %i.ck = trunc i64 %indvars.iv.i.us to i32
  %i.cl = sub i32 %i.ck, %i.bm                    ; 2 uses
  %i.cm = mul i32 %i.cl, %i.cg
  %i.cn = sext i32 %i.cm to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.cn
  %i.cp = mul i32 %i.cl, %i.ch
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.cq
  tail call void @dt_box_mean_horizontal(ptr noundef %i.co, i64 noundef %i.br, i32 noundef 16777220, i64 noundef %.pre.i, ptr noundef %i.ce) #7
  tail call void @dt_box_mean_horizontal(ptr noundef %i.cr, i64 noundef %i.br, i32 noundef 16777225, i64 noundef %.pre.i, ptr noundef %i.ce) #7
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %._crit_edge325.i.us, label %.lr.ph324.split.i.us

.lr.ph.us.preheader.i.us:                         ; preds = %.lr.ph324.i.us
  %i.cs = zext nneg i32 %i.bi to i64              ; 11 uses
  %i.ct = zext nneg i32 %i.bm to i64              ; 4 uses
  %wide.trip.count348.i.us = zext i32 %i.bo to i64 ; 2 uses
  %wide.trip.count343.i.us = zext nneg i32 %i.bk to i64 ; 5 uses
  %i.cu = xor i64 %i.ct, -1
  %i.cv = add nsw i64 %i.cu, %wide.trip.count348.i.us
  %i.cw = mul i64 %i.t, %i.cv
  %i.cx = mul nuw nsw i64 %i.k, %i.ct             ; 2 uses
  %i.cy = add nuw nsw i64 %i.cx, %wide.trip.count343.i.us
  %i.cz = shl i64 %i.cy, 2
  %i.da = add i64 %i.cw, %i.cz                    ; 2 uses
  %scevgep199 = getelementptr i8, ptr %1, i64 %i.da ; 2 uses
  %i.db = mul nuw i64 %i.u, %i.ct
  %i.dc = shl nuw nsw i64 %i.cs, 2
  %i.dd = getelementptr i8, ptr %1, i64 %i.db
  %scevgep200 = getelementptr i8, ptr %i.dd, i64 %i.dc ; 2 uses
  %scevgep202 = getelementptr i8, ptr %scevgep201, i64 %i.da ; 2 uses
  %i.de = add nuw nsw i64 %i.cx, %i.cs
  %i.df = shl i64 %i.de, 2
  %scevgep203 = getelementptr i8, ptr %0, i64 %i.df ; 2 uses
  %.neg.a = mul nuw nsw i64 %wide.trip.count343.i.us, 36
  %i.dg = mul nsw i64 %i.cs, -36
  %11 = sub nsw i64 %wide.trip.count343.i.us, %i.cs
  %i.dh = shl nsw i64 %11, 4
  %i.di = sub nsw i64 %wide.trip.count343.i.us, %i.cs ; 3 uses
  %min.iters.check205 = icmp ugt i64 %i.di, 7
  %or.cond = and i1 %min.iters.check205, %ident.check167.not
  %12 = getelementptr i8, ptr %i.bx, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.bz, i64 %i.dg
  %i.dk = getelementptr i8, ptr %i.dj, i64 %.neg.a
  %n.vec227 = and i64 %i.di, -8                   ; 3 uses
  %i.dl = add nsw i64 %n.vec227, %i.cs
  %broadcast.splatinsert228 = insertelement <8 x i64> poison, i64 %i.cs, i64 0
  %broadcast.splat229 = shufflevector <8 x i64> %broadcast.splatinsert228, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <8 x i64> %broadcast.splat229, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n252 = icmp eq i64 %i.di, %n.vec227
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %._crit_edge.us.i.us, %.lr.ph.us.preheader.i.us
  %indvars.iv345.i.us = phi i64 [ %i.ct, %.lr.ph.us.preheader.i.us ], [ %indvars.iv.next346.i.us, %._crit_edge.us.i.us ] ; 3 uses
  %i.dm = trunc i64 %indvars.iv345.i.us to i32
  %i.dn = sub i32 %i.dm, %i.bm                    ; 2 uses
  %i.do = mul i32 %i.dn, %i.cg
  %i.dp = sext i32 %i.do to i64                   ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.dp ; 6 uses
  %i.dr = mul i32 %i.dn, %i.ch
  %i.ds = sext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.bz, i64 %i.ds ; 6 uses
  %i.du = mul nuw nsw i64 %indvars.iv345.i.us, %i.k ; 3 uses
  %i.dv = getelementptr [4 x i8], ptr %1, i64 %i.du ; 2 uses
  br i1 %or.cond, label %vector.memcheck206, label %scalar.ph204.preheader

vector.memcheck206:                               ; preds = %.lr.ph.us.i.us
  %i.dw = shl nsw i64 %i.dp, 2
  %i.dx = getelementptr i8, ptr %12, i64 %i.dw    ; 3 uses
  %i.dy = shl nsw i64 %i.ds, 2
  %i.dz = getelementptr i8, ptr %i.dk, i64 %i.dy  ; 3 uses
  %bound0207 = icmp ult ptr %i.dq, %i.dz
  %bound1208 = icmp ult ptr %i.dt, %i.dx
  %found.conflict209 = and i1 %bound0207, %bound1208
  %bound0210 = icmp ult ptr %i.dq, %scevgep202
  %bound1211 = icmp ult ptr %scevgep203, %i.dx
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %found.conflict209, %found.conflict212
  %bound0214 = icmp ult ptr %i.dq, %scevgep199
  %bound1215 = icmp ult ptr %scevgep200, %i.dx
  %found.conflict216 = and i1 %bound0214, %bound1215
  %conflict.rdx217 = or i1 %conflict.rdx213, %found.conflict216
  %bound0218 = icmp ult ptr %i.dt, %scevgep202
  %bound1219 = icmp ult ptr %scevgep203, %i.dz
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %conflict.rdx217, %found.conflict220
  %bound0222 = icmp ult ptr %i.dt, %scevgep199
  %bound1223 = icmp ult ptr %scevgep200, %i.dz
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx225 = or i1 %conflict.rdx221, %found.conflict224
  br i1 %conflict.rdx225, label %scalar.ph204.preheader, label %vector.ph226

vector.ph226:                                     ; preds = %vector.memcheck206
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.du
  br label %vector.body232

vector.body232:                                   ; preds = %vector.body232, %vector.ph226
  %index233 = phi i64 [ 0, %vector.ph226 ], [ %index.next249, %vector.body232 ] ; 2 uses
  %vec.ind234 = phi <8 x i64> [ %induction, %vector.ph226 ], [ %vec.ind.next250, %vector.body232 ] ; 2 uses
  %i.ea = add nuw i64 %index233, %i.cs            ; 2 uses
  %i.eb = sub nuw nsw <8 x i64> %vec.ind234, %broadcast.splat229 ; 2 uses
  %i.ec = extractelement <8 x i64> %i.eb, i64 0
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ea ; 3 uses
  %wide.load235 = load <8 x float>, ptr %gep, align 4, !tbaa !36, !alias.scope !37
  %i.ed = fmul reassoc nsz arcp contract afn <8 x float> %wide.load235, %broadcast.splat231 ; 6 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load236 = load <8 x float>, ptr %i.ee, align 4, !tbaa !36, !alias.scope !37
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %wide.load236, %broadcast.splat231 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load237 = load <8 x float>, ptr %i.eg, align 4, !tbaa !36, !alias.scope !37
  %i.eh = fmul reassoc nsz arcp contract afn <8 x float> %wide.load237, %broadcast.splat231 ; 6 uses
  %i.ei = getelementptr [4 x i8], ptr %i.dv, i64 %i.ea
  %wide.load238 = load <8 x float>, ptr %i.ei, align 4, !tbaa !36, !alias.scope !38 ; 4 uses
  %i.ej = shl nuw nsw i64 %i.ec, 4
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.ej
  %i.el = shufflevector <8 x float> %wide.load238, <8 x float> %i.ed, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.em = shufflevector <8 x float> %i.ef, <8 x float> %i.eh, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec239 = shufflevector <16 x float> %i.el, <16 x float> %i.em, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec239, ptr %i.ek, align 16, !tbaa !36, !alias.scope !39, !noalias !40
  %i.en = fmul reassoc nsz arcp contract afn <8 x float> %wide.load238, %i.ed
  %i.eo = mul nuw nsw <8 x i64> %i.eb, splat (i64 36)
  %wide.gep240 = getelementptr inbounds nuw i8, ptr %i.dt, <8 x i64> %i.eo ; 9 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.en, <8 x ptr> align 4 %wide.gep240, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %wide.load238, %i.ef
  %wide.gep241 = getelementptr i8, <8 x ptr> %wide.gep240, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ep, <8 x ptr> align 4 %wide.gep241, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.eq = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, %wide.load238
  %wide.gep242 = getelementptr i8, <8 x ptr> %wide.gep240, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eq, <8 x ptr> align 4 %wide.gep242, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.er = fmul reassoc nsz arcp contract afn <8 x float> %i.ed, %i.ed
  %wide.gep243 = getelementptr i8, <8 x ptr> %wide.gep240, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.er, <8 x ptr> align 4 %wide.gep243, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.es = fmul reassoc nsz arcp contract afn <8 x float> %i.ef, %i.ed
  %wide.gep244 = getelementptr i8, <8 x ptr> %wide.gep240, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.es, <8 x ptr> align 4 %wide.gep244, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.et = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, %i.ed
  %wide.gep245 = getelementptr i8, <8 x ptr> %wide.gep240, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.et, <8 x ptr> align 4 %wide.gep245, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %i.ef, %i.ef
  %wide.gep246 = getelementptr i8, <8 x ptr> %wide.gep240, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eu, <8 x ptr> align 4 %wide.gep246, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ev = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, %i.ef
  %wide.gep247 = getelementptr i8, <8 x ptr> %wide.gep240, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ev, <8 x ptr> align 4 %wide.gep247, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ew = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, %i.eh
  %wide.gep248 = getelementptr i8, <8 x ptr> %wide.gep240, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ew, <8 x ptr> align 4 %wide.gep248, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %index.next249 = add nuw i64 %index233, 8       ; 2 uses
  %vec.ind.next250 = add nuw nsw <8 x i64> %vec.ind234, splat (i64 8)
  %i.ex = icmp eq i64 %index.next249, %n.vec227
  br i1 %i.ex, label %middle.block251, label %vector.body232, !llvm.loop !20

middle.block251:                                  ; preds = %vector.body232
  br i1 %cmp.n252, label %._crit_edge.us.i.us, label %scalar.ph204.preheader

scalar.ph204.preheader:                           ; preds = %vector.memcheck206, %.lr.ph.us.i.us, %middle.block251
  %indvars.iv339.i.us.ph = phi i64 [ %i.cs, %vector.memcheck206 ], [ %i.cs, %.lr.ph.us.i.us ], [ %i.dl, %middle.block251 ]
  br label %scalar.ph204

scalar.ph204:                                     ; preds = %scalar.ph204.preheader, %scalar.ph204
  %indvars.iv339.i.us = phi i64 [ %indvars.iv.next340.i.us, %scalar.ph204 ], [ %indvars.iv339.i.us.ph, %scalar.ph204.preheader ] ; 4 uses
  %i.ey = sub nuw nsw i64 %indvars.iv339.i.us, %i.cs ; 2 uses
  %i.ez = add nuw nsw i64 %indvars.iv339.i.us, %i.du
  %i.fa = mul i64 %i.ez, %i.l
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !36 ; 2 uses
  %i.fe = getelementptr [4 x i8], ptr %i.dv, i64 %indvars.iv339.i.us
  %.idx311.us.i.us = shl nuw nsw i64 %i.ey, 4
  %i.ff = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx311.us.i.us ; 3 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 12
  %.idx312.us.i.us = mul nuw nsw i64 %i.ey, 36
  %i.fi = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx312.us.i.us ; 2 uses
  %i.fj = load <2 x float>, ptr %i.fb, align 4, !tbaa !36
  %i.fk = load float, ptr %i.fe, align 4, !tbaa !36 ; 2 uses
  %i.fl = insertelement <4 x float> poison, float %i.fk, i64 0
  %i.fm = insertelement <4 x float> %i.fl, float %i.fd, i64 1
  %i.fn = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fo = shufflevector <4 x float> %i.fm, <4 x float> %i.fn, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fp = fmul reassoc arcp contract afn <4 x float> %i.fo, %i.w ; 3 uses
  %i.fq = shufflevector <4 x float> %i.fp, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 1, i32 3, i32 1>
  %i.fr = fmul reassoc nsz arcp contract afn float %i.fd, %8 ; 3 uses
  store float %i.fk, ptr %i.ff, align 16, !tbaa !36
  %i.fs = shufflevector <4 x float> %i.fp, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  store <2 x float> %i.fs, ptr %i.fg, align 4, !tbaa !36
  store float %i.fr, ptr %i.fh, align 4, !tbaa !36
  %i.ft = shufflevector <4 x float> %i.fp, <4 x float> poison, <8 x i32> <i32 2, i32 3, i32 0, i32 2, i32 2, i32 2, i32 3, i32 3>
  %i.fu = fmul reassoc nsz arcp contract afn <8 x float> %i.fq, %i.ft
  store <8 x float> %i.fu, ptr %i.fi, align 4, !tbaa !36
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fr, %i.fr
  %i.fw = getelementptr i8, ptr %i.fi, i64 32
  store float %i.fv, ptr %i.fw, align 4, !tbaa !36
  %indvars.iv.next340.i.us = add nuw nsw i64 %indvars.iv339.i.us, 1 ; 2 uses
  %exitcond344.not.i.us = icmp eq i64 %indvars.iv.next340.i.us, %wide.trip.count343.i.us
  br i1 %exitcond344.not.i.us, label %._crit_edge.us.i.us, label %scalar.ph204, !llvm.loop !21

._crit_edge.us.i.us:                              ; preds = %scalar.ph204, %middle.block251
  tail call void @dt_box_mean_horizontal(ptr noundef nonnull %i.dq, i64 noundef %i.br, i32 noundef 16777220, i64 noundef %.pre.i, ptr noundef %i.ce) #7
  tail call void @dt_box_mean_horizontal(ptr noundef nonnull %i.dt, i64 noundef %i.br, i32 noundef 16777225, i64 noundef %.pre.i, ptr noundef %i.ce) #7
  %indvars.iv.next346.i.us = add nuw nsw i64 %indvars.iv345.i.us, 1 ; 2 uses
  %exitcond349.not.i.us = icmp eq i64 %indvars.iv.next346.i.us, %wide.trip.count348.i.us
  br i1 %exitcond349.not.i.us, label %._crit_edge325.i.us, label %.lr.ph.us.i.us

._crit_edge325.i.us:                              ; preds = %.lr.ph324.split.i.us, %._crit_edge.us.i.us, %bb.d
  tail call void @free(ptr noundef %i.ce) #7
  tail call void @dt_box_mean_vertical(ptr noundef %i.bx, i64 noundef %i.bs, i64 noundef %i.br, i32 noundef 16777220, i64 noundef %.pre.i) #7
  tail call void @dt_box_mean_vertical(ptr noundef %i.bz, i64 noundef %i.bs, i64 noundef %i.br, i32 noundef 16777225, i64 noundef %.pre.i) #7
  %.not.i.us = icmp eq i64 %i.bt, 0
  br i1 %.not.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %._crit_edge325.i.us
  %min.iters.check127 = icmp ult i64 %i.bt, 8
  br i1 %min.iters.check127, label %.lr.ph.i.us.preheader255, label %vector.scevcheck117

vector.scevcheck117:                              ; preds = %.lr.ph.i.us.preheader
  %i.fx = add i64 %i.bt, -1
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fx, i64 36) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 3 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.fy = getelementptr i8, ptr %i.bz, i64 %mul.result
  %i.fz = icmp ult ptr %i.fy, %i.bz
  %scevgep118 = getelementptr i8, ptr %i.bz, i64 4 ; 2 uses
  %i.ga = getelementptr i8, ptr %scevgep118, i64 %mul.result
  %i.gb = icmp ult ptr %i.ga, %scevgep118
  %scevgep119 = getelementptr i8, ptr %i.bz, i64 8 ; 2 uses
  %i.gc = getelementptr i8, ptr %scevgep119, i64 %mul.result
  %i.gd = icmp ult ptr %i.gc, %scevgep119
  %i.ge = or i1 %i.gd, %mul.overflow
  %i.gf = or i1 %i.gb, %i.fz
  %i.gg = or i1 %i.gf, %i.ge
  br i1 %i.gg, label %.lr.ph.i.us.preheader255, label %vector.memcheck128

vector.memcheck128:                               ; preds = %vector.scevcheck117
  %i.gh = mul nsw i64 %i.bs, %i.br                ; 2 uses
  %i.gi = shl i64 %i.gh, 4
  %i.gj = getelementptr i8, ptr %i.bx, i64 %i.gi
  %i.gk = mul i64 %i.gh, 36
  %i.gl = getelementptr i8, ptr %i.bz, i64 %i.gk
  %bound0129 = icmp ult ptr %i.bx, %i.gl
  %bound1130 = icmp ult ptr %i.bz, %i.gj
  %found.conflict131 = and i1 %bound0129, %bound1130
  br i1 %found.conflict131, label %.lr.ph.i.us.preheader255, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck128
  %n.vec133 = and i64 %i.bt, -8                   ; 3 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph132
  %index137 = phi i64 [ 0, %vector.ph132 ], [ %index.next162, %vector.body136 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph132 ], [ %vec.ind.next, %vector.body136 ] ; 2 uses
  %i.gm = shl i64 %index137, 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.gm ; 2 uses
  %wide.vec138 = load <32 x float>, ptr %i.gn, align 64, !tbaa !36, !alias.scope !45, !noalias !46 ; 4 uses
  %strided.vec139 = shufflevector <32 x float> %wide.vec138, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec140 = shufflevector <32 x float> %wide.vec138, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 6 uses
  %strided.vec141 = shufflevector <32 x float> %wide.vec138, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 6 uses
  %strided.vec142 = shufflevector <32 x float> %wide.vec138, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 6 uses
  %i.go = mul <8 x i64> %vec.ind, splat (i64 36)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.bz, <8 x i64> %i.go ; 9 uses
  %wide.gep143 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep143, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gp = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec140, %strided.vec140
  %i.gq = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.gp
  %i.gr = fadd reassoc nsz arcp contract afn <8 x float> %i.gq, %broadcast.splat135 ; 3 uses
  %wide.gep144 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.masked.gather145 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep144, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gs = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec141, %strided.vec140
  %i.gt = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather145, %i.gs ; 6 uses
end_hunk_0
