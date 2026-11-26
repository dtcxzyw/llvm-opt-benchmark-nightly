Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/overdrawoptimizer?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.meshopt_Allocator::Storage" = type { ptr, ptr }
%class.meshopt_Allocator = type { [24 x ptr], i64 }

$_ZN17meshopt_AllocatorD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZZN17meshopt_Allocator7storageEvE1s = comdat any

@_ZZN17meshopt_Allocator7storageEvE1s = linkonce_odr dso_local local_unnamed_addr global %"struct.meshopt_Allocator::Storage" { ptr @_Znwm, ptr @_ZdlPv }, comdat, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_optimizeOverdraw(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, float noundef %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2048 x i32], align 16            ; 18 uses
  %7 = alloca %class.meshopt_Allocator, align 8   ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %7, i8 0, i64 200, i1 false)
  %i.b = icmp eq i64 %2, 0
  %i.c = icmp eq i64 %4, 0
  %or.cond = or i1 %i.b, %i.c
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %7, i64 8
  br i1 %or.cond, label %_ZN17meshopt_AllocatorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !38
  %i.f = icmp ugt i64 %2, 4611686018427387903
  %i.g = shl i64 %2, 2                            ; 2 uses
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = invoke noundef ptr %i.e(i64 noundef %i.h)
          to label %bb.d unwind label %bb.an, !inline_history !18 ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 192
  store i64 1, ptr %i.j, align 8, !tbaa !14
  store ptr %i.i, ptr %7, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %1, i64 %i.g, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.phi = phi ptr [ %.sroa.gep, %bb.d ], [ %7, %bb.b ]
  %i.k = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]       ; 6 uses
  %.076 = phi ptr [ %i.i, %bb.d ], [ %1, %bb.b ]  ; 8 uses
  %i.l = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !38
  %i.m = icmp ugt i64 %4, 4611686018427387903
  %i.n = shl i64 %4, 2                            ; 3 uses
  %i.o = select i1 %i.m, i64 -1, i64 %i.n
  %i.p = invoke noundef ptr %i.l(i64 noundef %i.o)
          to label %bb.f unwind label %bb.an, !inline_history !18 ; 16 uses

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 5 uses
  %i.r = add nuw nsw i64 %i.k, 1                  ; 2 uses
  store i64 %i.r, ptr %i.q, align 8, !tbaa !14
  store ptr %i.p, ptr %.sroa.phi, align 8, !tbaa !15
  %i.s = udiv i64 %2, 3                           ; 3 uses
  %i.t = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !38
  %i.u = icmp ugt i64 %2, -4611686018427387905
  %i.v = shl i64 %i.s, 2                          ; 2 uses
  %i.w = select i1 %i.u, i64 -1, i64 %i.v
  %i.x = invoke noundef ptr %i.t(i64 noundef %i.w)
          to label %bb.g unwind label %bb.an, !inline_history !18 ; 5 uses

bb.g:                                             ; preds = %bb.f
  %i.y = or disjoint i64 %i.k, 2                  ; 2 uses
  store i64 %i.y, ptr %i.q, align 8, !tbaa !14
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.r
  store ptr %i.x, ptr %i.z, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.n, i1 false)
  %.not.i = icmp ult i64 %2, 3
  br i1 %.not.i, label %_ZN7meshoptL22generateHardBoundariesEPjPKjmmjS0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.aa = load i32, ptr %.076, align 4, !tbaa !39
  %i.ab = getelementptr inbounds nuw i8, ptr %.076, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !39
  %i.ad = getelementptr inbounds nuw i8, ptr %.076, i64 8
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !39
  %i.af = zext i32 %i.aa to i64
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !39
  %notsub.i = add i32 %i.ah, -18
  %i.ai = icmp ult i32 %notsub.i, -17
  br i1 %i.ai, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.preheader.i
  store i32 17, ptr %i.ag, align 4, !tbaa !39
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.preheader.i
  %.125.peel.i = phi i32 [ 18, %bb.h ], [ 17, %.lr.ph.preheader.i ] ; 4 uses
  %i.aj = zext i32 %i.ac to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !39
  %i.am = sub i32 %.125.peel.i, %i.al
  %i.an = icmp ugt i32 %i.am, 16
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = add nuw nsw i32 %.125.peel.i, 1
  store i32 %.125.peel.i, ptr %i.ak, align 4, !tbaa !39
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.peel.i = phi i32 [ %i.ao, %bb.j ], [ %.125.peel.i, %bb.i ] ; 4 uses
  %i.ap = zext i32 %i.ae to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ap ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !39
  %i.as = sub i32 %.2.peel.i, %i.ar
  %i.at = icmp ugt i32 %i.as, 16
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = add nuw nsw i32 %.2.peel.i, 1
  store i32 %.2.peel.i, ptr %i.aq, align 4, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.3.peel.i = phi i32 [ %i.au, %bb.l ], [ %.2.peel.i, %bb.k ]
  store i32 0, ptr %i.x, align 4, !tbaa !39
  %i.av = icmp ult i64 %2, 6
  br i1 %i.av, label %_ZN7meshoptL22generateHardBoundariesEPjPKjmmjS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i
  %.028.i = phi i64 [ %i.cd, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i ], [ 1, %bb.m ] ; 3 uses
  %.02127.i = phi i64 [ %.1.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i ], [ 1, %bb.m ] ; 6 uses
  %.02426.i = phi i32 [ %.333.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i ], [ %.3.peel.i, %bb.m ] ; 4 uses
  %.idx.i = mul nuw i64 %.028.i, 12
  %i.aw = getelementptr inbounds nuw i8, ptr %.076, i64 %.idx.i ; 3 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !39
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !39
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !39 ; 2 uses
  %i.bc = zext i32 %i.ax to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !39
  %i.bf = sub i32 %.02426.i, %i.be
  %i.bg = icmp ugt i32 %i.bf, 16                  ; 2 uses
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.i
  %i.bh = add i32 %.02426.i, 1
  store i32 %.02426.i, ptr %i.bd, align 4, !tbaa !39
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.i
  %.125.i = phi i32 [ %i.bh, %bb.n ], [ %.02426.i, %.lr.ph.i ] ; 8 uses
  %i.bi = zext i32 %i.az to i64
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !39
  %i.bl = sub i32 %.125.i, %i.bk
  %i.bm = icmp ugt i32 %i.bl, 16
  br i1 %i.bm, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.bn = add i32 %.125.i, 1                      ; 3 uses
  store i32 %.125.i, ptr %i.bj, align 4, !tbaa !39
  %i.bo = zext i32 %i.bb to i64
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !39
  %i.br = sub i32 %i.bn, %i.bq
  %i.bs = icmp ugt i32 %i.br, 16
  br i1 %i.bs, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i

.thread:                                          ; preds = %bb.o
  %i.bt = zext i32 %i.bb to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bt ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !39
  %i.bw = sub i32 %.125.i, %i.bv
  %i.bx = icmp ugt i32 %i.bw, 16
  br i1 %i.bx, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i.thread, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i

_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i.thread: ; preds = %.thread
  %i.by = add i32 %.125.i, 1
  store i32 %.125.i, ptr %i.bu, align 4, !tbaa !39
  br label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i

_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i:        ; preds = %bb.p
  %i.bz = add i32 %.125.i, 2                      ; 2 uses
  store i32 %i.bn, ptr %i.bp, align 4, !tbaa !39
  br i1 %i.bg, label %bb.q, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i

bb.q:                                             ; preds = %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i
  %i.ca = trunc i64 %.028.i to i32
  %i.cb = add i64 %.02127.i, 1
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.02127.i
  store i32 %i.ca, ptr %i.cc, align 4, !tbaa !39
  br label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i

_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i: ; preds = %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i.thread, %.thread, %bb.q, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i, %bb.p
  %.333.i = phi i32 [ %i.bz, %bb.q ], [ %i.bz, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i ], [ %i.bn, %bb.p ], [ %.125.i, %.thread ], [ %i.by, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i.thread ]
  %.1.i = phi i64 [ %i.cb, %bb.q ], [ %.02127.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i ], [ %.02127.i, %bb.p ], [ %.02127.i, %.thread ], [ %.02127.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i.thread ] ; 2 uses
  %i.cd = add nuw nsw i64 %.028.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cd, %i.s
  br i1 %exitcond.not.i, label %_ZN7meshoptL22generateHardBoundariesEPjPKjmmjS0_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN7meshoptL22generateHardBoundariesEPjPKjmmjS0_.exit: ; preds = %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i, %bb.m, %bb.g
  %.021.lcssa.i = phi i64 [ 0, %bb.g ], [ 1, %bb.m ], [ %.1.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i ] ; 3 uses
  %i.ce = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !38
  %i.cf = icmp ugt i64 %2, -4611686018427387908
  %i.cg = add i64 %i.v, 4
  %i.ch = select i1 %i.cf, i64 -1, i64 %i.cg
  %i.ci = invoke noundef ptr %i.ce(i64 noundef %i.ch)
          to label %bb.r unwind label %bb.an, !inline_history !18 ; 8 uses

bb.r:                                             ; preds = %_ZN7meshoptL22generateHardBoundariesEPjPKjmmjS0_.exit
  %i.cj = add nuw nsw i64 %i.k, 3                 ; 2 uses
  store i64 %i.cj, ptr %i.q, align 8, !tbaa !14
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.y
  store ptr %i.ci, ptr %i.ck, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.p, i8 0, i64 %i.n, i1 false)
  %.not111.i = icmp eq i64 %.021.lcssa.i, 0
  br i1 %.not111.i, label %_ZN7meshoptL22generateSoftBoundariesEPjPKjmmS2_mjfS0_.exit.thread, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %bb.r, %._crit_edge101.i
  %.064106.i = phi i64 [ %spec.select.i.fr, %._crit_edge101.i ], [ 0, %bb.r ] ; 2 uses
  %.068105.i = phi i64 [ %i.co, %._crit_edge101.i ], [ 0, %bb.r ] ; 2 uses
  %.086104.i = phi i32 [ %.288.lcssa.i, %._crit_edge101.i ], [ 0, %bb.r ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.068105.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !39 ; 3 uses
  %i.cn = zext i32 %i.cm to i64                   ; 4 uses
  %i.co = add nuw i64 %.068105.i, 1               ; 4 uses
  %i.cp = icmp ult i64 %i.co, %.021.lcssa.i
  br i1 %i.cp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph108.i
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.co
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !39
  %i.cs = zext i32 %i.cr to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph108.i
  %i.ct = phi i64 [ %i.cs, %bb.s ], [ %i.s, %.lr.ph108.i ] ; 4 uses
  %i.cu = add i32 %.086104.i, 17                  ; 2 uses
  %i.cv = icmp samesign ugt i64 %i.ct, %i.cn      ; 2 uses
  br i1 %i.cv, label %.lr.ph.i97, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99
  %i.cw = uitofp i32 %i.ee to float
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.t
  %.187.lcssa.i = phi i32 [ %i.cu, %bb.t ], [ %.6.i, %._crit_edge.loopexit.i ]
  %.067.lcssa.i = phi float [ 0.000000e+00, %bb.t ], [ %i.cw, %._crit_edge.loopexit.i ]
  %i.cx = sub nsw i64 %i.ct, %i.cn
  %i.cy = uitofp i64 %i.cx to float
  %i.cz = fdiv float %.067.lcssa.i, %i.cy
  %i.da = fmul float %6, %i.cz
  %i.db = add i64 %.064106.i, 1                   ; 2 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.064106.i
  store i32 %i.cm, ptr %i.dc, align 4, !tbaa !39
  %i.dd = add i32 %.187.lcssa.i, 17               ; 2 uses
  br i1 %i.cv, label %.lr.ph100.i, label %._crit_edge101.i

.lr.ph.i97:                                       ; preds = %bb.t, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99
  %.06692.i = phi i64 [ %i.ef, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99 ], [ %i.cn, %bb.t ] ; 2 uses
  %.06791.i = phi i32 [ %i.ee, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99 ], [ 0, %bb.t ]
  %.18790.i = phi i32 [ %.6.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99 ], [ %i.cu, %bb.t ] ; 4 uses
  %.idx89.i = mul nuw i64 %.06692.i, 12
  %i.de = getelementptr inbounds nuw i8, ptr %.076, i64 %.idx89.i ; 3 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !39
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !39
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !39
  %i.dk = zext i32 %i.df to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !39
  %i.dn = sub i32 %.18790.i, %i.dm
  %i.do = icmp ugt i32 %i.dn, 16
  br i1 %i.do, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.i97
  %i.dp = add i32 %.18790.i, 1
  store i32 %.18790.i, ptr %i.dl, align 4, !tbaa !39
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i97
  %.4.i = phi i32 [ %i.dp, %bb.u ], [ %.18790.i, %.lr.ph.i97 ] ; 4 uses
  %.0.i.i = phi i32 [ 1, %bb.u ], [ 0, %.lr.ph.i97 ] ; 2 uses
  %i.dq = zext i32 %i.dh to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !39
  %i.dt = sub i32 %.4.i, %i.ds
  %i.du = icmp ugt i32 %i.dt, 16
  br i1 %i.du, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dv = add i32 %.4.i, 1
  store i32 %.4.i, ptr %i.dr, align 4, !tbaa !39
  %i.dw = add nuw nsw i32 %.0.i.i, 1
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.5.i = phi i32 [ %i.dv, %bb.w ], [ %.4.i, %bb.v ] ; 4 uses
  %.1.i.i98 = phi i32 [ %i.dw, %bb.w ], [ %.0.i.i, %bb.v ] ; 2 uses
  %i.dx = zext i32 %i.dj to i64
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dx ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !39
  %i.ea = sub i32 %.5.i, %i.dz
  %i.eb = icmp ugt i32 %i.ea, 16
  br i1 %i.eb, label %bb.y, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99

bb.y:                                             ; preds = %bb.x
  %i.ec = add i32 %.5.i, 1
  store i32 %.5.i, ptr %i.dy, align 4, !tbaa !39
  %i.ed = add nuw nsw i32 %.1.i.i98, 1
  br label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99

_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99:      ; preds = %bb.y, %bb.x
  %.6.i = phi i32 [ %i.ec, %bb.y ], [ %.5.i, %bb.x ] ; 2 uses
  %.2.i.i = phi i32 [ %i.ed, %bb.y ], [ %.1.i.i98, %bb.x ]
  %i.ee = add i32 %.2.i.i, %.06791.i              ; 2 uses
  %i.ef = add nuw nsw i64 %.06692.i, 1            ; 2 uses
  %exitcond.not.i100 = icmp eq i64 %i.ef, %i.ct
  br i1 %exitcond.not.i100, label %._crit_edge.loopexit.i, label %.lr.ph.i97, !llvm.loop !20

._crit_edge101.i:                                 ; preds = %bb.af, %._crit_edge.i
  %.288.lcssa.i = phi i32 [ %i.dd, %._crit_edge.i ], [ %.3.i, %bb.af ]
  %.165.lcssa.i = phi i64 [ %i.db, %._crit_edge.i ], [ %.2.i95, %bb.af ] ; 2 uses
  %i.eg = getelementptr [4 x i8], ptr %i.ci, i64 %.165.lcssa.i
  %i.eh = getelementptr i8, ptr %i.eg, i64 -4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !39
  %.not.i93 = icmp ne i32 %i.ei, %i.cm
  %i.ej = sext i1 %.not.i93 to i64
  %spec.select.i = add i64 %.165.lcssa.i, %i.ej
  %spec.select.i.fr = freeze i64 %spec.select.i   ; 4 uses
  %exitcond113.not.i = icmp eq i64 %i.co, %.021.lcssa.i
  br i1 %exitcond113.not.i, label %_ZN7meshoptL22generateSoftBoundariesEPjPKjmmS2_mjfS0_.exit, label %.lr.ph108.i, !llvm.loop !21

.lr.ph100.i:                                      ; preds = %._crit_edge.i, %bb.af
  %.098.i = phi i64 [ %i.fv, %bb.af ], [ %i.cn, %._crit_edge.i ] ; 3 uses
  %.06197.i = phi i32 [ %.1.i96, %bb.af ], [ 0, %._crit_edge.i ]
  %.06296.i = phi i32 [ %.163.i, %bb.af ], [ 0, %._crit_edge.i ]
  %.16595.i = phi i64 [ %.2.i95, %bb.af ], [ %i.db, %._crit_edge.i ] ; 3 uses
  %.28894.i = phi i32 [ %.3.i, %bb.af ], [ %i.dd, %._crit_edge.i ] ; 4 uses
  %.idx.i94 = mul nuw i64 %.098.i, 12
  %i.ek = getelementptr inbounds nuw i8, ptr %.076, i64 %.idx.i94 ; 3 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !39
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 4
  %i.en = load i32, ptr %i.em, align 4, !tbaa !39
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !39
  %i.eq = zext i32 %i.el to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.eq ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !39
  %i.et = sub i32 %.28894.i, %i.es
  %i.eu = icmp ugt i32 %i.et, 16
  br i1 %i.eu, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %.lr.ph100.i
  %i.ev = add i32 %.28894.i, 1
  store i32 %.28894.i, ptr %i.er, align 4, !tbaa !39
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph100.i
  %.7.i = phi i32 [ %i.ev, %bb.z ], [ %.28894.i, %.lr.ph100.i ] ; 4 uses
  %.0.i72.i = phi i32 [ 1, %bb.z ], [ 0, %.lr.ph100.i ] ; 2 uses
  %i.ew = zext i32 %i.en to i64
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ew ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !39
  %i.ez = sub i32 %.7.i, %i.ey
  %i.fa = icmp ugt i32 %i.ez, 16
  br i1 %i.fa, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.fb = add i32 %.7.i, 1
  store i32 %.7.i, ptr %i.ex, align 4, !tbaa !39
  %i.fc = add nuw nsw i32 %.0.i72.i, 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.8.i = phi i32 [ %i.fb, %bb.ab ], [ %.7.i, %bb.aa ] ; 4 uses
  %.1.i73.i = phi i32 [ %i.fc, %bb.ab ], [ %.0.i72.i, %bb.aa ] ; 2 uses
  %i.fd = zext i32 %i.ep to i64
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.fd ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !39
  %i.fg = sub i32 %.8.i, %i.ff
  %i.fh = icmp ugt i32 %i.fg, 16
  br i1 %i.fh, label %bb.ad, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit77.i

bb.ad:                                            ; preds = %bb.ac
  %i.fi = add i32 %.8.i, 1
  store i32 %.8.i, ptr %i.fe, align 4, !tbaa !39
  %i.fj = add nuw nsw i32 %.1.i73.i, 1
  br label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit77.i

_ZN7meshoptL11updateCacheEjjjjPjRj.exit77.i:      ; preds = %bb.ad, %bb.ac
  %.9.i = phi i32 [ %i.fi, %bb.ad ], [ %.8.i, %bb.ac ] ; 2 uses
  %.2.i74.i = phi i32 [ %i.fj, %bb.ad ], [ %.1.i73.i, %bb.ac ]
  %i.fk = add i32 %.2.i74.i, %.06296.i            ; 2 uses
  %i.fl = add i32 %.06197.i, 1                    ; 2 uses
  %i.fm = uitofp i32 %i.fk to float
  %i.fn = uitofp i32 %i.fl to float
  %i.fo = fdiv float %i.fm, %i.fn
  %i.fp = fcmp ugt float %i.fo, %i.da
  br i1 %i.fp, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %_ZN7meshoptL11updateCacheEjjjjPjRj.exit77.i
  %i.fq = trunc i64 %.098.i to i32
  %i.fr = add i32 %i.fq, 1
  %i.fs = add i64 %.16595.i, 1
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.16595.i
  store i32 %i.fr, ptr %i.ft, align 4, !tbaa !39
  %i.fu = add i32 %.9.i, 17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit77.i
  %.3.i = phi i32 [ %.9.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit77.i ], [ %i.fu, %bb.ae ] ; 2 uses
  %.2.i95 = phi i64 [ %.16595.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit77.i ], [ %i.fs, %bb.ae ] ; 2 uses
  %.163.i = phi i32 [ %i.fk, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit77.i ], [ 0, %bb.ae ]
  %.1.i96 = phi i32 [ %i.fl, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit77.i ], [ 0, %bb.ae ]
  %i.fv = add nuw nsw i64 %.098.i, 1              ; 2 uses
  %exitcond112.not.i = icmp eq i64 %i.fv, %i.ct
  br i1 %exitcond112.not.i, label %._crit_edge101.i, label %.lr.ph100.i, !llvm.loop !22

_ZN7meshoptL22generateSoftBoundariesEPjPKjmmS2_mjfS0_.exit: ; preds = %._crit_edge101.i
  %i.fw = icmp ugt i64 %spec.select.i.fr, 4611686018427387903
  %i.fx = shl nuw i64 %spec.select.i.fr, 2
  %spec.select = select i1 %i.fw, i64 -1, i64 %i.fx
  br label %_ZN7meshoptL22generateSoftBoundariesEPjPKjmmS2_mjfS0_.exit.thread

_ZN7meshoptL22generateSoftBoundariesEPjPKjmmS2_mjfS0_.exit.thread: ; preds = %bb.r, %_ZN7meshoptL22generateSoftBoundariesEPjPKjmmS2_mjfS0_.exit
  %.064.lcssa.i120 = phi i64 [ %spec.select.i.fr, %_ZN7meshoptL22generateSoftBoundariesEPjPKjmmS2_mjfS0_.exit ], [ 0, %bb.r ] ; 22 uses
  %i.fy = phi i64 [ %spec.select, %_ZN7meshoptL22generateSoftBoundariesEPjPKjmmS2_mjfS0_.exit ], [ 0, %bb.r ] ; 2 uses
  %i.fz = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !38
  %i.ga = invoke noundef ptr %i.fz(i64 noundef %i.fy)
          to label %bb.ag unwind label %bb.an, !inline_history !23 ; 6 uses

bb.ag:                                            ; preds = %_ZN7meshoptL22generateSoftBoundariesEPjPKjmmS2_mjfS0_.exit.thread
  %i.gb = or disjoint i64 %i.k, 4                 ; 2 uses
  store i64 %i.gb, ptr %i.q, align 8, !tbaa !14
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.cj
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !15
  %i.gd = lshr i64 %5, 2                          ; 8 uses
  %i.ge = add i64 %4, -1
  %xtraiter = and i64 %4, 3                       ; 3 uses
  %i.gf = icmp ult i64 %i.ge, 3
  br i1 %i.gf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.ag
  %unroll_iter = and i64 %4, -4
  br label %bb.ai

.unr-lcssa:                                       ; preds = %bb.ai
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.ag
  %.sroa.094.0135.i.epil.init = phi float [ 0.000000e+00, %bb.ag ], [ %i.hx, %.unr-lcssa ]
  %.0132.i.epil.init = phi i64 [ 0, %bb.ag ], [ %i.ib, %.unr-lcssa ]
  %.epil.init = phi <2 x float> [ zeroinitializer, %bb.ag ], [ %i.ia, %.unr-lcssa ]
  %lcmp.mod203 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod203)
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %.epil.preheader
  %.sroa.094.0135.i.epil = phi float [ %.sroa.094.0135.i.epil.init, %.epil.preheader ], [ %i.gk, %bb.ah ]
  %.0132.i.epil = phi i64 [ %.0132.i.epil.init, %.epil.preheader ], [ %i.go, %bb.ah ] ; 2 uses
  %i.gg = phi <2 x float> [ %.epil.init, %.epil.preheader ], [ %i.gn, %bb.ah ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.ah ]
  %i.gh = mul i64 %.0132.i.epil, %i.gd
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gh ; 2 uses
  %i.gj = load float, ptr %i.gi, align 4, !tbaa !42
  %i.gk = fadd float %.sroa.094.0135.i.epil, %i.gj ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gm = load <2 x float>, ptr %i.gl, align 4, !tbaa !42
  %i.gn = fadd <2 x float> %i.gg, %i.gm           ; 2 uses
  %i.go = add nuw i64 %.0132.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.ah, !llvm.loop !24

.epilog-lcssa:                                    ; preds = %bb.ah, %.unr-lcssa
  %.lcssa199 = phi float [ %i.hx, %.unr-lcssa ], [ %i.gk, %bb.ah ]
  %.lcssa198 = phi <2 x float> [ %i.ia, %.unr-lcssa ], [ %i.gn, %bb.ah ]
  %i.gp = uitofp i64 %4 to float                  ; 2 uses
  %i.gq = fdiv float %.lcssa199, %i.gp
  %i.gr = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = fdiv <2 x float> %.lcssa198, %i.gs      ; 2 uses
  %.not.i102 = icmp eq i64 %.064.lcssa.i120, 0    ; 3 uses
  br i1 %.not.i102, label %_ZN7meshoptL17calculateSortDataEPfPKjmPKfmmS2_m.exit, label %.lr.ph152.i.preheader

.lr.ph152.i.preheader:                            ; preds = %.epilog-lcssa
  %i.gu = extractelement <2 x float> %i.gt, i64 1
  br label %.lr.ph152.i

bb.ai:                                            ; preds = %bb.ai, %.new
  %.sroa.094.0135.i = phi float [ 0.000000e+00, %.new ], [ %i.hx, %bb.ai ]
  %.0132.i = phi i64 [ 0, %.new ], [ %i.ib, %bb.ai ] ; 5 uses
  %i.gv = phi <2 x float> [ zeroinitializer, %.new ], [ %i.ia, %bb.ai ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.ai ]
  %i.gw = mul i64 %.0132.i, %i.gd
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.gw ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !42
  %i.gz = fadd float %.sroa.094.0135.i, %i.gy
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gx, i64 4
  %i.hb = load <2 x float>, ptr %i.ha, align 4, !tbaa !42
  %i.hc = fadd <2 x float> %i.gv, %i.hb
  %i.hd = or disjoint i64 %.0132.i, 1
  %i.he = mul i64 %i.hd, %i.gd
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.he ; 2 uses
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !42
  %i.hh = fadd float %i.gz, %i.hg
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hj = load <2 x float>, ptr %i.hi, align 4, !tbaa !42
  %i.hk = fadd <2 x float> %i.hc, %i.hj
  %i.hl = or disjoint i64 %.0132.i, 2
  %i.hm = mul i64 %i.hl, %i.gd
  %i.hn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hm ; 2 uses
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !42
  %i.hp = fadd float %i.hh, %i.ho
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  %i.hr = load <2 x float>, ptr %i.hq, align 4, !tbaa !42
  %i.hs = fadd <2 x float> %i.hk, %i.hr
  %i.ht = or disjoint i64 %.0132.i, 3
  %i.hu = mul i64 %i.ht, %i.gd
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.hu ; 2 uses
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !42
  %i.hx = fadd float %i.hp, %i.hw                 ; 3 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hz = load <2 x float>, ptr %i.hy, align 4, !tbaa !42
  %i.ia = fadd <2 x float> %i.hs, %i.hz           ; 3 uses
  %i.ib = add nuw i64 %.0132.i, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.ai, !llvm.loop !25

.lr.ph152.i:                                      ; preds = %.lr.ph152.i.preheader, %._crit_edge.i103
  %.0125150.i = phi i64 [ %i.ig, %._crit_edge.i103 ], [ 0, %.lr.ph152.i.preheader ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %.0125150.i
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !39
  %i.ie = mul i32 %i.id, 3
  %i.if = zext i32 %i.ie to i64                   ; 2 uses
  %i.ig = add nuw i64 %.0125150.i, 1              ; 4 uses
  %i.ih = icmp ult i64 %i.ig, %.064.lcssa.i120
  br i1 %i.ih, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.lr.ph152.i
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.ig
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !39
  %i.ik = mul i32 %i.ij, 3
  %i.il = zext i32 %i.ik to i64
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph152.i
  %i.im = phi i64 [ %i.il, %bb.aj ], [ %2, %.lr.ph152.i ] ; 2 uses
  %i.in = icmp ugt i64 %i.im, %i.if
  br i1 %i.in, label %.lr.ph.i104, label %._crit_edge.i103

._crit_edge.i103:                                 ; preds = %.lr.ph.i104, %bb.ak
  %.sroa.13.0.lcssa.i = phi float [ 0.000000e+00, %bb.ak ], [ %i.ma, %.lr.ph.i104 ]
  %i.io = phi <4 x float> [ zeroinitializer, %bb.ak ], [ %i.mf, %.lr.ph.i104 ] ; 6 uses
  %i.ip = phi <2 x float> [ zeroinitializer, %bb.ak ], [ %i.lx, %.lr.ph.i104 ] ; 2 uses
  %i.iq = extractelement <2 x float> %i.ip, i64 0
  %foldExtExtBinop = fmul <4 x float> %i.io, %i.io
  %i.ir = extractelement <4 x float> %foldExtExtBinop, i64 2
  %i.is = extractelement <4 x float> %i.io, i64 3 ; 3 uses
  %i.it = tail call float @llvm.fmuladd.f32(float %i.is, float %i.is, float %i.ir)
  %i.iu = extractelement <4 x float> %i.io, i64 1 ; 3 uses
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.iu, float %i.it) ; 2 uses
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.iv)
  %i.iw = shufflevector <4 x float> %i.io, <4 x float> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.ix = insertelement <2 x float> %i.iw, float %i.iv, i64 0
  %i.iy = fcmp oeq <2 x float> %i.ix, zeroinitializer
  %i.iz = insertelement <2 x float> %i.iw, float %sqrt.i, i64 0
  %i.ja = fdiv <2 x float> splat (float 1.000000e+00), %i.iz
  %i.jb = select <2 x i1> %i.iy, <2 x float> zeroinitializer, <2 x float> %i.ja ; 3 uses
  %i.jc = extractelement <2 x float> %i.jb, i64 1 ; 2 uses
  %i.jd = fmul float %i.iq, %i.jc
  %i.je = fmul float %.sroa.13.0.lcssa.i, %i.jc
  %i.jf = extractelement <2 x float> %i.jb, i64 0 ; 2 uses
  %i.jg = fmul float %i.is, %i.jf
  %i.jh = shufflevector <2 x float> %i.ip, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ji = shufflevector <4 x float> %i.io, <4 x float> %i.jh, <2 x i32> <i32 2, i32 5>
  %i.jj = fmul <2 x float> %i.ji, %i.jb           ; 2 uses
  %i.jk = fmul float %i.iu, %i.jf
  %i.jl = fsub float %i.jd, %i.gq
  %shift = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop188 = fsub <2 x float> %shift, %i.gt
  %i.jm = fsub float %i.je, %i.gu
  %foldExtExtBinop190 = fmul <2 x float> %i.jj, %foldExtExtBinop188
  %i.jn = extractelement <2 x float> %foldExtExtBinop190, i64 0
  %i.jo = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.jg, float %i.jn)
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.jk, float %i.jo)
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %.0125150.i
  store float %i.jp, ptr %i.jq, align 4, !tbaa !42
  %exitcond163.not.i = icmp eq i64 %i.ig, %.064.lcssa.i120
  br i1 %exitcond163.not.i, label %_ZN7meshoptL17calculateSortDataEPfPKjmPKfmmS2_m.exit, label %.lr.ph152.i, !llvm.loop !26

.lr.ph.i104:                                      ; preds = %bb.ak, %.lr.ph.i104
  %.sroa.13.0140.i = phi float [ %i.ma, %.lr.ph.i104 ], [ 0.000000e+00, %bb.ak ]
  %.0127136.i = phi i64 [ %i.mg, %.lr.ph.i104 ], [ %i.if, %bb.ak ] ; 2 uses
  %i.jr = phi <4 x float> [ %i.mf, %.lr.ph.i104 ], [ zeroinitializer, %bb.ak ]
  %i.js = phi <2 x float> [ %i.lx, %.lr.ph.i104 ], [ zeroinitializer, %bb.ak ]
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %.076, i64 %.0127136.i ; 3 uses
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !39
  %i.jv = zext i32 %i.ju to i64
  %i.jw = mul i64 %i.gd, %i.jv
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.jw ; 2 uses
  %i.jy = getelementptr i8, ptr %i.jt, i64 4
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !39
  %i.ka = zext i32 %i.jz to i64
  %i.kb = mul i64 %i.gd, %i.ka
  %i.kc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kb ; 2 uses
  %i.kd = getelementptr i8, ptr %i.jt, i64 8
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !39
  %i.kf = zext i32 %i.ke to i64
  %i.kg = mul i64 %i.gd, %i.kf
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kg ; 2 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !42 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.kl = load float, ptr %i.kk, align 4, !tbaa !42 ; 4 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.kh, i64 8
  %i.kn = load float, ptr %i.km, align 4, !tbaa !42 ; 3 uses
  %i.ko = load <2 x float>, ptr %i.kc, align 4, !tbaa !42 ; 3 uses
  %i.kp = load <2 x float>, ptr %i.jx, align 4, !tbaa !42 ; 4 uses
  %i.kq = load <2 x float>, ptr %i.kh, align 4, !tbaa !42 ; 3 uses
  %i.kr = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.ks = insertelement <2 x float> %i.kr, float %i.kn, i64 1
  %i.kt = insertelement <2 x float> poison, float %i.kl, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = fsub <2 x float> %i.ks, %i.ku
  %i.kw = insertelement <2 x float> %i.ko, float %i.kj, i64 1
  %i.kx = insertelement <2 x float> %i.kp, float %i.kl, i64 1
  %i.ky = fsub <2 x float> %i.kw, %i.kx           ; 2 uses
  %i.kz = shufflevector <2 x float> %i.kq, <2 x float> %i.ko, <2 x i32> <i32 0, i32 3>
  %i.la = fsub <2 x float> %i.kz, %i.kp           ; 3 uses
  %i.lb = insertelement <2 x float> %i.kq, float %i.kn, i64 0
  %i.lc = insertelement <2 x float> %i.kp, float %i.kl, i64 0
  %i.ld = fsub <2 x float> %i.lb, %i.lc           ; 2 uses
  %i.le = fneg <2 x float> %i.ld
  %i.lf = fmul <2 x float> %i.ky, %i.le
  %i.lg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.la, <2 x float> %i.kv, <2 x float> %i.lf) ; 4 uses
  %i.lh = extractelement <2 x float> %i.la, i64 0
  %i.li = fneg float %i.lh
  %i.lj = extractelement <2 x float> %i.la, i64 1
  %i.lk = fmul float %i.lj, %i.li
  %i.ll = extractelement <2 x float> %i.ky, i64 0
  %i.lm = extractelement <2 x float> %i.ld, i64 1
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.ll, float %i.lm, float %i.lk) ; 3 uses
  %foldExtExtBinop192 = fmul <2 x float> %i.lg, %i.lg
  %i.lo = extractelement <2 x float> %foldExtExtBinop192, i64 0
  %i.lp = extractelement <2 x float> %i.lg, i64 1 ; 2 uses
  %i.lq = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.lp, float %i.lo)
  %i.lr = tail call float @llvm.fmuladd.f32(float %i.ln, float %i.ln, float %i.lq)
  %sqrt131.i = tail call float @llvm.sqrt.f32(float %i.lr) ; 2 uses
  %i.ls = fdiv float %sqrt131.i, 3.000000e+00     ; 2 uses
  %i.lt = fadd <2 x float> %i.ko, %i.kp
  %i.lu = fadd <2 x float> %i.lt, %i.kq
  %i.lv = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.lw = shufflevector <2 x float> %i.lv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.lw, <2 x float> %i.js) ; 2 uses
  %i.ly = fadd float %i.kj, %i.kl
  %i.lz = fadd float %i.ly, %i.kn
  %i.ma = tail call float @llvm.fmuladd.f32(float %i.lz, float %i.ls, float %.sroa.13.0140.i) ; 2 uses
  %i.mb = insertelement <4 x float> poison, float %sqrt131.i, i64 0
  %i.mc = insertelement <4 x float> %i.mb, float %i.ln, i64 1
  %i.md = shufflevector <2 x float> %i.lg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.me = shufflevector <4 x float> %i.mc, <4 x float> %i.md, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.mf = fadd <4 x float> %i.jr, %i.me           ; 2 uses
  %i.mg = add i64 %.0127136.i, 3                  ; 2 uses
  %i.mh = icmp ult i64 %i.mg, %i.im
  br i1 %i.mh, label %.lr.ph.i104, label %._crit_edge.i103, !llvm.loop !27

_ZN7meshoptL17calculateSortDataEPfPKjmPKfmmS2_m.exit: ; preds = %._crit_edge.i103, %.epilog-lcssa
  %i.mi = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !38
  %i.mj = shl nuw i64 %.064.lcssa.i120, 1
  %.inv.i = icmp sgt i64 %.064.lcssa.i120, -1
  %i.mk = select i1 %.inv.i, i64 %i.mj, i64 -1
  %i.ml = invoke noundef ptr %i.mi(i64 noundef %i.mk)
          to label %bb.al unwind label %bb.an, !inline_history !28 ; 11 uses

bb.al:                                            ; preds = %_ZN7meshoptL17calculateSortDataEPfPKjmPKfmmS2_m.exit
  %i.mm = add nuw nsw i64 %i.k, 5                 ; 2 uses
  store i64 %i.mm, ptr %i.q, align 8, !tbaa !14
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.gb
  store ptr %i.ml, ptr %i.mn, align 8, !tbaa !15
  %i.mo = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !38
  %i.mp = invoke noundef ptr %i.mo(i64 noundef %i.fy)
          to label %bb.am unwind label %bb.an, !inline_history !18 ; 5 uses

bb.am:                                            ; preds = %bb.al
  %i.mq = or disjoint i64 %i.k, 6
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.mm
  store ptr %i.mp, ptr %i.mr, align 8, !tbaa !15
  br i1 %.not.i102, label %._crit_edge.thread.i, label %.lr.ph.i107.preheader

.lr.ph.i107.preheader:                            ; preds = %bb.am
  %min.iters.check = icmp ult i64 %.064.lcssa.i120, 8
  br i1 %min.iters.check, label %.lr.ph.i107.preheader.new, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i107.preheader
  %n.vec = and i64 %.064.lcssa.i120, -8           ; 3 uses
  br label %.lr.ph.i107.preheader.a

.lr.ph.i107.preheader.a:                          ; preds = %.lr.ph.i107.preheader.a, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %.lr.ph.i107.preheader.a ] ; 3 uses
  %vec.phi = phi <4 x float> [ splat (float 1.000000e-03), %vector.ph ], [ %14, %.lr.ph.i107.preheader.a ] ; 3 uses
  %vec.phi187 = phi <4 x float> [ splat (float 1.000000e-03), %vector.ph ], [ %15, %.lr.ph.i107.preheader.a ] ; 3 uses
  %8 = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %index ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 16
  %wide.load = load <4 x float>, ptr %8, align 4, !tbaa !42
  %wide.load188 = load <4 x float>, ptr %9, align 4, !tbaa !42
  %wide.load.fr = freeze <4 x float> %wide.load   ; 2 uses
  %10 = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load.fr) ; 2 uses
  %wide.load188.fr = freeze <4 x float> %wide.load188 ; 2 uses
  %11 = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %wide.load188.fr) ; 2 uses
  %12 = fcmp olt <4 x float> %vec.phi, %10
  %13 = fcmp olt <4 x float> %vec.phi187, %11
  %14 = select <4 x i1> %12, <4 x float> %10, <4 x float> %vec.phi ; 2 uses
  %15 = select <4 x i1> %13, <4 x float> %11, <4 x float> %vec.phi187 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %16 = fcmp uno <4 x float> %wide.load.fr, %wide.load188.fr
  %17 = bitcast <4 x i1> %16 to i4
  %18 = icmp ne i4 %17, 0                         ; 5 uses
  %i.ms = icmp eq i64 %index.next, %n.vec
  %19 = or i1 %18, %i.ms
  br i1 %19, label %middle.block, label %.lr.ph.i107.preheader.a, !llvm.loop !29

middle.block:                                     ; preds = %.lr.ph.i107.preheader.a
  %20 = select i1 %18, <4 x float> %vec.phi, <4 x float> %14
  %21 = select i1 %18, <4 x float> %vec.phi187, <4 x float> %15
  %22 = select i1 %18, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nnan <4 x float> @llvm.maxnum.v4f32(<4 x float> %20, <4 x float> %21)
  %23 = tail call nnan float @llvm.vector.reduce.fmax.v4f32(<4 x float> %rdx.minmax) ; 2 uses
  %cmp.n = icmp ne i64 %.064.lcssa.i120, %n.vec
  %.not = or i1 %cmp.n, %18
  br i1 %.not, label %.lr.ph.i107.preheader.new, label %.lr.ph48.i.preheader

.lr.ph.i107.preheader.new:                        ; preds = %.lr.ph.i107.preheader, %middle.block
  %.03646.i.ph = phi float [ 1.000000e-03, %.lr.ph.i107.preheader ], [ %23, %middle.block ]
  %.04045.i.ph = phi i64 [ 0, %.lr.ph.i107.preheader ], [ %22, %middle.block ]
  br label %.lr.ph.i107

._crit_edge.thread.i:                             ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %i.a, i8 0, i64 8192, i1 false)
  br label %.preheader43.i.preheader

.preheader43.i.preheader.loopexit.unr-lcssa:      ; preds = %.lr.ph51.i
  %lcmp.mod213.not = icmp eq i64 %xtraiter211, 0
  br i1 %lcmp.mod213.not, label %.preheader43.i.preheader, label %.lr.ph51.i.epil.preheader

.lr.ph51.i.epil.preheader:                        ; preds = %.preheader43.i.preheader.loopexit.unr-lcssa, %.lr.ph51.preheader.i
  %.03949.i.epil.init = phi i64 [ 0, %.lr.ph51.preheader.i ], [ %i.pi, %.preheader43.i.preheader.loopexit.unr-lcssa ]
  %lcmp.mod214 = icmp ne i64 %xtraiter211, 0
  tail call void @llvm.assume(i1 %lcmp.mod214)
  br label %.lr.ph51.i.epil

.lr.ph51.i.epil:                                  ; preds = %.lr.ph51.i.epil, %.lr.ph51.i.epil.preheader
  %.03949.i.epil = phi i64 [ %i.mz, %.lr.ph51.i.epil ], [ %.03949.i.epil.init, %.lr.ph51.i.epil.preheader ] ; 2 uses
  %epil.iter212 = phi i64 [ %epil.iter212.next, %.lr.ph51.i.epil ], [ 0, %.lr.ph51.i.epil.preheader ]
  %i.mt = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %.03949.i.epil
  %i.mu = load i16, ptr %i.mt, align 2, !tbaa !47
  %i.mv = zext i16 %i.mu to i64
  %i.mw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.mv ; 2 uses
  %i.mx = load i32, ptr %i.mw, align 4, !tbaa !39
  %i.my = add i32 %i.mx, 1
  store i32 %i.my, ptr %i.mw, align 4, !tbaa !39
  %i.mz = add nuw i64 %.03949.i.epil, 1
  %epil.iter212.next = add i64 %epil.iter212, 1   ; 2 uses
  %epil.iter212.cmp.not = icmp eq i64 %epil.iter212.next, %xtraiter211
  br i1 %epil.iter212.cmp.not, label %.preheader43.i.preheader, label %.lr.ph51.i.epil, !llvm.loop !30

.preheader43.i.preheader:                         ; preds = %.preheader43.i.preheader.loopexit.unr-lcssa, %.lr.ph51.i.epil, %._crit_edge.thread.i
  br label %.preheader43.i

.lr.ph.i107:                                      ; preds = %.lr.ph.i107.preheader.new, %.lr.ph.i107
  %.03646.i = phi float [ %i.ne, %.lr.ph.i107 ], [ %.03646.i.ph, %.lr.ph.i107.preheader.new ] ; 2 uses
  %niter210 = phi i64 [ %niter210.next.1, %.lr.ph.i107 ], [ %.04045.i.ph, %.lr.ph.i107.preheader.new ] ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %niter210
  %i.nb = load float, ptr %i.na, align 4, !tbaa !42
  %i.nc = tail call float @llvm.fabs.f32(float %i.nb) ; 2 uses
  %i.nd = fcmp olt float %.03646.i, %i.nc
  %i.ne = select i1 %i.nd, float %i.nc, float %.03646.i ; 2 uses
  %niter210.next.1 = add nuw i64 %niter210, 1     ; 2 uses
  %niter210.ncmp.1 = icmp eq i64 %niter210.next.1, %.064.lcssa.i120
  br i1 %niter210.ncmp.1, label %.lr.ph48.i.preheader, label %.lr.ph.i107, !llvm.loop !31

.lr.ph48.i.preheader:                             ; preds = %.lr.ph.i107, %middle.block
  %.lcssa = phi float [ %23, %middle.block ], [ %i.ne, %.lr.ph.i107 ] ; 2 uses
  %min.iters.check.a = icmp ult i64 %.064.lcssa.i120, 4
  br i1 %min.iters.check.a, label %.lr.ph48.i.preheader194, label %vector.ph.a

vector.ph.a:                                      ; preds = %.lr.ph48.i.preheader
  %n.vec.a = and i64 %.064.lcssa.i120, -4         ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.a
  %index.a = phi i64 [ 0, %vector.ph.a ], [ %index.next.a, %vector.body ] ; 3 uses
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %index.a
  %wide.load.a = load <4 x float>, ptr %i.nf, align 4, !tbaa !42
  %i.ng = fdiv <4 x float> %wide.load.a, %broadcast.splat
  %i.nh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ng, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)) ; 2 uses
  %i.ni = fcmp oge <4 x float> %i.nh, zeroinitializer
  %i.nj = select <4 x i1> %i.ni, <4 x float> %i.nh, <4 x float> zeroinitializer ; 2 uses
  %i.nk = fcmp ole <4 x float> %i.nj, splat (float 1.000000e+00)
  %i.nl = select <4 x i1> %i.nk, <4 x float> %i.nj, <4 x float> splat (float 1.000000e+00)
  %i.nm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nl, <4 x float> splat (float 2.047000e+03), <4 x float> splat (float 5.000000e-01))
  %i.nn = fptosi <4 x float> %i.nm to <4 x i32>
  %i.no = trunc <4 x i32> %i.nn to <4 x i16>
  %i.np = and <4 x i16> %i.no, splat (i16 2047)
  %i.nq = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %index.a
  store <4 x i16> %i.np, ptr %i.nq, align 2, !tbaa !47
  %index.next.a = add nuw i64 %index.a, 4         ; 2 uses
  %i.nr = icmp eq i64 %index.next.a, %n.vec.a
  br i1 %i.nr, label %middle.block.a, label %vector.body, !llvm.loop !32

middle.block.a:                                   ; preds = %vector.body
  %cmp.n.a = icmp eq i64 %.064.lcssa.i120, %n.vec.a
  br i1 %cmp.n.a, label %.lr.ph51.preheader.i, label %.lr.ph48.i.preheader194

.lr.ph48.i.preheader194:                          ; preds = %.lr.ph48.i.preheader, %middle.block.a
  %.04147.i.ph = phi i64 [ 0, %.lr.ph48.i.preheader ], [ %n.vec.a, %middle.block.a ]
  br label %.lr.ph48.i

.lr.ph51.preheader.i:                             ; preds = %.lr.ph48.i, %middle.block.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %i.a, i8 0, i64 8192, i1 false)
  %24 = add i64 %.064.lcssa.i120, -1
  %xtraiter211 = and i64 %.064.lcssa.i120, 3      ; 3 uses
  %i.ns = icmp ult i64 %24, 3
  br i1 %i.ns, label %.lr.ph51.i.epil.preheader, label %.lr.ph51.preheader.i.new

.lr.ph51.preheader.i.new:                         ; preds = %.lr.ph51.preheader.i
  %unroll_iter215 = and i64 %.064.lcssa.i120, -4
  br label %.lr.ph51.i

.lr.ph48.i:                                       ; preds = %.lr.ph48.i.preheader194, %.lr.ph48.i
  %.04147.i = phi i64 [ %i.og, %.lr.ph48.i ], [ %.04147.i.ph, %.lr.ph48.i.preheader194 ] ; 3 uses
  %i.nt = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %.04147.i
  %i.nu = load float, ptr %i.nt, align 4, !tbaa !42
  %i.nv = fdiv float %i.nu, %.lcssa
  %i.nw = tail call float @llvm.fmuladd.f32(float %i.nv, float -5.000000e-01, float 5.000000e-01) ; 2 uses
  %i.nx = fcmp oge float %i.nw, 0.000000e+00
  %i.ny = select i1 %i.nx, float %i.nw, float 0.000000e+00 ; 2 uses
  %i.nz = fcmp ole float %i.ny, 1.000000e+00
  %i.oa = select i1 %i.nz, float %i.ny, float 1.000000e+00
  %i.ob = tail call float @llvm.fmuladd.f32(float %i.oa, float 2.047000e+03, float 5.000000e-01)
  %i.oc = fptosi float %i.ob to i32
  %i.od = trunc i32 %i.oc to i16
  %i.oe = and i16 %i.od, 2047
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %.04147.i
  store i16 %i.oe, ptr %i.of, align 2, !tbaa !47
  %i.og = add nuw i64 %.04147.i, 1                ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.og, %.064.lcssa.i120
  br i1 %exitcond60.not.i, label %.lr.ph51.preheader.i, label %.lr.ph48.i, !llvm.loop !33

.lr.ph51.i:                                       ; preds = %.lr.ph51.i, %.lr.ph51.preheader.i.new
  %.03949.i = phi i64 [ 0, %.lr.ph51.preheader.i.new ], [ %i.pi, %.lr.ph51.i ] ; 5 uses
  %niter216 = phi i64 [ 0, %.lr.ph51.preheader.i.new ], [ %niter216.next.3, %.lr.ph51.i ]
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %.03949.i
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !47
  %i.oj = zext i16 %i.oi to i64
  %i.ok = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oj ; 2 uses
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !39
  %i.om = add i32 %i.ol, 1
  store i32 %i.om, ptr %i.ok, align 4, !tbaa !39
  %i.on = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %.03949.i
  %i.oo = getelementptr inbounds nuw i8, ptr %i.on, i64 2
  %i.op = load i16, ptr %i.oo, align 2, !tbaa !47
  %i.oq = zext i16 %i.op to i64
  %i.or = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.oq ; 2 uses
  %i.os = load i32, ptr %i.or, align 4, !tbaa !39
  %i.ot = add i32 %i.os, 1
  store i32 %i.ot, ptr %i.or, align 4, !tbaa !39
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %.03949.i
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  %i.ow = load i16, ptr %i.ov, align 2, !tbaa !47
  %i.ox = zext i16 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ox ; 2 uses
  %i.oz = load i32, ptr %i.oy, align 4, !tbaa !39
  %i.pa = add i32 %i.oz, 1
  store i32 %i.pa, ptr %i.oy, align 4, !tbaa !39
  %i.pb = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %.03949.i
  %i.pc = getelementptr inbounds nuw i8, ptr %i.pb, i64 6
  %i.pd = load i16, ptr %i.pc, align 2, !tbaa !47
  %i.pe = zext i16 %i.pd to i64
  %i.pf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.pe ; 2 uses
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !39
  %i.ph = add i32 %i.pg, 1
  store i32 %i.ph, ptr %i.pf, align 4, !tbaa !39
  %i.pi = add nuw i64 %.03949.i, 4                ; 2 uses
  %niter216.next.3 = add nuw i64 %niter216, 4     ; 2 uses
  %niter216.ncmp.3 = icmp eq i64 %niter216.next.3, %unroll_iter215
  br i1 %niter216.ncmp.3, label %.preheader43.i.preheader.loopexit.unr-lcssa, label %.lr.ph51.i, !llvm.loop !34

.preheader.i:                                     ; preds = %.preheader43.i
  br i1 %.not.i102, label %_ZN7meshoptL23calculateSortOrderRadixEPjPKfPtm.exit.thread, label %.lr.ph55.i.preheader

.lr.ph55.i.preheader:                             ; preds = %.preheader.i
  %xtraiter217 = and i64 %.064.lcssa.i120, 1
  %i.pj = icmp eq i64 %.064.lcssa.i120, 1
  br i1 %i.pj, label %.lr.ph55.i.epil.preheader, label %.lr.ph55.i.preheader.new

.lr.ph55.i.preheader.new:                         ; preds = %.lr.ph55.i.preheader
  %unroll_iter221 = and i64 %.064.lcssa.i120, -2
  br label %.lr.ph55.i

_ZN7meshoptL23calculateSortOrderRadixEPjPKfPtm.exit.thread: ; preds = %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.lr.ph.i109.preheader

.preheader43.i:                                   ; preds = %.preheader43.i, %.preheader43.i.preheader
  %.03753.i = phi i64 [ 0, %.preheader43.i.preheader ], [ %i.pz, %.preheader43.i ] ; 5 uses
  %.03852.i = phi i32 [ 0, %.preheader43.i.preheader ], [ %i.py, %.preheader43.i ] ; 2 uses
  %i.pk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.03753.i ; 2 uses
  %i.pl = load i32, ptr %i.pk, align 16, !tbaa !39
  store i32 %.03852.i, ptr %i.pk, align 16, !tbaa !39
  %i.pm = add i32 %i.pl, %.03852.i                ; 2 uses
  %i.pn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.03753.i
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 4 ; 2 uses
  %i.pp = load i32, ptr %i.po, align 4, !tbaa !39
  store i32 %i.pm, ptr %i.po, align 4, !tbaa !39
  %i.pq = add i32 %i.pp, %i.pm                    ; 2 uses
  %i.pr = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.03753.i
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pr, i64 8 ; 2 uses
  %i.pt = load i32, ptr %i.ps, align 8, !tbaa !39
  store i32 %i.pq, ptr %i.ps, align 8, !tbaa !39
  %i.pu = add i32 %i.pt, %i.pq                    ; 2 uses
  %i.pv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.03753.i
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 12 ; 2 uses
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !39
  store i32 %i.pu, ptr %i.pw, align 4, !tbaa !39
  %i.py = add i32 %i.px, %i.pu
  %i.pz = add nuw nsw i64 %.03753.i, 4            ; 2 uses
  %exitcond62.not.i.3 = icmp eq i64 %i.pz, 2048
  br i1 %exitcond62.not.i.3, label %.preheader.i, label %.preheader43.i, !llvm.loop !35

.lr.ph55.i:                                       ; preds = %.lr.ph55.i, %.lr.ph55.i.preheader.new
  %.054.i = phi i64 [ 0, %.lr.ph55.i.preheader.new ], [ %i.qt, %.lr.ph55.i ] ; 4 uses
  %niter222 = phi i64 [ 0, %.lr.ph55.i.preheader.new ], [ %niter222.next.1, %.lr.ph55.i ]
  %i.qa = trunc i64 %.054.i to i32
  %i.qb = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %.054.i
  %i.qc = load i16, ptr %i.qb, align 2, !tbaa !47
  %i.qd = zext i16 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.qd ; 2 uses
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !39 ; 2 uses
  %i.qg = add i32 %i.qf, 1
  store i32 %i.qg, ptr %i.qe, align 4, !tbaa !39
  %i.qh = zext i32 %i.qf to i64
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.qh
  store i32 %i.qa, ptr %i.qi, align 4, !tbaa !39
  %i.qj = or disjoint i64 %.054.i, 1              ; 2 uses
  %i.qk = trunc i64 %i.qj to i32
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %i.qj
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !47
  %i.qn = zext i16 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.qn ; 2 uses
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !39 ; 2 uses
  %i.qq = add i32 %i.qp, 1
  store i32 %i.qq, ptr %i.qo, align 4, !tbaa !39
  %i.qr = zext i32 %i.qp to i64
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.qr
  store i32 %i.qk, ptr %i.qs, align 4, !tbaa !39
  %i.qt = add nuw i64 %.054.i, 2                  ; 2 uses
  %niter222.next.1 = add nuw i64 %niter222, 2     ; 2 uses
  %niter222.ncmp.1 = icmp eq i64 %niter222.next.1, %unroll_iter221
  br i1 %niter222.ncmp.1, label %.lr.ph.preheader.unr-lcssa, label %.lr.ph55.i, !llvm.loop !36

.lr.ph.preheader.unr-lcssa:                       ; preds = %.lr.ph55.i
  %lcmp.mod219.not = icmp eq i64 %xtraiter217, 0
  br i1 %lcmp.mod219.not, label %.lr.ph.preheader, label %.lr.ph55.i.epil.preheader

.lr.ph55.i.epil.preheader:                        ; preds = %.lr.ph.preheader.unr-lcssa, %.lr.ph55.i.preheader
  %.054.i.epil.init = phi i64 [ 0, %.lr.ph55.i.preheader ], [ %i.qt, %.lr.ph.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod220 = trunc i64 %.064.lcssa.i120 to i1
  tail call void @llvm.assume(i1 %lcmp.mod220)
  %i.qu = trunc i64 %.054.i.epil.init to i32
  %i.qv = getelementptr inbounds nuw [2 x i8], ptr %i.ml, i64 %.054.i.epil.init
  %i.qw = load i16, ptr %i.qv, align 2, !tbaa !47
  %i.qx = zext i16 %i.qw to i64
  %i.qy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.qx ; 2 uses
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !39 ; 2 uses
  %i.ra = add i32 %i.qz, 1
  store i32 %i.ra, ptr %i.qy, align 4, !tbaa !39
  %i.rb = zext i32 %i.qz to i64
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %i.rb
  store i32 %i.qu, ptr %i.rc, align 4, !tbaa !39
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph.preheader.unr-lcssa, %.lr.ph55.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.lr.ph

bb.an:                                            ; preds = %bb.al, %_ZN7meshoptL17calculateSortDataEPfPKjmPKfmmS2_m.exit, %_ZN7meshoptL22generateSoftBoundariesEPjPKjmmS2_mjfS0_.exit.thread, %_ZN7meshoptL22generateHardBoundariesEPjPKjmmjS0_.exit, %bb.f, %bb.e, %bb.c
  %i.rd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  resume { ptr, i32 } %i.rd

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ap
  %.0133 = phi i64 [ %i.ry, %bb.ap ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.067132 = phi i64 [ %i.rx, %bb.ap ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.re = getelementptr inbounds nuw [4 x i8], ptr %i.mp, i64 %.0133
  %i.rf = load i32, ptr %i.re, align 4, !tbaa !39 ; 2 uses
  %i.rg = zext i32 %i.rf to i64
  %i.rh = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.rg
  %i.ri = load i32, ptr %i.rh, align 4, !tbaa !39
  %i.rj = mul i32 %i.ri, 3
  %i.rk = zext i32 %i.rj to i64                   ; 2 uses
  %i.rl = add i32 %i.rf, 1
  %i.rm = zext i32 %i.rl to i64                   ; 2 uses
  %i.rn = icmp ugt i64 %.064.lcssa.i120, %i.rm
  br i1 %i.rn, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.rm
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !39
  %i.rq = mul i32 %i.rp, 3
  %i.rr = zext i32 %i.rq to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph, %bb.ao
  %i.rs = phi i64 [ %i.rr, %bb.ao ], [ %2, %.lr.ph ]
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.067132
  %i.ru = getelementptr inbounds nuw [4 x i8], ptr %.076, i64 %i.rk
  %i.rv = sub i64 %i.rs, %i.rk                    ; 2 uses
  %i.rw = shl i64 %i.rv, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.rt, ptr align 4 %i.ru, i64 %i.rw, i1 false)
  %i.rx = add i64 %i.rv, %.067132
  %i.ry = add nuw i64 %.0133, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ry, %.064.lcssa.i120
  br i1 %exitcond.not, label %.lr.ph.i109.preheader, label %.lr.ph, !llvm.loop !37

.lr.ph.i109.preheader:                            ; preds = %bb.ap, %_ZN7meshoptL23calculateSortOrderRadixEPjPKfPtm.exit.thread
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.preheader, %bb.aq
  %.04.i = phi i64 [ %i.sd, %bb.aq ], [ %i.mq, %.lr.ph.i109.preheader ] ; 2 uses
  %i.rz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.sa = getelementptr [8 x i8], ptr %7, i64 %.04.i
  %i.sb = getelementptr i8, ptr %i.sa, i64 -8
  %i.sc = load ptr, ptr %i.sb, align 8, !tbaa !15
  invoke void %i.rz(ptr noundef %i.sc)
          to label %bb.aq unwind label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i109
  %i.sd = add nsw i64 %.04.i, -1                  ; 2 uses
  %.not.i110 = icmp eq i64 %i.sd, 0
  br i1 %.not.i110, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i109, !llvm.loop !0

bb.ar:                                            ; preds = %.lr.ph.i109
  %i.se = landingpad { ptr, i32 }
          catch ptr null
  %i.sf = extractvalue { ptr, i32 } %i.se, 0
  tail call void @__clang_call_terminate(ptr %i.sf) #11
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.aq, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !17
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #11
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !16}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"_ZTSN17meshopt_Allocator7StorageE", !10, i64 0, !10, i64 8}
!12 = !{!"long", !6, i64 0}
!13 = !{!"_ZTS17meshopt_Allocator", !6, i64 0, !12, i64 192}
!14 = !{!13, !12, i64 192}
!15 = !{!10, !10, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!11, !10, i64 8}
!18 = distinct !{null}
!19 = distinct !{!19, !16, !40}
!20 = distinct !{!20, !16}
!21 = distinct !{!21, !16}
!22 = distinct !{!22, !16}
!23 = distinct !{null}
!24 = distinct !{!24, !43}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{null}
!29 = distinct !{!29, !16, !44, !45}
!30 = distinct !{!30, !43}
!31 = distinct !{!31, !16, !45, !44}
!32 = distinct !{!32, !16, !44, !45}
!33 = distinct !{!33, !16, !45, !44}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = !{!11, !10, i64 0}
!39 = !{!7, !7, i64 0}
!40 = !{!"llvm.loop.peeled.count", i32 1}
!41 = !{!"float", !6, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = !{!"llvm.loop.isvectorized", i32 1}
!45 = !{!"llvm.loop.unroll.runtime.disable"}
!46 = !{!"short", !6, i64 0}
!47 = !{!46, !46, i64 0}
end_hunk_0
