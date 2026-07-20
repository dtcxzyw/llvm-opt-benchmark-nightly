inline.NumInlined: 94
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@pow5mult:bb.a
  tail call void @PyMem_Free(ptr noundef nonnull %.118) #11
  br label %Bfree.exit

bb.i:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.t = getelementptr i8, ptr %i.s, i64 11960
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  store ptr %i.w, ptr %.118, align 8, !tbaa !43
  store ptr %.118, ptr %i.v, align 8, !tbaa !41
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.f, %bb.h, %bb.i
  %i.x = icmp eq ptr %i.o, null
  br i1 %i.x, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %Bfree.exit, %bb.e
  %.2 = phi ptr [ %i.o, %Bfree.exit ], [ %.118, %bb.e ] ; 2 uses
  %i.y = ashr i32 %.020, 1                        ; 2 uses
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %Bfree.exit, %bb.j, %bb.c, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %.017, %bb.c ], [ %.2, %bb.j ], [ null, %Bfree.exit ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @mult(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %1, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !7
  %.not77 = icmp eq i32 %i.g, 0
  %i.h = getelementptr i8, ptr %1, i64 20
  %i.i = load i32, ptr %i.h, align 4, !tbaa !137  ; 2 uses
  %i.j = icmp eq i32 %i.i, 1
  %or.cond = select i1 %.not77, i1 %i.j, i1 false
  br i1 %or.cond, label %bb.d, label %._crit_edge102

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !39   ; 3 uses
  %i.m = getelementptr i8, ptr %i.l, i64 11960    ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41   ; 3 uses
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !43
  store ptr %i.o, ptr %i.m, align 8, !tbaa !41
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %i.l, i64 14328    ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !45   ; 3 uses
  %i.r = getelementptr i8, ptr %i.l, i64 12024
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp slt i64 %i.u, 2280
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr i8, ptr %i.q, i64 32
  store ptr %i.w, ptr %i.p, align 8, !tbaa !45
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.x = tail call ptr @PyMem_Malloc(i64 noundef 32) #11 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %Balloc.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.024.i = phi ptr [ %i.q, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  %i.z = getelementptr i8, ptr %.024.i, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !134
  %i.aa = getelementptr i8, ptr %.024.i, i64 12
  store i32 1, ptr %i.aa, align 4, !tbaa !135
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.1.i = phi ptr [ %i.n, %bb.e ], [ %.024.i, %bb.i ] ; 4 uses
  %i.ab = getelementptr i8, ptr %.1.i, i64 20
  %i.ac = getelementptr i8, ptr %.1.i, i64 16
  store i32 0, ptr %i.ac, align 8, !tbaa !136
  store i32 1, ptr %i.ab, align 4, !tbaa !137
  %i.ad = getelementptr i8, ptr %.1.i, i64 24
  store i32 0, ptr %i.ad, align 8, !tbaa !7
  br label %Balloc.exit.thread

._crit_edge102:                                   ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !137
  %i.ag = icmp slt i32 %i.af, %i.i                ; 2 uses
  %spec.select = select i1 %i.ag, ptr %0, ptr %1  ; 2 uses
  %spec.select80 = select i1 %i.ag, ptr %1, ptr %0 ; 4 uses
  %i.ah = getelementptr i8, ptr %spec.select80, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !134
  %i.aj = getelementptr i8, ptr %spec.select80, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !137 ; 2 uses
  %i.al = getelementptr i8, ptr %spec.select, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !137 ; 2 uses
  %i.an = add i32 %i.am, %i.ak                    ; 5 uses
  %i.ao = getelementptr i8, ptr %spec.select80, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !135
  %i.aq = icmp sgt i32 %i.an, %i.ap
  %i.ar = zext i1 %i.aq to i32
  %.072 = add i32 %i.ai, %i.ar                    ; 5 uses
  %i.as = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 3 uses
  %i.au = icmp slt i32 %.072, 8
  br i1 %i.au, label %bb.k, label %bb.m

bb.k:                                             ; preds = %._crit_edge102
  %i.av = getelementptr i8, ptr %i.at, i64 11960
  %i.aw = sext i32 %.072 to i64
  %i.ax = getelementptr [8 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41 ; 3 uses
  %.not.i84 = icmp eq ptr %i.ay, null
  br i1 %.not.i84, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !41
  br label %bb.r

bb.m:                                             ; preds = %._crit_edge102
  %i.ba = shl nuw i32 1, %.072                    ; 2 uses
  %i.bb = add i32 %i.ba, -1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 36
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.bf = shl nuw nsw i32 1, %.072                ; 3 uses
  %i.bg = add nsw i32 %i.bf, -1
  %i.bh = zext nneg i32 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 36               ; 2 uses
  %i.bk = lshr i64 %i.bj, 3                       ; 2 uses
  %i.bl = getelementptr i8, ptr %i.at, i64 14328  ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !45 ; 3 uses
  %i.bn = getelementptr i8, ptr %i.at, i64 12024
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = ptrtoint ptr %i.bn to i64
  %i.bq = sub i64 %i.bo, %i.bp
  %i.br = ashr exact i64 %i.bq, 3
  %i.bs = add nsw i64 %i.br, %i.bk
  %i.bt = icmp slt i64 %i.bs, 289
  br i1 %i.bt, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bu = getelementptr [8 x i8], ptr %i.bm, i64 %i.bk
  store ptr %i.bu, ptr %i.bl, align 8, !tbaa !45
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bv = phi i64 [ %i.bj, %bb.n ], [ %i.be, %bb.m ]
  %i.bw = phi i32 [ %i.bf, %bb.n ], [ %i.ba, %bb.m ]
  %i.bx = and i64 %i.bv, 34359738360
  %i.by = tail call ptr @PyMem_Malloc(i64 noundef %i.bx) #11 ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %Balloc.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ca = phi i32 [ %i.bf, %bb.o ], [ %i.bw, %bb.p ]
  %.024.i81 = phi ptr [ %i.bm, %bb.o ], [ %i.by, %bb.p ] ; 3 uses
  %i.cb = getelementptr i8, ptr %.024.i81, i64 8
  store i32 %.072, ptr %i.cb, align 8, !tbaa !134
  %i.cc = getelementptr i8, ptr %.024.i81, i64 12
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !135
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %.1.i82 = phi ptr [ %i.ay, %bb.l ], [ %.024.i81, %bb.q ] ; 5 uses
  %i.cd = getelementptr i8, ptr %.1.i82, i64 20   ; 2 uses
  store i32 0, ptr %i.cd, align 4, !tbaa !137
  %i.ce = getelementptr i8, ptr %.1.i82, i64 16
  store i32 0, ptr %i.ce, align 8, !tbaa !136
  %i.cf = getelementptr i8, ptr %.1.i82, i64 24   ; 4 uses
  %i.cg = sext i32 %i.an to i64                   ; 2 uses
  %i.ch = getelementptr [4 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %i.ci = icmp ult ptr %i.cf, %i.ch
  br i1 %i.ci, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.r
  %.1.i82101 = ptrtoaddr ptr %.1.i82 to i64       ; 3 uses
  %i.cj = shl nsw i64 %i.cg, 2
  %i.ck = add i64 %i.cj, %.1.i82101
  %i.cl = add i64 %i.ck, 24
  %i.cm = add i64 %.1.i82101, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.cl, i64 %i.cm)
  %i.cn = add i64 %umax, -25
  %i.co = sub i64 %i.cn, %.1.i82101
  %i.cp = and i64 %i.co, -4
  %i.cq = add i64 %i.cp, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cf, i8 0, i64 %i.cq, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.r
  %i.cr = getelementptr i8, ptr %spec.select80, i64 24 ; 2 uses
  %i.cs = sext i32 %i.ak to i64
  %i.ct = getelementptr [4 x i8], ptr %i.cr, i64 %i.cs
  %i.cu = getelementptr i8, ptr %spec.select, i64 24 ; 3 uses
  %i.cv = sext i32 %i.am to i64
  %i.cw = getelementptr [4 x i8], ptr %i.cu, i64 %i.cv ; 2 uses
  %i.cx = icmp ult ptr %i.cu, %i.cw
  br i1 %i.cx, label %.lr.ph94, label %.preheader

.preheader:                                       ; preds = %bb.u, %._crit_edge
  %i.cy = icmp sgt i32 %i.an, 0
  br i1 %i.cy, label %.lr.ph97, label %.critedge

.lr.ph94:                                         ; preds = %._crit_edge, %bb.u
  %.06592 = phi ptr [ %i.dp, %bb.u ], [ %i.cf, %._crit_edge ] ; 2 uses
  %.06891 = phi ptr [ %i.cz, %bb.u ], [ %i.cu, %._crit_edge ] ; 2 uses
  %i.cz = getelementptr i8, ptr %.06891, i64 4    ; 2 uses
  %i.da = load i32, ptr %.06891, align 4, !tbaa !7 ; 2 uses
  %.not79 = icmp eq i32 %i.da, 0
  br i1 %.not79, label %bb.u, label %.preheader88

.preheader88:                                     ; preds = %.lr.ph94
  %i.db = zext i32 %i.da to i64
  br label %bb.s

bb.s:                                             ; preds = %.preheader88, %bb.s
  %.170 = phi ptr [ %i.dc, %bb.s ], [ %i.cr, %.preheader88 ] ; 2 uses
  %.066 = phi ptr [ %i.dm, %bb.s ], [ %.06592, %.preheader88 ] ; 3 uses
  %.063 = phi i64 [ %i.dk, %bb.s ], [ 0, %.preheader88 ]
  %i.dc = getelementptr i8, ptr %.170, i64 4      ; 2 uses
  %i.dd = load i32, ptr %.170, align 4, !tbaa !7
  %i.de = zext i32 %i.dd to i64
  %i.df = mul nuw i64 %i.de, %i.db
  %i.dg = load i32, ptr %.066, align 4, !tbaa !7
  %i.dh = zext i32 %i.dg to i64
  %i.di = add nuw nsw i64 %.063, %i.dh
  %i.dj = add nuw i64 %i.di, %i.df                ; 2 uses
  %i.dk = lshr i64 %i.dj, 32                      ; 2 uses
  %i.dl = trunc i64 %i.dj to i32
  %i.dm = getelementptr i8, ptr %.066, i64 4      ; 2 uses
  store i32 %i.dl, ptr %.066, align 4, !tbaa !7
  %i.dn = icmp ult ptr %i.dc, %i.ct
  br i1 %i.dn, label %bb.s, label %bb.t, !llvm.loop !140

bb.t:                                             ; preds = %bb.s
  %i.do = trunc nuw i64 %i.dk to i32
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !7
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph94, %bb.t
  %i.dp = getelementptr i8, ptr %.06592, i64 4
  %i.dq = icmp ult ptr %i.cz, %i.cw
  br i1 %i.dq, label %.lr.ph94, label %.preheader, !llvm.loop !141

.lr.ph97:                                         ; preds = %.preheader, %bb.v
  %.196 = phi ptr [ %i.dr, %bb.v ], [ %i.ch, %.preheader ]
  %.07195 = phi i32 [ %i.dt, %bb.v ], [ %i.an, %.preheader ] ; 3 uses
  %i.dr = getelementptr i8, ptr %.196, i64 -4     ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !7
  %.not78 = icmp eq i32 %i.ds, 0
  br i1 %.not78, label %bb.v, label %.critedge

bb.v:                                             ; preds = %.lr.ph97
  %i.dt = add nsw i32 %.07195, -1
  %i.du = icmp sgt i32 %.07195, 1
  br i1 %i.du, label %.lr.ph97, label %.critedge, !llvm.loop !142

.critedge:                                        ; preds = %.lr.ph97, %bb.v, %.preheader
  %.071.lcssa = phi i32 [ %i.an, %.preheader ], [ 0, %bb.v ], [ %.07195, %.lr.ph97 ]
  store i32 %.071.lcssa, ptr %i.cd, align 4, !tbaa !137
  br label %Balloc.exit.thread

Balloc.exit.thread:                               ; preds = %bb.p, %bb.h, %.critedge, %bb.j
  %.0 = phi ptr [ null, %bb.h ], [ %.1.i82, %.critedge ], [ %.1.i, %bb.j ], [ null, %bb.p ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lshift(ptr noundef %0, i32 noundef range(i32 1, -2147483648) %1) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = getelementptr i8, ptr %0, i64 24         ; 7 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !7
  %.not = icmp eq i32 %i.c, 0
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !137  ; 2 uses
  %i.f = icmp eq i32 %i.e, 1
  %or.cond = select i1 %.not, i1 %i.f, i1 false
  br i1 %or.cond, label %Bfree.exit, label %._crit_edge76

._crit_edge76:                                    ; preds = %bb.a
  %i.g = lshr i32 %1, 5                           ; 3 uses
  %i.h = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !134  ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 20
  %i.k = add i32 %i.e, %i.g                       ; 4 uses
  %i.l = add i32 %i.k, 1                          ; 3 uses
  %i.m = getelementptr i8, ptr %0, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !135  ; 2 uses
  %i.o = icmp sgt i32 %i.l, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge76, %.lr.ph
  %.05065 = phi i32 [ %i.q, %.lr.ph ], [ %i.n, %._crit_edge76 ]
  %.05264 = phi i32 [ %i.p, %.lr.ph ], [ %i.i, %._crit_edge76 ]
  %i.p = add i32 %.05264, 1                       ; 2 uses
  %i.q = shl i32 %.05065, 1                       ; 2 uses
  %i.r = icmp sgt i32 %i.l, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !143

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge76
  %.052.lcssa = phi i32 [ %i.i, %._crit_edge76 ], [ %i.p, %.lr.ph ] ; 5 uses
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 3 uses
  %i.u = icmp slt i32 %.052.lcssa, 8
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.v = getelementptr i8, ptr %i.t, i64 11960
  %i.w = sext i32 %.052.lcssa to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41   ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43
  store ptr %i.z, ptr %i.x, align 8, !tbaa !41
  br label %bb.l

bb.d:                                             ; preds = %._crit_edge
  %i.aa = shl nuw i32 1, %.052.lcssa              ; 2 uses
  %i.ab = add i32 %i.aa, -1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 36
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.af = shl nuw nsw i32 1, %.052.lcssa          ; 3 uses
  %i.ag = add nsw i32 %i.af, -1
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 2
  %i.aj = add nuw nsw i64 %i.ai, 36               ; 2 uses
  %i.ak = lshr i64 %i.aj, 3                       ; 2 uses
  %i.al = getelementptr i8, ptr %i.t, i64 14328   ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !45 ; 3 uses
  %i.an = getelementptr i8, ptr %i.t, i64 12024
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3
  %i.as = add nsw i64 %i.ar, %i.ak
  %i.at = icmp slt i64 %i.as, 289
  br i1 %i.at, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.au = getelementptr [8 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.au, ptr %i.al, align 8, !tbaa !45
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.av = phi i64 [ %i.aj, %bb.e ], [ %i.ae, %bb.d ]
  %i.aw = phi i32 [ %i.af, %bb.e ], [ %i.aa, %bb.d ]
  %i.ax = and i64 %i.av, 34359738360
  %i.ay = tail call ptr @PyMem_Malloc(i64 noundef %i.ax) #11 ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ba = phi i32 [ %i.af, %bb.f ], [ %i.aw, %bb.g ]
  %.024.i = phi ptr [ %i.am, %bb.f ], [ %i.ay, %bb.g ] ; 3 uses
  %i.bb = getelementptr i8, ptr %.024.i, i64 8
  store i32 %.052.lcssa, ptr %i.bb, align 8, !tbaa !134
  %i.bc = getelementptr i8, ptr %.024.i, i64 12
  store i32 %i.ba, ptr %i.bc, align 4, !tbaa !135
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bd = load i32, ptr %i.h, align 8, !tbaa !134 ; 2 uses
  %i.be = icmp sgt i32 %i.bd, 7
  br i1 %i.be, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @PyMem_Free(ptr noundef nonnull %0) #11
  br label %Bfree.exit

bb.k:                                             ; preds = %bb.i
  %i.bf = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.bg = getelementptr i8, ptr %i.bf, i64 11960
  %i.bh = sext i32 %i.bd to i64
  %i.bi = getelementptr [8 x i8], ptr %i.bg, i64 %i.bh ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !41
  store ptr %i.bj, ptr %0, align 8, !tbaa !43
  store ptr %0, ptr %i.bi, align 8, !tbaa !41
  br label %Bfree.exit

bb.l:                                             ; preds = %bb.h, %bb.c
  %.1.i = phi ptr [ %i.y, %bb.c ], [ %.024.i, %bb.h ] ; 6 uses
  %i.bk = getelementptr i8, ptr %.1.i, i64 20     ; 2 uses
  store i32 0, ptr %i.bk, align 4, !tbaa !137
  %i.bl = getelementptr i8, ptr %.1.i, i64 16
  store i32 0, ptr %i.bl, align 8, !tbaa !136
  %i.bm = getelementptr i8, ptr %.1.i, i64 24     ; 2 uses
  %.not72 = icmp eq i32 %i.g, 0
  br i1 %.not72, label %._crit_edge70, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %bb.l
  %i.bn = lshr i32 %1, 3
  %i.bo = and i32 %i.bn, 268435452
  %i.bp = zext nneg i32 %i.bo to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 0, i64 %i.bp, i1 false), !tbaa !7
  %i.bq = add nsw i32 %i.g, -1
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = getelementptr i8, ptr %.1.i, i64 %i.bs
  %scevgep = getelementptr i8, ptr %i.bt, i64 28
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %.lr.ph69.preheader, %bb.l
  %.046.lcssa = phi ptr [ %i.bm, %bb.l ], [ %scevgep, %.lr.ph69.preheader ] ; 6 uses
  %.046.lcssa91 = ptrtoaddr ptr %.046.lcssa to i64
  %i.bu = load i32, ptr %i.j, align 4, !tbaa !137
  %i.bv = sext i32 %i.bu to i64                   ; 2 uses
  %i.bw = getelementptr [4 x i8], ptr %i.b, i64 %i.bv ; 2 uses
  %i.bx = and i32 %1, 31                          ; 3 uses
  %.not57 = icmp eq i32 %i.bx, 0
  br i1 %.not57, label %.preheader.preheader, label %bb.m

.preheader.preheader:                             ; preds = %._crit_edge70
  %2 = ptrtoaddr ptr %0 to i64                    ; 3 uses
  %i.by = shl nsw i64 %i.bv, 2
  %i.bz = add i64 %i.by, %2
  %i.ca = add i64 %i.bz, 24
  %i.cb = add i64 %2, 28
  %i.cc = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %i.cb)
  %i.cd = sub i64 %i.cc, %2
  %i.ce = add i64 %i.cd, -25                      ; 2 uses
  %i.cf = lshr i64 %i.ce, 2
  %i.cg = add nuw nsw i64 %i.cf, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ce, 60
  br i1 %min.iters.check, label %.preheader.preheader95, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.ch = sub i64 %.046.lcssa91, %i.a
  %i.ci = add i64 %i.ch, -25
  %diff.check = icmp ult i64 %i.ci, 31
  br i1 %diff.check, label %.preheader.preheader95, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cg, 9223372036854775800     ; 3 uses
  %i.cj = shl i64 %n.vec, 2                       ; 2 uses
  %i.ck = getelementptr i8, ptr %i.b, i64 %i.cj
  %i.cl = getelementptr i8, ptr %.046.lcssa, i64 %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cm = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.cm ; 2 uses
  %next.gep92 = getelementptr i8, ptr %.046.lcssa, i64 %i.cm ; 2 uses
  %i.cn = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load93 = load <4 x i32>, ptr %i.cn, align 4, !tbaa !7
  %i.co = getelementptr i8, ptr %next.gep92, i64 16
  store <4 x i32> %wide.load, ptr %next.gep92, align 4, !tbaa !7
  store <4 x i32> %wide.load93, ptr %i.co, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cp = icmp eq i64 %index.next, %n.vec
  br i1 %i.cp, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cg, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader95

.preheader.preheader95:                           ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.148.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.preheader.preheader ], [ %i.ck, %middle.block ]
  %.2.ph = phi ptr [ %.046.lcssa, %vector.memcheck ], [ %.046.lcssa, %.preheader.preheader ], [ %i.cl, %middle.block ]
  br label %.preheader

bb.m:                                             ; preds = %._crit_edge70
  %i.cq = sub nuw nsw i32 32, %i.bx
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.047 = phi ptr [ %i.b, %bb.m ], [ %i.cv, %bb.n ] ; 3 uses
  %.1 = phi ptr [ %.046.lcssa, %bb.m ], [ %i.cu, %bb.n ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.m ], [ %i.cx, %bb.n ]
  %i.cr = load i32, ptr %.047, align 4, !tbaa !7
  %i.cs = shl i32 %i.cr, %i.bx
  %i.ct = or i32 %i.cs, %.0
  %i.cu = getelementptr i8, ptr %.1, i64 4        ; 2 uses
  store i32 %i.ct, ptr %.1, align 4, !tbaa !7
  %i.cv = getelementptr i8, ptr %.047, i64 4      ; 2 uses
  %i.cw = load i32, ptr %.047, align 4, !tbaa !7
  %i.cx = lshr i32 %i.cw, %i.cq                   ; 3 uses
  %i.cy = icmp ult ptr %i.cv, %i.bw
  br i1 %i.cy, label %bb.n, label %bb.o, !llvm.loop !147

bb.o:                                             ; preds = %bb.n
  store i32 %i.cx, ptr %i.cu, align 4, !tbaa !7
  %.not58 = icmp eq i32 %i.cx, 0
  %spec.select = select i1 %.not58, i32 %i.k, i32 %i.l
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader95, %.preheader
  %.148 = phi ptr [ %i.cz, %.preheader ], [ %.148.ph, %.preheader.preheader95 ] ; 2 uses
  %.2 = phi ptr [ %i.db, %.preheader ], [ %.2.ph, %.preheader.preheader95 ] ; 2 uses
  %i.cz = getelementptr i8, ptr %.148, i64 4      ; 2 uses
  %i.da = load i32, ptr %.148, align 4, !tbaa !7
  %i.db = getelementptr i8, ptr %.2, i64 4
  store i32 %i.da, ptr %.2, align 4, !tbaa !7
  %i.dc = icmp ult ptr %i.cz, %i.bw
  br i1 %i.dc, label %.preheader, label %.loopexit, !llvm.loop !148

.loopexit:                                        ; preds = %.preheader, %middle.block, %bb.o
  %.049 = phi i32 [ %spec.select, %bb.o ], [ %i.k, %middle.block ], [ %i.k, %.preheader ]
  store i32 %.049, ptr %i.bk, align 4, !tbaa !137
  %i.dd = load i32, ptr %i.h, align 8, !tbaa !134 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 7
  br i1 %i.de, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit
  tail call void @PyMem_Free(ptr noundef nonnull %0) #11
  br label %Bfree.exit

bb.q:                                             ; preds = %.loopexit
  %i.df = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.dg = getelementptr i8, ptr %i.df, i64 11960
  %i.dh = sext i32 %i.dd to i64
  %i.di = getelementptr [8 x i8], ptr %i.dg, i64 %i.dh ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !41
  store ptr %i.dj, ptr %0, align 8, !tbaa !43
  store ptr %0, ptr %i.di, align 8, !tbaa !41
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.a, %bb.q, %bb.p, %bb.k, %bb.j
  %.045 = phi ptr [ %0, %bb.a ], [ null, %bb.k ], [ %.1.i, %bb.q ], [ null, %bb.j ], [ %.1.i, %bb.p ]
  ret ptr %.045
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @diff(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !137
  %i.c = getelementptr i8, ptr %1, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137  ; 2 uses
  %i.e = sub i32 %i.b, %i.d                       ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.g = sext i32 %i.d to i64                     ; 2 uses
  %i.h = getelementptr [4 x i8], ptr %i.f, i64 %i.g
  %i.i = getelementptr i8, ptr %1, i64 24
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.018.i = phi ptr [ %i.j, %bb.b ], [ %i.m, %bb.e ]
  %.017.i = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.e ]
  %i.k = getelementptr i8, ptr %.017.i, i64 -4    ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 2 uses
  %i.m = getelementptr i8, ptr %.018.i, i64 -4    ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7    ; 2 uses
  %.not23.i = icmp eq i32 %i.l, %i.n
  br i1 %.not23.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = icmp ult i32 %i.l, %i.n
  %i.p = select i1 %i.o, i32 -1, i32 1
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %.not24.i = icmp ugt ptr %i.k, %i.f
  br i1 %.not24.i, label %bb.c, label %cmp.exit

cmp.exit:                                         ; preds = %bb.e
  %i.q = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39   ; 3 uses
  %i.s = getelementptr i8, ptr %i.r, i64 11960    ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !41   ; 3 uses
  %.not.i60 = icmp eq ptr %i.t, null
  br i1 %.not.i60, label %bb.g, label %bb.f

bb.f:                                             ; preds = %cmp.exit
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !43
  store ptr %i.u, ptr %i.s, align 8, !tbaa !41
  br label %bb.k

bb.g:                                             ; preds = %cmp.exit
  %i.v = getelementptr i8, ptr %i.r, i64 14328    ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !45   ; 3 uses
  %i.x = getelementptr i8, ptr %i.r, i64 12024
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = icmp slt i64 %i.aa, 2280
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.w, i64 32
  store ptr %i.ac, ptr %i.v, align 8, !tbaa !45
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call ptr @PyMem_Malloc(i64 noundef 32) #11 ; 2 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %Balloc.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.024.i = phi ptr [ %i.w, %bb.h ], [ %i.ad, %bb.i ] ; 3 uses
  %i.af = getelementptr i8, ptr %.024.i, i64 8
  store i32 0, ptr %i.af, align 8, !tbaa !134
  %i.ag = getelementptr i8, ptr %.024.i, i64 12
  store i32 1, ptr %i.ag, align 4, !tbaa !135
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1.i = phi ptr [ %i.t, %bb.f ], [ %.024.i, %bb.j ] ; 4 uses
  %i.ah = getelementptr i8, ptr %.1.i, i64 20
  %i.ai = getelementptr i8, ptr %.1.i, i64 16
  store i32 0, ptr %i.ai, align 8, !tbaa !136
  store i32 1, ptr %i.ah, align 4, !tbaa !137
  %i.aj = getelementptr i8, ptr %.1.i, i64 24
  store i32 0, ptr %i.aj, align 8, !tbaa !7
  br label %Balloc.exit.thread

bb.l:                                             ; preds = %bb.a, %bb.d
end_hunk_0
begin_hunk_1_@_Py_dg_dtoa:bb.a

bb.ba:                                            ; preds = %bb.az, %bb.av
  %.1796.ph1342 = phi i32 [ %i.ej, %bb.av ], [ %i.en, %bb.az ] ; 3 uses
  %.0797.ph1340 = phi i32 [ %i.ek, %bb.av ], [ %i.fb, %bb.az ] ; 2 uses
  %.0503 = phi i32 [ %i.em, %bb.av ], [ %i.fp, %bb.az ] ; 2 uses
  %.sroa.086.0.in = phi i64 [ %.sroa.086.4.insert.insert95, %bb.av ], [ %.sroa.086.4.insert.insert103, %bb.az ]
  %.sroa.086.0 = bitcast i64 %.sroa.086.0.in to double
  %i.fq = fadd double %.sroa.086.0, -1.500000e+00
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fq, double f0x3FD287A7636F4361, double f0x3FC68A288B60C8B3)
  %i.fs = sitofp i32 %.0503 to double
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fs, double f0x3FD34413509F79FB, double %i.fr) ; 3 uses
  %i.fu = fptosi double %i.ft to i32              ; 2 uses
  %i.fv = fcmp olt double %i.ft, 0.000000e+00
  %i.fw = sitofp i32 %i.fu to double
  %i.fx = fcmp une double %i.ft, %i.fw
  %or.cond629 = and i1 %i.fv, %i.fx
  %i.fy = sext i1 %or.cond629 to i32
  %.0472 = add i32 %i.fy, %i.fu                   ; 5 uses
  %or.cond = icmp ugt i32 %.0472, 22              ; 3 uses
  br i1 %or.cond, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fz = zext nneg i32 %.0472 to i64
  %i.ga = getelementptr [8 x i8], ptr @tens, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !26
  %i.gc = fcmp olt double %.sroa.0.0794, %i.gb
  br i1 %i.gc, label %select.unfold, label %bb.bc

select.unfold:                                    ; preds = %bb.bb
  %i.gd = add nsw i32 %.0472, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %select.unfold, %bb.ba
  %.2474 = phi i32 [ %.0472, %bb.bb ], [ %.0472, %bb.ba ], [ %i.gd, %select.unfold ] ; 30 uses
  %i.ge = xor i32 %.0503, -1
  %i.gf = add nsw i32 %.0797.ph1340, %i.ge        ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, -1                  ; 2 uses
  %i.gh = sub nsw i32 0, %i.gf
  %.0461 = select i1 %i.gg, i32 0, i32 %i.gh      ; 2 uses
  %.0456 = select i1 %i.gg, i32 %i.gf, i32 0      ; 2 uses
  %i.gi = icmp sgt i32 %.2474, -1
  br i1 %i.gi, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gj = add nuw i32 %.2474, %.0456
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.gk = sub i32 %.0461, %.2474
  %i.gl = sub i32 0, %.2474
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0471 = phi i32 [ 0, %bb.bd ], [ %i.gl, %bb.be ] ; 3 uses
  %.1462 = phi i32 [ %.0461, %bb.bd ], [ %i.gk, %bb.be ] ; 7 uses
  %.1457 = phi i32 [ %i.gj, %bb.bd ], [ %.0456, %bb.be ] ; 3 uses
  %.0455 = phi i32 [ %.2474, %bb.bd ], [ 0, %bb.be ] ; 2 uses
  %or.cond3 = icmp ugt i32 %1, 9
  %spec.store.select27 = select i1 %or.cond3, i32 0, i32 %1 ; 3 uses
  %i.gm = icmp samesign ult i32 %spec.store.select27, 6 ; 2 uses
  %i.gn = add nsw i32 %spec.store.select27, -4
  %spec.select = select i1 %i.gm, i32 %spec.store.select27, i32 %i.gn ; 4 uses
  switch i32 %spec.select, label %default.unreachable [
    i32 0, label %._crit_edge.thread.i
    i32 1, label %._crit_edge.thread.i
    i32 2, label %bb.bg
    i32 4, label %bb.bh
    i32 3, label %bb.bi
    i32 5, label %bb.bj
  ]

bb.bg:                                            ; preds = %bb.bf
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %.0467 = phi i32 [ 0, %bb.bg ], [ 1, %bb.bf ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 1) ; 4 uses
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bf
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %.1468 = phi i32 [ 0, %bb.bi ], [ 1, %bb.bf ]
  %i.go = add i32 %.2474, %2                      ; 2 uses
  %i.gp = add i32 %i.go, 1                        ; 2 uses
  %spec.store.select4 = tail call i32 @llvm.smax.i32(i32 %i.gp, i32 1)
  br label %bb.bk

default.unreachable:                              ; preds = %bb.bf
  unreachable

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %.1504 = phi i32 [ %spec.store.select, %bb.bh ], [ %spec.store.select4, %bb.bj ] ; 2 uses
  %.0490 = phi i32 [ %spec.store.select, %bb.bh ], [ %i.gp, %bb.bj ] ; 3 uses
  %.0486 = phi i32 [ %spec.store.select, %bb.bh ], [ %i.go, %bb.bj ] ; 3 uses
  %.2469 = phi i32 [ %.0467, %bb.bh ], [ %.1468, %bb.bj ] ; 3 uses
  %.0451 = phi i32 [ %spec.store.select, %bb.bh ], [ %2, %bb.bj ] ; 3 uses
  %i.gq = zext nneg i32 %.1504 to i64
  %.not13.i = icmp samesign ult i32 %.1504, 28
  br i1 %.not13.i, label %._crit_edge.thread.i, label %.lr.ph.i664

.lr.ph.i664:                                      ; preds = %bb.bk, %.lr.ph.i664
  %.0915.i = phi i32 [ %i.gr, %.lr.ph.i664 ], [ 0, %bb.bk ]
  %.01014.i = phi i32 [ %i.gs, %.lr.ph.i664 ], [ 4, %bb.bk ]
  %i.gr = add i32 %.0915.i, 1                     ; 5 uses
  %i.gs = shl i32 %.01014.i, 1                    ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = add nsw i64 %i.gt, 24
  %.not.i665 = icmp ugt i64 %i.gu, %i.gq
  br i1 %.not.i665, label %._crit_edge.i666, label %.lr.ph.i664, !llvm.loop !152

._crit_edge.i666:                                 ; preds = %.lr.ph.i664
  %i.gv = icmp slt i32 %i.gr, 8
  br i1 %i.gv, label %._crit_edge.thread.i, label %bb.bm

._crit_edge.thread.i:                             ; preds = %bb.bf, %bb.bf, %bb.bk, %._crit_edge.i666
  %.0451840 = phi i32 [ %.0451, %._crit_edge.i666 ], [ %.0451, %bb.bk ], [ 0, %bb.bf ], [ 0, %bb.bf ] ; 3 uses
  %.2469834 = phi i32 [ %.2469, %._crit_edge.i666 ], [ %.2469, %bb.bk ], [ 1, %bb.bf ], [ 1, %bb.bf ] ; 3 uses
  %.0486826 = phi i32 [ %.0486, %._crit_edge.i666 ], [ %.0486, %bb.bk ], [ -1, %bb.bf ], [ -1, %bb.bf ] ; 3 uses
  %.0490820 = phi i32 [ %.0490, %._crit_edge.i666 ], [ %.0490, %bb.bk ], [ -1, %bb.bf ], [ -1, %bb.bf ] ; 3 uses
  %.09.lcssa21.i = phi i32 [ %i.gr, %._crit_edge.i666 ], [ 0, %bb.bk ], [ 0, %bb.bf ], [ 0, %bb.bf ] ; 5 uses
  %i.gw = load ptr, ptr %i.br, align 8, !tbaa !39 ; 3 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 11960
  %i.gy = sext i32 %.09.lcssa21.i to i64
  %i.gz = getelementptr [8 x i8], ptr %i.gx, i64 %i.gy ; 2 uses
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !41 ; 3 uses
  %.not.i.i670 = icmp eq ptr %i.ha, null
  br i1 %.not.i.i670, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %._crit_edge.thread.i
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !43
  store ptr %i.hb, ptr %i.gz, align 8, !tbaa !41
  br label %rv_alloc.exit

bb.bm:                                            ; preds = %._crit_edge.i666
  %i.hc = shl nuw i32 1, %i.gr                    ; 2 uses
  %i.hd = add i32 %i.hc, -1
  %i.he = zext nneg i32 %i.hd to i64
  %i.hf = shl nuw nsw i64 %i.he, 2
  %i.hg = add nuw nsw i64 %i.hf, 36
  br label %bb.bp

bb.bn:                                            ; preds = %._crit_edge.thread.i
  %i.hh = shl nuw nsw i32 1, %.09.lcssa21.i       ; 3 uses
  %i.hi = add nsw i32 %i.hh, -1
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = shl nuw nsw i64 %i.hj, 2
  %i.hl = add nuw nsw i64 %i.hk, 36               ; 2 uses
  %i.hm = lshr i64 %i.hl, 3                       ; 2 uses
  %i.hn = getelementptr i8, ptr %i.gw, i64 14328  ; 2 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !45 ; 3 uses
  %i.hp = getelementptr i8, ptr %i.gw, i64 12024
  %i.hq = ptrtoint ptr %i.ho to i64
  %i.hr = ptrtoint ptr %i.hp to i64
  %i.hs = sub i64 %i.hq, %i.hr
  %i.ht = ashr exact i64 %i.hs, 3
  %i.hu = add nsw i64 %i.ht, %i.hm
  %i.hv = icmp slt i64 %i.hu, 289
  br i1 %i.hv, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.hw = getelementptr [8 x i8], ptr %i.ho, i64 %i.hm
  store ptr %i.hw, ptr %i.hn, align 8, !tbaa !45
  br label %bb.bq

bb.bp:                                            ; preds = %bb.bn, %bb.bm
  %.0451839 = phi i32 [ %.0451840, %bb.bn ], [ %.0451, %bb.bm ]
  %.2469833 = phi i32 [ %.2469834, %bb.bn ], [ %.2469, %bb.bm ]
  %.0486825 = phi i32 [ %.0486826, %bb.bn ], [ %.0486, %bb.bm ]
  %.0490819 = phi i32 [ %.0490820, %bb.bn ], [ %.0490, %bb.bm ]
  %.09.lcssa20.i = phi i32 [ %.09.lcssa21.i, %bb.bn ], [ %i.gr, %bb.bm ]
  %i.hx = phi i64 [ %i.hl, %bb.bn ], [ %i.hg, %bb.bm ]
  %i.hy = phi i32 [ %i.hh, %bb.bn ], [ %i.hc, %bb.bm ]
  %i.hz = and i64 %i.hx, 34359738360
  %i.ia = tail call ptr @PyMem_Malloc(i64 noundef %i.hz) #11 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %Bfree.exit734.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.0451837 = phi i32 [ %.0451840, %bb.bo ], [ %.0451839, %bb.bp ]
  %.2469831 = phi i32 [ %.2469834, %bb.bo ], [ %.2469833, %bb.bp ]
  %.0486823 = phi i32 [ %.0486826, %bb.bo ], [ %.0486825, %bb.bp ]
  %.0490817 = phi i32 [ %.0490820, %bb.bo ], [ %.0490819, %bb.bp ]
  %.09.lcssa19.i = phi i32 [ %.09.lcssa21.i, %bb.bo ], [ %.09.lcssa20.i, %bb.bp ] ; 2 uses
  %i.ic = phi i32 [ %i.hh, %bb.bo ], [ %i.hy, %bb.bp ]
  %.024.i.i667 = phi ptr [ %i.ho, %bb.bo ], [ %i.ia, %bb.bp ] ; 3 uses
  %i.id = getelementptr i8, ptr %.024.i.i667, i64 8
  store i32 %.09.lcssa19.i, ptr %i.id, align 8, !tbaa !134
  %i.ie = getelementptr i8, ptr %.024.i.i667, i64 12
  store i32 %i.ic, ptr %i.ie, align 4, !tbaa !135
  br label %rv_alloc.exit

rv_alloc.exit:                                    ; preds = %bb.bl, %bb.bq
  %.0451836 = phi i32 [ %.0451840, %bb.bl ], [ %.0451837, %bb.bq ] ; 2 uses
  %.2469830 = phi i32 [ %.2469834, %bb.bl ], [ %.2469831, %bb.bq ] ; 2 uses
  %.0486822 = phi i32 [ %.0486826, %bb.bl ], [ %.0486823, %bb.bq ] ; 4 uses
  %.0490816 = phi i32 [ %.0490820, %bb.bl ], [ %.0490817, %bb.bq ] ; 11 uses
  %.09.lcssa22.i = phi i32 [ %.09.lcssa21.i, %bb.bl ], [ %.09.lcssa19.i, %bb.bq ]
  %.1.i.i668 = phi ptr [ %i.ha, %bb.bl ], [ %.024.i.i667, %bb.bq ] ; 8 uses
  %.1.i.i6681218 = ptrtoaddr ptr %.1.i.i668 to i64 ; 4 uses
  %i.if = getelementptr i8, ptr %.1.i.i668, i64 20
  store i32 0, ptr %i.if, align 4, !tbaa !137
  %i.ig = getelementptr i8, ptr %.1.i.i668, i64 16
  store i32 0, ptr %i.ig, align 8, !tbaa !136
  store i32 %.09.lcssa22.i, ptr %.1.i.i668, align 8, !tbaa !7
  %i.ih = getelementptr i8, ptr %.1.i.i668, i64 4 ; 16 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %Bfree.exit734.thread, label %bb.br

bb.br:                                            ; preds = %rv_alloc.exit
  %or.cond6 = icmp ult i32 %.0490816, 15
  %or.cond8 = and i1 %i.gm, %or.cond6
  br i1 %or.cond8, label %bb.bs, label %.loopexit980

bb.bs:                                            ; preds = %bb.br
  %i.ij = icmp sgt i32 %.2474, 0
  br i1 %i.ij, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.ik = and i32 %.2474, 15
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr [8 x i8], ptr @tens, i64 %i.il
  %i.in = load double, ptr %i.im, align 8, !tbaa !26 ; 2 uses
  %i.io = lshr i32 %.2474, 4                      ; 2 uses
  %i.ip = and i32 %.2474, 256
  %.not594 = icmp eq i32 %i.ip, 0                 ; 3 uses
  %i.iq = and i32 %i.io, 15
  %i.ir = fdiv double %.sroa.0.0794, 1.000000e+256
  %.sroa.0.1 = select i1 %.not594, double %.sroa.0.0794, double %i.ir
  %.0496 = select i1 %.not594, i32 2, i32 3       ; 2 uses
  %.0483 = select i1 %.not594, i32 %i.io, i32 %i.iq ; 2 uses
  %.not5951086 = icmp eq i32 %.0483, 0
  br i1 %.not5951086, label %._crit_edge, label %.lr.ph1091

.lr.ph1091:                                       ; preds = %bb.bt, %bb.bv
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bv ], [ 0, %bb.bt ] ; 2 uses
  %.04011090 = phi double [ %.1402, %bb.bv ], [ %i.in, %bb.bt ] ; 2 uses
  %.14841089 = phi i32 [ %i.ix, %bb.bv ], [ %.0483, %bb.bt ] ; 2 uses
  %.14971088 = phi i32 [ %.2498, %bb.bv ], [ %.0496, %bb.bt ] ; 2 uses
  %i.is = and i32 %.14841089, 1
  %.not619 = icmp eq i32 %i.is, 0
  br i1 %.not619, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph1091
  %i.it = add i32 %.14971088, 1
  %i.iu = getelementptr [8 x i8], ptr @bigtens, i64 %indvars.iv
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !26
  %i.iw = fmul double %.04011090, %i.iv
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1091, %bb.bu
  %.2498 = phi i32 [ %i.it, %bb.bu ], [ %.14971088, %.lr.ph1091 ] ; 2 uses
  %.1402 = phi double [ %i.iw, %bb.bu ], [ %.04011090, %.lr.ph1091 ] ; 2 uses
  %i.ix = lshr i32 %.14841089, 1                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not595 = icmp eq i32 %i.ix, 0
  br i1 %.not595, label %._crit_edge, label %.lr.ph1091, !llvm.loop !153

._crit_edge:                                      ; preds = %bb.bv, %bb.bt
  %.1497.lcssa = phi i32 [ %.0496, %bb.bt ], [ %.2498, %bb.bv ]
  %.0401.lcssa = phi double [ %i.in, %bb.bt ], [ %.1402, %bb.bv ]
  %i.iy = fdiv double %.sroa.0.1, %.0401.lcssa
  br label %.loopexit981

bb.bw:                                            ; preds = %bb.bs
  %.not591 = icmp eq i32 %.2474, 0
  br i1 %.not591, label %.loopexit981, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.iz = sub i32 0, %.2474                       ; 2 uses
  %i.ja = and i32 %i.iz, 15
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr [8 x i8], ptr @tens, i64 %i.jb
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !26
  %i.je = fmul double %.sroa.0.0794, %i.jd        ; 2 uses
  %i.jf = ashr i32 %i.iz, 4                       ; 2 uses
  %.not5921080 = icmp eq i32 %i.jf, 0
  br i1 %.not5921080, label %.loopexit981, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bx, %bb.bz
  %.24851084 = phi i32 [ %i.jm, %bb.bz ], [ %i.jf, %bb.bx ] ; 2 uses
  %.34991083 = phi i32 [ %.4500, %bb.bz ], [ 2, %bb.bx ] ; 2 uses
  %.35061082 = phi i32 [ %i.jn, %bb.bz ], [ 0, %bb.bx ] ; 2 uses
  %.sroa.0.21081 = phi double [ %.sroa.0.3, %bb.bz ], [ %i.je, %bb.bx ] ; 2 uses
  %i.jg = and i32 %.24851084, 1
  %.not593 = icmp eq i32 %i.jg, 0
  br i1 %.not593, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.lr.ph
  %i.jh = add i32 %.34991083, 1
  %i.ji = sext i32 %.35061082 to i64
  %i.jj = getelementptr [8 x i8], ptr @bigtens, i64 %i.ji
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !26
  %i.jl = fmul double %.sroa.0.21081, %i.jk
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph, %bb.by
  %.sroa.0.3 = phi double [ %.sroa.0.21081, %.lr.ph ], [ %i.jl, %bb.by ] ; 2 uses
  %.4500 = phi i32 [ %.34991083, %.lr.ph ], [ %i.jh, %bb.by ] ; 2 uses
  %i.jm = ashr i32 %.24851084, 1                  ; 2 uses
  %i.jn = add i32 %.35061082, 1
  %.not592 = icmp eq i32 %i.jm, 0
  br i1 %.not592, label %.loopexit981, label %.lr.ph, !llvm.loop !154

.loopexit981:                                     ; preds = %bb.bz, %bb.bx, %bb.bw, %._crit_edge
  %.sroa.0.4 = phi double [ %i.iy, %._crit_edge ], [ %.sroa.0.0794, %bb.bw ], [ %i.je, %bb.bx ], [ %.sroa.0.3, %bb.bz ] ; 3 uses
  %.5501 = phi i32 [ %.1497.lcssa, %._crit_edge ], [ 2, %bb.bw ], [ 2, %bb.bx ], [ %.4500, %bb.bz ] ; 2 uses
  %i.jo = fcmp olt double %.sroa.0.4, 1.000000e+00
  %or.cond10 = select i1 %or.cond, i1 %i.jo, i1 false
  %i.jp = icmp sgt i32 %.0490816, 0
  %or.cond12 = select i1 %or.cond10, i1 %i.jp, i1 false
  br i1 %or.cond12, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %.loopexit981
  %i.jq = icmp slt i32 %.0486822, 1
  br i1 %i.jq, label %.loopexit980, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jr = add i32 %.2474, -1
  %i.js = fmul nnan double %.sroa.0.4, 1.000000e+01
  %i.jt = add i32 %.5501, 1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.loopexit981
  %.sroa.0.5 = phi double [ %i.js, %bb.cb ], [ %.sroa.0.4, %.loopexit981 ] ; 6 uses
  %.6502 = phi i32 [ %i.jt, %bb.cb ], [ %.5501, %.loopexit981 ]
  %.1491 = phi i32 [ %.0486822, %bb.cb ], [ %.0490816, %.loopexit981 ] ; 5 uses
  %.3475 = phi i32 [ %i.jr, %bb.cb ], [ %.2474, %.loopexit981 ] ; 6 uses
  %i.ju = sitofp i32 %.6502 to double
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.ju, double %.sroa.0.5, double 7.000000e+00)
  %i.jw = bitcast double %i.jv to i64             ; 2 uses
  %i.jx = and i64 %i.jw, -4294967296
  %.sroa.0.4.insert.ext = add i64 %i.jx, -234187180623265792
  %.sroa.0.4.insert.mask = and i64 %i.jw, 4294967295
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.ext, %.sroa.0.4.insert.mask
  %i.jy = bitcast i64 %.sroa.0.4.insert.insert to double ; 4 uses
  %i.jz = icmp eq i32 %.1491, 0
  br i1 %i.jz, label %bb.cd, label %bb.cf

bb.cd:                                            ; preds = %bb.cc
  %i.ka = fadd double %.sroa.0.5, -5.000000e+00   ; 2 uses
  %i.kb = fcmp ogt double %i.ka, %i.jy
  br i1 %i.kb, label %cmp.exit690.thread858, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.kc = fneg double %i.jy
  %i.kd = fcmp olt double %i.ka, %i.kc
  br i1 %i.kd, label %cmp.exit690.thread, label %.loopexit980

bb.cf:                                            ; preds = %bb.cc
  %.not596 = icmp eq i32 %.2469830, 0
  %i.ke = zext nneg i32 %.1491 to i64
  %i.kf = getelementptr [8 x i8], ptr @tens, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.kf, i64 -8
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !26 ; 2 uses
  %i.ki = getelementptr i8, ptr %.1.i.i668, i64 5 ; 4 uses
  br i1 %.not596, label %bb.cj, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kj = fdiv double 5.000000e-01, %i.kh
  %i.kk = fsub double %i.kj, %i.jy                ; 2 uses
  %i.kl = fptosi double %.sroa.0.5 to i32         ; 2 uses
  %i.km = sitofp i32 %i.kl to double
  %i.kn = fsub double %.sroa.0.5, %i.km           ; 2 uses
  %i.ko = trunc i32 %i.kl to i8
  %i.kp = add i8 %i.ko, 48
  store i8 %i.kp, ptr %i.ih, align 4, !tbaa !11
  %i.kq = fcmp olt double %i.kn, %i.kk
  br i1 %i.kq, label %.critedge, label %.lr.ph1097.preheader

.lr.ph1097.preheader:                             ; preds = %bb.cg
  %i.kr = add nsw i32 %.1491, -1
  br label %.lr.ph1097

.lr.ph1097:                                       ; preds = %.lr.ph1097.preheader, %bb.ci
  %i.ks = phi ptr [ %i.le, %bb.ci ], [ %i.ki, %.lr.ph1097.preheader ] ; 3 uses
  %i.kt = phi double [ %i.lb, %bb.ci ], [ %i.kn, %.lr.ph1097.preheader ] ; 2 uses
  %.sroa.0.01095 = phi double [ %i.kx, %bb.ci ], [ %i.kk, %.lr.ph1097.preheader ] ; 2 uses
  %.45071094 = phi i32 [ %i.kw, %bb.ci ], [ 0, %.lr.ph1097.preheader ] ; 2 uses
  %i.ku = fsub double 1.000000e+00, %i.kt
  %i.kv = fcmp olt double %i.ku, %.sroa.0.01095
  br i1 %i.kv, label %.loopexit979, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph1097
  %exitcond.not = icmp eq i32 %.45071094, %i.kr
  br i1 %exitcond.not, label %.loopexit980, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.kw = add nuw nsw i32 %.45071094, 1
  %i.kx = fmul double %.sroa.0.01095, 1.000000e+01 ; 2 uses
  %i.ky = fmul double %i.kt, 1.000000e+01         ; 2 uses
  %i.kz = fptosi double %i.ky to i32              ; 2 uses
  %i.la = sitofp i32 %i.kz to double
  %i.lb = fsub double %i.ky, %i.la                ; 2 uses
  %i.lc = trunc i32 %i.kz to i8
  %i.ld = add i8 %i.lc, 48
  %i.le = getelementptr i8, ptr %i.ks, i64 1      ; 2 uses
  store i8 %i.ld, ptr %i.ks, align 1, !tbaa !11
  %i.lf = fcmp olt double %i.lb, %i.kx
  br i1 %i.lf, label %.critedge, label %.lr.ph1097

bb.cj:                                            ; preds = %bb.cf
  %i.lg = fmul double %i.kh, %i.jy                ; 2 uses
  %i.lh = fptosi double %.sroa.0.5 to i32         ; 2 uses
  %i.li = sitofp i32 %i.lh to double
  %i.lj = fsub double %.sroa.0.5, %i.li           ; 3 uses
  %i.lk = fcmp oeq double %i.lj, 0.000000e+00
  %i.ll = trunc i32 %i.lh to i8
  %i.lm = add i8 %i.ll, 48
  store i8 %i.lm, ptr %i.ih, align 4, !tbaa !11
  %i.ln = icmp eq i32 %.1491, 1
  %i.lo = or i1 %i.lk, %i.ln
  br i1 %i.lo, label %._crit_edge1104, label %.lr.ph1103

._crit_edge1104:                                  ; preds = %.lr.ph1103, %bb.cj
  %.lcssa1074 = phi double [ %i.lj, %bb.cj ], [ %i.mc, %.lr.ph1103 ] ; 2 uses
  %.lcssa1073 = phi ptr [ %i.ki, %bb.cj ], [ %i.mg, %.lr.ph1103 ] ; 2 uses
  %i.lp = fadd double %i.lg, 5.000000e-01
  %i.lq = fcmp ogt double %.lcssa1074, %i.lp
  br i1 %i.lq, label %.loopexit979, label %bb.ck

bb.ck:                                            ; preds = %._crit_edge1104
  %i.lr = fsub double 5.000000e-01, %i.lg
  %i.ls = fcmp olt double %.lcssa1074, %i.lr
  br i1 %i.ls, label %.preheader976, label %.loopexit980.thread

.preheader976:                                    ; preds = %bb.ck, %.preheader976
  %.2 = phi ptr [ %i.lt, %.preheader976 ], [ %.lcssa1073, %bb.ck ] ; 2 uses
  %i.lt = getelementptr i8, ptr %.2, i64 -1       ; 2 uses
  %i.lu = load i8, ptr %i.lt, align 1, !tbaa !11
  %i.lv = icmp eq i8 %i.lu, 48
  br i1 %i.lv, label %.preheader976, label %.critedge, !llvm.loop !155

.lr.ph1103:                                       ; preds = %bb.cj, %.lr.ph1103
  %i.lw = phi ptr [ %i.mg, %.lr.ph1103 ], [ %i.ki, %bb.cj ] ; 2 uses
  %.34931101 = phi i32 [ %.3493, %.lr.ph1103 ], [ %.1491, %bb.cj ]
  %i.lx = phi double [ %i.mc, %.lr.ph1103 ], [ %i.lj, %bb.cj ]
  %.55081100 = phi i32 [ %i.ly, %.lr.ph1103 ], [ 1, %bb.cj ]
  %i.ly = add i32 %.55081100, 1                   ; 3 uses
  %i.lz = fmul double %i.lx, 1.000000e+01         ; 2 uses
  %i.ma = fptosi double %i.lz to i32              ; 2 uses
  %i.mb = sitofp i32 %i.ma to double
  %i.mc = fsub double %i.lz, %i.mb                ; 3 uses
  %i.md = fcmp une double %i.mc, 0.000000e+00
  %.3493 = select i1 %i.md, i32 %.34931101, i32 %i.ly ; 2 uses
  %i.me = trunc i32 %i.ma to i8
  %i.mf = add i8 %i.me, 48
  %i.mg = getelementptr i8, ptr %i.lw, i64 1      ; 2 uses
  store i8 %i.mf, ptr %i.lw, align 1, !tbaa !11
  %i.mh = icmp eq i32 %i.ly, %.3493
  br i1 %i.mh, label %._crit_edge1104, label %.lr.ph1103

.loopexit980:                                     ; preds = %bb.ch, %bb.ca, %bb.ce, %bb.br
  %i.mi = icmp sgt i32 %.1796.ph1342, -1
  %i.mj = icmp slt i32 %.2474, 15
  %or.cond14 = and i1 %i.mi, %i.mj
  br i1 %or.cond14, label %bb.cl, label %bb.cr

.loopexit980.thread:                              ; preds = %bb.ck
  %i.mk = icmp sgt i32 %.1796.ph1342, -1
  %i.ml = icmp slt i32 %.2474, 15
  %or.cond141344 = and i1 %i.mk, %i.ml
  br i1 %or.cond141344, label %bb.cl, label %.thread1345

bb.cl:                                            ; preds = %.loopexit980.thread, %.loopexit980
  %i.mm = sext i32 %.2474 to i64
  %i.mn = getelementptr [8 x i8], ptr @tens, i64 %i.mm
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !26 ; 7 uses
  %i.mp = icmp slt i32 %.0451836, 0
  %i.mq = icmp slt i32 %.0490816, 1
  %or.cond16 = select i1 %i.mp, i1 %i.mq, i1 false
  br i1 %or.cond16, label %bb.cm, label %.preheader968

.preheader968:                                    ; preds = %bb.cl
  %i.mr = fdiv double %.sroa.0.0794, %i.mo
  %i.ms = fptosi double %i.mr to i32              ; 3 uses
  %i.mt = sitofp i32 %i.ms to double
  %i.mu = fneg double %i.mt
  %i.mv = tail call double @llvm.fmuladd.f64(double %i.mu, double %i.mo, double %.sroa.0.0794) ; 3 uses
  %i.mw = trunc i32 %i.ms to i8
  %i.mx = add i8 %i.mw, 48
  %i.my = getelementptr i8, ptr %.1.i.i668, i64 5 ; 3 uses
  store i8 %i.mx, ptr %i.ih, align 4, !tbaa !11
  %i.mz = fcmp une double %i.mv, 0.000000e+00
  br i1 %i.mz, label %.lr.ph1108.preheader, label %.critedge

.lr.ph1108.preheader:                             ; preds = %.preheader968
  %i.na = icmp eq i32 %.0490816, 1
  br i1 %i.na, label %.lr.ph1108._crit_edge, label %.lr.ph1555

bb.cm:                                            ; preds = %bb.cl
  %i.nb = icmp sgt i32 %.0490816, -1
  %i.nc = fmul double %i.mo, 5.000000e+00
  %i.nd = fcmp ugt double %.sroa.0.0794, %i.nc
  %or.cond965 = select i1 %i.nb, i1 %i.nd, i1 false
  br i1 %or.cond965, label %cmp.exit690.thread858, label %cmp.exit690.thread

.lr.ph1108:                                       ; preds = %.lr.ph1555
  %i.ne = add i32 %.650911071554, 1               ; 2 uses
  %i.nf = icmp eq i32 %i.ne, %.0490816
  br i1 %i.nf, label %.lr.ph1108._crit_edge, label %.lr.ph1555

.lr.ph1108._crit_edge:                            ; preds = %.lr.ph1108, %.lr.ph1108.preheader
  %.lcssa1464 = phi ptr [ %i.my, %.lr.ph1108.preheader ], [ %i.ol, %.lr.ph1108 ] ; 5 uses
  %.lcssa1462 = phi double [ %i.mv, %.lr.ph1108.preheader ], [ %i.oi, %.lr.ph1108 ] ; 2 uses
  %.lcssa1460 = phi i32 [ %i.ms, %.lr.ph1108.preheader ], [ %i.of, %.lr.ph1108 ]
  %i.ng = fadd double %.lcssa1462, %.lcssa1462    ; 2 uses
  %i.nh = fcmp ogt double %i.ng, %i.mo
  br i1 %i.nh, label %.loopexit979, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph1108._crit_edge
  %i.ni = fcmp une double %i.ng, %i.mo
  %i.nj = and i32 %.lcssa1460, 1
  %.not614 = icmp eq i32 %i.nj, 0
  %or.cond630 = select i1 %i.ni, i1 true, i1 %.not614
  br i1 %or.cond630, label %.preheader.preheader, label %.loopexit979

.preheader.preheader:                             ; preds = %bb.cn
  %i.nk = icmp ugt ptr %.lcssa1464, %i.ih
  br i1 %i.nk, label %.lr.ph1559, label %.critedge

.loopexit979:                                     ; preds = %.lr.ph1097, %bb.cn, %.lr.ph1108._crit_edge, %._crit_edge1104
  %.5477 = phi i32 [ %.2474, %.lr.ph1108._crit_edge ], [ %.2474, %bb.cn ], [ %.3475, %._crit_edge1104 ], [ %.3475, %.lr.ph1097 ] ; 2 uses
  %.5 = phi ptr [ %.lcssa1464, %.lr.ph1108._crit_edge ], [ %.lcssa1464, %bb.cn ], [ %.lcssa1073, %._crit_edge1104 ], [ %i.ks, %.lr.ph1097 ] ; 4 uses
  %i.nl = add i64 %.1.i.i6681218, 5
  %.51221 = ptrtoaddr ptr %.5 to i64              ; 2 uses
  %i.nm = sub i64 %i.nl, %.51221
  %scevgep1222 = getelementptr i8, ptr %.5, i64 %i.nm
  %i.nn = add i64 %.1.i.i6681218, 4
  %i.no = sub i64 %i.nn, %.51221
  %scevgep1223 = getelementptr i8, ptr %.5, i64 %i.no ; 2 uses
  br label %bb.co

bb.co:                                            ; preds = %bb.cp, %.loopexit979
  %.6 = phi ptr [ %.5, %.loopexit979 ], [ %i.np, %bb.cp ] ; 2 uses
  %i.np = getelementptr i8, ptr %.6, i64 -1       ; 4 uses
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !11  ; 2 uses
  %i.nr = icmp eq i8 %i.nq, 57
  br i1 %i.nr, label %bb.cp, label %.loopexit.loopexit

bb.cp:                                            ; preds = %bb.co
  %i.ns = icmp eq ptr %i.np, %i.ih
  br i1 %i.ns, label %bb.cq, label %bb.co, !llvm.loop !156

bb.cq:                                            ; preds = %bb.cp
  %i.nt = add i32 %.5477, 1
  store i8 48, ptr %scevgep1223, align 1, !tbaa !11
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.co
  %i.nu = add i8 %i.nq, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.cq
  %i.nv = phi i8 [ 49, %bb.cq ], [ %i.nu, %.loopexit.loopexit ]
  %.61119 = phi ptr [ %scevgep1222, %bb.cq ], [ %.6, %.loopexit.loopexit ]
  %i.nw = phi ptr [ %scevgep1223, %bb.cq ], [ %i.np, %.loopexit.loopexit ]
  %.6478 = phi i32 [ %i.nt, %bb.cq ], [ %.5477, %.loopexit.loopexit ]
  store i8 %i.nv, ptr %i.nw, align 1, !tbaa !11
  br label %.critedge

.preheader:                                       ; preds = %.lr.ph1559
  %i.nx = icmp ugt ptr %i.ny, %i.ih
  br i1 %i.nx, label %.lr.ph1559, label %.critedge, !llvm.loop !157

.lr.ph1559:                                       ; preds = %.preheader.preheader, %.preheader
  %.71558 = phi ptr [ %i.ny, %.preheader ], [ %.lcssa1464, %.preheader.preheader ] ; 2 uses
  %i.ny = getelementptr i8, ptr %.71558, i64 -1   ; 4 uses
  %i.nz = load i8, ptr %i.ny, align 1, !tbaa !11
  %i.oa = icmp eq i8 %i.nz, 48
  br i1 %i.oa, label %.preheader, label %..critedge.loopexit_crit_edge, !llvm.loop !157

.lr.ph1555:                                       ; preds = %.lr.ph1108.preheader, %.lr.ph1108
  %.650911071554 = phi i32 [ %i.ne, %.lr.ph1108 ], [ 1, %.lr.ph1108.preheader ]
  %i.ob = phi double [ %i.oi, %.lr.ph1108 ], [ %i.mv, %.lr.ph1108.preheader ]
  %i.oc = phi ptr [ %i.ol, %.lr.ph1108 ], [ %i.my, %.lr.ph1108.preheader ] ; 2 uses
  %i.od = fmul double %i.ob, 1.000000e+01         ; 2 uses
  %i.oe = fdiv double %i.od, %i.mo
  %i.of = fptosi double %i.oe to i32              ; 3 uses
  %i.og = sitofp i32 %i.of to double
  %i.oh = fneg double %i.og
  %i.oi = tail call double @llvm.fmuladd.f64(double %i.oh, double %i.mo, double %i.od) ; 3 uses
  %i.oj = trunc i32 %i.of to i8
  %i.ok = add i8 %i.oj, 48
  %i.ol = getelementptr i8, ptr %i.oc, i64 1      ; 3 uses
  store i8 %i.ok, ptr %i.oc, align 1, !tbaa !11
  %i.om = fcmp une double %i.oi, 0.000000e+00
  br i1 %i.om, label %.lr.ph1108, label %.critedge

bb.cr:                                            ; preds = %.loopexit980
  %i.on = icmp eq i32 %.2469830, 0
  br i1 %i.on, label %.thread1345, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.oo = add nsw i32 %.1796.ph1342, 1075
  %i.op = sub nsw i32 54, %.0797.ph1340
  %i.oq = select i1 %.not.i663, i32 %i.oo, i32 %i.op ; 2 uses
  %i.or = add i32 %.1462, %i.oq
  %i.os = add i32 %.1457, %i.oq
  %i.ot = load ptr, ptr %i.br, align 8, !tbaa !39 ; 3 uses
  %i.ou = getelementptr i8, ptr %i.ot, i64 11968  ; 2 uses
  %i.ov = load ptr, ptr %i.ou, align 8, !tbaa !41 ; 3 uses
  %.not.i.i671 = icmp eq ptr %i.ov, null
  br i1 %.not.i.i671, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !43
  store ptr %i.ow, ptr %i.ou, align 8, !tbaa !41
  br label %i2b.exit

bb.cu:                                            ; preds = %bb.cs
  %i.ox = getelementptr i8, ptr %i.ot, i64 14328  ; 2 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !45 ; 3 uses
  %i.oz = getelementptr i8, ptr %i.ot, i64 12024
  %i.pa = ptrtoint ptr %i.oy to i64
  %i.pb = ptrtoint ptr %i.oz to i64
  %i.pc = sub i64 %i.pa, %i.pb
  %i.pd = icmp slt i64 %i.pc, 2272
  br i1 %i.pd, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.pe = getelementptr i8, ptr %i.oy, i64 40
  store ptr %i.pe, ptr %i.ox, align 8, !tbaa !45
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cu
  %i.pf = tail call ptr @PyMem_Malloc(i64 noundef 40) #11 ; 2 uses
  %i.pg = icmp eq ptr %i.pf, null
  br i1 %i.pg, label %Bfree.exit734, label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.cv
  %.024.i.i674 = phi ptr [ %i.oy, %bb.cv ], [ %i.pf, %bb.cw ] ; 3 uses
  %i.ph = getelementptr i8, ptr %.024.i.i674, i64 8
  store i32 1, ptr %i.ph, align 8, !tbaa !134
  %i.pi = getelementptr i8, ptr %.024.i.i674, i64 12
  store i32 2, ptr %i.pi, align 4, !tbaa !135
  br label %i2b.exit

i2b.exit:                                         ; preds = %bb.ct, %bb.cx
  %.1.i.i672 = phi ptr [ %i.ov, %bb.ct ], [ %.024.i.i674, %bb.cx ] ; 4 uses
  %i.pj = getelementptr i8, ptr %.1.i.i672, i64 20
  %i.pk = getelementptr i8, ptr %.1.i.i672, i64 16
  store i32 0, ptr %i.pk, align 8, !tbaa !136
  %i.pl = getelementptr i8, ptr %.1.i.i672, i64 24
  store i32 1, ptr %i.pl, align 8, !tbaa !7
  store i32 1, ptr %i.pj, align 4, !tbaa !137
  br label %.thread1345

.thread1345:                                      ; preds = %.loopexit980.thread, %i2b.exit, %bb.cr
  %i.pm = phi i1 [ false, %i2b.exit ], [ true, %bb.cr ], [ true, %.loopexit980.thread ] ; 4 uses
  %.2463 = phi i32 [ %i.or, %i2b.exit ], [ %.1462, %bb.cr ], [ %.1462, %.loopexit980.thread ] ; 2 uses
  %.2458 = phi i32 [ %i.os, %i2b.exit ], [ %.1457, %bb.cr ], [ %.1457, %.loopexit980.thread ] ; 4 uses
  %.2413 = phi ptr [ %.1.i.i672, %i2b.exit ], [ null, %bb.cr ], [ null, %.loopexit980.thread ] ; 4 uses
  %i.pn = icmp sgt i32 %.1462, 0
  %i.po = icmp sgt i32 %.2458, 0
  %or.cond18 = select i1 %i.pn, i1 %i.po, i1 false
  br i1 %or.cond18, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %.thread1345
  %i.pp = tail call i32 @llvm.umin.i32(i32 %.1462, i32 %.2458) ; 3 uses
  %i.pq = sub i32 %.2463, %i.pp
  %i.pr = sub nsw i32 %.1462, %i.pp
  %i.ps = sub nsw i32 %.2458, %i.pp
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.thread1345
  %.0466 = phi i32 [ %i.pr, %bb.cy ], [ %.1462, %.thread1345 ]
  %.3464 = phi i32 [ %i.pq, %bb.cy ], [ %.2463, %.thread1345 ] ; 3 uses
  %.3459 = phi i32 [ %i.ps, %bb.cy ], [ %.2458, %.thread1345 ] ; 3 uses
  %i.pt = icmp sgt i32 %.0471, 0
  br i1 %i.pt, label %bb.da, label %bb.dg

bb.da:                                            ; preds = %bb.cz
  br i1 %i.pm, label %bb.df, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pu = tail call fastcc ptr @pow5mult(ptr noundef %.2413, i32 noundef %.0471) ; 4 uses
  %i.pv = icmp eq ptr %i.pu, null
  br i1 %i.pv, label %Bfree.exit734, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.pw = tail call fastcc ptr @mult(ptr noundef nonnull %i.pu, ptr noundef nonnull %.1.i.i) ; 2 uses
  %i.px = getelementptr i8, ptr %.1.i.i, i64 8
  %i.py = load i32, ptr %i.px, align 8, !tbaa !134 ; 2 uses
  %i.pz = icmp sgt i32 %i.py, 7
  br i1 %i.pz, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  tail call void @PyMem_Free(ptr noundef nonnull %.1.i.i) #11
  br label %Bfree.exit

bb.de:                                            ; preds = %bb.dc
  %i.qa = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.qb = getelementptr i8, ptr %i.qa, i64 11960
  %i.qc = sext i32 %i.py to i64
  %i.qd = getelementptr [8 x i8], ptr %i.qb, i64 %i.qc ; 2 uses
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !41
  store ptr %i.qe, ptr %.1.i.i, align 8, !tbaa !43
  store ptr %.1.i.i, ptr %i.qd, align 8, !tbaa !41
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.dd, %bb.de
  %i.qf = icmp eq ptr %i.pw, null
  br i1 %i.qf, label %Bfree.exit732.thread943, label %bb.dg

bb.df:                                            ; preds = %bb.da
  %i.qg = tail call fastcc ptr @pow5mult(ptr noundef nonnull %.1.i.i, i32 noundef %.0471) ; 2 uses
  %i.qh = icmp eq ptr %i.qg, null
  br i1 %i.qh, label %Bfree.exit732, label %bb.dg

bb.dg:                                            ; preds = %Bfree.exit, %bb.df, %bb.cz
  %.1437 = phi ptr [ %.1.i.i, %bb.cz ], [ %i.qg, %bb.df ], [ %i.pw, %Bfree.exit ] ; 4 uses
  %.4415 = phi ptr [ %.2413, %bb.cz ], [ %.2413, %bb.df ], [ %i.pu, %Bfree.exit ] ; 11 uses
  %i.qi = load ptr, ptr %i.br, align 8, !tbaa !39 ; 3 uses
  %i.qj = getelementptr i8, ptr %i.qi, i64 11968  ; 2 uses
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !41 ; 3 uses
  %.not.i.i676 = icmp eq ptr %i.qk, null
  br i1 %.not.i.i676, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !43
  store ptr %i.ql, ptr %i.qj, align 8, !tbaa !41
  br label %bb.dm

bb.di:                                            ; preds = %bb.dg
  %i.qm = getelementptr i8, ptr %i.qi, i64 14328  ; 2 uses
end_hunk_1
begin_hunk_2_@_Py_dg_dtoa:bb.a
bb.fo:                                            ; preds = %bb.fn
  %i.wr = getelementptr i8, ptr %i.wl, i64 24     ; 2 uses
  %i.ws = sext i32 %i.wo to i64                   ; 2 uses
  %i.wt = getelementptr [4 x i8], ptr %i.wr, i64 %i.ws
  %i.wu = getelementptr i8, ptr %.3406, i64 24
  %i.wv = getelementptr [4 x i8], ptr %i.wu, i64 %i.ws
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fr, %bb.fo
  %.018.i709 = phi ptr [ %i.wv, %bb.fo ], [ %i.wy, %bb.fr ]
  %.017.i710 = phi ptr [ %i.wt, %bb.fo ], [ %i.ww, %bb.fr ]
  %i.ww = getelementptr i8, ptr %.017.i710, i64 -4 ; 3 uses
  %i.wx = load i32, ptr %i.ww, align 4, !tbaa !7  ; 2 uses
  %i.wy = getelementptr i8, ptr %.018.i709, i64 -4 ; 2 uses
  %i.wz = load i32, ptr %i.wy, align 4, !tbaa !7  ; 2 uses
  %.not23.i711 = icmp eq i32 %i.wx, %i.wz
  br i1 %.not23.i711, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  %i.xa = icmp ult i32 %i.wx, %i.wz
  br i1 %i.xa, label %.thread869, label %cmp.exit713.thread863

bb.fr:                                            ; preds = %bb.fp
  %.not24.i712 = icmp ugt ptr %i.ww, %i.wr
  br i1 %.not24.i712, label %bb.fp, label %bb.fs

cmp.exit713:                                      ; preds = %bb.fn
  %i.xb = sub i32 %i.wo, %i.wq
  %i.xc = icmp sgt i32 %i.xb, 0
  br i1 %i.xc, label %cmp.exit713.thread863, label %.thread869

bb.fs:                                            ; preds = %bb.fr
  %i.xd = and i32 %i.uc, 1
  %.not613 = icmp eq i32 %i.xd, 0
  br i1 %.not613, label %.thread869, label %cmp.exit713.thread863

cmp.exit713.thread863:                            ; preds = %bb.fq, %bb.fs, %cmp.exit713
  %i.xe = add i32 %i.uc, 49
  %i.xf = icmp eq i32 %i.ud, 57
  br i1 %i.xf, label %bb.fv, label %.thread869

.thread869:                                       ; preds = %cmp.exit713, %bb.fq, %bb.fl, %cmp.exit713.thread863, %bb.fs, %bb.fk
  %.1488 = phi i32 [ %i.xe, %cmp.exit713.thread863 ], [ %i.ud, %bb.fk ], [ %i.ud, %bb.fs ], [ %i.ud, %bb.fl ], [ %i.ud, %bb.fq ], [ %i.ud, %cmp.exit713 ]
  %.7443 = phi ptr [ %i.wl, %cmp.exit713.thread863 ], [ %.6442, %bb.fk ], [ %i.wl, %bb.fs ], [ %.6442, %bb.fl ], [ %i.wl, %bb.fq ], [ %i.wl, %cmp.exit713 ]
  %i.xg = trunc i32 %.1488 to i8
  %i.xh = getelementptr i8, ptr %.10, i64 1
  store i8 %i.xg, ptr %.10, align 1, !tbaa !11
  br label %.loopexit971

bb.ft:                                            ; preds = %bb.fi
  %i.xi = icmp sgt i32 %i.vn, 0
  br i1 %i.xi, label %bb.fu, label %bb.fx

bb.fu:                                            ; preds = %bb.ft
  %i.xj = icmp eq i32 %i.ud, 57
  br i1 %i.xj, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %bb.fu, %cmp.exit713.thread863, %bb.ff
  %.8444 = phi ptr [ %i.wl, %cmp.exit713.thread863 ], [ %.6442, %bb.fu ], [ %.6442, %bb.ff ]
  %i.xk = getelementptr i8, ptr %.10, i64 1
  store i8 57, ptr %.10, align 1, !tbaa !11
  br label %cmp.exit720.thread876

bb.fw:                                            ; preds = %bb.fu
  %i.xl = trunc i32 %i.uc to i8
  %i.xm = add i8 %i.xl, 49
  %i.xn = getelementptr i8, ptr %.10, i64 1
  store i8 %i.xm, ptr %.10, align 1, !tbaa !11
  br label %.loopexit971

bb.fx:                                            ; preds = %bb.ft
  %i.xo = trunc i32 %i.ud to i8
  %i.xp = getelementptr i8, ptr %.10, i64 1       ; 2 uses
  store i8 %i.xo, ptr %.10, align 1, !tbaa !11
  %i.xq = icmp eq i32 %.7510, %.5495
  br i1 %i.xq, label %.loopexit973, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.xr = tail call fastcc ptr @multadd(ptr noundef nonnull %.6442, i32 noundef 10, i32 noundef 0) ; 5 uses
  %i.xs = icmp eq ptr %i.xr, null
  br i1 %i.xs, label %d2b.exit.thread915, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.xt = icmp eq ptr %.0428, %.11422
  br i1 %i.xt, label %bb.ga, label %bb.gb

bb.ga:                                            ; preds = %bb.fz
  %i.xu = tail call fastcc ptr @multadd(ptr noundef %.11422, i32 noundef 10, i32 noundef 0) ; 3 uses
  %i.xv = icmp eq ptr %i.xu, null
  br i1 %i.xv, label %d2b.exit.thread915, label %bb.gd

bb.gb:                                            ; preds = %bb.fz
  %i.xw = tail call fastcc ptr @multadd(ptr noundef %.0428, i32 noundef 10, i32 noundef 0) ; 3 uses
  %i.xx = icmp eq ptr %i.xw, null
  br i1 %i.xx, label %d2b.exit.thread915, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.xy = tail call fastcc ptr @multadd(ptr noundef %.11422, i32 noundef 10, i32 noundef 0) ; 2 uses
  %i.xz = icmp eq ptr %i.xy, null
  br i1 %i.xz, label %d2b.exit.thread915, label %bb.gd

bb.gd:                                            ; preds = %bb.ga, %bb.gc
  %.1429 = phi ptr [ %i.xu, %bb.ga ], [ %i.xw, %bb.gc ]
  %.12423 = phi ptr [ %i.xu, %bb.ga ], [ %i.xy, %bb.gc ]
  %i.ya = add i32 %.7510, 1
  br label %bb.es

.preheader972:                                    ; preds = %.preheader972.preheader, %bb.gg
  %.8511 = phi i32 [ %i.ym, %bb.gg ], [ 1, %.preheader972.preheader ] ; 2 uses
  %.9445 = phi ptr [ %i.yk, %bb.gg ], [ %.3439, %.preheader972.preheader ] ; 6 uses
  %.11 = phi ptr [ %i.ye, %bb.gg ], [ %i.ih, %.preheader972.preheader ] ; 2 uses
  %i.yb = tail call fastcc i32 @quorem(ptr noundef %.9445, ptr noundef %.3406)
  %i.yc = add i32 %i.yb, 48                       ; 2 uses
  %i.yd = trunc i32 %i.yc to i8
  %i.ye = getelementptr i8, ptr %.11, i64 1       ; 3 uses
  store i8 %i.yd, ptr %.11, align 1, !tbaa !11
  %i.yf = getelementptr i8, ptr %.9445, i64 24
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !7
  %.not605 = icmp eq i32 %i.yg, 0
  br i1 %.not605, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %.preheader972
  %i.yh = getelementptr i8, ptr %.9445, i64 20
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !137
  %i.yj = icmp slt i32 %i.yi, 2
  br i1 %i.yj, label %.thread878, label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %.preheader972
  %exitcond1217.not = icmp eq i32 %.8511, %smax1216
  br i1 %exitcond1217.not, label %.loopexit973, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.yk = tail call fastcc ptr @multadd(ptr noundef nonnull %.9445, i32 noundef 10, i32 noundef 0) ; 2 uses
  %i.yl = icmp eq ptr %i.yk, null
  %i.ym = add nuw i32 %.8511, 1
  br i1 %i.yl, label %d2b.exit.thread915, label %.preheader972

.loopexit973:                                     ; preds = %bb.fx, %bb.gf
  %.2489 = phi i32 [ %i.yc, %bb.gf ], [ %i.ud, %bb.fx ]
  %.10446 = phi ptr [ %.9445, %bb.gf ], [ %.6442, %bb.fx ]
  %.2430 = phi ptr [ null, %bb.gf ], [ %.0428, %bb.fx ] ; 5 uses
  %.13424 = phi ptr [ %.6417, %bb.gf ], [ %.11422, %bb.fx ] ; 5 uses
  %.12 = phi ptr [ %i.ye, %bb.gf ], [ %i.xp, %bb.fx ] ; 4 uses
  %i.yn = tail call fastcc ptr @lshift(ptr noundef nonnull %.10446, i32 noundef 1) ; 7 uses
  %i.yo = icmp eq ptr %i.yn, null
  br i1 %i.yo, label %d2b.exit.thread915, label %bb.gh

bb.gh:                                            ; preds = %.loopexit973
  %i.yp = getelementptr i8, ptr %i.yn, i64 20
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !137 ; 3 uses
  %i.yr = getelementptr i8, ptr %.3406, i64 20
  %i.ys = load i32, ptr %i.yr, align 4, !tbaa !137 ; 2 uses
  %.not.i714 = icmp eq i32 %i.yq, %i.ys
  br i1 %.not.i714, label %bb.gi, label %cmp.exit720

bb.gi:                                            ; preds = %bb.gh
  %i.yt = getelementptr i8, ptr %i.yn, i64 24     ; 2 uses
  %i.yu = sext i32 %i.yq to i64                   ; 2 uses
  %i.yv = getelementptr [4 x i8], ptr %i.yt, i64 %i.yu
  %i.yw = getelementptr i8, ptr %.3406, i64 24
  %i.yx = getelementptr [4 x i8], ptr %i.yw, i64 %i.yu
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gl, %bb.gi
  %.018.i716 = phi ptr [ %i.yx, %bb.gi ], [ %i.za, %bb.gl ]
  %.017.i717 = phi ptr [ %i.yv, %bb.gi ], [ %i.yy, %bb.gl ]
  %i.yy = getelementptr i8, ptr %.017.i717, i64 -4 ; 3 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !7  ; 2 uses
  %i.za = getelementptr i8, ptr %.018.i716, i64 -4 ; 2 uses
  %i.zb = load i32, ptr %i.za, align 4, !tbaa !7  ; 2 uses
  %.not23.i718 = icmp eq i32 %i.yz, %i.zb
  br i1 %.not23.i718, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.zc = icmp ult i32 %i.yz, %i.zb
  br i1 %i.zc, label %.preheader970.preheader, label %cmp.exit720.thread876

bb.gl:                                            ; preds = %bb.gj
  %.not24.i719 = icmp ugt ptr %i.yy, %i.yt
  br i1 %.not24.i719, label %bb.gj, label %cmp.exit720.thread

cmp.exit720:                                      ; preds = %bb.gh
  %i.zd = sub i32 %i.yq, %i.ys
  %i.ze = icmp sgt i32 %i.zd, 0
  br i1 %i.ze, label %cmp.exit720.thread876, label %.preheader970.preheader

cmp.exit720.thread:                               ; preds = %bb.gl
  %i.zf = and i32 %.2489, 1
  %.not611 = icmp eq i32 %i.zf, 0
  br i1 %.not611, label %.preheader970.preheader, label %cmp.exit720.thread876

.preheader970.preheader:                          ; preds = %bb.gk, %cmp.exit720, %cmp.exit720.thread
  br label %.preheader970

cmp.exit720.thread876:                            ; preds = %bb.gk, %cmp.exit720.thread, %cmp.exit720, %bb.fv
  %.11447 = phi ptr [ %.8444, %bb.fv ], [ %i.yn, %cmp.exit720 ], [ %i.yn, %cmp.exit720.thread ], [ %i.yn, %bb.gk ] ; 2 uses
  %.3431 = phi ptr [ %.0428, %bb.fv ], [ %.2430, %cmp.exit720 ], [ %.2430, %cmp.exit720.thread ], [ %.2430, %bb.gk ] ; 2 uses
  %.14425 = phi ptr [ %.11422, %bb.fv ], [ %.13424, %cmp.exit720 ], [ %.13424, %cmp.exit720.thread ], [ %.13424, %bb.gk ] ; 2 uses
  %.13 = phi ptr [ %i.xk, %bb.fv ], [ %.12, %cmp.exit720 ], [ %.12, %cmp.exit720.thread ], [ %.12, %bb.gk ] ; 4 uses
  %i.zg = add i64 %.1.i.i6681218, 5
  %.131219 = ptrtoaddr ptr %.13 to i64            ; 2 uses
  %i.zh = sub i64 %i.zg, %.131219
  %scevgep = getelementptr i8, ptr %.13, i64 %i.zh
  %i.zi = add i64 %.1.i.i6681218, 4
  %i.zj = sub i64 %i.zi, %.131219
  %scevgep1220 = getelementptr i8, ptr %.13, i64 %i.zj
  br label %bb.gm

bb.gm:                                            ; preds = %bb.gn, %cmp.exit720.thread876
  %.14 = phi ptr [ %.13, %cmp.exit720.thread876 ], [ %i.zk, %bb.gn ] ; 2 uses
  %i.zk = getelementptr i8, ptr %.14, i64 -1      ; 4 uses
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !11  ; 2 uses
  %i.zm = icmp eq i8 %i.zl, 57
  br i1 %i.zm, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  %i.zn = icmp eq ptr %i.zk, %i.ih
  br i1 %i.zn, label %bb.go, label %bb.gm, !llvm.loop !158

bb.go:                                            ; preds = %bb.gn
  %i.zo = add i32 %.7479, 1
  store i8 49, ptr %scevgep1220, align 1, !tbaa !11
  br label %.loopexit971

bb.gp:                                            ; preds = %bb.gm
  %i.zp = add i8 %i.zl, 1
  store i8 %i.zp, ptr %i.zk, align 1, !tbaa !11
  br label %.loopexit971

.preheader970:                                    ; preds = %.preheader970.preheader, %.preheader970
  %.15 = phi ptr [ %i.zq, %.preheader970 ], [ %.12, %.preheader970.preheader ] ; 2 uses
  %i.zq = getelementptr i8, ptr %.15, i64 -1      ; 2 uses
  %i.zr = load i8, ptr %i.zq, align 1, !tbaa !11
  %i.zs = icmp eq i8 %i.zr, 48
  br i1 %i.zs, label %.preheader970, label %.loopexit971, !llvm.loop !159

.loopexit971:                                     ; preds = %.preheader970, %bb.gp, %bb.go, %bb.fw, %.thread869, %bb.fg, %cmp.exit690.thread858, %cmp.exit690.thread
  %.9481 = phi i32 [ %i.sp, %cmp.exit690.thread ], [ %i.tj, %cmp.exit690.thread858 ], [ %i.zo, %bb.go ], [ %.7479, %bb.gp ], [ %.7479, %.thread869 ], [ %.7479, %bb.fw ], [ %.7479, %bb.fg ], [ %.7479, %.preheader970 ] ; 2 uses
  %.12448 = phi ptr [ %.4440, %cmp.exit690.thread ], [ %.5441, %cmp.exit690.thread858 ], [ %.11447, %bb.go ], [ %.11447, %bb.gp ], [ %.7443, %.thread869 ], [ %.6442, %bb.fw ], [ %.6442, %bb.fg ], [ %i.yn, %.preheader970 ] ; 2 uses
  %.4432 = phi ptr [ null, %cmp.exit690.thread ], [ null, %cmp.exit690.thread858 ], [ %.3431, %bb.go ], [ %.3431, %bb.gp ], [ %.0428, %.thread869 ], [ %.0428, %bb.fw ], [ %.0428, %bb.fg ], [ %.2430, %.preheader970 ] ; 2 uses
  %.15426 = phi ptr [ %.7418, %cmp.exit690.thread ], [ %.8419, %cmp.exit690.thread858 ], [ %.14425, %bb.go ], [ %.14425, %bb.gp ], [ %.11422, %.thread869 ], [ %.11422, %bb.fw ], [ %.11422, %bb.fg ], [ %.13424, %.preheader970 ] ; 2 uses
  %.6409 = phi ptr [ %.4407, %cmp.exit690.thread ], [ %.5408, %cmp.exit690.thread858 ], [ %.3406, %bb.go ], [ %.3406, %bb.gp ], [ %.3406, %.thread869 ], [ %.3406, %bb.fw ], [ %.3406, %bb.fg ], [ %.3406, %.preheader970 ] ; 2 uses
  %.16 = phi ptr [ %i.ih, %cmp.exit690.thread ], [ %i.ti, %cmp.exit690.thread858 ], [ %scevgep, %bb.go ], [ %.14, %bb.gp ], [ %i.xh, %.thread869 ], [ %i.xn, %bb.fw ], [ %i.wc, %bb.fg ], [ %.15, %.preheader970 ] ; 2 uses
  %.not.i721 = icmp eq ptr %.6409, null
  br i1 %.not.i721, label %Bfree.exit722, label %.thread878

.thread878:                                       ; preds = %bb.ge, %.loopexit971
  %.16898 = phi ptr [ %.16, %.loopexit971 ], [ %i.ye, %bb.ge ] ; 2 uses
  %.6409897 = phi ptr [ %.6409, %.loopexit971 ], [ %.3406, %bb.ge ] ; 4 uses
  %.15426895 = phi ptr [ %.15426, %.loopexit971 ], [ %.6417, %bb.ge ] ; 2 uses
  %.4432893 = phi ptr [ %.4432, %.loopexit971 ], [ null, %bb.ge ] ; 2 uses
  %.12448891 = phi ptr [ %.12448, %.loopexit971 ], [ %.9445, %bb.ge ] ; 2 uses
  %.9481889 = phi i32 [ %.9481, %.loopexit971 ], [ %.7479, %bb.ge ] ; 2 uses
  %i.zt = getelementptr i8, ptr %.6409897, i64 8
  %i.zu = load i32, ptr %i.zt, align 8, !tbaa !134 ; 2 uses
  %i.zv = icmp sgt i32 %i.zu, 7
  br i1 %i.zv, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %.thread878
  tail call void @PyMem_Free(ptr noundef nonnull %.6409897) #11
  br label %Bfree.exit722

bb.gr:                                            ; preds = %.thread878
  %i.zw = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.zx = getelementptr i8, ptr %i.zw, i64 11960
  %i.zy = sext i32 %i.zu to i64
  %i.zz = getelementptr [8 x i8], ptr %i.zx, i64 %i.zy ; 2 uses
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !41
  store ptr %i.aaa, ptr %.6409897, align 8, !tbaa !43
  store ptr %.6409897, ptr %i.zz, align 8, !tbaa !41
  br label %Bfree.exit722

Bfree.exit722:                                    ; preds = %.loopexit971, %bb.gq, %bb.gr
  %.16899 = phi ptr [ %.16, %.loopexit971 ], [ %.16898, %bb.gq ], [ %.16898, %bb.gr ] ; 3 uses
  %.15426896 = phi ptr [ %.15426, %.loopexit971 ], [ %.15426895, %bb.gq ], [ %.15426895, %bb.gr ] ; 6 uses
  %.4432894 = phi ptr [ %.4432, %.loopexit971 ], [ %.4432893, %bb.gq ], [ %.4432893, %bb.gr ] ; 6 uses
  %.12448892 = phi ptr [ %.12448, %.loopexit971 ], [ %.12448891, %bb.gq ], [ %.12448891, %bb.gr ] ; 3 uses
  %.9481890 = phi i32 [ %.9481, %.loopexit971 ], [ %.9481889, %bb.gq ], [ %.9481889, %bb.gr ] ; 3 uses
  %.not615 = icmp eq ptr %.15426896, null
  br i1 %.not615, label %.critedge, label %bb.gs

bb.gs:                                            ; preds = %Bfree.exit722
  %.not616 = icmp eq ptr %.4432894, null
  %.not617 = icmp eq ptr %.4432894, %.15426896
  %or.cond635 = or i1 %.not616, %.not617
  br i1 %or.cond635, label %Bfree.exit724, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  %i.aab = getelementptr i8, ptr %.4432894, i64 8
  %i.aac = load i32, ptr %i.aab, align 8, !tbaa !134 ; 2 uses
  %i.aad = icmp sgt i32 %i.aac, 7
  br i1 %i.aad, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  tail call void @PyMem_Free(ptr noundef nonnull %.4432894) #11
  br label %Bfree.exit724

bb.gv:                                            ; preds = %bb.gt
  %i.aae = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.aaf = getelementptr i8, ptr %i.aae, i64 11960
  %i.aag = sext i32 %i.aac to i64
  %i.aah = getelementptr [8 x i8], ptr %i.aaf, i64 %i.aag ; 2 uses
  %i.aai = load ptr, ptr %i.aah, align 8, !tbaa !41
  store ptr %i.aai, ptr %.4432894, align 8, !tbaa !43
  store ptr %.4432894, ptr %i.aah, align 8, !tbaa !41
  br label %Bfree.exit724

Bfree.exit724:                                    ; preds = %bb.gs, %bb.gu, %bb.gv
  %i.aaj = getelementptr i8, ptr %.15426896, i64 8
  %i.aak = load i32, ptr %i.aaj, align 8, !tbaa !134 ; 2 uses
  %i.aal = icmp sgt i32 %i.aak, 7
  br i1 %i.aal, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %Bfree.exit724
  tail call void @PyMem_Free(ptr noundef nonnull %.15426896) #11
  br label %.critedge

bb.gx:                                            ; preds = %Bfree.exit724
  %i.aam = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.aan = getelementptr i8, ptr %i.aam, i64 11960
  %i.aao = sext i32 %i.aak to i64
  %i.aap = getelementptr [8 x i8], ptr %i.aan, i64 %i.aao ; 2 uses
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !41
  store ptr %i.aaq, ptr %.15426896, align 8, !tbaa !43
  store ptr %.15426896, ptr %i.aap, align 8, !tbaa !41
  br label %.critedge

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph1559
  br label %.critedge, !llvm.loop !157

.critedge:                                        ; preds = %bb.ci, %.preheader976, %.lr.ph1555, %.preheader, %.preheader.preheader, %..critedge.loopexit_crit_edge, %bb.cg, %.preheader968, %bb.gx, %bb.gw, %Bfree.exit722, %.loopexit
  %.10482 = phi i32 [ %.2474, %.preheader.preheader ], [ %.9481890, %Bfree.exit722 ], [ %.6478, %.loopexit ], [ %.9481890, %bb.gw ], [ %.9481890, %bb.gx ], [ %.2474, %.preheader ], [ %.2474, %.preheader968 ], [ %.3475, %bb.cg ], [ %.3475, %.preheader976 ], [ %.2474, %.lr.ph1555 ], [ %.2474, %..critedge.loopexit_crit_edge ], [ %.3475, %bb.ci ]
  %.13449 = phi ptr [ %.1.i.i, %.preheader.preheader ], [ %.12448892, %Bfree.exit722 ], [ %.1.i.i, %.loopexit ], [ %.12448892, %bb.gw ], [ %.12448892, %bb.gx ], [ %.1.i.i, %.preheader ], [ %.1.i.i, %.preheader968 ], [ %.1.i.i, %bb.cg ], [ %.1.i.i, %.preheader976 ], [ %.1.i.i, %.lr.ph1555 ], [ %.1.i.i, %..critedge.loopexit_crit_edge ], [ %.1.i.i, %bb.ci ] ; 5 uses
  %.17 = phi ptr [ %.lcssa1464, %.preheader.preheader ], [ %.16899, %Bfree.exit722 ], [ %.61119, %.loopexit ], [ %.16899, %bb.gw ], [ %.16899, %bb.gx ], [ %i.ny, %.preheader ], [ %i.my, %.preheader968 ], [ %i.ki, %bb.cg ], [ %.2, %.preheader976 ], [ %i.ol, %.lr.ph1555 ], [ %.71558, %..critedge.loopexit_crit_edge ], [ %i.le, %bb.ci ] ; 2 uses
  %.not.i727 = icmp eq ptr %.13449, null
  br i1 %.not.i727, label %Bfree.exit728, label %bb.gy

bb.gy:                                            ; preds = %.critedge
  %i.aar = getelementptr i8, ptr %.13449, i64 8
  %i.aas = load i32, ptr %i.aar, align 8, !tbaa !134 ; 2 uses
  %i.aat = icmp sgt i32 %i.aas, 7
  br i1 %i.aat, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  tail call void @PyMem_Free(ptr noundef nonnull %.13449) #11
  br label %Bfree.exit728

bb.ha:                                            ; preds = %bb.gy
  %i.aau = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.aav = getelementptr i8, ptr %i.aau, i64 11960
  %i.aaw = sext i32 %i.aas to i64
  %i.aax = getelementptr [8 x i8], ptr %i.aav, i64 %i.aaw ; 2 uses
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !41
  store ptr %i.aay, ptr %.13449, align 8, !tbaa !43
  store ptr %.13449, ptr %i.aax, align 8, !tbaa !41
  br label %Bfree.exit728

Bfree.exit728:                                    ; preds = %.critedge, %bb.gz, %bb.ha
  store i8 0, ptr %.17, align 1, !tbaa !11
  %i.aaz = add i32 %.10482, 1
  store i32 %i.aaz, ptr %3, align 4, !tbaa !7
  %.not618 = icmp eq ptr %5, null
  br i1 %.not618, label %nrv_alloc.exit, label %bb.hb

bb.hb:                                            ; preds = %Bfree.exit728
  store ptr %.17, ptr %5, align 8, !tbaa !17
  br label %nrv_alloc.exit

d2b.exit.thread915:                               ; preds = %bb.fy, %bb.ga, %bb.gb, %bb.gc, %cmp.exit697, %bb.gg, %cmp.exit.thread854, %bb.ec, %bb.en, %bb.ep, %bb.eq, %bb.fm, %.loopexit973, %bb.ds
  %.7410925 = phi ptr [ %.3406, %cmp.exit.thread854 ], [ %.2405, %bb.ds ], [ %.3406, %bb.eq ], [ %.3406, %.loopexit973 ], [ %.3406, %bb.ep ], [ %.3406, %bb.en ], [ %.3406, %bb.ec ], [ %.3406, %bb.gg ], [ %.3406, %bb.fm ], [ %.3406, %cmp.exit697 ], [ %.3406, %bb.gc ], [ %.3406, %bb.gb ], [ %.3406, %bb.ga ], [ %.3406, %bb.fy ] ; 4 uses
  %.16427924 = phi ptr [ %.4415, %cmp.exit.thread854 ], [ %.4415, %bb.ds ], [ null, %bb.eq ], [ %.13424, %.loopexit973 ], [ null, %bb.ep ], [ null, %bb.en ], [ null, %bb.ec ], [ %.6417, %bb.gg ], [ %.11422, %bb.fm ], [ null, %bb.ga ], [ %.11422, %bb.gb ], [ null, %bb.gc ], [ %.11422, %cmp.exit697 ], [ %.11422, %bb.fy ] ; 4 uses
  %.5433923 = phi ptr [ null, %cmp.exit.thread854 ], [ null, %bb.ds ], [ %.9420, %bb.eq ], [ %.2430, %.loopexit973 ], [ %.9420, %bb.ep ], [ null, %bb.en ], [ null, %bb.ec ], [ null, %bb.gg ], [ %.0428, %bb.fm ], [ null, %bb.ga ], [ null, %bb.gb ], [ %i.xw, %bb.gc ], [ %.0428, %cmp.exit697 ], [ %.0428, %bb.fy ] ; 6 uses
  %.14450922 = phi ptr [ null, %cmp.exit.thread854 ], [ null, %bb.ds ], [ %.3439, %bb.eq ], [ null, %.loopexit973 ], [ %.3439, %bb.ep ], [ %.3439, %bb.en ], [ %i.sj, %bb.ec ], [ null, %bb.gg ], [ null, %bb.fm ], [ %i.xr, %bb.ga ], [ %i.xr, %bb.gb ], [ %i.xr, %bb.gc ], [ %.6442, %cmp.exit697 ], [ null, %bb.fy ] ; 3 uses
  %i.aba = getelementptr i8, ptr %.7410925, i64 8
  %i.abb = load i32, ptr %i.aba, align 8, !tbaa !134 ; 2 uses
  %i.abc = icmp sgt i32 %i.abb, 7
  br i1 %i.abc, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %d2b.exit.thread915
  tail call void @PyMem_Free(ptr noundef nonnull %.7410925) #11
  br label %Bfree.exit730

bb.hd:                                            ; preds = %d2b.exit.thread915
  %i.abd = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.abe = getelementptr i8, ptr %i.abd, i64 11960
  %i.abf = sext i32 %i.abb to i64
  %i.abg = getelementptr [8 x i8], ptr %i.abe, i64 %i.abf ; 2 uses
  %i.abh = load ptr, ptr %i.abg, align 8, !tbaa !41
  store ptr %i.abh, ptr %.7410925, align 8, !tbaa !43
  store ptr %.7410925, ptr %i.abg, align 8, !tbaa !41
  br label %Bfree.exit730

Bfree.exit730:                                    ; preds = %bb.hd, %bb.hc
  %.not621 = icmp eq ptr %.5433923, null
  %.not622 = icmp eq ptr %.5433923, %.16427924
  %or.cond636 = select i1 %.not621, i1 true, i1 %.not622
  br i1 %or.cond636, label %Bfree.exit732, label %bb.he

bb.he:                                            ; preds = %Bfree.exit730
  %i.abi = getelementptr i8, ptr %.5433923, i64 8
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !134 ; 2 uses
end_hunk_2
