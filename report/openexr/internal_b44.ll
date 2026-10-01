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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !40
  %i.g = tail call i32 @internal_encode_alloc_buffer(ptr noundef %0, i32 noundef 3, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i64 noundef %i.f) #5 ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %.thread247

bb.b:                                             ; preds = %bb.a
  tail call void (...) @exrcore_ensure_b44_tables() #5
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !41   ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph299, label %.._crit_edge300_crit_edge

.._crit_edge300_crit_edge:                        ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre492.a = load i16, ptr %.phi.trans.insert, align 8, !tbaa !42
  br label %._crit_edge300

.lr.ph299:                                        ; preds = %bb.b
  %i.l = load ptr, ptr %i.h, align 8, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.pre = load i16, ptr %i.n, align 8, !tbaa !42  ; 2 uses
  br label %bb.c

._crit_edge300:                                   ; preds = %._crit_edge, %.._crit_edge300_crit_edge
  %i.p = phi i16 [ %.pre492.a, %.._crit_edge300_crit_edge ], [ %i.ad, %._crit_edge ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not223321 = icmp sgt i16 %i.p, 0
  br i1 %.not223321, label %.lr.ph328, label %.thread249.thread

.lr.ph328:                                        ; preds = %._crit_edge300
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !44
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
  %i.y = load i32, ptr %i.m, align 8, !tbaa !45
  %i.z = add nsw i32 %i.y, %.0173297
  %i.aa = icmp sgt i16 %i.x, 0
  br i1 %i.aa, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.ab = load ptr, ptr %i.c, align 8, !tbaa !44
  %.pre491 = load ptr, ptr %i.o, align 8, !tbaa !46
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre491.a = load i32, ptr %i.i, align 4, !tbaa !41
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ac = phi i32 [ %i.v, %bb.c ], [ %.pre491.a, %._crit_edge.loopexit ] ; 2 uses
  %i.ad = phi i16 [ %i.w, %bb.c ], [ %i.bd, %._crit_edge.loopexit ] ; 2 uses
  %i.ae = phi i16 [ %i.x, %bb.c ], [ %i.bd, %._crit_edge.loopexit ]
  %.1178.lcssa = phi ptr [ %.0177296, %bb.c ], [ %.2179, %._crit_edge.loopexit ]
  %i.af = add nuw nsw i32 %.0173297, 1            ; 2 uses
  %i.ag = icmp slt i32 %i.af, %i.ac
  br i1 %i.ag, label %bb.c, label %._crit_edge300, !llvm.loop !32

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %i.ah = phi i16 [ %i.w, %.lr.ph.preheader ], [ %i.bd, %bb.i ] ; 2 uses
  %2 = phi ptr [ %.pre491, %.lr.ph.preheader ], [ %3, %bb.i ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %.0181293.a = phi ptr [ %.0177296, %.lr.ph.preheader ], [ %.2179, %bb.i ] ; 4 uses
  %.0181293 = phi ptr [ %i.ab, %.lr.ph.preheader ], [ %.1182, %bb.i ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [48 x i8], ptr %2, i64 %indvars.iv ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !19
  %i.an = sext i32 %i.ak to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 25
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !20
  %i.aq = sext i8 %i.ap to i64
  %i.ar = mul nsw i64 %i.aq, %i.an                ; 4 uses
  %i.as = sext i32 %i.am to i64
  %i.at = mul i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.av = getelementptr inbounds nuw i8, ptr %i.ai, i64 20
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !21 ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 1
  br i1 %i.ax, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ay = srem i32 %i.z, %i.aw
  %.not224 = icmp eq i32 %i.ay, 0
  br i1 %.not224, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %.0181293, i64 %i.at
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ba = udiv i32 %.0173297, %i.aw
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g
  %.pn225.in = phi i32 [ %i.ba, %bb.g ], [ %.0173297, %bb.d ]
  %.pn225 = zext i32 %.pn225.in to i64
  %.pn = mul i64 %i.ar, %.pn225
  %.0180 = getelementptr inbounds nuw i8, ptr %.0181293, i64 %.pn
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0180, ptr align 1 %.0181293.a, i64 %i.ar, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %.0181293.a, i64 %i.ar
  %i.bc = getelementptr inbounds nuw i8, ptr %.0181293, i64 %i.at
  %.pre490 = load ptr, ptr %i.o, align 8, !tbaa !46
  %.pre490.a = load i16, ptr %i.n, align 8, !tbaa !42
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.h, %bb.f
  %i.bd = phi i16 [ %.pre490.a, %bb.h ], [ %i.ah, %bb.f ], [ %i.ah, %.lr.ph ] ; 4 uses
  %3 = phi ptr [ %.pre490, %bb.h ], [ %2, %bb.f ], [ %2, %.lr.ph ]
  %.1182 = phi ptr [ %i.bc, %bb.h ], [ %i.az, %bb.f ], [ %.0181293, %.lr.ph ]
  %.2179 = phi ptr [ %i.bb, %bb.h ], [ %.0181293.a, %bb.f ], [ %.0181293.a, %.lr.ph ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.be = sext i16 %i.bd to i64
  %i.bf = icmp slt i64 %indvars.iv.next, %i.be
  br i1 %i.bf, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !33

bb.j:                                             ; preds = %.lr.ph328, %.thread234
  %indvars.iv366 = phi i64 [ 0, %.lr.ph328 ], [ %indvars.iv.next367, %.thread234 ] ; 2 uses
  %.2183324 = phi ptr [ %i.r, %.lr.ph328 ], [ %.3184241, %.thread234 ] ; 5 uses
  %.0185323 = phi i64 [ 0, %.lr.ph328 ], [ %.5240, %.thread234 ] ; 5 uses
  %.0190322 = phi ptr [ %i.b, %.lr.ph328 ], [ %.5195239, %.thread234 ] ; 6 uses
  %i.bg = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.bh = getelementptr inbounds nuw [48 x i8], ptr %i.bg, i64 %indvars.iv366 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !18 ; 5 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !19 ; 3 uses
  %i.bm = sext i32 %i.bj to i64                   ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 25
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !20
  %i.bp = sext i8 %i.bo to i64
  %i.bq = sext i32 %i.bl to i64                   ; 4 uses
  %i.br = mul nsw i64 %i.bq, %i.bm
  %i.bs = mul i64 %i.br, %i.bp                    ; 6 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %.thread234, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 26
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !22
  %.not214 = icmp eq i16 %i.bv, 1
  br i1 %.not214, label %.preheader261, label %bb.ce

.preheader261:                                    ; preds = %bb.k
  %i.bw = icmp sgt i32 %i.bl, 0
  br i1 %i.bw, label %.lr.ph317, label %select.unfold

.lr.ph317:                                        ; preds = %.preheader261
  %.not222302 = icmp sgt i32 %i.bj, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  br i1 %.not222302, label %.lr.ph317.split.us.preheader, label %select.unfold

.lr.ph317.split.us.preheader:                     ; preds = %.lr.ph317
  %invariant.op = add nsw i64 %i.bq, -3
  %invariant.op537 = add nsw i64 %i.bq, -1
  %invariant.op538 = add nsw i64 %i.bq, -2
  br label %.lr.ph317.split.us

.lr.ph317.split.us:                               ; preds = %.lr.ph317.split.us.preheader, %..thread_crit_edge.us
  %indvars.iv363 = phi i64 [ 0, %.lr.ph317.split.us.preheader ], [ %indvars.iv.next364, %..thread_crit_edge.us ] ; 5 uses
  %.1186315.us = phi i64 [ %.0185323, %.lr.ph317.split.us.preheader ], [ %i.oh, %..thread_crit_edge.us ]
  %.1191314.us = phi ptr [ %.0190322, %.lr.ph317.split.us.preheader ], [ %i.ok, %..thread_crit_edge.us ]
  %i.by = mul nuw nsw i64 %indvars.iv363, %i.bm
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %.2183324, i64 %i.by ; 3 uses
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.bm ; 3 uses
  %i.cb = getelementptr inbounds nuw [2 x i8], ptr %i.ca, i64 %i.bm ; 3 uses
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr %i.cb, i64 %i.bm
  %.not215.us = icmp slt i64 %indvars.iv363, %invariant.op ; 3 uses
  %.not216.us = icmp slt i64 %indvars.iv363, %invariant.op537
  %spec.select.us = select i1 %.not216.us, ptr %i.ca, ptr %i.bz ; 2 uses
  %.not217.us = icmp slt i64 %indvars.iv363, %invariant.op538
  %.0164.us = select i1 %.not217.us, ptr %i.cb, ptr %spec.select.us ; 2 uses
  %.1167.us = select i1 %.not215.us, ptr %i.ca, ptr %spec.select.us
  %.1165.us = select i1 %.not215.us, ptr %i.cb, ptr %.0164.us
  %.0163.us = select i1 %.not215.us, ptr %i.cc, ptr %.0164.us
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph317.split.us, %bb.cd
  %.0162309.us = phi i32 [ 0, %.lr.ph317.split.us ], [ %i.ol, %bb.cd ] ; 3 uses
  %.1308.us = phi ptr [ %.0163.us, %.lr.ph317.split.us ], [ %i.cl, %bb.cd ] ; 6 uses
  %.2307.us = phi ptr [ %.1165.us, %.lr.ph317.split.us ], [ %i.ck, %bb.cd ] ; 6 uses
  %.2168306.us = phi ptr [ %.1167.us, %.lr.ph317.split.us ], [ %i.cj, %bb.cd ] ; 6 uses
  %.0169305.us = phi ptr [ %i.bz, %.lr.ph317.split.us ], [ %i.ci, %bb.cd ] ; 6 uses
  %.2187304.us = phi i64 [ %.1186315.us, %.lr.ph317.split.us ], [ %i.oh, %bb.cd ]
  %.2192303.us = phi ptr [ %.1191314.us, %.lr.ph317.split.us ], [ %i.ok, %bb.cd ] ; 12 uses
  %i.cd = or disjoint i32 %.0162309.us, 3
  %.not218.us = icmp slt i32 %i.cd, %i.bj
  br i1 %.not218.us, label %bb.m, label %.preheader.us

bb.m:                                             ; preds = %bb.l
  %i.ce = load i64, ptr %.0169305.us, align 2
  %i.cf = load i64, ptr %.2168306.us, align 2
  %i.cg = load i64, ptr %.2307.us, align 2
  %i.ch = load i64, ptr %.1308.us, align 2
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.preheader.us, %bb.m
  %.sroa.53.0 = phi i64 [ %i.ch, %bb.m ], [ %.sroa.53.30.insert.insert488, %.preheader.us ] ; 5 uses
  %.sroa.36.0 = phi i64 [ %i.cg, %bb.m ], [ %.sroa.36.22.insert.insert458, %.preheader.us ] ; 5 uses
  %.sroa.19.0 = phi i64 [ %i.cf, %bb.m ], [ %.sroa.19.14.insert.insert428, %.preheader.us ] ; 5 uses
  %.sroa.0.0 = phi i64 [ %i.ce, %bb.m ], [ %.sroa.0.6.insert.insert398, %.preheader.us ] ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.0169305.us, i64 8
  %i.cj = getelementptr inbounds nuw i8, ptr %.2168306.us, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %.2307.us, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %.1308.us, i64 8
  %i.cm = load i8, ptr %i.bx, align 8, !tbaa !23
  %.not219.not.us = icmp eq i8 %i.cm, 0           ; 2 uses
  br i1 %.not219.not.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit.us
  %i.cn = load ptr, ptr @exrcore_expTable, align 8, !tbaa !25 ; 16 uses
  %i.co = and i64 %.sroa.0.0, 65535
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.co
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !26
  %.sroa.0.0.insert.ext = zext i16 %i.cq to i64
  %.sroa.0.2.extract.shift = lshr i64 %.sroa.0.0, 16
  %i.cr = and i64 %.sroa.0.2.extract.shift, 65535
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.cr
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !26
  %.sroa.0.2.insert.ext = zext i16 %i.ct to i64
  %.sroa.0.2.insert.shift = shl nuw nsw i64 %.sroa.0.2.insert.ext, 16
  %i.cu = or disjoint i64 %.sroa.0.2.insert.shift, %.sroa.0.0.insert.ext
  %.sroa.0.4.extract.shift = lshr i64 %.sroa.0.0, 32
  %i.cv = and i64 %.sroa.0.4.extract.shift, 65535
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !26
  %.sroa.0.4.insert.ext = zext i16 %i.cx to i64
  %.sroa.0.4.insert.shift = shl nuw nsw i64 %.sroa.0.4.insert.ext, 32
  %i.cy = or disjoint i64 %i.cu, %.sroa.0.4.insert.shift
  %.sroa.0.6.extract.shift = lshr i64 %.sroa.0.0, 48
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %.sroa.0.6.extract.shift
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !26
  %.sroa.0.6.insert.ext = zext i16 %i.da to i64
  %.sroa.0.6.insert.shift = shl nuw i64 %.sroa.0.6.insert.ext, 48
  %.sroa.0.6.insert.insert = or disjoint i64 %i.cy, %.sroa.0.6.insert.shift
  %i.db = and i64 %.sroa.19.0, 65535
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.db
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !26
  %.sroa.19.8.insert.ext = zext i16 %i.dd to i64
  %.sroa.19.10.extract.shift = lshr i64 %.sroa.19.0, 16
  %i.de = and i64 %.sroa.19.10.extract.shift, 65535
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !26
  %.sroa.19.10.insert.ext = zext i16 %i.dg to i64
  %.sroa.19.10.insert.shift = shl nuw nsw i64 %.sroa.19.10.insert.ext, 16
  %i.dh = or disjoint i64 %.sroa.19.10.insert.shift, %.sroa.19.8.insert.ext
  %.sroa.19.12.extract.shift = lshr i64 %.sroa.19.0, 32
  %i.di = and i64 %.sroa.19.12.extract.shift, 65535
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.di
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !26
  %.sroa.19.12.insert.ext = zext i16 %i.dk to i64
  %.sroa.19.12.insert.shift = shl nuw nsw i64 %.sroa.19.12.insert.ext, 32
  %i.dl = or disjoint i64 %i.dh, %.sroa.19.12.insert.shift
  %.sroa.19.14.extract.shift = lshr i64 %.sroa.19.0, 48
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %.sroa.19.14.extract.shift
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !26
  %.sroa.19.14.insert.ext = zext i16 %i.dn to i64
  %.sroa.19.14.insert.shift = shl nuw i64 %.sroa.19.14.insert.ext, 48
  %.sroa.19.14.insert.insert = or disjoint i64 %i.dl, %.sroa.19.14.insert.shift
  %i.do = and i64 %.sroa.36.0, 65535
  %i.dp = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.do
  %i.dq = load i16, ptr %i.dp, align 2, !tbaa !26
  %.sroa.36.16.insert.ext = zext i16 %i.dq to i64
  %.sroa.36.18.extract.shift = lshr i64 %.sroa.36.0, 16
  %i.dr = and i64 %.sroa.36.18.extract.shift, 65535
  %i.ds = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.dr
  %i.dt = load i16, ptr %i.ds, align 2, !tbaa !26
  %.sroa.36.18.insert.ext = zext i16 %i.dt to i64
  %.sroa.36.18.insert.shift = shl nuw nsw i64 %.sroa.36.18.insert.ext, 16
  %i.du = or disjoint i64 %.sroa.36.18.insert.shift, %.sroa.36.16.insert.ext
  %.sroa.36.20.extract.shift = lshr i64 %.sroa.36.0, 32
  %i.dv = and i64 %.sroa.36.20.extract.shift, 65535
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.dv
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !26
  %.sroa.36.20.insert.ext = zext i16 %i.dx to i64
  %.sroa.36.20.insert.shift = shl nuw nsw i64 %.sroa.36.20.insert.ext, 32
  %i.dy = or disjoint i64 %i.du, %.sroa.36.20.insert.shift
  %.sroa.36.22.extract.shift = lshr i64 %.sroa.36.0, 48
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %.sroa.36.22.extract.shift
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !26
  %.sroa.36.22.insert.ext = zext i16 %i.ea to i64
  %.sroa.36.22.insert.shift = shl nuw i64 %.sroa.36.22.insert.ext, 48
  %.sroa.36.22.insert.insert = or disjoint i64 %i.dy, %.sroa.36.22.insert.shift
  %i.eb = and i64 %.sroa.53.0, 65535
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !26
  %.sroa.53.24.insert.ext = zext i16 %i.ed to i64
  %.sroa.53.26.extract.shift = lshr i64 %.sroa.53.0, 16
  %i.ee = and i64 %.sroa.53.26.extract.shift, 65535
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.ee
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !26
  %.sroa.53.26.insert.ext = zext i16 %i.eg to i64
  %.sroa.53.26.insert.shift = shl nuw nsw i64 %.sroa.53.26.insert.ext, 16
  %i.eh = or disjoint i64 %.sroa.53.26.insert.shift, %.sroa.53.24.insert.ext
  %.sroa.53.28.extract.shift = lshr i64 %.sroa.53.0, 32
  %i.ei = and i64 %.sroa.53.28.extract.shift, 65535
  %i.ej = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %i.ei
  %i.ek = load i16, ptr %i.ej, align 2, !tbaa !26
  %.sroa.53.28.insert.ext = zext i16 %i.ek to i64
  %.sroa.53.28.insert.shift = shl nuw nsw i64 %.sroa.53.28.insert.ext, 32
  %i.el = or disjoint i64 %i.eh, %.sroa.53.28.insert.shift
  %.sroa.53.30.extract.shift = lshr i64 %.sroa.53.0, 48
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %i.cn, i64 %.sroa.53.30.extract.shift
  %i.en = load i16, ptr %i.em, align 2, !tbaa !26
  %.sroa.53.30.insert.ext = zext i16 %i.en to i64
  %.sroa.53.30.insert.shift = shl nuw i64 %.sroa.53.30.insert.ext, 48
  %.sroa.53.30.insert.insert = or disjoint i64 %i.el, %.sroa.53.30.insert.shift
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.loopexit.us
  %.sroa.53.1 = phi i64 [ %.sroa.53.0, %.loopexit.us ], [ %.sroa.53.30.insert.insert, %bb.n ] ; 5 uses
end_hunk_0
