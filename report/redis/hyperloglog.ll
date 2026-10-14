Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/hyperloglog?download=true
inline.NumInlined: 34
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.redisServer = type { i32, i64, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i64, i32, i32, i32, i32, ptr, i32, i32, [41 x i8], i32, i64, i32, i32, i32, ptr, ptr, i32, i32, i64, i32, ptr, ptr, ptr, ptr, [2 x i32], i32, i32, i32, i32, i32, i32, [16 x ptr], i32, ptr, ptr, i32, [8 x %struct.connListener], i32, %struct.connListener, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, [4 x %struct.pause_event], [256 x i8], ptr, i64, i32, i32, [128 x i32], i32, i32, %struct.pendingCommandPool, i32, i64, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, i64, i64, i64, i64, i64, ptr, i64, i64, i64, %struct.malloc_stats, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, double, [4 x i64], i64, i64, i64, i64, [128 x i64], [128 x i64], i64, i64, i64, i64, i64, [7 x %struct.anon], i64, i64, i64, i64, i64, i64, [4 x %struct.durationStats], ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, ptr, [3 x %struct.clientBufferLimitsConfig], i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i64, i64, i64, i64, i64, i32, i32, ptr, i32, i32, i64, i64, i64, i64, i64, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, ptr, i32, i64, i64, i64, i64, i32, ptr, i32, ptr, i32, i32, i32, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, [2 x i32], i32, %struct.redisOpArray, i32, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [41 x i8], [41 x i8], i64, i64, i64, i64, i32, i32, ptr, i64, i64, %struct.replDataBuf, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, i64, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64, i64, ptr, ptr, i32, ptr, i64, i32, i32, i32, i64, i64, i32, i32, i32, i32, ptr, i32, i32, [41 x i8], i64, i32, ptr, i32, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i32, i64, [3 x i32], i32, i32, i32, [11 x i32], ptr, ptr, i32, i64, ptr, ptr, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i64, i64, i32, i64, i64, i32, i64, i64, i64, i64, ptr, ptr, i32, ptr, i32, i32, i32, i32, i64, i64, ptr, i64, i64, i64, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, i64, ptr, i32, %struct.aclInfo, i32, i64, i32, i32, i32, %struct.redisTLSContextConfig, ptr, ptr, ptr, ptr, ptr, i64, i32, ptr, i32, i32, i32, i64, i32, i32, ptr, i32, i32 }
%struct.connListener = type { [16 x i32], i32, ptr, i32, i32, ptr, ptr }
%struct.pause_event = type { i32, i64 }
%struct.pendingCommandPool = type { ptr, i32, i32, i32 }
%struct.malloc_stats = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.anon = type { i64, i64, [16 x i64], i32 }
%struct.durationStats = type { i64, i64, i64 }
%struct.clientBufferLimitsConfig = type { i64, i64, i64 }
%struct.redisOpArray = type { ptr, i32, i32 }
%struct.replDataBuf = type { ptr, i64, i64, i64, i64, i64 }
%struct.aclInfo = type { i64, i64, i64, i64, i64 }
%struct.redisTLSContextConfig = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.sharedObjectsStruct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [10 x ptr], [10000 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], [32 x ptr], ptr, ptr }

@server = external local_unnamed_addr global %struct.redisServer, align 8
@.str = private unnamed_addr constant [46 x i8] c"sdslen(o->ptr) + deltalen <= sdsalloc(o->ptr)\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"hyperloglog.c\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"dense_retval == 1\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Unknown HyperLogLog encoding in hllCount()\00", align 1
@simd_enabled = internal unnamed_addr global i1 false, align 4
@__cpu_model = external dso_local local_unnamed_addr global { i32, i32, i32, [1 x i32] }
@.str.6 = private unnamed_addr constant [56 x i8] c"-WRONGTYPE Key is not a valid HyperLogLog string value.\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"pfadd\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.8 = private unnamed_addr constant [46 x i8] c"TESTFAILED Register %d should be %d but is %d\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"TESTFAILED sparse encoding not used\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"TESTFAILED dense/sparse disagree\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"TESTFAILED Too big error. card:%llu abserr:%llu\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"simd\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"Argument must be ON or OFF\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.18 = private unnamed_addr constant [33 x i8] c"The specified key does not exist\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"getreg\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"decode\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"HLL encoding is not sparse\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"z:%d \00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"Z:%d \00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"v:%d,%d \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"dense\00", align 1
@.str.28 = private unnamed_addr constant [7 x i8] c"sparse\00", align 1
@__const.pfdebugCommand.encodingstr = private unnamed_addr constant [2 x ptr] [ptr @.str.27, ptr @.str.28], align 16
@.str.29 = private unnamed_addr constant [8 x i8] c"todense\00", align 1
@.str.30 = private unnamed_addr constant [32 x i8] c"Unknown PFDEBUG subcommand '%s'\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"Wrong number of arguments for the '%s' subcommand\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"-INVALIDOBJ Corrupted HLL object detected\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local i64 @MurmurHash64A(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %2 to i64
  %i.b = mul i64 %1, -4132994306676758123
  %i.c = xor i64 %i.b, %i.a                       ; 3 uses
  %i.d = and i64 %1, 7
  %i.e = and i64 %1, -8                           ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 %i.e       ; 3 uses
  %.not39 = icmp samesign eq i64 %i.e, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = add i64 %1, -8                           ; 2 uses
  %i.h = and i64 %i.g, 8
  %lcmp.mod.not.not = icmp eq i64 %i.h, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.i = load i64, ptr %0, align 8, !tbaa !21
  %i.j = mul i64 %i.i, -4132994306676758123       ; 2 uses
  %i.k = lshr i64 %i.j, 47
  %i.l = xor i64 %i.k, %i.j
  %i.m = mul i64 %i.l, -4132994306676758123
  %i.n = xor i64 %i.m, %i.c
  %i.o = mul i64 %i.n, -4132994306676758123       ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %.041.unr = phi ptr [ %0, %.lr.ph.preheader ], [ %i.p, %.lr.ph.prol ]
  %.03840.unr = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.o, %.lr.ph.prol ]
  %i.q = icmp ult i64 %i.g, 8
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.041 = phi ptr [ %i.ag, %.lr.ph ], [ %.041.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.03840 = phi i64 [ %i.af, %.lr.ph ], [ %.03840.unr, %.lr.ph.prol.loopexit ]
  %i.r = load i64, ptr %.041, align 8, !tbaa !21
  %i.s = mul i64 %i.r, -4132994306676758123       ; 2 uses
  %i.t = lshr i64 %i.s, 47
  %i.u = xor i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -4132994306676758123
  %i.w = xor i64 %i.v, %.03840
  %i.x = mul i64 %i.w, -4132994306676758123
  %i.y = getelementptr inbounds nuw i8, ptr %.041, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !21
  %i.aa = mul i64 %i.z, -4132994306676758123      ; 2 uses
  %i.ab = lshr i64 %i.aa, 47
  %i.ac = xor i64 %i.ab, %i.aa
  %i.ad = mul i64 %i.ac, -4132994306676758123
  %i.ae = xor i64 %i.ad, %i.x
  %i.af = mul i64 %i.ae, -4132994306676758123     ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.041, i64 16 ; 2 uses
  %.not.1 = icmp eq ptr %i.ag, %i.f
  br i1 %.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.a
  %.038.lcssa = phi i64 [ %i.c, %bb.a ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.af, %.lr.ph ] ; 8 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.f, %.lr.ph ], [ %i.f, %.lr.ph.prol.loopexit ] ; 7 uses
  switch i64 %i.d, label %default.unreachable44 [
    i64 7, label %bb.b
    i64 6, label %bb.c
    i64 5, label %bb.d
    i64 4, label %bb.e
    i64 3, label %bb.f
    i64 2, label %bb.g
    i64 1, label %bb.h
    i64 0, label %bb.i
  ]

bb.b:                                             ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 6
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !23
  %i.aj = zext i8 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 48
  %i.al = xor i64 %i.ak, %.038.lcssa
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.1 = phi i64 [ %i.al, %bb.b ], [ %.038.lcssa, %._crit_edge ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 5
  %i.an = load i8, ptr %i.am, align 1, !tbaa !23
  %i.ao = zext i8 %i.an to i64
  %i.ap = shl nuw nsw i64 %i.ao, 40
  %i.aq = xor i64 %i.ap, %.1
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.c
  %.2 = phi i64 [ %i.aq, %bb.c ], [ %.038.lcssa, %._crit_edge ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !23
  %i.at = zext i8 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 32
  %i.av = xor i64 %i.au, %.2
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %.3 = phi i64 [ %i.av, %bb.d ], [ %.038.lcssa, %._crit_edge ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !23
  %i.ay = zext i8 %i.ax to i64
  %i.az = shl nuw nsw i64 %i.ay, 24
  %i.ba = xor i64 %i.az, %.3
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %.4 = phi i64 [ %i.ba, %bb.e ], [ %.038.lcssa, %._crit_edge ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 2
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !23
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 16
  %i.bf = xor i64 %i.be, %.4
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.5 = phi i64 [ %i.bf, %bb.f ], [ %.038.lcssa, %._crit_edge ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !23
  %i.bi = zext i8 %i.bh to i64
  %i.bj = shl nuw nsw i64 %i.bi, 8
  %i.bk = xor i64 %i.bj, %.5
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge, %bb.g
  %.6 = phi i64 [ %i.bk, %bb.g ], [ %.038.lcssa, %._crit_edge ]
  %i.bl = load i8, ptr %.0.lcssa, align 1, !tbaa !23
  %i.bm = zext i8 %i.bl to i64
  %i.bn = xor i64 %.6, %i.bm
  %i.bo = mul i64 %i.bn, -4132994306676758123
  br label %bb.i

default.unreachable44:                            ; preds = %._crit_edge
  unreachable

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %.7 = phi i64 [ %i.bo, %bb.h ], [ %.038.lcssa, %._crit_edge ] ; 2 uses
  %i.bp = lshr i64 %.7, 47
  %i.bq = xor i64 %i.bp, %.7
  %i.br = mul i64 %i.bq, -4132994306676758123     ; 2 uses
  %i.bs = lshr i64 %i.br, 47
  %i.bt = xor i64 %i.bs, %i.br
  ret i64 %i.bt
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local range(i32 1, 52) i32 @hllPatLen(ptr nofree noundef readonly captures(address) %0, i64 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = mul i64 %1, -4132994306676758123
  %i.b = xor i64 %i.a, 2915580697                 ; 3 uses
  %i.c = and i64 %1, 7
  %i.d = and i64 %1, -8                           ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 %i.d       ; 3 uses
  %.not39.i = icmp samesign eq i64 %i.d, 0
  br i1 %.not39.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.f = add i64 %1, -8                           ; 2 uses
  %i.g = and i64 %i.f, 8
  %lcmp.mod.not.not = icmp eq i64 %i.g, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.h = load i64, ptr %0, align 8, !tbaa !21
  %i.i = mul i64 %i.h, -4132994306676758123       ; 2 uses
  %i.j = lshr i64 %i.i, 47
  %i.k = xor i64 %i.j, %i.i
  %i.l = mul i64 %i.k, -4132994306676758123
  %i.m = xor i64 %i.l, %i.b
  %i.n = mul i64 %i.m, -4132994306676758123       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %.041.i.unr = phi ptr [ %0, %.lr.ph.i.preheader ], [ %i.o, %.lr.ph.i.prol ]
  %.03840.i.unr = phi i64 [ %i.b, %.lr.ph.i.preheader ], [ %i.n, %.lr.ph.i.prol ]
  %i.p = icmp ult i64 %i.f, 8
  br i1 %i.p, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.041.i = phi ptr [ %i.af, %.lr.ph.i ], [ %.041.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03840.i = phi i64 [ %i.ae, %.lr.ph.i ], [ %.03840.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.q = load i64, ptr %.041.i, align 8, !tbaa !21
  %i.r = mul i64 %i.q, -4132994306676758123       ; 2 uses
  %i.s = lshr i64 %i.r, 47
  %i.t = xor i64 %i.s, %i.r
  %i.u = mul i64 %i.t, -4132994306676758123
end_hunk_0
begin_hunk_1_@pfdebugCommand:bb.a
  %i.z = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !77
  %i.ad = tail call ptr @dbUnshareStringValue(ptr noundef %i.z, ptr noundef %i.ac, ptr noundef nonnull %i.w) #19 ; 12 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 3 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 4 uses
  %i.ag = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !78
  %.not130 = icmp eq i32 %i.ag, 0
  br i1 %.not130, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ah = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.ad) #19
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0120 = phi i64 [ %i.ah, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.ai = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.19) #21
  %.not131 = icmp eq i32 %i.ai, 0
  br i1 %.not131, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !79
  %.not132 = icmp eq i32 %i.ak, 3
  br i1 %.not132, label %bb.p, label %bb.aq

bb.p:                                             ; preds = %bb.o
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  %i.an = icmp eq i8 %i.am, 1
  br i1 %i.an, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.ao = tail call i64 @stringObjectLen(ptr noundef nonnull %i.ad) #19
  %i.ap = tail call i32 @hllSparseToDense(ptr noundef nonnull %i.ad)
  %.not134 = icmp eq i32 %i.ap, -1
  br i1 %.not134, label %.thread148, label %bb.r

.thread148:                                       ; preds = %bb.q
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #19
  br label %.thread156

bb.r:                                             ; preds = %bb.q
  %i.aq = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !77
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !26
  %i.aw = tail call i32 @getKeySlot(ptr noundef %i.av) #19
  %i.ax = tail call i64 @stringObjectLen(ptr noundef nonnull %i.ad) #19
  tail call void @updateKeysizesHist(ptr noundef %i.aq, i32 noundef %i.aw, i32 noundef 0, i64 noundef %i.ao, i64 noundef %i.ax) #19
  %i.ay = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !78
  %.not133 = icmp eq i32 %i.ay, 0
  br i1 %.not133, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.ba = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !77
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !26
  %i.bf = tail call i32 @getKeySlot(ptr noundef %i.be) #19
  %i.bg = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.ad) #19
  tail call void @updateSlotAllocSize(ptr noundef %i.az, i32 noundef %i.bf, ptr noundef nonnull %i.ad, i64 noundef %.0120, i64 noundef %i.bg) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bh = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  %i.bi = add nsw i64 %i.bh, 1
  store i64 %i.bi, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p
  %i.bj = load ptr, ptr %i.ae, align 8, !tbaa !26
  tail call void @addReplyArrayLen(ptr noundef nonnull %0, i64 noundef 16384) #19
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.v
  %.0119161 = phi i32 [ 0, %bb.u ], [ %i.bw, %bb.v ] ; 2 uses
  %i.bl = mul nuw nsw i32 %.0119161, 6            ; 2 uses
  %i.bm = lshr i32 %i.bl, 3
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = trunc i32 %i.bl to i8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bn ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !23
  %i.bt = tail call i8 @llvm.fshr.i8(i8 %i.bs, i8 %i.bq, i8 %i.bo)
  %i.bu = and i8 %i.bt, 63
  %i.bv = zext nneg i8 %i.bu to i64
  tail call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %i.bv) #19
  %i.bw = add nuw nsw i32 %.0119161, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, 16384
  br i1 %exitcond.not, label %.thread156, label %bb.v, !llvm.loop !111

bb.w:                                             ; preds = %bb.n
  %i.bx = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.20) #21
  %.not135 = icmp eq i32 %i.bx, 0
  br i1 %.not135, label %bb.x, label %bb.af

bb.x:                                             ; preds = %bb.w
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bz = load i32, ptr %i.by, align 8, !tbaa !79
  %.not136 = icmp eq i32 %i.bz, 3
  br i1 %.not136, label %bb.y, label %bb.aq

bb.y:                                             ; preds = %bb.x
  %i.ca = load ptr, ptr %i.ae, align 8, !tbaa !26 ; 3 uses
  %i.cb = tail call fastcc i64 @sdslen(ptr noundef %i.ca) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cb
  %i.cd = tail call ptr @sdsempty() #19           ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !23
  %.not137 = icmp eq i8 %i.cf, 1
  br i1 %.not137, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void @sdsfree(ptr noundef %i.cd) #19
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.21) #19
  br label %.thread156

bb.aa:                                            ; preds = %bb.y
  %i.cg = icmp samesign ugt i64 %i.cb, 16
  br i1 %i.cg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ae
  %.0115160 = phi ptr [ %.1116, %bb.ae ], [ %i.cd, %.lr.ph.preheader ] ; 3 uses
  %.0117159 = phi ptr [ %.1118, %bb.ae ], [ %i.ch, %.lr.ph.preheader ] ; 5 uses
  %i.ci = load i8, ptr %.0117159, align 1, !tbaa !23 ; 2 uses
  %i.cj = zext i8 %i.ci to i32                    ; 4 uses
  %trunc = and i8 %i.ci, -64
  switch i8 %trunc, label %bb.ad [
    i8 0, label %bb.ab
    i8 64, label %bb.ac
  ]

bb.ab:                                            ; preds = %.lr.ph
  %i.ck = add nuw nsw i32 %i.cj, 1
  %i.cl = getelementptr inbounds nuw i8, ptr %.0117159, i64 1
  %i.cm = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0115160, ptr noundef nonnull @.str.22, i32 noundef %i.ck) #19
  br label %bb.ae

bb.ac:                                            ; preds = %.lr.ph
  %i.cn = shl nuw nsw i32 %i.cj, 8
  %i.co = and i32 %i.cn, 16128
  %i.cp = getelementptr inbounds nuw i8, ptr %.0117159, i64 1
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !23
  %i.cr = zext i8 %i.cq to i32
  %i.cs = or disjoint i32 %i.co, 1
  %i.ct = add nuw nsw i32 %i.cs, %i.cr
  %i.cu = getelementptr inbounds nuw i8, ptr %.0117159, i64 2
  %i.cv = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0115160, ptr noundef nonnull @.str.23, i32 noundef %i.ct) #19
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph
  %i.cw = and i32 %i.cj, 3
  %i.cx = add nuw nsw i32 %i.cw, 1
  %i.cy = lshr i32 %i.cj, 2
  %i.cz = and i32 %i.cy, 31
  %i.da = add nuw nsw i32 %i.cz, 1
  %i.db = getelementptr inbounds nuw i8, ptr %.0117159, i64 1
  %i.dc = tail call ptr (ptr, ptr, ...) @sdscatprintf(ptr noundef %.0115160, ptr noundef nonnull @.str.24, i32 noundef %i.da, i32 noundef %i.cx) #19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad, %bb.ab
  %.1118 = phi ptr [ %i.cl, %bb.ab ], [ %i.cu, %bb.ac ], [ %i.db, %bb.ad ] ; 2 uses
  %.1116 = phi ptr [ %i.cm, %bb.ab ], [ %i.cv, %bb.ac ], [ %i.dc, %bb.ad ] ; 2 uses
  %i.dd = icmp ult ptr %.1118, %i.cc
  br i1 %i.dd, label %.lr.ph, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.ae, %bb.aa
  %.0115.lcssa = phi ptr [ %i.cd, %bb.aa ], [ %.1116, %bb.ae ]
  %i.de = tail call ptr @sdstrim(ptr noundef %.0115.lcssa, ptr noundef nonnull @.str.25) #19 ; 3 uses
  %i.df = tail call fastcc i64 @sdslen(ptr noundef %i.de)
  tail call void @addReplyBulkCBuffer(ptr noundef nonnull %0, ptr noundef %i.de, i64 noundef %i.df) #19
  tail call void @sdsfree(ptr noundef %i.de) #19
  br label %.thread156

bb.af:                                            ; preds = %bb.w
  %i.dg = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.26) #21
  %.not138 = icmp eq i32 %i.dg, 0
  br i1 %.not138, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !79
  %.not139 = icmp eq i32 %i.di, 3
  br i1 %.not139, label %.thread149, label %bb.aq

.thread149:                                       ; preds = %bb.ag
  %i.dj = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !23
  %1 = zext i8 %i.dk to i64
  %2 = getelementptr inbounds nuw [8 x i8], ptr @__const.pfdebugCommand.encodingstr, i64 %1
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  tail call void @addReplyStatus(ptr noundef nonnull %0, ptr noundef %3) #19
  br label %.thread156

bb.ah:                                            ; preds = %bb.af
  %i.dl = tail call i32 @strcasecmp(ptr noundef %i.f, ptr noundef nonnull @.str.29) #21
  %.not140 = icmp eq i32 %i.dl, 0
  br i1 %.not140, label %bb.ai, label %bb.ap

bb.ai:                                            ; preds = %bb.ah
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !79
  %.not141 = icmp eq i32 %i.dn, 3
  br i1 %.not141, label %bb.aj, label %bb.aq

bb.aj:                                            ; preds = %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !23
  %i.dq = icmp eq i8 %i.dp, 1
  br i1 %i.dq, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.dr = tail call i64 @stringObjectLen(ptr noundef nonnull %i.ad) #19
  %i.ds = tail call i32 @hllSparseToDense(ptr noundef nonnull %i.ad)
  %.not143 = icmp eq i32 %i.ds, -1
  br i1 %.not143, label %.thread151, label %bb.al

.thread151:                                       ; preds = %bb.ak
  tail call void @addReplyError(ptr noundef nonnull %0, ptr noundef nonnull @.str.32) #19
  br label %.thread156

bb.al:                                            ; preds = %bb.ak
  %i.dt = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.du = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !77
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !26
  %i.dz = tail call i32 @getKeySlot(ptr noundef %i.dy) #19
  %i.ea = tail call i64 @stringObjectLen(ptr noundef nonnull %i.ad) #19
  tail call void @updateKeysizesHist(ptr noundef %i.dt, i32 noundef %i.dz, i32 noundef 0, i64 noundef %i.dr, i64 noundef %i.ea) #19
  %i.eb = load i32, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6644), align 4, !tbaa !78
  %.not142 = icmp eq i32 %i.eb, 0
  br i1 %.not142, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ec = load ptr, ptr %i.s, align 8, !tbaa !75
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !77
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !26
  %i.ei = tail call i32 @getKeySlot(ptr noundef %i.eh) #19
  %i.ej = tail call i64 @kvobjAllocSize(ptr noundef nonnull %i.ad) #19
  tail call void @updateSlotAllocSize(ptr noundef %i.ec, i32 noundef %i.ei, ptr noundef nonnull %i.ad, i64 noundef %.0120, i64 noundef %i.ej) #19
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ek = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  %i.el = add nsw i64 %i.ek, 1
  store i64 %i.el, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !83
  br label %bb.ao

bb.ao:                                            ; preds = %bb.aj, %bb.an
  %.in = phi ptr [ getelementptr inbounds nuw (i8, ptr @shared, i64 32), %bb.an ], [ getelementptr inbounds nuw (i8, ptr @shared, i64 24), %bb.aj ]
  %i.em = load ptr, ptr %.in, align 8
  tail call void @addReply(ptr noundef nonnull %0, ptr noundef %i.em) #19
  br label %.thread156

bb.ap:                                            ; preds = %bb.ah
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.30, ptr noundef %i.f) #19
  br label %.thread156

bb.aq:                                            ; preds = %bb.ai, %bb.ag, %bb.x, %bb.o, %bb.b
  tail call void (ptr, ptr, ...) @addReplyErrorFormat(ptr noundef nonnull %0, ptr noundef nonnull @.str.31, ptr noundef %i.f) #19
  br label %.thread156

.thread156:                                       ; preds = %bb.v, %bb.ao, %.thread151, %.thread149, %.thread148, %bb.z, %._crit_edge, %bb.ap, %bb.k, %bb.aq, %bb.j, %bb.h
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #18

declare void @addReplyStatus(ptr noundef, ptr noundef) local_unnamed_addr #7

declare ptr @lookupKeyWrite(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #7

declare ptr @sdsempty() local_unnamed_addr #7

declare ptr @sdscatprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

declare ptr @sdstrim(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @addReplyBulkCBuffer(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.umax.v32i8(<32 x i8>, <32 x i8>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.fshr.v8i8(<8 x i8>, <8 x i8>, <8 x i8>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.umax.v8i8(<8 x i8>, <8 x i8>) #10

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nofree norecurse nosync nounwind memory(errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}
!llvm.errno.tbaa = !{!19}

!0 = distinct !{!0, !22}
!1 = distinct !{!1, !22}
!2 = distinct !{!2, !22}
!3 = distinct !{!3, !22}
!4 = distinct !{!4, !22}
!5 = distinct !{!5, !22}
!6 = distinct !{!6, !22}
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 8, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{i32 1, !"ThinLTO", i32 0}
!14 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!15 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!16 = !{!"Simple C/C++ TBAA"}
!17 = !{!"omnipotent char", !16, i64 0}
!18 = !{!"int", !17, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"long", !17, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!17, !17, i64 0}
!24 = !{!"any pointer", !17, i64 0}
!25 = !{!"redisObject", !18, i64 0, !18, i64 0, !18, i64 1, !18, i64 3, !18, i64 4, !18, i64 5, !24, i64 8}
!26 = !{!25, !24, i64 8}
!27 = !{!"short", !17, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!"p1 omnipotent char", !24, i64 0}
!30 = !{!"any p2 pointer", !24, i64 0}
!31 = !{!"p2 omnipotent char", !30, i64 0}
!32 = !{!"p1 _ZTS7redisDb", !24, i64 0}
!33 = !{!"p1 _ZTS4dict", !24, i64 0}
!34 = !{!"p1 _ZTS11aeEventLoop", !24, i64 0}
!35 = !{!"p1 _ZTS3rax", !24, i64 0}
!36 = !{!"long long", !17, i64 0}
!37 = !{!"p1 _ZTS4list", !24, i64 0}
!38 = !{!"p1 _ZTS14ConnectionType", !24, i64 0}
!39 = !{!"connListener", !17, i64 0, !18, i64 64, !31, i64 72, !18, i64 80, !18, i64 84, !38, i64 88, !24, i64 96}
!40 = !{!"p1 _ZTS6client", !24, i64 0}
!41 = !{!"p2 _ZTS14pendingCommand", !30, i64 0}
!42 = !{!"pendingCommandPool", !41, i64 0, !18, i64 8, !18, i64 12, !18, i64 16}
!43 = !{!"double", !17, i64 0}
!44 = !{!"malloc_stats", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80}
!45 = !{!"p1 _ZTS11hotkeyStats", !24, i64 0}
!46 = !{!"p1 double", !24, i64 0}
!47 = !{!"p1 _ZTS9saveparam", !24, i64 0}
!48 = !{!"p2 _ZTS10connection", !30, i64 0}
!49 = !{!"p1 _ZTS7redisOp", !24, i64 0}
!50 = !{!"redisOpArray", !49, i64 0, !18, i64 8, !18, i64 12}
!51 = !{!"p1 _ZTS11replBacklog", !24, i64 0}
!52 = !{!"replDataBuf", !37, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40}
!53 = !{!"p1 _ZTS10connection", !24, i64 0}
!54 = !{!"p1 _ZTS8_kvstore", !24, i64 0}
!55 = !{!"p1 _ZTS12clusterState", !24, i64 0}
!56 = !{!"aclInfo", !36, i64 0, !36, i64 8, !36, i64 16, !36, i64 24, !36, i64 32}
!57 = !{!"redisTLSContextConfig", !29, i64 0, !29, i64 8, !29, i64 16, !29, i64 24, !29, i64 32, !29, i64 40, !18, i64 48, !29, i64 56, !29, i64 64, !29, i64 72, !29, i64 80, !29, i64 88, !29, i64 96, !18, i64 104, !18, i64 108, !18, i64 112, !18, i64 116}
!58 = !{!"p1 _ZTS14sentinelConfig", !24, i64 0}
!59 = !{!"redisServer", !18, i64 0, !20, i64 8, !29, i64 16, !29, i64 24, !31, i64 32, !18, i64 40, !18, i64 44, !18, i64 48, !18, i64 52, !18, i64 56, !32, i64 64, !33, i64 72, !33, i64 80, !34, i64 88, !35, i64 96, !18, i64 104, !18, i64 108, !17, i64 112, !17, i64 116, !36, i64 120, !17, i64 128, !18, i64 132, !18, i64 136, !18, i64 140, !29, i64 144, !18, i64 152, !18, i64 156, !17, i64 160, !18, i64 204, !20, i64 208, !18, i64 216, !18, i64 220, !18, i64 224, !29, i64 232, !29, i64 240, !18, i64 248, !18, i64 252, !20, i64 256, !17, i64 264, !33, i64 272, !33, i64 280, !33, i64 288, !37, i64 296, !17, i64 304, !18, i64 312, !18, i64 316, !17, i64 320, !18, i64 324, !18, i64 328, !18, i64 332, !17, i64 336, !18, i64 464, !29, i64 472, !29, i64 480, !18, i64 488, !17, i64 496, !18, i64 1328, !39, i64 1336, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !40, i64 1496, !40, i64 1504, !24, i64 1512, !35, i64 1520, !18, i64 1528, !35, i64 1536, !18, i64 1544, !37, i64 1552, !17, i64 1560, !17, i64 1624, !33, i64 1880, !17, i64 1888, !18, i64 1896, !18, i64 1900, !17, i64 1904, !18, i64 2416, !18, i64 2420, !42, i64 2424, !18, i64 2448, !36, i64 2456, !18, i64 2464, !18, i64 2468, !18, i64 2472, !18, i64 2476, !18, i64 2480, !20, i64 2488, !20, i64 2496, !20, i64 2504, !20, i64 2512, !20, i64 2520, !20, i64 2528, !36, i64 2536, !36, i64 2544, !36, i64 2552, !36, i64 2560, !36, i64 2568, !36, i64 2576, !43, i64 2584, !36, i64 2592, !36, i64 2600, !36, i64 2608, !36, i64 2616, !36, i64 2624, !36, i64 2632, !20, i64 2640, !36, i64 2648, !36, i64 2656, !36, i64 2664, !36, i64 2672, !36, i64 2680, !36, i64 2688, !36, i64 2696, !36, i64 2704, !20, i64 2712, !20, i64 2720, !20, i64 2728, !36, i64 2736, !36, i64 2744, !36, i64 2752, !36, i64 2760, !36, i64 2768, !43, i64 2776, !36, i64 2784, !36, i64 2792, !36, i64 2800, !36, i64 2808, !36, i64 2816, !37, i64 2824, !36, i64 2832, !36, i64 2840, !20, i64 2848, !44, i64 2856, !17, i64 2944, !17, i64 2952, !17, i64 2960, !17, i64 2968, !20, i64 2976, !20, i64 2984, !20, i64 2992, !20, i64 3000, !20, i64 3008, !20, i64 3016, !20, i64 3024, !20, i64 3032, !43, i64 3040, !17, i64 3048, !20, i64 3080, !36, i64 3088, !36, i64 3096, !36, i64 3104, !17, i64 3112, !17, i64 4136, !17, i64 5160, !36, i64 5168, !36, i64 5176, !36, i64 5184, !36, i64 5192, !17, i64 5200, !36, i64 6264, !36, i64 6272, !20, i64 6280, !36, i64 6288, !36, i64 6296, !20, i64 6304, !17, i64 6312, !45, i64 6408, !18, i64 6416, !18, i64 6420, !18, i64 6424, !18, i64 6428, !18, i64 6432, !18, i64 6436, !18, i64 6440, !18, i64 6444, !18, i64 6448, !18, i64 6452, !18, i64 6456, !18, i64 6460, !18, i64 6464, !20, i64 6472, !18, i64 6480, !18, i64 6484, !18, i64 6488, !18, i64 6492, !20, i64 6496, !20, i64 6504, !18, i64 6512, !18, i64 6516, !18, i64 6520, !18, i64 6524, !18, i64 6528, !18, i64 6532, !29, i64 6536, !17, i64 6544, !18, i64 6616, !18, i64 6620, !18, i64 6624, !46, i64 6632, !18, i64 6640, !18, i64 6644, !18, i64 6648, !18, i64 6652, !18, i64 6656, !18, i64 6660, !18, i64 6664, !18, i64 6668, !18, i64 6672, !29, i64 6680, !29, i64 6688, !18, i64 6696, !18, i64 6700, !20, i64 6704, !20, i64 6712, !20, i64 6720, !20, i64 6728, !20, i64 6736, !18, i64 6744, !18, i64 6748, !29, i64 6752, !18, i64 6760, !18, i64 6764, !36, i64 6768, !36, i64 6776, !20, i64 6784, !20, i64 6792, !20, i64 6800, !18, i64 6808, !18, i64 6812, !20, i64 6816, !18, i64 6824, !18, i64 6828, !18, i64 6832, !18, i64 6836, !18, i64 6840, !20, i64 6848, !18, i64 6856, !17, i64 6860, !17, i64 6864, !24, i64 6872, !18, i64 6880, !36, i64 6888, !36, i64 6896, !36, i64 6904, !36, i64 6912, !18, i64 6920, !47, i64 6928, !18, i64 6936, !29, i64 6944, !18, i64 6952, !18, i64 6956, !18, i64 6960, !20, i64 6968, !20, i64 6976, !20, i64 6984, !20, i64 6992, !18, i64 7000, !18, i64 7004, !18, i64 7008, !18, i64 7012, !18, i64 7016, !18, i64 7020, !48, i64 7024, !18, i64 7032, !18, i64 7036, !29, i64 7040, !18, i64 7048, !18, i64 7052, !18, i64 7056, !17, i64 7060, !18, i64 7068, !50, i64 7072, !18, i64 7088, !29, i64 7096, !18, i64 7104, !29, i64 7112, !18, i64 7120, !18, i64 7124, !18, i64 7128, !18, i64 7132, !18, i64 7136, !18, i64 7140, !18, i64 7144, !17, i64 7148, !17, i64 7189, !36, i64 7232, !36, i64 7240, !17, i64 7248, !36, i64 7256, !18, i64 7264, !18, i64 7268, !51, i64 7272, !36, i64 7280, !36, i64 7288, !52, i64 7296, !20, i64 7344, !20, i64 7352, !18, i64 7360, !18, i64 7364, !18, i64 7368, !18, i64 7372, !18, i64 7376, !18, i64 7380, !18, i64 7384, !18, i64 7388, !18, i64 7392, !20, i64 7400, !37, i64 7408, !20, i64 7416, !29, i64 7424, !29, i64 7432, !29, i64 7440, !18, i64 7448, !18, i64 7452, !40, i64 7456, !40, i64 7464, !18, i64 7472, !18, i64 7476, !18, i64 7480, !18, i64 7484, !20, i64 7488, !20, i64 7496, !20, i64 7504, !20, i64 7512, !20, i64 7520, !53, i64 7528, !53, i64 7536, !18, i64 7544, !29, i64 7552, !20, i64 7560, !18, i64 7568, !18, i64 7572, !18, i64 7576, !20, i64 7584, !20, i64 7592, !18, i64 7600, !18, i64 7604, !18, i64 7608, !18, i64 7612, !29, i64 7616, !18, i64 7624, !18, i64 7628, !17, i64 7632, !36, i64 7680, !18, i64 7688, !37, i64 7696, !18, i64 7704, !36, i64 7712, !36, i64 7720, !20, i64 7728, !20, i64 7736, !18, i64 7744, !36, i64 7752, !20, i64 7760, !18, i64 7768, !18, i64 7772, !18, i64 7776, !18, i64 7780, !18, i64 7784, !36, i64 7792, !17, i64 7800, !18, i64 7812, !18, i64 7816, !18, i64 7820, !17, i64 7824, !37, i64 7872, !37, i64 7880, !18, i64 7888, !20, i64 7896, !37, i64 7904, !37, i64 7912, !18, i64 7920, !18, i64 7924, !18, i64 7928, !18, i64 7932, !20, i64 7936, !20, i64 7944, !20, i64 7952, !20, i64 7960, !20, i64 7968, !20, i64 7976, !20, i64 7984, !20, i64 7992, !20, i64 8000, !36, i64 8008, !36, i64 8016, !36, i64 8024, !18, i64 8032, !18, i64 8036, !17, i64 8040, !20, i64 8048, !17, i64 8056, !36, i64 8064, !36, i64 8072, !18, i64 8080, !20, i64 8088, !36, i64 8096, !20, i64 8104, !36, i64 8112, !54, i64 8120, !33, i64 8128, !18, i64 8136, !54, i64 8144, !18, i64 8152, !18, i64 8156, !18, i64 8160, !18, i64 8164, !36, i64 8168, !36, i64 8176, !29, i64 8184, !36, i64 8192, !36, i64 8200, !36, i64 8208, !18, i64 8216, !55, i64 8224, !18, i64 8232, !18, i64 8236, !18, i64 8240, !18, i64 8244, !18, i64 8248, !29, i64 8256, !29, i64 8264, !29, i64 8272, !18, i64 8280, !18, i64 8284, !18, i64 8288, !18, i64 8292, !18, i64 8296, !18, i64 8300, !18, i64 8304, !18, i64 8308, !36, i64 8312, !18, i64 8320, !18, i64 8324, !18, i64 8328, !36, i64 8336, !18, i64 8344, !18, i64 8348, !18, i64 8352, !18, i64 8356, !18, i64 8360, !18, i64 8364, !18, i64 8368, !18, i64 8372, !18, i64 8376, !36, i64 8384, !33, i64 8392, !29, i64 8400, !20, i64 8408, !29, i64 8416, !18, i64 8424, !56, i64 8432, !18, i64 8472, !20, i64 8480, !18, i64 8488, !18, i64 8492, !18, i64 8496, !57, i64 8504, !29, i64 8624, !29, i64 8632, !29, i64 8640, !29, i64 8648, !58, i64 8656, !36, i64 8664, !18, i64 8672, !29, i64 8680, !18, i64 8688, !18, i64 8692, !18, i64 8696, !20, i64 8704, !18, i64 8712, !18, i64 8716, !29, i64 8720, !18, i64 8728, !18, i64 8732}
!60 = !{!59, !20, i64 7992}
!61 = !{!"p1 _ZTS11redisObject", !24, i64 0}
!62 = !{!"p2 _ZTS11redisObject", !30, i64 0}
!63 = !{!"p1 _ZTS14pendingCommand", !24, i64 0}
!64 = !{!"pendingCommandList", !63, i64 0, !63, i64 8, !18, i64 16, !18, i64 20}
!65 = !{!"p1 _ZTS14deferredObject", !24, i64 0}
!66 = !{!"p1 _ZTS12redisCommand", !24, i64 0}
!67 = !{!"p1 _ZTS9dictEntry", !24, i64 0}
!68 = !{!"multiState", !41, i64 0, !18, i64 8, !18, i64 12, !18, i64 16, !18, i64 20, !20, i64 24, !18, i64 32}
!69 = !{!"blockingState", !18, i64 0, !36, i64 8, !18, i64 16, !33, i64 24, !18, i64 32, !18, i64 36, !36, i64 40, !24, i64 48, !24, i64 56, !20, i64 64}
!70 = !{!"p1 _ZTS8listNode", !24, i64 0}
!71 = !{!"listNode", !70, i64 0, !70, i64 8, !24, i64 16}
!72 = !{!"p1 _ZTS13payloadHeader", !24, i64 0}
!73 = !{!"p1 _ZTS7asmTask", !24, i64 0}
!74 = !{!"client", !20, i64 0, !20, i64 8, !53, i64 16, !17, i64 24, !17, i64 25, !17, i64 26, !17, i64 27, !18, i64 28, !32, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !29, i64 64, !20, i64 72, !20, i64 80, !18, i64 88, !62, i64 96, !18, i64 104, !18, i64 108, !62, i64 112, !20, i64 120, !64, i64 128, !63, i64 152, !65, i64 160, !18, i64 168, !62, i64 176, !18, i64 184, !18, i64 188, !66, i64 192, !66, i64 200, !66, i64 208, !66, i64 216, !24, i64 224, !18, i64 232, !18, i64 236, !20, i64 240, !37, i64 248, !36, i64 256, !37, i64 264, !20, i64 272, !20, i64 280, !20, i64 288, !18, i64 296, !18, i64 300, !67, i64 304, !20, i64 312, !20, i64 320, !20, i64 328, !36, i64 336, !36, i64 344, !18, i64 352, !18, i64 356, !18, i64 360, !18, i64 364, !20, i64 368, !20, i64 376, !29, i64 384, !36, i64 392, !36, i64 400, !36, i64 408, !36, i64 416, !36, i64 424, !36, i64 432, !36, i64 440, !36, i64 448, !36, i64 456, !36, i64 464, !36, i64 472, !17, i64 480, !18, i64 524, !29, i64 528, !18, i64 536, !18, i64 540, !20, i64 544, !68, i64 552, !69, i64 592, !36, i64 664, !37, i64 672, !33, i64 680, !33, i64 688, !33, i64 696, !29, i64 704, !29, i64 712, !70, i64 720, !70, i64 728, !70, i64 736, !24, i64 744, !24, i64 752, !24, i64 760, !24, i64 768, !24, i64 776, !20, i64 784, !35, i64 792, !20, i64 800, !18, i64 808, !70, i64 816, !24, i64 824, !70, i64 832, !20, i64 840, !70, i64 848, !20, i64 856, !70, i64 864, !20, i64 872, !71, i64 880, !71, i64 904, !20, i64 928, !20, i64 936, !20, i64 944, !36, i64 952, !20, i64 960, !20, i64 968, !29, i64 976, !17, i64 984, !72, i64 992, !36, i64 1000, !36, i64 1008, !36, i64 1016, !73, i64 1024, !29, i64 1032, !17, i64 1040}
!75 = !{!74, !32, i64 32}
!76 = !{!74, !62, i64 96}
!77 = !{!61, !61, i64 0}
!78 = !{!59, !18, i64 6644}
!79 = !{!74, !18, i64 88}
!80 = !{!"p1 _ZTS7_estore", !24, i64 0}
!81 = !{!"redisDb", !54, i64 0, !54, i64 8, !80, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !33, i64 48, !33, i64 56, !33, i64 64, !18, i64 72, !36, i64 80, !20, i64 88}
!82 = !{!81, !18, i64 72}
!83 = !{!59, !36, i64 6888}
!84 = !{!"sharedObjectsStruct", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !17, i64 64, !17, i64 96, !17, i64 128, !17, i64 160, !61, i64 192, !61, i64 200, !61, i64 208, !61, i64 216, !61, i64 224, !61, i64 232, !61, i64 240, !61, i64 248, !61, i64 256, !61, i64 264, !61, i64 272, !61, i64 280, !61, i64 288, !61, i64 296, !61, i64 304, !61, i64 312, !61, i64 320, !61, i64 328, !61, i64 336, !61, i64 344, !61, i64 352, !61, i64 360, !61, i64 368, !61, i64 376, !61, i64 384, !61, i64 392, !61, i64 400, !61, i64 408, !61, i64 416, !61, i64 424, !61, i64 432, !61, i64 440, !61, i64 448, !61, i64 456, !61, i64 464, !61, i64 472, !61, i64 480, !61, i64 488, !61, i64 496, !61, i64 504, !61, i64 512, !61, i64 520, !61, i64 528, !61, i64 536, !61, i64 544, !61, i64 552, !61, i64 560, !61, i64 568, !61, i64 576, !61, i64 584, !61, i64 592, !61, i64 600, !61, i64 608, !61, i64 616, !61, i64 624, !61, i64 632, !61, i64 640, !61, i64 648, !61, i64 656, !61, i64 664, !61, i64 672, !61, i64 680, !61, i64 688, !61, i64 696, !61, i64 704, !61, i64 712, !61, i64 720, !61, i64 728, !61, i64 736, !61, i64 744, !61, i64 752, !61, i64 760, !61, i64 768, !61, i64 776, !61, i64 784, !61, i64 792, !61, i64 800, !61, i64 808, !17, i64 816, !17, i64 896, !17, i64 80896, !17, i64 81152, !17, i64 81408, !17, i64 81664, !29, i64 81920, !29, i64 81928}
!85 = !{!84, !61, i64 0}
!86 = distinct !{!86, !22}
!87 = distinct !{!87, !22}
!88 = distinct !{!88, !22}
!89 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!90 = distinct !{!90, !22}
!91 = distinct !{!91, i1 false, !"LVerDomain"}
!92 = distinct !{!92, !91}
!93 = distinct !{!93, !91}
!94 = distinct !{!94, !22, !98}
!95 = !{!"branch_weights", i32 1, i32 1048575}
!96 = !{!92}
!97 = !{!93}
!98 = !{!"llvm.loop.isvectorized", i32 1}
!99 = distinct !{!99, !22}
!100 = distinct !{!100, !22}
!101 = distinct !{!101, !22}
!102 = distinct !{!102, !22}
!103 = distinct !{!103, !22}
!104 = !{!84, !61, i64 24}
!105 = distinct !{!105, !22}
!106 = distinct !{!106, !22}
!107 = distinct !{!107, !22}
!108 = distinct !{!108, !22}
!109 = distinct !{!109, !22}
!110 = distinct !{!110, !22}
!111 = distinct !{!111, !22}
!112 = distinct !{!112, !22}
!113 = !{!29, !29, i64 0}
end_hunk_1
