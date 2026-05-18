inline.NumInlined: 69
inline.NumDeleted: 34
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, ptr }
%union.anon = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%"class.google::ErrnoLogMessage" = type { %"class.google::LogMessage" }
%"class.google::LogMessage" = type { ptr, ptr, %"struct.google::LogMessageTime" }
%"struct.google::LogMessageTime" = type { %struct.tm, i64, i32, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }

@.str = private unnamed_addr constant [70 x i8] c"/opt-bench/work/velox/velox/build/_deps/glog-src/src/signalhandler.cc\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"sigaction(kFailureSignals[i].number, &sig_action, NULL)\00", align 1
@_ZN6google12_GLOBAL__N_116g_failure_writerE = internal unnamed_addr global ptr @_ZN6google12_GLOBAL__N_113WriteToStderrEPKcm, align 8
@_ZN6google12_GLOBAL__N_127g_entered_thread_id_pointerE = internal global ptr null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"PC: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"(unknown)\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"SIGSEGV\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"SIGILL\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"SIGFPE\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"SIGABRT\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"SIGBUS\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"SIGTERM\00", align 1
@switch.table._ZN6google12_GLOBAL__N_120FailureSignalHandlerEiP9siginfo_tPv = private unnamed_addr constant [12 x ptr] [ptr @.str.24, ptr poison, ptr @.str.26, ptr @.str.27, ptr @.str.25, ptr poison, ptr poison, ptr @.str.23, ptr poison, ptr poison, ptr poison, ptr @.str.28], align 8

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN6google24glog_internal_namespace_31IsFailureSignalHandlerInstalledEv() local_unnamed_addr #0 {
bb.a:
  %0 = alloca %struct.sigaction, align 8          ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %0, i8 0, i64 152, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = call i32 @sigemptyset(ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.c = call i32 @sigaction(i32 noundef 6, ptr noundef null, ptr noundef nonnull %0) #11 ; 0 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !7
  %i.e = icmp eq ptr %i.d, @_ZN6google12_GLOBAL__N_120FailureSignalHandlerEiP9siginfo_tPv
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #11
  ret i1 %i.e
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal void @_ZN6google12_GLOBAL__N_120FailureSignalHandlerEiP9siginfo_tPv(i32 noundef %0, ptr noundef readonly captures(none) %1, ptr readnone captures(none) %2) #4 {
bb.a:
  %3 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.a = alloca [256 x i8], align 16              ; 32 uses
  %i.b = alloca [256 x i8], align 16              ; 13 uses
  %4 = alloca %struct.sigaction, align 8          ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca [32 x ptr], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.e = tail call i64 @pthread_self() #12        ; 2 uses
  store i64 %i.e, ptr %i.c, align 8, !tbaa !8
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = cmpxchg ptr @_ZN6google12_GLOBAL__N_127g_entered_thread_id_pointerE, i64 0, i64 %i.f seq_cst seq_cst, align 8
  %.not = extractvalue { i64, i1 } %i.g, 1
  %.sink.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  %.sink.sroa.gep193 = getelementptr inbounds nuw i8, ptr %i.a, i64 7
  %.sink174.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  %.sink174.sroa.gep194 = getelementptr inbounds nuw i8, ptr %i.a, i64 6
  %.sink175.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %.sink175.sroa.gep195 = getelementptr inbounds nuw i8, ptr %i.a, i64 5
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.c, align 8, !tbaa !8
  %i.i = load ptr, ptr @_ZN6google12_GLOBAL__N_127g_entered_thread_id_pointerE, align 8, !tbaa !10
  %i.j = load i64, ptr %i.i, align 8, !tbaa !8
  %.not24 = icmp eq i64 %i.h, %i.j
  br i1 %.not24, label %bb.c, label %.preheader

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %4, i8 0, i64 152, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = call i32 @sigemptyset(ptr noundef nonnull %i.k) #11 ; 0 uses
  store ptr null, ptr %4, align 8, !tbaa !7
  %i.m = call i32 @sigaction(i32 noundef %0, ptr noundef nonnull %4, ptr noundef null) #11 ; 0 uses
  %i.n = call i32 @getpid() #11
  %i.o = call i32 @kill(i32 noundef %i.n, i32 noundef %0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.preheader

.preheader:                                       ; preds = %bb.c, %bb.b
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %i.p = call i32 @sleep(i32 noundef 1)           ; 0 uses
  br label %bb.d, !llvm.loop !13

bb.e:                                             ; preds = %bb.a
  %i.q = call i64 @time(ptr noundef null) #11     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %.0.lcssa.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.b, i64 15 ; 3 uses
  store <8 x i8> <i8 42, i8 42, i8 42, i8 32, i8 65, i8 98, i8 111, i8 114>, ptr %i.b, align 16, !tbaa !7
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <4 x i8> <i8 116, i8 101, i8 100, i8 32>, ptr %5, align 8, !tbaa !7
  %6 = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i8 97, ptr %6, align 4, !tbaa !7
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  store i8 116, ptr %7, align 1, !tbaa !7
  %.0.lcssa.i.sroa.gep65.i = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  store i8 32, ptr %.0.lcssa.i.sroa.gep65.i, align 2, !tbaa !7
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %exitcond.not = icmp eq i64 %indvars.iv.next, 241
  br i1 %exitcond.not, label %.lr.ph.i.i.preheader.i.i, label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %.014.i.i162 = phi i64 [ %i.q, %bb.e ], [ %i.t, %bb.f ] ; 3 uses
  %indvars.iv161 = phi i64 [ 0, %bb.e ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.sroa.gep.i, i64 %indvars.iv161
  %i.s = urem i64 %.014.i.i162, 10
  %i.t = udiv i64 %.014.i.i162, 10
  %i.u = trunc nuw nsw i64 %i.s to i8
  %i.v = or disjoint i8 %i.u, 48
  store i8 %i.v, ptr %i.r, align 1, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv161, 1 ; 3 uses
  %i.w = icmp ult i64 %.014.i.i162, 10
  br i1 %i.w, label %split.i.i, label %bb.f

split.i.i:                                        ; preds = %bb.g
  %.pre19.i.i = and i64 %indvars.iv.next, 4294967295 ; 2 uses
  %.not193.i = icmp eq i64 %indvars.iv161, 0
  br i1 %.not193.i, label %.thread179.i, label %.lr.ph.i.i.preheader.i.i

.thread179.i:                                     ; preds = %split.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre19.i.i ; 4 uses
  %.ptr48100.i = getelementptr inbounds nuw i8, ptr %i.x, i64 15 ; 2 uses
  store <8 x i8> <i8 32, i8 40, i8 117, i8 110, i8 105, i8 120, i8 32, i8 116>, ptr %.ptr48100.i, align 1, !tbaa !7
  %8 = getelementptr inbounds nuw i8, ptr %i.x, i64 23
  store i8 105, ptr %8, align 1, !tbaa !7
  %9 = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  store i8 109, ptr %9, align 1, !tbaa !7
  %.ptr48100.i.a = getelementptr inbounds nuw i8, ptr %i.x, i64 25
  store i8 101, ptr %.ptr48100.i.a, align 1, !tbaa !7
  br label %bb.s

.lr.ph.i.i.preheader.i.i:                         ; preds = %bb.f, %split.i.i
  %.pre-phi.i96.i = phi i64 [ %.pre19.i.i, %split.i.i ], [ 241, %bb.f ] ; 13 uses
  %i.y = getelementptr i8, ptr %.0.lcssa.i.sroa.gep.i, i64 %.pre-phi.i96.i
  %.012.i.i.i.i = getelementptr i8, ptr %i.y, i64 -1
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.preheader.i.i
  %.014.i.i.i.i = phi ptr [ %.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %.0913.i.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i.i ], [ %.0.lcssa.i.sroa.gep.i, %.lr.ph.i.i.preheader.i.i ] ; 3 uses
  %i.z = load i8, ptr %.0913.i.i.i.i, align 1, !tbaa !7
  %i.aa = load i8, ptr %.014.i.i.i.i, align 1, !tbaa !7
  store i8 %i.aa, ptr %.0913.i.i.i.i, align 1, !tbaa !7
  store i8 %i.z, ptr %.014.i.i.i.i, align 1, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i, i64 1 ; 2 uses
  %.0.i.i.i.i = getelementptr inbounds i8, ptr %.014.i.i.i.i, i64 -1 ; 2 uses
  %i.ac = icmp ult ptr %i.ab, %.0.i.i.i.i
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i, !llvm.loop !15

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i: ; preds = %.lr.ph.i.i.i.i
  %.add.i = add nuw nsw i64 %.pre-phi.i96.i, 15   ; 4 uses
  %.ptr48.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add.i ; 12 uses
  %i.ad = icmp samesign ult i64 %.pre-phi.i96.i, 241
  br i1 %i.ad, label %bb.h, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i

bb.h:                                             ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i
  store i8 32, ptr %.ptr48.i, align 1, !tbaa !7
  %.not.i = icmp eq i64 %.add.i, 255
  br i1 %.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.ptr48.i, i64 1
  store i8 40, ptr %i.ae, align 1, !tbaa !7
  %i.af = icmp samesign ult i64 %.pre-phi.i96.i, 239
  br i1 %i.af, label %bb.j, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.ptr48.i, i64 2
  store i8 117, ptr %i.ag, align 1, !tbaa !7
  %.not66.i = icmp eq i64 %.pre-phi.i96.i, 238
  br i1 %.not66.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %.ptr48.i, i64 3
  store i8 110, ptr %i.ah, align 1, !tbaa !7
  %i.ai = icmp samesign ult i64 %.pre-phi.i96.i, 237
  br i1 %i.ai, label %bb.l, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.ptr48.i, i64 4
  store i8 105, ptr %i.aj, align 1, !tbaa !7
  %.not67.i = icmp eq i64 %.pre-phi.i96.i, 236
  br i1 %.not67.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %.ptr48.i, i64 5
  store i8 120, ptr %i.ak, align 1, !tbaa !7
  %i.al = icmp samesign ult i64 %.pre-phi.i96.i, 235
  br i1 %i.al, label %bb.n, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %.ptr48.i, i64 6
  store i8 32, ptr %i.am, align 1, !tbaa !7
  %.not68.i = icmp eq i64 %.pre-phi.i96.i, 234
  br i1 %.not68.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %.ptr48.i, i64 7
  store i8 116, ptr %i.an, align 1, !tbaa !7
  %i.ao = icmp samesign ult i64 %.pre-phi.i96.i, 233
  br i1 %i.ao, label %bb.p, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i

bb.p:                                             ; preds = %bb.o
  %i.ap = getelementptr inbounds nuw i8, ptr %.ptr48.i, i64 8
  store i8 105, ptr %i.ap, align 1, !tbaa !7
  %.not69.i = icmp eq i64 %.pre-phi.i96.i, 232
  br i1 %.not69.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %.ptr48.i, i64 9
  store i8 109, ptr %i.aq, align 1, !tbaa !7
  %i.ar = icmp samesign ult i64 %.pre-phi.i96.i, 231
  br i1 %i.ar, label %bb.r, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %.ptr48.i, i64 10
  store i8 101, ptr %i.as, align 1, !tbaa !7
  %.not70.i = icmp eq i64 %.pre-phi.i96.i, 230
  br i1 %.not70.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i, label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread179.i
  %.add103110117125132140147155162170177185.i = phi i64 [ 16, %.thread179.i ], [ %.add.i, %bb.r ]
  %.ptr48104109118124133139148154163169178184.i = phi ptr [ %.ptr48100.i, %.thread179.i ], [ %.ptr48.i, %bb.r ]
  %i.at = getelementptr inbounds nuw i8, ptr %.ptr48104109118124133139148154163169178184.i, i64 11
  store i8 41, ptr %i.at, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i
  %.add102.i = phi i64 [ %.add.i, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i ], [ %.add103110117125132140147155162170177185.i, %bb.s ], [ 255, %bb.h ], [ 245, %bb.r ], [ 254, %bb.i ], [ 248, %bb.o ], [ 253, %bb.j ], [ 246, %bb.q ], [ 252, %bb.k ], [ 249, %bb.n ], [ 251, %bb.l ], [ 247, %bb.p ], [ 250, %bb.m ]
  %.0.lcssa.i4.i = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i ], [ 12, %bb.s ], [ 1, %bb.h ], [ 11, %bb.r ], [ 2, %bb.i ], [ 8, %bb.o ], [ 3, %bb.j ], [ 10, %bb.q ], [ 4, %bb.k ], [ 7, %bb.n ], [ 5, %bb.l ], [ 9, %bb.p ], [ 6, %bb.m ]
  %.add46.i = add nuw nsw i64 %.0.lcssa.i4.i, %.add102.i ; 17 uses
  %i.au = icmp samesign ult i64 %.add46.i, 256
  br i1 %i.au, label %bb.t, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i

bb.t:                                             ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i
  %.ptr50.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %.add46.i ; 15 uses
  store i8 32, ptr %.ptr50.i, align 1, !tbaa !7
  %.not71.i = icmp eq i64 %.add46.i, 255
  br i1 %.not71.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.ptr50.1.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 1
  store i8 116, ptr %.ptr50.1.i, align 1, !tbaa !7
  %i.av = icmp samesign ult i64 %.add46.i, 254
  br i1 %i.av, label %bb.v, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i

bb.v:                                             ; preds = %bb.u
  %.ptr50.2.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 2
  store i8 114, ptr %.ptr50.2.i, align 1, !tbaa !7
  %.not72.i = icmp eq i64 %.add46.i, 253
  br i1 %.not72.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.ptr50.3.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 3
  store i8 121, ptr %.ptr50.3.i, align 1, !tbaa !7
  %i.aw = icmp samesign ult i64 %.add46.i, 252
  br i1 %i.aw, label %bb.x, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i

bb.x:                                             ; preds = %bb.w
  %.ptr50.4.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 4
  store i8 32, ptr %.ptr50.4.i, align 1, !tbaa !7
  %.not73.i = icmp eq i64 %.add46.i, 251
  br i1 %.not73.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.ptr50.5.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 5
  store i8 34, ptr %.ptr50.5.i, align 1, !tbaa !7
  %i.ax = icmp samesign ult i64 %.add46.i, 250
  br i1 %i.ax, label %bb.z, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i

bb.z:                                             ; preds = %bb.y
  %.ptr50.6.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 6
  store i8 100, ptr %.ptr50.6.i, align 1, !tbaa !7
  %.not74.i = icmp eq i64 %.add46.i, 249
  br i1 %.not74.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.ptr50.7.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 7
  store i8 97, ptr %.ptr50.7.i, align 1, !tbaa !7
  %i.ay = icmp samesign ult i64 %.add46.i, 248
  br i1 %i.ay, label %bb.ab, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i

bb.ab:                                            ; preds = %bb.aa
  %.ptr50.8.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 8
  store i8 116, ptr %.ptr50.8.i, align 1, !tbaa !7
  %.not75.i = icmp eq i64 %.add46.i, 247
  br i1 %.not75.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.ptr50.9.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 9
  store i8 101, ptr %.ptr50.9.i, align 1, !tbaa !7
  %i.az = icmp samesign ult i64 %.add46.i, 246
  br i1 %i.az, label %bb.ad, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i

bb.ad:                                            ; preds = %bb.ac
  %.ptr50.10.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 10
  store i8 32, ptr %.ptr50.10.i, align 1, !tbaa !7
  %.not76.i = icmp eq i64 %.add46.i, 245
  br i1 %.not76.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.ptr50.11.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 11
  store i8 45, ptr %.ptr50.11.i, align 1, !tbaa !7
  %i.ba = icmp samesign ult i64 %.add46.i, 244
  br i1 %i.ba, label %bb.af, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i

bb.af:                                            ; preds = %bb.ae
  %.ptr50.12.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 12
  store i8 100, ptr %.ptr50.12.i, align 1, !tbaa !7
  %.not77.i = icmp eq i64 %.add46.i, 243
  br i1 %.not77.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.ptr50.13.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 13
  store i8 32, ptr %.ptr50.13.i, align 1, !tbaa !7
  %i.bb = icmp samesign ult i64 %.add46.i, 242
  br i1 %i.bb, label %bb.ah, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i

bb.ah:                                            ; preds = %bb.ag
  %.ptr50.14.i = getelementptr inbounds nuw i8, ptr %.ptr50.i, i64 14
  store i8 64, ptr %.ptr50.14.i, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i: ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i
  %.0.lcssa.i8.i = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit6.i ], [ 15, %bb.ah ], [ 1, %bb.t ], [ 14, %bb.ag ], [ 2, %bb.u ], [ 8, %bb.aa ], [ 3, %bb.v ], [ 13, %bb.af ], [ 4, %bb.w ], [ 10, %bb.ac ], [ 5, %bb.x ], [ 12, %bb.ae ], [ 6, %bb.y ], [ 9, %bb.ab ], [ 7, %bb.z ], [ 11, %bb.ad ]
  %i.bc = add nuw nsw i64 %.0.lcssa.i8.i, %.add46.i ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bc ; 4 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i
  %.015.i11.i = phi i32 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i ], [ %i.bm, %bb.aj ] ; 3 uses
  %.014.i12.i = phi i64 [ %i.q, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit10.i ], [ %i.bj, %bb.aj ] ; 3 uses
  %i.be = zext i32 %.015.i11.i to i64             ; 3 uses
  %i.bf = add nuw nsw i64 %i.bc, %i.be
  %i.bg = icmp samesign ult i64 %i.bf, 256
  br i1 %i.bg, label %bb.aj, label %split.i13.i

bb.aj:                                            ; preds = %bb.ai
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  %i.bi = urem i64 %.014.i12.i, 10
  %i.bj = udiv i64 %.014.i12.i, 10
  %i.bk = trunc nuw nsw i64 %i.bi to i8
  %i.bl = or disjoint i8 %i.bk, 48
  store i8 %i.bl, ptr %i.bh, align 1, !tbaa !7
  %i.bm = add i32 %.015.i11.i, 1                  ; 3 uses
  %i.bn = icmp ult i64 %.014.i12.i, 10
  br i1 %i.bn, label %._crit_edge.i24.i, label %bb.ai

._crit_edge.i24.i:                                ; preds = %bb.aj
  %.pre19.i26.i = zext i32 %i.bm to i64
  br label %split.i13.i

split.i13.i:                                      ; preds = %bb.ai, %._crit_edge.i24.i
  %.pre-phi.i14.i = phi i64 [ %.pre19.i26.i, %._crit_edge.i24.i ], [ %i.be, %bb.ai ] ; 3 uses
  %.1.i15.i = phi i32 [ %i.bm, %._crit_edge.i24.i ], [ %.015.i11.i, %bb.ai ]
  %i.bo = icmp ugt i32 %.1.i15.i, 1
  br i1 %i.bo, label %.lr.ph.i.i.preheader.i16.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit27.i

.lr.ph.i.i.preheader.i16.i:                       ; preds = %split.i13.i
  %i.bp = getelementptr i8, ptr %i.bd, i64 %.pre-phi.i14.i
  %.012.i.i.i17.i = getelementptr i8, ptr %i.bp, i64 -1
  br label %.lr.ph.i.i.i18.i

.lr.ph.i.i.i18.i:                                 ; preds = %.lr.ph.i.i.i18.i, %.lr.ph.i.i.preheader.i16.i
  %.014.i.i.i19.i = phi ptr [ %.0.i.i.i21.i, %.lr.ph.i.i.i18.i ], [ %.012.i.i.i17.i, %.lr.ph.i.i.preheader.i16.i ] ; 3 uses
  %.0913.i.i.i20.i = phi ptr [ %i.bs, %.lr.ph.i.i.i18.i ], [ %i.bd, %.lr.ph.i.i.preheader.i16.i ] ; 3 uses
  %i.bq = load i8, ptr %.0913.i.i.i20.i, align 1, !tbaa !7
  %i.br = load i8, ptr %.014.i.i.i19.i, align 1, !tbaa !7
  store i8 %i.br, ptr %.0913.i.i.i20.i, align 1, !tbaa !7
  store i8 %i.bq, ptr %.014.i.i.i19.i, align 1, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %.0913.i.i.i20.i, i64 1 ; 2 uses
  %.0.i.i.i21.i = getelementptr inbounds i8, ptr %.014.i.i.i19.i, i64 -1 ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %.0.i.i.i21.i
  br i1 %i.bt, label %.lr.ph.i.i.i18.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit27.i, !llvm.loop !15

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit27.i: ; preds = %.lr.ph.i.i.i18.i, %split.i13.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.pre-phi.i14.i ; 32 uses
  %i.bv = add nuw nsw i64 %.pre-phi.i14.i, %i.bc  ; 33 uses
  %i.bw = icmp samesign ult i64 %i.bv, 256
  br i1 %i.bw, label %bb.ak, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

bb.ak:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit27.i
  store i8 34, ptr %i.bu, align 1, !tbaa !7
  %.not78.i = icmp eq i64 %i.bv, 255
  br i1 %.not78.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 32, ptr %i.bx, align 1, !tbaa !7
  %i.by = icmp samesign ult i64 %i.bv, 254
  br i1 %i.by, label %bb.am, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

bb.am:                                            ; preds = %bb.al
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i8 105, ptr %i.bz, align 1, !tbaa !7
  %.not79.i = icmp eq i64 %i.bv, 253
  br i1 %.not79.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store i8 102, ptr %i.ca, align 1, !tbaa !7
  %i.cb = icmp samesign ult i64 %i.bv, 252
  br i1 %i.cb, label %bb.ao, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

bb.ao:                                            ; preds = %bb.an
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i8 32, ptr %i.cc, align 1, !tbaa !7
  %.not80.i = icmp eq i64 %i.bv, 251
  br i1 %.not80.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 5
  store i8 121, ptr %i.cd, align 1, !tbaa !7
  %i.ce = icmp samesign ult i64 %i.bv, 250
  br i1 %i.ce, label %bb.aq, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

bb.aq:                                            ; preds = %bb.ap
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 6
  store i8 111, ptr %i.cf, align 1, !tbaa !7
  %.not81.i = icmp eq i64 %i.bv, 249
  br i1 %.not81.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
end_hunk_0
begin_hunk_1_@_ZN6google12_GLOBAL__N_120FailureSignalHandlerEiP9siginfo_tPv:bb.a
bb.aw:                                            ; preds = %bb.av
  %i.co = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  store i8 32, ptr %i.co, align 1, !tbaa !7
  %.not84.i = icmp eq i64 %i.bv, 243
  br i1 %.not84.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bu, i64 13
  store i8 117, ptr %i.cp, align 1, !tbaa !7
  %i.cq = icmp samesign ult i64 %i.bv, 242
  br i1 %i.cq, label %bb.ay, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

bb.ay:                                            ; preds = %bb.ax
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bu, i64 14
  store i8 115, ptr %i.cr, align 1, !tbaa !7
  %.not85.i = icmp eq i64 %i.bv, 241
  br i1 %.not85.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bu, i64 15
  store i8 105, ptr %i.cs, align 1, !tbaa !7
  %i.ct = icmp samesign ult i64 %i.bv, 240
  br i1 %i.ct, label %bb.ba, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

bb.ba:                                            ; preds = %bb.az
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  store i8 110, ptr %i.cu, align 1, !tbaa !7
  %.not86.i = icmp eq i64 %i.bv, 239
  br i1 %.not86.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bu, i64 17
  store i8 103, ptr %i.cv, align 1, !tbaa !7
  %i.cw = icmp samesign ult i64 %i.bv, 238
  br i1 %i.cw, label %bb.bc, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

bb.bc:                                            ; preds = %bb.bb
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bu, i64 18
  store i8 32, ptr %i.cx, align 1, !tbaa !7
  %.not87.i = icmp eq i64 %i.bv, 237
  br i1 %.not87.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bu, i64 19
  store i8 71, ptr %i.cy, align 1, !tbaa !7
  %i.cz = icmp samesign ult i64 %i.bv, 236
  br i1 %i.cz, label %bb.be, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

bb.be:                                            ; preds = %bb.bd
  %i.da = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  store i8 78, ptr %i.da, align 1, !tbaa !7
  %.not88.i = icmp eq i64 %i.bv, 235
  br i1 %.not88.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.db = getelementptr inbounds nuw i8, ptr %i.bu, i64 21
  store i8 85, ptr %i.db, align 1, !tbaa !7
  %i.dc = icmp samesign ult i64 %i.bv, 234
  br i1 %i.dc, label %bb.bg, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

bb.bg:                                            ; preds = %bb.bf
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bu, i64 22
  store i8 32, ptr %i.dd, align 1, !tbaa !7
  %.not89.i = icmp eq i64 %i.bv, 233
  br i1 %.not89.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.de = getelementptr inbounds nuw i8, ptr %i.bu, i64 23
  store i8 100, ptr %i.de, align 1, !tbaa !7
  %i.df = icmp samesign ult i64 %i.bv, 232
  br i1 %i.df, label %bb.bi, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

bb.bi:                                            ; preds = %bb.bh
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store i8 97, ptr %i.dg, align 1, !tbaa !7
  %.not90.i = icmp eq i64 %i.bv, 231
  br i1 %.not90.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dh = getelementptr inbounds nuw i8, ptr %i.bu, i64 25
  store i8 116, ptr %i.dh, align 1, !tbaa !7
  %i.di = icmp samesign ult i64 %i.bv, 230
  br i1 %i.di, label %bb.bk, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

bb.bk:                                            ; preds = %bb.bj
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bu, i64 26
  store i8 101, ptr %i.dj, align 1, !tbaa !7
  %.not91.i = icmp eq i64 %i.bv, 229
  br i1 %.not91.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bu, i64 27
  store i8 32, ptr %i.dk, align 1, !tbaa !7
  %i.dl = icmp samesign ult i64 %i.bv, 228
  br i1 %i.dl, label %bb.bm, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

bb.bm:                                            ; preds = %bb.bl
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bu, i64 28
  store i8 42, ptr %i.dm, align 1, !tbaa !7
  %.not92.i = icmp eq i64 %i.bv, 227
  br i1 %.not92.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bu, i64 29
  store i8 42, ptr %i.dn, align 1, !tbaa !7
  %i.do = icmp samesign ult i64 %i.bv, 226
  br i1 %i.do, label %bb.bo, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

bb.bo:                                            ; preds = %bb.bn
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bu, i64 30
  store i8 42, ptr %i.dp, align 1, !tbaa !7
  %.not93.i = icmp eq i64 %i.bv, 225
  br i1 %.not93.i, label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bu, i64 31
  store i8 10, ptr %i.dq, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit

_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit:    ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit27.i, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.bj, %bb.bk, %bb.bl, %bb.bm, %bb.bn, %bb.bo, %bb.bp
  %.0.lcssa.i29.i = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit27.i ], [ 32, %bb.bp ], [ 1, %bb.ak ], [ 31, %bb.bo ], [ 2, %bb.al ], [ 20, %bb.bd ], [ 3, %bb.am ], [ 30, %bb.bn ], [ 4, %bb.an ], [ 17, %bb.ba ], [ 5, %bb.ao ], [ 29, %bb.bm ], [ 6, %bb.ap ], [ 23, %bb.bg ], [ 7, %bb.aq ], [ 28, %bb.bl ], [ 8, %bb.ar ], [ 18, %bb.bb ], [ 9, %bb.as ], [ 27, %bb.bk ], [ 10, %bb.at ], [ 21, %bb.be ], [ 11, %bb.au ], [ 26, %bb.bj ], [ 12, %bb.av ], [ 19, %bb.bc ], [ 13, %bb.aw ], [ 25, %bb.bi ], [ 14, %bb.ax ], [ 22, %bb.bf ], [ 15, %bb.ay ], [ 24, %bb.bh ], [ 16, %bb.az ]
  %i.dr = load ptr, ptr @_ZN6google12_GLOBAL__N_116g_failure_writerE, align 8, !tbaa !16
  %i.ds = add nuw nsw i64 %.0.lcssa.i29.i, %i.bv
  call void %i.dr(ptr noundef nonnull %i.b, i64 noundef %i.ds), !inline_history !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call fastcc void @_ZN6google12_GLOBAL__N_118DumpStackFrameInfoEPKcPv(ptr noundef nonnull @.str.2, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.dt = call noundef i32 @_ZN6google13GetStackTraceEPPvii(ptr noundef nonnull %i.d, i32 noundef 32, i32 noundef 1) ; 2 uses
  %.0.lcssa.i.sroa.gep.i11 = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 5 uses
  %switch.tableidx = add i32 %0, -4               ; 3 uses
  %i.du = icmp ult i32 %switch.tableidx, 12
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 2205, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.du, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20.i

switch.lookup:                                    ; preds = %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit
  %i.dv = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6google12_GLOBAL__N_120FailureSignalHandlerEiP9siginfo_tPv, i64 %i.dv
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store <4 x i8> <i8 42, i8 42, i8 42, i8 32>, ptr %i.a, align 16, !tbaa !7
  %i.dw = load i8, ptr %switch.load, align 1, !tbaa !7 ; 2 uses
  %.not9.i.i = icmp eq i8 %i.dw, 0
  br i1 %.not9.i.i, label %.thread301.i, label %.lr.ph.i.i.preheader

.thread301.i:                                     ; preds = %switch.lookup
  store i8 32, ptr %.0.lcssa.i.sroa.gep.i11, align 4, !tbaa !7
  br label %.sink.split

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader
  %i.dx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.sroa.gep.i11, i64 %i.el
  store i8 %i.en, ptr %i.dx, align 1, !tbaa !7
  %i.dy = or disjoint i64 %.010.i12.i163, 2       ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !7   ; 2 uses
  %.not.i14.i.1 = icmp eq i8 %i.ea, 0
  br i1 %.not.i14.i.1, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i, label %.lr.ph.i.i.1, !llvm.loop !18

.lr.ph.i.i.1:                                     ; preds = %.lr.ph.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.sroa.gep.i11, i64 %i.dy
  store i8 %i.ea, ptr %i.eb, align 2, !tbaa !7
  %i.ec = or disjoint i64 %.010.i12.i163, 3       ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !7   ; 2 uses
  %.not.i14.i.2 = icmp eq i8 %i.ee, 0
  br i1 %.not.i14.i.2, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i, label %.lr.ph.i.i.2, !llvm.loop !18

.lr.ph.i.i.2:                                     ; preds = %.lr.ph.i.i.1
  %i.ef = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.sroa.gep.i11, i64 %i.ec
  store i8 %i.ee, ptr %i.ef, align 1, !tbaa !7
  %i.eg = add nuw nsw i64 %.010.i12.i163, 4       ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !7   ; 2 uses
  %.not.i14.i.3 = icmp eq i8 %i.ei, 0
  br i1 %.not.i14.i.3, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i, label %.lr.ph.i.i.3, !llvm.loop !18

.lr.ph.i.i.3:                                     ; preds = %.lr.ph.i.i.2
  %exitcond.not.i.3 = icmp eq i64 %i.eg, 252
  br i1 %exitcond.not.i.3, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i, label %.lr.ph.i.i.preheader, !llvm.loop !18

.lr.ph.i.i.preheader:                             ; preds = %switch.lookup, %.lr.ph.i.i.3
  %.010.i12.i163 = phi i64 [ %i.eg, %.lr.ph.i.i.3 ], [ 0, %switch.lookup ] ; 5 uses
  %i.ej = phi i8 [ %i.ei, %.lr.ph.i.i.3 ], [ %i.dw, %switch.lookup ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.sroa.gep.i11, i64 %.010.i12.i163
  store i8 %i.ej, ptr %i.ek, align 4, !tbaa !7
  %i.el = or disjoint i64 %.010.i12.i163, 1       ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %switch.load, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !7   ; 2 uses
  %.not.i14.i = icmp eq i8 %i.en, 0
  br i1 %.not.i14.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i, label %.lr.ph.i.i, !llvm.loop !18

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i: ; preds = %.lr.ph.i.i.3, %.lr.ph.i.i.2, %.lr.ph.i.i.1, %.lr.ph.i.i, %.lr.ph.i.i.preheader
  %.0.lcssa.i13.ph.i = phi i64 [ %i.el, %.lr.ph.i.i.preheader ], [ 252, %.lr.ph.i.i.3 ], [ %i.dy, %.lr.ph.i.i ], [ %i.eg, %.lr.ph.i.i.2 ], [ %i.ec, %.lr.ph.i.i.1 ]
  %i.eo = add nuw nsw i64 %.0.lcssa.i13.ph.i, 4
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20.i: ; preds = %_ZN6google12_GLOBAL__N_112DumpTimeInfoEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store <8 x i8> <i8 42, i8 42, i8 42, i8 32, i8 83, i8 105, i8 103, i8 110>, ptr %i.a, align 16, !tbaa !7
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 97, ptr %10, align 8, !tbaa !7
  %11 = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  store i8 108, ptr %11, align 1, !tbaa !7
  %12 = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 32, ptr %12, align 2, !tbaa !7
  %.ptr174.i = getelementptr inbounds nuw i8, ptr %i.a, i64 11 ; 3 uses
  %i.ep = sext i32 %0 to i64
  br label %bb.br

bb.bq:                                            ; preds = %bb.br
  %exitcond84.not = icmp eq i64 %indvars.iv.next82, 245
  br i1 %exitcond84.not, label %.lr.ph.i.i.preheader.i.i14, label %bb.br

bb.br:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20.i, %bb.bq
  %.014.i.i13165 = phi i64 [ %i.ep, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20.i ], [ %i.es, %bb.bq ] ; 3 uses
  %indvars.iv81164 = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit20.i ], [ %indvars.iv.next82, %bb.bq ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.ptr174.i, i64 %indvars.iv81164
  %i.er = urem i64 %.014.i.i13165, 10
  %i.es = udiv i64 %.014.i.i13165, 10
  %i.et = trunc nuw nsw i64 %i.er to i8
  %i.eu = or disjoint i8 %i.et, 48
  store i8 %i.eu, ptr %i.eq, align 1, !tbaa !7
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81164, 1 ; 3 uses
  %i.ev = icmp ult i64 %.014.i.i13165, 10
  br i1 %i.ev, label %split.i.i21, label %bb.bq

split.i.i21:                                      ; preds = %bb.br
  %.pre19.i.i22 = and i64 %indvars.iv.next82, 4294967295
  %.not.i23 = icmp eq i64 %indvars.iv81164, 0
  br i1 %.not.i23, label %.thread130, label %.lr.ph.i.i.preheader.i.i14

.thread130:                                       ; preds = %split.i.i21
  %.ptr.i112 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 32, ptr %.ptr.i112, align 4, !tbaa !7
  br label %.sink.split

.lr.ph.i.i.preheader.i.i14:                       ; preds = %bb.bq, %split.i.i21
  %.pre-phi.i279.i = phi i64 [ %.pre19.i.i22, %split.i.i21 ], [ 245, %bb.bq ] ; 2 uses
  %i.ew = getelementptr i8, ptr %.ptr174.i, i64 %.pre-phi.i279.i
  %.012.i.i.i.i15 = getelementptr i8, ptr %i.ew, i64 -1
  br label %.lr.ph.i.i.i.i16

.lr.ph.i.i.i.i16:                                 ; preds = %.lr.ph.i.i.i.i16, %.lr.ph.i.i.preheader.i.i14
  %.014.i.i.i.i17 = phi ptr [ %.0.i.i.i.i19, %.lr.ph.i.i.i.i16 ], [ %.012.i.i.i.i15, %.lr.ph.i.i.preheader.i.i14 ] ; 3 uses
  %.0913.i.i.i.i18 = phi ptr [ %i.ez, %.lr.ph.i.i.i.i16 ], [ %.ptr174.i, %.lr.ph.i.i.preheader.i.i14 ] ; 3 uses
  %i.ex = load i8, ptr %.0913.i.i.i.i18, align 1, !tbaa !7
  %i.ey = load i8, ptr %.014.i.i.i.i17, align 1, !tbaa !7
  store i8 %i.ey, ptr %.0913.i.i.i.i18, align 1, !tbaa !7
  store i8 %i.ex, ptr %.014.i.i.i.i17, align 1, !tbaa !7
  %i.ez = getelementptr inbounds nuw i8, ptr %.0913.i.i.i.i18, i64 1 ; 2 uses
  %.0.i.i.i.i19 = getelementptr inbounds i8, ptr %.014.i.i.i.i17, i64 -1 ; 2 uses
  %i.fa = icmp ult ptr %i.ez, %.0.i.i.i.i19
  br i1 %i.fa, label %.lr.ph.i.i.i.i16, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i20.loopexit, !llvm.loop !15

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i20.loopexit: ; preds = %.lr.ph.i.i.i.i16
  %i.fb = add nuw nsw i64 %.pre-phi.i279.i, 11
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i: ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i20.loopexit, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i
  %.sroa.4.0.idx.i = phi i64 [ %i.eo, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.loopexit.i ], [ %i.fb, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit.i20.loopexit ] ; 8 uses
  %exitcond242.not.i = icmp sgt i64 %.sroa.4.0.idx.i, 255
  br i1 %exitcond242.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i, label %bb.bs

bb.bs:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.4.0.idx.i ; 4 uses
  store i8 32, ptr %.ptr.i, align 1, !tbaa !7
  %exitcond242.1.not.i = icmp eq i64 %.sroa.4.0.idx.i, 255
  br i1 %exitcond242.1.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 1
  store i8 40, ptr %.ptr.1.i, align 1, !tbaa !7
  %exitcond242.2.not.i = icmp eq i64 %.sroa.4.0.idx.i, 254
  br i1 %exitcond242.2.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.ptr.2.i = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 2
  store i8 64, ptr %.ptr.2.i, align 1, !tbaa !7
  %exitcond242.3.not.i = icmp eq i64 %.sroa.4.0.idx.i, 253
  br i1 %exitcond242.3.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %.ptr.3.i = getelementptr inbounds nuw i8, ptr %.ptr.i, i64 3
  store i8 48, ptr %.ptr.3.i, align 1, !tbaa !7
  %exitcond242.4.not.i = icmp eq i64 %.sroa.4.0.idx.i, 252
  br i1 %exitcond242.4.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i, label %bb.bw

.sink.split:                                      ; preds = %.thread301.i, %.thread130
  %.sink175.sroa.phi = phi ptr [ %.sink175.sroa.gep, %.thread130 ], [ %.sink175.sroa.gep195, %.thread301.i ]
  %.sink174.sroa.phi = phi ptr [ %.sink174.sroa.gep, %.thread130 ], [ %.sink174.sroa.gep194, %.thread301.i ]
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %.thread130 ], [ %.sink.sroa.gep193, %.thread301.i ]
  %.sroa.4.0.idx284290295300305.i.ph = phi i64 [ 12, %.thread130 ], [ 4, %.thread301.i ]
  store i8 40, ptr %.sink175.sroa.phi, align 1, !tbaa !7
  store i8 64, ptr %.sink174.sroa.phi, align 2, !tbaa !7
  store i8 48, ptr %.sink.sroa.phi, align 1, !tbaa !7
  br label %bb.bw

bb.bw:                                            ; preds = %.sink.split, %bb.bv
  %.sroa.4.0.idx284290295300305.i = phi i64 [ %.sroa.4.0.idx.i, %bb.bv ], [ %.sroa.4.0.idx284290295300305.i.ph, %.sink.split ] ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.4.0.idx284290295300305.i
  %.ptr.4.i = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  store i8 120, ptr %.ptr.4.i, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i: ; preds = %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i
  %.sroa.4.0.idx285.i = phi i64 [ %.sroa.4.0.idx.i, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i ], [ %.sroa.4.0.idx284290295300305.i, %bb.bw ], [ 255, %bb.bs ], [ 252, %bb.bv ], [ 254, %bb.bt ], [ 253, %bb.bu ]
  %.0.lcssa.i23.i = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit15.i ], [ 5, %bb.bw ], [ 1, %bb.bs ], [ 4, %bb.bv ], [ 2, %bb.bt ], [ 3, %bb.bu ]
  %i.fd = add nuw nsw i64 %.0.lcssa.i23.i, %.sroa.4.0.idx285.i ; 4 uses
  %.ptr179.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fd ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ff = call i64 @llvm.usub.sat.i64(i64 256, i64 %i.fd) ; 5 uses
  %exitcond88.not166 = icmp ugt i64 %i.fd, 255
  br i1 %exitcond88.not166, label %split.i28.i, label %.lr.ph169

.lr.ph169:                                        ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i
  %i.fg = load ptr, ptr %i.fe, align 8, !tbaa !7
  %i.fh = ptrtoint ptr %i.fg to i64
  br label %bb.by

bb.bx:                                            ; preds = %bb.by
  %i.fi = lshr i64 %.014.i27.i168, 4
  %exitcond88.not = icmp eq i64 %indvars.iv.next86, %i.ff
  br i1 %exitcond88.not, label %split.i28.i, label %bb.by

bb.by:                                            ; preds = %.lr.ph169, %bb.bx
  %.014.i27.i168 = phi i64 [ %i.fh, %.lr.ph169 ], [ %i.fi, %bb.bx ] ; 3 uses
  %indvars.iv85167 = phi i64 [ 0, %.lr.ph169 ], [ %indvars.iv.next86, %bb.bx ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.ptr179.i, i64 %indvars.iv85167
  %i.fk = and i64 %.014.i27.i168, 15              ; 3 uses
  %i.fl = icmp samesign ult i64 %i.fk, 10
  %i.fm = or disjoint i64 %i.fk, 48
  %i.fn = add nuw nsw i64 %i.fk, 87
  %i.fo = select i1 %i.fl, i64 %i.fm, i64 %i.fn
  %i.fp = trunc nuw nsw i64 %i.fo to i8
  store i8 %i.fp, ptr %i.fj, align 1, !tbaa !7
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85167, 1 ; 4 uses
  %i.fq = icmp ult i64 %.014.i27.i168, 16
  br i1 %i.fq, label %._crit_edge.i39.i, label %bb.bx

._crit_edge.i39.i:                                ; preds = %bb.by
  %.pre19.i41.i = and i64 %indvars.iv.next86, 4294967295
  br label %split.i28.i

split.i28.i:                                      ; preds = %bb.bx, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i, %._crit_edge.i39.i
  %.pre-phi.i29.i = phi i64 [ %.pre19.i41.i, %._crit_edge.i39.i ], [ %i.ff, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i ], [ %i.ff, %bb.bx ] ; 2 uses
  %.1.i30.i.in = phi i64 [ %indvars.iv.next86, %._crit_edge.i39.i ], [ %i.ff, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit25.i ], [ %i.ff, %bb.bx ]
  %i.fr = and i64 %.1.i30.i.in, 4294967294
  %.not106 = icmp eq i64 %i.fr, 0
  br i1 %.not106, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit42.i, label %.lr.ph.i.i.preheader.i31.i

.lr.ph.i.i.preheader.i31.i:                       ; preds = %split.i28.i
  %i.fs = getelementptr i8, ptr %.ptr179.i, i64 %.pre-phi.i29.i
  %.012.i.i.i32.i = getelementptr i8, ptr %i.fs, i64 -1
  br label %.lr.ph.i.i.i33.i

.lr.ph.i.i.i33.i:                                 ; preds = %.lr.ph.i.i.i33.i, %.lr.ph.i.i.preheader.i31.i
  %.014.i.i.i34.i = phi ptr [ %.0.i.i.i36.i, %.lr.ph.i.i.i33.i ], [ %.012.i.i.i32.i, %.lr.ph.i.i.preheader.i31.i ] ; 3 uses
  %.0913.i.i.i35.i = phi ptr [ %i.fv, %.lr.ph.i.i.i33.i ], [ %.ptr179.i, %.lr.ph.i.i.preheader.i31.i ] ; 3 uses
  %i.ft = load i8, ptr %.0913.i.i.i35.i, align 1, !tbaa !7
  %i.fu = load i8, ptr %.014.i.i.i34.i, align 1, !tbaa !7
  store i8 %i.fu, ptr %.0913.i.i.i35.i, align 1, !tbaa !7
  store i8 %i.ft, ptr %.014.i.i.i34.i, align 1, !tbaa !7
  %i.fv = getelementptr inbounds nuw i8, ptr %.0913.i.i.i35.i, i64 1 ; 2 uses
  %.0.i.i.i36.i = getelementptr inbounds i8, ptr %.014.i.i.i34.i, i64 -1 ; 2 uses
  %i.fw = icmp ult ptr %i.fv, %.0.i.i.i36.i
  br i1 %i.fw, label %.lr.ph.i.i.i33.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit42.i, !llvm.loop !15

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit42.i: ; preds = %.lr.ph.i.i.i33.i, %split.i28.i
  %.add176.i = add nuw nsw i64 %.pre-phi.i29.i, %i.fd ; 3 uses
  %i.fx = icmp samesign ult i64 %.add176.i, 256
  br i1 %i.fx, label %bb.bz, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit47.i

bb.bz:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit42.i
  %.ptr180.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add176.i
  store i8 41, ptr %.ptr180.i, align 1, !tbaa !7
  br label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit47.i, !llvm.loop !18

_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit47.i: ; preds = %bb.bz, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit42.i
  %.0.lcssa.i45.i = phi i64 [ 0, %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendUint64Emj.exit42.i ], [ 1, %bb.bz ]
  %.add177.i = add nuw nsw i64 %.0.lcssa.i45.i, %.add176.i ; 5 uses
  %smax243.i = call i64 @llvm.smax.i64(i64 %.add177.i, i64 256)
  %i.fy = sub i64 %smax243.i, %.add177.i          ; 16 uses
  %exitcond244.not.i = icmp sgt i64 %.add177.i, 255
  br i1 %exitcond244.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.ca

bb.ca:                                            ; preds = %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit47.i
  %.ptr182.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %.add177.i ; 17 uses
  store i8 32, ptr %.ptr182.i, align 1, !tbaa !7
  %exitcond244.1.not.i = icmp eq i64 %i.fy, 1
  br i1 %exitcond244.1.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.ptr182.1.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 1
  store i8 114, ptr %.ptr182.1.i, align 1, !tbaa !7
  %exitcond244.2.not.i = icmp eq i64 %i.fy, 2
  br i1 %exitcond244.2.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %.ptr182.2.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 2
  store i8 101, ptr %.ptr182.2.i, align 1, !tbaa !7
  %exitcond244.3.not.i = icmp eq i64 %i.fy, 3
  br i1 %exitcond244.3.not.i, label %_ZN6google12_GLOBAL__N_116MinimalFormatter12AppendStringEPKc.exit52.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %.ptr182.3.i = getelementptr inbounds nuw i8, ptr %.ptr182.i, i64 3
end_hunk_1
