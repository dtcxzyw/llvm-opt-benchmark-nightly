inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0_@VerticalUnfilter_SSE2:bb.a
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = icmp eq ptr %0, null
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !9       ; 2 uses
  store i8 %i.e, ptr %2, align 1, !tbaa !9
  %i.f = icmp slt i32 %3, 2
  br i1 %i.f, label %HorizontalUnfilter_SSE2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not38.i = icmp samesign ult i32 %3, 9
  br i1 %.not38.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.g = zext i8 %i.e to i32
  %i.h = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.g, i64 0
  %i.i = bitcast <4 x i32> %i.h to <2 x i64>
  %i.j = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.k = add nsw i32 %3, -9
  %i.l = and i32 %i.k, -8
  %i.m = add nuw nsw i32 %i.l, 9
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.c
  %.0.lcssa.i = phi i32 [ 1, %bb.c ], [ %i.m, %.preheader.loopexit.i ] ; 4 uses
  %i.n = icmp samesign ult i32 %.0.lcssa.i, %3
  br i1 %i.n, label %.lr.ph42.preheader.i, label %HorizontalUnfilter_SSE2.exit

.lr.ph42.preheader.i:                             ; preds = %.preheader.i
  %i.o = zext i32 %.0.lcssa.i to i64              ; 3 uses
  %i.p = getelementptr i8, ptr %2, i64 %i.o
  %scevgep = getelementptr i8, ptr %i.p, i64 -1
  %load_initial = load i8, ptr %scevgep, align 1  ; 2 uses
  %i.q = sub nuw i32 %3, %.0.lcssa.i
  %xtraiter65 = and i32 %i.q, 3                   ; 2 uses
  %lcmp.mod66.not = icmp eq i32 %xtraiter65, 0
  br i1 %lcmp.mod66.not, label %.lr.ph42.i.prol.loopexit, label %.lr.ph42.i.prol

.lr.ph42.i.prol:                                  ; preds = %.lr.ph42.preheader.i, %.lr.ph42.i.prol
  %store_forwarded.prol = phi i8 [ %i.u, %.lr.ph42.i.prol ], [ %load_initial, %.lr.ph42.preheader.i ]
  %indvars.iv48.i.prol = phi i64 [ %indvars.iv.next49.i.prol, %.lr.ph42.i.prol ], [ %i.o, %.lr.ph42.preheader.i ] ; 3 uses
  %prol.iter67 = phi i32 [ %prol.iter67.next, %.lr.ph42.i.prol ], [ 0, %.lr.ph42.preheader.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv48.i.prol
  %i.s = load i8, ptr %i.r, align 1, !tbaa !9
  %i.t = getelementptr i8, ptr %2, i64 %indvars.iv48.i.prol
  %i.u = add i8 %store_forwarded.prol, %i.s       ; 3 uses
  store i8 %i.u, ptr %i.t, align 1, !tbaa !9
  %indvars.iv.next49.i.prol = add nuw nsw i64 %indvars.iv48.i.prol, 1 ; 2 uses
  %prol.iter67.next = add i32 %prol.iter67, 1     ; 2 uses
  %prol.iter67.cmp.not = icmp eq i32 %prol.iter67.next, %xtraiter65
  br i1 %prol.iter67.cmp.not, label %.lr.ph42.i.prol.loopexit, label %.lr.ph42.i.prol, !llvm.loop !15

.lr.ph42.i.prol.loopexit:                         ; preds = %.lr.ph42.i.prol, %.lr.ph42.preheader.i
  %store_forwarded.unr = phi i8 [ %load_initial, %.lr.ph42.preheader.i ], [ %i.u, %.lr.ph42.i.prol ]
  %indvars.iv48.i.unr = phi i64 [ %i.o, %.lr.ph42.preheader.i ], [ %indvars.iv.next49.i.prol, %.lr.ph42.i.prol ]
  %i.v = sub i32 %.0.lcssa.i, %3
  %i.w = icmp ugt i32 %i.v, -4
  br i1 %i.w, label %HorizontalUnfilter_SSE2.exit, label %.lr.ph42.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv43.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next44.i, %.lr.ph.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 9, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %.03439.i = phi <2 x i64> [ %i.i, %.lr.ph.preheader.i ], [ %i.am, %.lr.ph.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv43.i
  %i.y = load i64, ptr %i.x, align 1, !tbaa !9
  %i.z = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.y, i64 0
  %i.aa = bitcast <2 x i64> %i.z to <16 x i8>
  %i.ab = bitcast <2 x i64> %.03439.i to <16 x i8>
  %i.ac = add <16 x i8> %i.aa, %i.ab              ; 2 uses
  %i.ad = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.ac, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.ae = add <16 x i8> %i.ad, %i.ac              ; 2 uses
  %i.af = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0>, <16 x i8> %i.ae, <16 x i32> <i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29>
  %i.ag = add <16 x i8> %i.af, %i.ae              ; 2 uses
  %i.ah = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0>, <16 x i8> %i.ag, <16 x i32> <i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27>
  %i.ai = add <16 x i8> %i.ah, %i.ag
  %i.aj = bitcast <16 x i8> %i.ai to <2 x i64>    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv43.i
  %i.al = extractelement <2 x i64> %i.aj, i64 0
  store i64 %i.al, ptr %i.ak, align 1, !tbaa !9
  %i.am = lshr <2 x i64> %i.aj, splat (i64 56)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i, %i.j
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 8
  br i1 %.not.i, label %.preheader.loopexit.i, label %.lr.ph.i, !llvm.loop !12

.lr.ph42.i:                                       ; preds = %.lr.ph42.i.prol.loopexit, %.lr.ph42.i
  %store_forwarded = phi i8 [ %i.bc, %.lr.ph42.i ], [ %store_forwarded.unr, %.lr.ph42.i.prol.loopexit ]
  %indvars.iv48.i = phi i64 [ %indvars.iv.next49.i.3, %.lr.ph42.i ], [ %indvars.iv48.i.unr, %.lr.ph42.i.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv48.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !9
  %i.ap = getelementptr i8, ptr %2, i64 %indvars.iv48.i
  %i.aq = add i8 %store_forwarded, %i.ao          ; 2 uses
  store i8 %i.aq, ptr %i.ap, align 1, !tbaa !9
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next49.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !9
  %i.at = getelementptr i8, ptr %2, i64 %indvars.iv.next49.i
  %i.au = add i8 %i.aq, %i.as                     ; 2 uses
  store i8 %i.au, ptr %i.at, align 1, !tbaa !9
  %indvars.iv.next49.i.1 = add nuw nsw i64 %indvars.iv48.i, 2 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next49.i.1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !9
  %i.ax = getelementptr i8, ptr %2, i64 %indvars.iv.next49.i.1
  %i.ay = add i8 %i.au, %i.aw                     ; 2 uses
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !9
  %indvars.iv.next49.i.2 = add nuw nsw i64 %indvars.iv48.i, 3 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next49.i.2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !9
  %i.bb = getelementptr i8, ptr %2, i64 %indvars.iv.next49.i.2
  %i.bc = add i8 %i.ay, %i.ba                     ; 2 uses
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !9
  %indvars.iv.next49.i.3 = add nuw nsw i64 %indvars.iv48.i, 4 ; 2 uses
  %i.bd = trunc nuw i64 %indvars.iv.next49.i.3 to i32
  %i.be = icmp sgt i32 %3, %i.bd
  br i1 %i.be, label %.lr.ph42.i, label %HorizontalUnfilter_SSE2.exit, !llvm.loop !14

bb.d:                                             ; preds = %bb.a
  %i.bf = icmp sgt i32 %3, 31
  br i1 %i.bf, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bg = zext nneg i32 %3 to i64
  %i.bh = add nsw i64 %i.bg, -32                  ; 2 uses
  %i.bi = lshr i64 %i.bh, 5                       ; 2 uses
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %i.bk = icmp eq i64 %i.bi, 0
  br i1 %i.bk, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.bj, 1152921504606846974
  br label %.lr.ph

.preheader.loopexit.unr-lcssa:                    ; preds = %.lr.ph
  %i.bl = and i64 %i.bh, 32
  %lcmp.mod.not.not = icmp eq i64 %i.bl, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.epil.preheader, label %.preheader.loopexit

.lr.ph.epil.preheader:                            ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ] ; 5 uses
  %lcmp.mod62 = trunc i64 %i.bj to i1
  tail call void @llvm.assume(i1 %lcmp.mod62)
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.epil.init
  %i.bn = load <16 x i8>, ptr %i.bm, align 1, !tbaa !9
  %i.bo = or disjoint i64 %indvars.iv.epil.init, 16 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 %i.bo
  %i.bq = load <16 x i8>, ptr %i.bp, align 1, !tbaa !9
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.epil.init
  %i.bs = load <16 x i8>, ptr %i.br, align 1, !tbaa !9
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo
  %i.bu = load <16 x i8>, ptr %i.bt, align 1, !tbaa !9
  %i.bv = add <16 x i8> %i.bs, %i.bn
  %i.bw = add <16 x i8> %i.bu, %i.bq
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.epil.init
  store <16 x i8> %i.bv, ptr %i.bx, align 1, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %i.bo
  store <16 x i8> %i.bw, ptr %i.by, align 1, !tbaa !9
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil.init, 32
  br label %.preheader.loopexit

.preheader.loopexit:                              ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.epil.preheader
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ], [ %indvars.iv.next.epil, %.lr.ph.epil.preheader ]
  %i.bz = trunc nuw nsw i64 %indvars.iv.next.lcssa to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.d
  %.0.lcssa = phi i32 [ 0, %bb.d ], [ %i.bz, %.preheader.loopexit ] ; 2 uses
  %i.ca = icmp slt i32 %.0.lcssa, %3
  br i1 %i.ca, label %iter.check, label %HorizontalUnfilter_SSE2.exit

iter.check:                                       ; preds = %.preheader
  %i.cb = zext i32 %.0.lcssa to i64               ; 7 uses
  %wide.trip.count = zext nneg i32 %3 to i64      ; 4 uses
  %i.cc = sub nsw i64 %wide.trip.count, %i.cb     ; 7 uses
  %min.iters.check = icmp ult i64 %i.cc, 8
  br i1 %min.iters.check, label %.lr.ph38.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.cd = sub i64 %i.b, %i.c
  %diff.check = icmp ugt i64 %i.cd, -32
  %i.ce = sub i64 %i.a, %i.c
  %diff.check47 = icmp ugt i64 %i.ce, -32
  %conflict.rdx = or i1 %diff.check, %diff.check47
  br i1 %conflict.rdx, label %.lr.ph38.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check48 = icmp ult i64 %i.cc, 32
  br i1 %min.iters.check48, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cc, 24
  %n.vec = and i64 %i.cc, -32                     ; 4 uses
  %i.cf = add nsw i64 %n.vec, %i.cb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cg = add nuw i64 %index, %i.cb               ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %wide.load = load <16 x i8>, ptr %i.ch, align 1, !tbaa !9
  %wide.load49 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %i.cg ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load50 = load <16 x i8>, ptr %i.cj, align 1, !tbaa !9
  %wide.load51 = load <16 x i8>, ptr %i.ck, align 1, !tbaa !9
  %i.cl = add <16 x i8> %wide.load50, %wide.load
  %i.cm = add <16 x i8> %wide.load51, %wide.load49
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 %i.cg ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <16 x i8> %i.cl, ptr %i.cn, align 1, !tbaa !9
  store <16 x i8> %i.cm, ptr %i.co, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cc, %n.vec
  br i1 %cmp.n, label %HorizontalUnfilter_SSE2.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph38.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec53 = and i64 %i.cc, -8                    ; 3 uses
  %i.cq = add nsw i64 %n.vec53, %i.cb
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index54 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next57, %vec.epilog.vector.body ] ; 2 uses
  %i.cr = add nuw i64 %index54, %i.cb             ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 %i.cr
  %wide.load55 = load <8 x i8>, ptr %i.cs, align 1, !tbaa !9
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 %i.cr
  %wide.load56 = load <8 x i8>, ptr %i.ct, align 1, !tbaa !9
  %i.cu = add <8 x i8> %wide.load56, %wide.load55
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr
  store <8 x i8> %i.cu, ptr %i.cv, align 1, !tbaa !9
  %index.next57 = add nuw i64 %index54, 8         ; 2 uses
  %i.cw = icmp eq i64 %index.next57, %n.vec53
  br i1 %i.cw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !20

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n58 = icmp eq i64 %i.cc, %n.vec53
  br i1 %cmp.n58, label %HorizontalUnfilter_SSE2.exit, label %.lr.ph38.preheader

.lr.ph38.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv41.ph = phi i64 [ %i.cb, %iter.check ], [ %i.cb, %vector.memcheck ], [ %i.cf, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ] ; 4 uses
  %i.cx = sub nsw i64 %wide.trip.count, %indvars.iv41.ph
  %xtraiter63 = and i64 %i.cx, 3                  ; 2 uses
  %lcmp.mod64.not = icmp eq i64 %xtraiter63, 0
  br i1 %lcmp.mod64.not, label %.lr.ph38.prol.loopexit, label %.lr.ph38.prol

.lr.ph38.prol:                                    ; preds = %.lr.ph38.preheader, %.lr.ph38.prol
  %indvars.iv41.prol = phi i64 [ %indvars.iv.next42.prol, %.lr.ph38.prol ], [ %indvars.iv41.ph, %.lr.ph38.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph38.prol ], [ 0, %.lr.ph38.preheader ]
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv41.prol
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !9
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41.prol
  %i.db = load i8, ptr %i.da, align 1, !tbaa !9
  %i.dc = add i8 %i.db, %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv41.prol
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !9
  %indvars.iv.next42.prol = add nuw nsw i64 %indvars.iv41.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter63
  br i1 %prol.iter.cmp.not, label %.lr.ph38.prol.loopexit, label %.lr.ph38.prol, !llvm.loop !21

.lr.ph38.prol.loopexit:                           ; preds = %.lr.ph38.prol, %.lr.ph38.preheader
  %indvars.iv41.unr = phi i64 [ %indvars.iv41.ph, %.lr.ph38.preheader ], [ %indvars.iv.next42.prol, %.lr.ph38.prol ]
  %i.de = sub nsw i64 %indvars.iv41.ph, %wide.trip.count
  %i.df = icmp ugt i64 %i.de, -4
  br i1 %i.df, label %HorizontalUnfilter_SSE2.exit, label %.lr.ph38

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 7 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.dh = load <16 x i8>, ptr %i.dg, align 1, !tbaa !9
  %i.di = or disjoint i64 %indvars.iv, 16         ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %i.di
  %i.dk = load <16 x i8>, ptr %i.dj, align 1, !tbaa !9
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.dm = load <16 x i8>, ptr %i.dl, align 1, !tbaa !9
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %i.di
  %i.do = load <16 x i8>, ptr %i.dn, align 1, !tbaa !9
  %i.dp = add <16 x i8> %i.dm, %i.dh
  %i.dq = add <16 x i8> %i.do, %i.dk
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  store <16 x i8> %i.dp, ptr %i.dr, align 1, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 %i.di
  store <16 x i8> %i.dq, ptr %i.ds, align 1, !tbaa !9
  %indvars.iv.next = or disjoint i64 %indvars.iv, 32 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next
  %i.du = load <16 x i8>, ptr %i.dt, align 1, !tbaa !9
  %i.dv = or disjoint i64 %indvars.iv, 48         ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 %i.dv
  %i.dx = load <16 x i8>, ptr %i.dw, align 1, !tbaa !9
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next
  %i.dz = load <16 x i8>, ptr %i.dy, align 1, !tbaa !9
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %i.dv
  %i.eb = load <16 x i8>, ptr %i.ea, align 1, !tbaa !9
  %i.ec = add <16 x i8> %i.dz, %i.du
  %i.ed = add <16 x i8> %i.eb, %i.dx
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next
  store <16 x i8> %i.ec, ptr %i.ee, align 1, !tbaa !9
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 %i.dv
  store <16 x i8> %i.ed, ptr %i.ef, align 1, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 64 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !22

.lr.ph38:                                         ; preds = %.lr.ph38.prol.loopexit, %.lr.ph38
  %indvars.iv41 = phi i64 [ %indvars.iv.next42.3, %.lr.ph38 ], [ %indvars.iv41.unr, %.lr.ph38.prol.loopexit ] ; 7 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv41
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !9
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv41
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !9
  %i.ek = add i8 %i.ej, %i.eh
  %i.el = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv41
  store i8 %i.ek, ptr %i.el, align 1, !tbaa !9
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next42
  %i.en = load i8, ptr %i.em, align 1, !tbaa !9
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !9
  %i.eq = add i8 %i.ep, %i.en
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next42
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !9
  %indvars.iv.next42.1 = add nuw nsw i64 %indvars.iv41, 2 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next42.1
  %i.et = load i8, ptr %i.es, align 1, !tbaa !9
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42.1
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !9
  %i.ew = add i8 %i.ev, %i.et
  %i.ex = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next42.1
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !9
  %indvars.iv.next42.2 = add nuw nsw i64 %indvars.iv41, 3 ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.next42.2
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !9
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.next42.2
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !9
  %i.fc = add i8 %i.fb, %i.ez
  %i.fd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv.next42.2
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !9
  %indvars.iv.next42.3 = add nuw nsw i64 %indvars.iv41, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next42.3, %wide.trip.count
  br i1 %exitcond.not.3, label %HorizontalUnfilter_SSE2.exit, label %.lr.ph38, !llvm.loop !23

HorizontalUnfilter_SSE2.exit:                     ; preds = %.lr.ph38.prol.loopexit, %.lr.ph38, %.lr.ph42.i.prol.loopexit, %.lr.ph42.i, %middle.block, %vec.epilog.middle.block, %.preheader, %.preheader.i, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @GradientUnfilter_SSE2(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 1)) %2, i32 noundef %3) #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = load i8, ptr %1, align 1, !tbaa !9       ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  store i8 %i.b, ptr %2, align 1, !tbaa !9
  %i.c = icmp slt i32 %3, 2
  br i1 %i.c, label %HorizontalUnfilter_SSE2.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not38.i = icmp samesign ult i32 %3, 9
  br i1 %.not38.i, label %.preheader.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.d = zext i8 %i.b to i32
  %i.e = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.d, i64 0
  %i.f = bitcast <4 x i32> %i.e to <2 x i64>
  %i.g = zext nneg i32 %3 to i64
  br label %.lr.ph.i

.preheader.loopexit.i:                            ; preds = %.lr.ph.i
  %i.h = add nsw i32 %3, -9
  %i.i = and i32 %i.h, -8
  %i.j = add nuw nsw i32 %i.i, 9
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %bb.c
  %.0.lcssa.i = phi i32 [ 1, %bb.c ], [ %i.j, %.preheader.loopexit.i ] ; 4 uses
  %i.k = icmp samesign ult i32 %.0.lcssa.i, %3
  br i1 %i.k, label %.lr.ph42.preheader.i, label %HorizontalUnfilter_SSE2.exit

.lr.ph42.preheader.i:                             ; preds = %.preheader.i
  %i.l = zext i32 %.0.lcssa.i to i64              ; 3 uses
  %i.m = getelementptr i8, ptr %2, i64 %i.l
  %scevgep = getelementptr i8, ptr %i.m, i64 -1
  %load_initial = load i8, ptr %scevgep, align 1  ; 2 uses
  %i.n = sub nuw i32 %3, %.0.lcssa.i
  %xtraiter = and i32 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph42.i.prol.loopexit, label %.lr.ph42.i.prol

.lr.ph42.i.prol:                                  ; preds = %.lr.ph42.preheader.i, %.lr.ph42.i.prol
  %store_forwarded.prol = phi i8 [ %i.r, %.lr.ph42.i.prol ], [ %load_initial, %.lr.ph42.preheader.i ]
  %indvars.iv48.i.prol = phi i64 [ %indvars.iv.next49.i.prol, %.lr.ph42.i.prol ], [ %i.l, %.lr.ph42.preheader.i ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph42.i.prol ], [ 0, %.lr.ph42.preheader.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv48.i.prol
  %i.p = load i8, ptr %i.o, align 1, !tbaa !9
  %i.q = getelementptr i8, ptr %2, i64 %indvars.iv48.i.prol
  %i.r = add i8 %store_forwarded.prol, %i.p       ; 3 uses
  store i8 %i.r, ptr %i.q, align 1, !tbaa !9
  %indvars.iv.next49.i.prol = add nuw nsw i64 %indvars.iv48.i.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph42.i.prol.loopexit, label %.lr.ph42.i.prol, !llvm.loop !24

.lr.ph42.i.prol.loopexit:                         ; preds = %.lr.ph42.i.prol, %.lr.ph42.preheader.i
  %store_forwarded.unr = phi i8 [ %load_initial, %.lr.ph42.preheader.i ], [ %i.r, %.lr.ph42.i.prol ]
  %indvars.iv48.i.unr = phi i64 [ %i.l, %.lr.ph42.preheader.i ], [ %indvars.iv.next49.i.prol, %.lr.ph42.i.prol ]
  %i.s = sub i32 %.0.lcssa.i, %3
  %i.t = icmp ugt i32 %i.s, -4
  br i1 %i.t, label %HorizontalUnfilter_SSE2.exit, label %.lr.ph42.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv43.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next44.i, %.lr.ph.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 9, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ]
  %.03439.i = phi <2 x i64> [ %i.f, %.lr.ph.preheader.i ], [ %i.aj, %.lr.ph.i ]
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv43.i
  %i.v = load i64, ptr %i.u, align 1, !tbaa !9
  %i.w = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.v, i64 0
  %i.x = bitcast <2 x i64> %i.w to <16 x i8>
  %i.y = bitcast <2 x i64> %.03439.i to <16 x i8>
  %i.z = add <16 x i8> %i.x, %i.y                 ; 2 uses
  %i.aa = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.z, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.ab = add <16 x i8> %i.aa, %i.z               ; 2 uses
end_hunk_0
begin_hunk_1_@GradientUnfilter_SSE2:bb.a
  %.05367.i = phi <2 x i64> [ %i.bm, %.lr.ph.preheader.i11 ], [ %i.er, %.lr.ph.i12 ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv.i13 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 1, !tbaa !9
  %i.bt = insertelement <2 x i64> poison, i64 %i.bs, i64 0
  %i.bu = getelementptr i8, ptr %i.br, i64 -1
  %i.bv = load i64, ptr %i.bu, align 1, !tbaa !9
  %i.bw = insertelement <2 x i64> poison, i64 %i.bv, i64 0
  %i.bx = bitcast <2 x i64> %i.bt to <16 x i8>
  %i.by = shufflevector <16 x i8> %i.bx, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bz = bitcast <2 x i64> %i.bw to <16 x i8>
  %i.ca = shufflevector <16 x i8> %i.bz, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv.i13
  %i.cc = load i64, ptr %i.cb, align 1, !tbaa !9
  %i.cd = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.cc, i64 0
  %i.ce = bitcast <16 x i8> %i.by to <8 x i16>
  %i.cf = bitcast <16 x i8> %i.ca to <8 x i16>
  %i.cg = sub nsw <8 x i16> %i.ce, %i.cf          ; 8 uses
  %i.ch = bitcast <2 x i64> %i.cd to <16 x i8>    ; 8 uses
  %i.ci = bitcast <2 x i64> %.05367.i to <8 x i16>
  %i.cj = add <8 x i16> %i.cg, %i.ci
  %i.ck = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cj, <8 x i16> zeroinitializer)
  %i.cl = add <16 x i8> %i.ck, %i.ch
  %.inner = and <16 x i8> %i.cl, <i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.cm = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %.inner, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cn = shufflevector <16 x i8> %i.cm, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.co = bitcast <16 x i8> %i.cn to <8 x i16>
  %i.cp = add nsw <8 x i16> %i.cg, %i.co
  %i.cq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cp, <8 x i16> zeroinitializer)
  %i.cr = add <16 x i8> %i.cq, %i.ch
  %i.cs = and <16 x i8> %i.cr, <i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.ct = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.cs, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cu = shufflevector <16 x i8> %i.ct, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cv = bitcast <16 x i8> %i.cu to <8 x i16>
  %i.cw = add nsw <8 x i16> %i.cg, %i.cv
  %i.cx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cw, <8 x i16> zeroinitializer)
  %i.cy = add <16 x i8> %i.cx, %i.ch
  %i.cz = and <16 x i8> %i.cy, <i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.da = or <16 x i8> %i.cz, %i.cs
  %i.db = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.cz, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dc = shufflevector <16 x i8> %i.db, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dd = bitcast <16 x i8> %i.dc to <8 x i16>
  %i.de = add nsw <8 x i16> %i.cg, %i.dd
  %i.df = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.de, <8 x i16> zeroinitializer)
  %i.dg = add <16 x i8> %i.df, %i.ch
  %i.dh = and <16 x i8> %i.dg, <i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.di = or <16 x i8> %i.da, %i.dh
  %i.dj = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.dh, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.dk = shufflevector <16 x i8> %i.dj, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dl = bitcast <16 x i8> %i.dk to <8 x i16>
  %i.dm = add nsw <8 x i16> %i.cg, %i.dl
  %i.dn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dm, <8 x i16> zeroinitializer)
  %i.do = add <16 x i8> %i.dn, %i.ch
  %i.dp = and <16 x i8> %i.do, <i8 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.dq = or <16 x i8> %i.di, %i.dp
  %i.dr = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.dp, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <16 x i8> %i.dr, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dt = bitcast <16 x i8> %i.ds to <8 x i16>
  %i.du = add nsw <8 x i16> %i.cg, %i.dt
  %i.dv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.du, <8 x i16> zeroinitializer)
  %i.dw = add <16 x i8> %i.dv, %i.ch
  %i.dx = and <16 x i8> %i.dw, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.dy = or <16 x i8> %i.dq, %i.dx
  %i.dz = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.dx, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ea = shufflevector <16 x i8> %i.dz, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.eb = bitcast <16 x i8> %i.ea to <8 x i16>
  %i.ec = add nsw <8 x i16> %i.cg, %i.eb
  %i.ed = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ec, <8 x i16> zeroinitializer)
  %i.ee = add <16 x i8> %i.ed, %i.ch
  %i.ef = and <16 x i8> %i.ee, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.eg = or <16 x i8> %i.dy, %i.ef
  %i.eh = shufflevector <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0>, <16 x i8> %i.ef, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ei = shufflevector <16 x i8> %i.eh, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ej = bitcast <16 x i8> %i.ei to <8 x i16>
  %i.ek = add nsw <8 x i16> %i.cg, %i.ej
  %i.el = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ek, <8 x i16> zeroinitializer)
  %i.em = add <16 x i8> %i.el, %i.ch
  %i.en = and <16 x i8> %i.em, <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 -1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0> ; 2 uses
  %i.eo = or <16 x i8> %i.eg, %i.en
  %.inner28 = or <16 x i8> %.inner, %i.eo
  %i.ep = bitcast <16 x i8> %.inner28 to <2 x i64>
  %i.eq = shufflevector <16 x i8> %i.en, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22>
  %i.er = bitcast <16 x i8> %i.eq to <2 x i64>
  %i.es = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.i13
  %i.et = extractelement <2 x i64> %i.ep, i64 0
  store i64 %i.et, ptr %i.es, align 1, !tbaa !9
  %indvars.iv.next.i14 = add nuw nsw i64 %indvars.iv.i13, 8 ; 3 uses
  %i.eu = icmp samesign ult i64 %indvars.iv.next.i14, %i.bn
  br i1 %i.eu, label %.lr.ph.i12, label %.preheader.loopexit.i15, !llvm.loop !25

.lr.ph70.i:                                       ; preds = %.lr.ph70.i, %.lr.ph70.preheader.i
  %store_forwarded27 = phi i8 [ %load_initial26, %.lr.ph70.preheader.i ], [ %i.fj, %.lr.ph70.i ]
  %indvars.iv74.i = phi i64 [ %i.bq, %.lr.ph70.preheader.i ], [ %indvars.iv.next75.i, %.lr.ph70.i ] ; 5 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv74.i
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !9
  %i.ex = getelementptr i8, ptr %0, i64 %indvars.iv74.i
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !9
  %i.ez = zext i8 %store_forwarded27 to i32
  %i.fa = zext i8 %i.ew to i32
  %i.fb = add nuw nsw i32 %i.fa, %i.ez
  %i.fc = zext i8 %i.ey to i32
  %i.fd = sub nsw i32 %i.fb, %i.fc
  %i.fe = tail call i32 @llvm.smax.i32(i32 %i.fd, i32 0)
  %i.ff = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.fe, i32 255)
  %i.fg = getelementptr inbounds nuw i8, ptr %i.be, i64 %indvars.iv74.i
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !9
  %i.fi = trunc nuw i32 %i.ff to i8
  %i.fj = add i8 %i.fh, %i.fi                     ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv74.i
  store i8 %i.fj, ptr %i.fk, align 1, !tbaa !9
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next75.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %HorizontalUnfilter_SSE2.exit, label %.lr.ph70.i, !llvm.loop !26

HorizontalUnfilter_SSE2.exit:                     ; preds = %.lr.ph70.i, %.lr.ph42.i.prol.loopexit, %.lr.ph42.i, %.preheader.i16, %bb.d, %.preheader.i, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @HorizontalFilter_SSE2(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef writeonly captures(none) initializes((0, 1)) %4) #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  %i.a = load i8, ptr %0, align 1, !tbaa !9, !alias.scope !27, !noalias !30
  store i8 %i.a, ptr %4, align 1, !tbaa !9, !alias.scope !30, !noalias !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 6 uses
  %i.d = add i32 %1, -1                           ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !32)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  %i.e = icmp sgt i32 %1, 32                      ; 2 uses
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.f = and i32 %i.d, 2147483616
  %i.g = zext nneg i32 %i.f to i64
  %i.h = add nsw i64 %i.g, -32                    ; 3 uses
  %i.i = lshr exact i64 %i.h, 5
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.j, 1152921504606846974
  br label %.lr.ph.i.i

.preheader.loopexit.i.i.unr-lcssa:                ; preds = %.lr.ph.i.i
  %i.l = and i64 %i.h, 32
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %.preheader.loopexit.i.i

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.loopexit.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %.preheader.loopexit.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod77 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.epil.init ; 4 uses
  %i.n = load <16 x i8>, ptr %i.m, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -1
  %i.p = load <16 x i8>, ptr %i.o, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load <16 x i8>, ptr %i.q, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 15
  %i.t = load <16 x i8>, ptr %i.s, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.u = sub <16 x i8> %i.n, %i.p
  %i.v = sub <16 x i8> %i.r, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.epil.init ; 2 uses
  store <16 x i8> %i.u, ptr %i.w, align 1, !tbaa !9, !alias.scope !38, !noalias !37
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <16 x i8> %i.v, ptr %i.x, align 1, !tbaa !9, !alias.scope !38, !noalias !37
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.init, 32
  br label %.preheader.loopexit.i.i

.preheader.loopexit.i.i:                          ; preds = %.preheader.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.loopexit.i.i.unr-lcssa ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil.preheader ]
  %i.y = trunc nuw nsw i64 %indvars.iv.next.i.i.lcssa to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.y, %.preheader.loopexit.i.i ] ; 2 uses
  %i.z = icmp slt i32 %.0.lcssa.i.i, %i.d
  br i1 %i.z, label %iter.check, label %PredictLineLeft_SSE2.exit.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.aa = zext i32 %.0.lcssa.i.i to i64           ; 6 uses
  %wide.trip.count.i.i = zext nneg i32 %i.d to i64 ; 2 uses
  %i.ab = sub nsw i64 %wide.trip.count.i.i, %i.aa ; 7 uses
  %min.iters.check = icmp ult i64 %i.ab, 8
  br i1 %min.iters.check, label %.lr.ph32.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check16 = icmp ult i64 %i.ab, 32
  br i1 %min.iters.check16, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, -32                     ; 4 uses
  %i.ac = add nsw i64 %n.vec, %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i64 %index, %i.aa               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %wide.load17 = load <16 x i8>, ptr %i.af, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.ag = getelementptr i8, ptr %i.ae, i64 -1
  %i.ah = getelementptr i8, ptr %i.ae, i64 15
  %wide.load18 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %wide.load19 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.ai = sub <16 x i8> %wide.load, %wide.load18
  %i.aj = sub <16 x i8> %wide.load17, %wide.load19
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <16 x i8> %i.ai, ptr %i.ak, align 1, !tbaa !9, !alias.scope !38, !noalias !37
  store <16 x i8> %i.aj, ptr %i.al, align 1, !tbaa !9, !alias.scope !38, !noalias !37
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %PredictLineLeft_SSE2.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph32.i.i.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.ab, -8                    ; 3 uses
  %i.an = add nsw i64 %n.vec21, %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next25, %vec.epilog.vector.body ] ; 2 uses
  %i.ao = add nuw i64 %index22, %i.aa             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ao ; 2 uses
  %wide.load23 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %wide.load24 = load <8 x i8>, ptr %i.aq, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.ar = sub <8 x i8> %wide.load23, %wide.load24
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ao
  store <8 x i8> %i.ar, ptr %i.as, align 1, !tbaa !9, !alias.scope !38, !noalias !37
  %index.next25 = add nuw i64 %index22, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next25, %n.vec21
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !40

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n26 = icmp eq i64 %i.ab, %n.vec21
  br i1 %cmp.n26, label %PredictLineLeft_SSE2.exit.i, label %.lr.ph32.i.i.preheader

.lr.ph32.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv34.i.i.ph = phi i64 [ %i.aa, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph32.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i ; 4 uses
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -1
  %i.ax = load <16 x i8>, ptr %i.aw, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = load <16 x i8>, ptr %i.ay, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 15
  %i.bb = load <16 x i8>, ptr %i.ba, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.bc = sub <16 x i8> %i.av, %i.ax
  %i.bd = sub <16 x i8> %i.az, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i ; 2 uses
  store <16 x i8> %i.bc, ptr %i.be, align 1, !tbaa !9, !alias.scope !38, !noalias !37
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !9, !alias.scope !38, !noalias !37
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i.i ; 4 uses
  %i.bh = load <16 x i8>, ptr %i.bg, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -1
  %i.bj = load <16 x i8>, ptr %i.bi, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load <16 x i8>, ptr %i.bk, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.bn = load <16 x i8>, ptr %i.bm, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.bo = sub <16 x i8> %i.bh, %i.bj
  %i.bp = sub <16 x i8> %i.bl, %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i.i ; 2 uses
  store <16 x i8> %i.bo, ptr %i.bq, align 1, !tbaa !9, !alias.scope !38, !noalias !37
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %i.bp, ptr %i.br, align 1, !tbaa !9, !alias.scope !38, !noalias !37
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !41

.lr.ph32.i.i:                                     ; preds = %.lr.ph32.i.i.preheader, %.lr.ph32.i.i
  %indvars.iv34.i.i = phi i64 [ %indvars.iv.next35.i.i, %.lr.ph32.i.i ], [ %indvars.iv34.i.i.ph, %.lr.ph32.i.i.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv34.i.i ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.bu = getelementptr i8, ptr %i.bs, i64 -1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9, !alias.scope !37, !noalias !38
  %i.bw = sub i8 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv34.i.i
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !9, !alias.scope !38, !noalias !37
  %indvars.iv.next35.i.i = add nuw nsw i64 %indvars.iv34.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next35.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %PredictLineLeft_SSE2.exit.i, label %.lr.ph32.i.i, !llvm.loop !42

PredictLineLeft_SSE2.exit.i:                      ; preds = %.lr.ph32.i.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i
  %i.by = sext i32 %3 to i64                      ; 14 uses
  %i.bz = icmp sgt i32 %2, 1
  br i1 %i.bz, label %.lr.ph.i, label %DoHorizontalFilter_SSE2.exit

.lr.ph.i:                                         ; preds = %PredictLineLeft_SSE2.exit.i
  %i.ca = sub nsw i32 0, %3
  %i.cb = sext i32 %i.ca to i64                   ; 4 uses
  %wide.trip.count.i28.i = zext i32 %i.d to i64   ; 7 uses
  br i1 %i.e, label %.lr.ph.preheader.i33.us.i.preheader, label %.lr.ph.split.i

.lr.ph.preheader.i33.us.i.preheader:              ; preds = %.lr.ph.i
  %i.cc = and i32 %i.d, 2147483616
  %i.cd = zext nneg i32 %i.cc to i64              ; 2 uses
  %i.ce = sub nsw i64 %wide.trip.count.i28.i, %i.cd ; 4 uses
  %i.cf = add nsw i64 %i.cd, -32                  ; 3 uses
  %i.cg = lshr exact i64 %i.cf, 5
  %i.ch = add nuw nsw i64 %i.cg, 1                ; 2 uses
  %i.ci = icmp eq i64 %i.cf, 0
  %unroll_iter88 = and i64 %i.ch, 1152921504606846974
  %i.cj = and i64 %i.cf, 32
  %lcmp.mod85.not.not = icmp eq i64 %i.cj, 0
  %lcmp.mod87 = trunc i64 %i.ch to i1
  %min.iters.check42 = icmp ult i64 %i.ce, 8
  %min.iters.check44 = icmp ult i64 %i.ce, 32
  %n.mod.vf46 = and i64 %wide.trip.count.i28.i, 31 ; 3 uses
  %n.vec47 = sub nuw nsw i64 %i.ce, %n.mod.vf46   ; 3 uses
  %cmp.n56 = icmp eq i64 %n.mod.vf46, 0
  %min.epilog.iters.check62 = icmp samesign ult i64 %n.mod.vf46, 8
  %n.mod.vf64 = and i64 %wide.trip.count.i28.i, 7 ; 2 uses
  %n.vec65 = sub nsw i64 %i.ce, %n.mod.vf64       ; 2 uses
  %cmp.n72 = icmp eq i64 %n.mod.vf64, 0
  br label %.lr.ph.preheader.i33.us.i

.lr.ph.preheader.i33.us.i:                        ; preds = %.lr.ph.preheader.i33.us.i.preheader, %PredictLineLeft_SSE2.exit38.us.i
  %.041.us.i = phi i32 [ %i.fa, %PredictLineLeft_SSE2.exit38.us.i ], [ 1, %.lr.ph.preheader.i33.us.i.preheader ]
  %.pn2440.us.i = phi ptr [ %.022.us.i, %PredictLineLeft_SSE2.exit38.us.i ], [ %4, %.lr.ph.preheader.i33.us.i.preheader ]
  %.pn39.us.i = phi ptr [ %.023.us.i, %PredictLineLeft_SSE2.exit38.us.i ], [ %0, %.lr.ph.preheader.i33.us.i.preheader ]
  %.022.us.i = getelementptr inbounds i8, ptr %.pn2440.us.i, i64 %i.by ; 3 uses
  %.023.us.i = getelementptr inbounds i8, ptr %.pn39.us.i, i64 %i.by ; 4 uses
  %i.ck = load i8, ptr %.023.us.i, align 1, !tbaa !9, !alias.scope !27, !noalias !30
  %i.cl = getelementptr inbounds i8, ptr %.023.us.i, i64 %i.cb
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !9, !alias.scope !27, !noalias !30
  %i.cn = sub i8 %i.ck, %i.cm
  store i8 %i.cn, ptr %.022.us.i, align 1, !tbaa !9, !alias.scope !30, !noalias !27
  %i.co = getelementptr inbounds nuw i8, ptr %.023.us.i, i64 1 ; 6 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.022.us.i, i64 1 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  br i1 %i.ci, label %.lr.ph.i34.us.i.epil.preheader, label %.lr.ph.i34.us.i

.lr.ph.i34.us.i:                                  ; preds = %.lr.ph.preheader.i33.us.i, %.lr.ph.i34.us.i
  %indvars.iv.i35.us.i = phi i64 [ %indvars.iv.next.i36.us.i.1, %.lr.ph.i34.us.i ], [ 0, %.lr.ph.preheader.i33.us.i ] ; 4 uses
  %niter89 = phi i64 [ %niter89.next.1, %.lr.ph.i34.us.i ], [ 0, %.lr.ph.preheader.i33.us.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.i35.us.i ; 4 uses
  %i.cr = load <16 x i8>, ptr %i.cq, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 -1
  %i.ct = load <16 x i8>, ptr %i.cs, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.cv = load <16 x i8>, ptr %i.cu, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 15
  %i.cx = load <16 x i8>, ptr %i.cw, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.cy = sub <16 x i8> %i.cr, %i.ct
  %i.cz = sub <16 x i8> %i.cv, %i.cx
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv.i35.us.i ; 2 uses
  store <16 x i8> %i.cy, ptr %i.da, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <16 x i8> %i.cz, ptr %i.db, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  %indvars.iv.next.i36.us.i = or disjoint i64 %indvars.iv.i35.us.i, 32 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.next.i36.us.i ; 4 uses
  %i.dd = load <16 x i8>, ptr %i.dc, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.de = getelementptr inbounds i8, ptr %i.dc, i64 -1
  %i.df = load <16 x i8>, ptr %i.de, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.dh = load <16 x i8>, ptr %i.dg, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.di = getelementptr inbounds nuw i8, ptr %i.dc, i64 15
  %i.dj = load <16 x i8>, ptr %i.di, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.dk = sub <16 x i8> %i.dd, %i.df
  %i.dl = sub <16 x i8> %i.dh, %i.dj
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv.next.i36.us.i ; 2 uses
  store <16 x i8> %i.dk, ptr %i.dm, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  store <16 x i8> %i.dl, ptr %i.dn, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  %indvars.iv.next.i36.us.i.1 = add nuw nsw i64 %indvars.iv.i35.us.i, 64 ; 3 uses
  %niter89.next.1 = add i64 %niter89, 2           ; 2 uses
  %niter89.ncmp.1.not = icmp eq i64 %niter89.next.1, %unroll_iter88
  br i1 %niter89.ncmp.1.not, label %.preheader.loopexit.i37.us.i.unr-lcssa, label %.lr.ph.i34.us.i, !llvm.loop !41

.preheader.loopexit.i37.us.i.unr-lcssa:           ; preds = %.lr.ph.i34.us.i
  br i1 %lcmp.mod85.not.not, label %.lr.ph.i34.us.i.epil.preheader, label %.preheader.loopexit.i37.us.i

.lr.ph.i34.us.i.epil.preheader:                   ; preds = %.preheader.loopexit.i37.us.i.unr-lcssa, %.lr.ph.preheader.i33.us.i
  %indvars.iv.i35.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i33.us.i ], [ %indvars.iv.next.i36.us.i.1, %.preheader.loopexit.i37.us.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.do = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv.i35.us.i.epil.init ; 4 uses
  %i.dp = load <16 x i8>, ptr %i.do, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.dq = getelementptr inbounds i8, ptr %i.do, i64 -1
  %i.dr = load <16 x i8>, ptr %i.dq, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %i.dt = load <16 x i8>, ptr %i.ds, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 15
  %i.dv = load <16 x i8>, ptr %i.du, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.dw = sub <16 x i8> %i.dp, %i.dr
  %i.dx = sub <16 x i8> %i.dt, %i.dv
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv.i35.us.i.epil.init ; 2 uses
  store <16 x i8> %i.dw, ptr %i.dy, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store <16 x i8> %i.dx, ptr %i.dz, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  %indvars.iv.next.i36.us.i.epil = add nuw nsw i64 %indvars.iv.i35.us.i.epil.init, 32
  br label %.preheader.loopexit.i37.us.i

.preheader.loopexit.i37.us.i:                     ; preds = %.preheader.loopexit.i37.us.i.unr-lcssa, %.lr.ph.i34.us.i.epil.preheader
  %indvars.iv.next.i36.us.i.lcssa = phi i64 [ %indvars.iv.next.i36.us.i.1, %.preheader.loopexit.i37.us.i.unr-lcssa ], [ %indvars.iv.next.i36.us.i.epil, %.lr.ph.i34.us.i.epil.preheader ] ; 6 uses
  %i.ea = trunc nuw nsw i64 %indvars.iv.next.i36.us.i.lcssa to i32
  %i.eb = icmp sgt i32 %i.d, %i.ea
  br i1 %i.eb, label %iter.check59, label %PredictLineLeft_SSE2.exit38.us.i

iter.check59:                                     ; preds = %.preheader.loopexit.i37.us.i
  br i1 %min.iters.check42, label %.lr.ph32.i29.us.i.preheader, label %vector.main.loop.iter.check43

vector.main.loop.iter.check43:                    ; preds = %iter.check59
  br i1 %min.iters.check44, label %vec.epilog.ph63, label %vector.ph45

vector.ph45:                                      ; preds = %vector.main.loop.iter.check43
  %i.ec = add i64 %indvars.iv.next.i36.us.i.lcssa, %n.vec47
  br label %vector.body48

vector.body48:                                    ; preds = %vector.body48, %vector.ph45
  %index49 = phi i64 [ 0, %vector.ph45 ], [ %index.next54, %vector.body48 ] ; 2 uses
  %i.ed = add nuw i64 %indvars.iv.next.i36.us.i.lcssa, %index49 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ed ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %wide.load50 = load <16 x i8>, ptr %i.ee, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %wide.load51 = load <16 x i8>, ptr %i.ef, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.eg = getelementptr i8, ptr %i.ee, i64 -1
  %i.eh = getelementptr i8, ptr %i.ee, i64 15
  %wide.load52 = load <16 x i8>, ptr %i.eg, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %wide.load53 = load <16 x i8>, ptr %i.eh, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.ei = sub <16 x i8> %wide.load50, %wide.load52
  %i.ej = sub <16 x i8> %wide.load51, %wide.load53
  %i.ek = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.ed ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store <16 x i8> %i.ei, ptr %i.ek, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  store <16 x i8> %i.ej, ptr %i.el, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  %index.next54 = add nuw i64 %index49, 32        ; 2 uses
  %i.em = icmp eq i64 %index.next54, %n.vec47
  br i1 %i.em, label %middle.block55, label %vector.body48, !llvm.loop !50

middle.block55:                                   ; preds = %vector.body48
  br i1 %cmp.n56, label %PredictLineLeft_SSE2.exit38.us.i, label %vec.epilog.iter.check61

vec.epilog.iter.check61:                          ; preds = %middle.block55
  br i1 %min.epilog.iters.check62, label %.lr.ph32.i29.us.i.preheader, label %vec.epilog.ph63, !prof !19

vec.epilog.ph63:                                  ; preds = %vector.main.loop.iter.check43, %vec.epilog.iter.check61
  %vec.epilog.resume.val57 = phi i64 [ %n.vec47, %vec.epilog.iter.check61 ], [ 0, %vector.main.loop.iter.check43 ]
  %i.en = add i64 %indvars.iv.next.i36.us.i.lcssa, %n.vec65
  br label %vec.epilog.vector.body66

vec.epilog.vector.body66:                         ; preds = %vec.epilog.vector.body66, %vec.epilog.ph63
  %index67 = phi i64 [ %vec.epilog.resume.val57, %vec.epilog.ph63 ], [ %index.next70, %vec.epilog.vector.body66 ] ; 2 uses
  %i.eo = add nuw i64 %indvars.iv.next.i36.us.i.lcssa, %index67 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.eo ; 2 uses
  %wide.load68 = load <8 x i8>, ptr %i.ep, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.eq = getelementptr i8, ptr %i.ep, i64 -1
  %wide.load69 = load <8 x i8>, ptr %i.eq, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.er = sub <8 x i8> %wide.load68, %wide.load69
  %i.es = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.eo
  store <8 x i8> %i.er, ptr %i.es, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  %index.next70 = add nuw i64 %index67, 8         ; 2 uses
  %i.et = icmp eq i64 %index.next70, %n.vec65
  br i1 %i.et, label %vec.epilog.middle.block71, label %vec.epilog.vector.body66, !llvm.loop !51

vec.epilog.middle.block71:                        ; preds = %vec.epilog.vector.body66
  br i1 %cmp.n72, label %PredictLineLeft_SSE2.exit38.us.i, label %.lr.ph32.i29.us.i.preheader

.lr.ph32.i29.us.i.preheader:                      ; preds = %iter.check59, %vec.epilog.iter.check61, %vec.epilog.middle.block71
  %indvars.iv34.i30.us.i.ph = phi i64 [ %indvars.iv.next.i36.us.i.lcssa, %iter.check59 ], [ %i.ec, %vec.epilog.iter.check61 ], [ %i.en, %vec.epilog.middle.block71 ]
  br label %.lr.ph32.i29.us.i

.lr.ph32.i29.us.i:                                ; preds = %.lr.ph32.i29.us.i.preheader, %.lr.ph32.i29.us.i
  %indvars.iv34.i30.us.i = phi i64 [ %indvars.iv.next35.i31.us.i, %.lr.ph32.i29.us.i ], [ %indvars.iv34.i30.us.i.ph, %.lr.ph32.i29.us.i.preheader ] ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.co, i64 %indvars.iv34.i30.us.i ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.ew = getelementptr i8, ptr %i.eu, i64 -1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.ey = sub i8 %i.ev, %i.ex
  %i.ez = getelementptr inbounds nuw i8, ptr %i.cp, i64 %indvars.iv34.i30.us.i
  store i8 %i.ey, ptr %i.ez, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  %indvars.iv.next35.i31.us.i = add nuw nsw i64 %indvars.iv34.i30.us.i, 1 ; 2 uses
  %exitcond.not.i32.us.i = icmp eq i64 %indvars.iv.next35.i31.us.i, %wide.trip.count.i28.i
  br i1 %exitcond.not.i32.us.i, label %PredictLineLeft_SSE2.exit38.us.i, label %.lr.ph32.i29.us.i, !llvm.loop !52

PredictLineLeft_SSE2.exit38.us.i:                 ; preds = %.lr.ph32.i29.us.i, %middle.block55, %vec.epilog.middle.block71, %.preheader.loopexit.i37.us.i
  %i.fa = add nuw nsw i32 %.041.us.i, 1           ; 2 uses
  %exitcond58.not.i = icmp eq i32 %i.fa, %2
  br i1 %exitcond58.not.i, label %DoHorizontalFilter_SSE2.exit, label %.lr.ph.preheader.i33.us.i, !llvm.loop !53

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.fb = icmp sgt i32 %1, 1
  br i1 %i.fb, label %.preheader.i25.us42.i.preheader, label %.preheader.i25.i.preheader

.preheader.i25.i.preheader:                       ; preds = %.lr.ph.split.i
  %i.fc = add nsw i32 %2, -1                      ; 2 uses
  %i.fd = add nsw i32 %2, -2
  %xtraiter78 = and i32 %i.fc, 3                  ; 3 uses
  %i.fe = icmp ult i32 %i.fd, 3
  br i1 %i.fe, label %.preheader.i25.i.epil.preheader, label %.preheader.i25.i.preheader.new

.preheader.i25.i.preheader.new:                   ; preds = %.preheader.i25.i.preheader
  %unroll_iter81 = and i32 %i.fc, -4
  br label %.preheader.i25.i

.preheader.i25.us42.i.preheader:                  ; preds = %.lr.ph.split.i
  %min.iters.check28 = icmp ult i32 %1, 9
  %n.vec31 = and i64 %wide.trip.count.i28.i, 4294967288 ; 4 uses
  %i.ff = icmp eq i64 %n.vec31, 8
  %i.fg = icmp eq i64 %n.vec31, 16
  %cmp.n40 = icmp eq i64 %n.vec31, %wide.trip.count.i28.i
  br label %.preheader.i25.us42.i

.preheader.i25.us42.i:                            ; preds = %.preheader.i25.us42.i.preheader, %PredictLineLeft_SSE2.exit38.loopexit.us54.i
  %.041.us43.i = phi i32 [ %i.go, %PredictLineLeft_SSE2.exit38.loopexit.us54.i ], [ 1, %.preheader.i25.us42.i.preheader ]
  %.pn2440.us44.i = phi ptr [ %.022.us46.i, %PredictLineLeft_SSE2.exit38.loopexit.us54.i ], [ %4, %.preheader.i25.us42.i.preheader ]
  %.pn39.us45.i = phi ptr [ %.023.us47.i, %PredictLineLeft_SSE2.exit38.loopexit.us54.i ], [ %0, %.preheader.i25.us42.i.preheader ]
  %.022.us46.i = getelementptr inbounds i8, ptr %.pn2440.us44.i, i64 %i.by ; 8 uses
  %.023.us47.i = getelementptr inbounds i8, ptr %.pn39.us45.i, i64 %i.by ; 15 uses
  %i.fh = load i8, ptr %.023.us47.i, align 1, !tbaa !9, !alias.scope !27, !noalias !30
  %i.fi = getelementptr inbounds i8, ptr %.023.us47.i, i64 %i.cb
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !9, !alias.scope !27, !noalias !30
  %i.fk = sub i8 %i.fh, %i.fj
  store i8 %i.fk, ptr %.022.us46.i, align 1, !tbaa !9, !alias.scope !30, !noalias !27
  %i.fl = getelementptr inbounds nuw i8, ptr %.023.us47.i, i64 1 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.022.us46.i, i64 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  br i1 %min.iters.check28, label %.lr.ph32.i29.us49.i.preheader, label %vector.body32

vector.body32:                                    ; preds = %.preheader.i25.us42.i
  %i.fn = getelementptr inbounds nuw i8, ptr %.023.us47.i, i64 5
  %wide.load34 = load <4 x i8>, ptr %i.fl, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %wide.load35 = load <4 x i8>, ptr %i.fn, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.fo = getelementptr i8, ptr %.023.us47.i, i64 4
  %wide.load36 = load <4 x i8>, ptr %.023.us47.i, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %wide.load37 = load <4 x i8>, ptr %i.fo, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.fp = sub <4 x i8> %wide.load34, %wide.load36
  %i.fq = sub <4 x i8> %wide.load35, %wide.load37
  %i.fr = getelementptr inbounds nuw i8, ptr %.022.us46.i, i64 5
  store <4 x i8> %i.fp, ptr %i.fm, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  store <4 x i8> %i.fq, ptr %i.fr, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  br i1 %i.ff, label %middle.block39, label %vector.body32.1

vector.body32.1:                                  ; preds = %vector.body32
  %i.fs = getelementptr inbounds nuw i8, ptr %.023.us47.i, i64 9
  %i.ft = getelementptr inbounds nuw i8, ptr %.023.us47.i, i64 13
  %wide.load34.1 = load <4 x i8>, ptr %i.fs, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %wide.load35.1 = load <4 x i8>, ptr %i.ft, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.fu = getelementptr i8, ptr %.023.us47.i, i64 8
  %i.fv = getelementptr i8, ptr %.023.us47.i, i64 12
  %wide.load36.1 = load <4 x i8>, ptr %i.fu, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %wide.load37.1 = load <4 x i8>, ptr %i.fv, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.fw = sub <4 x i8> %wide.load34.1, %wide.load36.1
  %i.fx = sub <4 x i8> %wide.load35.1, %wide.load37.1
  %i.fy = getelementptr inbounds nuw i8, ptr %.022.us46.i, i64 9
  %i.fz = getelementptr inbounds nuw i8, ptr %.022.us46.i, i64 13
  store <4 x i8> %i.fw, ptr %i.fy, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  store <4 x i8> %i.fx, ptr %i.fz, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  br i1 %i.fg, label %middle.block39, label %vector.body32.2

vector.body32.2:                                  ; preds = %vector.body32.1
  %i.ga = getelementptr inbounds nuw i8, ptr %.023.us47.i, i64 17
  %i.gb = getelementptr inbounds nuw i8, ptr %.023.us47.i, i64 21
  %wide.load34.2 = load <4 x i8>, ptr %i.ga, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %wide.load35.2 = load <4 x i8>, ptr %i.gb, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.gc = getelementptr i8, ptr %.023.us47.i, i64 16
  %i.gd = getelementptr i8, ptr %.023.us47.i, i64 20
  %wide.load36.2 = load <4 x i8>, ptr %i.gc, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %wide.load37.2 = load <4 x i8>, ptr %i.gd, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.ge = sub <4 x i8> %wide.load34.2, %wide.load36.2
  %i.gf = sub <4 x i8> %wide.load35.2, %wide.load37.2
  %i.gg = getelementptr inbounds nuw i8, ptr %.022.us46.i, i64 17
  %i.gh = getelementptr inbounds nuw i8, ptr %.022.us46.i, i64 21
  store <4 x i8> %i.ge, ptr %i.gg, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  store <4 x i8> %i.gf, ptr %i.gh, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  br label %middle.block39

middle.block39:                                   ; preds = %vector.body32.2, %vector.body32.1, %vector.body32
  br i1 %cmp.n40, label %PredictLineLeft_SSE2.exit38.loopexit.us54.i, label %.lr.ph32.i29.us49.i.preheader

.lr.ph32.i29.us49.i.preheader:                    ; preds = %.preheader.i25.us42.i, %middle.block39
  %indvars.iv34.i30.us50.i.ph = phi i64 [ 0, %.preheader.i25.us42.i ], [ %n.vec31, %middle.block39 ]
  br label %.lr.ph32.i29.us49.i

.lr.ph32.i29.us49.i:                              ; preds = %.lr.ph32.i29.us49.i.preheader, %.lr.ph32.i29.us49.i
  %indvars.iv34.i30.us50.i = phi i64 [ %indvars.iv.next35.i31.us51.i, %.lr.ph32.i29.us49.i ], [ %indvars.iv34.i30.us50.i.ph, %.lr.ph32.i29.us49.i.preheader ] ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fl, i64 %indvars.iv34.i30.us50.i ; 2 uses
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.gk = getelementptr i8, ptr %i.gi, i64 -1
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !9, !alias.scope !48, !noalias !49
  %i.gm = sub i8 %i.gj, %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv34.i30.us50.i
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !9, !alias.scope !49, !noalias !48
  %indvars.iv.next35.i31.us51.i = add nuw nsw i64 %indvars.iv34.i30.us50.i, 1 ; 2 uses
  %exitcond.not.i32.us52.i = icmp eq i64 %indvars.iv.next35.i31.us51.i, %wide.trip.count.i28.i
  br i1 %exitcond.not.i32.us52.i, label %PredictLineLeft_SSE2.exit38.loopexit.us54.i, label %.lr.ph32.i29.us49.i, !llvm.loop !54

PredictLineLeft_SSE2.exit38.loopexit.us54.i:      ; preds = %.lr.ph32.i29.us49.i, %middle.block39
  %i.go = add nuw nsw i32 %.041.us43.i, 1         ; 2 uses
  %exitcond57.not.i = icmp eq i32 %i.go, %2
  br i1 %exitcond57.not.i, label %DoHorizontalFilter_SSE2.exit, label %.preheader.i25.us42.i, !llvm.loop !53

.preheader.i25.i:                                 ; preds = %.preheader.i25.i, %.preheader.i25.i.preheader.new
  %.pn2440.i = phi ptr [ %4, %.preheader.i25.i.preheader.new ], [ %.022.i.3, %.preheader.i25.i ]
  %.pn39.i = phi ptr [ %0, %.preheader.i25.i.preheader.new ], [ %.023.i.3, %.preheader.i25.i ]
  %niter82 = phi i32 [ 0, %.preheader.i25.i.preheader.new ], [ %niter82.next.3, %.preheader.i25.i ]
  %.022.i = getelementptr inbounds i8, ptr %.pn2440.i, i64 %i.by ; 2 uses
  %.023.i = getelementptr inbounds i8, ptr %.pn39.i, i64 %i.by ; 3 uses
  %i.gp = load i8, ptr %.023.i, align 1, !tbaa !9, !alias.scope !27, !noalias !30 ; 2 uses
  %i.gq = getelementptr inbounds i8, ptr %.023.i, i64 %i.cb
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !9, !alias.scope !27, !noalias !30
  %i.gs = sub i8 %i.gp, %i.gr
  store i8 %i.gs, ptr %.022.i, align 1, !tbaa !9, !alias.scope !30, !noalias !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %.022.i.1 = getelementptr inbounds i8, ptr %.022.i, i64 %i.by ; 2 uses
  %.023.i.1 = getelementptr inbounds i8, ptr %.023.i, i64 %i.by ; 2 uses
  %i.gt = load i8, ptr %.023.i.1, align 1, !tbaa !9, !alias.scope !27, !noalias !30 ; 2 uses
  %i.gu = sub i8 %i.gt, %i.gp
  store i8 %i.gu, ptr %.022.i.1, align 1, !tbaa !9, !alias.scope !30, !noalias !27
  %.022.i.2 = getelementptr inbounds i8, ptr %.022.i.1, i64 %i.by ; 2 uses
  %.023.i.2 = getelementptr inbounds i8, ptr %.023.i.1, i64 %i.by ; 2 uses
  %i.gv = load i8, ptr %.023.i.2, align 1, !tbaa !9, !alias.scope !27, !noalias !30 ; 2 uses
  %i.gw = sub i8 %i.gv, %i.gt
  store i8 %i.gw, ptr %.022.i.2, align 1, !tbaa !9, !alias.scope !30, !noalias !27
  %.022.i.3 = getelementptr inbounds i8, ptr %.022.i.2, i64 %i.by ; 3 uses
  %.023.i.3 = getelementptr inbounds i8, ptr %.023.i.2, i64 %i.by ; 3 uses
  %i.gx = load i8, ptr %.023.i.3, align 1, !tbaa !9, !alias.scope !27, !noalias !30
  %i.gy = sub i8 %i.gx, %i.gv
  store i8 %i.gy, ptr %.022.i.3, align 1, !tbaa !9, !alias.scope !30, !noalias !27
  %niter82.next.3 = add i32 %niter82, 4           ; 2 uses
  %niter82.ncmp.3 = icmp eq i32 %niter82.next.3, %unroll_iter81
  br i1 %niter82.ncmp.3, label %DoHorizontalFilter_SSE2.exit.loopexit75.unr-lcssa, label %.preheader.i25.i, !llvm.loop !53

DoHorizontalFilter_SSE2.exit.loopexit75.unr-lcssa: ; preds = %.preheader.i25.i
  %lcmp.mod79.not = icmp eq i32 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %DoHorizontalFilter_SSE2.exit, label %.preheader.i25.i.epil.preheader

.preheader.i25.i.epil.preheader:                  ; preds = %DoHorizontalFilter_SSE2.exit.loopexit75.unr-lcssa, %.preheader.i25.i.preheader
  %.pn2440.i.epil.init = phi ptr [ %4, %.preheader.i25.i.preheader ], [ %.022.i.3, %DoHorizontalFilter_SSE2.exit.loopexit75.unr-lcssa ]
  %.pn39.i.epil.init = phi ptr [ %0, %.preheader.i25.i.preheader ], [ %.023.i.3, %DoHorizontalFilter_SSE2.exit.loopexit75.unr-lcssa ]
  %lcmp.mod80 = icmp ne i32 %xtraiter78, 0
  tail call void @llvm.assume(i1 %lcmp.mod80)
  br label %.preheader.i25.i.epil

.preheader.i25.i.epil:                            ; preds = %.preheader.i25.i.epil, %.preheader.i25.i.epil.preheader
  %.pn2440.i.epil = phi ptr [ %.022.i.epil, %.preheader.i25.i.epil ], [ %.pn2440.i.epil.init, %.preheader.i25.i.epil.preheader ]
  %.pn39.i.epil = phi ptr [ %.023.i.epil, %.preheader.i25.i.epil ], [ %.pn39.i.epil.init, %.preheader.i25.i.epil.preheader ]
  %epil.iter = phi i32 [ %epil.iter.next, %.preheader.i25.i.epil ], [ 0, %.preheader.i25.i.epil.preheader ]
  %.022.i.epil = getelementptr inbounds i8, ptr %.pn2440.i.epil, i64 %i.by ; 2 uses
  %.023.i.epil = getelementptr inbounds i8, ptr %.pn39.i.epil, i64 %i.by ; 3 uses
  %i.gz = load i8, ptr %.023.i.epil, align 1, !tbaa !9, !alias.scope !27, !noalias !30
  %i.ha = getelementptr inbounds i8, ptr %.023.i.epil, i64 %i.cb
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !9, !alias.scope !27, !noalias !30
  %i.hc = sub i8 %i.gz, %i.hb
  store i8 %i.hc, ptr %.022.i.epil, align 1, !tbaa !9, !alias.scope !30, !noalias !27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !43)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter78
  br i1 %epil.iter.cmp.not, label %DoHorizontalFilter_SSE2.exit, label %.preheader.i25.i.epil, !llvm.loop !55

DoHorizontalFilter_SSE2.exit:                     ; preds = %DoHorizontalFilter_SSE2.exit.loopexit75.unr-lcssa, %.preheader.i25.i.epil, %PredictLineLeft_SSE2.exit38.loopexit.us54.i, %PredictLineLeft_SSE2.exit38.us.i, %PredictLineLeft_SSE2.exit.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @VerticalFilter_SSE2(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef writeonly captures(none) initializes((0, 1)) %4) #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.a = load i8, ptr %0, align 1, !tbaa !9, !alias.scope !56, !noalias !59
  store i8 %i.a, ptr %4, align 1, !tbaa !9, !alias.scope !59, !noalias !56
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 6 uses
  %i.d = add nsw i32 %1, -1                       ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !61)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64)
  %i.e = icmp sgt i32 %1, 32
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.f = and i32 %i.d, 2147483616
  %i.g = zext nneg i32 %i.f to i64
  %i.h = add nsw i64 %i.g, -32                    ; 3 uses
  %i.i = lshr exact i64 %i.h, 5
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.j, 1152921504606846974
  br label %.lr.ph.i.i

.preheader.loopexit.i.i.unr-lcssa:                ; preds = %.lr.ph.i.i
  %i.l = and i64 %i.h, 32
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %.preheader.loopexit.i.i

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.loopexit.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %.preheader.loopexit.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod72 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod72)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.epil.init ; 4 uses
  %i.n = load <16 x i8>, ptr %i.m, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -1
  %i.p = load <16 x i8>, ptr %i.o, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load <16 x i8>, ptr %i.q, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 15
  %i.t = load <16 x i8>, ptr %i.s, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.u = sub <16 x i8> %i.n, %i.p
  %i.v = sub <16 x i8> %i.r, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.epil.init ; 2 uses
  store <16 x i8> %i.u, ptr %i.w, align 1, !tbaa !9, !alias.scope !67, !noalias !66
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <16 x i8> %i.v, ptr %i.x, align 1, !tbaa !9, !alias.scope !67, !noalias !66
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.init, 32
  br label %.preheader.loopexit.i.i

.preheader.loopexit.i.i:                          ; preds = %.preheader.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.loopexit.i.i.unr-lcssa ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil.preheader ]
  %i.y = trunc nuw nsw i64 %indvars.iv.next.i.i.lcssa to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.y, %.preheader.loopexit.i.i ] ; 2 uses
  %i.z = icmp slt i32 %.0.lcssa.i.i, %i.d
  br i1 %i.z, label %iter.check, label %PredictLineLeft_SSE2.exit.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.aa = zext i32 %.0.lcssa.i.i to i64           ; 6 uses
  %wide.trip.count.i.i = zext nneg i32 %i.d to i64 ; 2 uses
  %i.ab = sub nsw i64 %wide.trip.count.i.i, %i.aa ; 7 uses
  %min.iters.check = icmp ult i64 %i.ab, 8
  br i1 %min.iters.check, label %.lr.ph32.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check12 = icmp ult i64 %i.ab, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, -32                     ; 4 uses
  %i.ac = add nsw i64 %n.vec, %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i64 %index, %i.aa               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %wide.load13 = load <16 x i8>, ptr %i.af, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.ag = getelementptr i8, ptr %i.ae, i64 -1
  %i.ah = getelementptr i8, ptr %i.ae, i64 15
  %wide.load14 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %wide.load15 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.ai = sub <16 x i8> %wide.load, %wide.load14
  %i.aj = sub <16 x i8> %wide.load13, %wide.load15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <16 x i8> %i.ai, ptr %i.ak, align 1, !tbaa !9, !alias.scope !67, !noalias !66
  store <16 x i8> %i.aj, ptr %i.al, align 1, !tbaa !9, !alias.scope !67, !noalias !66
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !68

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %PredictLineLeft_SSE2.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph32.i.i.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %i.ab, -8                    ; 3 uses
  %i.an = add nsw i64 %n.vec17, %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next21, %vec.epilog.vector.body ] ; 2 uses
  %i.ao = add nuw i64 %index18, %i.aa             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ao ; 2 uses
  %wide.load19 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %wide.load20 = load <8 x i8>, ptr %i.aq, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.ar = sub <8 x i8> %wide.load19, %wide.load20
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ao
  store <8 x i8> %i.ar, ptr %i.as, align 1, !tbaa !9, !alias.scope !67, !noalias !66
  %index.next21 = add nuw i64 %index18, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next21, %n.vec17
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !69

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n22 = icmp eq i64 %i.ab, %n.vec17
  br i1 %cmp.n22, label %PredictLineLeft_SSE2.exit.i, label %.lr.ph32.i.i.preheader

.lr.ph32.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv34.i.i.ph = phi i64 [ %i.aa, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph32.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i ; 4 uses
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -1
  %i.ax = load <16 x i8>, ptr %i.aw, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = load <16 x i8>, ptr %i.ay, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 15
  %i.bb = load <16 x i8>, ptr %i.ba, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.bc = sub <16 x i8> %i.av, %i.ax
  %i.bd = sub <16 x i8> %i.az, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i ; 2 uses
  store <16 x i8> %i.bc, ptr %i.be, align 1, !tbaa !9, !alias.scope !67, !noalias !66
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !9, !alias.scope !67, !noalias !66
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i.i ; 4 uses
  %i.bh = load <16 x i8>, ptr %i.bg, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -1
  %i.bj = load <16 x i8>, ptr %i.bi, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load <16 x i8>, ptr %i.bk, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.bn = load <16 x i8>, ptr %i.bm, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.bo = sub <16 x i8> %i.bh, %i.bj
  %i.bp = sub <16 x i8> %i.bl, %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i.i ; 2 uses
  store <16 x i8> %i.bo, ptr %i.bq, align 1, !tbaa !9, !alias.scope !67, !noalias !66
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %i.bp, ptr %i.br, align 1, !tbaa !9, !alias.scope !67, !noalias !66
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !41

.lr.ph32.i.i:                                     ; preds = %.lr.ph32.i.i.preheader, %.lr.ph32.i.i
  %indvars.iv34.i.i = phi i64 [ %indvars.iv.next35.i.i, %.lr.ph32.i.i ], [ %indvars.iv34.i.i.ph, %.lr.ph32.i.i.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv34.i.i ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.bu = getelementptr i8, ptr %i.bs, i64 -1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9, !alias.scope !66, !noalias !67
  %i.bw = sub i8 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv34.i.i
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !9, !alias.scope !67, !noalias !66
  %indvars.iv.next35.i.i = add nuw nsw i64 %indvars.iv34.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next35.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %PredictLineLeft_SSE2.exit.i, label %.lr.ph32.i.i, !llvm.loop !70

PredictLineLeft_SSE2.exit.i:                      ; preds = %.lr.ph32.i.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i
  %i.by = sext i32 %3 to i64                      ; 4 uses
  %i.bz = icmp sgt i32 %2, 1
  br i1 %i.bz, label %.lr.ph.i, label %DoVerticalFilter_SSE2.exit

.lr.ph.i:                                         ; preds = %PredictLineLeft_SSE2.exit.i
  %i.ca = icmp sgt i32 %1, 31
  %wide.trip.count.i26.i = zext i32 %1 to i64     ; 7 uses
  br i1 %i.ca, label %.lr.ph.preheader.i31.us.i.preheader, label %.lr.ph.split.i

.lr.ph.preheader.i31.us.i.preheader:              ; preds = %.lr.ph.i
  %i.cb = and i32 %1, 2147483616
  %i.cc = zext nneg i32 %i.cb to i64              ; 2 uses
  %i.cd = sub nsw i64 %wide.trip.count.i26.i, %i.cc ; 4 uses
  %i.ce = add nsw i64 %i.cc, -32                  ; 3 uses
  %i.cf = lshr exact i64 %i.ce, 5
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %i.ch = icmp eq i64 %i.ce, 0
  %unroll_iter77 = and i64 %i.cg, 1152921504606846974
  %i.ci = and i64 %i.ce, 32
  %lcmp.mod74.not.not = icmp eq i64 %i.ci, 0
  %lcmp.mod76 = trunc i64 %i.cg to i1
  %min.iters.check38 = icmp ult i64 %i.cd, 8
  %min.iters.check40 = icmp ult i64 %i.cd, 32
  %n.mod.vf42 = and i64 %wide.trip.count.i26.i, 31 ; 3 uses
  %n.vec43 = sub nuw nsw i64 %i.cd, %n.mod.vf42   ; 3 uses
  %cmp.n52 = icmp eq i64 %n.mod.vf42, 0
  %min.epilog.iters.check58 = icmp samesign ult i64 %n.mod.vf42, 8
  %n.mod.vf60 = and i64 %wide.trip.count.i26.i, 7 ; 2 uses
  %n.vec61 = sub nsw i64 %i.cd, %n.mod.vf60       ; 2 uses
  %cmp.n68 = icmp eq i64 %n.mod.vf60, 0
  br label %.lr.ph.preheader.i31.us.i

.lr.ph.preheader.i31.us.i:                        ; preds = %.lr.ph.preheader.i31.us.i.preheader, %PredictLineTop_SSE2.exit.us.i
  %.038.us.i = phi i32 [ %i.ew, %PredictLineTop_SSE2.exit.us.i ], [ 1, %.lr.ph.preheader.i31.us.i.preheader ]
  %.pn2237.us.i = phi ptr [ %.020.us.i, %PredictLineTop_SSE2.exit.us.i ], [ %4, %.lr.ph.preheader.i31.us.i.preheader ]
  %.pn36.us.i = phi ptr [ %.021.us.i, %PredictLineTop_SSE2.exit.us.i ], [ %0, %.lr.ph.preheader.i31.us.i.preheader ] ; 10 uses
  %.020.us.i = getelementptr inbounds i8, ptr %.pn2237.us.i, i64 %i.by ; 10 uses
  %.021.us.i = getelementptr inbounds i8, ptr %.pn36.us.i, i64 %i.by ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  br i1 %i.ch, label %.lr.ph.i32.us.i.epil.preheader, label %.lr.ph.i32.us.i

.lr.ph.i32.us.i:                                  ; preds = %.lr.ph.preheader.i31.us.i, %.lr.ph.i32.us.i
  %indvars.iv.i33.us.i = phi i64 [ %indvars.iv.next.i34.us.i.1, %.lr.ph.i32.us.i ], [ 0, %.lr.ph.preheader.i31.us.i ] ; 7 uses
  %niter78 = phi i64 [ %niter78.next.1, %.lr.ph.i32.us.i ], [ 0, %.lr.ph.preheader.i31.us.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.021.us.i, i64 %indvars.iv.i33.us.i
  %i.ck = load <16 x i8>, ptr %i.cj, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %i.cl = or disjoint i64 %indvars.iv.i33.us.i, 16 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.021.us.i, i64 %i.cl
  %i.cn = load <16 x i8>, ptr %i.cm, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %i.co = getelementptr inbounds nuw i8, ptr %.pn36.us.i, i64 %indvars.iv.i33.us.i
  %i.cp = load <16 x i8>, ptr %i.co, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %i.cq = getelementptr inbounds nuw i8, ptr %.pn36.us.i, i64 %i.cl
  %i.cr = load <16 x i8>, ptr %i.cq, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %i.cs = sub <16 x i8> %i.ck, %i.cp
  %i.ct = sub <16 x i8> %i.cn, %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 %indvars.iv.i33.us.i
  store <16 x i8> %i.cs, ptr %i.cu, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  %i.cv = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 %i.cl
  store <16 x i8> %i.ct, ptr %i.cv, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  %indvars.iv.next.i34.us.i = or disjoint i64 %indvars.iv.i33.us.i, 32 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.021.us.i, i64 %indvars.iv.next.i34.us.i
  %i.cx = load <16 x i8>, ptr %i.cw, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %i.cy = or disjoint i64 %indvars.iv.i33.us.i, 48 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.021.us.i, i64 %i.cy
  %i.da = load <16 x i8>, ptr %i.cz, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %i.db = getelementptr inbounds nuw i8, ptr %.pn36.us.i, i64 %indvars.iv.next.i34.us.i
  %i.dc = load <16 x i8>, ptr %i.db, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %i.dd = getelementptr inbounds nuw i8, ptr %.pn36.us.i, i64 %i.cy
  %i.de = load <16 x i8>, ptr %i.dd, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %i.df = sub <16 x i8> %i.cx, %i.dc
  %i.dg = sub <16 x i8> %i.da, %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 %indvars.iv.next.i34.us.i
  store <16 x i8> %i.df, ptr %i.dh, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  %i.di = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 %i.cy
  store <16 x i8> %i.dg, ptr %i.di, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  %indvars.iv.next.i34.us.i.1 = add nuw nsw i64 %indvars.iv.i33.us.i, 64 ; 3 uses
  %niter78.next.1 = add i64 %niter78, 2           ; 2 uses
  %niter78.ncmp.1.not = icmp eq i64 %niter78.next.1, %unroll_iter77
  br i1 %niter78.ncmp.1.not, label %.preheader.loopexit.i35.us.i.unr-lcssa, label %.lr.ph.i32.us.i, !llvm.loop !84

.preheader.loopexit.i35.us.i.unr-lcssa:           ; preds = %.lr.ph.i32.us.i
  br i1 %lcmp.mod74.not.not, label %.lr.ph.i32.us.i.epil.preheader, label %.preheader.loopexit.i35.us.i

.lr.ph.i32.us.i.epil.preheader:                   ; preds = %.preheader.loopexit.i35.us.i.unr-lcssa, %.lr.ph.preheader.i31.us.i
  %indvars.iv.i33.us.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i31.us.i ], [ %indvars.iv.next.i34.us.i.1, %.preheader.loopexit.i35.us.i.unr-lcssa ] ; 5 uses
  tail call void @llvm.assume(i1 %lcmp.mod76)
  %i.dj = getelementptr inbounds nuw i8, ptr %.021.us.i, i64 %indvars.iv.i33.us.i.epil.init
  %i.dk = load <16 x i8>, ptr %i.dj, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %i.dl = or disjoint i64 %indvars.iv.i33.us.i.epil.init, 16 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.021.us.i, i64 %i.dl
  %i.dn = load <16 x i8>, ptr %i.dm, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %i.do = getelementptr inbounds nuw i8, ptr %.pn36.us.i, i64 %indvars.iv.i33.us.i.epil.init
  %i.dp = load <16 x i8>, ptr %i.do, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %i.dq = getelementptr inbounds nuw i8, ptr %.pn36.us.i, i64 %i.dl
  %i.dr = load <16 x i8>, ptr %i.dq, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %i.ds = sub <16 x i8> %i.dk, %i.dp
  %i.dt = sub <16 x i8> %i.dn, %i.dr
  %i.du = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 %indvars.iv.i33.us.i.epil.init
  store <16 x i8> %i.ds, ptr %i.du, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  %i.dv = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 %i.dl
  store <16 x i8> %i.dt, ptr %i.dv, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  %indvars.iv.next.i34.us.i.epil = add nuw nsw i64 %indvars.iv.i33.us.i.epil.init, 32
  br label %.preheader.loopexit.i35.us.i

.preheader.loopexit.i35.us.i:                     ; preds = %.preheader.loopexit.i35.us.i.unr-lcssa, %.lr.ph.i32.us.i.epil.preheader
  %indvars.iv.next.i34.us.i.lcssa = phi i64 [ %indvars.iv.next.i34.us.i.1, %.preheader.loopexit.i35.us.i.unr-lcssa ], [ %indvars.iv.next.i34.us.i.epil, %.lr.ph.i32.us.i.epil.preheader ] ; 6 uses
  %i.dw = trunc nuw nsw i64 %indvars.iv.next.i34.us.i.lcssa to i32
  %i.dx = icmp sgt i32 %1, %i.dw
  br i1 %i.dx, label %iter.check55, label %PredictLineTop_SSE2.exit.us.i

iter.check55:                                     ; preds = %.preheader.loopexit.i35.us.i
  br i1 %min.iters.check38, label %.lr.ph32.i27.us.i.preheader, label %vector.main.loop.iter.check39

vector.main.loop.iter.check39:                    ; preds = %iter.check55
  br i1 %min.iters.check40, label %vec.epilog.ph59, label %vector.ph41

vector.ph41:                                      ; preds = %vector.main.loop.iter.check39
  %i.dy = add i64 %indvars.iv.next.i34.us.i.lcssa, %n.vec43
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph41
  %index45 = phi i64 [ 0, %vector.ph41 ], [ %index.next50, %vector.body44 ] ; 2 uses
  %i.dz = add nuw i64 %indvars.iv.next.i34.us.i.lcssa, %index45 ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.021.us.i, i64 %i.dz ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load46 = load <16 x i8>, ptr %i.ea, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %wide.load47 = load <16 x i8>, ptr %i.eb, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %i.ec = getelementptr inbounds nuw i8, ptr %.pn36.us.i, i64 %i.dz ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %wide.load48 = load <16 x i8>, ptr %i.ec, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %wide.load49 = load <16 x i8>, ptr %i.ed, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %i.ee = sub <16 x i8> %wide.load46, %wide.load48
  %i.ef = sub <16 x i8> %wide.load47, %wide.load49
  %i.eg = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 %i.dz ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  store <16 x i8> %i.ee, ptr %i.eg, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  store <16 x i8> %i.ef, ptr %i.eh, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  %index.next50 = add nuw i64 %index45, 32        ; 2 uses
  %i.ei = icmp eq i64 %index.next50, %n.vec43
  br i1 %i.ei, label %middle.block51, label %vector.body44, !llvm.loop !85

middle.block51:                                   ; preds = %vector.body44
  br i1 %cmp.n52, label %PredictLineTop_SSE2.exit.us.i, label %vec.epilog.iter.check57

vec.epilog.iter.check57:                          ; preds = %middle.block51
  br i1 %min.epilog.iters.check58, label %.lr.ph32.i27.us.i.preheader, label %vec.epilog.ph59, !prof !19

vec.epilog.ph59:                                  ; preds = %vector.main.loop.iter.check39, %vec.epilog.iter.check57
  %vec.epilog.resume.val53 = phi i64 [ %n.vec43, %vec.epilog.iter.check57 ], [ 0, %vector.main.loop.iter.check39 ]
  %i.ej = add i64 %indvars.iv.next.i34.us.i.lcssa, %n.vec61
  br label %vec.epilog.vector.body62

vec.epilog.vector.body62:                         ; preds = %vec.epilog.vector.body62, %vec.epilog.ph59
  %index63 = phi i64 [ %vec.epilog.resume.val53, %vec.epilog.ph59 ], [ %index.next66, %vec.epilog.vector.body62 ] ; 2 uses
  %i.ek = add nuw i64 %indvars.iv.next.i34.us.i.lcssa, %index63 ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.021.us.i, i64 %i.ek
  %wide.load64 = load <8 x i8>, ptr %i.el, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %i.em = getelementptr inbounds nuw i8, ptr %.pn36.us.i, i64 %i.ek
  %wide.load65 = load <8 x i8>, ptr %i.em, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %i.en = sub <8 x i8> %wide.load64, %wide.load65
  %i.eo = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 %i.ek
  store <8 x i8> %i.en, ptr %i.eo, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  %index.next66 = add nuw i64 %index63, 8         ; 2 uses
  %i.ep = icmp eq i64 %index.next66, %n.vec61
  br i1 %i.ep, label %vec.epilog.middle.block67, label %vec.epilog.vector.body62, !llvm.loop !86

vec.epilog.middle.block67:                        ; preds = %vec.epilog.vector.body62
  br i1 %cmp.n68, label %PredictLineTop_SSE2.exit.us.i, label %.lr.ph32.i27.us.i.preheader

.lr.ph32.i27.us.i.preheader:                      ; preds = %iter.check55, %vec.epilog.iter.check57, %vec.epilog.middle.block67
  %indvars.iv34.i28.us.i.ph = phi i64 [ %indvars.iv.next.i34.us.i.lcssa, %iter.check55 ], [ %i.dy, %vec.epilog.iter.check57 ], [ %i.ej, %vec.epilog.middle.block67 ]
  br label %.lr.ph32.i27.us.i

.lr.ph32.i27.us.i:                                ; preds = %.lr.ph32.i27.us.i.preheader, %.lr.ph32.i27.us.i
  %indvars.iv34.i28.us.i = phi i64 [ %indvars.iv.next35.i29.us.i, %.lr.ph32.i27.us.i ], [ %indvars.iv34.i28.us.i.ph, %.lr.ph32.i27.us.i.preheader ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.021.us.i, i64 %indvars.iv34.i28.us.i
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %i.es = getelementptr inbounds nuw i8, ptr %.pn36.us.i, i64 %indvars.iv34.i28.us.i
  %i.et = load i8, ptr %i.es, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %i.eu = sub i8 %i.er, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %.020.us.i, i64 %indvars.iv34.i28.us.i
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  %indvars.iv.next35.i29.us.i = add nuw nsw i64 %indvars.iv34.i28.us.i, 1 ; 2 uses
  %exitcond.not.i30.us.i = icmp eq i64 %indvars.iv.next35.i29.us.i, %wide.trip.count.i26.i
  br i1 %exitcond.not.i30.us.i, label %PredictLineTop_SSE2.exit.us.i, label %.lr.ph32.i27.us.i, !llvm.loop !87

PredictLineTop_SSE2.exit.us.i:                    ; preds = %.lr.ph32.i27.us.i, %middle.block51, %vec.epilog.middle.block67, %.preheader.loopexit.i35.us.i
  %i.ew = add nuw nsw i32 %.038.us.i, 1           ; 2 uses
  %exitcond54.not.i = icmp eq i32 %i.ew, %2
  br i1 %exitcond54.not.i, label %DoVerticalFilter_SSE2.exit, label %.lr.ph.preheader.i31.us.i, !llvm.loop !88

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ex = icmp sgt i32 %1, 0
  br i1 %i.ex, label %.preheader.i23.us39.i.preheader, label %DoVerticalFilter_SSE2.exit

.preheader.i23.us39.i.preheader:                  ; preds = %.lr.ph.split.i
  %min.iters.check24 = icmp ult i32 %1, 8
  %n.vec27 = and i64 %wide.trip.count.i26.i, 2147483640 ; 4 uses
  %i.ey = icmp eq i64 %n.vec27, 8
  %i.ez = icmp eq i64 %n.vec27, 16
  %cmp.n36 = icmp eq i64 %n.vec27, %wide.trip.count.i26.i
  br label %.preheader.i23.us39.i

.preheader.i23.us39.i:                            ; preds = %.preheader.i23.us39.i.preheader, %PredictLineTop_SSE2.exit.loopexit.us51.i
  %.038.us40.i = phi i32 [ %i.gb, %PredictLineTop_SSE2.exit.loopexit.us51.i ], [ 1, %.preheader.i23.us39.i.preheader ]
  %.pn2237.us41.i = phi ptr [ %.020.us43.i, %PredictLineTop_SSE2.exit.loopexit.us51.i ], [ %4, %.preheader.i23.us39.i.preheader ]
  %.pn36.us42.i = phi ptr [ %.021.us44.i, %PredictLineTop_SSE2.exit.loopexit.us51.i ], [ %0, %.preheader.i23.us39.i.preheader ] ; 8 uses
  %.020.us43.i = getelementptr inbounds i8, ptr %.pn2237.us41.i, i64 %i.by ; 8 uses
  %.021.us44.i = getelementptr inbounds i8, ptr %.pn36.us42.i, i64 %i.by ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !71)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  br i1 %min.iters.check24, label %.lr.ph32.i27.us46.i.preheader, label %vector.body28

vector.body28:                                    ; preds = %.preheader.i23.us39.i
  %i.fa = getelementptr inbounds nuw i8, ptr %.021.us44.i, i64 4
  %wide.load30 = load <4 x i8>, ptr %.021.us44.i, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %wide.load31 = load <4 x i8>, ptr %i.fa, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn36.us42.i, i64 4
  %wide.load32 = load <4 x i8>, ptr %.pn36.us42.i, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %wide.load33 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %i.fc = sub <4 x i8> %wide.load30, %wide.load32
  %i.fd = sub <4 x i8> %wide.load31, %wide.load33
  %i.fe = getelementptr inbounds nuw i8, ptr %.020.us43.i, i64 4
  store <4 x i8> %i.fc, ptr %.020.us43.i, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  store <4 x i8> %i.fd, ptr %i.fe, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  br i1 %i.ey, label %middle.block35, label %vector.body28.1

vector.body28.1:                                  ; preds = %vector.body28
  %i.ff = getelementptr inbounds nuw i8, ptr %.021.us44.i, i64 8
  %i.fg = getelementptr inbounds nuw i8, ptr %.021.us44.i, i64 12
  %wide.load30.1 = load <4 x i8>, ptr %i.ff, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %wide.load31.1 = load <4 x i8>, ptr %i.fg, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %i.fh = getelementptr inbounds nuw i8, ptr %.pn36.us42.i, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %.pn36.us42.i, i64 12
  %wide.load32.1 = load <4 x i8>, ptr %i.fh, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %wide.load33.1 = load <4 x i8>, ptr %i.fi, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %i.fj = sub <4 x i8> %wide.load30.1, %wide.load32.1
  %i.fk = sub <4 x i8> %wide.load31.1, %wide.load33.1
  %i.fl = getelementptr inbounds nuw i8, ptr %.020.us43.i, i64 8
  %i.fm = getelementptr inbounds nuw i8, ptr %.020.us43.i, i64 12
  store <4 x i8> %i.fj, ptr %i.fl, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  store <4 x i8> %i.fk, ptr %i.fm, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  br i1 %i.ez, label %middle.block35, label %vector.body28.2

vector.body28.2:                                  ; preds = %vector.body28.1
  %i.fn = getelementptr inbounds nuw i8, ptr %.021.us44.i, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %.021.us44.i, i64 20
  %wide.load30.2 = load <4 x i8>, ptr %i.fn, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %wide.load31.2 = load <4 x i8>, ptr %i.fo, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %i.fp = getelementptr inbounds nuw i8, ptr %.pn36.us42.i, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %.pn36.us42.i, i64 20
  %wide.load32.2 = load <4 x i8>, ptr %i.fp, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %wide.load33.2 = load <4 x i8>, ptr %i.fq, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %i.fr = sub <4 x i8> %wide.load30.2, %wide.load32.2
  %i.fs = sub <4 x i8> %wide.load31.2, %wide.load33.2
  %i.ft = getelementptr inbounds nuw i8, ptr %.020.us43.i, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %.020.us43.i, i64 20
  store <4 x i8> %i.fr, ptr %i.ft, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  store <4 x i8> %i.fs, ptr %i.fu, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  br label %middle.block35

middle.block35:                                   ; preds = %vector.body28.2, %vector.body28.1, %vector.body28
  br i1 %cmp.n36, label %PredictLineTop_SSE2.exit.loopexit.us51.i, label %.lr.ph32.i27.us46.i.preheader

.lr.ph32.i27.us46.i.preheader:                    ; preds = %.preheader.i23.us39.i, %middle.block35
  %indvars.iv34.i28.us47.i.ph = phi i64 [ 0, %.preheader.i23.us39.i ], [ %n.vec27, %middle.block35 ]
  br label %.lr.ph32.i27.us46.i

.lr.ph32.i27.us46.i:                              ; preds = %.lr.ph32.i27.us46.i.preheader, %.lr.ph32.i27.us46.i
  %indvars.iv34.i28.us47.i = phi i64 [ %indvars.iv.next35.i29.us48.i, %.lr.ph32.i27.us46.i ], [ %indvars.iv34.i28.us47.i.ph, %.lr.ph32.i27.us46.i.preheader ] ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.021.us44.i, i64 %indvars.iv34.i28.us47.i
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !9, !alias.scope !78, !noalias !79
  %i.fx = getelementptr inbounds nuw i8, ptr %.pn36.us42.i, i64 %indvars.iv34.i28.us47.i
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !9, !alias.scope !80, !noalias !81
  %i.fz = sub i8 %i.fw, %i.fy
  %i.ga = getelementptr inbounds nuw i8, ptr %.020.us43.i, i64 %indvars.iv34.i28.us47.i
  store i8 %i.fz, ptr %i.ga, align 1, !tbaa !9, !alias.scope !82, !noalias !83
  %indvars.iv.next35.i29.us48.i = add nuw nsw i64 %indvars.iv34.i28.us47.i, 1 ; 2 uses
  %exitcond.not.i30.us49.i = icmp eq i64 %indvars.iv.next35.i29.us48.i, %wide.trip.count.i26.i
  br i1 %exitcond.not.i30.us49.i, label %PredictLineTop_SSE2.exit.loopexit.us51.i, label %.lr.ph32.i27.us46.i, !llvm.loop !89

PredictLineTop_SSE2.exit.loopexit.us51.i:         ; preds = %.lr.ph32.i27.us46.i, %middle.block35
  %i.gb = add nuw nsw i32 %.038.us40.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.gb, %2
  br i1 %exitcond.not.i, label %DoVerticalFilter_SSE2.exit, label %.preheader.i23.us39.i, !llvm.loop !88

DoVerticalFilter_SSE2.exit:                       ; preds = %PredictLineTop_SSE2.exit.loopexit.us51.i, %PredictLineTop_SSE2.exit.us.i, %PredictLineLeft_SSE2.exit.i, %.lr.ph.split.i
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @GradientFilter_SSE2(ptr noalias nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias nofree noundef writeonly captures(none) initializes((0, 1)) %4) #2 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !93)
  %i.a = load i8, ptr %0, align 1, !tbaa !9, !alias.scope !90, !noalias !93
  store i8 %i.a, ptr %4, align 1, !tbaa !9, !alias.scope !93, !noalias !90
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 6 uses
  %i.d = add i32 %1, -1                           ; 12 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.e = icmp sgt i32 %1, 32
  br i1 %i.e, label %.lr.ph.preheader.i.i, label %.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %i.f = and i32 %i.d, 2147483616
  %i.g = zext nneg i32 %i.f to i64
  %i.h = add nsw i64 %i.g, -32                    ; 3 uses
  %i.i = lshr exact i64 %i.h, 5
  %i.j = add nuw nsw i64 %i.i, 1                  ; 2 uses
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %i.j, 1152921504606846974
  br label %.lr.ph.i.i

.preheader.loopexit.i.i.unr-lcssa:                ; preds = %.lr.ph.i.i
  %i.l = and i64 %i.h, 32
  %lcmp.mod.not.not = icmp eq i64 %i.l, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.i.epil.preheader, label %.preheader.loopexit.i.i

.lr.ph.i.i.epil.preheader:                        ; preds = %.preheader.loopexit.i.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %.preheader.loopexit.i.i.unr-lcssa ] ; 3 uses
  %lcmp.mod66 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod66)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i.epil.init ; 4 uses
  %i.n = load <16 x i8>, ptr %i.m, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -1
  %i.p = load <16 x i8>, ptr %i.o, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.r = load <16 x i8>, ptr %i.q, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 15
  %i.t = load <16 x i8>, ptr %i.s, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.u = sub <16 x i8> %i.n, %i.p
  %i.v = sub <16 x i8> %i.r, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i.epil.init ; 2 uses
  store <16 x i8> %i.u, ptr %i.w, align 1, !tbaa !9, !alias.scope !101, !noalias !100
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <16 x i8> %i.v, ptr %i.x, align 1, !tbaa !9, !alias.scope !101, !noalias !100
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil.init, 32
  br label %.preheader.loopexit.i.i

.preheader.loopexit.i.i:                          ; preds = %.preheader.loopexit.i.i.unr-lcssa, %.lr.ph.i.i.epil.preheader
  %indvars.iv.next.i.i.lcssa = phi i64 [ %indvars.iv.next.i.i.1, %.preheader.loopexit.i.i.unr-lcssa ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil.preheader ]
  %i.y = trunc nuw nsw i64 %indvars.iv.next.i.i.lcssa to i32
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.loopexit.i.i, %bb.a
  %.0.lcssa.i.i = phi i32 [ 0, %bb.a ], [ %i.y, %.preheader.loopexit.i.i ] ; 2 uses
  %i.z = icmp slt i32 %.0.lcssa.i.i, %i.d
  br i1 %i.z, label %iter.check, label %PredictLineLeft_SSE2.exit.i

iter.check:                                       ; preds = %.preheader.i.i
  %i.aa = zext i32 %.0.lcssa.i.i to i64           ; 6 uses
  %wide.trip.count.i.i = zext nneg i32 %i.d to i64 ; 2 uses
  %i.ab = sub nsw i64 %wide.trip.count.i.i, %i.aa ; 7 uses
  %min.iters.check = icmp ult i64 %i.ab, 8
  br i1 %min.iters.check, label %.lr.ph32.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check18 = icmp ult i64 %i.ab, 32
  br i1 %min.iters.check18, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, -32                     ; 4 uses
  %i.ac = add nsw i64 %n.vec, %i.aa
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i64 %index, %i.aa               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %wide.load19 = load <16 x i8>, ptr %i.af, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.ag = getelementptr i8, ptr %i.ae, i64 -1
  %i.ah = getelementptr i8, ptr %i.ae, i64 15
  %wide.load20 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %wide.load21 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.ai = sub <16 x i8> %wide.load, %wide.load20
  %i.aj = sub <16 x i8> %wide.load19, %wide.load21
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ad ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <16 x i8> %i.ai, ptr %i.ak, align 1, !tbaa !9, !alias.scope !101, !noalias !100
  store <16 x i8> %i.aj, ptr %i.al, align 1, !tbaa !9, !alias.scope !101, !noalias !100
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %PredictLineLeft_SSE2.exit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph32.i.i.preheader, label %vec.epilog.ph, !prof !19

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.ab, -8                    ; 3 uses
  %i.an = add nsw i64 %n.vec23, %i.aa
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 2 uses
  %i.ao = add nuw i64 %index24, %i.aa             ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ao ; 2 uses
  %wide.load25 = load <8 x i8>, ptr %i.ap, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.aq = getelementptr i8, ptr %i.ap, i64 -1
  %wide.load26 = load <8 x i8>, ptr %i.aq, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.ar = sub <8 x i8> %wide.load25, %wide.load26
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ao
  store <8 x i8> %i.ar, ptr %i.as, align 1, !tbaa !9, !alias.scope !101, !noalias !100
  %index.next27 = add nuw i64 %index24, 8         ; 2 uses
  %i.at = icmp eq i64 %index.next27, %n.vec23
  br i1 %i.at, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !103

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %i.ab, %n.vec23
  br i1 %cmp.n28, label %PredictLineLeft_SSE2.exit.i, label %.lr.ph32.i.i.preheader

.lr.ph32.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv34.i.i.ph = phi i64 [ %i.aa, %iter.check ], [ %i.ac, %vec.epilog.iter.check ], [ %i.an, %vec.epilog.middle.block ]
  br label %.lr.ph32.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %.lr.ph.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %.lr.ph.i.i ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.i ; 4 uses
  %i.av = load <16 x i8>, ptr %i.au, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.aw = getelementptr inbounds i8, ptr %i.au, i64 -1
  %i.ax = load <16 x i8>, ptr %i.aw, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.az = load <16 x i8>, ptr %i.ay, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 15
  %i.bb = load <16 x i8>, ptr %i.ba, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.bc = sub <16 x i8> %i.av, %i.ax
  %i.bd = sub <16 x i8> %i.az, %i.bb
  %i.be = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i ; 2 uses
  store <16 x i8> %i.bc, ptr %i.be, align 1, !tbaa !9, !alias.scope !101, !noalias !100
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store <16 x i8> %i.bd, ptr %i.bf, align 1, !tbaa !9, !alias.scope !101, !noalias !100
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 32 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i.i ; 4 uses
  %i.bh = load <16 x i8>, ptr %i.bg, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -1
  %i.bj = load <16 x i8>, ptr %i.bi, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load <16 x i8>, ptr %i.bk, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 15
  %i.bn = load <16 x i8>, ptr %i.bm, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.bo = sub <16 x i8> %i.bh, %i.bj
  %i.bp = sub <16 x i8> %i.bl, %i.bn
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i.i ; 2 uses
  store <16 x i8> %i.bo, ptr %i.bq, align 1, !tbaa !9, !alias.scope !101, !noalias !100
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %i.bp, ptr %i.br, align 1, !tbaa !9, !alias.scope !101, !noalias !100
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 64 ; 3 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.preheader.loopexit.i.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !41

.lr.ph32.i.i:                                     ; preds = %.lr.ph32.i.i.preheader, %.lr.ph32.i.i
  %indvars.iv34.i.i = phi i64 [ %indvars.iv.next35.i.i, %.lr.ph32.i.i ], [ %indvars.iv34.i.i.ph, %.lr.ph32.i.i.preheader ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv34.i.i ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.bu = getelementptr i8, ptr %i.bs, i64 -1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !9, !alias.scope !100, !noalias !101
  %i.bw = sub i8 %i.bt, %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv34.i.i
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !9, !alias.scope !101, !noalias !100
  %indvars.iv.next35.i.i = add nuw nsw i64 %indvars.iv34.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next35.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %PredictLineLeft_SSE2.exit.i, label %.lr.ph32.i.i, !llvm.loop !104

PredictLineLeft_SSE2.exit.i:                      ; preds = %.lr.ph32.i.i, %middle.block, %vec.epilog.middle.block, %.preheader.i.i
  %i.by = sext i32 %3 to i64                      ; 15 uses
  %i.bz = icmp sgt i32 %2, 1
  br i1 %i.bz, label %.lr.ph.i, label %DoGradientFilter_SSE2.exit

.lr.ph.i:                                         ; preds = %PredictLineLeft_SSE2.exit.i
  %i.ca = sub nsw i32 0, %3
  %i.cb = sext i32 %i.ca to i64                   ; 4 uses
  %i.cc = sub nsw i64 0, %i.by                    ; 2 uses
  %i.cd = icmp sgt i32 %1, 8
  %i.ce = and i32 %i.d, 2147483640
  %i.cf = zext nneg i32 %i.ce to i64              ; 2 uses
  %wide.trip.count.i29.i = zext i32 %i.d to i64   ; 3 uses
  br i1 %i.cd, label %.lr.ph.preheader.i31.us.i.preheader, label %.lr.ph.split.i

.lr.ph.preheader.i31.us.i.preheader:              ; preds = %.lr.ph.i
  %i.cg = sub nsw i64 %wide.trip.count.i29.i, %i.cf ; 6 uses
  %min.iters.check30 = icmp ult i64 %i.cg, 4
  %min.iters.check32 = icmp ult i64 %i.cg, 16
  %n.mod.vf34 = and i64 %i.cg, 12
  %n.vec35 = and i64 %i.cg, -16                   ; 4 uses
  %cmp.n44 = icmp eq i64 %i.cg, %n.vec35
  %min.epilog.iters.check49 = icmp eq i64 %n.mod.vf34, 0
  %n.mod.vf51 = and i64 %wide.trip.count.i29.i, 3 ; 2 uses
  %n.vec52 = sub nsw i64 %i.cg, %n.mod.vf51       ; 2 uses
  %cmp.n61 = icmp eq i64 %n.mod.vf51, 0
  br label %.lr.ph.preheader.i31.us.i

.lr.ph.preheader.i31.us.i:                        ; preds = %.lr.ph.preheader.i31.us.i.preheader, %GradientPredictDirect_SSE2.exit.us.i
  %.039.us.i = phi i32 [ %i.fu, %GradientPredictDirect_SSE2.exit.us.i ], [ 1, %.lr.ph.preheader.i31.us.i.preheader ]
  %.pn2638.us.i = phi ptr [ %.024.us.i, %GradientPredictDirect_SSE2.exit.us.i ], [ %4, %.lr.ph.preheader.i31.us.i.preheader ]
  %.pn37.us.i = phi ptr [ %.025.us.i, %GradientPredictDirect_SSE2.exit.us.i ], [ %0, %.lr.ph.preheader.i31.us.i.preheader ]
  %.024.us.i = getelementptr inbounds i8, ptr %.pn2638.us.i, i64 %i.by ; 3 uses
  %.025.us.i = getelementptr inbounds i8, ptr %.pn37.us.i, i64 %i.by ; 8 uses
  %i.ch = load i8, ptr %.025.us.i, align 1, !tbaa !9, !alias.scope !90, !noalias !93
  %i.ci = getelementptr inbounds i8, ptr %.025.us.i, i64 %i.cb
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !9, !alias.scope !90, !noalias !93
  %i.ck = sub i8 %i.ch, %i.cj
  store i8 %i.ck, ptr %.024.us.i, align 1, !tbaa !9, !alias.scope !93, !noalias !90
  %i.cl = getelementptr inbounds nuw i8, ptr %.025.us.i, i64 1 ; 5 uses
  %i.cm = getelementptr inbounds i8, ptr %i.cl, i64 %i.cc ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.024.us.i, i64 1 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  br label %.lr.ph.i32.us.i

.lr.ph.i32.us.i:                                  ; preds = %.lr.ph.i32.us.i, %.lr.ph.preheader.i31.us.i
  %indvars.iv.i33.us.i = phi i64 [ 0, %.lr.ph.preheader.i31.us.i ], [ %indvars.iv.next.i34.us.i, %.lr.ph.i32.us.i ] ; 5 uses
  %i.co = getelementptr i8, ptr %.025.us.i, i64 %indvars.iv.i33.us.i
  %i.cp = load i64, ptr %i.co, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.cq = insertelement <2 x i64> poison, i64 %i.cp, i64 0
  %i.cr = getelementptr i8, ptr %i.cm, i64 %indvars.iv.i33.us.i ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.ct = insertelement <2 x i64> poison, i64 %i.cs, i64 0
  %i.cu = getelementptr i8, ptr %i.cr, i64 -1
  %i.cv = load i64, ptr %i.cu, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.cw = insertelement <2 x i64> poison, i64 %i.cv, i64 0
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv.i33.us.i
  %i.cy = load i64, ptr %i.cx, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.cz = insertelement <2 x i64> poison, i64 %i.cy, i64 0
  %i.da = bitcast <2 x i64> %i.cq to <16 x i8>
  %i.db = shufflevector <16 x i8> %i.da, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dc = bitcast <2 x i64> %i.ct to <16 x i8>
  %i.dd = shufflevector <16 x i8> %i.dc, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.de = bitcast <2 x i64> %i.cw to <16 x i8>
  %i.df = shufflevector <16 x i8> %i.de, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.dg = bitcast <16 x i8> %i.db to <8 x i16>
  %i.dh = bitcast <16 x i8> %i.dd to <8 x i16>
  %i.di = add nuw nsw <8 x i16> %i.dh, %i.dg
  %i.dj = bitcast <16 x i8> %i.df to <8 x i16>
  %i.dk = sub nsw <8 x i16> %i.di, %i.dj
  %i.dl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dk, <8 x i16> poison)
  %i.dm = bitcast <2 x i64> %i.cz to <16 x i8>
  %i.dn = sub <16 x i8> %i.dm, %i.dl
  %i.do = bitcast <16 x i8> %i.dn to <2 x i64>
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv.i33.us.i
  %i.dq = extractelement <2 x i64> %i.do, i64 0
  store i64 %i.dq, ptr %i.dp, align 1, !tbaa !9, !alias.scope !108, !noalias !90
  %indvars.iv.next.i34.us.i = add nuw nsw i64 %indvars.iv.i33.us.i, 8 ; 8 uses
  %i.dr = icmp samesign ult i64 %indvars.iv.next.i34.us.i, %i.cf
  br i1 %i.dr, label %.lr.ph.i32.us.i, label %.preheader.loopexit.i35.us.i, !llvm.loop !109

.preheader.loopexit.i35.us.i:                     ; preds = %.lr.ph.i32.us.i
  %i.ds = trunc nuw nsw i64 %indvars.iv.next.i34.us.i to i32
  %i.dt = icmp sgt i32 %i.d, %i.ds
  br i1 %i.dt, label %iter.check46, label %GradientPredictDirect_SSE2.exit.us.i

iter.check46:                                     ; preds = %.preheader.loopexit.i35.us.i
  br i1 %min.iters.check30, label %.lr.ph45.i.us.i.preheader, label %vector.main.loop.iter.check31

vector.main.loop.iter.check31:                    ; preds = %iter.check46
  br i1 %min.iters.check32, label %vec.epilog.ph50, label %vector.ph33

vector.ph33:                                      ; preds = %vector.main.loop.iter.check31
  %i.du = add i64 %indvars.iv.next.i34.us.i, %n.vec35
  br label %vector.body36

vector.body36:                                    ; preds = %vector.body36, %vector.ph33
  %index37 = phi i64 [ 0, %vector.ph33 ], [ %index.next42, %vector.body36 ] ; 2 uses
  %i.dv = add nuw i64 %indvars.iv.next.i34.us.i, %index37 ; 4 uses
  %i.dw = getelementptr i8, ptr %.025.us.i, i64 %i.dv
  %wide.load38 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.dx = getelementptr i8, ptr %i.cm, i64 %i.dv  ; 2 uses
  %wide.load39 = load <16 x i8>, ptr %i.dx, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.dy = getelementptr i8, ptr %i.dx, i64 -1
  %wide.load40 = load <16 x i8>, ptr %i.dy, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.dz = zext <16 x i8> %wide.load38 to <16 x i32>
  %i.ea = zext <16 x i8> %wide.load39 to <16 x i32>
  %i.eb = add nuw nsw <16 x i32> %i.ea, %i.dz
  %i.ec = zext <16 x i8> %wide.load40 to <16 x i32>
  %i.ed = sub nsw <16 x i32> %i.eb, %i.ec
  %i.ee = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %i.ed, <16 x i32> zeroinitializer)
  %i.ef = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.ee, <16 x i32> splat (i32 255))
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.dv
  %wide.load41 = load <16 x i8>, ptr %i.eg, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.eh = trunc nuw <16 x i32> %i.ef to <16 x i8>
  %i.ei = sub <16 x i8> %wide.load41, %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.dv
  store <16 x i8> %i.ei, ptr %i.ej, align 1, !tbaa !9, !alias.scope !108, !noalias !90
  %index.next42 = add nuw i64 %index37, 16        ; 2 uses
  %i.ek = icmp eq i64 %index.next42, %n.vec35
  br i1 %i.ek, label %middle.block43, label %vector.body36, !llvm.loop !110

middle.block43:                                   ; preds = %vector.body36
  br i1 %cmp.n44, label %GradientPredictDirect_SSE2.exit.us.i, label %vec.epilog.iter.check48

vec.epilog.iter.check48:                          ; preds = %middle.block43
  br i1 %min.epilog.iters.check49, label %.lr.ph45.i.us.i.preheader, label %vec.epilog.ph50, !prof !111

vec.epilog.ph50:                                  ; preds = %vector.main.loop.iter.check31, %vec.epilog.iter.check48
  %vec.epilog.resume.val45 = phi i64 [ %n.vec35, %vec.epilog.iter.check48 ], [ 0, %vector.main.loop.iter.check31 ]
  %i.el = add i64 %indvars.iv.next.i34.us.i, %n.vec52
  br label %vec.epilog.vector.body53

vec.epilog.vector.body53:                         ; preds = %vec.epilog.vector.body53, %vec.epilog.ph50
  %index54 = phi i64 [ %vec.epilog.resume.val45, %vec.epilog.ph50 ], [ %index.next59, %vec.epilog.vector.body53 ] ; 2 uses
  %i.em = add nuw i64 %indvars.iv.next.i34.us.i, %index54 ; 4 uses
  %i.en = getelementptr i8, ptr %.025.us.i, i64 %i.em
  %wide.load55 = load <4 x i8>, ptr %i.en, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.eo = getelementptr i8, ptr %i.cm, i64 %i.em  ; 2 uses
  %wide.load56 = load <4 x i8>, ptr %i.eo, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.ep = getelementptr i8, ptr %i.eo, i64 -1
  %wide.load57 = load <4 x i8>, ptr %i.ep, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.eq = zext <4 x i8> %wide.load55 to <4 x i32>
  %i.er = zext <4 x i8> %wide.load56 to <4 x i32>
  %i.es = add nuw nsw <4 x i32> %i.er, %i.eq
  %i.et = zext <4 x i8> %wide.load57 to <4 x i32>
  %i.eu = sub nsw <4 x i32> %i.es, %i.et
  %i.ev = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.eu, <4 x i32> zeroinitializer)
  %i.ew = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ev, <4 x i32> splat (i32 255))
  %i.ex = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.em
  %wide.load58 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.ey = trunc nuw <4 x i32> %i.ew to <4 x i8>
  %i.ez = sub <4 x i8> %wide.load58, %i.ey
  %i.fa = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.em
  store <4 x i8> %i.ez, ptr %i.fa, align 1, !tbaa !9, !alias.scope !108, !noalias !90
  %index.next59 = add nuw i64 %index54, 4         ; 2 uses
  %i.fb = icmp eq i64 %index.next59, %n.vec52
  br i1 %i.fb, label %vec.epilog.middle.block60, label %vec.epilog.vector.body53, !llvm.loop !112

vec.epilog.middle.block60:                        ; preds = %vec.epilog.vector.body53
  br i1 %cmp.n61, label %GradientPredictDirect_SSE2.exit.us.i, label %.lr.ph45.i.us.i.preheader

.lr.ph45.i.us.i.preheader:                        ; preds = %iter.check46, %vec.epilog.iter.check48, %vec.epilog.middle.block60
  %indvars.iv47.i.us.i.ph = phi i64 [ %indvars.iv.next.i34.us.i, %iter.check46 ], [ %i.du, %vec.epilog.iter.check48 ], [ %i.el, %vec.epilog.middle.block60 ]
  br label %.lr.ph45.i.us.i

.lr.ph45.i.us.i:                                  ; preds = %.lr.ph45.i.us.i.preheader, %.lr.ph45.i.us.i
  %indvars.iv47.i.us.i = phi i64 [ %indvars.iv.next48.i.us.i, %.lr.ph45.i.us.i ], [ %indvars.iv47.i.us.i.ph, %.lr.ph45.i.us.i.preheader ] ; 5 uses
  %i.fc = getelementptr i8, ptr %.025.us.i, i64 %indvars.iv47.i.us.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.fe = getelementptr i8, ptr %i.cm, i64 %indvars.iv47.i.us.i ; 2 uses
  %i.ff = load i8, ptr %i.fe, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.fg = getelementptr i8, ptr %i.fe, i64 -1
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.fi = zext i8 %i.fd to i32
  %i.fj = zext i8 %i.ff to i32
  %i.fk = add nuw nsw i32 %i.fj, %i.fi
  %i.fl = zext i8 %i.fh to i32
  %i.fm = sub nsw i32 %i.fk, %i.fl
  %i.fn = tail call i32 @llvm.smax.i32(i32 %i.fm, i32 0)
  %i.fo = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.fn, i32 255)
  %i.fp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %indvars.iv47.i.us.i
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.fr = trunc nuw i32 %i.fo to i8
  %i.fs = sub i8 %i.fq, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv47.i.us.i
  store i8 %i.fs, ptr %i.ft, align 1, !tbaa !9, !alias.scope !108, !noalias !90
  %indvars.iv.next48.i.us.i = add nuw nsw i64 %indvars.iv47.i.us.i, 1 ; 2 uses
  %exitcond.not.i30.us.i = icmp eq i64 %indvars.iv.next48.i.us.i, %wide.trip.count.i29.i
  br i1 %exitcond.not.i30.us.i, label %GradientPredictDirect_SSE2.exit.us.i, label %.lr.ph45.i.us.i, !llvm.loop !113

GradientPredictDirect_SSE2.exit.us.i:             ; preds = %.lr.ph45.i.us.i, %middle.block43, %vec.epilog.middle.block60, %.preheader.loopexit.i35.us.i
  %i.fu = add nuw nsw i32 %.039.us.i, 1           ; 2 uses
  %exitcond57.not.i = icmp eq i32 %i.fu, %2
  br i1 %exitcond57.not.i, label %DoGradientFilter_SSE2.exit, label %.lr.ph.preheader.i31.us.i, !llvm.loop !114

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.fv = icmp sgt i32 %1, 1
  br i1 %i.fv, label %.preheader.i27.us40.i.preheader, label %.preheader.i27.i.preheader

.preheader.i27.i.preheader:                       ; preds = %.lr.ph.split.i
  %i.fw = add nsw i32 %2, -1                      ; 2 uses
  %i.fx = add nsw i32 %2, -2
  %xtraiter67 = and i32 %i.fw, 3                  ; 3 uses
  %i.fy = icmp ult i32 %i.fx, 3
  br i1 %i.fy, label %.preheader.i27.i.epil.preheader, label %.preheader.i27.i.preheader.new

.preheader.i27.i.preheader.new:                   ; preds = %.preheader.i27.i.preheader
  %unroll_iter70 = and i32 %i.fw, -4
  br label %.preheader.i27.i

.preheader.i27.us40.i.preheader:                  ; preds = %.lr.ph.split.i
  %exitcond.not.i30.us51.i = icmp eq i32 %i.d, 1
  %exitcond.not.i30.us51.i.1 = icmp eq i32 %i.d, 2
  %exitcond.not.i30.us51.i.2 = icmp eq i32 %i.d, 3
  %exitcond.not.i30.us51.i.3 = icmp eq i32 %i.d, 4
  %exitcond.not.i30.us51.i.4 = icmp eq i32 %i.d, 5
  %exitcond.not.i30.us51.i.5 = icmp eq i32 %i.d, 6
  br label %.preheader.i27.us40.i

.preheader.i27.us40.i:                            ; preds = %.preheader.i27.us40.i.preheader, %GradientPredictDirect_SSE2.exit.loopexit.us53.i
  %.039.us41.i = phi i32 [ %i.kx, %GradientPredictDirect_SSE2.exit.loopexit.us53.i ], [ 1, %.preheader.i27.us40.i.preheader ]
  %.pn2638.us42.i = phi ptr [ %.024.us44.i, %GradientPredictDirect_SSE2.exit.loopexit.us53.i ], [ %4, %.preheader.i27.us40.i.preheader ]
  %.pn37.us43.i = phi ptr [ %.025.us45.i, %GradientPredictDirect_SSE2.exit.loopexit.us53.i ], [ %0, %.preheader.i27.us40.i.preheader ]
  %.024.us44.i = getelementptr inbounds i8, ptr %.pn2638.us42.i, i64 %i.by ; 9 uses
  %.025.us45.i = getelementptr inbounds i8, ptr %.pn37.us43.i, i64 %i.by ; 17 uses
  %i.fz = load i8, ptr %.025.us45.i, align 1, !tbaa !9, !alias.scope !90, !noalias !93
  %i.ga = getelementptr inbounds i8, ptr %.025.us45.i, i64 %i.cb
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !9, !alias.scope !90, !noalias !93
  %i.gc = sub i8 %i.fz, %i.gb
  store i8 %i.gc, ptr %.024.us44.i, align 1, !tbaa !9, !alias.scope !93, !noalias !90
  %i.gd = getelementptr inbounds nuw i8, ptr %.025.us45.i, i64 1 ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %i.gd, i64 %i.cc ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %i.gf = getelementptr inbounds nuw i8, ptr %.024.us44.i, i64 1
  %i.gg = load i8, ptr %.025.us45.i, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.gh = load i8, ptr %i.ge, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.gi = getelementptr i8, ptr %i.ge, i64 -1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.gk = zext i8 %i.gg to i32
  %i.gl = zext i8 %i.gh to i32
  %i.gm = add nuw nsw i32 %i.gl, %i.gk
  %i.gn = zext i8 %i.gj to i32
  %i.go = sub nsw i32 %i.gm, %i.gn
  %i.gp = tail call i32 @llvm.smax.i32(i32 %i.go, i32 0)
  %i.gq = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.gp, i32 255)
  %i.gr = load i8, ptr %i.gd, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.gs = trunc nuw i32 %i.gq to i8
  %i.gt = sub i8 %i.gr, %i.gs
  store i8 %i.gt, ptr %i.gf, align 1, !tbaa !9, !alias.scope !108, !noalias !90
  br i1 %exitcond.not.i30.us51.i, label %GradientPredictDirect_SSE2.exit.loopexit.us53.i, label %.lr.ph45.i.us47.i.1

.lr.ph45.i.us47.i.1:                              ; preds = %.preheader.i27.us40.i
  %i.gu = getelementptr i8, ptr %.025.us45.i, i64 1
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.gw = getelementptr i8, ptr %i.ge, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.gy = load i8, ptr %i.ge, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.gz = zext i8 %i.gv to i32
  %i.ha = zext i8 %i.gx to i32
  %i.hb = add nuw nsw i32 %i.ha, %i.gz
  %i.hc = zext i8 %i.gy to i32
  %i.hd = sub nsw i32 %i.hb, %i.hc
  %i.he = tail call i32 @llvm.smax.i32(i32 %i.hd, i32 0)
  %i.hf = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.he, i32 255)
  %i.hg = getelementptr inbounds nuw i8, ptr %.025.us45.i, i64 2
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.hi = trunc nuw i32 %i.hf to i8
  %i.hj = sub i8 %i.hh, %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %.024.us44.i, i64 2
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !9, !alias.scope !108, !noalias !90
  br i1 %exitcond.not.i30.us51.i.1, label %GradientPredictDirect_SSE2.exit.loopexit.us53.i, label %.lr.ph45.i.us47.i.2

.lr.ph45.i.us47.i.2:                              ; preds = %.lr.ph45.i.us47.i.1
  %i.hl = getelementptr i8, ptr %.025.us45.i, i64 2
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.hn = getelementptr i8, ptr %i.ge, i64 2
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.hp = getelementptr i8, ptr %i.ge, i64 1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.hr = zext i8 %i.hm to i32
  %i.hs = zext i8 %i.ho to i32
  %i.ht = add nuw nsw i32 %i.hs, %i.hr
  %i.hu = zext i8 %i.hq to i32
  %i.hv = sub nsw i32 %i.ht, %i.hu
  %i.hw = tail call i32 @llvm.smax.i32(i32 %i.hv, i32 0)
  %i.hx = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.hw, i32 255)
  %i.hy = getelementptr inbounds nuw i8, ptr %.025.us45.i, i64 3
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.ia = trunc nuw i32 %i.hx to i8
  %i.ib = sub i8 %i.hz, %i.ia
  %i.ic = getelementptr inbounds nuw i8, ptr %.024.us44.i, i64 3
  store i8 %i.ib, ptr %i.ic, align 1, !tbaa !9, !alias.scope !108, !noalias !90
  br i1 %exitcond.not.i30.us51.i.2, label %GradientPredictDirect_SSE2.exit.loopexit.us53.i, label %.lr.ph45.i.us47.i.3

.lr.ph45.i.us47.i.3:                              ; preds = %.lr.ph45.i.us47.i.2
  %i.id = getelementptr i8, ptr %.025.us45.i, i64 3
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.if = getelementptr i8, ptr %i.ge, i64 3
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.ih = getelementptr i8, ptr %i.ge, i64 2
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.ij = zext i8 %i.ie to i32
  %i.ik = zext i8 %i.ig to i32
  %i.il = add nuw nsw i32 %i.ik, %i.ij
  %i.im = zext i8 %i.ii to i32
  %i.in = sub nsw i32 %i.il, %i.im
  %i.io = tail call i32 @llvm.smax.i32(i32 %i.in, i32 0)
  %i.ip = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.io, i32 255)
  %i.iq = getelementptr inbounds nuw i8, ptr %.025.us45.i, i64 4
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.is = trunc nuw i32 %i.ip to i8
  %i.it = sub i8 %i.ir, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %.024.us44.i, i64 4
  store i8 %i.it, ptr %i.iu, align 1, !tbaa !9, !alias.scope !108, !noalias !90
  br i1 %exitcond.not.i30.us51.i.3, label %GradientPredictDirect_SSE2.exit.loopexit.us53.i, label %.lr.ph45.i.us47.i.4

.lr.ph45.i.us47.i.4:                              ; preds = %.lr.ph45.i.us47.i.3
  %i.iv = getelementptr i8, ptr %.025.us45.i, i64 4
  %i.iw = load i8, ptr %i.iv, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.ix = getelementptr i8, ptr %i.ge, i64 4
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.iz = getelementptr i8, ptr %i.ge, i64 3
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.jb = zext i8 %i.iw to i32
  %i.jc = zext i8 %i.iy to i32
  %i.jd = add nuw nsw i32 %i.jc, %i.jb
  %i.je = zext i8 %i.ja to i32
  %i.jf = sub nsw i32 %i.jd, %i.je
  %i.jg = tail call i32 @llvm.smax.i32(i32 %i.jf, i32 0)
  %i.jh = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.jg, i32 255)
  %i.ji = getelementptr inbounds nuw i8, ptr %.025.us45.i, i64 5
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !9, !alias.scope !90, !noalias !108
  %i.jk = trunc nuw i32 %i.jh to i8
  %i.jl = sub i8 %i.jj, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %.024.us44.i, i64 5
end_hunk_1
