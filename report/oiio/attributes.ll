Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/attributes?download=true
inline.NumInlined: 6
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@add_to_list:bb.a

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.aj = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store ptr %i.al, ptr %i.am, align 8, !tbaa !28
  %i.an = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv
  store ptr %i.ap, ptr %i.aq, align 8, !tbaa !28
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 4 uses
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next
  store ptr %i.at, ptr %i.au, align 8, !tbaa !28
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %indvars.iv.next
  store ptr %i.ax, ptr %i.ay, align 8, !tbaa !28
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !74

bb.d:                                             ; preds = %._crit_edge
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !27
  tail call void %i.ba(ptr noundef nonnull %i.ai) #8
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  store ptr %i.q, ptr %i.c, align 8, !tbaa !13
  store ptr %i.x, ptr %i.e, align 8, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.073 = phi ptr [ %i.q, %bb.e ], [ %i.d, %bb.a ]
  %.172 = phi ptr [ %i.x, %bb.e ], [ %i.f, %bb.a ] ; 2 uses
  %i.bb = sext i32 %i.a to i64                    ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.073, i64 %i.bb
  store ptr %2, ptr %i.bc, align 8, !tbaa !28
  %i.bd = getelementptr inbounds [8 x i8], ptr %.172, i64 %i.bb
  store ptr %2, ptr %i.bd, align 8, !tbaa !28
  %i.be = icmp sgt i32 %i.a, 0
  br i1 %i.be, label %.lr.ph14.preheader, label %.thread3

.lr.ph14.preheader:                               ; preds = %bb.f
  %i.bf = zext nneg i32 %i.a to i64
  br label %.lr.ph14

.lr.ph14:                                         ; preds = %.lr.ph14.preheader, %bb.g
  %indvars.iv19 = phi i64 [ %i.bf, %.lr.ph14.preheader ], [ %indvars.iv.next20, %bb.g ] ; 2 uses
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, -1 ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %.172, i64 %indvars.iv.next20 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !28 ; 2 uses
  %i.bi = load ptr, ptr %2, align 8, !tbaa !39
  %i.bj = load ptr, ptr %i.bh, align 8, !tbaa !39
  %i.bk = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bi, ptr noundef nonnull dereferenceable(1) %i.bj) #7
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %.thread3, label %bb.g

bb.g:                                             ; preds = %.lr.ph14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bh, ptr %i.bm, align 8, !tbaa !28
  store ptr %2, ptr %i.bg, align 8, !tbaa !28
  %i.bn = icmp samesign ugt i64 %indvars.iv19, 1
  br i1 %i.bn, label %.lr.ph14, label %.thread3

.thread3:                                         ; preds = %bb.g, %.lr.ph14, %bb.f
  store i32 %i.b, ptr %1, align 8, !tbaa !14
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !31
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
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.br, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.i:                                             ; preds = %.thread3
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.bt, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.j:                                             ; preds = %.thread3
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.k:                                             ; preds = %.thread3
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.bx, i8 0, i64 32, i1 false)
  br label %exr_attr_list_remove.exit

bb.l:                                             ; preds = %.thread3, %.thread3, %.thread3, %.thread3
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i8 0, ptr %i.by, align 8, !tbaa !32
  br label %exr_attr_list_remove.exit

bb.m:                                             ; preds = %.thread3
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double 0.000000e+00, ptr %i.bz, align 8, !tbaa !32
  br label %exr_attr_list_remove.exit

bb.n:                                             ; preds = %.thread3
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 24
  store float 0.000000e+00, ptr %i.ca, align 8, !tbaa !32
  br label %exr_attr_list_remove.exit

bb.o:                                             ; preds = %.thread3
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.p:                                             ; preds = %.thread3
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.cd, align 8, !tbaa !32
  br label %exr_attr_list_remove.exit

bb.q:                                             ; preds = %.thread3
  %i.ce = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.cf, i8 0, i64 28, i1 false)
  br label %exr_attr_list_remove.exit

bb.r:                                             ; preds = %.thread3
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.ch, i8 0, i64 36, i1 false)
  br label %exr_attr_list_remove.exit

bb.s:                                             ; preds = %.thread3
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.cj, i8 0, i64 72, i1 false)
  br label %exr_attr_list_remove.exit

bb.t:                                             ; preds = %.thread3
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cl, i8 0, i64 64, i1 false)
  br label %exr_attr_list_remove.exit

bb.u:                                             ; preds = %.thread3
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.cn, i8 0, i64 64, i1 false)
  br label %exr_attr_list_remove.exit

bb.v:                                             ; preds = %.thread3
  %i.co = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cp, i8 0, i64 24, i1 false)
  br label %exr_attr_list_remove.exit

bb.w:                                             ; preds = %.thread3
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !32
  store i64 0, ptr %i.cr, align 1, !tbaa !9
  br label %exr_attr_list_remove.exit

bb.x:                                             ; preds = %.thread3
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ct, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.y:                                             ; preds = %.thread3
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cv, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.z:                                             ; preds = %.thread3
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.cx, i8 0, i64 9, i1 false)
  br label %exr_attr_list_remove.exit

bb.aa:                                            ; preds = %.thread3
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !32
  store i64 0, ptr %i.cz, align 1, !tbaa !9
  br label %exr_attr_list_remove.exit

bb.ab:                                            ; preds = %.thread3
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !32
  store i64 0, ptr %i.db, align 1, !tbaa !9
  br label %exr_attr_list_remove.exit

bb.ac:                                            ; preds = %.thread3
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !32
  store i64 0, ptr %i.dd, align 1, !tbaa !77
  br label %exr_attr_list_remove.exit

bb.ad:                                            ; preds = %.thread3
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.df, i8 0, i64 16, i1 false)
  br label %exr_attr_list_remove.exit

bb.ae:                                            ; preds = %.thread3
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.dh, i8 0, i64 12, i1 false)
  br label %exr_attr_list_remove.exit

bb.af:                                            ; preds = %.thread3
  %i.di = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.dj, i8 0, i64 12, i1 false)
  br label %exr_attr_list_remove.exit

bb.ag:                                            ; preds = %.thread3
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.dl, i8 0, i64 24, i1 false)
  br label %exr_attr_list_remove.exit

bb.ah:                                            ; preds = %.thread3
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.dn, i8 0, i64 56, i1 false)
  br label %exr_attr_list_remove.exit

bb.ai:                                            ; preds = %.thread3
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !37
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !38
  %i.ds = tail call i32 (ptr, i32, ptr, ...) %i.dp(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.51, ptr noundef %i.dr) #8, !inline_history !75 ; 0 uses
  %i.dt = load i32, ptr %1, align 8, !tbaa !14    ; 6 uses
  %i.du = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.dv = icmp sgt i32 %i.dt, 0
  br i1 %i.dv, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.ai
  %wide.trip.count.i = zext nneg i32 %i.dt to i64 ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.aj, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.aj ] ; 5 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !28
  %i.dy = icmp eq ptr %i.dx, %2
  br i1 %i.dy, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge.i:                                    ; preds = %bb.aj, %bb.ai
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !33
  %i.eb = tail call i32 %i.ea(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.15) #8, !inline_history !78 ; 0 uses
  br label %exr_attr_list_remove.exit

bb.ak:                                            ; preds = %.lr.ph.i
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv.i
  %i.ed = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  store ptr null, ptr %i.ec, align 8, !tbaa !28
  %i.ee = add nsw i32 %i.dt, -1                   ; 2 uses
  %i.ef = icmp sgt i32 %i.ee, %i.ed
  br i1 %i.ef, label %.lr.ph60.preheader.i, label %.lr.ph65.preheader.i

.lr.ph60.preheader.i:                             ; preds = %bb.ak
  %i.eg = shl nuw nsw i64 %indvars.iv.i, 3
  %scevgep.i = getelementptr nuw i8, ptr %i.du, i64 %i.eg ; 2 uses
  %scevgep70.i = getelementptr i8, ptr %scevgep.i, i64 8
  %i.eh = add nsw i32 %i.dt, -2
  %i.ei = sub i32 %i.eh, %i.ed
  %i.ej = zext i32 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 3
  %i.el = add nuw nsw i64 %i.ek, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, ptr noundef nonnull align 8 dereferenceable(1) %scevgep70.i, i64 %i.el, i1 false), !tbaa !28
  br label %.lr.ph65.preheader.i

.lr.ph65.preheader.i:                             ; preds = %.lr.ph60.preheader.i, %bb.ak
  store i32 %i.ee, ptr %1, align 8, !tbaa !14
  %i.em = load ptr, ptr %i.e, align 8, !tbaa !40  ; 6 uses
  %xtraiter35 = and i64 %wide.trip.count.i, 1
  %i.en = icmp eq i32 %i.dt, 1
  br i1 %i.en, label %.lr.ph65.i.epil.preheader, label %.lr.ph65.preheader.i.new

.lr.ph65.preheader.i.new:                         ; preds = %.lr.ph65.preheader.i
  %unroll_iter38 = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph65.i

._crit_edge66.i.unr-lcssa:                        ; preds = %bb.ao
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
  br i1 %lcmp.mod36.not, label %._crit_edge66.i, label %.lr.ph65.i.epil.preheader

.lr.ph65.i.epil.preheader:                        ; preds = %._crit_edge66.i.unr-lcssa, %.lr.ph65.preheader.i
  %indvars.iv76.i.epil.init = phi i64 [ 0, %.lr.ph65.preheader.i ], [ %indvars.iv.next77.i.1, %._crit_edge66.i.unr-lcssa ]
  %.162.i.epil.init = phi i32 [ 0, %.lr.ph65.preheader.i ], [ %.2.i.1, %._crit_edge66.i.unr-lcssa ]
  %lcmp.mod37 = trunc i32 %i.dt to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv76.i.epil.init
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !28 ; 2 uses
  %i.eq = icmp eq ptr %i.ep, %2
  br i1 %i.eq, label %._crit_edge66.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph65.i.epil.preheader
  %i.er = sext i32 %.162.i.epil.init to i64
  %i.es = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.er
  store ptr %i.ep, ptr %i.es, align 8, !tbaa !28
  br label %._crit_edge66.i

._crit_edge66.i:                                  ; preds = %.lr.ph65.i.epil.preheader, %bb.al, %._crit_edge66.i.unr-lcssa
  %i.et = tail call fastcc i32 @attr_destroy(ptr noundef nonnull %0, ptr noundef nonnull %2) ; 0 uses
  br label %exr_attr_list_remove.exit

.lr.ph65.i:                                       ; preds = %bb.ao, %.lr.ph65.preheader.i.new
  %indvars.iv76.i = phi i64 [ 0, %.lr.ph65.preheader.i.new ], [ %indvars.iv.next77.i.1, %bb.ao ] ; 3 uses
  %.162.i = phi i32 [ 0, %.lr.ph65.preheader.i.new ], [ %.2.i.1, %bb.ao ] ; 3 uses
  %niter39 = phi i64 [ 0, %.lr.ph65.preheader.i.new ], [ %niter39.next.1, %bb.ao ]
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv76.i
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !28 ; 2 uses
  %i.ew = icmp eq ptr %i.ev, %2
  br i1 %i.ew, label %.lr.ph65.i.1, label %bb.am

bb.am:                                            ; preds = %.lr.ph65.i
  %i.ex = add nsw i32 %.162.i, 1
  %i.ey = sext i32 %.162.i to i64
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.ey
  store ptr %i.ev, ptr %i.ez, align 8, !tbaa !28
  br label %.lr.ph65.i.1

.lr.ph65.i.1:                                     ; preds = %bb.am, %.lr.ph65.i
  %.2.i = phi i32 [ %.162.i, %.lr.ph65.i ], [ %i.ex, %bb.am ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv76.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !28 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %2
  br i1 %i.fd, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph65.i.1
  %i.fe = add nsw i32 %.2.i, 1
  %i.ff = sext i32 %.2.i to i64
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.ff
  store ptr %i.fc, ptr %i.fg, align 8, !tbaa !28
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %.lr.ph65.i.1
  %.2.i.1 = phi i32 [ %.2.i, %.lr.ph65.i.1 ], [ %i.fe, %bb.an ] ; 2 uses
  %indvars.iv.next77.i.1 = add nuw nsw i64 %indvars.iv76.i, 2 ; 2 uses
  %niter39.next.1 = add i64 %niter39, 2           ; 2 uses
  %niter39.ncmp.1 = icmp eq i64 %niter39.next.1, %unroll_iter38
  br i1 %niter39.ncmp.1, label %._crit_edge66.i.unr-lcssa, label %.lr.ph65.i, !llvm.loop !2

exr_attr_list_remove.exit:                        ; preds = %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %._crit_edge66.i, %._crit_edge.i, %.thread
  %.177 = phi i32 [ %i.v, %.thread ], [ 3, %._crit_edge66.i ], [ 3, %._crit_edge.i ], [ 0, %bb.ah ], [ 0, %bb.ag ], [ 0, %bb.af ], [ 0, %bb.ae ], [ 0, %bb.ad ], [ 0, %bb.ac ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.z ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ], [ 0, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ], [ 0, %bb.n ], [ 0, %bb.m ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.i ], [ 0, %bb.h ]
  ret i32 %.177
}

; Function Attrs: nounwind uwtable
define internal fastcc void @check_attr_handler(ptr noundef nonnull %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !31
  %i.c = icmp eq i32 %i.b, 30
  br i1 %i.c, label %bb.b, label %exr_attr_list_find_by_name.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 4 uses
  %.not48.i = icmp eq ptr %i.f, null
  br i1 %.not48.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %i.f, align 1, !tbaa !32
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.4) #8, !inline_history !79 ; 0 uses
  br label %exr_attr_list_find_by_name.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 4 uses
  %.not50.i = icmp eq ptr %i.m, null
  br i1 %.not50.i, label %exr_attr_list_find_by_name.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.o
  %i.q = icmp sgt i32 %i.n, 0
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.053.i = phi i32 [ %.1.i, %bb.g ], [ %i.n, %bb.f ] ; 2 uses
  %.03852.i = phi ptr [ %.139.i, %bb.g ], [ %i.m, %bb.f ] ; 2 uses
  %i.r = lshr i32 %.053.i, 1                      ; 3 uses
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.03852.i, i64 %i.s ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !39
  %i.w = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull readonly dereferenceable(1) %i.f) #7 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %exr_attr_list_find_by_name.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.y = icmp slt i32 %i.w, 0                     ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.neg.i = xor i32 %i.r, -1
  %i.aa = add nsw i32 %.053.i, %.neg.i
  %.139.i = select i1 %i.y, ptr %i.z, ptr %.03852.i ; 2 uses
  %.1.i = select i1 %i.y, i32 %i.aa, i32 %i.r     ; 2 uses
  %i.ab = icmp sgt i32 %.1.i, 0
  br i1 %i.ab, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.g, %bb.f
  %.038.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %.139.i, %bb.g ] ; 2 uses
  %i.ac = icmp ult ptr %.038.lcssa.i, %i.p
  br i1 %i.ac, label %bb.h, label %exr_attr_list_find_by_name.exit.thread

bb.h:                                             ; preds = %._crit_edge.i
  %i.ad = load ptr, ptr %.038.lcssa.i, align 8, !tbaa !28 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !39
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ae, ptr noundef nonnull readonly dereferenceable(1) %i.f) #7
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %exr_attr_list_find_by_name.exit, label %exr_attr_list_find_by_name.exit.thread

exr_attr_list_find_by_name.exit:                  ; preds = %.lr.ph.i, %bb.h
  %.0 = phi ptr [ %i.ad, %bb.h ], [ %i.u, %.lr.ph.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0, i64 24 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !80
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  store ptr %i.ak, ptr %i.an, align 8, !tbaa !80
  %i.ao = load ptr, ptr %i.ah, align 8, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !81
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !32
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !81
  %i.at = load ptr, ptr %i.ah, align 8, !tbaa !32
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !82
  %i.aw = load ptr, ptr %i.al, align 8, !tbaa !32
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !82
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
  %i.c = load ptr, ptr %6, align 8, !tbaa !28     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !31
  %.not68 = icmp eq i32 %i.e, %3
  br i1 %.not68, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr %6, align 8, !tbaa !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !38
  %i.j = tail call i32 (ptr, i32, ptr, ...) %i.g(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @.str.10, ptr noundef %2, ptr noundef %i.i) #8
  br label %bb.x

bb.f:                                             ; preds = %bb.b
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #7 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.m = load i8, ptr %i.l, align 2, !tbaa !41    ; 2 uses
  %i.n = zext i8 %i.m to i64
  %i.o = icmp ugt i64 %i.k, %i.n
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = zext i8 %i.m to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !37
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
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !37   ; 2 uses
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
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !43 ; 3 uses
  %.not.i = icmp eq i64 %i.k, 0                   ; 2 uses
  %narrow.i = add nuw nsw i64 %i.k, 33
  %.065.i = select i1 %.not.i, i64 32, i64 %narrow.i ; 3 uses
  %.not81.i = icmp eq i64 %i.ad, 0                ; 2 uses
  br i1 %.not81.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = and i64 %.065.i, 7                      ; 2 uses
  %i.af = sub nuw nsw i64 8, %i.ae
  %i.ag = icmp eq i64 %i.ae, 0
  %spec.store.select.i = select i1 %i.ag, i64 0, i64 %i.af ; 2 uses
  %i.ah = add nuw nsw i64 %spec.store.select.i, %.065.i
  %i.ai = add i64 %i.ah, %i.ad
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.069.i = phi i64 [ %spec.store.select.i, %bb.m ], [ 0, %bb.l ]
  %.267.i = phi i64 [ %i.ai, %bb.m ], [ %.065.i, %bb.l ] ; 3 uses
  %i.aj = icmp sgt i32 %4, 0                      ; 2 uses
  br i1 %i.aj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ak = and i64 %.267.i, 7                      ; 2 uses
  %i.al = sub nuw nsw i64 8, %i.ak
  %i.am = icmp eq i64 %i.ak, 0
  %spec.store.select1.i = select i1 %i.am, i64 0, i64 %i.al ; 2 uses
  %i.an = zext nneg i32 %4 to i64
  %i.ao = add i64 %.267.i, %i.an
  %i.ap = add i64 %i.ao, %spec.store.select1.i
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.068.i = phi i64 [ %spec.store.select1.i, %bb.o ], [ 0, %bb.n ]
  %.3.i = phi i64 [ %i.ap, %bb.o ], [ %.267.i, %bb.n ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !48
  %i.as = tail call ptr %i.ar(i64 noundef %.3.i) #8, !inline_history !50 ; 12 uses
  %.not82.i = icmp eq ptr %i.as, null
  br i1 %.not82.i, label %create_attr_block.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 32 ; 4 uses
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = add nuw nsw i64 %i.k, 1                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.at, ptr noundef nonnull readonly align 1 dereferenceable(1) %2, i64 %i.au, i1 false)
  store ptr %i.at, ptr %i.as, align 8, !tbaa !39
  %i.av = trunc nuw i64 %i.k to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i8 %i.av, ptr %i.aw, align 8, !tbaa !34
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.au
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.0.i = phi ptr [ %i.ax, %bb.r ], [ %i.at, %bb.q ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.i, i64 %.069.i ; 3 uses
  br i1 %.not81.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ad
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.i = phi ptr [ %i.ba, %bb.t ], [ %i.ay, %bb.s ]
  %.not83.i = icmp eq ptr %5, null
  br i1 %.not83.i, label %create_attr_block.exit.thread, label %create_attr_block.exit.thread.sink.split

create_attr_block.exit.thread.sink.split:         ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %.2.i, i64 %.068.i
  %.sink = select i1 %i.aj, ptr %i.bb, ptr null
  store ptr %.sink, ptr %5, align 8, !tbaa !47
  br label %create_attr_block.exit.thread

create_attr_block.exit:                           ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !49
  %i.be = tail call i32 %i.bd(ptr noundef nonnull %0, i32 noundef 1) #8, !inline_history !50 ; 2 uses
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %create_attr_block.exit.thread, label %.thread

create_attr_block.exit.thread:                    ; preds = %create_attr_block.exit.thread.sink.split, %bb.u, %create_attr_block.exit
  %i.bg = getelementptr i8, ptr %i.ab, i64 -24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !44
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !tbaa !38
  %i.bj = getelementptr i8, ptr %i.ab, i64 -16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !45
  %i.bl = trunc i32 %i.bk to i8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.as, i64 17
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !35
  %i.bn = getelementptr i8, ptr %i.ab, i64 -12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !46
  %i.bp = getelementptr inbounds nuw i8, ptr %i.as, i64 20
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !31
  %i.bq = tail call fastcc i32 @add_to_list(ptr noundef %0, ptr noundef %1, ptr noundef %i.as) ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.v, label %.thread

bb.v:                                             ; preds = %create_attr_block.exit.thread
  store ptr %i.as, ptr %6, align 8, !tbaa !28
  tail call fastcc void @check_attr_handler(ptr noundef %0, ptr noundef nonnull %i.as)
  br label %bb.x

.thread:                                          ; preds = %create_attr_block.exit, %create_attr_block.exit.thread
  %.078 = phi i32 [ %i.bq, %create_attr_block.exit.thread ], [ %i.be, %create_attr_block.exit ] ; 2 uses
  %.not67 = icmp eq ptr %5, null
  br i1 %.not67, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.thread
  store ptr null, ptr %5, align 8, !tbaa !47
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w, %.thread, %bb.c, %bb.d, %bb.a, %bb.k, %bb.j, %bb.g, %bb.e
  %.058 = phi i32 [ %i.j, %bb.e ], [ 2, %bb.a ], [ 0, %bb.d ], [ %i.t, %bb.g ], [ %i.y, %bb.j ], [ %i.z, %bb.k ], [ %i.a, %bb.c ], [ %.078, %.thread ], [ %.078, %bb.w ], [ 0, %bb.v ]
  ret i32 %.058
}

; Function Attrs: nounwind uwtable
define hidden i32 @exr_attr_list_add_static_name(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef captures(address_is_null) %6) local_unnamed_addr #3 {
end_hunk_0
begin_hunk_1_@exr_attr_list_remove:bb.a
  %scevgep = getelementptr nuw i8, ptr %i.i, i64 %i.u
  %i.v = getelementptr i8, ptr %i.i, i64 %i.u
  %scevgep70 = getelementptr i8, ptr %i.v, i64 8
  %i.w = add nsw i32 %i.g, -2
  %i.x = trunc i64 %indvars.iv to i32
  %i.y = sub i32 %i.w, %i.x
  %i.z = zext i32 %i.y to i64
  %i.aa = shl nuw nsw i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %scevgep70, i64 %i.ab, i1 false), !tbaa !28
  br label %.lr.ph65.preheader

.lr.ph65.preheader:                               ; preds = %bb.h, %.lr.ph60.preheader
  store i32 %i.s, ptr %1, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !40 ; 6 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ae = icmp eq i32 %i.g, 1
  br i1 %i.ae, label %.lr.ph65.epil.preheader, label %.lr.ph65.preheader.new

.lr.ph65.preheader.new:                           ; preds = %.lr.ph65.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph65

._crit_edge66.unr-lcssa:                          ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge66, label %.lr.ph65.epil.preheader

.lr.ph65.epil.preheader:                          ; preds = %._crit_edge66.unr-lcssa, %.lr.ph65.preheader
  %indvars.iv76.epil.init = phi i64 [ 0, %.lr.ph65.preheader ], [ %indvars.iv.next77.1, %._crit_edge66.unr-lcssa ]
  %.162.epil.init = phi i32 [ 0, %.lr.ph65.preheader ], [ %.2.1, %._crit_edge66.unr-lcssa ]
  %lcmp.mod90 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv76.epil.init
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %2
  br i1 %i.ah, label %._crit_edge66, label %bb.i

bb.i:                                             ; preds = %.lr.ph65.epil.preheader
  %i.ai = sext i32 %.162.epil.init to i64
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ai
  store ptr %i.ag, ptr %i.aj, align 8, !tbaa !28
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %.lr.ph65.epil.preheader, %bb.i, %._crit_edge66.unr-lcssa
  %i.ak = tail call fastcc i32 @attr_destroy(ptr noundef %0, ptr noundef nonnull %2)
  br label %bb.m

.lr.ph65:                                         ; preds = %bb.l, %.lr.ph65.preheader.new
  %indvars.iv76 = phi i64 [ 0, %.lr.ph65.preheader.new ], [ %indvars.iv.next77.1, %bb.l ] ; 3 uses
  %.162 = phi i32 [ 0, %.lr.ph65.preheader.new ], [ %.2.1, %bb.l ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph65.preheader.new ], [ %niter.next.1, %bb.l ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv76
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !28 ; 2 uses
  %i.an = icmp eq ptr %i.am, %2
  br i1 %i.an, label %.lr.ph65.1, label %bb.j

bb.j:                                             ; preds = %.lr.ph65
  %i.ao = add nsw i32 %.162, 1
  %i.ap = sext i32 %.162 to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.ap
  store ptr %i.am, ptr %i.aq, align 8, !tbaa !28
  br label %.lr.ph65.1

.lr.ph65.1:                                       ; preds = %.lr.ph65, %bb.j
  %.2 = phi i32 [ %.162, %.lr.ph65 ], [ %i.ao, %bb.j ] ; 3 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv76
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !28 ; 2 uses
  %i.au = icmp eq ptr %i.at, %2
  br i1 %i.au, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph65.1
  %i.av = add nsw i32 %.2, 1
  %i.aw = sext i32 %.2 to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.aw
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !28
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph65.1
  %.2.1 = phi i32 [ %.2, %.lr.ph65.1 ], [ %i.av, %bb.k ] ; 2 uses
  %indvars.iv.next77.1 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge66.unr-lcssa, label %.lr.ph65, !llvm.loop !2

bb.m:                                             ; preds = %bb.a, %._crit_edge66, %._crit_edge, %bb.e, %bb.c
  %.047 = phi i32 [ %i.p, %._crit_edge ], [ %i.ak, %._crit_edge66 ], [ %i.f, %bb.e ], [ %i.c, %bb.c ], [ 2, %bb.a ]
  ret i32 %.047
}

declare i32 @exr_attr_chlist_destroy(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @exr_attr_float_vector_destroy(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @exr_attr_preview_destroy(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @exr_attr_string_destroy(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @exr_attr_string_vector_destroy(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i32 @exr_attr_opaquedata_destroy(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

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

!llvm.module.flags = !{!3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !29}
!1 = distinct !{!1, !29}
!2 = distinct !{!2, !29}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"any p2 pointer", !10, i64 0}
!12 = !{!"exr_attribute_list", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 16}
!13 = !{!12, !11, i64 8}
!14 = !{!12, !8, i64 0}
!15 = !{!"p1 omnipotent char", !10, i64 0}
!16 = !{!"", !8, i64 0, !8, i64 4, !15, i64 8}
!17 = !{!"float", !7, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = !{!"", !8, i64 0, !8, i64 4}
!20 = !{!"", !19, i64 0, !19, i64 8}
!21 = !{!"p1 int", !10, i64 0}
!22 = !{!"short", !7, i64 0}
!23 = !{!"_priv_exr_part_t", !8, i64 0, !8, i64 4, !12, i64 8, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !10, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !10, i64 136, !20, i64 144, !20, i64 160, !8, i64 176, !8, i64 180, !8, i64 184, !17, i64 188, !8, i64 192, !8, i64 196, !21, i64 200, !21, i64 208, !21, i64 216, !21, i64 224, !18, i64 232, !22, i64 240, !22, i64 242, !8, i64 244, !18, i64 248, !7, i64 256}
!24 = !{!"p1 _ZTS16_priv_exr_part_t", !10, i64 0}
!25 = !{!"p2 _ZTS16_priv_exr_part_t", !11, i64 0}
!26 = !{!"_priv_exr_context_t", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3, !7, i64 4, !7, i64 5, !7, i64 6, !7, i64 7, !16, i64 8, !16, i64 24, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !17, i64 124, !10, i64 128, !10, i64 136, !10, i64 144, !18, i64 152, !10, i64 160, !10, i64 168, !18, i64 176, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !23, i64 200, !24, i64 464, !25, i64 472, !12, i64 480, !7, i64 504, !7, i64 544, !7, i64 545, !7, i64 546, !8, i64 548}
!27 = !{!26, !10, i64 96}
!28 = !{!10, !10, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"", !15, i64 0, !15, i64 8, !7, i64 16, !7, i64 17, !7, i64 18, !8, i64 20, !7, i64 24}
!31 = !{!30, !8, i64 20}
!32 = !{!7, !7, i64 0}
!33 = !{!26, !10, i64 64}
!34 = !{!30, !7, i64 16}
!35 = !{!30, !7, i64 17}
!36 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!37 = !{!26, !10, i64 72}
!38 = !{!30, !15, i64 8}
!39 = !{!30, !15, i64 0}
!40 = !{!12, !11, i64 16}
!41 = !{!26, !7, i64 2}
!42 = !{!"_internal_exr_attr_map", !15, i64 0, !8, i64 8, !8, i64 12, !18, i64 16}
!43 = !{!42, !18, i64 16}
!44 = !{!42, !15, i64 0}
!45 = !{!42, !8, i64 8}
!46 = !{!42, !8, i64 12}
!47 = !{!15, !15, i64 0}
!48 = !{!26, !10, i64 88}
!49 = !{!26, !10, i64 56}
!50 = !{ptr @create_attr_block}
!51 = distinct !{!51, !29}
!52 = distinct !{!52, !29}
!53 = distinct !{!53, !29}
!54 = distinct !{!54, !73}
!55 = distinct !{!55, !73}
!56 = distinct !{!56, !29}
!57 = !{!18, !18, i64 0}
!58 = !{!"", !8, i64 0, !8, i64 4, !10, i64 8}
!59 = !{!58, !8, i64 0}
!60 = !{!58, !10, i64 8}
!61 = !{!"", !16, i64 0, !8, i64 16, !7, i64 20, !7, i64 21, !8, i64 24, !8, i64 28}
!62 = !{!61, !8, i64 0}
!63 = !{!"p1 float", !10, i64 0}
!64 = !{!"", !8, i64 0, !8, i64 4, !63, i64 8}
!65 = !{!64, !8, i64 0}
!66 = !{!"", !8, i64 0, !8, i64 4, !18, i64 8, !15, i64 16}
!67 = !{!66, !8, i64 0}
!68 = !{!66, !8, i64 4}
!69 = !{!16, !8, i64 0}
!70 = !{!36, !10, i64 16}
!71 = !{!36, !8, i64 0}
!72 = !{!36, !10, i64 24}
!73 = !{!"llvm.loop.unroll.disable"}
!74 = distinct !{!74, !29}
!75 = distinct !{null}
!76 = !{!12, !8, i64 4}
!77 = !{!17, !17, i64 0}
!78 = !{ptr @exr_attr_list_remove}
!79 = !{ptr @exr_attr_list_find_by_name}
!80 = !{!36, !10, i64 32}
!81 = !{!36, !10, i64 40}
!82 = !{!36, !10, i64 48}
end_hunk_1
