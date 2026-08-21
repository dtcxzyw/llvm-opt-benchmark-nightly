Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/ifDec10?download=true
inline.NumInlined: 22
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 35
begin_hunk_0_@If_Dec10Cofactors:bb.a

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
define range(i32 0, 2) i32 @If_Dec10Perform(ptr nofree noundef %0, i32 noundef %1, i32 %2) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
  %i.b = alloca [16 x i64], align 16              ; 5 uses
  %i.c = alloca [16 x i64], align 16              ; 3 uses
  %i.d = alloca [16 x i64], align 16              ; 3 uses
  %i.e = alloca [16 x i64], align 16              ; 3 uses
  %i.f = alloca [16 x i64], align 16              ; 3 uses
  %i.g = alloca [16 x i64], align 16              ; 26 uses
  %i.h = alloca [16 x i64], align 16              ; 26 uses
  %i.i = alloca [10 x i32], align 16              ; 8 uses
  %i.j = alloca [10 x i32], align 16              ; 16 uses
  %i.k = alloca [210 x i32], align 16             ; 11 uses
  %i.l = alloca [210 x i32], align 16             ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #11
  %i.m = icmp sgt i32 %1, 0
  br i1 %i.m, label %.lr.ph.preheader, label %.loopexit246

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %1, 8
  br i1 %min.iters.check, label %.lr.ph.preheader883, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %vec.ind, ptr %i.n, align 16, !tbaa !8
  store <4 x i32> %step.add, ptr %i.o, align 16, !tbaa !8
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %vec.ind, ptr %i.p, align 16, !tbaa !8
  store <4 x i32> %step.add, ptr %i.q, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.lr.ph279, label %.lr.ph.preheader883

.lr.ph.preheader883:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph279:                                        ; preds = %.lr.ph, %middle.block
  %i.s = add nsw i32 %1, -1                       ; 8 uses
  %i.t = icmp samesign ult i32 %1, 7
  %i.u = add nsw i32 %1, -6
  %i.v = shl nuw i32 1, %i.u
  %i.w = select i1 %i.t, i32 1, i32 %i.v          ; 39 uses
  %i.x = icmp slt i32 %i.w, 1                     ; 16 uses
  %i.y = zext i32 %i.w to i64                     ; 29 uses
  %i.z = add nsw i32 %1, -2                       ; 2 uses
  %i.aa = add nsw i32 %1, -3                      ; 2 uses
  %i.ab = add nsw i32 %1, -4                      ; 4 uses
  %i.ac = shl nuw i32 1, %i.ab
  %i.ad = zext nneg i32 %i.ac to i64
  %notmask.i = shl nsw i64 -1, %i.ad
  %i.ae = xor i64 %notmask.i, -1
  %i.af = icmp eq i32 %1, 10
  %spec.select.i = select i1 %i.af, i64 -1, i64 %i.ae ; 2 uses
  %i.ag = icmp slt i32 %i.w, 1                    ; 8 uses
  %i.ah = zext nneg i32 %i.s to i64               ; 4 uses
  %i.ai = zext nneg i32 %1 to i64                 ; 2 uses
  %wide.trip.count356 = zext nneg i32 %1 to i64   ; 2 uses
  %i.aj = icmp ult i32 %i.s, 6
  %i.ak = add nsw i32 %1, -7                      ; 4 uses
  %i.al = shl nuw i32 1, %i.ak                    ; 4 uses
  %.not.i227 = icmp eq i32 %i.ak, 31
  %i.am = shl i32 2, %i.ak                        ; 2 uses
  %i.an = sext i32 %i.am to i64                   ; 3 uses
  %i.ao = sext i32 %i.al to i64                   ; 6 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.al, i32 1)
  %i.ap = shl nuw nsw i32 1, %i.s
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr @Truth6, i64 %i.ah
  %i.ar = zext nneg i32 %i.ap to i64              ; 7 uses
  %i.as = add nsw i64 %i.ah, -1                   ; 2 uses
  %i.at = icmp ult i32 %i.s, 7
  %i.au = add nsw i32 %1, -8                      ; 4 uses
  %i.av = shl nuw i32 1, %i.au                    ; 4 uses
  %.not.i227.1 = icmp eq i32 %i.au, 31
  %i.aw = shl i32 2, %i.au                        ; 2 uses
  %i.ax = sext i32 %i.aw to i64                   ; 3 uses
  %i.ay = sext i32 %i.av to i64                   ; 6 uses
  %smax.i.1 = tail call i32 @llvm.smax.i32(i32 %i.av, i32 1)
  %i.az = trunc nsw i64 %i.as to i32
  %i.ba = shl nuw nsw i32 1, %i.az
  %i.bb = getelementptr inbounds [8 x i8], ptr @Truth6, i64 %i.as
  %i.bc = zext nneg i32 %i.ba to i64              ; 7 uses
  %i.bd = add nsw i64 %i.ah, -2                   ; 2 uses
  %i.be = icmp ult i32 %i.s, 8
  %i.bf = add nsw i32 %1, -9                      ; 4 uses
  %i.bg = shl nuw i32 1, %i.bf                    ; 4 uses
  %.not.i227.2 = icmp eq i32 %i.bf, 31
  %i.bh = shl i32 2, %i.bf                        ; 2 uses
  %i.bi = sext i32 %i.bh to i64                   ; 3 uses
  %i.bj = sext i32 %i.bg to i64                   ; 6 uses
  %smax.i.2 = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 1)
  %i.bk = trunc nsw i64 %i.bd to i32
  %i.bl = shl nuw nsw i32 1, %i.bk
  %i.bm = getelementptr inbounds [8 x i8], ptr @Truth6, i64 %i.bd
  %i.bn = zext nneg i32 %i.bl to i64              ; 7 uses
  %i.bo = add nsw i64 %i.ah, -3                   ; 2 uses
  %i.bp = icmp ult i32 %i.s, 9
  %i.bq = add nsw i32 %1, -10                     ; 4 uses
  %i.br = shl nuw i32 1, %i.bq                    ; 4 uses
  %.not.i227.3 = icmp eq i32 %i.bq, 31
  %i.bs = shl i32 2, %i.bq                        ; 2 uses
  %i.bt = sext i32 %i.bs to i64                   ; 3 uses
  %i.bu = sext i32 %i.br to i64                   ; 6 uses
  %smax.i.3 = tail call i32 @llvm.smax.i32(i32 %i.br, i32 1)
  %i.bv = trunc nsw i64 %i.bo to i32
  %i.bw = shl nuw nsw i32 1, %i.bv
  %i.bx = getelementptr inbounds [8 x i8], ptr @Truth6, i64 %i.bo
  %i.by = zext nneg i32 %i.bw to i64              ; 7 uses
  %i.bz = add nsw i64 %i.y, -1                    ; 9 uses
  %i.ca = lshr i64 %i.bz, 1                       ; 5 uses
  %i.cb = add nuw i64 %i.ca, 1                    ; 8 uses
  %i.cc = icmp eq i64 %i.ca, 0
  %unroll_iter889 = and i64 %i.cb, -2
  %i.cd = and i64 %i.bz, 2
  %lcmp.mod887.not.not = icmp eq i64 %i.cd, 0
  %lcmp.mod888 = trunc i64 %i.cb to i1
  %min.iters.check796 = icmp ult i32 %i.w, 4
  %n.vec798 = and i64 %i.y, 2147483644
  %xtraiter891 = and i64 %i.y, 1
  %i.ce = icmp eq i64 %i.bz, 0
  %unroll_iter895 = and i64 %i.y, 2147483646
  %lcmp.mod893.not = icmp eq i64 %xtraiter891, 0
  %lcmp.mod894 = trunc i32 %i.w to i1
  %min.iters.check781 = icmp ult i32 %i.w, 4
  %n.vec783 = and i64 %i.y, 2147483644
  %xtraiter897 = and i64 %i.y, 3                  ; 3 uses
  %i.cf = icmp ult i32 %i.w, 4
  %unroll_iter901 = and i64 %i.y, 2147483644
  %lcmp.mod899.not = icmp eq i64 %xtraiter897, 0
  %lcmp.mod900 = icmp ne i64 %xtraiter897, 0
  %i.cg = icmp eq i64 %i.ca, 0
  %unroll_iter913 = and i64 %i.cb, -2
  %i.ch = and i64 %i.bz, 2
  %lcmp.mod911.not.not = icmp eq i64 %i.ch, 0
  %lcmp.mod912 = trunc i64 %i.cb to i1
  %min.iters.check744 = icmp ult i32 %i.w, 4
  %n.vec746 = and i64 %i.y, 2147483644
  %xtraiter915 = and i64 %i.y, 1
  %i.ci = icmp eq i64 %i.bz, 0
  %unroll_iter919 = and i64 %i.y, 2147483646
  %lcmp.mod917.not = icmp eq i64 %xtraiter915, 0
  %lcmp.mod918 = trunc i32 %i.w to i1
  %min.iters.check729 = icmp ult i32 %i.w, 4
  %n.vec731 = and i64 %i.y, 2147483644
  %xtraiter921 = and i64 %i.y, 3                  ; 3 uses
  %i.cj = icmp ult i32 %i.w, 4
  %unroll_iter925 = and i64 %i.y, 2147483644
  %lcmp.mod923.not = icmp eq i64 %xtraiter921, 0
  %lcmp.mod924 = icmp ne i64 %xtraiter921, 0
  %i.ck = icmp eq i64 %i.ca, 0
  %unroll_iter937 = and i64 %i.cb, -2
  %i.cl = and i64 %i.bz, 2
  %lcmp.mod935.not.not = icmp eq i64 %i.cl, 0
  %lcmp.mod936 = trunc i64 %i.cb to i1
  %min.iters.check692 = icmp ult i32 %i.w, 4
  %n.vec694 = and i64 %i.y, 2147483644
  %xtraiter939 = and i64 %i.y, 1
  %i.cm = icmp eq i64 %i.bz, 0
  %unroll_iter943 = and i64 %i.y, 2147483646
  %lcmp.mod941.not = icmp eq i64 %xtraiter939, 0
  %lcmp.mod942 = trunc i32 %i.w to i1
  %min.iters.check677 = icmp ult i32 %i.w, 4
  %n.vec679 = and i64 %i.y, 2147483644
  %xtraiter945 = and i64 %i.y, 3                  ; 3 uses
  %i.cn = icmp ult i32 %i.w, 4
  %unroll_iter949 = and i64 %i.y, 2147483644
  %lcmp.mod947.not = icmp eq i64 %xtraiter945, 0
  %lcmp.mod948 = icmp ne i64 %xtraiter945, 0
  %i.co = icmp eq i64 %i.ca, 0
  %unroll_iter961 = and i64 %i.cb, -2
  %i.cp = and i64 %i.bz, 2
  %lcmp.mod959.not.not = icmp eq i64 %i.cp, 0
  %lcmp.mod960 = trunc i64 %i.cb to i1
  %min.iters.check640 = icmp ult i32 %i.w, 4
  %n.vec642 = and i64 %i.y, 2147483644
  %xtraiter963 = and i64 %i.y, 1
  %i.cq = icmp eq i64 %i.bz, 0
  %unroll_iter967 = and i64 %i.y, 2147483646
  %lcmp.mod965.not = icmp eq i64 %xtraiter963, 0
  %lcmp.mod966 = trunc i32 %i.w to i1
  %min.iters.check625 = icmp ult i32 %i.w, 4
  %n.vec627 = and i64 %i.y, 2147483644
  %xtraiter969 = and i64 %i.y, 3                  ; 3 uses
  %i.cr = icmp ult i32 %i.w, 4
  %unroll_iter973 = and i64 %i.y, 2147483644
  %lcmp.mod971.not = icmp eq i64 %xtraiter969, 0
  %lcmp.mod972 = icmp ne i64 %xtraiter969, 0
  %brmerge463 = select i1 %i.ag, i1 true, i1 %.not.i227
  %min.iters.check608 = icmp slt i32 %i.al, 4
  %i.cs = and i32 %smax.i, 2147483644
  %n.vec610 = zext nneg i32 %i.cs to i64
  %exitcond.not.i231 = icmp slt i32 %i.al, 2
  %i.ct = add nuw nsw i64 %i.ao, 1                ; 3 uses
  %exitcond.not.i231.1977 = icmp eq i32 %i.ak, 1
  %i.cu = add nuw nsw i64 %i.ao, 2                ; 3 uses
  %min.iters.check588 = icmp ult i32 %i.w, 4
  %n.vec590 = and i64 %i.y, 2147483644
  %broadcast.splatinsert595 = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %broadcast.splat596 = shufflevector <2 x i64> %broadcast.splatinsert595, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %exitcond74.not.i = icmp eq i32 %i.w, 1
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %exitcond74.not.i.1983 = icmp eq i32 %i.w, 2
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cz = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.da = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %brmerge465 = select i1 %i.ag, i1 true, i1 %.not.i227.1
  %min.iters.check574 = icmp slt i32 %i.av, 4
  %i.db = and i32 %smax.i.1, 2147483644
  %n.vec576 = zext nneg i32 %i.db to i64
  %exitcond.not.i231.1 = icmp slt i32 %i.av, 2
  %i.dc = add nuw nsw i64 %i.ay, 1                ; 3 uses
  %exitcond.not.i231.1.1 = icmp eq i32 %i.au, 1
  %i.dd = add nuw nsw i64 %i.ay, 2                ; 3 uses
  %min.iters.check554 = icmp ult i32 %i.w, 4
  %n.vec556 = and i64 %i.y, 2147483644
  %broadcast.splatinsert561 = insertelement <2 x i64> poison, i64 %i.bc, i64 0
  %broadcast.splat562 = shufflevector <2 x i64> %broadcast.splatinsert561, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %exitcond74.not.i.1 = icmp eq i32 %i.w, 1
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %exitcond74.not.i.1.1 = icmp eq i32 %i.w, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.di = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %brmerge467 = select i1 %i.ag, i1 true, i1 %.not.i227.2
  %min.iters.check540 = icmp slt i32 %i.bg, 4
  %i.dk = and i32 %smax.i.2, 2147483644
  %n.vec542 = zext nneg i32 %i.dk to i64
  %exitcond.not.i231.2 = icmp slt i32 %i.bg, 2
  %i.dl = add nuw nsw i64 %i.bj, 1                ; 3 uses
  %exitcond.not.i231.2.1 = icmp eq i32 %i.bf, 1
  %i.dm = add nuw nsw i64 %i.bj, 2                ; 3 uses
  %min.iters.check520 = icmp ult i32 %i.w, 4
  %n.vec522 = and i64 %i.y, 2147483644
  %broadcast.splatinsert527 = insertelement <2 x i64> poison, i64 %i.bn, i64 0
  %broadcast.splat528 = shufflevector <2 x i64> %broadcast.splatinsert527, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %exitcond74.not.i.2 = icmp eq i32 %i.w, 1
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %exitcond74.not.i.2.1 = icmp eq i32 %i.w, 2
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %brmerge469 = select i1 %i.ag, i1 true, i1 %.not.i227.3
  %min.iters.check506 = icmp slt i32 %i.br, 4
  %i.dt = and i32 %smax.i.3, 2147483644
  %n.vec508 = zext nneg i32 %i.dt to i64
  %exitcond.not.i231.3 = icmp slt i32 %i.br, 2
  %i.du = add nuw nsw i64 %i.bu, 1                ; 3 uses
  %exitcond.not.i231.3.1 = icmp eq i32 %i.bq, 1
  %i.dv = add nuw nsw i64 %i.bu, 2                ; 3 uses
  %min.iters.check491 = icmp ult i32 %i.w, 4
  %n.vec493 = and i64 %i.y, 2147483644
  %broadcast.splatinsert496 = insertelement <2 x i64> poison, i64 %i.by, i64 0
  %broadcast.splat497 = shufflevector <2 x i64> %broadcast.splatinsert496, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %exitcond74.not.i.3 = icmp eq i32 %i.w, 1
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %exitcond74.not.i.3.1 = icmp eq i32 %i.w, 2
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  br label %bb.j

.lr.ph:                                           ; preds = %.lr.ph.preheader883, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader883 ] ; 4 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.ed = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  store i32 %i.ed, ptr %i.ec, align 4, !tbaa !8
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph279, label %.lr.ph, !llvm.loop !54

.loopexit261:                                     ; preds = %.loopexit260, %bb.j
  %.1.lcssa = phi i32 [ %.087278, %bb.j ], [ %.2.lcssa, %.loopexit260 ] ; 4 uses
  %indvars.iv.next326 = add nuw nsw i32 %indvars.iv325, 1
  %indvars.iv.next338 = add nuw nsw i64 %indvars.iv337, 1
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1
  %exitcond357.not = icmp eq i64 %indvars.iv.next354, %wide.trip.count356
  br i1 %exitcond357.not, label %.preheader, label %bb.j, !llvm.loop !55

.preheader:                                       ; preds = %.loopexit261
  %i.ef = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.ef, label %.lr.ph287, label %.loopexit246

.lr.ph287:                                        ; preds = %.preheader
  %i.eg = sub nsw i32 10, %1                      ; 3 uses
  %i.eh = zext nneg i32 %.1.lcssa to i64          ; 3 uses
  %wide.trip.count392 = zext nneg i32 %.1.lcssa to i64 ; 6 uses
  switch i32 %1, label %.lr.ph287.split [
    i32 10, label %.lr.ph287.split.us
    i32 9, label %.lr.ph287.split.us289
  ]

.lr.ph287.split.us:                               ; preds = %.lr.ph287, %.loopexit.us
  %indvars.iv377 = phi i64 [ %indvars.iv.next378, %.loopexit.us ], [ 0, %.lr.ph287 ] ; 3 uses
  %indvars.iv370 = phi i64 [ %indvars.iv.next371, %.loopexit.us ], [ 1, %.lr.ph287 ] ; 2 uses
  %indvars.iv.next378 = add nuw nsw i64 %indvars.iv377, 1 ; 3 uses
  %i.ei = icmp samesign ult i64 %indvars.iv.next378, %i.eh
  br i1 %i.ei, label %.lr.ph282.us, label %.loopexit.us

.loopexit.us:                                     ; preds = %.thread234.us.us, %.lr.ph287.split.us
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1
  %exitcond381.not = icmp eq i64 %indvars.iv.next378, %wide.trip.count392
  br i1 %exitcond381.not, label %.loopexit246, label %.lr.ph287.split.us, !llvm.loop !56

.lr.ph282.us:                                     ; preds = %.lr.ph287.split.us
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv377
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !8
  %i.el = and i32 %i.ek, 65535
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv377
  br label %bb.b

bb.b:                                             ; preds = %.thread234.us.us, %.lr.ph282.us
  %indvars.iv372 = phi i64 [ %indvars.iv.next373, %.thread234.us.us ], [ %indvars.iv370, %.lr.ph282.us ] ; 3 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv372
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !8
  %i.ep = and i32 %i.el, %i.eo
  %i.eq = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.ep)
  %i.er = icmp sgt i32 %i.eq, %i.eg
  br i1 %i.er, label %.thread234.us.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.es = load i32, ptr %i.em, align 4, !tbaa !8
  %i.et = icmp eq i32 %i.es, 2
  br i1 %i.et, label %bb.d, label %.thread234.us.us

bb.d:                                             ; preds = %bb.c
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv372
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !8
  %i.ew = icmp eq i32 %i.ev, 2
  br i1 %i.ew, label %.loopexit246, label %.thread234.us.us

.thread234.us.us:                                 ; preds = %bb.d, %bb.c, %bb.b
  %indvars.iv.next373 = add nuw nsw i64 %indvars.iv372, 1 ; 2 uses
  %exitcond376.not = icmp eq i64 %indvars.iv.next373, %wide.trip.count392
  br i1 %exitcond376.not, label %.loopexit.us, label %bb.b, !llvm.loop !57

.lr.ph287.split.us289:                            ; preds = %.lr.ph287, %.loopexit.us291
  %indvars.iv365 = phi i64 [ %indvars.iv.next366, %.loopexit.us291 ], [ 0, %.lr.ph287 ] ; 3 uses
  %indvars.iv358 = phi i64 [ %indvars.iv.next359, %.loopexit.us291 ], [ 1, %.lr.ph287 ] ; 2 uses
  %indvars.iv.next366 = add nuw nsw i64 %indvars.iv365, 1 ; 3 uses
  %i.ex = icmp samesign ult i64 %indvars.iv.next366, %i.eh
  br i1 %i.ex, label %.lr.ph282.us292, label %.loopexit.us291

.loopexit.us291:                                  ; preds = %.thread234.us285.us, %.lr.ph287.split.us289
  %indvars.iv.next359 = add nuw nsw i64 %indvars.iv358, 1
  %exitcond369.not = icmp eq i64 %indvars.iv.next366, %wide.trip.count392
  br i1 %exitcond369.not, label %.loopexit246, label %.lr.ph287.split.us289, !llvm.loop !56

.lr.ph282.us292:                                  ; preds = %.lr.ph287.split.us289
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv365
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !8
  %i.fa = and i32 %i.ez, 65535
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv365
  br label %bb.e

bb.e:                                             ; preds = %.thread234.us285.us, %.lr.ph282.us292
  %indvars.iv360 = phi i64 [ %indvars.iv.next361, %.thread234.us285.us ], [ %indvars.iv358, %.lr.ph282.us292 ] ; 4 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv360
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !8
  %i.fe = and i32 %i.fa, %i.fd
  %i.ff = tail call range(i32 0, 17) i32 @llvm.ctpop.i32(i32 %i.fe)
  %i.fg = icmp sgt i32 %i.ff, %i.eg
  br i1 %i.fg, label %.thread234.us285.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fh = load i32, ptr %i.fb, align 4, !tbaa !8  ; 2 uses
  %i.fi = icmp eq i32 %i.fh, 2
  br i1 %i.fi, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fj = icmp slt i32 %i.fh, 0
  br i1 %i.fj, label %bb.h, label %.thread234.us285.us

bb.h:                                             ; preds = %bb.g
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv360
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !8
  %i.fm = icmp eq i32 %i.fl, 2
  br i1 %i.fm, label %.loopexit246, label %.thread234.us285.us

bb.i:                                             ; preds = %bb.f
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv360
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !8  ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 2
  %i.fq = icmp slt i32 %i.fo, 0
  %or.cond461 = or i1 %i.fp, %i.fq
  br i1 %or.cond461, label %.loopexit246, label %.thread234.us285.us

.thread234.us285.us:                              ; preds = %bb.i, %bb.h, %bb.g, %bb.e
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360, 1 ; 2 uses
  %exitcond364.not = icmp eq i64 %indvars.iv.next361, %wide.trip.count392
  br i1 %exitcond364.not, label %.loopexit.us291, label %bb.e, !llvm.loop !57

bb.j:                                             ; preds = %.lr.ph279, %.loopexit261
  %indvars.iv353 = phi i64 [ 0, %.lr.ph279 ], [ %indvars.iv.next354, %.loopexit261 ] ; 3 uses
  %indvars.iv346 = phi i64 [ 1, %.lr.ph279 ], [ %indvars.iv.next347, %.loopexit261 ] ; 2 uses
  %indvars.iv337 = phi i64 [ 2, %.lr.ph279 ], [ %indvars.iv.next338, %.loopexit261 ] ; 2 uses
  %indvars.iv325 = phi i32 [ 3, %.lr.ph279 ], [ %indvars.iv.next326, %.loopexit261 ] ; 2 uses
  %.087278 = phi i32 [ 0, %.lr.ph279 ], [ %.1.lcssa, %.loopexit261 ] ; 2 uses
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1 ; 3 uses
  %i.fr = icmp samesign ult i64 %indvars.iv.next354, %i.ai
  br i1 %i.fr, label %.lr.ph275, label %.loopexit261

.lr.ph275:                                        ; preds = %bb.j
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv353 ; 2 uses
  %i.ft = trunc nuw nsw i64 %indvars.iv353 to i32
  %i.fu = shl nuw i32 1, %i.ft
  br label %bb.k

.loopexit260:                                     ; preds = %.loopexit259, %bb.k
  %.2.lcssa = phi i32 [ %.1274, %bb.k ], [ %.3.lcssa, %.loopexit259 ] ; 2 uses
  %indvars.iv.next328 = add i32 %indvars.iv327, 1
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1
  %exitcond352.not = icmp eq i64 %indvars.iv.next349, %wide.trip.count356
  br i1 %exitcond352.not, label %.loopexit261, label %bb.k, !llvm.loop !58

bb.k:                                             ; preds = %.lr.ph275, %.loopexit260
  %indvars.iv348 = phi i64 [ %indvars.iv346, %.lr.ph275 ], [ %indvars.iv.next349, %.loopexit260 ] ; 3 uses
  %indvars.iv339 = phi i64 [ %indvars.iv337, %.lr.ph275 ], [ %indvars.iv.next340, %.loopexit260 ] ; 2 uses
  %indvars.iv327 = phi i32 [ %indvars.iv325, %.lr.ph275 ], [ %indvars.iv.next328, %.loopexit260 ] ; 2 uses
  %.1274 = phi i32 [ %.087278, %.lr.ph275 ], [ %.2.lcssa, %.loopexit260 ] ; 2 uses
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1 ; 3 uses
  %3 = icmp samesign ult i64 %indvars.iv.next349, %i.ai
  br i1 %3, label %.lr.ph271, label %.loopexit260

.lr.ph271:                                        ; preds = %bb.k
  %i.fv = sext i32 %indvars.iv327 to i64
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv348 ; 2 uses
  %i.fx = trunc nuw nsw i64 %indvars.iv348 to i32
  %i.fy = shl nuw i32 1, %i.fx
  %i.fz = or i32 %i.fy, %i.fu
  br label %bb.l

.loopexit259.loopexit:                            ; preds = %.loopexit258
  %i.ga = trunc nsw i64 %indvars.iv.next324 to i32
  br label %.loopexit259

.loopexit259:                                     ; preds = %.loopexit259.loopexit, %bb.l
  %.3.lcssa = phi i32 [ %.2270, %bb.l ], [ %i.ga, %.loopexit259.loopexit ] ; 2 uses
  %indvars.iv.next330 = add nsw i64 %indvars.iv329, 1
  %exitcond345.not = icmp eq i32 %1, %i.gb
  br i1 %exitcond345.not, label %.loopexit260, label %bb.l, !llvm.loop !59

bb.l:                                             ; preds = %.lr.ph271, %.loopexit259
  %indvars.iv341 = phi i64 [ %indvars.iv339, %.lr.ph271 ], [ %indvars.iv.next342, %.loopexit259 ] ; 3 uses
  %indvars.iv329 = phi i64 [ %i.fv, %.lr.ph271 ], [ %indvars.iv.next330, %.loopexit259 ] ; 2 uses
  %.2270 = phi i32 [ %.1274, %.lr.ph271 ], [ %.3.lcssa, %.loopexit259 ] ; 2 uses
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %i.gb = trunc i64 %indvars.iv.next342 to i32    ; 2 uses
  %i.gc = icmp sgt i32 %1, %i.gb
  br i1 %i.gc, label %.lr.ph268, label %.loopexit259

.lr.ph268:                                        ; preds = %bb.l
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv341 ; 2 uses
  %i.ge = trunc nuw i64 %indvars.iv341 to i32
  %i.gf = shl nuw i32 1, %i.ge
  %i.gg = or i32 %i.fz, %i.gf
  %i.gh = sext i32 %.2270 to i64
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph268, %.loopexit258
  %indvars.iv331 = phi i64 [ %indvars.iv329, %.lr.ph268 ], [ %indvars.iv.next332, %.loopexit258 ] ; 3 uses
  %indvars.iv323 = phi i64 [ %i.gh, %.lr.ph268 ], [ %indvars.iv.next324, %.loopexit258 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  %i.gi = load i32, ptr %i.fs, align 4, !tbaa !8  ; 2 uses
  %.not49.i = icmp eq i32 %i.gi, %i.s
  br i1 %.not49.i, label %If_Dec10MoveTo.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %If_Dec10SwapAdjacent.exit.i
  %i.gj = phi i32 [ %i.lu, %If_Dec10SwapAdjacent.exit.i ], [ %i.gi, %bb.m ] ; 6 uses
  %.052.i = phi i1 [ %i.lt, %If_Dec10SwapAdjacent.exit.i ], [ false, %bb.m ] ; 2 uses
  %.03751.i = phi ptr [ %.03850.i, %If_Dec10SwapAdjacent.exit.i ], [ %i.f, %bb.m ] ; 16 uses
  %.03850.i = phi ptr [ %.03751.i, %If_Dec10SwapAdjacent.exit.i ], [ %0, %bb.m ] ; 10 uses
  %.03850.i793 = ptrtoaddr ptr %.03850.i to i64   ; 2 uses
  %.03751.i778 = ptrtoaddr ptr %.03751.i to i64   ; 3 uses
  %i.gk = icmp slt i32 %i.gj, 5
  br i1 %i.gk, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  br i1 %i.x, label %If_Dec10SwapAdjacent.exit.i, label %.lr.ph127.i.i

.lr.ph127.i.i:                                    ; preds = %bb.n
  %i.gl = shl nuw nsw i32 1, %i.gj
  %i.gm = sext i32 %i.gj to i64
  %i.gn = getelementptr inbounds [24 x i8], ptr @PMasks, i64 %i.gm ; 3 uses
  %i.go = load i64, ptr %i.gn, align 8, !tbaa !14 ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gq = load i64, ptr %i.gp, align 8, !tbaa !14 ; 4 uses
  %i.gr = zext nneg i32 %i.gl to i64              ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !14 ; 4 uses
  %i.gu = sub i64 %.03850.i793, %.03751.i778
  %diff.check794 = icmp ugt i64 %i.gu, -32
  %or.cond829 = select i1 %min.iters.check796, i1 true, i1 %diff.check794
  br i1 %or.cond829, label %scalar.ph795.preheader, label %vector.ph797

scalar.ph795.preheader:                           ; preds = %.lr.ph127.i.i
  br i1 %i.ce, label %scalar.ph795.epil.preheader, label %scalar.ph795

vector.ph797:                                     ; preds = %.lr.ph127.i.i
  %broadcast.splatinsert799 = insertelement <2 x i64> poison, i64 %i.go, i64 0
  %broadcast.splat800 = shufflevector <2 x i64> %broadcast.splatinsert799, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert801 = insertelement <2 x i64> poison, i64 %i.gq, i64 0
  %broadcast.splat802 = shufflevector <2 x i64> %broadcast.splatinsert801, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert803 = insertelement <2 x i64> poison, i64 %i.gr, i64 0
  %broadcast.splat804 = shufflevector <2 x i64> %broadcast.splatinsert803, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert805 = insertelement <2 x i64> poison, i64 %i.gt, i64 0
  %broadcast.splat806 = shufflevector <2 x i64> %broadcast.splatinsert805, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body807

vector.body807:                                   ; preds = %vector.body807, %vector.ph797
  %index808 = phi i64 [ 0, %vector.ph797 ], [ %index.next811, %vector.body807 ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %.03850.i, i64 %index808 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %wide.load809 = load <2 x i64>, ptr %i.gv, align 8, !tbaa !14 ; 3 uses
  %wide.load810 = load <2 x i64>, ptr %i.gw, align 8, !tbaa !14 ; 3 uses
  %i.gx = and <2 x i64> %wide.load809, %broadcast.splat800
  %i.gy = and <2 x i64> %wide.load810, %broadcast.splat800
  %i.gz = and <2 x i64> %wide.load809, %broadcast.splat802
  %i.ha = and <2 x i64> %wide.load810, %broadcast.splat802
  %i.hb = shl <2 x i64> %i.gz, %broadcast.splat804
  %i.hc = shl <2 x i64> %i.ha, %broadcast.splat804
  %i.hd = or <2 x i64> %i.hb, %i.gx
  %i.he = or <2 x i64> %i.hc, %i.gy
  %i.hf = and <2 x i64> %wide.load809, %broadcast.splat806
  %i.hg = and <2 x i64> %wide.load810, %broadcast.splat806
  %i.hh = lshr <2 x i64> %i.hf, %broadcast.splat804
  %i.hi = lshr <2 x i64> %i.hg, %broadcast.splat804
  %i.hj = or <2 x i64> %i.hd, %i.hh
  %i.hk = or <2 x i64> %i.he, %i.hi
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %.03751.i, i64 %index808 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store <2 x i64> %i.hj, ptr %i.hl, align 8, !tbaa !14
  store <2 x i64> %i.hk, ptr %i.hm, align 8, !tbaa !14
  %index.next811 = add nuw i64 %index808, 4       ; 2 uses
  %i.hn = icmp eq i64 %index.next811, %n.vec798
  br i1 %i.hn, label %If_Dec10SwapAdjacent.exit.i, label %vector.body807, !llvm.loop !60

scalar.ph795:                                     ; preds = %scalar.ph795.preheader, %scalar.ph795
  %indvars.iv158.i.i = phi i64 [ %indvars.iv.next159.i.i.1, %scalar.ph795 ], [ 0, %scalar.ph795.preheader ] ; 4 uses
  %niter896 = phi i64 [ %niter896.next.1, %scalar.ph795 ], [ 0, %scalar.ph795.preheader ]
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.03850.i, i64 %indvars.iv158.i.i
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !14 ; 3 uses
  %i.hq = and i64 %i.hp, %i.go
  %i.hr = and i64 %i.hp, %i.gq
  %i.hs = shl i64 %i.hr, %i.gr
  %i.ht = or i64 %i.hs, %i.hq
  %i.hu = and i64 %i.hp, %i.gt
  %i.hv = lshr i64 %i.hu, %i.gr
  %i.hw = or i64 %i.ht, %i.hv
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %.03751.i, i64 %indvars.iv158.i.i
  store i64 %i.hw, ptr %i.hx, align 8, !tbaa !14
  %indvars.iv.next159.i.i = or disjoint i64 %indvars.iv158.i.i, 1 ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %.03850.i, i64 %indvars.iv.next159.i.i
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !14 ; 3 uses
  %i.ia = and i64 %i.hz, %i.go
  %i.ib = and i64 %i.hz, %i.gq
  %i.ic = shl i64 %i.ib, %i.gr
  %i.id = or i64 %i.ic, %i.ia
  %i.ie = and i64 %i.hz, %i.gt
  %i.if = lshr i64 %i.ie, %i.gr
  %i.ig = or i64 %i.id, %i.if
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.03751.i, i64 %indvars.iv.next159.i.i
  store i64 %i.ig, ptr %i.ih, align 8, !tbaa !14
  %indvars.iv.next159.i.i.1 = add nuw nsw i64 %indvars.iv158.i.i, 2 ; 2 uses
  %niter896.next.1 = add i64 %niter896, 2         ; 2 uses
  %niter896.ncmp.1 = icmp eq i64 %niter896.next.1, %unroll_iter895
  br i1 %niter896.ncmp.1, label %If_Dec10SwapAdjacent.exit.i.loopexit.unr-lcssa, label %scalar.ph795, !llvm.loop !61

bb.o:                                             ; preds = %.lr.ph.i
  %.not.i.i = icmp eq i32 %i.gj, 5
  br i1 %.not.i.i, label %.preheader.i.i, label %bb.p

.preheader.i.i:                                   ; preds = %bb.o
  br i1 %i.x, label %If_Dec10SwapAdjacent.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.preheader.i.i
  br i1 %i.cc, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i

bb.p:                                             ; preds = %bb.o
  %i.ii = add nsw i32 %i.gj, -6                   ; 5 uses
  %i.ij = shl nuw i32 1, %i.ii                    ; 4 uses
  br i1 %i.x, label %If_Dec10SwapAdjacent.exit.i, label %.preheader87.lr.ph.i.i

.preheader87.lr.ph.i.i:                           ; preds = %bb.p
  %.not128.i.i = icmp eq i32 %i.ii, 31
  %i.ik = shl i32 4, %i.ii                        ; 2 uses
  %i.il = sext i32 %i.ik to i64                   ; 2 uses
  br i1 %.not128.i.i, label %If_Dec10SwapAdjacent.exit.i, label %.preheader87.us.preheader.i.i

.preheader87.us.preheader.i.i:                    ; preds = %.preheader87.lr.ph.i.i
  %i.im = shl i32 3, %i.ii
  %i.in = shl i32 2, %i.ii
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.ij, i32 1)
  %i.io = sext i32 %i.in to i64                   ; 2 uses
  %i.ip = sext i32 %i.ij to i64                   ; 2 uses
  %i.iq = sext i32 %i.im to i64                   ; 6 uses
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64 ; 4 uses
  %i.ir = shl nuw nsw i64 %wide.trip.count.i.i, 3 ; 3 uses
  %min.iters.check818 = icmp slt i32 %i.ij, 4
  %i.is = sub i64 %.03850.i793, %.03751.i778
  %diff.check816 = icmp ugt i64 %i.is, -32
  %or.cond830 = select i1 %min.iters.check818, i1 true, i1 %diff.check816
  %n.vec820 = and i64 %wide.trip.count.i.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.it = icmp slt i32 %i.ij, 4
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod884 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us.preheader.i.i

.lr.ph.us.preheader.i.i:                          ; preds = %._crit_edge.us.i.i, %.preheader87.us.preheader.i.i
  %.098.us.i.i = phi i32 [ %i.jw, %._crit_edge.us.i.i ], [ 0, %.preheader87.us.preheader.i.i ]
  %.07897.us.i.i = phi ptr [ %i.jv, %._crit_edge.us.i.i ], [ %.03751.i, %.preheader87.us.preheader.i.i ] ; 10 uses
  %.07996.us.i.i = phi ptr [ %i.ju, %._crit_edge.us.i.i ], [ %.03850.i, %.preheader87.us.preheader.i.i ] ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.07897.us.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.07996.us.i.i, i64 %i.ir, i1 false), !tbaa !14
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.07996.us.i.i, i64 %i.io
  %invariant.gep168.i.i = getelementptr [8 x i8], ptr %.07897.us.i.i, i64 %i.ip
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %invariant.gep168.i.i, ptr noundef nonnull align 8 dereferenceable(1) %invariant.gep.i.i, i64 %i.ir, i1 false), !tbaa !14
  %invariant.gep170.i.i = getelementptr [8 x i8], ptr %.07996.us.i.i, i64 %i.ip
  %invariant.gep172.i.i = getelementptr [8 x i8], ptr %.07897.us.i.i, i64 %i.io
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %invariant.gep172.i.i, ptr noundef nonnull align 8 dereferenceable(1) %invariant.gep170.i.i, i64 %i.ir, i1 false), !tbaa !14
  br i1 %or.cond830, label %.lr.ph95.us.i.i.preheader, label %vector.body821

end_hunk_0
