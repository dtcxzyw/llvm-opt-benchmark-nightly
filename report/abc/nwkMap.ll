Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/nwkMap?download=true
inline.NumInlined: 92
inline.NumDeleted: 46
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"%s =\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Computing switching activity\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%9.2f sec\0A\00", align 1
@enable_dbg_outs = external local_unnamed_addr global i32, align 4
@stdout = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [51 x i8] c"Nwk_NodeIfToHop(): Computing local AIG has failed.\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @Nwk_ManSetIfParsDefault(ptr nofree noundef writeonly captures(none) initializes((0, 376)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(360) %i.a, i8 0, i64 360, i1 false)
  store <4 x i32> <i32 6, i32 8, i32 1, i32 2>, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> <float -1.000000e+00, float 5.000000e-03>, ptr %i.b, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 1, ptr %i.c, align 4, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.d, align 4, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 1, ptr %i.e, align 8, !tbaa !61
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 1, ptr %i.f, align 4, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 84
  store i32 0, ptr %i.g, align 4, !tbaa !17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 0, ptr %i.h, align 8, !tbaa !63
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 260
  store i32 0, ptr %i.i, align 4, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %i.j, align 8, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr null, ptr %i.k, align 8, !tbaa !66
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define ptr @Nwk_ManToIf(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #16
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %4, align 8, !tbaa !70
  %.neg106 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !71
  %.neg = sdiv i64 %i.e, -1000
  %.neg107 = add i64 %.neg, %.neg106
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg107, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @Aig_ManSetRegNum(ptr noundef %0, i32 noundef 0) #16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !72
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %Vec_IntStart.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.h = call ptr @Saig_ManComputeSwitchProbs(ptr noundef %0, i32 noundef 48, i32 noundef 16, i32 noundef 0) #16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.j = load i32, ptr %i.i, align 8, !tbaa !73
  %.not71 = icmp eq i32 %i.j, 0
  br i1 %.not71, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  %i.k = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #16
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %Abc_Clock.exit99, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr %3, align 8, !tbaa !70
  %i.n = mul nsw i64 %i.m, 1000000
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !71
  %i.q = sdiv i64 %i.p, 1000
  %i.r = add nsw i64 %i.q, %i.n
  br label %Abc_Clock.exit99

Abc_Clock.exit99:                                 ; preds = %bb.d, %bb.e
  %.0.i98 = phi i64 [ %i.r, %bb.e ], [ -1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.s = add i64 %.0.i98, %.0.i.neg
  %i.t = sitofp i64 %i.s to double
  %i.u = fdiv double %i.t, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.2, double noundef %i.u)
  br label %bb.f

bb.f:                                             ; preds = %Abc_Clock.exit99, %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !75   ; 3 uses
  %i.x = getelementptr i8, ptr %0, i64 32
  %.val80 = load ptr, ptr %i.x, align 8, !tbaa !31
  %i.y = getelementptr i8, ptr %.val80, i64 4
  %.val80.val = load i32, ptr %i.y, align 4, !tbaa !33 ; 5 uses
  %i.z = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #17 ; 7 uses
  %i.aa = add i32 %.val80.val, -1
  %or.cond.i.i = icmp ult i32 %i.aa, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val80.val ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.z, align 8, !tbaa !76
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !75
  store i32 %.val80.val, ptr %i.ab, align 4, !tbaa !77
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.f
  %i.ad = sext i32 %spec.store.select.i.i to i64
  %i.ae = shl nsw i64 %i.ad, 2
  %i.af = call noalias ptr @malloc(i64 noundef %i.ae) #17 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !75
  store i32 %.val80.val, ptr %i.ab, align 4, !tbaa !77
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.g

bb.g:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.ah = sext i32 %.val80.val to i64
  %i.ai = shl nsw i64 %i.ah, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.af, i8 0, i64 %i.ai, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %bb.g, %Vec_IntAlloc.exit.i, %Vec_IntAlloc.exit.thread.i, %Abc_Clock.exit
  %.068 = phi ptr [ null, %Abc_Clock.exit ], [ %i.h, %Vec_IntAlloc.exit.thread.i ], [ %i.h, %Vec_IntAlloc.exit.i ], [ %i.h, %bb.g ] ; 3 uses
  %.067 = phi ptr [ null, %Abc_Clock.exit ], [ %i.z, %Vec_IntAlloc.exit.thread.i ], [ %i.z, %Vec_IntAlloc.exit.i ], [ %i.z, %bb.g ] ; 2 uses
  %.066 = phi ptr [ null, %Abc_Clock.exit ], [ %i.w, %Vec_IntAlloc.exit.thread.i ], [ %i.w, %Vec_IntAlloc.exit.i ], [ %i.w, %bb.g ]
  %.065 = phi ptr [ null, %Abc_Clock.exit ], [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.af, %bb.g ]
  %i.aj = call ptr @If_ManStart(ptr noundef nonnull %1) #16 ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 176
  store ptr %.067, ptr %i.ak, align 8, !tbaa !78
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 4
  %.val116 = load i32, ptr %i.an, align 4, !tbaa !33
  %i.ao = icmp sgt i32 %.val116, 0
  br i1 %i.ao, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStart.exit
  %i.ap = getelementptr i8, ptr %i.aj, i64 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 84 ; 2 uses
  %i.ar = getelementptr i8, ptr %2, i64 8
  %.not77 = icmp eq ptr %.067, null
  %i.as = getelementptr i8, ptr %0, i64 248
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %Aig_ObjIsChoice.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Aig_ObjIsChoice.exit.thread ] ; 3 uses
  %i.at = phi ptr [ %i.am, %.lr.ph ], [ %i.do, %Aig_ObjIsChoice.exit.thread ]
  %.064117 = phi ptr [ null, %.lr.ph ], [ %.2, %Aig_ObjIsChoice.exit.thread ] ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val81 = load ptr, ptr %i.au, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val81, i64 %indvars.iv
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !48 ; 9 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %Aig_ObjIsChoice.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr i8, ptr %i.aw, i64 24     ; 2 uses
  %.val82 = load i64, ptr %i.ay, align 8
  %i.az = and i64 %.val82, 7
  switch i64 %i.az, label %bb.o [
    i64 5, label %bb.j
    i64 2, label %bb.k
    i64 3, label %bb.m
    i64 1, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.ba = getelementptr i8, ptr %i.aw, i64 8
  %.val84 = load ptr, ptr %i.ba, align 8, !tbaa !49
  %i.bb = ptrtoint ptr %.val84 to i64             ; 2 uses
  %i.bc = and i64 %i.bb, -2
  %i.bd = inttoptr i64 %i.bc to ptr
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !50
  %i.bg = and i64 %i.bb, 1
  %i.bh = ptrtoint ptr %i.bf to i64
  %i.bi = xor i64 %i.bg, %i.bh
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = getelementptr i8, ptr %i.aw, i64 16
  %.val87 = load ptr, ptr %i.bk, align 8, !tbaa !79
  %i.bl = ptrtoint ptr %.val87 to i64             ; 2 uses
  %i.bm = and i64 %i.bl, -2
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !50
  %i.bq = and i64 %i.bl, 1
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = xor i64 %i.bq, %i.br
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = call ptr @If_ManCreateAnd(ptr noundef %i.aj, ptr noundef %i.bj, ptr noundef %i.bt) #16
  br label %bb.o

bb.k:                                             ; preds = %bb.i
  %i.bv = call ptr @If_ManCreateCi(ptr noundef %i.aj) #16 ; 4 uses
  %5 = getelementptr i8, ptr %i.aw, i64 28
  %i.bw = load i32, ptr %5, align 4               ; 2 uses
  %6 = load i32, ptr %i.bv, align 8
  %7 = shl i32 %i.bw, 13
  %i.bx = and i32 %6, 8191
  %i.by = or disjoint i32 %i.bx, %7
  store i32 %i.by, ptr %i.bv, align 8
  %i.bz = load i32, ptr %i.aq, align 4, !tbaa !80
  %8 = and i32 %i.bw, 524287                      ; 2 uses
  %i.ca = icmp slt i32 %i.bz, %8
  br i1 %i.ca, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  store i32 %8, ptr %i.aq, align 4, !tbaa !80
  br label %bb.o

bb.m:                                             ; preds = %bb.i
  %i.cb = getelementptr i8, ptr %i.aw, i64 8
  %.val83 = load ptr, ptr %i.cb, align 8, !tbaa !49
  %i.cc = ptrtoint ptr %.val83 to i64             ; 2 uses
  %i.cd = and i64 %i.cc, -2
  %i.ce = inttoptr i64 %i.cd to ptr
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !50
  %i.ch = and i64 %i.cc, 1
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = xor i64 %i.ch, %i.ci
  %i.ck = inttoptr i64 %i.cj to ptr
  %i.cl = call ptr @If_ManCreateCo(ptr noundef %i.aj, ptr noundef %i.ck) #16
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.val93 = load ptr, ptr %i.ap, align 8, !tbaa !81
  br label %bb.o

bb.o:                                             ; preds = %bb.i, %bb.l, %bb.k, %bb.n, %bb.m, %bb.j
  %.1 = phi ptr [ %i.bu, %bb.j ], [ %i.bv, %bb.l ], [ %i.bv, %bb.k ], [ %i.cl, %bb.m ], [ %.val93, %bb.n ], [ %.064117, %bb.i ] ; 7 uses
  %.val94 = load ptr, ptr %i.ar, align 8, !tbaa !47
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.val94, i64 %indvars.iv
  store ptr %.1, ptr %i.cm, align 8, !tbaa !48
  %i.cn = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 3 uses
  store ptr %.1, ptr %i.cn, align 8, !tbaa !50
  br i1 %.not77, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !82
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [4 x i8], ptr %.066, i64 %i.cq
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !10
  %i.ct = getelementptr inbounds nuw i8, ptr %.1, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !53
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %.065, i64 %i.cv
  store float %i.cs, ptr %i.cw, align 4, !tbaa !10
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.val95 = load ptr, ptr %i.as, align 8, !tbaa !83 ; 3 uses
  %.not.i100 = icmp eq ptr %.val95, null
  br i1 %.not.i100, label %Aig_ObjIsChoice.exit.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cx = getelementptr inbounds nuw i8, ptr %i.aw, i64 36
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !82
  %i.cz = sext i32 %i.cy to i64
  %i.da = getelementptr inbounds [8 x i8], ptr %.val95, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !84 ; 2 uses
  %.not4.i = icmp eq ptr %i.db, null
  br i1 %.not4.i, label %Aig_ObjIsChoice.exit.thread, label %Aig_ObjIsChoice.exit

Aig_ObjIsChoice.exit:                             ; preds = %bb.r
  %i.dc = load i64, ptr %i.ay, align 8
  %i.dd = and i64 %i.dc, 4294967232
  %.not112 = icmp eq i64 %i.dd, 0
  br i1 %.not112, label %Aig_ObjIsChoice.exit.thread, label %Aig_ObjEquiv.exit103.preheader

Aig_ObjEquiv.exit103.preheader:                   ; preds = %Aig_ObjIsChoice.exit
  %.pre = load ptr, ptr %i.cn, align 8, !tbaa !50
  br label %Aig_ObjEquiv.exit103

Aig_ObjEquiv.exit103:                             ; preds = %Aig_ObjEquiv.exit103.preheader, %Aig_ObjEquiv.exit103
  %i.de = phi ptr [ %i.dg, %Aig_ObjEquiv.exit103 ], [ %.pre, %Aig_ObjEquiv.exit103.preheader ]
  %.063114 = phi ptr [ %i.dm, %Aig_ObjEquiv.exit103 ], [ %i.db, %Aig_ObjEquiv.exit103.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.063114, i64 40
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !50 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 40
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !54
  %i.di = getelementptr inbounds nuw i8, ptr %.063114, i64 36
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !82
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %.val95, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !84 ; 2 uses
  %.not79 = icmp eq ptr %i.dm, null
  br i1 %.not79, label %._crit_edge, label %Aig_ObjEquiv.exit103, !llvm.loop !67

._crit_edge:                                      ; preds = %Aig_ObjEquiv.exit103
  %i.dn = load ptr, ptr %i.cn, align 8, !tbaa !50
  call void @If_ManCreateChoice(ptr noundef %i.aj, ptr noundef %i.dn) #16
  br label %Aig_ObjIsChoice.exit.thread

Aig_ObjIsChoice.exit.thread:                      ; preds = %bb.q, %bb.r, %bb.h, %._crit_edge, %Aig_ObjIsChoice.exit
  %.2 = phi ptr [ %.064117, %bb.h ], [ %.1, %._crit_edge ], [ %.1, %Aig_ObjIsChoice.exit ], [ %.1, %bb.r ], [ %.1, %bb.q ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.do = load ptr, ptr %i.al, align 8, !tbaa !31 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 4
  %.val = load i32, ptr %i.dp, align 4, !tbaa !33
  %i.dq = sext i32 %.val to i64
  %i.dr = icmp slt i64 %indvars.iv.next, %i.dq
  br i1 %i.dr, label %bb.h, label %.critedge, !llvm.loop !68

.critedge:                                        ; preds = %Aig_ObjIsChoice.exit.thread, %Vec_IntStart.exit
  %.not72 = icmp eq ptr %.068, null
  br i1 %.not72, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.critedge
  %i.ds = getelementptr inbounds nuw i8, ptr %.068, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !75 ; 2 uses
  %.not.i104 = icmp eq ptr %i.dt, null
  br i1 %.not.i104, label %Vec_IntFree.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef nonnull %i.dt) #16
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.s, %bb.t
  call void @free(ptr noundef nonnull %.068) #16
  br label %bb.u

bb.u:                                             ; preds = %Vec_IntFree.exit, %.critedge
  ret ptr %i.aj
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @Aig_ManSetRegNum(ptr noundef, i32 noundef) local_unnamed_addr #4

declare ptr @Saig_ManComputeSwitchProbs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #5 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !8
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #16 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #16
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #16 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !89
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #18
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #16 ; 0 uses
  call void @free(ptr noundef %i.d) #16
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !89, !noalias !90
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #16, !inline_history !87 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret void
}

declare ptr @If_ManStart(ptr noundef) local_unnamed_addr #4

declare ptr @If_ManCreateAnd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare ptr @If_ManCreateCi(ptr noundef) local_unnamed_addr #4

declare ptr @If_ManCreateCo(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @If_ManCreateChoice(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define ptr @Nwk_NodeIfToHop2_rec(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 5 uses
  %.val42 = load ptr, ptr %i.a, align 8, !tbaa !48 ; 2 uses
  %.not = icmp eq ptr %.val42, null
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33   ; 7 uses
  %i.d = load i32, ptr %3, align 8, !tbaa !56
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %Vec_PtrPush.exit

bb.c:                                             ; preds = %bb.b
  %i.f = icmp slt i32 %i.c, 16
  br i1 %i.f, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !47   ; 2 uses
end_hunk_0
