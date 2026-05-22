inline.NumInlined: 358
inline.NumDeleted: 87
begin_hunk_0_@sre_search:bb.a
  store i32 -1, ptr %i.lq, align 8, !tbaa !86
  store i32 -1, ptr %i.lr, align 4, !tbaa !85
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.cz
  %.5.us.us.i75 = phi ptr [ %i.me, %bb.de ], [ %.4163.us.us.i, %bb.cz ]
  %.1140.us.us.i = phi i64 [ %i.ke, %bb.de ], [ %.0139.us.us.i, %bb.cz ]
  %i.mf = getelementptr [4 x i8], ptr %i.kk, i64 %.1140.us.us.i
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !7
  %i.mh = zext i32 %i.mg to i64
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.db
  %.6.us.us.i76 = phi ptr [ %i.ma, %bb.db ], [ %.5.us.us.i75, %bb.df ] ; 3 uses
  %.2141.us.us.i = phi i64 [ %i.lz, %bb.db ], [ %i.mh, %bb.df ] ; 2 uses
  %.not200.us.us.i = icmp eq i64 %.2141.us.us.i, 0
  br i1 %.not200.us.us.i, label %.split282.us.us.i, label %bb.cz, !llvm.loop !247

.split282.us.us.i:                                ; preds = %bb.dg
  %i.mi = icmp ult ptr %.6.us.us.i76, %i.f
  br i1 %i.mi, label %.lr.ph.split.us.i, label %sre_ucs1_search.exit, !llvm.loop !248

.lr.ph.split.i:                                   ; preds = %.lr.ph.i67, %.split282.i
  %.2161292.i = phi ptr [ %.6.i71, %.split282.i ], [ %i.d, %.lr.ph.i67 ]
  %i.mj = load i32, ptr %i.ki, align 4, !tbaa !7
  br label %bb.dh

bb.dh:                                            ; preds = %bb.di, %.lr.ph.split.i
  %.3162.i = phi ptr [ %.2161292.i, %.lr.ph.split.i ], [ %i.mk, %bb.di ] ; 2 uses
  %i.mk = getelementptr i8, ptr %.3162.i, i64 4   ; 3 uses
  %i.ml = load i32, ptr %.3162.i, align 4, !tbaa !7
  %.not192.i = icmp eq i32 %i.ml, %i.mj
  %.not193.i = icmp ult ptr %i.mk, %i.f           ; 2 uses
  br i1 %.not192.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  br i1 %.not193.i, label %bb.dh, label %sre_ucs1_search.exit, !llvm.loop !246

bb.dj:                                            ; preds = %bb.dh
  br i1 %.not193.i, label %.split.i70, label %sre_ucs1_search.exit

.split.i70:                                       ; preds = %bb.dj
  store i32 0, ptr %i.ln, align 4, !tbaa !92
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dp, %.split.i70
  %.4163.i = phi ptr [ %i.mk, %.split.i70 ], [ %.6.i71, %bb.dp ] ; 5 uses
  %.0139.i = phi i64 [ 1, %.split.i70 ], [ %.2141.i, %bb.dp ] ; 3 uses
  %i.mm = load i32, ptr %.4163.i, align 4, !tbaa !7
  %i.mn = getelementptr [4 x i8], ptr %i.ki, i64 %.0139.i
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !7
  %i.mp = icmp eq i32 %i.mm, %i.mo
  br i1 %i.mp, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  %i.mq = add i64 %.0139.i, 1                     ; 2 uses
  %.not194.i = icmp eq i64 %i.mq, %i.ke
  br i1 %.not194.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.mr = getelementptr i8, ptr %.4163.i, i64 4   ; 2 uses
  %.not199.i73 = icmp ult ptr %i.mr, %i.f
  br i1 %.not199.i73, label %bb.dp, label %sre_ucs1_search.exit

bb.dn:                                            ; preds = %bb.dl
  %i.ms = getelementptr [4 x i8], ptr %.4163.i, i64 %i.lo
  store ptr %i.ms, ptr %i.c, align 8, !tbaa !78
  %i.mt = getelementptr [4 x i8], ptr %.4163.i, i64 %.neg195.reass.i
  store ptr %i.mt, ptr %0, align 8, !tbaa !81
  br label %sre_ucs1_search.exit

bb.do:                                            ; preds = %bb.dk
  %i.mu = getelementptr [4 x i8], ptr %i.kk, i64 %.0139.i
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !7
  %i.mw = zext i32 %i.mv to i64
  br label %bb.dp

bb.dp:                                            ; preds = %bb.do, %bb.dm
  %.6.i71 = phi ptr [ %i.mr, %bb.dm ], [ %.4163.i, %bb.do ] ; 3 uses
  %.2141.i = phi i64 [ %i.mq, %bb.dm ], [ %i.mw, %bb.do ] ; 2 uses
  %.not200.i72 = icmp eq i64 %.2141.i, 0
  br i1 %.not200.i72, label %.split282.i, label %bb.dk, !llvm.loop !247

.split282.i:                                      ; preds = %bb.dp
  %i.mx = icmp ult ptr %.6.i71, %i.f
  br i1 %i.mx, label %.lr.ph.split.i, label %sre_ucs1_search.exit, !llvm.loop !248

bb.dq:                                            ; preds = %bb.co
  %i.my = and i32 %.fr.i63, 4
  %.not187.i = icmp eq i32 %i.my, 0
  %i.mz = getelementptr i8, ptr %1, i64 20        ; 2 uses
  %i.na = getelementptr i8, ptr %1, i64 4
  %i.nb = load i32, ptr %i.na, align 4, !tbaa !7
  %i.nc = add i32 %i.nb, 1
  %i.nd = zext i32 %i.nc to i64
  %i.ne = getelementptr [4 x i8], ptr %1, i64 %i.nd ; 2 uses
  %.not188260.i = icmp eq ptr %i.mz, null
  %.not188.i = or i1 %.not188260.i, %.not187.i
  br i1 %.not188.i, label %.thread254.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.nf = getelementptr i8, ptr %0, i64 148
  store i32 0, ptr %i.nf, align 4, !tbaa !92
  %i.ng = icmp ult ptr %i.d, %i.f
  br i1 %i.ng, label %.lr.ph296.lr.ph.i, label %sre_ucs1_search.exit

.lr.ph296.lr.ph.i:                                ; preds = %bb.dr
  %i.nh = getelementptr i8, ptr %0, i64 160
  %i.ni = getelementptr i8, ptr %0, i64 156
  br label %.lr.ph296.i

.lr.ph296.i:                                      ; preds = %.lr.ph296.i.backedge, %.lr.ph296.lr.ph.i
  %.9295.i = phi ptr [ %i.d, %.lr.ph296.lr.ph.i ], [ %.9295.i.be, %.lr.ph296.i.backedge ] ; 5 uses
  %i.nj = load i32, ptr %.9295.i, align 4, !tbaa !7
  %i.nk = tail call fastcc i32 @sre_ucs4_charset(ptr noundef nonnull %i.mz, i32 noundef %i.nj)
  %.not189.i = icmp eq i32 %i.nk, 0
  br i1 %.not189.i, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %.lr.ph296.i
  %i.nl = getelementptr i8, ptr %.9295.i, i64 4   ; 2 uses
  %i.nm = icmp ult ptr %i.nl, %i.f
  br i1 %i.nm, label %.lr.ph296.i.backedge, label %sre_ucs1_search.exit

.lr.ph296.i.backedge:                             ; preds = %bb.ds, %bb.du
  %.9295.i.be = phi ptr [ %i.nl, %bb.ds ], [ %i.no, %bb.du ]
  br label %.lr.ph296.i, !llvm.loop !249

bb.dt:                                            ; preds = %.lr.ph296.i
  store ptr %.9295.i, ptr %i.c, align 8, !tbaa !78
  store ptr %.9295.i, ptr %0, align 8, !tbaa !81
  %i.nn = tail call fastcc i64 @sre_ucs4_match(ptr noundef nonnull %0, ptr noundef %i.ne, i32 noundef 0) ; 2 uses
  %.not191.i = icmp eq i64 %i.nn, 0
  br i1 %.not191.i, label %bb.du, label %sre_ucs1_search.exit

bb.du:                                            ; preds = %bb.dt
  %i.no = getelementptr i8, ptr %.9295.i, i64 4   ; 2 uses
  store i32 -1, ptr %i.nh, align 8, !tbaa !86
  store i32 -1, ptr %i.ni, align 4, !tbaa !85
  %i.np = icmp ult ptr %i.no, %i.f
  br i1 %i.np, label %.lr.ph296.i.backedge, label %sre_ucs1_search.exit

.thread254.i:                                     ; preds = %bb.dq, %bb.cp, %bb.cl
  %.0142223239253.i = phi ptr [ %1, %bb.cl ], [ %i.ne, %bb.dq ], [ %i.kp, %bb.cp ] ; 4 uses
  %.1158216241252.i = phi ptr [ %i.f, %bb.cl ], [ %.0157.i, %bb.dq ], [ %.0157.i, %bb.cp ] ; 4 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !81
  %i.nq = tail call fastcc i64 @sre_ucs4_match(ptr noundef nonnull %0, ptr noundef %.0142223239253.i, i32 noundef 1) ; 2 uses
  %i.nr = getelementptr i8, ptr %0, i64 148
  store i32 0, ptr %i.nr, align 4, !tbaa !92
  %i.ns = icmp eq i64 %i.nq, 0
  br i1 %i.ns, label %bb.dv, label %sre_ucs1_search.exit

bb.dv:                                            ; preds = %.thread254.i
  %i.nt = load i32, ptr %.0142223239253.i, align 4, !tbaa !7
  %i.nu = icmp eq i32 %i.nt, 6
  br i1 %i.nu, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.nv = getelementptr i8, ptr %.0142223239253.i, i64 4
  %i.nw = load i32, ptr %i.nv, align 4, !tbaa !7
  switch i32 %i.nw, label %bb.dy [
    i32 0, label %bb.dx
    i32 2, label %bb.dx
  ]

bb.dx:                                            ; preds = %bb.dw, %bb.dw
  store ptr %.1158216241252.i, ptr %0, align 8, !tbaa !81
  store ptr %.1158216241252.i, ptr %i.c, align 8, !tbaa !78
  br label %sre_ucs1_search.exit

bb.dy:                                            ; preds = %bb.dw, %bb.dv
  %i.nx = icmp ult ptr %i.d, %.1158216241252.i
  br i1 %i.nx, label %.lr.ph300.i, label %sre_ucs1_search.exit

.lr.ph300.i:                                      ; preds = %bb.dy
  %i.ny = getelementptr i8, ptr %0, i64 160
  %i.nz = getelementptr i8, ptr %0, i64 156
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dz, %.lr.ph300.i
  %.10299.i = phi ptr [ %i.d, %.lr.ph300.i ], [ %i.oa, %bb.dz ]
  %i.oa = getelementptr i8, ptr %.10299.i, i64 4  ; 4 uses
  store i32 -1, ptr %i.ny, align 8, !tbaa !86
  store i32 -1, ptr %i.nz, align 4, !tbaa !85
  store ptr %i.oa, ptr %0, align 8, !tbaa !81
  store ptr %i.oa, ptr %i.c, align 8, !tbaa !78
  %i.ob = tail call fastcc i64 @sre_ucs4_match(ptr noundef nonnull %0, ptr noundef nonnull %.0142223239253.i, i32 noundef 0) ; 2 uses
  %i.oc = icmp eq i64 %i.ob, 0
  %i.od = icmp ult ptr %i.oa, %.1158216241252.i
  %i.oe = select i1 %i.oc, i1 %i.od, i1 false
  br i1 %i.oe, label %bb.dz, label %sre_ucs1_search.exit, !llvm.loop !250

sre_ucs1_search.exit:                             ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %.lr.ph.i23, %.split298.i, %bb.bt, %bb.bs, %bb.bw, %.split298.us.us.i, %bb.bi, %bb.bh, %bb.bn, %bb.bm, %bb.bl, %bb.ce, %bb.cd, %bb.cc, %bb.cj, %bb.l, %bb.k, %bb.j, %bb.i, %.lr.ph.i, %.split301.i, %bb.ab, %bb.aa, %bb.ae, %.split301.us.us.i, %bb.q, %bb.p, %bb.v, %bb.u, %bb.t, %bb.am, %bb.al, %bb.ak, %bb.ar, %bb.cu, %bb.ct, %bb.cs, %bb.cr, %.split282.i, %bb.dj, %bb.di, %bb.dm, %.split282.us.us.i, %bb.cy, %bb.cx, %bb.dd, %bb.dc, %bb.db, %bb.du, %bb.dt, %bb.ds, %bb.dz, %bb.dy, %bb.dx, %.thread254.i, %bb.dr, %bb.dn, %bb.cv, %..critedge.loopexit269_crit_edge278.i, %bb.cq, %bb.cn, %bb.ck, %bb.ci, %bb.ch, %.thread267.i, %bb.cb, %bb.bx, %.preheader.i26, %bb.be, %..critedge.loopexit284_crit_edge293.i, %bb.az, %bb.ay, %bb.av, %bb.as, %bb.aq, %bb.ap, %.thread271.i, %bb.aj, %bb.af, %.preheader.i, %bb.m, %..critedge.loopexit287_crit_edge296.i, %bb.h, %bb.g, %bb.d, %bb.b
  %.0 = phi i64 [ %i.is, %bb.cd ], [ %i.do, %bb.al ], [ 0, %bb.ap ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.l ], [ 0, %bb.h ], [ %i.dr, %.thread271.i ], [ 0, %.lr.ph.i23 ], [ 0, %bb.g ], [ 0, %.preheader.i ], [ 1, %bb.dn ], [ %i.nq, %.thread254.i ], [ 0, %bb.m ], [ 0, %bb.dm ], [ 0, %bb.aq ], [ 0, %bb.cu ], [ 0, %bb.aj ], [ 1, %..critedge.loopexit287_crit_edge296.i ], [ %i.ob, %bb.dz ], [ 1, %..critedge.loopexit269_crit_edge278.i ], [ 1, %bb.af ], [ 0, %bb.bw ], [ 0, %bb.cq ], [ %i.fy, %bb.bb ], [ 0, %.split282.i ], [ 0, %.split298.us.us.i ], [ 0, %bb.bs ], [ 0, %.split282.us.us.i ], [ 0, %bb.di ], [ 0, %bb.ct ], [ %i.ec, %bb.ar ], [ 0, %bb.ch ], [ 0, %bb.as ], [ 0, %bb.av ], [ 0, %bb.p ], [ 0, %bb.az ], [ %i.iv, %.thread267.i ], [ 0, %bb.bl ], [ 0, %bb.ay ], [ 0, %.preheader.i26 ], [ 0, %bb.dy ], [ 0, %bb.t ], [ 0, %bb.be ], [ %i.md, %bb.dc ], [ 0, %bb.ci ], [ 0, %bb.bh ], [ 0, %bb.cb ], [ 1, %..critedge.loopexit284_crit_edge293.i ], [ 0, %bb.ds ], [ 0, %bb.cv ], [ 1, %bb.bx ], [ 0, %.lr.ph.i ], [ 0, %.split298.i ], [ 0, %bb.aa ], [ 0, %bb.cx ], [ 0, %.split301.us.us.i ], [ 0, %bb.dr ], [ 0, %bb.ae ], [ 0, %.split301.i ], [ 0, %bb.k ], [ %i.jg, %bb.cj ], [ 0, %bb.dx ], [ 0, %bb.ck ], [ 0, %bb.cn ], [ 0, %bb.du ], [ %i.nn, %bb.dt ], [ 0, %bb.db ], [ 0, %bb.dd ], [ 0, %bb.cy ], [ 0, %bb.dj ], [ %i.lb, %bb.cs ], [ 0, %bb.cr ], [ 0, %bb.am ], [ 0, %bb.ak ], [ 0, %bb.v ], [ %i.bz, %bb.u ], [ 0, %bb.q ], [ 0, %bb.ab ], [ 0, %bb.i ], [ %i.ay, %bb.j ], [ 0, %bb.cc ], [ 0, %bb.ce ], [ 0, %bb.bn ], [ %i.hd, %bb.bm ], [ 0, %bb.bi ], [ 0, %bb.bt ], [ 0, %bb.ba ], [ 0, %bb.bc ], [ 0, %bb.bd ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @pattern_subx(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, i64 noundef range(i64 0, 2) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.SRE_STATE, align 8          ; 26 uses
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %7 = alloca %struct.Py_buffer, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.d = tail call i32 @PyCallable_Check(ptr noundef %2) #13
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.f = icmp ugt i32 %i.e, -1073741825
  br i1 %i.f, label %_Py_NewRef.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i32 %i.e, 1
  store i32 %i.g, ptr %2, align 8, !tbaa !26
  br label %_Py_NewRef.exit

bb.d:                                             ; preds = %bb.a
  store ptr null, ptr %7, align 8, !tbaa !48
  %i.h = call fastcc ptr @getstring(ptr noundef %2, ptr noundef %i.a, ptr noundef nonnull %i.b, ptr noundef %i.c, ptr noundef nonnull %7) ; 2 uses
  %.not105 = icmp eq ptr %i.h, null
  br i1 %.not105, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.c, align 4, !tbaa !7
  %i.j = icmp eq i32 %i.i, 1
  %i.k = load i64, ptr %i.a, align 8, !tbaa !70   ; 2 uses
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.l = call ptr @memchr(ptr noundef nonnull %i.h, i32 noundef 92, i64 noundef %i.k) #15
  %i.m = icmp eq ptr %i.l, null
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.n = call i64 @PyUnicode_FindChar(ptr noundef %2, i32 noundef 92, i64 noundef 0, i64 noundef %i.k, i32 noundef 1) #13
  %i.o = icmp eq i64 %i.n, -1
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  call void @PyErr_Clear() #13
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.077.shrunk = phi i1 [ %i.m, %bb.f ], [ %i.o, %bb.g ], [ false, %bb.h ]
  %i.p = load ptr, ptr %7, align 8, !tbaa !48
  %.not106 = icmp eq ptr %i.p, null
  br i1 %.not106, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @PyBuffer_Release(ptr noundef nonnull %7) #13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.077.shrunk, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.q = load i32, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.r = icmp ugt i32 %i.q, -1073741825
  br i1 %i.r, label %_Py_NewRef.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = add nuw i32 %i.q, 1
  store i32 %i.s, ptr %2, align 8, !tbaa !26
  br label %_Py_NewRef.exit

bb.n:                                             ; preds = %bb.k
  %i.t = call fastcc ptr @compile_template(ptr noundef %0, ptr noundef %1, ptr noundef %2) ; 7 uses
  %.not107 = icmp eq ptr %i.t, null
  br i1 %.not107, label %_Py_NewRef.exit162, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.u = getelementptr i8, ptr %i.t, i64 16
  %.val = load i64, ptr %i.u, align 8, !tbaa !37
  %i.v = icmp eq i64 %.val, 0
  br i1 %i.v, label %bb.p, label %_Py_NewRef.exit

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr i8, ptr %i.t, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !62   ; 5 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !26   ; 2 uses
  %i.z = icmp ugt i32 %i.y, -1073741825
  br i1 %i.z, label %_Py_NewRef.exit163, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = add nuw i32 %i.y, 1
  store i32 %i.aa, ptr %i.x, align 8, !tbaa !26
  br label %_Py_NewRef.exit163

_Py_NewRef.exit163:                               ; preds = %bb.p, %bb.q
  %i.ab = load i32, ptr %i.t, align 8, !tbaa !26  ; 2 uses
  %.not.i146 = icmp sgt i32 %i.ab, -1
  br i1 %.not.i146, label %bb.r, label %_Py_NewRef.exit

bb.r:                                             ; preds = %_Py_NewRef.exit163
  %i.ac = add nsw i32 %i.ab, -1                   ; 2 uses
  store i32 %i.ac, ptr %i.t, align 8, !tbaa !26
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.s, label %_Py_NewRef.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %i.t) #13
  br label %_Py_NewRef.exit

_Py_NewRef.exit:                                  ; preds = %bb.s, %bb.r, %_Py_NewRef.exit163, %bb.m, %bb.l, %bb.c, %bb.b, %bb.o
  %.293 = phi ptr [ %2, %bb.m ], [ %i.t, %bb.o ], [ %2, %bb.c ], [ %2, %bb.b ], [ %2, %bb.l ], [ %i.x, %_Py_NewRef.exit163 ], [ %i.x, %bb.r ], [ %i.x, %bb.s ] ; 18 uses
  %.not113 = phi i1 [ true, %bb.m ], [ false, %bb.o ], [ false, %bb.c ], [ false, %bb.b ], [ true, %bb.l ], [ true, %_Py_NewRef.exit163 ], [ true, %bb.r ], [ true, %bb.s ]
  %i.ae = phi i1 [ false, %bb.m ], [ true, %bb.o ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.l ], [ false, %_Py_NewRef.exit163 ], [ false, %bb.r ], [ false, %bb.s ]
  %i.af = call fastcc ptr @state_init(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %3, i64 noundef 0, i64 noundef 9223372036854775807)
  %.not108 = icmp eq ptr %i.af, null
  br i1 %.not108, label %bb.t, label %bb.w

bb.t:                                             ; preds = %_Py_NewRef.exit
  %i.ag = load i32, ptr %.293, align 8, !tbaa !26 ; 2 uses
  %.not.i144 = icmp sgt i32 %i.ag, -1
  br i1 %.not.i144, label %bb.u, label %_Py_NewRef.exit162

bb.u:                                             ; preds = %bb.t
  %i.ah = add nsw i32 %i.ag, -1                   ; 2 uses
  store i32 %i.ah, ptr %.293, align 8, !tbaa !26
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.v, label %_Py_NewRef.exit162

bb.v:                                             ; preds = %bb.u
  call void @_Py_Dealloc(ptr noundef nonnull %.293) #13
  br label %_Py_NewRef.exit162

bb.w:                                             ; preds = %_Py_NewRef.exit
  %i.aj = call ptr @PyList_New(i64 noundef 0) #13 ; 19 uses
  %.not109 = icmp eq ptr %i.aj, null
  br i1 %.not109, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.ak = load i32, ptr %.293, align 8, !tbaa !26 ; 2 uses
  %.not.i142 = icmp sgt i32 %i.ak, -1
  br i1 %.not.i142, label %bb.y, label %Py_DECREF.exit143

bb.y:                                             ; preds = %bb.x
  %i.al = add nsw i32 %i.ak, -1                   ; 2 uses
  store i32 %i.al, ptr %.293, align 8, !tbaa !26
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.z, label %Py_DECREF.exit143

bb.z:                                             ; preds = %bb.y
  call void @_Py_Dealloc(ptr noundef nonnull %.293) #13
  br label %Py_DECREF.exit143

Py_DECREF.exit143:                                ; preds = %bb.x, %bb.y, %bb.z
  call fastcc void @state_fini(ptr noundef nonnull %6)
  br label %_Py_NewRef.exit162

bb.aa:                                            ; preds = %bb.w
  store i64 0, ptr %i.a, align 8, !tbaa !70
  %.not110 = icmp eq i64 %4, 0
  %i.an = icmp sgt i64 %4, -1
  br i1 %i.an, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.aa
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 156
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 160
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 200
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 176 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 184
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.au = getelementptr i8, ptr %1, i64 88
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 140
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.ay = getelementptr i8, ptr %3, i64 8
  %i.az = getelementptr i8, ptr %3, i64 16
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 148
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph, %bb.bf
  %8 = phi i64 [ 0, %.lr.ph ], [ %i.db, %bb.bf ]
  %.081194 = phi i64 [ 0, %.lr.ph ], [ %i.bu, %bb.bf ] ; 6 uses
  store i32 -1, ptr %i.ao, align 4, !tbaa !85
  store i32 -1, ptr %i.ap, align 8, !tbaa !86
  store ptr null, ptr %i.aq, align 8, !tbaa !87
  %i.bb = load ptr, ptr %i.ar, align 8, !tbaa !88 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i, label %state_reset.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @PyMem_Free(ptr noundef nonnull %i.bb) #13
  store ptr null, ptr %i.ar, align 8, !tbaa !88
  br label %state_reset.exit

state_reset.exit:                                 ; preds = %bb.ab, %bb.ac
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, i8 0, i64 16, i1 false)
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !78
  store ptr %i.bc, ptr %6, align 8, !tbaa !81
  %i.bd = call fastcc i64 @sre_search(ptr noundef nonnull %6, ptr noundef %i.au) ; 2 uses
  %i.be = call ptr @PyErr_Occurred() #13
  %.not111 = icmp eq ptr %i.be, null
  br i1 %.not111, label %bb.ad, label %pattern_error.exit

bb.ad:                                            ; preds = %state_reset.exit
  %i.bf = icmp slt i64 %i.bd, 1
  br i1 %i.bf, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  switch i64 %i.bd, label %bb.ah [
    i64 0, label %.loopexit
    i64 -3, label %bb.af
    i64 -9, label %bb.ag
    i64 -10, label %pattern_error.exit
  ]

bb.af:                                            ; preds = %bb.ae
  %i.bg = load ptr, ptr @PyExc_RecursionError, align 8, !tbaa !27
  call void @PyErr_SetString(ptr noundef %i.bg, ptr noundef nonnull @.str.69) #13
  br label %pattern_error.exit

bb.ag:                                            ; preds = %bb.ae
  %i.bh = call ptr @PyErr_NoMemory() #13          ; 0 uses
  br label %pattern_error.exit

bb.ah:                                            ; preds = %bb.ae
  %i.bi = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  call void @PyErr_SetString(ptr noundef %i.bi, ptr noundef nonnull @.str.70) #13
  br label %pattern_error.exit

bb.ai:                                            ; preds = %bb.ad
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !78
  %i.bk = load ptr, ptr %i.av, align 8, !tbaa !89 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = load i32, ptr %i.aw, align 4, !tbaa !82
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = sdiv i64 %i.bn, %i.bp                   ; 4 uses
  %i.br = load ptr, ptr %6, align 8, !tbaa !81
  %i.bs = ptrtoint ptr %i.br to i64
  %i.bt = sub i64 %i.bs, %i.bm
  %i.bu = sdiv i64 %i.bt, %i.bp                   ; 2 uses
  %i.bv = icmp slt i64 %.081194, %i.bq
  br i1 %i.bv, label %bb.aj, label %bb.as

bb.aj:                                            ; preds = %bb.ai
  %i.bw = load i32, ptr %i.ax, align 8, !tbaa !90
  %.not.i164 = icmp eq i32 %i.bw, 0
  br i1 %.not.i164, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val.i = load ptr, ptr %i.ay, align 8, !tbaa !28
  %i.bx = icmp eq ptr %.val.i, @PyBytes_Type
  %i.by = icmp eq i64 %.081194, 0
  %or.cond.i = and i1 %i.by, %i.bx
  br i1 %or.cond.i, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %bb.ak
  %.val14.i = load i64, ptr %i.az, align 8, !tbaa !37
  %i.bz = icmp eq i64 %i.bq, %.val14.i
  br i1 %i.bz, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ca = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.cb = icmp ugt i32 %i.ca, -1073741825
  br i1 %i.cb, label %getslice.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cc = add nuw i32 %i.ca, 1
  store i32 %i.cc, ptr %3, align 8, !tbaa !26
  br label %getslice.exit.thread

bb.ao:                                            ; preds = %bb.al, %bb.ak
  %i.cd = getelementptr i8, ptr %i.bk, i64 %.081194
  %i.ce = sub i64 %i.bq, %.081194
  %i.cf = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.cd, i64 noundef %i.ce) #13
  br label %getslice.exit

bb.ap:                                            ; preds = %bb.aj
  %i.cg = call ptr @PyUnicode_Substring(ptr noundef %3, i64 noundef %.081194, i64 noundef %i.bq) #13
  br label %getslice.exit

getslice.exit:                                    ; preds = %bb.ao, %bb.ap
  %.0.i = phi ptr [ %i.cg, %bb.ap ], [ %i.cf, %bb.ao ] ; 2 uses
  %.not112 = icmp eq ptr %.0.i, null
  br i1 %.not112, label %pattern_error.exit, label %getslice.exit.thread

getslice.exit.thread:                             ; preds = %bb.an, %bb.am, %getslice.exit
  %.0.i183 = phi ptr [ %.0.i, %getslice.exit ], [ %3, %bb.am ], [ %3, %bb.an ] ; 4 uses
  %i.ch = call i32 @PyList_Append(ptr noundef nonnull %i.aj, ptr noundef nonnull %.0.i183) #13
  %i.ci = load i32, ptr %.0.i183, align 8, !tbaa !26 ; 2 uses
  %.not.i140 = icmp sgt i32 %i.ci, -1
  br i1 %.not.i140, label %bb.aq, label %Py_DECREF.exit141

bb.aq:                                            ; preds = %getslice.exit.thread
  %i.cj = add nsw i32 %i.ci, -1                   ; 2 uses
  store i32 %i.cj, ptr %.0.i183, align 8, !tbaa !26
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %bb.ar, label %Py_DECREF.exit141

bb.ar:                                            ; preds = %bb.aq
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i183) #13
  br label %Py_DECREF.exit141

Py_DECREF.exit141:                                ; preds = %getslice.exit.thread, %bb.aq, %bb.ar
  %i.cl = icmp slt i32 %i.ch, 0
  br i1 %i.cl, label %pattern_error.exit, label %bb.as

bb.as:                                            ; preds = %Py_DECREF.exit141, %bb.ai
  br i1 %.not113, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cm = call fastcc ptr @pattern_new_match(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %6, i64 noundef 1) ; 6 uses
  %.not114 = icmp eq ptr %i.cm, null
  br i1 %.not114, label %pattern_error.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %i.ae, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.cn = call fastcc ptr @expand_template(ptr noundef nonnull %.293, ptr noundef nonnull %i.cm)
  br label %bb.ax

bb.aw:                                            ; preds = %bb.au
  %i.co = call ptr @PyObject_CallOneArg(ptr noundef nonnull %.293, ptr noundef nonnull %i.cm) #13
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.074 = phi ptr [ %i.cn, %bb.av ], [ %i.co, %bb.aw ] ; 2 uses
  %i.cp = load i32, ptr %i.cm, align 8, !tbaa !26 ; 2 uses
  %.not.i138 = icmp sgt i32 %i.cp, -1
  br i1 %.not.i138, label %bb.ay, label %Py_DECREF.exit139

bb.ay:                                            ; preds = %bb.ax
  %i.cq = add nsw i32 %i.cp, -1                   ; 2 uses
  store i32 %i.cq, ptr %i.cm, align 8, !tbaa !26
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %bb.az, label %Py_DECREF.exit139

bb.az:                                            ; preds = %bb.ay
  call void @_Py_Dealloc(ptr noundef nonnull %i.cm) #13
  br label %Py_DECREF.exit139

Py_DECREF.exit139:                                ; preds = %bb.ax, %bb.ay, %bb.az
  %.not115 = icmp eq ptr %.074, null
  br i1 %.not115, label %pattern_error.exit, label %_Py_NewRef.exit165

bb.ba:                                            ; preds = %bb.as
  %i.cs = load i32, ptr %.293, align 8, !tbaa !26 ; 2 uses
  %i.ct = icmp ugt i32 %i.cs, -1073741825
  br i1 %i.ct, label %_Py_NewRef.exit165, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cu = add nuw i32 %i.cs, 1
  store i32 %i.cu, ptr %.293, align 8, !tbaa !26
  br label %_Py_NewRef.exit165

_Py_NewRef.exit165:                               ; preds = %bb.bb, %bb.ba, %Py_DECREF.exit139
  %.175 = phi ptr [ %.074, %Py_DECREF.exit139 ], [ %.293, %bb.ba ], [ %.293, %bb.bb ] ; 5 uses
  %.not116 = icmp eq ptr %.175, @_Py_NoneStruct
  br i1 %.not116, label %bb.bf, label %bb.bc

bb.bc:                                            ; preds = %_Py_NewRef.exit165
  %i.cv = call i32 @PyList_Append(ptr noundef nonnull %i.aj, ptr noundef nonnull %.175) #13
  %i.cw = load i32, ptr %.175, align 8, !tbaa !26 ; 2 uses
  %.not.i136 = icmp sgt i32 %i.cw, -1
  br i1 %.not.i136, label %bb.bd, label %Py_DECREF.exit137

bb.bd:                                            ; preds = %bb.bc
  %i.cx = add nsw i32 %i.cw, -1                   ; 2 uses
  store i32 %i.cx, ptr %.175, align 8, !tbaa !26
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.be, label %Py_DECREF.exit137

bb.be:                                            ; preds = %bb.bd
  call void @_Py_Dealloc(ptr noundef nonnull %.175) #13
  br label %Py_DECREF.exit137

Py_DECREF.exit137:                                ; preds = %bb.bc, %bb.bd, %bb.be
  %i.cz = icmp slt i32 %i.cv, 0
  br i1 %i.cz, label %pattern_error.exit, label %bb.bf

bb.bf:                                            ; preds = %Py_DECREF.exit137, %_Py_NewRef.exit165
  %i.da = load i64, ptr %i.a, align 8, !tbaa !70
  %i.db = add i64 %i.da, 1                        ; 4 uses
  store i64 %i.db, ptr %i.a, align 8, !tbaa !70
  %i.dc = load ptr, ptr %6, align 8, !tbaa !81    ; 2 uses
  %i.dd = load ptr, ptr %i.at, align 8, !tbaa !78
  %i.de = icmp eq ptr %i.dc, %i.dd
  %i.df = zext i1 %i.de to i32
  store i32 %i.df, ptr %i.ba, align 4, !tbaa !92
  store ptr %i.dc, ptr %i.at, align 8, !tbaa !78
  %i.dg = icmp slt i64 %i.db, %4
  %i.dh = select i1 %.not110, i1 true, i1 %i.dg
  br i1 %i.dh, label %bb.ab, label %.loopexit, !llvm.loop !251

.loopexit:                                        ; preds = %bb.bf, %bb.aa, %bb.ae
  %.081192 = phi i64 [ %.081194, %bb.ae ], [ 0, %bb.aa ], [ %i.bu, %bb.bf ] ; 5 uses
  %9 = phi i64 [ %8, %bb.ae ], [ 0, %bb.aa ], [ %i.db, %bb.bf ]
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 128
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !97 ; 4 uses
  %i.dk = icmp slt i64 %.081192, %i.dj
  br i1 %i.dk, label %bb.bg, label %bb.bp

bb.bg:                                            ; preds = %.loopexit
  %i.dl = getelementptr inbounds nuw i8, ptr %6, i64 136
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !90
  %i.dn = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !89
  %.not.i166 = icmp eq i32 %i.dm, 0
  br i1 %.not.i166, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dp = getelementptr i8, ptr %3, i64 8
  %.val.i167 = load ptr, ptr %i.dp, align 8, !tbaa !28
  %i.dq = icmp eq ptr %.val.i167, @PyBytes_Type
  %i.dr = icmp eq i64 %.081192, 0
  %or.cond.i168 = and i1 %i.dr, %i.dq
  br i1 %or.cond.i168, label %bb.bi, label %bb.bl

bb.bi:                                            ; preds = %bb.bh
  %i.ds = getelementptr i8, ptr %3, i64 16
  %.val14.i170 = load i64, ptr %i.ds, align 8, !tbaa !37
  %i.dt = icmp eq i64 %i.dj, %.val14.i170
  br i1 %i.dt, label %bb.bj, label %bb.bl

bb.bj:                                            ; preds = %bb.bi
  %i.du = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.dv = icmp ugt i32 %i.du, -1073741825
  br i1 %i.dv, label %getslice.exit171.thread, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dw = add nuw i32 %i.du, 1
  store i32 %i.dw, ptr %3, align 8, !tbaa !26
  br label %getslice.exit171.thread

bb.bl:                                            ; preds = %bb.bi, %bb.bh
  %i.dx = getelementptr i8, ptr %i.do, i64 %.081192
  %i.dy = sub i64 %i.dj, %.081192
  %i.dz = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.dx, i64 noundef %i.dy) #13
  br label %getslice.exit171

bb.bm:                                            ; preds = %bb.bg
  %i.ea = call ptr @PyUnicode_Substring(ptr noundef %3, i64 noundef %.081192, i64 noundef %i.dj) #13
  br label %getslice.exit171

getslice.exit171:                                 ; preds = %bb.bl, %bb.bm
  %.0.i169 = phi ptr [ %i.ea, %bb.bm ], [ %i.dz, %bb.bl ] ; 2 uses
  %.not117 = icmp eq ptr %.0.i169, null
  br i1 %.not117, label %pattern_error.exit, label %getslice.exit171.thread

getslice.exit171.thread:                          ; preds = %bb.bk, %bb.bj, %getslice.exit171
  %.0.i169186 = phi ptr [ %.0.i169, %getslice.exit171 ], [ %3, %bb.bj ], [ %3, %bb.bk ] ; 4 uses
  %i.eb = call i32 @PyList_Append(ptr noundef nonnull %i.aj, ptr noundef nonnull %.0.i169186) #13
  %i.ec = load i32, ptr %.0.i169186, align 8, !tbaa !26 ; 2 uses
  %.not.i134 = icmp sgt i32 %i.ec, -1
  br i1 %.not.i134, label %bb.bn, label %Py_DECREF.exit135

bb.bn:                                            ; preds = %getslice.exit171.thread
  %i.ed = add nsw i32 %i.ec, -1                   ; 2 uses
  store i32 %i.ed, ptr %.0.i169186, align 8, !tbaa !26
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.bo, label %Py_DECREF.exit135

bb.bo:                                            ; preds = %bb.bn
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i169186) #13
  br label %Py_DECREF.exit135

Py_DECREF.exit135:                                ; preds = %getslice.exit171.thread, %bb.bn, %bb.bo
  %i.ef = icmp slt i32 %i.eb, 0
  br i1 %i.ef, label %pattern_error.exit, label %bb.bp

bb.bp:                                            ; preds = %Py_DECREF.exit135, %.loopexit
  call fastcc void @state_fini(ptr noundef nonnull %6)
  %i.eg = load i32, ptr %.293, align 8, !tbaa !26 ; 2 uses
  %.not.i132 = icmp sgt i32 %i.eg, -1
  br i1 %.not.i132, label %bb.bq, label %Py_DECREF.exit133

bb.bq:                                            ; preds = %bb.bp
  %i.eh = add nsw i32 %i.eg, -1                   ; 2 uses
  store i32 %i.eh, ptr %.293, align 8, !tbaa !26
  %i.ei = icmp eq i32 %i.eh, 0
  br i1 %i.ei, label %bb.br, label %Py_DECREF.exit133

bb.br:                                            ; preds = %bb.bq
  call void @_Py_Dealloc(ptr noundef nonnull %.293) #13
  br label %Py_DECREF.exit133

Py_DECREF.exit133:                                ; preds = %bb.bp, %bb.bq, %bb.br
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 136 ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !90
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !89
  %.not.i172 = icmp eq i32 %i.ek, 0
  br i1 %.not.i172, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %Py_DECREF.exit133
  %i.en = getelementptr i8, ptr %3, i64 8
  %.val.i173 = load ptr, ptr %i.en, align 8, !tbaa !28
  %i.eo = icmp eq ptr %.val.i173, @PyBytes_Type
  br i1 %i.eo, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.ep = getelementptr i8, ptr %3, i64 16
  %.val14.i176 = load i64, ptr %i.ep, align 8, !tbaa !37
  %i.eq = icmp eq i64 %.val14.i176, 0
  br i1 %i.eq, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.er = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.es = icmp ugt i32 %i.er, -1073741825
  br i1 %i.es, label %getslice.exit177.thread, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.et = add nuw i32 %i.er, 1
  store i32 %i.et, ptr %3, align 8, !tbaa !26
  br label %getslice.exit177.thread

bb.bw:                                            ; preds = %bb.bt, %bb.bs
  %i.eu = call ptr @PyBytes_FromStringAndSize(ptr noundef %i.em, i64 noundef 0) #13
  br label %getslice.exit177

bb.bx:                                            ; preds = %Py_DECREF.exit133
  %i.ev = call ptr @PyUnicode_Substring(ptr noundef %3, i64 noundef 0, i64 noundef 0) #13
  br label %getslice.exit177

getslice.exit177:                                 ; preds = %bb.bw, %bb.bx
  %.0.i175 = phi ptr [ %i.ev, %bb.bx ], [ %i.eu, %bb.bw ] ; 2 uses
  %.not118 = icmp eq ptr %.0.i175, null
  br i1 %.not118, label %bb.by, label %getslice.exit177.thread

bb.by:                                            ; preds = %getslice.exit177
  %i.ew = load i32, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %.not.i130 = icmp sgt i32 %i.ew, -1
  br i1 %.not.i130, label %bb.bz, label %_Py_NewRef.exit162

bb.bz:                                            ; preds = %bb.by
  %i.ex = add nsw i32 %i.ew, -1                   ; 2 uses
  store i32 %i.ex, ptr %i.aj, align 8, !tbaa !26
  %i.ey = icmp eq i32 %i.ex, 0
  br i1 %i.ey, label %bb.ca, label %_Py_NewRef.exit162

bb.ca:                                            ; preds = %bb.bz
  call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #13
  br label %_Py_NewRef.exit162

getslice.exit177.thread:                          ; preds = %bb.bv, %bb.bu, %getslice.exit177
  %.0.i175189 = phi ptr [ %.0.i175, %getslice.exit177 ], [ %3, %bb.bu ], [ %3, %bb.bv ] ; 8 uses
  %i.ez = getelementptr i8, ptr %i.aj, i64 16
  %.val161 = load i64, ptr %i.ez, align 8, !tbaa !37
  %i.fa = icmp eq i64 %.val161, 0
  br i1 %i.fa, label %bb.cb, label %bb.ce

bb.cb:                                            ; preds = %getslice.exit177.thread
  %i.fb = load i32, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %.not.i128 = icmp sgt i32 %i.fb, -1
  br i1 %.not.i128, label %bb.cc, label %Py_DECREF.exit129

bb.cc:                                            ; preds = %bb.cb
  %i.fc = add nsw i32 %i.fb, -1                   ; 2 uses
  store i32 %i.fc, ptr %i.aj, align 8, !tbaa !26
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.cd, label %Py_DECREF.exit129

bb.cd:                                            ; preds = %bb.cc
  call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #13
  br label %Py_DECREF.exit129

bb.ce:                                            ; preds = %getslice.exit177.thread
  %i.fe = load i32, ptr %i.ej, align 8, !tbaa !90
  %.not119 = icmp eq i32 %i.fe, 0
  br i1 %.not119, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ff = call ptr @PyBytes_Join(ptr noundef nonnull %.0.i175189, ptr noundef nonnull %i.aj) #13
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.fg = call ptr @PyUnicode_Join(ptr noundef nonnull %.0.i175189, ptr noundef nonnull %i.aj) #13
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.2 = phi ptr [ %i.ff, %bb.cf ], [ %i.fg, %bb.cg ] ; 2 uses
  %i.fh = load i32, ptr %.0.i175189, align 8, !tbaa !26 ; 2 uses
  %.not.i126 = icmp sgt i32 %i.fh, -1
  br i1 %.not.i126, label %bb.ci, label %Py_DECREF.exit127

bb.ci:                                            ; preds = %bb.ch
  %i.fi = add nsw i32 %i.fh, -1                   ; 2 uses
  store i32 %i.fi, ptr %.0.i175189, align 8, !tbaa !26
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %bb.cj, label %Py_DECREF.exit127

bb.cj:                                            ; preds = %bb.ci
  call void @_Py_Dealloc(ptr noundef nonnull %.0.i175189) #13
  br label %Py_DECREF.exit127

Py_DECREF.exit127:                                ; preds = %bb.ch, %bb.ci, %bb.cj
  %i.fk = load i32, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %.not.i124 = icmp sgt i32 %i.fk, -1
  br i1 %.not.i124, label %bb.ck, label %Py_DECREF.exit125

bb.ck:                                            ; preds = %Py_DECREF.exit127
  %i.fl = add nsw i32 %i.fk, -1                   ; 2 uses
  store i32 %i.fl, ptr %i.aj, align 8, !tbaa !26
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.cl, label %Py_DECREF.exit125

bb.cl:                                            ; preds = %bb.ck
  call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #13
  br label %Py_DECREF.exit125

Py_DECREF.exit125:                                ; preds = %Py_DECREF.exit127, %bb.ck, %bb.cl
  %.not120 = icmp eq ptr %.2, null
  br i1 %.not120, label %_Py_NewRef.exit162, label %Py_DECREF.exit129

Py_DECREF.exit129:                                ; preds = %bb.cd, %bb.cc, %bb.cb, %Py_DECREF.exit125
  %.3 = phi ptr [ %.2, %Py_DECREF.exit125 ], [ %.0.i175189, %bb.cb ], [ %.0.i175189, %bb.cc ], [ %.0.i175189, %bb.cd ] ; 2 uses
  %.not121 = icmp eq i64 %5, 0
  br i1 %.not121, label %_Py_NewRef.exit162, label %bb.cm

bb.cm:                                            ; preds = %Py_DECREF.exit129
  %i.fn = call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.73, ptr noundef nonnull %.3, i64 noundef %9) #13
  br label %_Py_NewRef.exit162

pattern_error.exit:                               ; preds = %Py_DECREF.exit137, %Py_DECREF.exit139, %bb.at, %Py_DECREF.exit141, %getslice.exit, %state_reset.exit, %bb.ae, %bb.ah, %bb.ag, %bb.af, %Py_DECREF.exit135, %getslice.exit171
  %i.fo = load i32, ptr %i.aj, align 8, !tbaa !26 ; 2 uses
  %.not.i122 = icmp sgt i32 %i.fo, -1
  br i1 %.not.i122, label %bb.cn, label %Py_DECREF.exit123

bb.cn:                                            ; preds = %pattern_error.exit
  %i.fp = add nsw i32 %i.fo, -1                   ; 2 uses
  store i32 %i.fp, ptr %i.aj, align 8, !tbaa !26
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.co, label %Py_DECREF.exit123

bb.co:                                            ; preds = %bb.cn
  call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #13
  br label %Py_DECREF.exit123

Py_DECREF.exit123:                                ; preds = %pattern_error.exit, %bb.cn, %bb.co
  call fastcc void @state_fini(ptr noundef nonnull %6)
  %i.fr = load i32, ptr %.293, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp sgt i32 %i.fr, -1
  br i1 %.not.i, label %bb.cp, label %_Py_NewRef.exit162

bb.cp:                                            ; preds = %Py_DECREF.exit123
  %i.fs = add nsw i32 %i.fr, -1                   ; 2 uses
  store i32 %i.fs, ptr %.293, align 8, !tbaa !26
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.cq, label %_Py_NewRef.exit162

bb.cq:                                            ; preds = %bb.cp
  call void @_Py_Dealloc(ptr noundef nonnull %.293) #13
  br label %_Py_NewRef.exit162

_Py_NewRef.exit162:                               ; preds = %bb.cq, %bb.cp, %Py_DECREF.exit123, %bb.ca, %bb.bz, %bb.by, %bb.v, %bb.u, %bb.t, %bb.n, %Py_DECREF.exit129, %Py_DECREF.exit125, %bb.cm, %Py_DECREF.exit143
  %.1 = phi ptr [ null, %bb.ca ], [ %i.fn, %bb.cm ], [ null, %Py_DECREF.exit125 ], [ %.3, %Py_DECREF.exit129 ], [ null, %bb.v ], [ null, %Py_DECREF.exit143 ], [ null, %bb.n ], [ null, %bb.t ], [ null, %bb.u ], [ null, %bb.by ], [ null, %bb.bz ], [ null, %Py_DECREF.exit123 ], [ null, %bb.cp ], [ null, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  ret ptr %.1
}

declare i32 @PyCallable_Check(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #9

declare i64 @PyUnicode_FindChar(ptr noundef, i32 noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @PyErr_Clear() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @compile_template(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !24   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %Py_XDECREF.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyImport_ImportModuleAttrString(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75) #13 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !27   ; 4 uses
  store ptr %i.e, ptr %i.b, align 8, !tbaa !27
  %.not.i49 = icmp eq ptr %i.g, null
  br i1 %.not.i49, label %Py_XDECREF.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.g, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp sgt i32 %i.h, -1
  br i1 %.not.i.i, label %bb.e, label %Py_XDECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8, !tbaa !26
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.f, label %Py_XDECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.g) #13
  br label %Py_XDECREF.exit

Py_XDECREF.exit:                                  ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a
  %.031 = phi ptr [ %i.c, %bb.a ], [ %i.e, %bb.c ], [ %i.e, %bb.d ], [ %i.e, %bb.e ], [ %i.e, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store ptr %1, ptr %i.a, align 16, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %2, ptr %i.k, align 8, !tbaa !27
  %i.l = call ptr @PyObject_Vectorcall(ptr noundef nonnull %.031, ptr noundef nonnull %i.a, i64 noundef 2, ptr noundef null) #13 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %Py_DECREF.exit43.thread52

bb.g:                                             ; preds = %Py_XDECREF.exit
  %i.n = load ptr, ptr @PyExc_TypeError, align 8, !tbaa !27
  %i.o = call i32 @PyErr_ExceptionMatches(ptr noundef %i.n) #13
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %Py_DECREF.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val = load ptr, ptr %i.p, align 8, !tbaa !28  ; 2 uses
  %i.q = getelementptr i8, ptr %.val, i64 168
  %.val46 = load i64, ptr %i.q, align 8, !tbaa !29
  %i.r = and i64 %.val46, 268435456
  %.not36 = icmp eq i64 %i.r, 0
  %.not56 = icmp eq ptr %.val, @PyUnicode_Type
  %or.cond = or i1 %.not56, %.not36
  br i1 %or.cond, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @PyErr_Clear() #13
  %i.s = call ptr @_PyUnicode_Copy(ptr noundef nonnull %2) #13
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.t = call i32 @PyObject_CheckBuffer(ptr noundef nonnull %2) #13
  %.not38 = icmp eq i32 %i.t, 0
  br i1 %.not38, label %Py_DECREF.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.val47 = load ptr, ptr %i.p, align 8, !tbaa !28
  %.not57 = icmp eq ptr %.val47, @PyBytes_Type
  br i1 %.not57, label %Py_DECREF.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @PyErr_Clear() #13
  %i.u = call ptr @PyBytes_FromObject(ptr noundef nonnull %2) #13
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.030 = phi ptr [ %i.u, %bb.l ], [ %i.s, %bb.i ] ; 5 uses
  %i.v = icmp eq ptr %.030, null
  br i1 %i.v, label %Py_DECREF.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %.030, ptr %i.k, align 8, !tbaa !27
  %i.w = call ptr @PyObject_Vectorcall(ptr noundef nonnull %.031, ptr noundef nonnull %i.a, i64 noundef 2, ptr noundef null) #13 ; 2 uses
  %i.x = load i32, ptr %.030, align 8, !tbaa !26  ; 2 uses
  %.not.i42 = icmp sgt i32 %i.x, -1
  br i1 %.not.i42, label %bb.o, label %Py_DECREF.exit43

bb.o:                                             ; preds = %bb.n
  %i.y = add nsw i32 %i.x, -1                     ; 2 uses
  store i32 %i.y, ptr %.030, align 8, !tbaa !26
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.p, label %Py_DECREF.exit43

bb.p:                                             ; preds = %bb.o
  call void @_Py_Dealloc(ptr noundef nonnull %.030) #13
  br label %Py_DECREF.exit43

Py_DECREF.exit43:                                 ; preds = %bb.p, %bb.o, %bb.n
  %.not40 = icmp eq ptr %i.w, null
  br i1 %.not40, label %Py_DECREF.exit, label %Py_DECREF.exit43.thread52

Py_DECREF.exit43.thread52:                        ; preds = %Py_XDECREF.exit, %Py_DECREF.exit43
  %.055 = phi ptr [ %i.w, %Py_DECREF.exit43 ], [ %i.l, %Py_XDECREF.exit ] ; 5 uses
  %i.aa = getelementptr i8, ptr %.055, i64 8
  %.0.val45 = load ptr, ptr %i.aa, align 8, !tbaa !28 ; 2 uses
  %i.ab = getelementptr i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23
  %.not41 = icmp eq ptr %.0.val45, %i.ac
  br i1 %.not41, label %Py_DECREF.exit, label %bb.q

bb.q:                                             ; preds = %Py_DECREF.exit43.thread52
  %i.ad = load ptr, ptr @PyExc_RuntimeError, align 8, !tbaa !27
  %i.ae = getelementptr i8, ptr %.0.val45, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !71
  %i.ag = call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.ad, ptr noundef nonnull @.str.76, ptr noundef %i.af) #13 ; 0 uses
  %i.ah = load i32, ptr %.055, align 8, !tbaa !26 ; 2 uses
  %.not.i = icmp sgt i32 %i.ah, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.ai = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.ai, ptr %.055, align 8, !tbaa !26
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  call void @_Py_Dealloc(ptr noundef nonnull %.055) #13
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.s, %bb.r, %bb.q, %Py_DECREF.exit43, %Py_DECREF.exit43.thread52, %bb.m, %bb.j, %bb.k
  %.029 = phi ptr [ null, %bb.m ], [ null, %bb.j ], [ null, %bb.s ], [ null, %bb.k ], [ %.055, %Py_DECREF.exit43.thread52 ], [ null, %Py_DECREF.exit43 ], [ null, %bb.q ], [ null, %bb.r ], [ null, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %Py_DECREF.exit
  %.1 = phi ptr [ %.029, %Py_DECREF.exit ], [ null, %bb.b ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @expand_template(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #0 {
end_hunk_0
