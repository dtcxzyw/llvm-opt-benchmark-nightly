Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_pxr24?download=true
inline.NumInlined: 17
inline.NumDeleted: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_apply_pxr24(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !48
  %i.f = tail call i32 @internal_encode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.e) #5 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !49   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !51   ; 2 uses
  %.not187259.i = icmp sgt i32 %i.k, 0
  br i1 %.not187259.i, label %.lr.ph265.i, label %.thread222.i

.lr.ph265.i:                                      ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i16, ptr %i.m, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph265.i
  %i.o = phi i32 [ %i.k, %.lr.ph265.i ], [ %i.js, %._crit_edge.i ]
  %i.p = phi i16 [ %.pre.i, %.lr.ph265.i ], [ %i.jt, %._crit_edge.i ] ; 2 uses
  %.0137263.i = phi ptr [ %i.g, %.lr.ph265.i ], [ %.1138.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0145262.i = phi i64 [ 0, %.lr.ph265.i ], [ %.1146.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0157261.i = phi ptr [ %i.i, %.lr.ph265.i ], [ %.1158.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0168260.i = phi i32 [ 0, %.lr.ph265.i ], [ %i.ju, %._crit_edge.i ] ; 2 uses
  %i.q = load i32, ptr %i.l, align 8, !tbaa !53
  %i.r = add nsw i32 %i.q, %.0168260.i
  %i.s = icmp sgt i16 %i.p, 0
  br i1 %i.s, label %.lr.ph256.i, label %._crit_edge.i

.lr.ph256.i:                                      ; preds = %bb.c, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ 0, %bb.c ] ; 2 uses
  %.1138255.i = phi ptr [ %.6143.i, %.loopexit.i ], [ %.0137263.i, %bb.c ] ; 34 uses
  %.1146254.i = phi i64 [ %.6151.i, %.loopexit.i ], [ %.0145262.i, %bb.c ] ; 5 uses
  %.1158253.i = phi ptr [ %.6163.i, %.loopexit.i ], [ %.0157261.i, %bb.c ] ; 29 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %indvars.iv.i ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16   ; 23 uses
  %i.x = sext i32 %i.w to i64                     ; 19 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load i32, ptr %i.y, align 8, !tbaa !17
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph256.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !18 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 1
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ae = srem i32 %i.r, %i.ac
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %bb.f, label %.loopexit.i

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 26
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !19
  switch i16 %i.ag, label %apply_pxr24_impl.exit [
    i16 0, label %bb.g
    i16 1, label %bb.i
    i16 2, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  %i.ah = shl nsw i64 %i.x, 2                     ; 2 uses
  %i.ai = add i64 %i.ah, %.1146254.i              ; 5 uses
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !55
  %.not186.i = icmp ugt i64 %i.ai, %i.aj
  br i1 %.not186.i, label %apply_pxr24_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.1158253.i, i64 %i.ah ; 4 uses
  %i.al = getelementptr i8, ptr %.1138255.i, i64 %i.x ; 9 uses
  %i.am = getelementptr i8, ptr %i.al, i64 %i.x   ; 9 uses
  %i.an = getelementptr i8, ptr %i.am, i64 %i.x   ; 9 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.x ; 4 uses
  %i.ap = icmp sgt i32 %i.w, 0
  br i1 %i.ap, label %.lr.ph251.i.preheader, label %.loopexit.i

.lr.ph251.i.preheader:                            ; preds = %bb.h
  %i.aq = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.w, 24
  br i1 %min.iters.check, label %.lr.ph251.i.preheader236, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph251.i.preheader
  %i.ar = add nsw i32 %i.w, -1
  %i.as = zext i32 %i.ar to i64                   ; 4 uses
  %i.at = zext nneg i32 %i.w to i64
  %i.au = getelementptr i8, ptr %.1138255.i, i64 %i.at ; 4 uses
  %i.av = getelementptr i8, ptr %.1138255.i, i64 %i.x
  %i.aw = getelementptr i8, ptr %i.av, i64 %i.as
  %i.ax = getelementptr i8, ptr %i.aw, i64 1      ; 4 uses
  %i.ay = shl nuw nsw i64 %i.x, 1
  %i.az = getelementptr i8, ptr %.1138255.i, i64 %i.ay
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.as
  %i.bb = getelementptr i8, ptr %i.ba, i64 1      ; 4 uses
  %1 = mul nuw nsw i64 %i.x, 3
  %2 = getelementptr i8, ptr %.1138255.i, i64 %1
  %3 = getelementptr i8, ptr %2, i64 %i.as
  %4 = getelementptr i8, ptr %3, i64 1            ; 4 uses
  %5 = shl nuw nsw i64 %i.as, 2
  %i.bc = getelementptr i8, ptr %.1158253.i, i64 %5
  %i.bd = getelementptr i8, ptr %i.bc, i64 4      ; 4 uses
  %bound0 = icmp ult ptr %.1138255.i, %i.ax
  %bound1 = icmp ult ptr %i.al, %i.au
  %found.conflict = and i1 %bound0, %bound1
  %bound073.a = icmp ult ptr %.1138255.i, %i.bb
  %bound174.a = icmp ult ptr %i.am, %i.au
  %found.conflict75.a = and i1 %bound073.a, %bound174.a
  %conflict.rdx.a = or i1 %found.conflict, %found.conflict75.a
  %bound076 = icmp ult ptr %.1138255.i, %4
  %bound177 = icmp ult ptr %i.an, %i.au
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx79 = or i1 %conflict.rdx.a, %found.conflict78
  %bound080 = icmp ult ptr %.1138255.i, %i.bd
  %bound181 = icmp ult ptr %.1158253.i, %i.au
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx83 = or i1 %conflict.rdx79, %found.conflict82
  %bound084 = icmp ult ptr %i.al, %i.bb
  %bound185 = icmp ult ptr %i.am, %i.ax
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %conflict.rdx83, %found.conflict86
  %bound088 = icmp ult ptr %i.al, %4
  %bound189 = icmp ult ptr %i.an, %i.ax
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %conflict.rdx87, %found.conflict90
  %bound092 = icmp ult ptr %i.al, %i.bd
  %bound193 = icmp ult ptr %.1158253.i, %i.ax
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx91, %found.conflict94
  %bound096 = icmp ult ptr %i.am, %4
  %bound197 = icmp ult ptr %i.an, %i.bb
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %i.am, %i.bd
  %bound1101 = icmp ult ptr %.1158253.i, %i.bb
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %i.an, %i.bd
  %bound1105 = icmp ult ptr %.1158253.i, %4
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  br i1 %conflict.rdx107, label %.lr.ph251.i.preheader236, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 2147483644              ; 8 uses
  %i.be = trunc nuw nsw i64 %n.vec to i32
  %i.bf = shl nuw nsw i64 %n.vec, 2
  %i.bg = getelementptr i8, ptr %.1158253.i, i64 %i.bf
  %i.bh = getelementptr i8, ptr %.1138255.i, i64 %n.vec
  %i.bi = getelementptr i8, ptr %i.al, i64 %n.vec
  %i.bj = getelementptr i8, ptr %i.am, i64 %n.vec
  %i.bk = getelementptr i8, ptr %i.an, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %wide.load, %vector.body ]
  %i.bl = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1158253.i, i64 %i.bl
  %next.gep108 = getelementptr i8, ptr %.1138255.i, i64 %index
  %next.gep109 = getelementptr i8, ptr %i.al, i64 %index
  %next.gep110 = getelementptr i8, ptr %i.am, i64 %index
  %next.gep111 = getelementptr i8, ptr %i.an, i64 %index
  %wide.load = load <4 x i32>, ptr %next.gep, align 1, !alias.scope !56 ; 4 uses
  %i.bm = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bn = sub <4 x i32> %wide.load, %i.bm         ; 4 uses
  %i.bo = lshr <4 x i32> %i.bn, splat (i32 24)
  %i.bp = trunc nuw <4 x i32> %i.bo to <4 x i8>
  store <4 x i8> %i.bp, ptr %next.gep108, align 1, !tbaa !20, !alias.scope !57, !noalias !58
  %i.bq = lshr <4 x i32> %i.bn, splat (i32 16)
  %i.br = trunc <4 x i32> %i.bq to <4 x i8>
  store <4 x i8> %i.br, ptr %next.gep109, align 1, !tbaa !20, !alias.scope !59, !noalias !60
  %i.bs = lshr <4 x i32> %i.bn, splat (i32 8)
  %i.bt = trunc <4 x i32> %i.bs to <4 x i8>
  store <4 x i8> %i.bt, ptr %next.gep110, align 1, !tbaa !20, !alias.scope !61, !noalias !62
  %i.bu = trunc <4 x i32> %i.bn to <4 x i8>
  store <4 x i8> %i.bu, ptr %next.gep111, align 1, !tbaa !20, !alias.scope !63, !noalias !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph251.i.preheader236

.lr.ph251.i.preheader236:                         ; preds = %vector.memcheck, %.lr.ph251.i.preheader, %middle.block
  %.0175250.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph251.i.preheader ], [ %i.be, %middle.block ] ; 4 uses
  %.0176249.i.ph = phi ptr [ %.1158253.i, %vector.memcheck ], [ %.1158253.i, %.lr.ph251.i.preheader ], [ %i.bg, %middle.block ] ; 3 uses
  %.0177248.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph251.i.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.sroa.037.0247.i.ph = phi ptr [ %.1138255.i, %vector.memcheck ], [ %.1138255.i, %.lr.ph251.i.preheader ], [ %i.bh, %middle.block ] ; 3 uses
  %.sroa.538.0246.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph251.i.preheader ], [ %i.bi, %middle.block ] ; 3 uses
  %.sroa.839.0245.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph251.i.preheader ], [ %i.bj, %middle.block ] ; 3 uses
  %.sroa.11.0244.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph251.i.preheader ], [ %i.bk, %middle.block ] ; 3 uses
  %i.bw = sub i32 %i.w, %.0175250.i.ph
  %.neg = add i32 %.0175250.i.ph, 1
  %xtraiter243 = and i32 %i.bw, 1
  %lcmp.mod244.not = icmp eq i32 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.lr.ph251.i.prol.loopexit, label %.lr.ph251.i.prol

.lr.ph251.i.prol:                                 ; preds = %.lr.ph251.i.preheader236
  %.0176.val.i.prol = load i32, ptr %.0176249.i.ph, align 1 ; 2 uses
  %i.bx = sub i32 %.0176.val.i.prol, %.0177248.i.ph ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.0176249.i.ph, i64 4
  %i.bz = lshr i32 %i.bx, 24
  %i.ca = trunc nuw i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i.ph, i64 1
  store i8 %i.ca, ptr %.sroa.037.0247.i.ph, align 1, !tbaa !20
  %i.cc = lshr i32 %i.bx, 16
  %i.cd = trunc i32 %i.cc to i8
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i.ph, i64 1
  store i8 %i.cd, ptr %.sroa.538.0246.i.ph, align 1, !tbaa !20
  %i.cf = lshr i32 %i.bx, 8
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i.ph, i64 1
  store i8 %i.cg, ptr %.sroa.839.0245.i.ph, align 1, !tbaa !20
  %i.ci = trunc i32 %i.bx to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i.ph, i64 1
  store i8 %i.ci, ptr %.sroa.11.0244.i.ph, align 1, !tbaa !20
  %i.ck = add nuw nsw i32 %.0175250.i.ph, 1
  br label %.lr.ph251.i.prol.loopexit

.lr.ph251.i.prol.loopexit:                        ; preds = %.lr.ph251.i.prol, %.lr.ph251.i.preheader236
  %.0175250.i.unr = phi i32 [ %.0175250.i.ph, %.lr.ph251.i.preheader236 ], [ %i.ck, %.lr.ph251.i.prol ]
  %.0176249.i.unr = phi ptr [ %.0176249.i.ph, %.lr.ph251.i.preheader236 ], [ %i.by, %.lr.ph251.i.prol ]
  %.0177248.i.unr = phi i32 [ %.0177248.i.ph, %.lr.ph251.i.preheader236 ], [ %.0176.val.i.prol, %.lr.ph251.i.prol ]
  %.sroa.037.0247.i.unr = phi ptr [ %.sroa.037.0247.i.ph, %.lr.ph251.i.preheader236 ], [ %i.cb, %.lr.ph251.i.prol ]
  %.sroa.538.0246.i.unr = phi ptr [ %.sroa.538.0246.i.ph, %.lr.ph251.i.preheader236 ], [ %i.ce, %.lr.ph251.i.prol ]
  %.sroa.839.0245.i.unr = phi ptr [ %.sroa.839.0245.i.ph, %.lr.ph251.i.preheader236 ], [ %i.ch, %.lr.ph251.i.prol ]
  %.sroa.11.0244.i.unr = phi ptr [ %.sroa.11.0244.i.ph, %.lr.ph251.i.preheader236 ], [ %i.cj, %.lr.ph251.i.prol ]
  %i.cl = icmp eq i32 %i.w, %.neg
  br i1 %i.cl, label %.loopexit.i, label %.lr.ph251.i

.lr.ph251.i:                                      ; preds = %.lr.ph251.i.prol.loopexit, %.lr.ph251.i
  %.0175250.i = phi i32 [ %i.dm, %.lr.ph251.i ], [ %.0175250.i.unr, %.lr.ph251.i.prol.loopexit ]
  %.0176249.i = phi ptr [ %i.da, %.lr.ph251.i ], [ %.0176249.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.0177248.i = phi i32 [ %.0176.val.i.1, %.lr.ph251.i ], [ %.0177248.i.unr, %.lr.ph251.i.prol.loopexit ]
  %.sroa.037.0247.i = phi ptr [ %i.dd, %.lr.ph251.i ], [ %.sroa.037.0247.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.538.0246.i = phi ptr [ %i.dg, %.lr.ph251.i ], [ %.sroa.538.0246.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.839.0245.i = phi ptr [ %i.dj, %.lr.ph251.i ], [ %.sroa.839.0245.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.11.0244.i = phi ptr [ %i.dl, %.lr.ph251.i ], [ %.sroa.11.0244.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.0176.val.i = load i32, ptr %.0176249.i, align 1 ; 2 uses
  %i.cm = sub i32 %.0176.val.i, %.0177248.i       ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0176249.i, i64 4
  %i.co = lshr i32 %i.cm, 24
  %i.cp = trunc nuw i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i, i64 1
  store i8 %i.cp, ptr %.sroa.037.0247.i, align 1, !tbaa !20
  %i.cr = lshr i32 %i.cm, 16
  %i.cs = trunc i32 %i.cr to i8
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i, i64 1
  store i8 %i.cs, ptr %.sroa.538.0246.i, align 1, !tbaa !20
  %i.cu = lshr i32 %i.cm, 8
  %i.cv = trunc i32 %i.cu to i8
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i, i64 1
  store i8 %i.cv, ptr %.sroa.839.0245.i, align 1, !tbaa !20
  %i.cx = trunc i32 %i.cm to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i, i64 1
  store i8 %i.cx, ptr %.sroa.11.0244.i, align 1, !tbaa !20
  %.0176.val.i.1 = load i32, ptr %i.cn, align 1   ; 2 uses
  %i.cz = sub i32 %.0176.val.i.1, %.0176.val.i    ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.0176249.i, i64 8
  %i.db = lshr i32 %i.cz, 24
  %i.dc = trunc nuw i32 %i.db to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i, i64 2
  store i8 %i.dc, ptr %i.cq, align 1, !tbaa !20
  %i.de = lshr i32 %i.cz, 16
  %i.df = trunc i32 %i.de to i8
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i, i64 2
  store i8 %i.df, ptr %i.ct, align 1, !tbaa !20
  %i.dh = lshr i32 %i.cz, 8
  %i.di = trunc i32 %i.dh to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i, i64 2
  store i8 %i.di, ptr %i.cw, align 1, !tbaa !20
  %i.dk = trunc i32 %i.cz to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i, i64 2
  store i8 %i.dk, ptr %i.cy, align 1, !tbaa !20
  %i.dm = add nuw nsw i32 %.0175250.i, 2          ; 2 uses
  %exitcond270.not.i.1 = icmp eq i32 %i.dm, %i.w
  br i1 %exitcond270.not.i.1, label %.loopexit.i, label %.lr.ph251.i, !llvm.loop !30

bb.i:                                             ; preds = %bb.f
  %i.dn = shl nsw i64 %i.x, 1                     ; 2 uses
  %i.do = add i64 %i.dn, %.1146254.i              ; 5 uses
  %i.dp = load i64, ptr %i.c, align 8, !tbaa !55
  %.not185.i = icmp ugt i64 %i.do, %i.dp
  br i1 %.not185.i, label %apply_pxr24_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.1158253.i, i64 %i.dn ; 4 uses
  %i.dr = getelementptr i8, ptr %.1138255.i, i64 %i.x ; 6 uses
  %i.ds = getelementptr inbounds i8, ptr %i.dr, i64 %i.x ; 4 uses
  %i.dt = icmp sgt i32 %i.w, 0
  br i1 %i.dt, label %.lr.ph243.i.preheader, label %.loopexit.i

.lr.ph243.i.preheader:                            ; preds = %bb.j
  %i.du = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check131 = icmp ult i32 %i.w, 8
  br i1 %min.iters.check131, label %.lr.ph243.i.preheader237, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.lr.ph243.i.preheader
  %i.dv = add nsw i32 %i.w, -1
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = getelementptr i8, ptr %.1138255.i, i64 %i.x
  %i.dy = getelementptr i8, ptr %i.dx, i64 %i.dw
  %i.dz = getelementptr i8, ptr %i.dy, i64 1
  %i.ea = shl nuw nsw i64 %i.dw, 1
  %i.eb = getelementptr i8, ptr %.1158253.i, i64 %i.ea
  %i.ec = getelementptr i8, ptr %i.eb, i64 2      ; 2 uses
  %6 = zext nneg i32 %i.w to i64
  %7 = getelementptr i8, ptr %.1138255.i, i64 %6
  %bound0133 = icmp ult ptr %i.dr, %i.ec
  %bound1134 = icmp ult ptr %.1158253.i, %i.dz
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0136 = icmp ult ptr %.1138255.i, %i.ec
  %bound1137 = icmp ult ptr %.1158253.i, %7
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %found.conflict135, %found.conflict138
  br i1 %conflict.rdx139, label %.lr.ph243.i.preheader237, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck132
  %n.vec141 = and i64 %i.du, 2147483640           ; 6 uses
  %i.ed = trunc nuw nsw i64 %n.vec141 to i32
  %i.ee = shl nuw nsw i64 %n.vec141, 1
  %i.ef = getelementptr i8, ptr %.1158253.i, i64 %i.ee
  %i.eg = getelementptr i8, ptr %.1138255.i, i64 %n.vec141
  %i.eh = getelementptr i8, ptr %i.dr, i64 %n.vec141
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next149, %vector.body142 ] ; 4 uses
  %vector.recur144 = phi <8 x i32> [ <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph140 ], [ %i.ej, %vector.body142 ]
  %i.ei = shl i64 %index143, 1
  %next.gep145 = getelementptr i8, ptr %.1158253.i, i64 %i.ei
  %next.gep146 = getelementptr i8, ptr %.1138255.i, i64 %index143
  %next.gep147 = getelementptr i8, ptr %i.dr, i64 %index143
  %wide.load148 = load <8 x i16>, ptr %next.gep145, align 1, !alias.scope !66
  %i.ej = zext <8 x i16> %wide.load148 to <8 x i32> ; 4 uses
  %i.ek = shufflevector <8 x i32> %vector.recur144, <8 x i32> %i.ej, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.el = sub nsw <8 x i32> %i.ej, %i.ek          ; 2 uses
  %i.em = lshr <8 x i32> %i.el, splat (i32 8)
  %i.en = trunc <8 x i32> %i.em to <8 x i8>
  store <8 x i8> %i.en, ptr %next.gep146, align 1, !tbaa !20, !alias.scope !67, !noalias !66
  %i.eo = trunc <8 x i32> %i.el to <8 x i8>
  store <8 x i8> %i.eo, ptr %next.gep147, align 1, !tbaa !20, !alias.scope !68, !noalias !66
  %index.next149 = add nuw i64 %index143, 8       ; 2 uses
  %i.ep = icmp eq i64 %index.next149, %n.vec141
  br i1 %i.ep, label %middle.block150, label %vector.body142, !llvm.loop !35

middle.block150:                                  ; preds = %vector.body142
  %vector.recur.extract151 = extractelement <8 x i32> %i.ej, i64 7
  %cmp.n152 = icmp eq i64 %n.vec141, %i.du
  br i1 %cmp.n152, label %.loopexit.i, label %.lr.ph243.i.preheader237

.lr.ph243.i.preheader237:                         ; preds = %vector.memcheck132, %.lr.ph243.i.preheader, %middle.block150
  %.0165242.i.ph = phi i32 [ 0, %vector.memcheck132 ], [ 0, %.lr.ph243.i.preheader ], [ %i.ed, %middle.block150 ] ; 4 uses
  %.0166241.i.ph = phi ptr [ %.1158253.i, %vector.memcheck132 ], [ %.1158253.i, %.lr.ph243.i.preheader ], [ %i.ef, %middle.block150 ] ; 2 uses
  %.0167240.i.ph = phi i32 [ 0, %vector.memcheck132 ], [ 0, %.lr.ph243.i.preheader ], [ %vector.recur.extract151, %middle.block150 ] ; 2 uses
  %.sroa.024.0239.i.ph = phi ptr [ %.1138255.i, %vector.memcheck132 ], [ %.1138255.i, %.lr.ph243.i.preheader ], [ %i.eg, %middle.block150 ] ; 2 uses
  %.sroa.525.0238.i.ph = phi ptr [ %i.dr, %vector.memcheck132 ], [ %i.dr, %.lr.ph243.i.preheader ], [ %i.eh, %middle.block150 ] ; 2 uses
  %i.eq = sub i32 %i.w, %.0165242.i.ph
  %xtraiter = and i32 %i.eq, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph243.i.prol.loopexit, label %.lr.ph243.i.prol

.lr.ph243.i.prol:                                 ; preds = %.lr.ph243.i.preheader237, %.lr.ph243.i.prol
  %.0165242.i.prol = phi i32 [ %i.ez, %.lr.ph243.i.prol ], [ %.0165242.i.ph, %.lr.ph243.i.preheader237 ]
  %.0166241.i.prol = phi ptr [ %i.et, %.lr.ph243.i.prol ], [ %.0166241.i.ph, %.lr.ph243.i.preheader237 ] ; 2 uses
  %.0167240.i.prol = phi i32 [ %i.er, %.lr.ph243.i.prol ], [ %.0167240.i.ph, %.lr.ph243.i.preheader237 ]
  %.sroa.024.0239.i.prol = phi ptr [ %i.ew, %.lr.ph243.i.prol ], [ %.sroa.024.0239.i.ph, %.lr.ph243.i.preheader237 ] ; 2 uses
  %.sroa.525.0238.i.prol = phi ptr [ %i.ey, %.lr.ph243.i.prol ], [ %.sroa.525.0238.i.ph, %.lr.ph243.i.preheader237 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph243.i.prol ], [ 0, %.lr.ph243.i.preheader237 ]
  %.0166.val.i.prol = load i16, ptr %.0166241.i.prol, align 1
  %i.er = zext i16 %.0166.val.i.prol to i32       ; 3 uses
  %i.es = sub nsw i32 %i.er, %.0167240.i.prol     ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.0166241.i.prol, i64 2 ; 2 uses
  %i.eu = lshr i32 %i.es, 8
  %i.ev = trunc i32 %i.eu to i8
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i.prol, i64 1 ; 2 uses
  store i8 %i.ev, ptr %.sroa.024.0239.i.prol, align 1, !tbaa !20
  %i.ex = trunc i32 %i.es to i8
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i.prol, i64 1 ; 2 uses
  store i8 %i.ex, ptr %.sroa.525.0238.i.prol, align 1, !tbaa !20
  %i.ez = add nuw nsw i32 %.0165242.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph243.i.prol.loopexit, label %.lr.ph243.i.prol, !llvm.loop !36

.lr.ph243.i.prol.loopexit:                        ; preds = %.lr.ph243.i.prol, %.lr.ph243.i.preheader237
  %.0165242.i.unr = phi i32 [ %.0165242.i.ph, %.lr.ph243.i.preheader237 ], [ %i.ez, %.lr.ph243.i.prol ]
  %.0166241.i.unr = phi ptr [ %.0166241.i.ph, %.lr.ph243.i.preheader237 ], [ %i.et, %.lr.ph243.i.prol ]
  %.0167240.i.unr = phi i32 [ %.0167240.i.ph, %.lr.ph243.i.preheader237 ], [ %i.er, %.lr.ph243.i.prol ]
  %.sroa.024.0239.i.unr = phi ptr [ %.sroa.024.0239.i.ph, %.lr.ph243.i.preheader237 ], [ %i.ew, %.lr.ph243.i.prol ]
  %.sroa.525.0238.i.unr = phi ptr [ %.sroa.525.0238.i.ph, %.lr.ph243.i.preheader237 ], [ %i.ey, %.lr.ph243.i.prol ]
  %i.fa = sub i32 %.0165242.i.ph, %i.w
  %i.fb = icmp ugt i32 %i.fa, -4
  br i1 %i.fb, label %.loopexit.i, label %.lr.ph243.i

.lr.ph243.i:                                      ; preds = %.lr.ph243.i.prol.loopexit, %.lr.ph243.i
  %.0165242.i = phi i32 [ %i.gi, %.lr.ph243.i ], [ %.0165242.i.unr, %.lr.ph243.i.prol.loopexit ]
  %.0166241.i = phi ptr [ %i.gc, %.lr.ph243.i ], [ %.0166241.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.0167240.i = phi i32 [ %i.ga, %.lr.ph243.i ], [ %.0167240.i.unr, %.lr.ph243.i.prol.loopexit ]
  %.sroa.024.0239.i = phi ptr [ %i.gf, %.lr.ph243.i ], [ %.sroa.024.0239.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.sroa.525.0238.i = phi ptr [ %i.gh, %.lr.ph243.i ], [ %.sroa.525.0238.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.0166.val.i = load i16, ptr %.0166241.i, align 1
  %i.fc = zext i16 %.0166.val.i to i32            ; 2 uses
  %i.fd = sub nsw i32 %i.fc, %.0167240.i          ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 2
  %i.ff = lshr i32 %i.fd, 8
  %i.fg = trunc i32 %i.ff to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 1
  store i8 %i.fg, ptr %.sroa.024.0239.i, align 1, !tbaa !20
  %i.fi = trunc i32 %i.fd to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 1
  store i8 %i.fi, ptr %.sroa.525.0238.i, align 1, !tbaa !20
  %.0166.val.i.1 = load i16, ptr %i.fe, align 1
  %i.fk = zext i16 %.0166.val.i.1 to i32          ; 2 uses
  %i.fl = sub nsw i32 %i.fk, %i.fc                ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 4
  %i.fn = lshr i32 %i.fl, 8
  %i.fo = trunc i32 %i.fn to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 2
  store i8 %i.fo, ptr %i.fh, align 1, !tbaa !20
  %i.fq = trunc i32 %i.fl to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 2
  store i8 %i.fq, ptr %i.fj, align 1, !tbaa !20
  %.0166.val.i.2 = load i16, ptr %i.fm, align 1
  %i.fs = zext i16 %.0166.val.i.2 to i32          ; 2 uses
  %i.ft = sub nsw i32 %i.fs, %i.fk                ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 6
  %i.fv = lshr i32 %i.ft, 8
  %i.fw = trunc i32 %i.fv to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 3
  store i8 %i.fw, ptr %i.fp, align 1, !tbaa !20
  %i.fy = trunc i32 %i.ft to i8
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 3
  store i8 %i.fy, ptr %i.fr, align 1, !tbaa !20
  %.0166.val.i.3 = load i16, ptr %i.fu, align 1
  %i.ga = zext i16 %.0166.val.i.3 to i32          ; 2 uses
  %i.gb = sub nsw i32 %i.ga, %i.fs                ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 8
  %i.gd = lshr i32 %i.gb, 8
  %i.ge = trunc i32 %i.gd to i8
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 4
  store i8 %i.ge, ptr %i.fx, align 1, !tbaa !20
  %i.gg = trunc i32 %i.gb to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 4
  store i8 %i.gg, ptr %i.fz, align 1, !tbaa !20
  %i.gi = add nuw nsw i32 %.0165242.i, 4          ; 2 uses
  %exitcond269.not.i.3 = icmp eq i32 %i.gi, %i.w
  br i1 %exitcond269.not.i.3, label %.loopexit.i, label %.lr.ph243.i, !llvm.loop !37

bb.k:                                             ; preds = %bb.f
  %i.gj = mul nsw i64 %i.x, 3
  %i.gk = add i64 %i.gj, %.1146254.i              ; 4 uses
  %i.gl = load i64, ptr %i.c, align 8, !tbaa !55
  %.not184.i = icmp ugt i64 %i.gk, %i.gl
  br i1 %.not184.i, label %apply_pxr24_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gm = shl nsw i64 %i.x, 2
  %i.gn = getelementptr inbounds nuw i8, ptr %.1158253.i, i64 %i.gm ; 3 uses
  %i.go = getelementptr i8, ptr %.1138255.i, i64 %i.x ; 8 uses
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.x   ; 8 uses
  %i.gq = getelementptr inbounds i8, ptr %i.gp, i64 %i.x ; 3 uses
  %i.gr = icmp sgt i32 %i.w, 0
  br i1 %i.gr, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.gs = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check188 = icmp ult i32 %i.w, 8
  br i1 %min.iters.check188, label %.lr.ph.i.preheader239, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.lr.ph.i.preheader
  %i.gt = add nsw i32 %i.w, -1
  %i.gu = zext i32 %i.gt to i64                   ; 3 uses
  %i.gv = zext nneg i32 %i.w to i64
  %i.gw = getelementptr i8, ptr %.1138255.i, i64 %i.gv ; 3 uses
  %i.gx = getelementptr i8, ptr %.1138255.i, i64 %i.x
  %i.gy = getelementptr i8, ptr %i.gx, i64 %i.gu
  %i.gz = getelementptr i8, ptr %i.gy, i64 1      ; 3 uses
  %8 = shl nuw nsw i64 %i.x, 1
  %9 = getelementptr i8, ptr %.1138255.i, i64 %8
  %10 = getelementptr i8, ptr %9, i64 %i.gu
  %11 = getelementptr i8, ptr %10, i64 1          ; 3 uses
  %12 = shl nuw nsw i64 %i.gu, 2
  %i.ha = getelementptr i8, ptr %.1158253.i, i64 %12
  %i.hb = getelementptr i8, ptr %i.ha, i64 4      ; 3 uses
  %bound0190.a = icmp ult ptr %.1138255.i, %i.gz
  %bound1191.a = icmp ult ptr %i.go, %i.gw
  %found.conflict192.a = and i1 %bound0190.a, %bound1191.a
  %bound0193 = icmp ult ptr %.1138255.i, %11
  %bound1194 = icmp ult ptr %i.gp, %i.gw
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %found.conflict192.a, %found.conflict195
  %bound0197 = icmp ult ptr %.1138255.i, %i.hb
  %bound1198 = icmp ult ptr %.1158253.i, %i.gw
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  %bound0201 = icmp ult ptr %i.go, %11
  %bound1202 = icmp ult ptr %i.gp, %i.gz
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict203
  %bound0205 = icmp ult ptr %i.go, %i.hb
  %bound1206 = icmp ult ptr %.1158253.i, %i.gz
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx204, %found.conflict207
  %bound0209 = icmp ult ptr %i.gp, %i.hb
  %bound1210 = icmp ult ptr %.1158253.i, %11
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx208, %found.conflict211
  br i1 %conflict.rdx212, label %.lr.ph.i.preheader239, label %vector.ph213

vector.ph213:                                     ; preds = %vector.memcheck189
  %n.vec214 = and i64 %i.gs, 2147483644           ; 7 uses
  %i.hc = trunc nuw nsw i64 %n.vec214 to i32
  %i.hd = shl nuw nsw i64 %n.vec214, 2
  %i.he = getelementptr i8, ptr %.1158253.i, i64 %i.hd
  %i.hf = getelementptr i8, ptr %.1138255.i, i64 %n.vec214
  %i.hg = getelementptr i8, ptr %i.go, i64 %n.vec214
  %i.hh = getelementptr i8, ptr %i.gp, i64 %n.vec214
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next224, %vector.body215 ] ; 5 uses
  %vector.recur217 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph213 ], [ %i.ie, %vector.body215 ]
  %i.hi = shl i64 %index216, 2
  %next.gep218 = getelementptr i8, ptr %.1158253.i, i64 %i.hi
  %next.gep219 = getelementptr i8, ptr %.1138255.i, i64 %index216
  %next.gep220 = getelementptr i8, ptr %i.go, i64 %index216
  %next.gep221 = getelementptr i8, ptr %i.gp, i64 %index216
  %wide.load222 = load <4 x i32>, ptr %next.gep218, align 1, !alias.scope !70 ; 6 uses
  %i.hj = and <4 x i32> %wide.load222, splat (i32 2139095040)
  %i.hk = and <4 x i32> %wide.load222, splat (i32 8388607) ; 2 uses
  %i.hl = icmp ne <4 x i32> %i.hj, splat (i32 2139095040)
  %i.hm = bitcast <4 x i32> %wide.load222 to <4 x float>
  %i.hn = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.hm)
  %i.ho = bitcast <4 x float> %i.hn to <4 x i32>  ; 2 uses
  %i.hp = and <4 x i32> %wide.load222, splat (i32 128)
  %i.hq = add nuw <4 x i32> %i.hp, %i.ho          ; 2 uses
  %i.hr = icmp ugt <4 x i32> %i.hq, splat (i32 2139095039)
  %i.hs = select <4 x i1> %i.hr, <4 x i32> %i.ho, <4 x i32> %i.hq
  %i.ht = lshr <4 x i32> %i.hs, splat (i32 8)
  %i.hu = icmp eq <4 x i32> %i.hk, zeroinitializer
  %.not235 = or <4 x i1> %i.hl, %i.hu
  %i.hv = lshr <4 x i32> %i.hk, splat (i32 8)     ; 2 uses
  %i.hw = icmp eq <4 x i32> %i.hv, zeroinitializer
  %i.hx = zext <4 x i1> %i.hw to <4 x i32>
  %i.hy = or <4 x i32> %i.hv, %i.hx
  %i.hz = or disjoint <4 x i32> %i.hy, splat (i32 8355840)
  %i.ia = and <4 x i32> %wide.load222, splat (i32 2147483647)
  %i.ib = icmp eq <4 x i32> %i.ia, splat (i32 2139095040)
  %predphi = select <4 x i1> %.not235, <4 x i32> %i.ht, <4 x i32> %i.hz
  %predphi223 = select <4 x i1> %i.ib, <4 x i32> splat (i32 8355840), <4 x i32> %predphi
  %i.ic = lshr <4 x i32> %wide.load222, splat (i32 8)
  %i.id = and <4 x i32> %i.ic, splat (i32 8388608)
  %i.ie = or <4 x i32> %predphi223, %i.id         ; 4 uses
  %i.if = shufflevector <4 x i32> %vector.recur217, <4 x i32> %i.ie, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.ig = sub nsw <4 x i32> %i.ie, %i.if          ; 3 uses
  %i.ih = lshr <4 x i32> %i.ig, splat (i32 16)
  %i.ii = trunc <4 x i32> %i.ih to <4 x i8>
  store <4 x i8> %i.ii, ptr %next.gep219, align 1, !tbaa !20, !alias.scope !71, !noalias !72
  %i.ij = lshr <4 x i32> %i.ig, splat (i32 8)
  %i.ik = trunc <4 x i32> %i.ij to <4 x i8>
  store <4 x i8> %i.ik, ptr %next.gep220, align 1, !tbaa !20, !alias.scope !73, !noalias !74
  %i.il = trunc <4 x i32> %i.ig to <4 x i8>
  store <4 x i8> %i.il, ptr %next.gep221, align 1, !tbaa !20, !alias.scope !75, !noalias !70
  %index.next224 = add nuw i64 %index216, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next224, %n.vec214
  br i1 %i.im, label %middle.block225, label %vector.body215, !llvm.loop !43

middle.block225:                                  ; preds = %vector.body215
  %vector.recur.extract226 = extractelement <4 x i32> %i.ie, i64 3
  %cmp.n227 = icmp eq i64 %n.vec214, %i.gs
  br i1 %cmp.n227, label %.loopexit.i, label %.lr.ph.i.preheader239

.lr.ph.i.preheader239:                            ; preds = %vector.memcheck189, %.lr.ph.i.preheader, %middle.block225
  %.0154237.i.ph = phi i32 [ 0, %vector.memcheck189 ], [ 0, %.lr.ph.i.preheader ], [ %i.hc, %middle.block225 ]
  %.0155236.i.ph = phi ptr [ %.1158253.i, %vector.memcheck189 ], [ %.1158253.i, %.lr.ph.i.preheader ], [ %i.he, %middle.block225 ]
  %.0156235.i.ph = phi i32 [ 0, %vector.memcheck189 ], [ 0, %.lr.ph.i.preheader ], [ %vector.recur.extract226, %middle.block225 ]
  %.sroa.014.0234.i.ph = phi ptr [ %.1138255.i, %vector.memcheck189 ], [ %.1138255.i, %.lr.ph.i.preheader ], [ %i.hf, %middle.block225 ]
  %.sroa.5.0233.i.ph = phi ptr [ %i.go, %vector.memcheck189 ], [ %i.go, %.lr.ph.i.preheader ], [ %i.hg, %middle.block225 ]
  %.sroa.8.0232.i.ph = phi ptr [ %i.gp, %vector.memcheck189 ], [ %i.gp, %.lr.ph.i.preheader ], [ %i.hh, %middle.block225 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader239, %float_to_float24.exit.i
  %.0154237.i = phi i32 [ %i.jo, %float_to_float24.exit.i ], [ %.0154237.i.ph, %.lr.ph.i.preheader239 ]
  %.0155236.i = phi ptr [ %i.jf, %float_to_float24.exit.i ], [ %.0155236.i.ph, %.lr.ph.i.preheader239 ] ; 2 uses
  %.0156235.i = phi i32 [ %i.jd, %float_to_float24.exit.i ], [ %.0156235.i.ph, %.lr.ph.i.preheader239 ]
  %.sroa.014.0234.i = phi ptr [ %i.ji, %float_to_float24.exit.i ], [ %.sroa.014.0234.i.ph, %.lr.ph.i.preheader239 ] ; 2 uses
  %.sroa.5.0233.i = phi ptr [ %i.jl, %float_to_float24.exit.i ], [ %.sroa.5.0233.i.ph, %.lr.ph.i.preheader239 ] ; 2 uses
  %.sroa.8.0232.i = phi ptr [ %i.jn, %float_to_float24.exit.i ], [ %.sroa.8.0232.i.ph, %.lr.ph.i.preheader239 ] ; 2 uses
  %.0155.val.i = load i32, ptr %.0155236.i, align 1 ; 5 uses
  %i.in = and i32 %.0155.val.i, 2139095040
  %i.io = and i32 %.0155.val.i, 8388607           ; 2 uses
  %i.ip = icmp eq i32 %i.in, 2139095040
  br i1 %i.ip, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %i.io, 0
  br i1 %.not.i.i, label %float_to_float24.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.iq = lshr i32 %i.io, 8                       ; 2 uses
  %i.ir = icmp eq i32 %i.iq, 0
  %i.is = zext i1 %i.ir to i32
  %i.it = or i32 %i.iq, %i.is
  %i.iu = or disjoint i32 %i.it, 8355840
  br label %float_to_float24.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.iv = bitcast i32 %.0155.val.i to float
  %i.iw = tail call float @llvm.fabs.f32(float %i.iv)
  %i.ix = bitcast float %i.iw to i32              ; 2 uses
  %i.iy = and i32 %.0155.val.i, 128
  %i.iz = add nuw i32 %i.iy, %i.ix                ; 2 uses
  %i.ja = icmp ugt i32 %i.iz, 2139095039
  %spec.select.v.i.i = select i1 %i.ja, i32 %i.ix, i32 %i.iz
  %spec.select.i.i = lshr i32 %spec.select.v.i.i, 8
  br label %float_to_float24.exit.i

float_to_float24.exit.i:                          ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i = phi i32 [ %i.iu, %bb.n ], [ %spec.select.i.i, %bb.o ], [ 8355840, %bb.m ]
  %i.jb = lshr i32 %.0155.val.i, 8
  %i.jc = and i32 %i.jb, 8388608
  %i.jd = or i32 %.0.i.i, %i.jc                   ; 2 uses
  %i.je = sub nsw i32 %i.jd, %.0156235.i          ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %.0155236.i, i64 4
  %i.jg = lshr i32 %i.je, 16
  %i.jh = trunc i32 %i.jg to i8
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.014.0234.i, i64 1
  store i8 %i.jh, ptr %.sroa.014.0234.i, align 1, !tbaa !20
  %i.jj = lshr i32 %i.je, 8
  %i.jk = trunc i32 %i.jj to i8
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.5.0233.i, i64 1
  store i8 %i.jk, ptr %.sroa.5.0233.i, align 1, !tbaa !20
  %i.jm = trunc i32 %i.je to i8
  %i.jn = getelementptr inbounds nuw i8, ptr %.sroa.8.0232.i, i64 1
  store i8 %i.jm, ptr %.sroa.8.0232.i, align 1, !tbaa !20
  %i.jo = add nuw nsw i32 %.0154237.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.jo, %i.w
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !44

.loopexit.i:                                      ; preds = %float_to_float24.exit.i, %.lr.ph243.i.prol.loopexit, %.lr.ph243.i, %.lr.ph251.i.prol.loopexit, %.lr.ph251.i, %middle.block225, %middle.block150, %middle.block, %bb.l, %bb.j, %bb.h, %bb.e, %.lr.ph256.i
  %.6163.i = phi ptr [ %.1158253.i, %bb.e ], [ %.1158253.i, %.lr.ph256.i ], [ %i.dq, %bb.j ], [ %i.ak, %bb.h ], [ %i.gn, %bb.l ], [ %i.dq, %middle.block150 ], [ %i.ak, %middle.block ], [ %i.gn, %middle.block225 ], [ %i.dq, %.lr.ph243.i.prol.loopexit ], [ %i.ak, %.lr.ph251.i.prol.loopexit ], [ %i.ak, %.lr.ph251.i ], [ %i.dq, %.lr.ph243.i ], [ %i.gn, %float_to_float24.exit.i ] ; 2 uses
  %.6151.i = phi i64 [ %.1146254.i, %bb.e ], [ %.1146254.i, %.lr.ph256.i ], [ %i.do, %bb.j ], [ %i.ai, %bb.h ], [ %i.gk, %bb.l ], [ %i.do, %middle.block150 ], [ %i.ai, %middle.block ], [ %i.gk, %middle.block225 ], [ %i.do, %.lr.ph243.i.prol.loopexit ], [ %i.ai, %.lr.ph251.i.prol.loopexit ], [ %i.ai, %.lr.ph251.i ], [ %i.do, %.lr.ph243.i ], [ %i.gk, %float_to_float24.exit.i ] ; 2 uses
  %.6143.i = phi ptr [ %.1138255.i, %bb.e ], [ %.1138255.i, %.lr.ph256.i ], [ %i.ds, %bb.j ], [ %i.ao, %bb.h ], [ %i.gq, %bb.l ], [ %i.ds, %middle.block150 ], [ %i.ao, %middle.block ], [ %i.gq, %middle.block225 ], [ %i.ds, %.lr.ph243.i.prol.loopexit ], [ %i.ao, %.lr.ph251.i.prol.loopexit ], [ %i.ao, %.lr.ph251.i ], [ %i.ds, %.lr.ph243.i ], [ %i.gq, %float_to_float24.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jp = load i16, ptr %i.m, align 8, !tbaa !52  ; 2 uses
  %i.jq = sext i16 %i.jp to i64
  %i.jr = icmp slt i64 %indvars.iv.next.i, %i.jq
  br i1 %i.jr, label %.lr.ph256.i, label %._crit_edge.loopexit.i, !llvm.loop !45

._crit_edge.loopexit.i:                           ; preds = %.loopexit.i
  %.pre272.i = load i32, ptr %i.j, align 4, !tbaa !51
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.js = phi i32 [ %i.o, %bb.c ], [ %.pre272.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.jt = phi i16 [ %i.p, %bb.c ], [ %i.jp, %._crit_edge.loopexit.i ]
  %.1158.lcssa.i = phi ptr [ %.0157261.i, %bb.c ], [ %.6163.i, %._crit_edge.loopexit.i ]
  %.1146.lcssa.i = phi i64 [ %.0145262.i, %bb.c ], [ %.6151.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.1138.lcssa.i = phi ptr [ %.0137263.i, %bb.c ], [ %.6143.i, %._crit_edge.loopexit.i ]
  %i.ju = add nuw nsw i32 %.0168260.i, 1          ; 2 uses
  %.not187.i = icmp slt i32 %i.ju, %i.js
  br i1 %.not187.i, label %bb.c, label %.thread222.loopexit.i, !llvm.loop !46

.thread222.loopexit.i:                            ; preds = %._crit_edge.i
  %.pre273.i = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %.thread222.i

.thread222.i:                                     ; preds = %.thread222.loopexit.i, %bb.b
  %i.jv = phi ptr [ %i.g, %bb.b ], [ %.pre273.i, %.thread222.loopexit.i ]
  %.0145.lcssa.i = phi i64 [ 0, %bb.b ], [ %.1146.lcssa.i, %.thread222.loopexit.i ]
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !76
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !77
  %i.ka = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !78
  %i.kc = call i32 @exr_compress_buffer(ptr noundef %i.jx, i32 noundef -1, ptr noundef %i.jv, i64 noundef %.0145.lcssa.i, ptr noundef %i.jz, i64 noundef %i.kb, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %bb.p, label %apply_pxr24_impl.exit

bb.p:                                             ; preds = %.thread222.i
  %i.ke = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.kf = load i64, ptr %i.d, align 8, !tbaa !48  ; 2 uses
  %i.kg = icmp ugt i64 %i.ke, %i.kf
  br i1 %i.kg, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.kh = load ptr, ptr %i.jy, align 8, !tbaa !77
  %i.ki = load ptr, ptr %i.h, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kh, ptr align 1 %i.ki, i64 %i.kf, i1 false)
  %i.kj = load i64, ptr %i.d, align 8, !tbaa !48
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.kk = phi i64 [ %i.kj, %bb.q ], [ %i.ke, %bb.p ]
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.kk, ptr %i.kl, align 8, !tbaa !79
  br label %apply_pxr24_impl.exit

apply_pxr24_impl.exit:                            ; preds = %bb.f, %bb.g, %bb.i, %bb.k, %.thread222.i, %bb.r
  %.9.i = phi i32 [ %i.kc, %.thread222.i ], [ 0, %bb.r ], [ 1, %bb.k ], [ 1, %bb.i ], [ 1, %bb.g ], [ 3, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %apply_pxr24_impl.exit
end_hunk_0
