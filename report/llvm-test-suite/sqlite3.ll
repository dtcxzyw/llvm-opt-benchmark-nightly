inline.NumInlined: 3252
inline.NumDeleted: 426
begin_hunk_0_@multiSelect:bb.a
  store i32 -1, ptr %i.lc, align 4, !tbaa !4
  br label %bb.cf

bb.cf:                                            ; preds = %sqlite3VdbeChangeP2.exit402.1.thread, %sqlite3VdbeChangeP2.exit402.thread, %.preheader
  %i.lx = getelementptr inbounds nuw i8, ptr %.032628, i64 56
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !1226 ; 2 uses
  %.not376 = icmp eq ptr %i.ly, null
  br i1 %.not376, label %bb.cg, label %.preheader, !llvm.loop !1666

bb.cg:                                            ; preds = %bb.cf
  br i1 %.not373, label %bb.cs, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.lz = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !1207 ; 2 uses
  %i.mb = load i32, ptr %i.be, align 8, !tbaa !1210 ; 7 uses
  %i.mc = sext i32 %i.mb to i64
  %i.md = getelementptr inbounds [8 x i8], ptr %i.jo, i64 %i.mc ; 5 uses
  %i.me = sext i32 %i.hi to i64                   ; 2 uses
  %i.mf = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.me ; 3 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %i.mf, ptr %i.mg, align 8, !tbaa !197
  %i.mh = shl nsw i64 %i.me, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.md, ptr nonnull align 8 %i.jo, i64 %i.mh, i1 false)
  %i.mi = icmp sgt i32 %i.mb, 0
  br i1 %i.mi, label %.lr.ph34.preheader, label %._crit_edge35

.lr.ph34.preheader:                               ; preds = %bb.ch
  %xtraiter91 = and i32 %i.mb, 1
  %i.mj = icmp eq i32 %i.mb, 1
  br i1 %i.mj, label %.lr.ph34.epil.preheader, label %.lr.ph34.preheader.new

.lr.ph34.preheader.new:                           ; preds = %.lr.ph34.preheader
  %unroll_iter = and i32 %i.mb, 2147483646
  br label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.cm, %.lr.ph34.preheader.new
  %.030832 = phi ptr [ %i.mf, %.lr.ph34.preheader.new ], [ %i.nl, %bb.cm ] ; 3 uses
  %.031631 = phi ptr [ %i.ma, %.lr.ph34.preheader.new ], [ %i.nj, %bb.cm ] ; 5 uses
  %.132430 = phi ptr [ %i.jo, %.lr.ph34.preheader.new ], [ %i.nk, %bb.cm ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph34.preheader.new ], [ %niter.next.1, %bb.cm ]
  %i.mk = load ptr, ptr %.031631, align 8, !tbaa !1211 ; 3 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 2
  %i.mm = load i16, ptr %i.ml, align 2, !tbaa !1343
  %i.mn = and i16 %i.mm, 256
  %.not377 = icmp eq i16 %i.mn, 0
  br i1 %.not377, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %.lr.ph34
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  br label %.lr.ph34.1

bb.cj:                                            ; preds = %.lr.ph34
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mk, i64 76
  %i.mq = load i32, ptr %i.mp, align 4, !tbaa !1368
  %i.mr = sext i32 %i.mq to i64
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.mr
  br label %.lr.ph34.1

.lr.ph34.1:                                       ; preds = %bb.cj, %bb.ci
  %storemerge.in = phi ptr [ %i.ms, %bb.cj ], [ %i.mo, %bb.ci ]
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !194
  store ptr %storemerge, ptr %.132430, align 8, !tbaa !194
  %i.mt = getelementptr inbounds nuw i8, ptr %.031631, i64 16
  %i.mu = load i8, ptr %i.mt, align 8, !tbaa !1337
  store i8 %i.mu, ptr %.030832, align 1, !tbaa !37
  %i.mv = getelementptr inbounds nuw i8, ptr %.031631, i64 24
  %i.mw = getelementptr inbounds nuw i8, ptr %.132430, i64 8
  %i.mx = getelementptr inbounds nuw i8, ptr %.030832, i64 1
  %i.my = load ptr, ptr %i.mv, align 8, !tbaa !1211 ; 3 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 2
  %i.na = load i16, ptr %i.mz, align 2, !tbaa !1343
  %i.nb = and i16 %i.na, 256
  %.not377.1 = icmp eq i16 %i.nb, 0
  br i1 %.not377.1, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph34.1
  %i.nc = getelementptr inbounds nuw i8, ptr %i.my, i64 8
  br label %bb.cm

bb.cl:                                            ; preds = %.lr.ph34.1
  %i.nd = getelementptr inbounds nuw i8, ptr %i.my, i64 76
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !1368
  %i.nf = sext i32 %i.ne to i64
  %i.ng = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.nf
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %storemerge.in.1 = phi ptr [ %i.ng, %bb.cl ], [ %i.nc, %bb.ck ]
  %storemerge.1 = load ptr, ptr %storemerge.in.1, align 8, !tbaa !194
  store ptr %storemerge.1, ptr %i.mw, align 8, !tbaa !194
  %i.nh = getelementptr inbounds nuw i8, ptr %.031631, i64 40
  %i.ni = load i8, ptr %i.nh, align 8, !tbaa !1337
  store i8 %i.ni, ptr %i.mx, align 1, !tbaa !37
  %i.nj = getelementptr inbounds nuw i8, ptr %.031631, i64 48 ; 2 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %.132430, i64 16 ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %.030832, i64 2 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge35.loopexit.unr-lcssa, label %.lr.ph34, !llvm.loop !1667

._crit_edge35.loopexit.unr-lcssa:                 ; preds = %bb.cm
  %lcmp.mod92.not = icmp eq i32 %xtraiter91, 0
  br i1 %lcmp.mod92.not, label %._crit_edge35, label %.lr.ph34.epil.preheader

.lr.ph34.epil.preheader:                          ; preds = %._crit_edge35.loopexit.unr-lcssa, %.lr.ph34.preheader
  %.030832.epil.init = phi ptr [ %i.mf, %.lr.ph34.preheader ], [ %i.nl, %._crit_edge35.loopexit.unr-lcssa ]
  %.031631.epil.init = phi ptr [ %i.ma, %.lr.ph34.preheader ], [ %i.nj, %._crit_edge35.loopexit.unr-lcssa ] ; 2 uses
  %.132430.epil.init = phi ptr [ %i.jo, %.lr.ph34.preheader ], [ %i.nk, %._crit_edge35.loopexit.unr-lcssa ]
  %lcmp.mod93 = trunc i32 %i.mb to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.nm = load ptr, ptr %.031631.epil.init, align 8, !tbaa !1211 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 2
  %i.no = load i16, ptr %i.nn, align 2, !tbaa !1343
  %i.np = and i16 %i.no, 256
  %.not377.epil = icmp eq i16 %i.np, 0
  br i1 %.not377.epil, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %.lr.ph34.epil.preheader
  %i.nq = getelementptr inbounds nuw i8, ptr %i.nm, i64 8
  br label %._crit_edge35.loopexit.epilog-lcssa

bb.co:                                            ; preds = %.lr.ph34.epil.preheader
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nm, i64 76
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !1368
  %i.nt = sext i32 %i.ns to i64
  %i.nu = getelementptr inbounds [8 x i8], ptr %i.md, i64 %i.nt
  br label %._crit_edge35.loopexit.epilog-lcssa

._crit_edge35.loopexit.epilog-lcssa:              ; preds = %bb.co, %bb.cn
  %storemerge.in.epil = phi ptr [ %i.nu, %bb.co ], [ %i.nq, %bb.cn ]
  %storemerge.epil = load ptr, ptr %storemerge.in.epil, align 8, !tbaa !194
  store ptr %storemerge.epil, ptr %.132430.epil.init, align 8, !tbaa !194
  %i.nv = getelementptr inbounds nuw i8, ptr %.031631.epil.init, i64 16
  %i.nw = load i8, ptr %i.nv, align 8, !tbaa !1337
  store i8 %i.nw, ptr %.030832.epil.init, align 1, !tbaa !37
  br label %._crit_edge35

._crit_edge35:                                    ; preds = %._crit_edge35.loopexit.epilog-lcssa, %._crit_edge35.loopexit.unr-lcssa, %bb.ch
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.ny = load i32, ptr %i.nx, align 8, !tbaa !4  ; 4 uses
  %i.nz = load ptr, ptr %i.bd, align 8, !tbaa !1225
  %i.oa = load i32, ptr %i.nz, align 8, !tbaa !1210
  %i.ob = add nsw i32 %i.oa, 2
  %i.oc = icmp sgt i32 %i.ny, -1
  br i1 %i.oc, label %bb.cp, label %.thread14

bb.cp:                                            ; preds = %._crit_edge35
  %i.od = load i32, ptr %i.jq, align 8, !tbaa !135
  %i.oe = icmp sgt i32 %i.od, %i.ny
  br i1 %i.oe, label %bb.cq, label %.thread14

bb.cq:                                            ; preds = %bb.cp
  %i.of = load ptr, ptr %i.jr, align 8, !tbaa !136 ; 2 uses
  %.not.i406 = icmp eq ptr %i.of, null
  br i1 %.not.i406, label %.thread14, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.og = zext nneg i32 %i.ny to i64
  %i.oh = getelementptr inbounds nuw [24 x i8], ptr %i.of, i64 %i.og
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 8
  store i32 %i.ob, ptr %i.oi, align 8, !tbaa !140
  br label %.thread14

.thread14:                                        ; preds = %bb.cr, %bb.cq, %bb.cp, %._crit_edge35
  store i32 %i.mb, ptr %i.jn, align 4, !tbaa !192
  tail call fastcc void @sqlite3VdbeChangeP4(ptr noundef %i.q, i32 noundef %i.ny, ptr noundef nonnull %i.je, i32 noundef -9)
  %i.oj = load ptr, ptr %1, align 8, !tbaa !1218
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !1210
  call fastcc void @generateSortTail(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.q, i32 noundef %i.ok, ptr noundef %3)
  br label %sqlite3VdbeJumpHere.exit

bb.cs:                                            ; preds = %bb.cg
  %i.ol = getelementptr inbounds i8, ptr %i.je, i64 -8 ; 2 uses
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !28
  %sext.i = shl i64 %i.om, 32
  %i.on = ashr exact i64 %sext.i, 32
  %i.oo = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.op = sub nsw i64 %i.oo, %i.on
  store i64 %i.op, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.ol) #46
  br label %sqlite3VdbeJumpHere.exit

sqlite3VdbeJumpHere.exit:                         ; preds = %bb.cs, %.thread14, %.thread9, %.thread4, %bb.p, %bb.s, %bb.bn, %bb.f, %bb.a, %bb.bm, %selectOpName.exit397, %selectOpName.exit385, %selectOpName.exit
  %.5 = phi i32 [ %.2.ph, %.thread9 ], [ 1, %selectOpName.exit ], [ 1, %selectOpName.exit385 ], [ 1, %bb.a ], [ 1, %selectOpName.exit397 ], [ 1, %bb.f ], [ %.1.ph, %.thread4 ], [ 0, %bb.bm ], [ 7, %bb.bn ], [ %i.bk, %bb.p ], [ %i.br, %bb.s ], [ 0, %.thread14 ], [ 0, %bb.cs ]
  %i.oq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !1420
  %i.os = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.or, ptr %i.os, align 4, !tbaa !1420
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret i32 %.5
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @flattenSubquery(ptr noundef captures(address_is_null) %0, ptr noundef nonnull captures(none) %1, i32 noundef range(i32 -2147483648, 32767) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1221 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = sext i32 %2 to i64                       ; 3 uses
  %i.e = getelementptr inbounds [72 x i8], ptr %i.c, i64 %i.d ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1233 ; 19 uses
  %i.h = icmp ne i32 %3, 0                        ; 4 uses
  %i.i = icmp ne i32 %4, 0                        ; 4 uses
  %or.cond = and i1 %i.h, %i.i
  br i1 %or.cond, label %bb.ba, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i16, ptr %i.b, align 8, !tbaa !1229
  %i.k = icmp sgt i16 %i.j, 1
  br i1 %i.k, label %bb.ba, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1221 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1227
  %.not = icmp eq ptr %i.o, null                  ; 3 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !1227
  %.not174 = icmp eq ptr %i.q, null
  br i1 %.not174, label %bb.f, label %bb.ba

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1228
  %.not175 = icmp eq ptr %i.s, null
  br i1 %.not175, label %bb.g, label %bb.ba

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1456
  %.not176 = icmp eq ptr %i.u, null
  %brmerge = or i1 %.not, %.not176
  br i1 %brmerge, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1225
  %.not178 = icmp eq ptr %i.w, null
  br i1 %.not178, label %bb.i, label %bb.ba

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.x = load i16, ptr %i.m, align 8, !tbaa !1229 ; 6 uses
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %bb.ba, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 9 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !1455
  %.not179 = icmp eq i8 %i.aa, 0
  %brmerge203.not = and i1 %.not, %.not179
  br i1 %brmerge203.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = load i16, ptr %i.b, align 8, !tbaa !1229
  %i.ac = icmp sgt i16 %i.ab, 1
  %or.cond4 = or i1 %i.h, %i.ac
  br i1 %or.cond4, label %bb.ba, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 3 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !1455
  %i.af = icmp ne i8 %i.ae, 0
  %or.cond6 = and i1 %i.i, %i.af
  br i1 %or.cond6, label %bb.ba, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !1660
  %.not181 = icmp eq i8 %i.ah, 0
  br i1 %.not181, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1225
  %.not182 = icmp eq ptr %i.aj, null
  br i1 %.not182, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1225
  %.not183 = icmp eq ptr %i.al, null
  br i1 %.not183, label %bb.p, label %bb.ba

bb.p:                                             ; preds = %bb.o, %bb.n
  br i1 %i.h, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !1225
  %.not184 = icmp eq ptr %i.an, null
  br i1 %.not184, label %bb.r, label %bb.ba

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ao = icmp sgt i16 %i.x, 1                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 41
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !1335 ; 2 uses
  %i.ar = and i8 %i.aq, 32
  %.not185 = icmp eq i8 %i.ar, 0                  ; 2 uses
  br i1 %i.ao, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  br i1 %.not185, label %.thread246, label %bb.ba

bb.t:                                             ; preds = %bb.r
  br i1 %.not185, label %.thread246, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1222
  %.not187 = icmp eq ptr %i.at, null
  br i1 %.not187, label %.thread246, label %bb.ba

.thread246:                                       ; preds = %bb.s, %bb.u, %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.av = load i32, ptr %i.au, align 4, !tbaa !1406 ; 6 uses
  %i.aw = sext i16 %i.x to i32                    ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1232
  tail call fastcc void @sqlite3DeleteTable(ptr noundef %i.ay)
  %i.az = load ptr, ptr %i.e, align 8, !tbaa !81  ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %sqlite3_free.exit, label %bb.v

bb.v:                                             ; preds = %.thread246
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -8 ; 2 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !28
  %sext.i = shl i64 %i.bc, 32
  %i.bd = ashr exact i64 %sext.i, 32
  %i.be = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.bf = sub nsw i64 %i.be, %i.bd
  store i64 %i.bf, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.bb) #46
  br label %sqlite3_free.exit

sqlite3_free.exit:                                ; preds = %.thread246, %bb.v
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !87 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %sqlite3_free.exit197, label %bb.w

bb.w:                                             ; preds = %sqlite3_free.exit
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 -8 ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !28
  %sext.i196 = shl i64 %i.bk, 32
  %i.bl = ashr exact i64 %sext.i196, 32
  %i.bm = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.bn = sub nsw i64 %i.bm, %i.bl
  store i64 %i.bn, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.bj) #46
  br label %sqlite3_free.exit197

sqlite3_free.exit197:                             ; preds = %sqlite3_free.exit, %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !1231 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %sqlite3_free.exit199, label %bb.x

bb.x:                                             ; preds = %sqlite3_free.exit197
  %i.br = getelementptr inbounds i8, ptr %i.bp, i64 -8 ; 2 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !28
  %sext.i198 = shl i64 %i.bs, 32
  %i.bt = ashr exact i64 %sext.i198, 32
  %i.bu = load i64, ptr @mem.5, align 8, !tbaa !22
  %i.bv = sub nsw i64 %i.bu, %i.bt
  store i64 %i.bv, ptr @mem.5, align 8, !tbaa !22
  tail call void @free(ptr noundef nonnull %i.br) #46
  br label %sqlite3_free.exit199

sqlite3_free.exit199:                             ; preds = %sqlite3_free.exit197, %bb.x
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, i8 0, i64 32, i1 false)
  br i1 %i.ao, label %.preheader, label %.loopexit

bb.y:                                             ; preds = %.preheader
  %i.bw = add nuw nsw i32 %.0159205, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, %i.aw
  br i1 %exitcond.not, label %bb.z, label %.preheader, !llvm.loop !1668

.preheader:                                       ; preds = %sqlite3_free.exit199, %bb.y
  %.0156206 = phi ptr [ %i.bx, %bb.y ], [ %i.b, %sqlite3_free.exit199 ]
  %.0159205 = phi i32 [ %i.bw, %bb.y ], [ 1, %sqlite3_free.exit199 ]
  %i.bx = tail call fastcc ptr @sqlite3SrcListAppend(ptr noundef %0, ptr noundef nonnull %.0156206, ptr noundef null, ptr noundef null) ; 7 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.thread, label %bb.y

.thread:                                          ; preds = %.preheader
  store ptr null, ptr %i.a, align 8, !tbaa !1221
  br label %bb.ba

bb.z:                                             ; preds = %bb.y
  store ptr %i.bx, ptr %i.a, align 8, !tbaa !1221
  %i.bz = load i16, ptr %i.bx, align 8, !tbaa !1229 ; 2 uses
  %i.ca = sext i16 %i.bz to i32
  %i.cb = sub nsw i32 %i.ca, %i.aw                ; 2 uses
  %.not188207 = icmp slt i32 %i.cb, %2
  br i1 %.not188207, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.z
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  %i.cd = sext i16 %i.bz to i64
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph, %bb.aa
  %indvars.iv.a = phi i64 [ %i.cd, %.lr.ph ], [ %indvars.iv.next.a, %bb.aa ]
  %5 = phi i32 [ %i.cb, %.lr.ph ], [ %8, %bb.aa ]
  %indvars.iv.next.a = add nsw i64 %indvars.iv.a, -1 ; 3 uses
  %i.ce = getelementptr inbounds [72 x i8], ptr %i.cc, i64 %indvars.iv.next.a
  %6 = sext i32 %5 to i64
  %i.cf = getelementptr inbounds [72 x i8], ptr %i.cc, i64 %6
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ce, ptr noundef nonnull align 8 dereferenceable(72) %i.cf, i64 72, i1 false), !tbaa.struct !1669
  %7 = trunc nsw i64 %indvars.iv.next.a to i32
  %8 = sub i32 %7, %i.aw                          ; 2 uses
  %.not188 = icmp slt i32 %8, %2
  br i1 %.not188, label %.loopexit, label %bb.aa, !llvm.loop !1671

.loopexit:                                        ; preds = %bb.aa, %bb.z, %sqlite3_free.exit199
  %.2158 = phi ptr [ %i.b, %sqlite3_free.exit199 ], [ %i.bx, %bb.z ], [ %i.bx, %bb.aa ] ; 2 uses
  %i.cg = icmp sgt i16 %i.x, 0
  br i1 %i.cg, label %.lr.ph210, label %.critedge

.lr.ph210:                                        ; preds = %.loopexit
  %i.ch = getelementptr inbounds nuw i8, ptr %.2158, i64 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.aw to i64   ; 2 uses
  %invariant.gep = getelementptr [72 x i8], ptr %i.ch, i64 %i.d ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.cj = icmp eq i16 %i.x, 1
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph210.new

.lr.ph210.new:                                    ; preds = %.lr.ph210
  %unroll_iter = and i64 %wide.trip.count, 32766
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph210.new
  %indvars.iv215 = phi i64 [ 0, %.lr.ph210.new ], [ %indvars.iv.next216.1, %bb.ab ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph210.new ], [ %niter.next.1, %bb.ab ]
  %gep = getelementptr [72 x i8], ptr %invariant.gep, i64 %indvars.iv215
  %i.ck = getelementptr inbounds nuw [72 x i8], ptr %i.ci, i64 %indvars.iv215 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %gep, ptr noundef nonnull align 8 dereferenceable(72) %i.ck, i64 72, i1 false), !tbaa.struct !1669
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ck, i8 0, i64 72, i1 false)
  %indvars.iv.next216 = or disjoint i64 %indvars.iv215, 1 ; 2 uses
  %gep.1 = getelementptr [72 x i8], ptr %invariant.gep, i64 %indvars.iv.next216
  %i.cl = getelementptr inbounds nuw [72 x i8], ptr %i.ci, i64 %indvars.iv.next216 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %gep.1, ptr noundef nonnull align 8 dereferenceable(72) %i.cl, i64 72, i1 false), !tbaa.struct !1669
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cl, i8 0, i64 72, i1 false)
  %indvars.iv.next216.1 = add nuw nsw i64 %indvars.iv215, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %bb.ab, !llvm.loop !1672

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph210
  %indvars.iv215.epil.init = phi i64 [ 0, %.lr.ph210 ], [ %indvars.iv.next216.1, %.critedge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod251 = trunc i16 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod251)
  %gep.epil = getelementptr [72 x i8], ptr %invariant.gep, i64 %indvars.iv215.epil.init
  %i.cm = getelementptr inbounds nuw [72 x i8], ptr %i.ci, i64 %indvars.iv215.epil.init ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %gep.epil, ptr noundef nonnull align 8 dereferenceable(72) %i.cm, i64 72, i1 false), !tbaa.struct !1669
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.cm, i8 0, i64 72, i1 false)
  br label %.critedge

.critedge:                                        ; preds = %.epil.preheader, %.critedge.loopexit.unr-lcssa, %.loopexit
  %i.cn = getelementptr [72 x i8], ptr %.2158, i64 %i.d
  %i.co = getelementptr i8, ptr %i.cn, i64 49
  store i8 %i.aq, ptr %i.co, align 1, !tbaa !1335
  %i.cp = load ptr, ptr %1, align 8, !tbaa !1218  ; 4 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !1210 ; 2 uses
  %i.cr = icmp sgt i32 %i.cq, 0
  br i1 %i.cr, label %.lr.ph212, label %._crit_edge

.lr.ph212:                                        ; preds = %.critedge
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 42
  %.pre223 = load ptr, ptr %i.cs, align 8, !tbaa !1207
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph212, %bb.ag
  %i.cu = phi i32 [ %i.cq, %.lr.ph212 ], [ %i.dn, %bb.ag ] ; 2 uses
  %i.cv = phi ptr [ %.pre223, %.lr.ph212 ], [ %i.do, %bb.ag ] ; 3 uses
  %indvars.iv219 = phi i64 [ 0, %.lr.ph212 ], [ %indvars.iv.next220, %bb.ag ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [24 x i8], ptr %i.cv, i64 %indvars.iv219 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !1214
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.da = load ptr, ptr %i.cw, align 8, !tbaa !1211 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 56
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !1200 ; 2 uses
  %.not195 = icmp eq ptr %i.dc, null
  br i1 %.not195, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 64
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = lshr i32 %i.de, 1                       ; 2 uses
  %i.dg = add nuw nsw i32 %i.df, 1
  %i.dh = tail call ptr @sqlite3_malloc(i32 noundef %i.dg) ; 4 uses
  %.not.i.i = icmp eq ptr %i.dh, null
  br i1 %.not.i.i, label %sqlite3StrNDup.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = zext nneg i32 %i.df to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dh, ptr nonnull readonly align 1 %i.dc, i64 %i.di, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.di
  store i8 0, ptr %i.dj, align 1, !tbaa !37
  br label %sqlite3DbStrNDup.exit

sqlite3StrNDup.exit.i:                            ; preds = %bb.ae
  store i8 1, ptr %i.ct, align 2, !tbaa !129
  br label %sqlite3DbStrNDup.exit

sqlite3DbStrNDup.exit:                            ; preds = %bb.af, %sqlite3StrNDup.exit.i
  %i.dk = load ptr, ptr %i.cs, align 8, !tbaa !1207 ; 2 uses
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %indvars.iv219
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dh, ptr %i.dm, align 8, !tbaa !1214
  %.pre224 = load i32, ptr %i.cp, align 8, !tbaa !1210
  br label %bb.ag

bb.ag:                                            ; preds = %sqlite3DbStrNDup.exit, %bb.ad, %bb.ac
  %i.dn = phi i32 [ %.pre224, %sqlite3DbStrNDup.exit ], [ %i.cu, %bb.ad ], [ %i.cu, %bb.ac ] ; 2 uses
  %i.do = phi ptr [ %i.dk, %sqlite3DbStrNDup.exit ], [ %i.cv, %bb.ad ], [ %i.cv, %bb.ac ]
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.dp = sext i32 %i.dn to i64
  %i.dq = icmp slt i64 %indvars.iv.next220, %i.dp
  br i1 %i.dq, label %bb.ac, label %._crit_edge.loopexit, !llvm.loop !1673

._crit_edge.loopexit:                             ; preds = %bb.ag
  %.pre225 = load ptr, ptr %1, align 8, !tbaa !1218
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.critedge
  %i.dr = phi ptr [ %.pre225, %._crit_edge.loopexit ], [ %i.cp, %.critedge ]
  %i.ds = load ptr, ptr %i.g, align 8, !tbaa !1218
  tail call fastcc void @substExprList(ptr noundef %0, ptr noundef %i.dr, i32 noundef %i.av, ptr noundef %i.ds)
  br i1 %i.h, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %._crit_edge
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !1223
  %i.dv = load ptr, ptr %i.g, align 8, !tbaa !1218
  tail call fastcc void @substExprList(ptr noundef %0, ptr noundef %i.du, i32 noundef %i.av, ptr noundef %i.dv)
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !1224
  %i.dy = load ptr, ptr %i.g, align 8, !tbaa !1218
  tail call fastcc void @substExpr(ptr noundef %0, ptr noundef %i.dx, i32 noundef %i.av, ptr noundef %i.dy)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %._crit_edge
  %i.dz = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1225 ; 2 uses
  %.not190 = icmp eq ptr %i.ea, null
  %i.eb = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  br i1 %.not190, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !1225
  store ptr null, ptr %i.dz, align 8, !tbaa !1225
  br label %bb.am

bb.ak:                                            ; preds = %bb.ai
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !1225 ; 2 uses
  %.not191 = icmp eq ptr %i.ec, null
  br i1 %.not191, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ed = load ptr, ptr %i.g, align 8, !tbaa !1218
  tail call fastcc void @substExprList(ptr noundef %0, ptr noundef nonnull %i.ec, i32 noundef %i.av, ptr noundef %i.ed)
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al, %bb.aj
  %i.ee = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !1222 ; 2 uses
  %.not192 = icmp eq ptr %i.ef, null
  br i1 %.not192, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eg = tail call fastcc ptr @sqlite3ExprDup(ptr noundef %0, ptr noundef nonnull %i.ef)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %.0163 = phi ptr [ %i.eg, %bb.an ], [ null, %bb.am ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1222 ; 3 uses
  br i1 %i.i, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  store ptr %i.ei, ptr %i.ej, align 8, !tbaa !1224
  store ptr %.0163, ptr %i.eh, align 8, !tbaa !1222
  %i.ek = load ptr, ptr %i.g, align 8, !tbaa !1218
  tail call fastcc void @substExpr(ptr noundef %0, ptr noundef %i.ei, i32 noundef %i.av, ptr noundef %i.ek)
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !1224 ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !1224
  %i.eo = tail call fastcc ptr @sqlite3ExprDup(ptr noundef %0, ptr noundef %i.en) ; 3 uses
  %i.ep = icmp eq ptr %i.el, null
  br i1 %i.ep, label %sqlite3ExprAnd.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eq = icmp eq ptr %i.eo, null
  br i1 %i.eq, label %sqlite3ExprAnd.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.er = tail call fastcc ptr @sqlite3Expr(ptr noundef %0, i32 noundef 61, ptr noundef nonnull %i.el, ptr noundef nonnull %i.eo, ptr noundef null)
  br label %sqlite3ExprAnd.exit

sqlite3ExprAnd.exit:                              ; preds = %bb.ap, %bb.aq, %bb.ar
  %.0.i = phi ptr [ %i.er, %bb.ar ], [ %i.eo, %bb.ap ], [ %i.el, %bb.aq ]
end_hunk_0
