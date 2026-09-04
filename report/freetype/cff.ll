Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/freetype/original/cff?download=true
inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cff_parse_cid_ros:bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 161, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @cff_parse_maxstack(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !250
  %.val = load ptr, ptr %i.d, align 8, !tbaa !127
  %i.e = tail call fastcc i64 @cff_parse_num(ptr noundef nonnull %0, ptr %.val) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 312
  store i32 513, ptr %i.f, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 3, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 161) i32 @cff_parse_vsindex(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !250
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !238  ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1049
  %i.h = load i8, ptr %i.g, align 1, !tbaa !283
  %.not12 = icmp eq i8 %i.h, 0
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.d, align 8, !tbaa !127
  %i.i = tail call fastcc i64 @cff_parse_num(ptr noundef nonnull %0, ptr %.val)
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 712
  store i32 %i.j, ptr %i.k, align 8, !tbaa !284
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi i32 [ 3, %bb.a ], [ 0, %bb.d ], [ 3, %bb.b ], [ 160, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @cff_parse_blend(ptr nofree noundef captures(none) %0) #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !248  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !238  ; 16 uses
  %.not26 = icmp eq ptr %i.e, null
  br i1 %.not26, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1048 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.h = load i32, ptr %i.g, align 8, !tbaa !284  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1096
  %i.j = load i32, ptr %i.i, align 8, !tbaa !239  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1104
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !240  ; 2 uses
  %i.m = load i8, ptr %i.f, align 8, !tbaa !260
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1064
  %i.o = load i32, ptr %i.n, align 8, !tbaa !261
  %.not10.i = icmp eq i32 %i.o, %i.h
  br i1 %.not10.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 1068
  %i.q = load i32, ptr %i.p, align 4, !tbaa !262
  %.not11.i = icmp eq i32 %i.q, %i.j
  br i1 %.not11.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not12.i = icmp eq i32 %i.j, 0
  br i1 %.not12.i, label %cff_blend_check_vector.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1072
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !263
  %i.t = zext i32 %i.j to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.l, ptr %i.s, i64 %i.u)
  %.not13.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not13.i, label %cff_blend_check_vector.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.d, %bb.c
  %i.v = tail call i32 @cff_blend_build_vector(ptr noundef nonnull %i.f, i32 noundef %i.h, i32 noundef %i.j, ptr noundef %i.l) ; 2 uses
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %cff_blend_check_vector.exit, label %bb.ac

cff_blend_check_vector.exit:                      ; preds = %bb.g, %bb.f, %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !252
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.val = load ptr, ptr %i.y, align 8, !tbaa !127
  %i.z = tail call fastcc i64 @cff_parse_num(ptr noundef nonnull %0, ptr %.val) ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !251
  %i.ad = icmp ult i32 %i.ac, %i.aa
  br i1 %i.ad, label %bb.ac, label %bb.i

bb.i:                                             ; preds = %cff_blend_check_vector.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 1056
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !233
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !67
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 1080 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !269
  %i.ak = mul i32 %i.aj, %i.aa                    ; 2 uses
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !252
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !250
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = lshr exact i64 %i.ar, 3
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  %i.au = icmp ugt i32 %i.ak, %i.at
  br i1 %i.au, label %cff_blend_doBlend.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = mul i32 %i.aa, 5                        ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 1128 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !259 ; 2 uses
  %i.ay = add i32 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 1132 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !531 ; 3 uses
  %i.bb = icmp ugt i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 1112 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !257 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 1120 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !258 ; 2 uses
  %i.bg = zext i32 %i.ba to i64
  %i.bh = add i32 %i.ba, %i.av
  %i.bi = zext i32 %i.bh to i64
  %i.bj = call ptr @ft_mem_qrealloc(ptr noundef %i.ah, i64 noundef 1, i64 noundef %i.bg, i64 noundef %i.bi, ptr noundef %i.bd, ptr noundef nonnull %i.a) #18 ; 4 uses
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !257
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !67  ; 2 uses
  %.not.i29 = icmp eq i32 %i.bk, 0
  br i1 %.not.i29, label %bb.l, label %cff_blend_doBlend.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.aw, align 8, !tbaa !259 ; 5 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  store ptr %i.bn, ptr %i.be, align 8, !tbaa !258
  %i.bo = load i32, ptr %i.az, align 4, !tbaa !531
  %i.bp = add i32 %i.bo, %i.av
  store i32 %i.bp, ptr %i.az, align 4, !tbaa !531
  %.not93.i = icmp eq ptr %i.bd, null
  %.not94.i = icmp eq ptr %i.bj, %i.bd
  %or.cond102.i = select i1 %.not93.i, i1 true, i1 %.not94.i
  br i1 %or.cond102.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = ptrtoint ptr %i.bd to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 5 uses
  %i.bt = load ptr, ptr %i.an, align 8, !tbaa !250 ; 8 uses
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !252 ; 3 uses
  %i.bv = icmp ult ptr %i.bt, %i.bu
  br i1 %i.bv, label %.lr.ph.i.preheader, label %.thread.i

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.bw = ptrtoaddr ptr %i.bu to i64
  %i.bx = ptrtoaddr ptr %i.bt to i64              ; 2 uses
  %1 = add i64 %i.bx, 8
  %2 = call i64 @llvm.umax.i64(i64 %i.bw, i64 %1)
  %i.by = xor i64 %i.bx, -1
  %i.bz = add i64 %2, %i.by                       ; 2 uses
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = add nuw nsw i64 %i.ca, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bz, 24
  br i1 %min.iters.check, label %.lr.ph.i.preheader68, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.cb, 4611686018427387900     ; 3 uses
  %i.cc = shl i64 %n.vec, 3
  %i.cd = getelementptr i8, ptr %i.bt, i64 %i.cc
  %broadcast.splatinsert = insertelement <2 x ptr> poison, ptr %i.bd, i64 0
  %broadcast.splat = shufflevector <2 x ptr> %broadcast.splatinsert, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert55 = insertelement <2 x ptr> poison, ptr %i.bf, i64 0
  %broadcast.splat56 = shufflevector <2 x ptr> %broadcast.splatinsert55, <2 x ptr> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue66, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue66 ] ; 2 uses
  %i.ce = shl i64 %index, 3                       ; 4 uses
  %next.gep = getelementptr i8, ptr %i.bt, i64 %i.ce ; 3 uses
  %i.cf = getelementptr i8, ptr %i.bt, i64 %i.ce
  %next.gep57 = getelementptr i8, ptr %i.cf, i64 8
  %i.cg = getelementptr i8, ptr %i.bt, i64 %i.ce
  %next.gep58 = getelementptr i8, ptr %i.cg, i64 16
  %i.ch = getelementptr i8, ptr %i.bt, i64 %i.ce
  %next.gep59 = getelementptr i8, ptr %i.ch, i64 24
  %i.ci = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !127 ; 4 uses
  %wide.load60 = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !127 ; 4 uses
  %i.cj = icmp uge <2 x ptr> %wide.load, %broadcast.splat
  %i.ck = icmp uge <2 x ptr> %wide.load60, %broadcast.splat
  %i.cl = icmp ult <2 x ptr> %wide.load, %broadcast.splat56
  %i.cm = icmp ult <2 x ptr> %wide.load60, %broadcast.splat56
  %i.cn = select <2 x i1> %i.cj, <2 x i1> %i.cl, <2 x i1> zeroinitializer ; 2 uses
  %i.co = select <2 x i1> %i.ck, <2 x i1> %i.cm, <2 x i1> zeroinitializer ; 2 uses
  %i.cp = extractelement <2 x i1> %i.cn, i64 0
  br i1 %i.cp, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.cq = extractelement <2 x ptr> %wide.load, i64 0
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 %i.bs
  store ptr %i.cr, ptr %next.gep, align 8, !tbaa !127
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cs = extractelement <2 x i1> %i.cn, i64 1
  br i1 %i.cs, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue
  %i.ct = extractelement <2 x ptr> %wide.load, i64 1
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.bs
  store ptr %i.cu, ptr %next.gep57, align 8, !tbaa !127
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue
  %i.cv = extractelement <2 x i1> %i.co, i64 0
  br i1 %i.cv, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %i.cw = extractelement <2 x ptr> %wide.load60, i64 0
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.bs
  store ptr %i.cx, ptr %next.gep58, align 8, !tbaa !127
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.cy = extractelement <2 x i1> %i.co, i64 1
  br i1 %i.cy, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  %i.cz = extractelement <2 x ptr> %wide.load60, i64 1
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.bs
  store ptr %i.da, ptr %next.gep59, align 8, !tbaa !127
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !527

middle.block:                                     ; preds = %pred.store.continue66
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %.thread.i, label %.lr.ph.i.preheader68

.lr.ph.i.preheader68:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.082103.i.ph = phi ptr [ %i.bt, %.lr.ph.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader68, %bb.o
  %.082103.i = phi ptr [ %i.df, %bb.o ], [ %.082103.i.ph, %.lr.ph.i.preheader68 ] ; 3 uses
  %i.dc = load ptr, ptr %.082103.i, align 8, !tbaa !127 ; 3 uses
  %.not95.i = icmp uge ptr %i.dc, %i.bd
  %i.dd = icmp ult ptr %i.dc, %i.bf
  %or.cond.i = select i1 %.not95.i, i1 %i.dd, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 %i.bs
  store ptr %i.de, ptr %.082103.i, align 8, !tbaa !127
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %i.df = getelementptr inbounds nuw i8, ptr %.082103.i, i64 8 ; 2 uses
  %i.dg = icmp ult ptr %i.df, %i.bu
  br i1 %i.dg, label %.lr.ph.i, label %.thread.i, !llvm.loop !528

.thread.i:                                        ; preds = %bb.o, %middle.block, %bb.m, %bb.l, %bb.j
  %i.dh = phi i32 [ %i.ax, %bb.j ], [ %i.bl, %bb.m ], [ %i.bl, %bb.l ], [ %i.bl, %middle.block ], [ %i.bl, %bb.o ]
  %i.di = add i32 %i.dh, %i.av
  store i32 %i.di, ptr %i.aw, align 8, !tbaa !259
  %i.dj = sub nuw i32 %i.at, %i.ak                ; 2 uses
  %i.dk = add i32 %i.dj, %i.aa                    ; 2 uses
  %.not114.i = icmp eq i32 %i.aa, 0
  br i1 %.not114.i, label %._crit_edge113.i, label %.lr.ph112.i

.lr.ph112.i:                                      ; preds = %.thread.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 1088
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 1120 ; 10 uses
  %wide.trip.count.i = and i64 %i.z, 4294967295
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %.lr.ph112.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph112.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.085110.i = phi i32 [ %i.dk, %.lr.ph112.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !270
  %i.dp = load ptr, ptr %i.an, align 8, !tbaa !250
  %i.dq = trunc nuw i64 %indvars.iv.i to i32
  %i.dr = add i32 %i.dj, %i.dq
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ds
  %.val96.i = load ptr, ptr %i.dt, align 8, !tbaa !127
  %i.du = call fastcc i64 @do_fixed(ptr noundef nonnull readonly %0, ptr readonly %.val96.i, i64 noundef 0) ; 2 uses
  %i.dv = load i32, ptr %i.ai, align 8, !tbaa !269 ; 2 uses
  %i.dw = icmp ugt i32 %i.dv, 1
  br i1 %i.dw, label %.lr.ph108.i, label %._crit_edge.i

.lr.ph108.i:                                      ; preds = %bb.p, %do_fixed.exit.i
  %i.dx = phi i32 [ %i.gl, %do_fixed.exit.i ], [ %i.dv, %bb.p ] ; 4 uses
  %.0107.i = phi i64 [ %i.gt, %do_fixed.exit.i ], [ %i.du, %bb.p ]
  %.pn106.i = phi ptr [ %.080.i, %do_fixed.exit.i ], [ %i.do, %bb.p ]
  %.083105.i = phi i32 [ %i.gu, %do_fixed.exit.i ], [ 1, %bb.p ]
  %.1104.i = phi i32 [ %i.dz, %do_fixed.exit.i ], [ %.085110.i, %bb.p ] ; 2 uses
  %.080.i = getelementptr inbounds nuw i8, ptr %.pn106.i, i64 4 ; 2 uses
  %i.dy = load ptr, ptr %i.an, align 8, !tbaa !250
  %i.dz = add i32 %.1104.i, 1                     ; 2 uses
  %i.ea = zext i32 %.1104.i to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ea
  %.val.i = load ptr, ptr %i.eb, align 8, !tbaa !127 ; 11 uses
  %i.ec = load i8, ptr %.val.i, align 1, !tbaa !130 ; 5 uses
  switch i8 %i.ec, label %bb.s [
    i8 30, label %bb.q
    i8 -1, label %bb.r
  ]

bb.q:                                             ; preds = %.lr.ph108.i
  %i.ed = load ptr, ptr %i.dm, align 8, !tbaa !281
  %i.ee = call fastcc i64 @cff_parse_real(ptr noundef nonnull readonly %.val.i, ptr noundef %i.ed, i64 noundef 0, ptr noundef null)
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !269
  br label %do_fixed.exit.i

bb.r:                                             ; preds = %.lr.ph108.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  %i.eg = load i32, ptr %i.ef, align 1
  %i.eh = call i32 @llvm.bswap.i32(i32 %i.eg)
  %i.ei = sext i32 %i.eh to i64
  br label %do_fixed.exit.i

bb.s:                                             ; preds = %.lr.ph108.i
  %i.ej = load ptr, ptr %i.dm, align 8, !tbaa !281 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 7 uses
  %i.el = zext i8 %i.ec to i32                    ; 3 uses
  switch i8 %i.ec, label %bb.v [
    i8 28, label %bb.t
    i8 29, label %bb.u
  ]

bb.t:                                             ; preds = %bb.s
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i, i64 3
  %i.en = icmp ule ptr %i.em, %i.ej
  %.not37.i.i.i = icmp ult ptr %i.ej, %i.ek
  %or.cond.i.i.i = select i1 %i.en, i1 true, i1 %.not37.i.i.i
  br i1 %or.cond.i.i.i, label %cff_parse_integer.exit.i.thread.i, label %cff_parse_integer.exit.i.thread.thread.i

bb.u:                                             ; preds = %bb.s
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.i, i64 5
  %i.ep = icmp ule ptr %i.eo, %i.ej
  %.not36.i.i.i = icmp ult ptr %i.ej, %i.ek
  %or.cond38.i.i.i = select i1 %i.ep, i1 true, i1 %.not36.i.i.i
  br i1 %or.cond38.i.i.i, label %cff_parse_integer.exit.i.i, label %cff_parse_integer.exit.i.thread.thread.i

bb.v:                                             ; preds = %bb.s
  %i.eq = icmp ult i8 %i.ec, -9
  br i1 %i.eq, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.er = add nsw i32 %i.el, -139
  %i.es = sext i32 %i.er to i64
  br label %cff_parse_integer.exit.i.thread.thread.i

bb.x:                                             ; preds = %bb.v
  %i.et = icmp samesign ult i8 %i.ec, -5
end_hunk_0
begin_hunk_1_@cff_encoding_load:bb.a
  %.not128 = icmp eq i16 %i.fi, 0
  %i.fj = zext i16 %i.fi to i32
  %.not.i144 = icmp ult i32 %i.fd, %i.fj
  %or.cond222 = or i1 %.not128, %.not.i144
  br i1 %or.cond222, label %cff_charset_cid_to_gindex.exit.thread, label %cff_charset_cid_to_gindex.exit

cff_charset_cid_to_gindex.exit:                   ; preds = %bb.ai
  %i.fk = load ptr, ptr %i.ff, align 8, !tbaa !146
  %i.fl = zext i16 %i.fi to i64
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !66 ; 2 uses
  %.not129 = icmp eq i16 %i.fn, 0
  br i1 %.not129, label %cff_charset_cid_to_gindex.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %cff_charset_cid_to_gindex.exit
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !66
  %i.fp = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  store i32 %i.fq, ptr %i.dv, align 8, !tbaa !135
  br label %bb.ak

cff_charset_cid_to_gindex.exit.thread:            ; preds = %bb.ai, %cff_charset_cid_to_gindex.exit
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv
  store i16 0, ptr %i.fr, align 2, !tbaa !66
  store i16 0, ptr %i.fh, align 2, !tbaa !66
  %.pre199 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.ak

bb.ak:                                            ; preds = %cff_charset_cid_to_gindex.exit.thread, %bb.aj
  %indvars.iv.next.pre-phi = phi i64 [ %.pre199, %cff_charset_cid_to_gindex.exit.thread ], [ %i.fp, %bb.aj ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, 256
  br i1 %exitcond.not, label %.loopexit151, label %bb.ai, !llvm.loop !629

.loopexit151:                                     ; preds = %bb.ak, %.lr.ph162, %bb.n, %.loopexit, %bb.y, %bb.x, %bb.f, %bb.a, %.thread146..loopexit151_crit_edge, %cff_charset_compute_cids.exit.thread, %bb.g, %bb.w, %bb.c, %bb.d, %bb.e
  %i.fs = phi i32 [ %.pre, %.thread146..loopexit151_crit_edge ], [ 3, %bb.f ], [ 0, %.loopexit ], [ %i.bi, %.lr.ph162 ], [ %i.es, %cff_charset_compute_cids.exit.thread ], [ %i.v, %bb.g ], [ %i.de, %bb.w ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ 3, %bb.a ], [ %i.dj, %bb.y ], [ %i.dh, %bb.x ], [ %i.bk, %bb.n ], [ 0, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %i.fs
}

declare hidden i32 @FT_Stream_ReadULong(ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc void @cff_vstore_done(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !273  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit25, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !272
  %.not29 = icmp eq i32 %i.d, 0
  br i1 %.not29, label %.loopexit25, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24, %.lr.ph
  %i.e = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %.preheader24 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader24 ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !276
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.g) #18
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !273  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store ptr null, ptr %i.i, align 8, !tbaa !276
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !272
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %.loopexit25, !llvm.loop !630

.loopexit25:                                      ; preds = %.lr.ph, %.preheader24, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.b, %.preheader24 ], [ %i.h, %.lr.ph ]
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.m) #18
  store ptr null, ptr %i.a, align 8, !tbaa !273
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !266  ; 3 uses
  %.not23 = icmp eq ptr %i.o, null
  br i1 %.not23, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit25
  %i.p = load i32, ptr %0, align 8, !tbaa !265
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph28

.lr.ph28:                                         ; preds = %.preheader, %.lr.ph28
  %i.q = phi ptr [ %i.u, %.lr.ph28 ], [ %i.o, %.preheader ]
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.lr.ph28 ], [ 0, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv32
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !271
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.t) #18
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !266  ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv32
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !271
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.x = load i32, ptr %0, align 8, !tbaa !265
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next33, %i.y
  br i1 %i.z, label %.lr.ph28, label %.loopexit, !llvm.loop !631

.loopexit:                                        ; preds = %.lr.ph28, %.preheader, %.loopexit25
  %i.aa = phi ptr [ null, %.loopexit25 ], [ %i.o, %.preheader ], [ %i.u, %.lr.ph28 ]
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.aa) #18
  store ptr null, ptr %i.n, align 8, !tbaa !266
  ret void
}

declare hidden zeroext i16 @FT_Stream_GetUShort(ptr noundef) local_unnamed_addr #9

declare hidden ptr @ft_mem_strdup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nounwind uwtable
define internal fastcc void @cff_subfont_done(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1136 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !139  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %cff_index_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !141
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1192 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !142
  %.not10.i = icmp eq ptr %i.f, null
  br i1 %.not10.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1184
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !143
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.h) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  br label %cff_index_done.exit

cff_index_done.exit:                              ; preds = %bb.b, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1200 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !632
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.j) #18
  store ptr null, ptr %i.i, align 8, !tbaa !632
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1072 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !633
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.l) #18
  store ptr null, ptr %i.k, align 8, !tbaa !633
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1088 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !634
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.n) #18
  store ptr null, ptr %i.m, align 8, !tbaa !634
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1112 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !257
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.p) #18
  store ptr null, ptr %i.o, align 8, !tbaa !257
  br label %bb.f

bb.f:                                             ; preds = %cff_index_done.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.umax.v8i16(<8 x i16>, <8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v8i16(<8 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i16> @llvm.umax.v4i16(<4 x i16>, <4 x i16>) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.umax.v4i16(<4 x i16>) #15

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nounwind }
attributes #19 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !68}
!3 = distinct !{!3, !68}
!4 = distinct !{!4, !68}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS11FT_FaceRec_", !13, i64 0}
!15 = !{!"short", !9, i64 0}
!16 = !{!"FT_CharMapRec_", !14, i64 0, !10, i64 8, !15, i64 12, !15, i64 14}
!17 = !{!"p1 _ZTS17FT_CMap_ClassRec_", !13, i64 0}
!18 = !{!"FT_CMapRec_", !16, i64 0, !17, i64 16}
!19 = !{!18, !14, i64 0}
!20 = !{!"long", !9, i64 0}
!21 = !{!"p1 omnipotent char", !13, i64 0}
!22 = !{!"p1 _ZTS15FT_Bitmap_Size_", !13, i64 0}
!23 = !{!"any p2 pointer", !13, i64 0}
!24 = !{!"p2 _ZTS14FT_CharMapRec_", !23, i64 0}
!25 = !{!"FT_Generic_", !13, i64 0, !13, i64 8}
!26 = !{!"FT_BBox_", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!27 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !13, i64 0}
!28 = !{!"p1 _ZTS11FT_SizeRec_", !13, i64 0}
!29 = !{!"p1 _ZTS14FT_CharMapRec_", !13, i64 0}
!30 = !{!"p1 _ZTS13FT_DriverRec_", !13, i64 0}
!31 = !{!"p1 _ZTS13FT_MemoryRec_", !13, i64 0}
!32 = !{!"p1 _ZTS13FT_StreamRec_", !13, i64 0}
!33 = !{!"p1 _ZTS15FT_ListNodeRec_", !13, i64 0}
!34 = !{!"FT_ListRec_", !33, i64 0, !33, i64 8}
!35 = !{!"p1 _ZTS20FT_Face_InternalRec_", !13, i64 0}
!36 = !{!"FT_FaceRec_", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !21, i64 40, !21, i64 48, !10, i64 56, !22, i64 64, !10, i64 72, !24, i64 80, !25, i64 88, !26, i64 104, !15, i64 136, !15, i64 138, !15, i64 140, !15, i64 142, !15, i64 144, !15, i64 146, !15, i64 148, !15, i64 150, !27, i64 152, !28, i64 160, !29, i64 168, !30, i64 176, !31, i64 184, !32, i64 192, !34, i64 200, !25, i64 216, !13, i64 232, !35, i64 240}
!37 = !{!"p1 long", !13, i64 0}
!38 = !{!"TTC_HeaderRec_", !20, i64 0, !20, i64 8, !20, i64 16, !37, i64 24}
!39 = !{!"p1 _ZTS12TT_TableRec_", !13, i64 0}
!40 = !{!"TT_Header_", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !15, i64 32, !15, i64 34, !9, i64 40, !9, i64 56, !15, i64 72, !15, i64 74, !15, i64 76, !15, i64 78, !15, i64 80, !15, i64 82, !15, i64 84, !15, i64 86, !15, i64 88}
!41 = !{!"TT_HoriHeader_", !20, i64 0, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !9, i64 28, !15, i64 36, !15, i64 38, !13, i64 40, !13, i64 48}
!42 = !{!"TT_MaxProfile_", !20, i64 0, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !15, i64 28, !15, i64 30, !15, i64 32, !15, i64 34}
!43 = !{!"TT_VertHeader_", !20, i64 0, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !9, i64 28, !15, i64 36, !15, i64 38, !13, i64 40, !13, i64 48}
!44 = !{!"p1 _ZTS11TT_NameRec_", !13, i64 0}
!45 = !{!"p1 _ZTS14TT_LangTagRec_", !13, i64 0}
!46 = !{!"TT_NameTableRec_", !15, i64 0, !10, i64 4, !10, i64 8, !44, i64 16, !10, i64 24, !45, i64 32, !32, i64 40}
!47 = !{!"TT_OS2_", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !15, i64 28, !15, i64 30, !9, i64 32, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !9, i64 80, !15, i64 84, !15, i64 86, !15, i64 88, !15, i64 90, !15, i64 92, !15, i64 94, !15, i64 96, !15, i64 98, !20, i64 104, !20, i64 112, !15, i64 120, !15, i64 122, !15, i64 124, !15, i64 126, !15, i64 128, !15, i64 130, !15, i64 132}
!48 = !{!"TT_Postscript_", !20, i64 0, !20, i64 8, !15, i64 16, !15, i64 18, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56}
!49 = !{!"p1 _ZTS16TT_GaspRangeRec_", !13, i64 0}
!50 = !{!"TT_Gasp_", !15, i64 0, !15, i64 2, !49, i64 8}
!51 = !{!"TT_PCLT_", !20, i64 0, !20, i64 8, !15, i64 16, !15, i64 18, !15, i64 20, !15, i64 22, !15, i64 24, !15, i64 26, !9, i64 28, !9, i64 44, !9, i64 52, !9, i64 58, !9, i64 59, !9, i64 60, !9, i64 61}
!52 = !{!"p1 _ZTS17TT_SBit_ScaleRec_", !13, i64 0}
!53 = !{!"p1 short", !13, i64 0}
!54 = !{!"p2 omnipotent char", !23, i64 0}
!55 = !{!"TT_Post_NamesRec_", !9, i64 0, !15, i64 2, !15, i64 4, !53, i64 8, !54, i64 16}
!56 = !{!"FT_Palette_Data_", !15, i64 0, !53, i64 8, !53, i64 16, !15, i64 24, !53, i64 32}
!57 = !{!"p1 _ZTS9FT_Color_", !13, i64 0}
!58 = !{!"FT_Color_", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3}
!59 = !{!"p1 int", !13, i64 0}
!60 = !{!"p1 _ZTS12GX_BlendRec_", !13, i64 0}
!61 = !{!"TT_BDFRec_", !21, i64 0, !21, i64 8, !21, i64 16, !20, i64 24, !10, i64 32, !9, i64 36}
!62 = !{!"TT_FaceRec_", !36, i64 0, !38, i64 248, !20, i64 280, !15, i64 288, !39, i64 296, !40, i64 304, !41, i64 400, !42, i64 456, !9, i64 496, !43, i64 504, !15, i64 560, !46, i64 568, !47, i64 616, !48, i64 752, !21, i64 816, !20, i64 824, !13, i64 832, !13, i64 840, !13, i64 848, !13, i64 856, !13, i64 864, !13, i64 872, !13, i64 880, !13, i64 888, !13, i64 896, !13, i64 904, !13, i64 912, !13, i64 920, !50, i64 928, !51, i64 944, !20, i64 1008, !52, i64 1016, !55, i64 1024, !56, i64 1048, !15, i64 1088, !57, i64 1096, !9, i64 1104, !58, i64 1105, !20, i64 1112, !21, i64 1120, !20, i64 1128, !21, i64 1136, !20, i64 1144, !59, i64 1152, !25, i64 1160, !21, i64 1176, !20, i64 1184, !20, i64 1192, !9, i64 1200, !9, i64 1201, !60, i64 1208, !10, i64 1216, !21, i64 1224, !10, i64 1232, !10, i64 1236, !21, i64 1240, !20, i64 1248, !20, i64 1256, !20, i64 1264, !21, i64 1272, !21, i64 1280, !20, i64 1288, !10, i64 1296, !20, i64 1304, !54, i64 1312, !21, i64 1320, !20, i64 1328, !10, i64 1336, !10, i64 1340, !59, i64 1344, !21, i64 1352, !20, i64 1360, !10, i64 1368, !10, i64 1372, !10, i64 1376, !61, i64 1384, !20, i64 1424, !20, i64 1432, !20, i64 1440, !20, i64 1448, !13, i64 1456, !13, i64 1464, !13, i64 1472}
!63 = !{!62, !13, i64 1160}
!64 = !{!"CFF_CMapStdRec_", !18, i64 0, !53, i64 24}
!65 = !{!64, !53, i64 24}
!66 = !{!15, !15, i64 0}
!67 = !{!10, !10, i64 0}
!68 = !{!"llvm.loop.mustprogress"}
!69 = !{!36, !31, i64 184}
!70 = !{!"CFF_CharsetRec_", !10, i64 0, !20, i64 8, !53, i64 16, !53, i64 24, !10, i64 32, !10, i64 36}
!71 = !{!70, !53, i64 16}
!72 = !{!"p1 _ZTS14FT_LibraryRec_", !13, i64 0}
!73 = !{!"CFF_IndexRec_", !32, i64 0, !20, i64 8, !10, i64 16, !10, i64 20, !9, i64 24, !20, i64 32, !20, i64 40, !37, i64 48, !21, i64 56}
!74 = !{!"CFF_EncodingRec_", !10, i64 0, !20, i64 8, !10, i64 16, !9, i64 20, !9, i64 532}
!75 = !{!"FT_Matrix_", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24}
!76 = !{!"FT_Vector_", !20, i64 0, !20, i64 8}
!77 = !{!"CFF_FontRecDictRec_", !10, i64 0, !10, i64 4, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !9, i64 24, !20, i64 32, !15, i64 40, !15, i64 42, !10, i64 44, !10, i64 48, !75, i64 56, !9, i64 88, !20, i64 96, !76, i64 104, !20, i64 120, !26, i64 128, !20, i64 160, !20, i64 168, !20, i64 176, !20, i64 184, !20, i64 192, !20, i64 200, !20, i64 208, !10, i64 216, !10, i64 220, !10, i64 224, !20, i64 232, !20, i64 240, !20, i64 248, !20, i64 256, !20, i64 264, !20, i64 272, !20, i64 280, !20, i64 288, !10, i64 296, !15, i64 300, !15, i64 302, !20, i64 304, !10, i64 312}
!78 = !{!"p1 _ZTS15CFF_SubFontRec_", !13, i64 0}
!79 = !{!"CFF_PrivateRec_", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 8, !9, i64 120, !9, i64 200, !9, i64 312, !20, i64 392, !20, i64 400, !20, i64 408, !20, i64 416, !20, i64 424, !9, i64 432, !9, i64 433, !9, i64 440, !9, i64 544, !9, i64 648, !20, i64 656, !10, i64 664, !10, i64 668, !20, i64 672, !20, i64 680, !20, i64 688, !20, i64 696, !20, i64 704, !10, i64 712, !78, i64 720}
!80 = !{!"p1 _ZTS12CFF_FontRec_", !13, i64 0}
!81 = !{!"CFF_BlendRec_", !9, i64 0, !9, i64 1, !80, i64 8, !10, i64 16, !10, i64 20, !37, i64 24, !10, i64 32, !59, i64 40}
!82 = !{!"CFF_SubFontRec_", !77, i64 0, !79, i64 320, !81, i64 1048, !10, i64 1096, !37, i64 1104, !21, i64 1112, !21, i64 1120, !10, i64 1128, !10, i64 1132, !73, i64 1136, !54, i64 1200, !10, i64 1208}
!83 = !{!"CFF_FDSelectRec_", !9, i64 0, !10, i64 4, !21, i64 8, !10, i64 16, !10, i64 20, !10, i64 24, !9, i64 28}
!84 = !{!"p1 _ZTS19PSHinter_Interface_", !13, i64 0}
!85 = !{!"p1 _ZTS22FT_Service_PsCMapsRec_", !13, i64 0}
!86 = !{!"p1 _ZTS15PS_FontInfoRec_", !13, i64 0}
!87 = !{!"p1 _ZTS12CFF_VarData_", !13, i64 0}
!88 = !{!"p1 _ZTS14CFF_VarRegion_", !13, i64 0}
!89 = !{!"CFF_VStoreRec_", !10, i64 0, !87, i64 8, !15, i64 16, !10, i64 20, !88, i64 24}
!90 = !{!"p1 _ZTS16PS_FontExtraRec_", !13, i64 0}
!91 = !{!"CFF_FontRec_", !72, i64 0, !32, i64 8, !31, i64 16, !20, i64 24, !10, i64 32, !10, i64 36, !9, i64 40, !9, i64 41, !9, i64 42, !10, i64 44, !9, i64 48, !73, i64 56, !73, i64 120, !73, i64 184, !74, i64 248, !70, i64 1296, !73, i64 1336, !73, i64 1400, !73, i64 1464, !73, i64 1528, !21, i64 1592, !54, i64 1600, !10, i64 1608, !54, i64 1616, !21, i64 1624, !20, i64 1632, !82, i64 1640, !10, i64 2856, !9, i64 2864, !83, i64 4912, !84, i64 4944, !85, i64 4952, !13, i64 4960, !86, i64 4968, !21, i64 4976, !21, i64 4984, !25, i64 4992, !89, i64 5008, !90, i64 5040}
!92 = !{!91, !85, i64 4952}
!93 = !{!"FT_Service_PsCMapsRec_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !53, i64 48, !53, i64 56}
!94 = !{!91, !10, i64 36}
!95 = !{!"p1 _ZTS16FT_Module_Class_", !13, i64 0}
!96 = !{!"FT_ModuleRec_", !95, i64 0, !72, i64 8, !31, i64 16}
!97 = !{!"p1 _ZTS19FT_Driver_ClassRec_", !13, i64 0}
!98 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !13, i64 0}
!99 = !{!"FT_DriverRec_", !96, i64 0, !97, i64 24, !34, i64 32, !98, i64 48}
!100 = !{!"PS_DriverRec_", !99, i64 0, !10, i64 56, !9, i64 60, !9, i64 64, !10, i64 96}
!101 = !{!100, !10, i64 96}
!102 = !{!36, !30, i64 176}
!103 = !{!99, !72, i64 8}
!104 = !{!62, !13, i64 920}
!105 = !{!"SFNT_Interface_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376}
!106 = !{!62, !9, i64 1200}
!107 = !{!91, !10, i64 32}
!108 = !{!91, !84, i64 4944}
!109 = !{!36, !20, i64 8}
!110 = !{!77, !10, i64 220}
!111 = !{!36, !20, i64 16}
!112 = !{!77, !9, i64 88}
!113 = !{!75, !20, i64 24}
!114 = !{!75, !20, i64 16}
!115 = !{!76, !20, i64 8}
!116 = !{!20, !20, i64 0}
!117 = !{!75, !20, i64 0}
!118 = !{!75, !20, i64 8}
!119 = !{!76, !20, i64 0}
!120 = !{!91, !10, i64 2856}
!121 = !{!78, !78, i64 0}
!122 = !{i64 0, i64 8, !116, i64 8, i64 8, !116, i64 16, i64 8, !116, i64 24, i64 8, !116}
!123 = !{!91, !10, i64 1356}
!124 = !{!77, !10, i64 16}
!125 = !{!91, !10, i64 1608}
!126 = !{!91, !54, i64 1616}
!127 = !{!21, !21, i64 0}
!128 = !{!93, !13, i64 40}
!129 = !{!77, !10, i64 12}
!130 = !{!9, !9, i64 0}
!131 = !{!77, !10, i64 296}
!132 = !{!77, !9, i64 24}
!133 = !{!77, !20, i64 32}
!134 = !{!77, !10, i64 20}
!135 = !{!74, !10, i64 16}
!136 = !{!74, !20, i64 8}
!137 = !{!62, !13, i64 880}
!138 = !{!91, !31, i64 16}
!139 = !{!73, !32, i64 0}
!140 = !{!"FT_StreamRec_", !21, i64 0, !20, i64 8, !20, i64 16, !9, i64 24, !9, i64 32, !13, i64 40, !13, i64 48, !31, i64 56, !21, i64 64, !21, i64 72}
!141 = !{!140, !31, i64 56}
!142 = !{!73, !21, i64 56}
!143 = !{!73, !37, i64 48}
!144 = !{!74, !10, i64 0}
!145 = !{!91, !32, i64 8}
!146 = !{!70, !53, i64 24}
!147 = !{!70, !10, i64 32}
!148 = !{!70, !10, i64 0}
!149 = !{!83, !21, i64 8}
!150 = !{!83, !10, i64 16}
!151 = !{!83, !9, i64 0}
!152 = !{!91, !86, i64 4968}
!153 = !{!91, !21, i64 1592}
!154 = !{!91, !90, i64 5040}
!155 = !{!62, !13, i64 896}
!156 = !{!"FT_Service_MultiMastersRec_", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144}
!157 = !{!156, !13, i64 144}
!158 = !{!"FT_Size_Metrics_", !15, i64 0, !15, i64 2, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48}
!159 = !{!"p1 _ZTS20FT_Size_InternalRec_", !13, i64 0}
end_hunk_1
