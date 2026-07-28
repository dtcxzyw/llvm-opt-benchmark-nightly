inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@add_to_list:bb.a
  store i32 %i.b, ptr %1, align 8, !tbaa !11
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !28
  switch i32 %i.bp, label %bb.ai [
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
    i32 5, label %bb.l
    i32 7, label %bb.l
    i32 12, label %bb.l
    i32 29, label %bb.l
    i32 6, label %bb.m
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 10, label %bb.p
    i32 11, label %bb.q
    i32 13, label %bb.r
    i32 14, label %bb.s
    i32 15, label %bb.t
    i32 16, label %bb.u
    i32 17, label %bb.v
    i32 18, label %bb.w
    i32 19, label %bb.x
    i32 20, label %bb.y
    i32 21, label %bb.z
    i32 22, label %bb.aa
    i32 23, label %bb.ab
    i32 24, label %bb.ac
    i32 25, label %bb.ad
    i32 26, label %bb.ae
    i32 27, label %bb.af
    i32 28, label %bb.ag
    i32 30, label %bb.ah
  ]

bb.h:                                             ; preds = %.thread3
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.i:                                             ; preds = %.thread3
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.j:                                             ; preds = %.thread3
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.k:                                             ; preds = %.thread3
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bx, i8 0, i64 32, i1 false)
  br label %exr_attr_list_remove.exit

bb.l:                                             ; preds = %.thread3, %.thread3, %.thread3, %.thread3
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %i.by, align 8, !tbaa !30
  br label %exr_attr_list_remove.exit

bb.m:                                             ; preds = %.thread3
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double 0.000000e+00, ptr %i.bz, align 8, !tbaa !30
  br label %exr_attr_list_remove.exit

bb.n:                                             ; preds = %.thread3
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float 0.000000e+00, ptr %i.ca, align 8, !tbaa !30
  br label %exr_attr_list_remove.exit

bb.o:                                             ; preds = %.thread3
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.p:                                             ; preds = %.thread3
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.cd, align 8, !tbaa !30
  br label %exr_attr_list_remove.exit

bb.q:                                             ; preds = %.thread3
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.cf, i8 0, i64 28, i1 false)
  br label %exr_attr_list_remove.exit

bb.r:                                             ; preds = %.thread3
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.ch, i8 0, i64 36, i1 false)
  br label %exr_attr_list_remove.exit

bb.s:                                             ; preds = %.thread3
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.cj, i8 0, i64 72, i1 false)
  br label %exr_attr_list_remove.exit

bb.t:                                             ; preds = %.thread3
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cl, i8 0, i64 64, i1 false)
  br label %exr_attr_list_remove.exit

bb.u:                                             ; preds = %.thread3
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cn, i8 0, i64 64, i1 false)
  br label %exr_attr_list_remove.exit

bb.v:                                             ; preds = %.thread3
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false)
  br label %exr_attr_list_remove.exit

bb.w:                                             ; preds = %.thread3
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !30
  store i64 0, ptr %i.cr, align 1
  br label %exr_attr_list_remove.exit

bb.x:                                             ; preds = %.thread3
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.y:                                             ; preds = %.thread3
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.z:                                             ; preds = %.thread3
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cx, i8 0, i64 9, i1 false)
  br label %exr_attr_list_remove.exit

bb.aa:                                            ; preds = %.thread3
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !30
  store i64 0, ptr %i.cz, align 1
  br label %exr_attr_list_remove.exit

bb.ab:                                            ; preds = %.thread3
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !30
  store i64 0, ptr %i.db, align 1
  br label %exr_attr_list_remove.exit

bb.ac:                                            ; preds = %.thread3
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !30
  store i64 0, ptr %i.dd, align 1
  br label %exr_attr_list_remove.exit

bb.ad:                                            ; preds = %.thread3
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.ae:                                            ; preds = %.thread3
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.dh, i8 0, i64 12, i1 false)
  br label %exr_attr_list_remove.exit

bb.af:                                            ; preds = %.thread3
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.dj, i8 0, i64 12, i1 false)
  br label %exr_attr_list_remove.exit

bb.ag:                                            ; preds = %.thread3
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dl, i8 0, i64 24, i1 false)
  br label %exr_attr_list_remove.exit

bb.ah:                                            ; preds = %.thread3
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !30
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dn, i8 0, i64 56, i1 false)
  br label %exr_attr_list_remove.exit

bb.ai:                                            ; preds = %.thread3
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !53
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !54
  %i.ds = tail call i32 (ptr, i32, ptr, ...) %i.dp(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.51, ptr noundef %i.dr) #8, !inline_history !73 ; 0 uses
  %i.dt = load i32, ptr %1, align 8, !tbaa !11    ; 5 uses
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !7   ; 6 uses
  %i.dv = icmp sgt i32 %i.dt, 0
  br i1 %i.dv, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.ai
  %wide.trip.count.i = zext nneg i32 %i.dt to i64 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.aj ] ; 8 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !25
  %i.dy = icmp eq ptr %i.dx, %2
  br i1 %i.dy, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !74

._crit_edge.i:                                    ; preds = %bb.aj, %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !31
  %i.eb = tail call i32 %i.ea(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.15) #8, !inline_history !75 ; 0 uses
  br label %exr_attr_list_remove.exit

bb.ak:                                            ; preds = %.lr.ph.i
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i
  %i.ed = trunc nuw nsw i64 %indvars.iv.i to i32
  store ptr null, ptr %i.ec, align 8, !tbaa !25
  %i.ee = add nsw i32 %i.dt, -1                   ; 3 uses
  %i.ef = icmp sgt i32 %i.ee, %i.ed
  br i1 %i.ef, label %.lr.ph60.preheader.i, label %.lr.ph65.preheader.i

.lr.ph60.preheader.i:                             ; preds = %bb.ak
  %wide.trip.count75.i = zext nneg i32 %i.ee to i64 ; 2 uses
  %3 = sub nsw i64 %wide.trip.count75.i, %indvars.iv.i ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph60.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph60.preheader.i
  %n.vec = and i64 %3, -4                         ; 3 uses
  %4 = add i64 %indvars.iv.i, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %5 = add nuw i64 %indvars.iv.i, %index          ; 2 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %5 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %wide.load = load <2 x ptr>, ptr %i.eg, align 8, !tbaa !25
  %wide.load37 = load <2 x ptr>, ptr %i.eh, align 8, !tbaa !25
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %5 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x ptr> %wide.load, ptr %7, align 8, !tbaa !25
  store <2 x ptr> %wide.load37, ptr %8, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.lr.ph65.preheader.i, label %.lr.ph60.i.preheader

.lr.ph60.i.preheader:                             ; preds = %.lr.ph60.preheader.i, %middle.block
  %indvars.iv72.i.ph = phi i64 [ %indvars.iv.i, %.lr.ph60.preheader.i ], [ %4, %middle.block ]
  br label %.lr.ph60.i

.lr.ph65.preheader.i:                             ; preds = %.lr.ph60.i, %middle.block, %bb.ak
  store i32 %i.ee, ptr %1, align 8, !tbaa !11
  %i.ei = load ptr, ptr %i.e, align 8, !tbaa !60  ; 6 uses
  %xtraiter40 = and i64 %wide.trip.count.i, 1
  %i.ej = icmp eq i32 %i.dt, 1
  br i1 %i.ej, label %.lr.ph65.i.epil.preheader, label %.lr.ph65.preheader.i.new

.lr.ph65.preheader.i.new:                         ; preds = %.lr.ph65.preheader.i
  %unroll_iter43 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph65.i

.lr.ph60.i:                                       ; preds = %.lr.ph60.i.preheader, %.lr.ph60.i
  %indvars.iv72.i = phi i64 [ %indvars.iv.next73.i, %.lr.ph60.i ], [ %indvars.iv72.i.ph, %.lr.ph60.i.preheader ] ; 2 uses
  %indvars.iv.next73.i = add nuw nsw i64 %indvars.iv72.i, 1 ; 3 uses
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.next73.i
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv72.i
  store ptr %11, ptr %12, align 8, !tbaa !25
  %exitcond76.not.i = icmp eq i64 %indvars.iv.next73.i, %wide.trip.count75.i
  br i1 %exitcond76.not.i, label %.lr.ph65.preheader.i, label %.lr.ph60.i, !llvm.loop !79

._crit_edge66.i.unr-lcssa:                        ; preds = %bb.ao
  %lcmp.mod41.not = icmp eq i64 %xtraiter40, 0
  br i1 %lcmp.mod41.not, label %._crit_edge66.i, label %.lr.ph65.i.epil.preheader

.lr.ph65.i.epil.preheader:                        ; preds = %._crit_edge66.i.unr-lcssa, %.lr.ph65.preheader.i
  %indvars.iv77.i.epil.init = phi i64 [ 0, %.lr.ph65.preheader.i ], [ %indvars.iv.next78.i.1, %._crit_edge66.i.unr-lcssa ]
  %.162.i.epil.init = phi i32 [ 0, %.lr.ph65.preheader.i ], [ %.2.i.1, %._crit_edge66.i.unr-lcssa ]
  %lcmp.mod42 = trunc i32 %i.dt to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv77.i.epil.init
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !25 ; 2 uses
  %i.em = icmp eq ptr %i.el, %2
  br i1 %i.em, label %._crit_edge66.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph65.i.epil.preheader
  %i.en = sext i32 %.162.i.epil.init to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.en
  store ptr %i.el, ptr %i.eo, align 8, !tbaa !25
  br label %._crit_edge66.i

._crit_edge66.i:                                  ; preds = %.lr.ph65.i.epil.preheader, %bb.al, %._crit_edge66.i.unr-lcssa
  %i.ep = tail call fastcc i32 @attr_destroy(ptr noundef nonnull %0, ptr noundef nonnull %2) ; 0 uses
  br label %exr_attr_list_remove.exit

.lr.ph65.i:                                       ; preds = %bb.ao, %.lr.ph65.preheader.i.new
  %indvars.iv77.i = phi i64 [ 0, %.lr.ph65.preheader.i.new ], [ %indvars.iv.next78.i.1, %bb.ao ] ; 3 uses
  %.162.i = phi i32 [ 0, %.lr.ph65.preheader.i.new ], [ %.2.i.1, %bb.ao ] ; 3 uses
  %niter44 = phi i64 [ 0, %.lr.ph65.preheader.i.new ], [ %niter44.next.1, %bb.ao ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv77.i
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !25 ; 2 uses
  %i.es = icmp eq ptr %i.er, %2
  br i1 %i.es, label %.lr.ph65.i.1, label %bb.am

bb.am:                                            ; preds = %.lr.ph65.i
  %i.et = add nsw i32 %.162.i, 1
  %i.eu = sext i32 %.162.i to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.eu
  store ptr %i.er, ptr %i.ev, align 8, !tbaa !25
  br label %.lr.ph65.i.1

.lr.ph65.i.1:                                     ; preds = %bb.am, %.lr.ph65.i
  %.2.i = phi i32 [ %.162.i, %.lr.ph65.i ], [ %i.et, %bb.am ] ; 3 uses
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv77.i
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !25 ; 2 uses
  %i.ez = icmp eq ptr %i.ey, %2
  br i1 %i.ez, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph65.i.1
  %i.fa = add nsw i32 %.2.i, 1
  %i.fb = sext i32 %.2.i to i64
  %i.fc = getelementptr inbounds [8 x i8], ptr %i.ei, i64 %i.fb
  store ptr %i.ey, ptr %i.fc, align 8, !tbaa !25
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph65.i.1
  %.2.i.1 = phi i32 [ %.2.i, %.lr.ph65.i.1 ], [ %i.fa, %bb.an ] ; 2 uses
  %indvars.iv.next78.i.1 = add nuw nsw i64 %indvars.iv77.i, 2 ; 2 uses
  %niter44.next.1 = add i64 %niter44, 2           ; 2 uses
  %niter44.ncmp.1 = icmp eq i64 %niter44.next.1, %unroll_iter43
  br i1 %niter44.ncmp.1, label %._crit_edge66.i.unr-lcssa, label %.lr.ph65.i, !llvm.loop !80

exr_attr_list_remove.exit:                        ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %._crit_edge66.i, %._crit_edge.i, %.thread
  %.1 = phi i32 [ %i.v, %.thread ], [ 3, %._crit_edge66.i ], [ 3, %._crit_edge.i ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_attr_handler(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !28
  %i.c = icmp eq i32 %i.b, 30
  br i1 %i.c, label %bb.b, label %exr_attr_list_find_by_name.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 4 uses
  %.not48.i = icmp eq ptr %i.f, null
  br i1 %.not48.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.f, align 1, !tbaa !30
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.4) #8, !inline_history !81 ; 0 uses
  br label %exr_attr_list_find_by_name.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60   ; 4 uses
  %.not50.i = icmp eq ptr %i.m, null
  br i1 %.not50.i, label %exr_attr_list_find_by_name.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.d, align 8, !tbaa !11   ; 3 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o
  %i.q = icmp sgt i32 %i.n, 0
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.03853.i = phi i32 [ %.1.i, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  %.03952.i = phi ptr [ %.140.i, %bb.g ], [ %i.m, %bb.f ] ; 2 uses
  %i.r = lshr i32 %.03853.i, 1                    ; 3 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.03952.i, i64 %i.s ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !25   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull readonly dereferenceable(1) %i.f) #7 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %exr_attr_list_find_by_name.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = icmp slt i32 %i.w, 0                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.neg.i = xor i32 %i.r, -1
  %i.aa = add nsw i32 %.03853.i, %.neg.i
  %.140.i = select i1 %i.y, ptr %i.z, ptr %.03952.i ; 2 uses
  %.1.i = select i1 %i.y, i32 %i.aa, i32 %i.r     ; 2 uses
  %i.ab = icmp sgt i32 %.1.i, 0
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !61

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %.039.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %.140.i, %bb.g ] ; 2 uses
  %i.ac = icmp ult ptr %.039.lcssa.i, %i.p
  br i1 %i.ac, label %bb.h, label %exr_attr_list_find_by_name.exit.thread

bb.h:                                             ; preds = %._crit_edge.i
  %i.ad = load ptr, ptr %.039.lcssa.i, align 8, !tbaa !25 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !55
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull readonly dereferenceable(1) %i.f) #7
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %exr_attr_list_find_by_name.exit, label %exr_attr_list_find_by_name.exit.thread

exr_attr_list_find_by_name.exit:                  ; preds = %.lr.ph.i, %bb.h
  %.0 = phi ptr [ %i.ad, %bb.h ], [ %i.u, %.lr.ph.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !82
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !83
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !83
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !84
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !84
  br label %exr_attr_list_find_by_name.exit.thread

exr_attr_list_find_by_name.exit.thread:           ; preds = %bb.d, %._crit_edge.i, %bb.e, %bb.h, %exr_attr_list_find_by_name.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @exr_attr_list_add(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @validate_attr_arguments(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef %5, ptr noundef %6) ; 3 uses
  %.not66 = icmp eq i32 %i.a, 0
  br i1 %.not66, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.x

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %6, align 8, !tbaa !25     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %.not68 = icmp eq i32 %i.e, %3
  br i1 %.not68, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %6, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = tail call i32 (ptr, i32, ptr, ...) %i.g(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.10, ptr noundef %2, ptr noundef %i.i) #8
  br label %bb.x

bb.f:                                             ; preds = %bb.b
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #7 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 2, !tbaa !62    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = zext i8 %i.m to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.s = trunc i64 %i.k to i32
  %i.t = tail call i32 (ptr, i32, ptr, ...) %i.r(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, i32 noundef %i.s, i32 noundef %i.p) #8
  br label %bb.x

bb.h:                                             ; preds = %bb.f
  %i.u = add i32 %3, -30
  %or.cond = icmp ult i32 %i.u, -29
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.v = icmp eq i32 %3, 30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53   ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i32 (ptr, i32, ptr, ...) %i.x(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #8
  br label %bb.x

bb.k:                                             ; preds = %bb.i
  %i.z = tail call i32 (ptr, i32, ptr, ...) %i.x(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i32 noundef %3) #8
  br label %bb.x

bb.l:                                             ; preds = %bb.h
  %i.aa = zext nneg i32 %3 to i64
  %i.ab = getelementptr [24 x i8], ptr @the_predefined_attr_typenames, i64 %i.aa ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !63 ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  %narrow.i = add nuw nsw i64 %i.k, 33
  %.067.i = select i1 %.not.i, i64 32, i64 %narrow.i ; 3 uses
  %.not81.i = icmp eq i64 %i.ad, 0                ; 2 uses
  br i1 %.not81.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = and i64 %.067.i, 7                      ; 2 uses
  %i.af = sub nuw nsw i64 8, %i.ae
  %i.ag = icmp eq i64 %i.ae, 0
  %spec.store.select.i = select i1 %i.ag, i64 0, i64 %i.af ; 2 uses
  %i.ah = add nuw nsw i64 %spec.store.select.i, %.067.i
  %i.ai = add i64 %i.ah, %i.ad
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.269.i = phi i64 [ %i.ai, %bb.m ], [ %.067.i, %bb.l ] ; 3 uses
  %.065.i = phi i64 [ %spec.store.select.i, %bb.m ], [ 0, %bb.l ]
  %i.aj = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = and i64 %.269.i, 7                      ; 2 uses
  %i.al = sub nuw nsw i64 8, %i.ak
  %i.am = icmp eq i64 %i.ak, 0
  %spec.store.select1.i = select i1 %i.am, i64 0, i64 %i.al ; 2 uses
  %i.an = zext nneg i32 %4 to i64
  %i.ao = add i64 %.269.i, %i.an
  %i.ap = add i64 %i.ao, %spec.store.select1.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.070.i = phi i64 [ %spec.store.select1.i, %bb.o ], [ 0, %bb.n ]
  %.3.i = phi i64 [ %i.ap, %bb.o ], [ %.269.i, %bb.n ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !69
  %i.as = tail call ptr %i.ar(i64 noundef %.3.i) #8, !inline_history !85 ; 12 uses
  %.not82.i = icmp eq ptr %i.as, null
  br i1 %.not82.i, label %create_attr_block.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 4 uses
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = add nuw nsw i64 %i.k, 1                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.at, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 %i.au, i1 false)
  store ptr %i.at, ptr %i.as, align 8, !tbaa !55
  %i.av = trunc nuw i64 %i.k to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i8 %i.av, ptr %i.aw, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.066.i = phi ptr [ %i.ax, %bb.r ], [ %i.at, %bb.q ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.066.i, i64 %.065.i ; 3 uses
  br i1 %.not81.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !30
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ad
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.i = phi ptr [ %i.ba, %bb.t ], [ %i.ay, %bb.s ]
  %.not83.i = icmp eq ptr %5, null
  br i1 %.not83.i, label %create_attr_block.exit.thread, label %create_attr_block.exit.thread.sink.split

create_attr_block.exit.thread.sink.split:         ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %.2.i, i64 %.070.i
  %.sink = select i1 %i.aj, ptr %i.bb, ptr null
  store ptr %.sink, ptr %5, align 8, !tbaa !68
  br label %create_attr_block.exit.thread

create_attr_block.exit:                           ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !70
  %i.be = tail call i32 %i.bd(ptr noundef nonnull %0, i32 noundef 1) #8, !inline_history !85 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %create_attr_block.exit.thread, label %.thread

create_attr_block.exit.thread:                    ; preds = %create_attr_block.exit.thread.sink.split, %bb.u, %create_attr_block.exit
  %i.bg = getelementptr i8, ptr %i.ab, i64 -24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !65
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !54
  %i.bj = getelementptr i8, ptr %i.ab, i64 -16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !66
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 17
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !34
  %i.bn = getelementptr i8, ptr %i.ab, i64 -12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !67
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !28
  %i.bq = tail call fastcc i32 @add_to_list(ptr noundef %0, ptr noundef %1, ptr noundef %i.as) ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.v, label %.thread

bb.v:                                             ; preds = %create_attr_block.exit.thread
  store ptr %i.as, ptr %6, align 8, !tbaa !25
  tail call fastcc void @check_attr_handler(ptr noundef %0, ptr noundef nonnull %i.as)
  br label %bb.x

.thread:                                          ; preds = %create_attr_block.exit, %create_attr_block.exit.thread
  %.05878 = phi i32 [ %i.bq, %create_attr_block.exit.thread ], [ %i.be, %create_attr_block.exit ] ; 2 uses
  %.not67 = icmp eq ptr %5, null
  br i1 %.not67, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread
  store ptr null, ptr %5, align 8, !tbaa !68
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %.thread, %bb.c, %bb.d, %bb.a, %bb.k, %bb.j, %bb.g, %bb.e
  %.0 = phi i32 [ %i.j, %bb.e ], [ 2, %bb.a ], [ 0, %bb.d ], [ %i.t, %bb.g ], [ %i.y, %bb.j ], [ %i.z, %bb.k ], [ %i.a, %bb.c ], [ %.05878, %.thread ], [ %.05878, %bb.w ], [ 0, %bb.v ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @exr_attr_list_add_static_name(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc i32 @validate_attr_arguments(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %4, ptr noundef %5, ptr noundef %6) ; 3 uses
  %.not66 = icmp eq i32 %i.a, 0
  br i1 %.not66, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.c = load ptr, ptr %6, align 8, !tbaa !25     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !28
  %.not68 = icmp eq i32 %i.e, %3
  br i1 %.not68, label %bb.t, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %6, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = tail call i32 (ptr, i32, ptr, ...) %i.g(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.10, ptr noundef %2, ptr noundef %i.i) #8
  br label %bb.t

bb.f:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 2, !tbaa !62    ; 2 uses
  %i.m = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #7 ; 3 uses
  %i.n = zext i8 %i.l to i64
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = zext i8 %i.l to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !53
  %i.s = trunc i64 %i.m to i32
  %i.t = tail call i32 (ptr, i32, ptr, ...) %i.r(ptr noundef nonnull %0, i32 noundef 12, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, i32 noundef %i.s, i32 noundef %i.p) #8
  br label %bb.t

bb.h:                                             ; preds = %bb.f
  %i.u = add i32 %3, -30
  %or.cond = icmp ult i32 %i.u, -29
  br i1 %or.cond, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.v = icmp eq i32 %3, 30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !53   ; 2 uses
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.y = tail call i32 (ptr, i32, ptr, ...) %i.x(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #8
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  %i.z = tail call i32 (ptr, i32, ptr, ...) %i.x(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.12, ptr noundef nonnull %2, i32 noundef %3) #8
  br label %bb.t

bb.l:                                             ; preds = %bb.h
  %i.aa = zext nneg i32 %3 to i64
  %i.ab = getelementptr [24 x i8], ptr @the_predefined_attr_typenames, i64 %i.aa ; 4 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 -8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !63 ; 4 uses
  %.not81.i = icmp eq i64 %i.ad, 0
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ag = and i64 %i.ad, 7                        ; 2 uses
  %i.ah = sub nuw nsw i64 8, %i.ag
  %i.ai = icmp eq i64 %i.ag, 0
  %spec.store.select1.i = select i1 %i.ai, i64 0, i64 %i.ah ; 2 uses
  %i.aj = zext nneg i32 %4 to i64
  %i.ak = add i64 %i.ae, %i.aj
  %i.al = add i64 %i.ak, %spec.store.select1.i
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.070.i = phi i64 [ %spec.store.select1.i, %bb.m ], [ 0, %bb.l ]
  %.3.i = phi i64 [ %i.al, %bb.m ], [ %i.ae, %bb.l ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !69
  %i.ao = tail call ptr %i.an(i64 noundef %.3.i) #8, !inline_history !85 ; 12 uses
  %.not82.i = icmp eq ptr %i.ao, null
  br i1 %.not82.i, label %create_attr_block.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i8 0, i64 16, i1 false)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 32 ; 3 uses
  br i1 %.not81.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !30
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ad
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.i = phi ptr [ %i.as, %bb.p ], [ %i.aq, %bb.o ]
  %.not83.i = icmp eq ptr %5, null
  br i1 %.not83.i, label %create_attr_block.exit.thread, label %create_attr_block.exit.thread.sink.split

create_attr_block.exit.thread.sink.split:         ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %.2.i, i64 %.070.i
  %.sink = select i1 %i.af, ptr %i.at, ptr null
  store ptr %.sink, ptr %5, align 8, !tbaa !68
  br label %create_attr_block.exit.thread

create_attr_block.exit:                           ; preds = %bb.n
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !70
  %i.aw = tail call i32 %i.av(ptr noundef nonnull %0, i32 noundef 1) #8, !inline_history !85 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %create_attr_block.exit.thread, label %.thread

create_attr_block.exit.thread:                    ; preds = %create_attr_block.exit.thread.sink.split, %bb.q, %create_attr_block.exit
  %i.ay = getelementptr i8, ptr %i.ab, i64 -24
  store ptr %2, ptr %i.ao, align 8, !tbaa !55
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !65
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !54
  %i.bb = trunc nuw i64 %i.m to i8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i8 %i.bb, ptr %i.bc, align 8, !tbaa !33
  %i.bd = getelementptr i8, ptr %i.ab, i64 -16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !66
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ao, i64 17
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !34
  %i.bh = getelementptr i8, ptr %i.ab, i64 -12
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !67
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !28
  %i.bk = tail call fastcc i32 @add_to_list(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.ao) ; 2 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.r, label %.thread

bb.r:                                             ; preds = %create_attr_block.exit.thread
  store ptr %i.ao, ptr %6, align 8, !tbaa !25
  tail call fastcc void @check_attr_handler(ptr noundef %0, ptr noundef nonnull %i.ao)
  br label %bb.t

.thread:                                          ; preds = %create_attr_block.exit, %create_attr_block.exit.thread
  %.05880 = phi i32 [ %i.bk, %create_attr_block.exit.thread ], [ %i.aw, %create_attr_block.exit ] ; 2 uses
  %.not67 = icmp eq ptr %5, null
  br i1 %.not67, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread
  store ptr null, ptr %5, align 8, !tbaa !68
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %.thread, %bb.c, %bb.d, %bb.a, %bb.k, %bb.j, %bb.g, %bb.e
  %.0 = phi i32 [ %i.j, %bb.e ], [ 2, %bb.a ], [ 0, %bb.d ], [ %i.t, %bb.g ], [ %i.y, %bb.j ], [ %i.z, %bb.k ], [ %i.a, %bb.c ], [ %.05880, %.thread ], [ %.05880, %bb.s ], [ 0, %bb.r ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden i32 @exr_attr_list_remove(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not53 = icmp eq ptr %2, null
  br i1 %.not53, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = tail call i32 %i.b(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.13) #8
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %.not54 = icmp eq ptr %1, null
  br i1 %.not54, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = tail call i32 %i.e(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.14) #8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.g = load i32, ptr %1, align 8, !tbaa !11     ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !7    ; 6 uses
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.g ] ; 8 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.m = icmp eq ptr %i.l, %2
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.g, %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !31
  %i.p = tail call i32 %i.o(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.15) #8
  br label %bb.m

bb.h:                                             ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.r = trunc nuw nsw i64 %indvars.iv to i32
  store ptr null, ptr %i.q, align 8, !tbaa !25
  %i.s = add nsw i32 %i.g, -1                     ; 3 uses
  %i.t = icmp sgt i32 %i.s, %i.r
  br i1 %i.t, label %.lr.ph60.preheader, label %.lr.ph65.preheader

.lr.ph60.preheader:                               ; preds = %bb.h
  %wide.trip.count75 = zext nneg i32 %i.s to i64  ; 2 uses
  %3 = sub nsw i64 %wide.trip.count75, %indvars.iv ; 3 uses
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph60.preheader92, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph60.preheader
  %n.vec = and i64 %3, -4                         ; 3 uses
  %4 = add i64 %indvars.iv, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %5 = add nuw i64 %indvars.iv, %index            ; 2 uses
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %5 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 24
  %wide.load = load <2 x ptr>, ptr %i.u, align 8, !tbaa !25
  %wide.load91 = load <2 x ptr>, ptr %i.v, align 8, !tbaa !25
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %5 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %7, i64 16
  store <2 x ptr> %wide.load, ptr %7, align 8, !tbaa !25
  store <2 x ptr> %wide.load91, ptr %8, align 8, !tbaa !25
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.lr.ph65.preheader, label %.lr.ph60.preheader92

.lr.ph60.preheader92:                             ; preds = %.lr.ph60.preheader, %middle.block
  %indvars.iv72.ph = phi i64 [ %indvars.iv, %.lr.ph60.preheader ], [ %4, %middle.block ]
  br label %.lr.ph60

.lr.ph65.preheader:                               ; preds = %.lr.ph60, %middle.block, %bb.h
  store i32 %i.s, ptr %1, align 8, !tbaa !11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !60   ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.y = icmp eq i32 %i.g, 1
  br i1 %i.y, label %.lr.ph65.epil.preheader, label %.lr.ph65.preheader.new

.lr.ph65.preheader.new:                           ; preds = %.lr.ph65.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph65

.lr.ph60:                                         ; preds = %.lr.ph60.preheader92, %.lr.ph60
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.lr.ph60 ], [ %indvars.iv72.ph, %.lr.ph60.preheader92 ] ; 2 uses
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 3 uses
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next73
  %11 = load ptr, ptr %10, align 8, !tbaa !25
  %12 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv72
  store ptr %11, ptr %12, align 8, !tbaa !25
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count75
  br i1 %exitcond76.not, label %.lr.ph65.preheader, label %.lr.ph60, !llvm.loop !87

._crit_edge66.unr-lcssa:                          ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge66, label %.lr.ph65.epil.preheader

.lr.ph65.epil.preheader:                          ; preds = %._crit_edge66.unr-lcssa, %.lr.ph65.preheader
  %indvars.iv77.epil.init = phi i64 [ 0, %.lr.ph65.preheader ], [ %indvars.iv.next78.1, %._crit_edge66.unr-lcssa ]
  %.162.epil.init = phi i32 [ 0, %.lr.ph65.preheader ], [ %.2.1, %._crit_edge66.unr-lcssa ]
  %lcmp.mod94 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod94)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv77.epil.init
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !25  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %2
  br i1 %i.ab, label %._crit_edge66, label %bb.i

bb.i:                                             ; preds = %.lr.ph65.epil.preheader
  %i.ac = sext i32 %.162.epil.init to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.ac
  store ptr %i.aa, ptr %i.ad, align 8, !tbaa !25
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %.lr.ph65.epil.preheader, %bb.i, %._crit_edge66.unr-lcssa
  %i.ae = tail call fastcc i32 @attr_destroy(ptr noundef %0, ptr noundef nonnull %2)
  br label %bb.m

.lr.ph65:                                         ; preds = %bb.l, %.lr.ph65.preheader.new
  %indvars.iv77 = phi i64 [ 0, %.lr.ph65.preheader.new ], [ %indvars.iv.next78.1, %bb.l ] ; 3 uses
  %.162 = phi i32 [ 0, %.lr.ph65.preheader.new ], [ %.2.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph65.preheader.new ], [ %niter.next.1, %bb.l ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv77
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %2
  br i1 %i.ah, label %.lr.ph65.1, label %bb.j

bb.j:                                             ; preds = %.lr.ph65
  %i.ai = add nsw i32 %.162, 1
  %i.aj = sext i32 %.162 to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aj
  store ptr %i.ag, ptr %i.ak, align 8, !tbaa !25
  br label %.lr.ph65.1

.lr.ph65.1:                                       ; preds = %.lr.ph65, %bb.j
  %.2 = phi i32 [ %.162, %.lr.ph65 ], [ %i.ai, %bb.j ] ; 3 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv77
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !25 ; 2 uses
  %i.ao = icmp eq ptr %i.an, %2
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph65.1
  %i.ap = add nsw i32 %.2, 1
  %i.aq = sext i32 %.2 to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.x, i64 %i.aq
  store ptr %i.an, ptr %i.ar, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph65.1
  %.2.1 = phi i32 [ %.2, %.lr.ph65.1 ], [ %i.ap, %bb.k ] ; 2 uses
  %indvars.iv.next78.1 = add nuw nsw i64 %indvars.iv77, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge66.unr-lcssa, label %.lr.ph65, !llvm.loop !80

bb.m:                                             ; preds = %bb.a, %._crit_edge66, %._crit_edge, %bb.e, %bb.c
  %.047 = phi i32 [ %i.p, %._crit_edge ], [ %i.ae, %._crit_edge66 ], [ %i.f, %bb.e ], [ %i.c, %bb.c ], [ 2, %bb.a ]
  ret i32 %.047
}

declare i32 @exr_attr_chlist_destroy(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @exr_attr_float_vector_destroy(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @exr_attr_preview_destroy(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @exr_attr_string_destroy(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @exr_attr_string_vector_destroy(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @exr_attr_opaquedata_destroy(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 8}
!8 = !{!"exr_attribute_list", !4, i64 0, !4, i64 4, !9, i64 8, !9, i64 16}
!9 = !{!"any p2 pointer", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!8, !4, i64 0}
!12 = !{!13, !10, i64 96}
!13 = !{!"_priv_exr_context_t", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !5, i64 4, !5, i64 5, !5, i64 6, !5, i64 7, !14, i64 8, !14, i64 24, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120, !16, i64 124, !10, i64 128, !10, i64 136, !10, i64 144, !17, i64 152, !10, i64 160, !10, i64 168, !17, i64 176, !4, i64 184, !4, i64 188, !4, i64 192, !4, i64 196, !18, i64 200, !23, i64 464, !24, i64 472, !8, i64 480, !5, i64 504, !5, i64 544, !5, i64 545, !5, i64 546, !4, i64 548}
!14 = !{!"", !4, i64 0, !4, i64 4, !15, i64 8}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"float", !5, i64 0}
!17 = !{!"long", !5, i64 0}
!18 = !{!"_priv_exr_part_t", !4, i64 0, !4, i64 4, !8, i64 8, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !19, i64 144, !19, i64 160, !4, i64 176, !4, i64 180, !4, i64 184, !16, i64 188, !4, i64 192, !4, i64 196, !21, i64 200, !21, i64 208, !21, i64 216, !21, i64 224, !17, i64 232, !22, i64 240, !22, i64 242, !4, i64 244, !17, i64 248, !5, i64 256}
!19 = !{!"", !20, i64 0, !20, i64 8}
!20 = !{!"", !4, i64 0, !4, i64 4}
!21 = !{!"p1 int", !10, i64 0}
!22 = !{!"short", !5, i64 0}
!23 = !{!"p1 _ZTS16_priv_exr_part_t", !10, i64 0}
!24 = !{!"p2 _ZTS16_priv_exr_part_t", !9, i64 0}
!25 = !{!10, !10, i64 0}
!26 = distinct !{!26, !27}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!29, !4, i64 20}
!29 = !{!"", !15, i64 0, !15, i64 8, !5, i64 16, !5, i64 17, !5, i64 18, !4, i64 20, !5, i64 24}
!30 = !{!5, !5, i64 0}
!31 = !{!13, !10, i64 64}
!32 = !{!17, !17, i64 0}
!33 = !{!29, !5, i64 16}
!34 = !{!29, !5, i64 17}
!35 = !{!36, !4, i64 0}
!36 = !{!"", !4, i64 0, !4, i64 4, !10, i64 8}
!37 = !{!36, !10, i64 8}
!38 = !{!39, !4, i64 0}
!39 = !{!"", !14, i64 0, !4, i64 16, !5, i64 20, !5, i64 21, !4, i64 24, !4, i64 28}
!40 = distinct !{!40, !27}
!41 = !{!42, !4, i64 0}
!42 = !{!"", !4, i64 0, !4, i64 4, !43, i64 8}
!43 = !{!"p1 float", !10, i64 0}
!44 = !{!45, !4, i64 0}
!45 = !{!"", !4, i64 0, !4, i64 4, !17, i64 8, !15, i64 16}
!46 = !{!45, !4, i64 4}
!47 = !{!14, !4, i64 0}
!48 = distinct !{!48, !27}
!49 = !{!50, !10, i64 16}
!50 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !5, i64 12, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!51 = !{!50, !4, i64 0}
!52 = !{!50, !10, i64 24}
!53 = !{!13, !10, i64 72}
!54 = !{!29, !15, i64 8}
!55 = !{!29, !15, i64 0}
!56 = distinct !{!56, !57}
!57 = !{!"llvm.loop.unroll.disable"}
!58 = distinct !{!58, !57}
!59 = distinct !{!59, !27}
!60 = !{!8, !9, i64 16}
!61 = distinct !{!61, !27}
!62 = !{!13, !5, i64 2}
!63 = !{!64, !17, i64 16}
!64 = !{!"_internal_exr_attr_map", !15, i64 0, !4, i64 8, !4, i64 12, !17, i64 16}
!65 = !{!64, !15, i64 0}
!66 = !{!64, !4, i64 8}
!67 = !{!64, !4, i64 12}
!68 = !{!15, !15, i64 0}
!69 = !{!13, !10, i64 88}
!70 = !{!13, !10, i64 56}
!71 = !{!8, !4, i64 4}
!72 = distinct !{!72, !27}
!73 = distinct !{null}
!74 = distinct !{!74, !27}
!75 = !{ptr @exr_attr_list_remove}
!76 = distinct !{!76, !27, !77, !78}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = distinct !{!79, !27, !78, !77}
!80 = distinct !{!80, !27}
!81 = !{ptr @exr_attr_list_find_by_name}
!82 = !{!50, !10, i64 32}
!83 = !{!50, !10, i64 40}
!84 = !{!50, !10, i64 48}
!85 = !{ptr @create_attr_block}
!86 = distinct !{!86, !27, !77, !78}
!87 = distinct !{!87, !27, !78, !77}
end_hunk_0
