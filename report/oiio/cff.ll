Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/cff?download=true
inline.NumInlined: 81
inline.NumDeleted: 23
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0_@cff_parse_cid_ros:bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 161, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 4) i32 @cff_parse_maxstack(ptr nofree noundef readonly captures(none) %0) #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !462  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !464
  %.val = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.e = tail call fastcc i64 @cff_parse_num(ptr noundef nonnull %0, ptr %.val) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 320
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !462  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !464
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 720
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !451  ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1057
  %i.h = load i8, ptr %i.g, align 1, !tbaa !521
  %.not12 = icmp eq i8 %i.h, 0
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.d, align 8, !tbaa !160
  %i.i = tail call fastcc i64 @cff_parse_num(ptr noundef nonnull %0, ptr %.val)
  %i.j = trunc i64 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 712
  store i32 %i.j, ptr %i.k, align 8, !tbaa !522
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !462  ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !451  ; 16 uses
  %.not26 = icmp eq ptr %i.e, null
  br i1 %.not26, label %bb.ac, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 1056 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 712
  %i.h = load i32, ptr %i.g, align 8, !tbaa !522  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 1104
  %i.j = load i32, ptr %i.i, align 8, !tbaa !452  ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 1112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !453  ; 2 uses
  %i.m = load i8, ptr %i.f, align 8, !tbaa !475
  %.not.i = icmp eq i8 %i.m, 0
  br i1 %.not.i, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 1072
  %i.o = load i32, ptr %i.n, align 8, !tbaa !476
  %.not10.i = icmp eq i32 %i.o, %i.h
  br i1 %.not10.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 1076
  %i.q = load i32, ptr %i.p, align 4, !tbaa !477
  %.not11.i = icmp eq i32 %i.q, %i.j
  br i1 %.not11.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not12.i = icmp eq i32 %i.j, 0
  br i1 %.not12.i, label %cff_blend_check_vector.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 1080
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !478
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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !466
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.val = load ptr, ptr %i.y, align 8, !tbaa !160
  %i.z = tail call fastcc i64 @cff_parse_num(ptr noundef nonnull %0, ptr %.val) ; 2 uses
  %i.aa = trunc i64 %i.z to i32                   ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !465
  %i.ad = icmp ult i32 %i.ac, %i.aa
  br i1 %i.ad, label %bb.ac, label %bb.i

bb.i:                                             ; preds = %cff_blend_check_vector.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 1064
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !442
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store i32 0, ptr %i.a, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 1088 ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !485
  %i.ak = mul i32 %i.aj, %i.aa                    ; 2 uses
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !466
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !464
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = lshr exact i64 %i.ar, 3
  %i.at = trunc i64 %i.as to i32                  ; 2 uses
  %i.au = icmp ugt i32 %i.ak, %i.at
  br i1 %i.au, label %cff_blend_doBlend.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = mul i32 %i.aa, 5                        ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 1136 ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !474 ; 2 uses
  %i.ay = add i32 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 1140 ; 3 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !523 ; 3 uses
  %i.bb = icmp ugt i32 %i.ay, %i.ba
  br i1 %i.bb, label %bb.k, label %.thread.i

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 1120 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !472 ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 1128 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !473 ; 2 uses
  %i.bg = zext i32 %i.ba to i64
  %i.bh = add i32 %i.ba, %i.av
  %i.bi = zext i32 %i.bh to i64
  %i.bj = call ptr @ft_mem_qrealloc(ptr noundef %i.ah, i64 noundef 1, i64 noundef %i.bg, i64 noundef %i.bi, ptr noundef %i.bd, ptr noundef nonnull %i.a) #18 ; 4 uses
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !472
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !3   ; 2 uses
  %.not.i29 = icmp eq i32 %i.bk, 0
  br i1 %.not.i29, label %bb.l, label %cff_blend_doBlend.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = load i32, ptr %i.aw, align 8, !tbaa !474 ; 5 uses
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bm
  store ptr %i.bn, ptr %i.be, align 8, !tbaa !473
  %i.bo = load i32, ptr %i.az, align 4, !tbaa !523
  %i.bp = add i32 %i.bo, %i.av
  store i32 %i.bp, ptr %i.az, align 4, !tbaa !523
  %.not93.i = icmp eq ptr %i.bd, null
  %.not94.i = icmp eq ptr %i.bj, %i.bd
  %or.cond102.i = select i1 %.not93.i, i1 true, i1 %.not94.i
  br i1 %or.cond102.i, label %.thread.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bq = ptrtoint ptr %i.bj to i64
  %i.br = ptrtoint ptr %i.bd to i64
  %i.bs = sub i64 %i.bq, %i.br                    ; 5 uses
  %i.bt = load ptr, ptr %i.an, align 8, !tbaa !464 ; 8 uses
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !466 ; 3 uses
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
  %wide.load = load <2 x ptr>, ptr %next.gep, align 8, !tbaa !160 ; 4 uses
  %wide.load60 = load <2 x ptr>, ptr %i.ci, align 8, !tbaa !160 ; 4 uses
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
  store ptr %i.cr, ptr %next.gep, align 8, !tbaa !160
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cs = extractelement <2 x i1> %i.cn, i64 1
  br i1 %i.cs, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue
  %i.ct = extractelement <2 x ptr> %wide.load, i64 1
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 %i.bs
  store ptr %i.cu, ptr %next.gep57, align 8, !tbaa !160
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue
  %i.cv = extractelement <2 x i1> %i.co, i64 0
  br i1 %i.cv, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %i.cw = extractelement <2 x ptr> %wide.load60, i64 0
  %i.cx = getelementptr inbounds i8, ptr %i.cw, i64 %i.bs
  store ptr %i.cx, ptr %next.gep58, align 8, !tbaa !160
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %i.cy = extractelement <2 x i1> %i.co, i64 1
  br i1 %i.cy, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  %i.cz = extractelement <2 x ptr> %wide.load60, i64 1
  %i.da = getelementptr inbounds i8, ptr %i.cz, i64 %i.bs
  store ptr %i.da, ptr %next.gep59, align 8, !tbaa !160
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !524

middle.block:                                     ; preds = %pred.store.continue66
  %cmp.n = icmp eq i64 %i.cb, %n.vec
  br i1 %cmp.n, label %.thread.i, label %.lr.ph.i.preheader68

.lr.ph.i.preheader68:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.082104.i.ph = phi ptr [ %i.bt, %.lr.ph.i.preheader ], [ %i.cd, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader68, %bb.o
  %.082104.i = phi ptr [ %i.df, %bb.o ], [ %.082104.i.ph, %.lr.ph.i.preheader68 ] ; 3 uses
  %i.dc = load ptr, ptr %.082104.i, align 8, !tbaa !160 ; 3 uses
  %.not95.i = icmp uge ptr %i.dc, %i.bd
  %i.dd = icmp ult ptr %i.dc, %i.bf
  %or.cond.i = select i1 %.not95.i, i1 %i.dd, i1 false
  br i1 %or.cond.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 %i.bs
  store ptr %i.de, ptr %.082104.i, align 8, !tbaa !160
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %i.df = getelementptr inbounds nuw i8, ptr %.082104.i, i64 8 ; 2 uses
  %i.dg = icmp ult ptr %i.df, %i.bu
  br i1 %i.dg, label %.lr.ph.i, label %.thread.i, !llvm.loop !525

.thread.i:                                        ; preds = %bb.o, %middle.block, %bb.m, %bb.l, %bb.j
  %i.dh = phi i32 [ %i.ax, %bb.j ], [ %i.bl, %bb.m ], [ %i.bl, %bb.l ], [ %i.bl, %middle.block ], [ %i.bl, %bb.o ]
  %i.di = add i32 %i.dh, %i.av
  store i32 %i.di, ptr %i.aw, align 8, !tbaa !474
  %i.dj = sub i32 %i.at, %i.ak                    ; 2 uses
  %i.dk = add i32 %i.dj, %i.aa                    ; 2 uses
  %.not115.i = icmp eq i32 %i.aa, 0
  br i1 %.not115.i, label %._crit_edge114.i, label %.lr.ph113.i

.lr.ph113.i:                                      ; preds = %.thread.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 1096
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 1128 ; 10 uses
  %wide.trip.count.i = and i64 %i.z, 4294967295
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge.i, %.lr.ph113.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph113.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %.085111.i = phi i32 [ %i.dk, %.lr.ph113.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.do = load ptr, ptr %i.dl, align 8, !tbaa !486
  %i.dp = load ptr, ptr %i.an, align 8, !tbaa !464
  %i.dq = trunc nuw i64 %indvars.iv.i to i32
  %i.dr = add i32 %i.dj, %i.dq
  %i.ds = zext i32 %i.dr to i64                   ; 2 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %i.ds
  %.val96.i = load ptr, ptr %i.dt, align 8, !tbaa !160
  %i.du = call fastcc i64 @do_fixed(ptr noundef nonnull readonly %0, ptr readonly %.val96.i, i64 noundef 0) ; 2 uses
  %i.dv = load i32, ptr %i.ai, align 8, !tbaa !485 ; 2 uses
  %i.dw = icmp ugt i32 %i.dv, 1
  br i1 %i.dw, label %.lr.ph109.i, label %._crit_edge.i

.lr.ph109.i:                                      ; preds = %bb.p, %do_fixed.exit.i
  %i.dx = phi i32 [ %i.gl, %do_fixed.exit.i ], [ %i.dv, %bb.p ] ; 4 uses
  %.0108.i = phi i64 [ %i.gv, %do_fixed.exit.i ], [ %i.du, %bb.p ]
  %.pn107.i = phi ptr [ %.080.i, %do_fixed.exit.i ], [ %i.do, %bb.p ]
  %.083106.i = phi i32 [ %i.gw, %do_fixed.exit.i ], [ 1, %bb.p ]
  %.1105.i = phi i32 [ %i.dz, %do_fixed.exit.i ], [ %.085111.i, %bb.p ] ; 2 uses
  %.080.i = getelementptr inbounds nuw i8, ptr %.pn107.i, i64 4 ; 2 uses
  %i.dy = load ptr, ptr %i.an, align 8, !tbaa !464
  %i.dz = add i32 %.1105.i, 1                     ; 2 uses
  %i.ea = zext i32 %.1105.i to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ea
  %.val.i = load ptr, ptr %i.eb, align 8, !tbaa !160 ; 11 uses
  %i.ec = load i8, ptr %.val.i, align 1, !tbaa !165 ; 5 uses
  switch i8 %i.ec, label %bb.s [
    i8 30, label %bb.q
    i8 -1, label %bb.r
  ]

bb.q:                                             ; preds = %.lr.ph109.i
  %i.ed = load ptr, ptr %i.dm, align 8, !tbaa !502
  %i.ee = call fastcc i64 @cff_parse_real(ptr noundef nonnull readonly %.val.i, ptr noundef %i.ed, i64 noundef 0, ptr noundef null)
  %.pre.i = load i32, ptr %i.ai, align 8, !tbaa !485
  br label %do_fixed.exit.i

bb.r:                                             ; preds = %.lr.ph109.i
  %i.ef = getelementptr inbounds nuw i8, ptr %.val.i, i64 1
  %i.eg = load i32, ptr %i.ef, align 1
  %i.eh = call i32 @llvm.bswap.i32(i32 %i.eg)
  %i.ei = zext i32 %i.eh to i64
  br label %do_fixed.exit.i

bb.s:                                             ; preds = %.lr.ph109.i
  %i.ej = load ptr, ptr %i.dm, align 8, !tbaa !502 ; 6 uses
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
  %i.fk = load ptr, ptr %i.ff, align 8, !tbaa !195
  %i.fl = zext i16 %i.fi to i64
  %i.fm = getelementptr inbounds nuw [2 x i8], ptr %i.fk, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !60 ; 2 uses
  %.not129 = icmp eq i16 %i.fn, 0
  br i1 %.not129, label %cff_charset_cid_to_gindex.exit.thread, label %bb.aj

bb.aj:                                            ; preds = %cff_charset_cid_to_gindex.exit
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !60
  %i.fp = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.fq = trunc nuw nsw i64 %i.fp to i32
  store i32 %i.fq, ptr %i.dv, align 8, !tbaa !182
  br label %bb.ak

cff_charset_cid_to_gindex.exit.thread:            ; preds = %bb.ai, %cff_charset_cid_to_gindex.exit
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.fg, i64 %indvars.iv
  store i16 0, ptr %i.fr, align 2, !tbaa !60
  store i16 0, ptr %i.fh, align 2, !tbaa !60
  %.pre199 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.ak

bb.ak:                                            ; preds = %cff_charset_cid_to_gindex.exit.thread, %bb.aj
  %indvars.iv.next.pre-phi = phi i64 [ %.pre199, %cff_charset_cid_to_gindex.exit.thread ], [ %i.fp, %bb.aj ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, 256
  br i1 %exitcond.not, label %.loopexit151, label %bb.ai, !llvm.loop !635

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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !491  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.loopexit25, label %.preheader24

.preheader24:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !488
  %.not29 = icmp eq i32 %i.d, 0
  br i1 %.not29, label %.loopexit25, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader24, %.lr.ph
  %i.e = phi ptr [ %i.h, %.lr.ph ], [ %i.b, %.preheader24 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader24 ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !492
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.g) #18
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !491  ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store ptr null, ptr %i.i, align 8, !tbaa !492
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = load i32, ptr %i.c, align 4, !tbaa !488
  %i.k = zext i32 %i.j to i64
  %i.l = icmp samesign ult i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %.loopexit25, !llvm.loop !636

.loopexit25:                                      ; preds = %.lr.ph, %.preheader24, %bb.a
  %i.m = phi ptr [ null, %bb.a ], [ %i.b, %.preheader24 ], [ %i.h, %.lr.ph ]
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.m) #18
  store ptr null, ptr %i.a, align 8, !tbaa !491
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !482  ; 3 uses
  %.not23 = icmp eq ptr %i.o, null
  br i1 %.not23, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %.loopexit25
  %i.p = load i32, ptr %0, align 8, !tbaa !481
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %.loopexit, label %.lr.ph28

.lr.ph28:                                         ; preds = %.preheader, %.lr.ph28
  %i.q = phi ptr [ %i.u, %.lr.ph28 ], [ %i.o, %.preheader ]
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %.lr.ph28 ], [ 0, %.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %indvars.iv32
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !487
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.t) #18
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !482  ; 3 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv32
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !487
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.x = load i32, ptr %0, align 8, !tbaa !481
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv.next33, %i.y
  br i1 %i.z, label %.lr.ph28, label %.loopexit, !llvm.loop !637

.loopexit:                                        ; preds = %.lr.ph28, %.preheader, %.loopexit25
  %i.aa = phi ptr [ null, %.loopexit25 ], [ %i.o, %.preheader ], [ %i.u, %.lr.ph28 ]
  tail call void @ft_mem_free(ptr noundef %1, ptr noundef %i.aa) #18
  store ptr null, ptr %i.n, align 8, !tbaa !482
  ret void
}

declare hidden zeroext i16 @FT_Stream_GetUShort(ptr noundef) local_unnamed_addr #9

declare hidden ptr @ft_mem_strdup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @cff_subfont_done(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1144 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !187  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %cff_index_done.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !188
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1200 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !190
  %.not10.i = icmp eq ptr %i.f, null
  br i1 %.not10.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @FT_Stream_ReleaseFrame(ptr noundef nonnull %i.b, ptr noundef nonnull %i.e) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 1192
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !191
  tail call void @ft_mem_free(ptr noundef %i.d, ptr noundef %i.h) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  br label %cff_index_done.exit

cff_index_done.exit:                              ; preds = %bb.b, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1208 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !638
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.j) #18
  store ptr null, ptr %i.i, align 8, !tbaa !638
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 1080 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !639
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.l) #18
  store ptr null, ptr %i.k, align 8, !tbaa !639
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1096 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !640
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.n) #18
  store ptr null, ptr %i.m, align 8, !tbaa !640
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1120 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !472
  tail call void @ft_mem_free(ptr noundef %0, ptr noundef %i.p) #18
  store ptr null, ptr %i.o, align 8, !tbaa !472
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #8

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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 0}
!8 = !{!"FT_CMapRec_", !9, i64 0, !13, i64 16}
!9 = !{!"FT_CharMapRec_", !10, i64 0, !4, i64 8, !12, i64 12, !12, i64 14}
!10 = !{!"p1 _ZTS11FT_FaceRec_", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"short", !5, i64 0}
!13 = !{!"p1 _ZTS17FT_CMap_ClassRec_", !11, i64 0}
!14 = !{!15, !11, i64 1168}
!15 = !{!"TT_FaceRec_", !16, i64 0, !33, i64 248, !17, i64 280, !12, i64 288, !35, i64 296, !36, i64 304, !37, i64 400, !38, i64 456, !5, i64 496, !39, i64 504, !12, i64 560, !40, i64 568, !43, i64 616, !44, i64 752, !18, i64 816, !17, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !11, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !11, i64 888, !11, i64 896, !11, i64 904, !11, i64 912, !11, i64 920, !45, i64 928, !47, i64 944, !17, i64 1008, !48, i64 1016, !49, i64 1024, !52, i64 1048, !12, i64 1088, !53, i64 1096, !5, i64 1104, !54, i64 1105, !17, i64 1112, !18, i64 1120, !17, i64 1128, !18, i64 1136, !17, i64 1144, !55, i64 1152, !11, i64 1160, !22, i64 1168, !18, i64 1184, !17, i64 1192, !17, i64 1200, !5, i64 1208, !5, i64 1209, !56, i64 1216, !4, i64 1224, !18, i64 1232, !4, i64 1240, !4, i64 1244, !18, i64 1248, !17, i64 1256, !17, i64 1264, !17, i64 1272, !18, i64 1280, !18, i64 1288, !17, i64 1296, !4, i64 1304, !17, i64 1312, !51, i64 1320, !18, i64 1328, !17, i64 1336, !4, i64 1344, !4, i64 1348, !55, i64 1352, !18, i64 1360, !17, i64 1368, !4, i64 1376, !4, i64 1380, !4, i64 1384, !57, i64 1392, !17, i64 1432, !17, i64 1440, !17, i64 1448, !17, i64 1456, !11, i64 1464, !11, i64 1472, !11, i64 1480}
!16 = !{!"FT_FaceRec_", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !17, i64 32, !18, i64 40, !18, i64 48, !4, i64 56, !19, i64 64, !4, i64 72, !20, i64 80, !22, i64 88, !23, i64 104, !12, i64 136, !12, i64 138, !12, i64 140, !12, i64 142, !12, i64 144, !12, i64 146, !12, i64 148, !12, i64 150, !24, i64 152, !25, i64 160, !26, i64 168, !27, i64 176, !28, i64 184, !29, i64 192, !30, i64 200, !22, i64 216, !11, i64 232, !32, i64 240}
!17 = !{!"long", !5, i64 0}
!18 = !{!"p1 omnipotent char", !11, i64 0}
!19 = !{!"p1 _ZTS15FT_Bitmap_Size_", !11, i64 0}
!20 = !{!"p2 _ZTS14FT_CharMapRec_", !21, i64 0}
!21 = !{!"any p2 pointer", !11, i64 0}
!22 = !{!"FT_Generic_", !11, i64 0, !11, i64 8}
!23 = !{!"FT_BBox_", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!24 = !{!"p1 _ZTS16FT_GlyphSlotRec_", !11, i64 0}
!25 = !{!"p1 _ZTS11FT_SizeRec_", !11, i64 0}
!26 = !{!"p1 _ZTS14FT_CharMapRec_", !11, i64 0}
!27 = !{!"p1 _ZTS13FT_DriverRec_", !11, i64 0}
!28 = !{!"p1 _ZTS13FT_MemoryRec_", !11, i64 0}
!29 = !{!"p1 _ZTS13FT_StreamRec_", !11, i64 0}
!30 = !{!"FT_ListRec_", !31, i64 0, !31, i64 8}
!31 = !{!"p1 _ZTS15FT_ListNodeRec_", !11, i64 0}
!32 = !{!"p1 _ZTS20FT_Face_InternalRec_", !11, i64 0}
!33 = !{!"TTC_HeaderRec_", !17, i64 0, !17, i64 8, !17, i64 16, !34, i64 24}
!34 = !{!"p1 long", !11, i64 0}
!35 = !{!"p1 _ZTS12TT_TableRec_", !11, i64 0}
!36 = !{!"TT_Header_", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24, !12, i64 32, !12, i64 34, !5, i64 40, !5, i64 56, !12, i64 72, !12, i64 74, !12, i64 76, !12, i64 78, !12, i64 80, !12, i64 82, !12, i64 84, !12, i64 86, !12, i64 88}
!37 = !{!"TT_HoriHeader_", !17, i64 0, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !5, i64 28, !12, i64 36, !12, i64 38, !11, i64 40, !11, i64 48}
!38 = !{!"TT_MaxProfile_", !17, i64 0, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !12, i64 32, !12, i64 34}
!39 = !{!"TT_VertHeader_", !17, i64 0, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !5, i64 28, !12, i64 36, !12, i64 38, !11, i64 40, !11, i64 48}
!40 = !{!"TT_NameTableRec_", !12, i64 0, !4, i64 4, !4, i64 8, !41, i64 16, !4, i64 24, !42, i64 32, !29, i64 40}
!41 = !{!"p1 _ZTS11TT_NameRec_", !11, i64 0}
!42 = !{!"p1 _ZTS14TT_LangTagRec_", !11, i64 0}
!43 = !{!"TT_OS2_", !12, i64 0, !12, i64 2, !12, i64 4, !12, i64 6, !12, i64 8, !12, i64 10, !12, i64 12, !12, i64 14, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !12, i64 28, !12, i64 30, !5, i64 32, !17, i64 48, !17, i64 56, !17, i64 64, !17, i64 72, !5, i64 80, !12, i64 84, !12, i64 86, !12, i64 88, !12, i64 90, !12, i64 92, !12, i64 94, !12, i64 96, !12, i64 98, !17, i64 104, !17, i64 112, !12, i64 120, !12, i64 122, !12, i64 124, !12, i64 126, !12, i64 128, !12, i64 130, !12, i64 132}
!44 = !{!"TT_Postscript_", !17, i64 0, !17, i64 8, !12, i64 16, !12, i64 18, !17, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !17, i64 56}
!45 = !{!"TT_Gasp_", !12, i64 0, !12, i64 2, !46, i64 8}
!46 = !{!"p1 _ZTS16TT_GaspRangeRec_", !11, i64 0}
!47 = !{!"TT_PCLT_", !17, i64 0, !17, i64 8, !12, i64 16, !12, i64 18, !12, i64 20, !12, i64 22, !12, i64 24, !12, i64 26, !5, i64 28, !5, i64 44, !5, i64 52, !5, i64 58, !5, i64 59, !5, i64 60, !5, i64 61}
!48 = !{!"p1 _ZTS17TT_SBit_ScaleRec_", !11, i64 0}
!49 = !{!"TT_Post_NamesRec_", !5, i64 0, !12, i64 2, !12, i64 4, !50, i64 8, !51, i64 16}
!50 = !{!"p1 short", !11, i64 0}
!51 = !{!"p2 omnipotent char", !21, i64 0}
!52 = !{!"FT_Palette_Data_", !12, i64 0, !50, i64 8, !50, i64 16, !12, i64 24, !50, i64 32}
!53 = !{!"p1 _ZTS9FT_Color_", !11, i64 0}
!54 = !{!"FT_Color_", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!55 = !{!"p1 int", !11, i64 0}
!56 = !{!"p1 _ZTS12GX_BlendRec_", !11, i64 0}
!57 = !{!"TT_BDFRec_", !18, i64 0, !18, i64 8, !18, i64 16, !17, i64 24, !4, i64 32, !5, i64 36}
!58 = !{!59, !50, i64 24}
!59 = !{!"CFF_CMapStdRec_", !8, i64 0, !50, i64 24}
!60 = !{!12, !12, i64 0}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!16, !28, i64 184}
!64 = !{!65, !50, i64 16}
!65 = !{!"CFF_CharsetRec_", !4, i64 0, !17, i64 8, !50, i64 16, !50, i64 24, !4, i64 32, !4, i64 36}
!66 = !{!67, !81, i64 4960}
!67 = !{!"CFF_FontRec_", !68, i64 0, !29, i64 8, !28, i64 16, !17, i64 24, !4, i64 32, !4, i64 36, !5, i64 40, !5, i64 41, !5, i64 42, !4, i64 44, !5, i64 48, !69, i64 56, !69, i64 120, !69, i64 184, !70, i64 248, !65, i64 1296, !69, i64 1336, !69, i64 1400, !69, i64 1464, !69, i64 1528, !18, i64 1592, !51, i64 1600, !4, i64 1608, !51, i64 1616, !18, i64 1624, !17, i64 1632, !71, i64 1640, !4, i64 2864, !5, i64 2872, !79, i64 4920, !80, i64 4952, !81, i64 4960, !11, i64 4968, !82, i64 4976, !18, i64 4984, !18, i64 4992, !22, i64 5000, !83, i64 5016, !86, i64 5048}
!68 = !{!"p1 _ZTS14FT_LibraryRec_", !11, i64 0}
!69 = !{!"CFF_IndexRec_", !29, i64 0, !17, i64 8, !4, i64 16, !4, i64 20, !5, i64 24, !17, i64 32, !17, i64 40, !34, i64 48, !18, i64 56}
!70 = !{!"CFF_EncodingRec_", !4, i64 0, !17, i64 8, !4, i64 16, !5, i64 20, !5, i64 532}
!71 = !{!"CFF_SubFontRec_", !72, i64 0, !75, i64 328, !77, i64 1056, !4, i64 1104, !34, i64 1112, !18, i64 1120, !18, i64 1128, !4, i64 1136, !4, i64 1140, !69, i64 1144, !51, i64 1208, !4, i64 1216}
!72 = !{!"CFF_FontRecDictRec_", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !5, i64 24, !17, i64 32, !17, i64 40, !17, i64 48, !4, i64 56, !4, i64 60, !73, i64 64, !5, i64 96, !17, i64 104, !74, i64 112, !17, i64 128, !23, i64 136, !17, i64 168, !17, i64 176, !17, i64 184, !17, i64 192, !17, i64 200, !17, i64 208, !17, i64 216, !4, i64 224, !4, i64 228, !4, i64 232, !17, i64 240, !17, i64 248, !17, i64 256, !17, i64 264, !17, i64 272, !17, i64 280, !17, i64 288, !17, i64 296, !4, i64 304, !12, i64 308, !12, i64 310, !17, i64 312, !4, i64 320}
!73 = !{!"FT_Matrix_", !17, i64 0, !17, i64 8, !17, i64 16, !17, i64 24}
!74 = !{!"FT_Vector_", !17, i64 0, !17, i64 8}
!75 = !{!"CFF_PrivateRec_", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 8, !5, i64 120, !5, i64 200, !5, i64 312, !17, i64 392, !17, i64 400, !17, i64 408, !17, i64 416, !17, i64 424, !5, i64 432, !5, i64 433, !5, i64 440, !5, i64 544, !5, i64 648, !17, i64 656, !4, i64 664, !4, i64 668, !17, i64 672, !17, i64 680, !17, i64 688, !17, i64 696, !17, i64 704, !4, i64 712, !76, i64 720}
!76 = !{!"p1 _ZTS15CFF_SubFontRec_", !11, i64 0}
!77 = !{!"CFF_BlendRec_", !5, i64 0, !5, i64 1, !78, i64 8, !4, i64 16, !4, i64 20, !34, i64 24, !4, i64 32, !55, i64 40}
!78 = !{!"p1 _ZTS12CFF_FontRec_", !11, i64 0}
!79 = !{!"CFF_FDSelectRec_", !5, i64 0, !4, i64 4, !18, i64 8, !4, i64 16, !4, i64 20, !4, i64 24, !5, i64 28}
!80 = !{!"p1 _ZTS19PSHinter_Interface_", !11, i64 0}
!81 = !{!"p1 _ZTS22FT_Service_PsCMapsRec_", !11, i64 0}
!82 = !{!"p1 _ZTS15PS_FontInfoRec_", !11, i64 0}
!83 = !{!"CFF_VStoreRec_", !4, i64 0, !84, i64 8, !12, i64 16, !4, i64 20, !85, i64 24}
!84 = !{!"p1 _ZTS12CFF_VarData_", !11, i64 0}
!85 = !{!"p1 _ZTS14CFF_VarRegion_", !11, i64 0}
!86 = !{!"p1 _ZTS16PS_FontExtraRec_", !11, i64 0}
!87 = !{!88, !11, i64 8}
!88 = !{!"FT_Service_PsCMapsRec_", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !50, i64 48, !50, i64 56}
!89 = !{!67, !4, i64 36}
!90 = !{!91, !92, i64 32}
!91 = !{!"PS_UnicodesRec_", !8, i64 0, !4, i64 24, !92, i64 32}
!92 = !{!"p1 _ZTS10PS_UniMap_", !11, i64 0}
!93 = !{!91, !4, i64 24}
!94 = !{!88, !11, i64 16}
!95 = !{!88, !11, i64 24}
!96 = !{!97, !4, i64 56}
!97 = !{!"PS_DriverRec_", !98, i64 0, !4, i64 56, !5, i64 60, !5, i64 64, !4, i64 96}
!98 = !{!"FT_DriverRec_", !99, i64 0, !101, i64 24, !30, i64 32, !102, i64 48}
!99 = !{!"FT_ModuleRec_", !100, i64 0, !68, i64 8, !28, i64 16}
!100 = !{!"p1 _ZTS16FT_Module_Class_", !11, i64 0}
!101 = !{!"p1 _ZTS19FT_Driver_ClassRec_", !11, i64 0}
!102 = !{!"p1 _ZTS18FT_GlyphLoaderRec_", !11, i64 0}
!103 = !{!97, !5, i64 60}
!104 = !{!99, !28, i64 16}
!105 = !{!97, !4, i64 96}
!106 = !{!99, !68, i64 8}
!107 = !{!99, !100, i64 0}
!108 = !{!109, !11, i64 64}
!109 = !{!"FT_Module_Class_", !17, i64 0, !17, i64 8, !18, i64 16, !17, i64 24, !17, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64}
!110 = !{!16, !27, i64 176}
!111 = !{!98, !68, i64 8}
!112 = !{!15, !11, i64 920}
!113 = !{!114, !11, i64 8}
!114 = !{!"SFNT_Interface_", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !11, i64 264, !11, i64 272, !11, i64 280, !11, i64 288, !11, i64 296, !11, i64 304, !11, i64 312, !11, i64 320, !11, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360}
!115 = !{!15, !17, i64 280}
!116 = !{!15, !11, i64 832}
!117 = !{!114, !11, i64 16}
!118 = !{!114, !11, i64 64}
!119 = !{!15, !5, i64 1208}
!120 = !{!67, !4, i64 32}
!121 = !{!16, !17, i64 0}
!122 = !{!67, !80, i64 4952}
!123 = !{!67, !11, i64 4968}
!124 = !{!16, !17, i64 8}
!125 = !{!16, !17, i64 32}
!126 = !{!72, !4, i64 228}
!127 = !{!16, !17, i64 16}
!128 = !{!72, !5, i64 96}
!129 = !{!15, !12, i64 136}
!130 = !{!72, !17, i64 104}
!131 = !{!73, !17, i64 24}
!132 = !{!73, !17, i64 16}
!133 = !{!74, !17, i64 8}
!134 = !{!17, !17, i64 0}
!135 = !{!73, !17, i64 0}
!136 = !{!73, !17, i64 8}
!137 = !{!74, !17, i64 0}
!138 = !{!67, !4, i64 2864}
!139 = !{!76, !76, i64 0}
!140 = !{i64 0, i64 8, !134, i64 8, i64 8, !134, i64 16, i64 8, !134, i64 24, i64 8, !134}
!141 = !{i64 0, i64 8, !134, i64 8, i64 8, !134}
!142 = distinct !{!142, !62}
!143 = !{!67, !4, i64 1328}
!144 = !{!67, !4, i64 1356}
!145 = !{!72, !17, i64 136}
!146 = !{!16, !17, i64 104}
!147 = !{!72, !17, i64 144}
!148 = !{!16, !17, i64 112}
!149 = !{!72, !17, i64 152}
!150 = !{!16, !17, i64 120}
!151 = !{!72, !17, i64 160}
!152 = !{!16, !17, i64 128}
!153 = !{!16, !12, i64 136}
!154 = !{!16, !12, i64 138}
!155 = !{!16, !12, i64 140}
!156 = !{!16, !12, i64 142}
!157 = !{!72, !4, i64 16}
!158 = !{!67, !4, i64 1608}
!159 = !{!67, !51, i64 1616}
end_hunk_1
