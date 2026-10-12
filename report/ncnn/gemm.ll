Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/gemm?download=true
inline.NumInlined: 65
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZNK4ncnn4Gemm12forward_int8ERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !19 ; 2 uses
  %.not.i339 = icmp eq ptr %i.aj, null
  br i1 %.not.i339, label %_ZN4ncnn3Mat7releaseEv.exit.i341, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ak = atomicrmw add ptr %i.aj, i32 1 acq_rel, align 4 ; 0 uses
  %.pre510 = load ptr, ptr %i.u, align 8, !tbaa !19 ; 2 uses
  %.not.i.i340 = icmp eq ptr %.pre510, null
  br i1 %.not.i.i340, label %_ZN4ncnn3Mat7releaseEv.exit.i341, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.al = atomicrmw add ptr %.pre510, i32 -1 acq_rel, align 4
  %i.am = icmp eq i32 %i.al, 1
  br i1 %i.am, label %bb.j, label %_ZN4ncnn3Mat7releaseEv.exit.i341

bb.j:                                             ; preds = %bb.i
  %i.an = load ptr, ptr %i.x, align 16, !tbaa !20 ; 3 uses
  %.not3.i.i342 = icmp eq ptr %i.an, null
  %i.ao = load ptr, ptr %4, align 16, !tbaa !21   ; 3 uses
  br i1 %.not3.i.i342, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !13
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  invoke void %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ao)
          to label %_ZN4ncnn3Mat7releaseEv.exit.i341 unwind label %bb.n, !inline_history !1

bb.l:                                             ; preds = %bb.j
  %.not.i18.i343 = icmp eq ptr %i.ao, null
  br i1 %.not.i18.i343, label %_ZN4ncnn3Mat7releaseEv.exit.i341, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.ao) #12
  br label %_ZN4ncnn3Mat7releaseEv.exit.i341

_ZN4ncnn3Mat7releaseEv.exit.i341:                 ; preds = %bb.g, %bb.l, %bb.m, %bb.k, %bb.i, %bb.h
  store i64 0, ptr %i.ad, align 16, !tbaa !22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(28) %4, i8 0, i64 28, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.y, i8 0, i64 20, i1 false)
  %i.as = load <2 x ptr>, ptr %i.s, align 8, !tbaa !54
  %i.at = load ptr, ptr %i.s, align 8, !tbaa !21
  store <2 x ptr> %i.as, ptr %4, align 16, !tbaa !54
  %i.au = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !55
  store i64 %i.av, ptr %i.v, align 16, !tbaa !55
  %i.aw = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !56
  store i32 %i.ax, ptr %i.w, align 8, !tbaa !56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !20
  store ptr %i.az, ptr %i.x, align 16, !tbaa !20
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.bb = load <4 x i32>, ptr %i.ba, align 8, !tbaa !57 ; 3 uses
  store <4 x i32> %i.bb, ptr %i.y, align 8, !tbaa !57
  %i.bc = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !58 ; 2 uses
  store i32 %i.bd, ptr %i.ac, align 8, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !22 ; 2 uses
  store i64 %i.bf, ptr %i.ad, align 16, !tbaa !22
  %i.bg = extractelement <4 x i32> %i.bb, i64 1
  %i.bh = extractelement <4 x i32> %i.bb, i64 2
  br label %_ZN4ncnn3MataSERKS0_.exit346

bb.n:                                             ; preds = %bb.k, %bb.r, %bb.p
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.o:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 4 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !55
  %i.bl = icmp eq i64 %i.bk, 1
  br i1 %i.bl, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 44 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !63
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !65
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.bn, i32 noundef %i.bp, i64 noundef 1, i32 noundef 1, ptr noundef %i.br)
          to label %bb.q unwind label %bb.n

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %4, align 16, !tbaa !21   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %_ZNK4ncnn3Mat5emptyEv.exit353

_ZNK4ncnn3Mat5emptyEv.exit353:                    ; preds = %bb.q
  %i.bu = load i64, ptr %i.ad, align 16, !tbaa !22 ; 2 uses
  %i.bv = load i32, ptr %i.ac, align 8, !tbaa !58 ; 2 uses
  %i.bw = sext i32 %i.bv to i64
  %i.bx = mul i64 %i.bu, %i.bw
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %.preheader393

.preheader393:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit353
  %i.bz = load i32, ptr %i.aa, align 16, !tbaa !66 ; 3 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  %.pre513 = load i32, ptr %i.z, align 4, !tbaa !63 ; 3 uses
  %i.cb = icmp sgt i32 %.pre513, 0
  %or.cond = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond, label %.lr.ph410.split, label %_ZN4ncnn3MataSERKS0_.exit346

.lr.ph410.split:                                  ; preds = %.preheader393, %._crit_edge
  %i.cc = phi i32 [ %i.cl, %._crit_edge ], [ %i.bz, %.preheader393 ]
  %i.cd = phi i32 [ %i.cm, %._crit_edge ], [ %.pre513, %.preheader393 ] ; 3 uses
  %indvars.iv474 = phi i64 [ %indvars.iv.next475, %._crit_edge ], [ 0, %.preheader393 ] ; 3 uses
  %i.ce = load ptr, ptr %4, align 16, !tbaa !21
  %i.cf = sext i32 %i.cd to i64
  %i.cg = mul nsw i64 %indvars.iv474, %i.cf
  %i.ch = load i64, ptr %i.v, align 16, !tbaa !55
  %i.ci = mul i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = icmp sgt i32 %i.cd, 0
  br i1 %i.ck, label %.lr.ph408, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %.lr.ph408
  %.pre = load i32, ptr %i.aa, align 16, !tbaa !66
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph410.split
  %i.cl = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.cc, %.lr.ph410.split ] ; 3 uses
  %i.cm = phi i32 [ %i.cz, %._crit_edge.loopexit ], [ %i.cd, %.lr.ph410.split ] ; 2 uses
  %indvars.iv.next475 = add nuw nsw i64 %indvars.iv474, 1 ; 2 uses
  %i.cn = sext i32 %i.cl to i64
  %i.co = icmp slt i64 %indvars.iv.next475, %i.cn
  br i1 %i.co, label %.lr.ph410.split, label %_ZN4ncnn3MataSERKS0_.exit346.loopexit, !llvm.loop !104

.lr.ph408:                                        ; preds = %.lr.ph410.split, %.lr.ph408
  %indvars.iv471 = phi i64 [ %indvars.iv.next472, %.lr.ph408 ], [ 0, %.lr.ph410.split ] ; 3 uses
  %i.cp = load ptr, ptr %i.s, align 8, !tbaa !21
  %i.cq = load i32, ptr %i.bo, align 4, !tbaa !63
  %i.cr = sext i32 %i.cq to i64
  %i.cs = mul nsw i64 %indvars.iv471, %i.cr
  %i.ct = load i64, ptr %i.bj, align 8, !tbaa !55
  %i.cu = mul i64 %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 %indvars.iv474
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !75
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cj, i64 %indvars.iv471
  store i8 %i.cx, ptr %i.cy, align 1, !tbaa !75
  %indvars.iv.next472 = add nuw nsw i64 %indvars.iv471, 1 ; 2 uses
  %i.cz = load i32, ptr %i.z, align 4, !tbaa !63  ; 2 uses
  %i.da = sext i32 %i.cz to i64
  %i.db = icmp slt i64 %indvars.iv.next472, %i.da
  br i1 %i.db, label %.lr.ph408, label %._crit_edge.loopexit, !llvm.loop !105

bb.r:                                             ; preds = %bb.o
  %i.dc = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !62
  %i.de = icmp eq i32 %i.dd, 3
  %.in.v = select i1 %i.de, i64 56, i64 48
  %.in = getelementptr inbounds nuw i8, ptr %i.s, i64 %.in.v
  %i.df = load i32, ptr %.in, align 8, !tbaa !57
  %i.dg = getelementptr inbounds nuw i8, ptr %i.s, i64 44 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !63
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !65
  invoke void @_ZN4ncnn3Mat6createEiimiPNS_9AllocatorE(ptr noundef nonnull align 8 dereferenceable(72) %4, i32 noundef %i.df, i32 noundef %i.dh, i64 noundef 4, i32 noundef 1, ptr noundef %i.dj)
          to label %bb.s unwind label %bb.n

bb.s:                                             ; preds = %bb.r
  %i.dk = load ptr, ptr %4, align 16, !tbaa !21   ; 11 uses
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %_ZNK4ncnn3Mat5emptyEv.exit352

_ZNK4ncnn3Mat5emptyEv.exit352:                    ; preds = %bb.s
  %i.dm = load i64, ptr %i.ad, align 16, !tbaa !22 ; 5 uses
  %i.dn = load i32, ptr %i.ac, align 8, !tbaa !58 ; 5 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = mul i64 %i.dm, %i.do
  %i.dq = icmp eq i64 %i.dp, 0
  br i1 %i.dq, label %_ZNK4ncnn3Mat5emptyEv.exit353.thread, label %.preheader394

.preheader394:                                    ; preds = %_ZNK4ncnn3Mat5emptyEv.exit352
  %i.dr = load i32, ptr %i.aa, align 16, !tbaa !66 ; 7 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  %.pre512 = load i32, ptr %i.z, align 4, !tbaa !63 ; 10 uses
  br i1 %i.ds, label %.lr.ph402, label %_ZN4ncnn3MataSERKS0_.exit346

.lr.ph402:                                        ; preds = %.preheader394
  %i.dt = sext i32 %.pre512 to i64                ; 5 uses
  %i.du = load i64, ptr %i.v, align 16, !tbaa !55 ; 5 uses
  %factor.op.mul403 = mul i64 %i.du, %i.dt        ; 2 uses
  %i.dv = icmp sgt i32 %.pre512, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  br i1 %i.dv, label %.lr.ph402.split, label %_ZN4ncnn3MataSERKS0_.exit346

.lr.ph402.split:                                  ; preds = %.lr.ph402
  %i.dx = load i32, ptr %i.dc, align 8, !tbaa !62
  %i.dy = icmp eq i32 %i.dx, 3
  %i.dz = load ptr, ptr %i.s, align 8, !tbaa !21  ; 6 uses
  br i1 %i.dy, label %.lr.ph402.split.split.us, label %.lr.ph402.split.split

.lr.ph402.split.split.us:                         ; preds = %.lr.ph402.split
  %i.ea = load i64, ptr %i.dw, align 8, !tbaa !22, !noalias !133 ; 3 uses
  %i.eb = load i64, ptr %i.bj, align 8, !tbaa !55, !noalias !133 ; 3 uses
  %factor.op.mul397.us = mul i64 %i.ea, %i.eb     ; 11 uses
  %wide.trip.count469 = zext nneg i32 %i.dr to i64 ; 2 uses
  %wide.trip.count464 = zext nneg i32 %.pre512 to i64 ; 8 uses
  %i.ec = add nsw i64 %wide.trip.count464, -1
  %10 = mul i64 %i.eb, %i.ea
  %11 = sub i64 0, %10
  %i.ed = add nsw i64 %wide.trip.count469, -1
  %i.ee = mul i64 %i.du, %i.ed
  %i.ef = mul i64 %i.ee, %i.dt
  %i.eg = shl nuw nsw i64 %wide.trip.count464, 2
  %i.eh = getelementptr i8, ptr %i.dk, i64 %i.ef
  %scevgep659 = getelementptr i8, ptr %i.eh, i64 %i.eg
  %i.ei = mul i64 %i.du, %i.dt
  %i.ej = mul i64 %i.eb, %i.ea
  %i.ek = add nsw i64 %wide.trip.count464, -1
  %i.el = mul i64 %i.ej, %i.ek
  %i.em = getelementptr i8, ptr %i.dz, i64 %i.el
  %min.iters.check670 = icmp ult i32 %.pre512, 72
  %i.en = icmp slt i64 %factor.op.mul397.us, 0    ; 2 uses
  %12 = select i1 %i.en, i64 %11, i64 %factor.op.mul397.us
  %mul655 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %12, i64 %i.ec) ; 2 uses
  %mul.result656 = extractvalue { i64, i1 } %mul655, 0 ; 2 uses
  %mul.overflow657 = extractvalue { i64, i1 } %mul655, 1
  %i.eo = sub i64 0, %mul.result656
  %stride.check668 = icmp slt i64 %i.ei, 0
  %n.vec672 = and i64 %wide.trip.count464, 2147483644 ; 3 uses
  %cmp.n677 = icmp eq i64 %n.vec672, %wide.trip.count464
  %xtraiter721 = and i64 %wide.trip.count464, 3   ; 2 uses
  %lcmp.mod722.not = icmp eq i64 %xtraiter721, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.split.us.us, %.lr.ph402.split.split.us
  %indvars.iv466 = phi i64 [ %indvars.iv.next467, %._crit_edge.split.us.us ], [ 0, %.lr.ph402.split.split.us ] ; 4 uses
  %i.ep = shl nuw nsw i64 %indvars.iv466, 2       ; 2 uses
  %scevgep660 = getelementptr i8, ptr %i.dz, i64 %i.ep ; 4 uses
  %scevgep661 = getelementptr i8, ptr %i.em, i64 %i.ep ; 4 uses
  %i.eq = icmp ult ptr %scevgep660, %scevgep661
  %umin662 = select i1 %i.eq, ptr %scevgep660, ptr %scevgep661
  %i.er = icmp ugt ptr %scevgep660, %scevgep661
  %umax663 = select i1 %i.er, ptr %scevgep660, ptr %scevgep661
  %scevgep664 = getelementptr i8, ptr %umax663, i64 4
  %.reass404.us = mul i64 %factor.op.mul403, %indvars.iv466
  %i.es = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.reass404.us ; 6 uses
  %invariant.gep399.us = getelementptr [4 x i8], ptr %i.dz, i64 %indvars.iv466 ; 13 uses
  br i1 %min.iters.check670, label %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader, label %vector.scevcheck654

vector.scevcheck654:                              ; preds = %.lr.ph.us
  %i.et = getelementptr i8, ptr %invariant.gep399.us, i64 %mul.result656
  %i.eu = getelementptr i8, ptr %invariant.gep399.us, i64 %i.eo
  %i.ev = icmp ult ptr %i.et, %invariant.gep399.us
  %i.ew = icmp ugt ptr %i.eu, %invariant.gep399.us
  %i.ex = select i1 %i.en, i1 %i.ew, i1 %i.ev
  %i.ey = or i1 %i.ex, %mul.overflow657
  br i1 %i.ey, label %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader, label %vector.memcheck658

vector.memcheck658:                               ; preds = %vector.scevcheck654
  %bound0665 = icmp ult ptr %i.dk, %scevgep664
  %bound1666 = icmp ult ptr %umin662, %scevgep659
  %found.conflict667 = and i1 %bound0665, %bound1666
  %i.ez = or i1 %found.conflict667, %stride.check668
  br i1 %i.ez, label %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader, label %vector.body673

vector.body673:                                   ; preds = %vector.memcheck658, %vector.body673
  %index674 = phi i64 [ %index.next675, %vector.body673 ], [ 0, %vector.memcheck658 ] ; 6 uses
  %i.fa = or disjoint i64 %index674, 1
  %i.fb = or disjoint i64 %index674, 2
  %i.fc = or disjoint i64 %index674, 3
  %i.fd = mul i64 %factor.op.mul397.us, %index674
  %i.fe = mul i64 %factor.op.mul397.us, %i.fa
  %i.ff = mul i64 %factor.op.mul397.us, %i.fb
  %i.fg = mul i64 %factor.op.mul397.us, %i.fc
  %i.fh = getelementptr i8, ptr %invariant.gep399.us, i64 %i.fd
  %i.fi = getelementptr i8, ptr %invariant.gep399.us, i64 %i.fe
  %i.fj = getelementptr i8, ptr %invariant.gep399.us, i64 %i.ff
  %i.fk = getelementptr i8, ptr %invariant.gep399.us, i64 %i.fg
  %i.fl = load float, ptr %i.fh, align 4, !tbaa !59, !alias.scope !134
  %i.fm = load float, ptr %i.fi, align 4, !tbaa !59, !alias.scope !134
  %i.fn = load float, ptr %i.fj, align 4, !tbaa !59, !alias.scope !134
  %i.fo = load float, ptr %i.fk, align 4, !tbaa !59, !alias.scope !134
  %i.fp = insertelement <4 x float> poison, float %i.fl, i64 0
  %i.fq = insertelement <4 x float> %i.fp, float %i.fm, i64 1
  %i.fr = insertelement <4 x float> %i.fq, float %i.fn, i64 2
  %i.fs = insertelement <4 x float> %i.fr, float %i.fo, i64 3
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %index674
  store <4 x float> %i.fs, ptr %i.ft, align 4, !tbaa !59, !alias.scope !135, !noalias !134
  %index.next675 = add nuw i64 %index674, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next675, %n.vec672
  br i1 %i.fu, label %middle.block676, label %vector.body673, !llvm.loop !111

middle.block676:                                  ; preds = %vector.body673
  br i1 %cmp.n677, label %._crit_edge.split.us.us, label %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader

_ZN4ncnn3MatD2Ev.exit231.us.us.preheader:         ; preds = %vector.memcheck658, %vector.scevcheck654, %.lr.ph.us, %middle.block676
  %indvars.iv461.ph = phi i64 [ 0, %vector.memcheck658 ], [ 0, %vector.scevcheck654 ], [ 0, %.lr.ph.us ], [ %n.vec672, %middle.block676 ] ; 3 uses
  br i1 %lcmp.mod722.not, label %_ZN4ncnn3MatD2Ev.exit231.us.us.prol.loopexit, label %_ZN4ncnn3MatD2Ev.exit231.us.us.prol

_ZN4ncnn3MatD2Ev.exit231.us.us.prol:              ; preds = %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader, %_ZN4ncnn3MatD2Ev.exit231.us.us.prol
  %indvars.iv461.prol = phi i64 [ %indvars.iv.next462.prol, %_ZN4ncnn3MatD2Ev.exit231.us.us.prol ], [ %indvars.iv461.ph, %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader ] ; 3 uses
  %prol.iter723 = phi i64 [ %prol.iter723.next, %_ZN4ncnn3MatD2Ev.exit231.us.us.prol ], [ 0, %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader ]
  %.reass398.us.prol = mul i64 %factor.op.mul397.us, %indvars.iv461.prol
  %gep400.us.prol = getelementptr i8, ptr %invariant.gep399.us, i64 %.reass398.us.prol
  %i.fv = load float, ptr %gep400.us.prol, align 4, !tbaa !59
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv461.prol
  store float %i.fv, ptr %i.fw, align 4, !tbaa !59
  %indvars.iv.next462.prol = add nuw nsw i64 %indvars.iv461.prol, 1 ; 2 uses
  %prol.iter723.next = add i64 %prol.iter723, 1   ; 2 uses
  %prol.iter723.cmp.not = icmp eq i64 %prol.iter723.next, %xtraiter721
  br i1 %prol.iter723.cmp.not, label %_ZN4ncnn3MatD2Ev.exit231.us.us.prol.loopexit, label %_ZN4ncnn3MatD2Ev.exit231.us.us.prol, !llvm.loop !112

_ZN4ncnn3MatD2Ev.exit231.us.us.prol.loopexit:     ; preds = %_ZN4ncnn3MatD2Ev.exit231.us.us.prol, %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader
  %indvars.iv461.unr = phi i64 [ %indvars.iv461.ph, %_ZN4ncnn3MatD2Ev.exit231.us.us.preheader ], [ %indvars.iv.next462.prol, %_ZN4ncnn3MatD2Ev.exit231.us.us.prol ]
  %i.fx = sub nsw i64 %indvars.iv461.ph, %wide.trip.count464
  %i.fy = icmp ugt i64 %i.fx, -4
  br i1 %i.fy, label %._crit_edge.split.us.us, label %_ZN4ncnn3MatD2Ev.exit231.us.us

_ZN4ncnn3MatD2Ev.exit231.us.us:                   ; preds = %_ZN4ncnn3MatD2Ev.exit231.us.us.prol.loopexit, %_ZN4ncnn3MatD2Ev.exit231.us.us
  %indvars.iv461 = phi i64 [ %indvars.iv.next462.3, %_ZN4ncnn3MatD2Ev.exit231.us.us ], [ %indvars.iv461.unr, %_ZN4ncnn3MatD2Ev.exit231.us.us.prol.loopexit ] ; 6 uses
  %.reass398.us = mul i64 %factor.op.mul397.us, %indvars.iv461
  %gep400.us = getelementptr i8, ptr %invariant.gep399.us, i64 %.reass398.us
  %i.fz = load float, ptr %gep400.us, align 4, !tbaa !59
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv461
  store float %i.fz, ptr %i.ga, align 4, !tbaa !59
  %indvars.iv.next462 = add nuw nsw i64 %indvars.iv461, 1 ; 2 uses
  %.reass398.us.1 = mul i64 %factor.op.mul397.us, %indvars.iv.next462
  %gep400.us.1 = getelementptr i8, ptr %invariant.gep399.us, i64 %.reass398.us.1
  %i.gb = load float, ptr %gep400.us.1, align 4, !tbaa !59
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.next462
  store float %i.gb, ptr %i.gc, align 4, !tbaa !59
  %indvars.iv.next462.1 = add nuw nsw i64 %indvars.iv461, 2 ; 2 uses
  %.reass398.us.2 = mul i64 %factor.op.mul397.us, %indvars.iv.next462.1
  %gep400.us.2 = getelementptr i8, ptr %invariant.gep399.us, i64 %.reass398.us.2
  %i.gd = load float, ptr %gep400.us.2, align 4, !tbaa !59
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.next462.1
  store float %i.gd, ptr %i.ge, align 4, !tbaa !59
  %indvars.iv.next462.2 = add nuw nsw i64 %indvars.iv461, 3 ; 2 uses
  %.reass398.us.3 = mul i64 %factor.op.mul397.us, %indvars.iv.next462.2
  %gep400.us.3 = getelementptr i8, ptr %invariant.gep399.us, i64 %.reass398.us.3
  %i.gf = load float, ptr %gep400.us.3, align 4, !tbaa !59
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.next462.2
  store float %i.gf, ptr %i.gg, align 4, !tbaa !59
  %indvars.iv.next462.3 = add nuw nsw i64 %indvars.iv461, 4 ; 2 uses
  %exitcond465.not.3 = icmp eq i64 %indvars.iv.next462.3, %wide.trip.count464
  br i1 %exitcond465.not.3, label %._crit_edge.split.us.us, label %_ZN4ncnn3MatD2Ev.exit231.us.us, !llvm.loop !113

._crit_edge.split.us.us:                          ; preds = %_ZN4ncnn3MatD2Ev.exit231.us.us.prol.loopexit, %_ZN4ncnn3MatD2Ev.exit231.us.us, %middle.block676
  %indvars.iv.next467 = add nuw nsw i64 %indvars.iv466, 1 ; 2 uses
  %exitcond470.not = icmp eq i64 %indvars.iv.next467, %wide.trip.count469
  br i1 %exitcond470.not, label %_ZN4ncnn3MataSERKS0_.exit346, label %.lr.ph.us, !llvm.loop !114

.lr.ph402.split.split:                            ; preds = %.lr.ph402.split
  %i.gh = load i32, ptr %i.dg, align 4, !tbaa !63
  %i.gi = sext i32 %i.gh to i64                   ; 2 uses
  %i.gj = load i64, ptr %i.bj, align 8, !tbaa !55 ; 2 uses
  %factor.op.mul = mul i64 %i.gj, %i.gi           ; 11 uses
  %wide.trip.count459 = zext nneg i32 %i.dr to i64 ; 2 uses
  %wide.trip.count = zext nneg i32 %.pre512 to i64 ; 8 uses
  %i.gk = add nsw i64 %wide.trip.count, -1
  %i.gl = add nsw i64 %wide.trip.count459, -1
  %i.gm = mul i64 %i.du, %i.gl
  %i.gn = mul i64 %i.gm, %i.dt
  %i.go = shl nuw nsw i64 %wide.trip.count, 2
  %i.gp = getelementptr i8, ptr %i.dk, i64 %i.gn
  %scevgep = getelementptr i8, ptr %i.gp, i64 %i.go
  %i.gq = mul i64 %i.du, %i.dt
  %i.gr = add nsw i64 %wide.trip.count, -1
  %i.gs = mul i64 %i.gj, %i.gr
  %i.gt = mul i64 %i.gs, %i.gi
  %i.gu = getelementptr i8, ptr %i.dz, i64 %i.gt
  %min.iters.check = icmp ult i32 %.pre512, 72
  %i.gv = icmp slt i64 %factor.op.mul, 0
  %i.gw = call i64 @llvm.abs.i64(i64 %factor.op.mul, i1 false)
  %mul = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.gw, i64 %i.gk) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0  ; 2 uses
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.gx = sub i64 0, %mul.result
  %stride.check = icmp slt i64 %i.gq, 0
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph402.split.split, %._crit_edge.split
  %indvars.iv456 = phi i64 [ 0, %.lr.ph402.split.split ], [ %indvars.iv.next457, %._crit_edge.split ] ; 4 uses
  %i.gy = shl nuw nsw i64 %indvars.iv456, 2       ; 2 uses
  %scevgep651 = getelementptr i8, ptr %i.dz, i64 %i.gy ; 4 uses
  %scevgep652 = getelementptr i8, ptr %i.gu, i64 %i.gy ; 4 uses
  %i.gz = icmp ult ptr %scevgep651, %scevgep652
  %umin = select i1 %i.gz, ptr %scevgep651, ptr %scevgep652
  %i.ha = icmp ugt ptr %scevgep651, %scevgep652
  %umax = select i1 %i.ha, ptr %scevgep651, ptr %scevgep652
  %scevgep653 = getelementptr i8, ptr %umax, i64 4
  %.reass404 = mul i64 %factor.op.mul403, %indvars.iv456
  %i.hb = getelementptr inbounds nuw i8, ptr %i.dk, i64 %.reass404 ; 6 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.dz, i64 %indvars.iv456 ; 13 uses
  br i1 %min.iters.check, label %.critedge.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.hc = getelementptr i8, ptr %invariant.gep, i64 %mul.result
  %i.hd = getelementptr i8, ptr %invariant.gep, i64 %i.gx
  %i.he = icmp ult ptr %i.hc, %invariant.gep
  %i.hf = icmp ugt ptr %i.hd, %invariant.gep
  %i.hg = select i1 %i.gv, i1 %i.hf, i1 %i.he
  %i.hh = or i1 %i.hg, %mul.overflow
  br i1 %i.hh, label %.critedge.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %bound0 = icmp ult ptr %i.dk, %scevgep653
  %bound1 = icmp ult ptr %umin, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %i.hi = or i1 %found.conflict, %stride.check
  br i1 %i.hi, label %.critedge.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 6 uses
  %i.hj = or disjoint i64 %index, 1
  %i.hk = or disjoint i64 %index, 2
  %i.hl = or disjoint i64 %index, 3
  %i.hm = mul i64 %factor.op.mul, %index
  %i.hn = mul i64 %factor.op.mul, %i.hj
  %i.ho = mul i64 %factor.op.mul, %i.hk
end_hunk_0
