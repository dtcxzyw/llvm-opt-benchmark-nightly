inline.NumInlined: 90
inline.NumDeleted: 5
begin_hunk_0_@raxSeekGreatest:bb.a
  %i.bw = tail call noalias ptr @zmalloc(i64 noundef %i.bv) #27 ; 4 uses
  store ptr %i.bw, ptr %i.i, align 8, !tbaa !34
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store ptr %i.l, ptr %i.i, align 8, !tbaa !34
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 1, ptr %i.by, align 8, !tbaa !35
  br label %.thread.sink.split

bb.o:                                             ; preds = %bb.m
  %i.bz = load i64, ptr %i.k, align 8, !tbaa !33  ; 2 uses
  %i.ca = shl i64 %i.bz, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.bw, ptr nonnull align 8 %i.l, i64 %i.ca, i1 false)
  br label %bb.r

bb.p:                                             ; preds = %bb.l
  %i.cb = tail call ptr @zrealloc(ptr noundef %.pre31.i, i64 noundef %i.bv) #28 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.q, label %.thread.i42

.thread.i42:                                      ; preds = %bb.p
  store ptr %i.cb, ptr %i.i, align 8, !tbaa !34
  %.pre.i43 = load i64, ptr %i.k, align 8, !tbaa !33
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 1, ptr %i.cd, align 8, !tbaa !35
  br label %.thread.sink.split

bb.r:                                             ; preds = %.thread.i42, %bb.o
  %i.ce = phi ptr [ %i.cb, %.thread.i42 ], [ %i.bw, %bb.o ]
  %i.cf = phi i64 [ %.pre.i43, %.thread.i42 ], [ %i.bz, %bb.o ]
  %i.cg = shl i64 %i.cf, 1
  store i64 %i.cg, ptr %i.k, align 8, !tbaa !33
  %.pre32.i = load i64, ptr %i.j, align 8, !tbaa !31
  br label %bb.s

bb.s:                                             ; preds = %bb.k, %bb.r
  %i.ch = phi i64 [ %.pre32.i, %bb.r ], [ %i.br, %bb.k ] ; 2 uses
  %i.ci = phi ptr [ %i.ce, %bb.r ], [ %.pre31.i, %bb.k ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.ch
  store ptr %i.ay, ptr %i.cj, align 8, !tbaa !29
  %i.ck = add i64 %i.ch, 1
  store i64 %i.ck, ptr %i.j, align 8, !tbaa !31
  %i.cl = select i1 %.not52, i64 -12, i64 -4
  %i.cm = getelementptr inbounds i8, ptr %i.bp, i64 %i.cl
  %i.cn = load i64, ptr %i.cm, align 8            ; 2 uses
  store i64 %i.cn, ptr %i.a, align 8
  %.cast = inttoptr i64 %i.cn to ptr              ; 2 uses
  %i.co = load i32, ptr %.cast, align 4           ; 2 uses
  %i.cp = lshr i32 %i.co, 3                       ; 2 uses
  %.not = icmp eq i32 %i.cp, 0
  br i1 %.not, label %.thread, label %bb.b

.thread.sink.split:                               ; preds = %raxIteratorAddChars.exit.thread, %raxIteratorAddChars.exit40.thread, %bb.q, %bb.n
  %i.cq = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.cq, align 4, !tbaa !9
  br label %.thread

.thread:                                          ; preds = %bb.s, %.thread.sink.split, %bb.a
  %.2 = phi i32 [ 1, %bb.a ], [ 0, %.thread.sink.split ], [ 1, %bb.s ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @raxIteratorPrevStep(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !39     ; 3 uses
  %i.b = and i32 %i.a, 2
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.thread100

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.a, 1
  %.not69 = icmp eq i32 %i.c, 0
  br i1 %.not69, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.a, -4
  store i32 %i.d, ptr %0, align 8, !tbaa !39
  br label %.thread100

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !44
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49   ; 2 uses
  %i.l = icmp eq i32 %1, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %.loopexit, %bb.d
  %i.s = phi ptr [ %i.k, %bb.d ], [ %i.do, %.loopexit ] ; 2 uses
  %.062 = phi i1 [ %i.l, %bb.d ], [ true, %.loopexit ] ; 2 uses
  br i1 %.062, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !43
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !18
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %0, align 8, !tbaa !39
  %i.x = or i32 %i.w, 2
  store i32 %i.x, ptr %0, align 8, !tbaa !39
  store i64 %i.i, ptr %i.h, align 8, !tbaa !48
  store i64 %i.f, ptr %i.e, align 8, !tbaa !44
  store ptr %i.k, ptr %i.j, align 8, !tbaa !49
  br label %.thread100

bb.h:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !45   ; 2 uses
  %i.z = load i64, ptr %i.e, align 8, !tbaa !44   ; 2 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 -1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !45  ; 2 uses
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !44  ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !21
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !31  ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %raxStackPop.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = add i64 %i.ai, -1                       ; 2 uses
  store i64 %i.ak, ptr %i.h, align 8, !tbaa !31
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ak
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !29
  br label %raxStackPop.exit

raxStackPop.exit:                                 ; preds = %bb.i, %bb.j
  %.0.i = phi ptr [ %i.an, %bb.j ], [ null, %bb.i ] ; 2 uses
  store ptr %.0.i, ptr %i.j, align 8, !tbaa !49
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %raxStackPop.exit
  %i.ao = phi ptr [ %i.s, %bb.h ], [ %.0.i, %raxStackPop.exit ] ; 7 uses
  %i.ap = phi i8 [ %i.ac, %bb.h ], [ %i.ah, %raxStackPop.exit ]
  %i.aq = phi i64 [ %i.z, %bb.h ], [ %i.ae, %raxStackPop.exit ]
  %i.ar = phi ptr [ %i.y, %bb.h ], [ %i.ad, %raxStackPop.exit ] ; 3 uses
  %i.as = load i32, ptr %i.ao, align 4            ; 2 uses
  %i.at = and i32 %i.as, 4
  %.not71 = icmp eq i32 %i.at, 0
  %i.au = lshr i32 %i.as, 3
  %narrow = select i1 %.not71, i32 1, i32 %i.au
  %i.av = zext nneg i32 %narrow to i64
  %i.aw = sub i64 %i.aq, %i.av                    ; 3 uses
  store i64 %i.aw, ptr %i.e, align 8, !tbaa !44
  %i.ax = load i32, ptr %i.ao, align 4            ; 8 uses
  %i.ay = and i32 %i.ax, 4
  %.not72 = icmp eq i32 %i.ay, 0
  br i1 %.not72, label %bb.l, label %.loopexit

bb.l:                                             ; preds = %bb.k
  %i.az = lshr i32 %i.ax, 3                       ; 4 uses
  %i.ba = zext i1 %.062 to i32
  %i.bb = icmp samesign ugt i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %bb.l
  %i.bc = zext nneg i32 %i.az to i64              ; 2 uses
  %i.bd = xor i32 %i.az, 3
  %.neg = add nuw nsw i32 %i.bd, 1
  %i.be = and i32 %.neg, 7
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw nsw i64 %i.bc, 3
  %i.bh = and i32 %i.ax, 1
  %.not73 = icmp eq i32 %i.bh, 0
  %i.bi = shl i32 %i.ax, 2
  %i.bj = and i32 %i.bi, 8
  %i.bk = xor i32 %i.bj, 8
  %narrow103 = select i1 %.not73, i32 0, i32 %i.bk
  %i.bl = zext nneg i32 %narrow103 to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bc
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bf
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bg
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bl
  %i.bq = and i32 %i.ax, 3
  %.not104 = icmp eq i32 %i.bq, 1
  %i.br = select i1 %.not104, i64 -12, i64 -4
  %i.bs = getelementptr inbounds i8, ptr %i.bp, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %.0119 = add nsw i32 %i.az, -1
  %2 = zext nneg i32 %.0119 to i64
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.o
  %indvars.iv = phi i64 [ %2, %bb.m ], [ %indvars.iv.next, %bb.o ] ; 4 uses
  %.060120 = phi ptr [ %i.bs, %bb.m ], [ %i.bx, %bb.o ] ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !21
  %i.bw = icmp ult i8 %i.bv, %i.ap
  br i1 %i.bw, label %.thread90, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = getelementptr inbounds i8, ptr %.060120, i64 -8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %3 = trunc nuw i64 %indvars.iv to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %bb.n, label %.loopexit, !llvm.loop !53

.thread90:                                        ; preds = %bb.n
  %i.by = getelementptr inbounds nuw i8, ptr %i.bt, i64 %indvars.iv
  %i.bz = load i64, ptr %i.o, align 8, !tbaa !46
  %i.ca = add i64 %i.aw, 1                        ; 2 uses
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.p, label %bb.s

bb.p:                                             ; preds = %.thread90
  %i.cc = icmp eq ptr %i.ar, %i.p
  %spec.select.i = select i1 %i.cc, ptr null, ptr %i.ar ; 3 uses
  %i.cd = shl i64 %i.ca, 1                        ; 2 uses
  %i.ce = tail call ptr @zrealloc(ptr noundef %spec.select.i, i64 noundef %i.cd) #28 ; 4 uses
  store ptr %i.ce, ptr %i.m, align 8, !tbaa !45
  %i.cf = icmp eq ptr %i.ce, null
  %.not.i = icmp eq ptr %spec.select.i, null      ; 2 uses
  br i1 %i.cf, label %raxIteratorAddChars.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  br i1 %.not.i, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.cg = load i64, ptr %i.e, align 8, !tbaa !44
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ce, ptr nonnull align 8 %i.p, i64 %i.cg, i1 false)
  %.pre.pre = load ptr, ptr %i.m, align 8, !tbaa !45
  br label %.thread.i

.thread.i:                                        ; preds = %bb.r, %bb.q
  %.pre = phi ptr [ %.pre.pre, %bb.r ], [ %i.ce, %bb.q ]
  store i64 %i.cd, ptr %i.o, align 8, !tbaa !46
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !44
  br label %bb.s

raxIteratorAddChars.exit.thread:                  ; preds = %bb.p
  %i.ch = select i1 %.not.i, ptr %i.p, ptr %spec.select.i
  store ptr %i.ch, ptr %i.m, align 8, !tbaa !45
  %i.ci = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.ci, align 4, !tbaa !9
  br label %.thread100

bb.s:                                             ; preds = %.thread.i, %.thread90
  %i.cj = phi ptr [ %.pre, %.thread.i ], [ %i.ar, %.thread90 ]
  %i.ck = phi i64 [ %.pre.i, %.thread.i ], [ %i.aw, %.thread90 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  %5 = load i8, ptr %i.by, align 1
  store i8 %5, ptr %i.cl, align 1
  %i.cm = load i64, ptr %i.e, align 8, !tbaa !44
  %i.cn = add i64 %i.cm, 1
  store i64 %i.cn, ptr %i.e, align 8, !tbaa !44
  %i.co = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.cp = load i64, ptr %i.h, align 8, !tbaa !31  ; 3 uses
  %i.cq = load i64, ptr %i.q, align 8, !tbaa !33
  %i.cr = icmp eq i64 %i.cp, %i.cq
  %.pre31.i = load ptr, ptr %i.g, align 8, !tbaa !34 ; 3 uses
  br i1 %i.cr, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.cs = icmp eq ptr %.pre31.i, %i.r
  %i.ct = shl i64 %i.cp, 4                        ; 2 uses
  br i1 %i.cs, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.cu = tail call noalias ptr @zmalloc(i64 noundef %i.ct) #27 ; 4 uses
  store ptr %i.cu, ptr %i.g, align 8, !tbaa !34
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store ptr %i.r, ptr %i.g, align 8, !tbaa !34
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 1, ptr %i.cw, align 8, !tbaa !35
  %i.cx = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.cx, align 4, !tbaa !9
  br label %.thread100

bb.w:                                             ; preds = %bb.u
  %i.cy = load i64, ptr %i.q, align 8, !tbaa !33  ; 2 uses
  %i.cz = shl i64 %i.cy, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.cu, ptr nonnull align 8 %i.r, i64 %i.cz, i1 false)
  br label %bb.z

bb.x:                                             ; preds = %bb.t
  %i.da = tail call ptr @zrealloc(ptr noundef %.pre31.i, i64 noundef %i.ct) #28 ; 3 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.y, label %.thread.i85

.thread.i85:                                      ; preds = %bb.x
  store ptr %i.da, ptr %i.g, align 8, !tbaa !34
  %.pre.i86 = load i64, ptr %i.q, align 8, !tbaa !33
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i32 1, ptr %i.dc, align 8, !tbaa !35
  %i.dd = tail call ptr @__errno_location() #26
  store i32 12, ptr %i.dd, align 4, !tbaa !9
  br label %.thread100

bb.z:                                             ; preds = %.thread.i85, %bb.w
  %i.de = phi ptr [ %i.da, %.thread.i85 ], [ %i.cu, %bb.w ]
  %i.df = phi i64 [ %.pre.i86, %.thread.i85 ], [ %i.cy, %bb.w ]
  %i.dg = shl i64 %i.df, 1
  store i64 %i.dg, ptr %i.q, align 8, !tbaa !33
  %.pre32.i = load i64, ptr %i.h, align 8, !tbaa !31
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.s
  %i.dh = phi i64 [ %.pre32.i, %bb.z ], [ %i.cp, %bb.s ] ; 2 uses
  %i.di = phi ptr [ %i.de, %bb.z ], [ %.pre31.i, %bb.s ]
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dh
  store ptr %i.co, ptr %i.dj, align 8, !tbaa !29
  %i.dk = add i64 %i.dh, 1
  store i64 %i.dk, ptr %i.h, align 8, !tbaa !31
  %i.dl = load i64, ptr %.060120, align 8
  store i64 %i.dl, ptr %i.j, align 8
  %i.dm = tail call i32 @raxSeekGreatest(ptr noundef nonnull %0)
  %.not82 = icmp eq i32 %i.dm, 0
  br i1 %.not82, label %.thread100, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aa
  %.pre132 = load ptr, ptr %i.j, align 8, !tbaa !49 ; 2 uses
  %.pre133 = load i32, ptr %.pre132, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.o, %._crit_edge, %bb.l, %bb.k
  %i.dn = phi i32 [ %.pre133, %._crit_edge ], [ %i.ax, %bb.k ], [ %i.ax, %bb.l ], [ %i.ax, %bb.o ] ; 4 uses
  %i.do = phi ptr [ %.pre132, %._crit_edge ], [ %i.ao, %bb.k ], [ %i.ao, %bb.l ], [ %i.ao, %bb.o ] ; 2 uses
  %i.dp = and i32 %i.dn, 1
  %.not83 = icmp eq i32 %i.dp, 0
  br i1 %.not83, label %bb.e, label %bb.ab

bb.ab:                                            ; preds = %.loopexit
  %i.dq = and i32 %i.dn, 2
  %.not.i87 = icmp eq i32 %i.dq, 0
  br i1 %.not.i87, label %bb.ac, label %raxGetData.exit

bb.ac:                                            ; preds = %bb.ab
  %i.dr = lshr i32 %i.dn, 3                       ; 2 uses
  %i.ds = zext nneg i32 %i.dr to i64              ; 2 uses
  %i.dt = xor i32 %i.dr, 3
  %.neg.i = add nuw nsw i32 %i.dt, 1
  %i.du = and i32 %.neg.i, 7
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = and i32 %i.dn, 4
  %.not11.i = icmp eq i32 %i.dw, 0
  %i.dx = shl nuw nsw i64 %i.ds, 3
  %spec.select.i89 = select i1 %.not11.i, i64 %i.dx, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ds
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %spec.select.i89
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %.0.copyload.i = load ptr, ptr %i.eb, align 8
  br label %raxGetData.exit

raxGetData.exit:                                  ; preds = %bb.ab, %bb.ac
  %.0.i88 = phi ptr [ %.0.copyload.i, %bb.ac ], [ null, %bb.ab ]
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.0.i88, ptr %i.ec, align 8, !tbaa !47
  br label %.thread100

.thread100:                                       ; preds = %bb.aa, %bb.y, %bb.v, %raxIteratorAddChars.exit.thread, %raxGetData.exit, %bb.g, %bb.a, %bb.c
  %.5 = phi i32 [ 1, %bb.a ], [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %raxGetData.exit ], [ 0, %raxIteratorAddChars.exit.thread ], [ 0, %bb.y ], [ 0, %bb.v ], [ 0, %bb.aa ]
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @raxSeek(ptr noundef initializes((32, 40), (176, 184), (192, 200)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #1 {
tailrecurse.peel.begin:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 10 uses
  store ptr null, ptr %i.d, align 8, !tbaa !49
  %.promoted = load i32, ptr %0, align 8, !tbaa !39 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = and i32 %.promoted, -4
  %i.g = or disjoint i32 %i.f, 1                  ; 2 uses
  store i32 %i.g, ptr %0, align 8, !tbaa !39
  %i.h = load i8, ptr %1, align 1, !tbaa !21
  switch i8 %i.h, label %bb.b [
    i8 62, label %.loopexit.sink.split
    i8 60, label %bb.a
    i8 61, label %.loopexit
    i8 94, label %.thread.peel
    i8 36, label %.thread
  ]

.thread.peel:                                     ; preds = %tailrecurse.peel.begin
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !16
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit175, label %.loopexit.sink.split

bb.a:                                             ; preds = %tailrecurse.peel.begin
  br label %.loopexit.sink.split

bb.b:                                             ; preds = %tailrecurse.peel.begin
  %i.m = tail call ptr @__errno_location() #26
  store i32 0, ptr %i.m, align 4, !tbaa !9
  br label %bb.as

.loopexit.sink.split:                             ; preds = %tailrecurse.peel.begin, %.thread.peel, %bb.a
  %.sink = phi ptr [ %1, %bb.a ], [ %1, %tailrecurse.peel.begin ], [ @.str.5, %.thread.peel ]
  %.ph = phi i32 [ %.promoted, %bb.a ], [ %.promoted, %tailrecurse.peel.begin ], [ %i.g, %.thread.peel ]
  %.tr173232.ph = phi ptr [ %2, %bb.a ], [ %2, %tailrecurse.peel.begin ], [ null, %.thread.peel ]
  %.tr174226.ph = phi i64 [ %3, %bb.a ], [ %3, %tailrecurse.peel.begin ], [ 0, %.thread.peel ]
  %.ph263 = phi i1 [ false, %bb.a ], [ true, %tailrecurse.peel.begin ], [ true, %.thread.peel ]
  %.ph264 = phi i1 [ true, %bb.a ], [ false, %tailrecurse.peel.begin ], [ false, %.thread.peel ]
  %i.n = getelementptr inbounds nuw i8, ptr %.sink, i64 1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !21
  %i.p = icmp ne i8 %i.o, 61
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.sink.split, %tailrecurse.peel.begin
  %i.q = phi i32 [ %.promoted, %tailrecurse.peel.begin ], [ %.ph, %.loopexit.sink.split ]
  %.tr173232 = phi ptr [ %2, %tailrecurse.peel.begin ], [ %.tr173232.ph, %.loopexit.sink.split ] ; 5 uses
  %.tr174226 = phi i64 [ %3, %tailrecurse.peel.begin ], [ %.tr174226.ph, %.loopexit.sink.split ] ; 3 uses
  %i.r = phi i1 [ false, %tailrecurse.peel.begin ], [ %.ph263, %.loopexit.sink.split ] ; 4 uses
  %.not114 = phi i1 [ false, %tailrecurse.peel.begin ], [ %i.p, %.loopexit.sink.split ]
  %i.s = phi i1 [ false, %tailrecurse.peel.begin ], [ %.ph264, %.loopexit.sink.split ] ; 5 uses
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !16
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit175, label %bb.h

.thread:                                          ; preds = %tailrecurse.peel.begin
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !43   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !16
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit175, label %bb.c

.loopexit175:                                     ; preds = %.thread, %.thread.peel, %.loopexit
  %i.ab = phi i32 [ %i.q, %.loopexit ], [ %.promoted, %.thread.peel ], [ %.promoted, %.thread ]
  %i.ac = or i32 %i.ab, 3
  store i32 %i.ac, ptr %0, align 8, !tbaa !39
  br label %bb.as

bb.c:                                             ; preds = %.thread
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !18
  store ptr %i.ad, ptr %i.d, align 8, !tbaa !49
  %i.ae = tail call i32 @raxSeekGreatest(ptr noundef nonnull %0)
end_hunk_0
