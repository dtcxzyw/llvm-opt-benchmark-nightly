inline.NumInlined: 94
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@mult:bb.a
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
  %.1.i82101 = ptrtoint ptr %.1.i82 to i64        ; 3 uses
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
  %2 = ptrtoint ptr %0 to i64                     ; 3 uses
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
  %i.by = shl nsw i64 %i.bv, 2
  %i.bz = add i64 %i.by, %2
  %i.ca = add i64 %i.bz, 24
  %i.cb = add i64 %2, 28
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ca, i64 %i.cb)
  %3 = add i64 %umax, -25
  %4 = sub i64 %3, %2                             ; 2 uses
  %i.cc = lshr i64 %4, 2
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 60
  br i1 %min.iters.check, label %.preheader.preheader95, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.preheader
  %i.ce = sub i64 %.046.lcssa91, %i.a
  %i.cf = add i64 %i.ce, -25
  %diff.check = icmp ult i64 %i.cf, 31
  br i1 %diff.check, label %.preheader.preheader95, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cd, 9223372036854775800     ; 3 uses
  %i.cg = shl i64 %n.vec, 2                       ; 2 uses
  %i.ch = getelementptr i8, ptr %i.b, i64 %i.cg
  %i.ci = getelementptr i8, ptr %.046.lcssa, i64 %i.cg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cj = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %i.cj ; 2 uses
  %next.gep92 = getelementptr i8, ptr %.046.lcssa, i64 %i.cj ; 2 uses
  %i.ck = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !7
  %wide.load93 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !7
  %i.cl = getelementptr i8, ptr %next.gep92, i64 16
  store <4 x i32> %wide.load, ptr %next.gep92, align 4, !tbaa !7
  store <4 x i32> %wide.load93, ptr %i.cl, align 4, !tbaa !7
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.preheader.preheader95

.preheader.preheader95:                           ; preds = %vector.memcheck, %.preheader.preheader, %middle.block
  %.148.ph = phi ptr [ %i.b, %vector.memcheck ], [ %i.b, %.preheader.preheader ], [ %i.ch, %middle.block ]
  %.2.ph = phi ptr [ %.046.lcssa, %vector.memcheck ], [ %.046.lcssa, %.preheader.preheader ], [ %i.ci, %middle.block ]
  br label %.preheader

bb.m:                                             ; preds = %._crit_edge70
  %i.cn = sub nuw nsw i32 32, %i.bx
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %bb.m
  %.047 = phi ptr [ %i.b, %bb.m ], [ %i.cs, %bb.n ] ; 3 uses
  %.1 = phi ptr [ %.046.lcssa, %bb.m ], [ %i.cr, %bb.n ] ; 2 uses
  %.0 = phi i32 [ 0, %bb.m ], [ %i.cu, %bb.n ]
  %i.co = load i32, ptr %.047, align 4, !tbaa !7
  %i.cp = shl i32 %i.co, %i.bx
  %i.cq = or i32 %i.cp, %.0
  %i.cr = getelementptr i8, ptr %.1, i64 4        ; 2 uses
  store i32 %i.cq, ptr %.1, align 4, !tbaa !7
  %i.cs = getelementptr i8, ptr %.047, i64 4      ; 2 uses
  %i.ct = load i32, ptr %.047, align 4, !tbaa !7
  %i.cu = lshr i32 %i.ct, %i.cn                   ; 3 uses
  %i.cv = icmp ult ptr %i.cs, %i.bw
  br i1 %i.cv, label %bb.n, label %bb.o, !llvm.loop !147

bb.o:                                             ; preds = %bb.n
  store i32 %i.cu, ptr %i.cr, align 4, !tbaa !7
  %.not58 = icmp eq i32 %i.cu, 0
  %spec.select = select i1 %.not58, i32 %i.k, i32 %i.l
  br label %.loopexit

.preheader:                                       ; preds = %.preheader.preheader95, %.preheader
  %.148 = phi ptr [ %i.cw, %.preheader ], [ %.148.ph, %.preheader.preheader95 ] ; 2 uses
  %.2 = phi ptr [ %i.cy, %.preheader ], [ %.2.ph, %.preheader.preheader95 ] ; 2 uses
  %i.cw = getelementptr i8, ptr %.148, i64 4      ; 2 uses
  %i.cx = load i32, ptr %.148, align 4, !tbaa !7
  %i.cy = getelementptr i8, ptr %.2, i64 4
  store i32 %i.cx, ptr %.2, align 4, !tbaa !7
  %i.cz = icmp ult ptr %i.cw, %i.bw
  br i1 %i.cz, label %.preheader, label %.loopexit, !llvm.loop !148

.loopexit:                                        ; preds = %.preheader, %middle.block, %bb.o
  %.049 = phi i32 [ %spec.select, %bb.o ], [ %i.k, %middle.block ], [ %i.k, %.preheader ]
  store i32 %.049, ptr %i.bk, align 4, !tbaa !137
  %i.da = load i32, ptr %i.h, align 8, !tbaa !134 ; 2 uses
  %i.db = icmp sgt i32 %i.da, 7
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.loopexit
  tail call void @PyMem_Free(ptr noundef nonnull %0) #11
  br label %Bfree.exit

bb.q:                                             ; preds = %.loopexit
  %i.dc = load ptr, ptr %i.s, align 8, !tbaa !39
  %i.dd = getelementptr i8, ptr %i.dc, i64 11960
  %i.de = sext i32 %i.da to i64
  %i.df = getelementptr [8 x i8], ptr %i.dd, i64 %i.de ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !41
  store ptr %i.dg, ptr %0, align 8, !tbaa !43
  store ptr %0, ptr %i.df, align 8, !tbaa !41
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
  %.0.i.ph = phi i32 [ %i.p, %bb.d ], [ %i.e, %bb.a ] ; 2 uses
  %i.ak = icmp slt i32 %.0.i.ph, 0                ; 2 uses
  %.0.i.ph.lobit = lshr i32 %.0.i.ph, 31
  %.58 = select i1 %i.ak, ptr %0, ptr %1          ; 2 uses
  %.59 = select i1 %i.ak, ptr %1, ptr %0          ; 3 uses
  %i.al = getelementptr i8, ptr %.59, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !134 ; 5 uses
end_hunk_0
