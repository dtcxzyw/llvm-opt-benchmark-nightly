Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/z18?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.STYLE = type { %union.anon, %union.anon.0, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.0 = type { %struct.GAP }

@initial_constraint = internal global %struct.CONSTRAINT zeroinitializer, align 4, !guid !8
@InitialEnvironment = dso_local local_unnamed_addr global ptr null, align 8, !guid !9
@InitialStyle = dso_local global %struct.STYLE zeroinitializer, align 8, !guid !10
@zz_lengths = external local_unnamed_addr global [0 x i8], align 1
@zz_size = external local_unnamed_addr global i32, align 4
@no_fpos = external local_unnamed_addr global ptr, align 8
@zz_free = external local_unnamed_addr global [0 x ptr], align 8
@zz_hold = external local_unnamed_addr global ptr, align 8
@PrintSym = external local_unnamed_addr global ptr, align 8
@xx_link = external local_unnamed_addr global ptr, align 8
@zz_res = external local_unnamed_addr global ptr, align 8
@zz_tmp = external local_unnamed_addr global ptr, align 8
@root_galley = internal unnamed_addr global ptr null, align 8, !guid !11
@InputSym = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1, !guid !12
@.str.2 = private unnamed_addr constant [32 x i8] c"TransferInit: recs   != nilobj!\00", align 1, !guid !13
@.str.3 = private unnamed_addr constant [32 x i8] c"TransferInit: inners != nilobj!\00", align 1, !guid !14
@.str.4 = private unnamed_addr constant [30 x i8] c"TransferInit: initial galley!\00", align 1, !guid !15
@.str.5 = private unnamed_addr constant [38 x i8] c"TransferInit: input sym not external!\00", align 1, !guid !16
@itop = internal unnamed_addr global i32 0, align 4, !guid !17
@targets = internal unnamed_addr global [30 x ptr] zeroinitializer, align 16, !guid !18
@constraints = internal global [30 x %struct.CONSTRAINT] zeroinitializer, align 16, !guid !19
@.str.6 = private unnamed_addr constant [28 x i8] c"TransferBegin: non-CLOSURE!\00", align 1, !guid !20
@.str.7 = private unnamed_addr constant [24 x i8] c"cannot attach galley %s\00", align 1, !guid !21
@xx_hold = external local_unnamed_addr global ptr, align 8
@xx_tmp = external local_unnamed_addr global ptr, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"galley nested too deeply (max is %d)\00", align 1, !guid !22
@.str.9 = private unnamed_addr constant [49 x i8] c"galley %s deleted (insufficient width at target)\00", align 1, !guid !23
@.str.10 = private unnamed_addr constant [48 x i8] c"right parameter of %s is vertically constrained\00", align 1, !guid !24
@.str.11 = private unnamed_addr constant [29 x i8] c"TransferComponent: internal!\00", align 1, !guid !25
@.str.12 = private unnamed_addr constant [32 x i8] c"TransferComponent: input child!\00", align 1, !guid !26
@.str.13 = private unnamed_addr constant [26 x i8] c"TransferEnd: input child!\00", align 1, !guid !27

; Function Attrs: nounwind uwtable
define dso_local void @TransferInit(ptr noundef %0) local_unnamed_addr #0 !guid !38 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  store i32 8388606, ptr @initial_constraint, align 4, !tbaa !29
  store i32 8388606, ptr getelementptr inbounds nuw (i8, ptr @initial_constraint, i64 4), align 4, !tbaa !30
  store i32 8388606, ptr getelementptr inbounds nuw (i8, ptr @initial_constraint, i64 8), align 4, !tbaa !31
  store ptr %0, ptr @InitialEnvironment, align 8, !tbaa !34
  %i.e = load i16, ptr @InitialStyle, align 8
  %i.f = and i16 %i.e, 127
  %i.g = load i16, ptr getelementptr inbounds nuw (i8, ptr @InitialStyle, i64 4), align 4
  %i.h = and i16 %i.g, 127
  %i.i = insertelement <4 x i16> <i16 poison, i16 0, i16 poison, i16 0>, i16 %i.f, i64 0
  %i.j = insertelement <4 x i16> %i.i, i16 %i.h, i64 2
  %i.k = or disjoint <4 x i16> %i.j, <i16 25600, i16 360, i16 9728, i16 120>
  store <4 x i16> %i.k, ptr @InitialStyle, align 8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @InitialStyle, i64 4), align 4
  store i8 0, ptr @InitialStyle, align 8
  store i64 0, ptr getelementptr inbounds nuw (i8, ptr @InitialStyle, i64 8), align 8
  %i.l = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 8), align 1, !tbaa !35 ; 2 uses
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  store i32 %i.m, ptr @zz_size, align 4, !tbaa !7
  %i.n = zext i8 %i.l to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.n ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !34   ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = load ptr, ptr @no_fpos, align 8, !tbaa !36
  %i.s = tail call ptr @GetMemory(i32 noundef %i.m, ptr noundef %i.r) #4 ; 2 uses
  store ptr %i.s, ptr @zz_hold, align 8, !tbaa !34
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store ptr %i.p, ptr @zz_hold, align 8, !tbaa !34
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !35
  store ptr %i.t, ptr %i.o, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.u = phi ptr [ %i.s, %bb.b ], [ %i.p, %bb.c ] ; 16 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store i8 8, ptr %i.v, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store ptr %i.u, ptr %i.w, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.u, ptr %i.x, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.u, ptr %i.y, align 8, !tbaa !35
  store ptr %i.u, ptr %i.u, align 8, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 42 ; 2 uses
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = and i16 %i.aa, -4353
  %i.ac = getelementptr inbounds nuw i8, ptr %i.u, i64 128
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  store ptr null, ptr %i.ad, align 8, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.af = or disjoint i16 %i.ab, 256
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i8 0, i64 32, i1 false)
  store i16 %i.af, ptr %i.z, align 2
  %i.ag = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 122), align 1, !tbaa !35 ; 2 uses
  %i.ah = zext i8 %i.ag to i32                    ; 2 uses
  store i32 %i.ah, ptr @zz_size, align 4, !tbaa !7
  %i.ai = zext i8 %i.ag to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !34 ; 4 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr @no_fpos, align 8, !tbaa !36
  %i.an = tail call ptr @GetMemory(i32 noundef %i.ah, ptr noundef %i.am) #4 ; 2 uses
  store ptr %i.an, ptr @zz_hold, align 8, !tbaa !34
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store ptr %i.ak, ptr @zz_hold, align 8, !tbaa !34
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !35
  store ptr %i.ao, ptr %i.aj, align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.ap = phi ptr [ %i.an, %bb.e ], [ %i.ak, %bb.f ] ; 16 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  store i8 122, ptr %i.aq, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  store ptr %i.ap, ptr %i.as, align 8, !tbaa !35
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store ptr %i.ap, ptr %i.at, align 8, !tbaa !35
  store ptr %i.ap, ptr %i.ap, align 8, !tbaa !35
  %i.au = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 2), align 1, !tbaa !35 ; 2 uses
  %i.av = zext i8 %i.au to i32                    ; 2 uses
  store i32 %i.av, ptr @zz_size, align 4, !tbaa !7
  %i.aw = zext i8 %i.au to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !34 ; 4 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ba = load ptr, ptr @no_fpos, align 8, !tbaa !36
  %i.bb = tail call ptr @GetMemory(i32 noundef %i.av, ptr noundef %i.ba) #4 ; 2 uses
  store ptr %i.bb, ptr @zz_hold, align 8, !tbaa !34
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store ptr %i.ay, ptr @zz_hold, align 8, !tbaa !34
  %i.bc = load ptr, ptr %i.ay, align 8, !tbaa !35
  store ptr %i.bc, ptr %i.ax, align 8, !tbaa !34
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.bd = phi ptr [ %i.bb, %bb.h ], [ %i.ay, %bb.i ] ; 12 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  store i8 2, ptr %i.be, align 8, !tbaa !35
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  store ptr %i.bd, ptr %i.bf, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store ptr %i.bd, ptr %i.bg, align 8, !tbaa !35
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store ptr %i.bd, ptr %i.bh, align 8, !tbaa !35
  store ptr %i.bd, ptr %i.bd, align 8, !tbaa !35
  %i.bi = load ptr, ptr @PrintSym, align 8, !tbaa !34
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  store ptr %i.bd, ptr %i.bk, align 8, !tbaa !35
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 42 ; 2 uses
  %i.bm = load i16, ptr %i.bl, align 2
  %i.bn = and i16 %i.bm, -29
  %i.bo = or disjoint i16 %i.bn, 16
  store i16 %i.bo, ptr %i.bl, align 2
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ap, i64 42 ; 2 uses
  %i.bq = load i16, ptr %i.bp, align 2
  %i.br = and i16 %i.bq, -33
  store i16 %i.br, ptr %i.bp, align 2
  %i.bs = load i8, ptr @zz_lengths, align 1, !tbaa !35 ; 2 uses
  %i.bt = zext i8 %i.bs to i32                    ; 2 uses
  store i32 %i.bt, ptr @zz_size, align 4, !tbaa !7
  %i.bu = zext i8 %i.bs to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.bu ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !34 ; 4 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.by = load ptr, ptr @no_fpos, align 8, !tbaa !36
  %i.bz = tail call ptr @GetMemory(i32 noundef %i.bt, ptr noundef %i.by) #4
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  store ptr %i.bw, ptr @zz_hold, align 8, !tbaa !34
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !35
  store ptr %i.ca, ptr %i.bv, align 8, !tbaa !34
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.cb = phi ptr [ %i.bz, %bb.k ], [ %i.bw, %bb.l ] ; 12 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 32
  store i8 0, ptr %i.cc, align 8, !tbaa !35
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.cb, ptr %i.cd, align 8, !tbaa !35
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %i.cb, ptr %i.ce, align 8, !tbaa !35
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store ptr %i.cb, ptr %i.cf, align 8, !tbaa !35
  store ptr %i.cb, ptr %i.cb, align 8, !tbaa !35
  store ptr %i.cb, ptr @xx_link, align 8, !tbaa !34
  store ptr %i.cb, ptr @zz_res, align 8, !tbaa !34
  store ptr %i.u, ptr @zz_hold, align 8, !tbaa !34
  %i.cg = load ptr, ptr %i.u, align 8, !tbaa !35
  store ptr %i.cg, ptr @zz_tmp, align 8, !tbaa !34
  %i.ch = load ptr, ptr %i.cb, align 8, !tbaa !35
  store ptr %i.ch, ptr %i.u, align 8, !tbaa !35
  %i.ci = load ptr, ptr @zz_hold, align 8, !tbaa !34
  %i.cj = load ptr, ptr @zz_res, align 8, !tbaa !34 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !35
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store ptr %i.ci, ptr %i.cl, align 8, !tbaa !35
  %i.cm = load ptr, ptr @zz_tmp, align 8, !tbaa !34 ; 2 uses
  store ptr %i.cm, ptr %i.cj, align 8, !tbaa !35
  %i.cn = load ptr, ptr @zz_res, align 8, !tbaa !34
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store ptr %i.cn, ptr %i.co, align 8, !tbaa !35
  %i.cp = load ptr, ptr @xx_link, align 8, !tbaa !34 ; 4 uses
  store ptr %i.cp, ptr @zz_res, align 8, !tbaa !34
  store ptr %i.ap, ptr @zz_hold, align 8, !tbaa !34
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cr = load ptr, ptr %i.ar, align 8, !tbaa !35 ; 3 uses
  store ptr %i.cr, ptr @zz_tmp, align 8, !tbaa !34
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !35 ; 2 uses
  store ptr %i.ct, ptr %i.ar, align 8, !tbaa !35
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  store ptr %i.ap, ptr %i.cu, align 8, !tbaa !35
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !35
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  store ptr %i.cp, ptr %i.cv, align 8, !tbaa !35
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cw = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 8), align 1, !tbaa !35 ; 2 uses
  %i.cx = zext i8 %i.cw to i32                    ; 2 uses
  store i32 %i.cx, ptr @zz_size, align 4, !tbaa !7
  %i.cy = zext i8 %i.cw to i64
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.cy ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !34 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dc = load ptr, ptr @no_fpos, align 8, !tbaa !36
end_hunk_0
