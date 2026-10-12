Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/bitops?download=true
inline.NumInlined: 24
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 19
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

@__cpu_model = external dso_local local_unnamed_addr global { i32, i32, i32, [1 x i32] }
@.str = private unnamed_addr constant [9 x i8] c"bitops.c\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"End of redisBitpos() reached.\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"bit offset is not an integer or out of range\00", align 1
@server = external local_unnamed_addr global %struct.redisServer, align 8
@.str.6 = private unnamed_addr constant [93 x i8] c"Invalid bitfield type. Use something like i16 u8. Note that u64 is not supported but i64 is.\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"!o || o->type == OBJ_STRING\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"bit is not an integer or out of range\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"setbit\00", align 1
@shared = external local_unnamed_addr global %struct.sharedObjectsStruct, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"xor\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"not\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"diff\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"diff1\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"andor\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"BITOP NOT must be called with a single source key.\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"BITOP %s must be called with at least two source keys.\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"minlen >= j\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"!useAVX2\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"del\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"byte\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"totlen <= LLONG_MAX >> 3\00", align 1
@.str.27 = private unnamed_addr constant [33 x i8] c"The bit argument must be 1 or 0.\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"incrby\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"wrap\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"sat\00", align 1
@.str.33 = private unnamed_addr constant [5 x i8] c"fail\00", align 1
@.str.34 = private unnamed_addr constant [32 x i8] c"Invalid OVERFLOW type specified\00", align 1
@.str.35 = private unnamed_addr constant [45 x i8] c"BITFIELD_RO only supports the GET subcommand\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local i64 @redisPopcount(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @__cpu_model, i64 12), align 4
  %i.b = and i32 %i.a, 4                          ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  %i.c = or disjoint i32 %i.b, 3
  %i.d = zext nneg i32 %i.c to i64                ; 2 uses
  %i.e = ptrtoint ptr %0 to i64
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp ne i64 %i.f, 0
  %i.h = icmp ne i64 %1, 0
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08498 = phi i64 [ %i.n, %.lr.ph ], [ %1, %bb.a ]
  %.08597 = phi i64 [ %i.m, %.lr.ph ], [ 0, %bb.a ]
  %.08996 = phi ptr [ %i.j, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.08996, i64 1 ; 3 uses
  %i.k = load i8, ptr %.08996, align 1, !tbaa !15
  %2 = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.k)
  %i.l = zext nneg i8 %2 to i64
  %i.m = add nuw nsw i64 %.08597, %i.l            ; 2 uses
  %i.n = add nsw i64 %.08498, -1                  ; 3 uses
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = and i64 %i.o, %i.d
  %i.q = icmp ne i64 %i.p, 0
  %i.r = icmp ne i64 %i.n, 0
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.089.lcssa = phi ptr [ %0, %bb.a ], [ %i.j, %.lr.ph ] ; 7 uses
  %.085.lcssa = phi i64 [ 0, %bb.a ], [ %i.m, %.lr.ph ] ; 4 uses
  %.084.lcssa = phi i64 [ %1, %bb.a ], [ %i.n, %.lr.ph ] ; 8 uses
  br i1 %.not, label %.preheader, label %.preheader95, !prof !17

.preheader95:                                     ; preds = %._crit_edge
  %i.t = icmp sgt i64 %.084.lcssa, 31
  br i1 %i.t, label %.lr.ph107, label %._crit_edge108

.preheader:                                       ; preds = %._crit_edge
  %i.u = icmp sgt i64 %.084.lcssa, 27
  br i1 %i.u, label %.lr.ph118.preheader, label %.loopexit

.lr.ph118.preheader:                              ; preds = %.preheader
  %i.v = add nsw i64 %.084.lcssa, -28             ; 2 uses
  %i.w = udiv i64 %i.v, 28
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.v, 28
  br i1 %min.iters.check, label %.lr.ph118.preheader171, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph118.preheader
  %n.vec = and i64 %i.x, 2305843009213693950      ; 4 uses
  %i.y = mul i64 %n.vec, -28
  %i.z = add i64 %.084.lcssa, %i.y                ; 2 uses
  %i.aa = mul i64 %n.vec, 28
  %i.ab = getelementptr i8, ptr %.089.lcssa, i64 %i.aa ; 2 uses
  %i.ac = insertelement <2 x i64> <i64 poison, i64 0>, i64 %.085.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ac, %vector.ph ], [ %i.eu, %vector.body ]
  %i.ad = mul i64 %index, 28                      ; 2 uses
  %next.gep = getelementptr i8, ptr %.089.lcssa, i64 %i.ad ; 7 uses
  %i.ae = getelementptr i8, ptr %.089.lcssa, i64 %i.ad ; 7 uses
  %next.gep166 = getelementptr i8, ptr %i.ae, i64 28
  %i.af = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ag = getelementptr i8, ptr %i.ae, i64 32
  %i.ah = load i32, ptr %next.gep, align 4, !tbaa !14
  %i.ai = load i32, ptr %next.gep166, align 4, !tbaa !14
  %i.aj = insertelement <2 x i32> poison, i32 %i.ah, i64 0
  %i.ak = insertelement <2 x i32> %i.aj, i32 %i.ai, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.am = getelementptr i8, ptr %i.ae, i64 36
  %i.an = load i32, ptr %i.af, align 4, !tbaa !14
  %i.ao = load i32, ptr %i.ag, align 4, !tbaa !14
  %i.ap = insertelement <2 x i32> poison, i32 %i.an, i64 0
  %i.aq = insertelement <2 x i32> %i.ap, i32 %i.ao, i64 1 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.as = getelementptr i8, ptr %i.ae, i64 40
  %i.at = load i32, ptr %i.al, align 4, !tbaa !14
  %i.au = load i32, ptr %i.am, align 4, !tbaa !14
  %i.av = insertelement <2 x i32> poison, i32 %i.at, i64 0
  %i.aw = insertelement <2 x i32> %i.av, i32 %i.au, i64 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %next.gep, i64 16
  %i.ay = getelementptr i8, ptr %i.ae, i64 44
  %i.az = load i32, ptr %i.ar, align 4, !tbaa !14
  %i.ba = load i32, ptr %i.as, align 4, !tbaa !14
  %i.bb = insertelement <2 x i32> poison, i32 %i.az, i64 0
  %i.bc = insertelement <2 x i32> %i.bb, i32 %i.ba, i64 1 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %next.gep, i64 20
  %i.be = getelementptr i8, ptr %i.ae, i64 48
  %i.bf = load i32, ptr %i.ax, align 4, !tbaa !14
  %i.bg = load i32, ptr %i.ay, align 4, !tbaa !14
  %i.bh = insertelement <2 x i32> poison, i32 %i.bf, i64 0
  %i.bi = insertelement <2 x i32> %i.bh, i32 %i.bg, i64 1 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %next.gep, i64 24
  %i.bk = getelementptr i8, ptr %i.ae, i64 52
  %i.bl = load i32, ptr %i.bd, align 4, !tbaa !14
  %i.bm = load i32, ptr %i.be, align 4, !tbaa !14
  %i.bn = insertelement <2 x i32> poison, i32 %i.bl, i64 0
  %i.bo = insertelement <2 x i32> %i.bn, i32 %i.bm, i64 1 ; 2 uses
  %i.bp = load i32, ptr %i.bj, align 4, !tbaa !14
  %i.bq = load i32, ptr %i.bk, align 4, !tbaa !14
  %i.br = insertelement <2 x i32> poison, i32 %i.bp, i64 0
  %i.bs = insertelement <2 x i32> %i.br, i32 %i.bq, i64 1 ; 2 uses
  %i.bt = lshr <2 x i32> %i.ak, splat (i32 1)
  %i.bu = and <2 x i32> %i.bt, splat (i32 1431655765)
  %i.bv = sub <2 x i32> %i.ak, %i.bu              ; 2 uses
  %i.bw = and <2 x i32> %i.bv, splat (i32 858993459)
  %i.bx = lshr <2 x i32> %i.bv, splat (i32 2)
  %i.by = and <2 x i32> %i.bx, splat (i32 858993459)
  %i.bz = add nuw nsw <2 x i32> %i.by, %i.bw      ; 2 uses
  %i.ca = lshr <2 x i32> %i.aq, splat (i32 1)
  %i.cb = and <2 x i32> %i.ca, splat (i32 1431655765)
  %i.cc = sub <2 x i32> %i.aq, %i.cb              ; 2 uses
  %i.cd = and <2 x i32> %i.cc, splat (i32 858993459)
  %i.ce = lshr <2 x i32> %i.cc, splat (i32 2)
  %i.cf = and <2 x i32> %i.ce, splat (i32 858993459)
  %i.cg = add nuw nsw <2 x i32> %i.cf, %i.cd      ; 2 uses
  %i.ch = lshr <2 x i32> %i.aw, splat (i32 1)
  %i.ci = and <2 x i32> %i.ch, splat (i32 1431655765)
  %i.cj = sub <2 x i32> %i.aw, %i.ci              ; 2 uses
  %i.ck = and <2 x i32> %i.cj, splat (i32 858993459)
  %i.cl = lshr <2 x i32> %i.cj, splat (i32 2)
  %i.cm = and <2 x i32> %i.cl, splat (i32 858993459)
  %i.cn = add nuw nsw <2 x i32> %i.cm, %i.ck      ; 2 uses
  %i.co = lshr <2 x i32> %i.bc, splat (i32 1)
  %i.cp = and <2 x i32> %i.co, splat (i32 1431655765)
  %i.cq = sub <2 x i32> %i.bc, %i.cp              ; 2 uses
  %i.cr = and <2 x i32> %i.cq, splat (i32 858993459)
  %i.cs = lshr <2 x i32> %i.cq, splat (i32 2)
  %i.ct = and <2 x i32> %i.cs, splat (i32 858993459)
  %i.cu = add nuw nsw <2 x i32> %i.ct, %i.cr      ; 2 uses
  %i.cv = lshr <2 x i32> %i.bi, splat (i32 1)
  %i.cw = and <2 x i32> %i.cv, splat (i32 1431655765)
  %i.cx = sub <2 x i32> %i.bi, %i.cw              ; 2 uses
  %i.cy = and <2 x i32> %i.cx, splat (i32 858993459)
  %i.cz = lshr <2 x i32> %i.cx, splat (i32 2)
  %i.da = and <2 x i32> %i.cz, splat (i32 858993459)
  %i.db = add nuw nsw <2 x i32> %i.da, %i.cy      ; 2 uses
  %i.dc = lshr <2 x i32> %i.bo, splat (i32 1)
  %i.dd = and <2 x i32> %i.dc, splat (i32 1431655765)
  %i.de = sub <2 x i32> %i.bo, %i.dd              ; 2 uses
  %i.df = and <2 x i32> %i.de, splat (i32 858993459)
  %i.dg = lshr <2 x i32> %i.de, splat (i32 2)
  %i.dh = and <2 x i32> %i.dg, splat (i32 858993459)
  %i.di = add nuw nsw <2 x i32> %i.dh, %i.df      ; 2 uses
  %i.dj = lshr <2 x i32> %i.bs, splat (i32 1)
  %i.dk = and <2 x i32> %i.dj, splat (i32 1431655765)
  %i.dl = sub <2 x i32> %i.bs, %i.dk              ; 2 uses
  %i.dm = and <2 x i32> %i.dl, splat (i32 858993459)
  %i.dn = lshr <2 x i32> %i.dl, splat (i32 2)
  %i.do = and <2 x i32> %i.dn, splat (i32 858993459)
  %i.dp = add nuw nsw <2 x i32> %i.do, %i.dm      ; 2 uses
  %i.dq = lshr <2 x i32> %i.bz, splat (i32 4)
  %i.dr = add nuw nsw <2 x i32> %i.dq, %i.bz
  %i.ds = and <2 x i32> %i.dr, splat (i32 252645135)
  %i.dt = lshr <2 x i32> %i.cg, splat (i32 4)
  %i.du = add nuw nsw <2 x i32> %i.dt, %i.cg
  %i.dv = and <2 x i32> %i.du, splat (i32 252645135)
  %i.dw = add nuw nsw <2 x i32> %i.dv, %i.ds
  %i.dx = lshr <2 x i32> %i.cn, splat (i32 4)
  %i.dy = add nuw nsw <2 x i32> %i.dx, %i.cn
  %i.dz = and <2 x i32> %i.dy, splat (i32 252645135)
  %i.ea = add nuw nsw <2 x i32> %i.dw, %i.dz
  %i.eb = lshr <2 x i32> %i.cu, splat (i32 4)
  %i.ec = add nuw nsw <2 x i32> %i.eb, %i.cu
  %i.ed = and <2 x i32> %i.ec, splat (i32 252645135)
  %i.ee = add nuw nsw <2 x i32> %i.ea, %i.ed
  %i.ef = lshr <2 x i32> %i.db, splat (i32 4)
  %i.eg = add nuw nsw <2 x i32> %i.ef, %i.db
  %i.eh = and <2 x i32> %i.eg, splat (i32 252645135)
  %i.ei = add nuw nsw <2 x i32> %i.ee, %i.eh
  %i.ej = lshr <2 x i32> %i.di, splat (i32 4)
  %i.ek = add nuw nsw <2 x i32> %i.ej, %i.di
  %i.el = and <2 x i32> %i.ek, splat (i32 252645135)
  %i.em = add nuw nsw <2 x i32> %i.ei, %i.el
  %i.en = lshr <2 x i32> %i.dp, splat (i32 4)
  %i.eo = add nuw nsw <2 x i32> %i.en, %i.dp
  %i.ep = and <2 x i32> %i.eo, splat (i32 252645135)
  %i.eq = add nuw nsw <2 x i32> %i.em, %i.ep
  %i.er = mul <2 x i32> %i.eq, splat (i32 16843009)
  %i.es = lshr <2 x i32> %i.er, splat (i32 24)
  %i.et = zext nneg <2 x i32> %i.es to <2 x i64>
  %i.eu = add <2 x i64> %vec.phi, %i.et           ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ev = icmp eq i64 %index.next, %n.vec
  br i1 %i.ev, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %i.ew = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %i.eu) ; 2 uses
  %cmp.n = icmp eq i64 %i.x, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph118.preheader171

.lr.ph118.preheader171:                           ; preds = %.lr.ph118.preheader, %middle.block
  %.2117.ph = phi i64 [ %.084.lcssa, %.lr.ph118.preheader ], [ %i.z, %middle.block ]
  %.186116.ph = phi i64 [ %.085.lcssa, %.lr.ph118.preheader ], [ %i.ew, %middle.block ]
  %.093115.ph = phi ptr [ %.089.lcssa, %.lr.ph118.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph118

.lr.ph107:                                        ; preds = %.preheader95, %.lr.ph107
  %.1106 = phi i64 [ %i.fm, %.lr.ph107 ], [ %.084.lcssa, %.preheader95 ] ; 2 uses
  %.190105 = phi ptr [ %i.fn, %.lr.ph107 ], [ %.089.lcssa, %.preheader95 ] ; 6 uses
  %.sroa.12.0104 = phi i64 [ %i.fl, %.lr.ph107 ], [ 0, %.preheader95 ]
  %.sroa.9.0103 = phi i64 [ %i.fh, %.lr.ph107 ], [ 0, %.preheader95 ]
  %.sroa.6.0102 = phi i64 [ %i.fd, %.lr.ph107 ], [ 0, %.preheader95 ]
  %.sroa.0.0101 = phi i64 [ %i.ez, %.lr.ph107 ], [ 0, %.preheader95 ]
  %i.ex = load i64, ptr %.190105, align 8, !tbaa !21
  %i.ey = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ex)
  %i.ez = add i64 %i.ey, %.sroa.0.0101            ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.190105, i64 8
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !21
  %i.fc = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fb)
  %i.fd = add i64 %i.fc, %.sroa.6.0102            ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.190105, i64 16
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !21
  %i.fg = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ff)
  %i.fh = add i64 %i.fg, %.sroa.9.0103            ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.190105, i64 24
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !21
  %i.fk = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.fj)
  %i.fl = add i64 %i.fk, %.sroa.12.0104           ; 2 uses
  %i.fm = add nsw i64 %.1106, -32                 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.190105, i64 32 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.190105, i64 2080
  tail call void @llvm.prefetch.p0(ptr nonnull %i.fo, i32 0, i32 3, i32 1)
  %i.fp = icmp samesign ugt i64 %.1106, 63
  br i1 %i.fp, label %.lr.ph107, label %._crit_edge108, !llvm.loop !89

._crit_edge108:                                   ; preds = %.lr.ph107, %.preheader95
  %.sroa.0.0.lcssa = phi i64 [ 0, %.preheader95 ], [ %i.ez, %.lr.ph107 ]
  %.sroa.6.0.lcssa = phi i64 [ 0, %.preheader95 ], [ %i.fd, %.lr.ph107 ]
  %.sroa.9.0.lcssa = phi i64 [ 0, %.preheader95 ], [ %i.fh, %.lr.ph107 ]
  %.sroa.12.0.lcssa = phi i64 [ 0, %.preheader95 ], [ %i.fl, %.lr.ph107 ]
  %.190.lcssa = phi ptr [ %.089.lcssa, %.preheader95 ], [ %i.fn, %.lr.ph107 ]
  %.1.lcssa = phi i64 [ %.084.lcssa, %.preheader95 ], [ %i.fm, %.lr.ph107 ]
  %i.fq = add i64 %.sroa.0.0.lcssa, %.085.lcssa
  %i.fr = add i64 %i.fq, %.sroa.6.0.lcssa
  %i.fs = add i64 %i.fr, %.sroa.9.0.lcssa
  %i.ft = add i64 %i.fs, %.sroa.12.0.lcssa
  br label %.loopexit

.lr.ph118:                                        ; preds = %.lr.ph118.preheader171, %.lr.ph118
  %.2117 = phi i64 [ %i.fy, %.lr.ph118 ], [ %.2117.ph, %.lr.ph118.preheader171 ] ; 2 uses
  %.186116 = phi i64 [ %i.hj, %.lr.ph118 ], [ %.186116.ph, %.lr.ph118.preheader171 ]
  %.093115 = phi ptr [ %i.fx, %.lr.ph118 ], [ %.093115.ph, %.lr.ph118.preheader171 ] ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.093115, i64 16
  %i.fv = getelementptr inbounds nuw i8, ptr %.093115, i64 20
  %i.fw = load i32, ptr %i.fu, align 4, !tbaa !14 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %.093115, i64 28 ; 2 uses
  %i.fy = add nsw i64 %.2117, -28                 ; 2 uses
  %i.fz = lshr i32 %i.fw, 1
  %i.ga = and i32 %i.fz, 1431655765
  %i.gb = sub i32 %i.fw, %i.ga                    ; 2 uses
  %i.gc = and i32 %i.gb, 858993459
  %i.gd = lshr i32 %i.gb, 2
  %i.ge = and i32 %i.gd, 858993459
  %i.gf = add nuw nsw i32 %i.ge, %i.gc            ; 2 uses
  %i.gg = load <4 x i32>, ptr %.093115, align 4, !tbaa !14 ; 2 uses
  %i.gh = lshr <4 x i32> %i.gg, splat (i32 1)
  %i.gi = and <4 x i32> %i.gh, splat (i32 1431655765)
  %i.gj = sub <4 x i32> %i.gg, %i.gi              ; 2 uses
  %i.gk = and <4 x i32> %i.gj, splat (i32 858993459)
  %i.gl = lshr <4 x i32> %i.gj, splat (i32 2)
  %i.gm = and <4 x i32> %i.gl, splat (i32 858993459)
  %i.gn = add nuw nsw <4 x i32> %i.gm, %i.gk      ; 2 uses
  %i.go = lshr <4 x i32> %i.gn, splat (i32 4)
  %i.gp = add nuw nsw <4 x i32> %i.go, %i.gn
  %i.gq = and <4 x i32> %i.gp, splat (i32 252645135)
  %i.gr = lshr i32 %i.gf, 4
  %i.gs = add nuw nsw i32 %i.gr, %i.gf
  %i.gt = and i32 %i.gs, 252645135
  %i.gu = load <2 x i32>, ptr %i.fv, align 4, !tbaa !14 ; 2 uses
  %i.gv = lshr <2 x i32> %i.gu, splat (i32 1)
  %i.gw = and <2 x i32> %i.gv, splat (i32 1431655765)
  %i.gx = sub <2 x i32> %i.gu, %i.gw              ; 2 uses
  %i.gy = and <2 x i32> %i.gx, splat (i32 858993459)
  %i.gz = lshr <2 x i32> %i.gx, splat (i32 2)
  %i.ha = and <2 x i32> %i.gz, splat (i32 858993459)
  %i.hb = add nuw nsw <2 x i32> %i.ha, %i.gy      ; 2 uses
  %i.hc = lshr <2 x i32> %i.hb, splat (i32 4)
  %i.hd = add nuw nsw <2 x i32> %i.hc, %i.hb
  %i.he = and <2 x i32> %i.hd, splat (i32 252645135)
  %i.hf = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gq)
  %op.rdx = add nuw nsw i32 %i.hf, %i.gt
  %op.rdx168 = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.he)
  %op.rdx169 = add nuw i32 %op.rdx, %op.rdx168
  %i.hg = mul i32 %op.rdx169, 16843009
  %i.hh = lshr i32 %i.hg, 24
  %i.hi = zext nneg i32 %i.hh to i64
  %i.hj = add nuw nsw i64 %.186116, %i.hi         ; 2 uses
  %i.hk = icmp samesign ugt i64 %.2117, 55
  br i1 %i.hk, label %.lr.ph118, label %.loopexit, !llvm.loop !90

.loopexit:                                        ; preds = %.lr.ph118, %middle.block, %.preheader, %._crit_edge108
  %.291 = phi ptr [ %.190.lcssa, %._crit_edge108 ], [ %.089.lcssa, %.preheader ], [ %i.ab, %middle.block ], [ %i.fx, %.lr.ph118 ] ; 2 uses
  %.287 = phi i64 [ %i.ft, %._crit_edge108 ], [ %.085.lcssa, %.preheader ], [ %i.ew, %middle.block ], [ %i.hj, %.lr.ph118 ] ; 3 uses
  %.3 = phi i64 [ %.1.lcssa, %._crit_edge108 ], [ %.084.lcssa, %.preheader ], [ %i.z, %middle.block ], [ %i.fy, %.lr.ph118 ] ; 5 uses
  %.not94122 = icmp eq i64 %.3, 0
  br i1 %.not94122, label %._crit_edge128, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %.loopexit
  %xtraiter = and i64 %.3, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph127.prol.loopexit, label %.lr.ph127.prol

.lr.ph127.prol:                                   ; preds = %.lr.ph127.preheader, %.lr.ph127.prol
  %.4125.prol = phi i64 [ %i.hl, %.lr.ph127.prol ], [ %.3, %.lr.ph127.preheader ]
  %.388124.prol = phi i64 [ %i.hp, %.lr.ph127.prol ], [ %.287, %.lr.ph127.preheader ]
  %.392123.prol = phi ptr [ %i.hm, %.lr.ph127.prol ], [ %.291, %.lr.ph127.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph127.prol ], [ 0, %.lr.ph127.preheader ]
  %i.hl = add nsw i64 %.4125.prol, -1             ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.392123.prol, i64 1 ; 2 uses
  %i.hn = load i8, ptr %.392123.prol, align 1, !tbaa !15
  %3 = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.hn)
  %i.ho = zext nneg i8 %3 to i64
  %i.hp = add nsw i64 %.388124.prol, %i.ho        ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph127.prol.loopexit, label %.lr.ph127.prol, !llvm.loop !91

.lr.ph127.prol.loopexit:                          ; preds = %.lr.ph127.prol, %.lr.ph127.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph127.preheader ], [ %i.hp, %.lr.ph127.prol ]
  %.4125.unr = phi i64 [ %.3, %.lr.ph127.preheader ], [ %i.hl, %.lr.ph127.prol ]
  %.388124.unr = phi i64 [ %.287, %.lr.ph127.preheader ], [ %i.hp, %.lr.ph127.prol ]
  %.392123.unr = phi ptr [ %.291, %.lr.ph127.preheader ], [ %i.hm, %.lr.ph127.prol ]
  %i.hq = icmp ult i64 %.3, 4
  br i1 %i.hq, label %._crit_edge128, label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.prol.loopexit, %.lr.ph127
  %.4125 = phi i64 [ %i.id, %.lr.ph127 ], [ %.4125.unr, %.lr.ph127.prol.loopexit ]
  %.388124 = phi i64 [ %i.ih, %.lr.ph127 ], [ %.388124.unr, %.lr.ph127.prol.loopexit ]
  %.392123 = phi ptr [ %i.ie, %.lr.ph127 ], [ %.392123.unr, %.lr.ph127.prol.loopexit ] ; 5 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.392123, i64 1
  %i.hs = load i8, ptr %.392123, align 1, !tbaa !15
  %4 = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.hs)
  %i.ht = zext nneg i8 %4 to i64
  %i.hu = add nsw i64 %.388124, %i.ht
  %i.hv = getelementptr inbounds nuw i8, ptr %.392123, i64 2
  %i.hw = load i8, ptr %i.hr, align 1, !tbaa !15
  %5 = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.hw)
  %i.hx = zext nneg i8 %5 to i64
  %i.hy = add nsw i64 %i.hu, %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %.392123, i64 3
  %i.ia = load i8, ptr %i.hv, align 1, !tbaa !15
  %6 = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.ia)
  %i.ib = zext nneg i8 %6 to i64
  %i.ic = add nsw i64 %i.hy, %i.ib
  %i.id = add nsw i64 %.4125, -4                  ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.392123, i64 4
  %i.if = load i8, ptr %i.hz, align 1, !tbaa !15
  %7 = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.if)
  %i.ig = zext nneg i8 %7 to i64
  %i.ih = add nsw i64 %i.ic, %i.ig                ; 2 uses
  %.not94.3 = icmp eq i64 %i.id, 0
  br i1 %.not94.3, label %._crit_edge128, label %.lr.ph127, !llvm.loop !92

._crit_edge128:                                   ; preds = %.lr.ph127.prol.loopexit, %.lr.ph127, %.loopexit
  %.388.lcssa = phi i64 [ %.287, %.loopexit ], [ %.lcssa.unr, %.lr.ph127.prol.loopexit ], [ %i.ih, %.lr.ph127 ]
  ret i64 %.388.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local i64 @redisPopCountAvx512(ptr noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 63
  %i.c = icmp ne i64 %i.b, 0
  %i.d = icmp ne i64 %1, 0
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %.preheader33

.preheader33:                                     ; preds = %.lr.ph, %bb.a
  %.026.lcssa = phi ptr [ %0, %bb.a ], [ %i.q, %.lr.ph ] ; 5 uses
  %.022.lcssa = phi i64 [ 0, %bb.a ], [ %i.t, %.lr.ph ] ; 3 uses
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %i.u, %.lr.ph ] ; 5 uses
  %i.f = icmp sgt i64 %.0.lcssa, 63
  br i1 %i.f, label %.lr.ph42.preheader, label %.preheader32

.lr.ph42.preheader:                               ; preds = %.preheader33
  %i.g = add nsw i64 %.0.lcssa, -64               ; 2 uses
  %i.h = and i64 %i.g, 64
  %lcmp.mod.not.not = icmp eq i64 %i.h, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph42.prol, label %.lr.ph42.prol.loopexit

.lr.ph42.prol:                                    ; preds = %.lr.ph42.preheader
  %i.i = load <8 x i64>, ptr %.026.lcssa, align 1, !tbaa !15
  %i.j = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.i)
  %i.k = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.j)
  %i.l = add nuw nsw i64 %i.k, %.022.lcssa        ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.026.lcssa, i64 64 ; 2 uses
  %i.n = add nsw i64 %.0.lcssa, -64               ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.026.lcssa, i64 2112
  tail call void @llvm.prefetch.p0(ptr nonnull %i.o, i32 0, i32 3, i32 1)
  br label %.lr.ph42.prol.loopexit

.lr.ph42.prol.loopexit:                           ; preds = %.lr.ph42.prol, %.lr.ph42.preheader
  %.141.unr = phi i64 [ %.0.lcssa, %.lr.ph42.preheader ], [ %i.n, %.lr.ph42.prol ]
  %.12340.unr = phi i64 [ %.022.lcssa, %.lr.ph42.preheader ], [ %i.l, %.lr.ph42.prol ]
  %.12739.unr = phi ptr [ %.026.lcssa, %.lr.ph42.preheader ], [ %i.m, %.lr.ph42.prol ]
  %.lcssa164.unr = phi i64 [ poison, %.lr.ph42.preheader ], [ %i.l, %.lr.ph42.prol ]
  %.lcssa163.unr = phi ptr [ poison, %.lr.ph42.preheader ], [ %i.m, %.lr.ph42.prol ]
  %.lcssa162.unr = phi i64 [ poison, %.lr.ph42.preheader ], [ %i.n, %.lr.ph42.prol ]
  %i.p = icmp ult i64 %i.g, 64
  br i1 %i.p, label %.preheader32, label %.lr.ph42

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.036 = phi i64 [ %i.u, %.lr.ph ], [ %1, %bb.a ]
  %.02235 = phi i64 [ %i.t, %.lr.ph ], [ 0, %bb.a ]
  %.02634 = phi ptr [ %i.q, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.02634, i64 1 ; 3 uses
  %i.r = load i8, ptr %.02634, align 1, !tbaa !15
  %2 = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.r)
  %i.s = zext nneg i8 %2 to i64
  %i.t = add nuw nsw i64 %.02235, %i.s            ; 2 uses
  %i.u = add nsw i64 %.036, -1                    ; 3 uses
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = and i64 %i.v, 63
  %i.x = icmp ne i64 %i.w, 0
  %i.y = icmp ne i64 %i.u, 0
  %i.z = select i1 %i.x, i1 %i.y, i1 false
  br i1 %i.z, label %.lr.ph, label %.preheader33, !llvm.loop !93

.preheader32:                                     ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42, %.preheader33
  %.127.lcssa = phi ptr [ %.026.lcssa, %.preheader33 ], [ %.lcssa163.unr, %.lr.ph42.prol.loopexit ], [ %i.bs, %.lr.ph42 ] ; 6 uses
  %.123.lcssa = phi i64 [ %.022.lcssa, %.preheader33 ], [ %.lcssa164.unr, %.lr.ph42.prol.loopexit ], [ %i.br, %.lr.ph42 ] ; 4 uses
  %.1.lcssa = phi i64 [ %.0.lcssa, %.preheader33 ], [ %.lcssa162.unr, %.lr.ph42.prol.loopexit ], [ %i.bt, %.lr.ph42 ] ; 6 uses
  %i.aa = icmp sgt i64 %.1.lcssa, 7
  br i1 %i.aa, label %iter.check, label %.preheader

iter.check:                                       ; preds = %.preheader32
  %i.ab = add nsw i64 %.1.lcssa, -8               ; 3 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 56
  br i1 %min.iters.check, label %.lr.ph49.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check86 = icmp ult i64 %i.ab, 248
  br i1 %min.iters.check86, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ad, 24
  %n.vec = and i64 %i.ad, 4611686018427387872     ; 5 uses
  %i.af = shl i64 %n.vec, 3
  %i.ag = sub i64 %.1.lcssa, %i.af                ; 2 uses
  %i.ah = shl i64 %n.vec, 3
  %i.ai = getelementptr i8, ptr %.127.lcssa, i64 %i.ah ; 2 uses
  %i.aj = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %.123.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i64> [ %i.aj, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi87 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi88 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi89 = phi <8 x i64> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %i.ak = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.127.lcssa, i64 %i.ak ; 4 uses
  %i.al = getelementptr i8, ptr %next.gep, i64 64
  %i.am = getelementptr i8, ptr %next.gep, i64 128
  %i.an = getelementptr i8, ptr %next.gep, i64 192
  %wide.load = load <8 x i64>, ptr %next.gep, align 8, !tbaa !21
  %wide.load90 = load <8 x i64>, ptr %i.al, align 8, !tbaa !21
  %wide.load91 = load <8 x i64>, ptr %i.am, align 8, !tbaa !21
  %wide.load92 = load <8 x i64>, ptr %i.an, align 8, !tbaa !21
  %i.ao = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %wide.load)
  %i.ap = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %wide.load90)
  %i.aq = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %wide.load91)
  %i.ar = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %wide.load92)
  %i.as = add <8 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.at = add <8 x i64> %i.ap, %vec.phi87         ; 2 uses
  %i.au = add <8 x i64> %i.aq, %vec.phi88         ; 2 uses
  %i.av = add <8 x i64> %i.ar, %vec.phi89         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !94

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <8 x i64> %i.at, %i.as
  %bin.rdx93 = add <8 x i64> %i.au, %bin.rdx
  %bin.rdx94 = add <8 x i64> %i.av, %bin.rdx93
  %i.ax = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx94) ; 3 uses
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph49.preheader, label %vec.epilog.ph, !prof !101

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ax, %vec.epilog.iter.check ], [ %.123.lcssa, %vector.main.loop.iter.check ]
  %n.vec96 = and i64 %i.ad, 4611686018427387896   ; 4 uses
  %i.ay = shl i64 %n.vec96, 3
  %i.az = sub i64 %.1.lcssa, %i.ay                ; 2 uses
  %i.ba = shl i64 %n.vec96, 3
  %i.bb = getelementptr i8, ptr %.127.lcssa, i64 %i.ba ; 2 uses
  %i.bc = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index97 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi98 = phi <8 x i64> [ %i.bc, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %i.bd = shl i64 %index97, 3
  %next.gep99 = getelementptr i8, ptr %.127.lcssa, i64 %i.bd
  %wide.load100 = load <8 x i64>, ptr %next.gep99, align 8, !tbaa !21
  %i.be = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %wide.load100)
  %i.bf = add <8 x i64> %i.be, %vec.phi98         ; 2 uses
  %index.next101 = add nuw i64 %index97, 8        ; 2 uses
  %i.bg = icmp eq i64 %index.next101, %n.vec96
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !95

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bh = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.bf) ; 2 uses
  %cmp.n102 = icmp eq i64 %i.ad, %n.vec96
  br i1 %cmp.n102, label %.preheader, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.248.ph = phi i64 [ %.1.lcssa, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  %.22447.ph = phi i64 [ %.123.lcssa, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.22846.ph = phi ptr [ %.127.lcssa, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph49

.lr.ph42:                                         ; preds = %.lr.ph42.prol.loopexit, %.lr.ph42
  %.141 = phi i64 [ %i.bt, %.lr.ph42 ], [ %.141.unr, %.lr.ph42.prol.loopexit ] ; 2 uses
  %.12340 = phi i64 [ %i.br, %.lr.ph42 ], [ %.12340.unr, %.lr.ph42.prol.loopexit ]
  %.12739 = phi ptr [ %i.bs, %.lr.ph42 ], [ %.12739.unr, %.lr.ph42.prol.loopexit ] ; 5 uses
  %i.bi = load <8 x i64>, ptr %.12739, align 1, !tbaa !15
  %i.bj = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.bi)
  %i.bk = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.bj)
  %i.bl = add nuw nsw i64 %i.bk, %.12340
  %i.bm = getelementptr inbounds nuw i8, ptr %.12739, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %.12739, i64 2112
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bn, i32 0, i32 3, i32 1)
  %i.bo = load <8 x i64>, ptr %i.bm, align 1, !tbaa !15
  %i.bp = tail call range(i64 0, 65) <8 x i64> @llvm.ctpop.v8i64(<8 x i64> %i.bo)
  %i.bq = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.bp)
  %i.br = add nuw nsw i64 %i.bq, %i.bl            ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.12739, i64 128 ; 2 uses
  %i.bt = add nsw i64 %.141, -128                 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.12739, i64 2176
  tail call void @llvm.prefetch.p0(ptr nonnull %i.bu, i32 0, i32 3, i32 1)
  %i.bv = icmp sgt i64 %.141, 191
  br i1 %i.bv, label %.lr.ph42, label %.preheader32, !llvm.loop !96

.preheader:                                       ; preds = %.lr.ph49, %middle.block, %vec.epilog.middle.block, %.preheader32
  %.228.lcssa = phi ptr [ %.127.lcssa, %.preheader32 ], [ %i.bb, %vec.epilog.middle.block ], [ %i.ai, %middle.block ], [ %i.cy, %.lr.ph49 ] ; 5 uses
  %.224.lcssa = phi i64 [ %.123.lcssa, %.preheader32 ], [ %i.bh, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %i.cx, %.lr.ph49 ] ; 4 uses
  %.2.lcssa = phi i64 [ %.1.lcssa, %.preheader32 ], [ %i.az, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.cz, %.lr.ph49 ] ; 11 uses
  %.not53 = icmp eq i64 %.2.lcssa, 0
  br i1 %.not53, label %._crit_edge, label %iter.check131

iter.check131:                                    ; preds = %.preheader
  %min.iters.check106 = icmp ult i64 %.2.lcssa, 8
  br i1 %min.iters.check106, label %.lr.ph57.preheader, label %vector.main.loop.iter.check107

vector.main.loop.iter.check107:                   ; preds = %iter.check131
  %min.iters.check108 = icmp ult i64 %.2.lcssa, 32
  br i1 %min.iters.check108, label %vec.epilog.ph135, label %vector.ph109

vector.ph109:                                     ; preds = %vector.main.loop.iter.check107
  %i.bw = and i64 %.2.lcssa, 24
  %n.vec110 = and i64 %.2.lcssa, -32              ; 4 uses
  %i.bx = and i64 %.2.lcssa, 31
  %i.by = getelementptr i8, ptr %.228.lcssa, i64 %n.vec110
  %i.bz = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %.224.lcssa, i64 0
  br label %vector.body111

vector.body111:                                   ; preds = %vector.ph109, %vector.body111
  %index112 = phi i64 [ 0, %vector.ph109 ], [ %index.next122, %vector.body111 ] ; 2 uses
  %vec.phi113 = phi <8 x i64> [ %i.bz, %vector.ph109 ], [ %i.ch, %vector.body111 ]
  %vec.phi114 = phi <8 x i64> [ zeroinitializer, %vector.ph109 ], [ %i.ci, %vector.body111 ]
  %vec.phi115 = phi <8 x i64> [ zeroinitializer, %vector.ph109 ], [ %i.cj, %vector.body111 ]
  %vec.phi116 = phi <8 x i64> [ zeroinitializer, %vector.ph109 ], [ %i.ck, %vector.body111 ]
  %next.gep117 = getelementptr i8, ptr %.228.lcssa, i64 %index112 ; 4 uses
  %i.ca = getelementptr i8, ptr %next.gep117, i64 8
  %i.cb = getelementptr i8, ptr %next.gep117, i64 16
  %i.cc = getelementptr i8, ptr %next.gep117, i64 24
  %wide.load118 = load <8 x i8>, ptr %next.gep117, align 1, !tbaa !15
  %wide.load119 = load <8 x i8>, ptr %i.ca, align 1, !tbaa !15
  %wide.load120 = load <8 x i8>, ptr %i.cb, align 1, !tbaa !15
  %wide.load121 = load <8 x i8>, ptr %i.cc, align 1, !tbaa !15
  %3 = tail call range(i8 0, 9) <8 x i8> @llvm.ctpop.v8i8(<8 x i8> %wide.load118)
  %4 = tail call range(i8 0, 9) <8 x i8> @llvm.ctpop.v8i8(<8 x i8> %wide.load119)
  %5 = tail call range(i8 0, 9) <8 x i8> @llvm.ctpop.v8i8(<8 x i8> %wide.load120)
  %6 = tail call range(i8 0, 9) <8 x i8> @llvm.ctpop.v8i8(<8 x i8> %wide.load121)
  %i.cd = zext nneg <8 x i8> %3 to <8 x i64>
  %i.ce = zext nneg <8 x i8> %4 to <8 x i64>
  %i.cf = zext nneg <8 x i8> %5 to <8 x i64>
  %i.cg = zext nneg <8 x i8> %6 to <8 x i64>
  %i.ch = add <8 x i64> %vec.phi113, %i.cd        ; 2 uses
  %i.ci = add <8 x i64> %vec.phi114, %i.ce        ; 2 uses
  %i.cj = add <8 x i64> %vec.phi115, %i.cf        ; 2 uses
  %i.ck = add <8 x i64> %vec.phi116, %i.cg        ; 2 uses
  %index.next122 = add nuw i64 %index112, 32      ; 2 uses
  %i.cl = icmp eq i64 %index.next122, %n.vec110
  br i1 %i.cl, label %middle.block123, label %vector.body111, !llvm.loop !97

middle.block123:                                  ; preds = %vector.body111
  %bin.rdx124 = add <8 x i64> %i.ci, %i.ch
  %bin.rdx125 = add <8 x i64> %i.cj, %bin.rdx124
  %bin.rdx126 = add <8 x i64> %i.ck, %bin.rdx125
  %i.cm = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %bin.rdx126) ; 3 uses
  %cmp.n127 = icmp eq i64 %.2.lcssa, %n.vec110
  br i1 %cmp.n127, label %._crit_edge, label %vec.epilog.iter.check133

vec.epilog.iter.check133:                         ; preds = %middle.block123
  %min.epilog.iters.check134 = icmp eq i64 %i.bw, 0
  br i1 %min.epilog.iters.check134, label %.lr.ph57.preheader, label %vec.epilog.ph135, !prof !101

vec.epilog.ph135:                                 ; preds = %vector.main.loop.iter.check107, %vec.epilog.iter.check133
  %vec.epilog.resume.val128 = phi i64 [ %n.vec110, %vec.epilog.iter.check133 ], [ 0, %vector.main.loop.iter.check107 ]
  %bc.merge.rdx129 = phi i64 [ %i.cm, %vec.epilog.iter.check133 ], [ %.224.lcssa, %vector.main.loop.iter.check107 ]
  %n.vec136 = and i64 %.2.lcssa, -8               ; 3 uses
  %i.cn = and i64 %.2.lcssa, 7
  %i.co = getelementptr i8, ptr %.228.lcssa, i64 %n.vec136
  %i.cp = insertelement <8 x i64> <i64 poison, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx129, i64 0
  br label %vec.epilog.vector.body137

vec.epilog.vector.body137:                        ; preds = %vec.epilog.vector.body137, %vec.epilog.ph135
  %index138 = phi i64 [ %vec.epilog.resume.val128, %vec.epilog.ph135 ], [ %index.next142, %vec.epilog.vector.body137 ] ; 2 uses
  %vec.phi139 = phi <8 x i64> [ %i.cp, %vec.epilog.ph135 ], [ %i.cs, %vec.epilog.vector.body137 ]
  %i.cq = getelementptr i8, ptr %.228.lcssa, i64 %index138
  %wide.load141 = load <8 x i8>, ptr %i.cq, align 1, !tbaa !15
  %7 = tail call range(i8 0, 9) <8 x i8> @llvm.ctpop.v8i8(<8 x i8> %wide.load141)
  %i.cr = zext nneg <8 x i8> %7 to <8 x i64>
  %i.cs = add <8 x i64> %vec.phi139, %i.cr        ; 2 uses
  %index.next142 = add nuw i64 %index138, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next142, %n.vec136
  br i1 %i.ct, label %vec.epilog.middle.block143, label %vec.epilog.vector.body137, !llvm.loop !98

vec.epilog.middle.block143:                       ; preds = %vec.epilog.vector.body137
  %i.cu = tail call i64 @llvm.vector.reduce.add.v8i64(<8 x i64> %i.cs) ; 2 uses
  %cmp.n144 = icmp eq i64 %.2.lcssa, %n.vec136
  br i1 %cmp.n144, label %._crit_edge, label %.lr.ph57.preheader

.lr.ph57.preheader:                               ; preds = %iter.check131, %vec.epilog.iter.check133, %vec.epilog.middle.block143
  %.356.ph = phi i64 [ %.2.lcssa, %iter.check131 ], [ %i.bx, %vec.epilog.iter.check133 ], [ %i.cn, %vec.epilog.middle.block143 ]
  %.32555.ph = phi i64 [ %.224.lcssa, %iter.check131 ], [ %i.cm, %vec.epilog.iter.check133 ], [ %i.cu, %vec.epilog.middle.block143 ]
  %.32954.ph = phi ptr [ %.228.lcssa, %iter.check131 ], [ %i.by, %vec.epilog.iter.check133 ], [ %i.co, %vec.epilog.middle.block143 ]
  br label %.lr.ph57

.lr.ph49:                                         ; preds = %.lr.ph49.preheader, %.lr.ph49
  %.248 = phi i64 [ %i.cz, %.lr.ph49 ], [ %.248.ph, %.lr.ph49.preheader ] ; 2 uses
  %.22447 = phi i64 [ %i.cx, %.lr.ph49 ], [ %.22447.ph, %.lr.ph49.preheader ]
  %.22846 = phi ptr [ %i.cy, %.lr.ph49 ], [ %.22846.ph, %.lr.ph49.preheader ] ; 2 uses
  %i.cv = load i64, ptr %.22846, align 8, !tbaa !21
  %i.cw = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.cv)
  %i.cx = add nuw nsw i64 %i.cw, %.22447          ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.22846, i64 8 ; 2 uses
  %i.cz = add nsw i64 %.248, -8                   ; 2 uses
  %i.da = icmp samesign ugt i64 %.248, 15
  br i1 %i.da, label %.lr.ph49, label %.preheader, !llvm.loop !99

.lr.ph57:                                         ; preds = %.lr.ph57.preheader, %.lr.ph57
  %.356 = phi i64 [ %i.db, %.lr.ph57 ], [ %.356.ph, %.lr.ph57.preheader ]
  %.32555 = phi i64 [ %i.df, %.lr.ph57 ], [ %.32555.ph, %.lr.ph57.preheader ]
  %.32954 = phi ptr [ %i.dc, %.lr.ph57 ], [ %.32954.ph, %.lr.ph57.preheader ] ; 2 uses
  %i.db = add nsw i64 %.356, -1                   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.32954, i64 1
  %i.dd = load i8, ptr %.32954, align 1, !tbaa !15
  %8 = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.dd)
  %i.de = zext nneg i8 %8 to i64
  %i.df = add nuw nsw i64 %.32555, %i.de          ; 2 uses
  %.not = icmp eq i64 %i.db, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph57, !llvm.loop !100

._crit_edge:                                      ; preds = %.lr.ph57, %middle.block123, %vec.epilog.middle.block143, %.preheader
  %.325.lcssa = phi i64 [ %.224.lcssa, %.preheader ], [ %i.cu, %vec.epilog.middle.block143 ], [ %i.cm, %middle.block123 ], [ %i.df, %.lr.ph57 ]
  ret i64 %.325.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define dso_local i64 @redisPopCountAvx2(ptr noundef %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = and i64 %i.a, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = icmp ne i64 %1, 0
  %i.e = and i1 %i.c, %i.d
  br i1 %i.e, label %.lr.ph, label %.preheader37

.preheader37:                                     ; preds = %.lr.ph, %bb.a
  %.033.lcssa = phi i64 [ %1, %bb.a ], [ %i.k, %.lr.ph ] ; 3 uses
  %.030.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %.lr.ph ]
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %.lr.ph ] ; 2 uses
  %i.f = icmp sgt i64 %.033.lcssa, 31
  br i1 %i.f, label %.lr.ph49, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.040 = phi ptr [ %i.g, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.03039 = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %.03338 = phi i64 [ %i.k, %.lr.ph ], [ %1, %bb.a ]
  %i.g = getelementptr inbounds nuw i8, ptr %.040, i64 1 ; 3 uses
  %i.h = load i8, ptr %.040, align 1, !tbaa !15
  %2 = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.h)
  %i.i = zext nneg i8 %2 to i64
  %i.j = add nuw nsw i64 %.03039, %i.i            ; 2 uses
  %i.k = add nsw i64 %.03338, -1                  ; 3 uses
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = and i64 %i.l, 7
  %i.n = icmp ne i64 %i.m, 0
  %i.o = icmp ne i64 %i.k, 0
  %i.p = select i1 %i.n, i1 %i.o, i1 false
  br i1 %i.p, label %.lr.ph, label %.preheader37, !llvm.loop !102

.lr.ph49:                                         ; preds = %.preheader37, %.lr.ph49
  %.144 = phi ptr [ %i.u, %.lr.ph49 ], [ %.0.lcssa, %.preheader37 ] ; 3 uses
  %.13443 = phi i64 [ %i.v, %.lr.ph49 ], [ %.033.lcssa, %.preheader37 ] ; 2 uses
  %i.q = phi <4 x i64> [ %i.t, %.lr.ph49 ], [ zeroinitializer, %.preheader37 ]
  %i.r = load <4 x i64>, ptr %.144, align 8, !tbaa !21
  %i.s = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %i.r)
  %i.t = add <4 x i64> %i.s, %i.q                 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.144, i64 32 ; 2 uses
  %i.v = add nsw i64 %.13443, -32                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.144, i64 2080
  tail call void @llvm.prefetch.p0(ptr nonnull %i.w, i32 0, i32 3, i32 1)
  %i.x = icmp samesign ugt i64 %.13443, 63
  br i1 %i.x, label %.lr.ph49, label %._crit_edge.loopexit, !llvm.loop !103

._crit_edge.loopexit:                             ; preds = %.lr.ph49
  %i.y = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.t)
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader37
  %.134.lcssa = phi i64 [ %.033.lcssa, %.preheader37 ], [ %i.v, %._crit_edge.loopexit ] ; 6 uses
  %.1.lcssa = phi ptr [ %.0.lcssa, %.preheader37 ], [ %i.u, %._crit_edge.loopexit ] ; 6 uses
  %i.z = phi i64 [ 0, %.preheader37 ], [ %i.y, %._crit_edge.loopexit ]
  %op.rdx = add i64 %i.z, %.030.lcssa             ; 4 uses
  %i.aa = icmp sgt i64 %.134.lcssa, 7
  br i1 %i.aa, label %iter.check, label %.preheader

iter.check:                                       ; preds = %._crit_edge
  %i.ab = add nsw i64 %.134.lcssa, -8             ; 3 uses
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = add nuw nsw i64 %i.ac, 1                ; 5 uses
  %min.iters.check = icmp ult i64 %i.ab, 24
  br i1 %min.iters.check, label %.lr.ph60.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %i.ab, 120
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ad, 12
  %n.vec = and i64 %i.ad, 4611686018427387888     ; 5 uses
  %i.af = shl i64 %n.vec, 3
  %i.ag = getelementptr i8, ptr %.1.lcssa, i64 %i.af ; 2 uses
  %i.ah = shl i64 %n.vec, 3
  %i.ai = sub i64 %.134.lcssa, %i.ah              ; 2 uses
  %i.aj = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %op.rdx, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i64> [ %i.aj, %vector.ph ], [ %i.as, %vector.body ]
  %vec.phi108 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.at, %vector.body ]
  %vec.phi109 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.au, %vector.body ]
  %vec.phi110 = phi <4 x i64> [ zeroinitializer, %vector.ph ], [ %i.av, %vector.body ]
  %i.ak = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %.1.lcssa, i64 %i.ak ; 4 uses
  %i.al = getelementptr i8, ptr %next.gep, i64 32
  %i.am = getelementptr i8, ptr %next.gep, i64 64
  %i.an = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <4 x i64>, ptr %next.gep, align 8, !tbaa !21
  %wide.load111 = load <4 x i64>, ptr %i.al, align 8, !tbaa !21
  %wide.load112 = load <4 x i64>, ptr %i.am, align 8, !tbaa !21
  %wide.load113 = load <4 x i64>, ptr %i.an, align 8, !tbaa !21
  %i.ao = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load)
  %i.ap = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load111)
  %i.aq = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load112)
  %i.ar = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load113)
  %i.as = add <4 x i64> %i.ao, %vec.phi           ; 2 uses
  %i.at = add <4 x i64> %i.ap, %vec.phi108        ; 2 uses
  %i.au = add <4 x i64> %i.aq, %vec.phi109        ; 2 uses
  %i.av = add <4 x i64> %i.ar, %vec.phi110        ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.aw = icmp eq i64 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i64> %i.at, %i.as
  %bin.rdx114 = add <4 x i64> %i.au, %bin.rdx
  %bin.rdx115 = add <4 x i64> %i.av, %bin.rdx114
  %i.ax = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx115) ; 3 uses
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph60.preheader, label %vec.epilog.ph, !prof !110

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i64 [ %i.ax, %vec.epilog.iter.check ], [ %op.rdx, %vector.main.loop.iter.check ]
  %n.vec117 = and i64 %i.ad, 4611686018427387900  ; 4 uses
  %i.ay = shl i64 %n.vec117, 3
  %i.az = getelementptr i8, ptr %.1.lcssa, i64 %i.ay ; 2 uses
  %i.ba = shl i64 %n.vec117, 3
  %i.bb = sub i64 %.134.lcssa, %i.ba              ; 2 uses
  %i.bc = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index118 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next122, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi119 = phi <4 x i64> [ %i.bc, %vec.epilog.ph ], [ %i.bf, %vec.epilog.vector.body ]
  %i.bd = shl i64 %index118, 3
  %next.gep120 = getelementptr i8, ptr %.1.lcssa, i64 %i.bd
  %wide.load121 = load <4 x i64>, ptr %next.gep120, align 8, !tbaa !21
  %i.be = tail call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load121)
  %i.bf = add <4 x i64> %i.be, %vec.phi119        ; 2 uses
  %index.next122 = add nuw i64 %index118, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next122, %n.vec117
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !105

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.bh = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.bf) ; 2 uses
  %cmp.n123 = icmp eq i64 %i.ad, %n.vec117
  br i1 %cmp.n123, label %.preheader, label %.lr.ph60.preheader

.lr.ph60.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.258.ph = phi ptr [ %.1.lcssa, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.az, %vec.epilog.middle.block ]
  %.13157.ph = phi i64 [ %op.rdx, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  %.23556.ph = phi i64 [ %.134.lcssa, %iter.check ], [ %i.ai, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph60

.preheader:                                       ; preds = %.lr.ph60, %middle.block, %vec.epilog.middle.block, %._crit_edge
  %.235.lcssa = phi i64 [ %.134.lcssa, %._crit_edge ], [ %i.bb, %vec.epilog.middle.block ], [ %i.ai, %middle.block ], [ %i.cm, %.lr.ph60 ] ; 11 uses
  %.131.lcssa = phi i64 [ %op.rdx, %._crit_edge ], [ %i.bh, %vec.epilog.middle.block ], [ %i.ax, %middle.block ], [ %i.ck, %.lr.ph60 ] ; 4 uses
  %.2.lcssa = phi ptr [ %.1.lcssa, %._crit_edge ], [ %i.az, %vec.epilog.middle.block ], [ %i.ag, %middle.block ], [ %i.cl, %.lr.ph60 ] ; 5 uses
  %.not64 = icmp eq i64 %.235.lcssa, 0
  br i1 %.not64, label %._crit_edge69, label %iter.check163

iter.check163:                                    ; preds = %.preheader
  %min.iters.check127 = icmp ult i64 %.235.lcssa, 4
  br i1 %min.iters.check127, label %.lr.ph68.preheader, label %vector.main.loop.iter.check128

vector.main.loop.iter.check128:                   ; preds = %iter.check163
  %min.iters.check129 = icmp ult i64 %.235.lcssa, 16
  br i1 %min.iters.check129, label %vec.epilog.ph167, label %vector.ph130

vector.ph130:                                     ; preds = %vector.main.loop.iter.check128
  %i.bi = and i64 %.235.lcssa, 12
  %n.vec131 = and i64 %.235.lcssa, -16            ; 4 uses
  %i.bj = getelementptr i8, ptr %.2.lcssa, i64 %n.vec131
  %i.bk = and i64 %.235.lcssa, 15
  %i.bl = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %.131.lcssa, i64 0
  br label %vector.body132

vector.body132:                                   ; preds = %vector.ph130, %vector.body132
  %index133 = phi i64 [ 0, %vector.ph130 ], [ %index.next154, %vector.body132 ] ; 2 uses
  %vec.phi134 = phi <4 x i64> [ %i.bl, %vector.ph130 ], [ %i.bu, %vector.body132 ]
  %vec.phi135 = phi <4 x i64> [ zeroinitializer, %vector.ph130 ], [ %i.bv, %vector.body132 ]
  %vec.phi136 = phi <4 x i64> [ zeroinitializer, %vector.ph130 ], [ %i.bw, %vector.body132 ]
  %vec.phi137 = phi <4 x i64> [ zeroinitializer, %vector.ph130 ], [ %i.bx, %vector.body132 ]
  %i.bm = getelementptr i8, ptr %.2.lcssa, i64 %index133 ; 4 uses
  %i.bn = getelementptr i8, ptr %i.bm, i64 4
  %i.bo = getelementptr i8, ptr %i.bm, i64 8
  %i.bp = getelementptr i8, ptr %i.bm, i64 12
  %wide.load139 = load <4 x i8>, ptr %i.bm, align 1, !tbaa !15
  %wide.load140 = load <4 x i8>, ptr %i.bn, align 1, !tbaa !15
  %wide.load141 = load <4 x i8>, ptr %i.bo, align 1, !tbaa !15
  %wide.load142 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !15
  %3 = tail call range(i8 0, 9) <4 x i8> @llvm.ctpop.v4i8(<4 x i8> %wide.load139)
  %4 = tail call range(i8 0, 9) <4 x i8> @llvm.ctpop.v4i8(<4 x i8> %wide.load140)
  %5 = tail call range(i8 0, 9) <4 x i8> @llvm.ctpop.v4i8(<4 x i8> %wide.load141)
  %6 = tail call range(i8 0, 9) <4 x i8> @llvm.ctpop.v4i8(<4 x i8> %wide.load142)
  %i.bq = zext nneg <4 x i8> %3 to <4 x i64>
  %i.br = zext nneg <4 x i8> %4 to <4 x i64>
  %i.bs = zext nneg <4 x i8> %5 to <4 x i64>
  %i.bt = zext nneg <4 x i8> %6 to <4 x i64>
  %i.bu = add <4 x i64> %vec.phi134, %i.bq        ; 2 uses
  %i.bv = add <4 x i64> %vec.phi135, %i.br        ; 2 uses
  %i.bw = add <4 x i64> %vec.phi136, %i.bs        ; 2 uses
  %i.bx = add <4 x i64> %vec.phi137, %i.bt        ; 2 uses
  %index.next154 = add nuw i64 %index133, 16      ; 2 uses
  %i.by = icmp eq i64 %index.next154, %n.vec131
  br i1 %i.by, label %middle.block155, label %vector.body132, !llvm.loop !106

middle.block155:                                  ; preds = %vector.body132
  %bin.rdx156 = add <4 x i64> %i.bv, %i.bu
  %bin.rdx157 = add <4 x i64> %i.bw, %bin.rdx156
  %bin.rdx158 = add <4 x i64> %i.bx, %bin.rdx157
  %i.bz = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %bin.rdx158) ; 3 uses
  %cmp.n159 = icmp eq i64 %.235.lcssa, %n.vec131
  br i1 %cmp.n159, label %._crit_edge69, label %vec.epilog.iter.check165

vec.epilog.iter.check165:                         ; preds = %middle.block155
  %min.epilog.iters.check166 = icmp eq i64 %i.bi, 0
  br i1 %min.epilog.iters.check166, label %.lr.ph68.preheader, label %vec.epilog.ph167, !prof !110

vec.epilog.ph167:                                 ; preds = %vector.main.loop.iter.check128, %vec.epilog.iter.check165
  %vec.epilog.resume.val160 = phi i64 [ %n.vec131, %vec.epilog.iter.check165 ], [ 0, %vector.main.loop.iter.check128 ]
  %bc.merge.rdx161 = phi i64 [ %i.bz, %vec.epilog.iter.check165 ], [ %.131.lcssa, %vector.main.loop.iter.check128 ]
  %n.vec168 = and i64 %.235.lcssa, -4             ; 3 uses
  %i.ca = getelementptr i8, ptr %.2.lcssa, i64 %n.vec168
  %i.cb = and i64 %.235.lcssa, 3
  %i.cc = insertelement <4 x i64> <i64 poison, i64 0, i64 0, i64 0>, i64 %bc.merge.rdx161, i64 0
  br label %vec.epilog.vector.body169

vec.epilog.vector.body169:                        ; preds = %vec.epilog.vector.body169, %vec.epilog.ph167
  %index170 = phi i64 [ %vec.epilog.resume.val160, %vec.epilog.ph167 ], [ %index.next176, %vec.epilog.vector.body169 ] ; 2 uses
  %vec.phi171 = phi <4 x i64> [ %i.cc, %vec.epilog.ph167 ], [ %i.cf, %vec.epilog.vector.body169 ]
  %i.cd = getelementptr i8, ptr %.2.lcssa, i64 %index170
  %wide.load162 = load <4 x i8>, ptr %i.cd, align 1, !tbaa !15
  %7 = tail call range(i8 0, 9) <4 x i8> @llvm.ctpop.v4i8(<4 x i8> %wide.load162)
  %i.ce = zext nneg <4 x i8> %7 to <4 x i64>
  %i.cf = add <4 x i64> %vec.phi171, %i.ce        ; 2 uses
  %index.next176 = add nuw i64 %index170, 4       ; 2 uses
  %i.cg = icmp eq i64 %index.next176, %n.vec168
  br i1 %i.cg, label %vec.epilog.middle.block177, label %vec.epilog.vector.body169, !llvm.loop !107

vec.epilog.middle.block177:                       ; preds = %vec.epilog.vector.body169
  %i.ch = tail call i64 @llvm.vector.reduce.add.v4i64(<4 x i64> %i.cf) ; 2 uses
  %cmp.n178 = icmp eq i64 %.235.lcssa, %n.vec168
  br i1 %cmp.n178, label %._crit_edge69, label %.lr.ph68.preheader

.lr.ph68.preheader:                               ; preds = %iter.check163, %vec.epilog.iter.check165, %vec.epilog.middle.block177
  %.367.ph = phi ptr [ %.2.lcssa, %iter.check163 ], [ %i.bj, %vec.epilog.iter.check165 ], [ %i.ca, %vec.epilog.middle.block177 ]
  %.23266.ph = phi i64 [ %.131.lcssa, %iter.check163 ], [ %i.bz, %vec.epilog.iter.check165 ], [ %i.ch, %vec.epilog.middle.block177 ]
  %.33665.ph = phi i64 [ %.235.lcssa, %iter.check163 ], [ %i.bk, %vec.epilog.iter.check165 ], [ %i.cb, %vec.epilog.middle.block177 ]
  br label %.lr.ph68

.lr.ph60:                                         ; preds = %.lr.ph60.preheader, %.lr.ph60
  %.258 = phi ptr [ %i.cl, %.lr.ph60 ], [ %.258.ph, %.lr.ph60.preheader ] ; 2 uses
  %.13157 = phi i64 [ %i.ck, %.lr.ph60 ], [ %.13157.ph, %.lr.ph60.preheader ]
  %.23556 = phi i64 [ %i.cm, %.lr.ph60 ], [ %.23556.ph, %.lr.ph60.preheader ] ; 2 uses
  %i.ci = load i64, ptr %.258, align 8, !tbaa !21
  %i.cj = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.ci)
  %i.ck = add nsw i64 %i.cj, %.13157              ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.258, i64 8 ; 2 uses
  %i.cm = add nsw i64 %.23556, -8                 ; 2 uses
  %i.cn = icmp samesign ugt i64 %.23556, 15
  br i1 %i.cn, label %.lr.ph60, label %.preheader, !llvm.loop !108

.lr.ph68:                                         ; preds = %.lr.ph68.preheader, %.lr.ph68
  %.367 = phi ptr [ %i.cp, %.lr.ph68 ], [ %.367.ph, %.lr.ph68.preheader ] ; 2 uses
  %.23266 = phi i64 [ %i.cs, %.lr.ph68 ], [ %.23266.ph, %.lr.ph68.preheader ]
  %.33665 = phi i64 [ %i.co, %.lr.ph68 ], [ %.33665.ph, %.lr.ph68.preheader ]
  %i.co = add nsw i64 %.33665, -1                 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.367, i64 1
  %i.cq = load i8, ptr %.367, align 1, !tbaa !15
  %8 = tail call range(i8 0, 9) i8 @llvm.ctpop.i8(i8 %i.cq)
  %i.cr = zext nneg i8 %8 to i64
  %i.cs = add nsw i64 %.23266, %i.cr              ; 2 uses
  %.not = icmp eq i64 %i.co, 0
  br i1 %.not, label %._crit_edge69, label %.lr.ph68, !llvm.loop !109

._crit_edge69:                                    ; preds = %.lr.ph68, %middle.block155, %vec.epilog.middle.block177, %.preheader
  %.232.lcssa = phi i64 [ %.131.lcssa, %.preheader ], [ %i.ch, %vec.epilog.middle.block177 ], [ %i.bz, %middle.block155 ], [ %i.cs, %.lr.ph68 ]
  ret i64 %.232.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i64 @redisBitpos(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.a = select i1 %.not, i64 255, i64 0
  %i.b = ptrtoint ptr %0 to i64
  %i.c = and i64 %i.b, 7
  %i.d = icmp eq i64 %i.c, 0
  %i.e = icmp eq i64 %1, 0
  %.not5868 = or i1 %i.d, %i.e
  br i1 %.not5868, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04071 = phi i64 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %.04470 = phi ptr [ %i.h, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.05069 = phi i64 [ %i.i, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %i.f = load i8, ptr %.04470, align 1, !tbaa !15
  %i.g = zext i8 %i.f to i64
  %.not54 = icmp eq i64 %i.a, %i.g
  br i1 %.not54, label %bb.b, label %.loopexit62.thread

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.04470, i64 1 ; 3 uses
  %i.i = add i64 %.05069, -1                      ; 3 uses
  %i.j = add nuw nsw i64 %.04071, 8               ; 2 uses
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = and i64 %i.k, 7
  %i.m = icmp eq i64 %i.l, 0
  %i.n = icmp eq i64 %i.i, 0
  %.not58 = select i1 %i.m, i1 true, i1 %i.n
  br i1 %.not58, label %.critedge, label %.lr.ph, !llvm.loop !111

.critedge:                                        ; preds = %bb.b, %bb.a
  %.050.lcssa = phi i64 [ %1, %bb.a ], [ %i.i, %bb.b ] ; 3 uses
  %.044.lcssa = phi ptr [ %0, %bb.a ], [ %i.h, %bb.b ] ; 2 uses
  %.040.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %bb.b ] ; 2 uses
  %i.o = sext i1 %.not to i64
  %i.p = icmp ugt i64 %.050.lcssa, 7
  br i1 %i.p, label %.lr.ph77, label %.loopexit62

.lr.ph77:                                         ; preds = %.critedge, %bb.c
  %.176 = phi i64 [ %i.t, %bb.c ], [ %.040.lcssa, %.critedge ] ; 2 uses
  %.04775 = phi ptr [ %i.r, %bb.c ], [ %.044.lcssa, %.critedge ] ; 3 uses
  %.15174 = phi i64 [ %i.s, %bb.c ], [ %.050.lcssa, %.critedge ] ; 2 uses
  %i.q = load i64, ptr %.04775, align 8, !tbaa !21
  %.not59 = icmp eq i64 %i.q, %i.o
  br i1 %.not59, label %bb.c, label %.loopexit62.thread

bb.c:                                             ; preds = %.lr.ph77
  %i.r = getelementptr inbounds nuw i8, ptr %.04775, i64 8 ; 2 uses
  %i.s = add i64 %.15174, -8                      ; 3 uses
  %i.t = add i64 %.176, 64                        ; 2 uses
  %i.u = icmp ugt i64 %i.s, 7
  br i1 %i.u, label %.lr.ph77, label %.loopexit62, !llvm.loop !112

.loopexit62:                                      ; preds = %bb.c, %.critedge
  %.252 = phi i64 [ %.050.lcssa, %.critedge ], [ %i.s, %bb.c ] ; 2 uses
  %.148 = phi ptr [ %.044.lcssa, %.critedge ], [ %i.r, %bb.c ]
  %.2 = phi i64 [ %.040.lcssa, %.critedge ], [ %i.t, %bb.c ] ; 2 uses
  %.not61 = icmp eq i64 %.252, 0
  br i1 %.not61, label %.thread115, label %.loopexit62.thread

.loopexit62.thread:                               ; preds = %.lr.ph, %.lr.ph77, %.loopexit62
  %.2107 = phi i64 [ %.2, %.loopexit62 ], [ %.176, %.lr.ph77 ], [ %.04071, %.lr.ph ] ; 8 uses
  %.148106 = phi ptr [ %.148, %.loopexit62 ], [ %.04775, %.lr.ph77 ], [ %.04470, %.lr.ph ] ; 8 uses
  %.252105 = phi i64 [ %.252, %.loopexit62 ], [ %.15174, %.lr.ph77 ], [ %.05069, %.lr.ph ] ; 6 uses
  %i.v = load i8, ptr %.148106, align 1, !tbaa !15
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 8                  ; 2 uses
  %.not61.1 = icmp eq i64 %.252105, 1
  br i1 %.not61.1, label %.thread115, label %bb.d

.thread115:                                       ; preds = %.loopexit62.thread, %.loopexit62
  %.2108114.ph = phi i64 [ %.2107, %.loopexit62.thread ], [ %.2, %.loopexit62 ]
  %.143.1.ph = phi i64 [ %i.x, %.loopexit62.thread ], [ 0, %.loopexit62 ]
  %i.y = shl nuw nsw i64 %.143.1.ph, 8
  br label %.thread123

bb.d:                                             ; preds = %.loopexit62.thread
  %i.z = getelementptr inbounds nuw i8, ptr %.148106, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !15
  %i.ab = zext i8 %i.aa to i64
  %i.ac = or disjoint i64 %i.x, %i.ab
  %i.ad = shl nuw nsw i64 %i.ac, 8                ; 2 uses
  %.not61.2 = icmp eq i64 %.252105, 2
  br i1 %.not61.2, label %.thread123, label %bb.e

.thread123:                                       ; preds = %bb.d, %.thread115
  %.2108114121.ph = phi i64 [ %.2108114.ph, %.thread115 ], [ %.2107, %bb.d ]
  %.143.2.ph = phi i64 [ %i.y, %.thread115 ], [ %i.ad, %bb.d ]
  %i.ae = shl nuw nsw i64 %.143.2.ph, 8
  br label %.thread131

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %.148106, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !15
  %i.ah = zext i8 %i.ag to i64
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = shl nuw nsw i64 %i.ai, 8                ; 2 uses
  %.not61.3 = icmp eq i64 %.252105, 3
  br i1 %.not61.3, label %.thread131, label %bb.f

.thread131:                                       ; preds = %bb.e, %.thread123
  %.2108114121129.ph = phi i64 [ %.2108114121.ph, %.thread123 ], [ %.2107, %bb.e ]
  %.143.3.ph = phi i64 [ %i.ae, %.thread123 ], [ %i.aj, %bb.e ]
  %i.ak = shl nuw nsw i64 %.143.3.ph, 8
  br label %.thread139

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %.148106, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !15
  %i.an = zext i8 %i.am to i64
  %i.ao = or disjoint i64 %i.aj, %i.an
  %i.ap = shl nuw nsw i64 %i.ao, 8                ; 2 uses
  %.not61.4 = icmp eq i64 %.252105, 4
  br i1 %.not61.4, label %.thread139, label %bb.g

.thread139:                                       ; preds = %bb.f, %.thread131
  %.2108114121129137.ph = phi i64 [ %.2108114121129.ph, %.thread131 ], [ %.2107, %bb.f ]
  %.143.4.ph = phi i64 [ %i.ak, %.thread131 ], [ %i.ap, %bb.f ]
  %i.aq = shl nuw nsw i64 %.143.4.ph, 8
  br label %.thread147

bb.g:                                             ; preds = %bb.f
  %i.ar = getelementptr inbounds nuw i8, ptr %.148106, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !15
  %i.at = zext i8 %i.as to i64
  %i.au = or disjoint i64 %i.ap, %i.at
  %i.av = shl nuw nsw i64 %i.au, 8                ; 2 uses
  %.not61.5 = icmp eq i64 %.252105, 5
  br i1 %.not61.5, label %.thread147, label %bb.h

.thread147:                                       ; preds = %bb.g, %.thread139
  %.2108114121129137145.ph = phi i64 [ %.2108114121129137.ph, %.thread139 ], [ %.2107, %bb.g ]
  %.143.5.ph = phi i64 [ %i.aq, %.thread139 ], [ %i.av, %bb.g ]
  %i.aw = shl nuw nsw i64 %.143.5.ph, 8
  br label %.thread155

bb.h:                                             ; preds = %bb.g
  %i.ax = getelementptr inbounds nuw i8, ptr %.148106, i64 5
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %i.az = zext i8 %i.ay to i64
  %i.ba = or disjoint i64 %i.av, %i.az
  %i.bb = add i64 %.252105, -6                    ; 2 uses
  %i.bc = shl nuw nsw i64 %i.ba, 8                ; 2 uses
  %.not61.6 = icmp eq i64 %i.bb, 0
  br i1 %.not61.6, label %.thread155, label %bb.i

.thread155:                                       ; preds = %bb.h, %.thread147
  %.2108114121129137145153.ph = phi i64 [ %.2108114121129137145.ph, %.thread147 ], [ %.2107, %bb.h ]
  %.143.6.ph = phi i64 [ %i.aw, %.thread147 ], [ %i.bc, %bb.h ]
  %i.bd = shl nuw i64 %.143.6.ph, 8
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.148106, i64 6
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !15
  %i.bg = zext i8 %i.bf to i64
  %i.bh = or disjoint i64 %i.bc, %i.bg
  %i.bi = icmp eq i64 %i.bb, 1
  %i.bj = shl nuw i64 %i.bh, 8                    ; 2 uses
  br i1 %i.bi, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.148106, i64 7
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15
  %i.bm = zext i8 %i.bl to i64
  %i.bn = or disjoint i64 %i.bj, %i.bm
  br label %bb.k

bb.k:                                             ; preds = %.thread155, %bb.j, %bb.i
  %.2108114121129137145153160 = phi i64 [ %.2107, %bb.j ], [ %.2107, %bb.i ], [ %.2108114121129137145153.ph, %.thread155 ]
  %.143.7 = phi i64 [ %i.bn, %bb.j ], [ %i.bj, %bb.i ], [ %i.bd, %.thread155 ] ; 3 uses
  %i.bo = icmp eq i32 %2, 1
  %i.bp = icmp eq i64 %.143.7, 0
  %or.cond = select i1 %i.bo, i1 %i.bp, i1 false
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.k, %bb.l
  %.390 = phi i64 [ %i.bz, %bb.l ], [ %.2108114121129137145153160, %bb.k ] ; 3 uses
  %.04189 = phi i64 [ %i.ca, %bb.l ], [ -9223372036854775808, %bb.k ] ; 3 uses
  %i.bq = and i64 %.04189, %.143.7
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %2, %i.bs
  br i1 %i.bt, label %.loopexit, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader
  %i.bu = lshr i64 %.04189, 1
  %i.bv = and i64 %i.bu, %.143.7
  %i.bw = icmp ne i64 %i.bv, 0
end_hunk_0
begin_hunk_1_@bitfieldGeneric:bb.a
  %.lcssa = phi i64 [ %i.oh, %getUnsignedBitfield.exit.i305.unr-lcssa ], [ %i.ot, %.lr.ph.i.i300.epil.preheader ] ; 2 uses
  %i.ou = icmp ult i32 %i.nh, 64
  br i1 %i.ou, label %getUnsignedBitfield.exit.thread.i307, label %getSignedBitfield.exit310

getUnsignedBitfield.exit.thread.i307:             ; preds = %getUnsignedBitfield.exit.i305, %bb.br
  %.0.lcssa.i10.i308 = phi i64 [ %.lcssa, %getUnsignedBitfield.exit.i305 ], [ 0, %bb.br ] ; 3 uses
  %i.ov = add nsw i64 %i.ni, -1
  %i.ow = shl nuw nsw i64 1, %i.ov
  %i.ox = and i64 %.0.lcssa.i10.i308, %i.ow
  %.not.i309 = icmp eq i64 %i.ox, 0
  br i1 %.not.i309, label %getSignedBitfield.exit310, label %bb.bs

bb.bs:                                            ; preds = %getUnsignedBitfield.exit.thread.i307
  %i.oy = shl nsw i64 -1, %i.ni
  %i.oz = or i64 %.0.lcssa.i10.i308, %i.oy
  br label %getSignedBitfield.exit310

bb.bt:                                            ; preds = %._crit_edge427
  br i1 %.not.i311, label %getSignedBitfield.exit310, label %.lr.ph.i312.preheader

.lr.ph.i312.preheader:                            ; preds = %bb.bt
  %i.pa = load i64, ptr %i.dj, align 8, !tbaa !162
  %i.pb = and i64 %i.nd, -8
  %i.pc = sub i64 %i.pa, %i.pb                    ; 2 uses
  %i.pd = icmp eq i32 %i.nh, 1
  br i1 %i.pd, label %.lr.ph.i312.epil.preheader, label %.lr.ph.i312.preheader.new

.lr.ph.i312.preheader.new:                        ; preds = %.lr.ph.i312.preheader
  %unroll_iter521 = and i64 %i.ni, -2
  br label %.lr.ph.i312

.lr.ph.i312:                                      ; preds = %.lr.ph.i312, %.lr.ph.i312.preheader.new
  %.016.i313 = phi i64 [ 0, %.lr.ph.i312.preheader.new ], [ %i.py, %.lr.ph.i312 ]
  %.01314.i315 = phi i64 [ %i.pc, %.lr.ph.i312.preheader.new ], [ %i.pz, %.lr.ph.i312 ] ; 4 uses
  %niter522 = phi i64 [ 0, %.lr.ph.i312.preheader.new ], [ %niter522.next.1, %.lr.ph.i312 ]
  %i.pe = lshr i64 %.01314.i315, 3
  %i.pf = and i64 %.01314.i315, 7
  %i.pg = xor i64 %i.pf, 7
  %i.ph = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.pe
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !15
  %i.pj = zext i8 %i.pi to i64
  %i.pk = lshr i64 %i.pj, %i.pg
  %i.pl = add i64 %.01314.i315, 1                 ; 2 uses
  %i.pm = lshr i64 %i.pl, 3
  %i.pn = and i64 %i.pl, 7
  %i.po = xor i64 %i.pn, 7
  %i.pp = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.pm
  %i.pq = load i8, ptr %i.pp, align 1, !tbaa !15
  %i.pr = zext i8 %i.pq to i64
  %i.ps = lshr i64 %i.pr, %i.po
  %i.pt = and i64 %i.ps, 1
  %i.pu = shl i64 %.016.i313, 2
  %i.pv = shl nuw nsw i64 %i.pk, 1
  %i.pw = and i64 %i.pv, 2
  %i.px = or disjoint i64 %i.pu, %i.pw
  %i.py = or disjoint i64 %i.pt, %i.px            ; 3 uses
  %i.pz = add i64 %.01314.i315, 2                 ; 2 uses
  %niter522.next.1 = add i64 %niter522, 2         ; 2 uses
  %niter522.ncmp.1 = icmp eq i64 %niter522.next.1, %unroll_iter521
  br i1 %niter522.ncmp.1, label %getSignedBitfield.exit310.loopexit.unr-lcssa, label %.lr.ph.i312, !llvm.loop !1

getSignedBitfield.exit310.loopexit.unr-lcssa:     ; preds = %.lr.ph.i312
  %i.qa = and i32 %i.nh, 1
  %lcmp.mod518.not = icmp eq i32 %i.qa, 0
  br i1 %lcmp.mod518.not, label %getSignedBitfield.exit310, label %.lr.ph.i312.epil.preheader

.lr.ph.i312.epil.preheader:                       ; preds = %getSignedBitfield.exit310.loopexit.unr-lcssa, %.lr.ph.i312.preheader
  %.016.i313.epil.init = phi i64 [ 0, %.lr.ph.i312.preheader ], [ %i.py, %getSignedBitfield.exit310.loopexit.unr-lcssa ]
  %.01314.i315.epil.init = phi i64 [ %i.pc, %.lr.ph.i312.preheader ], [ %i.pz, %getSignedBitfield.exit310.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod520 = trunc i32 %i.nh to i1
  call void @llvm.assume(i1 %lcmp.mod520)
  %i.qb = lshr i64 %.01314.i315.epil.init, 3
  %i.qc = and i64 %.01314.i315.epil.init, 7
  %i.qd = xor i64 %i.qc, 7
  %i.qe = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.qb
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !15
  %i.qg = zext i8 %i.qf to i64
  %i.qh = lshr i64 %i.qg, %i.qd
  %i.qi = and i64 %i.qh, 1
  %i.qj = shl i64 %.016.i313.epil.init, 1
  %i.qk = or disjoint i64 %i.qi, %i.qj
  br label %getSignedBitfield.exit310

getSignedBitfield.exit310:                        ; preds = %.lr.ph.i312.epil.preheader, %getSignedBitfield.exit310.loopexit.unr-lcssa, %bb.bt, %bb.bs, %getUnsignedBitfield.exit.thread.i307, %getUnsignedBitfield.exit.i305
  %.0.lcssa.i317.sink = phi i64 [ %.lcssa, %getUnsignedBitfield.exit.i305 ], [ %i.oz, %bb.bs ], [ %.0.lcssa.i10.i308, %getUnsignedBitfield.exit.thread.i307 ], [ 0, %bb.bt ], [ %i.py, %getSignedBitfield.exit310.loopexit.unr-lcssa ], [ %i.qk, %.lr.ph.i312.epil.preheader ]
  call void @addReplyLongLong(ptr noundef nonnull %0, i64 noundef %.0.lcssa.i317.sink) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #23
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bg, %setUnsignedBitfield.exit, %bb.av, %setSignedBitfield.exit, %getSignedBitfield.exit310
  %.3216 = phi i32 [ %.0213429, %getSignedBitfield.exit310 ], [ %spec.select256, %setSignedBitfield.exit ], [ %.0213429, %bb.av ], [ %.0213429, %bb.bg ], [ %spec.select257, %setUnsignedBitfield.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond448.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond448.not, label %._crit_edge433, label %bb.aa, !llvm.loop !160

._crit_edge433:                                   ; preds = %bb.bu
  %.not229 = icmp eq i32 %.3216, 0
  br i1 %.not229, label %._crit_edge433.thread, label %bb.bv

bb.bv:                                            ; preds = %._crit_edge433
  %i.ql = load i64, ptr %i.c, align 8, !tbaa !21  ; 3 uses
  %i.qm = icmp ne i64 %i.ql, 0
  %i.qn = load i64, ptr %i.d, align 8             ; 2 uses
  %i.qo = icmp ne i64 %i.qn, 0
  %or.cond9 = select i1 %i.qm, i1 %i.qo, i1 false
  br i1 %or.cond9, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.qq = load ptr, ptr %i.qp, align 8, !tbaa !77
  %i.qr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.qs = load ptr, ptr %i.qr, align 8, !tbaa !75
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !76
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8
  %i.qw = load ptr, ptr %i.qv, align 8, !tbaa !25
  %i.qx = call i32 @getKeySlot(ptr noundef %i.qw) #23
  %i.qy = add i64 %i.qn, %i.ql
  call void @updateKeysizesHist(ptr noundef %i.qq, i32 noundef %i.qx, i32 noundef 0, i64 noundef %i.ql, i64 noundef %i.qy) #23
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !77
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !75
  %i.rd = getelementptr inbounds nuw i8, ptr %i.rc, i64 8
  %i.re = load ptr, ptr %i.rd, align 8, !tbaa !76
  call void @keyModified(ptr noundef nonnull %0, ptr noundef %i.ra, ptr noundef %i.re, ptr noundef %.0, i32 noundef 1) #23
  %i.rf = load ptr, ptr %i.rb, align 8, !tbaa !75
  %i.rg = getelementptr inbounds nuw i8, ptr %i.rf, i64 8
  %i.rh = load ptr, ptr %i.rg, align 8, !tbaa !76
  %i.ri = load ptr, ptr %i.qz, align 8, !tbaa !77
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 72
  %i.rk = load i32, ptr %i.rj, align 8, !tbaa !80
  call void @notifyKeyspaceEvent(i32 noundef 8, ptr noundef nonnull @.str.9, ptr noundef %i.rh, i32 noundef %i.rk) #23
  %i.rl = sext i32 %.3216 to i64
  %i.rm = load i64, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !81
  %i.rn = add nsw i64 %i.rm, %i.rl
  store i64 %i.rn, ptr getelementptr inbounds nuw (i8, ptr @server, i64 6888), align 8, !tbaa !81
  br label %._crit_edge433.thread

._crit_edge433.thread:                            ; preds = %bb.z, %bb.bx, %._crit_edge433
  call void @zfree(ptr noundef %.0211.lcssa477) #23
  br label %bb.by

bb.by:                                            ; preds = %.thread, %._crit_edge433.thread, %bb.y, %bb.w, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  ret void
}

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #19

declare void @addReplyArrayLen(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @addReplyNull(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local void @bitfieldCommand(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @bitfieldGeneric(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @bitfieldroCommand(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  tail call void @bitfieldGeneric(ptr noundef %0, i32 noundef 1)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i64> @llvm.ctpop.v8i64(<8 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v8i64(<8 x i64>) #3

declare ptr @lookupKeyWriteWithLink(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @dbAddByLink(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare ptr @dbUnshareStringValue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

declare i64 @kvobjAllocSize(ptr noundef) local_unnamed_addr #8

declare ptr @sdsgrowzero(ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @updateSlotAllocSize(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare <32 x i8> @llvm.x86.avx.ldu.dq.256(ptr) #20

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.ctpop.i8(i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.ctpop.v8i8(<8 x i8>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i64> @llvm.ctpop.v4i64(<4 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i8> @llvm.ctpop.v4i8(<4 x i8>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #22

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="512" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+avx512f,+avx512vpopcntdq,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #21 = { nofree nounwind }
attributes #22 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind allocsize(1) }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}
!llvm.errno.tbaa = !{!14}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{i32 1, !"ThinLTO", i32 0}
!9 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!10 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!"omnipotent char", !11, i64 0}
!13 = !{!"int", !12, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!12, !12, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = !{!"long", !12, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"llvm.loop.unroll.disable"}
!23 = !{!"any pointer", !12, i64 0}
!24 = !{!"redisObject", !13, i64 0, !13, i64 0, !13, i64 1, !13, i64 3, !13, i64 4, !13, i64 5, !23, i64 8}
!25 = !{!24, !23, i64 8}
!26 = !{!"short", !12, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"long long", !12, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"p1 omnipotent char", !23, i64 0}
!31 = !{!"any p2 pointer", !23, i64 0}
!32 = !{!"p2 omnipotent char", !31, i64 0}
!33 = !{!"p1 _ZTS7redisDb", !23, i64 0}
!34 = !{!"p1 _ZTS4dict", !23, i64 0}
!35 = !{!"p1 _ZTS11aeEventLoop", !23, i64 0}
!36 = !{!"p1 _ZTS3rax", !23, i64 0}
!37 = !{!"p1 _ZTS4list", !23, i64 0}
!38 = !{!"p1 _ZTS14ConnectionType", !23, i64 0}
!39 = !{!"connListener", !12, i64 0, !13, i64 64, !32, i64 72, !13, i64 80, !13, i64 84, !38, i64 88, !23, i64 96}
!40 = !{!"p1 _ZTS6client", !23, i64 0}
!41 = !{!"p2 _ZTS14pendingCommand", !31, i64 0}
!42 = !{!"pendingCommandPool", !41, i64 0, !13, i64 8, !13, i64 12, !13, i64 16}
!43 = !{!"double", !12, i64 0}
!44 = !{!"malloc_stats", !20, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40, !20, i64 48, !20, i64 56, !20, i64 64, !20, i64 72, !20, i64 80}
!45 = !{!"p1 _ZTS11hotkeyStats", !23, i64 0}
!46 = !{!"p1 double", !23, i64 0}
!47 = !{!"p1 _ZTS9saveparam", !23, i64 0}
!48 = !{!"p2 _ZTS10connection", !31, i64 0}
!49 = !{!"p1 _ZTS7redisOp", !23, i64 0}
!50 = !{!"redisOpArray", !49, i64 0, !13, i64 8, !13, i64 12}
!51 = !{!"p1 _ZTS11replBacklog", !23, i64 0}
!52 = !{!"replDataBuf", !37, i64 0, !20, i64 8, !20, i64 16, !20, i64 24, !20, i64 32, !20, i64 40}
!53 = !{!"p1 _ZTS10connection", !23, i64 0}
!54 = !{!"p1 _ZTS8_kvstore", !23, i64 0}
!55 = !{!"p1 _ZTS12clusterState", !23, i64 0}
!56 = !{!"aclInfo", !28, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !28, i64 32}
!57 = !{!"redisTLSContextConfig", !30, i64 0, !30, i64 8, !30, i64 16, !30, i64 24, !30, i64 32, !30, i64 40, !13, i64 48, !30, i64 56, !30, i64 64, !30, i64 72, !30, i64 80, !30, i64 88, !30, i64 96, !13, i64 104, !13, i64 108, !13, i64 112, !13, i64 116}
!58 = !{!"p1 _ZTS14sentinelConfig", !23, i64 0}
!59 = !{!"redisServer", !13, i64 0, !20, i64 8, !30, i64 16, !30, i64 24, !32, i64 32, !13, i64 40, !13, i64 44, !13, i64 48, !13, i64 52, !13, i64 56, !33, i64 64, !34, i64 72, !34, i64 80, !35, i64 88, !36, i64 96, !13, i64 104, !13, i64 108, !12, i64 112, !12, i64 116, !28, i64 120, !12, i64 128, !13, i64 132, !13, i64 136, !13, i64 140, !30, i64 144, !13, i64 152, !13, i64 156, !12, i64 160, !13, i64 204, !20, i64 208, !13, i64 216, !13, i64 220, !13, i64 224, !30, i64 232, !30, i64 240, !13, i64 248, !13, i64 252, !20, i64 256, !12, i64 264, !34, i64 272, !34, i64 280, !34, i64 288, !37, i64 296, !12, i64 304, !13, i64 312, !13, i64 316, !12, i64 320, !13, i64 324, !13, i64 328, !13, i64 332, !12, i64 336, !13, i64 464, !30, i64 472, !30, i64 480, !13, i64 488, !12, i64 496, !13, i64 1328, !39, i64 1336, !37, i64 1440, !37, i64 1448, !37, i64 1456, !37, i64 1464, !37, i64 1472, !37, i64 1480, !37, i64 1488, !40, i64 1496, !40, i64 1504, !23, i64 1512, !36, i64 1520, !13, i64 1528, !36, i64 1536, !13, i64 1544, !37, i64 1552, !12, i64 1560, !12, i64 1624, !34, i64 1880, !12, i64 1888, !13, i64 1896, !13, i64 1900, !12, i64 1904, !13, i64 2416, !13, i64 2420, !42, i64 2424, !13, i64 2448, !28, i64 2456, !13, i64 2464, !13, i64 2468, !13, i64 2472, !13, i64 2476, !13, i64 2480, !20, i64 2488, !20, i64 2496, !20, i64 2504, !20, i64 2512, !20, i64 2520, !20, i64 2528, !28, i64 2536, !28, i64 2544, !28, i64 2552, !28, i64 2560, !28, i64 2568, !28, i64 2576, !43, i64 2584, !28, i64 2592, !28, i64 2600, !28, i64 2608, !28, i64 2616, !28, i64 2624, !28, i64 2632, !20, i64 2640, !28, i64 2648, !28, i64 2656, !28, i64 2664, !28, i64 2672, !28, i64 2680, !28, i64 2688, !28, i64 2696, !28, i64 2704, !20, i64 2712, !20, i64 2720, !20, i64 2728, !28, i64 2736, !28, i64 2744, !28, i64 2752, !28, i64 2760, !28, i64 2768, !43, i64 2776, !28, i64 2784, !28, i64 2792, !28, i64 2800, !28, i64 2808, !28, i64 2816, !37, i64 2824, !28, i64 2832, !28, i64 2840, !20, i64 2848, !44, i64 2856, !12, i64 2944, !12, i64 2952, !12, i64 2960, !12, i64 2968, !20, i64 2976, !20, i64 2984, !20, i64 2992, !20, i64 3000, !20, i64 3008, !20, i64 3016, !20, i64 3024, !20, i64 3032, !43, i64 3040, !12, i64 3048, !20, i64 3080, !28, i64 3088, !28, i64 3096, !28, i64 3104, !12, i64 3112, !12, i64 4136, !12, i64 5160, !28, i64 5168, !28, i64 5176, !28, i64 5184, !28, i64 5192, !12, i64 5200, !28, i64 6264, !28, i64 6272, !20, i64 6280, !28, i64 6288, !28, i64 6296, !20, i64 6304, !12, i64 6312, !45, i64 6408, !13, i64 6416, !13, i64 6420, !13, i64 6424, !13, i64 6428, !13, i64 6432, !13, i64 6436, !13, i64 6440, !13, i64 6444, !13, i64 6448, !13, i64 6452, !13, i64 6456, !13, i64 6460, !13, i64 6464, !20, i64 6472, !13, i64 6480, !13, i64 6484, !13, i64 6488, !13, i64 6492, !20, i64 6496, !20, i64 6504, !13, i64 6512, !13, i64 6516, !13, i64 6520, !13, i64 6524, !13, i64 6528, !13, i64 6532, !30, i64 6536, !12, i64 6544, !13, i64 6616, !13, i64 6620, !13, i64 6624, !46, i64 6632, !13, i64 6640, !13, i64 6644, !13, i64 6648, !13, i64 6652, !13, i64 6656, !13, i64 6660, !13, i64 6664, !13, i64 6668, !13, i64 6672, !30, i64 6680, !30, i64 6688, !13, i64 6696, !13, i64 6700, !20, i64 6704, !20, i64 6712, !20, i64 6720, !20, i64 6728, !20, i64 6736, !13, i64 6744, !13, i64 6748, !30, i64 6752, !13, i64 6760, !13, i64 6764, !28, i64 6768, !28, i64 6776, !20, i64 6784, !20, i64 6792, !20, i64 6800, !13, i64 6808, !13, i64 6812, !20, i64 6816, !13, i64 6824, !13, i64 6828, !13, i64 6832, !13, i64 6836, !13, i64 6840, !20, i64 6848, !13, i64 6856, !12, i64 6860, !12, i64 6864, !23, i64 6872, !13, i64 6880, !28, i64 6888, !28, i64 6896, !28, i64 6904, !28, i64 6912, !13, i64 6920, !47, i64 6928, !13, i64 6936, !30, i64 6944, !13, i64 6952, !13, i64 6956, !13, i64 6960, !20, i64 6968, !20, i64 6976, !20, i64 6984, !20, i64 6992, !13, i64 7000, !13, i64 7004, !13, i64 7008, !13, i64 7012, !13, i64 7016, !13, i64 7020, !48, i64 7024, !13, i64 7032, !13, i64 7036, !30, i64 7040, !13, i64 7048, !13, i64 7052, !13, i64 7056, !12, i64 7060, !13, i64 7068, !50, i64 7072, !13, i64 7088, !30, i64 7096, !13, i64 7104, !30, i64 7112, !13, i64 7120, !13, i64 7124, !13, i64 7128, !13, i64 7132, !13, i64 7136, !13, i64 7140, !13, i64 7144, !12, i64 7148, !12, i64 7189, !28, i64 7232, !28, i64 7240, !12, i64 7248, !28, i64 7256, !13, i64 7264, !13, i64 7268, !51, i64 7272, !28, i64 7280, !28, i64 7288, !52, i64 7296, !20, i64 7344, !20, i64 7352, !13, i64 7360, !13, i64 7364, !13, i64 7368, !13, i64 7372, !13, i64 7376, !13, i64 7380, !13, i64 7384, !13, i64 7388, !13, i64 7392, !20, i64 7400, !37, i64 7408, !20, i64 7416, !30, i64 7424, !30, i64 7432, !30, i64 7440, !13, i64 7448, !13, i64 7452, !40, i64 7456, !40, i64 7464, !13, i64 7472, !13, i64 7476, !13, i64 7480, !13, i64 7484, !20, i64 7488, !20, i64 7496, !20, i64 7504, !20, i64 7512, !20, i64 7520, !53, i64 7528, !53, i64 7536, !13, i64 7544, !30, i64 7552, !20, i64 7560, !13, i64 7568, !13, i64 7572, !13, i64 7576, !20, i64 7584, !20, i64 7592, !13, i64 7600, !13, i64 7604, !13, i64 7608, !13, i64 7612, !30, i64 7616, !13, i64 7624, !13, i64 7628, !12, i64 7632, !28, i64 7680, !13, i64 7688, !37, i64 7696, !13, i64 7704, !28, i64 7712, !28, i64 7720, !20, i64 7728, !20, i64 7736, !13, i64 7744, !28, i64 7752, !20, i64 7760, !13, i64 7768, !13, i64 7772, !13, i64 7776, !13, i64 7780, !13, i64 7784, !28, i64 7792, !12, i64 7800, !13, i64 7812, !13, i64 7816, !13, i64 7820, !12, i64 7824, !37, i64 7872, !37, i64 7880, !13, i64 7888, !20, i64 7896, !37, i64 7904, !37, i64 7912, !13, i64 7920, !13, i64 7924, !13, i64 7928, !13, i64 7932, !20, i64 7936, !20, i64 7944, !20, i64 7952, !20, i64 7960, !20, i64 7968, !20, i64 7976, !20, i64 7984, !20, i64 7992, !20, i64 8000, !28, i64 8008, !28, i64 8016, !28, i64 8024, !13, i64 8032, !13, i64 8036, !12, i64 8040, !20, i64 8048, !12, i64 8056, !28, i64 8064, !28, i64 8072, !13, i64 8080, !20, i64 8088, !28, i64 8096, !20, i64 8104, !28, i64 8112, !54, i64 8120, !34, i64 8128, !13, i64 8136, !54, i64 8144, !13, i64 8152, !13, i64 8156, !13, i64 8160, !13, i64 8164, !28, i64 8168, !28, i64 8176, !30, i64 8184, !28, i64 8192, !28, i64 8200, !28, i64 8208, !13, i64 8216, !55, i64 8224, !13, i64 8232, !13, i64 8236, !13, i64 8240, !13, i64 8244, !13, i64 8248, !30, i64 8256, !30, i64 8264, !30, i64 8272, !13, i64 8280, !13, i64 8284, !13, i64 8288, !13, i64 8292, !13, i64 8296, !13, i64 8300, !13, i64 8304, !13, i64 8308, !28, i64 8312, !13, i64 8320, !13, i64 8324, !13, i64 8328, !28, i64 8336, !13, i64 8344, !13, i64 8348, !13, i64 8352, !13, i64 8356, !13, i64 8360, !13, i64 8364, !13, i64 8368, !13, i64 8372, !13, i64 8376, !28, i64 8384, !34, i64 8392, !30, i64 8400, !20, i64 8408, !30, i64 8416, !13, i64 8424, !56, i64 8432, !13, i64 8472, !20, i64 8480, !13, i64 8488, !13, i64 8492, !13, i64 8496, !57, i64 8504, !30, i64 8624, !30, i64 8632, !30, i64 8640, !30, i64 8648, !58, i64 8656, !28, i64 8664, !13, i64 8672, !30, i64 8680, !13, i64 8688, !13, i64 8692, !13, i64 8696, !20, i64 8704, !13, i64 8712, !13, i64 8716, !30, i64 8720, !13, i64 8728, !13, i64 8732}
!60 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!61 = !{!"p1 _ZTS11redisObject", !23, i64 0}
!62 = !{!"p2 _ZTS11redisObject", !31, i64 0}
!63 = !{!"p1 _ZTS14pendingCommand", !23, i64 0}
!64 = !{!"pendingCommandList", !63, i64 0, !63, i64 8, !13, i64 16, !13, i64 20}
!65 = !{!"p1 _ZTS14deferredObject", !23, i64 0}
!66 = !{!"p1 _ZTS12redisCommand", !23, i64 0}
!67 = !{!"p1 _ZTS9dictEntry", !23, i64 0}
!68 = !{!"multiState", !41, i64 0, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !20, i64 24, !13, i64 32}
!69 = !{!"blockingState", !13, i64 0, !28, i64 8, !13, i64 16, !34, i64 24, !13, i64 32, !13, i64 36, !28, i64 40, !23, i64 48, !23, i64 56, !20, i64 64}
!70 = !{!"p1 _ZTS8listNode", !23, i64 0}
!71 = !{!"listNode", !70, i64 0, !70, i64 8, !23, i64 16}
!72 = !{!"p1 _ZTS13payloadHeader", !23, i64 0}
!73 = !{!"p1 _ZTS7asmTask", !23, i64 0}
!74 = !{!"client", !20, i64 0, !20, i64 8, !53, i64 16, !12, i64 24, !12, i64 25, !12, i64 26, !12, i64 27, !13, i64 28, !33, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !30, i64 64, !20, i64 72, !20, i64 80, !13, i64 88, !62, i64 96, !13, i64 104, !13, i64 108, !62, i64 112, !20, i64 120, !64, i64 128, !63, i64 152, !65, i64 160, !13, i64 168, !62, i64 176, !13, i64 184, !13, i64 188, !66, i64 192, !66, i64 200, !66, i64 208, !66, i64 216, !23, i64 224, !13, i64 232, !13, i64 236, !20, i64 240, !37, i64 248, !28, i64 256, !37, i64 264, !20, i64 272, !20, i64 280, !20, i64 288, !13, i64 296, !13, i64 300, !67, i64 304, !20, i64 312, !20, i64 320, !20, i64 328, !28, i64 336, !28, i64 344, !13, i64 352, !13, i64 356, !13, i64 360, !13, i64 364, !20, i64 368, !20, i64 376, !30, i64 384, !28, i64 392, !28, i64 400, !28, i64 408, !28, i64 416, !28, i64 424, !28, i64 432, !28, i64 440, !28, i64 448, !28, i64 456, !28, i64 464, !28, i64 472, !12, i64 480, !13, i64 524, !30, i64 528, !13, i64 536, !13, i64 540, !20, i64 544, !68, i64 552, !69, i64 592, !28, i64 664, !37, i64 672, !34, i64 680, !34, i64 688, !34, i64 696, !30, i64 704, !30, i64 712, !70, i64 720, !70, i64 728, !70, i64 736, !23, i64 744, !23, i64 752, !23, i64 760, !23, i64 768, !23, i64 776, !20, i64 784, !36, i64 792, !20, i64 800, !13, i64 808, !70, i64 816, !23, i64 824, !70, i64 832, !20, i64 840, !70, i64 848, !20, i64 856, !70, i64 864, !20, i64 872, !71, i64 880, !71, i64 904, !20, i64 928, !20, i64 936, !20, i64 944, !28, i64 952, !20, i64 960, !20, i64 968, !30, i64 976, !12, i64 984, !72, i64 992, !28, i64 1000, !28, i64 1008, !28, i64 1016, !73, i64 1024, !30, i64 1032, !12, i64 1040}
!75 = !{!74, !62, i64 96}
!76 = !{!61, !61, i64 0}
!77 = !{!74, !33, i64 32}
!78 = !{!"p1 _ZTS7_estore", !23, i64 0}
!79 = !{!"redisDb", !54, i64 0, !54, i64 8, !78, i64 16, !34, i64 24, !34, i64 32, !34, i64 40, !34, i64 48, !34, i64 56, !34, i64 64, !13, i64 72, !28, i64 80, !20, i64 88}
!80 = !{!79, !13, i64 72}
!81 = !{!59, !28, i64 6888}
!82 = !{!"sharedObjectsStruct", !61, i64 0, !61, i64 8, !61, i64 16, !61, i64 24, !61, i64 32, !61, i64 40, !61, i64 48, !61, i64 56, !12, i64 64, !12, i64 96, !12, i64 128, !12, i64 160, !61, i64 192, !61, i64 200, !61, i64 208, !61, i64 216, !61, i64 224, !61, i64 232, !61, i64 240, !61, i64 248, !61, i64 256, !61, i64 264, !61, i64 272, !61, i64 280, !61, i64 288, !61, i64 296, !61, i64 304, !61, i64 312, !61, i64 320, !61, i64 328, !61, i64 336, !61, i64 344, !61, i64 352, !61, i64 360, !61, i64 368, !61, i64 376, !61, i64 384, !61, i64 392, !61, i64 400, !61, i64 408, !61, i64 416, !61, i64 424, !61, i64 432, !61, i64 440, !61, i64 448, !61, i64 456, !61, i64 464, !61, i64 472, !61, i64 480, !61, i64 488, !61, i64 496, !61, i64 504, !61, i64 512, !61, i64 520, !61, i64 528, !61, i64 536, !61, i64 544, !61, i64 552, !61, i64 560, !61, i64 568, !61, i64 576, !61, i64 584, !61, i64 592, !61, i64 600, !61, i64 608, !61, i64 616, !61, i64 624, !61, i64 632, !61, i64 640, !61, i64 648, !61, i64 656, !61, i64 664, !61, i64 672, !61, i64 680, !61, i64 688, !61, i64 696, !61, i64 704, !61, i64 712, !61, i64 720, !61, i64 728, !61, i64 736, !61, i64 744, !61, i64 752, !61, i64 760, !61, i64 768, !61, i64 776, !61, i64 784, !61, i64 792, !61, i64 800, !61, i64 808, !12, i64 816, !12, i64 896, !12, i64 80896, !12, i64 81152, !12, i64 81408, !12, i64 81664, !30, i64 81920, !30, i64 81928}
!83 = !{!82, !61, i64 24}
!84 = !{!30, !30, i64 0}
!85 = !{!82, !61, i64 216}
!86 = !{!74, !13, i64 88}
!87 = distinct !{!87, !16}
!88 = distinct !{!88, !16, !18, !19}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16, !19, !18}
!91 = distinct !{!91, !22}
!92 = distinct !{!92, !16}
!93 = distinct !{!93, !16}
!94 = distinct !{!94, !16, !18, !19}
!95 = distinct !{!95, !16, !18, !19}
!96 = distinct !{!96, !16}
!97 = distinct !{!97, !16, !18, !19}
!98 = distinct !{!98, !16, !18, !19}
!99 = distinct !{!99, !16, !19, !18}
!100 = distinct !{!100, !16, !19, !18}
!101 = !{!"branch_weights", i32 8, i32 24}
!102 = distinct !{!102, !16}
!103 = distinct !{!103, !16}
!104 = distinct !{!104, !16, !18, !19}
!105 = distinct !{!105, !16, !18, !19}
!106 = distinct !{!106, !16, !18, !19}
!107 = distinct !{!107, !16, !18, !19}
!108 = distinct !{!108, !16, !19, !18}
!109 = distinct !{!109, !16, !19, !18}
!110 = !{!"branch_weights", i32 4, i32 12}
!111 = distinct !{!111, !16}
!112 = distinct !{!112, !16}
!113 = distinct !{!113, !16}
!114 = distinct !{!114, !16}
!115 = !{!59, !28, i64 7792}
!116 = !{!59, !13, i64 6644}
!117 = distinct !{!117, !16}
!118 = distinct !{!118, !22}
!119 = distinct !{!119, !16}
!120 = distinct !{!120, !16}
!121 = distinct !{!121, !22}
!122 = distinct !{!122, !16}
!123 = distinct !{!123, !16}
!124 = distinct !{!124, !22}
!125 = distinct !{!125, !16}
!126 = distinct !{!126, !16}
!127 = distinct !{!127, !22}
!128 = distinct !{!128, !16}
!129 = distinct !{!129, !16}
!130 = distinct !{!130, !16}
!131 = distinct !{!131, !16}
!132 = distinct !{!132, !16}
!133 = distinct !{!133, !22}
!134 = distinct !{!134, !22}
!135 = distinct !{!135, !22}
!136 = distinct !{!136, !16}
!137 = distinct !{!137, !16, !155}
!138 = distinct !{!138, !16}
!139 = distinct !{!139, !16}
!140 = distinct !{!140, !16}
!141 = distinct !{!141, !16}
!142 = distinct !{!142, !16}
!143 = distinct !{!143, !16}
!144 = distinct !{!144, !16}
!145 = distinct !{!145, !16}
!146 = distinct !{!146, !16}
!147 = distinct !{!147, !16}
!148 = distinct !{!148, !16}
!149 = distinct !{!149, !16}
!150 = distinct !{!150, !16}
!151 = distinct !{!151, !16}
!152 = distinct !{!152, !16}
!153 = distinct !{!153, !16}
!154 = distinct !{!154, !16}
!155 = !{!"llvm.loop.peeled.count", i32 1}
!156 = !{!"p1 long", !23, i64 0}
!157 = !{!156, !156, i64 0}
!158 = !{!"branch_weights", !"expected", i32 2126874249, i32 20609399}
!159 = distinct !{!159, !16}
!160 = distinct !{!160, !16}
!161 = !{!"bitfieldOp", !20, i64 0, !20, i64 8, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28}
!162 = !{!161, !20, i64 0}
!163 = !{!161, !20, i64 8}
end_hunk_1
