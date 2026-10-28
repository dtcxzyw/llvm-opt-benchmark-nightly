Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sha3?download=true
inline.NumInlined: 42
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Sha3Update:bb.a

vector.memcheck:                                  ; preds = %iter.check
  %i.j = add i64 %i.a, %i.h
  %i.k = sub i64 %i.j, %i.b
  %i.l = add i64 %i.k, 199
  %diff.check = icmp ult i64 %i.l, 31
  br i1 %diff.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp samesign ult i32 %spec.select91, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.m = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 224          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <16 x i8>, ptr %i.n, align 1, !tbaa !15
  %wide.load14 = load <16 x i8>, ptr %i.o, align 1, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <16 x i8> %wide.load, ptr %i.p, align 1, !tbaa !15
  store <16 x i8> %wide.load14, ptr %i.q, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.m, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !18

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %wide.trip.count, 252        ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.s, align 1, !tbaa !15
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %index16
  store <4 x i8> %wide.load17, ptr %i.t, align 1, !tbaa !15
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.u = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.u, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %n.vec15, %wide.trip.count
  br i1 %cmp.n19, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.prol
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.prol
  store i8 %i.w, ptr %i.x, align 1, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !23

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.y = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.z = icmp ugt i64 %i.y, -4
  br i1 %i.z, label %._crit_edge.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next.1
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !15
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next.2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !15
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %indvars.iv.next.2
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !24

._crit_edge.loopexit:                             ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.pre = load i8, ptr %i.c, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %._crit_edge.loopexit
  %i.am = phi i8 [ %.pre, %._crit_edge.loopexit ], [ %i.d, %bb.b ]
  %i.an = zext nneg i32 %spec.select91 to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an ; 2 uses
  %i.ap = sub nuw i32 %2, %spec.select91          ; 2 uses
  %i.aq = trunc nuw i32 %spec.select91 to i8
  %i.ar = add i8 %i.am, %i.aq                     ; 2 uses
  store i8 %i.ar, ptr %i.c, align 8, !tbaa !14
  %i.as = icmp eq i8 %i.ar, %.pre137
  br i1 %i.as, label %bb.c, label %._crit_edge136

bb.c:                                             ; preds = %._crit_edge
  %i.at = ptrtoint ptr %0 to i64                  ; 2 uses
  %i.au = ptrtoint ptr %i.g to i64                ; 2 uses
  %i.av = or i64 %i.au, %i.at
  %i.aw = and i64 %i.av, 7
  %or.cond.i = icmp eq i64 %i.aw, 0
  br i1 %or.cond.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.idx.i.i = zext i8 %.pre137 to i64             ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i.i
  %i.ay = add i64 %i.a, %.idx.i.i
  %i.az = add i64 %i.ay, 200
  %i.ba = add i64 %i.a, 208
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %i.ba)
  %i.bc = add i64 %i.bb, -201
  %i.bd = sub i64 %i.bc, %i.a                     ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check86 = icmp ult i64 %i.bd, 24
  br i1 %min.iters.check86, label %.lr.ph.i.i.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %bb.d
  %n.vec88 = and i64 %i.bf, 4611686018427387900   ; 3 uses
  %i.bg = shl i64 %n.vec88, 3                     ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.g, i64 %i.bg
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph87
  %index90 = phi i64 [ 0, %vector.ph87 ], [ %index.next97, %vector.body89 ] ; 2 uses
  %i.bj = shl i64 %index90, 3                     ; 2 uses
  %next.gep91 = getelementptr i8, ptr %0, i64 %i.bj ; 3 uses
  %next.gep92 = getelementptr i8, ptr %i.g, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep92, i64 16
  %wide.load93 = load <2 x i64>, ptr %next.gep92, align 8, !tbaa !9
  %wide.load94 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !9
  %i.bl = getelementptr i8, ptr %next.gep91, i64 16 ; 2 uses
  %wide.load95 = load <2 x i64>, ptr %next.gep91, align 8, !tbaa !9
  %wide.load96 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !9
  %i.bm = xor <2 x i64> %wide.load95, %wide.load93
  %i.bn = xor <2 x i64> %wide.load96, %wide.load94
  store <2 x i64> %i.bm, ptr %next.gep91, align 8, !tbaa !9
  store <2 x i64> %i.bn, ptr %i.bl, align 8, !tbaa !9
  %index.next97 = add nuw i64 %index90, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next97, %n.vec88
  br i1 %i.bo, label %middle.block98, label %vector.body89, !llvm.loop !25

middle.block98:                                   ; preds = %vector.body89
  %cmp.n99 = icmp eq i64 %i.bf, %n.vec88
  br i1 %cmp.n99, label %xorbuf.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d, %middle.block98
  %.sroa.039.0.i.ph = phi ptr [ %0, %bb.d ], [ %i.bh, %middle.block98 ]
  %.ph202 = phi ptr [ %i.g, %bb.d ], [ %i.bi, %middle.block98 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.039.0.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.sroa.039.0.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bp = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.ph202, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8 ; 2 uses
  %i.br = load i64, ptr %i.bp, align 8, !tbaa !9
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i, i64 8
  %i.bt = load i64, ptr %.sroa.039.0.i, align 8, !tbaa !9
  %i.bu = xor i64 %i.bt, %i.br
  store i64 %i.bu, ptr %.sroa.039.0.i, align 8, !tbaa !9
  %i.bv = icmp ult ptr %i.bq, %i.ax
  br i1 %i.bv, label %.lr.ph.i.i, label %xorbuf.exit, !llvm.loop !26

bb.e:                                             ; preds = %bb.c
  %i.bw = xor i64 %i.au, %i.at
  %i.bx = and i64 %i.bw, 7
  %i.by = icmp eq i64 %i.bx, 0
  %.idx.i30.i149 = zext i8 %.pre137 to i64        ; 5 uses
  br i1 %i.by, label %._crit_edge.i.thread, label %iter.check66

._crit_edge.i.thread:                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i30.i149 ; 2 uses
  %.0.lcssa.i15423.a = ptrtoaddr ptr %i.g to i64  ; 2 uses
  %i.ca = ptrtoaddr ptr %i.bz to i64
  %i.cb = add nuw i64 %.0.lcssa.i15423.a, 8
  %i.cc = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %i.cb)
  %i.cd = xor i64 %.0.lcssa.i15423.a, -1
  %i.ce = add i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check24 = icmp ult i64 %i.ce, 136
  br i1 %min.iters.check24, label %.lr.ph.i32.i.preheader, label %vector.memcheck25

vector.memcheck25:                                ; preds = %._crit_edge.i.thread
  %i.ch = and i64 %i.ce, -8
  %i.ci = add i64 %i.ch, 8                        ; 2 uses
  %i.cj = getelementptr i8, ptr %0, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.g, i64 %i.ci
  %bound0 = icmp ult ptr %0, %i.ck
  %bound1 = icmp ult ptr %i.g, %i.cj
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i32.i.preheader, label %vector.ph26

vector.ph26:                                      ; preds = %vector.memcheck25
  %n.vec27 = and i64 %i.cg, 4611686018427387900   ; 3 uses
  %i.cl = shl i64 %n.vec27, 3                     ; 2 uses
  %i.cm = getelementptr i8, ptr %0, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.g, i64 %i.cl
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph26
  %index29 = phi i64 [ 0, %vector.ph26 ], [ %index.next35, %vector.body28 ] ; 2 uses
  %i.co = shl i64 %index29, 3                     ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.co ; 3 uses
  %next.gep30 = getelementptr i8, ptr %i.g, i64 %i.co ; 2 uses
  %i.cp = getelementptr i8, ptr %next.gep30, i64 16
  %wide.load31 = load <2 x i64>, ptr %next.gep30, align 8, !tbaa !9, !alias.scope !55
  %wide.load32 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !9, !alias.scope !55
  %i.cq = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load33 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  %wide.load34 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  %i.cr = xor <2 x i64> %wide.load33, %wide.load31
  %i.cs = xor <2 x i64> %wide.load34, %wide.load32
  store <2 x i64> %i.cr, ptr %next.gep, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  store <2 x i64> %i.cs, ptr %i.cq, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  %index.next35 = add nuw i64 %index29, 4         ; 2 uses
  %i.ct = icmp eq i64 %index.next35, %n.vec27
  br i1 %i.ct, label %middle.block36, label %vector.body28, !llvm.loop !30

middle.block36:                                   ; preds = %vector.body28
  %cmp.n37 = icmp eq i64 %i.cg, %n.vec27
  br i1 %cmp.n37, label %xorbuf.exit, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %vector.memcheck25, %._crit_edge.i.thread, %middle.block36
  %.sroa.039.2.i.ph = phi ptr [ %0, %vector.memcheck25 ], [ %0, %._crit_edge.i.thread ], [ %i.cm, %middle.block36 ]
  %.ph203 = phi ptr [ %i.g, %vector.memcheck25 ], [ %i.g, %._crit_edge.i.thread ], [ %i.cn, %middle.block36 ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.cx, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader ] ; 3 uses
  %i.cu = phi ptr [ %i.cv, %.lr.ph.i32.i ], [ %.ph203, %.lr.ph.i32.i.preheader ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8 ; 2 uses
  %i.cw = load i64, ptr %i.cu, align 8, !tbaa !9
  %i.cx = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8
  %i.cy = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.cz = xor i64 %i.cy, %i.cw
  store i64 %i.cz, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.da = icmp ult ptr %i.cv, %i.bz
  br i1 %i.da, label %.lr.ph.i32.i, label %xorbuf.exit, !llvm.loop !31

iter.check66:                                     ; preds = %bb.e
  %i.db = zext i8 %.pre137 to i64                 ; 2 uses
  %i.dc = getelementptr i8, ptr %0, i64 %i.db
  %i.dd = getelementptr i8, ptr %i.g, i64 %i.db
  %bound048 = icmp ult ptr %0, %i.dd
  %bound149 = icmp ult ptr %i.g, %i.dc
  %found.conflict50 = and i1 %bound048, %bound149
  br i1 %found.conflict50, label %.lr.ph56.i.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %iter.check66
  %i.de = and i64 %.idx.i30.i149, 24
  %n.vec54 = and i64 %.idx.i30.i149, 224          ; 9 uses
  %i.df = getelementptr i8, ptr %i.g, i64 %n.vec54
  %i.dg = getelementptr i8, ptr %0, i64 %n.vec54
  %i.dh = trunc nuw nsw i64 %n.vec54 to i32
  %i.di = sub nsw i32 %.pre138, %i.dh
  %i.dj = getelementptr i8, ptr %0, i64 216
  %wide.load59 = load <16 x i8>, ptr %i.g, align 8, !tbaa !15, !alias.scope !57
  %wide.load60 = load <16 x i8>, ptr %i.dj, align 8, !tbaa !15, !alias.scope !57
  %i.dk = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %wide.load61 = load <16 x i8>, ptr %0, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62 = load <16 x i8>, ptr %i.dk, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dl = xor <16 x i8> %wide.load61, %wide.load59
  %i.dm = xor <16 x i8> %wide.load62, %wide.load60
  store <16 x i8> %i.dl, ptr %0, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dm, ptr %i.dk, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dn = icmp eq i64 %n.vec54, 32
  br i1 %i.dn, label %middle.block64, label %vector.body55.1

vector.body55.1:                                  ; preds = %vector.ph53
  %next.gep57.1 = getelementptr i8, ptr %0, i64 232
  %next.gep58.1 = getelementptr i8, ptr %0, i64 32 ; 2 uses
  %i.do = getelementptr i8, ptr %0, i64 248
  %wide.load59.1 = load <16 x i8>, ptr %next.gep57.1, align 8, !tbaa !15, !alias.scope !57
  %wide.load60.1 = load <16 x i8>, ptr %i.do, align 8, !tbaa !15, !alias.scope !57
  %i.dp = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %wide.load61.1 = load <16 x i8>, ptr %next.gep58.1, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62.1 = load <16 x i8>, ptr %i.dp, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dq = xor <16 x i8> %wide.load61.1, %wide.load59.1
  %i.dr = xor <16 x i8> %wide.load62.1, %wide.load60.1
  store <16 x i8> %i.dq, ptr %next.gep58.1, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dr, ptr %i.dp, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ds = icmp eq i64 %n.vec54, 64
  br i1 %i.ds, label %middle.block64, label %vector.body55.2

vector.body55.2:                                  ; preds = %vector.body55.1
  %next.gep57.2 = getelementptr i8, ptr %0, i64 264
  %next.gep58.2 = getelementptr i8, ptr %0, i64 64 ; 2 uses
  %i.dt = getelementptr i8, ptr %0, i64 280
  %wide.load59.2 = load <16 x i8>, ptr %next.gep57.2, align 8, !tbaa !15, !alias.scope !57
  %wide.load60.2 = load <16 x i8>, ptr %i.dt, align 8, !tbaa !15, !alias.scope !57
  %i.du = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %wide.load61.2 = load <16 x i8>, ptr %next.gep58.2, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62.2 = load <16 x i8>, ptr %i.du, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dv = xor <16 x i8> %wide.load61.2, %wide.load59.2
  %i.dw = xor <16 x i8> %wide.load62.2, %wide.load60.2
  store <16 x i8> %i.dv, ptr %next.gep58.2, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dw, ptr %i.du, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dx = icmp eq i64 %n.vec54, 96
  br i1 %i.dx, label %middle.block64, label %vector.body55.3

vector.body55.3:                                  ; preds = %vector.body55.2
  %next.gep57.3 = getelementptr i8, ptr %0, i64 296
  %next.gep58.3 = getelementptr i8, ptr %0, i64 96 ; 2 uses
  %i.dy = getelementptr i8, ptr %0, i64 312
  %wide.load59.3 = load <16 x i8>, ptr %next.gep57.3, align 8, !tbaa !15, !alias.scope !57
  %wide.load60.3 = load <16 x i8>, ptr %i.dy, align 8, !tbaa !15, !alias.scope !57
  %i.dz = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %wide.load61.3 = load <16 x i8>, ptr %next.gep58.3, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62.3 = load <16 x i8>, ptr %i.dz, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ea = xor <16 x i8> %wide.load61.3, %wide.load59.3
  %i.eb = xor <16 x i8> %wide.load62.3, %wide.load60.3
  store <16 x i8> %i.ea, ptr %next.gep58.3, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.eb, ptr %i.dz, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ec = icmp eq i64 %n.vec54, 128
  br i1 %i.ec, label %middle.block64, label %vector.body55.4

vector.body55.4:                                  ; preds = %vector.body55.3
  %next.gep57.4 = getelementptr i8, ptr %0, i64 328
  %next.gep58.4 = getelementptr i8, ptr %0, i64 128 ; 2 uses
  %i.ed = getelementptr i8, ptr %0, i64 344
  %wide.load59.4 = load <16 x i8>, ptr %next.gep57.4, align 8, !tbaa !15, !alias.scope !57
  %wide.load60.4 = load <16 x i8>, ptr %i.ed, align 8, !tbaa !15, !alias.scope !57
  %i.ee = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %wide.load61.4 = load <16 x i8>, ptr %next.gep58.4, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load62.4 = load <16 x i8>, ptr %i.ee, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ef = xor <16 x i8> %wide.load61.4, %wide.load59.4
  %i.eg = xor <16 x i8> %wide.load62.4, %wide.load60.4
  store <16 x i8> %i.ef, ptr %next.gep58.4, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.eg, ptr %i.ee, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  br label %middle.block64

middle.block64:                                   ; preds = %vector.body55.4, %vector.body55.3, %vector.body55.2, %vector.body55.1, %vector.ph53
  %cmp.n65 = icmp eq i64 %n.vec54, %.idx.i30.i149
  br i1 %cmp.n65, label %xorbuf.exit, label %vec.epilog.iter.check67

vec.epilog.iter.check67:                          ; preds = %middle.block64
  %min.epilog.iters.check69 = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check69, label %.lr.ph56.i.preheader, label %vec.epilog.vector.body73, !prof !18

.lr.ph56.i.preheader:                             ; preds = %iter.check66, %vec.epilog.iter.check67
  %.254.i.ph = phi ptr [ %i.df, %vec.epilog.iter.check67 ], [ %i.g, %iter.check66 ] ; 2 uses
  %.22453.i.ph = phi ptr [ %i.dg, %vec.epilog.iter.check67 ], [ %0, %iter.check66 ] ; 2 uses
  %.22752.i.ph = phi i32 [ %i.di, %vec.epilog.iter.check67 ], [ %.pre138, %iter.check66 ] ; 4 uses
  %i.eh = add nsw i32 %.22752.i.ph, -1
  %xtraiter207 = and i32 %.22752.i.ph, 3          ; 2 uses
  %lcmp.mod208.not = icmp eq i32 %xtraiter207, 0
  br i1 %lcmp.mod208.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i.prol
  %.254.i.prol = phi ptr [ %i.ei, %.lr.ph56.i.prol ], [ %.254.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %.22453.i.prol = phi ptr [ %i.ek, %.lr.ph56.i.prol ], [ %.22453.i.ph, %.lr.ph56.i.preheader ] ; 3 uses
  %.22752.i.prol = phi i32 [ %i.en, %.lr.ph56.i.prol ], [ %.22752.i.ph, %.lr.ph56.i.preheader ]
  %prol.iter209 = phi i32 [ %prol.iter209.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.254.i.prol, i64 1 ; 2 uses
  %i.ej = load i8, ptr %.254.i.prol, align 1, !tbaa !15
  %i.ek = getelementptr inbounds nuw i8, ptr %.22453.i.prol, i64 1 ; 2 uses
  %i.el = load i8, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.em = xor i8 %i.el, %i.ej
  store i8 %i.em, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.en = add nsw i32 %.22752.i.prol, -1          ; 2 uses
  %prol.iter209.next = add i32 %prol.iter209, 1   ; 2 uses
  %prol.iter209.cmp.not = icmp eq i32 %prol.iter209.next, %xtraiter207
  br i1 %prol.iter209.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !35

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %.254.i.unr = phi ptr [ %.254.i.ph, %.lr.ph56.i.preheader ], [ %i.ei, %.lr.ph56.i.prol ]
  %.22453.i.unr = phi ptr [ %.22453.i.ph, %.lr.ph56.i.preheader ], [ %i.ek, %.lr.ph56.i.prol ]
  %.22752.i.unr = phi i32 [ %.22752.i.ph, %.lr.ph56.i.preheader ], [ %i.en, %.lr.ph56.i.prol ]
  %i.eo = icmp ult i32 %i.eh, 3
  br i1 %i.eo, label %xorbuf.exit, label %.lr.ph56.i

vec.epilog.vector.body73:                         ; preds = %vec.epilog.iter.check67, %vec.epilog.vector.body73
  %index74 = phi i64 [ %index.next79, %vec.epilog.vector.body73 ], [ %n.vec54, %vec.epilog.iter.check67 ] ; 3 uses
  %next.gep75 = getelementptr i8, ptr %i.g, i64 %index74
  %next.gep76 = getelementptr i8, ptr %0, i64 %index74 ; 2 uses
  %wide.load77 = load <4 x i8>, ptr %next.gep75, align 1, !tbaa !15, !alias.scope !57
end_hunk_0
