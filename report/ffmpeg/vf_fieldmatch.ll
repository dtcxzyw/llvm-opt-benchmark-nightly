Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_fieldmatch?download=true
inline.NumInlined: 22
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@calc_combed_score:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 108 ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %fill_buf.exit
  %indvars.iv706 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next707, %fill_buf.exit ] ; 7 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv706
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61   ; 6 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv706
  %i.p = load i32, ptr %i.o, align 4, !tbaa !42   ; 7 uses
  %.not.i = icmp eq i64 %indvars.iv706, 0
  %i.q = load i32, ptr %i.j, align 8, !tbaa !62   ; 2 uses
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = load i32, ptr %i.i, align 8, !tbaa !42
  %i.s = sub nsw i32 0, %i.q
  %i.t = ashr i32 %i.s, %i.r
  %i.u = sub nsw i32 0, %i.t
  %i.v = load i32, ptr %i.l, align 4, !tbaa !63
  %i.w = load i32, ptr %i.k, align 8, !tbaa !42
  %i.x = sub nsw i32 0, %i.v
  %i.y = ashr i32 %i.x, %i.w
  %i.z = sub nsw i32 0, %i.y
  br label %get_height.exit

bb.d:                                             ; preds = %bb.b
  %i.aa = load i32, ptr %i.l, align 4, !tbaa !63
  br label %get_height.exit

get_height.exit:                                  ; preds = %bb.c, %bb.d
  %i.ab = phi i32 [ %i.q, %bb.d ], [ %i.u, %bb.c ] ; 8 uses
  %i.ac = phi i32 [ %i.aa, %bb.d ], [ %i.z, %bb.c ] ; 9 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv706
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !61 ; 7 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv706
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !42 ; 4 uses
  %i.ah = icmp sgt i32 %i.ac, 0                   ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.g

bb.e:                                             ; preds = %get_height.exit
  br i1 %i.ah, label %.lr.ph.i, label %fill_buf.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.ai = sext i32 %i.ab to i64                   ; 9 uses
  %i.aj = sext i32 %i.ag to i64                   ; 9 uses
  %xtraiter822 = and i32 %i.ac, 7                 ; 3 uses
  %i.ak = icmp ult i32 %i.ac, 8
  br i1 %i.ak, label %.epil.preheader821, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter826 = and i32 %i.ac, 2147483640
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %.078.i = phi ptr [ %i.ae, %.lr.ph.i.new ], [ %i.as, %bb.f ] ; 2 uses
  %niter827 = phi i32 [ 0, %.lr.ph.i.new ], [ %niter827.next.7, %bb.f ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.078.i, i8 -1, i64 %i.ai, i1 false)
  %i.al = getelementptr inbounds i8, ptr %.078.i, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.al, i8 -1, i64 %i.ai, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.am, i8 -1, i64 %i.ai, i1 false)
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.an, i8 -1, i64 %i.ai, i1 false)
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ao, i8 -1, i64 %i.ai, i1 false)
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ap, i8 -1, i64 %i.ai, i1 false)
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aq, i8 -1, i64 %i.ai, i1 false)
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %i.aj ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ar, i8 -1, i64 %i.ai, i1 false)
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 %i.aj ; 2 uses
  %niter827.next.7 = add nuw nsw i32 %niter827, 8 ; 2 uses
  %niter827.ncmp.7 = icmp eq i32 %niter827.next.7, %unroll_iter826
  br i1 %niter827.ncmp.7, label %fill_buf.exit.loopexit.unr-lcssa, label %bb.f, !llvm.loop !0

bb.g:                                             ; preds = %get_height.exit
  br i1 %i.ah, label %.lr.ph.i575, label %fill_buf.exit579

.lr.ph.i575:                                      ; preds = %bb.g
  %i.at = sext i32 %i.ab to i64                   ; 9 uses
  %i.au = sext i32 %i.ag to i64                   ; 9 uses
  %xtraiter = and i32 %i.ac, 7                    ; 3 uses
  %i.av = icmp ult i32 %i.ac, 8
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i575.new

.lr.ph.i575.new:                                  ; preds = %.lr.ph.i575
  %unroll_iter = and i32 %i.ac, 2147483640
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i575.new
  %.078.i577 = phi ptr [ %i.ae, %.lr.ph.i575.new ], [ %i.bd, %bb.h ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.i575.new ], [ %niter.next.7, %bb.h ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.078.i577, i8 0, i64 %i.at, i1 false)
  %i.aw = getelementptr inbounds i8, ptr %.078.i577, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.aw, i8 0, i64 %i.at, i1 false)
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ax, i8 0, i64 %i.at, i1 false)
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ay, i8 0, i64 %i.at, i1 false)
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.az, i8 0, i64 %i.at, i1 false)
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ba, i8 0, i64 %i.at, i1 false)
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bb, i8 0, i64 %i.at, i1 false)
  %i.bc = getelementptr inbounds i8, ptr %i.bb, i64 %i.au ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.bc, i8 0, i64 %i.at, i1 false)
  %i.bd = getelementptr inbounds i8, ptr %i.bc, i64 %i.au ; 2 uses
  %niter.next.7 = add nuw nsw i32 %niter, 8       ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %fill_buf.exit579.loopexit.unr-lcssa, label %bb.h, !llvm.loop !0

fill_buf.exit579.loopexit.unr-lcssa:              ; preds = %bb.h
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %fill_buf.exit579, label %.epil.preheader

.epil.preheader:                                  ; preds = %fill_buf.exit579.loopexit.unr-lcssa, %.lr.ph.i575
  %.078.i577.epil.init = phi ptr [ %i.ae, %.lr.ph.i575 ], [ %i.bd, %fill_buf.exit579.loopexit.unr-lcssa ]
  %lcmp.mod820 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod820)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.078.i577.epil = phi ptr [ %.078.i577.epil.init, %.epil.preheader ], [ %i.be, %bb.i ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.078.i577.epil, i8 0, i64 %i.at, i1 false)
  %i.be = getelementptr inbounds i8, ptr %.078.i577.epil, i64 %i.au
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %fill_buf.exit579, label %bb.i, !llvm.loop !104

fill_buf.exit579:                                 ; preds = %fill_buf.exit579.loopexit.unr-lcssa, %bb.i, %bb.g
  %i.bf = icmp sgt i32 %i.ab, 0                   ; 3 uses
  br i1 %i.bf, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %fill_buf.exit579
  %.pre751 = sext i32 %i.p to i64
  %i.bg = sext i32 %i.ag to i64
  br label %.preheader587

.lr.ph:                                           ; preds = %fill_buf.exit579
  %i.bh = shl nsw i32 %i.p, 1
  %i.bi = sext i32 %i.p to i64                    ; 4 uses
  %i.bj = sext i32 %i.bh to i64
  %wide.trip.count = zext nneg i32 %i.ab to i64
  %invariant.gep = getelementptr i8, ptr %i.n, i64 %i.bi
  %invariant.gep780 = getelementptr i8, ptr %i.n, i64 %i.bj
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !64
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv
  %i.bn = load i8, ptr %gep, align 1, !tbaa !64
  %i.bo = zext i8 %i.bn to i32                    ; 2 uses
  %i.bp = sub nsw i32 %i.bm, %i.bo
  %i.bq = tail call i32 @llvm.abs.i32(i32 %i.bp, i1 true)
  %i.br = icmp sgt i32 %i.bq, %i.b
  br i1 %i.br, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bs = shl nuw nsw i32 %i.bm, 2
  %.neg569 = mul nsw i32 %i.bo, -6
  %i.bt = add nsw i32 %.neg569, %i.bs
  %gep781 = getelementptr i8, ptr %invariant.gep780, i64 %indvars.iv
  %i.bu = load i8, ptr %gep781, align 1, !tbaa !64
  %i.bv = zext i8 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 1
  %i.bx = add nsw i32 %i.bt, %i.bw
  %i.by = tail call i32 @llvm.abs.i32(i32 %i.bx, i1 true)
  %i.bz = icmp samesign ugt i32 %i.by, %i.c
  br i1 %i.bz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  store i8 -1, ptr %i.ca, align 1, !tbaa !64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.j, !llvm.loop !105

._crit_edge:                                      ; preds = %bb.m
  %i.cb = getelementptr inbounds i8, ptr %i.n, i64 %i.bi ; 3 uses
  %i.cc = sext i32 %i.ag to i64                   ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.ae, i64 %i.cc
  %i.ce = shl nsw i32 %i.p, 1
  %i.cf = sext i32 %i.ce to i64
  %wide.trip.count687 = zext nneg i32 %i.ab to i64
  %invariant.gep782 = getelementptr i8, ptr %i.cb, i64 %i.bi
  %invariant.gep784 = getelementptr i8, ptr %i.cb, i64 %i.cf
  br label %bb.s

.preheader587:                                    ; preds = %bb.w, %._crit_edge.thread
  %i.cg = phi i64 [ %i.bg, %._crit_edge.thread ], [ %i.cc, %bb.w ] ; 3 uses
  %.pre-phi768 = phi i64 [ %.pre751, %._crit_edge.thread ], [ %i.bi, %bb.w ] ; 7 uses
  %2 = shl nsw i64 %.pre-phi768, 1
  %i.ch = getelementptr inbounds i8, ptr %i.n, i64 %2 ; 2 uses
  %3 = shl nsw i64 %i.cg, 1
  %.0550596 = getelementptr inbounds i8, ptr %i.ae, i64 %3 ; 2 uses
  %i.ci = icmp sgt i32 %i.ac, 4
  br i1 %i.ci, label %.preheader584.lr.ph, label %.preheader586

.preheader584.lr.ph:                              ; preds = %.preheader587
  %i.cj = shl i32 %i.p, 1                         ; 2 uses
  br i1 %i.bf, label %.preheader584.us.preheader, label %fill_buf.exit

.preheader584.us.preheader:                       ; preds = %.preheader584.lr.ph
  %i.ck = sext i32 %i.cj to i64
  %wide.trip.count693 = zext nneg i32 %i.ab to i64
  %i.cl = add nsw i32 %i.ac, -3
  br label %.preheader584.us

.preheader584.us:                                 ; preds = %.preheader584.us.preheader, %._crit_edge594.us
  %.0550599.us = phi ptr [ %.0550.us, %._crit_edge594.us ], [ %.0550596, %.preheader584.us.preheader ] ; 2 uses
  %.0539598.us = phi ptr [ %.0539.us, %._crit_edge594.us ], [ %i.ch, %.preheader584.us.preheader ] ; 6 uses
  %.0521597.us = phi i32 [ %i.dr, %._crit_edge594.us ], [ 2, %.preheader584.us.preheader ] ; 2 uses
  %invariant.gep786 = getelementptr i8, ptr %.0539598.us, i64 %.pre-phi768
  %invariant.gep788 = getelementptr i8, ptr %.0539598.us, i64 %i.ck
  br label %bb.n

bb.n:                                             ; preds = %.preheader584.us, %bb.r
  %indvars.iv690 = phi i64 [ 0, %.preheader584.us ], [ %indvars.iv.next691, %bb.r ] ; 7 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0539598.us, i64 %indvars.iv690
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !64
  %i.co = zext i8 %i.cn to i32                    ; 3 uses
  %i.cp = sub nsw i64 %indvars.iv690, %.pre-phi768
  %i.cq = getelementptr inbounds i8, ptr %.0539598.us, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !64
  %i.cs = zext i8 %i.cr to i32                    ; 2 uses
  %i.ct = sub nsw i32 %i.co, %i.cs
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %gep787 = getelementptr i8, ptr %invariant.gep786, i64 %indvars.iv690
  %i.cv = load i8, ptr %gep787, align 1, !tbaa !64
  %i.cw = zext i8 %i.cv to i32                    ; 2 uses
  %i.cx = icmp sgt i32 %i.cu, %i.b
  br i1 %i.cx, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.cy = sub nsw i32 %i.co, %i.cw
  %i.cz = tail call i32 @llvm.abs.i32(i32 %i.cy, i1 true)
  %i.da = icmp sgt i32 %i.cz, %i.b
  br i1 %i.da, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.db = shl nuw nsw i32 %i.co, 2
  %i.dc = add nuw nsw i32 %i.cw, %i.cs
  %.neg567.us = mul nsw i32 %i.dc, -3
  %i.dd = trunc nuw nsw i64 %indvars.iv690 to i32
  %i.de = sub i32 %i.dd, %i.cj
  %i.df = sext i32 %i.de to i64
  %i.dg = getelementptr inbounds i8, ptr %.0539598.us, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !64
  %i.di = zext i8 %i.dh to i32
  %gep789 = getelementptr i8, ptr %invariant.gep788, i64 %indvars.iv690
  %i.dj = load i8, ptr %gep789, align 1, !tbaa !64
  %i.dk = zext i8 %i.dj to i32
  %i.dl = add nsw i32 %.neg567.us, %i.db
  %i.dm = add nsw i32 %i.dl, %i.di
  %i.dn = add nsw i32 %i.dm, %i.dk
  %i.do = tail call i32 @llvm.abs.i32(i32 %i.dn, i1 true)
  %i.dp = icmp samesign ugt i32 %i.do, %i.c
  br i1 %i.dp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dq = getelementptr inbounds nuw i8, ptr %.0550599.us, i64 %indvars.iv690
  store i8 -1, ptr %i.dq, align 1, !tbaa !64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.n
  %indvars.iv.next691 = add nuw nsw i64 %indvars.iv690, 1 ; 2 uses
  %exitcond694.not = icmp eq i64 %indvars.iv.next691, %wide.trip.count693
  br i1 %exitcond694.not, label %._crit_edge594.us, label %bb.n, !llvm.loop !106

._crit_edge594.us:                                ; preds = %bb.r
  %i.dr = add nuw nsw i32 %.0521597.us, 1
  %.0539.us = getelementptr inbounds i8, ptr %.0539598.us, i64 %.pre-phi768 ; 2 uses
  %.0550.us = getelementptr inbounds i8, ptr %.0550599.us, i64 %i.cg ; 2 uses
  %exitcond695.not = icmp eq i32 %.0521597.us, %i.cl
  br i1 %exitcond695.not, label %.preheader586, label %.preheader584.us, !llvm.loop !107

bb.s:                                             ; preds = %._crit_edge, %bb.w
  %indvars.iv684 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next685, %bb.w ] ; 6 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv684
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !64
  %i.du = zext i8 %i.dt to i32                    ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv684
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !64
  %i.dx = zext i8 %i.dw to i32                    ; 2 uses
  %i.dy = sub nsw i32 %i.du, %i.dx
  %i.dz = tail call i32 @llvm.abs.i32(i32 %i.dy, i1 true)
  %gep783 = getelementptr i8, ptr %invariant.gep782, i64 %indvars.iv684
  %i.ea = load i8, ptr %gep783, align 1, !tbaa !64
  %i.eb = zext i8 %i.ea to i32                    ; 2 uses
  %i.ec = icmp sgt i32 %i.dz, %i.b
  br i1 %i.ec, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.ed = sub nsw i32 %i.du, %i.eb
  %i.ee = tail call i32 @llvm.abs.i32(i32 %i.ed, i1 true)
  %i.ef = icmp sgt i32 %i.ee, %i.b
  br i1 %i.ef, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.eg = shl nuw nsw i32 %i.du, 2
  %i.eh = add nuw nsw i32 %i.eb, %i.dx
  %.neg568 = mul nsw i32 %i.eh, -3
  %i.ei = add nsw i32 %.neg568, %i.eg
  %gep785 = getelementptr i8, ptr %invariant.gep784, i64 %indvars.iv684
  %i.ej = load i8, ptr %gep785, align 1, !tbaa !64
  %i.ek = zext i8 %i.ej to i32
  %i.el = shl nuw nsw i32 %i.ek, 1
  %i.em = add nsw i32 %i.ei, %i.el
  %i.en = tail call i32 @llvm.abs.i32(i32 %i.em, i1 true)
  %i.eo = icmp samesign ugt i32 %i.en, %i.c
  br i1 %i.eo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.ep = getelementptr inbounds nuw i8, ptr %i.cd, i64 %indvars.iv684
  store i8 -1, ptr %i.ep, align 1, !tbaa !64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %indvars.iv.next685 = add nuw nsw i64 %indvars.iv684, 1 ; 2 uses
  %exitcond688.not = icmp eq i64 %indvars.iv.next685, %wide.trip.count687
  br i1 %exitcond688.not, label %.preheader587, label %bb.s, !llvm.loop !108

.preheader586:                                    ; preds = %._crit_edge594.us, %.preheader587
  %.0539.lcssa = phi ptr [ %i.ch, %.preheader587 ], [ %.0539.us, %._crit_edge594.us ] ; 6 uses
  %.0550.lcssa = phi ptr [ %.0550596, %.preheader587 ], [ %.0550.us, %._crit_edge594.us ] ; 2 uses
  br i1 %i.bf, label %.lr.ph603, label %fill_buf.exit

.lr.ph603:                                        ; preds = %.preheader586
  %i.eq = shl i32 %i.p, 1
  %wide.trip.count699 = zext nneg i32 %i.ab to i64
  %invariant.gep790 = getelementptr i8, ptr %.0539.lcssa, i64 %.pre-phi768
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph603, %bb.ab
  %indvars.iv696 = phi i64 [ 0, %.lr.ph603 ], [ %indvars.iv.next697, %bb.ab ] ; 6 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0539.lcssa, i64 %indvars.iv696
  %i.es = load i8, ptr %i.er, align 1, !tbaa !64
  %i.et = zext i8 %i.es to i32                    ; 3 uses
  %i.eu = sub nsw i64 %indvars.iv696, %.pre-phi768
  %i.ev = getelementptr inbounds i8, ptr %.0539.lcssa, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !64
  %i.ex = zext i8 %i.ew to i32                    ; 2 uses
  %i.ey = sub nsw i32 %i.et, %i.ex
  %i.ez = tail call i32 @llvm.abs.i32(i32 %i.ey, i1 true)
  %gep791 = getelementptr i8, ptr %invariant.gep790, i64 %indvars.iv696
  %i.fa = load i8, ptr %gep791, align 1, !tbaa !64
  %i.fb = zext i8 %i.fa to i32                    ; 2 uses
  %i.fc = icmp sgt i32 %i.ez, %i.b
  br i1 %i.fc, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.fd = sub nsw i32 %i.et, %i.fb
  %i.fe = tail call i32 @llvm.abs.i32(i32 %i.fd, i1 true)
  %i.ff = icmp sgt i32 %i.fe, %i.b
  br i1 %i.ff, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.fg = shl nuw nsw i32 %i.et, 2
  %i.fh = add nuw nsw i32 %i.fb, %i.ex
  %.neg566 = mul nsw i32 %i.fh, -3
  %i.fi = add nsw i32 %.neg566, %i.fg
  %i.fj = trunc nuw nsw i64 %indvars.iv696 to i32
  %i.fk = sub i32 %i.fj, %i.eq
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %.0539.lcssa, i64 %i.fl
  %i.fn = load i8, ptr %i.fm, align 1, !tbaa !64
  %i.fo = zext i8 %i.fn to i32
  %i.fp = shl nuw nsw i32 %i.fo, 1
  %i.fq = add nsw i32 %i.fi, %i.fp
  %i.fr = tail call i32 @llvm.abs.i32(i32 %i.fq, i1 true)
  %i.fs = icmp samesign ugt i32 %i.fr, %i.c
  br i1 %i.fs, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ft = getelementptr inbounds nuw i8, ptr %.0550.lcssa, i64 %indvars.iv696
  store i8 -1, ptr %i.ft, align 1, !tbaa !64
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.y, %bb.x
  %indvars.iv.next697 = add nuw nsw i64 %indvars.iv696, 1 ; 2 uses
  %exitcond700.not = icmp eq i64 %indvars.iv.next697, %wide.trip.count699
  br i1 %exitcond700.not, label %._crit_edge604, label %bb.x, !llvm.loop !109

._crit_edge604:                                   ; preds = %bb.ab
  %i.fu = getelementptr inbounds i8, ptr %.0539.lcssa, i64 %.pre-phi768 ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %.0550.lcssa, i64 %i.cg
  %i.fw = shl i32 %i.p, 1
  %wide.trip.count704 = zext nneg i32 %i.ab to i64
  br label %bb.ac

bb.ac:                                            ; preds = %._crit_edge604, %bb.af
  %indvars.iv701 = phi i64 [ 0, %._crit_edge604 ], [ %indvars.iv.next702, %bb.af ] ; 5 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %indvars.iv701
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !64
  %i.fz = zext i8 %i.fy to i32                    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.0539.lcssa, i64 %indvars.iv701
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !64
  %i.gc = zext i8 %i.gb to i32                    ; 2 uses
  %i.gd = sub nsw i32 %i.fz, %i.gc
  %i.ge = tail call i32 @llvm.abs.i32(i32 %i.gd, i1 true)
  %i.gf = icmp sgt i32 %i.ge, %i.b
  br i1 %i.gf, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.gg = shl nuw nsw i32 %i.fz, 2
  %.neg = mul nsw i32 %i.gc, -6
  %i.gh = add nsw i32 %.neg, %i.gg
  %i.gi = trunc nuw nsw i64 %indvars.iv701 to i32
  %i.gj = sub i32 %i.gi, %i.fw
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr %i.fu, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !64
  %i.gn = zext i8 %i.gm to i32
  %i.go = shl nuw nsw i32 %i.gn, 1
  %i.gp = add nsw i32 %i.gh, %i.go
  %i.gq = tail call i32 @llvm.abs.i32(i32 %i.gp, i1 true)
  %i.gr = icmp samesign ugt i32 %i.gq, %i.c
  br i1 %i.gr, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fv, i64 %indvars.iv701
  store i8 -1, ptr %i.gs, align 1, !tbaa !64
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac
  %indvars.iv.next702 = add nuw nsw i64 %indvars.iv701, 1 ; 2 uses
  %exitcond705.not = icmp eq i64 %indvars.iv.next702, %wide.trip.count704
  br i1 %exitcond705.not, label %fill_buf.exit, label %bb.ac, !llvm.loop !110

fill_buf.exit.loopexit.unr-lcssa:                 ; preds = %bb.f
  %lcmp.mod824.not = icmp eq i32 %xtraiter822, 0
  br i1 %lcmp.mod824.not, label %fill_buf.exit, label %.epil.preheader821

.epil.preheader821:                               ; preds = %fill_buf.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.078.i.epil.init = phi ptr [ %i.ae, %.lr.ph.i ], [ %i.as, %fill_buf.exit.loopexit.unr-lcssa ]
  %lcmp.mod825 = icmp ne i32 %xtraiter822, 0
  tail call void @llvm.assume(i1 %lcmp.mod825)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ag, %.epil.preheader821
  %.078.i.epil = phi ptr [ %.078.i.epil.init, %.epil.preheader821 ], [ %i.gt, %bb.ag ] ; 2 uses
  %epil.iter823 = phi i32 [ 0, %.epil.preheader821 ], [ %epil.iter823.next, %bb.ag ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %.078.i.epil, i8 -1, i64 %i.ai, i1 false)
  %i.gt = getelementptr inbounds i8, ptr %.078.i.epil, i64 %i.aj
  %epil.iter823.next = add i32 %epil.iter823, 1   ; 2 uses
  %epil.iter823.cmp.not = icmp eq i32 %epil.iter823.next, %xtraiter822
  br i1 %epil.iter823.cmp.not, label %fill_buf.exit, label %bb.ag, !llvm.loop !111

fill_buf.exit:                                    ; preds = %bb.af, %fill_buf.exit.loopexit.unr-lcssa, %bb.ag, %.preheader584.lr.ph, %.preheader586, %bb.e
  %indvars.iv.next707 = add nuw nsw i64 %indvars.iv706, 1
  %i.gu = load i32, ptr %i.d, align 4, !tbaa !128
  %.not = icmp ne i32 %i.gu, 0                    ; 2 uses
  %i.gv = icmp samesign ult i64 %indvars.iv706, 2
  %i.gw = select i1 %.not, i1 %i.gv, i1 false
  br i1 %i.gw, label %bb.b, label %bb.ah, !llvm.loop !112

bb.ah:                                            ; preds = %fill_buf.exit
  br i1 %.not, label %bb.ai, label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.ah
  %.pre = load i32, ptr %i.g, align 8, !tbaa !42
  %.pre747 = load ptr, ptr %i.f, align 8, !tbaa !61
  %.pre748 = load i32, ptr %i.j, align 8, !tbaa !62
  %.pre749 = load i32, ptr %i.l, align 4, !tbaa !63
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ah
  %i.gx = load ptr, ptr %i.f, align 8, !tbaa !61  ; 7 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !61
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !61
  %i.hc = load i32, ptr %i.j, align 8, !tbaa !62  ; 4 uses
  %i.hd = load i32, ptr %i.i, align 8, !tbaa !42
  %i.he = sub nsw i32 0, %i.hc
  %i.hf = ashr i32 %i.he, %i.hd                   ; 2 uses
  %i.hg = load i32, ptr %i.l, align 4, !tbaa !63  ; 4 uses
  %i.hh = load i32, ptr %i.k, align 8, !tbaa !42
  %i.hi = sub nsw i32 0, %i.hg
  %i.hj = ashr i32 %i.hi, %i.hh                   ; 2 uses
  %i.hk = load i32, ptr %i.g, align 8, !tbaa !42  ; 4 uses
  %i.hl = shl i32 %i.hk, 1                        ; 2 uses
  %i.hm = sext i32 %i.hl to i64                   ; 5 uses
  %i.hn = icmp slt i32 %i.hj, -2
  br i1 %i.hn, label %.lr.ph623, label %.loopexit

.lr.ph623:                                        ; preds = %bb.ai
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !42
  %i.hq = sext i32 %i.hp to i64                   ; 8 uses
  %i.hr = icmp slt i32 %i.hf, -2
  br i1 %i.hr, label %.lr.ph613.preheader, label %.loopexit

.lr.ph613.preheader:                              ; preds = %.lr.ph623
  %i.hs = xor i32 %i.hf, -1
  %i.ht = ashr exact i32 %i.hl, 1
  %i.hu = sext i32 %i.ht to i64                   ; 2 uses
  %i.hv = sub nsw i64 0, %i.hu
  %i.hw = getelementptr inbounds i8, ptr %i.gx, i64 %i.hv
  %i.hx = getelementptr inbounds i8, ptr %i.gx, i64 %i.hu
  %i.hy = getelementptr inbounds i8, ptr %i.gx, i64 %i.hm
  %wide.trip.count712 = zext nneg i32 %i.hs to i64
  %i.hz = sub nsw i32 -2, %i.hj
  br label %.lr.ph613

.lr.ph613:                                        ; preds = %.lr.ph613.preheader, %._crit_edge614
  %.1522621 = phi i32 [ %i.kk, %._crit_edge614 ], [ 1, %.lr.ph613.preheader ] ; 3 uses
  %.0544620 = phi ptr [ %i.id, %._crit_edge614 ], [ %i.hy, %.lr.ph613.preheader ]
  %.0545619 = phi ptr [ %i.ic, %._crit_edge614 ], [ %i.hx, %.lr.ph613.preheader ]
  %.0546618 = phi ptr [ %i.ia, %._crit_edge614 ], [ %i.hw, %.lr.ph613.preheader ]
  %.0547617 = phi ptr [ %i.ie, %._crit_edge614 ], [ %i.hb, %.lr.ph613.preheader ] ; 4 uses
  %.0548616 = phi ptr [ %i.if, %._crit_edge614 ], [ %i.gz, %.lr.ph613.preheader ] ; 4 uses
  %.0549615 = phi ptr [ %i.ib, %._crit_edge614 ], [ %i.gx, %.lr.ph613.preheader ]
  %i.ia = getelementptr inbounds i8, ptr %.0546618, i64 %i.hm ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %.0549615, i64 %i.hm ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %.0545619, i64 %i.hm ; 2 uses
  %i.id = getelementptr inbounds i8, ptr %.0544620, i64 %i.hm ; 2 uses
  %i.ie = getelementptr inbounds i8, ptr %.0547617, i64 %i.hq ; 7 uses
  %i.if = getelementptr inbounds i8, ptr %.0548616, i64 %i.hq ; 7 uses
  %i.ig = and i32 %.1522621, 1
  %.not563 = icmp eq i32 %i.ig, 0
  %invariant.gep792 = getelementptr i8, ptr %i.ie, i64 %i.hq
  %invariant.gep794 = getelementptr i8, ptr %i.ie, i64 %i.hq
  %invariant.gep796 = getelementptr i8, ptr %i.ie, i64 %i.hq
end_hunk_0
