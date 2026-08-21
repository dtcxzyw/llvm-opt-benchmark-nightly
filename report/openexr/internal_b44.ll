Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/internal_b44?download=true
inline.NumInlined: 10
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@exrcore_expTable = external local_unnamed_addr global ptr, align 8
@exrcore_logTable = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define hidden i32 @internal_exr_apply_b44(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @compress_b44_impl(ptr noundef %0, i32 noundef 0)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @compress_b44_impl(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !16
  %i.g = tail call i32 @internal_encode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef %i.f) #5 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.thread247

bb.b:                                             ; preds = %bb.a
  tail call void (...) @exrcore_ensure_b44_tables() #5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph299, label %.._crit_edge300_crit_edge

.._crit_edge300_crit_edge:                        ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre492 = load i16, ptr %.phi.trans.insert, align 8, !tbaa !18
  br label %._crit_edge300

.lr.ph299:                                        ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i16, ptr %i.n, align 8, !tbaa !18  ; 2 uses
  br label %bb.c

._crit_edge300:                                   ; preds = %._crit_edge, %.._crit_edge300_crit_edge
  %i.p = phi i16 [ %.pre492, %.._crit_edge300_crit_edge ], [ %i.ad, %._crit_edge ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not223321 = icmp sgt i16 %i.p, 0
  br i1 %.not223321, label %.lr.ph328, label %.thread249.thread

.lr.ph328:                                        ; preds = %._crit_edge300
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.u = icmp ne i32 %1, 0
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph299, %._crit_edge
  %i.v = phi i32 [ %i.j, %.lr.ph299 ], [ %i.ac, %._crit_edge ]
  %i.w = phi i16 [ %.pre, %.lr.ph299 ], [ %i.ad, %._crit_edge ] ; 2 uses
  %i.x = phi i16 [ %.pre, %.lr.ph299 ], [ %i.ae, %._crit_edge ] ; 2 uses
  %.0173297 = phi i32 [ 0, %.lr.ph299 ], [ %i.af, %._crit_edge ] ; 4 uses
  %.0177296 = phi ptr [ %i.l, %.lr.ph299 ], [ %.1178.lcssa, %._crit_edge ] ; 2 uses
  %i.y = load i32, ptr %i.m, align 8, !tbaa !21
  %i.z = add nsw i32 %i.y, %.0173297
  %i.aa = icmp sgt i16 %i.x, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre491 = load i32, ptr %i.i, align 4, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ac = phi i32 [ %i.v, %bb.c ], [ %.pre491, %._crit_edge.loopexit ] ; 2 uses
  %i.ad = phi i16 [ %i.w, %bb.c ], [ %i.be, %._crit_edge.loopexit ] ; 2 uses
  %i.ae = phi i16 [ %i.x, %bb.c ], [ %i.be, %._crit_edge.loopexit ]
  %.1178.lcssa = phi ptr [ %.0177296, %bb.c ], [ %.2179, %._crit_edge.loopexit ]
  %i.af = add nuw nsw i32 %.0173297, 1            ; 2 uses
  %i.ag = icmp slt i32 %i.af, %i.ac
  br i1 %i.ag, label %bb.c, label %._crit_edge300, !llvm.loop !22

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.ah = phi i16 [ %i.w, %.lr.ph.preheader ], [ %i.be, %bb.i ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.1178294 = phi ptr [ %.0177296, %.lr.ph.preheader ], [ %.2179, %bb.i ] ; 4 uses
  %.0181293 = phi ptr [ %i.ab, %.lr.ph.preheader ], [ %.1182, %bb.i ] ; 4 uses
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !24
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.ai, i64 %indvars.iv ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.an = load i32, ptr %i.am, align 8, !tbaa !28
  %i.ao = sext i32 %i.al to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 25
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !29
  %i.ar = sext i8 %i.aq to i64
  %i.as = mul nsw i64 %i.ar, %i.ao                ; 4 uses
  %i.at = sext i32 %i.an to i64
  %i.au = mul i64 %i.as, %i.at                    ; 3 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !30 ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, 1
  br i1 %i.ay, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.az = srem i32 %i.z, %i.ax
  %.not224 = icmp eq i32 %i.az, 0
  br i1 %.not224, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %.0181293, i64 %i.au
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.bb = udiv i32 %.0173297, %i.ax
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.pn225.in = phi i32 [ %i.bb, %bb.g ], [ %.0173297, %bb.d ]
  %.pn225 = zext i32 %.pn225.in to i64
  %.pn = mul i64 %i.as, %.pn225
  %.0180 = getelementptr inbounds nuw i8, ptr %.0181293, i64 %.pn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0180, ptr align 1 %.1178294, i64 %i.as, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %.1178294, i64 %i.as
  %i.bd = getelementptr inbounds nuw i8, ptr %.0181293, i64 %i.au
  %.pre490 = load i16, ptr %i.n, align 8, !tbaa !18
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h, %bb.f
  %i.be = phi i16 [ %.pre490, %bb.h ], [ %i.ah, %bb.f ], [ %i.ah, %.lr.ph ] ; 4 uses
  %.1182 = phi ptr [ %i.bd, %bb.h ], [ %i.ba, %bb.f ], [ %.0181293, %.lr.ph ]
  %.2179 = phi ptr [ %i.bc, %bb.h ], [ %.1178294, %bb.f ], [ %.1178294, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bf = sext i16 %i.be to i64
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !31

bb.j:                                             ; preds = %.lr.ph328, %.thread234
  %indvars.iv366 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next367, %.thread234 ] ; 2 uses
  %.2183324 = phi ptr [ %i.r, %.lr.ph328 ], [ %.3184241, %.thread234 ] ; 5 uses
  %.0185323 = phi i64 [ 0, %.lr.ph328 ], [ %.5240, %.thread234 ] ; 5 uses
  %.0190322 = phi ptr [ %i.b, %.lr.ph328 ], [ %.5195239, %.thread234 ] ; 6 uses
  %i.bh = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.bi = getelementptr inbounds nuw [48 x i8], ptr %i.bh, i64 %indvars.iv366 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !25 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !28 ; 2 uses
  %i.bn = sext i32 %i.bk to i64                   ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 25
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !29
  %i.bq = sext i8 %i.bp to i64
  %i.br = sext i32 %i.bm to i64                   ; 5 uses
  %i.bs = mul nsw i64 %i.br, %i.bn
  %i.bt = mul i64 %i.bs, %i.bq                    ; 6 uses
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %.thread234, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 26
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !32
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
  %invariant.op = add nsw i64 %i.br, -3
  %invariant.op537.a = add nsw i64 %i.br, -1
  %invariant.op538 = add nsw i64 %i.br, -2
  br label %.lr.ph317.split.us

.lr.ph317.split.us:                               ; preds = %.lr.ph317.split.us.preheader, %..thread_crit_edge.us
  %indvars.iv363 = phi i64 [ 0, %.lr.ph317.split.us.preheader ], [ %indvars.iv.next364, %..thread_crit_edge.us ] ; 5 uses
  %.1186315.us = phi i64 [ %.0185323, %.lr.ph317.split.us.preheader ], [ %i.oi, %..thread_crit_edge.us ]
  %.1191314.us = phi ptr [ %.0190322, %.lr.ph317.split.us.preheader ], [ %i.ol, %..thread_crit_edge.us ]
  %i.bz = mul nuw nsw i64 %indvars.iv363, %i.bn
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %.2183324, i64 %i.bz ; 3 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.bn ; 3 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.bn ; 3 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.cc, i64 %i.bn
  %.not215.us = icmp slt i64 %indvars.iv363, %invariant.op ; 3 uses
  %.not216.us = icmp slt i64 %indvars.iv363, %invariant.op537.a
  %spec.select.us = select i1 %.not216.us, ptr %i.cb, ptr %i.ca ; 2 uses
  %.not217.us = icmp slt i64 %indvars.iv363, %invariant.op538
  %.0164.us = select i1 %.not217.us, ptr %i.cc, ptr %spec.select.us ; 2 uses
  %.1167.us = select i1 %.not215.us, ptr %i.cb, ptr %spec.select.us
  %.1165.us = select i1 %.not215.us, ptr %i.cc, ptr %.0164.us
  %.0163.us = select i1 %.not215.us, ptr %i.cd, ptr %.0164.us
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph317.split.us, %bb.cd
  %.0162309.us = phi i32 [ 0, %.lr.ph317.split.us ], [ %i.om, %bb.cd ] ; 3 uses
  %.1308.us = phi ptr [ %.0163.us, %.lr.ph317.split.us ], [ %i.cm, %bb.cd ] ; 6 uses
  %.2307.us = phi ptr [ %.1165.us, %.lr.ph317.split.us ], [ %i.cl, %bb.cd ] ; 6 uses
  %.2168306.us = phi ptr [ %.1167.us, %.lr.ph317.split.us ], [ %i.ck, %bb.cd ] ; 6 uses
  %.0169305.us = phi ptr [ %i.ca, %.lr.ph317.split.us ], [ %i.cj, %bb.cd ] ; 6 uses
  %.2187304.us = phi i64 [ %.1186315.us, %.lr.ph317.split.us ], [ %i.oi, %bb.cd ]
  %.2192303.us = phi ptr [ %.1191314.us, %.lr.ph317.split.us ], [ %i.ol, %bb.cd ] ; 12 uses
  %i.ce = or disjoint i32 %.0162309.us, 3
  %.not218.us = icmp slt i32 %i.ce, %i.bk
  br i1 %.not218.us, label %bb.m, label %.preheader.us

bb.m:                                             ; preds = %bb.l
  %i.cf = load i64, ptr %.0169305.us, align 2
  %i.cg = load i64, ptr %.2168306.us, align 2
  %i.ch = load i64, ptr %.2307.us, align 2
  %i.ci = load i64, ptr %.1308.us, align 2
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.preheader.us, %bb.m
  %.sroa.53.0 = phi i64 [ %i.ci, %bb.m ], [ %.sroa.53.30.insert.insert488, %.preheader.us ] ; 5 uses
  %.sroa.36.0 = phi i64 [ %i.ch, %bb.m ], [ %.sroa.36.22.insert.insert458, %.preheader.us ] ; 5 uses
  %.sroa.19.0 = phi i64 [ %i.cg, %bb.m ], [ %.sroa.19.14.insert.insert428, %.preheader.us ] ; 5 uses
  %.sroa.0.0 = phi i64 [ %i.cf, %bb.m ], [ %.sroa.0.6.insert.insert398, %.preheader.us ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0169305.us, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.2168306.us, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.2307.us, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.1308.us, i64 8
  %i.cn = load i8, ptr %i.by, align 8, !tbaa !33
  %.not219.not.us = icmp eq i8 %i.cn, 0           ; 2 uses
  br i1 %.not219.not.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit.us
  %i.co = load ptr, ptr @exrcore_expTable, align 8, !tbaa !34 ; 16 uses
  %i.cp = and i64 %.sroa.0.0, 65535
  %i.cq = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cp
  %i.cr = load i16, ptr %i.cq, align 2, !tbaa !36
  %.sroa.0.0.insert.ext = zext i16 %i.cr to i64
  %.sroa.0.2.extract.shift = lshr i64 %.sroa.0.0, 16
  %i.cs = and i64 %.sroa.0.2.extract.shift, 65535
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cs
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !36
  %.sroa.0.2.insert.ext = zext i16 %i.cu to i64
  %.sroa.0.2.insert.shift = shl nuw nsw i64 %.sroa.0.2.insert.ext, 16
  %i.cv = or disjoint i64 %.sroa.0.2.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.0, 32
  %i.cw = and i64 %.sroa.0.4.extract.shift, 65535
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !36
  %.sroa.0.4.insert.ext = zext i16 %i.cy to i64
  %.sroa.0.4.insert.shift = shl nuw nsw i64 %.sroa.0.4.insert.ext, 32
  %i.cz = or disjoint i64 %i.cv, %.sroa.0.4.insert.shift
  %.sroa.0.6.extract.shift = lshr i64 %.sroa.0.0, 48
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %.sroa.0.6.extract.shift
  %i.db = load i16, ptr %i.da, align 2, !tbaa !36
  %.sroa.0.6.insert.ext = zext i16 %i.db to i64
  %.sroa.0.6.insert.shift = shl nuw i64 %.sroa.0.6.insert.ext, 48
  %.sroa.0.6.insert.insert = or disjoint i64 %i.cz, %.sroa.0.6.insert.shift
  %i.dc = and i64 %.sroa.19.0, 65535
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !36
  %.sroa.19.8.insert.ext = zext i16 %i.de to i64
  %.sroa.19.10.extract.shift = lshr i64 %.sroa.19.0, 16
  %i.df = and i64 %.sroa.19.10.extract.shift, 65535
  %i.dg = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !36
  %.sroa.19.10.insert.ext = zext i16 %i.dh to i64
  %.sroa.19.10.insert.shift = shl nuw nsw i64 %.sroa.19.10.insert.ext, 16
  %i.di = or disjoint i64 %.sroa.19.10.insert.shift, %.sroa.19.8.insert.ext
  %.sroa.19.12.extract.shift = lshr i64 %.sroa.19.0, 32
  %i.dj = and i64 %.sroa.19.12.extract.shift, 65535
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !36
  %.sroa.19.12.insert.ext = zext i16 %i.dl to i64
  %.sroa.19.12.insert.shift = shl nuw nsw i64 %.sroa.19.12.insert.ext, 32
  %i.dm = or disjoint i64 %i.di, %.sroa.19.12.insert.shift
  %.sroa.19.14.extract.shift = lshr i64 %.sroa.19.0, 48
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %.sroa.19.14.extract.shift
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !36
  %.sroa.19.14.insert.ext = zext i16 %i.do to i64
  %.sroa.19.14.insert.shift = shl nuw i64 %.sroa.19.14.insert.ext, 48
  %.sroa.19.14.insert.insert = or disjoint i64 %i.dm, %.sroa.19.14.insert.shift
  %i.dp = and i64 %.sroa.36.0, 65535
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.dp
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !36
  %.sroa.36.16.insert.ext = zext i16 %i.dr to i64
  %.sroa.36.18.extract.shift = lshr i64 %.sroa.36.0, 16
  %i.ds = and i64 %.sroa.36.18.extract.shift, 65535
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.ds
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !36
  %.sroa.36.18.insert.ext = zext i16 %i.du to i64
  %.sroa.36.18.insert.shift = shl nuw nsw i64 %.sroa.36.18.insert.ext, 16
  %i.dv = or disjoint i64 %.sroa.36.18.insert.shift, %.sroa.36.16.insert.ext
  %.sroa.36.20.extract.shift = lshr i64 %.sroa.36.0, 32
  %i.dw = and i64 %.sroa.36.20.extract.shift, 65535
  %i.dx = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.dw
  %i.dy = load i16, ptr %i.dx, align 2, !tbaa !36
  %.sroa.36.20.insert.ext = zext i16 %i.dy to i64
  %.sroa.36.20.insert.shift = shl nuw nsw i64 %.sroa.36.20.insert.ext, 32
  %i.dz = or disjoint i64 %i.dv, %.sroa.36.20.insert.shift
  %.sroa.36.22.extract.shift = lshr i64 %.sroa.36.0, 48
  %i.ea = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %.sroa.36.22.extract.shift
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !36
  %.sroa.36.22.insert.ext = zext i16 %i.eb to i64
  %.sroa.36.22.insert.shift = shl nuw i64 %.sroa.36.22.insert.ext, 48
  %.sroa.36.22.insert.insert = or disjoint i64 %i.dz, %.sroa.36.22.insert.shift
  %i.ec = and i64 %.sroa.53.0, 65535
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.ec
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !36
  %.sroa.53.24.insert.ext = zext i16 %i.ee to i64
  %.sroa.53.26.extract.shift = lshr i64 %.sroa.53.0, 16
  %i.ef = and i64 %.sroa.53.26.extract.shift, 65535
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.ef
  %i.eh = load i16, ptr %i.eg, align 2, !tbaa !36
  %.sroa.53.26.insert.ext = zext i16 %i.eh to i64
  %.sroa.53.26.insert.shift = shl nuw nsw i64 %.sroa.53.26.insert.ext, 16
  %i.ei = or disjoint i64 %.sroa.53.26.insert.shift, %.sroa.53.24.insert.ext
  %.sroa.53.28.extract.shift = lshr i64 %.sroa.53.0, 32
  %i.ej = and i64 %.sroa.53.28.extract.shift, 65535
  %i.ek = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %i.ej
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !36
  %.sroa.53.28.insert.ext = zext i16 %i.el to i64
  %.sroa.53.28.insert.shift = shl nuw nsw i64 %.sroa.53.28.insert.ext, 32
  %i.em = or disjoint i64 %i.ei, %.sroa.53.28.insert.shift
  %.sroa.53.30.extract.shift = lshr i64 %.sroa.53.0, 48
  %i.en = getelementptr inbounds nuw [2 x i8], ptr %i.co, i64 %.sroa.53.30.extract.shift
  %i.eo = load i16, ptr %i.en, align 2, !tbaa !36
  %.sroa.53.30.insert.ext = zext i16 %i.eo to i64
  %.sroa.53.30.insert.shift = shl nuw i64 %.sroa.53.30.insert.ext, 48
  %.sroa.53.30.insert.insert = or disjoint i64 %i.em, %.sroa.53.30.insert.shift
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit.us
  %.sroa.53.1 = phi i64 [ %.sroa.53.0, %.loopexit.us ], [ %.sroa.53.30.insert.insert, %bb.n ] ; 5 uses
  %.sroa.36.1 = phi i64 [ %.sroa.36.0, %.loopexit.us ], [ %.sroa.36.22.insert.insert, %bb.n ] ; 5 uses
  %.sroa.19.1 = phi i64 [ %.sroa.19.0, %.loopexit.us ], [ %.sroa.19.14.insert.insert, %bb.n ] ; 5 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %.loopexit.us ], [ %.sroa.0.6.insert.insert, %bb.n ] ; 5 uses
  %.sroa.0.0.extract.trunc370 = trunc i64 %.sroa.0.1 to i16 ; 4 uses
  %i.ep = and i16 %.sroa.0.0.extract.trunc370, 31744
  %i.eq = icmp eq i16 %i.ep, 31744
  br i1 %i.eq, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.not74.i.us = icmp sgt i16 %.sroa.0.0.extract.trunc370, -1
  br i1 %.not74.i.us, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.er = xor i16 %.sroa.0.0.extract.trunc370, -1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.es = or disjoint i16 %.sroa.0.0.extract.trunc370, -32768
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
end_hunk_0
begin_hunk_1_@compress_b44_impl:bb.a
  %i.lp = tail call i32 @llvm.smin.i32(i32 %i.ll, i32 %i.lm)
  %i.lq = tail call i32 @llvm.smin.i32(i32 %i.ln, i32 %i.lo)
  %i.lr = tail call i32 @llvm.smin.i32(i32 %i.lp, i32 %i.lq) ; 2 uses
  %i.ls = tail call i32 @llvm.vector.reduce.smax.v8i32(<8 x i32> %i.lf)
  %i.lt = tail call i32 @llvm.smax.i32(i32 %i.ls, i32 %i.jh)
  %i.lu = tail call i32 @llvm.smax.i32(i32 %i.kp, i32 %i.kr)
  %i.lv = tail call i32 @llvm.smax.i32(i32 %i.ku, i32 %i.jy)
  %i.lw = tail call i32 @llvm.smax.i32(i32 %i.lg, i32 %i.lh)
  %i.lx = tail call i32 @llvm.smax.i32(i32 %i.lt, i32 %i.lu)
  %i.ly = tail call i32 @llvm.smax.i32(i32 %i.lv, i32 %i.lw)
  %i.lz = tail call i32 @llvm.smax.i32(i32 %i.lx, i32 %i.ly) ; 2 uses
  %i.ma = icmp slt i32 %i.lr, 0
  %i.mb = icmp sgt i32 %i.lz, 63
  %i.mc = select i1 %i.ma, i1 true, i1 %i.mb
  br i1 %i.mc, label %bb.ca, label %bb.cb, !llvm.loop !37

bb.cb:                                            ; preds = %bb.ca
  %i.md = icmp eq i32 %i.lr, 32
  %i.me = icmp eq i32 %i.lz, 32
  %or.cond.i.us = select i1 %i.md, i1 %i.me, i1 false
  %or.cond3.i.us = and i1 %i.u, %or.cond.i.us
  br i1 %or.cond3.i.us, label %pack.exit.us, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.mf = shl i32 %i.iv, %i.io
  %i.mg = trunc i32 %i.mf to i16
  %i.mh = sub i16 %spec.select.15.i.us, %i.mg
  %.sroa.0.1.i.us = select i1 %.not219.not.us, i16 %i.mh, i16 %.sroa.0.0.i.us
  %i.mi = shl i32 %i.io, 2
  %i.mj = lshr i32 %i.jh, 4
  %i.mk = or i32 %i.mj, %i.mi
  %i.ml = trunc i32 %i.mk to i8
  %i.mm = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 2
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !38
  %i.mn = shl i32 %i.jg, 4
  %i.mo = lshr i32 %i.kp, 2
  %i.mp = or i32 %i.mo, %i.mn
  %i.mq = trunc i32 %i.mp to i8
  %i.mr = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 3
  store i8 %i.mq, ptr %i.mr, align 1, !tbaa !38
  %i.ms = shl i32 %i.ko, 6
  %i.mt = or i32 %i.kr, %i.ms
  %i.mu = trunc i32 %i.mt to i8
  %i.mv = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 4
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !38
  %i.mw = shl i32 %i.ku, 2
  %i.mx = lshr i32 %i.jy, 4
  %i.my = or i32 %i.mx, %i.mw
  %i.mz = trunc i32 %i.my to i8
  %i.na = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 5
  store i8 %i.mz, ptr %i.na, align 1, !tbaa !38
  %i.nb = shl i32 %i.jx, 4
  %i.nc = extractelement <8 x i32> %i.lf, i64 0
  %i.nd = lshr i32 %i.nc, 2
  %i.ne = or i32 %i.nd, %i.nb
  %i.nf = trunc i32 %i.ne to i8
  %i.ng = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 6
  store i8 %i.nf, ptr %i.ng, align 1, !tbaa !38
  %i.nh = extractelement <8 x i32> %i.le, i64 0
  %i.ni = shl i32 %i.nh, 6
  %i.nj = extractelement <8 x i32> %i.lf, i64 1
  %i.nk = or i32 %i.nj, %i.ni
  %i.nl = trunc i32 %i.nk to i8
  %i.nm = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 7
  store i8 %i.nl, ptr %i.nm, align 1, !tbaa !38
  %i.nn = shufflevector <4 x i32> %i.jz, <4 x i32> poison, <8 x i32> <i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.no = shufflevector <8 x i32> %i.nn, <8 x i32> %i.lf, <4 x i32> <i32 10, i32 1, i32 2, i32 11>
  %i.np = shl <4 x i32> %i.no, <i32 2, i32 4, i32 6, i32 2>
  %i.nq = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 8
  %i.nr = lshr <4 x i32> %i.ka, <i32 4, i32 2, i32 0, i32 4>
  %i.ns = or <4 x i32> %i.nr, %i.np
  %i.nt = trunc <4 x i32> %i.ns to <4 x i8>
  store <4 x i8> %i.nt, ptr %i.nq, align 1, !tbaa !38
  %i.nu = extractelement <4 x i32> %i.jz, i64 3
  %i.nv = shl i32 %i.nu, 4
  %i.nw = extractelement <8 x i32> %i.lf, i64 4
  %i.nx = lshr i32 %i.nw, 2
  %i.ny = or i32 %i.nx, %i.nv
  %i.nz = trunc i32 %i.ny to i8
  %i.oa = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 12
  store i8 %i.nz, ptr %i.oa, align 1, !tbaa !38
  %i.ob = extractelement <8 x i32> %i.le, i64 4
  %i.oc = shl i32 %i.ob, 6
  %i.od = extractelement <8 x i32> %i.lf, i64 5
  %i.oe = or i32 %i.od, %i.oc
  %i.of = trunc i32 %i.oe to i8
  br label %pack.exit.us

pack.exit.us:                                     ; preds = %bb.cb, %bb.cc
  %.sink489.in.in = phi i16 [ %.sroa.0.1.i.us, %bb.cc ], [ %.sroa.0.0.i.us, %bb.cb ] ; 2 uses
  %.sink216.i.us = phi i64 [ 13, %bb.cc ], [ 2, %bb.cb ]
  %.sink.i.us = phi i8 [ %i.of, %bb.cc ], [ -4, %bb.cb ]
  %.071.i.us = phi i64 [ 14, %bb.cc ], [ 3, %bb.cb ] ; 2 uses
  %.sink = trunc i16 %.sink489.in.in to i8
  %.sink489.in = lshr i16 %.sink489.in.in, 8
  %.sink489 = trunc nuw i16 %.sink489.in to i8
  store i8 %.sink489, ptr %.2192303.us, align 1, !tbaa !38
  %i.og = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 1
  store i8 %.sink, ptr %i.og, align 1, !tbaa !38
  %i.oh = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 %.sink216.i.us
  store i8 %.sink.i.us, ptr %i.oh, align 1, !tbaa !38
  %i.oi = add i64 %.071.i.us, %.2187304.us        ; 4 uses
  %i.oj = add i64 %i.oi, 14
  %i.ok = load i64, ptr %i.t, align 8, !tbaa !39
  %.not221.us = icmp ugt i64 %i.oj, %i.ok
  br i1 %.not221.us, label %.thread247, label %bb.cd

bb.cd:                                            ; preds = %pack.exit.us
  %i.ol = getelementptr inbounds nuw i8, ptr %.2192303.us, i64 %.071.i.us ; 3 uses
  %i.om = add nuw nsw i32 %.0162309.us, 4         ; 2 uses
  %.not222.us = icmp slt i32 %i.om, %i.bk
  br i1 %.not222.us, label %bb.l, label %..thread_crit_edge.us, !llvm.loop !40

.preheader.us:                                    ; preds = %bb.l
  %i.on = xor i32 %.0162309.us, -1
  %i.oo = add nsw i32 %i.bk, %i.on                ; 4 uses
  %spec.select226.us = tail call i32 @llvm.smin.i32(i32 %i.oo, i32 0)
  %i.op = sext i32 %spec.select226.us to i64      ; 4 uses
  %i.oq = getelementptr inbounds [2 x i8], ptr %.0169305.us, i64 %i.op
  %i.or = load i16, ptr %i.oq, align 2, !tbaa !36
  %.sroa.0.0.insert.ext372 = zext i16 %i.or to i64
  %i.os = getelementptr inbounds [2 x i8], ptr %.2168306.us, i64 %i.op
  %i.ot = load i16, ptr %i.os, align 2, !tbaa !36
  %.sroa.19.8.insert.ext402 = zext i16 %i.ot to i64
  %i.ou = getelementptr inbounds [2 x i8], ptr %.2307.us, i64 %i.op
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !36
  %.sroa.36.16.insert.ext432 = zext i16 %i.ov to i64
  %i.ow = getelementptr inbounds [2 x i8], ptr %.1308.us, i64 %i.op
  %i.ox = load i16, ptr %i.ow, align 2, !tbaa !36
  %.sroa.53.24.insert.ext462 = zext i16 %i.ox to i64
  %spec.select226.us.1 = tail call i32 @llvm.smin.i32(i32 %i.oo, i32 1)
  %i.oy = sext i32 %spec.select226.us.1 to i64    ; 4 uses
  %i.oz = getelementptr inbounds [2 x i8], ptr %.0169305.us, i64 %i.oy
  %i.pa = load i16, ptr %i.oz, align 2, !tbaa !36
  %.sroa.0.2.insert.ext379 = zext i16 %i.pa to i64
  %.sroa.0.2.insert.shift380 = shl nuw nsw i64 %.sroa.0.2.insert.ext379, 16
  %.sroa.0.2.insert.insert382 = or disjoint i64 %.sroa.0.2.insert.shift380, %.sroa.0.0.insert.ext372
  %i.pb = getelementptr inbounds [2 x i8], ptr %.2168306.us, i64 %i.oy
  %i.pc = load i16, ptr %i.pb, align 2, !tbaa !36
  %.sroa.19.10.insert.ext409 = zext i16 %i.pc to i64
  %.sroa.19.10.insert.shift410 = shl nuw nsw i64 %.sroa.19.10.insert.ext409, 16
  %.sroa.19.10.insert.insert412 = or disjoint i64 %.sroa.19.10.insert.shift410, %.sroa.19.8.insert.ext402
  %i.pd = getelementptr inbounds [2 x i8], ptr %.2307.us, i64 %i.oy
  %i.pe = load i16, ptr %i.pd, align 2, !tbaa !36
  %.sroa.36.18.insert.ext439 = zext i16 %i.pe to i64
  %.sroa.36.18.insert.shift440 = shl nuw nsw i64 %.sroa.36.18.insert.ext439, 16
  %.sroa.36.18.insert.insert442 = or disjoint i64 %.sroa.36.18.insert.shift440, %.sroa.36.16.insert.ext432
  %i.pf = getelementptr inbounds [2 x i8], ptr %.1308.us, i64 %i.oy
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !36
  %.sroa.53.26.insert.ext469 = zext i16 %i.pg to i64
  %.sroa.53.26.insert.shift470 = shl nuw nsw i64 %.sroa.53.26.insert.ext469, 16
  %.sroa.53.26.insert.insert472 = or disjoint i64 %.sroa.53.26.insert.shift470, %.sroa.53.24.insert.ext462
  %spec.select226.us.2 = tail call i32 @llvm.smin.i32(i32 %i.oo, i32 2)
  %i.ph = sext i32 %spec.select226.us.2 to i64    ; 4 uses
  %i.pi = getelementptr inbounds [2 x i8], ptr %.0169305.us, i64 %i.ph
  %i.pj = load i16, ptr %i.pi, align 2, !tbaa !36
  %.sroa.0.4.insert.ext387 = zext i16 %i.pj to i64
  %.sroa.0.4.insert.shift388 = shl nuw nsw i64 %.sroa.0.4.insert.ext387, 32
  %.sroa.0.4.insert.insert390 = or disjoint i64 %.sroa.0.2.insert.insert382, %.sroa.0.4.insert.shift388
  %i.pk = getelementptr inbounds [2 x i8], ptr %.2168306.us, i64 %i.ph
  %i.pl = load i16, ptr %i.pk, align 2, !tbaa !36
  %.sroa.19.12.insert.ext417 = zext i16 %i.pl to i64
  %.sroa.19.12.insert.shift418 = shl nuw nsw i64 %.sroa.19.12.insert.ext417, 32
  %.sroa.19.12.insert.insert420 = or disjoint i64 %.sroa.19.10.insert.insert412, %.sroa.19.12.insert.shift418
  %i.pm = getelementptr inbounds [2 x i8], ptr %.2307.us, i64 %i.ph
  %i.pn = load i16, ptr %i.pm, align 2, !tbaa !36
  %.sroa.36.20.insert.ext447 = zext i16 %i.pn to i64
  %.sroa.36.20.insert.shift448 = shl nuw nsw i64 %.sroa.36.20.insert.ext447, 32
  %.sroa.36.20.insert.insert450 = or disjoint i64 %.sroa.36.18.insert.insert442, %.sroa.36.20.insert.shift448
  %i.po = getelementptr inbounds [2 x i8], ptr %.1308.us, i64 %i.ph
  %i.pp = load i16, ptr %i.po, align 2, !tbaa !36
  %.sroa.53.28.insert.ext477 = zext i16 %i.pp to i64
  %.sroa.53.28.insert.shift478 = shl nuw nsw i64 %.sroa.53.28.insert.ext477, 32
  %.sroa.53.28.insert.insert480 = or disjoint i64 %.sroa.53.26.insert.insert472, %.sroa.53.28.insert.shift478
  %spec.select226.us.3 = tail call i32 @llvm.smin.i32(i32 %i.oo, i32 3)
  %i.pq = sext i32 %spec.select226.us.3 to i64    ; 4 uses
  %i.pr = getelementptr inbounds [2 x i8], ptr %.0169305.us, i64 %i.pq
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !36
  %.sroa.0.6.insert.ext395 = zext i16 %i.ps to i64
  %.sroa.0.6.insert.shift396 = shl nuw i64 %.sroa.0.6.insert.ext395, 48
  %.sroa.0.6.insert.insert398 = or disjoint i64 %.sroa.0.4.insert.insert390, %.sroa.0.6.insert.shift396
  %i.pt = getelementptr inbounds [2 x i8], ptr %.2168306.us, i64 %i.pq
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !36
  %.sroa.19.14.insert.ext425 = zext i16 %i.pu to i64
  %.sroa.19.14.insert.shift426 = shl nuw i64 %.sroa.19.14.insert.ext425, 48
  %.sroa.19.14.insert.insert428 = or disjoint i64 %.sroa.19.12.insert.insert420, %.sroa.19.14.insert.shift426
  %i.pv = getelementptr inbounds [2 x i8], ptr %.2307.us, i64 %i.pq
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !36
  %.sroa.36.22.insert.ext455 = zext i16 %i.pw to i64
  %.sroa.36.22.insert.shift456 = shl nuw i64 %.sroa.36.22.insert.ext455, 48
  %.sroa.36.22.insert.insert458 = or disjoint i64 %.sroa.36.20.insert.insert450, %.sroa.36.22.insert.shift456
  %i.px = getelementptr inbounds [2 x i8], ptr %.1308.us, i64 %i.pq
  %i.py = load i16, ptr %i.px, align 2, !tbaa !36
  %.sroa.53.30.insert.ext485 = zext i16 %i.py to i64
  %.sroa.53.30.insert.shift486 = shl nuw i64 %.sroa.53.30.insert.ext485, 48
  %.sroa.53.30.insert.insert488 = or disjoint i64 %.sroa.53.28.insert.insert480, %.sroa.53.30.insert.shift486
  br label %.loopexit.us

..thread_crit_edge.us:                            ; preds = %bb.cd
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 4 ; 2 uses
  %2 = icmp slt i64 %indvars.iv.next364, %i.br
  br i1 %2, label %.lr.ph317.split.us, label %select.unfold, !llvm.loop !41

bb.ce:                                            ; preds = %bb.k
  %i.pz = add i64 %i.bt, %.0185323                ; 2 uses
  %i.qa = load i64, ptr %i.t, align 8, !tbaa !39
  %i.qb = icmp ugt i64 %i.pz, %i.qa
  br i1 %i.qb, label %.thread247, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0190322, ptr align 1 %.2183324, i64 %i.bt, i1 false)
  %i.qc = getelementptr inbounds nuw i8, ptr %.0190322, i64 %i.bt
  %i.qd = getelementptr inbounds nuw i8, ptr %.2183324, i64 %i.bt
  br label %.thread234

select.unfold:                                    ; preds = %..thread_crit_edge.us, %.lr.ph317, %.preheader261
  %.1191.lcssa = phi ptr [ %.0190322, %.preheader261 ], [ %.0190322, %.lr.ph317 ], [ %i.ol, %..thread_crit_edge.us ]
  %.1186.lcssa = phi i64 [ %.0185323, %.preheader261 ], [ %.0185323, %.lr.ph317 ], [ %i.oi, %..thread_crit_edge.us ]
  %i.qe = getelementptr inbounds nuw i8, ptr %.2183324, i64 %i.bt
  br label %.thread234

.thread234:                                       ; preds = %select.unfold, %bb.cf, %bb.j
  %.3184241 = phi ptr [ %.2183324, %bb.j ], [ %i.qd, %bb.cf ], [ %i.qe, %select.unfold ]
  %.5240 = phi i64 [ %.0185323, %bb.j ], [ %i.pz, %bb.cf ], [ %.1186.lcssa, %select.unfold ] ; 3 uses
  %.5195239 = phi ptr [ %.0190322, %bb.j ], [ %i.qc, %bb.cf ], [ %.1191.lcssa, %select.unfold ]
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %i.qf = load i16, ptr %i.q, align 8, !tbaa !18
  %i.qg = sext i16 %i.qf to i64
  %.not223 = icmp slt i64 %indvars.iv.next367, %i.qg
  br i1 %.not223, label %bb.j, label %.thread249, !llvm.loop !42

.thread249:                                       ; preds = %.thread234
  %i.qh = load i64, ptr %i.e, align 8, !tbaa !16  ; 2 uses
  %i.qi = icmp ugt i64 %.5240, %i.qh
  br i1 %i.qi, label %bb.cg, label %.thread249.thread

bb.cg:                                            ; preds = %.thread249
  %i.qj = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.qk = load ptr, ptr %i.h, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.qj, ptr align 1 %i.qk, i64 %i.qh, i1 false)
  %i.ql = load i64, ptr %i.e, align 8, !tbaa !16
  br label %.thread249.thread

.thread249.thread:                                ; preds = %._crit_edge300, %bb.cg, %.thread249
  %.7 = phi i64 [ %i.ql, %bb.cg ], [ %.5240, %.thread249 ], [ 0, %._crit_edge300 ]
  %i.qm = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %.7, ptr %i.qm, align 8, !tbaa !43
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
define hidden i32 @internal_exr_undo_b44(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !44   ; 2 uses
  %i.e = icmp sgt i16 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %compute_scratch_buffer_size.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i16 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !46
  br label %bb.b

._crit_edge.loopexit.i:                           ; preds = %bb.b
  %i.h = tail call i64 @llvm.umax.i64(i64 %i.z, i64 %4)
  br label %compute_scratch_buffer_size.exit

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %.02131.i = phi i64 [ 0, %.lr.ph.i ], [ %i.z, %bb.b ]
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %i.g, i64 %indvars.iv.i ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load <2 x i32>, ptr %i.j, align 8, !tbaa !47 ; 3 uses
  %i.l = srem <2 x i32> %i.k, splat (i32 4)       ; 2 uses
  %i.m = icmp eq <2 x i32> %i.l, zeroinitializer
  %i.n = add <2 x i32> %i.k, splat (i32 4)
  %i.o = sub <2 x i32> %i.n, %i.l
  %i.p = select <2 x i1> %i.m, <2 x i32> %i.k, <2 x i32> %i.o ; 2 uses
  %i.q = extractelement <2 x i32> %i.p, i64 0
  %i.r = sext i32 %i.q to i64
  %i.s = extractelement <2 x i32> %i.p, i64 1
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 25
  %i.v = load i8, ptr %i.u, align 1, !tbaa !29
  %i.w = sext i8 %i.v to i64
  %i.x = mul nsw i64 %i.t, %i.w
  %i.y = mul i64 %i.x, %i.r
  %i.z = add i64 %i.y, %.02131.i                  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.b, !llvm.loop !48

compute_scratch_buffer_size.exit:                 ; preds = %bb.a, %._crit_edge.loopexit.i
  %.021.lcssa.i = phi i64 [ %4, %bb.a ], [ %i.h, %._crit_edge.loopexit.i ]
  %i.aa = tail call i32 @internal_decode_alloc_buffer(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i64 noundef %.021.lcssa.i) #5 ; 2 uses
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %compute_scratch_buffer_size.exit
  tail call void (...) @exrcore_ensure_b44_tables() #5
  %i.ab = tail call fastcc i32 @uncompress_b44_impl(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4)
  br label %bb.d

bb.d:                                             ; preds = %compute_scratch_buffer_size.exit, %bb.c
  %.0 = phi i32 [ %i.ab, %bb.c ], [ %i.aa, %compute_scratch_buffer_size.exit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @internal_decode_alloc_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @exrcore_ensure_b44_tables(...) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @uncompress_b44_impl(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) %3, i64 noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i16], align 16              ; 39 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i16, ptr %i.d, align 8, !tbaa !44   ; 2 uses
  %.not199355 = icmp sgt i16 %i.e, 0
  br i1 %.not199355, label %.lr.ph, label %.critedge.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.8..8..8..sroa_idx495 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx503 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx508 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.10..10..10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.18..18..18..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %.26..26..26..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.20..20..20..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.28..28..28..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.14..14..14..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.22..22..22..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %.16..16..16..sroa_idx502 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.16..16..16..sroa_idx501 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.2..2..2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.6..6..6..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.8..8..8..sroa_idx496 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.10..10..10..sroa_idx497 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.12..12..12..sroa_idx498 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.14..14..14..sroa_idx499 = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.16..16..16..sroa_idx504 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.18..18..18..sroa_idx505 = getelementptr inbounds nuw i8, ptr %i.a, i64 18
  %.20..20..20..sroa_idx506 = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.22..22..22..sroa_idx507 = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %.24..24..24..sroa_idx509 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.26..26..26..sroa_idx510 = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  %.28..28..28..sroa_idx511 = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.30..30..30..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.8..8..8..sroa_idx494 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx500 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.b

.critedge.preheader:                              ; preds = %.thread298, %bb.a
  %i.g = phi i16 [ %i.e, %bb.a ], [ %i.la, %.thread298 ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !50   ; 2 uses
  %.not202367 = icmp sgt i32 %i.i, 0
  br i1 %.not202367, label %.lr.ph371, label %.critedge206

.lr.ph371:                                        ; preds = %.critedge.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.t

bb.b:                                             ; preds = %.lr.ph, %.thread298
  %indvars.iv379 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next380, %.thread298 ] ; 2 uses
  %.0151359 = phi i64 [ 0, %.lr.ph ], [ %.5156305, %.thread298 ] ; 5 uses
  %.0163357 = phi ptr [ %i.c, %.lr.ph ], [ %.1164304, %.thread298 ] ; 5 uses
  %.0171356 = phi ptr [ %1, %.lr.ph ], [ %.5176303, %.thread298 ] ; 6 uses
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.m = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv379 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !25   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !28   ; 3 uses
  %i.r = sext i32 %i.q to i64                     ; 4 uses
end_hunk_1
