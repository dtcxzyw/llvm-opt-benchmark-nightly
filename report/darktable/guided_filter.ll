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
  %i.k = sext i32 %3 to i64                       ; 9 uses
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
  %i.ar = mul i64 %indvar76, %i.m
  %i.as = mul i64 %i.q, %indvar76                 ; 3 uses
  %i.at = add i64 %i.x, %i.as                     ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.at  ; 2 uses
  %scevgep78 = getelementptr i8, ptr %i.an, i64 %i.as
  %i.au = trunc i64 %indvar76 to i32
  %i.av = add i32 %i.au, 1
  %i.aw = mul i32 %i.av, %i.g
  %i.ax = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.aw)
  %smin79 = sext i32 %i.ax to i64
  %i.ay = mul i64 %indvar76, %i.m
  %i.az = xor i64 %i.ay, -1
  %i.ba = add i64 %smin79, %i.az                  ; 2 uses
  %i.bb = shl i64 %i.ba, 2                        ; 2 uses
  %scevgep80 = getelementptr i8, ptr %scevgep78, i64 %i.bb ; 2 uses
  %i.bc = shl i64 %i.ba, 4
  %scevgep85 = getelementptr i8, ptr %0, i64 %i.at
  %scevgep86 = getelementptr i8, ptr %i.aq, i64 %i.as
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.bb
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.m ; 3 uses
  %i.bd = trunc nsw i64 %indvars.iv.next to i32
  %i.be = tail call i32 @llvm.smin.i32(i32 %i.bd, i32 %3) ; 2 uses
  %i.bf = tail call i64 @dt_round_size(i64 noundef %i.b, i64 noundef 16) #7
  %i.bg = trunc i64 %i.bf to i32                  ; 5 uses
  %i.bh = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.bi = sub nsw i32 %i.bh, %i.bg
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0) ; 4 uses
  %i.bk = add nsw i32 %i.be, %i.bg                ; 2 uses
  %i.bl = tail call i32 @llvm.smin.i32(i32 %i.bk, i32 %3) ; 3 uses
  %i.bm = sub nsw i32 %i.ak, %i.bg
  %i.bn = tail call i32 @llvm.smax.i32(i32 %i.bm, i32 0) ; 7 uses
  %i.bo = add nsw i32 %i.ah, %i.bg
  %i.bp = tail call i32 @llvm.smin.i32(i32 %i.bo, i32 %4) ; 4 uses
  %i.bq = sub nsw i32 %i.bl, %i.bj                ; 3 uses
  %i.br = sub nsw i32 %i.bp, %i.bn
  %i.bs = sext i32 %i.bq to i64                   ; 14 uses
  %i.bt = sext i32 %i.br to i64                   ; 7 uses
  %i.bu = mul nsw i64 %i.bs, %i.bt                ; 6 uses
  %i.bv = shl nsw i64 %i.bs, 2
  %i.bw = mul i64 %i.bv, %i.bt                    ; 2 uses
  %i.bx = shl i64 %i.bw, 2
  %i.by = tail call ptr @dt_alloc_aligned(i64 noundef %i.bx) #7, !noalias !33 ; 15 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.by, i64 64) ]
  %i.bz = mul i64 %i.bw, 9
  %i.ca = tail call ptr @dt_alloc_aligned(i64 noundef %i.bz) #7, !noalias !34 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.cb = tail call i64 @dt_round_size(i64 noundef %i.bs, i64 noundef 16) #7
  %i.cc = mul i64 %i.cb, 36
  %i.cd = add i64 %i.cc, 60
  %i.ce = and i64 %i.cd, -64
  %i.cf = tail call ptr @dt_alloc_aligned(i64 noundef %i.ce) #7 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cf, i64 64) ]
  %i.cg = icmp slt i32 %i.bn, %i.bp
  br i1 %i.cg, label %.lr.ph325.i.us, label %._crit_edge326.i.us

.lr.ph325.i.us:                                   ; preds = %bb.d
  %i.ch = shl i32 %i.bq, 2                        ; 3 uses
  %i.ci = mul i32 %i.bq, 9                        ; 3 uses
  %i.cj = icmp slt i32 %i.bj, %i.bl
  br i1 %i.cj, label %.lr.ph.us.preheader.i.us, label %.lr.ph325.split.preheader.i.us

.lr.ph325.split.preheader.i.us:                   ; preds = %.lr.ph325.i.us
  %i.ck = zext nneg i32 %i.bn to i64
  %wide.trip.count.i.us = zext nneg i32 %i.bp to i64
  br label %.lr.ph325.split.i.us

.lr.ph325.split.i.us:                             ; preds = %.lr.ph325.split.i.us, %.lr.ph325.split.preheader.i.us
  %indvars.iv.i.us = phi i64 [ %i.ck, %.lr.ph325.split.preheader.i.us ], [ %indvars.iv.next.i.us, %.lr.ph325.split.i.us ] ; 2 uses
  %i.cl = trunc i64 %indvars.iv.i.us to i32
  %i.cm = sub i32 %i.cl, %i.bn                    ; 2 uses
  %i.cn = mul i32 %i.cm, %i.ch
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.co
  %i.cq = mul i32 %i.cm, %i.ci
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cr
  tail call void @dt_box_mean_horizontal(ptr noundef %i.cp, i64 noundef %i.bs, i32 noundef 16777220, i64 noundef %.pre.i, ptr noundef %i.cf) #7
  tail call void @dt_box_mean_horizontal(ptr noundef %i.cs, i64 noundef %i.bs, i32 noundef 16777225, i64 noundef %.pre.i, ptr noundef %i.cf) #7
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %._crit_edge326.i.us, label %.lr.ph325.split.i.us

.lr.ph.us.preheader.i.us:                         ; preds = %.lr.ph325.i.us
  %i.ct = zext nneg i32 %i.bj to i64              ; 11 uses
  %i.cu = zext nneg i32 %i.bn to i64              ; 5 uses
  %wide.trip.count349.i.us = zext i32 %i.bp to i64 ; 2 uses
  %wide.trip.count344.i.us = zext nneg i32 %i.bl to i64 ; 6 uses
  %i.cv = sub nsw i64 %wide.trip.count344.i.us, %i.ct
  %i.cw = shl nsw i64 %i.cv, 4
  %scevgep150 = getelementptr i8, ptr %i.by, i64 %i.cw
  %i.cx = mul nuw nsw i64 %wide.trip.count344.i.us, 36
  %.neg = mul nsw i64 %i.ct, -36
  %i.cy = getelementptr i8, ptr %i.ca, i64 %.neg
  %scevgep154 = getelementptr i8, ptr %i.cy, i64 %i.cx
  %i.cz = mul nuw nsw i64 %i.k, %i.cu             ; 2 uses
  %i.da = add nuw nsw i64 %i.cz, %i.ct
  %i.db = shl i64 %i.da, 2
  %scevgep156 = getelementptr i8, ptr %0, i64 %i.db ; 2 uses
  %i.dc = xor i64 %i.cu, -1
  %i.dd = add nsw i64 %i.dc, %wide.trip.count349.i.us
  %i.de = mul i64 %i.t, %i.dd                     ; 2 uses
  %i.df = add nuw nsw i64 %i.cz, %wide.trip.count344.i.us
  %i.dg = shl i64 %i.df, 2
  %11 = getelementptr i8, ptr %scevgep157, i64 %i.de
  %scevgep158 = getelementptr i8, ptr %11, i64 %i.dg ; 2 uses
  %i.dh = mul nuw i64 %i.u, %i.cu
  %i.di = shl nuw nsw i64 %i.ct, 2
  %12 = getelementptr i8, ptr %1, i64 %i.dh
  %i.dj = getelementptr i8, ptr %12, i64 %i.di    ; 2 uses
  %13 = mul nuw nsw i64 %i.k, %i.cu
  %14 = add nuw nsw i64 %13, %wide.trip.count344.i.us
  %15 = shl i64 %14, 2
  %scevgep159 = getelementptr i8, ptr %1, i64 %i.de
  %scevgep160 = getelementptr i8, ptr %scevgep159, i64 %15 ; 2 uses
  %i.dk = sub nsw i64 %wide.trip.count344.i.us, %i.ct ; 3 uses
  %min.iters.check181 = icmp ugt i64 %i.dk, 7
  %or.cond = and i1 %min.iters.check181, %ident.check148.not
  %n.vec183 = and i64 %i.dk, -8                   ; 3 uses
  %i.dl = add nsw i64 %n.vec183, %i.ct
  %broadcast.splatinsert184 = insertelement <8 x i64> poison, i64 %i.ct, i64 0
  %broadcast.splat185 = shufflevector <8 x i64> %broadcast.splatinsert184, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <8 x i64> %broadcast.splat185, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n208 = icmp eq i64 %i.dk, %n.vec183
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %._crit_edge.us.i.us, %.lr.ph.us.preheader.i.us
  %indvar151 = phi i32 [ %indvar.next152, %._crit_edge.us.i.us ], [ 0, %.lr.ph.us.preheader.i.us ] ; 3 uses
  %indvars.iv346.i.us = phi i64 [ %indvars.iv.next347.i.us, %._crit_edge.us.i.us ], [ %i.cu, %.lr.ph.us.preheader.i.us ] ; 3 uses
  %i.dm = trunc i64 %indvars.iv346.i.us to i32
  %i.dn = sub i32 %i.dm, %i.bn                    ; 2 uses
  %i.do = mul i32 %i.dn, %i.ch
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.dp ; 6 uses
  %i.dr = mul i32 %i.dn, %i.ci
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr [4 x i8], ptr %i.ca, i64 %i.ds ; 6 uses
  %i.du = mul nuw nsw i64 %indvars.iv346.i.us, %i.k ; 3 uses
  %i.dv = getelementptr [4 x i8], ptr %1, i64 %i.du ; 2 uses
  br i1 %or.cond, label %vector.memcheck149, label %scalar.ph180.preheader

vector.memcheck149:                               ; preds = %.lr.ph.us.i.us
  %i.dw = mul i32 %i.ci, %indvar151
  %i.dx = sext i32 %i.dw to i64
  %i.dy = shl nsw i64 %i.dx, 2
  %scevgep155 = getelementptr i8, ptr %scevgep154, i64 %i.dy ; 3 uses
  %i.dz = mul i32 %i.ch, %indvar151
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
  %bound1169 = icmp ult ptr %i.dj, %scevgep153
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %i.dt, %scevgep158
  %bound1173 = icmp ult ptr %scevgep156, %scevgep155
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  %bound0176 = icmp ult ptr %i.dt, %scevgep160
  %bound1177 = icmp ult ptr %i.dj, %scevgep155
  %found.conflict178 = and i1 %bound0176, %bound1177
  %conflict.rdx179 = or i1 %conflict.rdx175, %found.conflict178
  br i1 %conflict.rdx179, label %scalar.ph180.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %vector.memcheck149
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.du
  br label %vector.body188

vector.body188:                                   ; preds = %vector.body188, %vector.ph182
  %index189 = phi i64 [ 0, %vector.ph182 ], [ %index.next205, %vector.body188 ] ; 2 uses
  %vec.ind190 = phi <8 x i64> [ %induction, %vector.ph182 ], [ %vec.ind.next206, %vector.body188 ] ; 2 uses
  %i.ec = add nuw i64 %index189, %i.ct            ; 2 uses
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
  %wide.gep198 = getelementptr i8, <8 x ptr> %wide.gep196, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.es, <8 x ptr> align 4 %wide.gep198, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.et = fmul reassoc nsz arcp contract afn <8 x float> %i.ef, %i.ef
  %wide.gep199 = getelementptr i8, <8 x ptr> %wide.gep196, i64 12
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.et, <8 x ptr> align 4 %wide.gep199, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, %i.ef
  %wide.gep200 = getelementptr i8, <8 x ptr> %wide.gep196, i64 16
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eu, <8 x ptr> align 4 %wide.gep200, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ev = fmul reassoc nsz arcp contract afn <8 x float> %i.ej, %i.ef
  %wide.gep201 = getelementptr i8, <8 x ptr> %wide.gep196, i64 20
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ev, <8 x ptr> align 4 %wide.gep201, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ew = fmul reassoc nsz arcp contract afn <8 x float> %i.eh, %i.eh
  %wide.gep202 = getelementptr i8, <8 x ptr> %wide.gep196, i64 24
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ew, <8 x ptr> align 4 %wide.gep202, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ex = fmul reassoc nsz arcp contract afn <8 x float> %i.ej, %i.eh
  %wide.gep203 = getelementptr i8, <8 x ptr> %wide.gep196, i64 28
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ex, <8 x ptr> align 4 %wide.gep203, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %i.ey = fmul reassoc nsz arcp contract afn <8 x float> %i.ej, %i.ej
  %wide.gep204 = getelementptr i8, <8 x ptr> %wide.gep196, i64 32
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ey, <8 x ptr> align 4 %wide.gep204, <8 x i1> splat (i1 true)), !tbaa !36, !alias.scope !41, !noalias !42
  %index.next205 = add nuw i64 %index189, 8       ; 2 uses
  %vec.ind.next206 = add nuw nsw <8 x i64> %vec.ind190, splat (i64 8)
  %i.ez = icmp eq i64 %index.next205, %n.vec183
  br i1 %i.ez, label %middle.block207, label %vector.body188, !llvm.loop !20

middle.block207:                                  ; preds = %vector.body188
  br i1 %cmp.n208, label %._crit_edge.us.i.us, label %scalar.ph180.preheader

scalar.ph180.preheader:                           ; preds = %vector.memcheck149, %.lr.ph.us.i.us, %middle.block207
  %indvars.iv340.i.us.ph = phi i64 [ %i.ct, %vector.memcheck149 ], [ %i.ct, %.lr.ph.us.i.us ], [ %i.dl, %middle.block207 ]
  br label %scalar.ph180

scalar.ph180:                                     ; preds = %scalar.ph180.preheader, %scalar.ph180
  %indvars.iv340.i.us = phi i64 [ %indvars.iv.next341.i.us, %scalar.ph180 ], [ %indvars.iv340.i.us.ph, %scalar.ph180.preheader ] ; 4 uses
  %i.fa = sub nuw nsw i64 %indvars.iv340.i.us, %i.ct ; 2 uses
  %i.fb = add nuw nsw i64 %indvars.iv340.i.us, %i.du
  %i.fc = mul i64 %i.fb, %i.l
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fc ; 2 uses
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !36 ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4
  %i.fg = getelementptr [4 x i8], ptr %i.dv, i64 %indvars.iv340.i.us
  %.idx312.us.i.us = shl nuw nsw i64 %i.fa, 4
  %i.fh = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx312.us.i.us
  %i.fi = load <2 x float>, ptr %i.ff, align 4, !tbaa !36
  %i.fj = load float, ptr %i.fg, align 4, !tbaa !36 ; 2 uses
  %i.fk = insertelement <4 x float> poison, float %i.fj, i64 0
  %i.fl = insertelement <4 x float> %i.fk, float %i.fe, i64 1
  %i.fm = shufflevector <2 x float> %i.fi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fn = shufflevector <4 x float> %i.fl, <4 x float> %i.fm, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.fo = fmul reassoc nsz arcp contract afn <4 x float> %i.fn, %i.w ; 5 uses
  %i.fp = fmul reassoc nsz arcp contract afn float %i.fe, %8
  store <4 x float> %i.fo, ptr %i.fh, align 16, !tbaa !36
  %.idx313.us.i.us = mul nuw nsw i64 %i.fa, 36
  %i.fq = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx313.us.i.us ; 2 uses
  %i.fr = shufflevector <4 x float> %i.fo, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 2>
  %i.fs = insertelement <4 x float> %i.fr, float %i.fj, i64 0
  %i.ft = insertelement <4 x float> %i.fs, float %i.fp, i64 2 ; 2 uses
  %i.fu = shufflevector <4 x float> %i.ft, <4 x float> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 2, i32 3, i32 1, i32 3, i32 1>
  %i.fv = shufflevector <4 x float> %i.fo, <4 x float> %i.ft, <8 x i32> <i32 6, i32 2, i32 4, i32 6, i32 6, i32 6, i32 2, i32 2>
  %i.fw = fmul reassoc nsz arcp contract afn <8 x float> %i.fu, %i.fv
  store <8 x float> %i.fw, ptr %i.fq, align 4, !tbaa !36
  %foldExtExtBinop = fmul reassoc nsz arcp contract afn <4 x float> %i.fo, %i.fo
  %i.fx = extractelement <4 x float> %foldExtExtBinop, i64 3
  %i.fy = getelementptr i8, ptr %i.fq, i64 32
  store float %i.fx, ptr %i.fy, align 4, !tbaa !36
  %indvars.iv.next341.i.us = add nuw nsw i64 %indvars.iv340.i.us, 1 ; 2 uses
  %exitcond345.not.i.us = icmp eq i64 %indvars.iv.next341.i.us, %wide.trip.count344.i.us
  br i1 %exitcond345.not.i.us, label %._crit_edge.us.i.us, label %scalar.ph180, !llvm.loop !21

._crit_edge.us.i.us:                              ; preds = %scalar.ph180, %middle.block207
  tail call void @dt_box_mean_horizontal(ptr noundef nonnull %i.dq, i64 noundef %i.bs, i32 noundef 16777220, i64 noundef %.pre.i, ptr noundef %i.cf) #7
  tail call void @dt_box_mean_horizontal(ptr noundef nonnull %i.dt, i64 noundef %i.bs, i32 noundef 16777225, i64 noundef %.pre.i, ptr noundef %i.cf) #7
  %indvars.iv.next347.i.us = add nuw nsw i64 %indvars.iv346.i.us, 1 ; 2 uses
  %exitcond350.not.i.us = icmp eq i64 %indvars.iv.next347.i.us, %wide.trip.count349.i.us
  %indvar.next152 = add i32 %indvar151, 1
  br i1 %exitcond350.not.i.us, label %._crit_edge326.i.us, label %.lr.ph.us.i.us

._crit_edge326.i.us:                              ; preds = %.lr.ph325.split.i.us, %._crit_edge.us.i.us, %bb.d
  tail call void @free(ptr noundef %i.cf) #7
  tail call void @dt_box_mean_vertical(ptr noundef %i.by, i64 noundef %i.bt, i64 noundef %i.bs, i32 noundef 16777220, i64 noundef %.pre.i) #7
  tail call void @dt_box_mean_vertical(ptr noundef %i.ca, i64 noundef %i.bt, i64 noundef %i.bs, i32 noundef 16777225, i64 noundef %.pre.i) #7
  %.not.i.us = icmp eq i64 %i.bu, 0
  br i1 %.not.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader

.lr.ph.i.us.preheader:                            ; preds = %._crit_edge326.i.us
  %min.iters.check112 = icmp ult i64 %i.bu, 8
  br i1 %min.iters.check112, label %.lr.ph.i.us.preheader212, label %vector.scevcheck102

vector.scevcheck102:                              ; preds = %.lr.ph.i.us.preheader
  %i.fz = add i64 %i.bu, -1
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.fz, i64 36) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 3 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.ga = getelementptr i8, ptr %i.ca, i64 %mul.result
  %i.gb = icmp ult ptr %i.ga, %i.ca
  %scevgep103 = getelementptr i8, ptr %i.ca, i64 4 ; 2 uses
  %i.gc = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.gd = icmp ult ptr %i.gc, %scevgep103
  %scevgep104 = getelementptr i8, ptr %i.ca, i64 8 ; 2 uses
  %i.ge = getelementptr i8, ptr %scevgep104, i64 %mul.result
  %i.gf = icmp ult ptr %i.ge, %scevgep104
  %i.gg = or i1 %i.gf, %mul.overflow
  %i.gh = or i1 %i.gd, %i.gb
  %i.gi = or i1 %i.gh, %i.gg
  br i1 %i.gi, label %.lr.ph.i.us.preheader212, label %vector.memcheck105

vector.memcheck105:                               ; preds = %vector.scevcheck102
  %i.gj = shl nsw i64 %i.bt, 4
  %i.gk = mul i64 %i.gj, %i.bs
  %scevgep106 = getelementptr i8, ptr %i.by, i64 %i.gk
  %i.gl = mul nsw i64 %i.bt, 36
  %i.gm = mul i64 %i.gl, %i.bs
  %scevgep107 = getelementptr i8, ptr %i.ca, i64 %i.gm
  %bound0108 = icmp ult ptr %i.by, %scevgep107
  %bound1109 = icmp ult ptr %i.ca, %scevgep106
  %found.conflict110 = and i1 %bound0108, %bound1109
  br i1 %found.conflict110, label %.lr.ph.i.us.preheader212, label %vector.ph113

vector.ph113:                                     ; preds = %vector.memcheck105
  %n.vec114 = and i64 %i.bu, -8                   ; 3 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph113
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next143, %vector.body117 ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph113 ], [ %vec.ind.next, %vector.body117 ] ; 2 uses
  %i.gn = shl i64 %index118, 4
  %i.go = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.gn ; 2 uses
  %wide.vec119 = load <32 x float>, ptr %i.go, align 64, !tbaa !36, !alias.scope !45, !noalias !46 ; 4 uses
  %strided.vec120 = shufflevector <32 x float> %wide.vec119, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28> ; 5 uses
  %strided.vec121 = shufflevector <32 x float> %wide.vec119, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29> ; 6 uses
  %strided.vec122 = shufflevector <32 x float> %wide.vec119, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30> ; 6 uses
  %strided.vec123 = shufflevector <32 x float> %wide.vec119, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31> ; 6 uses
  %i.gp = mul <8 x i64> %vec.ind, splat (i64 36)
  %wide.gep = getelementptr inbounds nuw i8, ptr %i.ca, <8 x i64> %i.gp ; 9 uses
  %wide.gep124 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 12
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep124, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gq = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec121, %strided.vec121
  %i.gr = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather, %i.gq
  %i.gs = fadd reassoc nsz arcp contract afn <8 x float> %i.gr, %broadcast.splat116 ; 3 uses
  %wide.gep125 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 16
  %wide.masked.gather126 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep125, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gt = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec122, %strided.vec121
  %i.gu = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather126, %i.gt ; 6 uses
  %wide.gep127 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 20
  %wide.masked.gather128 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep127, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gv = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec123, %strided.vec121
  %i.gw = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather128, %i.gv ; 6 uses
  %wide.gep129 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 24
  %wide.masked.gather130 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep129, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.gx = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec122, %strided.vec122
  %i.gy = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather130, %i.gx
  %i.gz = fadd reassoc nsz arcp contract afn <8 x float> %i.gy, %broadcast.splat116 ; 3 uses
  %wide.gep131 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 28
  %wide.masked.gather132 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep131, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.ha = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec123, %strided.vec122
  %i.hb = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather132, %i.ha ; 6 uses
  %wide.gep133 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 32
  %wide.masked.gather134 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep133, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !36, !alias.scope !46
  %i.hc = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec123, %strided.vec123
  %i.hd = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather134, %i.hc
  %i.he = fadd reassoc nsz arcp contract afn <8 x float> %i.hd, %broadcast.splat116 ; 3 uses
end_hunk_0
