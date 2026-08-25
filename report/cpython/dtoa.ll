Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/dtoa?download=true
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
  %.1.i82 = phi ptr [ %i.ay, %bb.l ], [ %.0.i81, %bb.q ] ; 4 uses
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
  %i.cj = shl nsw i64 %i.cg, 2
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cf, i8 0, i64 %i.cj, i1 false), !tbaa !7
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.r
  %i.ck = getelementptr i8, ptr %spec.select, i64 24 ; 2 uses
  %i.cl = sext i32 %i.ak to i64
  %i.cm = getelementptr [4 x i8], ptr %i.ck, i64 %i.cl
  %i.cn = getelementptr i8, ptr %spec.select80, i64 24 ; 3 uses
  %i.co = sext i32 %i.am to i64
  %i.cp = getelementptr [4 x i8], ptr %i.cn, i64 %i.co ; 2 uses
  %i.cq = icmp ult ptr %i.cn, %i.cp
  br i1 %i.cq, label %.lr.ph94, label %.preheader

.preheader:                                       ; preds = %bb.u, %._crit_edge
  %i.cr = icmp sgt i32 %i.an, 0
  br i1 %i.cr, label %.lr.ph97, label %.critedge

.lr.ph94:                                         ; preds = %._crit_edge, %bb.u
  %.06392 = phi ptr [ %i.di, %bb.u ], [ %i.cf, %._crit_edge ] ; 2 uses
  %.06591 = phi ptr [ %i.cs, %bb.u ], [ %i.cn, %._crit_edge ] ; 2 uses
  %i.cs = getelementptr i8, ptr %.06591, i64 4    ; 2 uses
  %i.ct = load i32, ptr %.06591, align 4, !tbaa !7 ; 2 uses
  %.not79 = icmp eq i32 %i.ct, 0
  br i1 %.not79, label %bb.u, label %.preheader88

.preheader88:                                     ; preds = %.lr.ph94
  %i.cu = zext i32 %i.ct to i64
  br label %bb.s

bb.s:                                             ; preds = %.preheader88, %bb.s
  %.167 = phi ptr [ %i.cv, %bb.s ], [ %i.ck, %.preheader88 ] ; 2 uses
  %.064 = phi ptr [ %i.df, %bb.s ], [ %.06392, %.preheader88 ] ; 3 uses
  %.0 = phi i64 [ %i.dd, %bb.s ], [ 0, %.preheader88 ]
  %i.cv = getelementptr i8, ptr %.167, i64 4      ; 2 uses
  %i.cw = load i32, ptr %.167, align 4, !tbaa !7
  %i.cx = zext i32 %i.cw to i64
  %i.cy = mul nuw i64 %i.cx, %i.cu
  %i.cz = load i32, ptr %.064, align 4, !tbaa !7
  %i.da = zext i32 %i.cz to i64
  %i.db = add nuw nsw i64 %.0, %i.da
  %i.dc = add nuw i64 %i.db, %i.cy                ; 2 uses
  %i.dd = lshr i64 %i.dc, 32                      ; 2 uses
  %i.de = trunc i64 %i.dc to i32
  %i.df = getelementptr i8, ptr %.064, i64 4      ; 2 uses
  store i32 %i.de, ptr %.064, align 4, !tbaa !7
  %i.dg = icmp ult ptr %i.cv, %i.cm
  br i1 %i.dg, label %bb.s, label %bb.t, !llvm.loop !140

bb.t:                                             ; preds = %bb.s
  %i.dh = trunc nuw i64 %i.dd to i32
  store i32 %i.dh, ptr %i.df, align 4, !tbaa !7
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph94, %bb.t
  %i.di = getelementptr i8, ptr %.06392, i64 4
  %i.dj = icmp ult ptr %i.cs, %i.cp
  br i1 %i.dj, label %.lr.ph94, label %.preheader, !llvm.loop !141

.lr.ph97:                                         ; preds = %.preheader, %bb.v
  %.196 = phi ptr [ %i.dk, %bb.v ], [ %i.ch, %.preheader ]
  %.06895 = phi i32 [ %i.dm, %bb.v ], [ %i.an, %.preheader ] ; 3 uses
  %i.dk = getelementptr i8, ptr %.196, i64 -4     ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !7
  %.not78 = icmp eq i32 %i.dl, 0
  br i1 %.not78, label %bb.v, label %.critedge

bb.v:                                             ; preds = %.lr.ph97
  %i.dm = add nsw i32 %.06895, -1
  %i.dn = icmp sgt i32 %.06895, 1
  br i1 %i.dn, label %.lr.ph97, label %.critedge, !llvm.loop !142

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
  %i.a = ptrtoaddr ptr %0 to i64                  ; 4 uses
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
  %.04965 = phi i32 [ %i.p, %.lr.ph ], [ %i.i, %._crit_edge76 ]
  %.05064 = phi i32 [ %i.q, %.lr.ph ], [ %i.n, %._crit_edge76 ]
  %i.p = add i32 %.04965, 1                       ; 2 uses
  %i.q = shl i32 %.05064, 1                       ; 2 uses
  %i.r = icmp sgt i32 %i.l, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !143

._crit_edge:                                      ; preds = %.lr.ph, %._crit_edge76
  %.049.lcssa = phi i32 [ %i.i, %._crit_edge76 ], [ %i.p, %.lr.ph ] ; 5 uses
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_Py_tss_interp) ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !39   ; 3 uses
  %i.u = icmp slt i32 %.049.lcssa, 8
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.v = getelementptr i8, ptr %i.t, i64 11960
  %i.w = sext i32 %.049.lcssa to i64
  %i.x = getelementptr [8 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !41   ; 3 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !43
  store ptr %i.z, ptr %i.x, align 8, !tbaa !41
  br label %bb.l

bb.d:                                             ; preds = %._crit_edge
  %i.aa = shl nuw i32 1, %.049.lcssa              ; 2 uses
  %i.ab = add i32 %i.aa, -1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2
  %i.ae = add nuw nsw i64 %i.ad, 36
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.af = shl nuw nsw i32 1, %.049.lcssa          ; 3 uses
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
  %.0.i = phi ptr [ %i.am, %bb.f ], [ %i.ay, %bb.g ] ; 3 uses
  %i.bb = getelementptr i8, ptr %.0.i, i64 8
  store i32 %.049.lcssa, ptr %i.bb, align 8, !tbaa !134
  %i.bc = getelementptr i8, ptr %.0.i, i64 12
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
end_hunk_0
begin_hunk_1_@_PyDtoa_Fini:bb.a
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #2

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
end_hunk_1
