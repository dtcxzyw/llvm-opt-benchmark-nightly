Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/KeccakP-1600-opt64?download=true
inline.NumInlined: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@KeccakP1600_ExtractAndAddBytes:bb.a
  br i1 %.not28.i, label %KeccakP1600_ExtractAndAddLanes.exit.thread59, label %.lr.ph.preheader.i

KeccakP1600_ExtractAndAddLanes.exit.thread59:     ; preds = %bb.b
  %i.i = load i64, ptr %0, align 8, !tbaa !14
  br label %bb.j

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = zext nneg i32 %i.h to i64  ; 7 uses
  %min.iters.check = icmp ult i32 %4, 96
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %i.j = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.j, -32
  %i.k = sub i64 %i.a, %i.c
  %diff.check73 = icmp ugt i64 %i.k, -32
  %conflict.rdx = or i1 %diff.check, %diff.check73
  br i1 %conflict.rdx, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count.i, 536870908  ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %wide.load = load <2 x i64>, ptr %i.l, align 8, !tbaa !14
  %wide.load74 = load <2 x i64>, ptr %i.m, align 8, !tbaa !14
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load75 = load <2 x i64>, ptr %i.n, align 8, !tbaa !14
  %wide.load76 = load <2 x i64>, ptr %i.o, align 8, !tbaa !14
  %i.p = xor <2 x i64> %wide.load75, %wide.load
  %i.q = xor <2 x i64> %wide.load76, %wide.load74
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x i64> %i.p, ptr %i.r, align 8, !tbaa !14
  store <2 x i64> %i.q, ptr %i.s, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter107 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod108.not = icmp eq i64 %xtraiter107, 0
  br i1 %lcmp.mod108.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.prol
  %i.v = load i64, ptr %i.u, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i.prol
  %i.x = load i64, ptr %i.w, align 8, !tbaa !14
  %i.y = xor i64 %i.x, %i.v
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.prol
  store i64 %i.y, ptr %i.z, align 8, !tbaa !14
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter107
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !43

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.aa = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 7 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !14
  %i.ag = xor i64 %i.af, %i.ad
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !14
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !14
  %i.am = xor i64 %i.al, %i.aj
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i
  store i64 %i.am, ptr %i.an, align 8, !tbaa !14
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 3 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.1
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !14
  %i.as = xor i64 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.1
  store i64 %i.as, ptr %i.at, align 8, !tbaa !14
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 3 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.av = load i64, ptr %i.au, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i.2
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !14
  %i.ay = xor i64 %i.ax, %i.av
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i.2
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !14
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %wide.trip.count.i
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !44

._crit_edge.i:                                    ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block
  %.not30.i = icmp eq i32 %i.h, 1
  br i1 %.not30.i, label %KeccakP1600_ExtractAndAddLanes.exit.thread, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !14
  %i.bc = xor i64 %i.bb, -1
  store i64 %i.bc, ptr %i.ba, align 8, !tbaa !14
  %.not.i = icmp eq i32 %i.h, 2
  br i1 %.not.i, label %KeccakP1600_ExtractAndAddLanes.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.bf = xor i64 %i.be, -1
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !14
  %i.bg = icmp ugt i32 %4, 71
  br i1 %i.bg, label %bb.e, label %KeccakP1600_ExtractAndAddLanes.exit

bb.e:                                             ; preds = %bb.d
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !14
  %i.bj = xor i64 %i.bi, -1
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !14
  %i.bk = icmp ugt i32 %4, 103
  br i1 %i.bk, label %bb.f, label %KeccakP1600_ExtractAndAddLanes.exit

bb.f:                                             ; preds = %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !14
  %i.bn = xor i64 %i.bm, -1
  store i64 %i.bn, ptr %i.bl, align 8, !tbaa !14
  %i.bo = icmp ugt i32 %4, 143
  br i1 %i.bo, label %bb.g, label %KeccakP1600_ExtractAndAddLanes.exit

bb.g:                                             ; preds = %bb.f
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 136 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !14
  %i.br = xor i64 %i.bq, -1
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !14
  %i.bs = icmp ugt i32 %4, 167
  br i1 %i.bs, label %bb.h, label %KeccakP1600_ExtractAndAddLanes.exit

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 160 ; 2 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !14
  %i.bv = xor i64 %i.bu, -1
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !14
  br label %KeccakP1600_ExtractAndAddLanes.exit

KeccakP1600_ExtractAndAddLanes.exit.thread:       ; preds = %._crit_edge.i, %bb.c
  %i.bw = and i32 %4, -8
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  %i.ca = and i32 %4, 7
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %wide.trip.count.i
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !14
  br label %bb.i

KeccakP1600_ExtractAndAddLanes.exit:              ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h
  %i.cd = and i32 %4, -8
  %i.ce = zext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce ; 5 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 %i.ce ; 5 uses
  %i.ch = and i32 %4, 7                           ; 5 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %wide.trip.count.i
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !14 ; 5 uses
  switch i32 %i.h, label %bb.j [
    i32 20, label %bb.i
    i32 17, label %bb.i
    i32 12, label %bb.i
    i32 8, label %bb.i
  ]

bb.i:                                             ; preds = %KeccakP1600_ExtractAndAddLanes.exit.thread, %KeccakP1600_ExtractAndAddLanes.exit, %KeccakP1600_ExtractAndAddLanes.exit, %KeccakP1600_ExtractAndAddLanes.exit, %KeccakP1600_ExtractAndAddLanes.exit
  %i.ck = phi i64 [ %i.cc, %KeccakP1600_ExtractAndAddLanes.exit.thread ], [ %i.cj, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.cj, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.cj, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.cj, %KeccakP1600_ExtractAndAddLanes.exit ]
  %i.cl = phi i32 [ %i.ca, %KeccakP1600_ExtractAndAddLanes.exit.thread ], [ %i.ch, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.ch, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.ch, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.ch, %KeccakP1600_ExtractAndAddLanes.exit ]
  %i.cm = phi ptr [ %i.bz, %KeccakP1600_ExtractAndAddLanes.exit.thread ], [ %i.cg, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.cg, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.cg, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.cg, %KeccakP1600_ExtractAndAddLanes.exit ]
  %i.cn = phi ptr [ %i.by, %KeccakP1600_ExtractAndAddLanes.exit.thread ], [ %i.cf, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.cf, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.cf, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.cf, %KeccakP1600_ExtractAndAddLanes.exit ]
  %i.co = xor i64 %i.ck, -1
  br label %bb.j

bb.j:                                             ; preds = %KeccakP1600_ExtractAndAddLanes.exit.thread59, %bb.i, %KeccakP1600_ExtractAndAddLanes.exit
  %i.cp = phi i32 [ %i.cl, %bb.i ], [ %i.ch, %KeccakP1600_ExtractAndAddLanes.exit ], [ %4, %KeccakP1600_ExtractAndAddLanes.exit.thread59 ] ; 4 uses
  %i.cq = phi ptr [ %i.cm, %bb.i ], [ %i.cg, %KeccakP1600_ExtractAndAddLanes.exit ], [ %2, %KeccakP1600_ExtractAndAddLanes.exit.thread59 ] ; 8 uses
  %i.cr = phi ptr [ %i.cn, %bb.i ], [ %i.cf, %KeccakP1600_ExtractAndAddLanes.exit ], [ %1, %KeccakP1600_ExtractAndAddLanes.exit.thread59 ] ; 8 uses
  %.027.i = phi i64 [ %i.co, %bb.i ], [ %i.cj, %KeccakP1600_ExtractAndAddLanes.exit ], [ %i.i, %KeccakP1600_ExtractAndAddLanes.exit.thread59 ]
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = ptrtoaddr ptr %i.cq to i64              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  store i64 %.027.i, ptr %i.e, align 8, !tbaa !14
  %.not.i41 = icmp eq i32 %i.cp, 0
  br i1 %.not.i41, label %KeccakP1600_ExtractAndAddBytesInLane.exit, label %iter.check

iter.check:                                       ; preds = %bb.j
  %wide.trip.count.i43 = zext i32 %i.cp to i64    ; 8 uses
  %min.iters.check82 = icmp ult i32 %i.cp, 4
  br i1 %min.iters.check82, label %.lr.ph.i44.preheader, label %vector.memcheck83

vector.memcheck83:                                ; preds = %iter.check
  %i.cu = sub i64 %i.cs, %i.ct
  %diff.check84 = icmp ugt i64 %i.cu, -32
  %i.cv = sub i64 %i.f, %i.ct
  %diff.check85 = icmp ugt i64 %i.cv, -32
  %conflict.rdx86 = or i1 %diff.check84, %diff.check85
  br i1 %conflict.rdx86, label %.lr.ph.i44.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck83
  %min.iters.check87 = icmp ult i32 %i.cp, 32
  br i1 %min.iters.check87, label %vec.epilog.ph, label %vector.ph88

vector.ph88:                                      ; preds = %vector.main.loop.iter.check
  %i.cw = and i64 %wide.trip.count.i43, 28
  %n.vec89 = and i64 %wide.trip.count.i43, 2147483616 ; 4 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.ph88, %vector.body90
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next96, %vector.body90 ] ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index91 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load92 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !15
  %wide.load93 = load <16 x i8>, ptr %i.cy, align 1, !tbaa !15
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 %index91 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %wide.load94 = load <16 x i8>, ptr %i.cz, align 8, !tbaa !15
  %wide.load95 = load <16 x i8>, ptr %i.da, align 8, !tbaa !15
  %i.db = xor <16 x i8> %wide.load94, %wide.load92
  %i.dc = xor <16 x i8> %wide.load95, %wide.load93
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cq, i64 %index91 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  store <16 x i8> %i.db, ptr %i.dd, align 1, !tbaa !15
  store <16 x i8> %i.dc, ptr %i.de, align 1, !tbaa !15
  %index.next96 = add nuw i64 %index91, 32        ; 2 uses
  %i.df = icmp eq i64 %index.next96, %n.vec89
  br i1 %i.df, label %middle.block97, label %vector.body90, !llvm.loop !45

middle.block97:                                   ; preds = %vector.body90
  %cmp.n98 = icmp eq i64 %n.vec89, %wide.trip.count.i43
  br i1 %cmp.n98, label %KeccakP1600_ExtractAndAddBytesInLane.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block97
  %min.epilog.iters.check = icmp eq i64 %i.cw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i44.preheader, label %vec.epilog.ph, !prof !20

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec89, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec99 = and i64 %wide.trip.count.i43, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index100 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next103, %vec.epilog.vector.body ] ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cr, i64 %index100
  %wide.load101 = load <4 x i8>, ptr %i.dg, align 1, !tbaa !15
  %i.dh = getelementptr inbounds nuw i8, ptr %i.e, i64 %index100
  %wide.load102 = load <4 x i8>, ptr %i.dh, align 4, !tbaa !15
  %i.di = xor <4 x i8> %wide.load102, %wide.load101
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cq, i64 %index100
  store <4 x i8> %i.di, ptr %i.dj, align 1, !tbaa !15
  %index.next103 = add nuw i64 %index100, 4       ; 2 uses
  %i.dk = icmp eq i64 %index.next103, %n.vec99
  br i1 %i.dk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !46

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n104 = icmp eq i64 %n.vec99, %wide.trip.count.i43
  br i1 %cmp.n104, label %KeccakP1600_ExtractAndAddBytesInLane.exit, label %.lr.ph.i44.preheader

.lr.ph.i44.preheader:                             ; preds = %iter.check, %vector.memcheck83, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i45.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck83 ], [ %n.vec89, %vec.epilog.iter.check ], [ %n.vec99, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter109 = and i64 %wide.trip.count.i43, 3  ; 2 uses
  %lcmp.mod110.not = icmp eq i64 %xtraiter109, 0
  br i1 %lcmp.mod110.not, label %.lr.ph.i44.prol.loopexit, label %.lr.ph.i44.prol

.lr.ph.i44.prol:                                  ; preds = %.lr.ph.i44.preheader, %.lr.ph.i44.prol
  %indvars.iv.i45.prol = phi i64 [ %indvars.iv.next.i46.prol, %.lr.ph.i44.prol ], [ %indvars.iv.i45.ph, %.lr.ph.i44.preheader ] ; 4 uses
  %prol.iter111 = phi i64 [ %prol.iter111.next, %.lr.ph.i44.prol ], [ 0, %.lr.ph.i44.preheader ]
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.i45.prol
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !15
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i45.prol
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !15
  %i.dp = xor i8 %i.do, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.i45.prol
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !15
  %indvars.iv.next.i46.prol = add nuw nsw i64 %indvars.iv.i45.prol, 1 ; 2 uses
  %prol.iter111.next = add i64 %prol.iter111, 1   ; 2 uses
  %prol.iter111.cmp.not = icmp eq i64 %prol.iter111.next, %xtraiter109
  br i1 %prol.iter111.cmp.not, label %.lr.ph.i44.prol.loopexit, label %.lr.ph.i44.prol, !llvm.loop !47

.lr.ph.i44.prol.loopexit:                         ; preds = %.lr.ph.i44.prol, %.lr.ph.i44.preheader
  %indvars.iv.i45.unr = phi i64 [ %indvars.iv.i45.ph, %.lr.ph.i44.preheader ], [ %indvars.iv.next.i46.prol, %.lr.ph.i44.prol ]
  %i.dr = sub nsw i64 %indvars.iv.i45.ph, %wide.trip.count.i43
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %KeccakP1600_ExtractAndAddBytesInLane.exit, label %.lr.ph.i44

.lr.ph.i44:                                       ; preds = %.lr.ph.i44.prol.loopexit, %.lr.ph.i44
  %indvars.iv.i45 = phi i64 [ %indvars.iv.next.i46.3, %.lr.ph.i44 ], [ %indvars.iv.i45.unr, %.lr.ph.i44.prol.loopexit ] ; 7 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.i45
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.i45
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !15
  %i.dx = xor i8 %i.dw, %i.du
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.i45
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !15
  %indvars.iv.next.i46 = add nuw nsw i64 %indvars.iv.i45, 1 ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.next.i46
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !15
  %i.eb = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i46
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !15
  %i.ed = xor i8 %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next.i46
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !15
  %indvars.iv.next.i46.1 = add nuw nsw i64 %indvars.iv.i45, 2 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.next.i46.1
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !15
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i46.1
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !15
  %i.ej = xor i8 %i.ei, %i.eg
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next.i46.1
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !15
  %indvars.iv.next.i46.2 = add nuw nsw i64 %indvars.iv.i45, 3 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.cr, i64 %indvars.iv.next.i46.2
  %i.em = load i8, ptr %i.el, align 1, !tbaa !15
  %i.en = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next.i46.2
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !15
  %i.ep = xor i8 %i.eo, %i.em
  %i.eq = getelementptr inbounds nuw i8, ptr %i.cq, i64 %indvars.iv.next.i46.2
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !15
  %indvars.iv.next.i46.3 = add nuw nsw i64 %indvars.iv.i45, 4 ; 2 uses
  %exitcond.not.i47.3 = icmp eq i64 %indvars.iv.next.i46.3, %wide.trip.count.i43
  br i1 %exitcond.not.i47.3, label %KeccakP1600_ExtractAndAddBytesInLane.exit, label %.lr.ph.i44, !llvm.loop !48

KeccakP1600_ExtractAndAddBytesInLane.exit:        ; preds = %.lr.ph.i44.prol.loopexit, %.lr.ph.i44, %middle.block97, %vec.epilog.middle.block, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  br label %.loopexit

bb.k:                                             ; preds = %bb.a
  %.not60 = icmp eq i32 %4, 0
  br i1 %.not60, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.k
  %i.er = and i32 %3, 7
  %i.es = lshr i32 %3, 3
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %KeccakP1600_ExtractAndAddBytesInLane.exit58
  %.03465 = phi ptr [ %i.gd, %KeccakP1600_ExtractAndAddBytesInLane.exit58 ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.03564 = phi ptr [ %i.gc, %KeccakP1600_ExtractAndAddBytesInLane.exit58 ], [ %1, %.lr.ph.preheader ] ; 4 uses
  %.03663 = phi i32 [ 0, %KeccakP1600_ExtractAndAddBytesInLane.exit58 ], [ %i.er, %.lr.ph.preheader ] ; 4 uses
  %.03762 = phi i32 [ %i.gb, %KeccakP1600_ExtractAndAddBytesInLane.exit58 ], [ %i.es, %.lr.ph.preheader ] ; 3 uses
  %.03861 = phi i32 [ %i.ga, %KeccakP1600_ExtractAndAddBytesInLane.exit58 ], [ %4, %.lr.ph.preheader ] ; 2 uses
  %i.et = sub nuw nsw i32 8, %.03663
  %spec.select = tail call i32 @llvm.umin.i32(i32 %i.et, i32 %.03861) ; 4 uses
  %i.eu = zext i32 %.03762 to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !14 ; 2 uses
  switch i32 %.03762, label %.lr.ph.preheader.i51 [
    i32 20, label %bb.l
    i32 17, label %bb.l
    i32 12, label %bb.l
    i32 8, label %bb.l
    i32 2, label %bb.l
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.ex = xor i64 %i.ew, -1
  br label %.lr.ph.preheader.i51

.lr.ph.preheader.i51:                             ; preds = %.lr.ph, %bb.l
  %.027.i49 = phi i64 [ %i.ex, %bb.l ], [ %i.ew, %.lr.ph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  store i64 %.027.i49, ptr %i.d, align 8, !tbaa !14
  %wide.trip.count.i52 = zext nneg i32 %spec.select to i64 ; 4 uses
  %xtraiter = and i64 %wide.trip.count.i52, 1
  %i.ey = icmp eq i32 %spec.select, 1
  br i1 %i.ey, label %.lr.ph.i53.epil.preheader, label %.lr.ph.preheader.i51.new

.lr.ph.preheader.i51.new:                         ; preds = %.lr.ph.preheader.i51
  %unroll_iter = and i64 %wide.trip.count.i52, 14
  br label %.lr.ph.i53

.lr.ph.i53:                                       ; preds = %.lr.ph.i53, %.lr.ph.preheader.i51.new
  %indvars.iv.i54 = phi i64 [ 0, %.lr.ph.preheader.i51.new ], [ %indvars.iv.next.i55.1, %.lr.ph.i53 ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i51.new ], [ %niter.next.1, %.lr.ph.i53 ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.03564, i64 %indvars.iv.i54
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !15
  %i.fb = trunc nuw i64 %indvars.iv.i54 to i32
  %i.fc = add i32 %.03663, %i.fb
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !15
  %i.fg = xor i8 %i.ff, %i.fa
  %i.fh = getelementptr inbounds nuw i8, ptr %.03465, i64 %indvars.iv.i54
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !15
  %indvars.iv.next.i55 = or disjoint i64 %indvars.iv.i54, 1 ; 3 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.03564, i64 %indvars.iv.next.i55
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !15
  %i.fk = trunc nuw i64 %indvars.iv.next.i55 to i32
  %i.fl = add i32 %.03663, %i.fk
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !15
  %i.fp = xor i8 %i.fo, %i.fj
  %i.fq = getelementptr inbounds nuw i8, ptr %.03465, i64 %indvars.iv.next.i55
end_hunk_0
