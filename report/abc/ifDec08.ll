Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec08?download=true
inline.NumInlined: 23
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 25
begin_hunk_0_@If_Dec08Cofactors:bb.a
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next71
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !14
  %indvars.iv.next71.1 = add nuw nsw i64 %indvars.iv70, 2 ; 2 uses
  %niter138.next.1 = add i64 %niter138, 2         ; 2 uses
  %niter138.ncmp.1 = icmp eq i64 %niter138.next.1, %unroll_iter137
  br i1 %niter138.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %scalar.ph113, !llvm.loop !49

bb.c:                                             ; preds = %bb.a
  %i.ba = add nsw i32 %2, -6                      ; 3 uses
  %i.bb = shl nuw i32 1, %i.ba                    ; 4 uses
  %i.bc = icmp sgt i32 %i.j, 0
  br i1 %i.bc, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.c
  %.not = icmp eq i32 %i.ba, 31
  %i.bd = shl i32 2, %i.ba                        ; 2 uses
  %i.be = sext i32 %i.bd to i64                   ; 3 uses
  br i1 %.not, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.bf = sext i32 %i.bb to i64                   ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 3 uses
  %i.bg = sub i64 %i.f, %i.b                      ; 2 uses
  %i.bh = shl nsw i64 %i.bf, 3                    ; 4 uses
  %i.bi = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %i.bj = shufflevector <2 x i64> %i.bi, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bk = add <2 x i64> %i.bj, %i.e
  %i.bl = add i64 %i.bh, %i.a
  %i.bm = sub i64 %i.f, %i.a                      ; 2 uses
  %i.bn = shufflevector <2 x i64> %i.bk, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bo = shufflevector <2 x ptr> %i.c, <2 x ptr> poison, <8 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = ptrtoaddr <8 x ptr> %i.bo to <8 x i64>
  %min.iters.check = icmp slt i32 %i.bb, 18
  %i.bq = sub i64 %i.bh, %i.bg
  %diff.check81 = icmp ugt i64 %i.bq, -32
  %i.br = add i64 %i.bm, -1
  %diff.check93 = icmp ult i64 %i.br, 31
  %i.bs = insertelement <8 x i64> %i.bp, i64 %i.a, i64 1 ; 2 uses
  %i.bt = insertelement <8 x i64> %i.bs, i64 %i.bh, i64 2
  %i.bu = insertelement <8 x i64> %i.bt, i64 %i.bg, i64 3
  %i.bv = shufflevector <8 x i64> %i.bu, <8 x i64> poison, <8 x i32> <i32 0, i32 1, i32 0, i32 0, i32 1, i32 1, i32 2, i32 3>
  %i.bw = shufflevector <8 x i64> %i.bs, <8 x i64> <i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 poison, i64 1>, <8 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 0, i32 poison, i32 poison, i32 15>
  %i.bx = shufflevector <8 x i64> %i.bw, <8 x i64> %i.bn, <8 x i32> <i32 0, i32 8, i32 9, i32 poison, i32 4, i32 poison, i32 poison, i32 7>
  %i.by = insertelement <8 x i64> %i.bx, i64 %i.bl, i64 3
  %i.bz = insertelement <8 x i64> %i.by, i64 %i.bm, i64 6
  %i.ca = shufflevector <8 x i64> %i.bz, <8 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 2, i32 6, i32 7>
  %i.cb = sub <8 x i64> %i.bv, %i.ca              ; 2 uses
  %i.cc = icmp ugt <8 x i64> %i.cb, <i64 -32, i64 -32, i64 -32, i64 -32, i64 -32, i64 -32, i64 -32, i64 31>
  %i.cd = icmp ult <8 x i64> %i.cb, <i64 -32, i64 -32, i64 -32, i64 -32, i64 -32, i64 -32, i64 -32, i64 31>
  %i.ce = shufflevector <8 x i1> %i.cc, <8 x i1> %i.cd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 15>
  %i.cf = bitcast <8 x i1> %i.ce to i8
  %i.cg = icmp ne i8 %i.cf, 0
  %op.rdx = or i1 %i.cg, %diff.check81
  %op.rdx129 = or i1 %op.rdx, %diff.check93
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ch = icmp slt i32 %i.bb, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod133 = trunc i32 %smax to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %.065 = phi i32 [ %i.ea, %._crit_edge ], [ 0, %.preheader.preheader ]
  %.05464 = phi ptr [ %i.dz, %._crit_edge ], [ %4, %.preheader.preheader ] ; 9 uses
  %.05563 = phi ptr [ %i.dy, %._crit_edge ], [ %3, %.preheader.preheader ] ; 9 uses
  %.05662 = phi ptr [ %i.dx, %._crit_edge ], [ %0, %.preheader.preheader ] ; 9 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %op.rdx129
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader
  br i1 %i.ch, label %scalar.ph.epil.preheader, label %scalar.ph

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 5 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load = load <2 x i64>, ptr %i.ci, align 8, !tbaa !14 ; 2 uses
  %wide.load99 = load <2 x i64>, ptr %i.cj, align 8, !tbaa !14 ; 2 uses
  %i.ck = add nuw nsw i64 %index, %i.bf           ; 3 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %.05563, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <2 x i64> %wide.load, ptr %i.cl, align 8, !tbaa !14
  store <2 x i64> %wide.load99, ptr %i.cm, align 8, !tbaa !14
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <2 x i64> %wide.load, ptr %i.cn, align 8, !tbaa !14
  store <2 x i64> %wide.load99, ptr %i.co, align 8, !tbaa !14
  %i.cp = getelementptr inbounds [8 x i8], ptr %.05662, i64 %i.ck ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %wide.load100 = load <2 x i64>, ptr %i.cp, align 8, !tbaa !14 ; 2 uses
  %wide.load101 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !14 ; 2 uses
  %i.cr = getelementptr inbounds [8 x i8], ptr %.05464, i64 %i.ck ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store <2 x i64> %wide.load100, ptr %i.cr, align 8, !tbaa !14
  store <2 x i64> %wide.load101, ptr %i.cs, align 8, !tbaa !14
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %index ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <2 x i64> %wide.load100, ptr %i.ct, align 8, !tbaa !14
  store <2 x i64> %wide.load101, ptr %i.cu, align 8, !tbaa !14
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %._crit_edge, label %vector.body, !llvm.loop !50

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %indvars.iv
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !14 ; 2 uses
  %i.cy = add nuw nsw i64 %indvars.iv, %i.bf      ; 3 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %i.cy
  store i64 %i.cx, ptr %i.cz, align 8, !tbaa !14
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %indvars.iv
  store i64 %i.cx, ptr %i.da, align 8, !tbaa !14
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %i.cy
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !14 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %i.cy
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !14
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %indvars.iv
  store i64 %i.dc, ptr %i.de, align 8, !tbaa !14
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %indvars.iv.next
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !14 ; 2 uses
  %i.dh = add nuw nsw i64 %indvars.iv.next, %i.bf ; 3 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %i.dh
  store i64 %i.dg, ptr %i.di, align 8, !tbaa !14
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %indvars.iv.next
  store i64 %i.dg, ptr %i.dj, align 8, !tbaa !14
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %i.dh
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !14 ; 2 uses
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %i.dh
  store i64 %i.dl, ptr %i.dm, align 8, !tbaa !14
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %indvars.iv.next
  store i64 %i.dl, ptr %i.dn, align 8, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !51

._crit_edge.loopexit.unr-lcssa:                   ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod133)
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.05662, i64 %indvars.iv.epil.init
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !14 ; 2 uses
  %i.dq = add nuw nsw i64 %indvars.iv.epil.init, %i.bf ; 3 uses
  %i.dr = getelementptr inbounds [8 x i8], ptr %.05563, i64 %i.dq
  store i64 %i.dp, ptr %i.dr, align 8, !tbaa !14
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %.05563, i64 %indvars.iv.epil.init
  store i64 %i.dp, ptr %i.ds, align 8, !tbaa !14
  %i.dt = getelementptr inbounds [8 x i8], ptr %.05662, i64 %i.dq
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !14 ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %.05464, i64 %i.dq
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !14
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %.05464, i64 %indvars.iv.epil.init
  store i64 %i.du, ptr %i.dw, align 8, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa
  %i.dx = getelementptr inbounds [8 x i8], ptr %.05662, i64 %i.be
  %i.dy = getelementptr inbounds [8 x i8], ptr %.05563, i64 %i.be
  %i.dz = getelementptr inbounds [8 x i8], ptr %.05464, i64 %i.be
  %i.ea = add nsw i32 %.065, %i.bd                ; 2 uses
  %i.eb = icmp slt i32 %i.ea, %i.j
  br i1 %i.eb, label %.preheader, label %.loopexit, !llvm.loop !52

.loopexit.loopexit.unr-lcssa:                     ; preds = %scalar.ph113
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %.loopexit, label %scalar.ph113.epil.preheader

scalar.ph113.epil.preheader:                      ; preds = %.loopexit.loopexit.unr-lcssa, %scalar.ph113.preheader
  %indvars.iv70.epil.init = phi i64 [ 0, %scalar.ph113.preheader ], [ %indvars.iv.next71.1, %.loopexit.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod136 = trunc i32 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod136)
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv70.epil.init ; 2 uses
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !14
  %i.ee = and i64 %i.ed, %i.q                     ; 2 uses
  %i.ef = shl i64 %i.ee, %i.r
  %i.eg = or i64 %i.ef, %i.ee
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv70.epil.init
  store i64 %i.eg, ptr %i.eh, align 8, !tbaa !14
  %i.ei = load i64, ptr %i.ec, align 8, !tbaa !14
  %i.ej = and i64 %i.ei, %i.p                     ; 2 uses
  %i.ek = lshr i64 %i.ej, %i.r
  %i.el = or i64 %i.ek, %i.ej
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv70.epil.init
  store i64 %i.el, ptr %i.em, align 8, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %vector.body121, %scalar.ph113.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.c, %.preheader.lr.ph, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @If_Dec08Perform(ptr nofree noundef %0, i32 noundef %1, i32 %2) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.b = alloca [16 x i64], align 16              ; 16 uses
  %i.c = alloca [16 x i64], align 16              ; 3 uses
  %i.d = alloca [16 x i64], align 16              ; 3 uses
  %i.e = alloca [16 x i64], align 16              ; 3 uses
  %i.f = alloca [16 x i64], align 16              ; 15 uses
  %i.g = alloca [16 x i64], align 16              ; 15 uses
  %i.h = alloca [10 x i32], align 16              ; 7 uses
  %i.i = alloca [10 x i32], align 16              ; 13 uses
  %i.j = alloca [210 x i32], align 16             ; 11 uses
  %i.k = alloca [210 x i32], align 16             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.l = icmp sgt i32 %1, 0
  br i1 %i.l, label %.lr.ph.preheader, label %.loopexit214

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader671, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store <4 x i32> %vec.ind, ptr %i.m, align 16, !tbaa !8
  store <4 x i32> %step.add, ptr %i.n, align 16, !tbaa !8
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store <4 x i32> %vec.ind, ptr %i.o, align 16, !tbaa !8
  store <4 x i32> %step.add, ptr %i.p, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph245, label %.lr.ph.preheader671

.lr.ph.preheader671:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph245:                                        ; preds = %.lr.ph, %middle.block
  %i.r = add nsw i32 %1, -1                       ; 3 uses
  %i.s = icmp samesign ult i32 %1, 7
  %i.t = add nsw i32 %1, -6
  %i.u = shl nuw i32 1, %i.t
  %i.v = select i1 %i.s, i32 1, i32 %i.u          ; 22 uses
  %i.w = icmp slt i32 %i.v, 1                     ; 12 uses
  %i.x = zext i32 %i.v to i64                     ; 20 uses
  %i.y = add nsw i32 %1, -2                       ; 2 uses
  %i.z = add nsw i32 %1, -3                       ; 9 uses
  %i.aa = shl nuw i32 1, %i.z                     ; 3 uses
  %i.ab = zext nneg i32 %i.aa to i64
  %notmask.i = shl nsw i64 -1, %i.ab
  %i.ac = xor i64 %notmask.i, -1                  ; 24 uses
  %i.ad = sdiv i32 %i.aa, 64
  %i.ae = sext i32 %i.ad to i64                   ; 3 uses
  %i.af = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ae
  %i.ag = and i32 %i.aa, 63
  %i.ah = zext nneg i32 %i.ag to i64              ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aj = shl i32 2, %i.z                         ; 2 uses
  %i.ak = sdiv i32 %i.aj, 64
  %i.al = sext i32 %i.ak to i64                   ; 3 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %i.al
  %i.an = and i32 %i.aj, 62
  %i.ao = zext nneg i32 %i.an to i64              ; 3 uses
  %i.ap = shl i32 3, %i.z                         ; 2 uses
  %i.aq = sdiv i32 %i.ap, 64
  %i.ar = sext i32 %i.aq to i64                   ; 3 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ar
  %i.at = and i32 %i.ap, 63
  %i.au = zext nneg i32 %i.at to i64              ; 3 uses
  %i.av = shl i32 4, %i.z                         ; 2 uses
  %i.aw = sdiv i32 %i.av, 64
  %i.ax = sext i32 %i.aw to i64                   ; 3 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %0, i64 %i.ax
  %i.az = and i32 %i.av, 60
  %i.ba = zext nneg i32 %i.az to i64              ; 3 uses
  %i.bb = shl i32 5, %i.z                         ; 2 uses
  %i.bc = sdiv i32 %i.bb, 64
  %i.bd = sext i32 %i.bc to i64                   ; 3 uses
  %i.be = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bd
  %i.bf = and i32 %i.bb, 63
  %i.bg = zext nneg i32 %i.bf to i64              ; 3 uses
  %i.bh = shl i32 6, %i.z                         ; 2 uses
  %i.bi = sdiv i32 %i.bh, 64
  %i.bj = sext i32 %i.bi to i64                   ; 3 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bj
  %i.bl = and i32 %i.bh, 62
  %i.bm = zext nneg i32 %i.bl to i64              ; 3 uses
  %i.bn = shl i32 7, %i.z                         ; 2 uses
  %i.bo = sdiv i32 %i.bn, 64
  %i.bp = sext i32 %i.bo to i64                   ; 3 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %0, i64 %i.bp
  %i.br = and i32 %i.bn, 63
  %i.bs = zext nneg i32 %i.br to i64              ; 3 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ae
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.al
  %i.bv = icmp sgt i32 %i.v, 0                    ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ar
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.ax
  %i.by = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bd
  %i.bz = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bj
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.bp
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ae
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.al
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ar
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ax
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bd
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bj
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.bp
  %i.ci = zext nneg i32 %i.r to i64
  %i.cj = zext nneg i32 %1 to i64
  %wide.trip.count312 = zext nneg i32 %1 to i64   ; 2 uses
  %i.ck = add nsw i64 %i.x, -1                    ; 7 uses
  %i.cl = lshr i64 %i.ck, 1                       ; 4 uses
  %i.cm = add nuw i64 %i.cl, 1                    ; 6 uses
  %i.cn = icmp eq i64 %i.cl, 0
  %unroll_iter677 = and i64 %i.cm, -2
  %i.co = and i64 %i.ck, 2
  %lcmp.mod675.not.not = icmp eq i64 %i.co, 0
  %lcmp.mod676 = trunc i64 %i.cm to i1
  %min.iters.check597 = icmp ult i32 %i.v, 4
  %n.vec599 = and i64 %i.x, 2147483644
  %xtraiter679 = and i64 %i.x, 1
  %i.cp = icmp eq i64 %i.ck, 0
  %unroll_iter683 = and i64 %i.x, 2147483646
  %lcmp.mod681.not = icmp eq i64 %xtraiter679, 0
  %lcmp.mod682 = trunc i32 %i.v to i1
  %min.iters.check582 = icmp ult i32 %i.v, 4
  %n.vec584 = and i64 %i.x, 2147483644
  %xtraiter685 = and i64 %i.x, 3                  ; 3 uses
  %i.cq = icmp ult i32 %i.v, 4
  %unroll_iter689 = and i64 %i.x, 2147483644
  %lcmp.mod687.not = icmp eq i64 %xtraiter685, 0
  %lcmp.mod688 = icmp ne i64 %xtraiter685, 0
  %i.cr = icmp eq i64 %i.cl, 0
  %unroll_iter701 = and i64 %i.cm, -2
  %i.cs = and i64 %i.ck, 2
  %lcmp.mod699.not.not = icmp eq i64 %i.cs, 0
  %lcmp.mod700 = trunc i64 %i.cm to i1
  %min.iters.check545 = icmp ult i32 %i.v, 4
  %n.vec547 = and i64 %i.x, 2147483644
  %xtraiter703 = and i64 %i.x, 1
  %i.ct = icmp eq i64 %i.ck, 0
  %unroll_iter707 = and i64 %i.x, 2147483646
  %lcmp.mod705.not = icmp eq i64 %xtraiter703, 0
  %lcmp.mod706 = trunc i32 %i.v to i1
  %min.iters.check530 = icmp ult i32 %i.v, 4
  %n.vec532 = and i64 %i.x, 2147483644
  %xtraiter709 = and i64 %i.x, 3                  ; 3 uses
  %i.cu = icmp ult i32 %i.v, 4
  %unroll_iter713 = and i64 %i.x, 2147483644
  %lcmp.mod711.not = icmp eq i64 %xtraiter709, 0
  %lcmp.mod712 = icmp ne i64 %xtraiter709, 0
  %i.cv = icmp eq i64 %i.cl, 0
  %unroll_iter725 = and i64 %i.cm, -2
  %i.cw = and i64 %i.ck, 2
  %lcmp.mod723.not.not = icmp eq i64 %i.cw, 0
  %lcmp.mod724 = trunc i64 %i.cm to i1
  %min.iters.check493 = icmp ult i32 %i.v, 4
  %n.vec495 = and i64 %i.x, 2147483644
  %xtraiter727 = and i64 %i.x, 1
  %i.cx = icmp eq i64 %i.ck, 0
  %unroll_iter731 = and i64 %i.x, 2147483646
  %lcmp.mod729.not = icmp eq i64 %xtraiter727, 0
  %lcmp.mod730 = trunc i32 %i.v to i1
  %min.iters.check478 = icmp ult i32 %i.v, 4
  %n.vec480 = and i64 %i.x, 2147483644
  %xtraiter733 = and i64 %i.x, 3                  ; 3 uses
  %i.cy = icmp ult i32 %i.v, 4
  %unroll_iter737 = and i64 %i.x, 2147483644
  %lcmp.mod735.not = icmp eq i64 %xtraiter733, 0
  %lcmp.mod736 = icmp ne i64 %xtraiter733, 0
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %min.iters.check448 = icmp ult i32 %i.v, 4
  %n.vec450 = and i64 %i.x, 2147483644
  %exitcond74.not.i = icmp eq i32 %i.v, 1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %exitcond74.not.i.1 = icmp eq i32 %i.v, 2
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader671, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader671 ] ; 4 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.dh = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !8
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph245, label %.lr.ph, !llvm.loop !54

.loopexit226:                                     ; preds = %.loopexit225, %bb.j
  %.1.lcssa = phi i32 [ %.078244, %bb.j ], [ %.2.lcssa, %.loopexit225 ] ; 4 uses
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1
  %exitcond313.not = icmp eq i64 %indvars.iv.next310, %wide.trip.count312
  br i1 %exitcond313.not, label %.preheader, label %bb.j, !llvm.loop !55

.preheader:                                       ; preds = %.loopexit226
  %i.dj = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.dj, label %.lr.ph253, label %.loopexit214

.lr.ph253:                                        ; preds = %.preheader
  %i.dk = sub nsw i32 8, %1                       ; 3 uses
  %i.dl = zext nneg i32 %.1.lcssa to i64          ; 3 uses
  %wide.trip.count348 = zext nneg i32 %.1.lcssa to i64 ; 6 uses
  switch i32 %1, label %.lr.ph253.split [
    i32 8, label %.lr.ph253.split.us
    i32 7, label %.lr.ph253.split.us255
  ]

.lr.ph253.split.us:                               ; preds = %.lr.ph253, %.loopexit.us
  %indvars.iv333 = phi i64 [ %indvars.iv.next334, %.loopexit.us ], [ 0, %.lr.ph253 ] ; 3 uses
  %indvars.iv326 = phi i64 [ %indvars.iv.next327, %.loopexit.us ], [ 1, %.lr.ph253 ] ; 2 uses
  %indvars.iv.next334 = add nuw nsw i64 %indvars.iv333, 1 ; 3 uses
  %i.dm = icmp samesign ult i64 %indvars.iv.next334, %i.dl
  br i1 %i.dm, label %.lr.ph248.us, label %.loopexit.us

.loopexit.us:                                     ; preds = %.thread205.us.us, %.lr.ph253.split.us
  %indvars.iv.next327 = add nuw nsw i64 %indvars.iv326, 1
  %exitcond337.not = icmp eq i64 %indvars.iv.next334, %wide.trip.count348
  br i1 %exitcond337.not, label %.loopexit214, label %.lr.ph253.split.us, !llvm.loop !56

.lr.ph248.us:                                     ; preds = %.lr.ph253.split.us
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv333
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !8
  %i.dp = and i32 %i.do, 65535
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv333
  br label %bb.b

bb.b:                                             ; preds = %.thread205.us.us, %.lr.ph248.us
  %indvars.iv328 = phi i64 [ %indvars.iv.next329, %.thread205.us.us ], [ %indvars.iv326, %.lr.ph248.us ] ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv328
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !8
  %i.dt = and i32 %i.dp, %i.ds
  %i.du = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.dt)
  %i.dv = icmp sgt i32 %i.du, %i.dk
  br i1 %i.dv, label %.thread205.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.dw = load i32, ptr %i.dq, align 4, !tbaa !8
  %i.dx = icmp eq i32 %i.dw, 2
  br i1 %i.dx, label %bb.d, label %.thread205.us.us

bb.d:                                             ; preds = %bb.c
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv328
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !8
  %i.ea = icmp eq i32 %i.dz, 2
  br i1 %i.ea, label %.loopexit214, label %.thread205.us.us

.thread205.us.us:                                 ; preds = %bb.d, %bb.c, %bb.b
  %indvars.iv.next329 = add nuw nsw i64 %indvars.iv328, 1 ; 2 uses
  %exitcond332.not = icmp eq i64 %indvars.iv.next329, %wide.trip.count348
  br i1 %exitcond332.not, label %.loopexit.us, label %bb.b, !llvm.loop !57

.lr.ph253.split.us255:                            ; preds = %.lr.ph253, %.loopexit.us257
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %.loopexit.us257 ], [ 0, %.lr.ph253 ] ; 3 uses
  %indvars.iv314 = phi i64 [ %indvars.iv.next315, %.loopexit.us257 ], [ 1, %.lr.ph253 ] ; 2 uses
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 3 uses
  %i.eb = icmp samesign ult i64 %indvars.iv.next322, %i.dl
  br i1 %i.eb, label %.lr.ph248.us258, label %.loopexit.us257

.loopexit.us257:                                  ; preds = %.thread205.us251.us, %.lr.ph253.split.us255
  %indvars.iv.next315 = add nuw nsw i64 %indvars.iv314, 1
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %wide.trip.count348
  br i1 %exitcond325.not, label %.loopexit214, label %.lr.ph253.split.us255, !llvm.loop !56

.lr.ph248.us258:                                  ; preds = %.lr.ph253.split.us255
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv321
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8
  %i.ee = and i32 %i.ed, 65535
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv321
  br label %bb.e

bb.e:                                             ; preds = %.thread205.us251.us, %.lr.ph248.us258
  %indvars.iv316 = phi i64 [ %indvars.iv.next317, %.thread205.us251.us ], [ %indvars.iv314, %.lr.ph248.us258 ] ; 4 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv316
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !8
  %i.ei = and i32 %i.ee, %i.eh
  %i.ej = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.ei)
  %i.ek = icmp sgt i32 %i.ej, %i.dk
  br i1 %i.ek, label %.thread205.us251.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.el = load i32, ptr %i.ef, align 4, !tbaa !8  ; 2 uses
  %i.em = icmp eq i32 %i.el, 2
  br i1 %i.em, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.en = icmp slt i32 %i.el, 0
  br i1 %i.en, label %bb.h, label %.thread205.us251.us

bb.h:                                             ; preds = %bb.g
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv316
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !8
  %i.eq = icmp eq i32 %i.ep, 2
  br i1 %i.eq, label %.loopexit214, label %.thread205.us251.us

bb.i:                                             ; preds = %bb.f
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv316
  %i.es = load i32, ptr %i.er, align 4, !tbaa !8  ; 2 uses
  %i.et = icmp eq i32 %i.es, 2
  %i.eu = icmp slt i32 %i.es, 0
  %or.cond426 = or i1 %i.et, %i.eu
  br i1 %or.cond426, label %.loopexit214, label %.thread205.us251.us

.thread205.us251.us:                              ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %exitcond320.not = icmp eq i64 %indvars.iv.next317, %wide.trip.count348
  br i1 %exitcond320.not, label %.loopexit.us257, label %bb.e, !llvm.loop !57

bb.j:                                             ; preds = %.lr.ph245, %.loopexit226
  %indvars.iv309 = phi i64 [ 0, %.lr.ph245 ], [ %indvars.iv.next310, %.loopexit226 ] ; 3 uses
  %indvars.iv302 = phi i64 [ 1, %.lr.ph245 ], [ %indvars.iv.next303, %.loopexit226 ] ; 2 uses
  %indvars.iv292 = phi i64 [ 2, %.lr.ph245 ], [ %indvars.iv.next293, %.loopexit226 ] ; 2 uses
  %.078244 = phi i32 [ 0, %.lr.ph245 ], [ %.1.lcssa, %.loopexit226 ] ; 2 uses
  %indvars.iv.next310 = add nuw nsw i64 %indvars.iv309, 1 ; 3 uses
  %i.ev = icmp samesign ult i64 %indvars.iv.next310, %i.cj
  br i1 %i.ev, label %.lr.ph241, label %.loopexit226

.lr.ph241:                                        ; preds = %bb.j
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv309 ; 2 uses
  %i.ex = trunc nuw nsw i64 %indvars.iv309 to i32
  %i.ey = shl nuw i32 1, %i.ex
  br label %bb.k

.loopexit225.loopexit:                            ; preds = %.loopexit224
  %i.ez = trunc nsw i64 %indvars.iv.next291 to i32
  br label %.loopexit225

.loopexit225:                                     ; preds = %.loopexit225.loopexit, %bb.k
  %.2.lcssa = phi i32 [ %.1240, %bb.k ], [ %i.ez, %.loopexit225.loopexit ] ; 2 uses
  %indvars.iv.next295 = add nuw nsw i64 %indvars.iv294, 1
  %exitcond308.not = icmp eq i64 %indvars.iv.next305, %wide.trip.count312
  br i1 %exitcond308.not, label %.loopexit226, label %bb.k, !llvm.loop !58

bb.k:                                             ; preds = %.lr.ph241, %.loopexit225
  %indvars.iv304 = phi i64 [ %indvars.iv302, %.lr.ph241 ], [ %indvars.iv.next305, %.loopexit225 ] ; 3 uses
  %indvars.iv294 = phi i64 [ %indvars.iv292, %.lr.ph241 ], [ %indvars.iv.next295, %.loopexit225 ] ; 2 uses
  %.1240 = phi i32 [ %.078244, %.lr.ph241 ], [ %.2.lcssa, %.loopexit225 ] ; 2 uses
  %indvars.iv.next305 = add nuw nsw i64 %indvars.iv304, 1 ; 3 uses
  %i.fa = trunc nuw i64 %indvars.iv.next305 to i32
  %i.fb = icmp sgt i32 %1, %i.fa
  br i1 %i.fb, label %.lr.ph238, label %.loopexit225

.lr.ph238:                                        ; preds = %bb.k
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv304 ; 2 uses
  %i.fd = trunc nuw nsw i64 %indvars.iv304 to i32
  %i.fe = shl nuw i32 1, %i.fd
  %i.ff = or i32 %i.fe, %i.ey
  %i.fg = sext i32 %.1240 to i64
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph238, %.loopexit224
  %indvars.iv296 = phi i64 [ %indvars.iv294, %.lr.ph238 ], [ %indvars.iv.next297, %.loopexit224 ] ; 3 uses
  %indvars.iv290 = phi i64 [ %i.fg, %.lr.ph238 ], [ %indvars.iv.next291, %.loopexit224 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.fh = load i32, ptr %i.ew, align 4, !tbaa !8  ; 2 uses
  %.not49.i = icmp eq i32 %i.fh, %i.r
  br i1 %.not49.i, label %If_Dec08MoveTo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %If_Dec08SwapAdjacent.exit.i
  %i.fi = phi i32 [ %i.kt, %If_Dec08SwapAdjacent.exit.i ], [ %i.fh, %bb.l ] ; 6 uses
  %.052.i = phi i1 [ %i.ks, %If_Dec08SwapAdjacent.exit.i ], [ false, %bb.l ] ; 2 uses
  %.03751.i = phi ptr [ %.03850.i, %If_Dec08SwapAdjacent.exit.i ], [ %i.e, %bb.l ] ; 16 uses
  %.03850.i = phi ptr [ %.03751.i, %If_Dec08SwapAdjacent.exit.i ], [ %0, %bb.l ] ; 10 uses
  %.03850.i594 = ptrtoaddr ptr %.03850.i to i64   ; 2 uses
  %.03751.i579 = ptrtoaddr ptr %.03751.i to i64   ; 3 uses
end_hunk_0
begin_hunk_1_@If_Dec08Perform:bb.a
  %indvars.iv.next151.i.i161.epil = add nuw nsw i64 %indvars.iv150.i.i160.epil, 1
  %epil.iter716.next = add i64 %epil.iter716, 1   ; 2 uses
  %epil.iter716.cmp.not = icmp eq i64 %epil.iter716.next, %xtraiter715
  br i1 %epil.iter716.cmp.not, label %._crit_edge.us.i.i163, label %.lr.ph95.us.i.i159.epil, !llvm.loop !83

._crit_edge.us.i.i163:                            ; preds = %vector.body518, %._crit_edge.us.i.i163.loopexit.unr-lcssa, %.lr.ph95.us.i.i159.epil
  %i.vk = getelementptr inbounds [8 x i8], ptr %.07996.us.i.i154, i64 %i.ub
  %i.vl = getelementptr inbounds [8 x i8], ptr %.07897.us.i.i153, i64 %i.ub
  %i.vm = add nsw i32 %.098.us.i.i152, %i.ua      ; 2 uses
  %i.vn = icmp slt i32 %i.vm, %i.v
  br i1 %i.vn, label %.lr.ph.us.preheader.i.i151, label %If_Dec08SwapAdjacent.exit.i137, !llvm.loop !65

.lr.ph.i.i165:                                    ; preds = %.lr.ph.i.i165.preheader, %.lr.ph.i.i165
  %indvars.iv155.i.i166 = phi i64 [ %indvars.iv.next156.i.i167.1, %.lr.ph.i.i165 ], [ 0, %.lr.ph.i.i165.preheader ] ; 4 uses
  %niter726 = phi i64 [ %niter726.next.1, %.lr.ph.i.i165 ], [ 0, %.lr.ph.i.i165.preheader ]
  %i.vo = getelementptr inbounds nuw [8 x i8], ptr %.03850.i135, i64 %indvars.iv155.i.i166
  %i.vp = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv155.i.i166
  %i.vq = load <2 x i64>, ptr %i.vo, align 8, !tbaa !14 ; 3 uses
  %i.vr = and <2 x i64> %i.vq, <i64 4294967295, i64 -4294967296>
  %i.vs = shl <2 x i64> %i.vq, splat (i64 32)
  %i.vt = lshr <2 x i64> %i.vq, splat (i64 32)
  %i.vu = shufflevector <2 x i64> %i.vs, <2 x i64> %i.vt, <2 x i32> <i32 1, i32 2>
  %i.vv = or disjoint <2 x i64> %i.vu, %i.vr
  store <2 x i64> %i.vv, ptr %i.vp, align 8, !tbaa !14
  %indvars.iv.next156.i.i167 = or disjoint i64 %indvars.iv155.i.i166, 2 ; 2 uses
  %i.vw = getelementptr inbounds nuw [8 x i8], ptr %.03850.i135, i64 %indvars.iv.next156.i.i167
  %i.vx = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv.next156.i.i167
  %i.vy = load <2 x i64>, ptr %i.vw, align 8, !tbaa !14 ; 3 uses
  %i.vz = and <2 x i64> %i.vy, <i64 4294967295, i64 -4294967296>
  %i.wa = shl <2 x i64> %i.vy, splat (i64 32)
  %i.wb = lshr <2 x i64> %i.vy, splat (i64 32)
  %i.wc = shufflevector <2 x i64> %i.wa, <2 x i64> %i.wb, <2 x i32> <i32 1, i32 2>
  %i.wd = or disjoint <2 x i64> %i.wc, %i.vz
  store <2 x i64> %i.wd, ptr %i.vx, align 8, !tbaa !14
  %indvars.iv.next156.i.i167.1 = add nuw nsw i64 %indvars.iv155.i.i166, 4 ; 2 uses
  %niter726.next.1 = add nuw nsw i64 %niter726, 2 ; 2 uses
  %niter726.ncmp.1.not = icmp eq i64 %niter726.next.1, %unroll_iter725
  br i1 %niter726.ncmp.1.not, label %If_Dec08SwapAdjacent.exit.i137.loopexit651.unr-lcssa, label %.lr.ph.i.i165, !llvm.loop !66

If_Dec08SwapAdjacent.exit.i137.loopexit.unr-lcssa: ; preds = %scalar.ph492
  br i1 %lcmp.mod729.not, label %If_Dec08SwapAdjacent.exit.i137, label %scalar.ph492.epil.preheader

scalar.ph492.epil.preheader:                      ; preds = %If_Dec08SwapAdjacent.exit.i137.loopexit.unr-lcssa, %scalar.ph492.preheader
  %indvars.iv158.i.i169.epil.init = phi i64 [ 0, %scalar.ph492.preheader ], [ %indvars.iv.next159.i.i170.1, %If_Dec08SwapAdjacent.exit.i137.loopexit.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod730)
  %i.we = getelementptr inbounds nuw [8 x i8], ptr %.03850.i135, i64 %indvars.iv158.i.i169.epil.init
  %i.wf = load i64, ptr %i.we, align 8, !tbaa !14 ; 3 uses
  %i.wg = and i64 %i.wf, %i.se
  %i.wh = and i64 %i.wf, %i.sg
  %i.wi = shl i64 %i.wh, %i.sh
  %i.wj = or i64 %i.wi, %i.wg
  %i.wk = and i64 %i.wf, %i.sj
  %i.wl = lshr i64 %i.wk, %i.sh
  %i.wm = or i64 %i.wj, %i.wl
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv158.i.i169.epil.init
  store i64 %i.wm, ptr %i.wn, align 8, !tbaa !14
  br label %If_Dec08SwapAdjacent.exit.i137

If_Dec08SwapAdjacent.exit.i137.loopexit651.unr-lcssa: ; preds = %.lr.ph.i.i165
  br i1 %lcmp.mod723.not.not, label %.lr.ph.i.i165.epil.preheader, label %If_Dec08SwapAdjacent.exit.i137

.lr.ph.i.i165.epil.preheader:                     ; preds = %If_Dec08SwapAdjacent.exit.i137.loopexit651.unr-lcssa, %.lr.ph.i.i165.preheader
  %indvars.iv155.i.i166.epil.init = phi i64 [ 0, %.lr.ph.i.i165.preheader ], [ %indvars.iv.next156.i.i167.1, %If_Dec08SwapAdjacent.exit.i137.loopexit651.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod724)
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %.03850.i135, i64 %indvars.iv155.i.i166.epil.init
  %i.wp = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv155.i.i166.epil.init
  %i.wq = load <2 x i64>, ptr %i.wo, align 8, !tbaa !14 ; 3 uses
  %i.wr = and <2 x i64> %i.wq, <i64 4294967295, i64 -4294967296>
  %i.ws = shl <2 x i64> %i.wq, splat (i64 32)
  %i.wt = lshr <2 x i64> %i.wq, splat (i64 32)
  %i.wu = shufflevector <2 x i64> %i.ws, <2 x i64> %i.wt, <2 x i32> <i32 1, i32 2>
  %i.wv = or disjoint <2 x i64> %i.wu, %i.wr
  store <2 x i64> %i.wv, ptr %i.wp, align 8, !tbaa !14
  br label %If_Dec08SwapAdjacent.exit.i137

If_Dec08SwapAdjacent.exit.i137:                   ; preds = %._crit_edge.us.i.i163, %.lr.ph.i.i165.epil.preheader, %If_Dec08SwapAdjacent.exit.i137.loopexit651.unr-lcssa, %vector.body504, %scalar.ph492.epil.preheader, %If_Dec08SwapAdjacent.exit.i137.loopexit.unr-lcssa, %.preheader87.lr.ph.i.i146, %bb.u, %.preheader.i.i164, %bb.s
  %i.ww = sext i32 %i.rz to i64
  %i.wx = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.ww ; 3 uses
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !8  ; 2 uses
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.wz ; 2 uses
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !8
  %i.xc = add nsw i32 %i.xb, 1
  store i32 %i.xc, ptr %i.xa, align 4, !tbaa !8
  %i.xd = getelementptr i8, ptr %i.wx, i64 4      ; 2 uses
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !8  ; 2 uses
  %i.xf = sext i32 %i.xe to i64
  %i.xg = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.xf ; 2 uses
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !8
  %i.xi = add nsw i32 %i.xh, -1
  store i32 %i.xi, ptr %i.xg, align 4, !tbaa !8
  store i32 %i.wy, ptr %i.xd, align 4, !tbaa !8
  store i32 %i.xe, ptr %i.wx, align 4, !tbaa !8
  %i.xj = xor i1 %.052.i133, true
  %i.xk = load i32, ptr %i.rx, align 4, !tbaa !8  ; 2 uses
  %.not.i138 = icmp eq i32 %i.xk, %i.z
  br i1 %.not.i138, label %._crit_edge.i139, label %.lr.ph.i132, !llvm.loop !67

._crit_edge.i139:                                 ; preds = %If_Dec08SwapAdjacent.exit.i137
  %brmerge213 = select i1 %.052.i133, i1 true, i1 %i.w
  br i1 %brmerge213, label %If_Dec08MoveTo.exit172, label %.lr.ph.i43.i142.preheader

.lr.ph.i43.i142.preheader:                        ; preds = %._crit_edge.i139
  %i.xl = sub i64 %.03751.i134476, %i.a
  %diff.check = icmp ugt i64 %i.xl, -32
  %or.cond638 = select i1 %min.iters.check478, i1 true, i1 %diff.check
  br i1 %or.cond638, label %.lr.ph.i43.i142.preheader659, label %vector.body481

.lr.ph.i43.i142.preheader659:                     ; preds = %.lr.ph.i43.i142.preheader
  br i1 %i.cy, label %.lr.ph.i43.i142.epil.preheader, label %.lr.ph.i43.i142

vector.body481:                                   ; preds = %.lr.ph.i43.i142.preheader, %vector.body481
  %index482 = phi i64 [ %index.next485, %vector.body481 ], [ 0, %.lr.ph.i43.i142.preheader ] ; 3 uses
  %i.xm = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %index482 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 16
  %wide.load483 = load <2 x i64>, ptr %i.xm, align 8, !tbaa !14
  %wide.load484 = load <2 x i64>, ptr %i.xn, align 8, !tbaa !14
  %i.xo = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index482 ; 2 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 16
  store <2 x i64> %wide.load483, ptr %i.xo, align 8, !tbaa !14
  store <2 x i64> %wide.load484, ptr %i.xp, align 8, !tbaa !14
  %index.next485 = add nuw i64 %index482, 4       ; 2 uses
  %i.xq = icmp eq i64 %index.next485, %n.vec480
  br i1 %i.xq, label %If_Dec08MoveTo.exit172, label %vector.body481, !llvm.loop !84

.lr.ph.i43.i142:                                  ; preds = %.lr.ph.i43.i142.preheader659, %.lr.ph.i43.i142
  %indvars.iv.i44.i143 = phi i64 [ %indvars.iv.next.i45.i144.3, %.lr.ph.i43.i142 ], [ 0, %.lr.ph.i43.i142.preheader659 ] ; 6 uses
  %niter738 = phi i64 [ %niter738.next.3, %.lr.ph.i43.i142 ], [ 0, %.lr.ph.i43.i142.preheader659 ]
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv.i44.i143
  %i.xs = load i64, ptr %i.xr, align 8, !tbaa !14
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i44.i143
  store i64 %i.xs, ptr %i.xt, align 8, !tbaa !14
  %indvars.iv.next.i45.i144 = or disjoint i64 %indvars.iv.i44.i143, 1 ; 2 uses
  %i.xu = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv.next.i45.i144
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !14
  %i.xw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i45.i144
  store i64 %i.xv, ptr %i.xw, align 8, !tbaa !14
  %indvars.iv.next.i45.i144.1 = or disjoint i64 %indvars.iv.i44.i143, 2 ; 2 uses
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv.next.i45.i144.1
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !14
  %i.xz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i45.i144.1
  store i64 %i.xy, ptr %i.xz, align 8, !tbaa !14
  %indvars.iv.next.i45.i144.2 = or disjoint i64 %indvars.iv.i44.i143, 3 ; 2 uses
  %i.ya = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv.next.i45.i144.2
  %i.yb = load i64, ptr %i.ya, align 8, !tbaa !14
  %i.yc = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.next.i45.i144.2
  store i64 %i.yb, ptr %i.yc, align 8, !tbaa !14
  %indvars.iv.next.i45.i144.3 = add nuw nsw i64 %indvars.iv.i44.i143, 4 ; 2 uses
  %niter738.next.3 = add i64 %niter738, 4         ; 2 uses
  %niter738.ncmp.3 = icmp eq i64 %niter738.next.3, %unroll_iter737
  br i1 %niter738.ncmp.3, label %If_Dec08MoveTo.exit172.loopexit.unr-lcssa, label %.lr.ph.i43.i142, !llvm.loop !85

If_Dec08MoveTo.exit172.loopexit.unr-lcssa:        ; preds = %.lr.ph.i43.i142
  br i1 %lcmp.mod735.not, label %If_Dec08MoveTo.exit172, label %.lr.ph.i43.i142.epil.preheader

.lr.ph.i43.i142.epil.preheader:                   ; preds = %If_Dec08MoveTo.exit172.loopexit.unr-lcssa, %.lr.ph.i43.i142.preheader659
  %indvars.iv.i44.i143.epil.init = phi i64 [ 0, %.lr.ph.i43.i142.preheader659 ], [ %indvars.iv.next.i45.i144.3, %If_Dec08MoveTo.exit172.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod736)
  br label %.lr.ph.i43.i142.epil

.lr.ph.i43.i142.epil:                             ; preds = %.lr.ph.i43.i142.epil, %.lr.ph.i43.i142.epil.preheader
  %indvars.iv.i44.i143.epil = phi i64 [ %indvars.iv.next.i45.i144.epil, %.lr.ph.i43.i142.epil ], [ %indvars.iv.i44.i143.epil.init, %.lr.ph.i43.i142.epil.preheader ] ; 3 uses
  %epil.iter734 = phi i64 [ %epil.iter734.next, %.lr.ph.i43.i142.epil ], [ 0, %.lr.ph.i43.i142.epil.preheader ]
  %i.yd = getelementptr inbounds nuw [8 x i8], ptr %.03751.i134, i64 %indvars.iv.i44.i143.epil
  %i.ye = load i64, ptr %i.yd, align 8, !tbaa !14
  %i.yf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv.i44.i143.epil
  store i64 %i.ye, ptr %i.yf, align 8, !tbaa !14
  %indvars.iv.next.i45.i144.epil = add nuw nsw i64 %indvars.iv.i44.i143.epil, 1
  %epil.iter734.next = add i64 %epil.iter734, 1   ; 2 uses
  %epil.iter734.cmp.not = icmp eq i64 %epil.iter734.next, %xtraiter733
  br i1 %epil.iter734.cmp.not, label %If_Dec08MoveTo.exit172, label %.lr.ph.i43.i142.epil, !llvm.loop !86

If_Dec08MoveTo.exit172:                           ; preds = %vector.body481, %If_Dec08MoveTo.exit172.loopexit.unr-lcssa, %.lr.ph.i43.i142.epil, %._crit_edge.i139, %If_Dec08MoveTo.exit130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.yg = load i64, ptr %0, align 8, !tbaa !14
  %i.yh = and i64 %i.yg, %i.ac                    ; 2 uses
  store i64 %i.yh, ptr %i.b, align 16, !tbaa !14
  %i.yi = load i64, ptr %i.af, align 8, !tbaa !14
  %i.yj = lshr i64 %i.yi, %i.ah
  %i.yk = and i64 %i.yj, %i.ac                    ; 2 uses
  %.not.i173 = icmp eq i64 %i.yk, %i.yh           ; 2 uses
  br i1 %.not.i173, label %.lr.ph.preheader.1.i, label %bb.v

bb.v:                                             ; preds = %If_Dec08MoveTo.exit172
  store i64 %i.yk, ptr %i.ai, align 8, !tbaa !14
  br label %.lr.ph.preheader.1.i

.lr.ph.preheader.1.i:                             ; preds = %bb.v, %If_Dec08MoveTo.exit172
  %.1.i = phi i32 [ 2, %bb.v ], [ 1, %If_Dec08MoveTo.exit172 ] ; 4 uses
  %i.yl = load i64, ptr %i.am, align 8, !tbaa !14
  %i.ym = lshr i64 %i.yl, %i.ao
  %i.yn = and i64 %i.ym, %i.ac                    ; 3 uses
  %wide.trip.count.1.i = zext nneg i32 %.1.i to i64 ; 2 uses
  %i.yo = load i64, ptr %i.b, align 16, !tbaa !14
  %i.yp = icmp eq i64 %i.yn, %i.yo
  br i1 %i.yp, label %._crit_edge.1.i, label %bb.w

bb.w:                                             ; preds = %.lr.ph.preheader.1.i
  %.not.i173.not = xor i1 %.not.i173, true
  %i.yq = load i64, ptr %i.cz, align 8
  %i.yr = icmp eq i64 %i.yn, %i.yq
  %or.cond744 = select i1 %.not.i173.not, i1 %i.yr, i1 false
  br i1 %or.cond744, label %._crit_edge.1.i, label %._crit_edge.1.thread.i

._crit_edge.1.i:                                  ; preds = %bb.w, %.lr.ph.preheader.1.i
  %indvars.iv.1.i.lcssa = phi i32 [ 0, %.lr.ph.preheader.1.i ], [ 1, %bb.w ]
  %i.ys = icmp eq i32 %.1.i, %indvars.iv.1.i.lcssa
  br i1 %i.ys, label %._crit_edge.1.thread.i, label %.lr.ph.preheader.2.i

._crit_edge.1.thread.i:                           ; preds = %bb.w, %._crit_edge.1.i
  %i.yt = add nuw nsw i32 %.1.i, 1                ; 2 uses
  %i.yu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %wide.trip.count.1.i
  store i64 %i.yn, ptr %i.yu, align 8, !tbaa !14
  %.pre = zext nneg i32 %i.yt to i64
  br label %.lr.ph.preheader.2.i

.lr.ph.preheader.2.i:                             ; preds = %._crit_edge.1.thread.i, %._crit_edge.1.i
  %wide.trip.count.2.i.pre-phi = phi i64 [ %.pre, %._crit_edge.1.thread.i ], [ %wide.trip.count.1.i, %._crit_edge.1.i ] ; 3 uses
  %.1.1.i = phi i32 [ %i.yt, %._crit_edge.1.thread.i ], [ %.1.i, %._crit_edge.1.i ] ; 3 uses
  %i.yv = load i64, ptr %i.as, align 8, !tbaa !14
  %i.yw = lshr i64 %i.yv, %i.au
  %i.yx = and i64 %i.yw, %i.ac                    ; 2 uses
  br label %.lr.ph.2.i.5

.lr.ph.2.i.5:                                     ; preds = %bb.x, %.lr.ph.preheader.2.i
  %indvars.iv.2.i = phi i64 [ 0, %.lr.ph.preheader.2.i ], [ %indvars.iv.next.2.i, %bb.x ] ; 3 uses
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.2.i
  %i.yy = load i64, ptr %3, align 8, !tbaa !14
  %i.yz = icmp eq i64 %i.yx, %i.yy
  br i1 %i.yz, label %._crit_edge.2.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.2.i.5
  %indvars.iv.next.2.i = add nuw nsw i64 %indvars.iv.2.i, 1 ; 2 uses
  %i.za = icmp eq i64 %indvars.iv.next.2.i, %wide.trip.count.2.i.pre-phi
  br i1 %i.za, label %._crit_edge.2.thread.i, label %.lr.ph.2.i.5, !llvm.loop !87

._crit_edge.2.i:                                  ; preds = %.lr.ph.2.i.5
  %4 = trunc nuw nsw i64 %indvars.iv.2.i to i32
  %i.zb = icmp eq i32 %.1.1.i, %4
  br i1 %i.zb, label %._crit_edge.2.thread.i, label %.lr.ph.preheader.3.i

._crit_edge.2.thread.i:                           ; preds = %bb.x, %._crit_edge.2.i
  %i.zc = add nuw nsw i32 %.1.1.i, 1              ; 2 uses
  %i.zd = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %wide.trip.count.2.i.pre-phi
  store i64 %i.yx, ptr %i.zd, align 8, !tbaa !14
  %.pre350 = zext nneg i32 %i.zc to i64
  br label %.lr.ph.preheader.3.i

.lr.ph.preheader.3.i:                             ; preds = %._crit_edge.2.thread.i, %._crit_edge.2.i
  %wide.trip.count.3.i.pre-phi = phi i64 [ %.pre350, %._crit_edge.2.thread.i ], [ %wide.trip.count.2.i.pre-phi, %._crit_edge.2.i ] ; 3 uses
  %.1.2.i = phi i32 [ %i.zc, %._crit_edge.2.thread.i ], [ %.1.1.i, %._crit_edge.2.i ] ; 3 uses
  %i.ze = load i64, ptr %i.ay, align 8, !tbaa !14
  %i.zf = lshr i64 %i.ze, %i.ba
  %i.zg = and i64 %i.zf, %i.ac                    ; 2 uses
  br label %.lr.ph.3.i

.lr.ph.3.i:                                       ; preds = %bb.y, %.lr.ph.preheader.3.i
  %indvars.iv.3.i = phi i64 [ 0, %.lr.ph.preheader.3.i ], [ %indvars.iv.next.3.i, %bb.y ] ; 3 uses
  %i.zh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.3.i
  %i.zi = load i64, ptr %i.zh, align 8, !tbaa !14
  %i.zj = icmp eq i64 %i.zg, %i.zi
  br i1 %i.zj, label %._crit_edge.3.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph.3.i
  %indvars.iv.next.3.i = add nuw nsw i64 %indvars.iv.3.i, 1 ; 2 uses
  %exitcond.3.not.i = icmp eq i64 %indvars.iv.next.3.i, %wide.trip.count.3.i.pre-phi
  br i1 %exitcond.3.not.i, label %._crit_edge.3.thread.i, label %.lr.ph.3.i, !llvm.loop !87

._crit_edge.3.i:                                  ; preds = %.lr.ph.3.i
  %i.zk = trunc nuw nsw i64 %indvars.iv.3.i to i32
  %i.zl = icmp eq i32 %.1.2.i, %i.zk
  br i1 %i.zl, label %._crit_edge.3.thread.i, label %.lr.ph.preheader.4.i

._crit_edge.3.thread.i:                           ; preds = %bb.y, %._crit_edge.3.i
  %i.zm = add nuw nsw i32 %.1.2.i, 1              ; 2 uses
  %i.zn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %wide.trip.count.3.i.pre-phi
  store i64 %i.zg, ptr %i.zn, align 8, !tbaa !14
  %.pre351 = zext nneg i32 %i.zm to i64
  br label %.lr.ph.preheader.4.i

.lr.ph.preheader.4.i:                             ; preds = %._crit_edge.3.thread.i, %._crit_edge.3.i
  %wide.trip.count.4.i.pre-phi = phi i64 [ %.pre351, %._crit_edge.3.thread.i ], [ %wide.trip.count.3.i.pre-phi, %._crit_edge.3.i ] ; 3 uses
  %.1.3.i = phi i32 [ %i.zm, %._crit_edge.3.thread.i ], [ %.1.2.i, %._crit_edge.3.i ] ; 3 uses
  %i.zo = load i64, ptr %i.be, align 8, !tbaa !14
  %i.zp = lshr i64 %i.zo, %i.bg
  %i.zq = and i64 %i.zp, %i.ac                    ; 2 uses
  br label %.lr.ph.4.i

.lr.ph.4.i:                                       ; preds = %bb.z, %.lr.ph.preheader.4.i
  %indvars.iv.4.i = phi i64 [ 0, %.lr.ph.preheader.4.i ], [ %indvars.iv.next.4.i, %bb.z ] ; 3 uses
  %i.zr = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.4.i
  %i.zs = load i64, ptr %i.zr, align 8, !tbaa !14
  %i.zt = icmp eq i64 %i.zq, %i.zs
  br i1 %i.zt, label %._crit_edge.4.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.4.i
  %indvars.iv.next.4.i = add nuw nsw i64 %indvars.iv.4.i, 1 ; 2 uses
  %exitcond.4.not.i = icmp eq i64 %indvars.iv.next.4.i, %wide.trip.count.4.i.pre-phi
  br i1 %exitcond.4.not.i, label %._crit_edge.4.thread.i, label %.lr.ph.4.i, !llvm.loop !87

._crit_edge.4.i:                                  ; preds = %.lr.ph.4.i
  %i.zu = trunc nuw nsw i64 %indvars.iv.4.i to i32
  %i.zv = icmp eq i32 %.1.3.i, %i.zu
  br i1 %i.zv, label %._crit_edge.4.thread.i, label %.lr.ph.preheader.5.i

._crit_edge.4.thread.i:                           ; preds = %bb.z, %._crit_edge.4.i
  %i.zw = add nuw nsw i32 %.1.3.i, 1              ; 2 uses
  %i.zx = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %wide.trip.count.4.i.pre-phi
  store i64 %i.zq, ptr %i.zx, align 8, !tbaa !14
  %.pre352 = zext nneg i32 %i.zw to i64
  br label %.lr.ph.preheader.5.i

.lr.ph.preheader.5.i:                             ; preds = %._crit_edge.4.thread.i, %._crit_edge.4.i
  %wide.trip.count.5.i.pre-phi = phi i64 [ %.pre352, %._crit_edge.4.thread.i ], [ %wide.trip.count.4.i.pre-phi, %._crit_edge.4.i ] ; 3 uses
  %.1.4.i = phi i32 [ %i.zw, %._crit_edge.4.thread.i ], [ %.1.3.i, %._crit_edge.4.i ] ; 3 uses
  %i.zy = load i64, ptr %i.bk, align 8, !tbaa !14
  %i.zz = lshr i64 %i.zy, %i.bm
  %i.aaa = and i64 %i.zz, %i.ac                   ; 2 uses
  br label %.lr.ph.5.i

.lr.ph.5.i:                                       ; preds = %bb.aa, %.lr.ph.preheader.5.i
  %indvars.iv.5.i = phi i64 [ 0, %.lr.ph.preheader.5.i ], [ %indvars.iv.next.5.i, %bb.aa ] ; 3 uses
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.5.i
  %i.aac = load i64, ptr %i.aab, align 8, !tbaa !14
  %i.aad = icmp eq i64 %i.aaa, %i.aac
  br i1 %i.aad, label %._crit_edge.5.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.5.i
  %indvars.iv.next.5.i = add nuw nsw i64 %indvars.iv.5.i, 1 ; 2 uses
  %exitcond.5.not.i = icmp eq i64 %indvars.iv.next.5.i, %wide.trip.count.5.i.pre-phi
  br i1 %exitcond.5.not.i, label %._crit_edge.5.thread.i, label %.lr.ph.5.i, !llvm.loop !87

._crit_edge.5.i:                                  ; preds = %.lr.ph.5.i
  %i.aae = trunc nuw nsw i64 %indvars.iv.5.i to i32
  %i.aaf = icmp eq i32 %.1.4.i, %i.aae
  br i1 %i.aaf, label %._crit_edge.5.thread.i, label %.lr.ph.preheader.6.i

._crit_edge.5.thread.i:                           ; preds = %bb.aa, %._crit_edge.5.i
  %i.aag = add nuw nsw i32 %.1.4.i, 1             ; 2 uses
  %i.aah = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %wide.trip.count.5.i.pre-phi
  store i64 %i.aaa, ptr %i.aah, align 8, !tbaa !14
  %.pre353 = zext nneg i32 %i.aag to i64
  br label %.lr.ph.preheader.6.i

.lr.ph.preheader.6.i:                             ; preds = %._crit_edge.5.thread.i, %._crit_edge.5.i
  %wide.trip.count.6.i.pre-phi = phi i64 [ %.pre353, %._crit_edge.5.thread.i ], [ %wide.trip.count.5.i.pre-phi, %._crit_edge.5.i ]
  %.1.5.i = phi i32 [ %i.aag, %._crit_edge.5.thread.i ], [ %.1.4.i, %._crit_edge.5.i ] ; 3 uses
  %i.aai = load i64, ptr %i.bq, align 8, !tbaa !14
  %i.aaj = lshr i64 %i.aai, %i.bs
  %i.aak = and i64 %i.aaj, %i.ac
  br label %.lr.ph.6.i

.lr.ph.6.i:                                       ; preds = %bb.ab, %.lr.ph.preheader.6.i
  %indvars.iv.6.i = phi i64 [ 0, %.lr.ph.preheader.6.i ], [ %indvars.iv.next.6.i, %bb.ab ] ; 3 uses
  %i.aal = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.6.i
  %i.aam = load i64, ptr %i.aal, align 8, !tbaa !14
  %i.aan = icmp eq i64 %i.aak, %i.aam
  br i1 %i.aan, label %._crit_edge.6.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.6.i
  %indvars.iv.next.6.i = add nuw nsw i64 %indvars.iv.6.i, 1 ; 2 uses
  %exitcond.6.not.i = icmp eq i64 %indvars.iv.next.6.i, %wide.trip.count.6.i.pre-phi
  br i1 %exitcond.6.not.i, label %._crit_edge.6.thread.i, label %.lr.ph.6.i, !llvm.loop !87

._crit_edge.6.i:                                  ; preds = %.lr.ph.6.i
  %i.aao = trunc nuw nsw i64 %indvars.iv.6.i to i32
  %i.aap = icmp eq i32 %.1.5.i, %i.aao
  br i1 %i.aap, label %._crit_edge.6.thread.i, label %If_Dec08CofCount.exit

._crit_edge.6.thread.i:                           ; preds = %bb.ab, %._crit_edge.6.i
  %i.aaq = add nuw nsw i32 %.1.5.i, 1
  br label %If_Dec08CofCount.exit

If_Dec08CofCount.exit:                            ; preds = %._crit_edge.6.i, %._crit_edge.6.thread.i
  %.1.6.i = phi i32 [ %i.aaq, %._crit_edge.6.thread.i ], [ %.1.5.i, %._crit_edge.6.i ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  %i.aar = getelementptr inbounds [4 x i8], ptr %i.j, i64 %indvars.iv290 ; 2 uses
  store i32 %.1.6.i, ptr %i.aar, align 4, !tbaa !8
  %i.aas = trunc nuw i64 %indvars.iv296 to i32
  %i.aat = shl nuw i32 1, %i.aas
  %i.aau = or i32 %i.ff, %i.aat
  %i.aav = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv290
  store i32 %i.aau, ptr %i.aav, align 4, !tbaa !8
  %i.aaw = icmp eq i32 %.1.6.i, 2
  %i.aax = icmp sgt i32 %.1.6.i, 5
  %or.cond = or i1 %i.aaw, %i.aax
  br i1 %or.cond, label %.loopexit224, label %.preheader223

.preheader223:                                    ; preds = %If_Dec08CofCount.exit, %If_Dec08CofCount2.exit.thread
  %indvars.iv286 = phi i64 [ %indvars.iv.next287, %If_Dec08CofCount2.exit.thread ], [ 0, %If_Dec08CofCount.exit ] ; 2 uses
  %i.aay = sub nsw i64 %i.ci, %indvars.iv286      ; 4 uses
  %i.aaz = icmp slt i64 %i.aay, 6
  br i1 %i.aaz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader223
  br i1 %i.bv, label %.lr.ph.i176, label %If_Dec08Cofactors.exit

.lr.ph.i176:                                      ; preds = %bb.ac
  %i.aba = trunc nsw i64 %i.aay to i32
  %i.abb = shl nuw nsw i32 1, %i.aba
  %i.abc = getelementptr inbounds [8 x i8], ptr @Truth6, i64 %i.aay
  %i.abd = load i64, ptr %i.abc, align 8, !tbaa !14 ; 5 uses
  %i.abe = xor i64 %i.abd, -1                     ; 4 uses
  %i.abf = zext nneg i32 %i.abb to i64            ; 7 uses
  br i1 %min.iters.check448, label %scalar.ph447, label %vector.ph449

vector.ph449:                                     ; preds = %.lr.ph.i176
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.abd, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert451 = insertelement <2 x i64> poison, i64 %i.abe, i64 0
  %broadcast.splat452 = shufflevector <2 x i64> %broadcast.splatinsert451, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert453 = insertelement <2 x i64> poison, i64 %i.abf, i64 0
  %broadcast.splat454 = shufflevector <2 x i64> %broadcast.splatinsert453, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body455

vector.body455:                                   ; preds = %vector.body455, %vector.ph449
  %index456 = phi i64 [ 0, %vector.ph449 ], [ %index.next458, %vector.body455 ] ; 4 uses
  %i.abg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index456 ; 2 uses
  %i.abh = getelementptr inbounds nuw i8, ptr %i.abg, i64 16
  %wide.load = load <2 x i64>, ptr %i.abg, align 8, !tbaa !14 ; 2 uses
  %wide.load457 = load <2 x i64>, ptr %i.abh, align 8, !tbaa !14 ; 2 uses
  %i.abi = and <2 x i64> %wide.load, %broadcast.splat452 ; 2 uses
  %i.abj = and <2 x i64> %wide.load457, %broadcast.splat452 ; 2 uses
  %i.abk = shl <2 x i64> %i.abi, %broadcast.splat454
  %i.abl = shl <2 x i64> %i.abj, %broadcast.splat454
  %i.abm = or <2 x i64> %i.abk, %i.abi
  %i.abn = or <2 x i64> %i.abl, %i.abj
  %i.abo = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %index456 ; 2 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 16
  store <2 x i64> %i.abm, ptr %i.abo, align 16, !tbaa !14
  store <2 x i64> %i.abn, ptr %i.abp, align 16, !tbaa !14
  %i.abq = and <2 x i64> %wide.load, %broadcast.splat ; 2 uses
  %i.abr = and <2 x i64> %wide.load457, %broadcast.splat ; 2 uses
  %i.abs = lshr <2 x i64> %i.abq, %broadcast.splat454
  %i.abt = lshr <2 x i64> %i.abr, %broadcast.splat454
  %i.abu = or <2 x i64> %i.abs, %i.abq
  %i.abv = or <2 x i64> %i.abt, %i.abr
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index456 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  store <2 x i64> %i.abu, ptr %i.abw, align 16, !tbaa !14
  store <2 x i64> %i.abv, ptr %i.abx, align 16, !tbaa !14
  %index.next458 = add nuw i64 %index456, 4       ; 2 uses
end_hunk_1
