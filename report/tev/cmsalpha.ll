Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsalpha?download=true
inline.NumInlined: 19
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_cmsGetFormatterAlpha.FormattersAlpha = internal unnamed_addr constant [6 x [6 x ptr]] [[6 x ptr] [ptr @copy8, ptr @from8to16, ptr @from8to16SE, ptr @from8toHLF, ptr @from8toFLT, ptr @from8toDBL], [6 x ptr] [ptr @from16to8, ptr @copy16, ptr @from16to16, ptr @from16toHLF, ptr @from16toFLT, ptr @from16toDBL], [6 x ptr] [ptr @from16SEto8, ptr @from16to16, ptr @copy16, ptr @from16SEtoHLF, ptr @from16SEtoFLT, ptr @from16SEtoDBL], [6 x ptr] [ptr @fromHLFto8, ptr @fromHLFto16, ptr @fromHLFto16SE, ptr @copy16, ptr @fromHLFtoFLT, ptr @fromHLFtoDBL], [6 x ptr] [ptr @fromFLTto8, ptr @fromFLTto16, ptr @fromFLTto16SE, ptr @fromFLTtoHLF, ptr @copy32, ptr @fromFLTtoDBL], [6 x ptr] [ptr @fromDBLto8, ptr @fromDBLto16, ptr @fromDBLto16SE, ptr @fromDBLtoHLF, ptr @fromDBLtoFLT, ptr @copy64]], align 16
@.str = private unnamed_addr constant [33 x i8] c"Unrecognized alpha channel width\00", align 1

; Function Attrs: nounwind uwtable
define void @_cmsHandleExtraChannels(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 18 uses
  %i.b = alloca [16 x i32], align 16              ; 5 uses
  %i.c = alloca [16 x i32], align 16              ; 18 uses
  %i.d = alloca [16 x i32], align 16              ; 5 uses
  %i.e = alloca [16 x ptr], align 16              ; 17 uses
  %i.f = alloca [16 x ptr], align 16              ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.h = load i32, ptr %i.g, align 8, !tbaa !30
  %i.i = and i32 %i.h, 67108864
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i32, ptr %0, align 8, !tbaa !31     ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !32   ; 5 uses
  %i.m = icmp eq i32 %i.j, %i.l
  %i.n = icmp eq ptr %1, %2
  %or.cond = and i1 %i.n, %i.m
  br i1 %or.cond, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i32 %i.j, 7
  %i.p = and i32 %i.o, 7                          ; 24 uses
  %i.q = lshr i32 %i.l, 7
  %i.r = and i32 %i.q, 7
  %.not79 = icmp ne i32 %i.p, %i.r
  %i.s = icmp eq i32 %i.p, 0
  %or.cond82 = or i1 %i.s, %.not79
  br i1 %or.cond82, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = load i32, ptr %i.t, align 4, !tbaa !34
  %i.v = call fastcc i32 @ComputeComponentIncrements(i32 noundef %i.j, i32 noundef %i.u, ptr noundef %i.a, ptr noundef %i.b)
  %.not80 = icmp eq i32 %i.v, 0
  br i1 %.not80, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !35
  %i.y = call fastcc i32 @ComputeComponentIncrements(i32 noundef %i.l, i32 noundef %i.x, ptr noundef %i.c, ptr noundef %i.d)
  %.not81 = icmp eq i32 %i.y, 0
  br i1 %.not81, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = and i32 %i.j, 4194311                   ; 2 uses
  switch i32 %i.ab, label %bb.h [
    i32 4194304, label %FormatterPos.exit.i
    i32 4194306, label %.fold.split.i.i
    i32 4194308, label %.fold.split24.i.i
    i32 2, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.ac = and i32 %i.j, 2048
  %.not16.i.i = icmp eq i32 %i.ac, 0
  %..i.i = select i1 %.not16.i.i, i32 1, i32 2
  br label %FormatterPos.exit.i

bb.h:                                             ; preds = %bb.f
  %or.cond22.i.i = icmp ne i32 %i.ab, 1
  %spec.select.i.i = sext i1 %or.cond22.i.i to i32
  br label %FormatterPos.exit.i

.fold.split.i.i:                                  ; preds = %bb.f
  br label %FormatterPos.exit.i

.fold.split24.i.i:                                ; preds = %bb.f
  br label %FormatterPos.exit.i

FormatterPos.exit.i:                              ; preds = %.fold.split24.i.i, %.fold.split.i.i, %bb.h, %bb.g, %bb.f
  %.0.i.i = phi i32 [ 3, %.fold.split.i.i ], [ 5, %bb.f ], [ %..i.i, %bb.g ], [ %spec.select.i.i, %bb.h ], [ 4, %.fold.split24.i.i ] ; 2 uses
  %i.ad = and i32 %i.l, 4194311                   ; 2 uses
  switch i32 %i.ad, label %bb.j [
    i32 4194304, label %FormatterPos.exit23.i
    i32 4194306, label %.fold.split.i20.i
    i32 4194308, label %.fold.split24.i19.i
    i32 2, label %bb.i
  ]

bb.i:                                             ; preds = %FormatterPos.exit.i
  %i.ae = and i32 %i.l, 2048
  %.not16.i16.i = icmp eq i32 %i.ae, 0
  %..i17.i = select i1 %.not16.i16.i, i32 1, i32 2
  br label %FormatterPos.exit23.i

bb.j:                                             ; preds = %FormatterPos.exit.i
  %or.cond22.i21.i = icmp ne i32 %i.ad, 1
  %spec.select.i22.i = sext i1 %or.cond22.i21.i to i32
  br label %FormatterPos.exit23.i

.fold.split.i20.i:                                ; preds = %FormatterPos.exit.i
  br label %FormatterPos.exit23.i

.fold.split24.i19.i:                              ; preds = %FormatterPos.exit.i
  br label %FormatterPos.exit23.i

FormatterPos.exit23.i:                            ; preds = %.fold.split24.i19.i, %.fold.split.i20.i, %bb.j, %bb.i, %FormatterPos.exit.i
  %.0.i18.i = phi i32 [ 3, %.fold.split.i20.i ], [ 5, %FormatterPos.exit.i ], [ %..i17.i, %bb.i ], [ %spec.select.i22.i, %bb.j ], [ 4, %.fold.split24.i19.i ] ; 2 uses
  %i.af = or i32 %.0.i18.i, %.0.i.i
  %or.cond.not.i = icmp sgt i32 %i.af, -1
  br i1 %or.cond.not.i, label %_cmsGetFormatterAlpha.exit.a, label %_cmsGetFormatterAlpha.exit.thread

_cmsGetFormatterAlpha.exit.thread:                ; preds = %FormatterPos.exit23.i
  tail call void (ptr, i32, ptr, ...) @cmsSignalError(ptr noundef %i.aa, i32 noundef 8, ptr noundef nonnull @.str) #7
  br label %.loopexit

_cmsGetFormatterAlpha.exit.a:                     ; preds = %FormatterPos.exit23.i
  %i.ag = zext nneg i32 %.0.i.i to i64
  %i.ah = getelementptr inbounds nuw [48 x i8], ptr @_cmsGetFormatterAlpha.FormattersAlpha, i64 %i.ag
  %i.ai = zext nneg i32 %.0.i18.i to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !37 ; 3 uses
  %6 = icmp eq ptr %i.ak, null
  br i1 %6, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %_cmsGetFormatterAlpha.exit.a
  %i.al = icmp eq i32 %i.p, 1
  br i1 %i.al, label %.preheader, label %bb.m

.preheader:                                       ; preds = %bb.k
  %.not118.a = icmp eq i32 %4, 0
  br i1 %.not118.a, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %.preheader
  %i.am = load i32, ptr %i.a, align 16, !tbaa !10
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 %i.an
  %i.ap = load i32, ptr %i.c, align 16, !tbaa !10
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.aq
  %.not119 = icmp eq i32 %3, 0
  %i.as = load i32, ptr %i.b, align 16
  %i.at = zext i32 %i.as to i64
  %i.au = load i32, ptr %i.d, align 16
  %i.av = zext i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 4
  br i1 %.not119, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph112, %._crit_edge
  %.0111 = phi i64 [ %i.bh, %._crit_edge ], [ 0, %.lr.ph112 ] ; 2 uses
  %.070110 = phi i64 [ %i.be, %._crit_edge ], [ 0, %.lr.ph112 ] ; 2 uses
  %.075109 = phi i32 [ %i.bi, %._crit_edge ], [ 0, %.lr.ph112 ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.070110
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.0111
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.l
  %.071108 = phi ptr [ %i.ay, %.lr.ph ], [ %i.ba, %bb.l ] ; 2 uses
  %.072107 = phi ptr [ %i.ax, %.lr.ph ], [ %i.az, %bb.l ] ; 2 uses
  %.074106 = phi i32 [ 0, %.lr.ph ], [ %i.bb, %bb.l ]
  tail call void %i.ak(ptr noundef %.071108, ptr noundef %.072107) #7
  %i.az = getelementptr inbounds nuw i8, ptr %.072107, i64 %i.at
  %i.ba = getelementptr inbounds nuw i8, ptr %.071108, i64 %i.av
  %i.bb = add nuw i32 %.074106, 1                 ; 2 uses
  %exitcond145.not.a = icmp eq i32 %i.bb, %3
  br i1 %exitcond145.not.a, label %._crit_edge, label %bb.l, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.l
  %i.bc = load i32, ptr %5, align 4, !tbaa !38
  %i.bd = zext i32 %i.bc to i64
  %i.be = add i64 %.070110, %i.bd
  %i.bf = load i32, ptr %i.aw, align 4, !tbaa !39
  %i.bg = zext i32 %i.bf to i64
  %i.bh = add i64 %.0111, %i.bg
  %i.bi = add nuw i32 %.075109, 1                 ; 2 uses
  %exitcond146.not = icmp eq i32 %i.bi, %4
  br i1 %exitcond146.not, label %.loopexit, label %.lr.ph, !llvm.loop !19

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %.not113 = icmp eq i32 %4, 0
  br i1 %.not113, label %._crit_edge96, label %.preheader87.lr.ph

.preheader87.lr.ph:                               ; preds = %bb.m
  %.not115 = icmp eq i32 %3, 0
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  br i1 %.not115, label %.preheader87.lr.ph.split.split.us, label %.preheader87.us.preheader

.preheader87.us.preheader:                        ; preds = %.preheader87.lr.ph
  %wide.trip.count125 = zext nneg i32 %i.p to i64
  %i.bk = load i32, ptr %i.a, align 16, !tbaa !10
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 %i.bl
  %i.bn = load i32, ptr %i.c, align 16, !tbaa !10
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.br = load i32, ptr %i.bq, align 4
  %i.bs = zext i32 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %exitcond.not.1 = icmp eq i32 %i.p, 2
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %exitcond.not.2 = icmp eq i32 %i.p, 3
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %exitcond.not.3 = icmp eq i32 %i.p, 4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cv = load i32, ptr %i.cu, align 16
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 %i.cw
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cz = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.da = load i32, ptr %i.cz, align 16
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %exitcond.not.4 = icmp eq i32 %i.p, 5
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.df = load i32, ptr %i.de, align 4
  %i.dg = zext i32 %i.df to i64
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.dj = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.dk = load i32, ptr %i.dj, align 4
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %i.dl
  %i.dn = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %exitcond.not.5 = icmp eq i32 %i.p, 6
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.dp = load i32, ptr %i.do, align 8
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.du = load i32, ptr %i.dt, align 8
  %i.dv = zext i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %exitcond132.not.1 = icmp eq i32 %i.p, 2
  %exitcond132.not.2 = icmp eq i32 %i.p, 3
  %exitcond132.not.3 = icmp eq i32 %i.p, 4
  %exitcond132.not.4 = icmp eq i32 %i.p, 5
  %exitcond132.not.5 = icmp eq i32 %i.p, 6
  br label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %._crit_edge94.us, %.preheader87.us.preheader
  %.sroa.0200.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %i.fo, %._crit_edge94.us ] ; 2 uses
  %.sroa.9204.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %i.fq, %._crit_edge94.us ] ; 2 uses
  %.sroa.15208.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %.sroa.15208.1, %._crit_edge94.us ] ; 3 uses
  %.sroa.21212.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %.sroa.21212.1, %._crit_edge94.us ] ; 4 uses
  %.sroa.27216.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %.sroa.27216.1, %._crit_edge94.us ] ; 5 uses
  %.sroa.33220.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %.sroa.33220.1, %._crit_edge94.us ] ; 6 uses
  %.sroa.39224.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %.sroa.39224.1, %._crit_edge94.us ] ; 7 uses
  %.sroa.0.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %i.fp, %._crit_edge94.us ] ; 2 uses
  %.sroa.9.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %i.fr, %._crit_edge94.us ] ; 2 uses
  %.sroa.15.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %.sroa.15.1, %._crit_edge94.us ] ; 3 uses
  %.sroa.21.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %.sroa.21.1, %._crit_edge94.us ] ; 4 uses
  %.sroa.27.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %.sroa.27.1, %._crit_edge94.us ] ; 5 uses
  %.sroa.33.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %.sroa.33.1, %._crit_edge94.us ] ; 6 uses
  %.sroa.39.0 = phi i64 [ 0, %.preheader87.us.preheader ], [ %.sroa.39.1, %._crit_edge94.us ] ; 7 uses
  %.17695.us = phi i32 [ 0, %.preheader87.us.preheader ], [ %i.fi, %._crit_edge94.us ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.0200.0
  store ptr %i.dy, ptr %i.e, align 16, !tbaa !41
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.sroa.0.0
  store ptr %i.dz, ptr %i.f, align 16, !tbaa !41
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bt, i64 %.sroa.9204.0
  store ptr %i.ea, ptr %i.bu, align 8, !tbaa !41
  %i.eb = getelementptr inbounds nuw i8, ptr %i.by, i64 %.sroa.9.0
  store ptr %i.eb, ptr %i.bz, align 8, !tbaa !41
  br i1 %exitcond.not.1, label %.preheader84.us.preheader, label %.lr.ph.us.2

.lr.ph.us.2:                                      ; preds = %.lr.ph.us.preheader
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sroa.15208.0
  store ptr %i.ec, ptr %i.ce, align 16, !tbaa !41
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.sroa.15.0
  store ptr %i.ed, ptr %i.cj, align 16, !tbaa !41
  br i1 %exitcond.not.2, label %.preheader84.us.preheader, label %.lr.ph.us.3

.lr.ph.us.3:                                      ; preds = %.lr.ph.us.2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.sroa.21212.0
  store ptr %i.ee, ptr %i.co, align 8, !tbaa !41
  %i.ef = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.sroa.21.0
  store ptr %i.ef, ptr %i.ct, align 8, !tbaa !41
  br i1 %exitcond.not.3, label %.preheader84.us.preheader, label %.lr.ph.us.4

.lr.ph.us.4:                                      ; preds = %.lr.ph.us.3
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.sroa.27216.0
  store ptr %i.eg, ptr %i.cy, align 16, !tbaa !41
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.sroa.27.0
  store ptr %i.eh, ptr %i.dd, align 16, !tbaa !41
  br i1 %exitcond.not.4, label %.preheader84.us.preheader, label %.lr.ph.us.5

.lr.ph.us.5:                                      ; preds = %.lr.ph.us.4
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.sroa.33220.0
  store ptr %i.ei, ptr %i.di, align 8, !tbaa !41
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.sroa.33.0
  store ptr %i.ej, ptr %i.dn, align 8, !tbaa !41
  br i1 %exitcond.not.5, label %.preheader84.us.preheader, label %.lr.ph.us.6

.lr.ph.us.6:                                      ; preds = %.lr.ph.us.5
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dr, i64 %.sroa.39224.0
  store ptr %i.ek, ptr %i.ds, align 16, !tbaa !41
  %i.el = getelementptr inbounds nuw i8, ptr %i.dw, i64 %.sroa.39.0
  store ptr %i.el, ptr %i.dx, align 16, !tbaa !41
  br label %.preheader84.us.preheader

.preheader84.us.preheader:                        ; preds = %.lr.ph.us.6, %.lr.ph.us.5, %.lr.ph.us.4, %.lr.ph.us.3, %.lr.ph.us.2, %.lr.ph.us.preheader
  br label %.preheader84.us

bb.n:                                             ; preds = %.preheader84.us, %bb.n
  %indvars.iv122 = phi i64 [ 0, %.preheader84.us ], [ %indvars.iv.next123, %bb.n ] ; 5 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv122 ; 2 uses
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !41 ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv122 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !41 ; 2 uses
  tail call void %i.ak(ptr noundef %i.en, ptr noundef %i.ep) #7
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv122
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !10
  %i.es = zext i32 %i.er to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.es
  store ptr %i.et, ptr %i.eo, align 8, !tbaa !41
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv122
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !10
  %i.ew = zext i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 %i.ew
  store ptr %i.ex, ptr %i.em, align 8, !tbaa !41
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not.a = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not.a, label %._crit_edge.us, label %bb.n, !llvm.loop !20

bb.o:                                             ; preds = %.lr.ph93.us
  %i.ey = add i64 %.sroa.15208.0, %i.fl           ; 5 uses
  %i.ez = add i64 %.sroa.15.0, %i.fn              ; 5 uses
  br i1 %exitcond132.not.2, label %._crit_edge94.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fa = add i64 %.sroa.21212.0, %i.fl           ; 4 uses
  %i.fb = add i64 %.sroa.21.0, %i.fn              ; 4 uses
  br i1 %exitcond132.not.3, label %._crit_edge94.us, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.fc = add i64 %.sroa.27216.0, %i.fl           ; 3 uses
  %i.fd = add i64 %.sroa.27.0, %i.fn              ; 3 uses
  br i1 %exitcond132.not.4, label %._crit_edge94.us, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fe = add i64 %.sroa.33220.0, %i.fl           ; 2 uses
  %i.ff = add i64 %.sroa.33.0, %i.fn              ; 2 uses
  br i1 %exitcond132.not.5, label %._crit_edge94.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fg = add i64 %.sroa.39224.0, %i.fl
  %i.fh = add i64 %.sroa.39.0, %i.fn
  br label %._crit_edge94.us

._crit_edge94.us:                                 ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %.lr.ph93.us
  %.sroa.15208.1 = phi i64 [ %i.ey, %bb.s ], [ %.sroa.15208.0, %.lr.ph93.us ], [ %i.ey, %bb.o ], [ %i.ey, %bb.p ], [ %i.ey, %bb.q ], [ %i.ey, %bb.r ]
  %.sroa.21212.1 = phi i64 [ %i.fa, %bb.s ], [ %.sroa.21212.0, %.lr.ph93.us ], [ %.sroa.21212.0, %bb.o ], [ %i.fa, %bb.p ], [ %i.fa, %bb.q ], [ %i.fa, %bb.r ]
  %.sroa.27216.1 = phi i64 [ %i.fc, %bb.s ], [ %.sroa.27216.0, %.lr.ph93.us ], [ %.sroa.27216.0, %bb.o ], [ %.sroa.27216.0, %bb.p ], [ %i.fc, %bb.q ], [ %i.fc, %bb.r ]
  %.sroa.33220.1 = phi i64 [ %i.fe, %bb.s ], [ %.sroa.33220.0, %.lr.ph93.us ], [ %.sroa.33220.0, %bb.o ], [ %.sroa.33220.0, %bb.p ], [ %.sroa.33220.0, %bb.q ], [ %i.fe, %bb.r ]
  %.sroa.39224.1 = phi i64 [ %i.fg, %bb.s ], [ %.sroa.39224.0, %.lr.ph93.us ], [ %.sroa.39224.0, %bb.o ], [ %.sroa.39224.0, %bb.p ], [ %.sroa.39224.0, %bb.q ], [ %.sroa.39224.0, %bb.r ]
  %.sroa.15.1 = phi i64 [ %i.ez, %bb.s ], [ %.sroa.15.0, %.lr.ph93.us ], [ %i.ez, %bb.o ], [ %i.ez, %bb.p ], [ %i.ez, %bb.q ], [ %i.ez, %bb.r ]
  %.sroa.21.1 = phi i64 [ %i.fb, %bb.s ], [ %.sroa.21.0, %.lr.ph93.us ], [ %.sroa.21.0, %bb.o ], [ %i.fb, %bb.p ], [ %i.fb, %bb.q ], [ %i.fb, %bb.r ]
  %.sroa.27.1 = phi i64 [ %i.fd, %bb.s ], [ %.sroa.27.0, %.lr.ph93.us ], [ %.sroa.27.0, %bb.o ], [ %.sroa.27.0, %bb.p ], [ %i.fd, %bb.q ], [ %i.fd, %bb.r ]
  %.sroa.33.1 = phi i64 [ %i.ff, %bb.s ], [ %.sroa.33.0, %.lr.ph93.us ], [ %.sroa.33.0, %bb.o ], [ %.sroa.33.0, %bb.p ], [ %.sroa.33.0, %bb.q ], [ %i.ff, %bb.r ]
  %.sroa.39.1 = phi i64 [ %i.fh, %bb.s ], [ %.sroa.39.0, %.lr.ph93.us ], [ %.sroa.39.0, %bb.o ], [ %.sroa.39.0, %bb.p ], [ %.sroa.39.0, %bb.q ], [ %.sroa.39.0, %bb.r ]
  %i.fi = add nuw i32 %.17695.us, 1               ; 2 uses
  %exitcond133.not = icmp eq i32 %i.fi, %4
  br i1 %exitcond133.not, label %._crit_edge96, label %.lr.ph.us.preheader, !llvm.loop !21

.preheader84.us:                                  ; preds = %.preheader84.us.preheader, %._crit_edge.us
  %.291.us = phi i32 [ %i.fj, %._crit_edge.us ], [ 0, %.preheader84.us.preheader ]
  br label %bb.n

._crit_edge.us:                                   ; preds = %bb.n
  %i.fj = add nuw i32 %.291.us, 1                 ; 2 uses
  %exitcond127.not = icmp eq i32 %i.fj, %3
  br i1 %exitcond127.not, label %.lr.ph93.us, label %.preheader84.us, !llvm.loop !22

.lr.ph93.us:                                      ; preds = %._crit_edge.us
  %i.fk = load i32, ptr %5, align 4, !tbaa !38
  %i.fl = zext i32 %i.fk to i64                   ; 7 uses
  %i.fm = load i32, ptr %i.bj, align 4, !tbaa !39
  %i.fn = zext i32 %i.fm to i64                   ; 7 uses
  %i.fo = add i64 %.sroa.0200.0, %i.fl
  %i.fp = add i64 %.sroa.0.0, %i.fn
  %i.fq = add i64 %.sroa.9204.0, %i.fl
  %i.fr = add i64 %.sroa.9.0, %i.fn
  br i1 %exitcond132.not.1, label %._crit_edge94.us, label %bb.o

.preheader87.lr.ph.split.split.us:                ; preds = %.preheader87.lr.ph
  %i.fs = load i32, ptr %5, align 4, !tbaa !38
  %i.ft = zext i32 %i.fs to i64                   ; 7 uses
  %i.fu = load i32, ptr %i.bj, align 4, !tbaa !39
  %i.fv = zext i32 %i.fu to i64                   ; 7 uses
  %i.fw = load i32, ptr %i.a, align 16, !tbaa !10
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 %i.fx
  %i.fz = load i32, ptr %i.c, align 16, !tbaa !10
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %2, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gd = load i32, ptr %i.gc, align 4
  %i.ge = zext i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.gi = load i32, ptr %i.gh, align 4
  %i.gj = zext i32 %i.gi to i64
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 %i.gj
  %i.gl = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %exitcond138.not.1 = icmp eq i32 %i.p, 2
  %i.gm = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.gn = load i32, ptr %i.gm, align 8
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 %i.go
  %i.gq = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.gs = load i32, ptr %i.gr, align 8
  %i.gt = zext i32 %i.gs to i64
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %exitcond138.not.2 = icmp eq i32 %i.p, 3
  %i.gw = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.gx = load i32, ptr %i.gw, align 4
  %i.gy = zext i32 %i.gx to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.hc = load i32, ptr %i.hb, align 4
  %i.hd = zext i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw i8, ptr %2, i64 %i.hd
  %i.hf = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %exitcond138.not.3 = icmp eq i32 %i.p, 4
  %i.hg = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hh = load i32, ptr %i.hg, align 16
  %i.hi = zext i32 %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 %i.hi
  %i.hk = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.hm = load i32, ptr %i.hl, align 16
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %2, i64 %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %exitcond138.not.4 = icmp eq i32 %i.p, 5
  %i.hq = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.hr = load i32, ptr %i.hq, align 4
  %i.hs = zext i32 %i.hr to i64
  %i.ht = getelementptr inbounds nuw i8, ptr %1, i64 %i.hs
  %i.hu = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.hw = load i32, ptr %i.hv, align 4
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %exitcond138.not.5 = icmp eq i32 %i.p, 6
  %i.ia = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.ib = load i32, ptr %i.ia, align 8
  %i.ic = zext i32 %i.ib to i64
  %i.id = getelementptr inbounds nuw i8, ptr %1, i64 %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ig = load i32, ptr %i.if, align 8
  %i.ih = zext i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 %i.ih
  %i.ij = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %exitcond143.not.1 = icmp eq i32 %i.p, 2
  %exitcond143.not.2 = icmp eq i32 %i.p, 3
  %exitcond143.not.3 = icmp eq i32 %i.p, 4
  %exitcond143.not.4 = icmp eq i32 %i.p, 5
  %exitcond143.not.5 = icmp eq i32 %i.p, 6
  %.promoted = load ptr, ptr %i.gg, align 1
  %.promoted252.a = load ptr, ptr %i.gl, align 1
  %.promoted254.a = load ptr, ptr %i.gq, align 1
  %.promoted256.a = load ptr, ptr %i.gv, align 1
  %.promoted258.a = load ptr, ptr %i.ha, align 1
  %.promoted260.a = load ptr, ptr %i.hf, align 1
  %.promoted262.a = load ptr, ptr %i.hk, align 1
  %.promoted264.a = load ptr, ptr %i.hp, align 1
  %.promoted266.a = load ptr, ptr %i.hu, align 1
  %.promoted268.a = load ptr, ptr %i.hz, align 1
  %.promoted270.a = load ptr, ptr %i.ie, align 1
  %.promoted272 = load ptr, ptr %i.ij, align 1
  br label %.preheader87.us97.us

.preheader87.us97.us:                             ; preds = %._crit_edge94.us105.us, %.preheader87.lr.ph.split.split.us
  %i.ik = phi ptr [ %.promoted272, %.preheader87.lr.ph.split.split.us ], [ %i.jk, %._crit_edge94.us105.us ] ; 5 uses
  %i.il = phi ptr [ %.promoted270.a, %.preheader87.lr.ph.split.split.us ], [ %i.jl, %._crit_edge94.us105.us ] ; 5 uses
  %i.im = phi ptr [ %.promoted268.a, %.preheader87.lr.ph.split.split.us ], [ %i.jm, %._crit_edge94.us105.us ] ; 4 uses
  %i.in = phi ptr [ %.promoted266.a, %.preheader87.lr.ph.split.split.us ], [ %i.jn, %._crit_edge94.us105.us ] ; 4 uses
  %i.io = phi ptr [ %.promoted264.a, %.preheader87.lr.ph.split.split.us ], [ %i.jo, %._crit_edge94.us105.us ] ; 3 uses
  %i.ip = phi ptr [ %.promoted262.a, %.preheader87.lr.ph.split.split.us ], [ %i.jp, %._crit_edge94.us105.us ] ; 3 uses
  %i.iq = phi ptr [ %.promoted260.a, %.preheader87.lr.ph.split.split.us ], [ %i.jq, %._crit_edge94.us105.us ] ; 2 uses
  %i.ir = phi ptr [ %.promoted258.a, %.preheader87.lr.ph.split.split.us ], [ %i.jr, %._crit_edge94.us105.us ] ; 2 uses
  %i.is = phi ptr [ %.promoted256.a, %.preheader87.lr.ph.split.split.us ], [ %i.js, %._crit_edge94.us105.us ]
  %i.it = phi ptr [ %.promoted254.a, %.preheader87.lr.ph.split.split.us ], [ %i.jt, %._crit_edge94.us105.us ]
  %i.iu = phi ptr [ %.promoted252.a, %.preheader87.lr.ph.split.split.us ], [ %i.iz, %._crit_edge94.us105.us ] ; 0 uses
  %i.iv = phi ptr [ %.promoted, %.preheader87.lr.ph.split.split.us ], [ %i.iy, %._crit_edge94.us105.us ] ; 0 uses
  %.sroa.0200.1 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %i.ju, %._crit_edge94.us105.us ] ; 2 uses
  %.sroa.9204.2 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %i.jw, %._crit_edge94.us105.us ] ; 2 uses
  %.sroa.15208.2 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %.sroa.15208.3, %._crit_edge94.us105.us ] ; 3 uses
  %.sroa.21212.2 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %.sroa.21212.3, %._crit_edge94.us105.us ] ; 4 uses
  %.sroa.27216.2 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %.sroa.27216.3, %._crit_edge94.us105.us ] ; 5 uses
  %.sroa.33220.2 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %.sroa.33220.3, %._crit_edge94.us105.us ] ; 6 uses
  %.sroa.39224.2 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %.sroa.39224.3, %._crit_edge94.us105.us ] ; 7 uses
  %.sroa.0.1 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %i.jv, %._crit_edge94.us105.us ] ; 2 uses
  %.sroa.9.2 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %i.jx, %._crit_edge94.us105.us ] ; 2 uses
  %.sroa.15.2 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %.sroa.15.3, %._crit_edge94.us105.us ] ; 3 uses
  %.sroa.21.2 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %.sroa.21.3, %._crit_edge94.us105.us ] ; 4 uses
  %.sroa.27.2 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %.sroa.27.3, %._crit_edge94.us105.us ] ; 5 uses
  %.sroa.33.2 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %.sroa.33.3, %._crit_edge94.us105.us ] ; 6 uses
  %.sroa.39.2 = phi i64 [ 0, %.preheader87.lr.ph.split.split.us ], [ %.sroa.39.3, %._crit_edge94.us105.us ] ; 7 uses
  %.17695.us98.us = phi i32 [ 0, %.preheader87.lr.ph.split.split.us ], [ %i.ki, %._crit_edge94.us105.us ]
  %i.iw = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.sroa.0200.1
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gb, i64 %.sroa.0.1
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.sroa.9204.2 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.gk, i64 %.sroa.9.2 ; 2 uses
  br i1 %exitcond138.not.1, label %..preheader86_crit_edge.us101.us, label %bb.t

bb.t:                                             ; preds = %.preheader87.us97.us
  %i.ja = getelementptr inbounds nuw i8, ptr %i.gp, i64 %.sroa.15208.2 ; 5 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.gu, i64 %.sroa.15.2 ; 5 uses
  br i1 %exitcond138.not.2, label %..preheader86_crit_edge.us101.us, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.jc = getelementptr inbounds nuw i8, ptr %i.gz, i64 %.sroa.21212.2 ; 4 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.he, i64 %.sroa.21.2 ; 4 uses
  br i1 %exitcond138.not.3, label %..preheader86_crit_edge.us101.us, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.je = getelementptr inbounds nuw i8, ptr %i.hj, i64 %.sroa.27216.2 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.ho, i64 %.sroa.27.2 ; 3 uses
  br i1 %exitcond138.not.4, label %..preheader86_crit_edge.us101.us, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ht, i64 %.sroa.33220.2 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sroa.33.2 ; 2 uses
  br i1 %exitcond138.not.5, label %..preheader86_crit_edge.us101.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ji = getelementptr inbounds nuw i8, ptr %i.id, i64 %.sroa.39224.2
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.sroa.39.2
  br label %..preheader86_crit_edge.us101.us

..preheader86_crit_edge.us101.us:                 ; preds = %.preheader87.us97.us, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x
  %i.jk = phi ptr [ %i.jj, %bb.x ], [ %i.ik, %bb.w ], [ %i.ik, %bb.v ], [ %i.ik, %bb.u ], [ %i.ik, %bb.t ], [ %i.ik, %.preheader87.us97.us ] ; 2 uses
  %i.jl = phi ptr [ %i.ji, %bb.x ], [ %i.il, %bb.w ], [ %i.il, %bb.v ], [ %i.il, %bb.u ], [ %i.il, %bb.t ], [ %i.il, %.preheader87.us97.us ] ; 2 uses
  %i.jm = phi ptr [ %i.jh, %bb.x ], [ %i.jh, %bb.w ], [ %i.im, %bb.v ], [ %i.im, %bb.u ], [ %i.im, %bb.t ], [ %i.im, %.preheader87.us97.us ] ; 2 uses
  %i.jn = phi ptr [ %i.jg, %bb.x ], [ %i.jg, %bb.w ], [ %i.in, %bb.v ], [ %i.in, %bb.u ], [ %i.in, %bb.t ], [ %i.in, %.preheader87.us97.us ] ; 2 uses
  %i.jo = phi ptr [ %i.jf, %bb.x ], [ %i.jf, %bb.w ], [ %i.jf, %bb.v ], [ %i.io, %bb.u ], [ %i.io, %bb.t ], [ %i.io, %.preheader87.us97.us ] ; 2 uses
  %i.jp = phi ptr [ %i.je, %bb.x ], [ %i.je, %bb.w ], [ %i.je, %bb.v ], [ %i.ip, %bb.u ], [ %i.ip, %bb.t ], [ %i.ip, %.preheader87.us97.us ] ; 2 uses
  %i.jq = phi ptr [ %i.jd, %bb.x ], [ %i.jd, %bb.w ], [ %i.jd, %bb.v ], [ %i.jd, %bb.u ], [ %i.iq, %bb.t ], [ %i.iq, %.preheader87.us97.us ] ; 2 uses
  %i.jr = phi ptr [ %i.jc, %bb.x ], [ %i.jc, %bb.w ], [ %i.jc, %bb.v ], [ %i.jc, %bb.u ], [ %i.ir, %bb.t ], [ %i.ir, %.preheader87.us97.us ] ; 2 uses
  %i.js = phi ptr [ %i.jb, %bb.x ], [ %i.jb, %bb.w ], [ %i.jb, %bb.v ], [ %i.jb, %bb.u ], [ %i.jb, %bb.t ], [ %i.is, %.preheader87.us97.us ] ; 2 uses
  %i.jt = phi ptr [ %i.ja, %bb.x ], [ %i.ja, %bb.w ], [ %i.ja, %bb.v ], [ %i.ja, %bb.u ], [ %i.ja, %bb.t ], [ %i.it, %.preheader87.us97.us ] ; 2 uses
  %i.ju = add i64 %.sroa.0200.1, %i.ft
  %i.jv = add i64 %.sroa.0.1, %i.fv
  %i.jw = add i64 %.sroa.9204.2, %i.ft
  %i.jx = add i64 %.sroa.9.2, %i.fv
  br i1 %exitcond143.not.1, label %._crit_edge94.us105.us, label %..preheader86_crit_edge.us101.us.2

..preheader86_crit_edge.us101.us.2:               ; preds = %..preheader86_crit_edge.us101.us
  %i.jy = add i64 %.sroa.15208.2, %i.ft           ; 5 uses
  %i.jz = add i64 %.sroa.15.2, %i.fv              ; 5 uses
  br i1 %exitcond143.not.2, label %._crit_edge94.us105.us, label %..preheader86_crit_edge.us101.us.3

..preheader86_crit_edge.us101.us.3:               ; preds = %..preheader86_crit_edge.us101.us.2
  %i.ka = add i64 %.sroa.21212.2, %i.ft           ; 4 uses
  %i.kb = add i64 %.sroa.21.2, %i.fv              ; 4 uses
  br i1 %exitcond143.not.3, label %._crit_edge94.us105.us, label %..preheader86_crit_edge.us101.us.4

..preheader86_crit_edge.us101.us.4:               ; preds = %..preheader86_crit_edge.us101.us.3
  %i.kc = add i64 %.sroa.27216.2, %i.ft           ; 3 uses
  %i.kd = add i64 %.sroa.27.2, %i.fv              ; 3 uses
  br i1 %exitcond143.not.4, label %._crit_edge94.us105.us, label %..preheader86_crit_edge.us101.us.5

..preheader86_crit_edge.us101.us.5:               ; preds = %..preheader86_crit_edge.us101.us.4
  %i.ke = add i64 %.sroa.33220.2, %i.ft           ; 2 uses
  %i.kf = add i64 %.sroa.33.2, %i.fv              ; 2 uses
  br i1 %exitcond143.not.5, label %._crit_edge94.us105.us, label %..preheader86_crit_edge.us101.us.6

..preheader86_crit_edge.us101.us.6:               ; preds = %..preheader86_crit_edge.us101.us.5
  %i.kg = add i64 %.sroa.39224.2, %i.ft
  %i.kh = add i64 %.sroa.39.2, %i.fv
  br label %._crit_edge94.us105.us

._crit_edge94.us105.us:                           ; preds = %..preheader86_crit_edge.us101.us.6, %..preheader86_crit_edge.us101.us.5, %..preheader86_crit_edge.us101.us.4, %..preheader86_crit_edge.us101.us.3, %..preheader86_crit_edge.us101.us.2, %..preheader86_crit_edge.us101.us
  %.sroa.15208.3 = phi i64 [ %i.jy, %..preheader86_crit_edge.us101.us.6 ], [ %.sroa.15208.2, %..preheader86_crit_edge.us101.us ], [ %i.jy, %..preheader86_crit_edge.us101.us.2 ], [ %i.jy, %..preheader86_crit_edge.us101.us.3 ], [ %i.jy, %..preheader86_crit_edge.us101.us.4 ], [ %i.jy, %..preheader86_crit_edge.us101.us.5 ]
  %.sroa.21212.3 = phi i64 [ %i.ka, %..preheader86_crit_edge.us101.us.6 ], [ %.sroa.21212.2, %..preheader86_crit_edge.us101.us ], [ %.sroa.21212.2, %..preheader86_crit_edge.us101.us.2 ], [ %i.ka, %..preheader86_crit_edge.us101.us.3 ], [ %i.ka, %..preheader86_crit_edge.us101.us.4 ], [ %i.ka, %..preheader86_crit_edge.us101.us.5 ]
  %.sroa.27216.3 = phi i64 [ %i.kc, %..preheader86_crit_edge.us101.us.6 ], [ %.sroa.27216.2, %..preheader86_crit_edge.us101.us ], [ %.sroa.27216.2, %..preheader86_crit_edge.us101.us.2 ], [ %.sroa.27216.2, %..preheader86_crit_edge.us101.us.3 ], [ %i.kc, %..preheader86_crit_edge.us101.us.4 ], [ %i.kc, %..preheader86_crit_edge.us101.us.5 ]
  %.sroa.33220.3 = phi i64 [ %i.ke, %..preheader86_crit_edge.us101.us.6 ], [ %.sroa.33220.2, %..preheader86_crit_edge.us101.us ], [ %.sroa.33220.2, %..preheader86_crit_edge.us101.us.2 ], [ %.sroa.33220.2, %..preheader86_crit_edge.us101.us.3 ], [ %.sroa.33220.2, %..preheader86_crit_edge.us101.us.4 ], [ %i.ke, %..preheader86_crit_edge.us101.us.5 ]
  %.sroa.39224.3 = phi i64 [ %i.kg, %..preheader86_crit_edge.us101.us.6 ], [ %.sroa.39224.2, %..preheader86_crit_edge.us101.us ], [ %.sroa.39224.2, %..preheader86_crit_edge.us101.us.2 ], [ %.sroa.39224.2, %..preheader86_crit_edge.us101.us.3 ], [ %.sroa.39224.2, %..preheader86_crit_edge.us101.us.4 ], [ %.sroa.39224.2, %..preheader86_crit_edge.us101.us.5 ]
  %.sroa.15.3 = phi i64 [ %i.jz, %..preheader86_crit_edge.us101.us.6 ], [ %.sroa.15.2, %..preheader86_crit_edge.us101.us ], [ %i.jz, %..preheader86_crit_edge.us101.us.2 ], [ %i.jz, %..preheader86_crit_edge.us101.us.3 ], [ %i.jz, %..preheader86_crit_edge.us101.us.4 ], [ %i.jz, %..preheader86_crit_edge.us101.us.5 ]
  %.sroa.21.3 = phi i64 [ %i.kb, %..preheader86_crit_edge.us101.us.6 ], [ %.sroa.21.2, %..preheader86_crit_edge.us101.us ], [ %.sroa.21.2, %..preheader86_crit_edge.us101.us.2 ], [ %i.kb, %..preheader86_crit_edge.us101.us.3 ], [ %i.kb, %..preheader86_crit_edge.us101.us.4 ], [ %i.kb, %..preheader86_crit_edge.us101.us.5 ]
  %.sroa.27.3 = phi i64 [ %i.kd, %..preheader86_crit_edge.us101.us.6 ], [ %.sroa.27.2, %..preheader86_crit_edge.us101.us ], [ %.sroa.27.2, %..preheader86_crit_edge.us101.us.2 ], [ %.sroa.27.2, %..preheader86_crit_edge.us101.us.3 ], [ %i.kd, %..preheader86_crit_edge.us101.us.4 ], [ %i.kd, %..preheader86_crit_edge.us101.us.5 ]
  %.sroa.33.3 = phi i64 [ %i.kf, %..preheader86_crit_edge.us101.us.6 ], [ %.sroa.33.2, %..preheader86_crit_edge.us101.us ], [ %.sroa.33.2, %..preheader86_crit_edge.us101.us.2 ], [ %.sroa.33.2, %..preheader86_crit_edge.us101.us.3 ], [ %.sroa.33.2, %..preheader86_crit_edge.us101.us.4 ], [ %i.kf, %..preheader86_crit_edge.us101.us.5 ]
  %.sroa.39.3 = phi i64 [ %i.kh, %..preheader86_crit_edge.us101.us.6 ], [ %.sroa.39.2, %..preheader86_crit_edge.us101.us ], [ %.sroa.39.2, %..preheader86_crit_edge.us101.us.2 ], [ %.sroa.39.2, %..preheader86_crit_edge.us101.us.3 ], [ %.sroa.39.2, %..preheader86_crit_edge.us101.us.4 ], [ %.sroa.39.2, %..preheader86_crit_edge.us101.us.5 ]
  %i.ki = add nuw i32 %.17695.us98.us, 1          ; 2 uses
  %exitcond144.not = icmp eq i32 %i.ki, %4
  br i1 %exitcond144.not, label %._crit_edge96.loopexit, label %.preheader87.us97.us, !llvm.loop !21

._crit_edge96.loopexit:                           ; preds = %._crit_edge94.us105.us
  store ptr %i.iw, ptr %i.e, align 16, !tbaa !41
  store ptr %i.ix, ptr %i.f, align 16, !tbaa !41
  store ptr %i.iy, ptr %i.gg, align 1
  store ptr %i.iz, ptr %i.gl, align 1
  store ptr %i.jt, ptr %i.gq, align 1
  store ptr %i.js, ptr %i.gv, align 1
  store ptr %i.jr, ptr %i.ha, align 1
  store ptr %i.jq, ptr %i.hf, align 1
  store ptr %i.jp, ptr %i.hk, align 1
  store ptr %i.jo, ptr %i.hp, align 1
  store ptr %i.jn, ptr %i.hu, align 1
  store ptr %i.jm, ptr %i.hz, align 1
  store ptr %i.jl, ptr %i.ie, align 1
  store ptr %i.jk, ptr %i.ij, align 1
  br label %._crit_edge96

._crit_edge96:                                    ; preds = %._crit_edge94.us, %._crit_edge96.loopexit, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %.preheader, %.lr.ph112, %_cmsGetFormatterAlpha.exit.thread, %._crit_edge96, %_cmsGetFormatterAlpha.exit.a, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @ComputeComponentIncrements(i32 noundef %0, i32 noundef %1, ptr nofree noundef nonnull writeonly captures(none) %2, ptr nofree noundef nonnull writeonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 14 uses
  %i.b = alloca [16 x i32], align 16              ; 14 uses
  %i.c = and i32 %0, 4096
  %.not = icmp eq i32 %i.c, 0
  %i.d = lshr i32 %0, 7                           ; 3 uses
  %i.e = and i32 %i.d, 7                          ; 15 uses
  %i.f = lshr i32 %0, 3                           ; 3 uses
  %i.g = and i32 %i.f, 15
  %i.h = add nuw nsw i32 %i.g, %i.e               ; 16 uses
  %i.i = and i32 %0, 7                            ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  %..i.i8 = select i1 %i.j, i32 8, i32 %i.i       ; 11 uses
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.k = add nsw i32 %i.h, -16
  %or.cond.i = icmp ult i32 %i.k, -15
  br i1 %or.cond.i, label %ComputeIncrementsForPlanar.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %.not64.i = icmp eq i32 %i.e, 0                 ; 2 uses
  br i1 %.not64.i, label %.lr.ph54.i, label %.lr.ph.i

.lr.ph54.i:                                       ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %bb.c
  %i.l = and i32 %0, 1024
  %.not50.i = icmp eq i32 %i.l, 0
  %wide.trip.count79.i = zext nneg i32 %i.h to i64 ; 9 uses
  %min.iters.check32 = icmp samesign ult i32 %i.h, 8 ; 2 uses
  br i1 %.not50.i, label %.lr.ph54.split.us.i.preheader, label %.lr.ph54.split.i.preheader

.lr.ph54.split.i.preheader:                       ; preds = %.lr.ph54.i
  br i1 %min.iters.check32, label %.lr.ph54.split.i.preheader105, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph54.split.i.preheader
  %n.vec = and i64 %wide.trip.count79.i, 8        ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.h, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.m = xor <4 x i32> %vec.ind, splat (i32 -1)
  %i.n = add nsw <4 x i32> %broadcast.splat, %i.m
  %reass.sub = sub <4 x i32> %broadcast.splat, %vec.ind
  %i.o = add <4 x i32> %reass.sub, splat (i32 -5)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %i.n, ptr %i.p, align 16, !tbaa !10
  store <4 x i32> %i.o, ptr %i.q, align 16, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count79.i
  br i1 %cmp.n, label %._crit_edge.i, label %.lr.ph54.split.i.preheader105

.lr.ph54.split.i.preheader105:                    ; preds = %.lr.ph54.split.i.preheader, %middle.block
  %indvars.iv71.i.ph = phi i64 [ 0, %.lr.ph54.split.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph54.split.i

.lr.ph54.split.us.i.preheader:                    ; preds = %.lr.ph54.i
  br i1 %min.iters.check32, label %.lr.ph54.split.us.i.preheader104, label %vector.ph33

vector.ph33:                                      ; preds = %.lr.ph54.split.us.i.preheader
  %n.vec34 = and i64 %wide.trip.count79.i, 8      ; 3 uses
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph33
  %index36 = phi i64 [ 0, %vector.ph33 ], [ %index.next39, %vector.body35 ] ; 2 uses
  %vec.ind37 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph33 ], [ %vec.ind.next40, %vector.body35 ] ; 3 uses
  %step.add38 = add <4 x i32> %vec.ind37, splat (i32 4)
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index36 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <4 x i32> %vec.ind37, ptr %i.s, align 16, !tbaa !10
  store <4 x i32> %step.add38, ptr %i.t, align 16, !tbaa !10
  %index.next39 = add nuw i64 %index36, 8         ; 2 uses
  %vec.ind.next40 = add <4 x i32> %vec.ind37, splat (i32 8)
  %i.u = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.u, label %middle.block41, label %vector.body35, !llvm.loop !43

middle.block41:                                   ; preds = %vector.body35
  %cmp.n42 = icmp eq i64 %n.vec34, %wide.trip.count79.i
  br i1 %cmp.n42, label %._crit_edge.i, label %.lr.ph54.split.us.i.preheader104

.lr.ph54.split.us.i.preheader104:                 ; preds = %.lr.ph54.split.us.i.preheader, %middle.block41
  %indvars.iv76.i.ph = phi i64 [ 0, %.lr.ph54.split.us.i.preheader ], [ %n.vec34, %middle.block41 ]
  br label %.lr.ph54.split.us.i

.lr.ph54.split.us.i:                              ; preds = %.lr.ph54.split.us.i.preheader104, %.lr.ph54.split.us.i
  %indvars.iv76.i = phi i64 [ %indvars.iv.next77.i, %.lr.ph54.split.us.i ], [ %indvars.iv76.i.ph, %.lr.ph54.split.us.i.preheader104 ] ; 3 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv76.i
  %i.w = trunc nuw nsw i64 %indvars.iv76.i to i32
  store i32 %i.w, ptr %i.v, align 4, !tbaa !10
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond80.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count79.i
  br i1 %exitcond80.not.i, label %._crit_edge.i, label %.lr.ph54.split.us.i, !llvm.loop !44

.lr.ph.i:                                         ; preds = %bb.c
  store i32 %..i.i8, ptr %3, align 4, !tbaa !10
  %exitcond.not.i = icmp eq i32 %i.e, 1
  br i1 %exitcond.not.i, label %.lr.ph54.i, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 %..i.i8, ptr %i.x, align 4, !tbaa !10
  %exitcond.not.i.1 = icmp eq i32 %i.e, 2
  br i1 %exitcond.not.i.1, label %.lr.ph54.i, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %..i.i8, ptr %i.y, align 4, !tbaa !10
  %exitcond.not.i.2 = icmp eq i32 %i.e, 3
  br i1 %exitcond.not.i.2, label %.lr.ph54.i, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %..i.i8, ptr %i.z, align 4, !tbaa !10
  %exitcond.not.i.3 = icmp eq i32 %i.e, 4
  br i1 %exitcond.not.i.3, label %.lr.ph54.i, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 %..i.i8, ptr %i.aa, align 4, !tbaa !10
  %exitcond.not.i.4 = icmp eq i32 %i.e, 5
  br i1 %exitcond.not.i.4, label %.lr.ph54.i, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 20
  store i32 %..i.i8, ptr %i.ab, align 4, !tbaa !10
  %exitcond.not.i.5 = icmp eq i32 %i.e, 6
  br i1 %exitcond.not.i.5, label %.lr.ph54.i, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i32 %..i.i8, ptr %i.ac, align 4, !tbaa !10
  br label %.lr.ph54.i

.lr.ph54.split.i:                                 ; preds = %.lr.ph54.split.i.preheader105, %.lr.ph54.split.i
  %indvars.iv71.i = phi i64 [ %indvars.iv.next72.i, %.lr.ph54.split.i ], [ %indvars.iv71.i.ph, %.lr.ph54.split.i.preheader105 ] ; 3 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv71.i to i32
  %i.ae = xor i32 %i.ad, -1
  %i.af = add nsw i32 %i.h, %i.ae
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv71.i
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !10
  %indvars.iv.next72.i = add nuw nsw i64 %indvars.iv71.i, 1 ; 2 uses
  %exitcond75.not.i = icmp eq i64 %indvars.iv.next72.i, %wide.trip.count79.i
  br i1 %exitcond75.not.i, label %._crit_edge.i, label %.lr.ph54.split.i, !llvm.loop !45

._crit_edge.i:                                    ; preds = %.lr.ph54.split.i, %.lr.ph54.split.us.i, %middle.block, %middle.block41
  %i.ah = and i32 %0, 16384
  %.not.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i, label %.lr.ph61.preheader.i, label %bb.d

bb.d:                                             ; preds = %._crit_edge.i
  %i.ai = load i32, ptr %i.b, align 16, !tbaa !10
  %i.aj = add nsw i32 %i.h, -1                    ; 2 uses
  %.not66.i = icmp eq i32 %i.aj, 0
  br i1 %.not66.i, label %._crit_edge58.i, label %.lr.ph57.preheader.i

.lr.ph57.preheader.i:                             ; preds = %bb.d
  %scevgep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ak = zext nneg i32 %i.aj to i64              ; 2 uses
  %i.al = shl nuw nsw i64 %i.ak, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 4 %scevgep.i, i64 %i.al, i1 false), !tbaa !10
  br label %._crit_edge58.i

._crit_edge58.i:                                  ; preds = %.lr.ph57.preheader.i, %bb.d
  %.pre-phi.i = phi i64 [ %i.ak, %.lr.ph57.preheader.i ], [ 0, %bb.d ]
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.pre-phi.i
  store i32 %i.ai, ptr %i.am, align 4, !tbaa !10
  br label %.lr.ph61.preheader.i

.lr.ph61.preheader.i:                             ; preds = %._crit_edge58.i, %._crit_edge.i
  %min.iters.check45 = icmp samesign ult i32 %i.h, 8
  br i1 %min.iters.check45, label %.lr.ph61.i.preheader, label %vector.ph46

vector.ph46:                                      ; preds = %.lr.ph61.preheader.i
  %n.vec47 = and i64 %wide.trip.count79.i, 8      ; 3 uses
  %broadcast.splatinsert48 = insertelement <4 x i32> poison, i32 %1, i64 0
  %broadcast.splat49 = shufflevector <4 x i32> %broadcast.splatinsert48, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body50

end_hunk_0
