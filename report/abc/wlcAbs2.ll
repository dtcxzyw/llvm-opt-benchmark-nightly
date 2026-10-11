Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcAbs2?download=true
inline.NumInlined: 122
inline.NumDeleted: 44
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.Pdr_Par_t_ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i64, ptr, ptr, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [16 x i8] c"\0AIteration %d:\0A\00", align 1
@.str.1 = private unnamed_addr constant [77 x i8] c"Derived abstraction with %d objects and %d PPIs. Bit-blasted AIG stats are:\0A\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"Refinement of CEX in frame %d came up with %d un-abstacted PPIs, whose MFFCs include %d objects.\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"Abstraction \00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"resulted in a real CEX\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"is successfully proved\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c" after %d iterations. \00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"Time\00", align 1
@.str.10 = private unnamed_addr constant [101 x i8] c"Abstraction engine marked %d adds/subs, %d muls/divs, %d muxes, and %d flops to be abstracted away.\0A\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define i32 @Wlc_NtkAbsCore2(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.Pdr_Par_t_, align 8         ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #19
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %3, align 8, !tbaa !44
  %.neg106 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %.neg = sdiv i64 %i.e, -1000
  %.neg107 = add i64 %.neg, %.neg106
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg107, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %i.f = getelementptr i8, ptr %0, i64 648        ; 2 uses
  %.val = load i32, ptr %i.f, align 8, !tbaa !46  ; 2 uses
  %i.g = ashr i32 %.val, 5
  %i.h = and i32 %.val, 31
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = add nsw i32 %i.g, %i.j                   ; 3 uses
  %i.l = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 5 uses
  %i.m = shl nsw i32 %i.k, 5                      ; 2 uses
  store i32 %i.m, ptr %i.l, align 8, !tbaa !47
  %.not.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i, label %Vec_BitStart.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.n = sext i32 %i.k to i64
  %i.o = shl nsw i64 %i.n, 2                      ; 2 uses
  %i.p = call noalias ptr @malloc(i64 noundef %i.o) #20
  br label %Vec_BitStart.exit

Vec_BitStart.exit:                                ; preds = %Abc_Clock.exit, %bb.c
  %.pre-phi8.i = phi i64 [ %i.o, %bb.c ], [ 0, %Abc_Clock.exit ]
  %i.q = phi ptr [ %i.p, %bb.c ], [ null, %Abc_Clock.exit ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  store ptr %i.q, ptr %i.s, align 8, !tbaa !20
  store i32 %i.m, ptr %i.r, align 4, !tbaa !48
  call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %.pre-phi8.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @Pdr_ManSetDefaultParams(ptr noundef nonnull %4) #19
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 92
  store i32 1, ptr %i.t, align 4, !tbaa !50
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i32 1, ptr %i.u, align 8, !tbaa !51
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 84
  store i32 0, ptr %i.v, align 4, !tbaa !52
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.x = load i32, ptr %i.w, align 4, !tbaa !54
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 100
  store i32 %i.x, ptr %i.y, align 4, !tbaa !55
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !56
  %i.ab = icmp sgt i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %Vec_BitStart.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 4 uses
  %i.ad = getelementptr i8, ptr %0, i64 640       ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ah = getelementptr i8, ptr %0, i64 68        ; 2 uses
  %i.ai = getelementptr i8, ptr %0, i64 72        ; 3 uses
  %i.aj = getelementptr i8, ptr %0, i64 36        ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 20        ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = getelementptr i8, ptr %0, i64 804
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.bj
  %.063130 = phi i32 [ 1, %.lr.ph ], [ %i.lh, %bb.bj ] ; 4 uses
  %i.an = load i32, ptr %i.ac, align 8, !tbaa !57
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.063130) ; 0 uses
  %.pr = load i32, ptr %i.ac, align 8, !tbaa !57
  %i.ap = icmp eq i32 %.pr, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not.i.i74 = phi i1 [ %i.ap, %bb.e ], [ true, %bb.d ]
  %i.aq = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4 ; 2 uses
  store i32 0, ptr %i.ar, align 4, !tbaa !21
  store i32 100, ptr %i.aq, align 8, !tbaa !22
  %i.as = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #20
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 3 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !23
  %i.au = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 4 uses
  store i32 0, ptr %i.av, align 4, !tbaa !21
  store i32 100, ptr %i.au, align 8, !tbaa !22
  %i.aw = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #20
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8 ; 5 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !23
  %i.ay = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 7 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 4 ; 3 uses
  store i32 0, ptr %i.az, align 4, !tbaa !21
  store i32 100, ptr %i.ay, align 8, !tbaa !22
  %i.ba = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #20
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !23
  %.val57.i.i = load i32, ptr %i.f, align 8, !tbaa !46 ; 4 uses
  %i.bc = ashr i32 %.val57.i.i, 5
  %i.bd = and i32 %.val57.i.i, 31
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = add nsw i32 %i.bc, %i.bf                ; 3 uses
  %i.bh = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.bi = shl nsw i32 %i.bg, 5                    ; 2 uses
  store i32 %i.bi, ptr %i.bh, align 8, !tbaa !47
  %.not.i.i.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i.i.i, label %Vec_BitStart.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bj = sext i32 %i.bg to i64
  %i.bk = shl nsw i64 %i.bj, 2                    ; 2 uses
  %i.bl = call noalias ptr @malloc(i64 noundef %i.bk) #20
  br label %Vec_BitStart.exit.i.i

Vec_BitStart.exit.i.i:                            ; preds = %bb.g, %bb.f
  %.pre-phi8.i.i.i = phi i64 [ %i.bk, %bb.g ], [ 0, %bb.f ]
  %i.bm = phi ptr [ %i.bl, %bb.g ], [ null, %bb.f ] ; 8 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bm, ptr %i.bo, align 8, !tbaa !20
  store i32 %i.bi, ptr %i.bn, align 4, !tbaa !48
  call void @llvm.memset.p0.i64(ptr align 4 %i.bm, i8 0, i64 %.pre-phi8.i.i.i, i1 false)
  %i.bp = icmp sgt i32 %.val57.i.i, 1
  br i1 %i.bp, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %Vec_BitStart.exit.i.i
  %.val58.i.i = load ptr, ptr %i.ad, align 8, !tbaa !24
  %wide.trip.count.i.i = zext nneg i32 %.val57.i.i to i64
  %.val59.i.i = load ptr, ptr %i.s, align 8, !tbaa !20
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i, %bb.s
  %indvars.iv.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.s ] ; 4 uses
  %.sroa.12.083.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.12.1.i.i, %bb.s ] ; 10 uses
  %.sroa.9.082.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.9.1.i.i, %bb.s ] ; 10 uses
  %.sroa.6.081.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.6.1.i.i, %bb.s ] ; 10 uses
  %.sroa.0.080.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %bb.s ] ; 10 uses
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %.val58.i.i, i64 %indvars.iv.i.i ; 9 uses
  %i.br = trunc nuw nsw i64 %indvars.iv.i.i to i32
  %i.bs = lshr i64 %indvars.iv.i.i, 5
  %i.bt = and i64 %i.bs, 134217727                ; 5 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.val59.i.i, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !25
  %i.bw = and i32 %i.br, 31                       ; 5 uses
  %5 = lshr i32 %i.bv, %i.bw
  %.not50.i.i = trunc i32 %5 to i1
  br i1 %.not50.i.i, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bx = load i16, ptr %i.bq, align 8            ; 2 uses
  %i.by = and i16 %i.bx, 63                       ; 2 uses
  switch i16 %i.by, label %bb.p [
    i16 43, label %bb.j
    i16 44, label %bb.j
    i16 50, label %bb.j
    i16 45, label %bb.l
    i16 46, label %bb.l
    i16 47, label %bb.l
    i16 48, label %bb.l
    i16 8, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.i
  %i.bz = getelementptr i8, ptr %i.bq, i64 8
  %.val66.i.i = load i32, ptr %i.bz, align 8, !tbaa !58
  %i.ca = getelementptr i8, ptr %i.bq, i64 12
  %.val67.i.i = load i32, ptr %i.ca, align 4, !tbaa !59
  %i.cb = sub nsw i32 %.val66.i.i, %.val67.i.i
  %i.cc = call i32 @llvm.abs.i32(i32 %i.cb, i1 true)
  %i.cd = add nuw nsw i32 %i.cc, 1
  %i.ce = load i32, ptr %1, align 8, !tbaa !60
  %.not56.i.i = icmp slt i32 %i.cd, %i.ce
  br i1 %.not56.i.i, label %bb.s, label %bb.k

bb.k:                                             ; preds = %bb.j
  %6 = shl nuw i32 1, %i.bw
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bt ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !25
  %i.ch = or i32 %i.cg, %6
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !25
  %i.ci = add nsw i32 %.sroa.0.080.i.i, 1
  br label %bb.s

bb.l:                                             ; preds = %bb.i, %bb.i, %bb.i, %bb.i
  %i.cj = getelementptr i8, ptr %i.bq, i64 8
  %.val64.i.i = load i32, ptr %i.cj, align 8, !tbaa !58
  %i.ck = getelementptr i8, ptr %i.bq, i64 12
  %.val65.i.i = load i32, ptr %i.ck, align 4, !tbaa !59
  %i.cl = sub nsw i32 %.val64.i.i, %.val65.i.i
  %i.cm = call i32 @llvm.abs.i32(i32 %i.cl, i1 true)
  %i.cn = add nuw nsw i32 %i.cm, 1
  %i.co = load i32, ptr %i.af, align 4, !tbaa !61
  %.not55.i.i = icmp slt i32 %i.cn, %i.co
  br i1 %.not55.i.i, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %7 = shl nuw i32 1, %i.bw
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bt ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !25
  %i.cr = or i32 %i.cq, %7
  store i32 %i.cr, ptr %i.cp, align 4, !tbaa !25
  %i.cs = add nsw i32 %.sroa.6.081.i.i, 1
  br label %bb.s

bb.n:                                             ; preds = %bb.i
  %i.ct = getelementptr i8, ptr %i.bq, i64 8
  %.val62.i.i = load i32, ptr %i.ct, align 8, !tbaa !58
  %i.cu = getelementptr i8, ptr %i.bq, i64 12
  %.val63.i.i = load i32, ptr %i.cu, align 4, !tbaa !59
  %i.cv = sub nsw i32 %.val62.i.i, %.val63.i.i
  %i.cw = call i32 @llvm.abs.i32(i32 %i.cv, i1 true)
  %i.cx = add nuw nsw i32 %i.cw, 1
  %i.cy = load i32, ptr %i.ae, align 8, !tbaa !62
  %.not54.i.i = icmp slt i32 %i.cx, %i.cy
  br i1 %.not54.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %8 = shl nuw i32 1, %i.bw
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bt ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !25
  %i.db = or i32 %i.da, %8
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !25
  %i.dc = add nsw i32 %.sroa.9.082.i.i, 1
  br label %bb.s

bb.p:                                             ; preds = %bb.i
  %i.dd = and i16 %i.bx, 61
  %narrow.i.not.i.i = icmp ne i16 %i.dd, 1
  %.not78.i.i = icmp eq i16 %i.by, 1
  %or.cond.i.i = or i1 %narrow.i.not.i.i, %.not78.i.i
  br i1 %or.cond.i.i, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr i8, ptr %i.bq, i64 8
  %.val60.i.i = load i32, ptr %i.de, align 8, !tbaa !58
  %i.df = getelementptr i8, ptr %i.bq, i64 12
  %.val61.i.i = load i32, ptr %i.df, align 4, !tbaa !59
  %i.dg = sub nsw i32 %.val60.i.i, %.val61.i.i
  %i.dh = call i32 @llvm.abs.i32(i32 %i.dg, i1 true)
  %i.di = add nuw nsw i32 %i.dh, 1
  %i.dj = load i32, ptr %i.ag, align 4, !tbaa !63
  %.not53.i.i = icmp slt i32 %i.di, %i.dj
  br i1 %.not53.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %9 = shl nuw i32 1, %i.bw
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bt ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !25
  %i.dm = or i32 %i.dl, %9
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !25
  %i.dn = add nsw i32 %.sroa.12.083.i.i, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.h
  %.sroa.0.1.i.i = phi i32 [ %.sroa.0.080.i.i, %bb.h ], [ %i.ci, %bb.k ], [ %.sroa.0.080.i.i, %bb.j ], [ %.sroa.0.080.i.i, %bb.m ], [ %.sroa.0.080.i.i, %bb.l ], [ %.sroa.0.080.i.i, %bb.o ], [ %.sroa.0.080.i.i, %bb.n ], [ %.sroa.0.080.i.i, %bb.p ], [ %.sroa.0.080.i.i, %bb.r ], [ %.sroa.0.080.i.i, %bb.q ] ; 2 uses
  %.sroa.6.1.i.i = phi i32 [ %.sroa.6.081.i.i, %bb.h ], [ %.sroa.6.081.i.i, %bb.k ], [ %.sroa.6.081.i.i, %bb.j ], [ %i.cs, %bb.m ], [ %.sroa.6.081.i.i, %bb.l ], [ %.sroa.6.081.i.i, %bb.o ], [ %.sroa.6.081.i.i, %bb.n ], [ %.sroa.6.081.i.i, %bb.p ], [ %.sroa.6.081.i.i, %bb.r ], [ %.sroa.6.081.i.i, %bb.q ] ; 2 uses
  %.sroa.9.1.i.i = phi i32 [ %.sroa.9.082.i.i, %bb.h ], [ %.sroa.9.082.i.i, %bb.k ], [ %.sroa.9.082.i.i, %bb.j ], [ %.sroa.9.082.i.i, %bb.m ], [ %.sroa.9.082.i.i, %bb.l ], [ %i.dc, %bb.o ], [ %.sroa.9.082.i.i, %bb.n ], [ %.sroa.9.082.i.i, %bb.p ], [ %.sroa.9.082.i.i, %bb.r ], [ %.sroa.9.082.i.i, %bb.q ] ; 2 uses
  %.sroa.12.1.i.i = phi i32 [ %.sroa.12.083.i.i, %bb.h ], [ %.sroa.12.083.i.i, %bb.k ], [ %.sroa.12.083.i.i, %bb.j ], [ %.sroa.12.083.i.i, %bb.m ], [ %.sroa.12.083.i.i, %bb.l ], [ %.sroa.12.083.i.i, %bb.o ], [ %.sroa.12.083.i.i, %bb.n ], [ %.sroa.12.083.i.i, %bb.p ], [ %i.dn, %bb.r ], [ %.sroa.12.083.i.i, %bb.q ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %.critedge.i.i, label %bb.h, !llvm.loop !30

.critedge.i.i:                                    ; preds = %bb.s, %Vec_BitStart.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi i32 [ 0, %Vec_BitStart.exit.i.i ], [ %.sroa.0.1.i.i, %bb.s ]
  %.sroa.6.0.lcssa.i.i = phi i32 [ 0, %Vec_BitStart.exit.i.i ], [ %.sroa.6.1.i.i, %bb.s ]
  %.sroa.9.0.lcssa.i.i = phi i32 [ 0, %Vec_BitStart.exit.i.i ], [ %.sroa.9.1.i.i, %bb.s ]
  %.sroa.12.0.lcssa.i.i = phi i32 [ 0, %Vec_BitStart.exit.i.i ], [ %.sroa.12.1.i.i, %bb.s ]
  br i1 %.not.i.i74, label %Wlc_NtkAbsMarkOpers.exit.i, label %bb.t

bb.t:                                             ; preds = %.critedge.i.i
  %i.do = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %.sroa.0.0.lcssa.i.i, i32 noundef %.sroa.6.0.lcssa.i.i, i32 noundef %.sroa.9.0.lcssa.i.i, i32 noundef %.sroa.12.0.lcssa.i.i) ; 0 uses
  br label %Wlc_NtkAbsMarkOpers.exit.i

Wlc_NtkAbsMarkOpers.exit.i:                       ; preds = %bb.t, %.critedge.i.i
  call void @Wlc_NtkCleanMarks(ptr noundef %0) #19
  %.val4354.i.i = load i32, ptr %i.ah, align 4, !tbaa !21
  %i.dp = icmp sgt i32 %.val4354.i.i, 0
  br i1 %i.dp, label %.lr.ph.i21.i, label %.critedge.preheader.i.Wlc_NtkAbsMarkNodes.exit_crit_edge.i

.critedge.preheader.i.i:                          ; preds = %.lr.ph.i21.i
  %.val4256.i.pre.i = load i32, ptr %i.az, align 4, !tbaa !21 ; 2 uses
  %i.dq = icmp sgt i32 %.val4256.i.pre.i, 0
  br i1 %i.dq, label %.critedge.i20.i, label %.critedge.preheader.i.Wlc_NtkAbsMarkNodes.exit_crit_edge.i

.critedge.preheader.i.Wlc_NtkAbsMarkNodes.exit_crit_edge.i: ; preds = %.critedge.preheader.i.i, %Wlc_NtkAbsMarkOpers.exit.i
  %.val4256.i35.i = phi i32 [ %.val4256.i.pre.i, %.critedge.preheader.i.i ], [ 0, %Wlc_NtkAbsMarkOpers.exit.i ]
  %.pre.i = sext i32 %.val4256.i35.i to i64
  br label %Wlc_NtkAbsMarkNodes.exit.i

.lr.ph.i21.i:                                     ; preds = %Wlc_NtkAbsMarkOpers.exit.i, %.lr.ph.i21.i
  %indvars.iv.i22.i = phi i64 [ %indvars.iv.next.i23.i, %.lr.ph.i21.i ], [ 0, %Wlc_NtkAbsMarkOpers.exit.i ] ; 2 uses
  %.val45.i.i = load ptr, ptr %i.ai, align 8, !tbaa !23
  %.val46.i.i = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.val45.i.i, i64 %indvars.iv.i22.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !25
  %i.dt = sext i32 %i.ds to i64
  %i.du = getelementptr inbounds [24 x i8], ptr %.val46.i.i, i64 %i.dt
  call fastcc void @Wlc_NtkAbsMarkNodes_rec(ptr noundef nonnull %0, ptr noundef %i.du, ptr noundef nonnull readonly %i.bh, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.au, ptr noundef nonnull %i.ay)
  %indvars.iv.next.i23.i = add nuw nsw i64 %indvars.iv.i22.i, 1 ; 2 uses
  %.val43.i.i = load i32, ptr %i.ah, align 4, !tbaa !21
  %i.dv = sext i32 %.val43.i.i to i64
  %i.dw = icmp slt i64 %indvars.iv.next.i23.i, %i.dv
  br i1 %i.dw, label %.lr.ph.i21.i, label %.critedge.preheader.i.i, !llvm.loop !31

.critedge.i20.i:                                  ; preds = %.critedge.preheader.i.i, %.critedge.i20.i
  %indvars.iv60.i.i = phi i64 [ %indvars.iv.next61.i.i, %.critedge.i20.i ], [ 0, %.critedge.preheader.i.i ] ; 2 uses
  %.val44.i.i = load ptr, ptr %i.bb, align 8, !tbaa !23
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.val44.i.i, i64 %indvars.iv60.i.i
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !25
  %.val41.i.i = load ptr, ptr %i.ad, align 8, !tbaa !24 ; 2 uses
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [24 x i8], ptr %.val41.i.i, i64 %i.dz
  %i.eb = getelementptr i8, ptr %i.ea, i64 20
  %.val47.i.i = load i32, ptr %i.eb, align 4, !tbaa !28
  %.val5.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !21
  %i.ec = add nsw i32 %.val5.i.i.i, %.val47.i.i
  %.val7.i.i.i = load i32, ptr %i.ak, align 4, !tbaa !21
  %i.ed = sub i32 %i.ec, %.val7.i.i.i
  %.val.i.i.i = load ptr, ptr %i.ai, align 8, !tbaa !23
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %.val.i.i.i, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !25
  %i.eh = sext i32 %i.eg to i64
  %i.ei = getelementptr inbounds [24 x i8], ptr %.val41.i.i, i64 %i.eh
  call fastcc void @Wlc_NtkAbsMarkNodes_rec(ptr noundef nonnull %0, ptr noundef %i.ei, ptr noundef nonnull readonly %i.bh, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.au, ptr noundef nonnull %i.ay)
  %indvars.iv.next61.i.i = add nuw nsw i64 %indvars.iv60.i.i, 1 ; 2 uses
  %.val42.i.i = load i32, ptr %i.az, align 4, !tbaa !21
  %i.ej = sext i32 %.val42.i.i to i64             ; 2 uses
  %i.ek = icmp slt i64 %indvars.iv.next61.i.i, %i.ej
  br i1 %i.ek, label %.critedge.i20.i, label %Wlc_NtkAbsMarkNodes.exit.i, !llvm.loop !32

Wlc_NtkAbsMarkNodes.exit.i:                       ; preds = %.critedge.i20.i, %.critedge.preheader.i.Wlc_NtkAbsMarkNodes.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %.critedge.preheader.i.Wlc_NtkAbsMarkNodes.exit_crit_edge.i ], [ %i.ej, %.critedge.i20.i ]
  %.val52.i.i = load i32, ptr %i.ar, align 4, !tbaa !21
  %.val53.i.i = load ptr, ptr %i.at, align 8, !tbaa !23
  %i.el = sext i32 %.val52.i.i to i64
  call void @qsort(ptr noundef %.val53.i.i, i64 noundef %i.el, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #19
  %.val50.i.i = load i32, ptr %i.av, align 4, !tbaa !21
  %.val51.i.i = load ptr, ptr %i.ax, align 8, !tbaa !23
  %i.em = sext i32 %.val50.i.i to i64
  call void @qsort(ptr noundef %.val51.i.i, i64 noundef %i.em, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #19
  %.val49.i.i = load ptr, ptr %i.bb, align 8, !tbaa !23
  call void @qsort(ptr noundef %.val49.i.i, i64 noundef %.pre-phi.i, i64 noundef 4, ptr noundef nonnull @Vec_IntSortCompare1) #19
  call void @Wlc_NtkCleanMarks(ptr noundef nonnull %0) #19
  %.not.i24.i = icmp eq ptr %i.bm, null
  br i1 %.not.i24.i, label %Vec_BitFree.exit.i, label %bb.u

bb.u:                                             ; preds = %Wlc_NtkAbsMarkNodes.exit.i
  call void @free(ptr noundef nonnull %i.bm) #19
  br label %Vec_BitFree.exit.i

Vec_BitFree.exit.i:                               ; preds = %bb.u, %Wlc_NtkAbsMarkNodes.exit.i
  call void @free(ptr noundef nonnull %i.bh) #19
  %i.en = call ptr @Wlc_NtkDupDfsAbs(ptr noundef nonnull %0, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.au, ptr noundef nonnull %i.ay) #19 ; 4 uses
  %i.eo = load ptr, ptr %i.at, align 8, !tbaa !23 ; 2 uses
  %.not.i25.i = icmp eq ptr %i.eo, null
  br i1 %.not.i25.i, label %Vec_IntFree.exit.i, label %bb.v

bb.v:                                             ; preds = %Vec_BitFree.exit.i
  call void @free(ptr noundef nonnull %i.eo) #19
  br label %Vec_IntFree.exit.i

Vec_IntFree.exit.i:                               ; preds = %bb.v, %Vec_BitFree.exit.i
  call void @free(ptr noundef nonnull %i.aq) #19
  %i.ep = load ptr, ptr %i.bb, align 8, !tbaa !23 ; 2 uses
  %.not.i26.i = icmp eq ptr %i.ep, null
  br i1 %.not.i26.i, label %Wlc_NtkAbs.exit, label %bb.w

bb.w:                                             ; preds = %Vec_IntFree.exit.i
  call void @free(ptr noundef nonnull %i.ep) #19
  br label %Wlc_NtkAbs.exit

Wlc_NtkAbs.exit:                                  ; preds = %Vec_IntFree.exit.i, %bb.w
  call void @free(ptr noundef nonnull %i.ay) #19
  %i.eq = call ptr @Wlc_NtkBitBlast(ptr noundef %i.en, ptr noundef null) #19 ; 3 uses
  %i.er = call i32 @Wlc_NtkDcFlopNum(ptr noundef %i.en) #19 ; 2 uses
  %i.es = icmp sgt i32 %i.er, 0
  br i1 %i.es, label %bb.x, label %bb.y

bb.x:                                             ; preds = %Wlc_NtkAbs.exit
  %i.et = call i32 @Wlc_NtkCountObjBits(ptr noundef nonnull %0, ptr noundef nonnull %i.au) #19
  %i.eu = call ptr @Gia_ManPermuteInputs(ptr noundef %i.eq, i32 noundef %i.et, i32 noundef %i.er) #19
  call void @Gia_ManStop(ptr noundef %i.eq) #19
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %Wlc_NtkAbs.exit
  %.060 = phi ptr [ %i.eu, %bb.x ], [ %i.eq, %Wlc_NtkAbs.exit ] ; 3 uses
  %i.ev = load i32, ptr %i.al, align 8, !tbaa !64
  %.not67 = icmp eq i32 %i.ev, 0
  br i1 %.not67, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ew = call ptr @Gia_ManTransformMiter2(ptr noundef %.060) #19
  call void @Gia_ManStop(ptr noundef %.060) #19
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.1 = phi ptr [ %i.ew, %bb.z ], [ %.060, %bb.y ] ; 5 uses
  %i.ex = load i32, ptr %i.ac, align 8, !tbaa !57
  %.not68 = icmp eq i32 %i.ex, 0
  br i1 %.not68, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ey = getelementptr i8, ptr %i.en, i64 648
  %.val73 = load i32, ptr %i.ey, align 8, !tbaa !46
  %i.ez = add nsw i32 %.val73, -1
  %.val72 = load i32, ptr %i.av, align 4, !tbaa !21
  %i.fa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.ez, i32 noundef %.val72) ; 0 uses
  call void @Gia_ManPrintStats(ptr noundef %.1, ptr noundef null) #19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  call void @Wlc_NtkFree(ptr noundef %i.en) #19
  %i.fb = call ptr @Gia_ManToAigSimple(ptr noundef %.1) #19 ; 3 uses
  %i.fc = call i32 @Pdr_ManSolve(ptr noundef %i.fb, ptr noundef nonnull %4) #19 ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 408 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !74 ; 6 uses
  store ptr null, ptr %i.fd, align 8, !tbaa !74
  call void @Aig_ManStop(ptr noundef %i.fb) #19
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  call void @Gia_ManStop(ptr noundef %.1) #19
  %i.fg = load ptr, ptr %i.ax, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %i.fg, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @free(ptr noundef nonnull %i.fg) #19
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.ad, %bb.ae
  call void @free(ptr noundef nonnull %i.au) #19
  br label %.thread

bb.af:                                            ; preds = %bb.ac
  %i.fh = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 7 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4 ; 5 uses
  store i32 0, ptr %i.fi, align 4, !tbaa !21
  store i32 100, ptr %i.fh, align 8, !tbaa !22
  %i.fj = call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #20 ; 6 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fh, i64 8 ; 2 uses
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !23
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !76 ; 6 uses
  %i.fn = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20 ; 6 uses
  %i.fo = add i32 %i.fm, -1
  %or.cond.i.i.i = icmp ult i32 %i.fo, 15
  %spec.store.select.i.i.i = select i1 %or.cond.i.i.i, i32 16, i32 %i.fm ; 3 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i.i, ptr %i.fn, align 8, !tbaa !22
  %.not.i.i.i = icmp eq i32 %spec.store.select.i.i.i, 0
  br i1 %.not.i.i.i, label %Vec_IntAlloc.exit.thread.i.i, label %Vec_IntAlloc.exit.i.i

Vec_IntAlloc.exit.thread.i.i:                     ; preds = %bb.af
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr null, ptr %i.fq, align 8, !tbaa !23
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !21
  br label %Vec_IntStartFull.exit.i

Vec_IntAlloc.exit.i.i:                            ; preds = %bb.af
  %i.fr = sext i32 %spec.store.select.i.i.i to i64
  %i.fs = shl nsw i64 %i.fr, 2
  %i.ft = call noalias ptr @malloc(i64 noundef %i.fs) #20 ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr %i.ft, ptr %i.fu, align 8, !tbaa !23
  store i32 %i.fm, ptr %i.fp, align 4, !tbaa !21
  %.not.i.i75 = icmp eq ptr %i.ft, null
  br i1 %.not.i.i75, label %Vec_IntStartFull.exit.i, label %bb.ag

bb.ag:                                            ; preds = %Vec_IntAlloc.exit.i.i
  %i.fv = sext i32 %i.fm to i64
  %i.fw = shl nsw i64 %i.fv, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ft, i8 -1, i64 %i.fw, i1 false)
  br label %Vec_IntStartFull.exit.i

Vec_IntStartFull.exit.i:                          ; preds = %bb.ag, %Vec_IntAlloc.exit.i.i, %Vec_IntAlloc.exit.thread.i.i
  %.val46.i = phi ptr [ null, %Vec_IntAlloc.exit.thread.i.i ], [ null, %Vec_IntAlloc.exit.i.i ], [ %i.ft, %bb.ag ] ; 2 uses
  %.val4563.i = load i32, ptr %i.av, align 4, !tbaa !21 ; 2 uses
  %i.fx = icmp sgt i32 %.val4563.i, 0
  br i1 %i.fx, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %Vec_IntStartFull.exit.i
  %.val47.i = load ptr, ptr %i.ax, align 8, !tbaa !23
  %.val.i = load ptr, ptr %i.ad, align 8, !tbaa !24
  %i.fy = zext nneg i32 %.val4563.i to i64
  br label %bb.ah

bb.ah:                                            ; preds = %bb.aj, %.lr.ph.i
  %indvars.iv74.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next75.i, %bb.aj ] ; 2 uses
  %.065.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aj ]
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.val47.i, i64 %indvars.iv74.i
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !25 ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [24 x i8], ptr %.val.i, i64 %i.gb ; 2 uses
  %i.gd = getelementptr i8, ptr %i.gc, i64 8
  %i.ge = getelementptr i8, ptr %i.gc, i64 12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %bb.ah
  %indvars.iv.i = phi i64 [ %.065.i, %bb.ah ], [ %indvars.iv.next.i, %bb.ai ] ; 2 uses
  %.03561.i = phi i32 [ 0, %bb.ah ], [ %i.gg, %bb.ai ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %.val46.i, i64 %indvars.iv.i
  store i32 %i.ga, ptr %i.gf, align 4, !tbaa !25
  %i.gg = add nuw nsw i32 %.03561.i, 1
  %.val41.i = load i32, ptr %i.gd, align 8, !tbaa !58
  %.val42.i = load i32, ptr %i.ge, align 4, !tbaa !59
  %i.gh = sub nsw i32 %.val41.i, %.val42.i
  %i.gi = call i32 @llvm.abs.i32(i32 %i.gh, i1 true)
  %.not57.not.i = icmp samesign ult i32 %.03561.i, %i.gi
  br i1 %.not57.not.i, label %bb.ai, label %bb.aj, !llvm.loop !33

bb.aj:                                            ; preds = %bb.ai
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next75.i, %i.fy
  br i1 %exitcond.not, label %.critedge.loopexit.i, label %bb.ah, !llvm.loop !34

.critedge.loopexit.i:                             ; preds = %bb.aj
  %i.gj = trunc nsw i64 %indvars.iv.next.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %Vec_IntStartFull.exit.i
  %.0.lcssa.i = phi i32 [ 0, %Vec_IntStartFull.exit.i ], [ %i.gj, %.critedge.loopexit.i ]
  %i.gk = sub nsw i32 %i.fm, %.0.lcssa.i          ; 4 uses
  %i.gl = call ptr @Bmc_CexCareMinimizeAig(ptr noundef %.1, i32 noundef %i.gk, ptr noundef nonnull %i.fe, i32 noundef 1, i32 noundef 0, i32 noundef 0) #19 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 4 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !77 ; 2 uses
  %.not68.i = icmp slt i32 %i.gn, 0
  br i1 %.not68.i, label %._crit_edge70.i, label %.preheader.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %.critedge.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 12 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gl, i64 20
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gr = load i32, ptr %i.go, align 4, !tbaa !76 ; 3 uses
  %i.gs = icmp slt i32 %i.gk, %i.gr
  br i1 %i.gs, label %.preheader.preheader.i, label %._crit_edge70.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %i.gt = sext i32 %i.gk to i64                   ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %i.gu = phi i32 [ %i.jf, %._crit_edge.i ], [ %i.gn, %.preheader.preheader.i ]
  %i.gv = phi i32 [ %i.jg, %._crit_edge.i ], [ %i.gr, %.preheader.preheader.i ] ; 2 uses
  %i.gw = phi ptr [ %i.jh, %._crit_edge.i ], [ %i.fj, %.preheader.preheader.i ] ; 2 uses
  %i.gx = phi ptr [ %i.ji, %._crit_edge.i ], [ %i.fj, %.preheader.preheader.i ] ; 2 uses
  %i.gy = phi ptr [ %i.jj, %._crit_edge.i ], [ %i.fj, %.preheader.preheader.i ] ; 2 uses
  %i.gz = phi i32 [ %i.jk, %._crit_edge.i ], [ %i.gr, %.preheader.preheader.i ] ; 3 uses
  %.03869.i = phi i32 [ %i.jl, %._crit_edge.i ], [ 0, %.preheader.preheader.i ] ; 3 uses
  %i.ha = icmp slt i32 %i.gk, %i.gz
  br i1 %i.ha, label %.lr.ph67.i, label %._crit_edge.i

.lr.ph67.i:                                       ; preds = %.preheader.i, %Vec_IntPushUniqueOrder.exit.i
  %i.hb = phi i32 [ %i.iz, %Vec_IntPushUniqueOrder.exit.i ], [ %i.gv, %.preheader.i ] ; 2 uses
  %i.hc = phi ptr [ %i.ja, %Vec_IntPushUniqueOrder.exit.i ], [ %i.gw, %.preheader.i ] ; 4 uses
  %i.hd = phi ptr [ %i.jb, %Vec_IntPushUniqueOrder.exit.i ], [ %i.gx, %.preheader.i ] ; 7 uses
  %i.he = phi ptr [ %i.jc, %Vec_IntPushUniqueOrder.exit.i ], [ %i.gy, %.preheader.i ] ; 3 uses
  %indvars.iv77.i = phi i64 [ %indvars.iv.next78.i, %Vec_IntPushUniqueOrder.exit.i ], [ %i.gt, %.preheader.i ] ; 3 uses
  %i.hf = phi i32 [ %i.iz, %Vec_IntPushUniqueOrder.exit.i ], [ %i.gz, %.preheader.i ]
  %i.hg = load i32, ptr %i.gq, align 4, !tbaa !78
  %i.hh = mul nsw i32 %i.hf, %.03869.i
  %i.hi = trunc nsw i64 %indvars.iv77.i to i32
  %i.hj = add i32 %i.hh, %i.hi
  %i.hk = add i32 %i.hj, %i.hg                    ; 2 uses
  %i.hl = ashr i32 %i.hk, 5
  %i.hm = sext i32 %i.hl to i64
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.hm
  %i.ho = load i32, ptr %i.hn, align 4, !tbaa !25
  %i.hp = and i32 %i.hk, 31
  %10 = lshr i32 %i.ho, %i.hp
  %.not40.i = trunc i32 %10 to i1
  br i1 %.not40.i, label %bb.ak, label %Vec_IntPushUniqueOrder.exit.i

bb.ak:                                            ; preds = %.lr.ph67.i
  %i.hq = sub nsw i64 %indvars.iv77.i, %i.gt
  %i.hr = getelementptr inbounds [4 x i8], ptr %.val46.i, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !25 ; 3 uses
  %i.ht = load i32, ptr %i.fi, align 4, !tbaa !21 ; 11 uses
  %i.hu = icmp sgt i32 %i.ht, 0                   ; 2 uses
  br i1 %i.hu, label %.lr.ph.i.i78, label %._crit_edge.i.i

.lr.ph.i.i78:                                     ; preds = %bb.ak
  %wide.trip.count.i.i79 = zext nneg i32 %i.ht to i64
  br label %bb.am

bb.al:                                            ; preds = %bb.am
  %indvars.iv.next.i.i81 = add nuw nsw i64 %indvars.iv.i.i80, 1 ; 2 uses
  %exitcond.not.i.i82 = icmp eq i64 %indvars.iv.next.i.i81, %wide.trip.count.i.i79
  br i1 %exitcond.not.i.i82, label %._crit_edge.i.i, label %bb.am, !llvm.loop !35

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.i78
  %indvars.iv.i.i80 = phi i64 [ 0, %.lr.ph.i.i78 ], [ %indvars.iv.next.i.i81, %bb.al ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %indvars.iv.i.i80
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !25
  %i.hx = icmp eq i32 %i.hw, %i.hs
  br i1 %i.hx, label %Vec_IntPushUniqueOrder.exit.i, label %bb.al

._crit_edge.i.i:                                  ; preds = %bb.al, %bb.ak
  %i.hy = load i32, ptr %i.fh, align 8, !tbaa !22
  %i.hz = icmp eq i32 %i.ht, %i.hy
  br i1 %i.hz, label %bb.an, label %Vec_IntGrow.exit24.i.i.i

bb.an:                                            ; preds = %._crit_edge.i.i
  %i.ia = icmp slt i32 %i.ht, 16
  br i1 %i.ia, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %.not9.i.i.i.i = icmp eq ptr %i.hd, null
  br i1 %.not9.i.i.i.i, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ib = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.hd, i64 noundef 64) #21
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.ic = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i.i

bb.ar:                                            ; preds = %bb.an
  %i.id = icmp samesign ult i32 %i.ht, 1073741823
  %i.ie = shl nuw nsw i32 %i.ht, 1
  %spec.select.i.i.i = select i1 %i.id, i32 %i.ie, i32 2147483647 ; 4 uses
  %.not.i22.i.i.i = icmp samesign ult i32 %i.ht, %spec.select.i.i.i
  br i1 %.not.i22.i.i.i, label %bb.as, label %Vec_IntGrow.exit24.i.thread.i.i

Vec_IntGrow.exit24.i.thread.i.i:                  ; preds = %bb.ar
  %i.if = add nuw nsw i32 %i.ht, 1
  store i32 %i.if, ptr %i.fi, align 4, !tbaa !21
  br label %.lr.ph.i.i.i

bb.as:                                            ; preds = %bb.ar
  %.not9.i23.i.i.i = icmp eq ptr %i.hd, null
  %i.ig = zext nneg i32 %spec.select.i.i.i to i64
  %i.ih = shl nuw nsw i64 %i.ig, 2                ; 2 uses
  br i1 %.not9.i23.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ii = call ptr @realloc(ptr noundef nonnull %i.hd, i64 noundef %i.ih) #21
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i.i

bb.au:                                            ; preds = %bb.as
  %i.ij = call noalias ptr @malloc(i64 noundef %i.ih) #20
  br label %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i.i

Vec_IntGrow.exit24thread-pre-split.sink.split.i.i.i: ; preds = %bb.au, %bb.at, %bb.aq, %bb.ap
  %storemerge.i = phi ptr [ %i.ic, %bb.aq ], [ %i.ib, %bb.ap ], [ %i.ii, %bb.at ], [ %i.ij, %bb.au ] ; 2 uses
  %.sink.i.i.i = phi i32 [ 16, %bb.aq ], [ 16, %bb.ap ], [ %spec.select.i.i.i, %bb.at ], [ %spec.select.i.i.i, %bb.au ]
  store ptr %storemerge.i, ptr %i.fk, align 8, !tbaa !23
  store i32 %.sink.i.i.i, ptr %i.fh, align 8, !tbaa !22
  br label %Vec_IntGrow.exit24.i.i.i

Vec_IntGrow.exit24.i.i.i:                         ; preds = %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i.i, %._crit_edge.i.i
  %i.ik = phi ptr [ %storemerge.i, %Vec_IntGrow.exit24thread-pre-split.sink.split.i.i.i ], [ %i.hc, %._crit_edge.i.i ] ; 4 uses
  %i.il = add nsw i32 %i.ht, 1
  store i32 %i.il, ptr %i.fi, align 4, !tbaa !21
  br i1 %i.hu, label %.lr.ph.i.i.i, label %Vec_IntPushOrder.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %Vec_IntGrow.exit24.i.i.i, %Vec_IntGrow.exit24.i.thread.i.i
  %i.im = phi ptr [ %i.hc, %Vec_IntGrow.exit24.i.thread.i.i ], [ %i.ik, %Vec_IntGrow.exit24.i.i.i ] ; 2 uses
  %i.in = phi ptr [ %i.hd, %Vec_IntGrow.exit24.i.thread.i.i ], [ %i.ik, %Vec_IntGrow.exit24.i.i.i ] ; 4 uses
  %i.io = zext nneg i32 %i.ht to i64
  br label %bb.av

bb.av:                                            ; preds = %bb.aw, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.io, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.aw ] ; 4 uses
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, -1 ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.next.i.i.i
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !25 ; 2 uses
  %i.ir = icmp sgt i32 %i.iq, %i.hs
  br i1 %i.ir, label %bb.aw, label %._crit_edge.loopexit.split.loop.exit.i.i.i

bb.aw:                                            ; preds = %bb.av
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.in, i64 %indvars.iv.i.i.i
  store i32 %i.iq, ptr %i.is, align 4, !tbaa !25
  %i.it = icmp samesign ugt i64 %indvars.iv.i.i.i, 1
  br i1 %i.it, label %bb.av, label %Vec_IntPushOrder.exit.i.i, !llvm.loop !36

._crit_edge.loopexit.split.loop.exit.i.i.i:       ; preds = %bb.av
  %i.iu = trunc nuw nsw i64 %indvars.iv.i.i.i to i32
  br label %Vec_IntPushOrder.exit.i.i

Vec_IntPushOrder.exit.i.i:                        ; preds = %bb.aw, %._crit_edge.loopexit.split.loop.exit.i.i.i, %Vec_IntGrow.exit24.i.i.i
  %i.iv = phi ptr [ %i.ik, %Vec_IntGrow.exit24.i.i.i ], [ %i.im, %._crit_edge.loopexit.split.loop.exit.i.i.i ], [ %i.im, %bb.aw ]
  %i.iw = phi ptr [ %i.ik, %Vec_IntGrow.exit24.i.i.i ], [ %i.in, %._crit_edge.loopexit.split.loop.exit.i.i.i ], [ %i.in, %bb.aw ] ; 3 uses
  %.0.in.lcssa.i.i.i = phi i32 [ %i.ht, %Vec_IntGrow.exit24.i.i.i ], [ %i.iu, %._crit_edge.loopexit.split.loop.exit.i.i.i ], [ 0, %bb.aw ]
  %i.ix = sext i32 %.0.in.lcssa.i.i.i to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %i.iw, i64 %i.ix
  store i32 %i.hs, ptr %i.iy, align 4, !tbaa !25
  %.pre.i77 = load i32, ptr %i.go, align 4, !tbaa !76
  br label %Vec_IntPushUniqueOrder.exit.i

Vec_IntPushUniqueOrder.exit.i:                    ; preds = %bb.am, %Vec_IntPushOrder.exit.i.i, %.lr.ph67.i
  %i.iz = phi i32 [ %i.hb, %.lr.ph67.i ], [ %.pre.i77, %Vec_IntPushOrder.exit.i.i ], [ %i.hb, %bb.am ] ; 5 uses
  %i.ja = phi ptr [ %i.hc, %.lr.ph67.i ], [ %i.iv, %Vec_IntPushOrder.exit.i.i ], [ %i.hc, %bb.am ] ; 2 uses
  %i.jb = phi ptr [ %i.hd, %.lr.ph67.i ], [ %i.iw, %Vec_IntPushOrder.exit.i.i ], [ %i.hd, %bb.am ] ; 2 uses
  %i.jc = phi ptr [ %i.he, %.lr.ph67.i ], [ %i.iw, %Vec_IntPushOrder.exit.i.i ], [ %i.he, %bb.am ] ; 2 uses
  %indvars.iv.next78.i = add nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %i.jd = sext i32 %i.iz to i64
  %i.je = icmp slt i64 %indvars.iv.next78.i, %i.jd
  br i1 %i.je, label %.lr.ph67.i, label %._crit_edge.loopexit.i, !llvm.loop !37

._crit_edge.loopexit.i:                           ; preds = %Vec_IntPushUniqueOrder.exit.i
  %.pre81.i = load i32, ptr %i.gm, align 4, !tbaa !77
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.jf = phi i32 [ %.pre81.i, %._crit_edge.loopexit.i ], [ %i.gu, %.preheader.i ] ; 2 uses
  %i.jg = phi i32 [ %i.iz, %._crit_edge.loopexit.i ], [ %i.gv, %.preheader.i ]
  %i.jh = phi ptr [ %i.ja, %._crit_edge.loopexit.i ], [ %i.gw, %.preheader.i ] ; 2 uses
  %i.ji = phi ptr [ %i.jb, %._crit_edge.loopexit.i ], [ %i.gx, %.preheader.i ]
  %i.jj = phi ptr [ %i.jc, %._crit_edge.loopexit.i ], [ %i.gy, %.preheader.i ]
  %i.jk = phi i32 [ %i.iz, %._crit_edge.loopexit.i ], [ %i.gz, %.preheader.i ]
  %i.jl = add nuw nsw i32 %.03869.i, 1
  %.not.not.i = icmp slt i32 %.03869.i, %i.jf
  br i1 %.not.not.i, label %.preheader.i, label %._crit_edge70.i, !llvm.loop !38

._crit_edge70.i:                                  ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %.critedge.i
  %i.jm = phi ptr [ %i.fj, %.critedge.i ], [ %i.fj, %.preheader.lr.ph.i ], [ %i.jh, %._crit_edge.i ] ; 2 uses
  call void @Abc_CexFree(ptr noundef nonnull %i.gl) #19
  %i.jn = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !23 ; 2 uses
  %.not.i49.i = icmp eq ptr %i.jo, null
  br i1 %.not.i49.i, label %Vec_IntFree.exit.i76, label %bb.ax

bb.ax:                                            ; preds = %._crit_edge70.i
  call void @free(ptr noundef nonnull %i.jo) #19
  br label %Vec_IntFree.exit.i76

Vec_IntFree.exit.i76:                             ; preds = %bb.ax, %._crit_edge70.i
  call void @free(ptr noundef nonnull %i.fn) #19
  %.val44.i = load i32, ptr %i.fi, align 4, !tbaa !21
  %i.jp = icmp eq i32 %.val44.i, 0
  br i1 %i.jp, label %bb.ay, label %Wlc_NtkAbsRefinement.exit

bb.ay:                                            ; preds = %Vec_IntFree.exit.i76
  %.not.i50.i = icmp eq ptr %i.jm, null
  br i1 %.not.i50.i, label %Vec_IntFreeP.exit.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ay
  call void @free(ptr noundef nonnull %i.jm) #19
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %.thread.i.i, %bb.ay
  call void @free(ptr noundef nonnull %i.fh) #19
  br label %Wlc_NtkAbsRefinement.exit

Wlc_NtkAbsRefinement.exit:                        ; preds = %Vec_IntFree.exit.i76, %Vec_IntFreeP.exit.i
  %.055.i = phi ptr [ null, %Vec_IntFreeP.exit.i ], [ %i.fh, %Vec_IntFree.exit.i76 ] ; 5 uses
  call void @Gia_ManStop(ptr noundef %.1) #19
  %i.jq = load ptr, ptr %i.ax, align 8, !tbaa !23 ; 2 uses
  %.not.i83 = icmp eq ptr %i.jq, null
  br i1 %.not.i83, label %Vec_IntFree.exit84, label %bb.az

bb.az:                                            ; preds = %Wlc_NtkAbsRefinement.exit
  call void @free(ptr noundef nonnull %i.jq) #19
  br label %Vec_IntFree.exit84

Vec_IntFree.exit84:                               ; preds = %Wlc_NtkAbsRefinement.exit, %bb.az
  call void @free(ptr noundef nonnull %i.au) #19
  %i.jr = icmp eq ptr %.055.i, null
  br i1 %i.jr, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %Vec_IntFree.exit84
  call void @Abc_CexFree(ptr noundef nonnull %i.fe) #19
  br label %.thread

bb.bb:                                            ; preds = %Vec_IntFree.exit84
  %.val14.i = load i32, ptr %i.am, align 4, !tbaa !21
  %i.js = icmp eq i32 %.val14.i, 0
  br i1 %i.js, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
end_hunk_0
begin_hunk_1_@Wlc_NtkAbsCore2:bb.a
  %.015.i.i = phi ptr [ %i.jz, %.lr.ph.i.i91 ], [ %i.ku, %bb.bf ] ; 2 uses
  %i.kc = ptrtoint ptr %.015.i.i to i64
  %i.kd = sub i64 %i.kc, %i.kb
  %i.ke = sdiv exact i64 %i.kd, 24
  %i.kf = trunc i64 %i.ke to i32                  ; 2 uses
  %i.kg = and i32 %i.kf, 31
  %i.kh = shl nuw i32 1, %i.kg
  %i.ki = ashr i32 %i.kf, 5
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %.val11.i.i, i64 %i.kj ; 2 uses
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !25
  %i.km = or i32 %i.kh, %i.kl
  store i32 %i.km, ptr %i.kk, align 4, !tbaa !25
  %i.kn = getelementptr i8, ptr %.015.i.i, i64 20
  %.0.val12.i.i = load i32, ptr %i.kn, align 4, !tbaa !28
  %.val5.i.i.i93 = load i32, ptr %i.aj, align 4, !tbaa !21
  %i.ko = add nsw i32 %.val5.i.i.i93, %.0.val12.i.i
  %.val7.i.i.i94 = load i32, ptr %i.ak, align 4, !tbaa !21
  %i.kp = sub i32 %i.ko, %.val7.i.i.i94
  %i.kq = sext i32 %i.kp to i64
  %i.kr = getelementptr inbounds [4 x i8], ptr %.val.i.i.i92, i64 %i.kq
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !25
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [24 x i8], ptr %.val.i89, i64 %i.kt ; 3 uses
  %.0.val.i.i = load i16, ptr %i.ku, align 8
  %i.kv = and i16 %.0.val.i.i, 61
  %narrow.i.not.i.i95 = icmp eq i16 %i.kv, 1
  br i1 %narrow.i.not.i.i95, label %bb.bf, label %Wlc_NtkMarkMffc.exit.i, !llvm.loop !39

Wlc_NtkMarkMffc.exit.i:                           ; preds = %bb.bf, %bb.be
  %.0.lcssa.i.i = phi ptr [ %i.jz, %bb.be ], [ %i.ku, %bb.bf ] ; 2 uses
  %i.kw = call fastcc i32 @Wlc_NtkNodeDeref_rec(ptr noundef nonnull readonly %0, ptr noundef nonnull %.0.lcssa.i.i, ptr noundef nonnull readonly %i.l)
  %i.kx = call fastcc i32 @Wlc_NtkNodeRef_rec(ptr noundef nonnull readonly %0, ptr noundef nonnull %.0.lcssa.i.i) ; 0 uses
  %i.ky = add nsw i32 %i.kw, %.018.i              ; 2 uses
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %.val13.i = load i32, ptr %i.jt, align 4, !tbaa !21 ; 2 uses
  %i.kz = sext i32 %.val13.i to i64
  %i.la = icmp slt i64 %indvars.iv.next.i90, %i.kz
  br i1 %i.la, label %bb.be, label %Wlc_NtkRemoveFromAbstraction.exit, !llvm.loop !40

Wlc_NtkRemoveFromAbstraction.exit:                ; preds = %Wlc_NtkMarkMffc.exit.i, %bb.bd
  %.val71 = phi i32 [ %.val1316.i, %bb.bd ], [ %.val13.i, %Wlc_NtkMarkMffc.exit.i ]
  %.0.lcssa.i86 = phi i32 [ 0, %bb.bd ], [ %i.ky, %Wlc_NtkMarkMffc.exit.i ]
  %i.lb = load i32, ptr %i.ac, align 8, !tbaa !57
  %.not69 = icmp eq i32 %i.lb, 0
  br i1 %.not69, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %Wlc_NtkRemoveFromAbstraction.exit
  %i.lc = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !77
  %i.le = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.ld, i32 noundef %.val71, i32 noundef %.0.lcssa.i86) ; 0 uses
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %Wlc_NtkRemoveFromAbstraction.exit
  %i.lf = getelementptr inbounds nuw i8, ptr %.055.i, i64 8
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !23 ; 2 uses
  %.not.i96 = icmp eq ptr %i.lg, null
  br i1 %.not.i96, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  call void @free(ptr noundef nonnull %i.lg) #19
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  call void @free(ptr noundef nonnull %.055.i) #19
  call void @Abc_CexFree(ptr noundef nonnull %i.fe) #19
  %i.lh = add nuw nsw i32 %.063130, 1             ; 3 uses
  %i.li = load i32, ptr %i.z, align 8, !tbaa !56
  %i.lj = icmp slt i32 %i.lh, %i.li
  br i1 %i.lj, label %bb.d, label %.thread, !llvm.loop !41

.thread:                                          ; preds = %bb.bj, %Vec_BitStart.exit, %bb.ba, %Vec_IntFree.exit
  %.063120 = phi i32 [ %.063130, %bb.ba ], [ %.063130, %Vec_IntFree.exit ], [ 1, %Vec_BitStart.exit ], [ %i.lh, %bb.bj ]
  %.162 = phi i32 [ %i.fc, %bb.ba ], [ %i.fc, %Vec_IntFree.exit ], [ -1, %Vec_BitStart.exit ], [ %i.fc, %bb.bj ] ; 3 uses
  %i.lk = load ptr, ptr %i.s, align 8, !tbaa !20  ; 2 uses
  %.not.i98 = icmp eq ptr %i.lk, null
  br i1 %.not.i98, label %Vec_BitFree.exit, label %bb.bk

bb.bk:                                            ; preds = %.thread
  call void @free(ptr noundef nonnull %i.lk) #19
  br label %Vec_BitFree.exit

Vec_BitFree.exit:                                 ; preds = %.thread, %bb.bk
  call void @free(ptr noundef nonnull %i.l) #19
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.lm = load i32, ptr %i.ll, align 8, !tbaa !57
  %.not70 = icmp eq i32 %i.lm, 0
  br i1 %.not70, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %Vec_BitFree.exit
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %Vec_BitFree.exit
  %i.ln = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %switch.selectcmp = icmp eq i32 %.162, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.6, ptr @.str.7
  %switch.selectcmp210 = icmp eq i32 %.162, 0
  %switch.select211 = select i1 %switch.selectcmp210, ptr @.str.5, ptr %switch.select
  %i.lo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %switch.select211) ; 0 uses
  %i.lp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %.063120) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.lq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #19
  %i.lr = icmp slt i32 %i.lq, 0
  br i1 %i.lr, label %Abc_Clock.exit100, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ls = load i64, ptr %2, align 8, !tbaa !44
  %i.lt = mul nsw i64 %i.ls, 1000000
  %i.lu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lv = load i64, ptr %i.lu, align 8, !tbaa !45
  %i.lw = sdiv i64 %i.lv, 1000
  %i.lx = add nsw i64 %i.lw, %i.lt
  br label %Abc_Clock.exit100

Abc_Clock.exit100:                                ; preds = %bb.bm, %bb.bn
  %.0.i99 = phi i64 [ %i.lx, %bb.bn ], [ -1, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  %i.ly = add i64 %.0.i99, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9)
  %i.lz = sitofp i64 %i.ly to double
  %i.ma = fdiv double %i.lz, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.12, double noundef %i.ma)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  ret i32 %.162
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @Pdr_ManSetDefaultParams(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @Wlc_NtkBitBlast(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Wlc_NtkDcFlopNum(ptr noundef) local_unnamed_addr #2

declare ptr @Gia_ManPermuteInputs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Wlc_NtkCountObjBits(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #2

declare ptr @Gia_ManTransformMiter2(ptr noundef) local_unnamed_addr #2

declare void @Gia_ManPrintStats(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Wlc_NtkFree(ptr noundef) local_unnamed_addr #2

declare ptr @Gia_ManToAigSimple(ptr noundef) local_unnamed_addr #2

declare i32 @Pdr_ManSolve(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Aig_ManStop(ptr noundef) local_unnamed_addr #2

declare void @Abc_CexFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

declare ptr @Wlc_NtkDupDfsAbs(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @Wlc_NtkCleanMarks(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Wlc_NtkAbsMarkNodes_rec(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5) unnamed_addr #7 {
bb.a:
  %i.a = load i16, ptr %1, align 8                ; 4 uses
  %i.b = and i16 %i.a, 128
  %.not.a = icmp eq i16 %i.b, 0
  br i1 %.not.a, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = or disjoint i16 %i.a, 128
  store i16 %i.c, ptr %1, align 8
  %i.d = getelementptr i8, ptr %0, i64 640        ; 2 uses
  %.val34 = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %.val34 to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = getelementptr i8, ptr %2, i64 8
  %.val30 = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.k = ashr i32 %i.i, 5
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %.val30, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !25
  %i.o = and i32 %i.i, 31
  %6 = lshr i32 %i.n, %i.o
  %.not = trunc i32 %6 to i1
  br i1 %.not, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21   ; 7 uses
  %i.r = load i32, ptr %4, align 8, !tbaa !22
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %i.t = icmp slt i32 %i.q, 16
  br i1 %i.t, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.v, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.v, i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.x = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.y = phi ptr [ %i.w, %bb.f ], [ %i.x, %bb.g ]
  store ptr %i.y, ptr %i.u, align 8, !tbaa !23
  br label %Vec_IntGrow.exit11.sink.split.i

bb.h:                                             ; preds = %bb.d
  %i.z = icmp samesign ult i32 %i.q, 1073741823
  %i.aa = shl nuw nsw i32 %i.q, 1
  %spec.select.i = select i1 %i.z, i32 %i.aa, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.q, %spec.select.i
  br i1 %.not.i9.i, label %bb.i, label %Vec_IntPush.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !23 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ac, null
  %i.ad = zext nneg i32 %spec.select.i to i64
  %i.ae = shl nuw nsw i64 %i.ad, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.af = tail call ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef %i.ae) #21
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ag = tail call noalias ptr @malloc(i64 noundef %i.ae) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ah = phi ptr [ %i.af, %bb.j ], [ %i.ag, %bb.k ]
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !23
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.l, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.l ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %4, align 8, !tbaa !22
  %.pre.a = load i32, ptr %i.p, align 4, !tbaa !21
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.c, %bb.h, %Vec_IntGrow.exit11.sink.split.i
  %i.ai = phi i32 [ %i.q, %bb.c ], [ %i.q, %bb.h ], [ %.pre.a, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.al = add nsw i32 %i.ai, 1
  store i32 %i.al, ptr %i.p, align 4, !tbaa !21
  br label %.critedge.sink.split

bb.m:                                             ; preds = %bb.b
  %i.am = and i16 %i.a, 61
  %narrow.i.not = icmp eq i16 %i.am, 1
  br i1 %narrow.i.not, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.m
  %i.an = getelementptr i8, ptr %1, i64 4         ; 2 uses
  %.val3755 = load i32, ptr %i.an, align 4, !tbaa !29 ; 2 uses
  %i.ao = icmp sgt i32 %.val3755, 0
  br i1 %i.ao, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.ai

bb.n:                                             ; preds = %bb.m
  %i.aq = and i16 %i.a, 3
  %.not54 = icmp eq i16 %i.aq, 1
  br i1 %.not54, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !21 ; 7 uses
  %i.at = load i32, ptr %3, align 8, !tbaa !22
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %bb.p, label %Vec_IntPush.exit45

bb.p:                                             ; preds = %bb.o
  %i.av = icmp slt i32 %i.as, 16
  br i1 %i.av, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i43 = icmp eq ptr %i.ax, null
  br i1 %.not9.i.i43, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ax, i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i44

bb.s:                                             ; preds = %bb.q
  %i.az = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit.i44

Vec_IntGrow.exit.i44:                             ; preds = %bb.s, %bb.r
  %i.ba = phi ptr [ %i.ay, %bb.r ], [ %i.az, %bb.s ]
  store ptr %i.ba, ptr %i.aw, align 8, !tbaa !23
  br label %Vec_IntGrow.exit11.sink.split.i41

bb.t:                                             ; preds = %bb.p
  %i.bb = icmp samesign ult i32 %i.as, 1073741823
  %i.bc = shl nuw nsw i32 %i.as, 1
  %spec.select.i38 = select i1 %i.bb, i32 %i.bc, i32 2147483647 ; 3 uses
  %.not.i9.i39 = icmp samesign ult i32 %i.as, %spec.select.i38
  br i1 %.not.i9.i39, label %bb.u, label %Vec_IntPush.exit45

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !23 ; 2 uses
  %.not9.i10.i40 = icmp eq ptr %i.be, null
  %i.bf = zext nneg i32 %spec.select.i38 to i64
  %i.bg = shl nuw nsw i64 %i.bf, 2                ; 2 uses
  br i1 %.not9.i10.i40, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bh = tail call ptr @realloc(ptr noundef nonnull %i.be, i64 noundef %i.bg) #21
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bi = tail call noalias ptr @malloc(i64 noundef %i.bg) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bj = phi ptr [ %i.bh, %bb.v ], [ %i.bi, %bb.w ]
  store ptr %i.bj, ptr %i.bd, align 8, !tbaa !23
  br label %Vec_IntGrow.exit11.sink.split.i41

Vec_IntGrow.exit11.sink.split.i41:                ; preds = %bb.x, %Vec_IntGrow.exit.i44
  %spec.select.sink.i42 = phi i32 [ %spec.select.i38, %bb.x ], [ 16, %Vec_IntGrow.exit.i44 ]
  store i32 %spec.select.sink.i42, ptr %3, align 8, !tbaa !22
  %.pre60 = load i32, ptr %i.ar, align 4, !tbaa !21
  br label %Vec_IntPush.exit45

Vec_IntPush.exit45:                               ; preds = %bb.o, %bb.t, %Vec_IntGrow.exit11.sink.split.i41
  %i.bk = phi i32 [ %i.as, %bb.o ], [ %i.as, %bb.t ], [ %.pre60, %Vec_IntGrow.exit11.sink.split.i41 ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !23
  %i.bn = add nsw i32 %i.bk, 1
  store i32 %i.bn, ptr %i.ar, align 4, !tbaa !21
  br label %.critedge.sink.split

bb.y:                                             ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !21 ; 7 uses
  %i.bq = load i32, ptr %5, align 8, !tbaa !22
  %i.br = icmp eq i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.z, label %Vec_IntPush.exit53

bb.z:                                             ; preds = %bb.y
  %i.bs = icmp slt i32 %i.bp, 16
  br i1 %i.bs, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !23 ; 2 uses
  %.not9.i.i51 = icmp eq ptr %i.bu, null
  br i1 %.not9.i.i51, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bv = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.bu, i64 noundef 64) #21
  br label %Vec_IntGrow.exit.i52

bb.ac:                                            ; preds = %bb.aa
  %i.bw = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #20
  br label %Vec_IntGrow.exit.i52

Vec_IntGrow.exit.i52:                             ; preds = %bb.ac, %bb.ab
  %i.bx = phi ptr [ %i.bv, %bb.ab ], [ %i.bw, %bb.ac ]
  store ptr %i.bx, ptr %i.bt, align 8, !tbaa !23
  br label %Vec_IntGrow.exit11.sink.split.i49

bb.ad:                                            ; preds = %bb.z
  %i.by = icmp samesign ult i32 %i.bp, 1073741823
  %i.bz = shl nuw nsw i32 %i.bp, 1
  %spec.select.i46 = select i1 %i.by, i32 %i.bz, i32 2147483647 ; 3 uses
  %.not.i9.i47 = icmp samesign ult i32 %i.bp, %spec.select.i46
end_hunk_1
