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
  br label %bb.s

bb.o:                                             ; preds = %bb.s
  %i.ar = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.as = getelementptr i8, ptr %i.ar, i64 -4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !8
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i36, -4 ; 3 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.av = load i32, ptr %i.au, align 4, !tbaa !8
  %i.aw = or i32 %i.av, %i.at
  %.not.i.1 = icmp eq i32 %i.aw, 0
  br i1 %.not.i.1, label %bb.p, label %bb.t, !llvm.loop !31

bb.p:                                             ; preds = %bb.o
  %i.ax = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.ay = getelementptr i8, ptr %i.ax, i64 -4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !8
  %indvars.iv.next.i.2 = add nsw i64 %indvars.iv.i36, -6 ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !8
  %i.bc = or i32 %i.bb, %i.az
  %.not.i.2 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.2, label %bb.q, label %bb.t, !llvm.loop !31

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.be = getelementptr i8, ptr %i.bd, i64 -4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !8
  %indvars.iv.next.i.3 = add nsw i64 %indvars.iv.i36, -8 ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i.3
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !8
  %i.bi = or i32 %i.bh, %i.bf
  %.not.i.3 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.3, label %bb.r, label %bb.t, !llvm.loop !31

bb.r:                                             ; preds = %bb.q
  %.not129.i.3 = icmp eq i64 %indvars.iv.next.i.3, 0
  br i1 %.not129.i.3, label %.thread130.i, label %bb.s, !llvm.loop !31

.thread130.i:                                     ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 0, ptr %i.bj, align 8, !tbaa !41
  br label %.thread.i

bb.s:                                             ; preds = %bb.r, %bb.n
  %indvars.iv.i36 = phi i64 [ 576, %bb.n ], [ %indvars.iv.next.i.3, %bb.r ] ; 6 uses
  %i.bk = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.i36
  %i.bl = getelementptr i8, ptr %i.bk, i64 -4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !8
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i36, -2 ; 3 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !8
  %i.bp = or i32 %i.bo, %i.bm
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %bb.o, label %bb.t, !llvm.loop !31

bb.t:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.s
  %indvars.iv.i36.lcssa = phi i64 [ %indvars.iv.i36, %bb.s ], [ %indvars.iv.next.i, %bb.o ], [ %indvars.iv.next.i.1, %bb.p ], [ %indvars.iv.next.i.2, %bb.q ] ; 2 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv.i36.lcssa to i32 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !41
  %i.bs = icmp sgt i64 %indvars.iv.i36.lcssa, 3
  br i1 %i.bs, label %.lr.ph.i, label %.thread.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @ht, i64 784), align 16
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph.i
  %.093112.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cu, %bb.v ] ; 2 uses
  %.197111.i = phi i32 [ %i.bq, %.lr.ph.i ], [ %i.cc, %bb.v ] ; 4 uses
  %storemerge107110.i = phi i32 [ 0, %.lr.ph.i ], [ %storemerge109.i, %bb.v ] ; 2 uses
  %i.bu = zext nneg i32 %.197111.i to i64
  %i.bv = getelementptr [4 x i8], ptr %1, i64 %i.bu ; 3 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8  ; 4 uses
  %i.by = getelementptr i8, ptr %i.bv, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !8  ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bv, i64 -12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8  ; 2 uses
  %i.cc = add nsw i32 %.197111.i, -4              ; 3 uses
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !8  ; 3 uses
  %i.cg = or i32 %i.bz, %i.bx
  %i.ch = or i32 %i.cg, %i.cb
  %i.ci = or i32 %i.ch, %i.cf
  %i.cj = icmp ugt i32 %i.ci, 1
  br i1 %i.cj, label %.thread.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ck = add nsw i32 %i.bx, %storemerge107110.i
  %.not101.i = icmp ne i32 %i.bz, 0               ; 2 uses
  %i.cl = or disjoint i32 %i.bx, 2
  %i.cm = zext i1 %.not101.i to i32
  %storemerge.i = add nsw i32 %i.ck, %i.cm
  %.090.i = select i1 %.not101.i, i32 %i.cl, i32 %i.bx ; 2 uses
  %.not102.i = icmp ne i32 %i.cb, 0               ; 2 uses
  %i.cn = add nuw nsw i32 %.090.i, 4
  %i.co = zext i1 %.not102.i to i32
  %.191.i = select i1 %.not102.i, i32 %i.cn, i32 %.090.i
  %i.cp = add i32 %storemerge.i, %i.cf
  %storemerge109.i = add i32 %i.cp, %i.co         ; 2 uses
  %4 = shl nuw nsw i32 %i.cf, 3
  %.2.i = add nuw nsw i32 %.191.i, %4
  %i.cq = zext nneg i32 %.2.i to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !18
  %i.ct = zext i8 %i.cs to i32
  %i.cu = add nuw nsw i32 %.093112.i, %i.ct       ; 2 uses
  %i.cv = icmp samesign ugt i32 %.197111.i, 7
  br i1 %i.cv, label %bb.u, label %.thread.i, !llvm.loop !32

.thread.i:                                        ; preds = %bb.v, %bb.u, %bb.t, %.thread130.i
  %.096.lcssa132.i = phi i32 [ %i.bq, %bb.t ], [ 0, %.thread130.i ], [ %i.bq, %bb.u ], [ %i.bq, %bb.v ] ; 2 uses
  %i.cw = phi i32 [ 0, %bb.t ], [ 0, %.thread130.i ], [ %storemerge109.i, %bb.v ], [ %storemerge107110.i, %bb.u ]
  %.197.lcssa.i = phi i32 [ %i.bq, %bb.t ], [ 0, %.thread130.i ], [ %i.cc, %bb.v ], [ %.197111.i, %bb.u ] ; 9 uses
  %.093.lcssa.i = phi i32 [ 0, %bb.t ], [ 0, %.thread130.i ], [ %i.cu, %bb.v ], [ %.093112.i, %bb.u ] ; 2 uses
  %i.cx = sub i32 %.096.lcssa132.i, %.197.lcssa.i ; 2 uses
  %i.cy = icmp sge i32 %.093.lcssa.i, %i.cx
  %spec.select134.i = tail call i32 @llvm.smin.i32(i32 %.093.lcssa.i, i32 %i.cx)
  %spec.select135.i = zext i1 %i.cy to i32
  %.sink127.i = add nsw i32 %spec.select134.i, %i.cw ; 3 uses
  store i32 %.sink127.i, ptr %i.a, align 4, !tbaa !8
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 72
  store i32 %spec.select135.i, ptr %i.cz, align 8, !tbaa !42
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 88
  store i32 %.sink127.i, ptr %i.da, align 8, !tbaa !43
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  store i32 %.197.lcssa.i, ptr %i.db, align 4, !tbaa !17
  %i.dc = icmp eq i32 %.197.lcssa.i, 0
  br i1 %i.dc, label %count_bits_long.exit, label %bb.w

bb.w:                                             ; preds = %.thread.i
  %i.dd = icmp eq i32 %i.ai, 0
  br i1 %i.dd, label %.preheader.i, label %bb.ac

.preheader.i:                                     ; preds = %bb.w, %.preheader.i
  %indvars.iv121.i = phi i64 [ %indvars.iv.next122.i, %.preheader.i ], [ 0, %bb.w ]
  %indvars.iv.next122.i = add nuw nsw i64 %indvars.iv121.i, 1 ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %indvars.iv.next122.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !8
  %i.dg = icmp slt i32 %i.df, %.197.lcssa.i
  br i1 %i.dg, label %.preheader.i, label %bb.x, !llvm.loop !33

bb.x:                                             ; preds = %.preheader.i
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr @subdv_table, i64 %indvars.iv.next122.i ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !45
  %i.dj = sext i32 %i.di to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %bb.x
  %indvars.iv124.i = phi i64 [ %indvars.iv.next125.i, %bb.y ], [ %i.dj, %bb.x ] ; 4 uses
  %i.dk = getelementptr [4 x i8], ptr @scalefac_band, i64 %indvars.iv124.i
  %i.dl = getelementptr i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !8
  %i.dn = icmp sgt i32 %i.dm, %.197.lcssa.i
  %indvars.iv.next125.i = add nsw i64 %indvars.iv124.i, -1
  br i1 %i.dn, label %bb.y, label %bb.z, !llvm.loop !34

bb.z:                                             ; preds = %bb.y
  %i.do = trunc nsw i64 %indvars.iv124.i to i32   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 %i.do, ptr %i.dp, align 8, !tbaa !19
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !46
  %i.ds = add i32 %i.do, 2
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.1.i = phi i32 [ %i.dr, %bb.z ], [ %i.dy, %bb.aa ] ; 3 uses
  %i.dt = add i32 %i.ds, %.1.i
  %i.du = zext i32 %i.dt to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !8
  %i.dx = icmp sgt i32 %i.dw, %.197.lcssa.i
  %i.dy = add nsw i32 %.1.i, -1
  br i1 %i.dx, label %bb.aa, label %bb.ab, !llvm.loop !35

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 %.1.i, ptr %i.dz, align 4, !tbaa !20
  %i.ea = add i64 %indvars.iv124.i, 1
  %i.eb = and i64 %i.ea, 4294967295
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr @scalefac_band, i64 %i.eb
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !8
  %i.ee = load i32, ptr %i.dv, align 4, !tbaa !8
  %i.ef = sext i32 %i.ee to i64                   ; 2 uses
  %i.eg = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ef
  %i.eh = sext i32 %.197.lcssa.i to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eh
  %i.ej = call fastcc i32 @choose_table(ptr noundef readonly %i.eg, ptr noundef nonnull readonly %i.ei, ptr noundef %i.a)
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i32 %i.ej, ptr %i.ek, align 8, !tbaa !8
  br label %bb.ad

bb.ac:                                            ; preds = %bb.w
  %i.el = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i32 7, ptr %i.el, align 8, !tbaa !19
  %i.em = getelementptr inbounds nuw i8, ptr %3, i64 60
  store i32 13, ptr %i.em, align 4, !tbaa !20
  %i.en = load i32, ptr getelementptr inbounds nuw (i8, ptr @scalefac_band, i64 32), align 4, !tbaa !8
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.en, i32 %.197.lcssa.i)
  %.pre.i = sext i32 %.197.lcssa.i to i64
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pre-phi.i = phi i64 [ %.pre.i, %bb.ac ], [ %i.ef, %bb.ab ]
  %.3.i = phi i32 [ %spec.select.i, %bb.ac ], [ %i.ed, %bb.ab ]
  %i.eo = sext i32 %.3.i to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %1, i64 %i.eo ; 2 uses
  %i.eq = call fastcc i32 @choose_table(ptr noundef readonly %1, ptr noundef readonly %i.ep, ptr noundef %i.a)
  %i.er = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.eq, ptr %i.er, align 8, !tbaa !8
  %i.es = getelementptr inbounds [4 x i8], ptr %1, i64 %.pre-phi.i
  %i.et = call fastcc i32 @choose_table(ptr noundef readonly %i.ep, ptr noundef readonly %i.es, ptr noundef %i.a)
  %i.eu = getelementptr inbounds nuw i8, ptr %3, i64 36
  store i32 %i.et, ptr %i.eu, align 4, !tbaa !8
  %.098.pre.i = load i32, ptr %i.a, align 4, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !41
  %.pre32 = load i32, ptr %i.db, align 4, !tbaa !17
  br label %count_bits_long.exit

count_bits_long.exit:                             ; preds = %.thread.i, %bb.ad
  %i.ev = phi i32 [ 0, %.thread.i ], [ %.pre32, %bb.ad ] ; 2 uses
  %i.ew = phi i32 [ %.096.lcssa132.i, %.thread.i ], [ %.pre, %bb.ad ]
  %.098.i = phi i32 [ %.sink127.i, %.thread.i ], [ %.098.pre.i, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  %i.ex = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ey = sub i32 %i.ew, %i.ev
  %i.ez = lshr i32 %i.ey, 2
  store i32 %i.ez, ptr %i.ex, align 8, !tbaa !41
  %i.fa = lshr i32 %i.ev, 1
  store i32 %i.fa, ptr %i.db, align 4, !tbaa !17
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
