inline.NumInlined: 94
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@pow5mult:bb.a
  %i.n = load ptr, ptr %.0, align 8, !tbaa !41
  %i.o = tail call fastcc ptr @mult(ptr noundef %.1, ptr noundef %i.n) ; 2 uses
  %.not.i = icmp eq ptr %.1, null
  br i1 %.not.i, label %Bfree.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %.1, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !134  ; 2 uses
  %i.r = icmp sgt i32 %i.q, 7
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @PyMem_Free(ptr noundef nonnull %.1) #11
  br label %Bfree.exit

bb.i:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.t = getelementptr i8, ptr %i.s, i64 11960
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %i.u ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41
  store ptr %i.w, ptr %.1, align 8, !tbaa !43
  store ptr %.1, ptr %i.v, align 8, !tbaa !41
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.f, %bb.h, %bb.i
  %i.x = icmp eq ptr %i.o, null
  br i1 %i.x, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %Bfree.exit, %bb.e
  %.2 = phi ptr [ %i.o, %Bfree.exit ], [ %.1, %bb.e ] ; 2 uses
  %i.y = ashr i32 %.017, 1                        ; 2 uses
  %.not28 = icmp eq i32 %i.y, 0
  br i1 %.not28, label %.loopexit, label %bb.e

.loopexit:                                        ; preds = %Bfree.exit, %bb.j, %bb.c, %bb.b
  %.120 = phi ptr [ null, %bb.b ], [ %.018, %bb.c ], [ %.2, %bb.j ], [ null, %Bfree.exit ]
  ret ptr %.120
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
  %.0.i = phi ptr [ %i.q, %bb.g ], [ %i.x, %bb.h ] ; 3 uses
  %i.z = getelementptr i8, ptr %.0.i, i64 8
  store i32 0, ptr %i.z, align 8, !tbaa !134
  %i.aa = getelementptr i8, ptr %.0.i, i64 12
  store i32 1, ptr %i.aa, align 4, !tbaa !135
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.e
  %.1.i = phi ptr [ %i.n, %bb.e ], [ %.0.i, %bb.i ] ; 4 uses
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
  %spec.select = select i1 %i.ag, ptr %1, ptr %0  ; 4 uses
  %spec.select80 = select i1 %i.ag, ptr %0, ptr %1 ; 2 uses
  %i.ah = getelementptr i8, ptr %spec.select, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !134
  %i.aj = getelementptr i8, ptr %spec.select, i64 20
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !137 ; 2 uses
  %i.al = getelementptr i8, ptr %spec.select80, i64 20
  %i.am = load i32, ptr %i.al, align 4, !tbaa !137 ; 2 uses
  %i.an = add i32 %i.am, %i.ak                    ; 5 uses
  %i.ao = getelementptr i8, ptr %spec.select, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !135
  %i.aq = icmp sgt i32 %i.an, %i.ap
  %i.ar = zext i1 %i.aq to i32
  %.069 = add i32 %i.ai, %i.ar                    ; 5 uses
  %i.as = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 3 uses
  %i.au = icmp slt i32 %.069, 8
  br i1 %i.au, label %bb.k, label %bb.m

bb.k:                                             ; preds = %._crit_edge102
  %i.av = getelementptr i8, ptr %i.at, i64 11960
  %i.aw = sext i32 %.069 to i64
  %i.ax = getelementptr [8 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41 ; 3 uses
  %.not.i84 = icmp eq ptr %i.ay, null
  br i1 %.not.i84, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !43
  store ptr %i.az, ptr %i.ax, align 8, !tbaa !41
  br label %bb.r

bb.m:                                             ; preds = %._crit_edge102
  %i.ba = shl nuw i32 1, %.069                    ; 2 uses
  %i.bb = add i32 %i.ba, -1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 36
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.bf = shl nuw nsw i32 1, %.069                ; 3 uses
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
  %.0.i81 = phi ptr [ %i.bm, %bb.o ], [ %i.by, %bb.p ] ; 3 uses
  %i.cb = getelementptr i8, ptr %.0.i81, i64 8
  store i32 %.069, ptr %i.cb, align 8, !tbaa !134
  %i.cc = getelementptr i8, ptr %.0.i81, i64 12
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !135
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.l
  %.1.i82 = phi ptr [ %i.ay, %bb.l ], [ %.0.i81, %bb.q ] ; 5 uses
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
  %2 = shl nsw i64 %i.cg, 2
  %3 = add i64 %2, %.1.i82101
  %4 = add i64 %3, 24
  %5 = add i64 %.1.i82101, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %4, i64 %5)
  %6 = add i64 %umax, -25
  %7 = sub i64 %6, %.1.i82101
  %8 = and i64 %7, -4
  %9 = add i64 %8, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.cf, i8 0, i64 %9, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.r
  %i.cj = getelementptr i8, ptr %spec.select, i64 24 ; 2 uses
  %i.ck = sext i32 %i.ak to i64
  %i.cl = getelementptr [4 x i8], ptr %i.cj, i64 %i.ck
  %i.cm = getelementptr i8, ptr %spec.select80, i64 24 ; 3 uses
  %i.cn = sext i32 %i.am to i64
  %i.co = getelementptr [4 x i8], ptr %i.cm, i64 %i.cn ; 2 uses
  %i.cp = icmp ult ptr %i.cm, %i.co
  br i1 %i.cp, label %.lr.ph94, label %.preheader

.preheader:                                       ; preds = %bb.u, %._crit_edge
  %i.cq = icmp sgt i32 %i.an, 0
  br i1 %i.cq, label %.lr.ph97, label %.critedge

.lr.ph94:                                         ; preds = %._crit_edge, %bb.u
  %.06392 = phi ptr [ %i.dh, %bb.u ], [ %i.cf, %._crit_edge ] ; 2 uses
  %.06591 = phi ptr [ %i.cr, %bb.u ], [ %i.cm, %._crit_edge ] ; 2 uses
  %i.cr = getelementptr i8, ptr %.06591, i64 4    ; 2 uses
  %i.cs = load i32, ptr %.06591, align 4, !tbaa !7 ; 2 uses
  %.not79 = icmp eq i32 %i.cs, 0
  br i1 %.not79, label %bb.u, label %.preheader88

.preheader88:                                     ; preds = %.lr.ph94
  %i.ct = zext i32 %i.cs to i64
  br label %bb.s

bb.s:                                             ; preds = %.preheader88, %bb.s
  %.167 = phi ptr [ %i.cu, %bb.s ], [ %i.cj, %.preheader88 ] ; 2 uses
  %.064 = phi ptr [ %i.de, %bb.s ], [ %.06392, %.preheader88 ] ; 3 uses
  %.0 = phi i64 [ %i.dc, %bb.s ], [ 0, %.preheader88 ]
  %i.cu = getelementptr i8, ptr %.167, i64 4      ; 2 uses
  %i.cv = load i32, ptr %.167, align 4, !tbaa !7
  %i.cw = zext i32 %i.cv to i64
  %i.cx = mul nuw i64 %i.cw, %i.ct
  %i.cy = load i32, ptr %.064, align 4, !tbaa !7
  %i.cz = zext i32 %i.cy to i64
  %i.da = add nuw nsw i64 %.0, %i.cz
  %i.db = add nuw i64 %i.da, %i.cx                ; 2 uses
  %i.dc = lshr i64 %i.db, 32                      ; 2 uses
  %i.dd = trunc i64 %i.db to i32
  %i.de = getelementptr i8, ptr %.064, i64 4      ; 2 uses
  store i32 %i.dd, ptr %.064, align 4, !tbaa !7
  %i.df = icmp ult ptr %i.cu, %i.cl
  br i1 %i.df, label %bb.s, label %bb.t, !llvm.loop !140

bb.t:                                             ; preds = %bb.s
  %i.dg = trunc nuw i64 %i.dc to i32
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !7
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph94, %bb.t
  %i.dh = getelementptr i8, ptr %.06392, i64 4
  %i.di = icmp ult ptr %i.cr, %i.co
  br i1 %i.di, label %.lr.ph94, label %.preheader, !llvm.loop !141

.lr.ph97:                                         ; preds = %.preheader, %bb.v
  %.196 = phi ptr [ %i.dj, %bb.v ], [ %i.ch, %.preheader ]
  %.06895 = phi i32 [ %i.dl, %bb.v ], [ %i.an, %.preheader ] ; 3 uses
  %i.dj = getelementptr i8, ptr %.196, i64 -4     ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !7
  %.not78 = icmp eq i32 %i.dk, 0
  br i1 %.not78, label %bb.v, label %.critedge

bb.v:                                             ; preds = %.lr.ph97
  %i.dl = add nsw i32 %.06895, -1
  %i.dm = icmp sgt i32 %.06895, 1
  br i1 %i.dm, label %.lr.ph97, label %.critedge, !llvm.loop !142

.critedge:                                        ; preds = %.lr.ph97, %bb.v, %.preheader
  %.068.lcssa = phi i32 [ %i.an, %.preheader ], [ 0, %bb.v ], [ %.06895, %.lr.ph97 ]
  store i32 %.068.lcssa, ptr %i.cd, align 4, !tbaa !137
  br label %Balloc.exit.thread

Balloc.exit.thread:                               ; preds = %bb.p, %bb.h, %.critedge, %bb.j
  %.072 = phi ptr [ null, %bb.h ], [ %.1.i82, %.critedge ], [ %.1.i, %bb.j ], [ null, %bb.p ]
  ret ptr %.072
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal fastcc ptr @lshift(ptr noundef %0, i32 noundef range(i32 1, -2147483648) %1) unnamed_addr #0 {
bb.a:
  %2 = ptrtoaddr ptr %0 to i64                    ; 4 uses
  %i.a = getelementptr i8, ptr %0, i64 24         ; 7 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7
  %.not = icmp eq i32 %i.b, 0
  %i.c = getelementptr i8, ptr %0, i64 20
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137  ; 2 uses
  %i.e = icmp eq i32 %i.d, 1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %Bfree.exit, label %._crit_edge76

._crit_edge76:                                    ; preds = %bb.a
  %i.f = lshr i32 %1, 5                           ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !134  ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 20
  %i.j = add i32 %i.d, %i.f                       ; 4 uses
  %i.k = add i32 %i.j, 1                          ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !135  ; 2 uses
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %._crit_edge76, %.lr.ph
  %.04965 = phi i32 [ %i.o, %.lr.ph ], [ %i.h, %._crit_edge76 ]
  %.05064 = phi i32 [ %i.p, %.lr.ph ], [ %i.m, %._crit_edge76 ]
  %i.o = add i32 %.04965, 1                       ; 2 uses
  %i.p = shl i32 %.05064, 1                       ; 2 uses
  %i.q = icmp sgt i32 %i.k, %i.p
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !143

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge76
  %.049.lcssa = phi i32 [ %i.h, %._crit_edge76 ], [ %i.o, %.lr.ph ] ; 5 uses
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39   ; 3 uses
  %i.t = icmp slt i32 %.049.lcssa, 8
  br i1 %i.t, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.u = getelementptr i8, ptr %i.s, i64 11960
  %i.v = sext i32 %.049.lcssa to i64
  %i.w = getelementptr [8 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !41   ; 3 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43
  store ptr %i.y, ptr %i.w, align 8, !tbaa !41
  br label %bb.l

bb.d:                                             ; preds = %._crit_edge
  %i.z = shl nuw i32 1, %.049.lcssa               ; 2 uses
  %i.aa = add i32 %i.z, -1
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 2
  %i.ad = add nuw nsw i64 %i.ac, 36
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.ae = shl nuw nsw i32 1, %.049.lcssa          ; 3 uses
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = add nuw nsw i64 %i.ah, 36               ; 2 uses
  %i.aj = lshr i64 %i.ai, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.s, i64 14328   ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !45 ; 3 uses
  %i.am = getelementptr i8, ptr %i.s, i64 12024
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = ashr exact i64 %i.ap, 3
  %i.ar = add nsw i64 %i.aq, %i.aj
  %i.as = icmp slt i64 %i.ar, 289
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr [8 x i8], ptr %i.al, i64 %i.aj
  store ptr %i.at, ptr %i.ak, align 8, !tbaa !45
  br label %bb.h

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.au = phi i64 [ %i.ai, %bb.e ], [ %i.ad, %bb.d ]
  %i.av = phi i32 [ %i.ae, %bb.e ], [ %i.z, %bb.d ]
  %i.aw = and i64 %i.au, 34359738360
  %i.ax = tail call ptr @PyMem_Malloc(i64 noundef %i.aw) #11 ; 2 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = phi i32 [ %i.ae, %bb.f ], [ %i.av, %bb.g ]
  %.0.i = phi ptr [ %i.al, %bb.f ], [ %i.ax, %bb.g ] ; 3 uses
  %i.ba = getelementptr i8, ptr %.0.i, i64 8
  store i32 %.049.lcssa, ptr %i.ba, align 8, !tbaa !134
  %i.bb = getelementptr i8, ptr %.0.i, i64 12
  store i32 %i.az, ptr %i.bb, align 4, !tbaa !135
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.bc = load i32, ptr %i.g, align 8, !tbaa !134 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 7
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @PyMem_Free(ptr noundef nonnull %0) #11
  br label %Bfree.exit

bb.k:                                             ; preds = %bb.i
  %i.be = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.bf = getelementptr i8, ptr %i.be, i64 11960
  %i.bg = sext i32 %i.bc to i64
  %i.bh = getelementptr [8 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41
  store ptr %i.bi, ptr %0, align 8, !tbaa !43
  store ptr %0, ptr %i.bh, align 8, !tbaa !41
  br label %Bfree.exit

bb.l:                                             ; preds = %bb.h, %bb.c
  %.1.i = phi ptr [ %i.x, %bb.c ], [ %.0.i, %bb.h ] ; 6 uses
  %i.bj = getelementptr i8, ptr %.1.i, i64 20     ; 2 uses
  store i32 0, ptr %i.bj, align 4, !tbaa !137
  %i.bk = getelementptr i8, ptr %.1.i, i64 16
  store i32 0, ptr %i.bk, align 8, !tbaa !136
  %i.bl = getelementptr i8, ptr %.1.i, i64 24     ; 2 uses
  %.not72 = icmp eq i32 %i.f, 0
  br i1 %.not72, label %._crit_edge70, label %.lr.ph69.preheader

.lr.ph69.preheader:                               ; preds = %bb.l
  %i.bm = lshr i32 %1, 3
  %i.bn = and i32 %i.bm, 268435452
  %i.bo = zext nneg i32 %i.bn to i64
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bl, i8 0, i64 %i.bo, i1 false), !tbaa !7
  %i.bp = add nsw i32 %i.f, -1
  %i.bq = zext nneg i32 %i.bp to i64
  %i.br = shl nuw nsw i64 %i.bq, 2
  %i.bs = getelementptr i8, ptr %.1.i, i64 %i.br
  %scevgep = getelementptr i8, ptr %i.bs, i64 28
  br label %._crit_edge70

._crit_edge70:                                    ; preds = %.lr.ph69.preheader, %bb.l
  %.045.lcssa = phi ptr [ %i.bl, %bb.l ], [ %scevgep, %.lr.ph69.preheader ] ; 6 uses
  %.045.lcssa91 = ptrtoaddr ptr %.045.lcssa to i64
  %i.bt = load i32, ptr %i.i, align 4, !tbaa !137
  %i.bu = sext i32 %i.bt to i64                   ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.a, i64 %i.bu ; 2 uses
  %i.bw = and i32 %1, 31                          ; 3 uses
  %.not57 = icmp eq i32 %i.bw, 0
  br i1 %.not57, label %.preheader.preheader, label %bb.m

.preheader.preheader:                             ; preds = %._crit_edge70
  %3 = shl nsw i64 %i.bu, 2
  %4 = add i64 %3, %2
  %5 = add i64 %4, 24
  %6 = add i64 %2, 28
  %7 = tail call i64 @llvm.umax.i64(i64 %5, i64 %6)
  %8 = add i64 %7, -25
  %9 = sub i64 %8, %2                             ; 2 uses
  %10 = lshr i64 %9, 2
  %11 = add nuw nsw i64 %10, 1                    ; 2 uses
  %min.iters.check = icmp ult i64 %9, 60
  br i1 %min.iters.check, label %.preheader.preheader95, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %12 = sub i64 %.045.lcssa91, %2
  %13 = add i64 %12, -25
  %diff.check = icmp ult i64 %13, 31
  br i1 %diff.check, label %.preheader.preheader95, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %11, 9223372036854775800       ; 3 uses
  %14 = shl i64 %n.vec, 2                         ; 2 uses
  %15 = getelementptr i8, ptr %i.a, i64 %14
  %16 = getelementptr i8, ptr %.045.lcssa, i64 %14
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %17 = shl i64 %index, 2                         ; 2 uses
  %next.gep = getelementptr i8, ptr %i.a, i64 %17 ; 2 uses
  %next.gep92 = getelementptr i8, ptr %.045.lcssa, i64 %17 ; 2 uses
  %18 = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load93 = load <4 x i32>, ptr %18, align 4, !tbaa !7
  %19 = getelementptr i8, ptr %next.gep92, i64 16
  store <4 x i32> %wide.load, ptr %next.gep92, align 4, !tbaa !7
  store <4 x i32> %wide.load93, ptr %19, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %20 = icmp eq i64 %index.next, %n.vec
  br i1 %20, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader95

.preheader.preheader95:                           ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.147.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.preheader.preheader ], [ %15, %middle.block ]
  %.2.ph = phi ptr [ %.045.lcssa, %vector.memcheck ], [ %.045.lcssa, %.preheader.preheader ], [ %16, %middle.block ]
  br label %.preheader

bb.m:                                             ; preds = %._crit_edge70
  %i.bx = sub nuw nsw i32 32, %i.bw
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.046 = phi ptr [ %i.a, %bb.m ], [ %i.cc, %bb.n ] ; 3 uses
  %.1 = phi ptr [ %.045.lcssa, %bb.m ], [ %i.cb, %bb.n ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.m ], [ %i.ce, %bb.n ]
  %i.by = load i32, ptr %.046, align 4, !tbaa !7
  %i.bz = shl i32 %i.by, %i.bw
  %i.ca = or i32 %i.bz, %.0
  %i.cb = getelementptr i8, ptr %.1, i64 4        ; 2 uses
  store i32 %i.ca, ptr %.1, align 4, !tbaa !7
  %i.cc = getelementptr i8, ptr %.046, i64 4      ; 2 uses
  %i.cd = load i32, ptr %.046, align 4, !tbaa !7
  %i.ce = lshr i32 %i.cd, %i.bx                   ; 3 uses
  %i.cf = icmp ult ptr %i.cc, %i.bv
  br i1 %i.cf, label %bb.n, label %bb.o, !llvm.loop !147

bb.o:                                             ; preds = %bb.n
  store i32 %i.ce, ptr %i.cb, align 4, !tbaa !7
  %.not58 = icmp eq i32 %i.ce, 0
  %spec.select = select i1 %.not58, i32 %i.j, i32 %i.k
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader95, %.preheader
  %.147 = phi ptr [ %i.cg, %.preheader ], [ %.147.ph, %.preheader.preheader95 ] ; 2 uses
  %.2 = phi ptr [ %i.ci, %.preheader ], [ %.2.ph, %.preheader.preheader95 ] ; 2 uses
  %i.cg = getelementptr i8, ptr %.147, i64 4      ; 2 uses
  %i.ch = load i32, ptr %.147, align 4, !tbaa !7
  %i.ci = getelementptr i8, ptr %.2, i64 4
  store i32 %i.ch, ptr %.2, align 4, !tbaa !7
  %i.cj = icmp ult ptr %i.cg, %i.bv
  br i1 %i.cj, label %.preheader, label %.loopexit, !llvm.loop !148

.loopexit:                                        ; preds = %.preheader, %middle.block, %bb.o
  %.048 = phi i32 [ %spec.select, %bb.o ], [ %i.j, %middle.block ], [ %i.j, %.preheader ]
  store i32 %.048, ptr %i.bj, align 4, !tbaa !137
  %i.ck = load i32, ptr %i.g, align 8, !tbaa !134 ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 7
  br i1 %i.cl, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit
  tail call void @PyMem_Free(ptr noundef nonnull %0) #11
  br label %Bfree.exit

bb.q:                                             ; preds = %.loopexit
  %i.cm = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.cn = getelementptr i8, ptr %i.cm, i64 11960
  %i.co = sext i32 %i.ck to i64
  %i.cp = getelementptr [8 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !41
  store ptr %i.cq, ptr %0, align 8, !tbaa !43
  store ptr %0, ptr %i.cp, align 8, !tbaa !41
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.a, %bb.q, %bb.p, %bb.k, %bb.j
  %.052 = phi ptr [ %0, %bb.a ], [ null, %bb.k ], [ %.1.i, %bb.q ], [ null, %bb.j ], [ %.1.i, %bb.p ]
  ret ptr %.052
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
  %.017.i = phi ptr [ %i.h, %bb.b ], [ %i.k, %bb.e ]
  %.0.i = phi ptr [ %i.j, %bb.b ], [ %i.m, %bb.e ]
  %i.k = getelementptr i8, ptr %.017.i, i64 -4    ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 2 uses
  %i.m = getelementptr i8, ptr %.0.i, i64 -4      ; 2 uses
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
  %.0.i61 = phi ptr [ %i.w, %bb.h ], [ %i.ad, %bb.i ] ; 3 uses
  %i.af = getelementptr i8, ptr %.0.i61, i64 8
  store i32 0, ptr %i.af, align 8, !tbaa !134
  %i.ag = getelementptr i8, ptr %.0.i61, i64 12
  store i32 1, ptr %i.ag, align 4, !tbaa !135
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.1.i = phi ptr [ %i.t, %bb.f ], [ %.0.i61, %bb.j ] ; 4 uses
  %i.ah = getelementptr i8, ptr %.1.i, i64 20
  %i.ai = getelementptr i8, ptr %.1.i, i64 16
  store i32 0, ptr %i.ai, align 8, !tbaa !136
  store i32 1, ptr %i.ah, align 4, !tbaa !137
  %i.aj = getelementptr i8, ptr %.1.i, i64 24
  store i32 0, ptr %i.aj, align 8, !tbaa !7
  br label %Balloc.exit.thread

bb.l:                                             ; preds = %bb.a, %bb.d
  %.018.i.ph = phi i32 [ %i.p, %bb.d ], [ %i.e, %bb.a ] ; 2 uses
  %i.ak = icmp slt i32 %.018.i.ph, 0              ; 2 uses
  %. = select i1 %i.ak, ptr %1, ptr %0            ; 3 uses
  %.58 = select i1 %i.ak, ptr %0, ptr %1          ; 2 uses
  %.018.i.ph.lobit = lshr i32 %.018.i.ph, 31
  %i.al = getelementptr i8, ptr %., i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !134 ; 5 uses
  %i.an = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !39 ; 3 uses
  %i.ap = icmp slt i32 %i.am, 8
  br i1 %i.ap, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr i8, ptr %i.ao, i64 11960
  %i.ar = sext i32 %i.am to i64
  %i.as = getelementptr [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !41 ; 3 uses
  %.not.i65 = icmp eq ptr %i.at, null
  br i1 %.not.i65, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !43
  store ptr %i.au, ptr %i.as, align 8, !tbaa !41
  br label %bb.t

bb.o:                                             ; preds = %bb.l
  %i.av = shl nuw i32 1, %i.am                    ; 2 uses
  %i.aw = add i32 %i.av, -1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl nuw nsw i64 %i.ax, 2
  %i.az = add nuw nsw i64 %i.ay, 36
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.ba = shl nuw nsw i32 1, %i.am                ; 3 uses
  %i.bb = add nsw i32 %i.ba, -1
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = shl nuw nsw i64 %i.bc, 2
  %i.be = add nuw nsw i64 %i.bd, 36               ; 2 uses
  %i.bf = lshr i64 %i.be, 3                       ; 2 uses
  %i.bg = getelementptr i8, ptr %i.ao, i64 14328  ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !45 ; 3 uses
  %i.bi = getelementptr i8, ptr %i.ao, i64 12024
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 3
  %i.bn = add nsw i64 %i.bm, %i.bf
  %i.bo = icmp slt i64 %i.bn, 289
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr [8 x i8], ptr %i.bh, i64 %i.bf
  store ptr %i.bp, ptr %i.bg, align 8, !tbaa !45
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.bq = phi i64 [ %i.be, %bb.p ], [ %i.az, %bb.o ]
  %i.br = phi i32 [ %i.ba, %bb.p ], [ %i.av, %bb.o ]
  %i.bs = and i64 %i.bq, 34359738360
  %i.bt = tail call ptr @PyMem_Malloc(i64 noundef %i.bs) #11 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %Balloc.exit.thread, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bv = phi i32 [ %i.ba, %bb.q ], [ %i.br, %bb.r ]
  %.0.i62 = phi ptr [ %i.bh, %bb.q ], [ %i.bt, %bb.r ] ; 3 uses
  %i.bw = getelementptr i8, ptr %.0.i62, i64 8
  store i32 %i.am, ptr %i.bw, align 8, !tbaa !134
  %i.bx = getelementptr i8, ptr %.0.i62, i64 12
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !135
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.1.i63 = phi ptr [ %i.at, %bb.n ], [ %.0.i62, %bb.s ] ; 4 uses
  %i.by = getelementptr i8, ptr %.1.i63, i64 20   ; 2 uses
  store i32 0, ptr %i.by, align 4, !tbaa !137
  %i.bz = getelementptr i8, ptr %.1.i63, i64 16
  store i32 %.018.i.ph.lobit, ptr %i.bz, align 8, !tbaa !136
  %i.ca = getelementptr i8, ptr %., i64 20
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !137 ; 2 uses
  %i.cc = getelementptr i8, ptr %., i64 24        ; 2 uses
  %i.cd = getelementptr i8, ptr %.58, i64 20
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !137
  %i.cf = getelementptr i8, ptr %.58, i64 24      ; 2 uses
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr [4 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr i8, ptr %.1.i63, i64 24
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %bb.t
  %.047 = phi ptr [ %i.cc, %bb.t ], [ %i.cj, %bb.u ] ; 2 uses
  %.046 = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %bb.u ] ; 2 uses
  %.044 = phi ptr [ %i.ci, %bb.t ], [ %i.cu, %bb.u ] ; 2 uses
  %.0 = phi i64 [ 0, %bb.t ], [ %i.cs, %bb.u ]
  %i.cj = getelementptr i8, ptr %.047, i64 4      ; 3 uses
  %i.ck = load i32, ptr %.047, align 4, !tbaa !7
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr i8, ptr %.046, i64 4      ; 2 uses
  %i.cn = load i32, ptr %.046, align 4, !tbaa !7
  %i.co = zext i32 %i.cn to i64
  %i.cp = add nuw nsw i64 %.0, %i.co
  %i.cq = sub nsw i64 %i.cl, %i.cp                ; 2 uses
  %i.cr = lshr i64 %i.cq, 32
  %i.cs = and i64 %i.cr, 1                        ; 2 uses
  %i.ct = trunc i64 %i.cq to i32
  %i.cu = getelementptr i8, ptr %.044, i64 4      ; 3 uses
  store i32 %i.ct, ptr %.044, align 4, !tbaa !7
  %i.cv = icmp ult ptr %i.cm, %i.ch
  br i1 %i.cv, label %bb.u, label %.preheader73, !llvm.loop !149

.preheader73:                                     ; preds = %bb.u
  %i.cw = sext i32 %i.cb to i64
  %i.cx = getelementptr [4 x i8], ptr %i.cc, i64 %i.cw ; 2 uses
  %i.cy = icmp ult ptr %i.cj, %i.cx
  br i1 %i.cy, label %.lr.ph, label %.preheader.preheader

.lr.ph:                                           ; preds = %.preheader73, %.lr.ph
  %.182 = phi i64 [ %i.de, %.lr.ph ], [ %i.cs, %.preheader73 ]
  %.14581 = phi ptr [ %i.dg, %.lr.ph ], [ %i.cu, %.preheader73 ] ; 2 uses
  %.14880 = phi ptr [ %i.cz, %.lr.ph ], [ %i.cj, %.preheader73 ] ; 2 uses
  %i.cz = getelementptr i8, ptr %.14880, i64 4    ; 2 uses
  %i.da = load i32, ptr %.14880, align 4, !tbaa !7
  %i.db = zext i32 %i.da to i64
  %i.dc = sub nsw i64 %i.db, %.182                ; 2 uses
  %i.dd = lshr i64 %i.dc, 32
  %i.de = and i64 %i.dd, 1
  %i.df = trunc i64 %i.dc to i32
  %i.dg = getelementptr i8, ptr %.14581, i64 4    ; 2 uses
  store i32 %i.df, ptr %.14581, align 4, !tbaa !7
  %i.dh = icmp ult ptr %i.cz, %i.cx
  br i1 %i.dh, label %.lr.ph, label %.preheader.preheader, !llvm.loop !150

.preheader.preheader:                             ; preds = %.lr.ph, %.preheader73
  %.2.ph = phi ptr [ %i.cu, %.preheader73 ], [ %i.dg, %.lr.ph ]
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %.049 = phi i32 [ %i.dk, %.preheader ], [ %i.cb, %.preheader.preheader ] ; 2 uses
  %.2 = phi ptr [ %i.di, %.preheader ], [ %.2.ph, %.preheader.preheader ]
  %i.di = getelementptr i8, ptr %.2, i64 -4       ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !7
  %.not57 = icmp eq i32 %i.dj, 0
  %i.dk = add i32 %.049, -1
  br i1 %.not57, label %.preheader, label %bb.v, !llvm.loop !151

bb.v:                                             ; preds = %.preheader
  store i32 %.049, ptr %i.by, align 4, !tbaa !137
  br label %Balloc.exit.thread

Balloc.exit.thread:                               ; preds = %bb.r, %bb.i, %bb.v, %bb.k
  %.053 = phi ptr [ null, %bb.i ], [ %.1.i63, %bb.v ], [ %.1.i, %bb.k ], [ null, %bb.r ]
  ret ptr %.053
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @bigcomp(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr i8, ptr %2, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31   ; 3 uses
  %i.d = getelementptr i8, ptr %2, i64 8
  %i.e = load i32, ptr %i.d, align 4, !tbaa !32
  %i.f = load i32, ptr %2, align 4, !tbaa !23
  %i.g = add i32 %i.f, %i.c                       ; 6 uses
  %i.h = getelementptr i8, ptr %2, i64 12         ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = call fastcc ptr @sd2b(ptr noundef %0, i32 noundef %i.i, ptr noundef %i.a) ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %Bfree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %i.j, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !7
  %i.n = tail call fastcc ptr @lshift(ptr noundef nonnull %i.j, i32 noundef 1) ; 15 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %Bfree.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %i.n, i64 24       ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !7
  %i.r = or i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !7
  %i.s = load i32, ptr %i.a, align 4, !tbaa !7
  %i.t = xor i32 %i.g, -1
  %i.u = add i32 %i.s, %i.t
  store i32 %i.u, ptr %i.a, align 4, !tbaa !7
  %i.v = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 13 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 11968    ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41   ; 3 uses
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43
  store ptr %i.z, ptr %i.x, align 8, !tbaa !41
  br label %bb.l

bb.e:                                             ; preds = %bb.c
  %i.aa = getelementptr i8, ptr %i.w, i64 14328   ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !45 ; 3 uses
  %i.ac = getelementptr i8, ptr %i.w, i64 12024
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = icmp slt i64 %i.af, 2272
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr i8, ptr %i.ab, i64 40
  store ptr %i.ah, ptr %i.aa, align 8, !tbaa !45
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ai = tail call ptr @PyMem_Malloc(i64 noundef 40) #11 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %i.ab, %bb.f ], [ %i.ai, %bb.g ] ; 3 uses
  %i.ak = getelementptr i8, ptr %.0.i.i, i64 8
  store i32 1, ptr %i.ak, align 8, !tbaa !134
  %i.al = getelementptr i8, ptr %.0.i.i, i64 12
  store i32 2, ptr %i.al, align 4, !tbaa !135
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.am = getelementptr i8, ptr %i.n, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !134 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 7
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.n) #11
  br label %Bfree.exit

bb.k:                                             ; preds = %bb.i
  %i.ap = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.aq = getelementptr i8, ptr %i.ap, i64 11960
  %i.ar = sext i32 %i.an to i64
  %i.as = getelementptr [8 x i8], ptr %i.aq, i64 %i.ar ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !41
  store ptr %i.at, ptr %i.n, align 8, !tbaa !43
  store ptr %i.n, ptr %i.as, align 8, !tbaa !41
  br label %Bfree.exit

bb.l:                                             ; preds = %bb.h, %bb.d
  %.1.i.i = phi ptr [ %i.y, %bb.d ], [ %.0.i.i, %bb.h ] ; 12 uses
  %i.au = getelementptr i8, ptr %.1.i.i, i64 20
  %i.av = getelementptr i8, ptr %.1.i.i, i64 16
  store i32 0, ptr %i.av, align 8, !tbaa !136
  %i.aw = getelementptr i8, ptr %.1.i.i, i64 24
  store i32 1, ptr %i.aw, align 8, !tbaa !7
  store i32 1, ptr %i.au, align 4, !tbaa !137
  %i.ax = icmp sgt i32 %i.g, 0
  br i1 %i.ax, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.ay = and i32 %i.g, 3                         ; 2 uses
  %.not.i93 = icmp eq i32 %i.ay, 0
  br i1 %.not.i93, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr @pow5mult.p05, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !7
  %i.bd = tail call fastcc ptr @multadd(ptr noundef nonnull %.1.i.i, i32 noundef %i.bc, i32 noundef 0) ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %pow5mult.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.018.i = phi ptr [ %i.bd, %bb.n ], [ %.1.i.i, %bb.m ] ; 2 uses
  %i.bf = lshr i32 %i.g, 2                        ; 2 uses
  %.not26.i = icmp eq i32 %i.bf, 0
  br i1 %.not26.i, label %pow5mult.exit.thread133, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bg = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.bh = getelementptr i8, ptr %i.bg, i64 11896
  br label %bb.q

bb.q:                                             ; preds = %bb.v, %bb.p
  %.1.i = phi ptr [ %.018.i, %bb.p ], [ %.2.i, %bb.v ] ; 7 uses
  %.017.i = phi i32 [ %i.bf, %bb.p ], [ %i.bv, %bb.v ] ; 2 uses
  %.0.i94 = phi ptr [ %i.bh, %bb.p ], [ %i.bi, %bb.v ] ; 2 uses
  %i.bi = getelementptr i8, ptr %.0.i94, i64 8
  %i.bj = and i32 %.017.i, 1
  %.not27.i = icmp eq i32 %i.bj, 0
  br i1 %.not27.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = load ptr, ptr %.0.i94, align 8, !tbaa !41
  %i.bl = tail call fastcc ptr @mult(ptr noundef %.1.i, ptr noundef %i.bk) ; 2 uses
  %.not.i.i95 = icmp eq ptr %.1.i, null
  br i1 %.not.i.i95, label %Bfree.exit.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = getelementptr i8, ptr %.1.i, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !134 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 7
  br i1 %i.bo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void @PyMem_Free(ptr noundef nonnull %.1.i) #11
  br label %Bfree.exit.i

bb.u:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr %i.v, align 8, !tbaa !39
  %i.bq = getelementptr i8, ptr %i.bp, i64 11960
  %i.br = sext i32 %i.bn to i64
  %i.bs = getelementptr [8 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !41
  store ptr %i.bt, ptr %.1.i, align 8, !tbaa !43
  store ptr %.1.i, ptr %i.bs, align 8, !tbaa !41
  br label %Bfree.exit.i

Bfree.exit.i:                                     ; preds = %bb.u, %bb.t, %bb.r
  %i.bu = icmp eq ptr %i.bl, null
  br i1 %i.bu, label %pow5mult.exit.thread, label %bb.v

bb.v:                                             ; preds = %Bfree.exit.i, %bb.q
  %.2.i = phi ptr [ %i.bl, %Bfree.exit.i ], [ %.1.i, %bb.q ] ; 3 uses
  %i.bv = lshr i32 %.017.i, 1                     ; 2 uses
  %.not28.i = icmp eq i32 %i.bv, 0
  br i1 %.not28.i, label %pow5mult.exit, label %bb.q

pow5mult.exit:                                    ; preds = %bb.v
  %i.bw = icmp eq ptr %.2.i, null
  br i1 %i.bw, label %pow5mult.exit.thread, label %pow5mult.exit.thread133

pow5mult.exit.thread:                             ; preds = %Bfree.exit.i, %bb.n, %pow5mult.exit
  %i.bx = getelementptr i8, ptr %i.n, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !134 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, 7
  br i1 %i.bz, label %bb.w, label %bb.x

bb.w:                                             ; preds = %pow5mult.exit.thread
  tail call void @PyMem_Free(ptr noundef nonnull %i.n) #11
  br label %Bfree.exit

bb.x:                                             ; preds = %pow5mult.exit.thread
  %i.ca = load ptr, ptr %i.v, align 8, !tbaa !39
end_hunk_0
begin_hunk_1_@_Py_dg_dtoa:bb.a

bb.at:                                            ; preds = %bb.as
  %i.ef = add nuw nsw i32 %.329.i56.i, 1
  %i.eg = lshr exact i32 %.3.i57.i, 1
  %.not38.i59.i = icmp eq i32 %.3.i57.i, 0        ; 2 uses
  %spec.select91.i = select i1 %.not38.i59.i, i32 %spec.select.i, i32 %i.eg
  %spec.select92.i = select i1 %.not38.i59.i, i32 32, i32 %i.ef
  br label %lo0bits.exit60.i

lo0bits.exit60.i:                                 ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ao
  %.2.i = phi i32 [ %spec.select91.i, %bb.at ], [ %spec.select.i, %bb.ao ], [ %i.dr, %bb.aq ], [ %i.ds, %bb.ar ], [ %.3.i57.i, %bb.as ]
  %.031.i41.i = phi i32 [ %spec.select92.i, %bb.at ], [ 0, %bb.ao ], [ 1, %bb.aq ], [ 2, %bb.ar ], [ %.329.i56.i, %bb.as ]
  store i32 %.2.i, ptr %i.ck, align 8, !tbaa !7
  store i32 1, ptr %i.ci, align 4, !tbaa !137
  %i.eh = add nuw nsw i32 %.031.i41.i, 32
  br label %bb.au

bb.au:                                            ; preds = %lo0bits.exit60.i, %bb.am
  %.029.i = phi i32 [ %.031.i82.i, %bb.am ], [ %i.eh, %lo0bits.exit60.i ] ; 3 uses
  %.0.i = phi i32 [ %i.dn, %bb.am ], [ 1, %lo0bits.exit60.i ] ; 2 uses
  br i1 %.not.i663, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ei = add nsw i32 %i.cn, -1075
  %i.ej = add nsw i32 %i.ei, %.029.i
  %i.ek = sub nsw i32 53, %.029.i
  %i.el = and i64 %.pre-phi, 4503599627370495
  %.sroa.086.4.insert.insert95 = or disjoint i64 %i.el, 4607182418800017408
  %i.em = add nsw i32 %i.cn, -1023
  br label %bb.ba

bb.aw:                                            ; preds = %bb.au
  %i.en = add nuw nsw i32 %.029.i, -1074          ; 2 uses
  %i.eo = shl nuw nsw i32 %.0.i, 5
  %i.ep = zext nneg i32 %.0.i to i64
  %i.eq = getelementptr [4 x i8], ptr %i.ck, i64 %i.ep
  %i.er = getelementptr i8, ptr %i.eq, i64 -4
  %i.es = load i32, ptr %i.er, align 4, !tbaa !7  ; 3 uses
  %.not.i61.i = icmp ult i32 %i.es, 65536         ; 2 uses
  %i.et = shl nuw i32 %i.es, 16
  %spec.select.i62.i = select i1 %.not.i61.i, i32 %i.et, i32 %i.es ; 3 uses
  %spec.select26.i.i = select i1 %.not.i61.i, i32 16, i32 0 ; 2 uses
  %.not21.i.i = icmp ult i32 %spec.select.i62.i, 16777216 ; 2 uses
  %i.eu = or disjoint i32 %spec.select26.i.i, 8
  %i.ev = shl nuw i32 %spec.select.i62.i, 8
  %.117.i.i = select i1 %.not21.i.i, i32 %i.ev, i32 %spec.select.i62.i ; 3 uses
  %.1.i63.i = select i1 %.not21.i.i, i32 %i.eu, i32 %spec.select26.i.i ; 2 uses
  %.not22.i.i = icmp ult i32 %.117.i.i, 268435456 ; 2 uses
  %i.ew = or disjoint i32 %.1.i63.i, 4
  %i.ex = shl nuw i32 %.117.i.i, 4
  %.218.i.i = select i1 %.not22.i.i, i32 %i.ex, i32 %.117.i.i ; 3 uses
  %.2.i64.i = select i1 %.not22.i.i, i32 %i.ew, i32 %.1.i63.i ; 2 uses
  %.not23.i.i = icmp ult i32 %.218.i.i, 1073741824 ; 2 uses
  %i.ey = or disjoint i32 %.2.i64.i, 2
  %i.ez = shl nuw i32 %.218.i.i, 2
  %.319.i.i = select i1 %.not23.i.i, i32 %i.ez, i32 %.218.i.i ; 2 uses
  %.3.i65.i = select i1 %.not23.i.i, i32 %i.ey, i32 %.2.i64.i ; 2 uses
  %i.fa = add nuw nsw i32 %.3.i65.i, 1
  %.not25.i.i = icmp ult i32 %.319.i.i, 1073741824
  %spec.select27.i.i = select i1 %.not25.i.i, i32 32, i32 %i.fa
  %.not2428.i.i = icmp slt i32 %.319.i.i, 0
  %.020.i.i = select i1 %.not2428.i.i, i32 %.3.i65.i, i32 %spec.select27.i.i
  %i.fb = sub nuw nsw i32 %i.eo, %.020.i.i        ; 2 uses
  %i.fc = add nuw nsw i32 %i.en, %i.fb            ; 5 uses
  %i.fd = icmp samesign ugt i32 %i.fc, -1042
  br i1 %i.fd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fe = sub nsw i32 -1010, %i.fc
  %i.ff = shl i32 %.sroa.0.4.extract.trunc772, %i.fe
  %i.fg = add nsw i32 %i.fc, 1042
  %i.fh = lshr i32 %.sroa.0.0.extract.trunc762, %i.fg
  %i.fi = or i32 %i.ff, %i.fh
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.fj = sub nuw nsw i32 -1042, %i.fc
  %i.fk = shl i32 %.sroa.0.0.extract.trunc762, %i.fj
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.fl = phi i32 [ %i.fi, %bb.ax ], [ %i.fk, %bb.ay ]
  %i.fm = uitofp i32 %i.fl to double
  %i.fn = bitcast double %i.fm to i64             ; 2 uses
  %i.fo = and i64 %i.fn, 9223372032559808512
  %.sroa.086.4.insert.ext100 = add nsw i64 %i.fo, -139611588448485376
  %.sroa.086.4.insert.mask102 = and i64 %i.fn, 4294967295
  %.sroa.086.4.insert.insert103 = or disjoint i64 %.sroa.086.4.insert.ext100, %.sroa.086.4.insert.mask102
  %i.fp = add nsw i32 %i.fc, -1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.av
  %.1796.ph1342 = phi i32 [ %i.ej, %bb.av ], [ %i.en, %bb.az ] ; 3 uses
  %.0797.ph1340 = phi i32 [ %i.ek, %bb.av ], [ %i.fb, %bb.az ] ; 2 uses
  %.0491 = phi i32 [ %i.em, %bb.av ], [ %i.fp, %bb.az ] ; 2 uses
  %.sroa.086.0.in = phi i64 [ %.sroa.086.4.insert.insert95, %bb.av ], [ %.sroa.086.4.insert.insert103, %bb.az ]
  %.sroa.086.0 = bitcast i64 %.sroa.086.0.in to double
  %i.fq = fadd double %.sroa.086.0, -1.500000e+00
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fq, double f0x3FD287A7636F4361, double f0x3FC68A288B60C8B3)
  %i.fs = sitofp i32 %.0491 to double
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fs, double f0x3FD34413509F79FB, double %i.fr) ; 3 uses
  %i.fu = fptosi double %i.ft to i32              ; 2 uses
  %i.fv = fcmp olt double %i.ft, 0.000000e+00
  %i.fw = sitofp i32 %i.fu to double
  %i.fx = fcmp une double %i.ft, %i.fw
  %or.cond629 = and i1 %i.fv, %i.fx
  %i.fy = sext i1 %or.cond629 to i32
  %.0463 = add i32 %i.fy, %i.fu                   ; 5 uses
  %or.cond = icmp ugt i32 %.0463, 22              ; 3 uses
  br i1 %or.cond, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.fz = zext nneg i32 %.0463 to i64
  %i.ga = getelementptr [8 x i8], ptr @tens, i64 %i.fz
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !26
  %i.gc = fcmp olt double %.sroa.0.0794, %i.gb
  br i1 %i.gc, label %select.unfold, label %bb.bc

select.unfold:                                    ; preds = %bb.bb
  %i.gd = add nsw i32 %.0463, -1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %select.unfold, %bb.ba
  %.2465 = phi i32 [ %.0463, %bb.bb ], [ %.0463, %bb.ba ], [ %i.gd, %select.unfold ] ; 30 uses
  %i.ge = xor i32 %.0491, -1
  %i.gf = add nsw i32 %.0797.ph1340, %i.ge        ; 3 uses
  %i.gg = icmp sgt i32 %i.gf, -1                  ; 2 uses
  %i.gh = sub nsw i32 0, %i.gf
  %.0504 = select i1 %i.gg, i32 0, i32 %i.gh      ; 2 uses
  %.0453 = select i1 %i.gg, i32 %i.gf, i32 0      ; 2 uses
  %i.gi = icmp sgt i32 %.2465, -1
  br i1 %i.gi, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.gj = add nuw i32 %.2465, %.0453
  br label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %i.gk = sub i32 %.0504, %.2465
  %i.gl = sub i32 0, %.2465
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.1505 = phi i32 [ %.0504, %bb.bd ], [ %i.gk, %bb.be ] ; 7 uses
  %.0503 = phi i32 [ 0, %bb.bd ], [ %i.gl, %bb.be ] ; 3 uses
  %.1454 = phi i32 [ %i.gj, %bb.bd ], [ %.0453, %bb.be ] ; 3 uses
  %.0452 = phi i32 [ %.2465, %bb.bd ], [ 0, %bb.be ] ; 2 uses
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
  %.0459 = phi i32 [ 0, %bb.bg ], [ 1, %bb.bf ]
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %2, i32 1) ; 4 uses
  br label %bb.bk

bb.bi:                                            ; preds = %bb.bf
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bf
  %.1460 = phi i32 [ 0, %bb.bi ], [ 1, %bb.bf ]
  %i.go = add i32 %.2465, %2                      ; 2 uses
  %i.gp = add i32 %i.go, 1                        ; 2 uses
  %spec.store.select4 = tail call i32 @llvm.smax.i32(i32 %i.gp, i32 1)
  br label %bb.bk

default.unreachable:                              ; preds = %bb.bf
  unreachable

bb.bk:                                            ; preds = %bb.bj, %bb.bh
  %.0511 = phi i32 [ %spec.store.select, %bb.bh ], [ %2, %bb.bj ] ; 3 uses
  %.1492 = phi i32 [ %spec.store.select, %bb.bh ], [ %spec.store.select4, %bb.bj ] ; 2 uses
  %.0478 = phi i32 [ %spec.store.select, %bb.bh ], [ %i.gp, %bb.bj ] ; 3 uses
  %.0477 = phi i32 [ %spec.store.select, %bb.bh ], [ %i.go, %bb.bj ] ; 3 uses
  %.2461 = phi i32 [ %.0459, %bb.bh ], [ %.1460, %bb.bj ] ; 3 uses
  %i.gq = zext nneg i32 %.1492 to i64
  %.not13.i = icmp samesign ult i32 %.1492, 28
  br i1 %.not13.i, label %._crit_edge.thread.i, label %.lr.ph.i664

.lr.ph.i664:                                      ; preds = %bb.bk, %.lr.ph.i664
  %.015.i = phi i32 [ %i.gr, %.lr.ph.i664 ], [ 0, %bb.bk ]
  %.0914.i = phi i32 [ %i.gs, %.lr.ph.i664 ], [ 4, %bb.bk ]
  %i.gr = add i32 %.015.i, 1                      ; 5 uses
  %i.gs = shl i32 %.0914.i, 1                     ; 2 uses
  %i.gt = sext i32 %i.gs to i64
  %i.gu = add nsw i64 %i.gt, 24
  %.not.i665 = icmp ugt i64 %i.gu, %i.gq
  br i1 %.not.i665, label %._crit_edge.i666, label %.lr.ph.i664, !llvm.loop !152

._crit_edge.i666:                                 ; preds = %.lr.ph.i664
  %i.gv = icmp slt i32 %i.gr, 8
  br i1 %i.gv, label %._crit_edge.thread.i, label %bb.bm

._crit_edge.thread.i:                             ; preds = %bb.bf, %bb.bf, %bb.bk, %._crit_edge.i666
  %.2461840 = phi i32 [ %.2461, %._crit_edge.i666 ], [ %.2461, %bb.bk ], [ 1, %bb.bf ], [ 1, %bb.bf ] ; 3 uses
  %.0477832 = phi i32 [ %.0477, %._crit_edge.i666 ], [ %.0477, %bb.bk ], [ -1, %bb.bf ], [ -1, %bb.bf ] ; 3 uses
  %.0478826 = phi i32 [ %.0478, %._crit_edge.i666 ], [ %.0478, %bb.bk ], [ -1, %bb.bf ], [ -1, %bb.bf ] ; 3 uses
  %.0511820 = phi i32 [ %.0511, %._crit_edge.i666 ], [ %.0511, %bb.bk ], [ 0, %bb.bf ], [ 0, %bb.bf ] ; 3 uses
  %.0.lcssa20.i = phi i32 [ %i.gr, %._crit_edge.i666 ], [ 0, %bb.bk ], [ 0, %bb.bf ], [ 0, %bb.bf ] ; 5 uses
  %i.gw = load ptr, ptr %i.br, align 8, !tbaa !39 ; 3 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 11960
  %i.gy = sext i32 %.0.lcssa20.i to i64
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
  %i.hh = shl nuw nsw i32 1, %.0.lcssa20.i        ; 3 uses
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
  %.2461839 = phi i32 [ %.2461840, %bb.bn ], [ %.2461, %bb.bm ]
  %.0477831 = phi i32 [ %.0477832, %bb.bn ], [ %.0477, %bb.bm ]
  %.0478825 = phi i32 [ %.0478826, %bb.bn ], [ %.0478, %bb.bm ]
  %.0511819 = phi i32 [ %.0511820, %bb.bn ], [ %.0511, %bb.bm ]
  %.0.lcssa19.i = phi i32 [ %.0.lcssa20.i, %bb.bn ], [ %i.gr, %bb.bm ]
  %i.hx = phi i64 [ %i.hl, %bb.bn ], [ %i.hg, %bb.bm ]
  %i.hy = phi i32 [ %i.hh, %bb.bn ], [ %i.hc, %bb.bm ]
  %i.hz = and i64 %i.hx, 34359738360
  %i.ia = tail call ptr @PyMem_Malloc(i64 noundef %i.hz) #11 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %Bfree.exit734.thread, label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %.2461837 = phi i32 [ %.2461840, %bb.bo ], [ %.2461839, %bb.bp ]
  %.0477829 = phi i32 [ %.0477832, %bb.bo ], [ %.0477831, %bb.bp ]
  %.0478823 = phi i32 [ %.0478826, %bb.bo ], [ %.0478825, %bb.bp ]
  %.0511817 = phi i32 [ %.0511820, %bb.bo ], [ %.0511819, %bb.bp ]
  %.0.lcssa18.i = phi i32 [ %.0.lcssa20.i, %bb.bo ], [ %.0.lcssa19.i, %bb.bp ] ; 2 uses
  %i.ic = phi i32 [ %i.hh, %bb.bo ], [ %i.hy, %bb.bp ]
  %.0.i.i667 = phi ptr [ %i.ho, %bb.bo ], [ %i.ia, %bb.bp ] ; 3 uses
  %i.id = getelementptr i8, ptr %.0.i.i667, i64 8
  store i32 %.0.lcssa18.i, ptr %i.id, align 8, !tbaa !134
  %i.ie = getelementptr i8, ptr %.0.i.i667, i64 12
  store i32 %i.ic, ptr %i.ie, align 4, !tbaa !135
  br label %rv_alloc.exit

rv_alloc.exit:                                    ; preds = %bb.bl, %bb.bq
  %.2461836 = phi i32 [ %.2461840, %bb.bl ], [ %.2461837, %bb.bq ] ; 2 uses
  %.0477828 = phi i32 [ %.0477832, %bb.bl ], [ %.0477829, %bb.bq ] ; 4 uses
  %.0478822 = phi i32 [ %.0478826, %bb.bl ], [ %.0478823, %bb.bq ] ; 11 uses
  %.0511816 = phi i32 [ %.0511820, %bb.bl ], [ %.0511817, %bb.bq ] ; 2 uses
  %.0.lcssa21.i = phi i32 [ %.0.lcssa20.i, %bb.bl ], [ %.0.lcssa18.i, %bb.bq ]
  %.1.i.i668 = phi ptr [ %i.ha, %bb.bl ], [ %.0.i.i667, %bb.bq ] ; 8 uses
  %.1.i.i6681218 = ptrtoaddr ptr %.1.i.i668 to i64 ; 4 uses
  %i.if = getelementptr i8, ptr %.1.i.i668, i64 20
  store i32 0, ptr %i.if, align 4, !tbaa !137
  %i.ig = getelementptr i8, ptr %.1.i.i668, i64 16
  store i32 0, ptr %i.ig, align 8, !tbaa !136
  store i32 %.0.lcssa21.i, ptr %.1.i.i668, align 8, !tbaa !7
  %i.ih = getelementptr i8, ptr %.1.i.i668, i64 4 ; 16 uses
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %Bfree.exit734.thread, label %bb.br

bb.br:                                            ; preds = %rv_alloc.exit
  %or.cond6 = icmp ult i32 %.0478822, 15
  %or.cond8 = and i1 %i.gm, %or.cond6
  br i1 %or.cond8, label %bb.bs, label %.loopexit980

bb.bs:                                            ; preds = %bb.br
  %i.ij = icmp sgt i32 %.2465, 0
  br i1 %i.ij, label %bb.bt, label %bb.bw

bb.bt:                                            ; preds = %bb.bs
  %i.ik = and i32 %.2465, 15
  %i.il = zext nneg i32 %i.ik to i64
  %i.im = getelementptr [8 x i8], ptr @tens, i64 %i.il
  %i.in = load double, ptr %i.im, align 8, !tbaa !26 ; 2 uses
  %i.io = lshr i32 %.2465, 4                      ; 2 uses
  %i.ip = and i32 %.2465, 256
  %.not594 = icmp eq i32 %i.ip, 0                 ; 3 uses
  %i.iq = and i32 %i.io, 15
  %i.ir = fdiv double %.sroa.0.0794, 1.000000e+256
  %.sroa.0.1 = select i1 %.not594, double %.sroa.0.0794, double %i.ir
  %.0484 = select i1 %.not594, i32 2, i32 3       ; 2 uses
  %.0474 = select i1 %.not594, i32 %i.io, i32 %i.iq ; 2 uses
  %.not5951086 = icmp eq i32 %.0474, 0
  br i1 %.not5951086, label %._crit_edge, label %.lr.ph1091

.lr.ph1091:                                       ; preds = %bb.bt, %bb.bv
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.bv ], [ 0, %bb.bt ] ; 2 uses
  %.04011090 = phi double [ %.1402, %bb.bv ], [ %i.in, %bb.bt ] ; 2 uses
  %.14751089 = phi i32 [ %i.ix, %bb.bv ], [ %.0474, %bb.bt ] ; 2 uses
  %.14851088 = phi i32 [ %.2486, %bb.bv ], [ %.0484, %bb.bt ] ; 2 uses
  %i.is = and i32 %.14751089, 1
  %.not619 = icmp eq i32 %i.is, 0
  br i1 %.not619, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.lr.ph1091
  %i.it = add i32 %.14851088, 1
  %i.iu = getelementptr [8 x i8], ptr @bigtens, i64 %indvars.iv
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !26
  %i.iw = fmul double %.04011090, %i.iv
  br label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1091, %bb.bu
  %.2486 = phi i32 [ %i.it, %bb.bu ], [ %.14851088, %.lr.ph1091 ] ; 2 uses
  %.1402 = phi double [ %i.iw, %bb.bu ], [ %.04011090, %.lr.ph1091 ] ; 2 uses
  %i.ix = lshr i32 %.14751089, 1                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.not595 = icmp eq i32 %i.ix, 0
  br i1 %.not595, label %._crit_edge, label %.lr.ph1091, !llvm.loop !153

._crit_edge:                                      ; preds = %bb.bv, %bb.bt
  %.1485.lcssa = phi i32 [ %.0484, %bb.bt ], [ %.2486, %bb.bv ]
  %.0401.lcssa = phi double [ %i.in, %bb.bt ], [ %.1402, %bb.bv ]
  %i.iy = fdiv double %.sroa.0.1, %.0401.lcssa
  br label %.loopexit981

bb.bw:                                            ; preds = %bb.bs
  %.not591 = icmp eq i32 %.2465, 0
  br i1 %.not591, label %.loopexit981, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.iz = sub i32 0, %.2465                       ; 2 uses
  %i.ja = and i32 %i.iz, 15
  %i.jb = zext nneg i32 %i.ja to i64
  %i.jc = getelementptr [8 x i8], ptr @tens, i64 %i.jb
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !26
  %i.je = fmul double %.sroa.0.0794, %i.jd        ; 2 uses
  %i.jf = ashr i32 %i.iz, 4                       ; 2 uses
  %.not5921080 = icmp eq i32 %i.jf, 0
  br i1 %.not5921080, label %.loopexit981, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bx, %bb.bz
  %.24761084 = phi i32 [ %i.jm, %bb.bz ], [ %i.jf, %bb.bx ] ; 2 uses
  %.34871083 = phi i32 [ %.4488, %bb.bz ], [ 2, %bb.bx ] ; 2 uses
  %.34941082 = phi i32 [ %i.jn, %bb.bz ], [ 0, %bb.bx ] ; 2 uses
  %.sroa.0.21081 = phi double [ %.sroa.0.3, %bb.bz ], [ %i.je, %bb.bx ] ; 2 uses
  %i.jg = and i32 %.24761084, 1
  %.not593 = icmp eq i32 %i.jg, 0
  br i1 %.not593, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %.lr.ph
  %i.jh = add i32 %.34871083, 1
  %i.ji = sext i32 %.34941082 to i64
  %i.jj = getelementptr [8 x i8], ptr @bigtens, i64 %i.ji
  %i.jk = load double, ptr %i.jj, align 8, !tbaa !26
  %i.jl = fmul double %.sroa.0.21081, %i.jk
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph, %bb.by
  %.sroa.0.3 = phi double [ %.sroa.0.21081, %.lr.ph ], [ %i.jl, %bb.by ] ; 2 uses
  %.4488 = phi i32 [ %.34871083, %.lr.ph ], [ %i.jh, %bb.by ] ; 2 uses
  %i.jm = ashr i32 %.24761084, 1                  ; 2 uses
  %i.jn = add i32 %.34941082, 1
  %.not592 = icmp eq i32 %i.jm, 0
  br i1 %.not592, label %.loopexit981, label %.lr.ph, !llvm.loop !154

.loopexit981:                                     ; preds = %bb.bz, %bb.bx, %bb.bw, %._crit_edge
  %.sroa.0.4 = phi double [ %i.iy, %._crit_edge ], [ %.sroa.0.0794, %bb.bw ], [ %i.je, %bb.bx ], [ %.sroa.0.3, %bb.bz ] ; 3 uses
  %.5489 = phi i32 [ %.1485.lcssa, %._crit_edge ], [ 2, %bb.bw ], [ 2, %bb.bx ], [ %.4488, %bb.bz ] ; 2 uses
  %i.jo = fcmp olt double %.sroa.0.4, 1.000000e+00
  %or.cond10 = select i1 %or.cond, i1 %i.jo, i1 false
  %i.jp = icmp sgt i32 %.0478822, 0
  %or.cond12 = select i1 %or.cond10, i1 %i.jp, i1 false
  br i1 %or.cond12, label %bb.ca, label %bb.cc

bb.ca:                                            ; preds = %.loopexit981
  %i.jq = icmp slt i32 %.0477828, 1
  br i1 %i.jq, label %.loopexit980, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jr = add i32 %.2465, -1
  %i.js = fmul nnan double %.sroa.0.4, 1.000000e+01
  %i.jt = add i32 %.5489, 1
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %.loopexit981
  %.sroa.0.5 = phi double [ %i.js, %bb.cb ], [ %.sroa.0.4, %.loopexit981 ] ; 6 uses
  %.6490 = phi i32 [ %i.jt, %bb.cb ], [ %.5489, %.loopexit981 ]
  %.1479 = phi i32 [ %.0477828, %bb.cb ], [ %.0478822, %.loopexit981 ] ; 5 uses
  %.3466 = phi i32 [ %i.jr, %bb.cb ], [ %.2465, %.loopexit981 ] ; 6 uses
  %i.ju = sitofp i32 %.6490 to double
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.ju, double %.sroa.0.5, double 7.000000e+00)
  %i.jw = bitcast double %i.jv to i64             ; 2 uses
  %i.jx = and i64 %i.jw, -4294967296
  %.sroa.0.4.insert.ext = add i64 %i.jx, -234187180623265792
  %.sroa.0.4.insert.mask = and i64 %i.jw, 4294967295
  %.sroa.0.4.insert.insert = or disjoint i64 %.sroa.0.4.insert.ext, %.sroa.0.4.insert.mask
  %i.jy = bitcast i64 %.sroa.0.4.insert.insert to double ; 4 uses
  %i.jz = icmp eq i32 %.1479, 0
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
  %.not596 = icmp eq i32 %.2461836, 0
  %i.ke = zext nneg i32 %.1479 to i64
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
  %i.kr = add nsw i32 %.1479, -1
  br label %.lr.ph1097

.lr.ph1097:                                       ; preds = %.lr.ph1097.preheader, %bb.ci
  %i.ks = phi ptr [ %i.le, %bb.ci ], [ %i.ki, %.lr.ph1097.preheader ] ; 3 uses
  %i.kt = phi double [ %i.lb, %bb.ci ], [ %i.kn, %.lr.ph1097.preheader ] ; 2 uses
  %.sroa.0.01095 = phi double [ %i.kx, %bb.ci ], [ %i.kk, %.lr.ph1097.preheader ] ; 2 uses
  %.44951094 = phi i32 [ %i.kw, %bb.ci ], [ 0, %.lr.ph1097.preheader ] ; 2 uses
  %i.ku = fsub double 1.000000e+00, %i.kt
  %i.kv = fcmp olt double %i.ku, %.sroa.0.01095
  br i1 %i.kv, label %.loopexit979, label %bb.ch

bb.ch:                                            ; preds = %.lr.ph1097
  %exitcond.not = icmp eq i32 %.44951094, %i.kr
  br i1 %exitcond.not, label %.loopexit980, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.kw = add nuw nsw i32 %.44951094, 1
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
  %i.ln = icmp eq i32 %.1479, 1
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
  %.34811101 = phi i32 [ %.3481, %.lr.ph1103 ], [ %.1479, %bb.cj ]
  %i.lx = phi double [ %i.mc, %.lr.ph1103 ], [ %i.lj, %bb.cj ]
  %.54961100 = phi i32 [ %i.ly, %.lr.ph1103 ], [ 1, %bb.cj ]
  %i.ly = add i32 %.54961100, 1                   ; 3 uses
  %i.lz = fmul double %i.lx, 1.000000e+01         ; 2 uses
  %i.ma = fptosi double %i.lz to i32              ; 2 uses
  %i.mb = sitofp i32 %i.ma to double
  %i.mc = fsub double %i.lz, %i.mb                ; 3 uses
  %i.md = fcmp une double %i.mc, 0.000000e+00
  %.3481 = select i1 %i.md, i32 %.34811101, i32 %i.ly ; 2 uses
  %i.me = trunc i32 %i.ma to i8
  %i.mf = add i8 %i.me, 48
  %i.mg = getelementptr i8, ptr %i.lw, i64 1      ; 2 uses
  store i8 %i.mf, ptr %i.lw, align 1, !tbaa !11
  %i.mh = icmp eq i32 %i.ly, %.3481
  br i1 %i.mh, label %._crit_edge1104, label %.lr.ph1103

.loopexit980:                                     ; preds = %bb.ch, %bb.ca, %bb.ce, %bb.br
  %i.mi = icmp sgt i32 %.1796.ph1342, -1
  %i.mj = icmp slt i32 %.2465, 15
  %or.cond14 = and i1 %i.mi, %i.mj
  br i1 %or.cond14, label %bb.cl, label %bb.cr

.loopexit980.thread:                              ; preds = %bb.ck
  %i.mk = icmp sgt i32 %.1796.ph1342, -1
  %i.ml = icmp slt i32 %.2465, 15
  %or.cond141344 = and i1 %i.mk, %i.ml
  br i1 %or.cond141344, label %bb.cl, label %.thread1345

bb.cl:                                            ; preds = %.loopexit980.thread, %.loopexit980
  %i.mm = sext i32 %.2465 to i64
  %i.mn = getelementptr [8 x i8], ptr @tens, i64 %i.mm
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !26 ; 7 uses
  %i.mp = icmp slt i32 %.0511816, 0
  %i.mq = icmp slt i32 %.0478822, 1
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
  %i.na = icmp eq i32 %.0478822, 1
  br i1 %i.na, label %.lr.ph1108._crit_edge, label %.lr.ph1555

bb.cm:                                            ; preds = %bb.cl
  %i.nb = icmp sgt i32 %.0478822, -1
  %i.nc = fmul double %i.mo, 5.000000e+00
  %i.nd = fcmp ugt double %.sroa.0.0794, %i.nc
  %or.cond965 = select i1 %i.nb, i1 %i.nd, i1 false
  br i1 %or.cond965, label %cmp.exit690.thread858, label %cmp.exit690.thread

.lr.ph1108:                                       ; preds = %.lr.ph1555
  %i.ne = add i32 %.649711071554, 1               ; 2 uses
  %i.nf = icmp eq i32 %i.ne, %.0478822
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
  %.5468 = phi i32 [ %.2465, %.lr.ph1108._crit_edge ], [ %.2465, %bb.cn ], [ %.3466, %._crit_edge1104 ], [ %.3466, %.lr.ph1097 ] ; 2 uses
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
  %i.nt = add i32 %.5468, 1
  store i8 48, ptr %scevgep1223, align 1, !tbaa !11
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.co
  %i.nu = add i8 %i.nq, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.cq
  %i.nv = phi i8 [ 49, %bb.cq ], [ %i.nu, %.loopexit.loopexit ]
  %.61119 = phi ptr [ %scevgep1222, %bb.cq ], [ %.6, %.loopexit.loopexit ]
  %i.nw = phi ptr [ %scevgep1223, %bb.cq ], [ %i.np, %.loopexit.loopexit ]
  %.6469 = phi i32 [ %i.nt, %bb.cq ], [ %.5468, %.loopexit.loopexit ]
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
  %.649711071554 = phi i32 [ %i.ne, %.lr.ph1108 ], [ 1, %.lr.ph1108.preheader ]
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
  %i.on = icmp eq i32 %.2461836, 0
  br i1 %i.on, label %.thread1345, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.oo = add nsw i32 %.1796.ph1342, 1075
  %i.op = sub nsw i32 54, %.0797.ph1340
  %i.oq = select i1 %.not.i663, i32 %i.oo, i32 %i.op ; 2 uses
  %i.or = add i32 %.1505, %i.oq
  %i.os = add i32 %.1454, %i.oq
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
  %.0.i.i674 = phi ptr [ %i.oy, %bb.cv ], [ %i.pf, %bb.cw ] ; 3 uses
  %i.ph = getelementptr i8, ptr %.0.i.i674, i64 8
  store i32 1, ptr %i.ph, align 8, !tbaa !134
  %i.pi = getelementptr i8, ptr %.0.i.i674, i64 12
  store i32 2, ptr %i.pi, align 4, !tbaa !135
  br label %i2b.exit

i2b.exit:                                         ; preds = %bb.ct, %bb.cx
  %.1.i.i672 = phi ptr [ %i.ov, %bb.ct ], [ %.0.i.i674, %bb.cx ] ; 4 uses
  %i.pj = getelementptr i8, ptr %.1.i.i672, i64 20
  %i.pk = getelementptr i8, ptr %.1.i.i672, i64 16
  store i32 0, ptr %i.pk, align 8, !tbaa !136
  %i.pl = getelementptr i8, ptr %.1.i.i672, i64 24
  store i32 1, ptr %i.pl, align 8, !tbaa !7
  store i32 1, ptr %i.pj, align 4, !tbaa !137
  br label %.thread1345

.thread1345:                                      ; preds = %.loopexit980.thread, %i2b.exit, %bb.cr
  %i.pm = phi i1 [ false, %i2b.exit ], [ true, %bb.cr ], [ true, %.loopexit980.thread ] ; 4 uses
  %.2506 = phi i32 [ %i.or, %i2b.exit ], [ %.1505, %bb.cr ], [ %.1505, %.loopexit980.thread ] ; 2 uses
  %.2455 = phi i32 [ %i.os, %i2b.exit ], [ %.1454, %bb.cr ], [ %.1454, %.loopexit980.thread ] ; 4 uses
  %.2413 = phi ptr [ %.1.i.i672, %i2b.exit ], [ null, %bb.cr ], [ null, %.loopexit980.thread ] ; 4 uses
  %i.pn = icmp sgt i32 %.1505, 0
  %i.po = icmp sgt i32 %.2455, 0
  %or.cond18 = select i1 %i.pn, i1 %i.po, i1 false
  br i1 %or.cond18, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %.thread1345
  %i.pp = tail call i32 @llvm.umin.i32(i32 %.1505, i32 %.2455) ; 3 uses
  %i.pq = sub i32 %.2506, %i.pp
  %i.pr = sub nsw i32 %.1505, %i.pp
  %i.ps = sub nsw i32 %.2455, %i.pp
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %.thread1345
  %.3507 = phi i32 [ %i.pq, %bb.cy ], [ %.2506, %.thread1345 ] ; 3 uses
  %.0458 = phi i32 [ %i.pr, %bb.cy ], [ %.1505, %.thread1345 ]
  %.3456 = phi i32 [ %i.ps, %bb.cy ], [ %.2455, %.thread1345 ] ; 3 uses
  %i.pt = icmp sgt i32 %.0503, 0
  br i1 %i.pt, label %bb.da, label %bb.dg

bb.da:                                            ; preds = %bb.cz
  br i1 %i.pm, label %bb.df, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.pu = tail call fastcc ptr @pow5mult(ptr noundef %.2413, i32 noundef %.0503) ; 4 uses
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
  %i.qg = tail call fastcc ptr @pow5mult(ptr noundef nonnull %.1.i.i, i32 noundef %.0503) ; 2 uses
  %i.qh = icmp eq ptr %i.qg, null
  br i1 %i.qh, label %Bfree.exit732, label %bb.dg

bb.dg:                                            ; preds = %Bfree.exit, %bb.df, %bb.cz
  %.1435 = phi ptr [ %.1.i.i, %bb.cz ], [ %i.qg, %bb.df ], [ %i.pw, %Bfree.exit ] ; 4 uses
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
  %i.qn = load ptr, ptr %i.qm, align 8, !tbaa !45 ; 3 uses
  %i.qo = getelementptr i8, ptr %i.qi, i64 12024
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = ptrtoint ptr %i.qo to i64
  %i.qr = sub i64 %i.qp, %i.qq
  %i.qs = icmp slt i64 %i.qr, 2272
  br i1 %i.qs, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.qt = getelementptr i8, ptr %i.qn, i64 40
  store ptr %i.qt, ptr %i.qm, align 8, !tbaa !45
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di
  %i.qu = tail call ptr @PyMem_Malloc(i64 noundef 40) #11 ; 2 uses
  %i.qv = icmp eq ptr %i.qu, null
  br i1 %i.qv, label %Bfree.exit732, label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj
  %.0.i.i679 = phi ptr [ %i.qn, %bb.dj ], [ %i.qu, %bb.dk ] ; 3 uses
  %i.qw = getelementptr i8, ptr %.0.i.i679, i64 8
  store i32 1, ptr %i.qw, align 8, !tbaa !134
  %i.qx = getelementptr i8, ptr %.0.i.i679, i64 12
  store i32 2, ptr %i.qx, align 4, !tbaa !135
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dh
  %.1.i.i677 = phi ptr [ %i.qk, %bb.dh ], [ %.0.i.i679, %bb.dl ] ; 5 uses
  %i.qy = getelementptr i8, ptr %.1.i.i677, i64 20
  %i.qz = getelementptr i8, ptr %.1.i.i677, i64 16
  store i32 0, ptr %i.qz, align 8, !tbaa !136
  %i.ra = getelementptr i8, ptr %.1.i.i677, i64 24
  store i32 1, ptr %i.ra, align 8, !tbaa !7
  store i32 1, ptr %i.qy, align 4, !tbaa !137
  %i.rb = icmp sgt i32 %.0452, 0
  br i1 %i.rb, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  %i.rc = tail call fastcc ptr @pow5mult(ptr noundef nonnull %.1.i.i677, i32 noundef %.0452) ; 2 uses
  %i.rd = icmp eq ptr %i.rc, null
  br i1 %i.rd, label %Bfree.exit732, label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.2405 = phi ptr [ %i.rc, %bb.dn ], [ %.1.i.i677, %bb.dm ] ; 4 uses
  %i.re = icmp sgt i32 %spec.select, 1
end_hunk_1
begin_hunk_2_@_Py_dg_dtoa:bb.a

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
  %.1501 = phi i32 [ %i.xe, %cmp.exit713.thread863 ], [ %i.ud, %bb.fk ], [ %i.ud, %bb.fs ], [ %i.ud, %bb.fl ], [ %i.ud, %bb.fq ], [ %i.ud, %cmp.exit713 ]
  %.7441 = phi ptr [ %i.wl, %cmp.exit713.thread863 ], [ %.6440, %bb.fk ], [ %i.wl, %bb.fs ], [ %.6440, %bb.fl ], [ %i.wl, %bb.fq ], [ %i.wl, %cmp.exit713 ]
  %i.xg = trunc i32 %.1501 to i8
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
  %.8442 = phi ptr [ %i.wl, %cmp.exit713.thread863 ], [ %.6440, %bb.fu ], [ %.6440, %bb.ff ]
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
  %i.xq = icmp eq i32 %.7498, %.5483
  br i1 %i.xq, label %.loopexit973, label %bb.fy

bb.fy:                                            ; preds = %bb.fx
  %i.xr = tail call fastcc ptr @multadd(ptr noundef nonnull %.6440, i32 noundef 10, i32 noundef 0) ; 5 uses
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
  %i.ya = add i32 %.7498, 1
  br label %bb.es

.preheader972:                                    ; preds = %.preheader972.preheader, %bb.gg
  %.8499 = phi i32 [ %i.ym, %bb.gg ], [ 1, %.preheader972.preheader ] ; 2 uses
  %.9443 = phi ptr [ %i.yk, %bb.gg ], [ %.3437, %.preheader972.preheader ] ; 6 uses
  %.11 = phi ptr [ %i.ye, %bb.gg ], [ %i.ih, %.preheader972.preheader ] ; 2 uses
  %i.yb = tail call fastcc i32 @quorem(ptr noundef %.9443, ptr noundef %.3406)
  %i.yc = add i32 %i.yb, 48                       ; 2 uses
  %i.yd = trunc i32 %i.yc to i8
  %i.ye = getelementptr i8, ptr %.11, i64 1       ; 3 uses
  store i8 %i.yd, ptr %.11, align 1, !tbaa !11
  %i.yf = getelementptr i8, ptr %.9443, i64 24
  %i.yg = load i32, ptr %i.yf, align 8, !tbaa !7
  %.not605 = icmp eq i32 %i.yg, 0
  br i1 %.not605, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %.preheader972
  %i.yh = getelementptr i8, ptr %.9443, i64 20
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !137
  %i.yj = icmp slt i32 %i.yi, 2
  br i1 %i.yj, label %.thread878, label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %.preheader972
  %exitcond1217.not = icmp eq i32 %.8499, %smax1216
  br i1 %exitcond1217.not, label %.loopexit973, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  %i.yk = tail call fastcc ptr @multadd(ptr noundef nonnull %.9443, i32 noundef 10, i32 noundef 0) ; 2 uses
  %i.yl = icmp eq ptr %i.yk, null
  %i.ym = add nuw i32 %.8499, 1
  br i1 %i.yl, label %d2b.exit.thread915, label %.preheader972

.loopexit973:                                     ; preds = %bb.fx, %bb.gf
  %.2502 = phi i32 [ %i.yc, %bb.gf ], [ %i.ud, %bb.fx ]
  %.10444 = phi ptr [ %.9443, %bb.gf ], [ %.6440, %bb.fx ]
  %.2430 = phi ptr [ null, %bb.gf ], [ %.0428, %bb.fx ] ; 5 uses
  %.13424 = phi ptr [ %.6417, %bb.gf ], [ %.11422, %bb.fx ] ; 5 uses
  %.12 = phi ptr [ %i.ye, %bb.gf ], [ %i.xp, %bb.fx ] ; 4 uses
  %i.yn = tail call fastcc ptr @lshift(ptr noundef nonnull %.10444, i32 noundef 1) ; 7 uses
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
  %.017.i716 = phi ptr [ %i.yv, %bb.gi ], [ %i.yy, %bb.gl ]
  %.0.i717 = phi ptr [ %i.yx, %bb.gi ], [ %i.za, %bb.gl ]
  %i.yy = getelementptr i8, ptr %.017.i716, i64 -4 ; 3 uses
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !7  ; 2 uses
  %i.za = getelementptr i8, ptr %.0.i717, i64 -4  ; 2 uses
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
  %i.zf = and i32 %.2502, 1
  %.not611 = icmp eq i32 %i.zf, 0
  br i1 %.not611, label %.preheader970.preheader, label %cmp.exit720.thread876

.preheader970.preheader:                          ; preds = %bb.gk, %cmp.exit720, %cmp.exit720.thread
  br label %.preheader970

cmp.exit720.thread876:                            ; preds = %bb.gk, %cmp.exit720.thread, %cmp.exit720, %bb.fv
  %.11445 = phi ptr [ %.8442, %bb.fv ], [ %i.yn, %cmp.exit720 ], [ %i.yn, %cmp.exit720.thread ], [ %i.yn, %bb.gk ] ; 2 uses
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
  %i.zo = add i32 %.7470, 1
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
  %.9472 = phi i32 [ %i.sp, %cmp.exit690.thread ], [ %i.tj, %cmp.exit690.thread858 ], [ %i.zo, %bb.go ], [ %.7470, %bb.gp ], [ %.7470, %.thread869 ], [ %.7470, %bb.fw ], [ %.7470, %bb.fg ], [ %.7470, %.preheader970 ] ; 2 uses
  %.12446 = phi ptr [ %.4438, %cmp.exit690.thread ], [ %.5439, %cmp.exit690.thread858 ], [ %.11445, %bb.go ], [ %.11445, %bb.gp ], [ %.7441, %.thread869 ], [ %.6440, %bb.fw ], [ %.6440, %bb.fg ], [ %i.yn, %.preheader970 ] ; 2 uses
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
  %.12446891 = phi ptr [ %.12446, %.loopexit971 ], [ %.9443, %bb.ge ] ; 2 uses
  %.9472889 = phi i32 [ %.9472, %.loopexit971 ], [ %.7470, %bb.ge ] ; 2 uses
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
  %.12446892 = phi ptr [ %.12446, %.loopexit971 ], [ %.12446891, %bb.gq ], [ %.12446891, %bb.gr ] ; 3 uses
  %.9472890 = phi i32 [ %.9472, %.loopexit971 ], [ %.9472889, %bb.gq ], [ %.9472889, %bb.gr ] ; 3 uses
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
  %.10473 = phi i32 [ %.2465, %.preheader.preheader ], [ %.9472890, %Bfree.exit722 ], [ %.6469, %.loopexit ], [ %.9472890, %bb.gw ], [ %.9472890, %bb.gx ], [ %.2465, %.preheader ], [ %.2465, %.preheader968 ], [ %.3466, %bb.cg ], [ %.3466, %.preheader976 ], [ %.2465, %.lr.ph1555 ], [ %.2465, %..critedge.loopexit_crit_edge ], [ %.3466, %bb.ci ]
  %.13447 = phi ptr [ %.1.i.i, %.preheader.preheader ], [ %.12446892, %Bfree.exit722 ], [ %.1.i.i, %.loopexit ], [ %.12446892, %bb.gw ], [ %.12446892, %bb.gx ], [ %.1.i.i, %.preheader ], [ %.1.i.i, %.preheader968 ], [ %.1.i.i, %bb.cg ], [ %.1.i.i, %.preheader976 ], [ %.1.i.i, %.lr.ph1555 ], [ %.1.i.i, %..critedge.loopexit_crit_edge ], [ %.1.i.i, %bb.ci ] ; 5 uses
  %.17 = phi ptr [ %.lcssa1464, %.preheader.preheader ], [ %.16899, %Bfree.exit722 ], [ %.61119, %.loopexit ], [ %.16899, %bb.gw ], [ %.16899, %bb.gx ], [ %i.ny, %.preheader ], [ %i.my, %.preheader968 ], [ %i.ki, %bb.cg ], [ %.2, %.preheader976 ], [ %i.ol, %.lr.ph1555 ], [ %.71558, %..critedge.loopexit_crit_edge ], [ %i.le, %bb.ci ] ; 2 uses
  %.not.i727 = icmp eq ptr %.13447, null
  br i1 %.not.i727, label %Bfree.exit728, label %bb.gy

bb.gy:                                            ; preds = %.critedge
  %i.aar = getelementptr i8, ptr %.13447, i64 8
  %i.aas = load i32, ptr %i.aar, align 8, !tbaa !134 ; 2 uses
  %i.aat = icmp sgt i32 %i.aas, 7
  br i1 %i.aat, label %bb.gz, label %bb.ha

bb.gz:                                            ; preds = %bb.gy
  tail call void @PyMem_Free(ptr noundef nonnull %.13447) #11
  br label %Bfree.exit728

bb.ha:                                            ; preds = %bb.gy
  %i.aau = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.aav = getelementptr i8, ptr %i.aau, i64 11960
  %i.aaw = sext i32 %i.aas to i64
  %i.aax = getelementptr [8 x i8], ptr %i.aav, i64 %i.aaw ; 2 uses
  %i.aay = load ptr, ptr %i.aax, align 8, !tbaa !41
  store ptr %i.aay, ptr %.13447, align 8, !tbaa !43
  store ptr %.13447, ptr %i.aax, align 8, !tbaa !41
  br label %Bfree.exit728

Bfree.exit728:                                    ; preds = %.critedge, %bb.gz, %bb.ha
  store i8 0, ptr %.17, align 1, !tbaa !11
  %i.aaz = add i32 %.10473, 1
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
  %.14448922 = phi ptr [ null, %cmp.exit.thread854 ], [ null, %bb.ds ], [ %.3437, %bb.eq ], [ null, %.loopexit973 ], [ %.3437, %bb.ep ], [ %.3437, %bb.en ], [ %i.sj, %bb.ec ], [ null, %bb.gg ], [ null, %bb.fm ], [ %i.xr, %bb.ga ], [ %i.xr, %bb.gb ], [ %i.xr, %bb.gc ], [ %.6440, %cmp.exit697 ], [ null, %bb.fy ] ; 3 uses
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
  %i.abk = icmp sgt i32 %i.abj, 7
  br i1 %i.abk, label %bb.hf, label %bb.hg

bb.hf:                                            ; preds = %bb.he
  tail call void @PyMem_Free(ptr noundef nonnull %.5433923) #11
  br label %Bfree.exit732

bb.hg:                                            ; preds = %bb.he
  %i.abl = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.abm = getelementptr i8, ptr %i.abl, i64 11960
  %i.abn = sext i32 %i.abj to i64
  %i.abo = getelementptr [8 x i8], ptr %i.abm, i64 %i.abn ; 2 uses
  %i.abp = load ptr, ptr %i.abo, align 8, !tbaa !41
  store ptr %i.abp, ptr %.5433923, align 8, !tbaa !43
  store ptr %.5433923, ptr %i.abo, align 8, !tbaa !41
  br label %Bfree.exit732

Bfree.exit732:                                    ; preds = %bb.df, %bb.dn, %bb.du, %bb.ef, %bb.dk, %bb.hg, %bb.hf, %Bfree.exit730
  %.14448908936 = phi ptr [ %.14448922, %bb.hg ], [ %.14448922, %Bfree.exit730 ], [ %.14448922, %bb.hf ], [ null, %bb.df ], [ %.1435, %bb.dk ], [ %.3437, %bb.ef ], [ %.2436, %bb.du ], [ %.1435, %bb.dn ] ; 2 uses
  %.16427910935 = phi ptr [ %.16427924, %bb.hg ], [ %.16427924, %Bfree.exit730 ], [ %.16427924, %bb.hf ], [ %.2413, %bb.df ], [ %.4415, %bb.dk ], [ %.6417, %bb.ef ], [ %.4415, %bb.du ], [ %.4415, %bb.dn ] ; 2 uses
  %.not623 = icmp eq ptr %.16427910935, null
  br i1 %.not623, label %Bfree.exit734, label %Bfree.exit732.thread943

Bfree.exit732.thread943:                          ; preds = %Bfree.exit, %Bfree.exit732
  %.16427910935949 = phi ptr [ %.16427910935, %Bfree.exit732 ], [ %i.pu, %Bfree.exit ] ; 4 uses
  %.14448908936948 = phi ptr [ %.14448908936, %Bfree.exit732 ], [ null, %Bfree.exit ] ; 2 uses
  %i.abq = getelementptr i8, ptr %.16427910935949, i64 8
  %i.abr = load i32, ptr %i.abq, align 8, !tbaa !134 ; 2 uses
  %i.abs = icmp sgt i32 %i.abr, 7
  br i1 %i.abs, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %Bfree.exit732.thread943
  tail call void @PyMem_Free(ptr noundef nonnull %.16427910935949) #11
  br label %Bfree.exit734

bb.hi:                                            ; preds = %Bfree.exit732.thread943
  %i.abt = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.abu = getelementptr i8, ptr %i.abt, i64 11960
  %i.abv = sext i32 %i.abr to i64
  %i.abw = getelementptr [8 x i8], ptr %i.abu, i64 %i.abv ; 2 uses
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !41
  store ptr %i.abx, ptr %.16427910935949, align 8, !tbaa !43
  store ptr %.16427910935949, ptr %i.abw, align 8, !tbaa !41
  br label %Bfree.exit734

Bfree.exit734:                                    ; preds = %bb.db, %bb.cw, %bb.hi, %bb.hh, %Bfree.exit732
  %.14448908936941 = phi ptr [ %.14448908936, %Bfree.exit732 ], [ %.14448908936948, %bb.hi ], [ %.14448908936948, %bb.hh ], [ %.1.i.i, %bb.cw ], [ %.1.i.i, %bb.db ] ; 2 uses
  %.not624 = icmp eq ptr %.14448908936941, null
  br i1 %.not624, label %Bfree.exit736, label %Bfree.exit734.thread

Bfree.exit734.thread:                             ; preds = %rv_alloc.exit, %bb.bp, %Bfree.exit734
  %.14448908936941956 = phi ptr [ %.14448908936941, %Bfree.exit734 ], [ %.1.i.i, %bb.bp ], [ %.1.i.i, %rv_alloc.exit ] ; 4 uses
  %.0911934942954 = phi ptr [ %i.ih, %Bfree.exit734 ], [ null, %bb.bp ], [ null, %rv_alloc.exit ] ; 2 uses
  %i.aby = getelementptr i8, ptr %.14448908936941956, i64 8
  %i.abz = load i32, ptr %i.aby, align 8, !tbaa !134 ; 2 uses
  %i.aca = icmp sgt i32 %i.abz, 7
  br i1 %i.aca, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %Bfree.exit734.thread
  tail call void @PyMem_Free(ptr noundef nonnull %.14448908936941956) #11
  br label %Bfree.exit736

bb.hk:                                            ; preds = %Bfree.exit734.thread
  %i.acb = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.acc = getelementptr i8, ptr %i.acb, i64 11960
  %i.acd = sext i32 %i.abz to i64
  %i.ace = getelementptr [8 x i8], ptr %i.acc, i64 %i.acd ; 2 uses
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !41
  store ptr %i.acf, ptr %.14448908936941956, align 8, !tbaa !43
  store ptr %.14448908936941956, ptr %i.ace, align 8, !tbaa !41
  br label %Bfree.exit736

Bfree.exit736:                                    ; preds = %bb.hk, %bb.hj, %Bfree.exit734
  %.0911934942955 = phi ptr [ %.0911934942954, %bb.hk ], [ %.0911934942954, %bb.hj ], [ %i.ih, %Bfree.exit734 ] ; 4 uses
  %.not625 = icmp eq ptr %.0911934942955, null
  br i1 %.not625, label %nrv_alloc.exit, label %bb.hl

bb.hl:                                            ; preds = %Bfree.exit736
  %i.acg = getelementptr i8, ptr %.0911934942955, i64 -4 ; 4 uses
  %i.ach = load i32, ptr %i.acg, align 4, !tbaa !7 ; 4 uses
  %i.aci = getelementptr i8, ptr %.0911934942955, i64 4
  store i32 %i.ach, ptr %i.aci, align 8, !tbaa !134
  %i.acj = shl nuw i32 1, %i.ach
  %i.ack = getelementptr i8, ptr %.0911934942955, i64 8
  store i32 %i.acj, ptr %i.ack, align 4, !tbaa !135
  %i.acl = icmp sgt i32 %i.ach, 7
  br i1 %i.acl, label %bb.hm, label %bb.hn

bb.hm:                                            ; preds = %bb.hl
  tail call void @PyMem_Free(ptr noundef nonnull %i.acg) #11
  br label %nrv_alloc.exit

bb.hn:                                            ; preds = %bb.hl
  %i.acm = load ptr, ptr %i.br, align 8, !tbaa !39
  %i.acn = getelementptr i8, ptr %i.acm, i64 11960
  %i.aco = sext i32 %i.ach to i64
  %i.acp = getelementptr [8 x i8], ptr %i.acn, i64 %i.aco ; 2 uses
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !41
  store ptr %i.acq, ptr %i.acg, align 8, !tbaa !43
  store ptr %i.acg, ptr %i.acp, align 8, !tbaa !41
  br label %nrv_alloc.exit

nrv_alloc.exit:                                   ; preds = %bb.ac, %bb.hn, %bb.hm, %bb.x, %.preheader.i653, %rv_alloc.exit.i651, %bb.v, %bb.p, %.preheader.i640, %rv_alloc.exit.i638, %bb.n, %bb.i, %.preheader.i, %rv_alloc.exit.i, %bb.g, %Bfree.exit736, %Bfree.exit728, %bb.hb
  %.0509 = phi ptr [ null, %bb.g ], [ null, %Bfree.exit736 ], [ %i.ih, %Bfree.exit728 ], [ null, %bb.n ], [ %i.ih, %bb.hb ], [ null, %bb.v ], [ null, %rv_alloc.exit.i ], [ %i.z, %bb.i ], [ %i.z, %.preheader.i ], [ null, %rv_alloc.exit.i638 ], [ %i.ar, %bb.p ], [ %i.ar, %.preheader.i640 ], [ null, %rv_alloc.exit.i651 ], [ %i.bo, %bb.x ], [ %i.bo, %.preheader.i653 ], [ null, %bb.hm ], [ null, %bb.hn ], [ null, %bb.ac ]
  ret ptr %.0509
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 32) i32 @dshift(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = getelementptr i8, ptr %0, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !137
  %i.d = add i32 %i.c, -1
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr [4 x i8], ptr %i.a, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 3 uses
  %.not.i = icmp ult i32 %i.g, 65536              ; 2 uses
  %i.h = shl nuw i32 %i.g, 16
  %spec.select.i = select i1 %.not.i, i32 %i.h, i32 %i.g ; 3 uses
  %spec.select26.i = select i1 %.not.i, i32 16, i32 0 ; 2 uses
  %.not21.i = icmp ult i32 %spec.select.i, 16777216 ; 2 uses
  %i.i = or disjoint i32 %spec.select26.i, 8
  %i.j = shl nuw i32 %spec.select.i, 8
  %.117.i = select i1 %.not21.i, i32 %i.j, i32 %spec.select.i ; 3 uses
  %.1.i = select i1 %.not21.i, i32 %i.i, i32 %spec.select26.i ; 2 uses
  %.not22.i = icmp ult i32 %.117.i, 268435456     ; 2 uses
  %i.k = or disjoint i32 %.1.i, 4
  %i.l = shl nuw i32 %.117.i, 4
  %.218.i = select i1 %.not22.i, i32 %i.l, i32 %.117.i ; 3 uses
  %.2.i = select i1 %.not22.i, i32 %i.k, i32 %.1.i ; 2 uses
  %.not23.i = icmp ult i32 %.218.i, 1073741824    ; 2 uses
  %i.m = or disjoint i32 %.2.i, 2
  %i.n = shl nuw i32 %.218.i, 2
  %.319.i = select i1 %.not23.i, i32 %i.n, i32 %.218.i ; 2 uses
  %.3.i = select i1 %.not23.i, i32 %i.m, i32 %.2.i ; 2 uses
  %i.o = add nuw nsw i32 %.3.i, 1
  %.not25.i = icmp ult i32 %.319.i, 1073741824
  %spec.select27.i = select i1 %.not25.i, i32 1073741824, i32 %i.o
  %.not2428.i = icmp slt i32 %.319.i, 0
  %.020.i = select i1 %.not2428.i, i32 %.3.i, i32 %spec.select27.i
  %i.p = tail call i32 @llvm.smax.i32(i32 %1, i32 0)
  %reass.sub = sub nsw i32 %.020.i, %i.p
  %spec.select = add nsw i32 %reass.sub, 28
  %i.q = and i32 %spec.select, 31
  ret i32 %i.q
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @multadd(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 -176, 80) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !137  ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1) ; 2 uses
  %xtraiter = and i32 %smax, 3                    ; 3 uses
  %i.f = icmp slt i32 %i.b, 4
  br i1 %i.f, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i32 %smax, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %.028 = phi ptr [ %i.c, %.new ], [ %i.ah, %bb.b ] ; 6 uses
  %.0 = phi i64 [ %i.d, %.new ], [ %i.af, %bb.b ]
  %niter = phi i32 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.g = load i32, ptr %.028, align 4, !tbaa !7
  %i.h = zext i32 %i.g to i64
  %i.i = mul nsw i64 %i.h, %i.e
  %i.j = add nsw i64 %i.i, %.0                    ; 2 uses
  %i.k = lshr i64 %i.j, 32
  %i.l = trunc i64 %i.j to i32
  %i.m = getelementptr i8, ptr %.028, i64 4       ; 2 uses
  store i32 %i.l, ptr %.028, align 4, !tbaa !7
  %i.n = load i32, ptr %i.m, align 4, !tbaa !7
  %i.o = zext i32 %i.n to i64
  %i.p = mul nsw i64 %i.o, %i.e
  %i.q = add nsw i64 %i.p, %i.k                   ; 2 uses
  %i.r = lshr i64 %i.q, 32
  %i.s = trunc i64 %i.q to i32
  %i.t = getelementptr i8, ptr %.028, i64 8       ; 2 uses
  store i32 %i.s, ptr %i.m, align 4, !tbaa !7
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %i.v = zext i32 %i.u to i64
  %i.w = mul nsw i64 %i.v, %i.e
  %i.x = add nsw i64 %i.w, %i.r                   ; 2 uses
  %i.y = lshr i64 %i.x, 32
  %i.z = trunc i64 %i.x to i32
  %i.aa = getelementptr i8, ptr %.028, i64 12     ; 2 uses
  store i32 %i.z, ptr %i.t, align 4, !tbaa !7
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nsw i64 %i.ac, %i.e
  %i.ae = add nsw i64 %i.ad, %i.y                 ; 2 uses
  %i.af = lshr i64 %i.ae, 32                      ; 3 uses
  %i.ag = trunc i64 %i.ae to i32
  %i.ah = getelementptr i8, ptr %.028, i64 16     ; 2 uses
  store i32 %i.ag, ptr %i.aa, align 4, !tbaa !7
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !160

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %.028.epil.init = phi ptr [ %i.c, %bb.a ], [ %i.ah, %.unr-lcssa ]
  %.0.epil.init = phi i64 [ %i.d, %bb.a ], [ %i.af, %.unr-lcssa ]
  %lcmp.mod47 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %.028.epil = phi ptr [ %.028.epil.init, %.epil.preheader ], [ %i.ao, %bb.c ] ; 3 uses
  %.0.epil = phi i64 [ %.0.epil.init, %.epil.preheader ], [ %i.am, %bb.c ]
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %i.ai = load i32, ptr %.028.epil, align 4, !tbaa !7
  %i.aj = zext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.e
  %i.al = add nsw i64 %i.ak, %.0.epil             ; 2 uses
  %i.am = lshr i64 %i.al, 32                      ; 2 uses
  %i.an = trunc i64 %i.al to i32
  %i.ao = getelementptr i8, ptr %.028.epil, i64 4
  store i32 %i.an, ptr %.028.epil, align 4, !tbaa !7
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !161

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  %.lcssa = phi i64 [ %i.af, %.unr-lcssa ], [ %i.am, %bb.c ] ; 2 uses
  %.not = icmp eq i64 %.lcssa, 0
  br i1 %.not, label %Bfree.exit, label %bb.d

bb.d:                                             ; preds = %.epilog-lcssa
  %i.ap = getelementptr i8, ptr %0, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !135
  %.not35 = icmp slt i32 %i.b, %i.aq
  br i1 %.not35, label %Bfree.exit38, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !134
  %i.at = add i32 %i.as, 1                        ; 5 uses
  %i.au = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !39 ; 3 uses
  %i.aw = icmp slt i32 %i.at, 8
  br i1 %i.aw, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr i8, ptr %i.av, i64 11960
  %i.ay = sext i32 %i.at to i64
  %i.az = getelementptr [8 x i8], ptr %i.ax, i64 %i.ay ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41 ; 3 uses
  %.not.i = icmp eq ptr %i.ba, null
  br i1 %.not.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !43
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !41
  br label %bb.p

bb.h:                                             ; preds = %bb.e
  %i.bc = shl nuw i32 1, %i.at                    ; 2 uses
  %i.bd = add i32 %i.bc, -1
  %i.be = zext nneg i32 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 2
  %i.bg = add nuw nsw i64 %i.bf, 36
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.bh = shl nuw nsw i32 1, %i.at                ; 3 uses
  %i.bi = add nsw i32 %i.bh, -1
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = add nuw nsw i64 %i.bk, 36               ; 2 uses
  %i.bm = lshr i64 %i.bl, 3                       ; 2 uses
  %i.bn = getelementptr i8, ptr %i.av, i64 14328  ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !45 ; 3 uses
  %i.bp = getelementptr i8, ptr %i.av, i64 12024
  %i.bq = ptrtoint ptr %i.bo to i64
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = sub i64 %i.bq, %i.br
  %i.bt = ashr exact i64 %i.bs, 3
  %i.bu = add nsw i64 %i.bt, %i.bm
  %i.bv = icmp slt i64 %i.bu, 289
  br i1 %i.bv, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bw = getelementptr [8 x i8], ptr %i.bo, i64 %i.bm
  store ptr %i.bw, ptr %i.bn, align 8, !tbaa !45
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.bx = phi i64 [ %i.bl, %bb.i ], [ %i.bg, %bb.h ]
  %i.by = phi i32 [ %i.bh, %bb.i ], [ %i.bc, %bb.h ]
  %i.bz = and i64 %i.bx, 34359738360
  %i.ca = tail call ptr @PyMem_Malloc(i64 noundef %i.bz) #11 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cc = phi i32 [ %i.bh, %bb.j ], [ %i.by, %bb.k ]
  %.0.i = phi ptr [ %i.bo, %bb.j ], [ %i.ca, %bb.k ] ; 3 uses
  %i.cd = getelementptr i8, ptr %.0.i, i64 8
  store i32 %i.at, ptr %i.cd, align 8, !tbaa !134
  %i.ce = getelementptr i8, ptr %.0.i, i64 12
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !135
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.cf = load i32, ptr %i.ar, align 8, !tbaa !134 ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, 7
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @PyMem_Free(ptr noundef nonnull %0) #11
  br label %Bfree.exit

bb.o:                                             ; preds = %bb.m
  %i.ch = load ptr, ptr %i.au, align 8, !tbaa !39
  %i.ci = getelementptr i8, ptr %i.ch, i64 11960
  %i.cj = sext i32 %i.cf to i64
  %i.ck = getelementptr [8 x i8], ptr %i.ci, i64 %i.cj ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !41
  store ptr %i.cl, ptr %0, align 8, !tbaa !43
  store ptr %0, ptr %i.ck, align 8, !tbaa !41
  br label %Bfree.exit

bb.p:                                             ; preds = %bb.g, %bb.l
  %.1.i = phi ptr [ %i.ba, %bb.g ], [ %.0.i, %bb.l ] ; 4 uses
  %i.cm = getelementptr i8, ptr %.1.i, i64 20
  store i32 0, ptr %i.cm, align 4, !tbaa !137
  %i.cn = getelementptr i8, ptr %.1.i, i64 16     ; 2 uses
  store i32 0, ptr %i.cn, align 8, !tbaa !136
  %i.co = getelementptr i8, ptr %0, i64 16
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !137
  %i.cq = sext i32 %i.cp to i64
  %i.cr = shl nsw i64 %i.cq, 2
  %i.cs = add nsw i64 %i.cr, 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cn, ptr align 8 %i.co, i64 %i.cs, i1 false)
  %i.ct = load i32, ptr %i.ar, align 8, !tbaa !134 ; 2 uses
  %i.cu = icmp sgt i32 %i.ct, 7
  br i1 %i.cu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @PyMem_Free(ptr noundef nonnull %0) #11
  br label %Bfree.exit38

bb.r:                                             ; preds = %bb.p
  %i.cv = load ptr, ptr %i.au, align 8, !tbaa !39
  %i.cw = getelementptr i8, ptr %i.cv, i64 11960
  %i.cx = sext i32 %i.ct to i64
  %i.cy = getelementptr [8 x i8], ptr %i.cw, i64 %i.cx ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !41
  store ptr %i.cz, ptr %0, align 8, !tbaa !43
  store ptr %0, ptr %i.cy, align 8, !tbaa !41
  br label %Bfree.exit38

Bfree.exit38:                                     ; preds = %bb.r, %bb.q, %bb.d
  %.031 = phi ptr [ %0, %bb.d ], [ %.1.i, %bb.q ], [ %.1.i, %bb.r ] ; 3 uses
  %i.da = trunc nuw i64 %.lcssa to i32
  %i.db = getelementptr i8, ptr %.031, i64 24
  %i.dc = add i32 %i.b, 1
  %i.dd = sext i32 %i.b to i64
  %i.de = getelementptr [4 x i8], ptr %i.db, i64 %i.dd
  store i32 %i.da, ptr %i.de, align 4, !tbaa !7
  %i.df = getelementptr i8, ptr %.031, i64 20
  store i32 %i.dc, ptr %i.df, align 4, !tbaa !137
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.o, %bb.n, %.epilog-lcssa, %Bfree.exit38
  %.030 = phi ptr [ %0, %.epilog-lcssa ], [ %.031, %Bfree.exit38 ], [ null, %bb.n ], [ null, %bb.o ]
  ret ptr %.030
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @quorem(ptr nofree noundef nonnull captures(address) %0, ptr nofree noundef nonnull readonly captures(address) %1) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 20         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !137  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 20         ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !137  ; 2 uses
  %i.e = icmp slt i32 %i.d, %i.b
  br i1 %i.e, label %cmp.exit.thread84, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 24         ; 4 uses
  %i.g = add i32 %i.b, -1                         ; 5 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr [4 x i8], ptr %i.f, i64 %i.h ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 24         ; 10 uses
  %i.k = getelementptr [4 x i8], ptr %i.j, i64 %i.h ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7    ; 2 uses
  %i.m = load i32, ptr %i.i, align 4, !tbaa !7
  %i.n = add i32 %i.m, 1                          ; 2 uses
  %i.o = udiv i32 %i.l, %i.n                      ; 4 uses
  %.not = icmp ugt i32 %i.n, %i.l
  br i1 %.not, label %bb.f, label %.preheader90

.preheader90:                                     ; preds = %bb.b
  %i.p = zext i32 %i.o to i64
  br label %bb.c

bb.c:                                             ; preds = %.preheader90, %bb.c
  %.068 = phi ptr [ %i.ae, %bb.c ], [ %i.j, %.preheader90 ] ; 3 uses
  %.063 = phi ptr [ %i.q, %bb.c ], [ %i.f, %.preheader90 ] ; 2 uses
  %.061 = phi i64 [ %i.ac, %bb.c ], [ 0, %.preheader90 ]
  %.0 = phi i64 [ %i.v, %bb.c ], [ 0, %.preheader90 ]
  %i.q = getelementptr i8, ptr %.063, i64 4       ; 2 uses
  %i.r = load i32, ptr %.063, align 4, !tbaa !7
  %i.s = zext i32 %i.r to i64
  %i.t = mul nuw i64 %i.s, %i.p
  %i.u = add nuw i64 %i.t, %.0                    ; 2 uses
  %i.v = lshr i64 %i.u, 32
  %i.w = load i32, ptr %.068, align 4, !tbaa !7
  %i.x = zext i32 %i.w to i64
  %i.y = and i64 %i.u, 4294967295
  %i.z = add nuw nsw i64 %.061, %i.y
  %i.aa = sub nsw i64 %i.x, %i.z                  ; 2 uses
  %i.ab = lshr i64 %i.aa, 32
  %i.ac = and i64 %i.ab, 1
  %i.ad = trunc i64 %i.aa to i32
  %i.ae = getelementptr i8, ptr %.068, i64 4
  store i32 %i.ad, ptr %.068, align 4, !tbaa !7
  %.not77 = icmp ugt ptr %i.q, %i.i
  br i1 %.not77, label %bb.d, label %bb.c, !llvm.loop !162

bb.d:                                             ; preds = %bb.c
  %i.af = load i32, ptr %i.k, align 4, !tbaa !7
  %.not78 = icmp eq i32 %i.af, 0
  br i1 %.not78, label %.preheader89, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i32, ptr %i.c, align 4, !tbaa !137
  br label %bb.f

.preheader89:                                     ; preds = %bb.d
  %i.ag = getelementptr i8, ptr %i.k, i64 -4      ; 2 uses
  %i.ah = icmp ugt ptr %i.ag, %i.j
  br i1 %i.ah, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader89, %bb.e
  %i.ai = phi ptr [ %i.al, %bb.e ], [ %i.ag, %.preheader89 ] ; 2 uses
  %.07094 = phi i32 [ %i.ak, %bb.e ], [ %i.g, %.preheader89 ] ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %.not79 = icmp eq i32 %i.aj, 0
  br i1 %.not79, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph
  %i.ak = add i32 %.07094, -1                     ; 2 uses
  %i.al = getelementptr i8, ptr %i.ai, i64 -4     ; 2 uses
  %i.am = icmp ugt ptr %i.al, %i.j
  br i1 %i.am, label %.lr.ph, label %.critedge, !llvm.loop !163

.critedge:                                        ; preds = %.lr.ph, %bb.e, %.preheader89
  %.070.lcssa = phi i32 [ %i.g, %.preheader89 ], [ %i.ak, %bb.e ], [ %.07094, %.lr.ph ] ; 3 uses
  store i32 %.070.lcssa, ptr %i.c, align 4, !tbaa !137
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %.critedge, %bb.b
  %i.an = phi i32 [ %.pre, %._crit_edge ], [ %.070.lcssa, %.critedge ], [ %i.d, %bb.b ] ; 3 uses
  %.171 = phi i32 [ %i.g, %._crit_edge ], [ %.070.lcssa, %.critedge ], [ %i.g, %bb.b ] ; 3 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !137 ; 2 uses
  %.not.i = icmp eq i32 %i.an, %i.ao
  br i1 %.not.i, label %bb.g, label %cmp.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = sext i32 %i.an to i64                   ; 2 uses
  %i.aq = getelementptr [4 x i8], ptr %i.j, i64 %i.ap
  %i.ar = getelementptr [4 x i8], ptr %i.f, i64 %i.ap
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.017.i = phi ptr [ %i.aq, %bb.g ], [ %i.as, %bb.j ]
  %.0.i = phi ptr [ %i.ar, %bb.g ], [ %i.au, %bb.j ]
  %i.as = getelementptr i8, ptr %.017.i, i64 -4   ; 3 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !7  ; 2 uses
  %i.au = getelementptr i8, ptr %.0.i, i64 -4     ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7  ; 2 uses
  %.not23.i = icmp eq i32 %i.at, %i.av
  br i1 %.not23.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aw = icmp ult i32 %i.at, %i.av
  br i1 %i.aw, label %cmp.exit.thread84, label %cmp.exit.thread.preheader

bb.j:                                             ; preds = %bb.h
  %.not24.i = icmp ugt ptr %i.as, %i.j
  br i1 %.not24.i, label %bb.h, label %cmp.exit.thread.preheader

cmp.exit:                                         ; preds = %bb.f
  %i.ax = sub i32 %i.an, %i.ao
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %cmp.exit.thread.preheader, label %cmp.exit.thread84

cmp.exit.thread.preheader:                        ; preds = %bb.j, %bb.i, %cmp.exit
  br label %cmp.exit.thread

cmp.exit.thread:                                  ; preds = %cmp.exit.thread.preheader, %cmp.exit.thread
  %.169 = phi ptr [ %i.bj, %cmp.exit.thread ], [ %i.j, %cmp.exit.thread.preheader ] ; 3 uses
  %.164 = phi ptr [ %i.az, %cmp.exit.thread ], [ %i.f, %cmp.exit.thread.preheader ] ; 2 uses
  %.162 = phi i64 [ %i.bh, %cmp.exit.thread ], [ 0, %cmp.exit.thread.preheader ]
  %i.az = getelementptr i8, ptr %.164, i64 4      ; 2 uses
  %i.ba = load i32, ptr %.164, align 4, !tbaa !7
  %i.bb = zext i32 %i.ba to i64
  %i.bc = load i32, ptr %.169, align 4, !tbaa !7
  %i.bd = zext i32 %i.bc to i64
  %i.be = add nuw nsw i64 %.162, %i.bb
  %i.bf = sub nsw i64 %i.bd, %i.be                ; 2 uses
  %i.bg = lshr i64 %i.bf, 32
  %i.bh = and i64 %i.bg, 1
  %i.bi = trunc i64 %i.bf to i32
  %i.bj = getelementptr i8, ptr %.169, i64 4
  store i32 %i.bi, ptr %.169, align 4, !tbaa !7
  %.not80 = icmp ugt ptr %i.az, %i.i
  br i1 %.not80, label %bb.k, label %cmp.exit.thread, !llvm.loop !164

bb.k:                                             ; preds = %cmp.exit.thread
  %i.bk = add i32 %i.o, 1                         ; 2 uses
  %i.bl = sext i32 %.171 to i64
  %i.bm = getelementptr [4 x i8], ptr %i.j, i64 %i.bl ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7
  %.not81 = icmp eq i32 %i.bn, 0
  br i1 %.not81, label %.preheader, label %cmp.exit.thread84

.preheader:                                       ; preds = %bb.k
  %i.bo = getelementptr i8, ptr %i.bm, i64 -4     ; 2 uses
  %i.bp = icmp ugt ptr %i.bo, %i.j
  br i1 %i.bp, label %.lr.ph98, label %.critedge2

.lr.ph98:                                         ; preds = %.preheader, %bb.l
  %i.bq = phi ptr [ %i.bt, %bb.l ], [ %i.bo, %.preheader ] ; 2 uses
  %.297 = phi i32 [ %i.bs, %bb.l ], [ %.171, %.preheader ] ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !7
  %.not82 = icmp eq i32 %i.br, 0
  br i1 %.not82, label %bb.l, label %.critedge2

bb.l:                                             ; preds = %.lr.ph98
  %i.bs = add i32 %.297, -1                       ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bq, i64 -4     ; 2 uses
  %i.bu = icmp ugt ptr %i.bt, %i.j
  br i1 %i.bu, label %.lr.ph98, label %.critedge2, !llvm.loop !165

.critedge2:                                       ; preds = %.lr.ph98, %bb.l, %.preheader
  %.2.lcssa = phi i32 [ %.171, %.preheader ], [ %i.bs, %bb.l ], [ %.297, %.lr.ph98 ]
  store i32 %.2.lcssa, ptr %i.c, align 4, !tbaa !137
  br label %cmp.exit.thread84

cmp.exit.thread84:                                ; preds = %bb.i, %cmp.exit, %.critedge2, %bb.k, %bb.a
  %.072 = phi i32 [ 0, %bb.a ], [ %i.bk, %bb.k ], [ %i.bk, %.critedge2 ], [ %i.o, %cmp.exit ], [ %i.o, %bb.i ]
  ret i32 %.072
}

; Function Attrs: nounwind uwtable
define hidden void @_PyDtoa_Init(ptr dead_on_unwind noalias writable sret(%struct.PyStatus) align 8 %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 11896
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 3 uses
  %i.d = getelementptr i8, ptr %i.c, i64 11968    ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 3 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  store ptr %i.f, ptr %i.d, align 8, !tbaa !41
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.c, i64 14328    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !45   ; 3 uses
  %i.i = getelementptr i8, ptr %i.c, i64 12024
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp slt i64 %i.l, 2272
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.h, i64 40
  store ptr %i.n, ptr %i.g, align 8, !tbaa !45
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.o = tail call ptr @PyMem_Malloc(i64 noundef 40) #11 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0.i.i = phi ptr [ %i.h, %bb.d ], [ %i.o, %bb.e ] ; 3 uses
  %i.q = getelementptr i8, ptr %.0.i.i, i64 8
  store i32 1, ptr %i.q, align 8, !tbaa !134
  %i.r = getelementptr i8, ptr %.0.i.i, i64 12
  store i32 2, ptr %i.r, align 4, !tbaa !135
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  tail call void @PyStatus_NoMemory(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8 %0) #11
  br label %bb.p

bb.h:                                             ; preds = %bb.f, %bb.b
  %.1.i.i = phi ptr [ %i.e, %bb.b ], [ %.0.i.i, %bb.f ] ; 6 uses
  %i.s = getelementptr i8, ptr %.1.i.i, i64 20
  %i.t = getelementptr i8, ptr %.1.i.i, i64 16
  store i32 0, ptr %i.t, align 8, !tbaa !136
  %i.u = getelementptr i8, ptr %.1.i.i, i64 24
  store i32 625, ptr %i.u, align 8, !tbaa !7
  store i32 1, ptr %i.s, align 4, !tbaa !137
  store ptr %.1.i.i, ptr %i.a, align 8, !tbaa !41
  %i.v = tail call fastcc ptr @mult(ptr noundef nonnull %.1.i.i, ptr noundef nonnull %.1.i.i) ; 4 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h
  tail call void @PyStatus_NoMemory(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8 %0) #11
  br label %bb.p

bb.j:                                             ; preds = %bb.h
  %i.x = getelementptr i8, ptr %1, i64 11904
  store ptr %i.v, ptr %i.x, align 8, !tbaa !41
  %i.y = tail call fastcc ptr @mult(ptr noundef nonnull %i.v, ptr noundef nonnull %i.v) ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr i8, ptr %1, i64 11912
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !41
  %i.ab = tail call fastcc ptr @mult(ptr noundef nonnull %i.y, ptr noundef nonnull %i.y) ; 4 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr i8, ptr %1, i64 11920
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !41
  %i.ae = tail call fastcc ptr @mult(ptr noundef nonnull %i.ab, ptr noundef nonnull %i.ab) ; 4 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr i8, ptr %1, i64 11928
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !41
  %i.ah = tail call fastcc ptr @mult(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ae) ; 4 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr i8, ptr %1, i64 11936
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !41
  %i.ak = tail call fastcc ptr @mult(ptr noundef nonnull %i.ah, ptr noundef nonnull %i.ah) ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr i8, ptr %1, i64 11944
  store ptr %i.ak, ptr %i.am, align 8, !tbaa !41
  %i.an = tail call fastcc ptr @mult(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.ak) ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.i, label %.critedge

.critedge:                                        ; preds = %bb.o
  %i.ap = getelementptr i8, ptr %1, i64 11952
  store ptr %i.an, ptr %i.ap, align 8, !tbaa !41
  tail call void @PyStatus_Ok(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8 %0) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %.critedge, %bb.g
  ret void
}

declare void @PyStatus_NoMemory(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8) local_unnamed_addr #7

declare void @PyStatus_Ok(ptr dead_on_unwind writable sret(%struct.PyStatus) align 8) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define hidden void @_PyDtoa_Fini(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 11896      ; 2 uses
  %i.b = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 8 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !41   ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !41
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %Bfree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !134  ; 2 uses
  %i.f = icmp sgt i32 %i.e, 7
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @PyMem_Free(ptr noundef nonnull %i.c) #11
  br label %Bfree.exit

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.h = getelementptr i8, ptr %i.g, i64 11960
  %i.i = sext i32 %i.e to i64
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41
  store ptr %i.k, ptr %i.c, align 8, !tbaa !43
  store ptr %i.c, ptr %i.j, align 8, !tbaa !41
  br label %Bfree.exit

Bfree.exit:                                       ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr i8, ptr %0, i64 11904      ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41   ; 5 uses
  store ptr null, ptr %i.l, align 8, !tbaa !41
  %.not.i.1 = icmp eq ptr %i.m, null
  br i1 %.not.i.1, label %Bfree.exit.1, label %bb.e

bb.e:                                             ; preds = %Bfree.exit
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !134  ; 2 uses
  %i.p = icmp sgt i32 %i.o, 7
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.r = getelementptr i8, ptr %i.q, i64 11960
  %i.s = sext i32 %i.o to i64
  %i.t = getelementptr [8 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !41
  store ptr %i.u, ptr %i.m, align 8, !tbaa !43
  store ptr %i.m, ptr %i.t, align 8, !tbaa !41
  br label %Bfree.exit.1

bb.g:                                             ; preds = %bb.e
  tail call void @PyMem_Free(ptr noundef nonnull %i.m) #11
  br label %Bfree.exit.1

Bfree.exit.1:                                     ; preds = %bb.g, %bb.f, %Bfree.exit
  %i.v = getelementptr i8, ptr %0, i64 11912      ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !41   ; 5 uses
  store ptr null, ptr %i.v, align 8, !tbaa !41
  %.not.i.2 = icmp eq ptr %i.w, null
  br i1 %.not.i.2, label %Bfree.exit.2, label %bb.h

bb.h:                                             ; preds = %Bfree.exit.1
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !134  ; 2 uses
  %i.z = icmp sgt i32 %i.y, 7
  br i1 %i.z, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.ab = getelementptr i8, ptr %i.aa, i64 11960
  %i.ac = sext i32 %i.y to i64
  %i.ad = getelementptr [8 x i8], ptr %i.ab, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !43
  store ptr %i.w, ptr %i.ad, align 8, !tbaa !41
  br label %Bfree.exit.2

bb.j:                                             ; preds = %bb.h
  tail call void @PyMem_Free(ptr noundef nonnull %i.w) #11
  br label %Bfree.exit.2

Bfree.exit.2:                                     ; preds = %bb.j, %bb.i, %Bfree.exit.1
  %i.af = getelementptr i8, ptr %0, i64 11920     ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41 ; 5 uses
  store ptr null, ptr %i.af, align 8, !tbaa !41
  %.not.i.3 = icmp eq ptr %i.ag, null
  br i1 %.not.i.3, label %Bfree.exit.3, label %bb.k

bb.k:                                             ; preds = %Bfree.exit.2
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !134 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 7
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.al = getelementptr i8, ptr %i.ak, i64 11960
  %i.am = sext i32 %i.ai to i64
  %i.an = getelementptr [8 x i8], ptr %i.al, i64 %i.am ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !41
  store ptr %i.ao, ptr %i.ag, align 8, !tbaa !43
  store ptr %i.ag, ptr %i.an, align 8, !tbaa !41
  br label %Bfree.exit.3

bb.m:                                             ; preds = %bb.k
  tail call void @PyMem_Free(ptr noundef nonnull %i.ag) #11
  br label %Bfree.exit.3

Bfree.exit.3:                                     ; preds = %bb.m, %bb.l, %Bfree.exit.2
  %i.ap = getelementptr i8, ptr %0, i64 11928     ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !41 ; 5 uses
  store ptr null, ptr %i.ap, align 8, !tbaa !41
  %.not.i.4 = icmp eq ptr %i.aq, null
  br i1 %.not.i.4, label %Bfree.exit.4, label %bb.n

bb.n:                                             ; preds = %Bfree.exit.3
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !134 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 7
  br i1 %i.at, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.av = getelementptr i8, ptr %i.au, i64 11960
  %i.aw = sext i32 %i.as to i64
  %i.ax = getelementptr [8 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  store ptr %i.ay, ptr %i.aq, align 8, !tbaa !43
  store ptr %i.aq, ptr %i.ax, align 8, !tbaa !41
  br label %Bfree.exit.4

bb.p:                                             ; preds = %bb.n
  tail call void @PyMem_Free(ptr noundef nonnull %i.aq) #11
  br label %Bfree.exit.4

Bfree.exit.4:                                     ; preds = %bb.p, %bb.o, %Bfree.exit.3
  %i.az = getelementptr i8, ptr %0, i64 11936     ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !41 ; 5 uses
  store ptr null, ptr %i.az, align 8, !tbaa !41
  %.not.i.5 = icmp eq ptr %i.ba, null
  br i1 %.not.i.5, label %Bfree.exit.5, label %bb.q

bb.q:                                             ; preds = %Bfree.exit.4
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !134 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 7
  br i1 %i.bd, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.bf = getelementptr i8, ptr %i.be, i64 11960
  %i.bg = sext i32 %i.bc to i64
  %i.bh = getelementptr [8 x i8], ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !41
  store ptr %i.bi, ptr %i.ba, align 8, !tbaa !43
  store ptr %i.ba, ptr %i.bh, align 8, !tbaa !41
  br label %Bfree.exit.5

bb.s:                                             ; preds = %bb.q
  tail call void @PyMem_Free(ptr noundef nonnull %i.ba) #11
  br label %Bfree.exit.5

Bfree.exit.5:                                     ; preds = %bb.s, %bb.r, %Bfree.exit.4
  %i.bj = getelementptr i8, ptr %0, i64 11944     ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !41 ; 5 uses
  store ptr null, ptr %i.bj, align 8, !tbaa !41
  %.not.i.6 = icmp eq ptr %i.bk, null
  br i1 %.not.i.6, label %Bfree.exit.6, label %bb.t

bb.t:                                             ; preds = %Bfree.exit.5
  %i.bl = getelementptr i8, ptr %i.bk, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !134 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 7
  br i1 %i.bn, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.bp = getelementptr i8, ptr %i.bo, i64 11960
  %i.bq = sext i32 %i.bm to i64
  %i.br = getelementptr [8 x i8], ptr %i.bp, i64 %i.bq ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !41
  store ptr %i.bs, ptr %i.bk, align 8, !tbaa !43
  store ptr %i.bk, ptr %i.br, align 8, !tbaa !41
  br label %Bfree.exit.6

bb.v:                                             ; preds = %bb.t
  tail call void @PyMem_Free(ptr noundef nonnull %i.bk) #11
  br label %Bfree.exit.6

Bfree.exit.6:                                     ; preds = %bb.v, %bb.u, %Bfree.exit.5
  %i.bt = getelementptr i8, ptr %0, i64 11952     ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !41 ; 5 uses
  store ptr null, ptr %i.bt, align 8, !tbaa !41
  %.not.i.7 = icmp eq ptr %i.bu, null
  br i1 %.not.i.7, label %Bfree.exit.7, label %bb.w

bb.w:                                             ; preds = %Bfree.exit.6
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !134 ; 2 uses
  %i.bx = icmp sgt i32 %i.bw, 7
  br i1 %i.bx, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.bz = getelementptr i8, ptr %i.by, i64 11960
  %i.ca = sext i32 %i.bw to i64
  %i.cb = getelementptr [8 x i8], ptr %i.bz, i64 %i.ca ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !41
  store ptr %i.cc, ptr %i.bu, align 8, !tbaa !43
  store ptr %i.bu, ptr %i.cb, align 8, !tbaa !41
  br label %Bfree.exit.7

bb.y:                                             ; preds = %bb.w
  tail call void @PyMem_Free(ptr noundef nonnull %i.bu) #11
  br label %Bfree.exit.7

Bfree.exit.7:                                     ; preds = %bb.y, %bb.x, %Bfree.exit.6
  ret void
}

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #8

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 omnipotent char", !19, i64 0}
!19 = !{!"any pointer", !9, i64 0}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = !{!24, !8, i64 0}
!24 = !{!"BCinfo", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!25 = distinct !{!25, !13}
!26 = !{!27, !27, i64 0}
!27 = !{!"double", !9, i64 0}
!28 = !{!24, !8, i64 12}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = !{!24, !8, i64 4}
!32 = !{!24, !8, i64 8}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.unroll.disable"}
!35 = distinct !{!35, !34}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = !{!40, !40, i64 0}
!40 = !{!"p1 _ZTS3_is", !19, i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"p1 _ZTS6Bigint", !19, i64 0}
!43 = !{!44, !42, i64 0}
!44 = !{!"Bigint", !42, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24}
!45 = !{!46, !98, i64 14328}
!46 = !{!"_is", !47, i64 0, !40, i64 7264, !48, i64 7272, !48, i64 7280, !8, i64 7288, !48, i64 7296, !8, i64 7304, !8, i64 7308, !8, i64 7312, !48, i64 7320, !53, i64 7328, !55, i64 7376, !51, i64 7384, !48, i64 7392, !56, i64 7400, !60, i64 7680, !60, i64 7688, !61, i64 7696, !65, i64 7832, !48, i64 8040, !66, i64 8048, !67, i64 8080, !48, i64 8536, !60, i64 8544, !60, i64 8552, !60, i64 8560, !19, i64 8568, !9, i64 8576, !9, i64 8640, !48, i64 8648, !9, i64 8656, !72, i64 10696, !60, i64 10744, !60, i64 10752, !60, i64 10760, !77, i64 10768, !78, i64 10832, !80, i64 10848, !83, i64 10872, !86, i64 10928, !52, i64 10944, !88, i64 10952, !60, i64 10960, !9, i64 10968, !9, i64 11032, !9, i64 11096, !9, i64 11160, !9, i64 11161, !89, i64 11168, !92, i64 11832, !96, i64 11888, !97, i64 11896, !99, i64 14336, !100, i64 79880, !102, i64 79896, !103, i64 79968, !104, i64 80000, !105, i64 80024, !106, i64 82008, !110, i64 223296, !9, i64 223328, !81, i64 223384, !81, i64 223385, !111, i64 223386, !113, i64 223400, !113, i64 223408, !113, i64 223416, !113, i64 223424, !48, i64 223432, !114, i64 223440, !19, i64 223448, !115, i64 223456, !82, i64 223472, !82, i64 223473, !48, i64 223480, !48, i64 223488, !9, i64 223496, !9, i64 224712, !9, i64 224776, !116, i64 224840, !118, i64 224928, !48, i64 225064, !123, i64 225072}
!47 = !{!"_ceval_state", !48, i64 0, !8, i64 8, !49, i64 16, !8, i64 24, !50, i64 32}
!48 = !{!"long", !9, i64 0}
!49 = !{!"p1 _ZTS18_gil_runtime_state", !19, i64 0}
!50 = !{!"_pending_calls", !51, i64 0, !52, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !8, i64 7224, !8, i64 7228}
!51 = !{!"p1 _ZTS3_ts", !19, i64 0}
!52 = !{!"PyMutex", !9, i64 0}
!53 = !{!"pythreads", !48, i64 0, !51, i64 8, !54, i64 16, !51, i64 24, !48, i64 32, !48, i64 40}
!54 = !{!"p1 _ZTS18_PyThreadStateImpl", !19, i64 0}
!55 = !{!"p1 _ZTS14pyruntimestate", !19, i64 0}
!56 = !{!"_gc_runtime_state", !8, i64 0, !8, i64 4, !57, i64 8, !9, i64 32, !57, i64 80, !9, i64 104, !8, i64 224, !59, i64 232, !60, i64 240, !60, i64 248, !48, i64 256, !48, i64 264, !8, i64 272, !8, i64 276}
!57 = !{!"gc_generation", !58, i64 0, !8, i64 16, !8, i64 20}
!58 = !{!"", !48, i64 0, !48, i64 8}
!59 = !{!"p1 _ZTS19_PyInterpreterFrame", !19, i64 0}
!60 = !{!"p1 _ZTS7_object", !19, i64 0}
!61 = !{!"_import_state", !60, i64 0, !60, i64 8, !60, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !60, i64 40, !60, i64 48, !8, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !62, i64 88, !64, i64 112}
!62 = !{!"", !52, i64 0, !63, i64 8, !48, i64 16}
!63 = !{!"long long", !9, i64 0}
!64 = !{!"", !8, i64 0, !48, i64 8, !8, i64 16}
!65 = !{!"_gil_runtime_state", !48, i64 0, !51, i64 8, !8, i64 16, !48, i64 24, !9, i64 32, !9, i64 80, !9, i64 120, !9, i64 168}
!66 = !{!"codecs_state", !60, i64 0, !60, i64 8, !60, i64 16, !8, i64 24}
!67 = !{!"PyConfig", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !48, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !68, i64 64, !8, i64 72, !8, i64 76, !68, i64 80, !68, i64 88, !68, i64 96, !8, i64 104, !69, i64 112, !69, i64 128, !69, i64 144, !69, i64 160, !8, i64 176, !8, i64 180, !8, i64 184, !8, i64 188, !8, i64 192, !8, i64 196, !8, i64 200, !8, i64 204, !8, i64 208, !8, i64 212, !8, i64 216, !8, i64 220, !8, i64 224, !68, i64 232, !68, i64 240, !68, i64 248, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !68, i64 288, !68, i64 296, !68, i64 304, !68, i64 312, !8, i64 320, !69, i64 328, !68, i64 344, !68, i64 352, !68, i64 360, !68, i64 368, !68, i64 376, !68, i64 384, !68, i64 392, !8, i64 400, !68, i64 408, !68, i64 416, !68, i64 424, !68, i64 432, !8, i64 440, !8, i64 444, !8, i64 448}
!68 = !{!"p1 int", !19, i64 0}
!69 = !{!"", !48, i64 0, !70, i64 8}
!70 = !{!"p2 int", !71, i64 0}
!71 = !{!"any p2 pointer", !19, i64 0}
!72 = !{!"", !73, i64 0, !76, i64 24}
!73 = !{!"_xid_lookup_state", !74, i64 0}
!74 = !{!"", !8, i64 0, !8, i64 4, !52, i64 8, !75, i64 16}
!75 = !{!"p1 _ZTS12_xid_regitem", !19, i64 0}
!76 = !{!"xi_exceptions", !60, i64 0, !60, i64 8, !60, i64 16}
!77 = !{!"_warnings_runtime_state", !60, i64 0, !60, i64 8, !60, i64 16, !62, i64 24, !48, i64 48, !60, i64 56}
!78 = !{!"atexit_state", !79, i64 0, !60, i64 8}
!79 = !{!"p1 _ZTS15atexit_callback", !19, i64 0}
!80 = !{!"_stoptheworld_state", !52, i64 0, !81, i64 1, !81, i64 2, !81, i64 3, !82, i64 4, !48, i64 8, !51, i64 16}
!81 = !{!"_Bool", !9, i64 0}
!82 = !{!"", !9, i64 0}
!83 = !{!"_qsbr_shared", !48, i64 0, !48, i64 8, !84, i64 16, !19, i64 24, !48, i64 32, !52, i64 40, !85, i64 48}
!84 = !{!"p1 _ZTS9_qsbr_pad", !19, i64 0}
!85 = !{!"p1 _ZTS18_qsbr_thread_state", !19, i64 0}
!86 = !{!"llist_node", !87, i64 0, !87, i64 8}
!87 = !{!"p1 _ZTS10llist_node", !19, i64 0}
!88 = !{!"p1 _ZTS15_obmalloc_state", !19, i64 0}
!89 = !{!"_py_object_state", !90, i64 0, !8, i64 656}
!90 = !{!"_Py_freelists", !91, i64 0, !91, i64 16, !91, i64 32, !9, i64 48, !91, i64 368, !91, i64 384, !91, i64 400, !91, i64 416, !91, i64 432, !91, i64 448, !91, i64 464, !91, i64 480, !91, i64 496, !91, i64 512, !91, i64 528, !91, i64 544, !91, i64 560, !91, i64 576, !91, i64 592, !91, i64 608, !91, i64 624, !91, i64 640}
!91 = !{!"_Py_freelist", !19, i64 0, !48, i64 8}
!92 = !{!"_Py_unicode_state", !93, i64 0, !19, i64 32, !94, i64 40}
!93 = !{!"_Py_unicode_fs_codec", !18, i64 0, !8, i64 8, !18, i64 16, !8, i64 24}
!94 = !{!"_Py_unicode_ids", !48, i64 0, !95, i64 8}
!95 = !{!"p2 _ZTS7_object", !71, i64 0}
!96 = !{!"_Py_long_state", !8, i64 0}
!97 = !{!"_dtoa_state", !9, i64 0, !9, i64 64, !9, i64 128, !98, i64 2432}
!98 = !{!"p1 double", !19, i64 0}
!99 = !{!"_py_func_state", !8, i64 0, !9, i64 8}
!100 = !{!"_py_code_state", !52, i64 0, !101, i64 8}
!101 = !{!"p1 _ZTS15_Py_hashtable_t", !19, i64 0}
!102 = !{!"_Py_dict_state", !8, i64 0, !9, i64 8}
!103 = !{!"_Py_exc_state", !60, i64 0, !19, i64 8, !8, i64 16, !60, i64 24}
!104 = !{!"_Py_mem_interp_free_queue", !8, i64 0, !52, i64 4, !86, i64 8}
!105 = !{!"ast_state", !82, i64 0, !8, i64 4, !60, i64 8, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !60, i64 64, !60, i64 72, !60, i64 80, !60, i64 88, !60, i64 96, !60, i64 104, !60, i64 112, !60, i64 120, !60, i64 128, !60, i64 136, !60, i64 144, !60, i64 152, !60, i64 160, !60, i64 168, !60, i64 176, !60, i64 184, !60, i64 192, !60, i64 200, !60, i64 208, !60, i64 216, !60, i64 224, !60, i64 232, !60, i64 240, !60, i64 248, !60, i64 256, !60, i64 264, !60, i64 272, !60, i64 280, !60, i64 288, !60, i64 296, !60, i64 304, !60, i64 312, !60, i64 320, !60, i64 328, !60, i64 336, !60, i64 344, !60, i64 352, !60, i64 360, !60, i64 368, !60, i64 376, !60, i64 384, !60, i64 392, !60, i64 400, !60, i64 408, !60, i64 416, !60, i64 424, !60, i64 432, !60, i64 440, !60, i64 448, !60, i64 456, !60, i64 464, !60, i64 472, !60, i64 480, !60, i64 488, !60, i64 496, !60, i64 504, !60, i64 512, !60, i64 520, !60, i64 528, !60, i64 536, !60, i64 544, !60, i64 552, !60, i64 560, !60, i64 568, !60, i64 576, !60, i64 584, !60, i64 592, !60, i64 600, !60, i64 608, !60, i64 616, !60, i64 624, !60, i64 632, !60, i64 640, !60, i64 648, !60, i64 656, !60, i64 664, !60, i64 672, !60, i64 680, !60, i64 688, !60, i64 696, !60, i64 704, !60, i64 712, !60, i64 720, !60, i64 728, !60, i64 736, !60, i64 744, !60, i64 752, !60, i64 760, !60, i64 768, !60, i64 776, !60, i64 784, !60, i64 792, !60, i64 800, !60, i64 808, !60, i64 816, !60, i64 824, !60, i64 832, !60, i64 840, !60, i64 848, !60, i64 856, !60, i64 864, !60, i64 872, !60, i64 880, !60, i64 888, !60, i64 896, !60, i64 904, !60, i64 912, !60, i64 920, !60, i64 928, !60, i64 936, !60, i64 944, !60, i64 952, !60, i64 960, !60, i64 968, !60, i64 976, !60, i64 984, !60, i64 992, !60, i64 1000, !60, i64 1008, !60, i64 1016, !60, i64 1024, !60, i64 1032, !60, i64 1040, !60, i64 1048, !60, i64 1056, !60, i64 1064, !60, i64 1072, !60, i64 1080, !60, i64 1088, !60, i64 1096, !60, i64 1104, !60, i64 1112, !60, i64 1120, !60, i64 1128, !60, i64 1136, !60, i64 1144, !60, i64 1152, !60, i64 1160, !60, i64 1168, !60, i64 1176, !60, i64 1184, !60, i64 1192, !60, i64 1200, !60, i64 1208, !60, i64 1216, !60, i64 1224, !60, i64 1232, !60, i64 1240, !60, i64 1248, !60, i64 1256, !60, i64 1264, !60, i64 1272, !60, i64 1280, !60, i64 1288, !60, i64 1296, !60, i64 1304, !60, i64 1312, !60, i64 1320, !60, i64 1328, !60, i64 1336, !60, i64 1344, !60, i64 1352, !60, i64 1360, !60, i64 1368, !60, i64 1376, !60, i64 1384, !60, i64 1392, !60, i64 1400, !60, i64 1408, !60, i64 1416, !60, i64 1424, !60, i64 1432, !60, i64 1440, !60, i64 1448, !60, i64 1456, !60, i64 1464, !60, i64 1472, !60, i64 1480, !60, i64 1488, !60, i64 1496, !60, i64 1504, !60, i64 1512, !60, i64 1520, !60, i64 1528, !60, i64 1536, !60, i64 1544, !60, i64 1552, !60, i64 1560, !60, i64 1568, !60, i64 1576, !60, i64 1584, !60, i64 1592, !60, i64 1600, !60, i64 1608, !60, i64 1616, !60, i64 1624, !60, i64 1632, !60, i64 1640, !60, i64 1648, !60, i64 1656, !60, i64 1664, !60, i64 1672, !60, i64 1680, !60, i64 1688, !60, i64 1696, !60, i64 1704, !60, i64 1712, !60, i64 1720, !60, i64 1728, !60, i64 1736, !60, i64 1744, !60, i64 1752, !60, i64 1760, !60, i64 1768, !60, i64 1776, !60, i64 1784, !60, i64 1792, !60, i64 1800, !60, i64 1808, !60, i64 1816, !60, i64 1824, !60, i64 1832, !60, i64 1840, !60, i64 1848, !60, i64 1856, !60, i64 1864, !60, i64 1872, !60, i64 1880, !60, i64 1888, !60, i64 1896, !60, i64 1904, !60, i64 1912, !60, i64 1920, !60, i64 1928, !60, i64 1936, !60, i64 1944, !60, i64 1952, !60, i64 1960, !60, i64 1968, !60, i64 1976}
!106 = !{!"types_state", !8, i64 0, !107, i64 8, !108, i64 98312, !109, i64 108016, !52, i64 108512, !9, i64 108520}
!107 = !{!"type_cache", !9, i64 0}
!108 = !{!"", !48, i64 0, !9, i64 8}
!109 = !{!"", !48, i64 0, !48, i64 8, !9, i64 16}
!110 = !{!"callable_cache", !60, i64 0, !60, i64 8, !60, i64 16, !60, i64 24}
!111 = !{!"_PyOptimizationConfig", !112, i64 0, !112, i64 2, !112, i64 4, !112, i64 6, !81, i64 8, !81, i64 9}
!112 = !{!"short", !9, i64 0}
!113 = !{!"p1 _ZTS17_PyExecutorObject", !19, i64 0}
!114 = !{!"_rare_events", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4}
!115 = !{!"_Py_GlobalMonitors", !9, i64 0}
!116 = !{!"_Py_interp_cached_objects", !60, i64 0, !60, i64 8, !117, i64 16, !117, i64 24, !117, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !117, i64 64, !60, i64 72, !60, i64 80}
!117 = !{!"p1 _ZTS11_typeobject", !19, i64 0}
!118 = !{!"_Py_interp_static_objects", !119, i64 0}
!119 = !{!"", !8, i64 0, !58, i64 8, !120, i64 24, !122, i64 64}
!120 = !{!"", !121, i64 0, !19, i64 16, !60, i64 24, !48, i64 32}
!121 = !{!"_object", !9, i64 0, !117, i64 8}
!122 = !{!"", !121, i64 0, !60, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !60, i64 48, !60, i64 56, !9, i64 64}
!123 = !{!"_PyThreadStateImpl", !124, i64 0, !131, i64 848, !48, i64 936, !48, i64 944, !48, i64 952, !48, i64 960, !48, i64 968, !48, i64 976, !60, i64 984, !60, i64 992, !8, i64 1000, !86, i64 1008, !85, i64 1024, !86, i64 1032}
!124 = !{!"_ts", !51, i64 0, !51, i64 8, !40, i64 16, !48, i64 24, !125, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !59, i64 72, !59, i64 80, !59, i64 88, !19, i64 96, !19, i64 104, !60, i64 112, !60, i64 120, !60, i64 128, !126, i64 136, !60, i64 144, !8, i64 152, !60, i64 160, !48, i64 168, !48, i64 176, !60, i64 184, !48, i64 192, !8, i64 200, !60, i64 208, !60, i64 216, !60, i64 224, !48, i64 232, !48, i64 240, !127, i64 248, !95, i64 256, !95, i64 264, !128, i64 272, !60, i64 288, !129, i64 296, !48, i64 304, !60, i64 312, !60, i64 320, !130, i64 328}
!125 = !{!"", !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0, !8, i64 0}
!126 = !{!"p1 _ZTS14_err_stackitem", !19, i64 0}
!127 = !{!"p1 _ZTS12_stack_chunk", !19, i64 0}
!128 = !{!"_err_stackitem", !60, i64 0, !126, i64 8}
!129 = !{!"p1 _ZTS11_PyExitData", !19, i64 0}
!130 = !{!"", !8, i64 0, !9, i64 4}
!131 = !{!"_PyInterpreterFrame", !9, i64 0, !59, i64 8, !9, i64 16, !60, i64 24, !60, i64 32, !60, i64 40, !132, i64 48, !19, i64 56, !133, i64 64, !112, i64 72, !9, i64 74, !9, i64 75, !9, i64 80}
!132 = !{!"p1 _ZTS6_frame", !19, i64 0}
!133 = !{!"p1 _ZTS11_PyStackRef", !19, i64 0}
!134 = !{!44, !8, i64 8}
!135 = !{!44, !8, i64 12}
!136 = !{!44, !8, i64 16}
!137 = !{!44, !8, i64 20}
!138 = distinct !{!138, !13}
!139 = distinct !{!139, !13}
!140 = distinct !{!140, !13}
!141 = distinct !{!141, !13}
!142 = distinct !{!142, !13}
!143 = distinct !{!143, !13}
!144 = distinct !{!144, !13, !145, !146}
!145 = !{!"llvm.loop.isvectorized", i32 1}
!146 = !{!"llvm.loop.unroll.runtime.disable"}
!147 = distinct !{!147, !13}
!148 = distinct !{!148, !13, !145}
!149 = distinct !{!149, !13}
!150 = distinct !{!150, !13}
!151 = distinct !{!151, !13}
!152 = distinct !{!152, !13}
!153 = distinct !{!153, !13}
!154 = distinct !{!154, !13}
!155 = distinct !{!155, !13}
!156 = distinct !{!156, !13}
!157 = distinct !{!157, !13}
!158 = distinct !{!158, !13}
!159 = distinct !{!159, !13}
!160 = distinct !{!160, !13}
!161 = distinct !{!161, !34}
!162 = distinct !{!162, !13}
!163 = distinct !{!163, !13}
!164 = distinct !{!164, !13}
!165 = distinct !{!165, !13}
end_hunk_2
