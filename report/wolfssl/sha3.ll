Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/sha3?download=true
inline.NumInlined: 42
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@Sha3Update:bb.a

vector.memcheck:                                  ; preds = %iter.check
  %i.j = add i64 %i.b, %i.h
  %i.k = sub i64 %i.j, %i.a
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
  %i.ap = sub i32 %2, %spec.select91              ; 2 uses
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
  %i.ay = add i64 %i.b, %.idx.i.i
  %i.az = add i64 %i.ay, 200
  %i.ba = add i64 %i.b, 208
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %i.ba)
  %i.bc = add i64 %i.bb, -201
  %i.bd = sub i64 %i.bc, %i.b                     ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check84 = icmp ult i64 %i.bd, 24
  br i1 %min.iters.check84, label %.lr.ph.i.i.preheader, label %vector.ph85

vector.ph85:                                      ; preds = %bb.d
  %n.vec86 = and i64 %i.bf, 4611686018427387900   ; 3 uses
  %i.bg = shl i64 %n.vec86, 3                     ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.g, i64 %i.bg
  br label %vector.body87

vector.body87:                                    ; preds = %vector.body87, %vector.ph85
  %index88 = phi i64 [ 0, %vector.ph85 ], [ %index.next95, %vector.body87 ] ; 2 uses
  %i.bj = shl i64 %index88, 3                     ; 2 uses
  %next.gep89 = getelementptr i8, ptr %0, i64 %i.bj ; 3 uses
  %next.gep90 = getelementptr i8, ptr %i.g, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep90, i64 16
  %wide.load91 = load <2 x i64>, ptr %next.gep90, align 8, !tbaa !9
  %wide.load92 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !9
  %i.bl = getelementptr i8, ptr %next.gep89, i64 16 ; 2 uses
  %wide.load93 = load <2 x i64>, ptr %next.gep89, align 8, !tbaa !9
  %wide.load94 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !9
  %i.bm = xor <2 x i64> %wide.load93, %wide.load91
  %i.bn = xor <2 x i64> %wide.load94, %wide.load92
  store <2 x i64> %i.bm, ptr %next.gep89, align 8, !tbaa !9
  store <2 x i64> %i.bn, ptr %i.bl, align 8, !tbaa !9
  %index.next95 = add nuw i64 %index88, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next95, %n.vec86
  br i1 %i.bo, label %middle.block96, label %vector.body87, !llvm.loop !25

middle.block96:                                   ; preds = %vector.body87
  %cmp.n97 = icmp eq i64 %i.bf, %n.vec86
  br i1 %cmp.n97, label %xorbuf.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d, %middle.block96
  %.sroa.039.0.i.ph = phi ptr [ %0, %bb.d ], [ %i.bh, %middle.block96 ]
  %.ph205 = phi ptr [ %i.g, %bb.d ], [ %i.bi, %middle.block96 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.039.0.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.sroa.039.0.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bp = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.ph205, %.lr.ph.i.i.preheader ] ; 2 uses
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
  br i1 %i.by, label %._crit_edge.i.thread, label %iter.check65

._crit_edge.i.thread:                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i30.i149 ; 2 uses
  %i.ca = ptrtoaddr ptr %i.bz to i64
  %.0.lcssa.i15421 = ptrtoaddr ptr %i.g to i64    ; 2 uses
  %i.cb = add nuw i64 %.0.lcssa.i15421, 8
  %i.cc = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %i.cb)
  %i.cd = xor i64 %.0.lcssa.i15421, -1
  %i.ce = add i64 %i.cc, %i.cd                    ; 3 uses
  %i.cf = lshr i64 %i.ce, 3
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check23 = icmp ult i64 %i.ce, 136
  br i1 %min.iters.check23, label %.lr.ph.i32.i.preheader, label %vector.memcheck20

vector.memcheck20:                                ; preds = %._crit_edge.i.thread
  %i.ch = and i64 %i.ce, -8
  %i.ci = add i64 %i.ch, 8                        ; 2 uses
  %scevgep.a = getelementptr i8, ptr %0, i64 %i.ci
  %scevgep22 = getelementptr i8, ptr %i.g, i64 %i.ci
  %bound0 = icmp ult ptr %0, %scevgep22
  %bound1 = icmp ult ptr %i.g, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i32.i.preheader, label %vector.ph24

vector.ph24:                                      ; preds = %vector.memcheck20
  %n.vec25 = and i64 %i.cg, 4611686018427387900   ; 3 uses
  %i.cj = shl i64 %n.vec25, 3                     ; 2 uses
  %i.ck = getelementptr i8, ptr %0, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.g, i64 %i.cj
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph24
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next33, %vector.body26 ] ; 2 uses
  %i.cm = shl i64 %index27, 3                     ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cm ; 3 uses
  %next.gep28 = getelementptr i8, ptr %i.g, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep28, i64 16
  %wide.load29 = load <2 x i64>, ptr %next.gep28, align 8, !tbaa !9, !alias.scope !55
  %wide.load30 = load <2 x i64>, ptr %i.cn, align 8, !tbaa !9, !alias.scope !55
  %i.co = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load31 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  %wide.load32 = load <2 x i64>, ptr %i.co, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  %i.cp = xor <2 x i64> %wide.load31, %wide.load29
  %i.cq = xor <2 x i64> %wide.load32, %wide.load30
  store <2 x i64> %i.cp, ptr %next.gep, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  store <2 x i64> %i.cq, ptr %i.co, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  %index.next33 = add nuw i64 %index27, 4         ; 2 uses
  %i.cr = icmp eq i64 %index.next33, %n.vec25
  br i1 %i.cr, label %middle.block34, label %vector.body26, !llvm.loop !30

middle.block34:                                   ; preds = %vector.body26
  %cmp.n35 = icmp eq i64 %i.cg, %n.vec25
  br i1 %cmp.n35, label %xorbuf.exit, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %vector.memcheck20, %._crit_edge.i.thread, %middle.block34
  %.sroa.039.2.i.ph = phi ptr [ %0, %vector.memcheck20 ], [ %0, %._crit_edge.i.thread ], [ %i.ck, %middle.block34 ]
  %.ph206 = phi ptr [ %i.g, %vector.memcheck20 ], [ %i.g, %._crit_edge.i.thread ], [ %i.cl, %middle.block34 ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.cv, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader ] ; 3 uses
  %i.cs = phi ptr [ %i.ct, %.lr.ph.i32.i ], [ %.ph206, %.lr.ph.i32.i.preheader ] ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8 ; 2 uses
  %i.cu = load i64, ptr %i.cs, align 8, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8
  %i.cw = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.cx = xor i64 %i.cw, %i.cu
  store i64 %i.cx, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.cy = icmp ult ptr %i.ct, %i.bz
  br i1 %i.cy, label %.lr.ph.i32.i, label %xorbuf.exit, !llvm.loop !31

iter.check65:                                     ; preds = %bb.e
  %i.cz = zext i8 %.pre137 to i64                 ; 2 uses
  %scevgep39 = getelementptr i8, ptr %0, i64 %i.cz
  %scevgep40 = getelementptr i8, ptr %i.g, i64 %i.cz
  %bound041 = icmp ult ptr %0, %scevgep40
  %bound142 = icmp ult ptr %i.g, %scevgep39
  %found.conflict43 = and i1 %bound041, %bound142
  br i1 %found.conflict43, label %.lr.ph56.i.preheader, label %vector.ph48

vector.ph48:                                      ; preds = %iter.check65
  %i.da = and i64 %.idx.i30.i149, 24
  %n.vec49 = and i64 %.idx.i30.i149, 224          ; 9 uses
  %i.db = getelementptr i8, ptr %i.g, i64 %n.vec49
  %i.dc = getelementptr i8, ptr %0, i64 %n.vec49
  %i.dd = trunc nuw nsw i64 %n.vec49 to i32
  %i.de = sub nsw i32 %.pre138, %i.dd
  %i.df = getelementptr i8, ptr %0, i64 216
  %wide.load54 = load <16 x i8>, ptr %i.g, align 8, !tbaa !15, !alias.scope !57
  %wide.load55 = load <16 x i8>, ptr %i.df, align 8, !tbaa !15, !alias.scope !57
  %i.dg = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %wide.load56 = load <16 x i8>, ptr %0, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load57 = load <16 x i8>, ptr %i.dg, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dh = xor <16 x i8> %wide.load56, %wide.load54
  %i.di = xor <16 x i8> %wide.load57, %wide.load55
  store <16 x i8> %i.dh, ptr %0, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.di, ptr %i.dg, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dj = icmp eq i64 %n.vec49, 32
  br i1 %i.dj, label %middle.block59, label %vector.body50.1

vector.body50.1:                                  ; preds = %vector.ph48
  %next.gep52.1 = getelementptr i8, ptr %0, i64 232
  %next.gep53.1 = getelementptr i8, ptr %0, i64 32 ; 2 uses
  %i.dk = getelementptr i8, ptr %0, i64 248
  %wide.load54.1 = load <16 x i8>, ptr %next.gep52.1, align 8, !tbaa !15, !alias.scope !57
  %wide.load55.1 = load <16 x i8>, ptr %i.dk, align 8, !tbaa !15, !alias.scope !57
  %i.dl = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %wide.load56.1 = load <16 x i8>, ptr %next.gep53.1, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load57.1 = load <16 x i8>, ptr %i.dl, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dm = xor <16 x i8> %wide.load56.1, %wide.load54.1
  %i.dn = xor <16 x i8> %wide.load57.1, %wide.load55.1
  store <16 x i8> %i.dm, ptr %next.gep53.1, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dn, ptr %i.dl, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.do = icmp eq i64 %n.vec49, 64
  br i1 %i.do, label %middle.block59, label %vector.body50.2

vector.body50.2:                                  ; preds = %vector.body50.1
  %next.gep52.2 = getelementptr i8, ptr %0, i64 264
  %next.gep53.2 = getelementptr i8, ptr %0, i64 64 ; 2 uses
  %i.dp = getelementptr i8, ptr %0, i64 280
  %wide.load54.2 = load <16 x i8>, ptr %next.gep52.2, align 8, !tbaa !15, !alias.scope !57
  %wide.load55.2 = load <16 x i8>, ptr %i.dp, align 8, !tbaa !15, !alias.scope !57
  %i.dq = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %wide.load56.2 = load <16 x i8>, ptr %next.gep53.2, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load57.2 = load <16 x i8>, ptr %i.dq, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dr = xor <16 x i8> %wide.load56.2, %wide.load54.2
  %i.ds = xor <16 x i8> %wide.load57.2, %wide.load55.2
  store <16 x i8> %i.dr, ptr %next.gep53.2, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.ds, ptr %i.dq, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dt = icmp eq i64 %n.vec49, 96
  br i1 %i.dt, label %middle.block59, label %vector.body50.3

vector.body50.3:                                  ; preds = %vector.body50.2
  %next.gep52.3 = getelementptr i8, ptr %0, i64 296
  %next.gep53.3 = getelementptr i8, ptr %0, i64 96 ; 2 uses
  %i.du = getelementptr i8, ptr %0, i64 312
  %wide.load54.3 = load <16 x i8>, ptr %next.gep52.3, align 8, !tbaa !15, !alias.scope !57
  %wide.load55.3 = load <16 x i8>, ptr %i.du, align 8, !tbaa !15, !alias.scope !57
  %i.dv = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %wide.load56.3 = load <16 x i8>, ptr %next.gep53.3, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load57.3 = load <16 x i8>, ptr %i.dv, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dw = xor <16 x i8> %wide.load56.3, %wide.load54.3
  %i.dx = xor <16 x i8> %wide.load57.3, %wide.load55.3
  store <16 x i8> %i.dw, ptr %next.gep53.3, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dx, ptr %i.dv, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dy = icmp eq i64 %n.vec49, 128
  br i1 %i.dy, label %middle.block59, label %vector.body50.4

vector.body50.4:                                  ; preds = %vector.body50.3
  %next.gep52.4 = getelementptr i8, ptr %0, i64 328
  %next.gep53.4 = getelementptr i8, ptr %0, i64 128 ; 2 uses
  %i.dz = getelementptr i8, ptr %0, i64 344
  %wide.load54.4 = load <16 x i8>, ptr %next.gep52.4, align 8, !tbaa !15, !alias.scope !57
  %wide.load55.4 = load <16 x i8>, ptr %i.dz, align 8, !tbaa !15, !alias.scope !57
  %i.ea = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %wide.load56.4 = load <16 x i8>, ptr %next.gep53.4, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load57.4 = load <16 x i8>, ptr %i.ea, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.eb = xor <16 x i8> %wide.load56.4, %wide.load54.4
  %i.ec = xor <16 x i8> %wide.load57.4, %wide.load55.4
  store <16 x i8> %i.eb, ptr %next.gep53.4, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.ec, ptr %i.ea, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  br label %middle.block59

middle.block59:                                   ; preds = %vector.body50.4, %vector.body50.3, %vector.body50.2, %vector.body50.1, %vector.ph48
  %cmp.n60 = icmp eq i64 %n.vec49, %.idx.i30.i149
  br i1 %cmp.n60, label %xorbuf.exit, label %vec.epilog.iter.check67

vec.epilog.iter.check67:                          ; preds = %middle.block59
  %min.epilog.iters.check68 = icmp eq i64 %i.da, 0
  br i1 %min.epilog.iters.check68, label %.lr.ph56.i.preheader, label %vec.epilog.vector.body71, !prof !18

.lr.ph56.i.preheader:                             ; preds = %iter.check65, %vec.epilog.iter.check67
  %.254.i.ph = phi ptr [ %i.db, %vec.epilog.iter.check67 ], [ %i.g, %iter.check65 ] ; 2 uses
  %.22453.i.ph = phi ptr [ %i.dc, %vec.epilog.iter.check67 ], [ %0, %iter.check65 ] ; 2 uses
  %.22752.i.ph = phi i32 [ %i.de, %vec.epilog.iter.check67 ], [ %.pre138, %iter.check65 ] ; 4 uses
  %i.ed = add nsw i32 %.22752.i.ph, -1
  %xtraiter210 = and i32 %.22752.i.ph, 3          ; 2 uses
  %lcmp.mod211.not = icmp eq i32 %xtraiter210, 0
  br i1 %lcmp.mod211.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i.prol
  %.254.i.prol = phi ptr [ %i.ee, %.lr.ph56.i.prol ], [ %.254.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %.22453.i.prol = phi ptr [ %i.eg, %.lr.ph56.i.prol ], [ %.22453.i.ph, %.lr.ph56.i.preheader ] ; 3 uses
  %.22752.i.prol = phi i32 [ %i.ej, %.lr.ph56.i.prol ], [ %.22752.i.ph, %.lr.ph56.i.preheader ]
  %prol.iter212 = phi i32 [ %prol.iter212.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader ]
  %i.ee = getelementptr inbounds nuw i8, ptr %.254.i.prol, i64 1 ; 2 uses
  %i.ef = load i8, ptr %.254.i.prol, align 1, !tbaa !15
  %i.eg = getelementptr inbounds nuw i8, ptr %.22453.i.prol, i64 1 ; 2 uses
  %i.eh = load i8, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.ei = xor i8 %i.eh, %i.ef
  store i8 %i.ei, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.ej = add nsw i32 %.22752.i.prol, -1          ; 2 uses
  %prol.iter212.next = add i32 %prol.iter212, 1   ; 2 uses
  %prol.iter212.cmp.not = icmp eq i32 %prol.iter212.next, %xtraiter210
  br i1 %prol.iter212.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !35

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %.254.i.unr = phi ptr [ %.254.i.ph, %.lr.ph56.i.preheader ], [ %i.ee, %.lr.ph56.i.prol ]
  %.22453.i.unr = phi ptr [ %.22453.i.ph, %.lr.ph56.i.preheader ], [ %i.eg, %.lr.ph56.i.prol ]
  %.22752.i.unr = phi i32 [ %.22752.i.ph, %.lr.ph56.i.preheader ], [ %i.ej, %.lr.ph56.i.prol ]
  %i.ek = icmp ult i32 %i.ed, 3
  br i1 %i.ek, label %xorbuf.exit, label %.lr.ph56.i

vec.epilog.vector.body71:                         ; preds = %vec.epilog.iter.check67, %vec.epilog.vector.body71
  %index72 = phi i64 [ %index.next77, %vec.epilog.vector.body71 ], [ %n.vec49, %vec.epilog.iter.check67 ] ; 3 uses
  %next.gep73 = getelementptr i8, ptr %i.g, i64 %index72
  %next.gep74 = getelementptr i8, ptr %0, i64 %index72 ; 2 uses
  %wide.load75 = load <4 x i8>, ptr %next.gep73, align 1, !tbaa !15, !alias.scope !57
  %wide.load76 = load <4 x i8>, ptr %next.gep74, align 1, !tbaa !15, !alias.scope !58, !noalias !57
  %i.el = xor <4 x i8> %wide.load76, %wide.load75
  store <4 x i8> %i.el, ptr %next.gep74, align 1, !tbaa !15, !alias.scope !58, !noalias !57
  %index.next77 = add nuw i64 %index72, 4         ; 2 uses
  %i.em = icmp eq i64 %index.next77, %.idx.i30.i149
  br i1 %i.em, label %xorbuf.exit, label %vec.epilog.vector.body71, !llvm.loop !36

.lr.ph56.i:                                       ; preds = %.lr.ph56.i.prol.loopexit, %.lr.ph56.i
end_hunk_0
begin_hunk_1_@Sha3Update:bb.a

.lr.ph56.i62.prol.loopexit:                       ; preds = %.lr.ph56.i62.prol, %.lr.ph56.i62.preheader
  %.254.i63.unr = phi ptr [ %.254.i63.ph, %.lr.ph56.i62.preheader ], [ %i.js, %.lr.ph56.i62.prol ]
  %.22453.i64.unr = phi ptr [ %.22453.i64.ph, %.lr.ph56.i62.preheader ], [ %i.ju, %.lr.ph56.i62.prol ]
  %.22752.i65.unr = phi i32 [ %.22752.i65.ph, %.lr.ph56.i62.preheader ], [ %i.jx, %.lr.ph56.i62.prol ]
  %i.jy = icmp ult i32 %i.jr, 3
  br i1 %i.jy, label %xorbuf.exit90, label %.lr.ph56.i62

vec.epilog.vector.body162:                        ; preds = %vec.epilog.iter.check158, %vec.epilog.vector.body162
  %index163 = phi i64 [ %index.next168, %vec.epilog.vector.body162 ], [ %n.vec140, %vec.epilog.iter.check158 ] ; 3 uses
  %next.gep164 = getelementptr i8, ptr %.1110, i64 %index163
  %next.gep165 = getelementptr i8, ptr %0, i64 %index163 ; 2 uses
  %wide.load166 = load <4 x i8>, ptr %next.gep164, align 1, !tbaa !15, !alias.scope !63
  %wide.load167 = load <4 x i8>, ptr %next.gep165, align 1, !tbaa !15, !alias.scope !64, !noalias !63
  %i.jz = xor <4 x i8> %wide.load167, %wide.load166
  store <4 x i8> %i.jz, ptr %next.gep165, align 1, !tbaa !15, !alias.scope !64, !noalias !63
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next168, %i.fu
  br i1 %i.ka, label %xorbuf.exit90, label %vec.epilog.vector.body162, !llvm.loop !52

.lr.ph56.i62:                                     ; preds = %.lr.ph56.i62.prol.loopexit, %.lr.ph56.i62
  %.254.i63 = phi ptr [ %i.kq, %.lr.ph56.i62 ], [ %.254.i63.unr, %.lr.ph56.i62.prol.loopexit ] ; 5 uses
  %.22453.i64 = phi ptr [ %i.ks, %.lr.ph56.i62 ], [ %.22453.i64.unr, %.lr.ph56.i62.prol.loopexit ] ; 6 uses
  %.22752.i65 = phi i32 [ %i.kv, %.lr.ph56.i62 ], [ %.22752.i65.unr, %.lr.ph56.i62.prol.loopexit ]
  %i.kb = getelementptr inbounds nuw i8, ptr %.254.i63, i64 1
  %i.kc = load i8, ptr %.254.i63, align 1, !tbaa !15
  %i.kd = getelementptr inbounds nuw i8, ptr %.22453.i64, i64 1 ; 2 uses
  %i.ke = load i8, ptr %.22453.i64, align 1, !tbaa !15
  %i.kf = xor i8 %i.ke, %i.kc
  store i8 %i.kf, ptr %.22453.i64, align 1, !tbaa !15
  %i.kg = getelementptr inbounds nuw i8, ptr %.254.i63, i64 2
  %i.kh = load i8, ptr %i.kb, align 1, !tbaa !15
  %i.ki = getelementptr inbounds nuw i8, ptr %.22453.i64, i64 2 ; 2 uses
  %i.kj = load i8, ptr %i.kd, align 1, !tbaa !15
  %i.kk = xor i8 %i.kj, %i.kh
  store i8 %i.kk, ptr %i.kd, align 1, !tbaa !15
  %i.kl = getelementptr inbounds nuw i8, ptr %.254.i63, i64 3
  %i.km = load i8, ptr %i.kg, align 1, !tbaa !15
  %i.kn = getelementptr inbounds nuw i8, ptr %.22453.i64, i64 3 ; 2 uses
  %i.ko = load i8, ptr %i.ki, align 1, !tbaa !15
  %i.kp = xor i8 %i.ko, %i.km
  store i8 %i.kp, ptr %i.ki, align 1, !tbaa !15
  %i.kq = getelementptr inbounds nuw i8, ptr %.254.i63, i64 4
  %i.kr = load i8, ptr %i.kl, align 1, !tbaa !15
  %i.ks = getelementptr inbounds nuw i8, ptr %.22453.i64, i64 4
  %i.kt = load i8, ptr %i.kn, align 1, !tbaa !15
  %i.ku = xor i8 %i.kt, %i.kr
  store i8 %i.ku, ptr %i.kn, align 1, !tbaa !15
  %i.kv = add nsw i32 %.22752.i65, -4             ; 2 uses
  %.not.i66.3 = icmp eq i32 %i.kv, 0
  br i1 %.not.i66.3, label %xorbuf.exit90, label %.lr.ph56.i62, !llvm.loop !53

xorbuf.exit90:                                    ; preds = %vec.epilog.vector.body162, %.lr.ph56.i62.prol.loopexit, %.lr.ph56.i62, %.lr.ph.i32.i74, %.lr.ph.i.i85, %middle.block150, %middle.block123, %middle.block197
  tail call void @BlockSha3(ptr noundef nonnull %0)
  %i.kw = getelementptr inbounds nuw i8, ptr %.1110, i64 %.idx.i.i83 ; 2 uses
  %i.kx = add nsw i32 %.047112, -1                ; 2 uses
  %.not55 = icmp eq i32 %i.kx, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not55, label %._crit_edge115.loopexit, label %bb.f, !llvm.loop !54

._crit_edge115.loopexit:                          ; preds = %xorbuf.exit90
  %i.ky = zext nneg i8 %3 to i32
  %i.kz = mul nuw nsw i32 %i.fi, %i.ky
  %i.la = shl i32 %i.kz, 3
  %i.lb = sub i32 %.050, %i.la
  br label %._crit_edge115

._crit_edge115:                                   ; preds = %._crit_edge115.loopexit, %._crit_edge136
  %.151.lcssa = phi i32 [ %.050, %._crit_edge136 ], [ %i.lb, %._crit_edge115.loopexit ] ; 3 uses
  %.1.lcssa = phi ptr [ %.049, %._crit_edge136 ], [ %i.kw, %._crit_edge115.loopexit ]
  %.not56 = icmp eq i32 %.151.lcssa, 0
  br i1 %.not56, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge115
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ld = zext i32 %.151.lcssa to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.lc, ptr align 1 %.1.lcssa, i64 %i.ld, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge115
  %i.le = load i8, ptr %i.c, align 8, !tbaa !14
  %i.lf = trunc i32 %.151.lcssa to i8
  %i.lg = add i8 %i.le, %i.lf
  store i8 %i.lg, ptr %i.c, align 8, !tbaa !14
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 -173, 1) i32 @wc_Shake128_Final(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @Sha3Final(ptr noundef %0, i8 noundef zeroext 31, ptr noundef %1, i8 noundef zeroext 21, i32 noundef %2)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(401) %0, i8 0, i64 401, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -173, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @Sha3Final(ptr noundef nonnull %0, i8 noundef zeroext range(i8 6, 32) %1, ptr nofree noundef nonnull writeonly captures(none) %2, i8 noundef zeroext range(i8 9, 22) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = shl nuw i8 %3, 3                         ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !14    ; 3 uses
  %i.f = zext i8 %i.e to i32                      ; 5 uses
  %i.g = ptrtoint ptr %0 to i64                   ; 5 uses
  %i.h = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.i = or i64 %i.h, %i.g
  %i.j = and i64 %i.i, 7
  %or.cond.i = icmp eq i64 %i.j, 0
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = and i32 %i.f, 248
  %.idx.i.i = zext nneg i32 %i.k to i64           ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i.i
  %.not.i.i = icmp ult i8 %i.e, 8
  br i1 %.not.i.i, label %XorWords.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %i.m = add i64 %i.g, %.idx.i.i
  %i.n = add i64 %i.m, 200
  %i.o = add i64 %i.g, 208
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.n, i64 %i.o)
  %i.q = add i64 %i.p, -201
  %i.r = sub i64 %i.q, %i.g                       ; 2 uses
  %i.s = lshr i64 %i.r, 3
  %i.t = add nuw nsw i64 %i.s, 1                  ; 2 uses
  %min.iters.check18 = icmp ult i64 %i.r, 24
  br i1 %min.iters.check18, label %.lr.ph.i.i.preheader72, label %vector.ph19

vector.ph19:                                      ; preds = %.lr.ph.i.i.preheader
  %n.vec20 = and i64 %i.t, 4611686018427387900    ; 3 uses
  %i.u = shl i64 %n.vec20, 3                      ; 2 uses
  %i.v = getelementptr i8, ptr %0, i64 %i.u       ; 2 uses
  %i.w = getelementptr i8, ptr %i.c, i64 %i.u     ; 2 uses
  br label %vector.body21

vector.body21:                                    ; preds = %vector.body21, %vector.ph19
  %index22 = phi i64 [ 0, %vector.ph19 ], [ %index.next29, %vector.body21 ] ; 2 uses
  %i.x = shl i64 %index22, 3                      ; 2 uses
  %next.gep23 = getelementptr i8, ptr %0, i64 %i.x ; 3 uses
  %next.gep24 = getelementptr i8, ptr %i.c, i64 %i.x ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load25 = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !9
  %wide.load26 = load <2 x i64>, ptr %i.y, align 8, !tbaa !9
  %i.z = getelementptr i8, ptr %next.gep23, i64 16 ; 2 uses
  %wide.load27 = load <2 x i64>, ptr %next.gep23, align 8, !tbaa !9
  %wide.load28 = load <2 x i64>, ptr %i.z, align 8, !tbaa !9
  %i.aa = xor <2 x i64> %wide.load27, %wide.load25
  %i.ab = xor <2 x i64> %wide.load28, %wide.load26
  store <2 x i64> %i.aa, ptr %next.gep23, align 8, !tbaa !9
  store <2 x i64> %i.ab, ptr %i.z, align 8, !tbaa !9
  %index.next29 = add nuw i64 %index22, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next29, %n.vec20
  br i1 %i.ac, label %middle.block30, label %vector.body21, !llvm.loop !65

middle.block30:                                   ; preds = %vector.body21
  %cmp.n31 = icmp eq i64 %i.t, %n.vec20
  br i1 %cmp.n31, label %XorWords.exit.i, label %.lr.ph.i.i.preheader72

.lr.ph.i.i.preheader72:                           ; preds = %.lr.ph.i.i.preheader, %middle.block30
  %.sroa.039.0.i.ph = phi ptr [ %0, %.lr.ph.i.i.preheader ], [ %i.v, %middle.block30 ]
  %.ph = phi ptr [ %i.c, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block30 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader72, %.lr.ph.i.i
  %.sroa.039.0.i = phi ptr [ %i.ag, %.lr.ph.i.i ], [ %.sroa.039.0.i.ph, %.lr.ph.i.i.preheader72 ] ; 3 uses
  %i.ad = phi ptr [ %i.ae, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader72 ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.039.0.i, i64 8 ; 2 uses
  %i.ah = load i64, ptr %.sroa.039.0.i, align 8, !tbaa !9
  %i.ai = xor i64 %i.ah, %i.af
  store i64 %i.ai, ptr %.sroa.039.0.i, align 8, !tbaa !9
  %i.aj = icmp ult ptr %i.ae, %i.l
  br i1 %i.aj, label %.lr.ph.i.i, label %XorWords.exit.i, !llvm.loop !66

XorWords.exit.i:                                  ; preds = %.lr.ph.i.i, %middle.block30, %bb.b
  %.sroa.039.1.i = phi ptr [ %0, %bb.b ], [ %i.v, %middle.block30 ], [ %i.ag, %.lr.ph.i.i ]
  %.sroa.0.0.i = phi ptr [ %i.c, %bb.b ], [ %i.w, %middle.block30 ], [ %i.ae, %.lr.ph.i.i ]
  %i.ak = and i32 %i.f, 7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.al = xor i64 %i.h, %i.g
  %i.am = and i64 %i.al, 7
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %._crit_edge.i, label %bb.d

._crit_edge.i:                                    ; preds = %bb.c
  %i.ao = and i32 %i.f, 248
  %.idx.i30.i = zext nneg i32 %i.ao to i64        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx.i30.i
  %.not.i31.i = icmp ult i8 %i.e, 8
  br i1 %.not.i31.i, label %XorWords.exit33.i, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %._crit_edge.i
  %5 = ptrtoaddr ptr %i.c to i64                  ; 3 uses
  %i.aq = add i64 %5, %.idx.i30.i
  %i.ar = add i64 %5, 8
  %i.as = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 %i.ar)
  %i.at = xor i64 %5, -1
  %i.au = add i64 %i.as, %i.at                    ; 3 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 152
  br i1 %min.iters.check, label %.lr.ph.i32.i.preheader75, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i32.i.preheader
  %i.ax = and i64 %i.au, -8
  %i.ay = add i64 %i.ax, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.ay
  %scevgep11 = getelementptr i8, ptr %i.c, i64 %i.ay
  %bound0 = icmp ult ptr %0, %scevgep11
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i32.i.preheader75, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 4611686018427387900     ; 3 uses
  %i.az = shl i64 %n.vec, 3                       ; 2 uses
  %i.ba = getelementptr i8, ptr %0, i64 %i.az     ; 2 uses
  %i.bb = getelementptr i8, ptr %i.c, i64 %i.az   ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.bc ; 3 uses
  %next.gep12 = getelementptr i8, ptr %i.c, i64 %i.bc ; 2 uses
  %i.bd = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep12, align 8, !tbaa !9, !alias.scope !79
  %wide.load13 = load <2 x i64>, ptr %i.bd, align 8, !tbaa !9, !alias.scope !79
  %i.be = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load14 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  %wide.load15 = load <2 x i64>, ptr %i.be, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  %i.bf = xor <2 x i64> %wide.load14, %wide.load
  %i.bg = xor <2 x i64> %wide.load15, %wide.load13
  store <2 x i64> %i.bf, ptr %next.gep, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  store <2 x i64> %i.bg, ptr %i.be, align 8, !tbaa !9, !alias.scope !80, !noalias !79
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %XorWords.exit33.i, label %.lr.ph.i32.i.preheader75

.lr.ph.i32.i.preheader75:                         ; preds = %vector.memcheck, %.lr.ph.i32.i.preheader, %middle.block
  %.sroa.039.2.i.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.i32.i.preheader ], [ %i.ba, %middle.block ]
  %.ph76 = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i32.i.preheader ], [ %i.bb, %middle.block ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader75, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.bl, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader75 ] ; 3 uses
  %i.bi = phi ptr [ %i.bj, %.lr.ph.i32.i ], [ %.ph76, %.lr.ph.i32.i.preheader75 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 3 uses
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8 ; 2 uses
  %i.bm = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.bn = xor i64 %i.bm, %i.bk
  store i64 %i.bn, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.bo = icmp ult ptr %i.bj, %i.ap
  br i1 %i.bo, label %.lr.ph.i32.i, label %XorWords.exit33.i, !llvm.loop !71

XorWords.exit33.i:                                ; preds = %.lr.ph.i32.i, %middle.block, %._crit_edge.i
  %.sroa.039.3.i = phi ptr [ %0, %._crit_edge.i ], [ %i.ba, %middle.block ], [ %i.bl, %.lr.ph.i32.i ]
  %.sroa.0.1.i = phi ptr [ %i.c, %._crit_edge.i ], [ %i.bb, %middle.block ], [ %i.bj, %.lr.ph.i32.i ]
  %i.bp = and i32 %i.f, 7
  br label %bb.d

bb.d:                                             ; preds = %XorWords.exit33.i, %bb.c, %XorWords.exit.i
  %.126.i = phi i32 [ %i.ak, %XorWords.exit.i ], [ %i.bp, %XorWords.exit33.i ], [ %i.f, %bb.c ] ; 9 uses
  %.123.i = phi ptr [ %.sroa.039.1.i, %XorWords.exit.i ], [ %.sroa.039.3.i, %XorWords.exit33.i ], [ %0, %bb.c ] ; 22 uses
  %.1.i = phi ptr [ %.sroa.0.0.i, %XorWords.exit.i ], [ %.sroa.0.1.i, %XorWords.exit33.i ], [ %i.c, %bb.c ] ; 21 uses
  %.not51.i = icmp eq i32 %.126.i, 0
  br i1 %.not51.i, label %xorbuf.exit, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.bq = zext nneg i32 %.126.i to i64            ; 5 uses
  %min.iters.check41 = icmp samesign ult i32 %.126.i, 4
  br i1 %min.iters.check41, label %.lr.ph56.i.preheader, label %vector.memcheck34

vector.memcheck34:                                ; preds = %iter.check
  %i.br = zext nneg i32 %.126.i to i64            ; 2 uses
  %scevgep35 = getelementptr i8, ptr %.123.i, i64 %i.br
  %scevgep36 = getelementptr i8, ptr %.1.i, i64 %i.br
  %bound037 = icmp ult ptr %.123.i, %scevgep36
  %bound138 = icmp ult ptr %.1.i, %scevgep35
  %found.conflict39 = and i1 %bound037, %bound138
  br i1 %found.conflict39, label %.lr.ph56.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck34
  %min.iters.check42 = icmp samesign ult i32 %.126.i, 32
  br i1 %min.iters.check42, label %vec.epilog.ph, label %vector.ph43

vector.ph43:                                      ; preds = %vector.main.loop.iter.check
  %i.bs = and i64 %i.bq, 28
  %n.vec44 = and i64 %i.bq, 224                   ; 11 uses
  %i.bt = getelementptr i8, ptr %.1.i, i64 %n.vec44
  %i.bu = getelementptr i8, ptr %.123.i, i64 %n.vec44
  %i.bv = trunc nuw nsw i64 %n.vec44 to i32
  %i.bw = sub nsw i32 %.126.i, %i.bv
  %i.bx = getelementptr i8, ptr %.1.i, i64 16
  %wide.load49 = load <16 x i8>, ptr %.1.i, align 1, !tbaa !15, !alias.scope !81
  %wide.load50 = load <16 x i8>, ptr %i.bx, align 1, !tbaa !15, !alias.scope !81
  %i.by = getelementptr i8, ptr %.123.i, i64 16   ; 2 uses
  %wide.load51 = load <16 x i8>, ptr %.123.i, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load52 = load <16 x i8>, ptr %i.by, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.bz = xor <16 x i8> %wide.load51, %wide.load49
  %i.ca = xor <16 x i8> %wide.load52, %wide.load50
  store <16 x i8> %i.bz, ptr %.123.i, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.ca, ptr %i.by, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cb = icmp eq i64 %n.vec44, 32
  br i1 %i.cb, label %middle.block54, label %vector.body45.1

vector.body45.1:                                  ; preds = %vector.ph43
  %next.gep47.1 = getelementptr i8, ptr %.1.i, i64 32
  %next.gep48.1 = getelementptr i8, ptr %.123.i, i64 32 ; 2 uses
  %i.cc = getelementptr i8, ptr %.1.i, i64 48
  %wide.load49.1 = load <16 x i8>, ptr %next.gep47.1, align 1, !tbaa !15, !alias.scope !81
  %wide.load50.1 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !15, !alias.scope !81
  %i.cd = getelementptr i8, ptr %.123.i, i64 48   ; 2 uses
  %wide.load51.1 = load <16 x i8>, ptr %next.gep48.1, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load52.1 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.ce = xor <16 x i8> %wide.load51.1, %wide.load49.1
  %i.cf = xor <16 x i8> %wide.load52.1, %wide.load50.1
  store <16 x i8> %i.ce, ptr %next.gep48.1, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.cf, ptr %i.cd, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cg = icmp eq i64 %n.vec44, 64
  br i1 %i.cg, label %middle.block54, label %vector.body45.2

vector.body45.2:                                  ; preds = %vector.body45.1
  %next.gep47.2 = getelementptr i8, ptr %.1.i, i64 64
  %next.gep48.2 = getelementptr i8, ptr %.123.i, i64 64 ; 2 uses
  %i.ch = getelementptr i8, ptr %.1.i, i64 80
  %wide.load49.2 = load <16 x i8>, ptr %next.gep47.2, align 1, !tbaa !15, !alias.scope !81
  %wide.load50.2 = load <16 x i8>, ptr %i.ch, align 1, !tbaa !15, !alias.scope !81
  %i.ci = getelementptr i8, ptr %.123.i, i64 80   ; 2 uses
  %wide.load51.2 = load <16 x i8>, ptr %next.gep48.2, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load52.2 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cj = xor <16 x i8> %wide.load51.2, %wide.load49.2
  %i.ck = xor <16 x i8> %wide.load52.2, %wide.load50.2
  store <16 x i8> %i.cj, ptr %next.gep48.2, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.ck, ptr %i.ci, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cl = icmp eq i64 %n.vec44, 96
  br i1 %i.cl, label %middle.block54, label %vector.body45.3

vector.body45.3:                                  ; preds = %vector.body45.2
  %next.gep47.3 = getelementptr i8, ptr %.1.i, i64 96
  %next.gep48.3 = getelementptr i8, ptr %.123.i, i64 96 ; 2 uses
  %i.cm = getelementptr i8, ptr %.1.i, i64 112
  %wide.load49.3 = load <16 x i8>, ptr %next.gep47.3, align 1, !tbaa !15, !alias.scope !81
  %wide.load50.3 = load <16 x i8>, ptr %i.cm, align 1, !tbaa !15, !alias.scope !81
  %i.cn = getelementptr i8, ptr %.123.i, i64 112  ; 2 uses
  %wide.load51.3 = load <16 x i8>, ptr %next.gep48.3, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load52.3 = load <16 x i8>, ptr %i.cn, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.co = xor <16 x i8> %wide.load51.3, %wide.load49.3
  %i.cp = xor <16 x i8> %wide.load52.3, %wide.load50.3
  store <16 x i8> %i.co, ptr %next.gep48.3, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.cp, ptr %i.cn, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cq = icmp eq i64 %n.vec44, 128
  br i1 %i.cq, label %middle.block54, label %vector.body45.4

vector.body45.4:                                  ; preds = %vector.body45.3
  %next.gep47.4 = getelementptr i8, ptr %.1.i, i64 128
  %next.gep48.4 = getelementptr i8, ptr %.123.i, i64 128 ; 2 uses
  %i.cr = getelementptr i8, ptr %.1.i, i64 144
  %wide.load49.4 = load <16 x i8>, ptr %next.gep47.4, align 1, !tbaa !15, !alias.scope !81
  %wide.load50.4 = load <16 x i8>, ptr %i.cr, align 1, !tbaa !15, !alias.scope !81
  %i.cs = getelementptr i8, ptr %.123.i, i64 144  ; 2 uses
  %wide.load51.4 = load <16 x i8>, ptr %next.gep48.4, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load52.4 = load <16 x i8>, ptr %i.cs, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.ct = xor <16 x i8> %wide.load51.4, %wide.load49.4
  %i.cu = xor <16 x i8> %wide.load52.4, %wide.load50.4
  store <16 x i8> %i.ct, ptr %next.gep48.4, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.cu, ptr %i.cs, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cv = icmp eq i64 %n.vec44, 160
  br i1 %i.cv, label %middle.block54, label %vector.body45.5

vector.body45.5:                                  ; preds = %vector.body45.4
  %next.gep47.5 = getelementptr i8, ptr %.1.i, i64 160
  %next.gep48.5 = getelementptr i8, ptr %.123.i, i64 160 ; 2 uses
  %i.cw = getelementptr i8, ptr %.1.i, i64 176
  %wide.load49.5 = load <16 x i8>, ptr %next.gep47.5, align 1, !tbaa !15, !alias.scope !81
  %wide.load50.5 = load <16 x i8>, ptr %i.cw, align 1, !tbaa !15, !alias.scope !81
  %i.cx = getelementptr i8, ptr %.123.i, i64 176  ; 2 uses
  %wide.load51.5 = load <16 x i8>, ptr %next.gep48.5, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load52.5 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.cy = xor <16 x i8> %wide.load51.5, %wide.load49.5
  %i.cz = xor <16 x i8> %wide.load52.5, %wide.load50.5
  store <16 x i8> %i.cy, ptr %next.gep48.5, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.cz, ptr %i.cx, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.da = icmp eq i64 %n.vec44, 192
  br i1 %i.da, label %middle.block54, label %vector.body45.6

vector.body45.6:                                  ; preds = %vector.body45.5
  %next.gep47.6 = getelementptr i8, ptr %.1.i, i64 192
  %next.gep48.6 = getelementptr i8, ptr %.123.i, i64 192 ; 2 uses
  %i.db = getelementptr i8, ptr %.1.i, i64 208
  %wide.load49.6 = load <16 x i8>, ptr %next.gep47.6, align 1, !tbaa !15, !alias.scope !81
  %wide.load50.6 = load <16 x i8>, ptr %i.db, align 1, !tbaa !15, !alias.scope !81
  %i.dc = getelementptr i8, ptr %.123.i, i64 208  ; 2 uses
  %wide.load51.6 = load <16 x i8>, ptr %next.gep48.6, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %wide.load52.6 = load <16 x i8>, ptr %i.dc, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  %i.dd = xor <16 x i8> %wide.load51.6, %wide.load49.6
  %i.de = xor <16 x i8> %wide.load52.6, %wide.load50.6
  store <16 x i8> %i.dd, ptr %next.gep48.6, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  store <16 x i8> %i.de, ptr %i.dc, align 1, !tbaa !15, !alias.scope !82, !noalias !81
  br label %middle.block54
end_hunk_1
