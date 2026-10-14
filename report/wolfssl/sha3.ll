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
  %i.ay = add i64 %i.b, %.idx.i.i
  %i.az = add i64 %i.ay, 200
  %i.ba = add i64 %i.b, 208
  %i.bb = tail call i64 @llvm.umax.i64(i64 %i.az, i64 %i.ba)
  %i.bc = add i64 %i.bb, -201
  %i.bd = sub i64 %i.bc, %i.b                     ; 2 uses
  %i.be = lshr i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check88 = icmp ult i64 %i.bd, 24
  br i1 %min.iters.check88, label %.lr.ph.i.i.preheader, label %vector.ph89

vector.ph89:                                      ; preds = %bb.d
  %n.vec90 = and i64 %i.bf, 4611686018427387900   ; 3 uses
  %i.bg = shl i64 %n.vec90, 3                     ; 2 uses
  %i.bh = getelementptr i8, ptr %0, i64 %i.bg
  %i.bi = getelementptr i8, ptr %i.g, i64 %i.bg
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %vector.ph89
  %index92 = phi i64 [ 0, %vector.ph89 ], [ %index.next99, %vector.body91 ] ; 2 uses
  %i.bj = shl i64 %index92, 3                     ; 2 uses
  %next.gep93 = getelementptr i8, ptr %0, i64 %i.bj ; 3 uses
  %next.gep94 = getelementptr i8, ptr %i.g, i64 %i.bj ; 2 uses
  %i.bk = getelementptr i8, ptr %next.gep94, i64 16
  %wide.load95 = load <2 x i64>, ptr %next.gep94, align 8, !tbaa !9
  %wide.load96 = load <2 x i64>, ptr %i.bk, align 8, !tbaa !9
  %i.bl = getelementptr i8, ptr %next.gep93, i64 16 ; 2 uses
  %wide.load97 = load <2 x i64>, ptr %next.gep93, align 8, !tbaa !9
  %wide.load98 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !9
  %i.bm = xor <2 x i64> %wide.load97, %wide.load95
  %i.bn = xor <2 x i64> %wide.load98, %wide.load96
  store <2 x i64> %i.bm, ptr %next.gep93, align 8, !tbaa !9
  store <2 x i64> %i.bn, ptr %i.bl, align 8, !tbaa !9
  %index.next99 = add nuw i64 %index92, 4         ; 2 uses
  %i.bo = icmp eq i64 %index.next99, %n.vec90
  br i1 %i.bo, label %middle.block100, label %vector.body91, !llvm.loop !25

middle.block100:                                  ; preds = %vector.body91
  %cmp.n101 = icmp eq i64 %i.bf, %n.vec90
  br i1 %cmp.n101, label %xorbuf.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d, %middle.block100
  %.sroa.039.0.i.ph = phi ptr [ %0, %bb.d ], [ %i.bh, %middle.block100 ]
  %.ph207 = phi ptr [ %i.g, %bb.d ], [ %i.bi, %middle.block100 ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.sroa.039.0.i = phi ptr [ %i.bs, %.lr.ph.i.i ], [ %.sroa.039.0.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.bp = phi ptr [ %i.bq, %.lr.ph.i.i ], [ %.ph207, %.lr.ph.i.i.preheader ] ; 2 uses
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
  br i1 %i.by, label %._crit_edge.i.thread, label %iter.check69

._crit_edge.i.thread:                             ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 %.idx.i30.i149 ; 2 uses
  %i.ca = ptrtoaddr ptr %i.g to i64               ; 2 uses
  %i.cb = ptrtoaddr ptr %i.bz to i64
  %i.cc = add nuw i64 %i.ca, 8
  %i.cd = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 %i.cc)
  %i.ce = xor i64 %i.ca, -1
  %i.cf = add i64 %i.cd, %i.ce                    ; 3 uses
  %i.cg = lshr i64 %i.cf, 3
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %min.iters.check23 = icmp ult i64 %i.cf, 136
  br i1 %min.iters.check23, label %.lr.ph.i32.i.preheader, label %vector.memcheck24

vector.memcheck24:                                ; preds = %._crit_edge.i.thread
  %i.ci = and i64 %i.cf, -8
  %i.cj = add i64 %i.ci, 8                        ; 2 uses
  %i.ck = getelementptr i8, ptr %0, i64 %i.cj
  %i.cl = getelementptr i8, ptr %i.g, i64 %i.cj
  %bound0 = icmp ult ptr %0, %i.cl
  %bound1 = icmp ult ptr %i.g, %i.ck
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i32.i.preheader, label %vector.ph25

vector.ph25:                                      ; preds = %vector.memcheck24
  %n.vec26 = and i64 %i.ch, 4611686018427387900   ; 3 uses
  %i.cm = shl i64 %n.vec26, 3                     ; 2 uses
  %i.cn = getelementptr i8, ptr %0, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.g, i64 %i.cm
  br label %vector.body27

vector.body27:                                    ; preds = %vector.body27, %vector.ph25
  %index28 = phi i64 [ 0, %vector.ph25 ], [ %index.next34, %vector.body27 ] ; 2 uses
  %i.cp = shl i64 %index28, 3                     ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.cp ; 3 uses
  %next.gep29 = getelementptr i8, ptr %i.g, i64 %i.cp ; 2 uses
  %i.cq = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load30 = load <2 x i64>, ptr %next.gep29, align 8, !tbaa !9, !alias.scope !55
  %wide.load31 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !9, !alias.scope !55
  %i.cr = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load32 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  %wide.load33 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  %i.cs = xor <2 x i64> %wide.load32, %wide.load30
  %i.ct = xor <2 x i64> %wide.load33, %wide.load31
  store <2 x i64> %i.cs, ptr %next.gep, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  store <2 x i64> %i.ct, ptr %i.cr, align 8, !tbaa !9, !alias.scope !56, !noalias !55
  %index.next34 = add nuw i64 %index28, 4         ; 2 uses
  %i.cu = icmp eq i64 %index.next34, %n.vec26
  br i1 %i.cu, label %middle.block35, label %vector.body27, !llvm.loop !30

middle.block35:                                   ; preds = %vector.body27
  %cmp.n36 = icmp eq i64 %i.ch, %n.vec26
  br i1 %cmp.n36, label %xorbuf.exit, label %.lr.ph.i32.i.preheader

.lr.ph.i32.i.preheader:                           ; preds = %vector.memcheck24, %._crit_edge.i.thread, %middle.block35
  %.sroa.039.2.i.ph = phi ptr [ %0, %vector.memcheck24 ], [ %0, %._crit_edge.i.thread ], [ %i.cn, %middle.block35 ]
  %.ph208 = phi ptr [ %i.g, %vector.memcheck24 ], [ %i.g, %._crit_edge.i.thread ], [ %i.co, %middle.block35 ]
  br label %.lr.ph.i32.i

.lr.ph.i32.i:                                     ; preds = %.lr.ph.i32.i.preheader, %.lr.ph.i32.i
  %.sroa.039.2.i = phi ptr [ %i.cy, %.lr.ph.i32.i ], [ %.sroa.039.2.i.ph, %.lr.ph.i32.i.preheader ] ; 3 uses
  %i.cv = phi ptr [ %i.cw, %.lr.ph.i32.i ], [ %.ph208, %.lr.ph.i32.i.preheader ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 8 ; 2 uses
  %i.cx = load i64, ptr %i.cv, align 8, !tbaa !9
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.039.2.i, i64 8
  %i.cz = load i64, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.da = xor i64 %i.cz, %i.cx
  store i64 %i.da, ptr %.sroa.039.2.i, align 8, !tbaa !9
  %i.db = icmp ult ptr %i.cw, %i.bz
  br i1 %i.db, label %.lr.ph.i32.i, label %xorbuf.exit, !llvm.loop !31

iter.check69:                                     ; preds = %bb.e
  %i.dc = zext i8 %.pre137 to i64                 ; 2 uses
  %i.dd = getelementptr i8, ptr %0, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.g, i64 %i.dc
  %bound047 = icmp ult ptr %0, %i.de
  %bound148 = icmp ult ptr %i.g, %i.dd
  %found.conflict49 = and i1 %bound047, %bound148
  br i1 %found.conflict49, label %.lr.ph56.i.preheader, label %vector.ph52

vector.ph52:                                      ; preds = %iter.check69
  %i.df = and i64 %.idx.i30.i149, 24
  %n.vec53 = and i64 %.idx.i30.i149, 224          ; 9 uses
  %i.dg = getelementptr i8, ptr %i.g, i64 %n.vec53
  %i.dh = getelementptr i8, ptr %0, i64 %n.vec53
  %i.di = trunc nuw nsw i64 %n.vec53 to i32
  %i.dj = sub nsw i32 %.pre138, %i.di
  %i.dk = getelementptr i8, ptr %0, i64 216
  %wide.load58 = load <16 x i8>, ptr %i.g, align 8, !tbaa !15, !alias.scope !57
  %wide.load59 = load <16 x i8>, ptr %i.dk, align 8, !tbaa !15, !alias.scope !57
  %i.dl = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %wide.load60 = load <16 x i8>, ptr %0, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load61 = load <16 x i8>, ptr %i.dl, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dm = xor <16 x i8> %wide.load60, %wide.load58
  %i.dn = xor <16 x i8> %wide.load61, %wide.load59
  store <16 x i8> %i.dm, ptr %0, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dn, ptr %i.dl, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.do = icmp eq i64 %n.vec53, 32
  br i1 %i.do, label %middle.block63, label %vector.body54.1

vector.body54.1:                                  ; preds = %vector.ph52
  %next.gep56.1 = getelementptr i8, ptr %0, i64 232
  %next.gep57.1 = getelementptr i8, ptr %0, i64 32 ; 2 uses
  %i.dp = getelementptr i8, ptr %0, i64 248
  %wide.load58.1 = load <16 x i8>, ptr %next.gep56.1, align 8, !tbaa !15, !alias.scope !57
  %wide.load59.1 = load <16 x i8>, ptr %i.dp, align 8, !tbaa !15, !alias.scope !57
  %i.dq = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %wide.load60.1 = load <16 x i8>, ptr %next.gep57.1, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load61.1 = load <16 x i8>, ptr %i.dq, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dr = xor <16 x i8> %wide.load60.1, %wide.load58.1
  %i.ds = xor <16 x i8> %wide.load61.1, %wide.load59.1
  store <16 x i8> %i.dr, ptr %next.gep57.1, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.ds, ptr %i.dq, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dt = icmp eq i64 %n.vec53, 64
  br i1 %i.dt, label %middle.block63, label %vector.body54.2

vector.body54.2:                                  ; preds = %vector.body54.1
  %next.gep56.2 = getelementptr i8, ptr %0, i64 264
  %next.gep57.2 = getelementptr i8, ptr %0, i64 64 ; 2 uses
  %i.du = getelementptr i8, ptr %0, i64 280
  %wide.load58.2 = load <16 x i8>, ptr %next.gep56.2, align 8, !tbaa !15, !alias.scope !57
  %wide.load59.2 = load <16 x i8>, ptr %i.du, align 8, !tbaa !15, !alias.scope !57
  %i.dv = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %wide.load60.2 = load <16 x i8>, ptr %next.gep57.2, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load61.2 = load <16 x i8>, ptr %i.dv, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dw = xor <16 x i8> %wide.load60.2, %wide.load58.2
  %i.dx = xor <16 x i8> %wide.load61.2, %wide.load59.2
  store <16 x i8> %i.dw, ptr %next.gep57.2, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.dx, ptr %i.dv, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.dy = icmp eq i64 %n.vec53, 96
  br i1 %i.dy, label %middle.block63, label %vector.body54.3

vector.body54.3:                                  ; preds = %vector.body54.2
  %next.gep56.3 = getelementptr i8, ptr %0, i64 296
  %next.gep57.3 = getelementptr i8, ptr %0, i64 96 ; 2 uses
  %i.dz = getelementptr i8, ptr %0, i64 312
  %wide.load58.3 = load <16 x i8>, ptr %next.gep56.3, align 8, !tbaa !15, !alias.scope !57
  %wide.load59.3 = load <16 x i8>, ptr %i.dz, align 8, !tbaa !15, !alias.scope !57
  %i.ea = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %wide.load60.3 = load <16 x i8>, ptr %next.gep57.3, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load61.3 = load <16 x i8>, ptr %i.ea, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.eb = xor <16 x i8> %wide.load60.3, %wide.load58.3
  %i.ec = xor <16 x i8> %wide.load61.3, %wide.load59.3
  store <16 x i8> %i.eb, ptr %next.gep57.3, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.ec, ptr %i.ea, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.ed = icmp eq i64 %n.vec53, 128
  br i1 %i.ed, label %middle.block63, label %vector.body54.4

vector.body54.4:                                  ; preds = %vector.body54.3
  %next.gep56.4 = getelementptr i8, ptr %0, i64 328
  %next.gep57.4 = getelementptr i8, ptr %0, i64 128 ; 2 uses
  %i.ee = getelementptr i8, ptr %0, i64 344
  %wide.load58.4 = load <16 x i8>, ptr %next.gep56.4, align 8, !tbaa !15, !alias.scope !57
  %wide.load59.4 = load <16 x i8>, ptr %i.ee, align 8, !tbaa !15, !alias.scope !57
  %i.ef = getelementptr i8, ptr %0, i64 144       ; 2 uses
  %wide.load60.4 = load <16 x i8>, ptr %next.gep57.4, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %wide.load61.4 = load <16 x i8>, ptr %i.ef, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  %i.eg = xor <16 x i8> %wide.load60.4, %wide.load58.4
  %i.eh = xor <16 x i8> %wide.load61.4, %wide.load59.4
  store <16 x i8> %i.eg, ptr %next.gep57.4, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  store <16 x i8> %i.eh, ptr %i.ef, align 8, !tbaa !15, !alias.scope !58, !noalias !57
  br label %middle.block63

middle.block63:                                   ; preds = %vector.body54.4, %vector.body54.3, %vector.body54.2, %vector.body54.1, %vector.ph52
  %cmp.n64 = icmp eq i64 %n.vec53, %.idx.i30.i149
  br i1 %cmp.n64, label %xorbuf.exit, label %vec.epilog.iter.check71

vec.epilog.iter.check71:                          ; preds = %middle.block63
  %min.epilog.iters.check72 = icmp eq i64 %i.df, 0
  br i1 %min.epilog.iters.check72, label %.lr.ph56.i.preheader, label %vec.epilog.vector.body75, !prof !18

.lr.ph56.i.preheader:                             ; preds = %iter.check69, %vec.epilog.iter.check71
  %.254.i.ph = phi ptr [ %i.dg, %vec.epilog.iter.check71 ], [ %i.g, %iter.check69 ] ; 2 uses
  %.22453.i.ph = phi ptr [ %i.dh, %vec.epilog.iter.check71 ], [ %0, %iter.check69 ] ; 2 uses
  %.22752.i.ph = phi i32 [ %i.dj, %vec.epilog.iter.check71 ], [ %.pre138, %iter.check69 ] ; 4 uses
  %i.ei = add nsw i32 %.22752.i.ph, -1
  %xtraiter212 = and i32 %.22752.i.ph, 3          ; 2 uses
  %lcmp.mod213.not = icmp eq i32 %xtraiter212, 0
  br i1 %lcmp.mod213.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol

.lr.ph56.i.prol:                                  ; preds = %.lr.ph56.i.preheader, %.lr.ph56.i.prol
  %.254.i.prol = phi ptr [ %i.ej, %.lr.ph56.i.prol ], [ %.254.i.ph, %.lr.ph56.i.preheader ] ; 2 uses
  %.22453.i.prol = phi ptr [ %i.el, %.lr.ph56.i.prol ], [ %.22453.i.ph, %.lr.ph56.i.preheader ] ; 3 uses
  %.22752.i.prol = phi i32 [ %i.eo, %.lr.ph56.i.prol ], [ %.22752.i.ph, %.lr.ph56.i.preheader ]
  %prol.iter214 = phi i32 [ %prol.iter214.next, %.lr.ph56.i.prol ], [ 0, %.lr.ph56.i.preheader ]
  %i.ej = getelementptr inbounds nuw i8, ptr %.254.i.prol, i64 1 ; 2 uses
  %i.ek = load i8, ptr %.254.i.prol, align 1, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %.22453.i.prol, i64 1 ; 2 uses
  %i.em = load i8, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.en = xor i8 %i.em, %i.ek
  store i8 %i.en, ptr %.22453.i.prol, align 1, !tbaa !15
  %i.eo = add nsw i32 %.22752.i.prol, -1          ; 2 uses
  %prol.iter214.next = add i32 %prol.iter214, 1   ; 2 uses
  %prol.iter214.cmp.not = icmp eq i32 %prol.iter214.next, %xtraiter212
  br i1 %prol.iter214.cmp.not, label %.lr.ph56.i.prol.loopexit, label %.lr.ph56.i.prol, !llvm.loop !35

.lr.ph56.i.prol.loopexit:                         ; preds = %.lr.ph56.i.prol, %.lr.ph56.i.preheader
  %.254.i.unr = phi ptr [ %.254.i.ph, %.lr.ph56.i.preheader ], [ %i.ej, %.lr.ph56.i.prol ]
  %.22453.i.unr = phi ptr [ %.22453.i.ph, %.lr.ph56.i.preheader ], [ %i.el, %.lr.ph56.i.prol ]
  %.22752.i.unr = phi i32 [ %.22752.i.ph, %.lr.ph56.i.preheader ], [ %i.eo, %.lr.ph56.i.prol ]
  %i.ep = icmp ult i32 %i.ei, 3
  br i1 %i.ep, label %xorbuf.exit, label %.lr.ph56.i

vec.epilog.vector.body75:                         ; preds = %vec.epilog.iter.check71, %vec.epilog.vector.body75
  %index76 = phi i64 [ %index.next81, %vec.epilog.vector.body75 ], [ %n.vec53, %vec.epilog.iter.check71 ] ; 3 uses
  %next.gep77 = getelementptr i8, ptr %i.g, i64 %index76
  %next.gep78 = getelementptr i8, ptr %0, i64 %index76 ; 2 uses
  %wide.load79 = load <4 x i8>, ptr %next.gep77, align 1, !tbaa !15, !alias.scope !57
end_hunk_0
