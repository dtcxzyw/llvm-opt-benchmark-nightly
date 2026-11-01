Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/getcoll?download=true
inline.NumInlined: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@ffgcll:bb.a
  br i1 %.not86, label %.lr.ph103, label %bb.ai

.lr.ph103:                                        ; preds = %bb.h
  br i1 %i.t, label %.lr.ph103.split.us, label %.lr.ph103.split

.lr.ph103.split.us:                               ; preds = %.lr.ph103
  br i1 %.not, label %.lr.ph103.split.us.split.us.outer, label %.lr.ph103.split.us.split.outer

.lr.ph103.split.us.split.us.outer:                ; preds = %.lr.ph103.split.us, %bb.q
  %.074102.us.us.ph = phi i64 [ %.1.lcssa.us.us, %bb.q ], [ 0, %.lr.ph103.split.us ]
  %.075101.us.us.ph = phi i64 [ %i.av, %bb.q ], [ %4, %.lr.ph103.split.us ]
  %.076100.us.us.ph = phi i64 [ %i.ba, %bb.q ], [ 0, %.lr.ph103.split.us ] ; 2 uses
  br label %.lr.ph103.split.us.split.us

.lr.ph103.split.us.split.us:                      ; preds = %.lr.ph103.split.us.split.us.outer, %bb.p
  %.074102.us.us = phi i64 [ %.1.lcssa.us.us, %bb.p ], [ %.074102.us.us.ph, %.lr.ph103.split.us.split.us.outer ] ; 2 uses
  %.075101.us.us = phi i64 [ %i.av, %bb.p ], [ %.075101.us.us.ph, %.lr.ph103.split.us.split.us.outer ] ; 2 uses
  %i.y = load i32, ptr %i.b, align 4, !tbaa !9
  %i.z = sext i32 %i.y to i64
  %i.aa = call i64 @llvm.smin.i64(i64 %.075101.us.us, i64 %i.z)
  %i.ab = load i64, ptr %i.f, align 8, !tbaa !40
  %i.ac = load i64, ptr %i.h, align 8, !tbaa !40  ; 2 uses
  %i.ad = sub nsw i64 %i.ab, %i.ac
  %i.ae = call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.ad) ; 6 uses
  %i.af = load i64, ptr %i.g, align 8, !tbaa !40
  %i.ag = load i64, ptr %i.j, align 8, !tbaa !40
  %i.ah = mul nsw i64 %i.ag, %.076100.us.us.ph
  %i.ai = add nsw i64 %i.ah, %i.af
  %i.aj = load i64, ptr %i.e, align 8, !tbaa !12  ; 2 uses
  %i.ak = mul nsw i64 %i.aj, %i.ac
  %i.al = add nsw i64 %i.ai, %i.ak
  %i.am = call i32 @ffgi1b(ptr noundef %0, i64 noundef %i.al, i64 noundef %i.ae, i64 noundef %i.aj, ptr noundef nonnull %i.p, ptr noundef nonnull %10) #6 ; 0 uses
  %i.an = icmp sgt i64 %i.ae, 0
  br i1 %i.an, label %.lr.ph.us.us, label %._crit_edge.split.us.us.split.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph103.split.us.split.us, %bb.n
  %indvars.iv151 = phi i64 [ %indvars.iv.next152, %bb.n ], [ 0, %.lr.ph103.split.us.split.us ]
  %.093.us.us.us.us = phi ptr [ %i.as, %bb.n ], [ %i.p, %.lr.ph103.split.us.split.us ] ; 2 uses
  %.192.us.us.us.us = phi i64 [ %i.ar, %bb.n ], [ %.074102.us.us, %.lr.ph103.split.us.split.us ] ; 3 uses
  %i.ao = load i8, ptr %.093.us.us.us.us, align 1, !tbaa !13 ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %7, i64 %.192.us.us.us.us ; 5 uses
  switch i8 %i.ao, label %bb.m [
    i8 84, label %bb.l
    i8 70, label %bb.k
    i8 0, label %bb.j
    i8 1, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph.us.us
  store i8 49, ptr %i.ap, align 1, !tbaa !13
  br label %bb.n

bb.j:                                             ; preds = %.lr.ph.us.us
  store i8 %6, ptr %i.ap, align 1, !tbaa !13
  %i.aq = getelementptr inbounds i8, ptr %8, i64 %.192.us.us.us.us
  store i8 1, ptr %i.aq, align 1, !tbaa !13
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph.us.us
  store i8 0, ptr %i.ap, align 1, !tbaa !13
  br label %bb.n

bb.l:                                             ; preds = %.lr.ph.us.us
  store i8 1, ptr %i.ap, align 1, !tbaa !13
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph.us.us
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %indvars.iv.next152 = add nuw nsw i64 %indvars.iv151, 1 ; 2 uses
  %i.ar = add nsw i64 %.192.us.us.us.us, 1        ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.093.us.us.us.us, i64 1
  %exitcond154.not = icmp eq i64 %indvars.iv.next152, %i.ae
  br i1 %exitcond154.not, label %._crit_edge.split.us.us.split.us.us, label %.lr.ph.us.us, !llvm.loop !35

._crit_edge.split.us.us.split.us.us:              ; preds = %bb.n, %.lr.ph103.split.us.split.us
  %.1.lcssa.us.us = phi i64 [ %.074102.us.us, %.lr.ph103.split.us.split.us ], [ %i.ar, %bb.n ] ; 3 uses
  %i.at = load i32, ptr %10, align 4, !tbaa !9    ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.split.us, label %bb.o

bb.o:                                             ; preds = %._crit_edge.split.us.us.split.us.us
  %i.av = sub nsw i64 %.075101.us.us, %i.ae       ; 3 uses
  %.not88.us.us = icmp eq i64 %i.av, 0
  br i1 %.not88.us.us, label %._crit_edge104, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i64, ptr %i.h, align 8, !tbaa !40
  %i.ax = add nsw i64 %i.aw, %i.ae                ; 2 uses
  store i64 %i.ax, ptr %i.h, align 8, !tbaa !40
  %i.ay = load i64, ptr %i.f, align 8, !tbaa !40
  %i.az = icmp eq i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.q, label %.lr.ph103.split.us.split.us, !llvm.loop !36

bb.q:                                             ; preds = %bb.p
  store i64 0, ptr %i.h, align 8, !tbaa !40
  %i.ba = add nuw nsw i64 %.076100.us.us.ph, 1
  br label %.lr.ph103.split.us.split.us.outer, !llvm.loop !36

.lr.ph103.split.us.split:                         ; preds = %.lr.ph103.split.us.split.outer, %bb.y
  %.074102.us = phi i64 [ %.1.lcssa.us, %bb.y ], [ %.074102.us.ph, %.lr.ph103.split.us.split.outer ] ; 2 uses
  %.075101.us = phi i64 [ %i.by, %bb.y ], [ %.075101.us.ph, %.lr.ph103.split.us.split.outer ] ; 2 uses
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !9
  %i.bc = sext i32 %i.bb to i64
  %i.bd = call i64 @llvm.smin.i64(i64 %.075101.us, i64 %i.bc)
  %i.be = load i64, ptr %i.f, align 8, !tbaa !40
  %i.bf = load i64, ptr %i.h, align 8, !tbaa !40  ; 2 uses
  %i.bg = sub nsw i64 %i.be, %i.bf
  %i.bh = call i64 @llvm.smin.i64(i64 %i.bd, i64 %i.bg) ; 6 uses
  %i.bi = load i64, ptr %i.g, align 8, !tbaa !40
  %i.bj = load i64, ptr %i.j, align 8, !tbaa !40
  %i.bk = mul nsw i64 %i.bj, %.076100.us.ph
  %i.bl = add nsw i64 %i.bk, %i.bi
  %i.bm = load i64, ptr %i.e, align 8, !tbaa !12  ; 2 uses
  %i.bn = mul nsw i64 %i.bm, %i.bf
  %i.bo = add nsw i64 %i.bl, %i.bn
  %i.bp = call i32 @ffgi1b(ptr noundef %0, i64 noundef %i.bo, i64 noundef %i.bh, i64 noundef %i.bm, ptr noundef nonnull %i.p, ptr noundef nonnull %10) #6 ; 0 uses
  %i.bq = icmp sgt i64 %i.bh, 0
  br i1 %i.bq, label %.lr.ph.us, label %._crit_edge.split.us.us.split

.lr.ph.us:                                        ; preds = %.lr.ph103.split.us.split, %bb.w
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %bb.w ], [ 0, %.lr.ph103.split.us.split ]
  %.093.us.us = phi ptr [ %i.bv, %bb.w ], [ %i.p, %.lr.ph103.split.us.split ] ; 2 uses
  %.192.us.us = phi i64 [ %i.bu, %bb.w ], [ %.074102.us, %.lr.ph103.split.us.split ] ; 3 uses
  %i.br = load i8, ptr %.093.us.us, align 1, !tbaa !13 ; 2 uses
  %i.bs = getelementptr inbounds i8, ptr %7, i64 %.192.us.us ; 5 uses
  switch i8 %i.br, label %bb.v [
    i8 84, label %bb.u
    i8 70, label %bb.t
    i8 0, label %bb.s
    i8 1, label %bb.r
  ]

bb.r:                                             ; preds = %.lr.ph.us
  store i8 49, ptr %i.bs, align 1, !tbaa !13
  br label %bb.w

bb.s:                                             ; preds = %.lr.ph.us
  store i8 %6, ptr %i.bs, align 1, !tbaa !13
  store i32 1, ptr %9, align 4, !tbaa !9
  %i.bt = getelementptr inbounds i8, ptr %8, i64 %.192.us.us
  store i8 1, ptr %i.bt, align 1, !tbaa !13
  br label %bb.w

bb.t:                                             ; preds = %.lr.ph.us
  store i8 0, ptr %i.bs, align 1, !tbaa !13
  br label %bb.w

bb.u:                                             ; preds = %.lr.ph.us
  store i8 1, ptr %i.bs, align 1, !tbaa !13
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.us
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.r
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %i.bu = add nsw i64 %.192.us.us, 1              ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.093.us.us, i64 1
  %exitcond150.not = icmp eq i64 %indvars.iv.next148, %i.bh
  br i1 %exitcond150.not, label %._crit_edge.split.us.us.split, label %.lr.ph.us, !llvm.loop !35

._crit_edge.split.us.us.split:                    ; preds = %bb.w, %.lr.ph103.split.us.split
  %.1.lcssa.us = phi i64 [ %.074102.us, %.lr.ph103.split.us.split ], [ %i.bu, %bb.w ] ; 3 uses
  %i.bw = load i32, ptr %10, align 4, !tbaa !9    ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 0
  br i1 %i.bx, label %.split.us, label %bb.x

bb.x:                                             ; preds = %._crit_edge.split.us.us.split
  %i.by = sub nsw i64 %.075101.us, %i.bh          ; 3 uses
  %.not88.us = icmp eq i64 %i.by, 0
  br i1 %.not88.us, label %._crit_edge104, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = load i64, ptr %i.h, align 8, !tbaa !40
  %i.ca = add nsw i64 %i.bz, %i.bh                ; 2 uses
  store i64 %i.ca, ptr %i.h, align 8, !tbaa !40
  %i.cb = load i64, ptr %i.f, align 8, !tbaa !40
  %i.cc = icmp eq i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.z, label %.lr.ph103.split.us.split, !llvm.loop !36

bb.z:                                             ; preds = %bb.y
  store i64 0, ptr %i.h, align 8, !tbaa !40
  %i.cd = add nuw nsw i64 %.076100.us.ph, 1
  br label %.lr.ph103.split.us.split.outer, !llvm.loop !36

.lr.ph103.split.us.split.outer:                   ; preds = %.lr.ph103.split.us, %bb.z
  %.074102.us.ph = phi i64 [ %.1.lcssa.us, %bb.z ], [ 0, %.lr.ph103.split.us ]
  %.075101.us.ph = phi i64 [ %i.by, %bb.z ], [ %4, %.lr.ph103.split.us ]
  %.076100.us.ph = phi i64 [ %i.cd, %bb.z ], [ 0, %.lr.ph103.split.us ] ; 2 uses
  br label %.lr.ph103.split.us.split

.lr.ph103.split:                                  ; preds = %.lr.ph103
  br i1 %.not, label %.lr.ph103.split.split.us.preheader, label %.lr.ph103.split.split.outer

.lr.ph103.split.split.us.preheader:               ; preds = %.lr.ph103.split
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %6, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert238 = insertelement <8 x i8> poison, i8 %6, i64 0
  %broadcast.splat239 = shufflevector <8 x i8> %broadcast.splatinsert238, <8 x i8> poison, <8 x i32> zeroinitializer
  br label %.lr.ph103.split.split.us.outer

.lr.ph103.split.split.us.outer:                   ; preds = %.lr.ph103.split.split.us.preheader, %bb.ah
  %.074102.us107.ph = phi i64 [ 0, %.lr.ph103.split.split.us.preheader ], [ %.1.lcssa.us111, %bb.ah ]
  %.075101.us108.ph = phi i64 [ %4, %.lr.ph103.split.split.us.preheader ], [ %i.dt, %bb.ah ]
  %.076100.us109.ph = phi i64 [ 0, %.lr.ph103.split.split.us.preheader ], [ %i.dy, %bb.ah ] ; 2 uses
  br label %.lr.ph103.split.split.us

.lr.ph103.split.split.us:                         ; preds = %.lr.ph103.split.split.us.outer, %bb.ag
  %.074102.us107 = phi i64 [ %.1.lcssa.us111, %bb.ag ], [ %.074102.us107.ph, %.lr.ph103.split.split.us.outer ] ; 6 uses
  %.075101.us108 = phi i64 [ %i.dt, %bb.ag ], [ %.075101.us108.ph, %.lr.ph103.split.split.us.outer ] ; 2 uses
  %i.ce = load i32, ptr %i.b, align 4, !tbaa !9
  %i.cf = sext i32 %i.ce to i64
  %i.cg = call i64 @llvm.smin.i64(i64 %.075101.us108, i64 %i.cf)
  %i.ch = load i64, ptr %i.f, align 8, !tbaa !40
  %i.ci = load i64, ptr %i.h, align 8, !tbaa !40  ; 2 uses
  %i.cj = sub nsw i64 %i.ch, %i.ci
  %i.ck = call i64 @llvm.smin.i64(i64 %i.cg, i64 %i.cj) ; 13 uses
  %i.cl = load i64, ptr %i.g, align 8, !tbaa !40
  %i.cm = load i64, ptr %i.j, align 8, !tbaa !40
  %i.cn = mul nsw i64 %i.cm, %.076100.us109.ph
  %i.co = add nsw i64 %i.cn, %i.cl
  %i.cp = load i64, ptr %i.e, align 8, !tbaa !12  ; 2 uses
  %i.cq = mul nsw i64 %i.cp, %i.ci
  %i.cr = add nsw i64 %i.co, %i.cq
  %i.cs = call i32 @ffgi1b(ptr noundef %0, i64 noundef %i.cr, i64 noundef %i.ck, i64 noundef %i.cp, ptr noundef nonnull %i.p, ptr noundef nonnull %10) #6 ; 0 uses
  %i.ct = icmp sgt i64 %i.ck, 0
  br i1 %i.ct, label %iter.check, label %._crit_edge.split.split.us.us

iter.check:                                       ; preds = %.lr.ph103.split.split.us
  %min.iters.check = icmp ult i64 %i.ck, 8
  br i1 %min.iters.check, label %.lr.ph.us110.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check233 = icmp ult i64 %i.ck, 16
  br i1 %min.iters.check233, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = and i64 %i.ck, 8
  %n.vec = and i64 %i.ck, 9223372036854775792     ; 6 uses
  %i.cv = getelementptr i8, ptr %i.p, i64 %n.vec
  %i.cw = add i64 %.074102.us107, %n.vec          ; 2 uses
  %i.cx = getelementptr i8, ptr %7, i64 %.074102.us107
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep.a = getelementptr i8, ptr %i.p, i64 %index
  %wide.load.a = load <16 x i8>, ptr %next.gep.a, align 16, !tbaa !13 ; 5 uses
  %i.cy = getelementptr i8, ptr %i.cx, i64 %index
  %i.cz = icmp eq <16 x i8> %wide.load.a, splat (i8 84)
  %i.da = icmp eq <16 x i8> %wide.load.a, splat (i8 70)
  %i.db = icmp eq <16 x i8> %wide.load.a, zeroinitializer
  %i.dc = icmp eq <16 x i8> %wide.load.a, splat (i8 1)
  %predphi.a = select <16 x i1> %i.dc, <16 x i8> splat (i8 49), <16 x i8> %wide.load.a
  %predphi234 = select <16 x i1> %i.cz, <16 x i8> splat (i8 1), <16 x i8> %predphi.a
  %predphi235.a = select <16 x i1> %i.da, <16 x i8> zeroinitializer, <16 x i8> %predphi234
  %predphi236.a = select <16 x i1> %i.db, <16 x i8> %broadcast.splat, <16 x i8> %predphi235.a
  store <16 x i8> %predphi236.a, ptr %i.cy, align 1, !tbaa !13
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !37

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ck, %n.vec
  br i1 %cmp.n, label %._crit_edge.split.split.us.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check.not.not = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check.not.not, label %.lr.ph.us110.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec237 = and i64 %i.ck, 9223372036854775800  ; 5 uses
  %i.de = getelementptr i8, ptr %i.p, i64 %n.vec237
  %i.df = add i64 %.074102.us107, %n.vec237       ; 2 uses
  %i.dg = getelementptr i8, ptr %7, i64 %.074102.us107
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index240 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next247, %vec.epilog.vector.body ] ; 3 uses
  %next.gep241 = getelementptr i8, ptr %i.p, i64 %index240
  %wide.load242 = load <8 x i8>, ptr %next.gep241, align 8, !tbaa !13 ; 5 uses
  %i.dh = getelementptr i8, ptr %i.dg, i64 %index240
  %i.di = icmp eq <8 x i8> %wide.load242, splat (i8 84)
  %i.dj = icmp eq <8 x i8> %wide.load242, splat (i8 70)
  %i.dk = icmp eq <8 x i8> %wide.load242, zeroinitializer
  %i.dl = icmp eq <8 x i8> %wide.load242, splat (i8 1)
  %predphi243 = select <8 x i1> %i.dl, <8 x i8> splat (i8 49), <8 x i8> %wide.load242
  %predphi244 = select <8 x i1> %i.di, <8 x i8> splat (i8 1), <8 x i8> %predphi243
  %predphi245 = select <8 x i1> %i.dj, <8 x i8> zeroinitializer, <8 x i8> %predphi244
  %predphi246 = select <8 x i1> %i.dk, <8 x i8> %broadcast.splat239, <8 x i8> %predphi245
  store <8 x i8> %predphi246, ptr %i.dh, align 1, !tbaa !13
  %index.next247 = add nuw i64 %index240, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next247, %n.vec237
  br i1 %i.dm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !38

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n248 = icmp eq i64 %i.ck, %n.vec237
  br i1 %cmp.n248, label %._crit_edge.split.split.us.us, label %.lr.ph.us110.preheader

.lr.ph.us110.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv143.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec237, %vec.epilog.middle.block ]
  %.093.us94.us.ph = phi ptr [ %i.p, %iter.check ], [ %i.cv, %vec.epilog.iter.check ], [ %i.de, %vec.epilog.middle.block ]
  %.192.us95.us.ph = phi i64 [ %.074102.us107, %iter.check ], [ %i.cw, %vec.epilog.iter.check ], [ %i.df, %vec.epilog.middle.block ]
  br label %.lr.ph.us110

.lr.ph.us110:                                     ; preds = %.lr.ph.us110.preheader, %bb.ae
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %bb.ae ], [ %indvars.iv143.ph, %.lr.ph.us110.preheader ]
  %.093.us94.us = phi ptr [ %i.dq, %bb.ae ], [ %.093.us94.us.ph, %.lr.ph.us110.preheader ] ; 2 uses
  %.192.us95.us = phi i64 [ %i.dp, %bb.ae ], [ %.192.us95.us.ph, %.lr.ph.us110.preheader ] ; 2 uses
  %i.dn = load i8, ptr %.093.us94.us, align 1, !tbaa !13 ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %7, i64 %.192.us95.us
  switch i8 %i.dn, label %bb.ad [
    i8 84, label %bb.ac
    i8 70, label %bb.ab
    i8 0, label %bb.aa
    i8 1, label %bb.ae
  ]

bb.aa:                                            ; preds = %.lr.ph.us110
  br label %bb.ae

bb.ab:                                            ; preds = %.lr.ph.us110
  br label %bb.ae

bb.ac:                                            ; preds = %.lr.ph.us110
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.us110
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.us110, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.sink = phi i8 [ %i.dn, %bb.ad ], [ 1, %bb.ac ], [ 0, %bb.ab ], [ %6, %bb.aa ], [ 49, %.lr.ph.us110 ]
  store i8 %.sink, ptr %i.do, align 1, !tbaa !13
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1 ; 2 uses
  %i.dp = add nsw i64 %.192.us95.us, 1            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.093.us94.us, i64 1
  %exitcond146.not = icmp eq i64 %indvars.iv.next144, %i.ck
  br i1 %exitcond146.not, label %._crit_edge.split.split.us.us, label %.lr.ph.us110, !llvm.loop !39

._crit_edge.split.split.us.us:                    ; preds = %bb.ae, %middle.block, %vec.epilog.middle.block, %.lr.ph103.split.split.us
  %.1.lcssa.us111 = phi i64 [ %.074102.us107, %.lr.ph103.split.split.us ], [ %i.df, %vec.epilog.middle.block ], [ %i.cw, %middle.block ], [ %i.dp, %bb.ae ] ; 3 uses
  %i.dr = load i32, ptr %10, align 4, !tbaa !9    ; 2 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %.split.us, label %bb.af

bb.af:                                            ; preds = %._crit_edge.split.split.us.us
  %i.dt = sub nsw i64 %.075101.us108, %i.ck       ; 3 uses
  %.not88.us112 = icmp eq i64 %i.dt, 0
  br i1 %.not88.us112, label %._crit_edge104, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.du = load i64, ptr %i.h, align 8, !tbaa !40
  %i.dv = add nsw i64 %i.du, %i.ck                ; 2 uses
  store i64 %i.dv, ptr %i.h, align 8, !tbaa !40
  %i.dw = load i64, ptr %i.f, align 8, !tbaa !40
  %i.dx = icmp eq i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ah, label %.lr.ph103.split.split.us, !llvm.loop !36

bb.ah:                                            ; preds = %bb.ag
  store i64 0, ptr %i.h, align 8, !tbaa !40
  %i.dy = add nuw nsw i64 %.076100.us109.ph, 1
  br label %.lr.ph103.split.split.us.outer, !llvm.loop !36

bb.ai:                                            ; preds = %bb.h
  store i32 310, ptr %10, align 4, !tbaa !9
  br label %._crit_edge104

.lr.ph103.split.split:                            ; preds = %.lr.ph103.split.split.outer, %bb.aq
  %.074102 = phi i64 [ %.1.lcssa, %bb.aq ], [ %.074102.ph, %.lr.ph103.split.split.outer ] ; 2 uses
  %.075101 = phi i64 [ %i.fb, %bb.aq ], [ %.075101.ph, %.lr.ph103.split.split.outer ] ; 2 uses
  %i.dz = load i32, ptr %i.b, align 4, !tbaa !9
  %i.ea = sext i32 %i.dz to i64
  %i.eb = call i64 @llvm.smin.i64(i64 %.075101, i64 %i.ea)
  %i.ec = load i64, ptr %i.f, align 8, !tbaa !40
  %i.ed = load i64, ptr %i.h, align 8, !tbaa !40  ; 2 uses
  %i.ee = sub nsw i64 %i.ec, %i.ed
  %i.ef = call i64 @llvm.smin.i64(i64 %i.eb, i64 %i.ee) ; 6 uses
  %i.eg = load i64, ptr %i.g, align 8, !tbaa !40
  %i.eh = load i64, ptr %i.j, align 8, !tbaa !40
  %i.ei = mul nsw i64 %i.eh, %.076100.ph
  %i.ej = add nsw i64 %i.ei, %i.eg
  %i.ek = load i64, ptr %i.e, align 8, !tbaa !12  ; 2 uses
  %i.el = mul nsw i64 %i.ek, %i.ed
  %i.em = add nsw i64 %i.ej, %i.el
  %i.en = call i32 @ffgi1b(ptr noundef %0, i64 noundef %i.em, i64 noundef %i.ef, i64 noundef %i.ek, ptr noundef nonnull %i.p, ptr noundef nonnull %10) #6 ; 0 uses
  %i.eo = icmp sgt i64 %i.ef, 0
  br i1 %i.eo, label %.lr.ph, label %._crit_edge.split.split

.lr.ph:                                           ; preds = %.lr.ph103.split.split, %bb.ao
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ao ], [ 0, %.lr.ph103.split.split ]
  %.093 = phi ptr [ %i.es, %bb.ao ], [ %i.p, %.lr.ph103.split.split ] ; 2 uses
  %.192 = phi i64 [ %i.er, %bb.ao ], [ %.074102, %.lr.ph103.split.split ] ; 2 uses
  %i.ep = load i8, ptr %.093, align 1, !tbaa !13  ; 2 uses
  %i.eq = getelementptr inbounds i8, ptr %7, i64 %.192 ; 5 uses
  switch i8 %i.ep, label %bb.an [
    i8 84, label %bb.aj
    i8 70, label %bb.ak
    i8 0, label %bb.al
    i8 1, label %bb.am
  ]

bb.aj:                                            ; preds = %.lr.ph
  store i8 1, ptr %i.eq, align 1, !tbaa !13
  br label %bb.ao

bb.ak:                                            ; preds = %.lr.ph
  store i8 0, ptr %i.eq, align 1, !tbaa !13
  br label %bb.ao

bb.al:                                            ; preds = %.lr.ph
  store i8 %6, ptr %i.eq, align 1, !tbaa !13
  store i32 1, ptr %9, align 4, !tbaa !9
  br label %bb.ao

bb.am:                                            ; preds = %.lr.ph
  store i8 49, ptr %i.eq, align 1, !tbaa !13
  br label %bb.ao

bb.an:                                            ; preds = %.lr.ph
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !13
  br label %bb.ao

bb.ao:                                            ; preds = %bb.al, %bb.aj, %bb.an, %bb.am, %bb.ak
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.er = add nsw i64 %.192, 1                    ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.093, i64 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ef
  br i1 %exitcond.not, label %._crit_edge.split.split, label %.lr.ph, !llvm.loop !35

._crit_edge.split.split:                          ; preds = %bb.ao, %.lr.ph103.split.split
  %.1.lcssa = phi i64 [ %.074102, %.lr.ph103.split.split ], [ %i.er, %bb.ao ] ; 3 uses
  %i.et = load i32, ptr %10, align 4, !tbaa !9    ; 2 uses
  %i.eu = icmp sgt i32 %i.et, 0
  br i1 %i.eu, label %.split.us, label %bb.ap

.split.us:                                        ; preds = %._crit_edge.split.split, %._crit_edge.split.split.us.us, %._crit_edge.split.us.us.split, %._crit_edge.split.us.us.split.us.us
  %.us-phi105 = phi i64 [ %i.ck, %._crit_edge.split.split.us.us ], [ %i.bh, %._crit_edge.split.us.us.split ], [ %i.ae, %._crit_edge.split.us.us.split.us.us ], [ %i.ef, %._crit_edge.split.split ]
  %.us-phi106 = phi i64 [ %.1.lcssa.us111, %._crit_edge.split.split.us.us ], [ %.1.lcssa.us, %._crit_edge.split.us.us.split ], [ %.1.lcssa.us.us, %._crit_edge.split.us.us.split.us.us ], [ %.1.lcssa, %._crit_edge.split.split ]
  %i.ev = sitofp i64 %.us-phi106 to double        ; 2 uses
  %i.ew = fadd double %i.ev, 1.000000e+00
  %i.ex = sitofp i64 %.us-phi105 to double
  %i.ey = fadd double %i.ex, %i.ev
  %i.ez = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.n, i64 noundef 81, ptr noundef nonnull @.str, double noundef %i.ew, double noundef %i.ey) #6 ; 0 uses
  call void @ffpmsg(ptr noundef nonnull %i.n) #6
  %i.fa = load i32, ptr %10, align 4, !tbaa !9
  br label %._crit_edge104

bb.ap:                                            ; preds = %._crit_edge.split.split
  %i.fb = sub nsw i64 %.075101, %i.ef             ; 3 uses
  %.not88 = icmp eq i64 %i.fb, 0
  br i1 %.not88, label %._crit_edge104, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fc = load i64, ptr %i.h, align 8, !tbaa !40
  %i.fd = add nsw i64 %i.fc, %i.ef                ; 2 uses
  store i64 %i.fd, ptr %i.h, align 8, !tbaa !40
  %i.fe = load i64, ptr %i.f, align 8, !tbaa !40
  %i.ff = icmp eq i64 %i.fd, %i.fe
end_hunk_0
begin_hunk_1_@ffgcxuk:bb.a
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !29
  %i.al = sext i32 %1 to i64
  %i.am = getelementptr [160 x i8], ptr %i.ak, i64 %i.al ; 3 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -80
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !31 ; 2 uses
  %i.ap = add i32 %i.ao, -12
  %i.aq = icmp ult i32 %i.ap, -23
  br i1 %i.aq, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @ffpmsg(ptr noundef nonnull @.str.15) #6
  store i32 310, ptr %7, align 4, !tbaa !9
  br label %bb.z

bb.s:                                             ; preds = %bb.q
  %i.ar = add nsw i64 %4, -1                      ; 2 uses
  %i.as = lshr i64 %i.ar, 3                       ; 2 uses
  %i.at = sext i32 %5 to i64
  %i.au = add nsw i64 %4, %i.at                   ; 2 uses
  %i.av = add nsw i64 %i.au, -2
  %i.aw = sdiv i64 %i.av, 8                       ; 2 uses
  %i.ax = sub nsw i64 %i.aw, %i.as
  switch i32 %i.ao, label %.thread [
    i32 1, label %bb.t
    i32 11, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.ay = add nsw i64 %i.au, -1
  %i.az = getelementptr i8, ptr %i.am, i64 -72
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !32
  %i.bb = icmp sgt i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  tail call void @ffpmsg(ptr noundef nonnull @.str.16) #6
  store i32 308, ptr %7, align 4, !tbaa !9
  br label %bb.z

bb.v:                                             ; preds = %bb.s
  %i.bc = shl i64 %i.aw, 32
  %sext = add i64 %i.bc, 4294967296
  %i.bd = ashr exact i64 %sext, 32
  %i.be = getelementptr i8, ptr %i.am, i64 -72
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !32
  %i.bg = icmp sgt i64 %i.bd, %i.bf
  br i1 %i.bg, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  tail call void @ffpmsg(ptr noundef nonnull @.str.16) #6
  store i32 308, ptr %7, align 4, !tbaa !9
  br label %bb.z

.thread:                                          ; preds = %bb.s, %bb.t, %bb.v
  %i.bh = icmp sgt i64 %3, 0
  br i1 %i.bh, label %.lr.ph110, label %._crit_edge111

.lr.ph110:                                        ; preds = %.thread
  %i.bi = shl i64 %i.as, 32
  %sext101 = add i64 %i.bi, 4294967296
  %i.bj = ashr exact i64 %sext101, 32             ; 2 uses
  %i.bk = shl i64 %i.ax, 32
  %sext102 = add i64 %i.bk, 4294967296
  %i.bl = ashr exact i64 %sext102, 32             ; 2 uses
  %i.bm = trunc i64 %i.ar to i32
  %i.bn = and i32 %i.bm, 7
  %.not103106 = icmp eq i32 %5, 0
  br i1 %.not103106, label %.lr.ph110.split.us, label %.lr.ph110.split

.lr.ph110.split.us:                               ; preds = %.lr.ph110, %bb.x
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %bb.x ], [ 0, %.lr.ph110 ] ; 3 uses
  %i.bo = add nuw nsw i64 %indvars.iv115, %2
  %i.bp = call i32 @ffgcvuk(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.bo, i64 noundef %i.bj, i64 noundef %i.bl, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %7) #6
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.split.us, label %bb.x

bb.x:                                             ; preds = %.lr.ph110.split.us
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv115
  store i32 0, ptr %i.br, align 4, !tbaa !9
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next116, %3
  br i1 %exitcond118.not, label %._crit_edge111, label %.lr.ph110.split.us, !llvm.loop !54

.lr.ph110.split:                                  ; preds = %.lr.ph110, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph110 ] ; 3 uses
  %i.bs = add nuw nsw i64 %indvars.iv, %2
  %i.bt = call i32 @ffgcvuk(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %i.bs, i64 noundef %i.bj, i64 noundef %i.bl, i32 noundef 0, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef nonnull %7) #6
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.split.us, label %.lr.ph

.split.us:                                        ; preds = %.lr.ph110.split, %.lr.ph110.split.us
  call void @ffpmsg(ptr noundef nonnull @.str.17) #6
  %i.bv = load i32, ptr %7, align 4, !tbaa !9
  br label %bb.z

.lr.ph:                                           ; preds = %.lr.ph110.split
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph, %bb.y
  %i.bx = phi i32 [ 0, %.lr.ph ], [ %i.ck, %bb.y ]
  %.0108 = phi i32 [ %5, %.lr.ph ], [ %i.ce, %bb.y ] ; 2 uses
  %.087107 = phi i32 [ %i.bn, %.lr.ph ], [ %i.cl, %bb.y ] ; 3 uses
  %i.by = sdiv i32 %.087107, 8
  %i.bz = srem i32 %.087107, 8                    ; 2 uses
  %i.ca = sub nsw i32 8, %i.bz
  %i.cb = call i32 @llvm.smin.i32(i32 %.0108, i32 %i.ca) ; 3 uses
  %i.cc = add i32 %i.bz, %i.cb
  %i.cd = sub i32 8, %i.cc
  %i.ce = sub nsw i32 %.0108, %i.cb               ; 3 uses
  %i.cf = sext i32 %i.by to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !9
  %i.ci = lshr i32 %i.ch, %i.cd
  %i.cj = shl i32 %i.ci, %i.ce
  %i.ck = or i32 %i.cj, %i.bx                     ; 2 uses
  %i.cl = add nsw i32 %i.cb, %.087107
  %.not103 = icmp eq i32 %i.ce, 0
  br i1 %.not103, label %._crit_edge, label %bb.y, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.y
  store i32 %i.ck, ptr %i.bw, align 4, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %3
  br i1 %exitcond.not, label %._crit_edge111, label %.lr.ph110.split, !llvm.loop !54

._crit_edge111:                                   ; preds = %._crit_edge, %bb.x, %.thread
  %i.cm = load i32, ptr %7, align 4, !tbaa !9
  br label %bb.z

bb.z:                                             ; preds = %bb.a, %._crit_edge111, %.split.us, %bb.w, %bb.u, %bb.r, %bb.p, %bb.n, %bb.l, %bb.g, %bb.e, %bb.c
  %.089 = phi i32 [ %i.x, %bb.l ], [ 307, %bb.c ], [ 308, %bb.e ], [ 308, %bb.g ], [ 227, %bb.n ], [ 302, %bb.p ], [ 310, %bb.r ], [ 308, %bb.u ], [ 308, %bb.w ], [ %i.bv, %.split.us ], [ %i.cm, %._crit_edge111 ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.089
}

declare i32 @ffgcvuk(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"long long", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!5, !5, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"", !6, i64 0, !15, i64 8}
!17 = !{!16, !6, i64 0}
!18 = !{!16, !15, i64 8}
!19 = !{!"p1 omnipotent char", !15, i64 0}
!20 = !{!"p1 long long", !15, i64 0}
!21 = !{!"float", !5, i64 0}
!22 = !{!"double", !5, i64 0}
!23 = !{!"p1 int", !15, i64 0}
!24 = !{!"p1 long", !15, i64 0}
!25 = !{!"any p2 pointer", !15, i64 0}
!26 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !19, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !10, i64 40, !10, i64 48, !6, i64 56, !10, i64 64, !10, i64 72, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !20, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !6, i64 144, !5, i64 152, !6, i64 944, !6, i64 948, !10, i64 952, !10, i64 960, !10, i64 968, !15, i64 976, !10, i64 984, !10, i64 992, !6, i64 1000, !5, i64 1008, !21, i64 1056, !6, i64 1060, !6, i64 1064, !6, i64 1068, !6, i64 1072, !21, i64 1076, !6, i64 1080, !6, i64 1084, !5, i64 1088, !21, i64 1136, !6, i64 1140, !6, i64 1144, !6, i64 1148, !5, i64 1152, !6, i64 1164, !6, i64 1168, !5, i64 1176, !11, i64 1224, !11, i64 1232, !6, i64 1240, !6, i64 1244, !6, i64 1248, !6, i64 1252, !6, i64 1256, !6, i64 1260, !22, i64 1264, !22, i64 1272, !22, i64 1280, !22, i64 1288, !22, i64 1296, !6, i64 1304, !6, i64 1308, !6, i64 1312, !21, i64 1316, !6, i64 1320, !23, i64 1328, !24, i64 1336, !23, i64 1344, !25, i64 1352, !25, i64 1360, !23, i64 1368, !19, i64 1376, !5, i64 1384, !5, i64 1704, !5, i64 1864}
!27 = !{!26, !6, i64 84}
!28 = !{!26, !10, i64 136}
!29 = !{!26, !15, i64 976}
!30 = !{!"", !5, i64 0, !10, i64 72, !6, i64 80, !10, i64 88, !22, i64 96, !22, i64 104, !10, i64 112, !5, i64 120, !5, i64 140, !11, i64 152}
!31 = !{!30, !6, i64 80}
!32 = !{!30, !10, i64 88}
!33 = !{!26, !6, i64 88}
!34 = !{!26, !6, i64 944}
!35 = distinct !{!35, !14}
!36 = distinct !{!36, !14}
!37 = distinct !{!37, !14, !41, !42}
!38 = distinct !{!38, !14, !41, !42}
!39 = distinct !{!39, !14, !42, !41}
!40 = !{!10, !10, i64 0}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = !{!"branch_weights", i32 8, i32 8}
!44 = distinct !{!44, !49}
!45 = distinct !{!45, !49}
!46 = !{!26, !10, i64 968}
!47 = !{!30, !10, i64 72}
!48 = !{!26, !10, i64 984}
!49 = !{!"llvm.loop.peeled.count", i32 1}
!50 = distinct !{!50, !14}
!51 = distinct !{!51, !14}
!52 = !{!"short", !5, i64 0}
!53 = !{!52, !52, i64 0}
!54 = distinct !{!54, !14}
!55 = distinct !{!55, !14}
end_hunk_1
