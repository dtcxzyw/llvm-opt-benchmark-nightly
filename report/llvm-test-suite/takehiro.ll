Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/takehiro?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 22
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.scalefac_struct = type { [23 x i32], [14 x i32] }
%struct.huffcodetab = type { i32, i32, ptr, ptr }
%struct.gr_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, [4 x i32] }

@subdv_table = dso_local local_unnamed_addr global [23 x %struct.anon] [%struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon zeroinitializer, %struct.anon { i32 0, i32 1 }, %struct.anon { i32 1, i32 1 }, %struct.anon { i32 1, i32 1 }, %struct.anon { i32 1, i32 2 }, %struct.anon { i32 2, i32 2 }, %struct.anon { i32 2, i32 3 }, %struct.anon { i32 2, i32 3 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 4, i32 5 }, %struct.anon { i32 4, i32 5 }, %struct.anon { i32 4, i32 6 }, %struct.anon { i32 5, i32 6 }, %struct.anon { i32 5, i32 6 }, %struct.anon { i32 5, i32 7 }, %struct.anon { i32 6, i32 7 }, %struct.anon { i32 6, i32 7 }], align 16
@ipow20 = external local_unnamed_addr global [256 x double], align 16
@scalefac_band = external local_unnamed_addr global %struct.scalefac_struct, align 4
@huf_tbl_noESC = internal unnamed_addr constant [15 x i32] [i32 1, i32 2, i32 5, i32 7, i32 7, i32 10, i32 10, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13, i32 13], align 16
@ht = external local_unnamed_addr global [34 x %struct.huffcodetab], align 16
@cb_esc_buf = internal global [288 x i32] zeroinitializer, align 16
@cb_esc_end = internal unnamed_addr global ptr null, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @count_bits(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 0, ptr %i.b, align 4, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !36
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw [8 x i8], ptr @ipow20, i64 %i.e
  %i.g = load double, ptr %i.f, align 8, !tbaa !38
  %i.h = fdiv double 8.206000e+03, %i.g           ; 6 uses
  br label %bb.h

bb.b:                                             ; preds = %bb.h
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load double, ptr %i.j, align 8, !tbaa !38
  %i.l = fcmp ogt double %i.k, %i.h
  br i1 %i.l, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load double, ptr %i.n, align 8, !tbaa !38
  %i.p = fcmp ogt double %i.o, %i.h
  br i1 %i.p, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !38
  %i.t = fcmp ogt double %i.s, %i.h
  br i1 %i.t, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load double, ptr %i.v, align 8, !tbaa !38
  %i.x = fcmp ogt double %i.w, %i.h
  br i1 %i.x, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.aa = load double, ptr %i.z, align 8, !tbaa !38
  %i.ab = fcmp ogt double %i.aa, %i.h
  br i1 %i.ab, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6 ; 2 uses
  %exitcond.not.5 = icmp eq i64 %indvars.iv.next.5, 576
  br i1 %exitcond.not.5, label %bb.i, label %bb.h, !llvm.loop !30

bb.h:                                             ; preds = %bb.g, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.5, %bb.g ] ; 7 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !38
  %i.ae = fcmp ogt double %i.ad, %i.h
  br i1 %i.ae, label %.loopexit, label %bb.b

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !39
  %.not = icmp eq i32 %i.ag, 0
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @quantize_xrpow(ptr noundef nonnull %2, ptr noundef %1, ptr noundef %3) #6
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  tail call void @quantize_xrpow_ISO(ptr noundef nonnull %2, ptr noundef %1, ptr noundef %3) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !40 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.al = call fastcc i32 @choose_table_short(ptr noundef %1, ptr noundef nonnull %i.ak, ptr noundef %i.b)
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.al, ptr %i.am, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 2304
  %i.ao = call fastcc i32 @choose_table_short(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.an, ptr noundef %i.b)
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 288, ptr %i.aq, align 4, !tbaa !17
  %.pre33 = load i32, ptr %i.b, align 4, !tbaa !8
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  br label %bb.r

bb.o:                                             ; preds = %bb.r
  %i.ar = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i36, -4 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = or i32 %i.av, %i.at
  %.not.i.1 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.1, label %bb.p, label %bb.s, !llvm.loop !31

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.ay = getelementptr i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i36, -6 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8
  %i.bc = or i32 %i.bb, %i.az
  %.not.i.2 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.2, label %bb.q, label %bb.s, !llvm.loop !31

bb.q:                                             ; preds = %bb.p
  %4 = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %5 = getelementptr i8, ptr %4, i64 -4
  %6 = load i32, ptr %5, align 4, !tbaa !8
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i36, -8 ; 3 uses
  %7 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.3
  %8 = load i32, ptr %7, align 4, !tbaa !8
  %9 = or i32 %8, %6
  %.not.i.3 = icmp eq i32 %9, 0
  br i1 %.not.i.3, label %10, label %bb.s, !llvm.loop !31

10:                                               ; preds = %bb.q
  %.not129.i.3 = icmp eq i64 %indvars.iv.next.i.3, 0
  br i1 %.not129.i.3, label %.thread130.i, label %bb.r, !llvm.loop !31

.thread130.i:                                     ; preds = %10
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.bd, align 8, !tbaa !41
  br label %.thread.i

bb.r:                                             ; preds = %10, %bb.n
  %indvars.iv.i36 = phi i64 [ 576, %bb.n ], [ %indvars.iv.next.i.3, %10 ] ; 6 uses
  %i.be = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.i36
  %i.bf = getelementptr i8, ptr %i.be, i64 -4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i36, -2 ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8
  %i.bj = or i32 %i.bi, %i.bg
  %.not.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i, label %bb.o, label %bb.s, !llvm.loop !31

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.r
  %indvars.iv.i36.lcssa = phi i64 [ %indvars.iv.i36, %bb.r ], [ %indvars.iv.next.i, %bb.o ], [ %indvars.iv.next.i.1, %bb.p ], [ %indvars.iv.next.i.2, %bb.q ] ; 2 uses
  %i.bk = trunc nuw nsw i64 %indvars.iv.i36.lcssa to i32 ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !41
  %i.bm = icmp sgt i64 %indvars.iv.i36.lcssa, 3
  br i1 %i.bm, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.s
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 784), align 16
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %.lr.ph.i
  %.093112.i = phi i32 [ 0, %.lr.ph.i ], [ %i.co, %bb.u ] ; 2 uses
  %.197111.i = phi i32 [ %i.bk, %.lr.ph.i ], [ %i.bw, %bb.u ] ; 4 uses
  %storemerge107110.i = phi i32 [ 0, %.lr.ph.i ], [ %storemerge108.i, %bb.u ] ; 2 uses
  %i.bo = zext nneg i32 %.197111.i to i64
  %i.bp = getelementptr [4 x i8], ptr %1, i64 %i.bo ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 -4
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !8  ; 4 uses
  %i.bs = getelementptr i8, ptr %i.bp, i64 -8
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !8  ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bp, i64 -12
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !8  ; 2 uses
  %i.bw = add nsw i32 %.197111.i, -4              ; 3 uses
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8  ; 3 uses
  %i.ca = or i32 %i.bt, %i.br
  %i.cb = or i32 %i.ca, %i.bv
  %i.cc = or i32 %i.cb, %i.bz
  %i.cd = icmp ugt i32 %i.cc, 1
  br i1 %i.cd, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = add nsw i32 %i.br, %storemerge107110.i
  %.not101.i = icmp ne i32 %i.bt, 0               ; 2 uses
  %i.cf = or disjoint i32 %i.br, 2
  %i.cg = zext i1 %.not101.i to i32
  %storemerge.i = add nsw i32 %i.ce, %i.cg
  %.090.i = select i1 %.not101.i, i32 %i.cf, i32 %i.br ; 2 uses
  %.not102.i = icmp ne i32 %i.bv, 0               ; 2 uses
  %i.ch = add nuw nsw i32 %.090.i, 4
  %i.ci = zext i1 %.not102.i to i32
  %.191.i = select i1 %.not102.i, i32 %i.ch, i32 %.090.i ; 2 uses
  %.not103.not.i = icmp eq i32 %i.bz, 0
  %i.cj = add nuw nsw i32 %.191.i, 8
  %storemerge109.i = add i32 %storemerge.i, %i.bz
  %storemerge108.i = add i32 %storemerge109.i, %i.ci ; 2 uses
  %.2.i = select i1 %.not103.not.i, i32 %.191.i, i32 %i.cj
  %i.ck = zext nneg i32 %.2.i to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !18
  %i.cn = zext i8 %i.cm to i32
  %i.co = add nuw nsw i32 %.093112.i, %i.cn       ; 2 uses
  %i.cp = icmp samesign ugt i32 %.197111.i, 7
  br i1 %i.cp, label %bb.t, label %.thread.i, !llvm.loop !32

.thread.i:                                        ; preds = %bb.u, %bb.t, %bb.s, %.thread130.i
  %.096.lcssa132.i = phi i32 [ %i.bk, %bb.s ], [ 0, %.thread130.i ], [ %i.bk, %bb.t ], [ %i.bk, %bb.u ] ; 2 uses
  %i.cq = phi i32 [ 0, %bb.s ], [ 0, %.thread130.i ], [ %storemerge108.i, %bb.u ], [ %storemerge107110.i, %bb.t ]
  %.197.lcssa.i = phi i32 [ %i.bk, %bb.s ], [ 0, %.thread130.i ], [ %i.bw, %bb.u ], [ %.197111.i, %bb.t ] ; 9 uses
  %.093.lcssa.i = phi i32 [ 0, %bb.s ], [ 0, %.thread130.i ], [ %i.co, %bb.u ], [ %.093112.i, %bb.t ] ; 2 uses
  %i.cr = sub i32 %.096.lcssa132.i, %.197.lcssa.i ; 2 uses
  %i.cs = icmp sge i32 %.093.lcssa.i, %i.cr
  %spec.select134.i = tail call i32 @llvm.smin.i32(i32 %.093.lcssa.i, i32 %i.cr)
  %spec.select135.i = zext i1 %i.cs to i32
  %.sink127.i = add nsw i32 %spec.select134.i, %i.cq ; 3 uses
  store i32 %.sink127.i, ptr %i.a, align 4, !tbaa !8
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 %spec.select135.i, ptr %i.ct, align 8, !tbaa !42
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 %.sink127.i, ptr %i.cu, align 8, !tbaa !43
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 %.197.lcssa.i, ptr %i.cv, align 4, !tbaa !17
  %i.cw = icmp eq i32 %.197.lcssa.i, 0
  br i1 %i.cw, label %count_bits_long.exit, label %bb.v

bb.v:                                             ; preds = %.thread.i
  %i.cx = icmp eq i32 %i.ai, 0
  br i1 %i.cx, label %.preheader.i, label %bb.ab

.preheader.i:                                     ; preds = %bb.v, %.preheader.i
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i, %.preheader.i ], [ 0, %bb.v ]
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1 ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv.next122.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8
  %i.da = icmp slt i32 %i.cz, %.197.lcssa.i
  br i1 %i.da, label %.preheader.i, label %bb.w, !llvm.loop !33

bb.w:                                             ; preds = %.preheader.i
  %i.db = getelementptr inbounds nuw [8 x i8], ptr @subdv_table, i64 %indvars.iv.next122.i ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !45
  %i.dd = sext i32 %i.dc to i64
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i, %bb.x ], [ %i.dd, %bb.w ] ; 4 uses
  %i.de = getelementptr [4 x i8], ptr @scalefac_band, i64 %indvars.iv124.i
  %i.df = getelementptr i8, ptr %i.de, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !8
  %i.dh = icmp sgt i32 %i.dg, %.197.lcssa.i
  %indvars.iv.next125.i = add nsw i64 %indvars.iv124.i, -1
  br i1 %i.dh, label %bb.x, label %bb.y, !llvm.loop !34

bb.y:                                             ; preds = %bb.x
  %i.di = trunc nsw i64 %indvars.iv124.i to i32   ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.di, ptr %i.dj, align 8, !tbaa !19
  %i.dk = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !46
  %i.dm = add i32 %i.di, 2
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.1.i = phi i32 [ %i.dl, %bb.y ], [ %i.ds, %bb.z ] ; 3 uses
  %i.dn = add i32 %i.dm, %.1.i
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !8
  %i.dr = icmp sgt i32 %i.dq, %.197.lcssa.i
  %i.ds = add nsw i32 %.1.i, -1
  br i1 %i.dr, label %bb.z, label %bb.aa, !llvm.loop !35

bb.aa:                                            ; preds = %bb.z
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %.1.i, ptr %i.dt, align 4, !tbaa !20
  %i.du = add i64 %indvars.iv124.i, 1
  %i.dv = and i64 %i.du, 4294967295
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !8
  %i.dy = load i32, ptr %i.dp, align 4, !tbaa !8
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %1, i64 %i.dz
  %i.eb = sext i32 %.197.lcssa.i to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eb
  %i.ed = call fastcc i32 @choose_table(ptr noundef readonly %i.ea, ptr noundef nonnull readonly %i.ec, ptr noundef %i.a)
  %i.ee = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.ed, ptr %i.ee, align 8, !tbaa !8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.v
  %i.ef = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 7, ptr %i.ef, align 8, !tbaa !19
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 13, ptr %i.eg, align 4, !tbaa !20
  %i.eh = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 32), align 4, !tbaa !8
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.eh, i32 %.197.lcssa.i)
  %.pre.i = sext i32 %.197.lcssa.i to i64
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.ab ], [ %i.dz, %bb.aa ]
  %.3.i = phi i32 [ %spec.select.i, %bb.ab ], [ %i.dx, %bb.aa ]
  %i.ei = sext i32 %.3.i to i64
  %i.ej = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ei ; 2 uses
  %i.ek = call fastcc i32 @choose_table(ptr noundef readonly %1, ptr noundef readonly %i.ej, ptr noundef %i.a)
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.ek, ptr %i.el, align 8, !tbaa !8
  %i.em = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre-phi.i
  %i.en = call fastcc i32 @choose_table(ptr noundef readonly %i.ej, ptr noundef readonly %i.em, ptr noundef %i.a)
  %i.eo = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.en, ptr %i.eo, align 4, !tbaa !8
  %.098.pre.i = load i32, ptr %i.a, align 4, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !41
  %.pre32 = load i32, ptr %i.cv, align 4, !tbaa !17
  br label %count_bits_long.exit

count_bits_long.exit:                             ; preds = %.thread.i, %bb.ac
  %i.ep = phi i32 [ 0, %.thread.i ], [ %.pre32, %bb.ac ] ; 2 uses
  %i.eq = phi i32 [ %.096.lcssa132.i, %.thread.i ], [ %.pre, %bb.ac ]
  %.098.i = phi i32 [ %.sink127.i, %.thread.i ], [ %.098.pre.i, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.es = sub i32 %i.eq, %i.ep
  %i.et = lshr i32 %i.es, 2
  store i32 %i.et, ptr %i.er, align 8, !tbaa !41
  %i.eu = lshr i32 %i.ep, 1
  store i32 %i.eu, ptr %i.cv, align 4, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.h, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.m, %count_bits_long.exit
  %.027 = phi i32 [ %.pre33, %bb.m ], [ %.098.i, %count_bits_long.exit ], [ 100000, %bb.f ], [ 100000, %bb.e ], [ 100000, %bb.d ], [ 100000, %bb.c ], [ 100000, %bb.b ], [ 100000, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  ret i32 %.027
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @quantize_xrpow(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @quantize_xrpow_ISO(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @choose_table_short(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp ult ptr %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %.thread87

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = ptrtoaddr ptr %1 to i64
  %i.c = ptrtoaddr ptr %0 to i64
  %i.d = xor i64 %i.c, -1
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = lshr i64 %i.e, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.e, 56
  br i1 %min.iters.check, label %.lr.ph.i.preheader148, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.g, 4611686018427387896      ; 3 uses
  %i.h = shl i64 %n.vec, 3
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi135 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.j = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %0, i64 %i.j
  %i.k = getelementptr i8, ptr %0, i64 %i.j
  %next.gep136 = getelementptr i8, ptr %i.k, i64 32
  %wide.vec = load <8 x i32>, ptr %next.gep, align 4, !tbaa !8 ; 2 uses
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec137 = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %wide.vec138 = load <8 x i32>, ptr %next.gep136, align 4, !tbaa !8 ; 2 uses
  %strided.vec139 = shufflevector <8 x i32> %wide.vec138, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec140 = shufflevector <8 x i32> %wide.vec138, <8 x i32> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.l = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %strided.vec)
  %i.m = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi135, <4 x i32> %strided.vec139)
  %i.n = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.l, <4 x i32> %strided.vec137) ; 2 uses
  %i.o = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.m, <4 x i32> %strided.vec140) ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.n, <4 x i32> %i.o)
  %i.q = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %ix_max.exit, label %.lr.ph.i.preheader148

.lr.ph.i.preheader148:                            ; preds = %.lr.ph.i.preheader, %middle.block
  %.014.i.ph = phi i32 [ 0, %.lr.ph.i.preheader ], [ %i.q, %middle.block ]
  %.01013.i.ph = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader148, %.lr.ph.i
  %.014.i = phi i32 [ %.2.i, %.lr.ph.i ], [ %.014.i.ph, %.lr.ph.i.preheader148 ]
  %.01013.i = phi ptr [ %i.t, %.lr.ph.i ], [ %.01013.i.ph, %.lr.ph.i.preheader148 ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.01013.i, i64 4
  %i.s = load i32, ptr %.01013.i, align 4, !tbaa !8
  %spec.select.i = tail call i32 @llvm.smax.i32(i32 %.014.i, i32 %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %.01013.i, i64 8 ; 2 uses
  %i.u = load i32, ptr %i.r, align 4, !tbaa !8
  %.2.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %i.u) ; 2 uses
  %i.v = icmp ult ptr %i.t, %1
  br i1 %i.v, label %.lr.ph.i, label %ix_max.exit, !llvm.loop !48

end_hunk_0
