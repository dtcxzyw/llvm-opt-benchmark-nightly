Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/internal_pxr24?download=true
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
  %i.e = load i64, ptr %i.d, align 8, !tbaa !47
  %i.f = tail call i32 @internal_encode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.e) #5 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !48   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !50   ; 2 uses
  %.not187259.i = icmp sgt i32 %i.k, 0
  br i1 %.not187259.i, label %.lr.ph265.i, label %.thread222.i

.lr.ph265.i:                                      ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i16, ptr %i.m, align 8, !tbaa !51
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %.lr.ph265.i
  %i.o = phi i32 [ %i.k, %.lr.ph265.i ], [ %i.jz, %._crit_edge.i ]
  %i.p = phi i16 [ %.pre.i, %.lr.ph265.i ], [ %i.ka, %._crit_edge.i ] ; 2 uses
  %.0137263.i = phi ptr [ %i.g, %.lr.ph265.i ], [ %.1138.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0145262.i = phi i64 [ 0, %.lr.ph265.i ], [ %.1146.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0157261.i = phi ptr [ %i.i, %.lr.ph265.i ], [ %.1158.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0168260.i = phi i32 [ 0, %.lr.ph265.i ], [ %i.kb, %._crit_edge.i ] ; 2 uses
  %i.q = load i32, ptr %i.l, align 8, !tbaa !52
  %i.r = add nsw i32 %i.q, %.0168260.i
  %i.s = icmp sgt i16 %i.p, 0
  br i1 %i.s, label %.lr.ph256.i, label %._crit_edge.i

.lr.ph256.i:                                      ; preds = %bb.c, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ 0, %bb.c ] ; 2 uses
  %.1138255.i = phi ptr [ %.6143.i, %.loopexit.i ], [ %.0137263.i, %bb.c ] ; 32 uses
  %.1146254.i = phi i64 [ %.6151.i, %.loopexit.i ], [ %.0145262.i, %bb.c ] ; 5 uses
  %.1158253.i = phi ptr [ %.6163.i, %.loopexit.i ], [ %.0157261.i, %bb.c ] ; 29 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %indvars.iv.i ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16   ; 24 uses
  %i.x = sext i32 %i.w to i64                     ; 18 uses
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
  %i.aj = load i64, ptr %i.c, align 8, !tbaa !54
  %.not186.i = icmp ugt i64 %i.ai, %i.aj
  br i1 %.not186.i, label %apply_pxr24_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = getelementptr inbounds nuw i8, ptr %.1158253.i, i64 %i.ah ; 4 uses
  %i.al = getelementptr i8, ptr %.1138255.i, i64 %i.x ; 7 uses
  %i.am = getelementptr i8, ptr %i.al, i64 %i.x   ; 7 uses
  %i.an = getelementptr i8, ptr %i.am, i64 %i.x   ; 8 uses
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.x ; 4 uses
  %i.ap = icmp sgt i32 %i.w, 0
  br i1 %i.ap, label %.lr.ph251.i.preheader, label %.loopexit.i

.lr.ph251.i.preheader:                            ; preds = %bb.h
  %i.aq = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check = icmp ult i32 %i.w, 16
  br i1 %min.iters.check, label %.lr.ph251.i.preheader236, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph251.i.preheader
  %i.ar = add nsw i32 %i.w, -1
  %i.as = zext i32 %i.ar to i64                   ; 4 uses
  %i.at = zext nneg i32 %i.w to i64
  %i.au = getelementptr i8, ptr %.1138255.i, i64 %i.at ; 3 uses
  %i.av = shl nuw nsw i64 %i.x, 1
  %i.aw = getelementptr i8, ptr %.1138255.i, i64 %i.av
  %i.ax = getelementptr i8, ptr %i.aw, i64 %i.as
  %i.ay = getelementptr i8, ptr %i.ax, i64 1      ; 2 uses
  %i.az = mul nuw nsw i64 %i.x, 3
  %i.ba = getelementptr i8, ptr %.1138255.i, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.as
  %i.bc = getelementptr i8, ptr %i.bb, i64 1      ; 3 uses
  %i.bd = shl nuw nsw i64 %i.as, 2
  %i.be = getelementptr i8, ptr %.1158253.i, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 4      ; 4 uses
  %1 = getelementptr i8, ptr %.1138255.i, i64 %i.x
  %2 = getelementptr i8, ptr %1, i64 %i.as
  %3 = getelementptr i8, ptr %2, i64 1            ; 2 uses
  %bound080 = icmp ult ptr %.1138255.i, %i.ay
  %bound181 = icmp ult ptr %i.am, %i.au
  %found.conflict82 = and i1 %bound080, %bound181
  %bound084 = icmp ult ptr %.1138255.i, %i.bc
  %bound185 = icmp ult ptr %i.an, %i.au
  %found.conflict86 = and i1 %bound084, %bound185
  %conflict.rdx87 = or i1 %found.conflict82, %found.conflict86
  %bound088 = icmp ult ptr %.1138255.i, %i.bf
  %bound189 = icmp ult ptr %.1158253.i, %i.au
  %found.conflict90 = and i1 %bound088, %bound189
  %conflict.rdx91 = or i1 %conflict.rdx87, %found.conflict90
  %bound092 = icmp ult ptr %i.al, %i.bc
  %bound193 = icmp ult ptr %i.an, %3
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %conflict.rdx91, %found.conflict94
  %bound096 = icmp ult ptr %i.al, %i.bf
  %bound197 = icmp ult ptr %.1158253.i, %3
  %found.conflict98 = and i1 %bound096, %bound197
  %conflict.rdx99 = or i1 %conflict.rdx95, %found.conflict98
  %bound0100 = icmp ult ptr %i.am, %i.bf
  %bound1101 = icmp ult ptr %.1158253.i, %i.ay
  %found.conflict102 = and i1 %bound0100, %bound1101
  %conflict.rdx103 = or i1 %conflict.rdx99, %found.conflict102
  %bound0104 = icmp ult ptr %i.an, %i.bf
  %bound1105 = icmp ult ptr %.1158253.i, %i.bc
  %found.conflict106 = and i1 %bound0104, %bound1105
  %conflict.rdx107 = or i1 %conflict.rdx103, %found.conflict106
  br i1 %conflict.rdx107, label %.lr.ph251.i.preheader236, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 2147483644              ; 8 uses
  %i.bg = trunc nuw nsw i64 %n.vec to i32
  %i.bh = shl nuw nsw i64 %n.vec, 2
  %i.bi = getelementptr i8, ptr %.1158253.i, i64 %i.bh
  %i.bj = getelementptr i8, ptr %.1138255.i, i64 %n.vec
  %i.bk = getelementptr i8, ptr %i.al, i64 %n.vec
  %i.bl = getelementptr i8, ptr %i.am, i64 %n.vec
  %i.bm = getelementptr i8, ptr %i.an, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %wide.load, %vector.body ]
  %i.bn = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1158253.i, i64 %i.bn
  %next.gep108 = getelementptr i8, ptr %.1138255.i, i64 %index
  %next.gep109 = getelementptr i8, ptr %i.al, i64 %index
  %next.gep110 = getelementptr i8, ptr %i.am, i64 %index
  %next.gep111 = getelementptr i8, ptr %i.an, i64 %index
  %wide.load = load <4 x i32>, ptr %next.gep, align 1, !alias.scope !55 ; 4 uses
  %i.bo = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bp = sub <4 x i32> %wide.load, %i.bo         ; 4 uses
  %i.bq = lshr <4 x i32> %i.bp, splat (i32 24)
  %i.br = trunc nuw <4 x i32> %i.bq to <4 x i8>
  store <4 x i8> %i.br, ptr %next.gep108, align 1, !tbaa !20, !alias.scope !56, !noalias !57
  %i.bs = lshr <4 x i32> %i.bp, splat (i32 16)
  %i.bt = trunc <4 x i32> %i.bs to <4 x i8>
  store <4 x i8> %i.bt, ptr %next.gep109, align 1, !tbaa !20, !alias.scope !58, !noalias !59
  %i.bu = lshr <4 x i32> %i.bp, splat (i32 8)
  %i.bv = trunc <4 x i32> %i.bu to <4 x i8>
  store <4 x i8> %i.bv, ptr %next.gep110, align 1, !tbaa !20, !alias.scope !60, !noalias !55
  %i.bw = trunc <4 x i32> %i.bp to <4 x i8>
  store <4 x i8> %i.bw, ptr %next.gep111, align 1, !tbaa !20, !alias.scope !61, !noalias !55
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph251.i.preheader236

.lr.ph251.i.preheader236:                         ; preds = %vector.memcheck, %.lr.ph251.i.preheader, %middle.block
  %.0175250.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph251.i.preheader ], [ %i.bg, %middle.block ] ; 4 uses
  %.0176249.i.ph = phi ptr [ %.1158253.i, %vector.memcheck ], [ %.1158253.i, %.lr.ph251.i.preheader ], [ %i.bi, %middle.block ] ; 3 uses
  %.0177248.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph251.i.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.sroa.037.0247.i.ph = phi ptr [ %.1138255.i, %vector.memcheck ], [ %.1138255.i, %.lr.ph251.i.preheader ], [ %i.bj, %middle.block ] ; 3 uses
  %.sroa.538.0246.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph251.i.preheader ], [ %i.bk, %middle.block ] ; 3 uses
  %.sroa.839.0245.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph251.i.preheader ], [ %i.bl, %middle.block ] ; 3 uses
  %.sroa.11.0244.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph251.i.preheader ], [ %i.bm, %middle.block ] ; 3 uses
  %i.by = sub i32 %i.w, %.0175250.i.ph
  %.neg = add i32 %.0175250.i.ph, 1
  %xtraiter243 = and i32 %i.by, 1
  %lcmp.mod244.not = icmp eq i32 %xtraiter243, 0
  br i1 %lcmp.mod244.not, label %.lr.ph251.i.prol.loopexit, label %.lr.ph251.i.prol

.lr.ph251.i.prol:                                 ; preds = %.lr.ph251.i.preheader236
  %.0176.val.i.prol = load i32, ptr %.0176249.i.ph, align 1 ; 2 uses
  %i.bz = sub i32 %.0176.val.i.prol, %.0177248.i.ph ; 4 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0176249.i.ph, i64 4
  %i.cb = lshr i32 %i.bz, 24
  %i.cc = trunc nuw i32 %i.cb to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i.ph, i64 1
  store i8 %i.cc, ptr %.sroa.037.0247.i.ph, align 1, !tbaa !20
  %i.ce = lshr i32 %i.bz, 16
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i.ph, i64 1
  store i8 %i.cf, ptr %.sroa.538.0246.i.ph, align 1, !tbaa !20
  %i.ch = lshr i32 %i.bz, 8
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i.ph, i64 1
  store i8 %i.ci, ptr %.sroa.839.0245.i.ph, align 1, !tbaa !20
  %i.ck = trunc i32 %i.bz to i8
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i.ph, i64 1
  store i8 %i.ck, ptr %.sroa.11.0244.i.ph, align 1, !tbaa !20
  %i.cm = add nuw nsw i32 %.0175250.i.ph, 1
  br label %.lr.ph251.i.prol.loopexit

.lr.ph251.i.prol.loopexit:                        ; preds = %.lr.ph251.i.prol, %.lr.ph251.i.preheader236
  %.0175250.i.unr = phi i32 [ %.0175250.i.ph, %.lr.ph251.i.preheader236 ], [ %i.cm, %.lr.ph251.i.prol ]
  %.0176249.i.unr = phi ptr [ %.0176249.i.ph, %.lr.ph251.i.preheader236 ], [ %i.ca, %.lr.ph251.i.prol ]
  %.0177248.i.unr = phi i32 [ %.0177248.i.ph, %.lr.ph251.i.preheader236 ], [ %.0176.val.i.prol, %.lr.ph251.i.prol ]
  %.sroa.037.0247.i.unr = phi ptr [ %.sroa.037.0247.i.ph, %.lr.ph251.i.preheader236 ], [ %i.cd, %.lr.ph251.i.prol ]
  %.sroa.538.0246.i.unr = phi ptr [ %.sroa.538.0246.i.ph, %.lr.ph251.i.preheader236 ], [ %i.cg, %.lr.ph251.i.prol ]
  %.sroa.839.0245.i.unr = phi ptr [ %.sroa.839.0245.i.ph, %.lr.ph251.i.preheader236 ], [ %i.cj, %.lr.ph251.i.prol ]
  %.sroa.11.0244.i.unr = phi ptr [ %.sroa.11.0244.i.ph, %.lr.ph251.i.preheader236 ], [ %i.cl, %.lr.ph251.i.prol ]
  %i.cn = icmp eq i32 %i.w, %.neg
  br i1 %i.cn, label %.loopexit.i, label %.lr.ph251.i

.lr.ph251.i:                                      ; preds = %.lr.ph251.i.prol.loopexit, %.lr.ph251.i
  %.0175250.i = phi i32 [ %i.do, %.lr.ph251.i ], [ %.0175250.i.unr, %.lr.ph251.i.prol.loopexit ]
  %.0176249.i = phi ptr [ %i.dc, %.lr.ph251.i ], [ %.0176249.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.0177248.i = phi i32 [ %.0176.val.i.1, %.lr.ph251.i ], [ %.0177248.i.unr, %.lr.ph251.i.prol.loopexit ]
  %.sroa.037.0247.i = phi ptr [ %i.df, %.lr.ph251.i ], [ %.sroa.037.0247.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.538.0246.i = phi ptr [ %i.di, %.lr.ph251.i ], [ %.sroa.538.0246.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.839.0245.i = phi ptr [ %i.dl, %.lr.ph251.i ], [ %.sroa.839.0245.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.11.0244.i = phi ptr [ %i.dn, %.lr.ph251.i ], [ %.sroa.11.0244.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.0176.val.i = load i32, ptr %.0176249.i, align 1 ; 2 uses
  %i.co = sub i32 %.0176.val.i, %.0177248.i       ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0176249.i, i64 4
  %i.cq = lshr i32 %i.co, 24
  %i.cr = trunc nuw i32 %i.cq to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i, i64 1
  store i8 %i.cr, ptr %.sroa.037.0247.i, align 1, !tbaa !20
  %i.ct = lshr i32 %i.co, 16
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i, i64 1
  store i8 %i.cu, ptr %.sroa.538.0246.i, align 1, !tbaa !20
  %i.cw = lshr i32 %i.co, 8
  %i.cx = trunc i32 %i.cw to i8
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i, i64 1
  store i8 %i.cx, ptr %.sroa.839.0245.i, align 1, !tbaa !20
  %i.cz = trunc i32 %i.co to i8
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i, i64 1
  store i8 %i.cz, ptr %.sroa.11.0244.i, align 1, !tbaa !20
  %.0176.val.i.1 = load i32, ptr %i.cp, align 1   ; 2 uses
  %i.db = sub i32 %.0176.val.i.1, %.0176.val.i    ; 4 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.0176249.i, i64 8
  %i.dd = lshr i32 %i.db, 24
  %i.de = trunc nuw i32 %i.dd to i8
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i, i64 2
  store i8 %i.de, ptr %i.cs, align 1, !tbaa !20
  %i.dg = lshr i32 %i.db, 16
  %i.dh = trunc i32 %i.dg to i8
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i, i64 2
  store i8 %i.dh, ptr %i.cv, align 1, !tbaa !20
  %i.dj = lshr i32 %i.db, 8
  %i.dk = trunc i32 %i.dj to i8
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i, i64 2
  store i8 %i.dk, ptr %i.cy, align 1, !tbaa !20
  %i.dm = trunc i32 %i.db to i8
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i, i64 2
  store i8 %i.dm, ptr %i.da, align 1, !tbaa !20
  %i.do = add nuw nsw i32 %.0175250.i, 2          ; 2 uses
  %exitcond270.not.i.1 = icmp eq i32 %i.do, %i.w
  br i1 %exitcond270.not.i.1, label %.loopexit.i, label %.lr.ph251.i, !llvm.loop !29

bb.i:                                             ; preds = %bb.f
  %i.dp = shl nsw i64 %i.x, 1                     ; 2 uses
  %i.dq = add i64 %i.dp, %.1146254.i              ; 5 uses
  %i.dr = load i64, ptr %i.c, align 8, !tbaa !54
  %.not185.i = icmp ugt i64 %i.dq, %i.dr
  br i1 %.not185.i, label %apply_pxr24_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.1158253.i, i64 %i.dp ; 4 uses
  %i.dt = getelementptr i8, ptr %.1138255.i, i64 %i.x ; 6 uses
  %i.du = getelementptr inbounds i8, ptr %i.dt, i64 %i.x ; 4 uses
  %i.dv = icmp sgt i32 %i.w, 0
  br i1 %i.dv, label %.lr.ph243.i.preheader, label %.loopexit.i

.lr.ph243.i.preheader:                            ; preds = %bb.j
  %i.dw = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check131 = icmp ult i32 %i.w, 8
  br i1 %min.iters.check131, label %.lr.ph243.i.preheader237, label %vector.memcheck132

vector.memcheck132:                               ; preds = %.lr.ph243.i.preheader
  %i.dx = add nsw i32 %i.w, -1
  %i.dy = zext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr i8, ptr %.1138255.i, i64 %i.x
  %i.ea = getelementptr i8, ptr %i.dz, i64 %i.dy
  %i.eb = getelementptr i8, ptr %i.ea, i64 1
  %i.ec = shl nuw nsw i64 %i.dy, 1
  %i.ed = getelementptr i8, ptr %.1158253.i, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 2      ; 2 uses
  %i.ef = zext nneg i32 %i.w to i64
  %i.eg = getelementptr i8, ptr %.1138255.i, i64 %i.ef
  %bound0133 = icmp ult ptr %i.dt, %i.ee
  %bound1134 = icmp ult ptr %.1158253.i, %i.eb
  %found.conflict135 = and i1 %bound0133, %bound1134
  %bound0136 = icmp ult ptr %.1138255.i, %i.ee
  %bound1137 = icmp ult ptr %.1158253.i, %i.eg
  %found.conflict138 = and i1 %bound0136, %bound1137
  %conflict.rdx139 = or i1 %found.conflict135, %found.conflict138
  br i1 %conflict.rdx139, label %.lr.ph243.i.preheader237, label %vector.ph140

vector.ph140:                                     ; preds = %vector.memcheck132
  %n.vec141 = and i64 %i.dw, 2147483640           ; 6 uses
  %i.eh = trunc nuw nsw i64 %n.vec141 to i32
  %i.ei = shl nuw nsw i64 %n.vec141, 1
  %i.ej = getelementptr i8, ptr %.1158253.i, i64 %i.ei
  %i.ek = getelementptr i8, ptr %.1138255.i, i64 %n.vec141
  %i.el = getelementptr i8, ptr %i.dt, i64 %n.vec141
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph140
  %index143 = phi i64 [ 0, %vector.ph140 ], [ %index.next149, %vector.body142 ] ; 4 uses
  %vector.recur144 = phi <8 x i32> [ <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph140 ], [ %i.en, %vector.body142 ]
  %i.em = shl i64 %index143, 1
  %next.gep145 = getelementptr i8, ptr %.1158253.i, i64 %i.em
  %next.gep146 = getelementptr i8, ptr %.1138255.i, i64 %index143
  %next.gep147 = getelementptr i8, ptr %i.dt, i64 %index143
  %wide.load148 = load <8 x i16>, ptr %next.gep145, align 1, !alias.scope !64
  %i.en = zext <8 x i16> %wide.load148 to <8 x i32> ; 4 uses
  %i.eo = shufflevector <8 x i32> %vector.recur144, <8 x i32> %i.en, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.ep = sub nsw <8 x i32> %i.en, %i.eo          ; 2 uses
  %i.eq = lshr <8 x i32> %i.ep, splat (i32 8)
  %i.er = trunc <8 x i32> %i.eq to <8 x i8>
  store <8 x i8> %i.er, ptr %next.gep146, align 1, !tbaa !20, !alias.scope !65, !noalias !64
  %i.es = trunc <8 x i32> %i.ep to <8 x i8>
  store <8 x i8> %i.es, ptr %next.gep147, align 1, !tbaa !20, !alias.scope !66, !noalias !64
  %index.next149 = add nuw i64 %index143, 8       ; 2 uses
  %i.et = icmp eq i64 %index.next149, %n.vec141
  br i1 %i.et, label %middle.block150, label %vector.body142, !llvm.loop !34

middle.block150:                                  ; preds = %vector.body142
  %vector.recur.extract151 = extractelement <8 x i32> %i.en, i64 7
  %cmp.n152 = icmp eq i64 %n.vec141, %i.dw
  br i1 %cmp.n152, label %.loopexit.i, label %.lr.ph243.i.preheader237

.lr.ph243.i.preheader237:                         ; preds = %vector.memcheck132, %.lr.ph243.i.preheader, %middle.block150
  %.0165242.i.ph = phi i32 [ 0, %vector.memcheck132 ], [ 0, %.lr.ph243.i.preheader ], [ %i.eh, %middle.block150 ] ; 4 uses
  %.0166241.i.ph = phi ptr [ %.1158253.i, %vector.memcheck132 ], [ %.1158253.i, %.lr.ph243.i.preheader ], [ %i.ej, %middle.block150 ] ; 2 uses
  %.0167240.i.ph = phi i32 [ 0, %vector.memcheck132 ], [ 0, %.lr.ph243.i.preheader ], [ %vector.recur.extract151, %middle.block150 ] ; 2 uses
  %.sroa.024.0239.i.ph = phi ptr [ %.1138255.i, %vector.memcheck132 ], [ %.1138255.i, %.lr.ph243.i.preheader ], [ %i.ek, %middle.block150 ] ; 2 uses
  %.sroa.525.0238.i.ph = phi ptr [ %i.dt, %vector.memcheck132 ], [ %i.dt, %.lr.ph243.i.preheader ], [ %i.el, %middle.block150 ] ; 2 uses
  %i.eu = sub i32 %i.w, %.0165242.i.ph
  %xtraiter = and i32 %i.eu, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph243.i.prol.loopexit, label %.lr.ph243.i.prol

.lr.ph243.i.prol:                                 ; preds = %.lr.ph243.i.preheader237, %.lr.ph243.i.prol
  %.0165242.i.prol = phi i32 [ %i.fd, %.lr.ph243.i.prol ], [ %.0165242.i.ph, %.lr.ph243.i.preheader237 ]
  %.0166241.i.prol = phi ptr [ %i.ex, %.lr.ph243.i.prol ], [ %.0166241.i.ph, %.lr.ph243.i.preheader237 ] ; 2 uses
  %.0167240.i.prol = phi i32 [ %i.ev, %.lr.ph243.i.prol ], [ %.0167240.i.ph, %.lr.ph243.i.preheader237 ]
  %.sroa.024.0239.i.prol = phi ptr [ %i.fa, %.lr.ph243.i.prol ], [ %.sroa.024.0239.i.ph, %.lr.ph243.i.preheader237 ] ; 2 uses
  %.sroa.525.0238.i.prol = phi ptr [ %i.fc, %.lr.ph243.i.prol ], [ %.sroa.525.0238.i.ph, %.lr.ph243.i.preheader237 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph243.i.prol ], [ 0, %.lr.ph243.i.preheader237 ]
  %.0166.val.i.prol = load i16, ptr %.0166241.i.prol, align 1
  %i.ev = zext i16 %.0166.val.i.prol to i32       ; 3 uses
  %i.ew = sub nsw i32 %i.ev, %.0167240.i.prol     ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0166241.i.prol, i64 2 ; 2 uses
  %i.ey = lshr i32 %i.ew, 8
  %i.ez = trunc i32 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i.prol, i64 1 ; 2 uses
  store i8 %i.ez, ptr %.sroa.024.0239.i.prol, align 1, !tbaa !20
  %i.fb = trunc i32 %i.ew to i8
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i.prol, i64 1 ; 2 uses
  store i8 %i.fb, ptr %.sroa.525.0238.i.prol, align 1, !tbaa !20
  %i.fd = add nuw nsw i32 %.0165242.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph243.i.prol.loopexit, label %.lr.ph243.i.prol, !llvm.loop !35

.lr.ph243.i.prol.loopexit:                        ; preds = %.lr.ph243.i.prol, %.lr.ph243.i.preheader237
  %.0165242.i.unr = phi i32 [ %.0165242.i.ph, %.lr.ph243.i.preheader237 ], [ %i.fd, %.lr.ph243.i.prol ]
  %.0166241.i.unr = phi ptr [ %.0166241.i.ph, %.lr.ph243.i.preheader237 ], [ %i.ex, %.lr.ph243.i.prol ]
  %.0167240.i.unr = phi i32 [ %.0167240.i.ph, %.lr.ph243.i.preheader237 ], [ %i.ev, %.lr.ph243.i.prol ]
  %.sroa.024.0239.i.unr = phi ptr [ %.sroa.024.0239.i.ph, %.lr.ph243.i.preheader237 ], [ %i.fa, %.lr.ph243.i.prol ]
  %.sroa.525.0238.i.unr = phi ptr [ %.sroa.525.0238.i.ph, %.lr.ph243.i.preheader237 ], [ %i.fc, %.lr.ph243.i.prol ]
  %i.fe = sub i32 %.0165242.i.ph, %i.w
  %i.ff = icmp ugt i32 %i.fe, -4
  br i1 %i.ff, label %.loopexit.i, label %.lr.ph243.i

.lr.ph243.i:                                      ; preds = %.lr.ph243.i.prol.loopexit, %.lr.ph243.i
  %.0165242.i = phi i32 [ %i.gm, %.lr.ph243.i ], [ %.0165242.i.unr, %.lr.ph243.i.prol.loopexit ]
  %.0166241.i = phi ptr [ %i.gg, %.lr.ph243.i ], [ %.0166241.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.0167240.i = phi i32 [ %i.ge, %.lr.ph243.i ], [ %.0167240.i.unr, %.lr.ph243.i.prol.loopexit ]
  %.sroa.024.0239.i = phi ptr [ %i.gj, %.lr.ph243.i ], [ %.sroa.024.0239.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.sroa.525.0238.i = phi ptr [ %i.gl, %.lr.ph243.i ], [ %.sroa.525.0238.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.0166.val.i = load i16, ptr %.0166241.i, align 1
  %i.fg = zext i16 %.0166.val.i to i32            ; 2 uses
  %i.fh = sub nsw i32 %i.fg, %.0167240.i          ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 2
  %i.fj = lshr i32 %i.fh, 8
  %i.fk = trunc i32 %i.fj to i8
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 1
  store i8 %i.fk, ptr %.sroa.024.0239.i, align 1, !tbaa !20
  %i.fm = trunc i32 %i.fh to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 1
  store i8 %i.fm, ptr %.sroa.525.0238.i, align 1, !tbaa !20
  %.0166.val.i.1 = load i16, ptr %i.fi, align 1
  %i.fo = zext i16 %.0166.val.i.1 to i32          ; 2 uses
  %i.fp = sub nsw i32 %i.fo, %i.fg                ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 4
  %i.fr = lshr i32 %i.fp, 8
  %i.fs = trunc i32 %i.fr to i8
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 2
  store i8 %i.fs, ptr %i.fl, align 1, !tbaa !20
  %i.fu = trunc i32 %i.fp to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 2
  store i8 %i.fu, ptr %i.fn, align 1, !tbaa !20
  %.0166.val.i.2 = load i16, ptr %i.fq, align 1
  %i.fw = zext i16 %.0166.val.i.2 to i32          ; 2 uses
  %i.fx = sub nsw i32 %i.fw, %i.fo                ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 6
  %i.fz = lshr i32 %i.fx, 8
  %i.ga = trunc i32 %i.fz to i8
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 3
  store i8 %i.ga, ptr %i.ft, align 1, !tbaa !20
  %i.gc = trunc i32 %i.fx to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 3
  store i8 %i.gc, ptr %i.fv, align 1, !tbaa !20
  %.0166.val.i.3 = load i16, ptr %i.fy, align 1
  %i.ge = zext i16 %.0166.val.i.3 to i32          ; 2 uses
  %i.gf = sub nsw i32 %i.ge, %i.fw                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 8
  %i.gh = lshr i32 %i.gf, 8
  %i.gi = trunc i32 %i.gh to i8
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 4
  store i8 %i.gi, ptr %i.gb, align 1, !tbaa !20
  %i.gk = trunc i32 %i.gf to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 4
  store i8 %i.gk, ptr %i.gd, align 1, !tbaa !20
  %i.gm = add nuw nsw i32 %.0165242.i, 4          ; 2 uses
  %exitcond269.not.i.3 = icmp eq i32 %i.gm, %i.w
  br i1 %exitcond269.not.i.3, label %.loopexit.i, label %.lr.ph243.i, !llvm.loop !36

bb.k:                                             ; preds = %bb.f
  %i.gn = mul nsw i64 %i.x, 3
  %i.go = add i64 %i.gn, %.1146254.i              ; 4 uses
  %i.gp = load i64, ptr %i.c, align 8, !tbaa !54
  %.not184.i = icmp ugt i64 %i.go, %i.gp
  br i1 %.not184.i, label %apply_pxr24_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gq = shl nsw i32 %i.w, 2
  %i.gr = sext i32 %i.gq to i64
  %i.gs = getelementptr inbounds i8, ptr %.1158253.i, i64 %i.gr ; 3 uses
  %i.gt = getelementptr i8, ptr %.1138255.i, i64 %i.x ; 6 uses
  %i.gu = getelementptr i8, ptr %i.gt, i64 %i.x   ; 7 uses
  %i.gv = getelementptr inbounds i8, ptr %i.gu, i64 %i.x ; 3 uses
  %i.gw = icmp sgt i32 %i.w, 0
  br i1 %i.gw, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.gx = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check188 = icmp ult i32 %i.w, 8
  br i1 %min.iters.check188, label %.lr.ph.i.preheader239, label %vector.memcheck189

vector.memcheck189:                               ; preds = %.lr.ph.i.preheader
  %i.gy = add nsw i32 %i.w, -1
  %i.gz = zext i32 %i.gy to i64                   ; 3 uses
  %i.ha = zext nneg i32 %i.w to i64
  %i.hb = getelementptr i8, ptr %.1138255.i, i64 %i.ha ; 2 uses
  %i.hc = shl nuw nsw i64 %i.x, 1
  %i.hd = getelementptr i8, ptr %.1138255.i, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 %i.gz
  %i.hf = getelementptr i8, ptr %i.he, i64 1      ; 2 uses
  %i.hg = shl nuw nsw i64 %i.gz, 2
  %i.hh = getelementptr i8, ptr %.1158253.i, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 4      ; 3 uses
  %4 = getelementptr i8, ptr %.1138255.i, i64 %i.x
  %5 = getelementptr i8, ptr %4, i64 %i.gz
  %6 = getelementptr i8, ptr %5, i64 1
  %bound0197 = icmp ult ptr %.1138255.i, %i.hf
  %bound1198 = icmp ult ptr %i.gu, %i.hb
  %found.conflict199 = and i1 %bound0197, %bound1198
  %bound0201 = icmp ult ptr %.1138255.i, %i.hi
  %bound1202 = icmp ult ptr %.1158253.i, %i.hb
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %found.conflict199, %found.conflict203
  %bound0205 = icmp ult ptr %i.gt, %i.hi
  %bound1206 = icmp ult ptr %.1158253.i, %6
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx204, %found.conflict207
  %bound0209 = icmp ult ptr %i.gu, %i.hi
  %bound1210 = icmp ult ptr %.1158253.i, %i.hf
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx208, %found.conflict211
  br i1 %conflict.rdx212, label %.lr.ph.i.preheader239, label %vector.ph213

vector.ph213:                                     ; preds = %vector.memcheck189
  %n.vec214 = and i64 %i.gx, 2147483644           ; 7 uses
  %i.hj = trunc nuw nsw i64 %n.vec214 to i32
  %i.hk = shl nuw nsw i64 %n.vec214, 2
  %i.hl = getelementptr i8, ptr %.1158253.i, i64 %i.hk
  %i.hm = getelementptr i8, ptr %.1138255.i, i64 %n.vec214
  %i.hn = getelementptr i8, ptr %i.gt, i64 %n.vec214
  %i.ho = getelementptr i8, ptr %i.gu, i64 %n.vec214
  br label %vector.body215

vector.body215:                                   ; preds = %vector.body215, %vector.ph213
  %index216 = phi i64 [ 0, %vector.ph213 ], [ %index.next224, %vector.body215 ] ; 5 uses
  %vector.recur217 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph213 ], [ %i.il, %vector.body215 ]
  %i.hp = shl i64 %index216, 2
  %next.gep218 = getelementptr i8, ptr %.1158253.i, i64 %i.hp
  %next.gep219 = getelementptr i8, ptr %.1138255.i, i64 %index216
  %next.gep220 = getelementptr i8, ptr %i.gt, i64 %index216
  %next.gep221 = getelementptr i8, ptr %i.gu, i64 %index216
  %wide.load222 = load <4 x i32>, ptr %next.gep218, align 1, !alias.scope !68 ; 6 uses
  %i.hq = and <4 x i32> %wide.load222, splat (i32 2139095040)
  %i.hr = and <4 x i32> %wide.load222, splat (i32 8388607) ; 2 uses
  %i.hs = icmp ne <4 x i32> %i.hq, splat (i32 2139095040)
  %i.ht = bitcast <4 x i32> %wide.load222 to <4 x float>
  %i.hu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ht)
  %i.hv = bitcast <4 x float> %i.hu to <4 x i32>  ; 2 uses
  %i.hw = and <4 x i32> %wide.load222, splat (i32 128)
  %i.hx = add nuw <4 x i32> %i.hw, %i.hv          ; 2 uses
  %i.hy = icmp ugt <4 x i32> %i.hx, splat (i32 2139095039)
  %i.hz = select <4 x i1> %i.hy, <4 x i32> %i.hv, <4 x i32> %i.hx
  %i.ia = lshr <4 x i32> %i.hz, splat (i32 8)
  %i.ib = icmp eq <4 x i32> %i.hr, zeroinitializer
  %.not235 = or <4 x i1> %i.hs, %i.ib
  %i.ic = lshr <4 x i32> %i.hr, splat (i32 8)     ; 2 uses
  %i.id = icmp eq <4 x i32> %i.ic, zeroinitializer
  %i.ie = zext <4 x i1> %i.id to <4 x i32>
  %i.if = or <4 x i32> %i.ic, %i.ie
  %i.ig = or disjoint <4 x i32> %i.if, splat (i32 8355840)
  %i.ih = and <4 x i32> %wide.load222, splat (i32 2147483647)
  %i.ii = icmp eq <4 x i32> %i.ih, splat (i32 2139095040)
  %predphi = select <4 x i1> %.not235, <4 x i32> %i.ia, <4 x i32> %i.ig
  %predphi223 = select <4 x i1> %i.ii, <4 x i32> splat (i32 8355840), <4 x i32> %predphi
  %i.ij = lshr <4 x i32> %wide.load222, splat (i32 8)
  %i.ik = and <4 x i32> %i.ij, splat (i32 8388608)
  %i.il = or <4 x i32> %predphi223, %i.ik         ; 4 uses
  %i.im = shufflevector <4 x i32> %vector.recur217, <4 x i32> %i.il, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.in = sub nsw <4 x i32> %i.il, %i.im          ; 3 uses
  %i.io = lshr <4 x i32> %i.in, splat (i32 16)
  %i.ip = trunc <4 x i32> %i.io to <4 x i8>
  store <4 x i8> %i.ip, ptr %next.gep219, align 1, !tbaa !20, !alias.scope !69, !noalias !70
  %i.iq = lshr <4 x i32> %i.in, splat (i32 8)
  %i.ir = trunc <4 x i32> %i.iq to <4 x i8>
  store <4 x i8> %i.ir, ptr %next.gep220, align 1, !tbaa !20, !alias.scope !71, !noalias !68
  %i.is = trunc <4 x i32> %i.in to <4 x i8>
  store <4 x i8> %i.is, ptr %next.gep221, align 1, !tbaa !20, !alias.scope !72, !noalias !68
  %index.next224 = add nuw i64 %index216, 4       ; 2 uses
  %i.it = icmp eq i64 %index.next224, %n.vec214
  br i1 %i.it, label %middle.block225, label %vector.body215, !llvm.loop !42

middle.block225:                                  ; preds = %vector.body215
  %vector.recur.extract226 = extractelement <4 x i32> %i.il, i64 3
  %cmp.n227 = icmp eq i64 %n.vec214, %i.gx
  br i1 %cmp.n227, label %.loopexit.i, label %.lr.ph.i.preheader239

.lr.ph.i.preheader239:                            ; preds = %vector.memcheck189, %.lr.ph.i.preheader, %middle.block225
  %.0154237.i.ph = phi i32 [ 0, %vector.memcheck189 ], [ 0, %.lr.ph.i.preheader ], [ %i.hj, %middle.block225 ]
  %.0155236.i.ph = phi ptr [ %.1158253.i, %vector.memcheck189 ], [ %.1158253.i, %.lr.ph.i.preheader ], [ %i.hl, %middle.block225 ]
  %.0156235.i.ph = phi i32 [ 0, %vector.memcheck189 ], [ 0, %.lr.ph.i.preheader ], [ %vector.recur.extract226, %middle.block225 ]
  %.sroa.014.0234.i.ph = phi ptr [ %.1138255.i, %vector.memcheck189 ], [ %.1138255.i, %.lr.ph.i.preheader ], [ %i.hm, %middle.block225 ]
  %.sroa.5.0233.i.ph = phi ptr [ %i.gt, %vector.memcheck189 ], [ %i.gt, %.lr.ph.i.preheader ], [ %i.hn, %middle.block225 ]
  %.sroa.8.0232.i.ph = phi ptr [ %i.gu, %vector.memcheck189 ], [ %i.gu, %.lr.ph.i.preheader ], [ %i.ho, %middle.block225 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader239, %float_to_float24.exit.i
  %.0154237.i = phi i32 [ %i.jv, %float_to_float24.exit.i ], [ %.0154237.i.ph, %.lr.ph.i.preheader239 ]
  %.0155236.i = phi ptr [ %i.jm, %float_to_float24.exit.i ], [ %.0155236.i.ph, %.lr.ph.i.preheader239 ] ; 2 uses
  %.0156235.i = phi i32 [ %i.jk, %float_to_float24.exit.i ], [ %.0156235.i.ph, %.lr.ph.i.preheader239 ]
  %.sroa.014.0234.i = phi ptr [ %i.jp, %float_to_float24.exit.i ], [ %.sroa.014.0234.i.ph, %.lr.ph.i.preheader239 ] ; 2 uses
  %.sroa.5.0233.i = phi ptr [ %i.js, %float_to_float24.exit.i ], [ %.sroa.5.0233.i.ph, %.lr.ph.i.preheader239 ] ; 2 uses
  %.sroa.8.0232.i = phi ptr [ %i.ju, %float_to_float24.exit.i ], [ %.sroa.8.0232.i.ph, %.lr.ph.i.preheader239 ] ; 2 uses
  %.0155.val.i = load i32, ptr %.0155236.i, align 1 ; 5 uses
  %i.iu = and i32 %.0155.val.i, 2139095040
  %i.iv = and i32 %.0155.val.i, 8388607           ; 2 uses
  %i.iw = icmp eq i32 %i.iu, 2139095040
  br i1 %i.iw, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %i.iv, 0
  br i1 %.not.i.i, label %float_to_float24.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ix = lshr i32 %i.iv, 8                       ; 2 uses
  %i.iy = icmp eq i32 %i.ix, 0
  %i.iz = zext i1 %i.iy to i32
  %i.ja = or i32 %i.ix, %i.iz
  %i.jb = or disjoint i32 %i.ja, 8355840
  br label %float_to_float24.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.jc = bitcast i32 %.0155.val.i to float
  %i.jd = tail call float @llvm.fabs.f32(float %i.jc)
  %i.je = bitcast float %i.jd to i32              ; 2 uses
  %i.jf = and i32 %.0155.val.i, 128
  %i.jg = add nuw i32 %i.jf, %i.je                ; 2 uses
  %i.jh = icmp ugt i32 %i.jg, 2139095039
  %spec.select.v.i.i = select i1 %i.jh, i32 %i.je, i32 %i.jg
  %spec.select.i.i = lshr i32 %spec.select.v.i.i, 8
  br label %float_to_float24.exit.i

float_to_float24.exit.i:                          ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i = phi i32 [ %i.jb, %bb.n ], [ %spec.select.i.i, %bb.o ], [ 8355840, %bb.m ]
  %i.ji = lshr i32 %.0155.val.i, 8
  %i.jj = and i32 %i.ji, 8388608
  %i.jk = or i32 %.0.i.i, %i.jj                   ; 2 uses
  %i.jl = sub nsw i32 %i.jk, %.0156235.i          ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %.0155236.i, i64 4
  %i.jn = lshr i32 %i.jl, 16
  %i.jo = trunc i32 %i.jn to i8
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.014.0234.i, i64 1
  store i8 %i.jo, ptr %.sroa.014.0234.i, align 1, !tbaa !20
  %i.jq = lshr i32 %i.jl, 8
  %i.jr = trunc i32 %i.jq to i8
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.5.0233.i, i64 1
  store i8 %i.jr, ptr %.sroa.5.0233.i, align 1, !tbaa !20
  %i.jt = trunc i32 %i.jl to i8
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.8.0232.i, i64 1
  store i8 %i.jt, ptr %.sroa.8.0232.i, align 1, !tbaa !20
  %i.jv = add nuw nsw i32 %.0154237.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.jv, %i.w
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !43

.loopexit.i:                                      ; preds = %float_to_float24.exit.i, %.lr.ph243.i.prol.loopexit, %.lr.ph243.i, %.lr.ph251.i.prol.loopexit, %.lr.ph251.i, %middle.block225, %middle.block150, %middle.block, %bb.l, %bb.j, %bb.h, %bb.e, %.lr.ph256.i
  %.6163.i = phi ptr [ %.1158253.i, %bb.e ], [ %.1158253.i, %.lr.ph256.i ], [ %i.ds, %bb.j ], [ %i.ak, %bb.h ], [ %i.gs, %bb.l ], [ %i.ds, %middle.block150 ], [ %i.ak, %middle.block ], [ %i.gs, %middle.block225 ], [ %i.ds, %.lr.ph243.i.prol.loopexit ], [ %i.ak, %.lr.ph251.i.prol.loopexit ], [ %i.ak, %.lr.ph251.i ], [ %i.ds, %.lr.ph243.i ], [ %i.gs, %float_to_float24.exit.i ] ; 2 uses
  %.6151.i = phi i64 [ %.1146254.i, %bb.e ], [ %.1146254.i, %.lr.ph256.i ], [ %i.dq, %bb.j ], [ %i.ai, %bb.h ], [ %i.go, %bb.l ], [ %i.dq, %middle.block150 ], [ %i.ai, %middle.block ], [ %i.go, %middle.block225 ], [ %i.dq, %.lr.ph243.i.prol.loopexit ], [ %i.ai, %.lr.ph251.i.prol.loopexit ], [ %i.ai, %.lr.ph251.i ], [ %i.dq, %.lr.ph243.i ], [ %i.go, %float_to_float24.exit.i ] ; 2 uses
  %.6143.i = phi ptr [ %.1138255.i, %bb.e ], [ %.1138255.i, %.lr.ph256.i ], [ %i.du, %bb.j ], [ %i.ao, %bb.h ], [ %i.gv, %bb.l ], [ %i.du, %middle.block150 ], [ %i.ao, %middle.block ], [ %i.gv, %middle.block225 ], [ %i.du, %.lr.ph243.i.prol.loopexit ], [ %i.ao, %.lr.ph251.i.prol.loopexit ], [ %i.ao, %.lr.ph251.i ], [ %i.du, %.lr.ph243.i ], [ %i.gv, %float_to_float24.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jw = load i16, ptr %i.m, align 8, !tbaa !51  ; 2 uses
  %i.jx = sext i16 %i.jw to i64
  %i.jy = icmp slt i64 %indvars.iv.next.i, %i.jx
  br i1 %i.jy, label %.lr.ph256.i, label %._crit_edge.loopexit.i, !llvm.loop !44

._crit_edge.loopexit.i:                           ; preds = %.loopexit.i
  %.pre272.i = load i32, ptr %i.j, align 4, !tbaa !50
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.jz = phi i32 [ %i.o, %bb.c ], [ %.pre272.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ka = phi i16 [ %i.p, %bb.c ], [ %i.jw, %._crit_edge.loopexit.i ]
  %.1158.lcssa.i = phi ptr [ %.0157261.i, %bb.c ], [ %.6163.i, %._crit_edge.loopexit.i ]
  %.1146.lcssa.i = phi i64 [ %.0145262.i, %bb.c ], [ %.6151.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.1138.lcssa.i = phi ptr [ %.0137263.i, %bb.c ], [ %.6143.i, %._crit_edge.loopexit.i ]
  %i.kb = add nuw nsw i32 %.0168260.i, 1          ; 2 uses
  %.not187.i = icmp slt i32 %i.kb, %i.jz
  br i1 %.not187.i, label %bb.c, label %.thread222.loopexit.i, !llvm.loop !45

.thread222.loopexit.i:                            ; preds = %._crit_edge.i
  %.pre273.i = load ptr, ptr %i.b, align 8, !tbaa !48
  br label %.thread222.i

.thread222.i:                                     ; preds = %.thread222.loopexit.i, %bb.b
  %i.kc = phi ptr [ %i.g, %bb.b ], [ %.pre273.i, %.thread222.loopexit.i ]
  %.0145.lcssa.i = phi i64 [ 0, %bb.b ], [ %.1146.lcssa.i, %.thread222.loopexit.i ]
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !73
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !74
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ki = load i64, ptr %i.kh, align 8, !tbaa !75
  %i.kj = call i32 @exr_compress_buffer(ptr noundef %i.ke, i32 noundef -1, ptr noundef %i.kc, i64 noundef %.0145.lcssa.i, ptr noundef %i.kg, i64 noundef %i.ki, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.kk = icmp eq i32 %i.kj, 0
  br i1 %i.kk, label %bb.p, label %apply_pxr24_impl.exit

bb.p:                                             ; preds = %.thread222.i
  %i.kl = load i64, ptr %i.a, align 8, !tbaa !76  ; 2 uses
  %i.km = load i64, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  %i.kn = icmp ugt i64 %i.kl, %i.km
  br i1 %i.kn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ko = load ptr, ptr %i.kf, align 8, !tbaa !74
  %i.kp = load ptr, ptr %i.h, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ko, ptr align 1 %i.kp, i64 %i.km, i1 false)
  %i.kq = load i64, ptr %i.d, align 8, !tbaa !47
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.kr = phi i64 [ %i.kq, %bb.q ], [ %i.kl, %bb.p ]
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.kr, ptr %i.ks, align 8, !tbaa !77
  br label %apply_pxr24_impl.exit

apply_pxr24_impl.exit:                            ; preds = %bb.f, %bb.g, %bb.i, %bb.k, %.thread222.i, %bb.r
  %.9.i = phi i32 [ %i.kj, %.thread222.i ], [ 0, %bb.r ], [ 1, %bb.k ], [ 1, %bb.i ], [ 1, %bb.g ], [ 3, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %apply_pxr24_impl.exit
  %.0 = phi i32 [ %.9.i, %apply_pxr24_impl.exit ], [ %i.f, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @internal_encode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_undo_pxr24(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.d = tail call i64 @exr_compress_max_buffer_size(i64 noundef %4) #5
  %i.e = tail call i32 @internal_decode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef %i.d) #5 ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.g = load i64, ptr %i.c, align 8, !tbaa !85   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.h = icmp ult i64 %i.g, %4
  br i1 %i.h, label %undo_pxr24_impl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !86
  %i.k = call i32 @exr_uncompress_buffer(ptr noundef %i.j, ptr noundef %1, i64 noundef %2, ptr noundef %i.f, i64 noundef %i.g, ptr noundef nonnull %i.a) #5 ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %.preheader215.i, label %undo_pxr24_impl.exit

.preheader215.i:                                  ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !87   ; 2 uses
  %.not175251.i = icmp sgt i32 %i.m, 0
  br i1 %.not175251.i, label %.lr.ph257.i, label %.thread207.i

.lr.ph257.i:                                      ; preds = %.preheader215.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load i16, ptr %i.o, align 8, !tbaa !88 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i, %.lr.ph257.i
  %i.q = phi i32 [ %i.m, %.lr.ph257.i ], [ %i.gl, %._crit_edge.i ]
  %i.r = phi i16 [ %.pre.i, %.lr.ph257.i ], [ %i.gm, %._crit_edge.i ] ; 2 uses
  %i.s = phi i16 [ %.pre.i, %.lr.ph257.i ], [ %i.gn, %._crit_edge.i ] ; 2 uses
  %.0130256.i = phi ptr [ %3, %.lr.ph257.i ], [ %.1131.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0138255.i = phi i32 [ 0, %.lr.ph257.i ], [ %i.go, %._crit_edge.i ] ; 2 uses
  %.0145254.i = phi ptr [ %i.f, %.lr.ph257.i ], [ %.1146.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0150253.i = phi i64 [ 0, %.lr.ph257.i ], [ %.1151.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0158252.i = phi i64 [ 0, %.lr.ph257.i ], [ %.1159.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.t = load i32, ptr %i.n, align 8, !tbaa !89
  %i.u = add nsw i32 %i.t, %.0138255.i
  %i.v = icmp sgt i16 %i.s, 0
  br i1 %i.v, label %.lr.ph247.i, label %._crit_edge.i

.lr.ph247.i:                                      ; preds = %bb.d, %bb.l
  %i.w = phi i16 [ %i.gi, %bb.l ], [ %i.r, %bb.d ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.l ], [ 0, %bb.d ] ; 2 uses
  %.1131245.i = phi ptr [ %.2132.i, %bb.l ], [ %.0130256.i, %bb.d ] ; 9 uses
  %.1146243.i = phi ptr [ %.3148.i, %bb.l ], [ %.0145254.i, %bb.d ] ; 11 uses
  %.1151242.i = phi i64 [ %.6156.i, %bb.l ], [ %.0150253.i, %bb.d ] ; 5 uses
  %.1159241.i = phi i64 [ %.2160.i, %bb.l ], [ %.0158252.i, %bb.d ] ; 3 uses
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !90
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.x, i64 %indvars.iv.i ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !16  ; 17 uses
  %i.ab = sext i32 %i.aa to i64                   ; 10 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 25
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !91
  %i.ae = sext i8 %i.ad to i64
  %i.af = mul nsw i64 %i.ae, %i.ab                ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !17
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.l, label %bb.e

bb.e:                                             ; preds = %.lr.ph247.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18 ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 1
  br i1 %i.al, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.am = srem i32 %i.u, %i.ak
  %.not171.i = icmp eq i32 %i.am, 0
  br i1 %.not171.i, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.an = add i64 %i.af, %.1159241.i              ; 2 uses
  %i.ao = icmp ugt i64 %i.an, %4
  br i1 %i.ao, label %undo_pxr24_impl.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 26
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !19
  switch i16 %i.aq, label %undo_pxr24_impl.exit [
    i16 0, label %bb.i
    i16 1, label %bb.j
    i16 2, label %bb.k
  ]

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds i8, ptr %.1146243.i, i64 %i.ab ; 3 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.ab ; 3 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.ab ; 3 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.ab ; 3 uses
  %i.av = add i64 %i.af, %.1151242.i              ; 4 uses
  %.not174.i = icmp ugt i64 %i.av, %4
  br i1 %.not174.i, label %undo_pxr24_impl.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %i.aw = icmp sgt i32 %i.aa, 0
  br i1 %i.aw, label %.lr.ph240.i.preheader, label %.loopexit.i

.lr.ph240.i.preheader:                            ; preds = %.preheader.i
  %xtraiter44 = and i32 %i.aa, 1
  %i.ax = icmp eq i32 %i.aa, 1
  br i1 %i.ax, label %.lr.ph240.i.epil.preheader, label %.lr.ph240.i.preheader.new

.lr.ph240.i.preheader.new:                        ; preds = %.lr.ph240.i.preheader
  %unroll_iter47 = and i32 %i.aa, 2147483646
  br label %.lr.ph240.i

.lr.ph240.i:                                      ; preds = %.lr.ph240.i, %.lr.ph240.i.preheader.new
  %.0135238.i = phi ptr [ %.1131245.i, %.lr.ph240.i.preheader.new ], [ %i.cl, %.lr.ph240.i ] ; 3 uses
  %.0136237.i = phi i32 [ 0, %.lr.ph240.i.preheader.new ], [ %i.ck, %.lr.ph240.i ]
  %.sroa.027.0236.i = phi ptr [ %.1146243.i, %.lr.ph240.i.preheader.new ], [ %i.bs, %.lr.ph240.i ] ; 3 uses
  %.sroa.528.0235.i = phi ptr [ %i.ar, %.lr.ph240.i.preheader.new ], [ %i.bw, %.lr.ph240.i ] ; 3 uses
  %.sroa.829.0234.i = phi ptr [ %i.as, %.lr.ph240.i.preheader.new ], [ %i.cb, %.lr.ph240.i ] ; 3 uses
  %.sroa.11.0233.i = phi ptr [ %i.at, %.lr.ph240.i.preheader.new ], [ %i.cg, %.lr.ph240.i ] ; 3 uses
  %niter48 = phi i32 [ 0, %.lr.ph240.i.preheader.new ], [ %niter48.next.1, %.lr.ph240.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.027.0236.i, i64 1
  %i.az = load i8, ptr %.sroa.027.0236.i, align 1, !tbaa !20
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl nuw i32 %i.ba, 24
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.528.0235.i, i64 1
  %i.bd = load i8, ptr %.sroa.528.0235.i, align 1, !tbaa !20
  %i.be = zext i8 %i.bd to i32
  %i.bf = shl nuw nsw i32 %i.be, 16
  %i.bg = or disjoint i32 %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.829.0234.i, i64 1
  %i.bi = load i8, ptr %.sroa.829.0234.i, align 1, !tbaa !20
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, 8
  %i.bl = or disjoint i32 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.11.0233.i, i64 1
  %i.bn = load i8, ptr %.sroa.11.0233.i, align 1, !tbaa !20
  %i.bo = zext i8 %i.bn to i32
  %i.bp = or disjoint i32 %i.bl, %i.bo
  %i.bq = add i32 %i.bp, %.0136237.i              ; 2 uses
  store i32 %i.bq, ptr %.0135238.i, align 1
  %i.br = getelementptr inbounds nuw i8, ptr %.0135238.i, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.027.0236.i, i64 2 ; 2 uses
  %i.bt = load i8, ptr %i.ay, align 1, !tbaa !20
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw i32 %i.bu, 24
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.528.0235.i, i64 2 ; 2 uses
  %i.bx = load i8, ptr %i.bc, align 1, !tbaa !20
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 16
  %i.ca = or disjoint i32 %i.bz, %i.bv
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.829.0234.i, i64 2 ; 2 uses
  %i.cc = load i8, ptr %i.bh, align 1, !tbaa !20
  %i.cd = zext i8 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 8
  %i.cf = or disjoint i32 %i.ca, %i.ce
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.11.0233.i, i64 2 ; 2 uses
  %i.ch = load i8, ptr %i.bm, align 1, !tbaa !20
  %i.ci = zext i8 %i.ch to i32
  %i.cj = or disjoint i32 %i.cf, %i.ci
  %i.ck = add i32 %i.cj, %i.bq                    ; 3 uses
  store i32 %i.ck, ptr %i.br, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.0135238.i, i64 8 ; 2 uses
  %niter48.next.1 = add nuw nsw i32 %niter48, 2   ; 2 uses
  %niter48.ncmp.1 = icmp eq i32 %niter48.next.1, %unroll_iter47
  br i1 %niter48.ncmp.1, label %.loopexit.i.loopexit.unr-lcssa, label %.lr.ph240.i, !llvm.loop !78

bb.j:                                             ; preds = %bb.h
  %i.cm = getelementptr inbounds i8, ptr %.1146243.i, i64 %i.ab ; 3 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %i.ab ; 3 uses
  %i.co = add i64 %i.af, %.1151242.i              ; 4 uses
  %.not173.i = icmp ugt i64 %i.co, %4
  br i1 %.not173.i, label %undo_pxr24_impl.exit, label %.preheader211.i

.preheader211.i:                                  ; preds = %bb.j
  %i.cp = icmp sgt i32 %i.aa, 0
  br i1 %i.cp, label %.lr.ph232.i.preheader, label %.loopexit.i

.lr.ph232.i.preheader:                            ; preds = %.preheader211.i
  %xtraiter39 = and i32 %i.aa, 1
  %i.cq = icmp eq i32 %i.aa, 1
  br i1 %i.cq, label %.lr.ph232.i.epil.preheader, label %.lr.ph232.i.preheader.new

.lr.ph232.i.preheader.new:                        ; preds = %.lr.ph232.i.preheader
  %unroll_iter42 = and i32 %i.aa, 2147483646
  br label %.lr.ph232.i

.lr.ph232.i:                                      ; preds = %.lr.ph232.i, %.lr.ph232.i.preheader.new
  %.0128230.i = phi ptr [ %.1131245.i, %.lr.ph232.i.preheader.new ], [ %i.dk, %.lr.ph232.i ] ; 3 uses
  %.0129229.i = phi i16 [ 0, %.lr.ph232.i.preheader.new ], [ %i.dj, %.lr.ph232.i ]
  %.sroa.018.0228.i = phi ptr [ %.1146243.i, %.lr.ph232.i.preheader.new ], [ %i.db, %.lr.ph232.i ] ; 3 uses
  %.sroa.519.0227.i = phi ptr [ %i.cm, %.lr.ph232.i.preheader.new ], [ %i.df, %.lr.ph232.i ] ; 3 uses
  %niter43 = phi i32 [ 0, %.lr.ph232.i.preheader.new ], [ %niter43.next.1, %.lr.ph232.i ]
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.018.0228.i, i64 1
  %i.cs = load i8, ptr %.sroa.018.0228.i, align 1, !tbaa !20
  %i.ct = zext i8 %i.cs to i16
  %i.cu = shl nuw i16 %i.ct, 8
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.519.0227.i, i64 1
  %i.cw = load i8, ptr %.sroa.519.0227.i, align 1, !tbaa !20
  %i.cx = zext i8 %i.cw to i16
  %i.cy = or disjoint i16 %i.cu, %i.cx
  %i.cz = add i16 %i.cy, %.0129229.i              ; 2 uses
  store i16 %i.cz, ptr %.0128230.i, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %.0128230.i, i64 2
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.018.0228.i, i64 2 ; 2 uses
  %i.dc = load i8, ptr %i.cr, align 1, !tbaa !20
  %i.dd = zext i8 %i.dc to i16
  %i.de = shl nuw i16 %i.dd, 8
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.519.0227.i, i64 2 ; 2 uses
  %i.dg = load i8, ptr %i.cv, align 1, !tbaa !20
  %i.dh = zext i8 %i.dg to i16
  %i.di = or disjoint i16 %i.de, %i.dh
  %i.dj = add i16 %i.di, %i.cz                    ; 3 uses
  store i16 %i.dj, ptr %i.da, align 1
  %i.dk = getelementptr inbounds nuw i8, ptr %.0128230.i, i64 4 ; 2 uses
  %niter43.next.1 = add nuw nsw i32 %niter43, 2   ; 2 uses
  %niter43.ncmp.1 = icmp eq i32 %niter43.next.1, %unroll_iter42
  br i1 %niter43.ncmp.1, label %.loopexit.i.loopexit36.unr-lcssa, label %.lr.ph232.i, !llvm.loop !79

bb.k:                                             ; preds = %bb.h
  %i.dl = getelementptr inbounds i8, ptr %.1146243.i, i64 %i.ab ; 3 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %i.ab ; 3 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %i.ab ; 3 uses
  %i.do = mul nsw i32 %i.aa, 3
  %i.dp = sext i32 %i.do to i64
  %i.dq = add i64 %.1151242.i, %i.dp              ; 4 uses
  %.not172.i = icmp ugt i64 %i.dq, %4
  br i1 %.not172.i, label %undo_pxr24_impl.exit, label %.preheader213.i

.preheader213.i:                                  ; preds = %bb.k
  %i.dr = icmp sgt i32 %i.aa, 0
  br i1 %i.dr, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %.preheader213.i
  %xtraiter = and i32 %i.aa, 1
  %i.ds = icmp eq i32 %i.aa, 1
  br i1 %i.ds, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i32 %i.aa, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.0125225.i = phi ptr [ %.1131245.i, %.lr.ph.i.preheader.new ], [ %i.ey, %.lr.ph.i ] ; 3 uses
  %.0126224.i = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %i.ex, %.lr.ph.i ]
  %.sroa.0.0223.i = phi ptr [ %.1146243.i, %.lr.ph.i.preheader.new ], [ %i.ej, %.lr.ph.i ] ; 3 uses
  %.sroa.5.0222.i = phi ptr [ %i.dl, %.lr.ph.i.preheader.new ], [ %i.en, %.lr.ph.i ] ; 3 uses
  %.sroa.8.0221.i = phi ptr [ %i.dm, %.lr.ph.i.preheader.new ], [ %i.es, %.lr.ph.i ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.0.0223.i, i64 1
  %i.du = load i8, ptr %.sroa.0.0223.i, align 1, !tbaa !20
  %i.dv = zext i8 %i.du to i32
  %i.dw = shl nuw i32 %i.dv, 24
  %i.dx = getelementptr inbounds nuw i8, ptr %.sroa.5.0222.i, i64 1
  %i.dy = load i8, ptr %.sroa.5.0222.i, align 1, !tbaa !20
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 16
  %i.eb = or disjoint i32 %i.ea, %i.dw
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.8.0221.i, i64 1
  %i.ed = load i8, ptr %.sroa.8.0221.i, align 1, !tbaa !20
  %i.ee = zext i8 %i.ed to i32
  %i.ef = shl nuw nsw i32 %i.ee, 8
  %i.eg = or disjoint i32 %i.eb, %i.ef
  %i.eh = add i32 %i.eg, %.0126224.i              ; 2 uses
  store i32 %i.eh, ptr %.0125225.i, align 1
  %i.ei = getelementptr inbounds nuw i8, ptr %.0125225.i, i64 4
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0223.i, i64 2 ; 2 uses
  %i.ek = load i8, ptr %i.dt, align 1, !tbaa !20
  %i.el = zext i8 %i.ek to i32
  %i.em = shl nuw i32 %i.el, 24
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.5.0222.i, i64 2 ; 2 uses
  %i.eo = load i8, ptr %i.dx, align 1, !tbaa !20
  %i.ep = zext i8 %i.eo to i32
  %i.eq = shl nuw nsw i32 %i.ep, 16
  %i.er = or disjoint i32 %i.eq, %i.em
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.8.0221.i, i64 2 ; 2 uses
  %i.et = load i8, ptr %i.ec, align 1, !tbaa !20
  %i.eu = zext i8 %i.et to i32
  %i.ev = shl nuw nsw i32 %i.eu, 8
  %i.ew = or disjoint i32 %i.er, %i.ev
  %i.ex = add i32 %i.ew, %i.eh                    ; 3 uses
  store i32 %i.ex, ptr %i.ei, align 1
  %i.ey = getelementptr inbounds nuw i8, ptr %.0125225.i, i64 8 ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.i.loopexit37.unr-lcssa, label %.lr.ph.i, !llvm.loop !80

.loopexit.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph240.i
  %lcmp.mod45.not = icmp eq i32 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.loopexit.i, label %.lr.ph240.i.epil.preheader

.lr.ph240.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit.unr-lcssa, %.lr.ph240.i.preheader
  %.0135238.i.epil.init = phi ptr [ %.1131245.i, %.lr.ph240.i.preheader ], [ %i.cl, %.loopexit.i.loopexit.unr-lcssa ]
  %.0136237.i.epil.init = phi i32 [ 0, %.lr.ph240.i.preheader ], [ %i.ck, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.027.0236.i.epil.init = phi ptr [ %.1146243.i, %.lr.ph240.i.preheader ], [ %i.bs, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.528.0235.i.epil.init = phi ptr [ %i.ar, %.lr.ph240.i.preheader ], [ %i.bw, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.829.0234.i.epil.init = phi ptr [ %i.as, %.lr.ph240.i.preheader ], [ %i.cb, %.loopexit.i.loopexit.unr-lcssa ]
  %.sroa.11.0233.i.epil.init = phi ptr [ %i.at, %.lr.ph240.i.preheader ], [ %i.cg, %.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod46 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod46)
  %i.ez = load i8, ptr %.sroa.027.0236.i.epil.init, align 1, !tbaa !20
  %i.fa = zext i8 %i.ez to i32
  %i.fb = shl nuw i32 %i.fa, 24
  %i.fc = load i8, ptr %.sroa.528.0235.i.epil.init, align 1, !tbaa !20
  %i.fd = zext i8 %i.fc to i32
  %i.fe = shl nuw nsw i32 %i.fd, 16
  %i.ff = or disjoint i32 %i.fe, %i.fb
  %i.fg = load i8, ptr %.sroa.829.0234.i.epil.init, align 1, !tbaa !20
  %i.fh = zext i8 %i.fg to i32
  %i.fi = shl nuw nsw i32 %i.fh, 8
  %i.fj = or disjoint i32 %i.ff, %i.fi
  %i.fk = load i8, ptr %.sroa.11.0233.i.epil.init, align 1, !tbaa !20
  %i.fl = zext i8 %i.fk to i32
  %i.fm = or disjoint i32 %i.fj, %i.fl
  %i.fn = add i32 %i.fm, %.0136237.i.epil.init
  store i32 %i.fn, ptr %.0135238.i.epil.init, align 1
  br label %.loopexit.i

.loopexit.i.loopexit36.unr-lcssa:                 ; preds = %.lr.ph232.i
  %lcmp.mod40.not = icmp eq i32 %xtraiter39, 0
  br i1 %lcmp.mod40.not, label %.loopexit.i, label %.lr.ph232.i.epil.preheader

.lr.ph232.i.epil.preheader:                       ; preds = %.loopexit.i.loopexit36.unr-lcssa, %.lr.ph232.i.preheader
  %.0128230.i.epil.init = phi ptr [ %.1131245.i, %.lr.ph232.i.preheader ], [ %i.dk, %.loopexit.i.loopexit36.unr-lcssa ]
  %.0129229.i.epil.init = phi i16 [ 0, %.lr.ph232.i.preheader ], [ %i.dj, %.loopexit.i.loopexit36.unr-lcssa ]
  %.sroa.018.0228.i.epil.init = phi ptr [ %.1146243.i, %.lr.ph232.i.preheader ], [ %i.db, %.loopexit.i.loopexit36.unr-lcssa ]
  %.sroa.519.0227.i.epil.init = phi ptr [ %i.cm, %.lr.ph232.i.preheader ], [ %i.df, %.loopexit.i.loopexit36.unr-lcssa ]
  %lcmp.mod41 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod41)
  %i.fo = load i8, ptr %.sroa.018.0228.i.epil.init, align 1, !tbaa !20
  %i.fp = zext i8 %i.fo to i16
  %i.fq = shl nuw i16 %i.fp, 8
  %i.fr = load i8, ptr %.sroa.519.0227.i.epil.init, align 1, !tbaa !20
  %i.fs = zext i8 %i.fr to i16
  %i.ft = or disjoint i16 %i.fq, %i.fs
  %i.fu = add i16 %i.ft, %.0129229.i.epil.init
  store i16 %i.fu, ptr %.0128230.i.epil.init, align 1
  br label %.loopexit.i

.loopexit.i.loopexit37.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.i.loopexit37.unr-lcssa, %.lr.ph.i.preheader
  %.0125225.i.epil.init = phi ptr [ %.1131245.i, %.lr.ph.i.preheader ], [ %i.ey, %.loopexit.i.loopexit37.unr-lcssa ]
  %.0126224.i.epil.init = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.ex, %.loopexit.i.loopexit37.unr-lcssa ]
  %.sroa.0.0223.i.epil.init = phi ptr [ %.1146243.i, %.lr.ph.i.preheader ], [ %i.ej, %.loopexit.i.loopexit37.unr-lcssa ]
  %.sroa.5.0222.i.epil.init = phi ptr [ %i.dl, %.lr.ph.i.preheader ], [ %i.en, %.loopexit.i.loopexit37.unr-lcssa ]
  %.sroa.8.0221.i.epil.init = phi ptr [ %i.dm, %.lr.ph.i.preheader ], [ %i.es, %.loopexit.i.loopexit37.unr-lcssa ]
  %lcmp.mod38 = trunc i32 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod38)
  %i.fv = load i8, ptr %.sroa.0.0223.i.epil.init, align 1, !tbaa !20
  %i.fw = zext i8 %i.fv to i32
  %i.fx = shl nuw i32 %i.fw, 24
  %i.fy = load i8, ptr %.sroa.5.0222.i.epil.init, align 1, !tbaa !20
  %i.fz = zext i8 %i.fy to i32
  %i.ga = shl nuw nsw i32 %i.fz, 16
  %i.gb = or disjoint i32 %i.ga, %i.fx
  %i.gc = load i8, ptr %.sroa.8.0221.i.epil.init, align 1, !tbaa !20
  %i.gd = zext i8 %i.gc to i32
  %i.ge = shl nuw nsw i32 %i.gd, 8
  %i.gf = or disjoint i32 %i.gb, %i.ge
  %i.gg = add i32 %i.gf, %.0126224.i.epil.init
  store i32 %i.gg, ptr %.0125225.i.epil.init, align 1
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i.epil.preheader, %.loopexit.i.loopexit37.unr-lcssa, %.lr.ph232.i.epil.preheader, %.loopexit.i.loopexit36.unr-lcssa, %.lr.ph240.i.epil.preheader, %.loopexit.i.loopexit.unr-lcssa, %.preheader213.i, %.preheader211.i, %.preheader.i
  %.5155.i = phi i64 [ %i.co, %.preheader211.i ], [ %i.av, %.preheader.i ], [ %i.dq, %.preheader213.i ], [ %i.co, %.lr.ph232.i.epil.preheader ], [ %i.av, %.lr.ph240.i.epil.preheader ], [ %i.av, %.loopexit.i.loopexit.unr-lcssa ], [ %i.co, %.loopexit.i.loopexit36.unr-lcssa ], [ %i.dq, %.loopexit.i.loopexit37.unr-lcssa ], [ %i.dq, %.lr.ph.i.epil.preheader ]
  %.2147.i = phi ptr [ %i.cn, %.preheader211.i ], [ %i.au, %.preheader.i ], [ %i.dn, %.preheader213.i ], [ %i.cn, %.lr.ph232.i.epil.preheader ], [ %i.au, %.lr.ph240.i.epil.preheader ], [ %i.au, %.loopexit.i.loopexit.unr-lcssa ], [ %i.cn, %.loopexit.i.loopexit36.unr-lcssa ], [ %i.dn, %.loopexit.i.loopexit37.unr-lcssa ], [ %i.dn, %.lr.ph.i.epil.preheader ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.1131245.i, i64 %i.af
  %.pre264.i = load i16, ptr %i.o, align 8, !tbaa !88
  br label %bb.l

bb.l:                                             ; preds = %.loopexit.i, %bb.f, %.lr.ph247.i
  %i.gi = phi i16 [ %.pre264.i, %.loopexit.i ], [ %i.w, %.lr.ph247.i ], [ %i.w, %bb.f ] ; 4 uses
  %.2160.i = phi i64 [ %i.an, %.loopexit.i ], [ %.1159241.i, %.lr.ph247.i ], [ %.1159241.i, %bb.f ] ; 2 uses
  %.6156.i = phi i64 [ %.5155.i, %.loopexit.i ], [ %.1151242.i, %.lr.ph247.i ], [ %.1151242.i, %bb.f ] ; 2 uses
  %.3148.i = phi ptr [ %.2147.i, %.loopexit.i ], [ %.1146243.i, %.lr.ph247.i ], [ %.1146243.i, %bb.f ] ; 2 uses
  %.2132.i = phi ptr [ %i.gh, %.loopexit.i ], [ %.1131245.i, %.lr.ph247.i ], [ %.1131245.i, %bb.f ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gj = sext i16 %i.gi to i64
  %i.gk = icmp slt i64 %indvars.iv.next.i, %i.gj
  br i1 %i.gk, label %.lr.ph247.i, label %._crit_edge.loopexit.i, !llvm.loop !81

._crit_edge.loopexit.i:                           ; preds = %bb.l
  %.pre265.i = load i32, ptr %i.l, align 4, !tbaa !87
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %i.gl = phi i32 [ %i.q, %bb.d ], [ %.pre265.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.gm = phi i16 [ %i.r, %bb.d ], [ %i.gi, %._crit_edge.loopexit.i ]
  %i.gn = phi i16 [ %i.s, %bb.d ], [ %i.gi, %._crit_edge.loopexit.i ]
  %.1159.lcssa.i = phi i64 [ %.0158252.i, %bb.d ], [ %.2160.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.1151.lcssa.i = phi i64 [ %.0150253.i, %bb.d ], [ %.6156.i, %._crit_edge.loopexit.i ]
  %.1146.lcssa.i = phi ptr [ %.0145254.i, %bb.d ], [ %.3148.i, %._crit_edge.loopexit.i ]
  %.1131.lcssa.i = phi ptr [ %.0130256.i, %bb.d ], [ %.2132.i, %._crit_edge.loopexit.i ]
  %i.go = add nuw nsw i32 %.0138255.i, 1          ; 2 uses
  %.not175.i = icmp slt i32 %i.go, %i.gl
  br i1 %.not175.i, label %bb.d, label %.thread207.i, !llvm.loop !82

.thread207.i:                                     ; preds = %._crit_edge.i, %.preheader215.i
  %.0158.lcssa.i = phi i64 [ 0, %.preheader215.i ], [ %.1159.lcssa.i, %._crit_edge.i ]
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %.0158.lcssa.i, ptr %i.gp, align 8, !tbaa !92
  br label %undo_pxr24_impl.exit

undo_pxr24_impl.exit:                             ; preds = %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.b, %bb.c, %.thread207.i
  %.9.i = phi i32 [ %i.k, %bb.c ], [ 3, %bb.b ], [ 0, %.thread207.i ], [ 23, %bb.k ], [ 23, %bb.j ], [ 23, %bb.i ], [ 1, %bb.g ], [ 3, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %undo_pxr24_impl.exit
  %.0 = phi i32 [ %.9.i, %undo_pxr24_impl.exit ], [ %i.e, %bb.a ]
  ret i32 %.0
}

declare i32 @internal_decode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @exr_compress_max_buffer_size(i64 noundef) local_unnamed_addr #2

declare i32 @exr_compress_buffer(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @exr_uncompress_buffer(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"long", !4, i64 0}
!9 = !{!"any pointer", !4, i64 0}
!10 = !{!"short", !4, i64 0}
!11 = !{!"p1 _ZTS19_priv_exr_context_t", !9, i64 0}
!12 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !4, i64 20, !4, i64 21, !4, i64 22, !4, i64 23, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56}
!13 = !{!"p1 int", !9, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"", !14, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !4, i64 24, !4, i64 25, !10, i64 26, !10, i64 28, !10, i64 30, !5, i64 32, !5, i64 36, !4, i64 40}
!16 = !{!15, !5, i64 12}
!17 = !{!15, !5, i64 8}
!18 = !{!15, !5, i64 20}
!19 = !{!15, !10, i64 26}
!20 = !{!4, !4, i64 0}
!21 = !{!"llvm.loop.mustprogress"}
!22 = distinct !{!22, i1 false, !"LVerDomain"}
!23 = distinct !{!23, !22}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !22}
!26 = distinct !{!26, !22}
!27 = distinct !{!27, !22}
!28 = distinct !{!28, !21, !62, !63}
!29 = distinct !{!29, !21, !62}
!30 = distinct !{!30, i1 false, !"LVerDomain"}
!31 = distinct !{!31, !30}
!32 = distinct !{!32, !30}
!33 = distinct !{!33, !30}
!34 = distinct !{!34, !21, !62, !63}
!35 = distinct !{!35, !67}
!36 = distinct !{!36, !21, !62}
!37 = distinct !{!37, i1 false, !"LVerDomain"}
!38 = distinct !{!38, !37}
!39 = distinct !{!39, !37}
!40 = distinct !{!40, !37}
!41 = distinct !{!41, !37}
!42 = distinct !{!42, !21, !62, !63}
!43 = distinct !{!43, !21, !62}
!44 = distinct !{!44, !21}
!45 = distinct !{!45, !21}
!46 = !{!"_exr_encode_pipeline", !8, i64 0, !9, i64 8, !10, i64 16, !10, i64 18, !5, i64 20, !11, i64 24, !12, i64 32, !9, i64 96, !9, i64 104, !8, i64 112, !8, i64 120, !13, i64 128, !8, i64 136, !9, i64 144, !8, i64 152, !8, i64 160, !9, i64 168, !8, i64 176, !8, i64 184, !9, i64 192, !8, i64 200, !9, i64 208, !8, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264, !4, i64 272}
!47 = !{!46, !8, i64 112}
!48 = !{!46, !9, i64 192}
!49 = !{!46, !9, i64 104}
!50 = !{!46, !5, i64 44}
!51 = !{!46, !10, i64 16}
!52 = !{!46, !5, i64 40}
!53 = !{!46, !9, i64 8}
!54 = !{!46, !8, i64 200}
!55 = !{!23}
!56 = !{!24}
!57 = !{!26, !25, !23}
!58 = !{!27}
!59 = !{!25, !23}
!60 = !{!26}
!61 = !{!25}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = !{!31}
!65 = !{!32}
!66 = !{!33}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{!38}
!69 = !{!39}
!70 = !{!40, !38}
!71 = !{!41}
!72 = !{!40}
!73 = !{!46, !11, i64 24}
!74 = !{!46, !9, i64 168}
!75 = !{!46, !8, i64 184}
!76 = !{!8, !8, i64 0}
!77 = !{!46, !8, i64 176}
!78 = distinct !{!78, !21}
!79 = distinct !{!79, !21}
!80 = distinct !{!80, !21}
!81 = distinct !{!81, !21}
!82 = distinct !{!82, !21}
!83 = !{!"_exr_decode_pipeline", !8, i64 0, !9, i64 8, !10, i64 16, !10, i64 18, !5, i64 20, !11, i64 24, !12, i64 32, !5, i64 96, !5, i64 100, !8, i64 104, !9, i64 112, !9, i64 120, !8, i64 128, !9, i64 136, !8, i64 144, !9, i64 152, !8, i64 160, !13, i64 168, !8, i64 176, !9, i64 184, !8, i64 192, !9, i64 200, !8, i64 208, !9, i64 216, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !4, i64 264}
!84 = !{!83, !9, i64 184}
!85 = !{!83, !8, i64 192}
!86 = !{!83, !11, i64 24}
!87 = !{!83, !5, i64 44}
!88 = !{!83, !10, i64 16}
!89 = !{!83, !5, i64 40}
!90 = !{!83, !9, i64 8}
!91 = !{!15, !4, i64 25}
!92 = !{!83, !8, i64 104}
end_hunk_0
