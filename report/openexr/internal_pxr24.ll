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
  %i.o = phi i32 [ %i.k, %.lr.ph265.i ], [ %i.je, %._crit_edge.i ]
  %i.p = phi i16 [ %.pre.i, %.lr.ph265.i ], [ %i.jf, %._crit_edge.i ] ; 2 uses
  %.0137263.i = phi ptr [ %i.g, %.lr.ph265.i ], [ %.1138.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0145262.i = phi i64 [ 0, %.lr.ph265.i ], [ %.1146.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0157261.i = phi ptr [ %i.i, %.lr.ph265.i ], [ %.1158.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.0168260.i = phi i32 [ 0, %.lr.ph265.i ], [ %i.jg, %._crit_edge.i ] ; 2 uses
  %i.q = load i32, ptr %i.l, align 8, !tbaa !53
  %i.r = add nsw i32 %i.q, %.0168260.i
  %i.s = icmp sgt i16 %i.p, 0
  br i1 %i.s, label %.lr.ph256.i, label %._crit_edge.i

.lr.ph256.i:                                      ; preds = %bb.c, %.loopexit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.loopexit.i ], [ 0, %bb.c ] ; 2 uses
  %.1138255.i = phi ptr [ %.6143.i, %.loopexit.i ], [ %.0137263.i, %bb.c ] ; 30 uses
  %.1146254.i = phi i64 [ %.6151.i, %.loopexit.i ], [ %.0145262.i, %bb.c ] ; 5 uses
  %.1158253.i = phi ptr [ %.6163.i, %.loopexit.i ], [ %.0157261.i, %bb.c ] ; 29 uses
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !54
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %indvars.iv.i ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !16   ; 20 uses
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
  br i1 %min.iters.check, label %.lr.ph251.i.preheader171, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph251.i.preheader
  %scevgep = getelementptr i8, ptr %.1138255.i, i64 1 ; 3 uses
  %1 = add nsw i32 %i.w, -1
  %i.ar = zext i32 %1 to i64                      ; 5 uses
  %scevgep31 = getelementptr i8, ptr %scevgep, i64 %i.ar ; 4 uses
  %i.as = getelementptr i8, ptr %scevgep, i64 %i.x
  %scevgep32 = getelementptr i8, ptr %i.as, i64 %i.ar ; 4 uses
  %i.at = shl nuw nsw i64 %i.x, 1
  %i.au = getelementptr i8, ptr %scevgep, i64 %i.at
  %scevgep33 = getelementptr i8, ptr %i.au, i64 %i.ar ; 4 uses
  %scevgep34 = getelementptr i8, ptr %.1138255.i, i64 1
  %i.av = mul nuw nsw i64 %i.x, 3
  %i.aw = getelementptr i8, ptr %scevgep34, i64 %i.av
  %scevgep35 = getelementptr i8, ptr %i.aw, i64 %i.ar ; 4 uses
  %scevgep36 = getelementptr i8, ptr %.1158253.i, i64 4
  %i.ax = shl nuw nsw i64 %i.ar, 2
  %scevgep37 = getelementptr i8, ptr %scevgep36, i64 %i.ax ; 4 uses
  %bound0 = icmp ult ptr %.1138255.i, %scevgep32
  %bound1 = icmp ult ptr %i.al, %scevgep31
  %found.conflict = and i1 %bound0, %bound1
  %bound038 = icmp ult ptr %.1138255.i, %scevgep33
  %bound139 = icmp ult ptr %i.am, %scevgep31
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict, %found.conflict40
  %bound041 = icmp ult ptr %.1138255.i, %scevgep35
  %bound142 = icmp ult ptr %i.an, %scevgep31
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  %bound045 = icmp ult ptr %.1138255.i, %scevgep37
  %bound146 = icmp ult ptr %.1158253.i, %scevgep31
  %found.conflict47 = and i1 %bound045, %bound146
  %conflict.rdx48 = or i1 %conflict.rdx44, %found.conflict47
  %bound049 = icmp ult ptr %i.al, %scevgep33
  %bound150 = icmp ult ptr %i.am, %scevgep32
  %found.conflict51 = and i1 %bound049, %bound150
  %conflict.rdx52 = or i1 %conflict.rdx48, %found.conflict51
  %bound053 = icmp ult ptr %i.al, %scevgep35
  %bound154 = icmp ult ptr %i.an, %scevgep32
  %found.conflict55 = and i1 %bound053, %bound154
  %conflict.rdx56 = or i1 %conflict.rdx52, %found.conflict55
  %bound057 = icmp ult ptr %i.al, %scevgep37
  %bound158 = icmp ult ptr %.1158253.i, %scevgep32
  %found.conflict59 = and i1 %bound057, %bound158
  %conflict.rdx60 = or i1 %conflict.rdx56, %found.conflict59
  %bound061 = icmp ult ptr %i.am, %scevgep35
  %bound162 = icmp ult ptr %i.an, %scevgep33
  %found.conflict63 = and i1 %bound061, %bound162
  %conflict.rdx64 = or i1 %conflict.rdx60, %found.conflict63
  %bound065 = icmp ult ptr %i.am, %scevgep37
  %bound166 = icmp ult ptr %.1158253.i, %scevgep33
  %found.conflict67 = and i1 %bound065, %bound166
  %conflict.rdx68 = or i1 %conflict.rdx64, %found.conflict67
  %bound069 = icmp ult ptr %i.an, %scevgep37
  %bound170 = icmp ult ptr %.1158253.i, %scevgep35
  %found.conflict71 = and i1 %bound069, %bound170
  %conflict.rdx72 = or i1 %conflict.rdx68, %found.conflict71
  br i1 %conflict.rdx72, label %.lr.ph251.i.preheader171, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, 2147483644              ; 8 uses
  %i.ay = trunc nuw nsw i64 %n.vec to i32
  %i.az = shl nuw nsw i64 %n.vec, 2
  %i.ba = getelementptr i8, ptr %.1158253.i, i64 %i.az
  %i.bb = getelementptr i8, ptr %.1138255.i, i64 %n.vec
  %i.bc = getelementptr i8, ptr %i.al, i64 %n.vec
  %i.bd = getelementptr i8, ptr %i.am, i64 %n.vec
  %i.be = getelementptr i8, ptr %i.an, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %wide.load, %vector.body ]
  %i.bf = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.1158253.i, i64 %i.bf
  %next.gep73 = getelementptr i8, ptr %.1138255.i, i64 %index
  %next.gep74 = getelementptr i8, ptr %i.al, i64 %index
  %next.gep75 = getelementptr i8, ptr %i.am, i64 %index
  %next.gep76 = getelementptr i8, ptr %i.an, i64 %index
  %wide.load = load <4 x i32>, ptr %next.gep, align 1, !alias.scope !56 ; 4 uses
  %i.bg = shufflevector <4 x i32> %vector.recur, <4 x i32> %wide.load, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bh = sub <4 x i32> %wide.load, %i.bg         ; 4 uses
  %i.bi = lshr <4 x i32> %i.bh, splat (i32 24)
  %i.bj = trunc nuw <4 x i32> %i.bi to <4 x i8>
  store <4 x i8> %i.bj, ptr %next.gep73, align 1, !tbaa !20, !alias.scope !57, !noalias !58
  %i.bk = lshr <4 x i32> %i.bh, splat (i32 16)
  %i.bl = trunc <4 x i32> %i.bk to <4 x i8>
  store <4 x i8> %i.bl, ptr %next.gep74, align 1, !tbaa !20, !alias.scope !59, !noalias !60
  %i.bm = lshr <4 x i32> %i.bh, splat (i32 8)
  %i.bn = trunc <4 x i32> %i.bm to <4 x i8>
  store <4 x i8> %i.bn, ptr %next.gep75, align 1, !tbaa !20, !alias.scope !61, !noalias !62
  %i.bo = trunc <4 x i32> %i.bh to <4 x i8>
  store <4 x i8> %i.bo, ptr %next.gep76, align 1, !tbaa !20, !alias.scope !63, !noalias !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bp = icmp eq i64 %index.next, %n.vec
  br i1 %i.bp, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %wide.load, i64 3
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  br i1 %cmp.n, label %.loopexit.i, label %.lr.ph251.i.preheader171

.lr.ph251.i.preheader171:                         ; preds = %vector.memcheck, %.lr.ph251.i.preheader, %middle.block
  %.0175250.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph251.i.preheader ], [ %i.ay, %middle.block ] ; 4 uses
  %.0176249.i.ph = phi ptr [ %.1158253.i, %vector.memcheck ], [ %.1158253.i, %.lr.ph251.i.preheader ], [ %i.ba, %middle.block ] ; 3 uses
  %.0177248.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph251.i.preheader ], [ %vector.recur.extract, %middle.block ] ; 2 uses
  %.sroa.037.0247.i.ph = phi ptr [ %.1138255.i, %vector.memcheck ], [ %.1138255.i, %.lr.ph251.i.preheader ], [ %i.bb, %middle.block ] ; 3 uses
  %.sroa.538.0246.i.ph = phi ptr [ %i.al, %vector.memcheck ], [ %i.al, %.lr.ph251.i.preheader ], [ %i.bc, %middle.block ] ; 3 uses
  %.sroa.839.0245.i.ph = phi ptr [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph251.i.preheader ], [ %i.bd, %middle.block ] ; 3 uses
  %.sroa.11.0244.i.ph = phi ptr [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph251.i.preheader ], [ %i.be, %middle.block ] ; 3 uses
  %i.bq = sub i32 %i.w, %.0175250.i.ph
  %.neg = add i32 %.0175250.i.ph, 1
  %xtraiter178 = and i32 %i.bq, 1
  %lcmp.mod179.not = icmp eq i32 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %.lr.ph251.i.prol.loopexit, label %.lr.ph251.i.prol

.lr.ph251.i.prol:                                 ; preds = %.lr.ph251.i.preheader171
  %.0176.val.i.prol = load i32, ptr %.0176249.i.ph, align 1 ; 2 uses
  %i.br = sub i32 %.0176.val.i.prol, %.0177248.i.ph ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.0176249.i.ph, i64 4
  %i.bt = lshr i32 %i.br, 24
  %i.bu = trunc nuw i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i.ph, i64 1
  store i8 %i.bu, ptr %.sroa.037.0247.i.ph, align 1, !tbaa !20
  %i.bw = lshr i32 %i.br, 16
  %i.bx = trunc i32 %i.bw to i8
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i.ph, i64 1
  store i8 %i.bx, ptr %.sroa.538.0246.i.ph, align 1, !tbaa !20
  %i.bz = lshr i32 %i.br, 8
  %i.ca = trunc i32 %i.bz to i8
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i.ph, i64 1
  store i8 %i.ca, ptr %.sroa.839.0245.i.ph, align 1, !tbaa !20
  %i.cc = trunc i32 %i.br to i8
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i.ph, i64 1
  store i8 %i.cc, ptr %.sroa.11.0244.i.ph, align 1, !tbaa !20
  %i.ce = add nuw nsw i32 %.0175250.i.ph, 1
  br label %.lr.ph251.i.prol.loopexit

.lr.ph251.i.prol.loopexit:                        ; preds = %.lr.ph251.i.prol, %.lr.ph251.i.preheader171
  %.0175250.i.unr = phi i32 [ %.0175250.i.ph, %.lr.ph251.i.preheader171 ], [ %i.ce, %.lr.ph251.i.prol ]
  %.0176249.i.unr = phi ptr [ %.0176249.i.ph, %.lr.ph251.i.preheader171 ], [ %i.bs, %.lr.ph251.i.prol ]
  %.0177248.i.unr = phi i32 [ %.0177248.i.ph, %.lr.ph251.i.preheader171 ], [ %.0176.val.i.prol, %.lr.ph251.i.prol ]
  %.sroa.037.0247.i.unr = phi ptr [ %.sroa.037.0247.i.ph, %.lr.ph251.i.preheader171 ], [ %i.bv, %.lr.ph251.i.prol ]
  %.sroa.538.0246.i.unr = phi ptr [ %.sroa.538.0246.i.ph, %.lr.ph251.i.preheader171 ], [ %i.by, %.lr.ph251.i.prol ]
  %.sroa.839.0245.i.unr = phi ptr [ %.sroa.839.0245.i.ph, %.lr.ph251.i.preheader171 ], [ %i.cb, %.lr.ph251.i.prol ]
  %.sroa.11.0244.i.unr = phi ptr [ %.sroa.11.0244.i.ph, %.lr.ph251.i.preheader171 ], [ %i.cd, %.lr.ph251.i.prol ]
  %i.cf = icmp eq i32 %i.w, %.neg
  br i1 %i.cf, label %.loopexit.i, label %.lr.ph251.i

.lr.ph251.i:                                      ; preds = %.lr.ph251.i.prol.loopexit, %.lr.ph251.i
  %.0175250.i = phi i32 [ %i.dg, %.lr.ph251.i ], [ %.0175250.i.unr, %.lr.ph251.i.prol.loopexit ]
  %.0176249.i = phi ptr [ %i.cu, %.lr.ph251.i ], [ %.0176249.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.0177248.i = phi i32 [ %.0176.val.i.1, %.lr.ph251.i ], [ %.0177248.i.unr, %.lr.ph251.i.prol.loopexit ]
  %.sroa.037.0247.i = phi ptr [ %i.cx, %.lr.ph251.i ], [ %.sroa.037.0247.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.538.0246.i = phi ptr [ %i.da, %.lr.ph251.i ], [ %.sroa.538.0246.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.839.0245.i = phi ptr [ %i.dd, %.lr.ph251.i ], [ %.sroa.839.0245.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.sroa.11.0244.i = phi ptr [ %i.df, %.lr.ph251.i ], [ %.sroa.11.0244.i.unr, %.lr.ph251.i.prol.loopexit ] ; 3 uses
  %.0176.val.i = load i32, ptr %.0176249.i, align 1 ; 2 uses
  %i.cg = sub i32 %.0176.val.i, %.0177248.i       ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0176249.i, i64 4
  %i.ci = lshr i32 %i.cg, 24
  %i.cj = trunc nuw i32 %i.ci to i8
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i, i64 1
  store i8 %i.cj, ptr %.sroa.037.0247.i, align 1, !tbaa !20
  %i.cl = lshr i32 %i.cg, 16
  %i.cm = trunc i32 %i.cl to i8
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i, i64 1
  store i8 %i.cm, ptr %.sroa.538.0246.i, align 1, !tbaa !20
  %i.co = lshr i32 %i.cg, 8
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i, i64 1
  store i8 %i.cp, ptr %.sroa.839.0245.i, align 1, !tbaa !20
  %i.cr = trunc i32 %i.cg to i8
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i, i64 1
  store i8 %i.cr, ptr %.sroa.11.0244.i, align 1, !tbaa !20
  %.0176.val.i.1 = load i32, ptr %i.ch, align 1   ; 2 uses
  %i.ct = sub i32 %.0176.val.i.1, %.0176.val.i    ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0176249.i, i64 8
  %i.cv = lshr i32 %i.ct, 24
  %i.cw = trunc nuw i32 %i.cv to i8
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.037.0247.i, i64 2
  store i8 %i.cw, ptr %i.ck, align 1, !tbaa !20
  %i.cy = lshr i32 %i.ct, 16
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.538.0246.i, i64 2
  store i8 %i.cz, ptr %i.cn, align 1, !tbaa !20
  %i.db = lshr i32 %i.ct, 8
  %i.dc = trunc i32 %i.db to i8
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.839.0245.i, i64 2
  store i8 %i.dc, ptr %i.cq, align 1, !tbaa !20
  %i.de = trunc i32 %i.ct to i8
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.11.0244.i, i64 2
  store i8 %i.de, ptr %i.cs, align 1, !tbaa !20
  %i.dg = add nuw nsw i32 %.0175250.i, 2          ; 2 uses
  %exitcond270.not.i.1 = icmp eq i32 %i.dg, %i.w
  br i1 %exitcond270.not.i.1, label %.loopexit.i, label %.lr.ph251.i, !llvm.loop !30

bb.i:                                             ; preds = %bb.f
  %i.dh = shl nsw i64 %i.x, 1                     ; 2 uses
  %i.di = add i64 %i.dh, %.1146254.i              ; 5 uses
  %i.dj = load i64, ptr %i.c, align 8, !tbaa !55
  %.not185.i = icmp ugt i64 %i.di, %i.dj
  br i1 %.not185.i, label %apply_pxr24_impl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dk = getelementptr inbounds nuw i8, ptr %.1158253.i, i64 %i.dh ; 4 uses
  %i.dl = getelementptr i8, ptr %.1138255.i, i64 %i.x ; 6 uses
  %i.dm = getelementptr inbounds i8, ptr %i.dl, i64 %i.x ; 4 uses
  %i.dn = icmp sgt i32 %i.w, 0
  br i1 %i.dn, label %.lr.ph243.i.preheader, label %.loopexit.i

.lr.ph243.i.preheader:                            ; preds = %bb.j
  %i.do = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check97 = icmp ult i32 %i.w, 8
  br i1 %min.iters.check97, label %.lr.ph243.i.preheader172, label %vector.memcheck82

vector.memcheck82:                                ; preds = %.lr.ph243.i.preheader
  %scevgep83 = getelementptr i8, ptr %.1138255.i, i64 1
  %i.dp = add nsw i32 %i.w, -1
  %i.dq = zext i32 %i.dp to i64                   ; 3 uses
  %i.dr = getelementptr i8, ptr %scevgep83, i64 %i.x
  %scevgep84 = getelementptr i8, ptr %i.dr, i64 %i.dq
  %scevgep85 = getelementptr i8, ptr %.1158253.i, i64 2
  %i.ds = shl nuw nsw i64 %i.dq, 1
  %scevgep86 = getelementptr i8, ptr %scevgep85, i64 %i.ds ; 2 uses
  %scevgep87 = getelementptr i8, ptr %.1138255.i, i64 1
  %scevgep88 = getelementptr i8, ptr %scevgep87, i64 %i.dq
  %bound089 = icmp ult ptr %i.dl, %scevgep86
  %bound190 = icmp ult ptr %.1158253.i, %scevgep84
  %found.conflict91 = and i1 %bound089, %bound190
  %bound092 = icmp ult ptr %.1138255.i, %scevgep86
  %bound193 = icmp ult ptr %.1158253.i, %scevgep88
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx95 = or i1 %found.conflict91, %found.conflict94
  br i1 %conflict.rdx95, label %.lr.ph243.i.preheader172, label %vector.ph98

vector.ph98:                                      ; preds = %vector.memcheck82
  %n.vec99 = and i64 %i.do, 2147483640            ; 6 uses
  %i.dt = trunc nuw nsw i64 %n.vec99 to i32
  %i.du = shl nuw nsw i64 %n.vec99, 1
  %i.dv = getelementptr i8, ptr %.1158253.i, i64 %i.du
  %i.dw = getelementptr i8, ptr %.1138255.i, i64 %n.vec99
  %i.dx = getelementptr i8, ptr %i.dl, i64 %n.vec99
  br label %vector.body100

vector.body100:                                   ; preds = %vector.body100, %vector.ph98
  %index101 = phi i64 [ 0, %vector.ph98 ], [ %index.next107, %vector.body100 ] ; 4 uses
  %vector.recur102 = phi <8 x i32> [ <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph98 ], [ %i.dz, %vector.body100 ]
  %i.dy = shl i64 %index101, 1
  %next.gep103 = getelementptr i8, ptr %.1158253.i, i64 %i.dy
  %next.gep104 = getelementptr i8, ptr %.1138255.i, i64 %index101
  %next.gep105 = getelementptr i8, ptr %i.dl, i64 %index101
  %wide.load106 = load <8 x i16>, ptr %next.gep103, align 1, !alias.scope !66
  %i.dz = zext <8 x i16> %wide.load106 to <8 x i32> ; 4 uses
  %i.ea = shufflevector <8 x i32> %vector.recur102, <8 x i32> %i.dz, <8 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>
  %i.eb = sub nsw <8 x i32> %i.dz, %i.ea          ; 2 uses
  %i.ec = lshr <8 x i32> %i.eb, splat (i32 8)
  %i.ed = trunc <8 x i32> %i.ec to <8 x i8>
  store <8 x i8> %i.ed, ptr %next.gep104, align 1, !tbaa !20, !alias.scope !67, !noalias !66
  %i.ee = trunc <8 x i32> %i.eb to <8 x i8>
  store <8 x i8> %i.ee, ptr %next.gep105, align 1, !tbaa !20, !alias.scope !68, !noalias !66
  %index.next107 = add nuw i64 %index101, 8       ; 2 uses
  %i.ef = icmp eq i64 %index.next107, %n.vec99
  br i1 %i.ef, label %middle.block108, label %vector.body100, !llvm.loop !35

middle.block108:                                  ; preds = %vector.body100
  %vector.recur.extract109 = extractelement <8 x i32> %i.dz, i64 7
  %cmp.n110 = icmp eq i64 %n.vec99, %i.do
  br i1 %cmp.n110, label %.loopexit.i, label %.lr.ph243.i.preheader172

.lr.ph243.i.preheader172:                         ; preds = %vector.memcheck82, %.lr.ph243.i.preheader, %middle.block108
  %.0165242.i.ph = phi i32 [ 0, %vector.memcheck82 ], [ 0, %.lr.ph243.i.preheader ], [ %i.dt, %middle.block108 ] ; 4 uses
  %.0166241.i.ph = phi ptr [ %.1158253.i, %vector.memcheck82 ], [ %.1158253.i, %.lr.ph243.i.preheader ], [ %i.dv, %middle.block108 ] ; 2 uses
  %.0167240.i.ph = phi i32 [ 0, %vector.memcheck82 ], [ 0, %.lr.ph243.i.preheader ], [ %vector.recur.extract109, %middle.block108 ] ; 2 uses
  %.sroa.024.0239.i.ph = phi ptr [ %.1138255.i, %vector.memcheck82 ], [ %.1138255.i, %.lr.ph243.i.preheader ], [ %i.dw, %middle.block108 ] ; 2 uses
  %.sroa.525.0238.i.ph = phi ptr [ %i.dl, %vector.memcheck82 ], [ %i.dl, %.lr.ph243.i.preheader ], [ %i.dx, %middle.block108 ] ; 2 uses
  %i.eg = sub i32 %i.w, %.0165242.i.ph
  %xtraiter = and i32 %i.eg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph243.i.prol.loopexit, label %.lr.ph243.i.prol

.lr.ph243.i.prol:                                 ; preds = %.lr.ph243.i.preheader172, %.lr.ph243.i.prol
  %.0165242.i.prol = phi i32 [ %i.ep, %.lr.ph243.i.prol ], [ %.0165242.i.ph, %.lr.ph243.i.preheader172 ]
  %.0166241.i.prol = phi ptr [ %i.ej, %.lr.ph243.i.prol ], [ %.0166241.i.ph, %.lr.ph243.i.preheader172 ] ; 2 uses
  %.0167240.i.prol = phi i32 [ %i.eh, %.lr.ph243.i.prol ], [ %.0167240.i.ph, %.lr.ph243.i.preheader172 ]
  %.sroa.024.0239.i.prol = phi ptr [ %i.em, %.lr.ph243.i.prol ], [ %.sroa.024.0239.i.ph, %.lr.ph243.i.preheader172 ] ; 2 uses
  %.sroa.525.0238.i.prol = phi ptr [ %i.eo, %.lr.ph243.i.prol ], [ %.sroa.525.0238.i.ph, %.lr.ph243.i.preheader172 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph243.i.prol ], [ 0, %.lr.ph243.i.preheader172 ]
  %.0166.val.i.prol = load i16, ptr %.0166241.i.prol, align 1
  %i.eh = zext i16 %.0166.val.i.prol to i32       ; 3 uses
  %i.ei = sub nsw i32 %i.eh, %.0167240.i.prol     ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0166241.i.prol, i64 2 ; 2 uses
  %i.ek = lshr i32 %i.ei, 8
  %i.el = trunc i32 %i.ek to i8
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i.prol, i64 1 ; 2 uses
  store i8 %i.el, ptr %.sroa.024.0239.i.prol, align 1, !tbaa !20
  %i.en = trunc i32 %i.ei to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i.prol, i64 1 ; 2 uses
  store i8 %i.en, ptr %.sroa.525.0238.i.prol, align 1, !tbaa !20
  %i.ep = add nuw nsw i32 %.0165242.i.prol, 1     ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph243.i.prol.loopexit, label %.lr.ph243.i.prol, !llvm.loop !36

.lr.ph243.i.prol.loopexit:                        ; preds = %.lr.ph243.i.prol, %.lr.ph243.i.preheader172
  %.0165242.i.unr = phi i32 [ %.0165242.i.ph, %.lr.ph243.i.preheader172 ], [ %i.ep, %.lr.ph243.i.prol ]
  %.0166241.i.unr = phi ptr [ %.0166241.i.ph, %.lr.ph243.i.preheader172 ], [ %i.ej, %.lr.ph243.i.prol ]
  %.0167240.i.unr = phi i32 [ %.0167240.i.ph, %.lr.ph243.i.preheader172 ], [ %i.eh, %.lr.ph243.i.prol ]
  %.sroa.024.0239.i.unr = phi ptr [ %.sroa.024.0239.i.ph, %.lr.ph243.i.preheader172 ], [ %i.em, %.lr.ph243.i.prol ]
  %.sroa.525.0238.i.unr = phi ptr [ %.sroa.525.0238.i.ph, %.lr.ph243.i.preheader172 ], [ %i.eo, %.lr.ph243.i.prol ]
  %i.eq = sub i32 %.0165242.i.ph, %i.w
  %i.er = icmp ugt i32 %i.eq, -4
  br i1 %i.er, label %.loopexit.i, label %.lr.ph243.i

.lr.ph243.i:                                      ; preds = %.lr.ph243.i.prol.loopexit, %.lr.ph243.i
  %.0165242.i = phi i32 [ %i.fy, %.lr.ph243.i ], [ %.0165242.i.unr, %.lr.ph243.i.prol.loopexit ]
  %.0166241.i = phi ptr [ %i.fs, %.lr.ph243.i ], [ %.0166241.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.0167240.i = phi i32 [ %i.fq, %.lr.ph243.i ], [ %.0167240.i.unr, %.lr.ph243.i.prol.loopexit ]
  %.sroa.024.0239.i = phi ptr [ %i.fv, %.lr.ph243.i ], [ %.sroa.024.0239.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.sroa.525.0238.i = phi ptr [ %i.fx, %.lr.ph243.i ], [ %.sroa.525.0238.i.unr, %.lr.ph243.i.prol.loopexit ] ; 5 uses
  %.0166.val.i = load i16, ptr %.0166241.i, align 1
  %i.es = zext i16 %.0166.val.i to i32            ; 2 uses
  %i.et = sub nsw i32 %i.es, %.0167240.i          ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 2
  %i.ev = lshr i32 %i.et, 8
  %i.ew = trunc i32 %i.ev to i8
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 1
  store i8 %i.ew, ptr %.sroa.024.0239.i, align 1, !tbaa !20
  %i.ey = trunc i32 %i.et to i8
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 1
  store i8 %i.ey, ptr %.sroa.525.0238.i, align 1, !tbaa !20
  %.0166.val.i.1 = load i16, ptr %i.eu, align 1
  %i.fa = zext i16 %.0166.val.i.1 to i32          ; 2 uses
  %i.fb = sub nsw i32 %i.fa, %i.es                ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 4
  %i.fd = lshr i32 %i.fb, 8
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 2
  store i8 %i.fe, ptr %i.ex, align 1, !tbaa !20
  %i.fg = trunc i32 %i.fb to i8
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 2
  store i8 %i.fg, ptr %i.ez, align 1, !tbaa !20
  %.0166.val.i.2 = load i16, ptr %i.fc, align 1
  %i.fi = zext i16 %.0166.val.i.2 to i32          ; 2 uses
  %i.fj = sub nsw i32 %i.fi, %i.fa                ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 6
  %i.fl = lshr i32 %i.fj, 8
  %i.fm = trunc i32 %i.fl to i8
  %i.fn = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 3
  store i8 %i.fm, ptr %i.ff, align 1, !tbaa !20
  %i.fo = trunc i32 %i.fj to i8
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 3
  store i8 %i.fo, ptr %i.fh, align 1, !tbaa !20
  %.0166.val.i.3 = load i16, ptr %i.fk, align 1
  %i.fq = zext i16 %.0166.val.i.3 to i32          ; 2 uses
  %i.fr = sub nsw i32 %i.fq, %i.fi                ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0166241.i, i64 8
  %i.ft = lshr i32 %i.fr, 8
  %i.fu = trunc i32 %i.ft to i8
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.024.0239.i, i64 4
  store i8 %i.fu, ptr %i.fn, align 1, !tbaa !20
  %i.fw = trunc i32 %i.fr to i8
  %i.fx = getelementptr inbounds nuw i8, ptr %.sroa.525.0238.i, i64 4
  store i8 %i.fw, ptr %i.fp, align 1, !tbaa !20
  %i.fy = add nuw nsw i32 %.0165242.i, 4          ; 2 uses
  %exitcond269.not.i.3 = icmp eq i32 %i.fy, %i.w
  br i1 %exitcond269.not.i.3, label %.loopexit.i, label %.lr.ph243.i, !llvm.loop !37

bb.k:                                             ; preds = %bb.f
  %i.fz = mul nsw i64 %i.x, 3
  %i.ga = add i64 %i.fz, %.1146254.i              ; 4 uses
  %i.gb = load i64, ptr %i.c, align 8, !tbaa !55
  %.not184.i = icmp ugt i64 %i.ga, %i.gb
  br i1 %.not184.i, label %apply_pxr24_impl.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.gc = shl nsw i64 %i.x, 2
  %i.gd = getelementptr inbounds nuw i8, ptr %.1158253.i, i64 %i.gc ; 3 uses
  %i.ge = getelementptr i8, ptr %.1138255.i, i64 %i.x ; 8 uses
  %i.gf = getelementptr i8, ptr %i.ge, i64 %i.x   ; 8 uses
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %i.x ; 3 uses
  %i.gh = icmp sgt i32 %i.w, 0
  br i1 %i.gh, label %.lr.ph.i.preheader, label %.loopexit.i

.lr.ph.i.preheader:                               ; preds = %bb.l
  %i.gi = zext nneg i32 %i.w to i64               ; 2 uses
  %min.iters.check147 = icmp ult i32 %i.w, 8
  br i1 %min.iters.check147, label %.lr.ph.i.preheader174, label %vector.memcheck116

vector.memcheck116:                               ; preds = %.lr.ph.i.preheader
  %scevgep117 = getelementptr i8, ptr %.1138255.i, i64 1 ; 3 uses
  %2 = add nsw i32 %i.w, -1
  %i.gj = zext i32 %2 to i64                      ; 4 uses
  %scevgep118 = getelementptr i8, ptr %scevgep117, i64 %i.gj ; 3 uses
  %i.gk = getelementptr i8, ptr %scevgep117, i64 %i.x
  %scevgep119 = getelementptr i8, ptr %i.gk, i64 %i.gj ; 3 uses
  %i.gl = shl nuw nsw i64 %i.x, 1
  %i.gm = getelementptr i8, ptr %scevgep117, i64 %i.gl
  %scevgep120 = getelementptr i8, ptr %i.gm, i64 %i.gj ; 3 uses
  %scevgep121 = getelementptr i8, ptr %.1158253.i, i64 4
  %i.gn = shl nuw nsw i64 %i.gj, 2
  %scevgep122 = getelementptr i8, ptr %scevgep121, i64 %i.gn ; 3 uses
  %bound0123 = icmp ult ptr %.1138255.i, %scevgep119
  %bound1124 = icmp ult ptr %i.ge, %scevgep118
  %found.conflict125 = and i1 %bound0123, %bound1124
  %bound0126 = icmp ult ptr %.1138255.i, %scevgep120
  %bound1127 = icmp ult ptr %i.gf, %scevgep118
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx129 = or i1 %found.conflict125, %found.conflict128
  %bound0130 = icmp ult ptr %.1138255.i, %scevgep122
  %bound1131 = icmp ult ptr %.1158253.i, %scevgep118
  %found.conflict132 = and i1 %bound0130, %bound1131
  %conflict.rdx133 = or i1 %conflict.rdx129, %found.conflict132
  %bound0134 = icmp ult ptr %i.ge, %scevgep120
  %bound1135 = icmp ult ptr %i.gf, %scevgep119
  %found.conflict136 = and i1 %bound0134, %bound1135
  %conflict.rdx137 = or i1 %conflict.rdx133, %found.conflict136
  %bound0138 = icmp ult ptr %i.ge, %scevgep122
  %bound1139 = icmp ult ptr %.1158253.i, %scevgep119
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx137, %found.conflict140
  %bound0142 = icmp ult ptr %i.gf, %scevgep122
  %bound1143 = icmp ult ptr %.1158253.i, %scevgep120
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  br i1 %conflict.rdx145, label %.lr.ph.i.preheader174, label %vector.ph148

vector.ph148:                                     ; preds = %vector.memcheck116
  %n.vec149 = and i64 %i.gi, 2147483644           ; 7 uses
  %i.go = trunc nuw nsw i64 %n.vec149 to i32
  %i.gp = shl nuw nsw i64 %n.vec149, 2
  %i.gq = getelementptr i8, ptr %.1158253.i, i64 %i.gp
  %i.gr = getelementptr i8, ptr %.1138255.i, i64 %n.vec149
  %i.gs = getelementptr i8, ptr %i.ge, i64 %n.vec149
  %i.gt = getelementptr i8, ptr %i.gf, i64 %n.vec149
  br label %vector.body150

vector.body150:                                   ; preds = %vector.body150, %vector.ph148
  %index151 = phi i64 [ 0, %vector.ph148 ], [ %index.next159, %vector.body150 ] ; 5 uses
  %vector.recur152 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph148 ], [ %i.hq, %vector.body150 ]
  %i.gu = shl i64 %index151, 2
  %next.gep153 = getelementptr i8, ptr %.1158253.i, i64 %i.gu
  %next.gep154 = getelementptr i8, ptr %.1138255.i, i64 %index151
  %next.gep155 = getelementptr i8, ptr %i.ge, i64 %index151
  %next.gep156 = getelementptr i8, ptr %i.gf, i64 %index151
  %wide.load157 = load <4 x i32>, ptr %next.gep153, align 1, !alias.scope !70 ; 6 uses
  %i.gv = and <4 x i32> %wide.load157, splat (i32 2139095040)
  %i.gw = and <4 x i32> %wide.load157, splat (i32 8388607) ; 2 uses
  %i.gx = icmp ne <4 x i32> %i.gv, splat (i32 2139095040)
  %i.gy = bitcast <4 x i32> %wide.load157 to <4 x float>
  %i.gz = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gy)
  %i.ha = bitcast <4 x float> %i.gz to <4 x i32>  ; 2 uses
  %i.hb = and <4 x i32> %wide.load157, splat (i32 128)
  %i.hc = add nuw <4 x i32> %i.hb, %i.ha          ; 2 uses
  %i.hd = icmp ugt <4 x i32> %i.hc, splat (i32 2139095039)
  %i.he = select <4 x i1> %i.hd, <4 x i32> %i.ha, <4 x i32> %i.hc
  %i.hf = lshr <4 x i32> %i.he, splat (i32 8)
  %i.hg = icmp eq <4 x i32> %i.gw, zeroinitializer
  %.not170 = or <4 x i1> %i.gx, %i.hg
  %i.hh = lshr <4 x i32> %i.gw, splat (i32 8)     ; 2 uses
  %i.hi = icmp eq <4 x i32> %i.hh, zeroinitializer
  %i.hj = zext <4 x i1> %i.hi to <4 x i32>
  %i.hk = or <4 x i32> %i.hh, %i.hj
  %i.hl = or disjoint <4 x i32> %i.hk, splat (i32 8355840)
  %i.hm = and <4 x i32> %wide.load157, splat (i32 2147483647)
  %i.hn = icmp eq <4 x i32> %i.hm, splat (i32 2139095040)
  %predphi = select <4 x i1> %.not170, <4 x i32> %i.hf, <4 x i32> %i.hl
  %predphi158 = select <4 x i1> %i.hn, <4 x i32> splat (i32 8355840), <4 x i32> %predphi
  %i.ho = lshr <4 x i32> %wide.load157, splat (i32 8)
  %i.hp = and <4 x i32> %i.ho, splat (i32 8388608)
  %i.hq = or <4 x i32> %predphi158, %i.hp         ; 4 uses
  %i.hr = shufflevector <4 x i32> %vector.recur152, <4 x i32> %i.hq, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.hs = sub nsw <4 x i32> %i.hq, %i.hr          ; 3 uses
  %i.ht = lshr <4 x i32> %i.hs, splat (i32 16)
  %i.hu = trunc <4 x i32> %i.ht to <4 x i8>
  store <4 x i8> %i.hu, ptr %next.gep154, align 1, !tbaa !20, !alias.scope !71, !noalias !72
  %i.hv = lshr <4 x i32> %i.hs, splat (i32 8)
  %i.hw = trunc <4 x i32> %i.hv to <4 x i8>
  store <4 x i8> %i.hw, ptr %next.gep155, align 1, !tbaa !20, !alias.scope !73, !noalias !74
  %i.hx = trunc <4 x i32> %i.hs to <4 x i8>
  store <4 x i8> %i.hx, ptr %next.gep156, align 1, !tbaa !20, !alias.scope !75, !noalias !70
  %index.next159 = add nuw i64 %index151, 4       ; 2 uses
  %i.hy = icmp eq i64 %index.next159, %n.vec149
  br i1 %i.hy, label %middle.block160, label %vector.body150, !llvm.loop !43

middle.block160:                                  ; preds = %vector.body150
  %vector.recur.extract161 = extractelement <4 x i32> %i.hq, i64 3
  %cmp.n162 = icmp eq i64 %n.vec149, %i.gi
  br i1 %cmp.n162, label %.loopexit.i, label %.lr.ph.i.preheader174

.lr.ph.i.preheader174:                            ; preds = %vector.memcheck116, %.lr.ph.i.preheader, %middle.block160
  %.0154237.i.ph = phi i32 [ 0, %vector.memcheck116 ], [ 0, %.lr.ph.i.preheader ], [ %i.go, %middle.block160 ]
  %.0155236.i.ph = phi ptr [ %.1158253.i, %vector.memcheck116 ], [ %.1158253.i, %.lr.ph.i.preheader ], [ %i.gq, %middle.block160 ]
  %.0156235.i.ph = phi i32 [ 0, %vector.memcheck116 ], [ 0, %.lr.ph.i.preheader ], [ %vector.recur.extract161, %middle.block160 ]
  %.sroa.014.0234.i.ph = phi ptr [ %.1138255.i, %vector.memcheck116 ], [ %.1138255.i, %.lr.ph.i.preheader ], [ %i.gr, %middle.block160 ]
  %.sroa.5.0233.i.ph = phi ptr [ %i.ge, %vector.memcheck116 ], [ %i.ge, %.lr.ph.i.preheader ], [ %i.gs, %middle.block160 ]
  %.sroa.8.0232.i.ph = phi ptr [ %i.gf, %vector.memcheck116 ], [ %i.gf, %.lr.ph.i.preheader ], [ %i.gt, %middle.block160 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader174, %float_to_float24.exit.i
  %.0154237.i = phi i32 [ %i.ja, %float_to_float24.exit.i ], [ %.0154237.i.ph, %.lr.ph.i.preheader174 ]
  %.0155236.i = phi ptr [ %i.ir, %float_to_float24.exit.i ], [ %.0155236.i.ph, %.lr.ph.i.preheader174 ] ; 2 uses
  %.0156235.i = phi i32 [ %i.ip, %float_to_float24.exit.i ], [ %.0156235.i.ph, %.lr.ph.i.preheader174 ]
  %.sroa.014.0234.i = phi ptr [ %i.iu, %float_to_float24.exit.i ], [ %.sroa.014.0234.i.ph, %.lr.ph.i.preheader174 ] ; 2 uses
  %.sroa.5.0233.i = phi ptr [ %i.ix, %float_to_float24.exit.i ], [ %.sroa.5.0233.i.ph, %.lr.ph.i.preheader174 ] ; 2 uses
  %.sroa.8.0232.i = phi ptr [ %i.iz, %float_to_float24.exit.i ], [ %.sroa.8.0232.i.ph, %.lr.ph.i.preheader174 ] ; 2 uses
  %.0155.val.i = load i32, ptr %.0155236.i, align 1 ; 5 uses
  %i.hz = and i32 %.0155.val.i, 2139095040
  %i.ia = and i32 %.0155.val.i, 8388607           ; 2 uses
  %i.ib = icmp eq i32 %i.hz, 2139095040
  br i1 %i.ib, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %i.ia, 0
  br i1 %.not.i.i, label %float_to_float24.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ic = lshr i32 %i.ia, 8                       ; 2 uses
  %i.id = icmp eq i32 %i.ic, 0
  %i.ie = zext i1 %i.id to i32
  %i.if = or i32 %i.ic, %i.ie
  %i.ig = or disjoint i32 %i.if, 8355840
  br label %float_to_float24.exit.i

bb.o:                                             ; preds = %.lr.ph.i
  %i.ih = bitcast i32 %.0155.val.i to float
  %i.ii = tail call float @llvm.fabs.f32(float %i.ih)
  %i.ij = bitcast float %i.ii to i32              ; 2 uses
  %i.ik = and i32 %.0155.val.i, 128
  %i.il = add nuw i32 %i.ik, %i.ij                ; 2 uses
  %i.im = icmp ugt i32 %i.il, 2139095039
  %spec.select.v.i.i = select i1 %i.im, i32 %i.ij, i32 %i.il
  %spec.select.i.i = lshr i32 %spec.select.v.i.i, 8
  br label %float_to_float24.exit.i

float_to_float24.exit.i:                          ; preds = %bb.o, %bb.n, %bb.m
  %.0.i.i = phi i32 [ %i.ig, %bb.n ], [ %spec.select.i.i, %bb.o ], [ 8355840, %bb.m ]
  %i.in = lshr i32 %.0155.val.i, 8
  %i.io = and i32 %i.in, 8388608
  %i.ip = or i32 %.0.i.i, %i.io                   ; 2 uses
  %i.iq = sub nsw i32 %i.ip, %.0156235.i          ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.0155236.i, i64 4
  %i.is = lshr i32 %i.iq, 16
  %i.it = trunc i32 %i.is to i8
  %i.iu = getelementptr inbounds nuw i8, ptr %.sroa.014.0234.i, i64 1
  store i8 %i.it, ptr %.sroa.014.0234.i, align 1, !tbaa !20
  %i.iv = lshr i32 %i.iq, 8
  %i.iw = trunc i32 %i.iv to i8
  %i.ix = getelementptr inbounds nuw i8, ptr %.sroa.5.0233.i, i64 1
  store i8 %i.iw, ptr %.sroa.5.0233.i, align 1, !tbaa !20
  %i.iy = trunc i32 %i.iq to i8
  %i.iz = getelementptr inbounds nuw i8, ptr %.sroa.8.0232.i, i64 1
  store i8 %i.iy, ptr %.sroa.8.0232.i, align 1, !tbaa !20
  %i.ja = add nuw nsw i32 %.0154237.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ja, %i.w
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i, !llvm.loop !44

.loopexit.i:                                      ; preds = %float_to_float24.exit.i, %.lr.ph243.i.prol.loopexit, %.lr.ph243.i, %.lr.ph251.i.prol.loopexit, %.lr.ph251.i, %middle.block160, %middle.block108, %middle.block, %bb.l, %bb.j, %bb.h, %bb.e, %.lr.ph256.i
  %.6163.i = phi ptr [ %.1158253.i, %bb.e ], [ %.1158253.i, %.lr.ph256.i ], [ %i.dk, %bb.j ], [ %i.ak, %bb.h ], [ %i.gd, %bb.l ], [ %i.dk, %middle.block108 ], [ %i.ak, %middle.block ], [ %i.gd, %middle.block160 ], [ %i.dk, %.lr.ph243.i.prol.loopexit ], [ %i.ak, %.lr.ph251.i.prol.loopexit ], [ %i.ak, %.lr.ph251.i ], [ %i.dk, %.lr.ph243.i ], [ %i.gd, %float_to_float24.exit.i ] ; 2 uses
  %.6151.i = phi i64 [ %.1146254.i, %bb.e ], [ %.1146254.i, %.lr.ph256.i ], [ %i.di, %bb.j ], [ %i.ai, %bb.h ], [ %i.ga, %bb.l ], [ %i.di, %middle.block108 ], [ %i.ai, %middle.block ], [ %i.ga, %middle.block160 ], [ %i.di, %.lr.ph243.i.prol.loopexit ], [ %i.ai, %.lr.ph251.i.prol.loopexit ], [ %i.ai, %.lr.ph251.i ], [ %i.di, %.lr.ph243.i ], [ %i.ga, %float_to_float24.exit.i ] ; 2 uses
  %.6143.i = phi ptr [ %.1138255.i, %bb.e ], [ %.1138255.i, %.lr.ph256.i ], [ %i.dm, %bb.j ], [ %i.ao, %bb.h ], [ %i.gg, %bb.l ], [ %i.dm, %middle.block108 ], [ %i.ao, %middle.block ], [ %i.gg, %middle.block160 ], [ %i.dm, %.lr.ph243.i.prol.loopexit ], [ %i.ao, %.lr.ph251.i.prol.loopexit ], [ %i.ao, %.lr.ph251.i ], [ %i.dm, %.lr.ph243.i ], [ %i.gg, %float_to_float24.exit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jb = load i16, ptr %i.m, align 8, !tbaa !52  ; 2 uses
  %i.jc = sext i16 %i.jb to i64
  %i.jd = icmp slt i64 %indvars.iv.next.i, %i.jc
  br i1 %i.jd, label %.lr.ph256.i, label %._crit_edge.loopexit.i, !llvm.loop !45

._crit_edge.loopexit.i:                           ; preds = %.loopexit.i
  %.pre272.i = load i32, ptr %i.j, align 4, !tbaa !51
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.c
  %i.je = phi i32 [ %i.o, %bb.c ], [ %.pre272.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.jf = phi i16 [ %i.p, %bb.c ], [ %i.jb, %._crit_edge.loopexit.i ]
  %.1158.lcssa.i = phi ptr [ %.0157261.i, %bb.c ], [ %.6163.i, %._crit_edge.loopexit.i ]
  %.1146.lcssa.i = phi i64 [ %.0145262.i, %bb.c ], [ %.6151.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.1138.lcssa.i = phi ptr [ %.0137263.i, %bb.c ], [ %.6143.i, %._crit_edge.loopexit.i ]
  %i.jg = add nuw nsw i32 %.0168260.i, 1          ; 2 uses
  %.not187.i = icmp slt i32 %i.jg, %i.je
  br i1 %.not187.i, label %bb.c, label %.thread222.loopexit.i, !llvm.loop !46

.thread222.loopexit.i:                            ; preds = %._crit_edge.i
  %.pre273.i = load ptr, ptr %i.b, align 8, !tbaa !49
  br label %.thread222.i

.thread222.i:                                     ; preds = %.thread222.loopexit.i, %bb.b
  %i.jh = phi ptr [ %i.g, %bb.b ], [ %.pre273.i, %.thread222.loopexit.i ]
  %.0145.lcssa.i = phi i64 [ 0, %bb.b ], [ %.1146.lcssa.i, %.thread222.loopexit.i ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !76
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !77
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !78
  %i.jo = call i32 @exr_compress_buffer(ptr noundef %i.jj, i32 noundef -1, ptr noundef %i.jh, i64 noundef %.0145.lcssa.i, ptr noundef %i.jl, i64 noundef %i.jn, ptr noundef nonnull %i.a) #5 ; 2 uses
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.p, label %apply_pxr24_impl.exit

bb.p:                                             ; preds = %.thread222.i
  %i.jq = load i64, ptr %i.a, align 8, !tbaa !22  ; 2 uses
  %i.jr = load i64, ptr %i.d, align 8, !tbaa !48  ; 2 uses
  %i.js = icmp ugt i64 %i.jq, %i.jr
  br i1 %i.js, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.jt = load ptr, ptr %i.jk, align 8, !tbaa !77
  %i.ju = load ptr, ptr %i.h, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jt, ptr align 1 %i.ju, i64 %i.jr, i1 false)
  %i.jv = load i64, ptr %i.d, align 8, !tbaa !48
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.jw = phi i64 [ %i.jv, %bb.q ], [ %i.jq, %bb.p ]
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.jw, ptr %i.jx, align 8, !tbaa !79
  br label %apply_pxr24_impl.exit

apply_pxr24_impl.exit:                            ; preds = %bb.f, %bb.g, %bb.i, %bb.k, %.thread222.i, %bb.r
  %.9.i = phi i32 [ %i.jo, %.thread222.i ], [ 0, %bb.r ], [ 1, %bb.k ], [ 1, %bb.i ], [ 1, %bb.g ], [ 3, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %apply_pxr24_impl.exit
end_hunk_0
