inline.NumInlined: 16
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
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
  %i.g = phi i32 [ %i.f, %bb.b ], [ 512, %bb.a ]  ; 6 uses
  %i.h = fmul reassoc nsz arcp contract afn float %7, %7 ; 4 uses
  %i.i = icmp sgt i32 %4, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge56

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.j = icmp sgt i32 %3, 0
  %.pre.i = sext i32 %6 to i64                    ; 7 uses
  %i.k = sext i32 %3 to i64                       ; 8 uses
  %i.l = sext i32 %5 to i64                       ; 4 uses
  br i1 %i.j, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.m = sext i32 %i.g to i64                     ; 7 uses
  %i.n = zext nneg i32 %4 to i64
  %i.o = mul nsw i64 %i.m, %i.k
  %i.p = shl i64 %i.o, 2
  %i.q = shl nsw i64 %i.m, 2
  %i.r = shl nuw nsw i64 %i.k, 2
  %i.s = zext nneg i32 %4 to i64
  %scevgep160.a = getelementptr i8, ptr %0, i64 8
  %i.t = shl nuw nsw i64 %i.k, 2
  %i.u = shl nuw nsw i64 %i.k, 2
  %ident.check149.not = icmp eq i32 %5, 1
  %broadcast.splatinsert189 = insertelement <8 x float> poison, float %8, i64 0
  %broadcast.splat190 = shufflevector <8 x float> %broadcast.splatinsert189, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.v = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %8, i64 1
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %broadcast.splatinsert116 = insertelement <8 x float> poison, float %i.h, i64 0
  %broadcast.splat117 = shufflevector <8 x float> %broadcast.splatinsert116, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %ident.check.not = icmp eq i32 %5, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %8, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert92 = insertelement <8 x float> poison, float %10, i64 0
  %broadcast.splat93 = shufflevector <8 x float> %broadcast.splatinsert92, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert94 = insertelement <8 x float> poison, float %9, i64 0
  %broadcast.splat95 = shufflevector <8 x float> %broadcast.splatinsert94, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.preheader.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 4 uses
  %indvars.iv60 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next61, %._crit_edge.us ] ; 5 uses
  %i.x = mul i64 %i.p, %indvar                    ; 3 uses
  %i.y = trunc i64 %indvar to i32
  %i.z = add i32 %i.y, 1
  %i.aa = mul i32 %i.z, %i.g
  %i.ab = sext i32 %i.aa to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %i.ab)
  %i.ac = mul i64 %indvar, %i.m
  %i.ad = xor i64 %i.ac, -1
  %i.ae = add i64 %smin, %i.ad                    ; 2 uses
  %i.af = mul i64 %i.r, %i.ae                     ; 2 uses
  %indvars.iv.next61 = add i64 %indvars.iv60, %i.m ; 3 uses
  %i.ag = trunc nsw i64 %indvars.iv.next61 to i32
  %i.ah = tail call i32 @llvm.smin.i32(i32 %i.ag, i32 %4) ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = icmp slt i64 %indvars.iv60, %i.ai
  %i.ak = trunc nsw i64 %indvars.iv60 to i32
  %i.al = getelementptr i8, ptr %2, i64 %i.x
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %i.an = getelementptr i8, ptr %i.am, i64 %i.af
  %i.ao = getelementptr i8, ptr %0, i64 %i.x
  %i.ap = getelementptr i8, ptr %i.ao, i64 12
  %i.aq = getelementptr i8, ptr %i.ap, i64 %i.af
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %_guided_filter_tiling.exit.us
  %indvar76 = phi i64 [ 0, %.preheader.us ], [ %indvar.next77, %_guided_filter_tiling.exit.us ] ; 7 uses
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_guided_filter_tiling.exit.us ] ; 7 uses
  %i.ar = trunc i64 %indvar76 to i32
  %i.as = add i32 %i.ar, 1
  %i.at = mul i32 %i.as, %i.g
  %i.au = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.at)
  %smin220 = sext i32 %i.au to i64                ; 2 uses
  %i.av = trunc i64 %indvar76 to i32
  %i.aw = add i32 %i.av, 1
  %i.ax = mul i32 %i.aw, %i.g
  %i.ay = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.ax)
  %smin91 = sext i32 %i.ay to i64
  %i.az = mul i64 %indvar76, %i.m
  %i.ba = sub i64 %smin91, %i.az                  ; 3 uses
  %i.bb = mul i64 %i.q, %indvar76                 ; 3 uses
  %i.bc = add i64 %i.x, %i.bb                     ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.bc  ; 2 uses
  %scevgep78 = getelementptr i8, ptr %i.an, i64 %i.bb
  %i.bd = trunc i64 %indvar76 to i32
  %i.be = add i32 %i.bd, 1
  %i.bf = mul i32 %i.be, %i.g
  %i.bg = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.bf)
  %smin79 = sext i32 %i.bg to i64
  %i.bh = mul i64 %indvar76, %i.m
  %i.bi = xor i64 %i.bh, -1
  %i.bj = add i64 %smin79, %i.bi                  ; 2 uses
  %i.bk = shl i64 %i.bj, 2                        ; 2 uses
  %scevgep80 = getelementptr i8, ptr %scevgep78, i64 %i.bk ; 2 uses
  %i.bl = shl i64 %i.bj, 4
  %scevgep85.a = getelementptr i8, ptr %0, i64 %i.bc
  %scevgep86 = getelementptr i8, ptr %i.aq, i64 %i.bb
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.bk
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.m ; 3 uses
  %i.bm = trunc nsw i64 %indvars.iv.next to i32
  %i.bn = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %3) ; 2 uses
  %i.bo = tail call i64 @dt_round_size(i64 noundef %i.b, i64 noundef 16) #7
  %i.bp = trunc i64 %i.bo to i32                  ; 5 uses
  %i.bq = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.br = sub nsw i32 %i.bq, %i.bp
  %i.bs = tail call i32 @llvm.smax.i32(i32 %i.br, i32 0) ; 4 uses
  %i.bt = add nsw i32 %i.bn, %i.bp                ; 2 uses
  %i.bu = tail call i32 @llvm.smin.i32(i32 %i.bt, i32 %3) ; 3 uses
  %i.bv = sub nsw i32 %i.ak, %i.bp
  %i.bw = tail call i32 @llvm.smax.i32(i32 %i.bv, i32 0) ; 7 uses
  %i.bx = add nsw i32 %i.ah, %i.bp
  %i.by = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %4) ; 4 uses
  %i.bz = sub nsw i32 %i.bu, %i.bs                ; 3 uses
  %i.ca = sub nsw i32 %i.by, %i.bw
  %i.cb = sext i32 %i.bz to i64                   ; 14 uses
  %i.cc = sext i32 %i.ca to i64                   ; 7 uses
  %i.cd = mul nsw i64 %i.cb, %i.cc                ; 6 uses
  %i.ce = shl nsw i64 %i.cb, 2
  %i.cf = mul i64 %i.ce, %i.cc                    ; 2 uses
  %i.cg = shl i64 %i.cf, 2
  %i.ch = tail call ptr @dt_alloc_aligned(i64 noundef %i.cg) #7, !noalias !11 ; 18 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ch, i64 64) ]
  %i.ci = mul i64 %i.cf, 9
  %i.cj = tail call ptr @dt_alloc_aligned(i64 noundef %i.ci) #7, !noalias !14 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cj, i64 64) ]
  %i.ck = tail call i64 @dt_round_size(i64 noundef %i.cb, i64 noundef 16) #7
  %i.cl = mul i64 %i.ck, 36
  %i.cm = add i64 %i.cl, 60
  %i.cn = and i64 %i.cm, -64
  %i.co = tail call ptr @dt_alloc_aligned(i64 noundef %i.cn) #7 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.co, i64 64) ]
  %i.cp = icmp slt i32 %i.bw, %i.by
  br i1 %i.cp, label %.lr.ph325.i.us, label %._crit_edge326.i.us

.lr.ph325.i.us:                                   ; preds = %bb.d
  %i.cq = shl i32 %i.bz, 2                        ; 3 uses
  %i.cr = mul i32 %i.bz, 9                        ; 3 uses
  %i.cs = icmp slt i32 %i.bs, %i.bu
  br i1 %i.cs, label %.lr.ph.us.preheader.i.us, label %.lr.ph325.split.preheader.i.us

.lr.ph325.split.preheader.i.us:                   ; preds = %.lr.ph325.i.us
  %i.ct = zext nneg i32 %i.bw to i64
  %wide.trip.count.i.us = zext nneg i32 %i.by to i64
  br label %.lr.ph325.split.i.us

.lr.ph325.split.i.us:                             ; preds = %.lr.ph325.split.i.us, %.lr.ph325.split.preheader.i.us
  %indvars.iv.i.us = phi i64 [ %i.ct, %.lr.ph325.split.preheader.i.us ], [ %indvars.iv.next.i.us, %.lr.ph325.split.i.us ] ; 2 uses
  %i.cu = trunc i64 %indvars.iv.i.us to i32
  %i.cv = sub i32 %i.cu, %i.bw                    ; 2 uses
  %i.cw = mul i32 %i.cv, %i.cq
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.cx
  %i.cz = mul i32 %i.cv, %i.cr
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.da
  tail call void @dt_box_mean_horizontal(ptr noundef %i.cy, i64 noundef %i.cb, i32 noundef 16777220, i64 noundef %.pre.i, ptr noundef %i.co) #7
  tail call void @dt_box_mean_horizontal(ptr noundef %i.db, i64 noundef %i.cb, i32 noundef 16777225, i64 noundef %.pre.i, ptr noundef %i.co) #7
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %._crit_edge326.i.us, label %.lr.ph325.split.i.us

.lr.ph.us.preheader.i.us:                         ; preds = %.lr.ph325.i.us
  %i.dc = zext nneg i32 %i.bs to i64              ; 11 uses
  %i.dd = zext nneg i32 %i.bw to i64              ; 4 uses
  %wide.trip.count348.i.us = zext i32 %i.by to i64 ; 2 uses
  %wide.trip.count343.i.us = zext nneg i32 %i.bu to i64 ; 5 uses
  %i.de = sub nsw i64 %wide.trip.count343.i.us, %i.dc
  %i.df = shl nsw i64 %i.de, 4
  %scevgep154.a = getelementptr i8, ptr %i.ch, i64 %i.df
  %i.dg = mul nuw nsw i64 %wide.trip.count343.i.us, 36
  %.neg = mul nsw i64 %i.dc, -36
  %i.dh = getelementptr i8, ptr %i.cj, i64 %.neg
  %scevgep157.a = getelementptr i8, ptr %i.dh, i64 %i.dg
  %i.di = mul nuw nsw i64 %i.k, %i.dd             ; 2 uses
  %i.dj = add nuw nsw i64 %i.di, %i.dc
  %i.dk = shl i64 %i.dj, 2
  %scevgep159.a = getelementptr i8, ptr %0, i64 %i.dk ; 2 uses
  %i.dl = xor i64 %i.dd, -1
  %i.dm = add nsw i64 %i.dl, %wide.trip.count348.i.us
  %i.dn = mul i64 %i.t, %i.dm
  %i.do = add nuw nsw i64 %i.di, %wide.trip.count343.i.us
  %i.dp = shl i64 %i.do, 2
  %i.dq = add i64 %i.dn, %i.dp                    ; 2 uses
  %scevgep161 = getelementptr i8, ptr %scevgep160.a, i64 %i.dq ; 2 uses
  %i.dr = mul nuw i64 %i.u, %i.dd
  %i.ds = shl nuw nsw i64 %i.dc, 2
  %i.dt = getelementptr i8, ptr %1, i64 %i.dr
  %scevgep162 = getelementptr i8, ptr %i.dt, i64 %i.ds ; 2 uses
  %scevgep163 = getelementptr i8, ptr %1, i64 %i.dq ; 2 uses
  %i.du = sub nsw i64 %wide.trip.count343.i.us, %i.dc ; 3 uses
  %min.iters.check184 = icmp ugt i64 %i.du, 7
  %or.cond = and i1 %min.iters.check184, %ident.check149.not
  %n.vec186 = and i64 %i.du, -8                   ; 3 uses
  %i.dv = add nsw i64 %n.vec186, %i.dc
  %broadcast.splatinsert187 = insertelement <8 x i64> poison, i64 %i.dc, i64 0
  %broadcast.splat188 = shufflevector <8 x i64> %broadcast.splatinsert187, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <8 x i64> %broadcast.splat188, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n211 = icmp eq i64 %i.du, %n.vec186
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %._crit_edge.us.i.us, %.lr.ph.us.preheader.i.us
  %indvar151 = phi i32 [ %indvar.next152, %._crit_edge.us.i.us ], [ 0, %.lr.ph.us.preheader.i.us ] ; 3 uses
  %indvars.iv345.i.us = phi i64 [ %indvars.iv.next346.i.us, %._crit_edge.us.i.us ], [ %i.dd, %.lr.ph.us.preheader.i.us ] ; 3 uses
  %i.dw = trunc i64 %indvars.iv345.i.us to i32
  %i.dx = sub i32 %i.dw, %i.bw                    ; 2 uses
  %i.dy = mul i32 %i.dx, %i.cq
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.ch, i64 %i.dz ; 3 uses
  %i.eb = mul i32 %i.dx, %i.cr
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.ec ; 3 uses
  %i.ee = mul nuw nsw i64 %indvars.iv345.i.us, %i.k ; 3 uses
  %i.ef = getelementptr [4 x i8], ptr %1, i64 %i.ee ; 2 uses
  br i1 %or.cond, label %vector.memcheck150, label %scalar.ph183.preheader

vector.memcheck150:                               ; preds = %.lr.ph.us.i.us
  %i.eg = mul i32 %i.cr, %indvar151
  %i.eh = sext i32 %i.eg to i64
  %i.ei = shl nsw i64 %i.eh, 2                    ; 2 uses
  %scevgep158 = getelementptr i8, ptr %scevgep157.a, i64 %i.ei ; 3 uses
  %scevgep156.a = getelementptr i8, ptr %i.cj, i64 %i.ei ; 3 uses
  %i.ej = mul i32 %i.cq, %indvar151
  %i.ek = sext i32 %i.ej to i64
  %i.el = shl nsw i64 %i.ek, 2                    ; 2 uses
  %scevgep155 = getelementptr i8, ptr %scevgep154.a, i64 %i.el ; 3 uses
  %scevgep153 = getelementptr i8, ptr %i.ch, i64 %i.el ; 3 uses
  %bound0164 = icmp ult ptr %scevgep153, %scevgep158
  %bound1165 = icmp ult ptr %scevgep156.a, %scevgep155
  %found.conflict166 = and i1 %bound0164, %bound1165
  %bound0167 = icmp ult ptr %scevgep153, %scevgep161
  %bound1168 = icmp ult ptr %scevgep159.a, %scevgep155
  %found.conflict169 = and i1 %bound0167, %bound1168
  %conflict.rdx170 = or i1 %found.conflict166, %found.conflict169
  %bound0171 = icmp ult ptr %scevgep153, %scevgep163
  %bound1172 = icmp ult ptr %scevgep162, %scevgep155
  %found.conflict173 = and i1 %bound0171, %bound1172
  %conflict.rdx174 = or i1 %conflict.rdx170, %found.conflict173
  %bound0175 = icmp ult ptr %scevgep156.a, %scevgep161
  %bound1176 = icmp ult ptr %scevgep159.a, %scevgep158
  %found.conflict177 = and i1 %bound0175, %bound1176
  %conflict.rdx178 = or i1 %conflict.rdx174, %found.conflict177
  %bound0179 = icmp ult ptr %scevgep156.a, %scevgep163
  %bound1180 = icmp ult ptr %scevgep162, %scevgep158
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %conflict.rdx178, %found.conflict181
  br i1 %conflict.rdx182, label %scalar.ph183.preheader, label %vector.ph185

vector.ph185:                                     ; preds = %vector.memcheck150
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.ee
  br label %vector.body191

vector.body191:                                   ; preds = %vector.body191, %vector.ph185
  %index192 = phi i64 [ 0, %vector.ph185 ], [ %index.next208, %vector.body191 ] ; 2 uses
  %vec.ind193 = phi <8 x i64> [ %induction, %vector.ph185 ], [ %vec.ind.next209, %vector.body191 ] ; 2 uses
  %i.em = add nuw i64 %index192, %i.dc            ; 2 uses
  %i.en = sub nuw nsw <8 x i64> %vec.ind193, %broadcast.splat188 ; 2 uses
  %i.eo = extractelement <8 x i64> %i.en, i64 0
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.em ; 3 uses
  %wide.load194 = load <8 x float>, ptr %gep, align 4, !tbaa !17, !alias.scope !19
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %wide.load194, %broadcast.splat190 ; 6 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load195 = load <8 x float>, ptr %i.eq, align 4, !tbaa !17, !alias.scope !19
  %i.er = fmul reassoc nsz arcp contract afn <8 x float> %wide.load195, %broadcast.splat190 ; 6 uses
  %i.es = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load196 = load <8 x float>, ptr %i.es, align 4, !tbaa !17, !alias.scope !19
  %i.et = fmul reassoc nsz arcp contract afn <8 x float> %wide.load196, %broadcast.splat190 ; 6 uses
  %i.eu = getelementptr [4 x i8], ptr %i.ef, i64 %i.em
  %wide.load197 = load <8 x float>, ptr %i.eu, align 4, !tbaa !17, !alias.scope !22 ; 4 uses
  %i.ev = shl nuw nsw i64 %i.eo, 4
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ea, i64 %i.ev
  %i.ex = shufflevector <8 x float> %wide.load197, <8 x float> %i.ep, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ey = shufflevector <8 x float> %i.er, <8 x float> %i.et, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec198 = shufflevector <16 x float> %i.ex, <16 x float> %i.ey, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec198, ptr %i.ew, align 16, !tbaa !17, !alias.scope !24, !noalias !26
  %i.ez = fmul reassoc nsz arcp contract afn <8 x float> %wide.load197, %i.ep
  %i.fa = mul nuw nsw <8 x i64> %i.en, splat (i64 36)
  %wide.gep199 = getelementptr inbounds nuw i8, ptr %i.ed, <8 x i64> %i.fa ; 9 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ez, <8 x ptr> align 4 %wide.gep199, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fb = fmul reassoc nsz arcp contract afn <8 x float> %wide.load197, %i.er
  %wide.gep200 = getelementptr i8, <8 x ptr> %wide.gep199, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fb, <8 x ptr> align 4 %wide.gep200, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fc = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %wide.load197
  %wide.gep201 = getelementptr i8, <8 x ptr> %wide.gep199, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fc, <8 x ptr> align 4 %wide.gep201, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fd = fmul reassoc nsz arcp contract afn <8 x float> %i.ep, %i.ep
  %wide.gep202 = getelementptr i8, <8 x ptr> %wide.gep199, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fd, <8 x ptr> align 4 %wide.gep202, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fe = fmul reassoc nsz arcp contract afn <8 x float> %i.er, %i.ep
  %wide.gep203 = getelementptr i8, <8 x ptr> %wide.gep199, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fe, <8 x ptr> align 4 %wide.gep203, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.ff = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %i.ep
  %wide.gep204 = getelementptr i8, <8 x ptr> %wide.gep199, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ff, <8 x ptr> align 4 %wide.gep204, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fg = fmul reassoc nsz arcp contract afn <8 x float> %i.er, %i.er
  %wide.gep205 = getelementptr i8, <8 x ptr> %wide.gep199, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fg, <8 x ptr> align 4 %wide.gep205, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fh = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %i.er
  %wide.gep206 = getelementptr i8, <8 x ptr> %wide.gep199, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fh, <8 x ptr> align 4 %wide.gep206, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.fi = fmul reassoc nsz arcp contract afn <8 x float> %i.et, %i.et
  %wide.gep207 = getelementptr i8, <8 x ptr> %wide.gep199, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.fi, <8 x ptr> align 4 %wide.gep207, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %index.next208 = add nuw i64 %index192, 8       ; 2 uses
  %vec.ind.next209 = add nuw nsw <8 x i64> %vec.ind193, splat (i64 8)
  %i.fj = icmp eq i64 %index.next208, %n.vec186
  br i1 %i.fj, label %middle.block210, label %vector.body191, !llvm.loop !30

middle.block210:                                  ; preds = %vector.body191
  br i1 %cmp.n211, label %._crit_edge.us.i.us, label %scalar.ph183.preheader

scalar.ph183.preheader:                           ; preds = %vector.memcheck150, %.lr.ph.us.i.us, %middle.block210
  %indvars.iv340.i.us.ph = phi i64 [ %i.dc, %vector.memcheck150 ], [ %i.dc, %.lr.ph.us.i.us ], [ %i.dv, %middle.block210 ]
  br label %scalar.ph183

scalar.ph183:                                     ; preds = %scalar.ph183.preheader, %scalar.ph183
  %indvars.iv340.i.us = phi i64 [ %indvars.iv.next341.i.us, %scalar.ph183 ], [ %indvars.iv340.i.us.ph, %scalar.ph183.preheader ] ; 4 uses
  %i.fk = sub nuw nsw i64 %indvars.iv340.i.us, %i.dc ; 2 uses
  %i.fl = add nuw nsw i64 %indvars.iv340.i.us, %i.ee
  %i.fm = mul i64 %i.fl, %i.l
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fm ; 2 uses
  %i.fo = load float, ptr %i.fn, align 4, !tbaa !17 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4
  %i.fq = getelementptr [4 x i8], ptr %i.ef, i64 %indvars.iv340.i.us
  %.idx312.us.i.us = shl nuw nsw i64 %i.fk, 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ea, i64 %.idx312.us.i.us
  %i.fs = load <2 x float>, ptr %i.fp, align 4, !tbaa !17
  %i.ft = load float, ptr %i.fq, align 4, !tbaa !17 ; 2 uses
  %i.fu = insertelement <4 x float> poison, float %i.ft, i64 0
  %i.fv = insertelement <4 x float> %i.fu, float %i.fo, i64 1
  %i.fw = shufflevector <2 x float> %i.fs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fx = shufflevector <4 x float> %i.fv, <4 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fy = fmul reassoc nsz arcp contract afn <4 x float> %i.fx, %i.w ; 5 uses
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fo, %8
  store <4 x float> %i.fy, ptr %i.fr, align 16, !tbaa !17
  %.idx313.us.i.us = mul nuw nsw i64 %i.fk, 36
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ed, i64 %.idx313.us.i.us ; 2 uses
  %i.gb = shufflevector <4 x float> %i.fy, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 2>
  %i.gc = insertelement <4 x float> %i.gb, float %i.ft, i64 0
  %i.gd = insertelement <4 x float> %i.gc, float %i.fz, i64 2 ; 2 uses
  %i.ge = shufflevector <4 x float> %i.gd, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 1, i32 3, i32 1>
  %i.gf = shufflevector <4 x float> %i.fy, <4 x float> %i.gd, <8 x i32> <i32 6, i32 2, i32 4, i32 6, i32 6, i32 6, i32 2, i32 2>
  %i.gg = fmul reassoc nsz arcp contract afn <8 x float> %i.ge, %i.gf
  store <8 x float> %i.gg, ptr %i.ga, align 4, !tbaa !17
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <4 x float> %i.fy, %i.fy
  %i.gh = extractelement <4 x float> %foldExtExtBinop, i64 3
  %i.gi = getelementptr i8, ptr %i.ga, i64 32
  store float %i.gh, ptr %i.gi, align 4, !tbaa !17
  %indvars.iv.next341.i.us = add nuw nsw i64 %indvars.iv340.i.us, 1 ; 2 uses
  %exitcond344.not.i.us = icmp eq i64 %indvars.iv.next341.i.us, %wide.trip.count343.i.us
  br i1 %exitcond344.not.i.us, label %._crit_edge.us.i.us, label %scalar.ph183, !llvm.loop !33

._crit_edge.us.i.us:                              ; preds = %scalar.ph183, %middle.block210
  tail call void @dt_box_mean_horizontal(ptr noundef nonnull %i.ea, i64 noundef %i.cb, i32 noundef 16777220, i64 noundef %.pre.i, ptr noundef %i.co) #7
  tail call void @dt_box_mean_horizontal(ptr noundef nonnull %i.ed, i64 noundef %i.cb, i32 noundef 16777225, i64 noundef %.pre.i, ptr noundef %i.co) #7
  %indvars.iv.next346.i.us = add nuw nsw i64 %indvars.iv345.i.us, 1 ; 2 uses
  %exitcond349.not.i.us.a = icmp eq i64 %indvars.iv.next346.i.us, %wide.trip.count348.i.us
  %indvar.next152 = add i32 %indvar151, 1
  br i1 %exitcond349.not.i.us.a, label %._crit_edge326.i.us, label %.lr.ph.us.i.us

._crit_edge326.i.us:                              ; preds = %.lr.ph325.split.i.us, %._crit_edge.us.i.us, %bb.d
  tail call void @free(ptr noundef %i.co) #7
  tail call void @dt_box_mean_vertical(ptr noundef %i.ch, i64 noundef %i.cc, i64 noundef %i.cb, i32 noundef 16777220, i64 noundef %.pre.i) #7
  tail call void @dt_box_mean_vertical(ptr noundef %i.cj, i64 noundef %i.cc, i64 noundef %i.cb, i32 noundef 16777225, i64 noundef %.pre.i) #7
  %.not.i.us = icmp eq i64 %i.cd, 0
  br i1 %.not.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %._crit_edge326.i.us
  %min.iters.check113 = icmp ult i64 %i.cd, 8
  br i1 %min.iters.check113, label %.lr.ph.i.us.preheader217, label %vector.scevcheck103

vector.scevcheck103:                              ; preds = %.lr.ph.i.us.preheader
  %i.gj = add i64 %i.cd, -1
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gj, i64 36) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 3 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.gk = getelementptr i8, ptr %i.cj, i64 %mul.result
  %i.gl = icmp ult ptr %i.gk, %i.cj
  %scevgep104 = getelementptr i8, ptr %i.cj, i64 4 ; 2 uses
  %i.gm = getelementptr i8, ptr %scevgep104, i64 %mul.result
  %i.gn = icmp ult ptr %i.gm, %scevgep104
  %scevgep105 = getelementptr i8, ptr %i.cj, i64 8 ; 2 uses
  %i.go = getelementptr i8, ptr %scevgep105, i64 %mul.result
  %i.gp = icmp ult ptr %i.go, %scevgep105
  %i.gq = or i1 %i.gp, %mul.overflow
  %i.gr = or i1 %i.gn, %i.gl
  %i.gs = or i1 %i.gr, %i.gq
  br i1 %i.gs, label %.lr.ph.i.us.preheader217, label %vector.memcheck106

vector.memcheck106:                               ; preds = %vector.scevcheck103
  %i.gt = shl nsw i64 %i.cc, 4
  %i.gu = mul i64 %i.gt, %i.cb
  %scevgep107 = getelementptr i8, ptr %i.ch, i64 %i.gu
  %i.gv = mul nsw i64 %i.cc, 36
  %i.gw = mul i64 %i.gv, %i.cb
  %scevgep108 = getelementptr i8, ptr %i.cj, i64 %i.gw
  %bound0109 = icmp ult ptr %i.ch, %scevgep108
  %bound1110 = icmp ult ptr %i.cj, %scevgep107
  %found.conflict111 = and i1 %bound0109, %bound1110
  br i1 %found.conflict111, label %.lr.ph.i.us.preheader217, label %vector.ph114

vector.ph114:                                     ; preds = %vector.memcheck106
  %n.vec115 = and i64 %i.cd, -8                   ; 3 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next144, %vector.body118 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph114 ], [ %vec.ind.next, %vector.body118 ] ; 2 uses
  %i.gx = shl i64 %index119, 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.gx ; 2 uses
  %wide.vec120 = load <32 x float>, ptr %i.gy, align 64, !tbaa !17, !alias.scope !34, !noalias !37 ; 4 uses
  %strided.vec121 = shufflevector <32 x float> %wide.vec120, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec122 = shufflevector <32 x float> %wide.vec120, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 6 uses
  %strided.vec123 = shufflevector <32 x float> %wide.vec120, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 6 uses
  %strided.vec124 = shufflevector <32 x float> %wide.vec120, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 6 uses
  %i.gz = mul <8 x i64> %vec.ind, splat (i64 36)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.cj, <8 x i64> %i.gz ; 9 uses
  %wide.gep125 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep125, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.ha = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec122, %strided.vec122
  %i.hb = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.ha
  %i.hc = fadd reassoc nsz arcp contract afn <8 x float> %i.hb, %broadcast.splat117 ; 3 uses
  %wide.gep126 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.masked.gather127 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep126, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.hd = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec123, %strided.vec122
  %i.he = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather127, %i.hd ; 6 uses
  %wide.gep128 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.masked.gather129 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep128, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.hf = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec124, %strided.vec122
  %i.hg = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather129, %i.hf ; 6 uses
  %wide.gep130 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.masked.gather131 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep130, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.hh = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec123, %strided.vec123
  %i.hi = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather131, %i.hh
  %i.hj = fadd reassoc nsz arcp contract afn <8 x float> %i.hi, %broadcast.splat117 ; 3 uses
  %wide.gep132 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  %wide.masked.gather133 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep132, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.hk = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec124, %strided.vec123
  %i.hl = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather133, %i.hk ; 6 uses
  %wide.gep134 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.masked.gather135 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep134, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.hm = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec124, %strided.vec124
  %i.hn = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather135, %i.hm
  %i.ho = fadd reassoc nsz arcp contract afn <8 x float> %i.hn, %broadcast.splat117 ; 3 uses
  %i.hp = fmul reassoc nsz arcp contract afn <8 x float> %i.ho, %i.hj
  %i.hq = fmul reassoc nsz arcp contract afn <8 x float> %i.hl, %i.hl
  %i.hr = fsub reassoc nsz arcp contract afn <8 x float> %i.hp, %i.hq ; 2 uses
  %i.hs = fmul reassoc nsz arcp contract afn <8 x float> %i.hr, %i.hc
  %i.ht = fmul reassoc nsz arcp contract afn <8 x float> %i.ho, %i.he
  %i.hu = fmul reassoc nsz arcp contract afn <8 x float> %i.hl, %i.hg
  %i.hv = fsub reassoc nsz arcp contract afn <8 x float> %i.ht, %i.hu ; 2 uses
  %i.hw = fmul reassoc nsz arcp contract afn <8 x float> %i.hv, %i.he
  %i.hx = fsub reassoc nsz arcp contract afn <8 x float> %i.hs, %i.hw
  %i.hy = fmul reassoc nsz arcp contract afn <8 x float> %i.hl, %i.he
  %i.hz = fmul reassoc nsz arcp contract afn <8 x float> %i.hj, %i.hg
  %i.ia = fsub reassoc nsz arcp contract afn <8 x float> %i.hy, %i.hz ; 2 uses
  %i.ib = fmul reassoc nsz arcp contract afn <8 x float> %i.ia, %i.hg
  %i.ic = fadd reassoc nsz arcp contract afn <8 x float> %i.hx, %i.ib ; 4 uses
  %i.id = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.ic)
  %i.ie = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.id, splat (float f0x35000000) ; 7 uses
  %wide.masked.gather136 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.ie, <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec122, %strided.vec121
  %i.ig = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather136, %i.if ; 3 uses
  %wide.gep137 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather138 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep137, <8 x i1> %i.ie, <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.ih = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec123, %strided.vec121
  %i.ii = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather138, %i.ih ; 3 uses
  %wide.gep139 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather140 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep139, <8 x i1> %i.ie, <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.ij = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec124, %strided.vec121
  %i.ik = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather140, %i.ij ; 3 uses
  %i.il = fmul reassoc nsz arcp contract afn <8 x float> %i.ig, %i.hr
  %i.im = fmul reassoc nsz arcp contract afn <8 x float> %i.ii, %i.ho
  %i.in = fmul reassoc nsz arcp contract afn <8 x float> %i.ik, %i.hl
  %i.io = fsub reassoc nsz arcp contract afn <8 x float> %i.im, %i.in ; 2 uses
  %i.ip = fmul reassoc nsz arcp contract afn <8 x float> %i.ii, %i.hl ; 2 uses
  %i.iq = fmul reassoc nsz arcp contract afn <8 x float> %i.ik, %i.hj ; 2 uses
  %i.ir = fsub reassoc nsz arcp contract afn <8 x float> %i.ip, %i.iq
  %i.is = fmul reassoc nsz arcp contract afn <8 x float> %i.ir, %i.hg
  %i.it = fadd reassoc nsz arcp contract afn <8 x float> %i.is, %i.il
  %i.iu = fmul reassoc nsz arcp contract afn <8 x float> %i.he, %i.io
  %i.iv = fsub reassoc nsz arcp contract afn <8 x float> %i.it, %i.iu
  %i.iw = fmul reassoc nsz arcp contract afn <8 x float> %i.io, %i.hc
  %i.ix = fmul reassoc nsz arcp contract afn <8 x float> %i.hv, %i.ig
  %i.iy = fsub reassoc nsz arcp contract afn <8 x float> %i.iw, %i.ix
  %i.iz = fmul reassoc nsz arcp contract afn <8 x float> %i.ik, %i.he
  %i.ja = fmul reassoc nsz arcp contract afn <8 x float> %i.ii, %i.hg
  %i.jb = fsub reassoc nsz arcp contract afn <8 x float> %i.iz, %i.ja ; 2 uses
  %i.jc = fmul reassoc nsz arcp contract afn <8 x float> %i.jb, %i.hg
  %i.jd = fadd reassoc nsz arcp contract afn <8 x float> %i.iy, %i.jc
  %i.je = fsub reassoc nsz arcp contract afn <8 x float> %i.iq, %i.ip
  %i.jf = fmul reassoc nsz arcp contract afn <8 x float> %i.je, %i.hc
  %i.jg = fmul reassoc nsz arcp contract afn <8 x float> %i.ig, %i.ia
  %i.jh = fadd reassoc nsz arcp contract afn <8 x float> %i.jf, %i.jg
  %i.ji = fmul reassoc nsz arcp contract afn <8 x float> %i.he, %i.jb
  %i.jj = fsub reassoc nsz arcp contract afn <8 x float> %i.jh, %i.ji
  %i.jk = fdiv reassoc nsz arcp contract afn <8 x float> %i.iv, %i.ic ; 2 uses
  %i.jl = fdiv reassoc nsz arcp contract afn <8 x float> %i.jd, %i.ic ; 2 uses
  %i.jm = fdiv reassoc nsz arcp contract afn <8 x float> %i.jj, %i.ic ; 2 uses
  %i.jn = fmul reassoc nsz arcp contract afn <8 x float> %i.jl, %strided.vec123
  %i.jo = fmul reassoc nsz arcp contract afn <8 x float> %i.jm, %strided.vec124
  %i.jp = fmul reassoc nsz arcp contract afn <8 x float> %i.jk, %strided.vec122
  %i.jq = fadd reassoc nsz arcp contract afn <8 x float> %i.jn, %i.jo
  %i.jr = fadd reassoc nsz arcp contract afn <8 x float> %i.jq, %i.jp
  %i.js = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec121, %i.jr
  %predphi = select nsz <8 x i1> %i.ie, <8 x float> %i.js, <8 x float> %strided.vec121
  %predphi141 = select nsz <8 x i1> %i.ie, <8 x float> %i.jm, <8 x float> zeroinitializer
  %predphi142 = select nsz <8 x i1> %i.ie, <8 x float> %i.jl, <8 x float> zeroinitializer
  %predphi143 = select nsz <8 x i1> %i.ie, <8 x float> %i.jk, <8 x float> zeroinitializer
  %i.jt = shufflevector <8 x float> %predphi143, <8 x float> %predphi142, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.ju = shufflevector <8 x float> %predphi141, <8 x float> %predphi, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.jt, <16 x float> %i.ju, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.gy, align 64, !tbaa !17, !alias.scope !34, !noalias !37
  %index.next144 = add nuw i64 %index119, 8       ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.jv = icmp eq i64 %index.next144, %n.vec115
  br i1 %i.jv, label %middle.block145, label %vector.body118, !llvm.loop !39

middle.block145:                                  ; preds = %vector.body118
  %cmp.n146 = icmp eq i64 %i.cd, %n.vec115
  br i1 %cmp.n146, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader217

.lr.ph.i.us.preheader217:                         ; preds = %vector.memcheck106, %vector.scevcheck103, %.lr.ph.i.us.preheader, %middle.block145
  %.0271327.i.us.ph = phi i64 [ 0, %vector.memcheck106 ], [ 0, %vector.scevcheck103 ], [ 0, %.lr.ph.i.us.preheader ], [ %n.vec115, %middle.block145 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader217, %bb.f
  %.0271327.i.us = phi i64 [ %i.mw, %bb.f ], [ %.0271327.i.us.ph, %.lr.ph.i.us.preheader217 ] ; 3 uses
  %.idx309.i.us = shl i64 %.0271327.i.us, 4
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx309.i.us ; 5 uses
  %i.jx = load float, ptr %i.jw, align 16, !tbaa !17 ; 5 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 12 ; 2 uses
  %.idx310.i.us = mul i64 %.0271327.i.us, 36
  %i.kb = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.idx310.i.us ; 9 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 12
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kb, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kb, i64 20
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kb, i64 24
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kb, i64 28
  %11 = getelementptr inbounds nuw i8, ptr %i.kb, i64 32
  %i.kh = load float, ptr %i.ka, align 4, !tbaa !17 ; 6 uses
  %12 = load <2 x float>, ptr %i.jy, align 4, !tbaa !17 ; 5 uses
  %13 = extractelement <2 x float> %12, i64 0     ; 3 uses
  %foldExtExtBinop215 = fmul reassoc nsz arcp contract afn <2 x float> %12, %12
  %i.ki = extractelement <2 x float> %foldExtExtBinop215, i64 0
  %14 = load float, ptr %i.ke, align 4, !tbaa !17
  %15 = load float, ptr %i.kd, align 4, !tbaa !17
  %16 = load float, ptr %i.kf, align 4, !tbaa !17
  %17 = load float, ptr %i.kc, align 4, !tbaa !17
  %18 = fsub reassoc nsz arcp contract afn float %17, %i.ki
  %i.kj = fmul reassoc nsz arcp contract afn float %i.kh, %13
  %i.kk = fadd reassoc nsz arcp contract afn float %18, %i.h ; 3 uses
  %19 = extractelement <2 x float> %12, i64 1     ; 5 uses
  %20 = fmul reassoc nsz arcp contract afn float %19, %19
  %21 = fmul reassoc nsz arcp contract afn float %19, %13
  %i.kl = fsub reassoc nsz arcp contract afn float %16, %20
  %22 = fsub reassoc nsz arcp contract afn float %15, %21 ; 6 uses
  %23 = fadd reassoc nsz arcp contract afn float %i.kl, %i.h ; 3 uses
  %24 = load float, ptr %11, align 4, !tbaa !17
  %25 = load float, ptr %i.kg, align 4, !tbaa !17
  %26 = fmul reassoc nsz arcp contract afn float %i.kh, %i.kh
  %27 = fsub reassoc nsz arcp contract afn float %24, %26
  %28 = fmul reassoc nsz arcp contract afn float %i.kh, %19
  %29 = fsub reassoc nsz arcp contract afn float %14, %i.kj ; 6 uses
  %30 = fadd reassoc nsz arcp contract afn float %27, %i.h ; 3 uses
  %31 = fsub reassoc nsz arcp contract afn float %25, %28 ; 6 uses
  %i.km = fmul reassoc nsz arcp contract afn float %30, %22
  %32 = fmul reassoc nsz arcp contract afn float %30, %23
  %i.kn = fmul reassoc nsz arcp contract afn float %31, %29
  %i.ko = fmul reassoc nsz arcp contract afn float %31, %31
  %i.kp = fsub reassoc nsz arcp contract afn float %i.km, %i.kn ; 2 uses
  %i.kq = fsub reassoc nsz arcp contract afn float %32, %i.ko ; 2 uses
  %i.kr = fmul reassoc nsz arcp contract afn float %i.kq, %i.kk
  %i.ks = fmul reassoc nsz arcp contract afn float %i.kp, %22
  %i.kt = fsub reassoc nsz arcp contract afn float %i.kr, %i.ks
  %i.ku = fmul reassoc nsz arcp contract afn float %31, %22
  %i.kv = fmul reassoc nsz arcp contract afn float %23, %29
  %i.kw = fsub reassoc nsz arcp contract afn float %i.ku, %i.kv ; 2 uses
  %i.kx = fmul reassoc nsz arcp contract afn float %i.kw, %29
  %i.ky = fadd reassoc nsz arcp contract afn float %i.kt, %i.kx ; 3 uses
  %i.kz = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ky)
  %i.la = fcmp reassoc nsz arcp contract afn ogt float %i.kz, f0x35000000
  br i1 %i.la, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.us
  %i.lb = load float, ptr %i.kb, align 4, !tbaa !17
  %i.lc = fmul reassoc nsz arcp contract afn float %13, %i.jx
  %i.ld = fsub reassoc nsz arcp contract afn float %i.lb, %i.lc ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.kb, i64 4
  %i.lf = fmul reassoc nsz arcp contract afn float %19, %i.jx
  %i.lg = getelementptr inbounds nuw i8, ptr %i.kb, i64 8
  %i.lh = fmul reassoc nsz arcp contract afn float %i.kh, %i.jx
  %i.li = fmul reassoc nsz arcp contract afn float %i.ld, %i.kw
  %i.lj = load float, ptr %i.lg, align 4, !tbaa !17
  %i.lk = load float, ptr %i.le, align 4, !tbaa !17
  %i.ll = fsub reassoc nsz arcp contract afn float %i.lj, %i.lh ; 3 uses
  %i.lm = fsub reassoc nsz arcp contract afn float %i.lk, %i.lf ; 3 uses
  %i.ln = fmul reassoc nsz arcp contract afn float %i.lm, %31 ; 2 uses
  %i.lo = fmul reassoc nsz arcp contract afn float %i.ll, %23 ; 2 uses
  %i.lp = fmul reassoc nsz arcp contract afn float %i.ll, %22
  %i.lq = fmul reassoc nsz arcp contract afn float %i.lm, %30
  %i.lr = fmul reassoc nsz arcp contract afn float %i.lm, %29
  %i.ls = fmul reassoc nsz arcp contract afn float %i.ll, %31
  %i.lt = fsub reassoc nsz arcp contract afn float %i.ln, %i.lo
  %i.lu = fsub reassoc nsz arcp contract afn float %i.lp, %i.lr ; 2 uses
  %i.lv = fsub reassoc nsz arcp contract afn float %i.lq, %i.ls ; 2 uses
  %i.lw = fmul reassoc nsz arcp contract afn float %i.lv, %i.kk
  %i.lx = fmul reassoc nsz arcp contract afn float %i.lt, %29
  %i.ly = fmul reassoc nsz arcp contract afn float %i.kp, %i.ld
  %i.lz = fmul reassoc nsz arcp contract afn float %i.ld, %i.kq
  %i.ma = fsub reassoc nsz arcp contract afn float %i.lw, %i.ly
  %i.mb = fadd reassoc nsz arcp contract afn float %i.lx, %i.lz
  %i.mc = fmul reassoc nsz arcp contract afn float %i.lu, %29
  %i.md = fmul reassoc nsz arcp contract afn float %22, %i.lv
  %i.me = fadd reassoc nsz arcp contract afn float %i.ma, %i.mc
  %i.mf = fsub reassoc nsz arcp contract afn float %i.mb, %i.md
  %i.mg = fsub reassoc nsz arcp contract afn float %i.lo, %i.ln
  %i.mh = fmul reassoc nsz arcp contract afn float %i.mg, %i.kk
  %i.mi = fadd reassoc nsz arcp contract afn float %i.mh, %i.li
  %i.mj = fmul reassoc nsz arcp contract afn float %22, %i.lu
  %i.mk = fsub reassoc nsz arcp contract afn float %i.mi, %i.mj
  %i.ml = insertelement <2 x float> poison, float %i.mf, i64 0
  %i.mm = insertelement <2 x float> %i.ml, float %i.me, i64 1
  %i.mn = insertelement <2 x float> poison, float %i.ky, i64 0
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mp = fdiv reassoc nsz arcp contract afn <2 x float> %i.mm, %i.mo ; 2 uses
  %i.mq = fdiv reassoc nsz arcp contract afn float %i.mk, %i.ky ; 2 uses
  %.neg316.i.neg.us = fmul reassoc nsz arcp contract afn float %i.mq, %i.kh
  %i.mr = fmul reassoc nsz arcp contract afn <2 x float> %i.mp, %12 ; 2 uses
  %i.ms = extractelement <2 x float> %i.mr, i64 1
  %reass.add.us = fadd reassoc nsz arcp contract afn float %i.ms, %.neg316.i.neg.us
  %i.mt = extractelement <2 x float> %i.mr, i64 0
  %reass.add52.us = fadd reassoc nsz arcp contract afn float %reass.add.us, %i.mt
  %i.mu = fsub reassoc nsz arcp contract afn float %i.jx, %reass.add52.us
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.us
  %.0275.i.us = phi nsz float [ %i.mu, %bb.e ], [ %i.jx, %.lr.ph.i.us ]
  %.0274.i.us = phi nsz float [ %i.mq, %bb.e ], [ 0.000000e+00, %.lr.ph.i.us ]
  %i.mv = phi <2 x float> [ %i.mp, %bb.e ], [ zeroinitializer, %.lr.ph.i.us ]
  store <2 x float> %i.mv, ptr %i.jw, align 16, !tbaa !17
  store float %.0274.i.us, ptr %i.jz, align 8, !tbaa !17
  store float %.0275.i.us, ptr %i.ka, align 4, !tbaa !17
  %i.mw = add nuw i64 %.0271327.i.us, 1           ; 2 uses
  %exitcond350.not.i.us = icmp eq i64 %i.mw, %i.cd
  br i1 %exitcond350.not.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us, !llvm.loop !40

._crit_edge.i.us:                                 ; preds = %bb.f, %middle.block145, %._crit_edge326.i.us
  tail call void @free(ptr noundef %i.cj) #7
  tail call void @dt_box_mean(ptr noundef %i.ch, i64 noundef %i.cc, i64 noundef %i.cb, i32 noundef 16777220, i64 noundef %.pre.i, i32 noundef 1) #7
  br i1 %i.aj, label %.lr.ph336.i.us, label %_guided_filter_tiling.exit.us

.lr.ph336.i.us:                                   ; preds = %._crit_edge.i.us
  %i.mx = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %i.bp)
  %i.my = sext i32 %i.mx to i64                   ; 2 uses
  %i.mz = sext i32 %i.bn to i64                   ; 2 uses
  %i.na = icmp slt i64 %indvars.iv, %i.mz
  br i1 %i.na, label %.lr.ph332.preheader.i.us, label %_guided_filter_tiling.exit.us

.lr.ph332.preheader.i.us:                         ; preds = %.lr.ph336.i.us
  %i.nb = zext nneg i32 %i.bw to i64              ; 2 uses
  %i.nc = sub i64 %indvars.iv60, %i.nb
  %i.nd = shl i64 %i.nc, 4
  %i.ne = mul i64 %i.nd, %i.cb                    ; 2 uses
  %i.nf = shl nsw i64 %i.my, 4                    ; 2 uses
  %i.ng = getelementptr i8, ptr %i.ch, i64 %i.ne
  %scevgep81 = getelementptr i8, ptr %i.ng, i64 %i.nf
  %scevgep82 = getelementptr i8, ptr %i.ch, i64 16
  %i.nh = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.bt)
  %smin83 = sext i32 %i.nh to i64
  %i.ni = zext nneg i32 %i.bs to i64
  %i.nj = sub nsw i64 %smin83, %i.ni              ; 2 uses
  %i.nk = shl nsw i64 %i.nj, 4
  %i.nl = mul i64 %i.ae, %i.nk
  %i.nm = getelementptr i8, ptr %scevgep82, i64 %i.ne
  %i.nn = getelementptr i8, ptr %i.nm, i64 %i.nl
  %i.no = getelementptr i8, ptr %i.nn, i64 %i.nf
  %scevgep84 = getelementptr i8, ptr %i.no, i64 %i.bl
  %min.iters.check = icmp ugt i64 %i.ba, 7
  %or.cond213 = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %scevgep, %scevgep84
  %bound1 = icmp ult ptr %scevgep81, %scevgep80
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.nj, 0
  %i.np = or i1 %found.conflict, %stride.check
  %bound088 = icmp ult ptr %scevgep, %scevgep87
  %bound189 = icmp ult ptr %scevgep85.a, %scevgep80
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx = or i1 %i.np, %found.conflict90
  %n.vec = and i64 %i.ba, -8                      ; 5 uses
  %i.nq = add i64 %indvars.iv, %n.vec
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  %i.nr = add nsw i64 %smin220, -1
  br label %.lr.ph332.i.us

.lr.ph332.i.us:                                   ; preds = %._crit_edge333.i.us, %.lr.ph332.preheader.i.us
  %indvars.iv356.i.us = phi i64 [ %indvars.iv60, %.lr.ph332.preheader.i.us ], [ %indvars.iv.next357.i.us, %._crit_edge333.i.us ] ; 3 uses
  %i.ns = mul nsw i64 %indvars.iv356.i.us, %i.k   ; 2 uses
  %i.nt = add nsw i64 %i.ns, %indvars.iv          ; 3 uses
  %i.nu = sub nsw i64 %indvars.iv356.i.us, %i.nb
  %i.nv = mul nsw i64 %i.nu, %i.cb
  %i.nw = add i64 %i.nv, %i.my                    ; 3 uses
  %i.nx = getelementptr [4 x i8], ptr %2, i64 %i.ns ; 4 uses
  %or.cond213.not = xor i1 %or.cond213, true
  %brmerge = select i1 %or.cond213.not, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph332.i.us
  %i.ny = add i64 %i.nw, %n.vec
  %i.nz = add i64 %i.nt, %n.vec
  %i.oa = getelementptr [4 x i8], ptr %0, i64 %i.nt
  %i.ob = getelementptr [4 x i8], ptr %i.nx, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.oc = add i64 %i.nw, %index
  %i.od = getelementptr [4 x i8], ptr %i.oa, i64 %index ; 3 uses
  %i.oe = shl i64 %i.oc, 4
  %i.of = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.oe
  %wide.vec = load <32 x float>, ptr %i.of, align 16, !tbaa !17, !alias.scope !41 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec96 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec97 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec98 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.load = load <8 x float>, ptr %i.od, align 4, !tbaa !17, !alias.scope !44
  %i.og = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %strided.vec
  %i.oh = getelementptr inbounds nuw i8, ptr %i.od, i64 4
  %wide.load99 = load <8 x float>, ptr %i.oh, align 4, !tbaa !17, !alias.scope !44
  %i.oi = fmul reassoc nsz arcp contract afn <8 x float> %wide.load99, %strided.vec96
  %i.oj = fadd reassoc nsz arcp contract afn <8 x float> %i.oi, %i.og
  %i.ok = getelementptr inbounds nuw i8, ptr %i.od, i64 8
  %wide.load100 = load <8 x float>, ptr %i.ok, align 4, !tbaa !17, !alias.scope !44
  %i.ol = fmul reassoc nsz arcp contract afn <8 x float> %wide.load100, %strided.vec97
  %i.om = fadd reassoc nsz arcp contract afn <8 x float> %i.oj, %i.ol
  %i.on = fmul reassoc nsz arcp contract afn <8 x float> %i.om, %broadcast.splat
  %i.oo = fadd reassoc nsz arcp contract afn <8 x float> %i.on, %strided.vec98 ; 3 uses
  %i.op = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.oo, %broadcast.splat93
  %i.oq = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.oo, %broadcast.splat95
  %i.or = select reassoc nsz arcp contract afn <8 x i1> %i.oq, <8 x float> %broadcast.splat95, <8 x float> %i.oo
  %i.os = select reassoc nsz arcp contract afn <8 x i1> %i.op, <8 x float> %broadcast.splat93, <8 x float> %i.or
  %i.ot = getelementptr [4 x i8], ptr %i.ob, i64 %index
  store <8 x float> %i.os, ptr %i.ot, align 4, !tbaa !17, !alias.scope !46, !noalias !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ou = icmp eq i64 %index.next, %n.vec
  br i1 %i.ou, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge333.i.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph332.i.us, %middle.block
  %indvars.iv351.i.us.ph = phi i64 [ %i.nq, %middle.block ], [ %indvars.iv, %.lr.ph332.i.us ] ; 5 uses
  %.0267329.i.us.ph = phi i64 [ %i.ny, %middle.block ], [ %i.nw, %.lr.ph332.i.us ] ; 3 uses
  %.0268328.i.us.ph = phi i64 [ %i.nz, %middle.block ], [ %i.nt, %.lr.ph332.i.us ] ; 3 uses
  %i.ov = sub i64 %smin220, %indvars.iv351.i.us.ph
  %xtraiter = and i64 %i.ov, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ow = mul i64 %.0268328.i.us.ph, %i.l
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ow ; 2 uses
  %.idx.i.us.prol = shl i64 %.0267329.i.us.ph, 4
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i.us.prol ; 3 uses
  %i.oz = load float, ptr %i.oy, align 16, !tbaa !17
  %i.pa = load float, ptr %i.ox, align 4, !tbaa !17
  %i.pb = fmul reassoc nsz arcp contract afn float %i.pa, %i.oz
  %i.pc = getelementptr inbounds nuw i8, ptr %i.oy, i64 4
  %i.pd = getelementptr inbounds nuw i8, ptr %i.ox, i64 4
  %i.pe = load <2 x float>, ptr %i.pc, align 4, !tbaa !17
  %i.pf = load <2 x float>, ptr %i.pd, align 4, !tbaa !17
  %i.pg = fmul reassoc nsz arcp contract afn <2 x float> %i.pf, %i.pe ; 2 uses
  %i.ph = extractelement <2 x float> %i.pg, i64 0
  %i.pi = fadd reassoc nsz arcp contract afn float %i.ph, %i.pb
  %i.pj = extractelement <2 x float> %i.pg, i64 1
  %i.pk = fadd reassoc nsz arcp contract afn float %i.pi, %i.pj
  %i.pl = fmul reassoc nsz arcp contract afn float %i.pk, %8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.oy, i64 12
  %i.pn = load float, ptr %i.pm, align 4, !tbaa !17
  %i.po = fadd reassoc nsz arcp contract afn float %i.pl, %i.pn ; 3 uses
  %i.pp = fcmp reassoc nsz arcp contract afn ogt float %i.po, %10
  %i.pq = fcmp reassoc nsz arcp contract afn olt float %i.po, %9
  %i.pr = select reassoc nsz arcp contract afn i1 %i.pq, float %9, float %i.po
  %i.ps = select reassoc nsz arcp contract afn i1 %i.pp, float %10, float %i.pr
  %i.pt = getelementptr [4 x i8], ptr %i.nx, i64 %indvars.iv351.i.us.ph
  store float %i.ps, ptr %i.pt, align 4, !tbaa !17
  %indvars.iv.next352.i.us.prol = add nsw i64 %indvars.iv351.i.us.ph, 1
  %i.pu = add i64 %.0267329.i.us.ph, 1
  %i.pv = add i64 %.0268328.i.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv351.i.us.unr = phi i64 [ %indvars.iv351.i.us.ph, %scalar.ph.preheader ], [ %indvars.iv.next352.i.us.prol, %scalar.ph.prol ]
  %.0267329.i.us.unr = phi i64 [ %.0267329.i.us.ph, %scalar.ph.preheader ], [ %i.pu, %scalar.ph.prol ]
  %.0268328.i.us.unr = phi i64 [ %.0268328.i.us.ph, %scalar.ph.preheader ], [ %i.pv, %scalar.ph.prol ]
  %i.pw = icmp eq i64 %indvars.iv351.i.us.ph, %i.nr
  br i1 %i.pw, label %._crit_edge333.i.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv351.i.us = phi i64 [ %indvars.iv.next352.i.us.1, %scalar.ph ], [ %indvars.iv351.i.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0267329.i.us = phi i64 [ %i.rx, %scalar.ph ], [ %.0267329.i.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0268328.i.us = phi i64 [ %i.ry, %scalar.ph ], [ %.0268328.i.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.px = mul i64 %.0268328.i.us, %i.l
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.px ; 2 uses
  %.idx.i.us = shl i64 %.0267329.i.us, 4
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ch, i64 %.idx.i.us ; 3 uses
  %i.qa = load float, ptr %i.pz, align 16, !tbaa !17
  %i.qb = load float, ptr %i.py, align 4, !tbaa !17
  %i.qc = fmul reassoc nsz arcp contract afn float %i.qb, %i.qa
  %i.qd = getelementptr inbounds nuw i8, ptr %i.pz, i64 4
  %i.qe = getelementptr inbounds nuw i8, ptr %i.py, i64 4
  %i.qf = load <2 x float>, ptr %i.qd, align 4, !tbaa !17
  %i.qg = load <2 x float>, ptr %i.qe, align 4, !tbaa !17
  %i.qh = fmul reassoc nsz arcp contract afn <2 x float> %i.qg, %i.qf ; 2 uses
  %i.qi = extractelement <2 x float> %i.qh, i64 0
  %i.qj = fadd reassoc nsz arcp contract afn float %i.qi, %i.qc
  %i.qk = extractelement <2 x float> %i.qh, i64 1
  %i.ql = fadd reassoc nsz arcp contract afn float %i.qj, %i.qk
  %i.qm = fmul reassoc nsz arcp contract afn float %i.ql, %8
  %i.qn = getelementptr inbounds nuw i8, ptr %i.pz, i64 12
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !17
  %i.qp = fadd reassoc nsz arcp contract afn float %i.qm, %i.qo ; 3 uses
  %i.qq = fcmp reassoc nsz arcp contract afn ogt float %i.qp, %10
  %i.qr = fcmp reassoc nsz arcp contract afn olt float %i.qp, %9
  %i.qs = select reassoc nsz arcp contract afn i1 %i.qr, float %9, float %i.qp
  %i.qt = select reassoc nsz arcp contract afn i1 %i.qq, float %10, float %i.qs
  %i.qu = getelementptr [4 x i8], ptr %i.nx, i64 %indvars.iv351.i.us
  store float %i.qt, ptr %i.qu, align 4, !tbaa !17
  %i.qv = add i64 %.0268328.i.us, 1
  %i.qw = mul i64 %i.qv, %i.l
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qw ; 2 uses
  %i.qy = shl i64 %.0267329.i.us, 4
  %i.qz = getelementptr i8, ptr %i.ch, i64 %i.qy  ; 3 uses
  %i.ra = getelementptr i8, ptr %i.qz, i64 16
  %i.rb = load float, ptr %i.ra, align 16, !tbaa !17
  %i.rc = load float, ptr %i.qx, align 4, !tbaa !17
  %i.rd = fmul reassoc nsz arcp contract afn float %i.rc, %i.rb
  %i.re = getelementptr i8, ptr %i.qz, i64 20
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  %i.rg = load <2 x float>, ptr %i.re, align 4, !tbaa !17
  %i.rh = load <2 x float>, ptr %i.rf, align 4, !tbaa !17
  %i.ri = fmul reassoc nsz arcp contract afn <2 x float> %i.rh, %i.rg ; 2 uses
  %i.rj = extractelement <2 x float> %i.ri, i64 0
  %i.rk = fadd reassoc nsz arcp contract afn float %i.rj, %i.rd
  %i.rl = extractelement <2 x float> %i.ri, i64 1
  %i.rm = fadd reassoc nsz arcp contract afn float %i.rk, %i.rl
  %i.rn = fmul reassoc nsz arcp contract afn float %i.rm, %8
  %i.ro = getelementptr i8, ptr %i.qz, i64 28
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !17
  %i.rq = fadd reassoc nsz arcp contract afn float %i.rn, %i.rp ; 3 uses
  %i.rr = fcmp reassoc nsz arcp contract afn ogt float %i.rq, %10
  %i.rs = fcmp reassoc nsz arcp contract afn olt float %i.rq, %9
  %i.rt = select reassoc nsz arcp contract afn i1 %i.rs, float %9, float %i.rq
  %i.ru = select reassoc nsz arcp contract afn i1 %i.rr, float %10, float %i.rt
  %i.rv = getelementptr [4 x i8], ptr %i.nx, i64 %indvars.iv351.i.us
  %i.rw = getelementptr i8, ptr %i.rv, i64 4
  store float %i.ru, ptr %i.rw, align 4, !tbaa !17
  %indvars.iv.next352.i.us.1 = add nsw i64 %indvars.iv351.i.us, 2 ; 2 uses
  %i.rx = add i64 %.0267329.i.us, 2
  %i.ry = add i64 %.0268328.i.us, 2
  %exitcond355.not.i.us.1 = icmp eq i64 %indvars.iv.next352.i.us.1, %i.mz
  br i1 %exitcond355.not.i.us.1, label %._crit_edge333.i.us, label %scalar.ph, !llvm.loop !50

._crit_edge333.i.us:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next357.i.us = add nsw i64 %indvars.iv356.i.us, 1 ; 2 uses
  %exitcond360.not.i.us = icmp eq i64 %indvars.iv.next357.i.us, %i.ai
  br i1 %exitcond360.not.i.us, label %_guided_filter_tiling.exit.us, label %.lr.ph332.i.us

_guided_filter_tiling.exit.us:                    ; preds = %._crit_edge333.i.us, %.lr.ph336.i.us, %._crit_edge.i.us
  tail call void @free(ptr noundef %i.ch) #7
  %i.rz = icmp slt i64 %indvars.iv.next, %i.k
  %indvar.next77 = add i64 %indvar76, 1
  br i1 %i.rz, label %bb.d, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %_guided_filter_tiling.exit.us
  %i.sa = icmp slt i64 %indvars.iv.next61, %i.n
  %indvar.next = add i64 %indvar, 1
  br i1 %i.sa, label %.preheader.us, label %._crit_edge56

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04355 = phi i32 [ %i.sb, %.preheader ], [ 0, %.preheader.lr.ph ]
  %i.sb = add nsw i32 %.04355, %i.g               ; 2 uses
  %i.sc = icmp slt i32 %i.sb, %4
  br i1 %i.sc, label %.preheader, label %._crit_edge56

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
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_new_color_image: argument 0"}
!13 = distinct !{!13, !"_new_color_image"}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_new_color_image: argument 0"}
!16 = distinct !{!16, !"_new_color_image"}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !9, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21}
!21 = distinct !{!21, !"LVerDomain"}
!22 = !{!23}
!23 = distinct !{!23, !21}
!24 = !{!25}
!25 = distinct !{!25, !21}
!26 = !{!27, !20, !23}
!27 = distinct !{!27, !21}
!28 = !{!27}
!29 = !{!20, !23}
!30 = distinct !{!30, !31, !32}
!31 = !{!"llvm.loop.isvectorized", i32 1}
!32 = !{!"llvm.loop.unroll.runtime.disable"}
!33 = distinct !{!33, !31}
!34 = !{!35}
!35 = distinct !{!35, !36}
!36 = distinct !{!36, !"LVerDomain"}
!37 = !{!38}
!38 = distinct !{!38, !36}
!39 = distinct !{!39, !31, !32}
!40 = distinct !{!40, !31}
!41 = !{!42}
!42 = distinct !{!42, !43}
!43 = distinct !{!43, !"LVerDomain"}
!44 = !{!45}
!45 = distinct !{!45, !43}
!46 = !{!47}
!47 = distinct !{!47, !43}
!48 = !{!42, !45}
!49 = distinct !{!49, !31, !32}
!50 = distinct !{!50, !31}
end_hunk_0
