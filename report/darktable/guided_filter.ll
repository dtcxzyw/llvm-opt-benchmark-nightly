Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/guided_filter?download=true
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
  %i.c = tail call i64 @dt_round_size(i64 noundef %i.b, i64 noundef 16) #8
  %i.d = icmp ugt i64 %i.c, 512
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @dt_round_size(i64 noundef %i.b, i64 noundef 16) #8
  %i.f = trunc i64 %i.e to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ 512, %bb.a ]  ; 5 uses
  %i.h = fmul reassoc nsz arcp contract afn float %7, %7 ; 3 uses
  %i.i = icmp sgt i32 %4, 0
  br i1 %i.i, label %.preheader.lr.ph, label %._crit_edge57

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
  %scevgep159.a = getelementptr i8, ptr %0, i64 8
  %i.t = shl nuw nsw i64 %i.k, 2
  %i.u = shl nuw nsw i64 %i.k, 2
  %ident.check150.not = icmp eq i32 %5, 1
  %broadcast.splatinsert188 = insertelement <8 x float> poison, float %8, i64 0
  %broadcast.splat189 = shufflevector <8 x float> %broadcast.splatinsert188, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.v = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %8, i64 1
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %broadcast.splatinsert117 = insertelement <8 x float> poison, float %i.h, i64 0
  %broadcast.splat118 = shufflevector <8 x float> %broadcast.splatinsert117, <8 x float> poison, <8 x i32> zeroinitializer ; 3 uses
  %i.x = insertelement <2 x float> poison, float %i.h, i64 0
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> zeroinitializer
  %ident.check.not = icmp eq i32 %5, 1
  %broadcast.splatinsert = insertelement <8 x float> poison, float %8, i64 0
  %broadcast.splat = shufflevector <8 x float> %broadcast.splatinsert, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert93 = insertelement <8 x float> poison, float %10, i64 0
  %broadcast.splat94 = shufflevector <8 x float> %broadcast.splatinsert93, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert95 = insertelement <8 x float> poison, float %9, i64 0
  %broadcast.splat96 = shufflevector <8 x float> %broadcast.splatinsert95, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvar = phi i64 [ 0, %.preheader.us.preheader ], [ %indvar.next, %._crit_edge.us ] ; 4 uses
  %indvars.iv61 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next62, %._crit_edge.us ] ; 5 uses
  %i.z = mul i64 %i.p, %indvar                    ; 3 uses
  %i.aa = trunc i64 %indvar to i32
  %i.ab = add i32 %i.aa, 1
  %i.ac = mul i32 %i.ab, %i.g
  %i.ad = sext i32 %i.ac to i64
  %smin = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %i.ad)
  %i.ae = mul i64 %indvar, %i.m
  %i.af = xor i64 %i.ae, -1
  %i.ag = add i64 %smin, %i.af                    ; 2 uses
  %i.ah = mul i64 %i.r, %i.ag                     ; 2 uses
  %indvars.iv.next62 = add i64 %indvars.iv61, %i.m ; 3 uses
  %i.ai = trunc nsw i64 %indvars.iv.next62 to i32
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 %4) ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 2 uses
  %i.al = icmp slt i64 %indvars.iv61, %i.ak
  %i.am = trunc nsw i64 %indvars.iv61 to i32
  %i.an = getelementptr i8, ptr %2, i64 %i.z
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.ah
  %i.aq = getelementptr i8, ptr %0, i64 %i.z
  %i.ar = getelementptr i8, ptr %i.aq, i64 12
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.ah
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %_guided_filter_tiling.exit.us
  %indvar77 = phi i64 [ 0, %.preheader.us ], [ %indvar.next78, %_guided_filter_tiling.exit.us ] ; 6 uses
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %_guided_filter_tiling.exit.us ] ; 7 uses
  %11 = trunc i64 %indvar77 to i32
  %12 = add i32 %11, 1
  %13 = mul i32 %12, %i.g
  %14 = tail call i32 @llvm.smin.i32(i32 %3, i32 %13)
  %smin92 = sext i32 %14 to i64                   ; 3 uses
  %i.at = mul i64 %indvar77, %i.m
  %15 = sub i64 %smin92, %i.at                    ; 3 uses
  %i.au = mul i64 %i.q, %indvar77                 ; 3 uses
  %i.av = add i64 %i.z, %i.au                     ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.av  ; 2 uses
  %scevgep79 = getelementptr i8, ptr %i.ap, i64 %i.au
  %i.aw = trunc i64 %indvar77 to i32
  %i.ax = add i32 %i.aw, 1
  %i.ay = mul i32 %i.ax, %i.g
  %i.az = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.ay)
  %smin80 = sext i32 %i.az to i64
  %i.ba = mul i64 %indvar77, %i.m
  %i.bb = xor i64 %i.ba, -1
  %i.bc = add i64 %smin80, %i.bb                  ; 2 uses
  %i.bd = shl i64 %i.bc, 2                        ; 2 uses
  %scevgep81 = getelementptr i8, ptr %scevgep79, i64 %i.bd ; 2 uses
  %i.be = shl i64 %i.bc, 4
  %scevgep86 = getelementptr i8, ptr %0, i64 %i.av
  %scevgep87 = getelementptr i8, ptr %i.as, i64 %i.au
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.bd
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.m ; 3 uses
  %i.bf = trunc nsw i64 %indvars.iv.next to i32
  %i.bg = tail call i32 @llvm.smin.i32(i32 %i.bf, i32 %3) ; 2 uses
  %i.bh = tail call i64 @dt_round_size(i64 noundef %i.b, i64 noundef 16) #8
  %i.bi = trunc i64 %i.bh to i32                  ; 5 uses
  %i.bj = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.bk = sub nsw i32 %i.bj, %i.bi
  %i.bl = tail call i32 @llvm.smax.i32(i32 %i.bk, i32 0) ; 4 uses
  %i.bm = add nsw i32 %i.bg, %i.bi                ; 2 uses
  %i.bn = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %3) ; 3 uses
  %i.bo = sub nsw i32 %i.am, %i.bi
  %i.bp = tail call i32 @llvm.smax.i32(i32 %i.bo, i32 0) ; 7 uses
  %i.bq = add nsw i32 %i.aj, %i.bi
  %i.br = tail call i32 @llvm.smin.i32(i32 %i.bq, i32 %4) ; 4 uses
  %i.bs = sub nsw i32 %i.bn, %i.bl                ; 3 uses
  %i.bt = sub nsw i32 %i.br, %i.bp
  %i.bu = sext i32 %i.bs to i64                   ; 14 uses
  %i.bv = sext i32 %i.bt to i64                   ; 7 uses
  %i.bw = mul nsw i64 %i.bu, %i.bv                ; 6 uses
  %i.bx = shl nsw i64 %i.bu, 2
  %i.by = mul i64 %i.bx, %i.bv                    ; 2 uses
  %i.bz = shl i64 %i.by, 2
  %i.ca = tail call ptr @dt_alloc_aligned(i64 noundef %i.bz) #8, !noalias !11 ; 17 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ca, i64 64) ]
  %i.cb = mul i64 %i.by, 9
  %i.cc = tail call ptr @dt_alloc_aligned(i64 noundef %i.cb) #8, !noalias !14 ; 14 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.cc, i64 64) ]
  %i.cd = tail call i64 @dt_round_size(i64 noundef %i.bu, i64 noundef 16) #8
  %i.ce = mul i64 %i.cd, 36
  %i.cf = add i64 %i.ce, 60
  %i.cg = and i64 %i.cf, -64
  %i.ch = tail call ptr @dt_alloc_aligned(i64 noundef %i.cg) #8 ; 6 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.ch, i64 64) ]
  %i.ci = icmp slt i32 %i.bp, %i.br
  br i1 %i.ci, label %.lr.ph324.i.us, label %._crit_edge325.i.us

.lr.ph324.i.us:                                   ; preds = %bb.d
  %i.cj = shl i32 %i.bs, 2                        ; 3 uses
  %i.ck = mul i32 %i.bs, 9                        ; 3 uses
  %i.cl = icmp slt i32 %i.bl, %i.bn
  br i1 %i.cl, label %.lr.ph.us.preheader.i.us, label %.lr.ph324.split.preheader.i.us

.lr.ph324.split.preheader.i.us:                   ; preds = %.lr.ph324.i.us
  %i.cm = zext nneg i32 %i.bp to i64
  %wide.trip.count.i.us = zext nneg i32 %i.br to i64
  br label %.lr.ph324.split.i.us

.lr.ph324.split.i.us:                             ; preds = %.lr.ph324.split.i.us, %.lr.ph324.split.preheader.i.us
  %indvars.iv.i.us = phi i64 [ %i.cm, %.lr.ph324.split.preheader.i.us ], [ %indvars.iv.next.i.us, %.lr.ph324.split.i.us ] ; 2 uses
  %i.cn = trunc i64 %indvars.iv.i.us to i32
  %i.co = sub i32 %i.cn, %i.bp                    ; 2 uses
  %i.cp = mul i32 %i.co, %i.cj
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cq
  %i.cs = mul i32 %i.co, %i.ck
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ct
  tail call void @dt_box_mean_horizontal(ptr noundef %i.cr, i64 noundef %i.bu, i32 noundef 16777220, i64 noundef %.pre.i, ptr noundef %i.ch) #8
  tail call void @dt_box_mean_horizontal(ptr noundef %i.cu, i64 noundef %i.bu, i32 noundef 16777225, i64 noundef %.pre.i, ptr noundef %i.ch) #8
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i.us
  br i1 %exitcond.not.i.us, label %._crit_edge325.i.us, label %.lr.ph324.split.i.us

.lr.ph.us.preheader.i.us:                         ; preds = %.lr.ph324.i.us
  %i.cv = zext nneg i32 %i.bl to i64              ; 11 uses
  %i.cw = zext nneg i32 %i.bp to i64              ; 4 uses
  %wide.trip.count347.i.us = zext i32 %i.br to i64 ; 2 uses
  %wide.trip.count342.i.us = zext nneg i32 %i.bn to i64 ; 5 uses
  %i.cx = sub nsw i64 %wide.trip.count342.i.us, %i.cv
  %i.cy = shl nsw i64 %i.cx, 4
  %scevgep152 = getelementptr i8, ptr %i.ca, i64 %i.cy
  %i.cz = mul nuw nsw i64 %wide.trip.count342.i.us, 36
  %.neg = mul nsw i64 %i.cv, -36
  %i.da = getelementptr i8, ptr %i.cc, i64 %.neg
  %scevgep156.a = getelementptr i8, ptr %i.da, i64 %i.cz
  %i.db = mul nuw nsw i64 %i.k, %i.cw             ; 2 uses
  %i.dc = add nuw nsw i64 %i.db, %i.cv
  %i.dd = shl i64 %i.dc, 2
  %scevgep158 = getelementptr i8, ptr %0, i64 %i.dd ; 2 uses
  %i.de = xor i64 %i.cw, -1
  %i.df = add nsw i64 %i.de, %wide.trip.count347.i.us
  %i.dg = mul i64 %i.t, %i.df
  %i.dh = add nuw nsw i64 %i.db, %wide.trip.count342.i.us
  %i.di = shl i64 %i.dh, 2
  %i.dj = add i64 %i.dg, %i.di                    ; 2 uses
  %scevgep160.a = getelementptr i8, ptr %scevgep159.a, i64 %i.dj ; 2 uses
  %i.dk = mul nuw i64 %i.u, %i.cw
  %i.dl = shl nuw nsw i64 %i.cv, 2
  %i.dm = getelementptr i8, ptr %1, i64 %i.dk
  %scevgep161.a = getelementptr i8, ptr %i.dm, i64 %i.dl ; 2 uses
  %scevgep162 = getelementptr i8, ptr %1, i64 %i.dj ; 2 uses
  %i.dn = sub nsw i64 %wide.trip.count342.i.us, %i.cv ; 3 uses
  %min.iters.check183 = icmp ugt i64 %i.dn, 7
  %or.cond = and i1 %min.iters.check183, %ident.check150.not
  %n.vec185 = and i64 %i.dn, -8                   ; 3 uses
  %i.do = add nsw i64 %n.vec185, %i.cv
  %broadcast.splatinsert186 = insertelement <8 x i64> poison, i64 %i.cv, i64 0
  %broadcast.splat187 = shufflevector <8 x i64> %broadcast.splatinsert186, <8 x i64> poison, <8 x i32> zeroinitializer ; 2 uses
  %induction = add nuw nsw <8 x i64> %broadcast.splat187, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %cmp.n210 = icmp eq i64 %i.dn, %n.vec185
  br label %.lr.ph.us.i.us

.lr.ph.us.i.us:                                   ; preds = %._crit_edge.us.i.us, %.lr.ph.us.preheader.i.us
  %indvar153 = phi i32 [ %indvar.next154, %._crit_edge.us.i.us ], [ 0, %.lr.ph.us.preheader.i.us ] ; 3 uses
  %indvars.iv344.i.us = phi i64 [ %indvars.iv.next345.i.us, %._crit_edge.us.i.us ], [ %i.cw, %.lr.ph.us.preheader.i.us ] ; 3 uses
  %i.dp = trunc i64 %indvars.iv344.i.us to i32
  %i.dq = sub i32 %i.dp, %i.bp                    ; 2 uses
  %i.dr = mul i32 %i.dq, %i.cj
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.ds ; 6 uses
  %i.du = mul i32 %i.dq, %i.ck
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr [4 x i8], ptr %i.cc, i64 %i.dv ; 6 uses
  %i.dx = mul nuw nsw i64 %indvars.iv344.i.us, %i.k ; 3 uses
  %i.dy = getelementptr [4 x i8], ptr %1, i64 %i.dx ; 2 uses
  br i1 %or.cond, label %vector.memcheck151, label %scalar.ph182.preheader

vector.memcheck151:                               ; preds = %.lr.ph.us.i.us
  %i.dz = mul i32 %i.ck, %indvar153
  %i.ea = sext i32 %i.dz to i64
  %i.eb = shl nsw i64 %i.ea, 2
  %scevgep157 = getelementptr i8, ptr %scevgep156.a, i64 %i.eb ; 3 uses
  %i.ec = mul i32 %i.cj, %indvar153
  %i.ed = sext i32 %i.ec to i64
  %i.ee = shl nsw i64 %i.ed, 2
  %scevgep155 = getelementptr i8, ptr %scevgep152, i64 %i.ee ; 3 uses
  %bound0163 = icmp ult ptr %i.dt, %scevgep157
  %bound1164 = icmp ult ptr %i.dw, %scevgep155
  %found.conflict165 = and i1 %bound0163, %bound1164
  %bound0166 = icmp ult ptr %i.dt, %scevgep160.a
  %bound1167 = icmp ult ptr %scevgep158, %scevgep155
  %found.conflict168 = and i1 %bound0166, %bound1167
  %conflict.rdx169 = or i1 %found.conflict165, %found.conflict168
  %bound0170 = icmp ult ptr %i.dt, %scevgep162
  %bound1171 = icmp ult ptr %scevgep161.a, %scevgep155
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx173 = or i1 %conflict.rdx169, %found.conflict172
  %bound0174 = icmp ult ptr %i.dw, %scevgep160.a
  %bound1175 = icmp ult ptr %scevgep158, %scevgep157
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx177 = or i1 %conflict.rdx173, %found.conflict176
  %bound0178 = icmp ult ptr %i.dw, %scevgep162
  %bound1179 = icmp ult ptr %scevgep161.a, %scevgep157
  %found.conflict180 = and i1 %bound0178, %bound1179
  %conflict.rdx181 = or i1 %conflict.rdx177, %found.conflict180
  br i1 %conflict.rdx181, label %scalar.ph182.preheader, label %vector.ph184

vector.ph184:                                     ; preds = %vector.memcheck151
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.dx
  br label %vector.body190

vector.body190:                                   ; preds = %vector.body190, %vector.ph184
  %index191 = phi i64 [ 0, %vector.ph184 ], [ %index.next207, %vector.body190 ] ; 2 uses
  %vec.ind192 = phi <8 x i64> [ %induction, %vector.ph184 ], [ %vec.ind.next208, %vector.body190 ] ; 2 uses
  %i.ef = add nuw i64 %index191, %i.cv            ; 2 uses
  %i.eg = sub nuw nsw <8 x i64> %vec.ind192, %broadcast.splat187 ; 2 uses
  %i.eh = extractelement <8 x i64> %i.eg, i64 0
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ef ; 3 uses
  %wide.load193.a = load <8 x float>, ptr %gep, align 4, !tbaa !17, !alias.scope !19
  %i.ei = fmul reassoc nsz arcp contract afn <8 x float> %wide.load193.a, %broadcast.splat189 ; 6 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %wide.load194.a = load <8 x float>, ptr %i.ej, align 4, !tbaa !17, !alias.scope !19
  %i.ek = fmul reassoc nsz arcp contract afn <8 x float> %wide.load194.a, %broadcast.splat189 ; 6 uses
  %i.el = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %wide.load195.a = load <8 x float>, ptr %i.el, align 4, !tbaa !17, !alias.scope !19
  %i.em = fmul reassoc nsz arcp contract afn <8 x float> %wide.load195.a, %broadcast.splat189 ; 6 uses
  %i.en = getelementptr [4 x i8], ptr %i.dy, i64 %i.ef
  %wide.load196 = load <8 x float>, ptr %i.en, align 4, !tbaa !17, !alias.scope !22 ; 4 uses
  %i.eo = shl nuw nsw i64 %i.eh, 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.eo
  %i.eq = shufflevector <8 x float> %wide.load196, <8 x float> %i.ei, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.er = shufflevector <8 x float> %i.ek, <8 x float> %i.em, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec197 = shufflevector <16 x float> %i.eq, <16 x float> %i.er, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec197, ptr %i.ep, align 16, !tbaa !17, !alias.scope !24, !noalias !26
  %i.es = fmul reassoc nsz arcp contract afn <8 x float> %wide.load196, %i.ei
  %i.et = mul nuw nsw <8 x i64> %i.eg, splat (i64 36)
  %wide.gep198.a = getelementptr inbounds nuw i8, ptr %i.dw, <8 x i64> %i.et ; 9 uses
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.es, <8 x ptr> align 4 %wide.gep198.a, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.eu = fmul reassoc nsz arcp contract afn <8 x float> %wide.load196, %i.ek
  %wide.gep199.a = getelementptr i8, <8 x ptr> %wide.gep198.a, i64 4
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.eu, <8 x ptr> align 4 %wide.gep199.a, <8 x i1> splat (i1 true)), !tbaa !17, !alias.scope !28, !noalias !29
  %i.ev = fmul reassoc nsz arcp contract afn <8 x float> %i.em, %wide.load196
end_hunk_0
begin_hunk_1_@guided_filter:bb.a
  %wide.masked.gather137 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep, <8 x i1> %i.hx, <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.hy = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec123.a, %strided.vec122.a
  %i.hz = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather137, %i.hy ; 3 uses
  %wide.gep138 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather139 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep138, <8 x i1> %i.hx, <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.ia = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec124.a, %strided.vec122.a
  %i.ib = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather139, %i.ia ; 3 uses
  %wide.gep140 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  %wide.masked.gather141 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep140, <8 x i1> %i.hx, <8 x float> poison), !tbaa !17, !alias.scope !37
  %i.ic = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec125, %strided.vec122.a
  %i.id = fsub reassoc nsz arcp contract afn <8 x float> %wide.masked.gather141, %i.ic ; 3 uses
  %i.ie = fmul reassoc nsz arcp contract afn <8 x float> %i.hz, %i.hk
  %i.if = fmul reassoc nsz arcp contract afn <8 x float> %i.ib, %i.hh
  %i.ig = fmul reassoc nsz arcp contract afn <8 x float> %i.id, %i.he
  %i.ih = fsub reassoc nsz arcp contract afn <8 x float> %i.if, %i.ig ; 2 uses
  %i.ii = fmul reassoc nsz arcp contract afn <8 x float> %i.ib, %i.he ; 2 uses
  %i.ij = fmul reassoc nsz arcp contract afn <8 x float> %i.id, %i.hc ; 2 uses
  %i.ik = fsub reassoc nsz arcp contract afn <8 x float> %i.ii, %i.ij
  %i.il = fmul reassoc nsz arcp contract afn <8 x float> %i.ik, %i.gz
  %i.im = fadd reassoc nsz arcp contract afn <8 x float> %i.il, %i.ie
  %i.in = fmul reassoc nsz arcp contract afn <8 x float> %i.gx, %i.ih
  %i.io = fsub reassoc nsz arcp contract afn <8 x float> %i.im, %i.in
  %i.ip = fmul reassoc nsz arcp contract afn <8 x float> %i.ih, %i.gv
  %i.iq = fmul reassoc nsz arcp contract afn <8 x float> %i.ho, %i.hz
  %i.ir = fsub reassoc nsz arcp contract afn <8 x float> %i.ip, %i.iq
  %i.is = fmul reassoc nsz arcp contract afn <8 x float> %i.id, %i.gx
  %i.it = fmul reassoc nsz arcp contract afn <8 x float> %i.ib, %i.gz
  %i.iu = fsub reassoc nsz arcp contract afn <8 x float> %i.is, %i.it ; 2 uses
  %i.iv = fmul reassoc nsz arcp contract afn <8 x float> %i.iu, %i.gz
  %i.iw = fadd reassoc nsz arcp contract afn <8 x float> %i.ir, %i.iv
  %i.ix = fsub reassoc nsz arcp contract afn <8 x float> %i.ij, %i.ii
  %i.iy = fmul reassoc nsz arcp contract afn <8 x float> %i.ix, %i.gv
  %i.iz = fmul reassoc nsz arcp contract afn <8 x float> %i.hz, %i.ht
  %i.ja = fadd reassoc nsz arcp contract afn <8 x float> %i.iy, %i.iz
  %i.jb = fmul reassoc nsz arcp contract afn <8 x float> %i.gx, %i.iu
  %i.jc = fsub reassoc nsz arcp contract afn <8 x float> %i.ja, %i.jb
  %i.jd = fdiv reassoc nsz arcp contract afn <8 x float> %i.io, %i.hv ; 2 uses
  %i.je = fdiv reassoc nsz arcp contract afn <8 x float> %i.iw, %i.hv ; 2 uses
  %i.jf = fdiv reassoc nsz arcp contract afn <8 x float> %i.jc, %i.hv ; 2 uses
  %i.jg = fmul reassoc nsz arcp contract afn <8 x float> %i.je, %strided.vec124.a
  %i.jh = fmul reassoc nsz arcp contract afn <8 x float> %i.jf, %strided.vec125
  %i.ji = fmul reassoc nsz arcp contract afn <8 x float> %strided.vec123.a, %i.jd
  %i.jj = fadd reassoc nsz arcp contract afn <8 x float> %i.jg, %i.jh
  %i.jk = fadd reassoc nsz arcp contract afn <8 x float> %i.ji, %i.jj
  %i.jl = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec122.a, %i.jk
  %predphi = select nsz <8 x i1> %i.hx, <8 x float> %i.jd, <8 x float> zeroinitializer
  %predphi142.a = select nsz <8 x i1> %i.hx, <8 x float> %i.je, <8 x float> zeroinitializer
  %predphi143.a = select nsz <8 x i1> %i.hx, <8 x float> %i.jf, <8 x float> zeroinitializer
  %predphi144 = select nsz <8 x i1> %i.hx, <8 x float> %i.jl, <8 x float> %strided.vec122.a
  %i.jm = shufflevector <8 x float> %predphi, <8 x float> %predphi142.a, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.jn = shufflevector <8 x float> %predphi143.a, <8 x float> %predphi144, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x float> %i.jm, <16 x float> %i.jn, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x float> %interleaved.vec, ptr %i.gr, align 64, !tbaa !17, !alias.scope !34, !noalias !37
  %index.next145 = add nuw i64 %index120, 8       ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.jo = icmp eq i64 %index.next145, %n.vec116
  br i1 %i.jo, label %middle.block146, label %vector.body119, !llvm.loop !39

middle.block146:                                  ; preds = %vector.body119
  %cmp.n147 = icmp eq i64 %i.bw, %n.vec116
  br i1 %cmp.n147, label %._crit_edge.i.us, label %.lr.ph.i.us.preheader220

.lr.ph.i.us.preheader220:                         ; preds = %vector.memcheck107, %vector.scevcheck104, %.lr.ph.i.us.preheader, %middle.block146
  %.0273326.i.us.ph = phi i64 [ 0, %vector.memcheck107 ], [ 0, %vector.scevcheck104 ], [ 0, %.lr.ph.i.us.preheader ], [ %n.vec116, %middle.block146 ]
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us.preheader220, %bb.f
  %.0273326.i.us = phi i64 [ %i.nl, %bb.f ], [ %.0273326.i.us.ph, %.lr.ph.i.us.preheader220 ] ; 3 uses
  %.idx309.i.us = shl i64 %.0273326.i.us, 4
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx309.i.us ; 5 uses
  %i.jq = load float, ptr %i.jp, align 16, !tbaa !17 ; 5 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 4
  %i.js = getelementptr inbounds nuw i8, ptr %i.jp, i64 8 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 12
  %.idx310.i.us = mul i64 %.0273326.i.us, 36
  %i.ju = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.idx310.i.us ; 8 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 12
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 20
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ju, i64 24
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 32
  %i.ka = load float, ptr %i.jx, align 4, !tbaa !17
  %i.kb = load float, ptr %i.jy, align 4, !tbaa !17
  %i.kc = load float, ptr %i.jv, align 4, !tbaa !17
  %i.kd = load float, ptr %i.jz, align 4, !tbaa !17
  %i.ke = load <2 x float>, ptr %i.jr, align 4, !tbaa !17 ; 5 uses
  %i.kf = extractelement <2 x float> %i.ke, i64 0 ; 2 uses
  %foldExtExtBinop214 = fmul reassoc nsz arcp contract afn <2 x float> %i.ke, %i.ke
  %i.kg = extractelement <2 x float> %foldExtExtBinop214, i64 0
  %i.kh = load <2 x float>, ptr %i.js, align 8, !tbaa !17 ; 6 uses
  %i.ki = fsub reassoc nsz arcp contract afn float %i.kc, %i.kg
  %i.kj = extractelement <2 x float> %i.kh, i64 1 ; 3 uses
  %i.kk = fmul reassoc nsz arcp contract afn float %i.kj, %i.kf
  %i.kl = fadd reassoc nsz arcp contract afn float %i.ki, %i.h ; 3 uses
  %i.km = tail call <4 x float> @llvm.masked.load.v4f32.p0(ptr nonnull align 4 %i.jw, <4 x i1> <i1 true, i1 false, i1 false, i1 true>, <4 x float> poison), !tbaa !17
  %i.kn = shufflevector <4 x float> %i.km, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.ko = fmul reassoc nsz arcp contract afn <2 x float> %i.kh, %i.ke
  %i.kp = fsub reassoc nsz arcp contract afn float %i.ka, %i.kk ; 6 uses
  %i.kq = fmul reassoc nsz arcp contract afn <2 x float> %i.kh, %i.kh
  %i.kr = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.ks = insertelement <2 x float> %i.kr, float %i.kd, i64 1
  %i.kt = fsub reassoc nsz arcp contract afn <2 x float> %i.ks, %i.kq
  %i.ku = fadd reassoc nsz arcp contract afn <2 x float> %i.kt, %i.y ; 2 uses
  %i.kv = fsub reassoc nsz arcp contract afn <2 x float> %i.kn, %i.ko ; 2 uses
  %i.kw = extractelement <2 x float> %i.kv, i64 0 ; 6 uses
  %i.kx = extractelement <2 x float> %i.ku, i64 1 ; 3 uses
  %i.ky = fmul reassoc nsz arcp contract afn float %i.kx, %i.kw
  %i.kz = extractelement <2 x float> %i.ku, i64 0 ; 3 uses
  %i.la = fmul reassoc nsz arcp contract afn float %i.kx, %i.kz
  %i.lb = extractelement <2 x float> %i.kv, i64 1 ; 6 uses
  %i.lc = fmul reassoc nsz arcp contract afn float %i.lb, %i.kp
  %i.ld = fmul reassoc nsz arcp contract afn float %i.lb, %i.lb
  %i.le = fsub reassoc nsz arcp contract afn float %i.ky, %i.lc ; 2 uses
  %i.lf = fsub reassoc nsz arcp contract afn float %i.la, %i.ld ; 2 uses
  %i.lg = fmul reassoc nsz arcp contract afn float %i.lf, %i.kl
  %i.lh = fmul reassoc nsz arcp contract afn float %i.le, %i.kw
  %i.li = fsub reassoc nsz arcp contract afn float %i.lg, %i.lh
  %i.lj = fmul reassoc nsz arcp contract afn float %i.lb, %i.kw
  %i.lk = fmul reassoc nsz arcp contract afn float %i.kz, %i.kp
  %i.ll = fsub reassoc nsz arcp contract afn float %i.lj, %i.lk ; 2 uses
  %i.lm = fmul reassoc nsz arcp contract afn float %i.ll, %i.kp
  %i.ln = fadd reassoc nsz arcp contract afn float %i.li, %i.lm ; 3 uses
  %i.lo = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ln)
  %i.lp = fcmp reassoc nsz arcp contract afn ogt float %i.lo, f0x35000000
  br i1 %i.lp, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.us
  %i.lq = load float, ptr %i.ju, align 4, !tbaa !17
  %i.lr = fmul reassoc nsz arcp contract afn float %i.kf, %i.jq
  %i.ls = fsub reassoc nsz arcp contract afn float %i.lq, %i.lr ; 3 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.lu = extractelement <2 x float> %i.kh, i64 0
  %i.lv = fmul reassoc nsz arcp contract afn float %i.lu, %i.jq
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.lx = fmul reassoc nsz arcp contract afn float %i.kj, %i.jq
  %i.ly = fmul reassoc nsz arcp contract afn float %i.ls, %i.ll
  %i.lz = load float, ptr %i.lw, align 4, !tbaa !17
  %i.ma = load float, ptr %i.lt, align 4, !tbaa !17
  %i.mb = fsub reassoc nsz arcp contract afn float %i.lz, %i.lx ; 3 uses
  %i.mc = fsub reassoc nsz arcp contract afn float %i.ma, %i.lv ; 3 uses
  %i.md = fmul reassoc nsz arcp contract afn float %i.mc, %i.lb ; 2 uses
  %i.me = fmul reassoc nsz arcp contract afn float %i.mb, %i.kz ; 2 uses
  %i.mf = fmul reassoc nsz arcp contract afn float %i.mb, %i.kw
  %i.mg = fmul reassoc nsz arcp contract afn float %i.mc, %i.kx
  %i.mh = fmul reassoc nsz arcp contract afn float %i.mc, %i.kp
  %i.mi = fmul reassoc nsz arcp contract afn float %i.mb, %i.lb
  %i.mj = fsub reassoc nsz arcp contract afn float %i.md, %i.me
  %i.mk = fsub reassoc nsz arcp contract afn float %i.mf, %i.mh ; 2 uses
  %i.ml = fsub reassoc nsz arcp contract afn float %i.mg, %i.mi ; 2 uses
  %i.mm = fmul reassoc nsz arcp contract afn float %i.ml, %i.kl
  %i.mn = fmul reassoc nsz arcp contract afn float %i.mj, %i.kp
  %i.mo = fmul reassoc nsz arcp contract afn float %i.le, %i.ls
  %i.mp = fmul reassoc nsz arcp contract afn float %i.ls, %i.lf
  %i.mq = fsub reassoc nsz arcp contract afn float %i.mm, %i.mo
  %i.mr = fadd reassoc nsz arcp contract afn float %i.mn, %i.mp
  %i.ms = fmul reassoc nsz arcp contract afn float %i.mk, %i.kp
  %i.mt = fmul reassoc nsz arcp contract afn float %i.kw, %i.ml
  %i.mu = fadd reassoc nsz arcp contract afn float %i.mq, %i.ms
  %i.mv = fsub reassoc nsz arcp contract afn float %i.mr, %i.mt
  %i.mw = fsub reassoc nsz arcp contract afn float %i.me, %i.md
  %i.mx = fmul reassoc nsz arcp contract afn float %i.mw, %i.kl
  %i.my = fadd reassoc nsz arcp contract afn float %i.mx, %i.ly
  %i.mz = fmul reassoc nsz arcp contract afn float %i.kw, %i.mk
  %i.na = fsub reassoc nsz arcp contract afn float %i.my, %i.mz
  %i.nb = insertelement <2 x float> poison, float %i.mv, i64 0
  %i.nc = insertelement <2 x float> %i.nb, float %i.mu, i64 1
  %i.nd = insertelement <2 x float> poison, float %i.ln, i64 0
  %i.ne = shufflevector <2 x float> %i.nd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nf = fdiv reassoc nsz arcp contract afn <2 x float> %i.nc, %i.ne ; 3 uses
  %i.ng = fdiv reassoc nsz arcp contract afn float %i.na, %i.ln ; 2 uses
  %shift = shufflevector <2 x float> %i.nf, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop216 = fmul reassoc nsz arcp contract afn <2 x float> %shift, %i.kh
  %.neg52.us = extractelement <2 x float> %foldExtExtBinop216, i64 0
  %.neg316.i.neg.us = fmul reassoc nsz arcp contract afn float %i.ng, %i.kj
  %foldExtExtBinop218 = fmul reassoc nsz arcp contract afn <2 x float> %i.ke, %i.nf
  %i.nh = extractelement <2 x float> %foldExtExtBinop218, i64 0
  %reass.add.us = fadd reassoc nsz arcp contract afn float %.neg52.us, %.neg316.i.neg.us
  %i.ni = fadd reassoc nsz arcp contract afn float %i.nh, %reass.add.us
  %i.nj = fsub reassoc nsz arcp contract afn float %i.jq, %i.ni
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.us
  %.0270.i.us = phi nsz float [ %i.ng, %bb.e ], [ 0.000000e+00, %.lr.ph.i.us ]
  %.0269.i.us = phi nsz float [ %i.nj, %bb.e ], [ %i.jq, %.lr.ph.i.us ]
  %i.nk = phi <2 x float> [ %i.nf, %bb.e ], [ zeroinitializer, %.lr.ph.i.us ]
  store <2 x float> %i.nk, ptr %i.jp, align 16, !tbaa !17
  store float %.0270.i.us, ptr %i.js, align 8, !tbaa !17
  store float %.0269.i.us, ptr %i.jt, align 4, !tbaa !17
  %i.nl = add nuw i64 %.0273326.i.us, 1           ; 2 uses
  %exitcond349.not.i.us = icmp eq i64 %i.nl, %i.bw
  br i1 %exitcond349.not.i.us, label %._crit_edge.i.us, label %.lr.ph.i.us, !llvm.loop !40

._crit_edge.i.us:                                 ; preds = %bb.f, %middle.block146, %._crit_edge325.i.us
  tail call void @free(ptr noundef %i.cc) #8
  tail call void @dt_box_mean(ptr noundef %i.ca, i64 noundef %i.bv, i64 noundef %i.bu, i32 noundef 16777220, i64 noundef %.pre.i, i32 noundef 1) #8
  br i1 %i.al, label %.lr.ph335.i.us, label %_guided_filter_tiling.exit.us

.lr.ph335.i.us:                                   ; preds = %._crit_edge.i.us
  %i.nm = tail call i32 @llvm.smin.i32(i32 %i.bj, i32 %i.bi)
  %i.nn = sext i32 %i.nm to i64                   ; 2 uses
  %i.no = sext i32 %i.bg to i64                   ; 2 uses
  %i.np = icmp slt i64 %indvars.iv, %i.no
  br i1 %i.np, label %.lr.ph331.preheader.i.us, label %_guided_filter_tiling.exit.us

.lr.ph331.preheader.i.us:                         ; preds = %.lr.ph335.i.us
  %i.nq = zext nneg i32 %i.bp to i64              ; 2 uses
  %i.nr = sub i64 %indvars.iv61, %i.nq
  %i.ns = shl i64 %i.nr, 4
  %i.nt = mul i64 %i.ns, %i.bu                    ; 2 uses
  %i.nu = shl nsw i64 %i.nn, 4                    ; 2 uses
  %i.nv = getelementptr i8, ptr %i.ca, i64 %i.nt
  %scevgep82 = getelementptr i8, ptr %i.nv, i64 %i.nu
  %scevgep83 = getelementptr i8, ptr %i.ca, i64 16
  %i.nw = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.bm)
  %smin84 = sext i32 %i.nw to i64
  %i.nx = zext nneg i32 %i.bl to i64
  %i.ny = sub nsw i64 %smin84, %i.nx              ; 2 uses
  %i.nz = shl nsw i64 %i.ny, 4
  %i.oa = mul i64 %i.ag, %i.nz
  %i.ob = getelementptr i8, ptr %scevgep83, i64 %i.nt
  %i.oc = getelementptr i8, ptr %i.ob, i64 %i.oa
  %i.od = getelementptr i8, ptr %i.oc, i64 %i.nu
  %scevgep85 = getelementptr i8, ptr %i.od, i64 %i.be
  %min.iters.check = icmp ugt i64 %15, 7
  %or.cond212 = and i1 %min.iters.check, %ident.check.not
  %bound0 = icmp ult ptr %scevgep, %scevgep85
  %bound1 = icmp ult ptr %scevgep82, %scevgep81
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.ny, 0
  %i.oe = or i1 %found.conflict, %stride.check
  %bound089 = icmp ult ptr %scevgep, %scevgep88
  %bound190 = icmp ult ptr %scevgep86, %scevgep81
  %found.conflict91 = and i1 %bound089, %bound190
  %conflict.rdx = or i1 %i.oe, %found.conflict91
  %n.vec = and i64 %15, -8                        ; 5 uses
  %i.of = add i64 %indvars.iv, %n.vec
  %cmp.n = icmp eq i64 %15, %n.vec
  %i.og = add nsw i64 %smin92, -1
  br label %.lr.ph331.i.us

.lr.ph331.i.us:                                   ; preds = %._crit_edge332.i.us, %.lr.ph331.preheader.i.us
  %indvars.iv355.i.us = phi i64 [ %indvars.iv61, %.lr.ph331.preheader.i.us ], [ %indvars.iv.next356.i.us, %._crit_edge332.i.us ] ; 3 uses
  %i.oh = mul nsw i64 %indvars.iv355.i.us, %i.k   ; 2 uses
  %i.oi = add nsw i64 %i.oh, %indvars.iv          ; 3 uses
  %i.oj = sub nsw i64 %indvars.iv355.i.us, %i.nq
  %i.ok = mul nsw i64 %i.oj, %i.bu
  %i.ol = add nsw i64 %i.ok, %i.nn                ; 3 uses
  %i.om = getelementptr [4 x i8], ptr %2, i64 %i.oh ; 4 uses
  %or.cond212.not = xor i1 %or.cond212, true
  %brmerge = select i1 %or.cond212.not, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph331.i.us
  %i.on = add i64 %i.ol, %n.vec
  %i.oo = add i64 %i.oi, %n.vec
  %i.op = getelementptr [4 x i8], ptr %0, i64 %i.oi
  %i.oq = getelementptr [4 x i8], ptr %i.om, i64 %indvars.iv
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.or = add i64 %i.ol, %index
  %i.os = getelementptr [4 x i8], ptr %i.op, i64 %index ; 3 uses
  %i.ot = shl i64 %i.or, 4
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.ot
  %wide.vec = load <32 x float>, ptr %i.ou, align 16, !tbaa !17, !alias.scope !41 ; 4 uses
  %strided.vec = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28>
  %strided.vec97.a = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %strided.vec98.a = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30>
  %strided.vec99 = shufflevector <32 x float> %wide.vec, <32 x float> poison, <8 x i32> <i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  %wide.load = load <8 x float>, ptr %i.os, align 4, !tbaa !17, !alias.scope !44
  %i.ov = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, %strided.vec
  %i.ow = getelementptr inbounds nuw i8, ptr %i.os, i64 4
  %wide.load100.a = load <8 x float>, ptr %i.ow, align 4, !tbaa !17, !alias.scope !44
  %i.ox = fmul reassoc nsz arcp contract afn <8 x float> %wide.load100.a, %strided.vec97.a
  %i.oy = fadd reassoc nsz arcp contract afn <8 x float> %i.ox, %i.ov
  %i.oz = getelementptr inbounds nuw i8, ptr %i.os, i64 8
  %wide.load101 = load <8 x float>, ptr %i.oz, align 4, !tbaa !17, !alias.scope !44
  %i.pa = fmul reassoc nsz arcp contract afn <8 x float> %wide.load101, %strided.vec98.a
  %i.pb = fadd reassoc nsz arcp contract afn <8 x float> %i.oy, %i.pa
  %i.pc = fmul reassoc nsz arcp contract afn <8 x float> %i.pb, %broadcast.splat
  %i.pd = fadd reassoc nsz arcp contract afn <8 x float> %i.pc, %strided.vec99 ; 3 uses
  %i.pe = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.pd, %broadcast.splat94
  %i.pf = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.pd, %broadcast.splat96
  %i.pg = select reassoc nsz arcp contract afn <8 x i1> %i.pf, <8 x float> %broadcast.splat96, <8 x float> %i.pd
  %i.ph = select reassoc nsz arcp contract afn <8 x i1> %i.pe, <8 x float> %broadcast.splat94, <8 x float> %i.pg
  %i.pi = getelementptr [4 x i8], ptr %i.oq, i64 %index
  store <8 x float> %i.ph, ptr %i.pi, align 4, !tbaa !17, !alias.scope !46, !noalias !48
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.pj = icmp eq i64 %index.next, %n.vec
  br i1 %i.pj, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge332.i.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph331.i.us, %middle.block
  %indvars.iv350.i.us.ph = phi i64 [ %i.of, %middle.block ], [ %indvars.iv, %.lr.ph331.i.us ] ; 5 uses
  %.0266328.i.us.ph = phi i64 [ %i.on, %middle.block ], [ %i.ol, %.lr.ph331.i.us ] ; 3 uses
  %.0267327.i.us.ph = phi i64 [ %i.oo, %middle.block ], [ %i.oi, %.lr.ph331.i.us ] ; 3 uses
  %i.pk = sub i64 %smin92, %indvars.iv350.i.us.ph
  %xtraiter = and i64 %i.pk, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.pl = mul i64 %.0267327.i.us.ph, %i.l
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.pl ; 2 uses
  %.idx.i.us.prol = shl i64 %.0266328.i.us.ph, 4
  %i.pn = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i.us.prol ; 3 uses
  %i.po = load float, ptr %i.pn, align 16, !tbaa !17
  %i.pp = load float, ptr %i.pm, align 4, !tbaa !17
  %i.pq = fmul reassoc nsz arcp contract afn float %i.pp, %i.po
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 4
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.pt = load <2 x float>, ptr %i.pr, align 4, !tbaa !17
  %i.pu = load <2 x float>, ptr %i.ps, align 4, !tbaa !17
  %i.pv = fmul reassoc nsz arcp contract afn <2 x float> %i.pu, %i.pt ; 2 uses
  %i.pw = extractelement <2 x float> %i.pv, i64 0
  %i.px = fadd reassoc nsz arcp contract afn float %i.pw, %i.pq
  %i.py = extractelement <2 x float> %i.pv, i64 1
  %i.pz = fadd reassoc nsz arcp contract afn float %i.px, %i.py
  %i.qa = fmul reassoc nsz arcp contract afn float %i.pz, %8
  %i.qb = getelementptr inbounds nuw i8, ptr %i.pn, i64 12
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !17
  %i.qd = fadd reassoc nsz arcp contract afn float %i.qa, %i.qc ; 3 uses
  %i.qe = fcmp reassoc nsz arcp contract afn ogt float %i.qd, %10
  %i.qf = fcmp reassoc nsz arcp contract afn olt float %i.qd, %9
  %i.qg = select reassoc nsz arcp contract afn i1 %i.qf, float %9, float %i.qd
  %i.qh = select reassoc nsz arcp contract afn i1 %i.qe, float %10, float %i.qg
  %i.qi = getelementptr [4 x i8], ptr %i.om, i64 %indvars.iv350.i.us.ph
  store float %i.qh, ptr %i.qi, align 4, !tbaa !17
  %indvars.iv.next351.i.us.prol = add nsw i64 %indvars.iv350.i.us.ph, 1
  %i.qj = add i64 %.0266328.i.us.ph, 1
  %i.qk = add i64 %.0267327.i.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv350.i.us.unr = phi i64 [ %indvars.iv350.i.us.ph, %scalar.ph.preheader ], [ %indvars.iv.next351.i.us.prol, %scalar.ph.prol ]
  %.0266328.i.us.unr = phi i64 [ %.0266328.i.us.ph, %scalar.ph.preheader ], [ %i.qj, %scalar.ph.prol ]
  %.0267327.i.us.unr = phi i64 [ %.0267327.i.us.ph, %scalar.ph.preheader ], [ %i.qk, %scalar.ph.prol ]
  %i.ql = icmp eq i64 %indvars.iv350.i.us.ph, %i.og
  br i1 %i.ql, label %._crit_edge332.i.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv350.i.us = phi i64 [ %indvars.iv.next351.i.us.1, %scalar.ph ], [ %indvars.iv350.i.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0266328.i.us = phi i64 [ %i.sm, %scalar.ph ], [ %.0266328.i.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.0267327.i.us = phi i64 [ %i.sn, %scalar.ph ], [ %.0267327.i.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.qm = mul i64 %.0267327.i.us, %i.l
  %i.qn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.qm ; 2 uses
  %.idx.i.us = shl i64 %.0266328.i.us, 4
  %i.qo = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx.i.us ; 3 uses
  %i.qp = load float, ptr %i.qo, align 16, !tbaa !17
  %i.qq = load float, ptr %i.qn, align 4, !tbaa !17
  %i.qr = fmul reassoc nsz arcp contract afn float %i.qq, %i.qp
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qo, i64 4
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  %i.qu = load <2 x float>, ptr %i.qs, align 4, !tbaa !17
  %i.qv = load <2 x float>, ptr %i.qt, align 4, !tbaa !17
  %i.qw = fmul reassoc nsz arcp contract afn <2 x float> %i.qv, %i.qu ; 2 uses
  %i.qx = extractelement <2 x float> %i.qw, i64 0
  %i.qy = fadd reassoc nsz arcp contract afn float %i.qx, %i.qr
  %i.qz = extractelement <2 x float> %i.qw, i64 1
  %i.ra = fadd reassoc nsz arcp contract afn float %i.qy, %i.qz
  %i.rb = fmul reassoc nsz arcp contract afn float %i.ra, %8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qo, i64 12
  %i.rd = load float, ptr %i.rc, align 4, !tbaa !17
  %i.re = fadd reassoc nsz arcp contract afn float %i.rb, %i.rd ; 3 uses
  %i.rf = fcmp reassoc nsz arcp contract afn ogt float %i.re, %10
  %i.rg = fcmp reassoc nsz arcp contract afn olt float %i.re, %9
  %i.rh = select reassoc nsz arcp contract afn i1 %i.rg, float %9, float %i.re
  %i.ri = select reassoc nsz arcp contract afn i1 %i.rf, float %10, float %i.rh
  %i.rj = getelementptr [4 x i8], ptr %i.om, i64 %indvars.iv350.i.us
  store float %i.ri, ptr %i.rj, align 4, !tbaa !17
  %i.rk = add i64 %.0267327.i.us, 1
  %i.rl = mul i64 %i.rk, %i.l
  %i.rm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.rl ; 2 uses
  %i.rn = shl i64 %.0266328.i.us, 4
  %i.ro = getelementptr i8, ptr %i.ca, i64 %i.rn  ; 3 uses
  %i.rp = getelementptr i8, ptr %i.ro, i64 16
  %i.rq = load float, ptr %i.rp, align 16, !tbaa !17
  %i.rr = load float, ptr %i.rm, align 4, !tbaa !17
  %i.rs = fmul reassoc nsz arcp contract afn float %i.rr, %i.rq
  %i.rt = getelementptr i8, ptr %i.ro, i64 20
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rm, i64 4
  %i.rv = load <2 x float>, ptr %i.rt, align 4, !tbaa !17
  %i.rw = load <2 x float>, ptr %i.ru, align 4, !tbaa !17
  %i.rx = fmul reassoc nsz arcp contract afn <2 x float> %i.rw, %i.rv ; 2 uses
  %i.ry = extractelement <2 x float> %i.rx, i64 0
  %i.rz = fadd reassoc nsz arcp contract afn float %i.ry, %i.rs
  %i.sa = extractelement <2 x float> %i.rx, i64 1
  %i.sb = fadd reassoc nsz arcp contract afn float %i.rz, %i.sa
  %i.sc = fmul reassoc nsz arcp contract afn float %i.sb, %8
  %i.sd = getelementptr i8, ptr %i.ro, i64 28
  %i.se = load float, ptr %i.sd, align 4, !tbaa !17
  %i.sf = fadd reassoc nsz arcp contract afn float %i.sc, %i.se ; 3 uses
  %i.sg = fcmp reassoc nsz arcp contract afn ogt float %i.sf, %10
  %i.sh = fcmp reassoc nsz arcp contract afn olt float %i.sf, %9
  %i.si = select reassoc nsz arcp contract afn i1 %i.sh, float %9, float %i.sf
  %i.sj = select reassoc nsz arcp contract afn i1 %i.sg, float %10, float %i.si
  %i.sk = getelementptr [4 x i8], ptr %i.om, i64 %indvars.iv350.i.us
  %i.sl = getelementptr i8, ptr %i.sk, i64 4
  store float %i.sj, ptr %i.sl, align 4, !tbaa !17
  %indvars.iv.next351.i.us.1 = add nsw i64 %indvars.iv350.i.us, 2 ; 2 uses
  %i.sm = add i64 %.0266328.i.us, 2
  %i.sn = add i64 %.0267327.i.us, 2
  %exitcond354.not.i.us.1 = icmp eq i64 %indvars.iv.next351.i.us.1, %i.no
  br i1 %exitcond354.not.i.us.1, label %._crit_edge332.i.us, label %scalar.ph, !llvm.loop !50

._crit_edge332.i.us:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next356.i.us = add nsw i64 %indvars.iv355.i.us, 1 ; 2 uses
  %exitcond359.not.i.us = icmp eq i64 %indvars.iv.next356.i.us, %i.ak
  br i1 %exitcond359.not.i.us, label %_guided_filter_tiling.exit.us, label %.lr.ph331.i.us

_guided_filter_tiling.exit.us:                    ; preds = %._crit_edge332.i.us, %.lr.ph335.i.us, %._crit_edge.i.us
  tail call void @free(ptr noundef %i.ca) #8
  %i.so = icmp slt i64 %indvars.iv.next, %i.k
  %indvar.next78 = add i64 %indvar77, 1
  br i1 %i.so, label %bb.d, label %._crit_edge.us

._crit_edge.us:                                   ; preds = %_guided_filter_tiling.exit.us
  %i.sp = icmp slt i64 %indvars.iv.next62, %i.n
  %indvar.next = add i64 %indvar, 1
  br i1 %i.sp, label %.preheader.us, label %._crit_edge57

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader
  %.04356 = phi i32 [ %i.sq, %.preheader ], [ 0, %.preheader.lr.ph ]
  %i.sq = add nsw i32 %.04356, %i.g               ; 2 uses
  %i.sr = icmp slt i32 %i.sq, %4
  br i1 %i.sr, label %.preheader, label %._crit_edge57

._crit_edge57:                                    ; preds = %.preheader, %._crit_edge.us, %bb.c
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #8 = { nounwind }

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
end_hunk_1
