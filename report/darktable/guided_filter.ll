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
  %i.r = shl nuw nsw i64 %i.k, 2
  %i.s = zext nneg i32 %4 to i64
  %scevgep157 = getelementptr i8, ptr %0, i64 8
  %i.t = shl nuw nsw i64 %i.k, 2
  %i.u = shl nuw nsw i64 %i.k, 2
  %ident.check148.not = icmp eq i32 %5, 1
  %broadcast.splatinsert186 = insertelement <8 x float> poison, float %8, i64 0
  %broadcast.splat187 = shufflevector <8 x float> %broadcast.splatinsert186, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.v = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %8, i64 1
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %broadcast.splatinsert115 = insertelement <8 x float> poison, float %i.h, i64 0
  %broadcast.splat116 = shufflevector <8 x float> %broadcast.splatinsert115, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %ident.check.not = icmp eq i32 %5, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %8, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <8 x float> poison, float %10, i64 0
  %broadcast.splat92 = shufflevector <8 x float> %broadcast.splatinsert91, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert93 = insertelement <8 x float> poison, float %9, i64 0
  %broadcast.splat94 = shufflevector <8 x float> %broadcast.splatinsert93, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
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
  %indvar76 = phi i64 [ 0, %.preheader.us ], [ %indvar.next77, %_guided_filter_tiling.exit.us ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_guided_filter_tiling.exit.us ] ; 7 uses
  %11 = mul i64 %indvar76, %i.m
  %i.ar = mul i64 %i.q, %indvar76                 ; 3 uses
  %i.as = add i64 %i.x, %i.ar                     ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.as  ; 2 uses
  %scevgep78 = getelementptr i8, ptr %i.an, i64 %i.ar
  %i.at = trunc i64 %indvar76 to i32
  %i.au = add i32 %i.at, 1
  %i.av = mul i32 %i.au, %i.g
  %i.aw = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.av)
  %smin79 = sext i32 %i.aw to i64
  %i.ax = mul i64 %indvar76, %i.m
  %i.ay = xor i64 %i.ax, -1
  %i.az = add i64 %smin79, %i.ay                  ; 2 uses
  %i.ba = shl i64 %i.az, 2                        ; 2 uses
  %scevgep80 = getelementptr i8, ptr %scevgep78, i64 %i.ba ; 2 uses
  %i.bb = shl i64 %i.az, 4
  %scevgep85 = getelementptr i8, ptr %0, i64 %i.as
  %scevgep86 = getelementptr i8, ptr %i.aq, i64 %i.ar
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.ba
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
  %i.br = sext i32 %i.bp to i64                   ; 14 uses
  %i.bs = sext i32 %i.bq to i64                   ; 7 uses
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
  %i.cg = shl i32 %i.bp, 2                        ; 3 uses
  %i.ch = mul i32 %i.bp, 9                        ; 3 uses
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
  %i.cu = sub nsw i64 %wide.trip.count343.i.us, %i.cs
  %i.cv = shl nsw i64 %i.cu, 4
  %scevgep150 = getelementptr i8, ptr %i.bx, i64 %i.cv
  %i.cw = mul nuw nsw i64 %wide.trip.count343.i.us, 36
  %.neg = mul nsw i64 %i.cs, -36
  %i.cx = getelementptr i8, ptr %i.bz, i64 %.neg
  %scevgep154 = getelementptr i8, ptr %i.cx, i64 %i.cw
  %i.cy = mul nuw nsw i64 %i.k, %i.ct             ; 2 uses
  %i.cz = add nuw nsw i64 %i.cy, %i.cs
  %i.da = shl i64 %i.cz, 2
  %scevgep156 = getelementptr i8, ptr %0, i64 %i.da ; 2 uses
  %i.db = xor i64 %i.ct, -1
  %i.dc = add nsw i64 %i.db, %wide.trip.count348.i.us
  %i.dd = mul i64 %i.t, %i.dc
  %i.de = add nuw nsw i64 %i.cy, %wide.trip.count343.i.us
  %i.df = shl i64 %i.de, 2
  %i.dg = add i64 %i.dd, %i.df                    ; 2 uses
  %scevgep158 = getelementptr i8, ptr %scevgep157, i64 %i.dg ; 2 uses
  %i.dh = mul nuw i64 %i.u, %i.ct
  %i.di = shl nuw nsw i64 %i.cs, 2
  %i.dj = getelementptr i8, ptr %1, i64 %i.dh
  %scevgep159 = getelementptr i8, ptr %i.dj, i64 %i.di ; 2 uses
  %scevgep160 = getelementptr i8, ptr %1, i64 %i.dg ; 2 uses
  %i.dk = sub nsw i64 %wide.trip.count343.i.us, %i.cs ; 3 uses
  %min.iters.check181 = icmp ugt i64 %i.dk, 7
  %or.cond = and i1 %min.iters.check181, %ident.check148.not
  %n.vec183 = and i64 %i.dk, -8                   ; 3 uses
  %i.dl = add nsw i64 %n.vec183, %i.cs
  %broadcast.splatinsert184 = insertelement <8 x i64> poison, i64 %i.cs, i64 0
  %broadcast.splat185 = shufflevector <8 x i64> %broadcast.splatinsert184, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <8 x i64> %broadcast.splat185, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n208 = icmp eq i64 %i.dk, %n.vec183
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %._crit_edge.us.i.us, %.lr.ph.us.preheader.i.us
  %indvar151 = phi i32 [ %indvar.next152, %._crit_edge.us.i.us ], [ 0, %.lr.ph.us.preheader.i.us ] ; 3 uses
  %indvars.iv345.i.us = phi i64 [ %indvars.iv.next346.i.us, %._crit_edge.us.i.us ], [ %i.ct, %.lr.ph.us.preheader.i.us ] ; 3 uses
  %i.dm = trunc i64 %indvars.iv345.i.us to i32
  %i.dn = sub i32 %i.dm, %i.bm                    ; 2 uses
  %i.do = mul i32 %i.dn, %i.cg
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.dp ; 6 uses
  %i.dr = mul i32 %i.dn, %i.ch
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr [4 x i8], ptr %i.bz, i64 %i.ds ; 6 uses
  %i.du = mul nuw nsw i64 %indvars.iv345.i.us, %i.k ; 3 uses
  %i.dv = getelementptr [4 x i8], ptr %1, i64 %i.du ; 2 uses
  br i1 %or.cond, label %vector.memcheck149, label %scalar.ph180.preheader

vector.memcheck149:                               ; preds = %.lr.ph.us.i.us
  %i.dw = mul i32 %i.ch, %indvar151
  %i.dx = sext i32 %i.dw to i64
  %i.dy = shl nsw i64 %i.dx, 2
  %scevgep155 = getelementptr i8, ptr %scevgep154, i64 %i.dy ; 3 uses
  %i.dz = mul i32 %i.cg, %indvar151
  %i.ea = sext i32 %i.dz to i64
  %i.eb = shl nsw i64 %i.ea, 2
  %scevgep153 = getelementptr i8, ptr %scevgep150, i64 %i.eb ; 3 uses
  %bound0161 = icmp ult ptr %i.dq, %scevgep155
  %bound1162 = icmp ult ptr %i.dt, %scevgep153
  %found.conflict163 = and i1 %bound0161, %bound1162
  %bound0164 = icmp ult ptr %i.dq, %scevgep158
  %bound1165 = icmp ult ptr %scevgep156, %scevgep153
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %found.conflict163, %found.conflict166
  %bound0168 = icmp ult ptr %i.dq, %scevgep160
  %bound1169 = icmp ult ptr %scevgep159, %scevgep153
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %i.dt, %scevgep158
  %bound1173 = icmp ult ptr %scevgep156, %scevgep155
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  %bound0176 = icmp ult ptr %i.dt, %scevgep160
  %bound1177 = icmp ult ptr %scevgep159, %scevgep155
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  br i1 %conflict.rdx179, label %scalar.ph180.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck149
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.du
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph182
  %index189 = phi i64 [ 0, %vector.ph182 ], [ %index.next205, %vector.body188 ] ; 2 uses
  %vec.ind190 = phi <8 x i64> [ %induction, %vector.ph182 ], [ %vec.ind.next206, %vector.body188 ] ; 2 uses
  %i.ec = add nuw i64 %index189, %i.cs            ; 2 uses
  %i.ed = sub nuw nsw <8 x i64> %vec.ind190, %broadcast.splat185 ; 2 uses
  %i.ee = extractelement <8 x i64> %i.ed, i64 0
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ec ; 3 uses
  %wide.load191 = load <8 x float>, ptr %gep, align 4, !tbaa !36, !alias.scope !37
  %i.ef = fmul reassoc nsz arcp contract afn <8 x float> %wide.load191, %broadcast.splat187 ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load192 = load <8 x float>, ptr %i.eg, align 4, !tbaa !36, !alias.scope !37
  %i.eh = fmul reassoc nsz arcp contract afn <8 x float> %wide.load192, %broadcast.splat187 ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load193 = load <8 x float>, ptr %i.ei, align 4, !tbaa !36, !alias.scope !37
  %i.ej = fmul reassoc nsz arcp contract afn <8 x float> %wide.load193, %broadcast.splat187 ; 6 uses
  %i.ek = getelementptr [4 x i8], ptr %i.dv, i64 %i.ec
  %wide.load194 = load <8 x float>, ptr %i.ek, align 4, !tbaa !36, !alias.scope !38 ; 4 uses
  %i.el = shl nuw nsw i64 %i.ee, 4
  %i.em = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.el
  %i.en = shufflevector <8 x float> %wide.load194, <8 x float> %i.ef, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.eo = shufflevector <8 x float> %i.eh, <8 x float> %i.ej, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec195 = shufflevector <16 x float> %i.en, <16 x float> %i.eo, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec195, ptr %i.em, align 16, !tbaa !36, !alias.scope !39, !noalias !40
  %i.ep = fmul reassoc nsz arcp contract afn <8 x float> %wide.load194, %i.ef
  %i.eq = mul nuw nsw <8 x i64> %i.ed, splat (i64 36)
  %wide.gep196 = getelementptr inbounds nuw i8, ptr %i.dt, <8 x i64> %i.eq ; 9 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ep, <8 x ptr> align 4 %wide.gep196, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.er = fmul reassoc nsz arcp contract afn <8 x float> %wide.load194, %i.eh
  %wide.gep197 = getelementptr i8, <8 x ptr> %wide.gep196, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.er, <8 x ptr> align 4 %wide.gep197, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.es = fmul reassoc nsz arcp contract afn <8 x float> %i.ej, %wide.load194
end_hunk_0
begin_hunk_1_@guided_filter:bb.a
  %i.ij = fadd reassoc nsz arcp contract afn <8 x float> %i.ii, %i.ib
  %i.ik = fmul reassoc nsz arcp contract afn <8 x float> %i.gu, %i.ie
  %i.il = fsub reassoc nsz arcp contract afn <8 x float> %i.ij, %i.ik
  %i.im = fmul reassoc nsz arcp contract afn <8 x float> %i.ie, %i.gs
  %i.in = fmul reassoc nsz arcp contract afn <8 x float> %i.hl, %i.hw
  %i.io = fsub reassoc nsz arcp contract afn <8 x float> %i.im, %i.in
  %i.ip = fmul reassoc nsz arcp contract afn <8 x float> %i.ia, %i.gu
  %i.iq = fmul reassoc nsz arcp contract afn <8 x float> %i.hy, %i.gw
  %i.ir = fsub reassoc nsz arcp contract afn <8 x float> %i.ip, %i.iq ; 2 uses
  %i.is = fmul reassoc nsz arcp contract afn <8 x float> %i.ir, %i.gw
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
  %i.jd = fmul reassoc nsz arcp contract afn <8 x float> %i.jb, %strided.vec122
  %i.je = fmul reassoc nsz arcp contract afn <8 x float> %i.jc, %strided.vec123
  %i.jf = fmul reassoc nsz arcp contract afn <8 x float> %i.ja, %strided.vec121
  %i.jg = fadd reassoc nsz arcp contract afn <8 x float> %i.jd, %i.je
  %i.jh = fadd reassoc nsz arcp contract afn <8 x float> %i.jg, %i.jf
  %i.ji = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec120, %i.jh
  %predphi = select nsz <8 x i1> %i.hu, <8 x float> %i.ja, <8 x float> zeroinitializer
  %predphi140 = select nsz <8 x i1> %i.hu, <8 x float> %i.jb, <8 x float> zeroinitializer
  %predphi141 = select nsz <8 x i1> %i.hu, <8 x float> %i.jc, <8 x float> zeroinitializer
  %predphi142 = select nsz <8 x i1> %i.hu, <8 x float> %i.ji, <8 x float> %strided.vec120
  %i.jj = shufflevector <8 x float> %predphi, <8 x float> %predphi140, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jk = shufflevector <8 x float> %predphi141, <8 x float> %predphi142, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.jj, <16 x float> %i.jk, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.go, align 64, !tbaa !36, !alias.scope !45, !noalias !46
  %index.next143 = add nuw i64 %index118, 8       ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.jl = icmp eq i64 %index.next143, %n.vec114
  br i1 %i.jl, label %middle.block144, label %vector.body117, !llvm.loop !25

middle.block144:                                  ; preds = %vector.body117
  %cmp.n145 = icmp eq i64 %i.bt, %n.vec114
  br i1 %cmp.n145, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader211

.lr.ph.i.us.preheader211:                         ; preds = %vector.memcheck105, %vector.scevcheck102, %.lr.ph.i.us.preheader, %middle.block144
  %.0273326.i.us.ph = phi i64 [ 0, %vector.memcheck105 ], [ 0, %vector.scevcheck102 ], [ 0, %.lr.ph.i.us.preheader ], [ %n.vec114, %middle.block144 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader211, %bb.f
  %.0273326.i.us = phi i64 [ %i.ng, %bb.f ], [ %.0273326.i.us.ph, %.lr.ph.i.us.preheader211 ] ; 3 uses
  %.idx308.i.us = shl i64 %.0273326.i.us, 4
  %i.jm = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx308.i.us ; 5 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 8 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jm, i64 12 ; 2 uses
  %.idx309.i.us = mul i64 %.0273326.i.us, 36
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.idx309.i.us ; 9 uses
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
  %exitcond350.not.i.us = icmp eq i64 %i.ng, %i.bt
  br i1 %exitcond350.not.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us, !llvm.loop !26

._crit_edge.i.us:                                 ; preds = %bb.f, %middle.block144, %._crit_edge325.i.us
  tail call void @free(ptr noundef %i.bz) #7
  tail call void @dt_box_mean(ptr noundef %i.bx, i64 noundef %i.bs, i64 noundef %i.br, i32 noundef 16777220, i64 noundef %.pre.i, i32 noundef 1) #7
  br i1 %i.aj, label %.lr.ph335.i.us, label %_guided_filter_tiling.exit.us

.lr.ph335.i.us:                                   ; preds = %._crit_edge.i.us
  %i.nh = tail call i32 @llvm.smin.i32(i32 %i.bg, i32 %i.bf)
  %i.ni = sext i32 %i.nh to i64                   ; 2 uses
  %i.nj = sext i32 %i.bd to i64                   ; 3 uses
  %i.nk = icmp slt i64 %indvars.iv, %i.nj
  br i1 %i.nk, label %.lr.ph331.preheader.i.us, label %_guided_filter_tiling.exit.us

.lr.ph331.preheader.i.us:                         ; preds = %.lr.ph335.i.us
  %i.nl = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.nm = sub i64 %indvars.iv60, %i.nl
  %i.nn = shl i64 %i.nm, 4
  %i.no = mul i64 %i.nn, %i.br                    ; 2 uses
  %i.np = shl nsw i64 %i.ni, 4                    ; 2 uses
  %i.nq = getelementptr i8, ptr %i.bx, i64 %i.no
  %scevgep81 = getelementptr i8, ptr %i.nq, i64 %i.np
  %scevgep82 = getelementptr i8, ptr %i.bx, i64 16
  %i.nr = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.bj)
  %smin83 = sext i32 %i.nr to i64
  %i.ns = zext nneg i32 %i.bi to i64
  %i.nt = sub nsw i64 %smin83, %i.ns              ; 2 uses
  %i.nu = shl nsw i64 %i.nt, 4
  %i.nv = mul i64 %i.ae, %i.nu
  %i.nw = getelementptr i8, ptr %scevgep82, i64 %i.no
  %i.nx = getelementptr i8, ptr %i.nw, i64 %i.nv
  %i.ny = getelementptr i8, ptr %i.nx, i64 %i.np
  %scevgep84 = getelementptr i8, ptr %i.ny, i64 %i.bb
  %i.nz = sub i64 %i.nj, %11                      ; 3 uses
  %min.iters.check = icmp ugt i64 %i.nz, 7
  %or.cond210 = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %scevgep, %scevgep84
  %bound1 = icmp ult ptr %scevgep81, %scevgep80
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.nt, 0
  %i.oa = or i1 %found.conflict, %stride.check
  %bound088 = icmp ult ptr %scevgep, %scevgep87
  %bound189 = icmp ult ptr %scevgep85, %scevgep80
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx = or i1 %i.oa, %found.conflict90
  %n.vec = and i64 %i.nz, -8                      ; 5 uses
  %i.ob = add i64 %indvars.iv, %n.vec
  %cmp.n = icmp eq i64 %i.nz, %n.vec
  br label %.lr.ph331.i.us

.lr.ph331.i.us:                                   ; preds = %._crit_edge332.i.us, %.lr.ph331.preheader.i.us
  %indvars.iv356.i.us = phi i64 [ %indvars.iv60, %.lr.ph331.preheader.i.us ], [ %indvars.iv.next357.i.us, %._crit_edge332.i.us ] ; 3 uses
  %i.oc = mul nsw i64 %indvars.iv356.i.us, %i.k   ; 2 uses
  %i.od = add nsw i64 %i.oc, %indvars.iv          ; 3 uses
  %i.oe = sub nsw i64 %indvars.iv356.i.us, %i.nl
  %i.of = mul nsw i64 %i.oe, %i.br
  %i.og = add nsw i64 %i.of, %i.ni                ; 3 uses
  %i.oh = getelementptr [4 x i8], ptr %2, i64 %i.oc ; 2 uses
  %or.cond210.not = xor i1 %or.cond210, true
  %brmerge = select i1 %or.cond210.not, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph331.i.us
  %i.oi = add i64 %i.og, %n.vec
  %i.oj = add i64 %i.od, %n.vec
  %i.ok = getelementptr [4 x i8], ptr %0, i64 %i.od
  %i.ol = getelementptr [4 x i8], ptr %i.oh, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.om = add i64 %i.og, %index
  %i.on = getelementptr [4 x i8], ptr %i.ok, i64 %index ; 3 uses
  %i.oo = shl i64 %i.om, 4
  %i.op = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.oo
  %wide.vec = load <32 x float>, ptr %i.op, align 16, !tbaa !36, !alias.scope !47 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec95 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec96 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec97 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.load = load <8 x float>, ptr %i.on, align 4, !tbaa !36, !alias.scope !48
  %i.oq = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %strided.vec
  %i.or = getelementptr inbounds nuw i8, ptr %i.on, i64 4
  %wide.load98 = load <8 x float>, ptr %i.or, align 4, !tbaa !36, !alias.scope !48
  %i.os = fmul reassoc nsz arcp contract afn <8 x float> %wide.load98, %strided.vec95
  %i.ot = fadd reassoc nsz arcp contract afn <8 x float> %i.os, %i.oq
  %i.ou = getelementptr inbounds nuw i8, ptr %i.on, i64 8
  %wide.load99 = load <8 x float>, ptr %i.ou, align 4, !tbaa !36, !alias.scope !48
  %i.ov = fmul reassoc nsz arcp contract afn <8 x float> %wide.load99, %strided.vec96
  %i.ow = fadd reassoc nsz arcp contract afn <8 x float> %i.ot, %i.ov
  %i.ox = fmul reassoc nsz arcp contract afn <8 x float> %i.ow, %broadcast.splat
  %i.oy = fadd reassoc nsz arcp contract afn <8 x float> %i.ox, %strided.vec97 ; 3 uses
  %i.oz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.oy, %broadcast.splat92
  %i.pa = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.oy, %broadcast.splat94
  %i.pb = select reassoc nsz arcp contract afn <8 x i1> %i.pa, <8 x float> %broadcast.splat94, <8 x float> %i.oy
  %i.pc = select reassoc nsz arcp contract afn <8 x i1> %i.oz, <8 x float> %broadcast.splat92, <8 x float> %i.pb
  %i.pd = getelementptr [4 x i8], ptr %i.ol, i64 %index
  store <8 x float> %i.pc, ptr %i.pd, align 4, !tbaa !36, !alias.scope !49, !noalias !50
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pe = icmp eq i64 %index.next, %n.vec
  br i1 %i.pe, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge332.i.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph331.i.us, %middle.block
  %indvars.iv351.i.us.ph = phi i64 [ %i.ob, %middle.block ], [ %indvars.iv, %.lr.ph331.i.us ]
  %.0266328.i.us.ph = phi i64 [ %i.oi, %middle.block ], [ %i.og, %.lr.ph331.i.us ]
  %.0267327.i.us.ph = phi i64 [ %i.oj, %middle.block ], [ %i.od, %.lr.ph331.i.us ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv351.i.us = phi i64 [ %indvars.iv.next352.i.us, %scalar.ph ], [ %indvars.iv351.i.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.0266328.i.us = phi i64 [ %i.qg, %scalar.ph ], [ %.0266328.i.us.ph, %scalar.ph.preheader ] ; 2 uses
  %.0267327.i.us = phi i64 [ %i.qh, %scalar.ph ], [ %.0267327.i.us.ph, %scalar.ph.preheader ] ; 2 uses
  %i.pf = mul i64 %.0267327.i.us, %i.l
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pf ; 3 uses
  %.idx.i.us = shl i64 %.0266328.i.us, 4
  %i.ph = getelementptr inbounds nuw i8, ptr %i.bx, i64 %.idx.i.us ; 4 uses
  %i.pi = load float, ptr %i.ph, align 16, !tbaa !36
  %i.pj = load float, ptr %i.pg, align 4, !tbaa !36
  %i.pk = fmul reassoc nsz arcp contract afn float %i.pj, %i.pi
  %i.pl = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !36
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  %i.po = load float, ptr %i.pn, align 4, !tbaa !36
  %i.pp = fmul reassoc nsz arcp contract afn float %i.po, %i.pm
  %i.pq = fadd reassoc nsz arcp contract afn float %i.pp, %i.pk
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ph, i64 8
  %i.ps = load float, ptr %i.pr, align 8, !tbaa !36
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !36
  %i.pv = fmul reassoc nsz arcp contract afn float %i.pu, %i.ps
  %i.pw = fadd reassoc nsz arcp contract afn float %i.pq, %i.pv
  %i.px = fmul reassoc nsz arcp contract afn float %i.pw, %8
  %i.py = getelementptr inbounds nuw i8, ptr %i.ph, i64 12
  %i.pz = load float, ptr %i.py, align 4, !tbaa !36
  %i.qa = fadd reassoc nsz arcp contract afn float %i.px, %i.pz ; 3 uses
  %i.qb = fcmp reassoc nsz arcp contract afn ogt float %i.qa, %10
  %i.qc = fcmp reassoc nsz arcp contract afn olt float %i.qa, %9
  %i.qd = select reassoc nsz arcp contract afn i1 %i.qc, float %9, float %i.qa
  %i.qe = select reassoc nsz arcp contract afn i1 %i.qb, float %10, float %i.qd
  %i.qf = getelementptr [4 x i8], ptr %i.oh, i64 %indvars.iv351.i.us
  store float %i.qe, ptr %i.qf, align 4, !tbaa !36
  %indvars.iv.next352.i.us = add nsw i64 %indvars.iv351.i.us, 1 ; 2 uses
  %i.qg = add i64 %.0266328.i.us, 1
  %i.qh = add i64 %.0267327.i.us, 1
  %exitcond355.not.i.us = icmp eq i64 %indvars.iv.next352.i.us, %i.nj
  br i1 %exitcond355.not.i.us, label %._crit_edge332.i.us, label %scalar.ph, !llvm.loop !32

._crit_edge332.i.us:                              ; preds = %scalar.ph, %middle.block
  %indvars.iv.next357.i.us = add nsw i64 %indvars.iv356.i.us, 1 ; 2 uses
  %exitcond360.not.i.us = icmp eq i64 %indvars.iv.next357.i.us, %i.ai
  br i1 %exitcond360.not.i.us, label %_guided_filter_tiling.exit.us, label %.lr.ph331.i.us

_guided_filter_tiling.exit.us:                    ; preds = %._crit_edge332.i.us, %.lr.ph335.i.us, %._crit_edge.i.us
  tail call void @free(ptr noundef %i.bx) #7
  %i.qi = icmp slt i64 %indvars.iv.next, %i.k
  %indvar.next77 = add i64 %indvar76, 1
  br i1 %i.qi, label %bb.d, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %_guided_filter_tiling.exit.us
  %i.qj = icmp slt i64 %indvars.iv.next61, %i.n
  %indvar.next = add i64 %indvar, 1
  br i1 %i.qj, label %.preheader.us, label %._crit_edge56

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04355 = phi i32 [ %i.qk, %.preheader ], [ 0, %.preheader.lr.ph ]
  %i.qk = add nsw i32 %.04355, %i.g               ; 2 uses
  %i.ql = icmp slt i32 %i.qk, %4
  br i1 %i.ql, label %.preheader, label %._crit_edge56

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
end_hunk_1
