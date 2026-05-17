begin_hunk_0_@uriToStringEngineA:bb.a
  br i1 %.not558668, label %.thread657, label %.thread670

bb.dk:                                            ; preds = %.thread649
  br i1 %i.c, label %.thread657.thread, label %.thread670

.thread670:                                       ; preds = %.thread649.thread786, %.thread649.thread, %bb.dk
  %.32669672 = phi i32 [ %.32, %bb.dk ], [ %i.kw, %.thread649.thread ], [ %i.jx, %.thread649.thread786 ] ; 3 uses
  %i.ln = phi ptr [ %i.lf, %bb.dk ], [ %i.ll, %.thread649.thread ], [ %i.lj, %.thread649.thread786 ]
  %.not559.not = icmp slt i32 %.32669672, %i.f
  br i1 %.not559.not, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %.thread670
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not560 = icmp eq ptr %3, null
  br i1 %.not560, label %.critedge, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.dn:                                            ; preds = %.thread670
  %i.lo = add nsw i32 %.32669672, 1               ; 2 uses
  %i.lp = sext i32 %.32669672 to i64
  %i.lq = getelementptr inbounds i8, ptr %0, i64 %i.lp
  store i8 63, ptr %i.lq, align 1
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !38
  %i.lt = load ptr, ptr %i.ln, align 8, !tbaa !37 ; 2 uses
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv                    ; 2 uses
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = add nsw i32 %i.lo, %i.lx                ; 2 uses
  %.not561.not = icmp slt i32 %i.ly, %2
  br i1 %.not561.not, label %bb.do, label %bb.dp

bb.do:                                            ; preds = %bb.dn
  %i.lz = sext i32 %i.lo to i64
  %i.ma = getelementptr inbounds i8, ptr %0, i64 %i.lz
  %sext563 = shl i64 %i.lw, 32
  %i.mb = ashr exact i64 %sext563, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ma, ptr align 1 %i.lt, i64 %i.mb, i1 false)
  br label %.thread657

bb.dp:                                            ; preds = %bb.dn
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not562 = icmp eq ptr %3, null
  br i1 %.not562, label %.critedge, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.thread657:                                       ; preds = %bb.do, %.thread649.thread, %.thread649
  %.36 = phi i32 [ %i.kw, %.thread649.thread ], [ %.32, %.thread649 ], [ %i.ly, %bb.do ] ; 2 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !39 ; 2 uses
  %.not564 = icmp eq ptr %i.md, null
  br i1 %.not564, label %.thread664, label %bb.dr

.thread657.thread805:                             ; preds = %.thread649.thread792
  %i.me = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !39 ; 2 uses
  %.not564807 = icmp eq ptr %i.mf, null
  br i1 %.not564807, label %.critedge, label %..thread676_crit_edge

.thread657.thread797:                             ; preds = %.thread649.thread786
  %i.mg = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !39
  %.not564799 = icmp eq ptr %i.mh, null
  br i1 %.not564799, label %.thread664.thread811, label %.thread802

.thread657.thread:                                ; preds = %.thread649.thread792, %bb.dk
  %i.mi = phi ptr [ %i.lg, %bb.dk ], [ %i.li, %.thread649.thread792 ]
  %i.mj = load i32, ptr %4, align 4, !tbaa !3
  %i.mk = add nsw i32 %i.mj, 1
  %i.ml = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !38
  %i.mn = ptrtoint ptr %i.mm to i64
  %i.mo = ptrtoint ptr %i.mi to i64
  %i.mp = sub i64 %i.mn, %i.mo
  %i.mq = trunc i64 %i.mp to i32
  %i.mr = add nsw i32 %i.mk, %i.mq                ; 2 uses
  store i32 %i.mr, ptr %4, align 4, !tbaa !3
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !39 ; 2 uses
  %.not564674 = icmp eq ptr %i.mt, null
  br i1 %.not564674, label %.critedge, label %.thread676

bb.dr:                                            ; preds = %.thread657
  br i1 %i.c, label %..thread676_crit_edge, label %.thread802

..thread676_crit_edge:                            ; preds = %.thread657.thread805, %bb.dr
  %i.mu = phi ptr [ %i.md, %bb.dr ], [ %i.mf, %.thread657.thread805 ]
  %.pre = load i32, ptr %4, align 4, !tbaa !3
  br label %.thread676

.thread802:                                       ; preds = %.thread657.thread797, %bb.dr
  %.36801804 = phi i32 [ %.36, %bb.dr ], [ %i.jx, %.thread657.thread797 ] ; 3 uses
  %i.mv = phi ptr [ %i.mc, %bb.dr ], [ %i.mg, %.thread657.thread797 ]
  %.not565.not = icmp slt i32 %.36801804, %i.f
  br i1 %.not565.not, label %bb.du, label %bb.ds

bb.ds:                                            ; preds = %.thread802
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not566 = icmp eq ptr %3, null
  br i1 %.not566, label %.critedge, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.du:                                            ; preds = %.thread802
  %i.mw = add nsw i32 %.36801804, 1               ; 2 uses
  %i.mx = sext i32 %.36801804 to i64
  %i.my = getelementptr inbounds i8, ptr %0, i64 %i.mx
  store i8 35, ptr %i.my, align 1
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !40
  %i.nb = load ptr, ptr %i.mv, align 8, !tbaa !39 ; 2 uses
  %i.nc = ptrtoint ptr %i.na to i64
  %i.nd = ptrtoint ptr %i.nb to i64
  %i.ne = sub i64 %i.nc, %i.nd                    ; 2 uses
  %i.nf = trunc i64 %i.ne to i32
  %i.ng = add nsw i32 %i.mw, %i.nf                ; 2 uses
  %.not567.not = icmp slt i32 %i.ng, %2
  br i1 %.not567.not, label %.thread664.thread680, label %bb.dv

.thread664.thread680:                             ; preds = %bb.du
  %i.nh = sext i32 %i.mw to i64
  %i.ni = getelementptr inbounds i8, ptr %0, i64 %i.nh
  %sext569 = shl i64 %i.ne, 32
  %i.nj = ashr exact i64 %sext569, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ni, ptr align 1 %i.nb, i64 %i.nj, i1 false)
  br label %.thread664.thread811

bb.dv:                                            ; preds = %bb.du
  store i8 0, ptr %0, align 1, !tbaa !16
  %.not568 = icmp eq ptr %3, null
  br i1 %.not568, label %.critedge, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.thread676:                                       ; preds = %..thread676_crit_edge, %.thread657.thread
  %i.nk = phi ptr [ %i.mu, %..thread676_crit_edge ], [ %i.mt, %.thread657.thread ]
  %i.nl = phi i32 [ %.pre, %..thread676_crit_edge ], [ %i.mr, %.thread657.thread ]
  %i.nm = add nsw i32 %i.nl, 1
  %i.nn = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !40
  %i.np = ptrtoint ptr %i.no to i64
  %i.nq = ptrtoint ptr %i.nk to i64
  %i.nr = sub i64 %i.np, %i.nq
  %i.ns = trunc i64 %i.nr to i32
  %i.nt = add nsw i32 %i.nm, %i.ns
  store i32 %i.nt, ptr %4, align 4, !tbaa !3
  br label %.critedge

.thread664:                                       ; preds = %.thread657
  br i1 %i.c, label %.critedge, label %.thread664.thread811

.thread664.thread811:                             ; preds = %.thread657.thread797, %.thread664.thread680, %.thread664
  %.40682 = phi i32 [ %i.ng, %.thread664.thread680 ], [ %.36, %.thread664 ], [ %i.jx, %.thread657.thread797 ] ; 2 uses
  %i.nu = sext i32 %.40682 to i64
  %i.nv = getelementptr inbounds i8, ptr %0, i64 %i.nu
  store i8 0, ptr %i.nv, align 1, !tbaa !16
  %.not570 = icmp eq ptr %3, null
  br i1 %.not570, label %.critedge, label %bb.dx

bb.dx:                                            ; preds = %.thread664.thread811
  %i.nw = add nsw i32 %.40682, 1
  store i32 %i.nw, ptr %3, align 4, !tbaa !3
  br label %.critedge

.critedge:                                        ; preds = %.thread657.thread805, %.thread657.thread, %.thread676, %bb.di, %bb.dj, %bb.dg, %bb.df, %bb.cu, %bb.cr, %bb.cq, %bb.ct, %bb.ce, %bb.cb, %bb.by, %bb.bx, %bb.ca, %bb.cd, %bb.bk, %bb.bj, %bb.bn, %bb.bm, %bb.br, %bb.bi, %bb.bh, %bb.bq, %bb.aa, %bb.x, %bb.w, %bb.z, %bb.p, %bb.l, %bb.k, %bb.o, %bb.dw, %bb.dv, %bb.dq, %bb.dp, %bb.cl, %bb.ck, %bb.am, %bb.aj, %bb.ai, %bb.al, %.thread664, %bb.dx, %.thread664.thread811, %bb.ds, %bb.dt, %bb.dl, %bb.dm, %bb.db, %bb.dc, %bb.s, %bb.t, %bb.f, %bb.g, %bb.c, %bb.d
  %.21 = phi i32 [ 4, %bb.dw ], [ 2, %bb.c ], [ 4, %bb.ds ], [ 4, %bb.dq ], [ 4, %bb.dl ], [ 4, %bb.ck ], [ 0, %.thread664 ], [ 4, %bb.cl ], [ 4, %bb.s ], [ 4, %bb.ce ], [ 4, %bb.cu ], [ 4, %bb.aa ], [ 4, %bb.bk ], [ 4, %bb.am ], [ 4, %bb.p ], [ 4, %bb.f ], [ 2, %bb.d ], [ 4, %bb.g ], [ 4, %bb.t ], [ 4, %bb.dc ], [ 4, %bb.db ], [ 4, %bb.dm ], [ 4, %bb.dt ], [ 0, %.thread664.thread811 ], [ 0, %bb.dx ], [ 4, %bb.al ], [ 4, %bb.ai ], [ 4, %bb.aj ], [ 4, %bb.dp ], [ 4, %bb.dv ], [ 4, %bb.o ], [ 4, %bb.k ], [ 4, %bb.l ], [ 4, %bb.z ], [ 4, %bb.w ], [ 4, %bb.x ], [ 4, %bb.bq ], [ 4, %bb.bh ], [ 4, %bb.bi ], [ 4, %bb.br ], [ 4, %bb.bm ], [ 4, %bb.bn ], [ 4, %bb.bj ], [ 4, %bb.cd ], [ 4, %bb.ca ], [ 4, %bb.bx ], [ 4, %bb.by ], [ 4, %bb.cb ], [ 4, %bb.ct ], [ 4, %bb.cq ], [ 4, %bb.cr ], [ 4, %bb.df ], [ 4, %bb.dg ], [ 4, %bb.dj ], [ 4, %bb.di ], [ 0, %.thread676 ], [ 0, %.thread657.thread ], [ 0, %.thread657.thread805 ]
  ret i32 %.21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 5) i32 @uriToStringA(ptr noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @uriToStringEngineA(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 0, 5) i32 @uriToStringCharsRequiredW(ptr noundef %0, ptr noundef captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @uriToStringEngineW(ptr noundef null, ptr noundef %0, i32 noundef 2147483647, ptr noundef null, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 5) i32 @uriToStringEngineW(ptr noundef writeonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef captures(address_is_null) %4) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 28 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null                     ; 12 uses
  %i.d = icmp eq ptr %4, null
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not572 = icmp eq ptr %3, null
  br i1 %.not572, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.e:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %2, 1
  br i1 %i.e, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %.not571 = icmp eq ptr %3, null
  br i1 %.not571, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.h:                                             ; preds = %bb.e
  %i.f = add nsw i32 %2, -1                       ; 15 uses
  br i1 %i.c, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %4, align 4, !tbaa !3
  %i.g = load ptr, ptr %1, align 8, !tbaa !41     ; 2 uses
  %.not498 = icmp eq ptr %i.g, null
  br i1 %.not498, label %.thread774, label %.thread581

.thread:                                          ; preds = %bb.h
  store i32 0, ptr %0, align 4, !tbaa !3
  %i.h = load ptr, ptr %1, align 8, !tbaa !41     ; 3 uses
  %.not498573 = icmp eq ptr %i.h, null
  br i1 %.not498573, label %bb.q, label %bb.j

bb.j:                                             ; preds = %.thread
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !47
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = lshr exact i64 %i.m, 2
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %.not499.not = icmp sgt i32 %2, %i.o
  br i1 %.not499.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not500 = icmp eq ptr %3, null
  br i1 %.not500, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.m:                                             ; preds = %bb.j
  %sext = shl i64 %i.m, 30                        ; 2 uses
  %i.p = ashr exact i64 %sext, 30
  %i.q = and i64 %i.p, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %i.h, i64 %i.q, i1 false)
  %.not501.not = icmp sgt i32 %i.f, %i.o
  br i1 %.not501.not, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.r = add nsw i32 %i.o, 1
  %i.s = ashr i64 %sext, 32
  %i.t = getelementptr inbounds [4 x i8], ptr %0, i64 %i.s
  store i32 58, ptr %i.t, align 4
  br label %bb.q

bb.o:                                             ; preds = %bb.m
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not502 = icmp eq ptr %3, null
  br i1 %.not502, label %.critedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.q:                                             ; preds = %bb.n, %.thread
  %.3382 = phi i32 [ 0, %.thread ], [ %i.r, %bb.n ] ; 3 uses
  %i.u = tail call i32 @uriIsHostSetW(ptr noundef nonnull %1) #4
  %.not503 = icmp eq i32 %i.u, 0
  br i1 %.not503, label %bb.cw, label %bb.r

.thread774:                                       ; preds = %bb.i
  %i.v = tail call i32 @uriIsHostSetW(ptr noundef nonnull %1) #4
  %.not503776 = icmp eq i32 %i.v, 0
  br i1 %.not503776, label %bb.cw, label %.thread778

.thread581:                                       ; preds = %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !47
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.g to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = lshr exact i64 %i.aa, 2
  %i.ac = trunc i64 %i.ab to i32
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %4, align 4, !tbaa !3
  %i.ae = tail call i32 @uriIsHostSetW(ptr noundef nonnull %1) #4
  %.not503583 = icmp eq i32 %i.ae, 0
  br i1 %.not503583, label %bb.cw, label %.thread778

bb.r:                                             ; preds = %bb.q
  %i.af = add nsw i32 %.3382, 2                   ; 4 uses
  %.not504.not = icmp slt i32 %i.af, %2
  br i1 %.not504.not, label %.thread588, label %bb.s

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not505 = icmp eq ptr %3, null
  br i1 %.not505, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.thread778:                                       ; preds = %.thread774, %.thread581
  %i.ag = load i32, ptr %4, align 4, !tbaa !3
  %i.ah = add nsw i32 %i.ag, 2                    ; 2 uses
  store i32 %i.ah, ptr %4, align 4, !tbaa !3
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !48 ; 2 uses
  %.not506 = icmp eq ptr %i.aj, null
  br i1 %.not506, label %bb.ac, label %bb.ab

.thread588:                                       ; preds = %bb.r
  %i.ak = sext i32 %.3382 to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ak
  store i64 201863462959, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48 ; 3 uses
  %.not506590 = icmp eq ptr %i.an, null
  br i1 %.not506590, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %.thread588
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !49
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 2 uses
  %i.at = lshr exact i64 %i.as, 2
  %i.au = trunc i64 %i.at to i32
  %i.av = add nsw i32 %i.af, %i.au                ; 4 uses
  %.not507.not = icmp slt i32 %i.av, %2
  br i1 %.not507.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aw = sext i32 %i.af to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %0, i64 %i.aw
  %sext509 = shl i64 %i.as, 30
  %i.ay = ashr exact i64 %sext509, 30
  %i.az = and i64 %i.ay, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ax, ptr nonnull align 4 %i.an, i64 %i.az, i1 false)
  %.not510.not = icmp slt i32 %i.av, %i.f
  br i1 %.not510.not, label %bb.y, label %bb.z

bb.w:                                             ; preds = %bb.u
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not508 = icmp eq ptr %3, null
  br i1 %.not508, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.y:                                             ; preds = %bb.v
  %i.ba = add nsw i32 %i.av, 1
  %i.bb = sext i32 %i.av to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %0, i64 %i.bb
  store i32 64, ptr %i.bc, align 4
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not511 = icmp eq ptr %3, null
  br i1 %.not511, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.ab:                                            ; preds = %.thread778
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !49
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %i.aj to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = lshr exact i64 %i.bh, 2
  %i.bj = trunc i64 %i.bi to i32
  %i.bk = add nsw i32 %i.bj, 1
  %i.bl = add nsw i32 %i.bk, %i.ah
  store i32 %i.bl, ptr %4, align 4, !tbaa !3
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.y, %.thread588, %.thread778
  %.7386 = phi i32 [ %i.af, %.thread588 ], [ 0, %.thread778 ], [ %i.ba, %bb.y ], [ 0, %bb.ab ] ; 15 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !50 ; 6 uses
  %.not512 = icmp eq ptr %i.bn, null
  br i1 %.not512, label %bb.be, label %.preheader694

.preheader694:                                    ; preds = %bb.ac
  br i1 %i.c, label %.preheader694.split.us, label %.preheader694.split.preheader

.preheader694.split.preheader:                    ; preds = %.preheader694
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !16  ; 8 uses
  %i.bp = icmp ugt i8 %i.bo, 99                   ; 2 uses
  %i.bq = icmp ugt i8 %i.bo, 9                    ; 2 uses
  %i.br = select i1 %i.bq, i32 2, i32 1
  %i.bs = select i1 %i.bp, i32 3, i32 %i.br       ; 2 uses
  %i.bt = add nsw i32 %i.bs, %.7386               ; 4 uses
  %.not534.not = icmp slt i32 %i.bt, %2
  br i1 %.not534.not, label %bb.ad, label %bb.ai

.preheader694.split.us:                           ; preds = %.preheader694
  %.promoted = load i32, ptr %4, align 4, !tbaa !3
  %i.bu = load i8, ptr %i.bn, align 1, !tbaa !16  ; 2 uses
  %i.bv = icmp ugt i8 %i.bu, 99
  %i.bw = icmp ugt i8 %i.bu, 9
  %i.bx = select i1 %i.bw, i32 3, i32 2
  %i.by = select i1 %i.bv, i32 4, i32 %i.bx
  %i.bz = add nsw i32 %i.by, %.promoted           ; 2 uses
  store i32 %i.bz, ptr %4, align 4, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !16  ; 2 uses
  %i.cc = icmp ugt i8 %i.cb, 99
  %i.cd = icmp ugt i8 %i.cb, 9
  %i.ce = select i1 %i.cd, i32 3, i32 2
  %i.cf = select i1 %i.cc, i32 4, i32 %i.ce
  %i.cg = add nsw i32 %i.cf, %i.bz                ; 2 uses
  store i32 %i.cg, ptr %4, align 4, !tbaa !3
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 2
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !16  ; 2 uses
  %i.cj = icmp ugt i8 %i.ci, 99
  %i.ck = icmp ugt i8 %i.ci, 9
  %i.cl = select i1 %i.ck, i32 3, i32 2
  %i.cm = select i1 %i.cj, i32 4, i32 %i.cl
  %i.cn = add nsw i32 %i.cm, %i.cg                ; 2 uses
  store i32 %i.cn, ptr %4, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %i.bn, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !16  ; 2 uses
  %i.cq = icmp ugt i8 %i.cp, 99
  %i.cr = icmp ugt i8 %i.cp, 9
  %i.cs = select i1 %i.cr, i32 2, i32 1
  %i.ct = select i1 %i.cq, i32 3, i32 %i.cs
  %i.cu = add nsw i32 %i.ct, %i.cn
  store i32 %i.cu, ptr %4, align 4, !tbaa !3
  br label %.thread603

bb.ad:                                            ; preds = %.preheader694.split.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br i1 %i.bp, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cv = udiv i8 %i.bo, 100
  %5 = urem i8 %i.bo, 100
  %6 = udiv i8 %5, 10
  %7 = urem i8 %i.bo, 10
  %8 = insertelement <3 x i8> poison, i8 %i.cv, i64 0
  %9 = insertelement <3 x i8> %8, i8 %6, i64 1
  %10 = insertelement <3 x i8> %9, i8 %7, i64 2
  %11 = or disjoint <3 x i8> %10, splat (i8 48)
  %12 = zext nneg <3 x i8> %11 to <3 x i32>
  store <3 x i32> %12, ptr %i.a, align 16, !tbaa !3
  br label %bb.ak

bb.af:                                            ; preds = %bb.ad
  br i1 %i.bq, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cw = udiv i8 %i.bo, 10
  %i.cx = urem i8 %i.bo, 10
  %i.cy = insertelement <2 x i8> poison, i8 %i.cw, i64 0
  %i.cz = insertelement <2 x i8> %i.cy, i8 %i.cx, i64 1
  %i.da = or disjoint <2 x i8> %i.cz, splat (i8 48)
  %i.db = zext nneg <2 x i8> %i.da to <2 x i32>
  store <2 x i32> %i.db, ptr %i.a, align 16, !tbaa !3
  br label %bb.ak

bb.ah:                                            ; preds = %bb.af
  %i.dc = or disjoint i8 %i.bo, 48
  %i.dd = zext nneg i8 %i.dc to i32
  store i32 %i.dd, ptr %i.a, align 16, !tbaa !3
  br label %bb.ak

bb.ai:                                            ; preds = %.preheader694.split.3, %.preheader694.split.2, %.preheader694.split.1, %.preheader694.split.preheader
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not535 = icmp eq ptr %3, null
  br i1 %.not535, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.ak:                                            ; preds = %bb.ae, %bb.ah, %bb.ag
  %i.de = zext nneg i32 %i.bs to i64              ; 2 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.de
  store i32 0, ptr %i.df, align 4, !tbaa !3
  %i.dg = sext i32 %.7386 to i64
  %i.dh = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dg
  %i.di = shl nuw nsw i64 %i.de, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.dh, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.di, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not537.not = icmp slt i32 %i.bt, %i.f
  br i1 %.not537.not, label %.preheader694.split.1, label %bb.al

bb.al:                                            ; preds = %bb.ay, %bb.as, %bb.ak
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not538 = icmp eq ptr %3, null
  br i1 %.not538, label %.critedge, label %bb.am

bb.am:                                            ; preds = %bb.al
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.preheader694.split.1:                            ; preds = %bb.ak
  %i.dj = add nsw i32 %i.bt, 1                    ; 2 uses
  %i.dk = sext i32 %i.bt to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %0, i64 %i.dk
  store i32 46, ptr %i.dl, align 4
  %i.dm = load ptr, ptr %i.bm, align 8, !tbaa !50
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !16  ; 8 uses
  %i.dp = icmp ugt i8 %i.do, 99                   ; 2 uses
  %i.dq = icmp ugt i8 %i.do, 9                    ; 2 uses
  %i.dr = select i1 %i.dq, i32 2, i32 1
  %i.ds = select i1 %i.dp, i32 3, i32 %i.dr       ; 2 uses
  %i.dt = add nsw i32 %i.ds, %i.dj                ; 4 uses
  %.not534.not.1 = icmp slt i32 %i.dt, %2
  br i1 %.not534.not.1, label %bb.an, label %bb.ai

bb.an:                                            ; preds = %.preheader694.split.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br i1 %i.dp, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  br i1 %i.dq, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.du = or disjoint i8 %i.do, 48
  %i.dv = zext nneg i8 %i.du to i32
  store i32 %i.dv, ptr %i.a, align 16, !tbaa !3
  br label %bb.as

bb.aq:                                            ; preds = %bb.ao
  %i.dw = udiv i8 %i.do, 10
  %i.dx = urem i8 %i.do, 10
  %i.dy = insertelement <2 x i8> poison, i8 %i.dw, i64 0
  %i.dz = insertelement <2 x i8> %i.dy, i8 %i.dx, i64 1
  %i.ea = or disjoint <2 x i8> %i.dz, splat (i8 48)
  %i.eb = zext nneg <2 x i8> %i.ea to <2 x i32>
  store <2 x i32> %i.eb, ptr %i.a, align 16, !tbaa !3
  br label %bb.as

bb.ar:                                            ; preds = %bb.an
  %i.ec = udiv i8 %i.do, 100
  %13 = urem i8 %i.do, 100
  %14 = udiv i8 %13, 10
  %15 = urem i8 %i.do, 10
  %16 = insertelement <3 x i8> poison, i8 %i.ec, i64 0
  %17 = insertelement <3 x i8> %16, i8 %14, i64 1
  %18 = insertelement <3 x i8> %17, i8 %15, i64 2
  %19 = or disjoint <3 x i8> %18, splat (i8 48)
  %20 = zext nneg <3 x i8> %19 to <3 x i32>
  store <3 x i32> %20, ptr %i.a, align 16, !tbaa !3
  br label %bb.as

bb.as:                                            ; preds = %bb.ap, %bb.aq, %bb.ar
  %i.ed = zext nneg i32 %i.ds to i64              ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ed
  store i32 0, ptr %i.ee, align 4, !tbaa !3
  %i.ef = sext i32 %i.dj to i64
  %i.eg = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ef
  %i.eh = shl nuw nsw i64 %i.ed, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.eg, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.eh, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not537.not.1 = icmp slt i32 %i.dt, %i.f
  br i1 %.not537.not.1, label %.preheader694.split.2, label %bb.al

.preheader694.split.2:                            ; preds = %bb.as
  %i.ei = add nsw i32 %i.dt, 1                    ; 2 uses
  %i.ej = sext i32 %i.dt to i64
  %i.ek = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ej
  store i32 46, ptr %i.ek, align 4
  %i.el = load ptr, ptr %i.bm, align 8, !tbaa !50
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 2
  %i.en = load i8, ptr %i.em, align 1, !tbaa !16  ; 8 uses
  %i.eo = icmp ugt i8 %i.en, 99                   ; 2 uses
  %i.ep = icmp ugt i8 %i.en, 9                    ; 2 uses
  %i.eq = select i1 %i.ep, i32 2, i32 1
  %i.er = select i1 %i.eo, i32 3, i32 %i.eq       ; 2 uses
  %i.es = add nsw i32 %i.er, %i.ei                ; 4 uses
  %.not534.not.2 = icmp slt i32 %i.es, %2
  br i1 %.not534.not.2, label %bb.at, label %bb.ai

bb.at:                                            ; preds = %.preheader694.split.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br i1 %i.eo, label %bb.ax, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %i.ep, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.et = or disjoint i8 %i.en, 48
  %i.eu = zext nneg i8 %i.et to i32
  store i32 %i.eu, ptr %i.a, align 16, !tbaa !3
  br label %bb.ay

bb.aw:                                            ; preds = %bb.au
  %i.ev = udiv i8 %i.en, 10
  %i.ew = urem i8 %i.en, 10
  %i.ex = insertelement <2 x i8> poison, i8 %i.ev, i64 0
  %i.ey = insertelement <2 x i8> %i.ex, i8 %i.ew, i64 1
  %i.ez = or disjoint <2 x i8> %i.ey, splat (i8 48)
  %i.fa = zext nneg <2 x i8> %i.ez to <2 x i32>
  store <2 x i32> %i.fa, ptr %i.a, align 16, !tbaa !3
  br label %bb.ay

bb.ax:                                            ; preds = %bb.at
  %i.fb = udiv i8 %i.en, 100
  %21 = urem i8 %i.en, 100
  %22 = udiv i8 %21, 10
  %23 = urem i8 %i.en, 10
  %24 = insertelement <3 x i8> poison, i8 %i.fb, i64 0
  %25 = insertelement <3 x i8> %24, i8 %22, i64 1
  %26 = insertelement <3 x i8> %25, i8 %23, i64 2
  %27 = or disjoint <3 x i8> %26, splat (i8 48)
  %28 = zext nneg <3 x i8> %27 to <3 x i32>
  store <3 x i32> %28, ptr %i.a, align 16, !tbaa !3
  br label %bb.ay

bb.ay:                                            ; preds = %bb.av, %bb.aw, %bb.ax
  %i.fc = zext nneg i32 %i.er to i64              ; 2 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fc
  store i32 0, ptr %i.fd, align 4, !tbaa !3
  %i.fe = sext i32 %i.ei to i64
  %i.ff = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fe
  %i.fg = shl nuw nsw i64 %i.fc, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ff, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.fg, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  %.not537.not.2 = icmp slt i32 %i.es, %i.f
  br i1 %.not537.not.2, label %.preheader694.split.3, label %bb.al

.preheader694.split.3:                            ; preds = %bb.ay
  %i.fh = add nsw i32 %i.es, 1                    ; 2 uses
  %i.fi = sext i32 %i.es to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.fi
  store i32 46, ptr %i.fj, align 4
  %i.fk = load ptr, ptr %i.bm, align 8, !tbaa !50
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 3
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !16  ; 8 uses
  %i.fn = icmp ugt i8 %i.fm, 99                   ; 2 uses
  %i.fo = icmp ugt i8 %i.fm, 9                    ; 2 uses
  %i.fp = select i1 %i.fo, i32 2, i32 1
  %i.fq = select i1 %i.fn, i32 3, i32 %i.fp       ; 2 uses
  %i.fr = add nsw i32 %i.fq, %i.fh                ; 2 uses
  %.not534.not.3 = icmp slt i32 %i.fr, %2
  br i1 %.not534.not.3, label %bb.az, label %bb.ai

bb.az:                                            ; preds = %.preheader694.split.3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  br i1 %i.fn, label %bb.bd, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  br i1 %i.fo, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fs = or disjoint i8 %i.fm, 48
  %i.ft = zext nneg i8 %i.fs to i32
  store i32 %i.ft, ptr %i.a, align 16, !tbaa !3
  br label %.thread603.loopexit712

bb.bc:                                            ; preds = %bb.ba
  %i.fu = udiv i8 %i.fm, 10
  %i.fv = urem i8 %i.fm, 10
  %i.fw = insertelement <2 x i8> poison, i8 %i.fu, i64 0
  %i.fx = insertelement <2 x i8> %i.fw, i8 %i.fv, i64 1
  %i.fy = or disjoint <2 x i8> %i.fx, splat (i8 48)
  %i.fz = zext nneg <2 x i8> %i.fy to <2 x i32>
  store <2 x i32> %i.fz, ptr %i.a, align 16, !tbaa !3
  br label %.thread603.loopexit712

bb.bd:                                            ; preds = %bb.az
  %i.ga = udiv i8 %i.fm, 100
  %29 = urem i8 %i.fm, 100
  %30 = udiv i8 %29, 10
  %31 = urem i8 %i.fm, 10
  %32 = insertelement <3 x i8> poison, i8 %i.ga, i64 0
  %33 = insertelement <3 x i8> %32, i8 %30, i64 1
  %34 = insertelement <3 x i8> %33, i8 %31, i64 2
  %35 = or disjoint <3 x i8> %34, splat (i8 48)
  %36 = zext nneg <3 x i8> %35 to <3 x i32>
  store <3 x i32> %36, ptr %i.a, align 16, !tbaa !3
  br label %.thread603.loopexit712

.thread603.loopexit712:                           ; preds = %bb.bb, %bb.bc, %bb.bd
  %i.gb = zext nneg i32 %i.fq to i64              ; 2 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gb
  store i32 0, ptr %i.gc, align 4, !tbaa !3
  %i.gd = sext i32 %i.fh to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gd
  %i.gf = shl nuw nsw i64 %i.gb, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ge, ptr noundef nonnull align 16 dereferenceable(1) %i.a, i64 %i.gf, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %.thread603

bb.be:                                            ; preds = %bb.ac
  %i.gg = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !51
  %.not513 = icmp eq ptr %i.gh, null
  br i1 %.not513, label %bb.bt, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  br i1 %i.c, label %bb.bs, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not526.not = icmp slt i32 %.7386, %i.f
  br i1 %.not526.not, label %.split.preheader, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not527 = icmp eq ptr %3, null
  br i1 %.not527, label %.critedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.split.preheader:                                 ; preds = %bb.bg
  %i.gi = add nsw i32 %.7386, 1
  %i.gj = sext i32 %.7386 to i64
  %i.gk = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gj
  store i32 91, ptr %i.gk, align 4
  br label %.split

.split:                                           ; preds = %.split.preheader, %bb.bo
  %indvars.iv = phi i64 [ 0, %.split.preheader ], [ %indvars.iv.next, %bb.bo ] ; 4 uses
  %.13392704 = phi i32 [ %i.gi, %.split.preheader ], [ %.16395.ph, %bb.bo ] ; 3 uses
  %i.gl = add nsw i32 %.13392704, 2               ; 4 uses
  %.not530.not = icmp slt i32 %i.gl, %2
  br i1 %.not530.not, label %.thread605, label %bb.bj

bb.bj:                                            ; preds = %.split
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not531 = icmp eq ptr %3, null
  br i1 %.not531, label %.critedge, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

.thread605:                                       ; preds = %.split
  %i.gm = load ptr, ptr %i.gg, align 8, !tbaa !51
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !16
  %i.gp = zext i8 %i.go to i32                    ; 2 uses
  %i.gq = lshr i32 %i.gp, 4
  %i.gr = tail call i32 @uriHexToLetterExW(i32 noundef %i.gq, i32 noundef 0) #4
  %i.gs = and i32 %i.gp, 15
  %i.gt = tail call i32 @uriHexToLetterExW(i32 noundef %i.gs, i32 noundef 0) #4
  %i.gu = sext i32 %.13392704 to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gu ; 2 uses
  store i32 %i.gr, ptr %i.gv, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  store i32 %i.gt, ptr %.sroa.4.0..sroa_idx, align 4
  %i.gw = trunc i64 %indvars.iv to i1
  %i.gx = icmp ne i64 %indvars.iv, 15
  %or.cond15607 = and i1 %i.gx, %i.gw
  br i1 %or.cond15607, label %.thread609, label %bb.bo

.thread609:                                       ; preds = %.thread605
  %.not532.not = icmp slt i32 %i.gl, %i.f
  br i1 %.not532.not, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %.thread609
  %i.gy = add nsw i32 %.13392704, 3
  %i.gz = sext i32 %i.gl to i64
  %i.ha = getelementptr inbounds [4 x i8], ptr %0, i64 %i.gz
  store i32 58, ptr %i.ha, align 4
  br label %bb.bo

bb.bm:                                            ; preds = %.thread609
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not533 = icmp eq ptr %3, null
  br i1 %.not533, label %.critedge, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.bo:                                            ; preds = %bb.bl, %.thread605
  %.16395.ph = phi i32 [ %i.gl, %.thread605 ], [ %i.gy, %bb.bl ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.split706, label %.split, !llvm.loop !52

.split706:                                        ; preds = %bb.bo
  %.not528.not = icmp slt i32 %.16395.ph, %i.f
  br i1 %.not528.not, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.split706
  %i.hb = add nsw i32 %.16395.ph, 1
  %i.hc = sext i32 %.16395.ph to i64
  %i.hd = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hc
  store i32 93, ptr %i.hd, align 4
  br label %.thread603

bb.bq:                                            ; preds = %.split706
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not529 = icmp eq ptr %3, null
  br i1 %.not529, label %.critedge, label %bb.br

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.bs:                                            ; preds = %bb.bf
  %i.he = load i32, ptr %4, align 4, !tbaa !3
  %i.hf = add nsw i32 %i.he, 41
  store i32 %i.hf, ptr %4, align 4, !tbaa !3
  br label %.thread603

bb.bt:                                            ; preds = %bb.be
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !53 ; 2 uses
  %.not514 = icmp eq ptr %i.hh, null
  br i1 %.not514, label %bb.cg, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !54
  %i.hk = ptrtoint ptr %i.hj to i64
  %i.hl = ptrtoint ptr %i.hh to i64
  %i.hm = sub i64 %i.hk, %i.hl                    ; 2 uses
  %i.hn = lshr exact i64 %i.hm, 2
  %i.ho = trunc i64 %i.hn to i32                  ; 2 uses
  br i1 %i.c, label %bb.cf, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.hp = add nsw i32 %.7386, 1                   ; 2 uses
  %.not519.not = icmp slt i32 %.7386, %i.f
  br i1 %.not519.not, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.hq = sext i32 %.7386 to i64
  %i.hr = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hq
  store i32 91, ptr %i.hr, align 4
  %i.hs = add nsw i32 %i.hp, %i.ho                ; 4 uses
  %.not521.not = icmp slt i32 %i.hs, %2
  br i1 %.not521.not, label %bb.bz, label %bb.ca

bb.bx:                                            ; preds = %bb.bv
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not520 = icmp eq ptr %3, null
  br i1 %.not520, label %.critedge, label %bb.by

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.bz:                                            ; preds = %bb.bw
  %i.ht = sext i32 %i.hp to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ht
  %i.hv = load ptr, ptr %i.hg, align 8, !tbaa !53
  %sext523 = shl i64 %i.hm, 30
  %i.hw = ashr exact i64 %sext523, 30
  %i.hx = and i64 %i.hw, -4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.hu, ptr align 4 %i.hv, i64 %i.hx, i1 false)
  %.not524.not = icmp slt i32 %i.hs, %i.f
  br i1 %.not524.not, label %bb.cc, label %bb.cd

bb.ca:                                            ; preds = %bb.bw
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not522 = icmp eq ptr %3, null
  br i1 %.not522, label %.critedge, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %3, align 4, !tbaa !3
  br label %.critedge

bb.cc:                                            ; preds = %bb.bz
  %i.hy = add nsw i32 %i.hs, 1
  %i.hz = sext i32 %i.hs to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %0, i64 %i.hz
  store i32 93, ptr %i.ia, align 4
  br label %.thread603

bb.cd:                                            ; preds = %bb.bz
  store i32 0, ptr %0, align 4, !tbaa !3
  %.not525 = icmp eq ptr %3, null
  br i1 %.not525, label %.critedge, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
end_hunk_0
