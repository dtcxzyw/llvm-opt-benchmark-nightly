inline.NumInlined: 10
inline.NumDeleted: 9
begin_hunk_0_@compress_b44_impl:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  %i.g = tail call i32 @internal_encode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef %i.f) #5 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.thread247

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !16   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph299, label %.._crit_edge300_crit_edge

.._crit_edge300_crit_edge:                        ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre492 = load i16, ptr %.phi.trans.insert, align 8, !tbaa !17
  br label %._crit_edge300

.lr.ph299:                                        ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i16, ptr %i.n, align 8, !tbaa !17  ; 2 uses
  br label %bb.c

._crit_edge300:                                   ; preds = %._crit_edge, %.._crit_edge300_crit_edge
  %i.p = phi i16 [ %.pre492, %.._crit_edge300_crit_edge ], [ %i.ad, %._crit_edge ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not223321 = icmp sgt i16 %i.p, 0
  br i1 %.not223321, label %.lr.ph328, label %.thread249.thread

.lr.ph328:                                        ; preds = %._crit_edge300
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.u = icmp ne i32 %1, 0
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph299, %._crit_edge
  %i.v = phi i32 [ %i.j, %.lr.ph299 ], [ %i.ac, %._crit_edge ]
  %i.w = phi i16 [ %.pre, %.lr.ph299 ], [ %i.ad, %._crit_edge ] ; 2 uses
  %i.x = phi i16 [ %.pre, %.lr.ph299 ], [ %i.ae, %._crit_edge ] ; 2 uses
  %.0194297 = phi i32 [ 0, %.lr.ph299 ], [ %i.af, %._crit_edge ] ; 4 uses
  %.0201296 = phi ptr [ %i.l, %.lr.ph299 ], [ %.1202.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !20
  %i.z = add nsw i32 %i.y, %.0194297
  %i.aa = icmp sgt i16 %i.x, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !19
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre491 = load i32, ptr %i.i, align 4, !tbaa !16
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ac = phi i32 [ %i.v, %bb.c ], [ %.pre491, %._crit_edge.loopexit ] ; 2 uses
  %i.ad = phi i16 [ %i.w, %bb.c ], [ %i.be, %._crit_edge.loopexit ] ; 2 uses
  %i.ae = phi i16 [ %i.x, %bb.c ], [ %i.be, %._crit_edge.loopexit ]
  %.1202.lcssa = phi ptr [ %.0201296, %bb.c ], [ %.2203, %._crit_edge.loopexit ]
  %i.af = add nuw nsw i32 %.0194297, 1            ; 2 uses
  %i.ag = icmp slt i32 %i.af, %i.ac
  br i1 %i.ag, label %bb.c, label %._crit_edge300, !llvm.loop !21

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.ah = phi i16 [ %i.w, %.lr.ph.preheader ], [ %i.be, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.0190294 = phi ptr [ %i.ab, %.lr.ph.preheader ], [ %.1191, %bb.i ] ; 4 uses
  %.1202293 = phi ptr [ %.0201296, %.lr.ph.preheader ], [ %.2203, %bb.i ] ; 4 uses
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.ai, i64 %indvars.iv ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !24
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !27
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 25
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !28
  %i.ar = sext i8 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, %i.ao                ; 4 uses
  %i.at = sext i32 %i.an to i64
  %i.au = mul i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !29 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.az = srem i32 %i.z, %i.ax
  %.not224 = icmp eq i32 %i.az, 0
  br i1 %.not224, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %.0190294, i64 %i.au
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.bb = udiv i32 %.0194297, %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.pn225.in = phi i32 [ %i.bb, %bb.g ], [ %.0194297, %bb.d ]
  %.pn225 = zext i32 %.pn225.in to i64
  %.pn = mul i64 %i.as, %.pn225
  %.0200 = getelementptr inbounds nuw i8, ptr %.0190294, i64 %.pn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0200, ptr align 1 %.1202293, i64 %i.as, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.1202293, i64 %i.as
  %i.bd = getelementptr inbounds nuw i8, ptr %.0190294, i64 %i.au
  %.pre490 = load i16, ptr %i.n, align 8, !tbaa !17
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h, %bb.f
  %i.be = phi i16 [ %.pre490, %bb.h ], [ %i.ah, %bb.f ], [ %i.ah, %.lr.ph ] ; 4 uses
  %.2203 = phi ptr [ %i.bc, %bb.h ], [ %.1202293, %bb.f ], [ %.1202293, %.lr.ph ] ; 2 uses
  %.1191 = phi ptr [ %i.bd, %bb.h ], [ %i.ba, %bb.f ], [ %.0190294, %.lr.ph ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = sext i16 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !30

bb.j:                                             ; preds = %.lr.ph328, %.thread234
  %indvars.iv366 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next367, %.thread234 ] ; 2 uses
  %.0174326 = phi ptr [ %i.b, %.lr.ph328 ], [ %.5179241, %.thread234 ] ; 6 uses
  %.0181324 = phi i64 [ 0, %.lr.ph328 ], [ %.5186240, %.thread234 ] ; 5 uses
  %.2192322 = phi ptr [ %i.r, %.lr.ph328 ], [ %.3193239, %.thread234 ] ; 5 uses
  %i.bh = load ptr, ptr %i.s, align 8, !tbaa !23
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %indvars.iv366 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !24 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !27 ; 3 uses
  %i.bn = sext i32 %i.bk to i64                   ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 25
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !28
  %i.bq = sext i8 %i.bp to i64
  %i.br = sext i32 %i.bm to i64                   ; 4 uses
  %i.bs = mul nsw i64 %i.br, %i.bn
  %i.bt = mul i64 %i.bs, %i.bq                    ; 6 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.thread234, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 26
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !31
  %.not214 = icmp eq i16 %i.bw, 1
  br i1 %.not214, label %.preheader261, label %bb.ce

.preheader261:                                    ; preds = %bb.k
  %i.bx = icmp sgt i32 %i.bm, 0
  br i1 %i.bx, label %.lr.ph317, label %select.unfold

.lr.ph317:                                        ; preds = %.preheader261
  %.not222302 = icmp sgt i32 %i.bk, 0
  %i.by = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  br i1 %.not222302, label %.lr.ph317.split.us.preheader, label %select.unfold

.lr.ph317.split.us.preheader:                     ; preds = %.lr.ph317
  %i.bz = zext nneg i32 %i.bk to i64
  %invariant.op = add nsw i64 %i.br, -3
  %invariant.op537 = add nsw i64 %i.br, -1
  %invariant.op538 = add nsw i64 %i.br, -2
  br label %.lr.ph317.split.us

.lr.ph317.split.us:                               ; preds = %.lr.ph317.split.us.preheader, %..thread_crit_edge.us
  %indvars.iv363 = phi i64 [ 0, %.lr.ph317.split.us.preheader ], [ %indvars.iv.next364, %..thread_crit_edge.us ] ; 5 uses
  %.1175315.us = phi ptr [ %.0174326, %.lr.ph317.split.us.preheader ], [ %i.jy, %..thread_crit_edge.us ]
  %.1182314.us = phi i64 [ %.0181324, %.lr.ph317.split.us.preheader ], [ %i.jv, %..thread_crit_edge.us ]
  %i.ca = mul nuw nsw i64 %indvars.iv363, %i.bz
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %.2192322, i64 %i.ca ; 3 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.bn ; 3 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.bn ; 3 uses
  %i.ce = getelementptr inbounds nuw [2 x i8], ptr %i.cd, i64 %i.bn
  %.not215.us = icmp slt i64 %indvars.iv363, %invariant.op ; 3 uses
  %.not216.us = icmp slt i64 %indvars.iv363, %invariant.op537
  %spec.select.us = select i1 %.not216.us, ptr %i.cc, ptr %i.cb ; 2 uses
  %.not217.us = icmp slt i64 %indvars.iv363, %invariant.op538
  %.0166.us = select i1 %.not217.us, ptr %i.cd, ptr %spec.select.us ; 2 uses
  %.1170.us = select i1 %.not215.us, ptr %i.cc, ptr %spec.select.us
  %.1167.us = select i1 %.not215.us, ptr %i.cd, ptr %.0166.us
  %.0164.us = select i1 %.not215.us, ptr %i.ce, ptr %.0166.us
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph317.split.us, %bb.cd
  %.0163309.us = phi i32 [ 0, %.lr.ph317.split.us ], [ %i.jz, %bb.cd ] ; 3 uses
  %.1165308.us = phi ptr [ %.0164.us, %.lr.ph317.split.us ], [ %i.cn, %bb.cd ] ; 6 uses
  %.2168307.us = phi ptr [ %.1167.us, %.lr.ph317.split.us ], [ %i.cm, %bb.cd ] ; 6 uses
  %.2171306.us = phi ptr [ %.1170.us, %.lr.ph317.split.us ], [ %i.cl, %bb.cd ] ; 6 uses
  %.0172305.us = phi ptr [ %i.cb, %.lr.ph317.split.us ], [ %i.ck, %bb.cd ] ; 6 uses
  %.2176304.us = phi ptr [ %.1175315.us, %.lr.ph317.split.us ], [ %i.jy, %bb.cd ] ; 8 uses
  %.2183303.us = phi i64 [ %.1182314.us, %.lr.ph317.split.us ], [ %i.jv, %bb.cd ]
  %i.cf = or disjoint i32 %.0163309.us, 3
  %.not218.us = icmp slt i32 %i.cf, %i.bk
  br i1 %.not218.us, label %bb.m, label %.preheader.us

bb.m:                                             ; preds = %bb.l
  %i.cg = load i64, ptr %.0172305.us, align 2
  %i.ch = load i64, ptr %.2171306.us, align 2
  %i.ci = load i64, ptr %.2168307.us, align 2
  %i.cj = load i64, ptr %.1165308.us, align 2
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.preheader.us, %bb.m
  %.sroa.53.3 = phi i64 [ %i.cj, %bb.m ], [ %.sroa.53.30.insert.insert488, %.preheader.us ] ; 5 uses
  %.sroa.36.3 = phi i64 [ %i.ci, %bb.m ], [ %.sroa.36.22.insert.insert458, %.preheader.us ] ; 5 uses
  %.sroa.19.3 = phi i64 [ %i.ch, %bb.m ], [ %.sroa.19.14.insert.insert428, %.preheader.us ] ; 5 uses
  %.sroa.0.3 = phi i64 [ %i.cg, %bb.m ], [ %.sroa.0.6.insert.insert398, %.preheader.us ] ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.0172305.us, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.2171306.us, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.2168307.us, i64 8
  %i.cn = getelementptr inbounds nuw i8, ptr %.1165308.us, i64 8
  %i.co = load i8, ptr %i.by, align 8, !tbaa !32
  %.not219.not.us = icmp eq i8 %i.co, 0           ; 2 uses
  br i1 %.not219.not.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit.us
  %i.cp = load ptr, ptr @exrcore_expTable, align 8, !tbaa !33 ; 16 uses
  %i.cq = and i64 %.sroa.0.3, 65535
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !35
  %.sroa.0.0.insert.ext = zext i16 %i.cs to i64
  %.sroa.0.2.extract.shift = lshr i64 %.sroa.0.3, 16
  %i.ct = and i64 %.sroa.0.2.extract.shift, 65535
  %i.cu = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.ct
  %i.cv = load i16, ptr %i.cu, align 2, !tbaa !35
  %.sroa.0.2.insert.ext = zext i16 %i.cv to i64
  %.sroa.0.2.insert.shift = shl nuw nsw i64 %.sroa.0.2.insert.ext, 16
  %i.cw = or disjoint i64 %.sroa.0.2.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.3, 32
  %i.cx = and i64 %.sroa.0.4.extract.shift, 65535
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !35
  %.sroa.0.4.insert.ext = zext i16 %i.cz to i64
  %.sroa.0.4.insert.shift = shl nuw nsw i64 %.sroa.0.4.insert.ext, 32
  %i.da = or disjoint i64 %i.cw, %.sroa.0.4.insert.shift
  %.sroa.0.6.extract.shift = lshr i64 %.sroa.0.3, 48
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.sroa.0.6.extract.shift
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !35
  %.sroa.0.6.insert.ext = zext i16 %i.dc to i64
  %.sroa.0.6.insert.shift = shl nuw i64 %.sroa.0.6.insert.ext, 48
  %.sroa.0.6.insert.insert = or disjoint i64 %i.da, %.sroa.0.6.insert.shift
  %i.dd = and i64 %.sroa.19.3, 65535
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.dd
  %i.df = load i16, ptr %i.de, align 2, !tbaa !35
  %.sroa.19.8.insert.ext = zext i16 %i.df to i64
  %.sroa.19.10.extract.shift = lshr i64 %.sroa.19.3, 16
  %i.dg = and i64 %.sroa.19.10.extract.shift, 65535
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.dg
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !35
  %.sroa.19.10.insert.ext = zext i16 %i.di to i64
  %.sroa.19.10.insert.shift = shl nuw nsw i64 %.sroa.19.10.insert.ext, 16
  %i.dj = or disjoint i64 %.sroa.19.10.insert.shift, %.sroa.19.8.insert.ext
  %.sroa.19.12.extract.shift = lshr i64 %.sroa.19.3, 32
  %i.dk = and i64 %.sroa.19.12.extract.shift, 65535
  %i.dl = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.dk
  %i.dm = load i16, ptr %i.dl, align 2, !tbaa !35
  %.sroa.19.12.insert.ext = zext i16 %i.dm to i64
  %.sroa.19.12.insert.shift = shl nuw nsw i64 %.sroa.19.12.insert.ext, 32
  %i.dn = or disjoint i64 %i.dj, %.sroa.19.12.insert.shift
  %.sroa.19.14.extract.shift = lshr i64 %.sroa.19.3, 48
  %i.do = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.sroa.19.14.extract.shift
  %i.dp = load i16, ptr %i.do, align 2, !tbaa !35
  %.sroa.19.14.insert.ext = zext i16 %i.dp to i64
  %.sroa.19.14.insert.shift = shl nuw i64 %.sroa.19.14.insert.ext, 48
  %.sroa.19.14.insert.insert = or disjoint i64 %i.dn, %.sroa.19.14.insert.shift
  %i.dq = and i64 %.sroa.36.3, 65535
  %i.dr = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.dq
  %i.ds = load i16, ptr %i.dr, align 2, !tbaa !35
  %.sroa.36.16.insert.ext = zext i16 %i.ds to i64
  %.sroa.36.18.extract.shift = lshr i64 %.sroa.36.3, 16
  %i.dt = and i64 %.sroa.36.18.extract.shift, 65535
  %i.du = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.dt
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !35
  %.sroa.36.18.insert.ext = zext i16 %i.dv to i64
  %.sroa.36.18.insert.shift = shl nuw nsw i64 %.sroa.36.18.insert.ext, 16
  %i.dw = or disjoint i64 %.sroa.36.18.insert.shift, %.sroa.36.16.insert.ext
  %.sroa.36.20.extract.shift = lshr i64 %.sroa.36.3, 32
  %i.dx = and i64 %.sroa.36.20.extract.shift, 65535
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.dx
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !35
  %.sroa.36.20.insert.ext = zext i16 %i.dz to i64
  %.sroa.36.20.insert.shift = shl nuw nsw i64 %.sroa.36.20.insert.ext, 32
  %i.ea = or disjoint i64 %i.dw, %.sroa.36.20.insert.shift
  %.sroa.36.22.extract.shift = lshr i64 %.sroa.36.3, 48
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.sroa.36.22.extract.shift
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !35
  %.sroa.36.22.insert.ext = zext i16 %i.ec to i64
  %.sroa.36.22.insert.shift = shl nuw i64 %.sroa.36.22.insert.ext, 48
  %.sroa.36.22.insert.insert = or disjoint i64 %i.ea, %.sroa.36.22.insert.shift
  %i.ed = and i64 %.sroa.53.3, 65535
  %i.ee = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.ed
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !35
  %.sroa.53.24.insert.ext = zext i16 %i.ef to i64
  %.sroa.53.26.extract.shift = lshr i64 %.sroa.53.3, 16
  %i.eg = and i64 %.sroa.53.26.extract.shift, 65535
  %i.eh = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.eg
  %i.ei = load i16, ptr %i.eh, align 2, !tbaa !35
  %.sroa.53.26.insert.ext = zext i16 %i.ei to i64
  %.sroa.53.26.insert.shift = shl nuw nsw i64 %.sroa.53.26.insert.ext, 16
  %i.ej = or disjoint i64 %.sroa.53.26.insert.shift, %.sroa.53.24.insert.ext
  %.sroa.53.28.extract.shift = lshr i64 %.sroa.53.3, 32
  %i.ek = and i64 %.sroa.53.28.extract.shift, 65535
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %i.ek
  %i.em = load i16, ptr %i.el, align 2, !tbaa !35
  %.sroa.53.28.insert.ext = zext i16 %i.em to i64
  %.sroa.53.28.insert.shift = shl nuw nsw i64 %.sroa.53.28.insert.ext, 32
  %i.en = or disjoint i64 %i.ej, %.sroa.53.28.insert.shift
  %.sroa.53.30.extract.shift = lshr i64 %.sroa.53.3, 48
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.cp, i64 %.sroa.53.30.extract.shift
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !35
  %.sroa.53.30.insert.ext = zext i16 %i.ep to i64
  %.sroa.53.30.insert.shift = shl nuw i64 %.sroa.53.30.insert.ext, 48
  %.sroa.53.30.insert.insert = or disjoint i64 %i.en, %.sroa.53.30.insert.shift
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit.us
  %.sroa.53.4 = phi i64 [ %.sroa.53.3, %.loopexit.us ], [ %.sroa.53.30.insert.insert, %bb.n ] ; 5 uses
  %.sroa.36.4 = phi i64 [ %.sroa.36.3, %.loopexit.us ], [ %.sroa.36.22.insert.insert, %bb.n ] ; 5 uses
  %.sroa.19.4 = phi i64 [ %.sroa.19.3, %.loopexit.us ], [ %.sroa.19.14.insert.insert, %bb.n ] ; 5 uses
  %.sroa.0.4 = phi i64 [ %.sroa.0.3, %.loopexit.us ], [ %.sroa.0.6.insert.insert, %bb.n ] ; 5 uses
  %.sroa.0.0.extract.trunc370 = trunc i64 %.sroa.0.4 to i16 ; 4 uses
  %i.eq = and i16 %.sroa.0.0.extract.trunc370, 31744
  %i.er = icmp eq i16 %i.eq, 31744
  br i1 %i.er, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not74.i.us = icmp sgt i16 %.sroa.0.0.extract.trunc370, -1
  br i1 %.not74.i.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.es = xor i16 %.sroa.0.0.extract.trunc370, -1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.et = or disjoint i16 %.sroa.0.0.extract.trunc370, -32768
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %.sroa.0.0.i.us = phi i16 [ %i.es, %bb.q ], [ %i.et, %bb.r ], [ -32768, %bb.o ] ; 4 uses
  %.sroa.0.2.extract.shift376 = lshr i64 %.sroa.0.4, 16
  %.sroa.0.2.extract.trunc377 = trunc i64 %.sroa.0.2.extract.shift376 to i16 ; 4 uses
  %i.eu = and i16 %.sroa.0.2.extract.trunc377, 31744
  %i.ev = icmp eq i16 %i.eu, 31744
  br i1 %i.ev, label %bb.w, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not74.1.i.us = icmp sgt i16 %.sroa.0.2.extract.trunc377, -1
  br i1 %.not74.1.i.us, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ew = xor i16 %.sroa.0.2.extract.trunc377, -1
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.ex = or disjoint i16 %.sroa.0.2.extract.trunc377, -32768
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s
  %.sroa.10.0.i.us = phi i16 [ %i.ew, %bb.u ], [ %i.ex, %bb.v ], [ -32768, %bb.s ] ; 2 uses
  %.sroa.0.4.extract.shift384 = lshr i64 %.sroa.0.4, 32
  %.sroa.0.4.extract.trunc385 = trunc i64 %.sroa.0.4.extract.shift384 to i16 ; 4 uses
  %i.ey = and i16 %.sroa.0.4.extract.trunc385, 31744
  %i.ez = icmp eq i16 %i.ey, 31744
  br i1 %i.ez, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not74.2.i.us = icmp sgt i16 %.sroa.0.4.extract.trunc385, -1
  br i1 %.not74.2.i.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fa = xor i16 %.sroa.0.4.extract.trunc385, -1
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.fb = or disjoint i16 %.sroa.0.4.extract.trunc385, -32768
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w
  %.sroa.15.0.i.us = phi i16 [ %i.fa, %bb.y ], [ %i.fb, %bb.z ], [ -32768, %bb.w ] ; 2 uses
  %.sroa.0.6.extract.shift392 = lshr i64 %.sroa.0.4, 48
  %.sroa.0.6.extract.trunc393 = trunc nuw i64 %.sroa.0.6.extract.shift392 to i16 ; 3 uses
  %i.fc = and i16 %.sroa.0.6.extract.trunc393, 31744
  %i.fd = icmp eq i16 %i.fc, 31744
  br i1 %i.fd, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not74.3.i.us = icmp sgt i64 %.sroa.0.4, -1
  br i1 %.not74.3.i.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fe = xor i16 %.sroa.0.6.extract.trunc393, -1
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.ff = or disjoint i16 %.sroa.0.6.extract.trunc393, -32768
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa
  %.sroa.20.0.i.us = phi i16 [ %i.fe, %bb.ac ], [ %i.ff, %bb.ad ], [ -32768, %bb.aa ] ; 2 uses
  %.sroa.19.8.extract.trunc400 = trunc i64 %.sroa.19.4 to i16 ; 4 uses
  %i.fg = and i16 %.sroa.19.8.extract.trunc400, 31744
  %i.fh = icmp eq i16 %i.fg, 31744
  br i1 %i.fh, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not74.4.i.us = icmp sgt i16 %.sroa.19.8.extract.trunc400, -1
  br i1 %.not74.4.i.us, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fi = xor i16 %.sroa.19.8.extract.trunc400, -1
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.fj = or disjoint i16 %.sroa.19.8.extract.trunc400, -32768
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  %.sroa.25.0.i.us = phi i16 [ %i.fi, %bb.ag ], [ %i.fj, %bb.ah ], [ -32768, %bb.ae ] ; 2 uses
  %.sroa.19.10.extract.shift406 = lshr i64 %.sroa.19.4, 16
  %.sroa.19.10.extract.trunc407 = trunc i64 %.sroa.19.10.extract.shift406 to i16 ; 4 uses
  %i.fk = and i16 %.sroa.19.10.extract.trunc407, 31744
  %i.fl = icmp eq i16 %i.fk, 31744
  br i1 %i.fl, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not74.5.i.us = icmp sgt i16 %.sroa.19.10.extract.trunc407, -1
  br i1 %.not74.5.i.us, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.fm = xor i16 %.sroa.19.10.extract.trunc407, -1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.fn = or disjoint i16 %.sroa.19.10.extract.trunc407, -32768
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ai
  %.sroa.30.0.i.us = phi i16 [ %i.fm, %bb.ak ], [ %i.fn, %bb.al ], [ -32768, %bb.ai ] ; 2 uses
  %.sroa.19.12.extract.shift414 = lshr i64 %.sroa.19.4, 32
  %.sroa.19.12.extract.trunc415 = trunc i64 %.sroa.19.12.extract.shift414 to i16 ; 4 uses
  %i.fo = and i16 %.sroa.19.12.extract.trunc415, 31744
  %i.fp = icmp eq i16 %i.fo, 31744
  br i1 %i.fp, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %.not74.6.i.us = icmp sgt i16 %.sroa.19.12.extract.trunc415, -1
  br i1 %.not74.6.i.us, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fq = xor i16 %.sroa.19.12.extract.trunc415, -1
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  %i.fr = or disjoint i16 %.sroa.19.12.extract.trunc415, -32768
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao, %bb.am
  %.sroa.35.0.i.us = phi i16 [ %i.fq, %bb.ao ], [ %i.fr, %bb.ap ], [ -32768, %bb.am ] ; 2 uses
  %.sroa.19.14.extract.shift422 = lshr i64 %.sroa.19.4, 48
  %.sroa.19.14.extract.trunc423 = trunc nuw i64 %.sroa.19.14.extract.shift422 to i16 ; 3 uses
  %i.fs = and i16 %.sroa.19.14.extract.trunc423, 31744
  %i.ft = icmp eq i16 %i.fs, 31744
  br i1 %i.ft, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not74.7.i.us = icmp sgt i64 %.sroa.19.4, -1
  br i1 %.not74.7.i.us, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fu = xor i16 %.sroa.19.14.extract.trunc423, -1
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.fv = or disjoint i16 %.sroa.19.14.extract.trunc423, -32768
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as, %bb.aq
  %.sroa.40.0.i.us = phi i16 [ %i.fu, %bb.as ], [ %i.fv, %bb.at ], [ -32768, %bb.aq ] ; 2 uses
  %.sroa.36.16.extract.trunc430 = trunc i64 %.sroa.36.4 to i16 ; 4 uses
  %i.fw = and i16 %.sroa.36.16.extract.trunc430, 31744
  %i.fx = icmp eq i16 %i.fw, 31744
  br i1 %i.fx, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %.not74.8.i.us = icmp sgt i16 %.sroa.36.16.extract.trunc430, -1
  br i1 %.not74.8.i.us, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fy = xor i16 %.sroa.36.16.extract.trunc430, -1
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.fz = or disjoint i16 %.sroa.36.16.extract.trunc430, -32768
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw, %bb.au
  %.sroa.45.0.i.us = phi i16 [ %i.fy, %bb.aw ], [ %i.fz, %bb.ax ], [ -32768, %bb.au ] ; 2 uses
  %.sroa.36.18.extract.shift436 = lshr i64 %.sroa.36.4, 16
  %.sroa.36.18.extract.trunc437 = trunc i64 %.sroa.36.18.extract.shift436 to i16 ; 4 uses
  %i.ga = and i16 %.sroa.36.18.extract.trunc437, 31744
  %i.gb = icmp eq i16 %i.ga, 31744
  br i1 %i.gb, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %.not74.9.i.us = icmp sgt i16 %.sroa.36.18.extract.trunc437, -1
  br i1 %.not74.9.i.us, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gc = xor i16 %.sroa.36.18.extract.trunc437, -1
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.gd = or disjoint i16 %.sroa.36.18.extract.trunc437, -32768
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba, %bb.ay
  %.sroa.50.0.i.us = phi i16 [ %i.gc, %bb.ba ], [ %i.gd, %bb.bb ], [ -32768, %bb.ay ] ; 2 uses
  %.sroa.36.20.extract.shift444 = lshr i64 %.sroa.36.4, 32
  %.sroa.36.20.extract.trunc445 = trunc i64 %.sroa.36.20.extract.shift444 to i16 ; 4 uses
  %i.ge = and i16 %.sroa.36.20.extract.trunc445, 31744
  %i.gf = icmp eq i16 %i.ge, 31744
  br i1 %i.gf, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %.not74.10.i.us = icmp sgt i16 %.sroa.36.20.extract.trunc445, -1
  br i1 %.not74.10.i.us, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gg = xor i16 %.sroa.36.20.extract.trunc445, -1
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %i.gh = or disjoint i16 %.sroa.36.20.extract.trunc445, -32768
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bc
  %.sroa.55.0.i.us = phi i16 [ %i.gg, %bb.be ], [ %i.gh, %bb.bf ], [ -32768, %bb.bc ] ; 2 uses
  %.sroa.36.22.extract.shift452 = lshr i64 %.sroa.36.4, 48
  %.sroa.36.22.extract.trunc453 = trunc nuw i64 %.sroa.36.22.extract.shift452 to i16 ; 3 uses
  %i.gi = and i16 %.sroa.36.22.extract.trunc453, 31744
  %i.gj = icmp eq i16 %i.gi, 31744
  br i1 %i.gj, label %bb.bk, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %.not74.11.i.us = icmp sgt i64 %.sroa.36.4, -1
  br i1 %.not74.11.i.us, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gk = xor i16 %.sroa.36.22.extract.trunc453, -1
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.gl = or disjoint i16 %.sroa.36.22.extract.trunc453, -32768
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi, %bb.bg
  %.sroa.60.0.i.us = phi i16 [ %i.gk, %bb.bi ], [ %i.gl, %bb.bj ], [ -32768, %bb.bg ] ; 2 uses
  %.sroa.53.24.extract.trunc460 = trunc i64 %.sroa.53.4 to i16 ; 4 uses
  %i.gm = and i16 %.sroa.53.24.extract.trunc460, 31744
  %i.gn = icmp eq i16 %i.gm, 31744
  br i1 %i.gn, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not74.12.i.us = icmp sgt i16 %.sroa.53.24.extract.trunc460, -1
  br i1 %.not74.12.i.us, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.go = xor i16 %.sroa.53.24.extract.trunc460, -1
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.gp = or disjoint i16 %.sroa.53.24.extract.trunc460, -32768
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %bb.bk
  %.sroa.65.0.i.us = phi i16 [ %i.go, %bb.bm ], [ %i.gp, %bb.bn ], [ -32768, %bb.bk ] ; 2 uses
  %.sroa.53.26.extract.shift466 = lshr i64 %.sroa.53.4, 16
  %.sroa.53.26.extract.trunc467 = trunc i64 %.sroa.53.26.extract.shift466 to i16 ; 4 uses
  %i.gq = and i16 %.sroa.53.26.extract.trunc467, 31744
  %i.gr = icmp eq i16 %i.gq, 31744
  br i1 %i.gr, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not74.13.i.us = icmp sgt i16 %.sroa.53.26.extract.trunc467, -1
  br i1 %.not74.13.i.us, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gs = xor i16 %.sroa.53.26.extract.trunc467, -1
  br label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.gt = or disjoint i16 %.sroa.53.26.extract.trunc467, -32768
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq, %bb.bo
  %.sroa.70.0.i.us = phi i16 [ %i.gs, %bb.bq ], [ %i.gt, %bb.br ], [ -32768, %bb.bo ] ; 2 uses
  %.sroa.53.28.extract.shift474 = lshr i64 %.sroa.53.4, 32
  %.sroa.53.28.extract.trunc475 = trunc i64 %.sroa.53.28.extract.shift474 to i16 ; 4 uses
  %i.gu = and i16 %.sroa.53.28.extract.trunc475, 31744
  %i.gv = icmp eq i16 %i.gu, 31744
  br i1 %i.gv, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.not74.14.i.us = icmp sgt i16 %.sroa.53.28.extract.trunc475, -1
  br i1 %.not74.14.i.us, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gw = xor i16 %.sroa.53.28.extract.trunc475, -1
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bt
  %i.gx = or disjoint i16 %.sroa.53.28.extract.trunc475, -32768
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.bu, %bb.bs
  %.sroa.75.0.i.us = phi i16 [ %i.gw, %bb.bu ], [ %i.gx, %bb.bv ], [ -32768, %bb.bs ] ; 2 uses
  %.sroa.53.30.extract.shift482 = lshr i64 %.sroa.53.4, 48
  %.sroa.53.30.extract.trunc483 = trunc nuw i64 %.sroa.53.30.extract.shift482 to i16 ; 3 uses
  %i.gy = and i16 %.sroa.53.30.extract.trunc483, 31744
  %i.gz = icmp eq i16 %i.gy, 31744
  br i1 %i.gz, label %.preheader76.preheader.i.us, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.not74.15.i.us = icmp sgt i64 %.sroa.53.4, -1
  br i1 %.not74.15.i.us, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ha = xor i16 %.sroa.53.30.extract.trunc483, -1
  br label %.preheader76.preheader.i.us

bb.bz:                                            ; preds = %bb.bx
  %i.hb = or disjoint i16 %.sroa.53.30.extract.trunc483, -32768
  br label %.preheader76.preheader.i.us

.preheader76.preheader.i.us:                      ; preds = %bb.bz, %bb.by, %bb.bw
  %.sroa.80.0.i.us = phi i16 [ %i.ha, %bb.by ], [ %i.hb, %bb.bz ], [ -32768, %bb.bw ] ; 2 uses
  %spec.select.1.i.us = tail call i16 @llvm.umax.i16(i16 %.sroa.0.0.i.us, i16 %.sroa.10.0.i.us)
  %spec.select.2.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.1.i.us, i16 %.sroa.15.0.i.us)
  %spec.select.3.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.2.i.us, i16 %.sroa.20.0.i.us)
  %spec.select.4.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.3.i.us, i16 %.sroa.25.0.i.us)
  %spec.select.5.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.4.i.us, i16 %.sroa.30.0.i.us)
  %spec.select.6.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.5.i.us, i16 %.sroa.35.0.i.us)
  %spec.select.7.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.6.i.us, i16 %.sroa.40.0.i.us)
  %spec.select.8.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.7.i.us, i16 %.sroa.45.0.i.us)
  %spec.select.9.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.8.i.us, i16 %.sroa.50.0.i.us)
  %spec.select.10.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.9.i.us, i16 %.sroa.55.0.i.us)
  %spec.select.11.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.10.i.us, i16 %.sroa.60.0.i.us)
  %spec.select.12.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.11.i.us, i16 %.sroa.65.0.i.us)
  %spec.select.13.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.12.i.us, i16 %.sroa.70.0.i.us)
  %spec.select.14.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.13.i.us, i16 %.sroa.75.0.i.us)
  %spec.select.15.i.us = tail call i16 @llvm.umax.i16(i16 %spec.select.14.i.us, i16 %.sroa.80.0.i.us) ; 2 uses
  %i.hc = zext i16 %spec.select.15.i.us to i32    ; 6 uses
  %2 = zext i16 %.sroa.0.0.i.us to i32
  %3 = zext i16 %.sroa.10.0.i.us to i32
  %4 = zext i16 %.sroa.15.0.i.us to i32
  %5 = sub nsw i32 %i.hc, %2
  %6 = shl nsw i32 %5, 1                          ; 2 uses
  %7 = sub nsw i32 %i.hc, %4
  %8 = sub nsw i32 %i.hc, %3
  %9 = shl nsw i32 %8, 1                          ; 2 uses
  %i.hd = shl nsw i32 %7, 1                       ; 2 uses
  %i.he = zext i16 %.sroa.20.0.i.us to i32
  %i.hf = sub nsw i32 %i.hc, %i.he
  %i.hg = shl nsw i32 %i.hf, 1                    ; 2 uses
  %10 = insertelement <8 x i16> poison, i16 %.sroa.25.0.i.us, i64 0
  %11 = insertelement <8 x i16> %10, i16 %.sroa.45.0.i.us, i64 1
  %12 = insertelement <8 x i16> %11, i16 %.sroa.65.0.i.us, i64 2
  %13 = insertelement <8 x i16> %12, i16 %.sroa.30.0.i.us, i64 3
  %14 = insertelement <8 x i16> %13, i16 %.sroa.50.0.i.us, i64 4
  %15 = insertelement <8 x i16> %14, i16 %.sroa.70.0.i.us, i64 5
  %16 = insertelement <8 x i16> %15, i16 %.sroa.35.0.i.us, i64 6
  %17 = insertelement <8 x i16> %16, i16 %.sroa.55.0.i.us, i64 7 ; 2 uses
  %18 = zext <8 x i16> %17 to <8 x i32>
  %19 = insertelement <8 x i16> %17, i16 %.sroa.75.0.i.us, i64 0
  %20 = insertelement <8 x i16> %19, i16 %.sroa.40.0.i.us, i64 1
  %21 = insertelement <8 x i16> %20, i16 %.sroa.60.0.i.us, i64 2
  %22 = zext <8 x i16> %21 to <8 x i32>
  %i.hh = insertelement <8 x i32> poison, i32 %i.hc, i64 0
  %i.hi = shufflevector <8 x i32> %i.hh, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.hj = sub nsw <8 x i32> %i.hi, %18
  %23 = sub nsw <8 x i32> %i.hi, %22
  %24 = shl nsw <8 x i32> %i.hj, splat (i32 1)    ; 3 uses
  %25 = shl nsw <8 x i32> %23, splat (i32 1)      ; 2 uses
  %26 = shufflevector <8 x i32> %25, <8 x i32> poison, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2>
  %i.hk = zext i16 %.sroa.80.0.i.us to i32
  %i.hl = sub nsw i32 %i.hc, %i.hk
  %i.hm = shl nsw i32 %i.hl, 1                    ; 2 uses
  %27 = shufflevector <8 x i32> %24, <8 x i32> %25, <8 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10>
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.preheader76.preheader.i.us
  %.066.i.us = phi i32 [ %i.hn, %bb.ca ], [ -1, %.preheader76.preheader.i.us ] ; 2 uses
  %i.hn = add nsw i32 %.066.i.us, 1               ; 4 uses
  %notmask.i.i.us = shl nsw i32 -1, %i.hn
  %i.ho = xor i32 %notmask.i.i.us, -1             ; 6 uses
  %i.hp = add nsw i32 %.066.i.us, 2               ; 11 uses
  %i.hq = lshr i32 %i.hg, %i.hp
  %i.hr = and i32 %i.hq, 1
  %i.hs = add nsw i32 %i.hg, %i.ho
  %i.ht = add nsw i32 %i.hs, %i.hr
  %i.hu = ashr i32 %i.ht, %i.hp
  %i.hv = lshr i32 %i.hm, %i.hp
  %i.hw = and i32 %i.hv, 1
  %i.hx = add nsw i32 %i.hm, %i.ho
  %i.hy = add nsw i32 %i.hx, %i.hw
  %i.hz = ashr i32 %i.hy, %i.hp
  %28 = insertelement <8 x i32> poison, i32 %i.hp, i64 0
  %29 = shufflevector <8 x i32> %28, <8 x i32> poison, <8 x i32> zeroinitializer ; 4 uses
  %30 = lshr <8 x i32> %24, %29
  %31 = lshr <8 x i32> %27, %29
  %32 = and <8 x i32> %30, splat (i32 1)
  %33 = insertelement <8 x i32> poison, i32 %i.ho, i64 0
  %34 = shufflevector <8 x i32> %33, <8 x i32> poison, <8 x i32> zeroinitializer ; 2 uses
  %35 = add nsw <8 x i32> %24, %34
  %36 = and <8 x i32> %31, splat (i32 1)
  %37 = add nsw <8 x i32> %26, %34
  %38 = add nsw <8 x i32> %35, %32
  %39 = add nsw <8 x i32> %37, %36
  %40 = ashr <8 x i32> %38, %29                   ; 3 uses
  %41 = ashr <8 x i32> %39, %29                   ; 2 uses
  %42 = lshr i32 %6, %i.hp
  %43 = lshr i32 %i.hd, %i.hp
  %44 = lshr i32 %9, %i.hp
  %45 = and i32 %42, 1
  %46 = and i32 %43, 1
  %47 = and i32 %44, 1
  %48 = add nsw i32 %6, %i.ho
  %49 = add nsw i32 %i.hd, %i.ho
  %50 = add nsw i32 %9, %i.ho
  %51 = add nsw i32 %48, %45
  %52 = add nsw i32 %49, %46
  %53 = add nsw i32 %50, %47
  %54 = ashr i32 %51, %i.hp                       ; 2 uses
  %55 = ashr i32 %52, %i.hp                       ; 2 uses
  %56 = ashr i32 %53, %i.hp                       ; 2 uses
  %57 = sub nsw i32 %55, %i.hu
  %58 = add nsw i32 %57, 32                       ; 3 uses
  %59 = sub nsw i32 %56, %55
  %60 = add nsw i32 %59, 32                       ; 2 uses
  %61 = shufflevector <8 x i32> %40, <8 x i32> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %62 = insertelement <4 x i32> poison, i32 %54, i64 0
  %63 = shufflevector <4 x i32> %62, <4 x i32> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %64 = shufflevector <4 x i32> %63, <4 x i32> %61, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ia = insertelement <8 x i32> poison, i32 %56, i64 3
  %65 = shufflevector <8 x i32> %40, <8 x i32> %i.ia, <4 x i32> <i32 0, i32 1, i32 2, i32 11>
  %66 = sub nsw <4 x i32> %64, %65                ; 3 uses
  %67 = add nsw <4 x i32> %66, splat (i32 32)     ; 5 uses
  %68 = sub nsw <8 x i32> %40, %41                ; 3 uses
  %69 = add nsw <8 x i32> %68, splat (i32 32)     ; 3 uses
  %i.ib = extractelement <8 x i32> %41, i64 5
  %i.ic = sub nsw i32 %i.ib, %i.hz
  %i.id = add nsw i32 %i.ic, 32                   ; 3 uses
  %i.ie = extractelement <8 x i32> %69, i64 0     ; 2 uses
  %70 = shufflevector <4 x i32> %67, <4 x i32> poison, <5 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison>
  %71 = insertelement <5 x i32> %70, i32 %60, i64 4
  %72 = shufflevector <8 x i32> %69, <8 x i32> poison, <12 x i32> <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %73 = shufflevector <5 x i32> %71, <5 x i32> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %74 = shufflevector <12 x i32> %72, <12 x i32> %73, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 12, i32 13, i32 14, i32 15, i32 16> ; 2 uses
  %i.if = tail call i32 @llvm.vector.reduce.smin.v12i32(<12 x i32> %74)
  %i.ig = tail call i32 @llvm.smin.i32(i32 %i.if, i32 %i.ie)
  %i.ih = tail call i32 @llvm.smin.i32(i32 %58, i32 %i.id)
  %i.ii = tail call i32 @llvm.smin.i32(i32 %i.ig, i32 %i.ih) ; 2 uses
  %i.ij = tail call i32 @llvm.vector.reduce.smax.v12i32(<12 x i32> %74)
  %i.ik = tail call i32 @llvm.smax.i32(i32 %i.ij, i32 %i.ie)
  %i.il = tail call i32 @llvm.smax.i32(i32 %58, i32 %i.id)
  %i.im = tail call i32 @llvm.smax.i32(i32 %i.ik, i32 %i.il) ; 2 uses
  %i.in = icmp slt i32 %i.ii, 0
  %i.io = icmp sgt i32 %i.im, 63
  %i.ip = select i1 %i.in, i1 true, i1 %i.io
  br i1 %i.ip, label %bb.ca, label %bb.cb, !llvm.loop !36

bb.cb:                                            ; preds = %bb.ca
  %i.iq = icmp eq i32 %i.ii, 32
  %i.ir = icmp eq i32 %i.im, 32
  %or.cond.i.us = select i1 %i.iq, i1 %i.ir, i1 false
  %or.cond3.i.us = and i1 %i.u, %or.cond.i.us
  br i1 %or.cond3.i.us, label %pack.exit.us, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.is = shl i32 %54, %i.hn
  %i.it = trunc i32 %i.is to i16
  %i.iu = sub i16 %spec.select.15.i.us, %i.it
  %.sroa.0.1.i.us = select i1 %.not219.not.us, i16 %i.iu, i16 %.sroa.0.0.i.us
  %i.iv = shl i32 %i.hn, 2
  %i.iw = extractelement <4 x i32> %67, i64 0
  %i.ix = lshr i32 %i.iw, 4
  %i.iy = or i32 %i.ix, %i.iv
  %i.iz = trunc i32 %i.iy to i8
  %i.ja = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 2
  store i8 %i.iz, ptr %i.ja, align 1, !tbaa !37
  %i.jb = extractelement <4 x i32> %66, i64 0
  %i.jc = shl i32 %i.jb, 4
  %i.jd = extractelement <4 x i32> %67, i64 1
  %i.je = lshr i32 %i.jd, 2
  %i.jf = or i32 %i.je, %i.jc
  %i.jg = trunc i32 %i.jf to i8
  %i.jh = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 3
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !37
  %i.ji = extractelement <4 x i32> %66, i64 1
  %i.jj = shl i32 %i.ji, 6
  %i.jk = extractelement <4 x i32> %67, i64 2
  %i.jl = or i32 %i.jk, %i.jj
  %i.jm = trunc i32 %i.jl to i8
  %i.jn = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 4
  store i8 %i.jm, ptr %i.jn, align 1, !tbaa !37
  %75 = shufflevector <8 x i32> %68, <8 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 3, i32 4, i32 poison, i32 6>
  %76 = shufflevector <4 x i32> %67, <4 x i32> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %77 = shufflevector <8 x i32> %75, <8 x i32> %76, <8 x i32> <i32 11, i32 1, i32 2, i32 poison, i32 4, i32 5, i32 poison, i32 7>
  %78 = insertelement <8 x i32> %77, i32 %60, i64 3
  %79 = insertelement <8 x i32> %78, i32 %58, i64 6
  %80 = shl <8 x i32> %79, <i32 2, i32 4, i32 6, i32 2, i32 4, i32 6, i32 2, i32 4>
  %i.jo = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 5
  %81 = lshr <8 x i32> %69, <i32 4, i32 2, i32 0, i32 4, i32 2, i32 0, i32 4, i32 2>
  %82 = or <8 x i32> %81, %80
  %83 = trunc <8 x i32> %82 to <8 x i8>
  store <8 x i8> %83, ptr %i.jo, align 1, !tbaa !37
  %i.jp = extractelement <8 x i32> %68, i64 7
  %i.jq = shl i32 %i.jp, 6
  %i.jr = or i32 %i.id, %i.jq
  %i.js = trunc i32 %i.jr to i8
  br label %pack.exit.us

pack.exit.us:                                     ; preds = %bb.cb, %bb.cc
  %.sink489.in.in = phi i16 [ %.sroa.0.1.i.us, %bb.cc ], [ %.sroa.0.0.i.us, %bb.cb ] ; 2 uses
  %.sink216.i.us = phi i64 [ 13, %bb.cc ], [ 2, %bb.cb ]
  %.sink.i.us = phi i8 [ %i.js, %bb.cc ], [ -4, %bb.cb ]
  %.065.i.us = phi i64 [ 14, %bb.cc ], [ 3, %bb.cb ] ; 2 uses
  %.sink = trunc i16 %.sink489.in.in to i8
  %.sink489.in = lshr i16 %.sink489.in.in, 8
  %.sink489 = trunc nuw i16 %.sink489.in to i8
  store i8 %.sink489, ptr %.2176304.us, align 1, !tbaa !37
  %i.jt = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 1
  store i8 %.sink, ptr %i.jt, align 1, !tbaa !37
  %i.ju = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 %.sink216.i.us
  store i8 %.sink.i.us, ptr %i.ju, align 1, !tbaa !37
  %i.jv = add i64 %.065.i.us, %.2183303.us        ; 4 uses
  %i.jw = add i64 %i.jv, 14
  %i.jx = load i64, ptr %i.t, align 8, !tbaa !38
  %.not221.us = icmp ugt i64 %i.jw, %i.jx
  br i1 %.not221.us, label %.thread247, label %bb.cd

bb.cd:                                            ; preds = %pack.exit.us
  %i.jy = getelementptr inbounds nuw i8, ptr %.2176304.us, i64 %.065.i.us ; 3 uses
  %i.jz = add nuw nsw i32 %.0163309.us, 4         ; 2 uses
  %.not222.us = icmp slt i32 %i.jz, %i.bk
  br i1 %.not222.us, label %bb.l, label %..thread_crit_edge.us, !llvm.loop !39

.preheader.us:                                    ; preds = %bb.l
  %i.ka = xor i32 %.0163309.us, -1
  %i.kb = add nsw i32 %i.bk, %i.ka                ; 4 uses
  %spec.select226.us = tail call i32 @llvm.smin.i32(i32 %i.kb, i32 0)
  %i.kc = sext i32 %spec.select226.us to i64      ; 4 uses
  %i.kd = getelementptr inbounds [2 x i8], ptr %.0172305.us, i64 %i.kc
  %i.ke = load i16, ptr %i.kd, align 2, !tbaa !35
  %.sroa.0.0.insert.ext372 = zext i16 %i.ke to i64
  %i.kf = getelementptr inbounds [2 x i8], ptr %.2171306.us, i64 %i.kc
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !35
  %.sroa.19.8.insert.ext402 = zext i16 %i.kg to i64
  %i.kh = getelementptr inbounds [2 x i8], ptr %.2168307.us, i64 %i.kc
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !35
  %.sroa.36.16.insert.ext432 = zext i16 %i.ki to i64
  %i.kj = getelementptr inbounds [2 x i8], ptr %.1165308.us, i64 %i.kc
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !35
  %.sroa.53.24.insert.ext462 = zext i16 %i.kk to i64
  %spec.select226.us.1 = tail call i32 @llvm.smin.i32(i32 %i.kb, i32 1)
  %i.kl = sext i32 %spec.select226.us.1 to i64    ; 4 uses
  %i.km = getelementptr inbounds [2 x i8], ptr %.0172305.us, i64 %i.kl
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !35
  %.sroa.0.2.insert.ext379 = zext i16 %i.kn to i64
  %.sroa.0.2.insert.shift380 = shl nuw nsw i64 %.sroa.0.2.insert.ext379, 16
  %.sroa.0.2.insert.insert382 = or disjoint i64 %.sroa.0.2.insert.shift380, %.sroa.0.0.insert.ext372
  %i.ko = getelementptr inbounds [2 x i8], ptr %.2171306.us, i64 %i.kl
  %i.kp = load i16, ptr %i.ko, align 2, !tbaa !35
  %.sroa.19.10.insert.ext409 = zext i16 %i.kp to i64
  %.sroa.19.10.insert.shift410 = shl nuw nsw i64 %.sroa.19.10.insert.ext409, 16
  %.sroa.19.10.insert.insert412 = or disjoint i64 %.sroa.19.10.insert.shift410, %.sroa.19.8.insert.ext402
  %i.kq = getelementptr inbounds [2 x i8], ptr %.2168307.us, i64 %i.kl
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !35
  %.sroa.36.18.insert.ext439 = zext i16 %i.kr to i64
  %.sroa.36.18.insert.shift440 = shl nuw nsw i64 %.sroa.36.18.insert.ext439, 16
  %.sroa.36.18.insert.insert442 = or disjoint i64 %.sroa.36.18.insert.shift440, %.sroa.36.16.insert.ext432
  %i.ks = getelementptr inbounds [2 x i8], ptr %.1165308.us, i64 %i.kl
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !35
  %.sroa.53.26.insert.ext469 = zext i16 %i.kt to i64
  %.sroa.53.26.insert.shift470 = shl nuw nsw i64 %.sroa.53.26.insert.ext469, 16
  %.sroa.53.26.insert.insert472 = or disjoint i64 %.sroa.53.26.insert.shift470, %.sroa.53.24.insert.ext462
  %spec.select226.us.2 = tail call i32 @llvm.smin.i32(i32 %i.kb, i32 2)
  %i.ku = sext i32 %spec.select226.us.2 to i64    ; 4 uses
  %i.kv = getelementptr inbounds [2 x i8], ptr %.0172305.us, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !35
  %.sroa.0.4.insert.ext387 = zext i16 %i.kw to i64
  %.sroa.0.4.insert.shift388 = shl nuw nsw i64 %.sroa.0.4.insert.ext387, 32
  %.sroa.0.4.insert.insert390 = or disjoint i64 %.sroa.0.2.insert.insert382, %.sroa.0.4.insert.shift388
  %i.kx = getelementptr inbounds [2 x i8], ptr %.2171306.us, i64 %i.ku
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !35
  %.sroa.19.12.insert.ext417 = zext i16 %i.ky to i64
  %.sroa.19.12.insert.shift418 = shl nuw nsw i64 %.sroa.19.12.insert.ext417, 32
  %.sroa.19.12.insert.insert420 = or disjoint i64 %.sroa.19.10.insert.insert412, %.sroa.19.12.insert.shift418
  %i.kz = getelementptr inbounds [2 x i8], ptr %.2168307.us, i64 %i.ku
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !35
  %.sroa.36.20.insert.ext447 = zext i16 %i.la to i64
  %.sroa.36.20.insert.shift448 = shl nuw nsw i64 %.sroa.36.20.insert.ext447, 32
  %.sroa.36.20.insert.insert450 = or disjoint i64 %.sroa.36.18.insert.insert442, %.sroa.36.20.insert.shift448
  %i.lb = getelementptr inbounds [2 x i8], ptr %.1165308.us, i64 %i.ku
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !35
  %.sroa.53.28.insert.ext477 = zext i16 %i.lc to i64
  %.sroa.53.28.insert.shift478 = shl nuw nsw i64 %.sroa.53.28.insert.ext477, 32
  %.sroa.53.28.insert.insert480 = or disjoint i64 %.sroa.53.26.insert.insert472, %.sroa.53.28.insert.shift478
  %spec.select226.us.3 = tail call i32 @llvm.smin.i32(i32 %i.kb, i32 3)
  %i.ld = sext i32 %spec.select226.us.3 to i64    ; 4 uses
  %i.le = getelementptr inbounds [2 x i8], ptr %.0172305.us, i64 %i.ld
  %i.lf = load i16, ptr %i.le, align 2, !tbaa !35
  %.sroa.0.6.insert.ext395 = zext i16 %i.lf to i64
  %.sroa.0.6.insert.shift396 = shl nuw i64 %.sroa.0.6.insert.ext395, 48
  %.sroa.0.6.insert.insert398 = or disjoint i64 %.sroa.0.4.insert.insert390, %.sroa.0.6.insert.shift396
  %i.lg = getelementptr inbounds [2 x i8], ptr %.2171306.us, i64 %i.ld
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !35
  %.sroa.19.14.insert.ext425 = zext i16 %i.lh to i64
  %.sroa.19.14.insert.shift426 = shl nuw i64 %.sroa.19.14.insert.ext425, 48
  %.sroa.19.14.insert.insert428 = or disjoint i64 %.sroa.19.12.insert.insert420, %.sroa.19.14.insert.shift426
  %i.li = getelementptr inbounds [2 x i8], ptr %.2168307.us, i64 %i.ld
  %i.lj = load i16, ptr %i.li, align 2, !tbaa !35
  %.sroa.36.22.insert.ext455 = zext i16 %i.lj to i64
  %.sroa.36.22.insert.shift456 = shl nuw i64 %.sroa.36.22.insert.ext455, 48
  %.sroa.36.22.insert.insert458 = or disjoint i64 %.sroa.36.20.insert.insert450, %.sroa.36.22.insert.shift456
  %i.lk = getelementptr inbounds [2 x i8], ptr %.1165308.us, i64 %i.ld
  %i.ll = load i16, ptr %i.lk, align 2, !tbaa !35
  %.sroa.53.30.insert.ext485 = zext i16 %i.ll to i64
  %.sroa.53.30.insert.shift486 = shl nuw i64 %.sroa.53.30.insert.ext485, 48
  %.sroa.53.30.insert.insert488 = or disjoint i64 %.sroa.53.28.insert.insert480, %.sroa.53.30.insert.shift486
  br label %.loopexit.us

..thread_crit_edge.us:                            ; preds = %bb.cd
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 4 ; 2 uses
  %i.lm = trunc nuw i64 %indvars.iv.next364 to i32
  %i.ln = icmp sgt i32 %i.bm, %i.lm
  br i1 %i.ln, label %.lr.ph317.split.us, label %select.unfold, !llvm.loop !40

bb.ce:                                            ; preds = %bb.k
  %i.lo = add i64 %i.bt, %.0181324                ; 2 uses
  %i.lp = load i64, ptr %i.t, align 8, !tbaa !38
  %i.lq = icmp ugt i64 %i.lo, %i.lp
  br i1 %i.lq, label %.thread247, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0174326, ptr align 1 %.2192322, i64 %i.bt, i1 false)
  %i.lr = getelementptr inbounds nuw i8, ptr %.0174326, i64 %i.bt
  %i.ls = getelementptr inbounds nuw i8, ptr %.2192322, i64 %i.bt
  br label %.thread234

select.unfold:                                    ; preds = %..thread_crit_edge.us, %.lr.ph317, %.preheader261
  %.1182.lcssa = phi i64 [ %.0181324, %.preheader261 ], [ %.0181324, %.lr.ph317 ], [ %i.jv, %..thread_crit_edge.us ]
  %.1175.lcssa = phi ptr [ %.0174326, %.preheader261 ], [ %.0174326, %.lr.ph317 ], [ %i.jy, %..thread_crit_edge.us ]
  %i.lt = getelementptr inbounds nuw i8, ptr %.2192322, i64 %i.bt
  br label %.thread234

.thread234:                                       ; preds = %select.unfold, %bb.cf, %bb.j
  %.5179241 = phi ptr [ %.0174326, %bb.j ], [ %i.lr, %bb.cf ], [ %.1175.lcssa, %select.unfold ]
  %.5186240 = phi i64 [ %.0181324, %bb.j ], [ %i.lo, %bb.cf ], [ %.1182.lcssa, %select.unfold ] ; 3 uses
  %.3193239 = phi ptr [ %.2192322, %bb.j ], [ %i.ls, %bb.cf ], [ %i.lt, %select.unfold ]
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %i.lu = load i16, ptr %i.q, align 8, !tbaa !17
  %i.lv = sext i16 %i.lu to i64
  %.not223 = icmp slt i64 %indvars.iv.next367, %i.lv
  br i1 %.not223, label %bb.j, label %.thread249, !llvm.loop !41

.thread249:                                       ; preds = %.thread234
  %i.lw = load i64, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.lx = icmp ugt i64 %.5186240, %i.lw
  br i1 %i.lx, label %bb.cg, label %.thread249.thread

bb.cg:                                            ; preds = %.thread249
  %i.ly = load ptr, ptr %i.a, align 8, !tbaa !7
  %i.lz = load ptr, ptr %i.h, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ly, ptr align 1 %i.lz, i64 %i.lw, i1 false)
  %i.ma = load i64, ptr %i.e, align 8, !tbaa !15
  br label %.thread249.thread

.thread249.thread:                                ; preds = %._crit_edge300, %bb.cg, %.thread249
  %.7188 = phi i64 [ %i.ma, %bb.cg ], [ %.5186240, %.thread249 ], [ 0, %._crit_edge300 ]
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.7188, ptr %i.mb, align 8, !tbaa !42
  br label %.thread247

.thread247:                                       ; preds = %bb.ce, %pack.exit.us, %bb.a, %.thread249.thread
  %.8 = phi i32 [ 1, %pack.exit.us ], [ 0, %.thread249.thread ], [ %i.g, %bb.a ], [ 1, %bb.ce ]
  ret i32 %.8
}

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_apply_b44a(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @compress_b44_impl(ptr noundef %0, i32 noundef 1)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_undo_b44(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %compute_scratch_buffer_size.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %4)
  br label %compute_scratch_buffer_size.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.02131.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.b ]
end_hunk_0
begin_hunk_1_@uncompress_b44_impl:bb.a
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %i.lb = load i16, ptr %i.d, align 8, !tbaa !43  ; 2 uses
  %i.lc = sext i16 %i.lb to i64
  %.not196 = icmp slt i64 %indvars.iv.next377, %i.lc
  br i1 %.not196, label %bb.b, label %.critedge.preheader, !llvm.loop !51

bb.t:                                             ; preds = %.lr.ph368, %.critedge
  %i.ld = phi i32 [ %i.i, %.lr.ph368 ], [ %i.mm, %.critedge ]
  %i.le = phi i16 [ %i.g, %.lr.ph368 ], [ %i.mn, %.critedge ] ; 2 uses
  %i.lf = phi i16 [ %i.g, %.lr.ph368 ], [ %i.mo, %.critedge ] ; 2 uses
  %.0150367 = phi i32 [ 0, %.lr.ph368 ], [ %i.mp, %.critedge ] ; 4 uses
  %.0153366 = phi ptr [ %3, %.lr.ph368 ], [ %.1154.lcssa, %.critedge ] ; 2 uses
  %.6171365 = phi i64 [ 0, %.lr.ph368 ], [ %.7172.lcssa, %.critedge ] ; 2 uses
  %i.lg = load i32, ptr %i.j, align 8, !tbaa !52
  %i.lh = add nsw i32 %i.lg, %.0150367
  %i.li = icmp sgt i16 %i.lf, 0
  br i1 %i.li, label %.lr.ph362.preheader, label %.critedge

.lr.ph362.preheader:                              ; preds = %bb.t
  %i.lj = load ptr, ptr %i.b, align 8, !tbaa !47
  br label %.lr.ph362

.lr.ph362:                                        ; preds = %.lr.ph362.preheader, %bb.aa
  %i.lk = phi i16 [ %i.le, %.lr.ph362.preheader ], [ %i.mj, %bb.aa ] ; 2 uses
  %indvars.iv379 = phi i64 [ 0, %.lr.ph362.preheader ], [ %indvars.iv.next380, %bb.aa ] ; 2 uses
  %.1154360 = phi ptr [ %.0153366, %.lr.ph362.preheader ], [ %.2155.ph, %bb.aa ] ; 4 uses
  %.7172359 = phi i64 [ %.6171365, %.lr.ph362.preheader ], [ %.8173.ph, %bb.aa ] ; 3 uses
  %.2177358 = phi ptr [ %i.lj, %.lr.ph362.preheader ], [ %.3178.ph, %bb.aa ] ; 4 uses
  %i.ll = load ptr, ptr %i.k, align 8, !tbaa !45
  %i.lm = getelementptr inbounds nuw [48 x i8], ptr %i.ll, i64 %indvars.iv379 ; 4 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 12
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !24
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !27
  %i.lr = sext i32 %i.lo to i64
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lm, i64 25
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !28
  %i.lu = sext i8 %i.lt to i64
  %i.lv = mul nsw i64 %i.lu, %i.lr                ; 5 uses
  %i.lw = sext i32 %i.lq to i64
  %i.lx = mul i64 %i.lv, %i.lw                    ; 3 uses
  %i.ly = icmp eq i64 %i.lx, 0
  br i1 %i.ly, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %.lr.ph362
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lm, i64 20
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !29 ; 3 uses
  %i.mb = icmp sgt i32 %i.ma, 1
  br i1 %i.mb, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.mc = srem i32 %i.lh, %i.ma
  %.not197 = icmp eq i32 %i.mc, 0
  br i1 %.not197, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.md = getelementptr inbounds nuw i8, ptr %.2177358, i64 %i.lx
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.me = udiv i32 %.0150367, %i.ma
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %.pn198.in = phi i32 [ %i.me, %bb.x ], [ %.0150367, %bb.u ]
  %i.mf = add i64 %i.lv, %.7172359                ; 2 uses
  %i.mg = icmp ugt i64 %i.mf, %4
  br i1 %i.mg, label %.thread303, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.pn198 = zext i32 %.pn198.in to i64
  %.pn = mul i64 %i.lv, %.pn198
  %.0183 = getelementptr inbounds nuw i8, ptr %.2177358, i64 %.pn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.1154360, ptr align 1 %.0183, i64 %i.lv, i1 false)
  %i.mh = getelementptr inbounds nuw i8, ptr %.1154360, i64 %i.lv
  %i.mi = getelementptr inbounds nuw i8, ptr %.2177358, i64 %i.lx
  %.pre = load i16, ptr %i.d, align 8, !tbaa !43
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.w, %.lr.ph362
  %i.mj = phi i16 [ %i.lk, %.lr.ph362 ], [ %i.lk, %bb.w ], [ %.pre, %bb.z ] ; 4 uses
  %.3178.ph = phi ptr [ %.2177358, %.lr.ph362 ], [ %i.md, %bb.w ], [ %i.mi, %bb.z ]
  %.8173.ph = phi i64 [ %.7172359, %.lr.ph362 ], [ %.7172359, %bb.w ], [ %i.mf, %bb.z ] ; 2 uses
  %.2155.ph = phi ptr [ %.1154360, %.lr.ph362 ], [ %.1154360, %bb.w ], [ %i.mh, %bb.z ] ; 2 uses
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %i.mk = sext i16 %i.mj to i64
  %i.ml = icmp slt i64 %indvars.iv.next380, %i.mk
  br i1 %i.ml, label %.lr.ph362, label %.critedge.loopexit, !llvm.loop !53

.critedge.loopexit:                               ; preds = %bb.aa
  %.pre462 = load i32, ptr %i.h, align 4, !tbaa !48
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.t
  %i.mm = phi i32 [ %i.ld, %bb.t ], [ %.pre462, %.critedge.loopexit ] ; 2 uses
  %i.mn = phi i16 [ %i.le, %bb.t ], [ %i.mj, %.critedge.loopexit ]
  %i.mo = phi i16 [ %i.lf, %bb.t ], [ %i.mj, %.critedge.loopexit ]
  %.7172.lcssa = phi i64 [ %.6171365, %bb.t ], [ %.8173.ph, %.critedge.loopexit ]
  %.1154.lcssa = phi ptr [ %.0153366, %bb.t ], [ %.2155.ph, %.critedge.loopexit ]
  %i.mp = add nuw nsw i32 %.0150367, 1            ; 2 uses
  %.not199 = icmp slt i32 %i.mp, %i.mm
  br i1 %.not199, label %bb.t, label %.critedge203, !llvm.loop !54

.critedge203:                                     ; preds = %.critedge, %.critedge.preheader
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %4, ptr %i.mq, align 8, !tbaa !55
  br label %.thread303

.thread303:                                       ; preds = %bb.r, %bb.f, %bb.d, %bb.y, %.critedge203
  %.11 = phi i32 [ 0, %.critedge203 ], [ 1, %bb.y ], [ 1, %bb.f ], [ 1, %bb.d ], [ 1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %.11
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_undo_b44a(ptr noundef %0, ptr noundef readonly captures(none) %1, i64 noundef %2, ptr noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !43   ; 2 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %compute_scratch_buffer_size.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %4)
  br label %compute_scratch_buffer_size.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.02131.i = phi i64 [ 0, %.lr.ph.i ], [ %i.y, %bb.b ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv.i ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24   ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !27   ; 3 uses
  %i.n = srem i32 %i.k, 4                         ; 2 uses
  %.not.i = icmp eq i32 %i.n, 0
  %reass.sub.i = add i32 %i.k, 4
  %i.o = sub i32 %reass.sub.i, %i.n
  %.024.i = select i1 %.not.i, i32 %i.k, i32 %i.o
  %i.p = srem i32 %i.m, 4                         ; 2 uses
  %.not28.i = icmp eq i32 %i.p, 0
  %reass.sub29.i = add i32 %i.m, 4
  %i.q = sub i32 %reass.sub29.i, %i.p
  %.023.i = select i1 %.not28.i, i32 %i.m, i32 %i.q
  %i.r = sext i32 %.023.i to i64
  %i.s = sext i32 %.024.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  %i.u = load i8, ptr %i.t, align 1, !tbaa !28
  %i.v = sext i8 %i.u to i64
  %i.w = mul nsw i64 %i.s, %i.v
  %i.x = mul i64 %i.w, %i.r
  %i.y = add i64 %i.x, %.02131.i                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !46

compute_scratch_buffer_size.exit:                 ; preds = %bb.a, %._crit_edge.loopexit.i
  %.021.lcssa.i = phi i64 [ %4, %bb.a ], [ %i.h, %._crit_edge.loopexit.i ]
  %i.z = tail call i32 @internal_decode_alloc_buffer(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.021.lcssa.i) #5 ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %compute_scratch_buffer_size.exit
  %i.aa = tail call fastcc i32 @uncompress_b44_impl(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %compute_scratch_buffer_size.exit, %bb.c
  %.0 = phi i32 [ %i.aa, %bb.c ], [ %i.z, %compute_scratch_buffer_size.exit ]
  ret i32 %.0
}

declare i32 @internal_encode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v12i32(<12 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v12i32(<12 x i32>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !10, i64 168}
!8 = !{!"_exr_encode_pipeline", !9, i64 0, !10, i64 8, !11, i64 16, !11, i64 18, !4, i64 20, !12, i64 24, !13, i64 32, !10, i64 96, !10, i64 104, !9, i64 112, !9, i64 120, !14, i64 128, !9, i64 136, !10, i64 144, !9, i64 152, !9, i64 160, !10, i64 168, !9, i64 176, !9, i64 184, !10, i64 192, !9, i64 200, !10, i64 208, !9, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !10, i64 264, !5, i64 272}
!9 = !{!"long", !5, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!"p1 _ZTS19_priv_exr_context_t", !10, i64 0}
!13 = !{!"", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !5, i64 20, !5, i64 21, !5, i64 22, !5, i64 23, !9, i64 24, !9, i64 32, !9, i64 40, !9, i64 48, !9, i64 56}
!14 = !{!"p1 int", !10, i64 0}
!15 = !{!8, !9, i64 112}
!16 = !{!8, !4, i64 44}
!17 = !{!8, !11, i64 16}
!18 = !{!8, !10, i64 104}
!19 = !{!8, !10, i64 192}
!20 = !{!8, !4, i64 40}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!8, !10, i64 8}
!24 = !{!25, !4, i64 12}
!25 = !{!"", !26, i64 0, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !5, i64 24, !5, i64 25, !11, i64 26, !11, i64 28, !11, i64 30, !4, i64 32, !4, i64 36, !5, i64 40}
!26 = !{!"p1 omnipotent char", !10, i64 0}
!27 = !{!25, !4, i64 8}
!28 = !{!25, !5, i64 25}
!29 = !{!25, !4, i64 20}
!30 = distinct !{!30, !22}
!31 = !{!25, !11, i64 26}
!32 = !{!25, !5, i64 24}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 short", !10, i64 0}
!35 = !{!11, !11, i64 0}
!36 = distinct !{!36, !22}
!37 = !{!5, !5, i64 0}
!38 = !{!8, !9, i64 184}
!39 = distinct !{!39, !22}
!40 = distinct !{!40, !22}
!41 = distinct !{!41, !22}
!42 = !{!8, !9, i64 176}
!43 = !{!44, !11, i64 16}
!44 = !{!"_exr_decode_pipeline", !9, i64 0, !10, i64 8, !11, i64 16, !11, i64 18, !4, i64 20, !12, i64 24, !13, i64 32, !4, i64 96, !4, i64 100, !9, i64 104, !10, i64 112, !10, i64 120, !9, i64 128, !10, i64 136, !9, i64 144, !10, i64 152, !9, i64 160, !14, i64 168, !9, i64 176, !10, i64 184, !9, i64 192, !10, i64 200, !9, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !10, i64 240, !10, i64 248, !10, i64 256, !5, i64 264}
!45 = !{!44, !10, i64 8}
!46 = distinct !{!46, !22}
!47 = !{!44, !10, i64 184}
!48 = !{!44, !4, i64 44}
!49 = distinct !{!49, !22}
!50 = distinct !{!50, !22}
!51 = distinct !{!51, !22}
!52 = !{!44, !4, i64 40}
!53 = distinct !{!53, !22}
!54 = distinct !{!54, !22}
!55 = !{!44, !9, i64 104}
end_hunk_1
