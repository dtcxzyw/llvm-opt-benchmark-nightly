inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@checkPtrmap:bb.a

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483647, -2147483648) i32 @checkTreePage(ptr noundef nonnull %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 8 uses
  %4 = alloca %struct.CellInfo, align 8           ; 8 uses
  store i64 %3, ptr %i.b, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2479
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = load <2 x i32>, ptr %i.e, align 4, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !2468 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 400
  %i.k = load atomic volatile i32, ptr %i.j monotonic, align 8
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 9, ptr %i.l, align 4, !tbaa !2476
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !2477
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8, !tbaa !2477
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.p, align 4, !tbaa !2473
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 520
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !1268 ; 2 uses
  %.not14.i = icmp eq ptr %i.r, null
  br i1 %.not14.i, label %checkProgress.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !2997
  %i.u = add i32 %i.t, 1                          ; 2 uses
  store i32 %i.u, ptr %i.s, align 8, !tbaa !2997
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 536
  %i.w = load i32, ptr %i.v, align 8, !tbaa !1269
  %i.x = urem i32 %i.u, %i.w
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %checkProgress.exit

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 528
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1270
  %i.ab = tail call i32 %i.r(ptr noundef %i.aa) #58, !inline_history !2998
  %.not15.i = icmp eq i32 %i.ab, 0
  br i1 %.not15.i, label %checkProgress.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 9, ptr %i.ac, align 4, !tbaa !2476
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !2477
  %i.af = add nsw i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 8, !tbaa !2477
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.ag, align 4, !tbaa !2473
  br label %checkProgress.exit

checkProgress.exit:                               ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !2473
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %releasePage.exit, label %bb.g

bb.g:                                             ; preds = %checkProgress.exit
  %i.ak = load ptr, ptr %0, align 8, !tbaa !2470  ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 56
  %i.am = load i32, ptr %i.al, align 8, !tbaa !761 ; 4 uses
  %i.an = icmp eq i32 %1, 0
  br i1 %i.an, label %checkRef.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !2472
  %i.aq = add i32 %1, -1
  %or.cond.not.i = icmp ult i32 %i.aq, %i.ap
  br i1 %or.cond.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.421, i32 noundef %1), !inline_history !2995
  br label %checkRef.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr i8, ptr %0, i64 16
  %.val13.i = load ptr, ptr %i.ar, align 8, !tbaa !2475
  %i.as = lshr i32 %1, 3
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.val13.i, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !231 ; 2 uses
  %i.aw = zext i8 %i.av to i32
  %i.ax = and i32 %1, 7
  %i.ay = shl nuw nsw i32 1, %i.ax                ; 2 uses
  %i.az = and i32 %i.ay, %i.aw
  %.not.i219 = icmp eq i32 %i.az, 0
  br i1 %.not.i219, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef nonnull %0, ptr noundef nonnull @.str.422, i32 noundef %1), !inline_history !2995
  br label %checkRef.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ba = trunc nuw i32 %i.ay to i8
  %i.bb = or i8 %i.av, %i.ba
  store i8 %i.bb, ptr %i.au, align 1, !tbaa !231
  store ptr @.str.426, ptr %i.c, align 8, !tbaa !2479
  store i32 %1, ptr %i.e, align 4, !tbaa !3000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #58
  %i.bc = load ptr, ptr %i.ak, align 8, !tbaa !77 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 272
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !525
  %i.bf = call i32 %i.be(ptr noundef %i.bc, i32 noundef %1, ptr noundef nonnull %i.a, i32 noundef range(i32 0, 256) 0) #58, !inline_history !773 ; 3 uses
  %.not.i220 = icmp eq i32 %i.bf, 0
  br i1 %.not.i220, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !524 ; 3 uses
  %i.bh = getelementptr i8, ptr %i.bg, i64 16
  %.val13.i.i = load ptr, ptr %i.bh, align 8, !tbaa !696 ; 20 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !774
  %.not.i.i = icmp eq i32 %1, %i.bj
  br i1 %.not.i.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.bg, i64 8
  %.val.i.i = load ptr, ptr %i.bk, align 8, !tbaa !527
  %i.bl = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 80
  store ptr %.val.i.i, ptr %i.bl, align 8, !tbaa !667
  %i.bm = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 112
  store ptr %i.bg, ptr %i.bm, align 8, !tbaa !698
  %i.bn = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 72
  store ptr %i.ak, ptr %i.bn, align 8, !tbaa !775
  store i32 %1, ptr %i.bi, align 4, !tbaa !774
  %i.bo = icmp eq i32 %1, 1
  %i.bp = select i1 %i.bo, i8 100, i8 0
  %i.bq = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 9
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !776
  br label %bb.q

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.427, i32 noundef %i.bf)
  %i.br = icmp eq i32 %i.bf, 3082
  br i1 %i.br, label %bb.p, label %releasePage.exit

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 7, ptr %i.bs, align 4, !tbaa !2476
  br label %releasePage.exit

bb.q:                                             ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #58
  %i.bt = load i8, ptr %.val13.i.i, align 8, !tbaa !1614
  store i8 0, ptr %.val13.i.i, align 8, !tbaa !1614
  %i.bu = call fastcc i32 @btreeInitPage(ptr noundef nonnull %.val13.i.i) ; 2 uses
  %.not199 = icmp eq i32 %i.bu, 0
  br i1 %.not199, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.428, i32 noundef %i.bu)
  br label %.thread.thread271

bb.s:                                             ; preds = %bb.q
  %i.bv = call fastcc i32 @btreeComputeFreeSpace(ptr noundef nonnull %.val13.i.i) ; 2 uses
  %.not200 = icmp eq i32 %i.bv, 0
  br i1 %.not200, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.429, i32 noundef %i.bv)
  br label %.thread.thread271

bb.u:                                             ; preds = %bb.s
  %i.bw = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !667 ; 6 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 9
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !776 ; 2 uses
  %i.ca = zext i8 %i.bz to i32
  store ptr @.str.430, ptr %i.c, align 8, !tbaa !2479
  %i.cb = zext i8 %i.bz to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.cb ; 11 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 5
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !231
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !231
  %i.cj = zext i8 %i.ci to i32
  %i.ck = or disjoint i32 %i.cg, %i.cj
  %i.cl = add nuw nsw i32 %i.ck, 65535
  %i.cm = and i32 %i.cl, 65535                    ; 4 uses
  %i.cn = add nuw nsw i32 %i.cm, 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 3
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !231
  %i.cq = zext i8 %i.cp to i32
  %i.cr = shl nuw nsw i32 %i.cq, 8                ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !231
  %i.cu = zext i8 %i.ct to i32                    ; 2 uses
  %i.cv = or disjoint i32 %i.cr, %i.cu            ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 8 ; 3 uses
  %i.cx = load i8, ptr %i.cw, align 8, !tbaa !858 ; 2 uses
  %.not201 = icmp eq i8 %i.cx, 0                  ; 2 uses
  br i1 %.not201, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !1609
  %i.da = icmp eq i8 %i.cz, 0
  br i1 %i.da, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.db = zext nneg i32 %i.cv to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !2482
  %i.de = add nsw i64 %i.dd, %i.db
  store i64 %i.de, ptr %i.dc, align 8, !tbaa !2482
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.df = add nuw nsw i32 %i.ca, 12
  %i.dg = zext i8 %i.cx to i32
  %i.dh = shl nuw nsw i32 %i.dg, 2
  %i.di = sub nsw i32 %i.df, %i.dh                ; 2 uses
  %i.dj = add nsw i32 %i.cv, -1                   ; 2 uses
  %i.dk = shl nsw i32 %i.dj, 1
  %i.dl = add nsw i32 %i.di, %i.dk
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds i8, ptr %i.bx, i64 %i.dm
  br i1 %.not201, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %i.cc, i64 8
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !231
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw i32 %i.dq, 24
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cc, i64 9
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !231
  %i.du = zext i8 %i.dt to i32
  %i.dv = shl nuw nsw i32 %i.du, 16
  %i.dw = or disjoint i32 %i.dv, %i.dr
  %i.dx = getelementptr inbounds nuw i8, ptr %i.cc, i64 10
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !231
  %i.dz = zext i8 %i.dy to i32
  %i.ea = shl nuw nsw i32 %i.dz, 8
  %i.eb = or disjoint i32 %i.dw, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cc, i64 11
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !231
  %i.ee = zext i8 %i.ed to i32
  %i.ef = or disjoint i32 %i.eb, %i.ee            ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ak, i64 33
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !754
  %.not203 = icmp eq i8 %i.eh, 0
  br i1 %.not203, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr @.str.431, ptr %i.c, align 8, !tbaa !2479
  call fastcc void @checkPtrmap(ptr noundef %0, i32 noundef %i.ef, i8 noundef zeroext 5, i32 noundef %1)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ei = call fastcc i32 @checkTreePage(ptr noundef %0, i32 noundef %i.ef, ptr noundef %i.b, i64 noundef %3)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.x
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !2478 ; 2 uses
  store i32 0, ptr %i.ek, align 4, !tbaa !27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.0178 = phi i32 [ -1, %bb.ab ], [ %i.ei, %bb.aa ] ; 2 uses
  %.0171 = phi i32 [ 1, %bb.ab ], [ 0, %bb.aa ]
  %.0168 = phi ptr [ %i.ek, %bb.ab ], [ null, %bb.aa ] ; 6 uses
  %.not304 = icmp eq i32 %i.cv, 0                 ; 2 uses
  br i1 %.not304, label %.critedge.thread, label %.lr.ph

.critedge.thread:                                 ; preds = %bb.ac
  %i.el = load i64, ptr %i.b, align 8, !tbaa !21
  store i64 %i.el, ptr %2, align 8, !tbaa !21
  store ptr null, ptr %i.c, align 8, !tbaa !2479
  br label %bb.az

.lr.ph:                                           ; preds = %bb.ac
  %i.em = add i32 %i.am, -4                       ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 128
  %i.eo = getelementptr inbounds nuw i8, ptr %4, i64 22 ; 3 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 1
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.es = add i32 %i.am, -5
  %i.et = getelementptr inbounds nuw i8, ptr %i.ak, i64 33 ; 2 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.lr.ph, %btreeHeapInsert.exit
  %.0165288 = phi i32 [ %i.dj, %.lr.ph ], [ %i.ii, %btreeHeapInsert.exit ] ; 3 uses
  %.0170287 = phi ptr [ %i.dn, %.lr.ph ], [ %i.fc, %btreeHeapInsert.exit ] ; 3 uses
  %.1172286 = phi i32 [ %.0171, %.lr.ph ], [ %.4, %btreeHeapInsert.exit ] ; 4 uses
  %.0174285 = phi i32 [ 1, %.lr.ph ], [ %.1175, %btreeHeapInsert.exit ] ; 6 uses
  %.1179284 = phi i32 [ %.0178, %.lr.ph ], [ %.3181, %btreeHeapInsert.exit ] ; 8 uses
  %i.eu = load i32, ptr %i.ah, align 4, !tbaa !2473
  %.not204 = icmp eq i32 %i.eu, 0
  br i1 %.not204, label %.critedge, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #58
  store i32 %.0165288, ptr %i.f, align 8, !tbaa !3001
  %i.ev = load i8, ptr %.0170287, align 1, !tbaa !231
  %i.ew = zext i8 %i.ev to i32
  %i.ex = shl nuw nsw i32 %i.ew, 8
  %i.ey = getelementptr inbounds nuw i8, ptr %.0170287, i64 1
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !231
  %i.fa = zext i8 %i.ez to i32
  %i.fb = or disjoint i32 %i.ex, %i.fa            ; 7 uses
  %i.fc = getelementptr inbounds i8, ptr %.0170287, i64 -2
  %.not210 = icmp samesign ule i32 %i.fb, %i.cm
  %i.fd = icmp ugt i32 %i.fb, %i.em
  %or.cond = select i1 %.not210, i1 true, i1 %i.fd
  br i1 %or.cond, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.432, i32 noundef %i.fb, i32 noundef %i.cn, i32 noundef %i.em)
  br label %btreeHeapInsert.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fe = zext nneg i32 %i.fb to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.fe ; 6 uses
  %i.fg = load ptr, ptr %i.en, align 8, !tbaa !1608
  call void %i.fg(ptr noundef nonnull %.val13.i.i, ptr noundef nonnull %i.ff, ptr noundef nonnull %4) #58
  %i.fh = load i16, ptr %i.eo, align 2, !tbaa !1900
  %i.fi = zext i16 %i.fh to i32
  %i.fj = add nuw nsw i32 %i.fb, %i.fi
  %i.fk = icmp ugt i32 %i.fj, %i.am
  br i1 %i.fk, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.433)
  br label %btreeHeapInsert.exit

bb.ai:                                            ; preds = %bb.ag
  %i.fl = load i8, ptr %i.ep, align 1, !tbaa !1609
  %.not211 = icmp eq i8 %i.fl, 0
  br i1 %.not211, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not212 = icmp eq i32 %.1172286, 0
  %i.fm = load i64, ptr %4, align 8, !tbaa !1897  ; 5 uses
  %i.fn = load i64, ptr %i.b, align 8, !tbaa !21  ; 2 uses
  br i1 %.not212, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fo = icmp sgt i64 %i.fm, %i.fn
  br i1 %i.fo, label %bb.am, label %bb.an

bb.al:                                            ; preds = %bb.aj
  %.not213 = icmp slt i64 %i.fm, %i.fn
  br i1 %.not213, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.434, i64 noundef %i.fm)
  %.pre = load i64, ptr %4, align 8, !tbaa !1897
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.fp = phi i64 [ %.pre, %bb.am ], [ %i.fm, %bb.al ], [ %i.fm, %bb.ak ]
  store i64 %i.fp, ptr %i.b, align 8, !tbaa !21
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.2173 = phi i32 [ 0, %bb.an ], [ %.1172286, %bb.ai ] ; 3 uses
  %i.fq = load i32, ptr %i.eq, align 8, !tbaa !1898 ; 2 uses
  %i.fr = load i16, ptr %i.er, align 4, !tbaa !1901
  %i.fs = zext i16 %i.fr to i32                   ; 2 uses
  %i.ft = icmp ugt i32 %i.fq, %i.fs
  br i1 %i.ft, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.fu = add i32 %i.es, %i.fq
  %i.fv = sub i32 %i.fu, %i.fs
  %i.fw = udiv i32 %i.fv, %i.em
  %i.fx = load i16, ptr %i.eo, align 2, !tbaa !1900
  %i.fy = zext i16 %i.fx to i64
  %i.fz = getelementptr i8, ptr %i.ff, i64 %i.fy  ; 4 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 -4
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !231
  %i.gc = zext i8 %i.gb to i32
  %i.gd = shl nuw i32 %i.gc, 24
  %i.ge = getelementptr i8, ptr %i.fz, i64 -3
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !231
  %i.gg = zext i8 %i.gf to i32
  %i.gh = shl nuw nsw i32 %i.gg, 16
  %i.gi = or disjoint i32 %i.gh, %i.gd
  %i.gj = getelementptr i8, ptr %i.fz, i64 -2
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !231
  %i.gl = zext i8 %i.gk to i32
  %i.gm = shl nuw nsw i32 %i.gl, 8
  %i.gn = or disjoint i32 %i.gi, %i.gm
  %i.go = getelementptr i8, ptr %i.fz, i64 -1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !231
  %i.gq = zext i8 %i.gp to i32
  %i.gr = or disjoint i32 %i.gn, %i.gq            ; 2 uses
  %i.gs = load i8, ptr %i.et, align 1, !tbaa !754
  %.not214 = icmp eq i8 %i.gs, 0
  br i1 %.not214, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call fastcc void @checkPtrmap(ptr noundef %0, i32 noundef %i.gr, i8 noundef zeroext 3, i32 noundef %1)
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call fastcc void @checkList(ptr noundef %0, i32 noundef 0, i32 noundef %i.gr, i32 noundef %i.fw)
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %i.gt = load i8, ptr %i.cw, align 8, !tbaa !858
  %.not215 = icmp eq i8 %i.gt, 0
  br i1 %.not215, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.gu = load i8, ptr %i.ff, align 1, !tbaa !231
  %i.gv = zext i8 %i.gu to i32
  %i.gw = shl nuw i32 %i.gv, 24
  %i.gx = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !231
  %i.gz = zext i8 %i.gy to i32
  %i.ha = shl nuw nsw i32 %i.gz, 16
  %i.hb = or disjoint i32 %i.ha, %i.gw
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ff, i64 2
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !231
  %i.he = zext i8 %i.hd to i32
  %i.hf = shl nuw nsw i32 %i.he, 8
  %i.hg = or disjoint i32 %i.hb, %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.ff, i64 3
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !231
  %i.hj = zext i8 %i.hi to i32
  %i.hk = or disjoint i32 %i.hg, %i.hj            ; 2 uses
  %i.hl = load i8, ptr %i.et, align 1, !tbaa !754
  %.not216 = icmp eq i8 %i.hl, 0
  br i1 %.not216, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  call fastcc void @checkPtrmap(ptr noundef %0, i32 noundef %i.hk, i8 noundef zeroext 5, i32 noundef %1)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.hm = load i64, ptr %i.b, align 8, !tbaa !21
  %i.hn = call fastcc i32 @checkTreePage(ptr noundef %0, i32 noundef %i.hk, ptr noundef %i.b, i64 noundef %i.hm) ; 2 uses
  %.not217 = icmp eq i32 %i.hn, %.1179284
  br i1 %.not217, label %btreeHeapInsert.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void (ptr, ptr, ...) @checkAppendMsg(ptr noundef %0, ptr noundef nonnull @.str.435)
  br label %btreeHeapInsert.exit

bb.ax:                                            ; preds = %bb.as
  %i.ho = shl nuw i32 %i.fb, 16
  %i.hp = load i16, ptr %i.eo, align 2, !tbaa !1900
  %i.hq = zext i16 %i.hp to i32
  %i.hr = add nsw i32 %i.fb, -1
  %i.hs = add nuw nsw i32 %i.hr, %i.hq
  %i.ht = or i32 %i.hs, %i.ho
  %i.hu = load i32, ptr %.0168, align 4, !tbaa !27
  %i.hv = add i32 %i.hu, 1                        ; 4 uses
  store i32 %i.hv, ptr %.0168, align 4, !tbaa !27
  %i.hw = zext i32 %i.hv to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %.0168, i64 %i.hw
  store i32 %i.ht, ptr %i.hx, align 4, !tbaa !27
  %i.hy = lshr i32 %i.hv, 1                       ; 2 uses
  %.not21.i = icmp eq i32 %i.hy, 0
  br i1 %.not21.i, label %btreeHeapInsert.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ax, %bb.ay
  %i.hz = phi i32 [ %i.ih, %bb.ay ], [ %i.hy, %bb.ax ] ; 3 uses
  %.022.i = phi i32 [ %i.hz, %bb.ay ], [ %i.hv, %bb.ax ]
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %.0168, i64 %i.ia ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !27 ; 2 uses
  %i.id = zext i32 %.022.i to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %.0168, i64 %i.id ; 2 uses
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !27 ; 2 uses
  %i.ig = icmp ugt i32 %i.ic, %i.if
  br i1 %i.ig, label %bb.ay, label %btreeHeapInsert.exit

bb.ay:                                            ; preds = %.lr.ph.i
  store i32 %i.if, ptr %i.ib, align 4, !tbaa !27
  store i32 %i.ic, ptr %i.ie, align 4, !tbaa !27
  %i.ih = lshr i32 %i.hz, 1                       ; 2 uses
  %.not.i221 = icmp eq i32 %i.ih, 0
  br i1 %.not.i221, label %btreeHeapInsert.exit, label %.lr.ph.i, !llvm.loop !3003

btreeHeapInsert.exit:                             ; preds = %bb.ay, %.lr.ph.i, %bb.ax, %bb.aw, %bb.av, %bb.ah, %bb.af
  %.3181 = phi i32 [ %.1179284, %bb.af ], [ %.1179284, %bb.ah ], [ %.1179284, %bb.av ], [ %i.hn, %bb.aw ], [ %.1179284, %bb.ax ], [ %.1179284, %.lr.ph.i ], [ %.1179284, %bb.ay ] ; 2 uses
  %.1175 = phi i32 [ 0, %bb.af ], [ 0, %bb.ah ], [ %.0174285, %bb.av ], [ %.0174285, %bb.aw ], [ %.0174285, %bb.ax ], [ %.0174285, %.lr.ph.i ], [ %.0174285, %bb.ay ] ; 2 uses
  %.4 = phi i32 [ %.1172286, %bb.af ], [ %.1172286, %bb.ah ], [ 0, %bb.av ], [ 0, %bb.aw ], [ %.2173, %bb.ax ], [ %.2173, %.lr.ph.i ], [ %.2173, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #58
  %i.ii = add nsw i32 %.0165288, -1
  %i.ij = icmp sgt i32 %.0165288, 0
  br i1 %i.ij, label %bb.ad, label %.critedge, !llvm.loop !3004

.critedge:                                        ; preds = %bb.ad, %btreeHeapInsert.exit
  %.1179.lcssa.ph = phi i32 [ %.1179284, %bb.ad ], [ %.3181, %btreeHeapInsert.exit ] ; 2 uses
  %.0174.lcssa.ph = phi i32 [ %.0174285, %bb.ad ], [ %.1175, %btreeHeapInsert.exit ]
  %i.ik = icmp eq i32 %.0174.lcssa.ph, 0
  %i.il = load i64, ptr %i.b, align 8, !tbaa !21
  store i64 %i.il, ptr %2, align 8, !tbaa !21
  store ptr null, ptr %i.c, align 8, !tbaa !2479
  br i1 %i.ik, label %bb.bi, label %bb.az

bb.az:                                            ; preds = %.critedge.thread, %.critedge
  %.1179.lcssa353 = phi i32 [ %.0178, %.critedge.thread ], [ %.1179.lcssa.ph, %.critedge ] ; 4 uses
  %i.im = load i32, ptr %i.ah, align 4, !tbaa !2473
  %i.in = icmp sgt i32 %i.im, 0
  br i1 %i.in, label %bb.ba, label %.thread.thread271

bb.ba:                                            ; preds = %bb.az
  %i.io = load i8, ptr %i.cw, align 8, !tbaa !858
  %.not206 = icmp eq i8 %i.io, 0
  br i1 %.not206, label %bb.bb, label %.loopexit279

bb.bb:                                            ; preds = %bb.ba
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !2478 ; 8 uses
  store i32 0, ptr %i.iq, align 4, !tbaa !27
  br i1 %.not304, label %.loopexit279, label %.lr.ph294

.lr.ph294:                                        ; preds = %bb.bb
  %i.ir = getelementptr inbounds nuw i8, ptr %.val13.i.i, i64 120
  %5 = or disjoint i32 %i.cr, %i.cu
  %i.is = zext nneg i32 %5 to i64
  %i.it = sext i32 %i.di to i64
  %invariant.gep = getelementptr i8, ptr %i.bx, i64 %i.it
  br label %bb.bc

bb.bc:                                            ; preds = %.lr.ph294, %btreeHeapInsert.exit226
  %indvars.iv.in = phi i64 [ %i.is, %.lr.ph294 ], [ %indvars.iv, %btreeHeapInsert.exit226 ] ; 2 uses
  %indvars.iv = add nsw i64 %indvars.iv.in, -1    ; 2 uses
  %i.iu = shl nuw nsw i64 %indvars.iv, 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.iu ; 2 uses
  %i.iv = load i8, ptr %gep, align 1, !tbaa !231
  %i.iw = zext i8 %i.iv to i32
  %i.ix = shl nuw nsw i32 %i.iw, 8
  %i.iy = getelementptr inbounds nuw i8, ptr %gep, i64 1
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !231
  %i.ja = zext i8 %i.iz to i32
  %i.jb = or disjoint i32 %i.ix, %i.ja            ; 3 uses
  %i.jc = load ptr, ptr %i.ir, align 8, !tbaa !1607
  %i.jd = zext nneg i32 %i.jb to i64
  %i.je = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.jd
  %i.jf = call zeroext i16 %i.jc(ptr noundef nonnull %.val13.i.i, ptr noundef %i.je) #58
  %i.jg = zext i16 %i.jf to i32
  %i.jh = shl nuw i32 %i.jb, 16
  %i.ji = add nsw i32 %i.jb, -1
  %i.jj = add nsw i32 %i.ji, %i.jg
  %i.jk = or i32 %i.jj, %i.jh
  %i.jl = load i32, ptr %i.iq, align 4, !tbaa !27
  %i.jm = add i32 %i.jl, 1                        ; 4 uses
  store i32 %i.jm, ptr %i.iq, align 4, !tbaa !27
  %i.jn = zext i32 %i.jm to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.jn
  store i32 %i.jk, ptr %i.jo, align 4, !tbaa !27
  %i.jp = lshr i32 %i.jm, 1                       ; 2 uses
  %.not21.i222 = icmp eq i32 %i.jp, 0
  br i1 %.not21.i222, label %btreeHeapInsert.exit226, label %.lr.ph.i223

.lr.ph.i223:                                      ; preds = %bb.bc, %bb.bd
  %i.jq = phi i32 [ %i.jy, %bb.bd ], [ %i.jp, %bb.bc ] ; 3 uses
  %.022.i224 = phi i32 [ %i.jq, %bb.bd ], [ %i.jm, %bb.bc ]
  %i.jr = zext nneg i32 %i.jq to i64
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.jr ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !27 ; 2 uses
  %i.ju = zext i32 %.022.i224 to i64
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.iq, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !27 ; 2 uses
  %i.jx = icmp ugt i32 %i.jt, %i.jw
  br i1 %i.jx, label %bb.bd, label %btreeHeapInsert.exit226

bb.bd:                                            ; preds = %.lr.ph.i223
  store i32 %i.jw, ptr %i.js, align 4, !tbaa !27
  store i32 %i.jt, ptr %i.jv, align 4, !tbaa !27
  %i.jy = lshr i32 %i.jq, 1                       ; 2 uses
  %.not.i225 = icmp eq i32 %i.jy, 0
  br i1 %.not.i225, label %btreeHeapInsert.exit226, label %.lr.ph.i223, !llvm.loop !3003

btreeHeapInsert.exit226:                          ; preds = %.lr.ph.i223, %bb.bd, %bb.bc
  %i.jz = icmp sgt i64 %indvars.iv.in, 1
  br i1 %i.jz, label %bb.bc, label %.loopexit279, !llvm.loop !3005

.loopexit279:                                     ; preds = %btreeHeapInsert.exit226, %bb.bb, %bb.ba
  %.1169 = phi ptr [ %.0168, %bb.ba ], [ %i.iq, %bb.bb ], [ %i.iq, %btreeHeapInsert.exit226 ] ; 18 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.cc, i64 1
  %i.kb = load i8, ptr %i.ka, align 1, !tbaa !231
  %i.kc = zext i8 %i.kb to i32
  %i.kd = shl nuw nsw i32 %i.kc, 8
  %i.ke = getelementptr inbounds nuw i8, ptr %i.cc, i64 2
  %i.kf = load i8, ptr %i.ke, align 1, !tbaa !231
  %i.kg = zext i8 %i.kf to i32
  %i.kh = or disjoint i32 %i.kd, %i.kg            ; 2 uses
  %.not295 = icmp eq i32 %i.kh, 0
  br i1 %.not295, label %.preheader, label %.lr.ph297

.preheader:                                       ; preds = %btreeHeapInsert.exit231, %.loopexit279
  %i.ki = load i32, ptr %.1169, align 4, !tbaa !27 ; 2 uses
  %i.kj = icmp eq i32 %i.ki, 0
  br i1 %i.kj, label %btreeHeapPull.exit.thread259, label %.lr.ph300

.lr.ph300:                                        ; preds = %.preheader
  %i.kk = getelementptr inbounds nuw i8, ptr %.1169, i64 4 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.1169, i64 8
  %i.km = getelementptr inbounds nuw i8, ptr %.1169, i64 12
  br label %bb.bf

.lr.ph297:                                        ; preds = %.loopexit279, %btreeHeapInsert.exit231
  %.2296 = phi i32 [ %i.lv, %btreeHeapInsert.exit231 ], [ %i.kh, %.loopexit279 ] ; 3 uses
  %i.kn = zext nneg i32 %.2296 to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.kn ; 4 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 2
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !231
  %i.kr = zext i8 %i.kq to i32
  %i.ks = shl nuw nsw i32 %i.kr, 8
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 3
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !231
  %i.kv = zext i8 %i.ku to i32
  %i.kw = or disjoint i32 %i.ks, %i.kv
  %i.kx = shl nuw i32 %.2296, 16
  %i.ky = add nsw i32 %.2296, -1
  %i.kz = add nuw nsw i32 %i.ky, %i.kw
  %i.la = or i32 %i.kz, %i.kx
  %i.lb = load i32, ptr %.1169, align 4, !tbaa !27
  %i.lc = add i32 %i.lb, 1                        ; 4 uses
  store i32 %i.lc, ptr %.1169, align 4, !tbaa !27
  %i.ld = zext i32 %i.lc to i64
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.ld
  store i32 %i.la, ptr %i.le, align 4, !tbaa !27
  %i.lf = lshr i32 %i.lc, 1                       ; 2 uses
  %.not21.i227 = icmp eq i32 %i.lf, 0
  br i1 %.not21.i227, label %btreeHeapInsert.exit231, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %.lr.ph297, %bb.be
  %i.lg = phi i32 [ %i.lo, %bb.be ], [ %i.lf, %.lr.ph297 ] ; 3 uses
  %.022.i229 = phi i32 [ %i.lg, %bb.be ], [ %i.lc, %.lr.ph297 ]
  %i.lh = zext nneg i32 %i.lg to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.lh ; 2 uses
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !27 ; 2 uses
  %i.lk = zext i32 %.022.i229 to i64
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.lk ; 2 uses
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !27 ; 2 uses
  %i.ln = icmp ugt i32 %i.lj, %i.lm
  br i1 %i.ln, label %bb.be, label %btreeHeapInsert.exit231

bb.be:                                            ; preds = %.lr.ph.i228
  store i32 %i.lm, ptr %i.li, align 4, !tbaa !27
  store i32 %i.lj, ptr %i.ll, align 4, !tbaa !27
  %i.lo = lshr i32 %i.lg, 1                       ; 2 uses
  %.not.i230 = icmp eq i32 %i.lo, 0
  br i1 %.not.i230, label %btreeHeapInsert.exit231, label %.lr.ph.i228, !llvm.loop !3003

btreeHeapInsert.exit231:                          ; preds = %.lr.ph.i228, %bb.be, %.lr.ph297
  %i.lp = load i8, ptr %i.ko, align 1, !tbaa !231
  %i.lq = zext i8 %i.lp to i32
  %i.lr = shl nuw nsw i32 %i.lq, 8
  %i.ls = getelementptr inbounds nuw i8, ptr %i.ko, i64 1
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !231
  %i.lu = zext i8 %i.lt to i32
  %i.lv = or disjoint i32 %i.lr, %i.lu            ; 2 uses
  %.not = icmp eq i32 %i.lv, 0
  br i1 %.not, label %.preheader, label %.lr.ph297, !llvm.loop !3006

bb.bf:                                            ; preds = %.lr.ph300, %bb.bg
  %i.lw = phi i32 [ %i.ki, %.lr.ph300 ], [ %i.nb, %bb.bg ] ; 3 uses
  %.0167299 = phi i32 [ %i.cm, %.lr.ph300 ], [ %i.lx, %bb.bg ] ; 2 uses
  %.0177298 = phi i32 [ 0, %.lr.ph300 ], [ %i.ng, %bb.bg ] ; 2 uses
  %i.lx = load i32, ptr %i.kk, align 4, !tbaa !27 ; 3 uses
  %i.ly = zext i32 %i.lw to i64
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.ly ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !27
  store i32 %i.ma, ptr %i.kk, align 4, !tbaa !27
  store i32 -1, ptr %i.lz, align 4, !tbaa !27
  %i.mb = add i32 %i.lw, -1                       ; 3 uses
  store i32 %i.mb, ptr %.1169, align 4, !tbaa !27
  %.not36.i = icmp ult i32 %i.lw, 3
  br i1 %.not36.i, label %.loopexit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bf
  %.pre.i = load i32, ptr %i.kk, align 4, !tbaa !27 ; 3 uses
  %i.mc = load i32, ptr %i.kl, align 4, !tbaa !27
  %i.md = load i32, ptr %i.km, align 4, !tbaa !27
  %i.me = icmp ugt i32 %i.mc, %i.md
  %spec.select.i366 = select i1 %i.me, i32 3, i32 2 ; 2 uses
  %i.mf = zext nneg i32 %spec.select.i366 to i64
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.mf ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !27 ; 2 uses
  %i.mi = icmp ult i32 %.pre.i, %i.mh
  br i1 %i.mi, label %.loopexit, label %.lr.ph369

.lr.ph.i232:                                      ; preds = %.lr.ph369
  %i.mj = zext i32 %i.mz to i64
  %i.mk = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.mj
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !27
  %i.mm = or disjoint i32 %i.mz, 1                ; 2 uses
  %i.mn = zext i32 %i.mm to i64
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !27
  %i.mq = icmp ugt i32 %i.ml, %i.mp
  %spec.select.i = select i1 %i.mq, i32 %i.mm, i32 %i.mz ; 2 uses
  %i.mr = zext i32 %spec.select.i to i64
  %i.ms = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.mr ; 2 uses
  %i.mt = load i32, ptr %i.ms, align 4, !tbaa !27 ; 2 uses
  %i.mu = icmp ult i32 %.pre.i, %i.mt
  br i1 %i.mu, label %.loopexit, label %.lr.ph369, !llvm.loop !3007

.lr.ph369:                                        ; preds = %.lr.ph.preheader.i, %.lr.ph.i232
  %i.mv = phi i32 [ %i.mt, %.lr.ph.i232 ], [ %i.mh, %.lr.ph.preheader.i ]
  %i.mw = phi ptr [ %i.ms, %.lr.ph.i232 ], [ %i.mg, %.lr.ph.preheader.i ]
  %spec.select.i368 = phi i32 [ %spec.select.i, %.lr.ph.i232 ], [ %spec.select.i366, %.lr.ph.preheader.i ] ; 2 uses
  %.037.i367 = phi i32 [ %spec.select.i368, %.lr.ph.i232 ], [ 1, %.lr.ph.preheader.i ]
  %i.mx = zext i32 %.037.i367 to i64
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %.1169, i64 %i.mx
  store i32 %i.mv, ptr %i.my, align 4, !tbaa !27
  store i32 %.pre.i, ptr %i.mw, align 4, !tbaa !27
  %i.mz = shl i32 %spec.select.i368, 1            ; 4 uses
  %i.na = load i32, ptr %.1169, align 4, !tbaa !27 ; 3 uses
  %.not.i233 = icmp ugt i32 %i.mz, %i.na
  br i1 %.not.i233, label %..loopexit.loopexit_crit_edge, label %.lr.ph.i232, !llvm.loop !3007

..loopexit.loopexit_crit_edge:                    ; preds = %.lr.ph369
  br label %.loopexit, !llvm.loop !3007

.loopexit:                                        ; preds = %.lr.ph.i232, %.lr.ph.preheader.i, %..loopexit.loopexit_crit_edge, %bb.bf
  %i.nb = phi i32 [ %i.mb, %bb.bf ], [ %i.mb, %.lr.ph.preheader.i ], [ %i.na, %..loopexit.loopexit_crit_edge ], [ %i.na, %.lr.ph.i232 ] ; 2 uses
  %i.nc = and i32 %.0167299, 65535                ; 2 uses
  %i.nd = lshr i32 %i.lx, 16                      ; 3 uses
  %.not208 = icmp samesign ult i32 %i.nc, %i.nd
  br i1 %.not208, label %bb.bg, label %btreeHeapPull.exit

bb.bg:                                            ; preds = %.loopexit
end_hunk_0
