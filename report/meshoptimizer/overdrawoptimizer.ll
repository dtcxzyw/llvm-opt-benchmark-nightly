Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/overdrawoptimizer?download=true
inline.NumInlined: 21
inline.NumDeleted: 11
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 5
begin_hunk_0

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
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !37
  %i.f = icmp ugt i64 %2, 4611686018427387903
  %i.g = shl i64 %2, 2                            ; 2 uses
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = invoke noundef ptr %i.e(i64 noundef %i.h)
          to label %bb.d unwind label %bb.e, !inline_history !18 ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %7, i64 192
  store i64 1, ptr %i.j, align 8, !tbaa !14
  store ptr %i.i, ptr %7, align 8, !tbaa !15
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %1, i64 %i.g, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.f:                                             ; preds = %bb.d, %bb.b
  %.sroa.phi = phi ptr [ %.sroa.gep, %bb.d ], [ %7, %bb.b ]
  %i.l = phi i64 [ 1, %bb.d ], [ 0, %bb.b ]       ; 6 uses
  %.076 = phi ptr [ %i.i, %bb.d ], [ %1, %bb.b ]  ; 8 uses
  %i.m = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !37
  %i.n = icmp ugt i64 %4, 4611686018427387903
  %i.o = shl i64 %4, 2                            ; 3 uses
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noundef ptr %i.m(i64 noundef %i.p)
          to label %bb.g unwind label %bb.ao, !inline_history !18 ; 16 uses

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 5 uses
  %i.s = add nuw nsw i64 %i.l, 1                  ; 2 uses
  store i64 %i.s, ptr %i.r, align 8, !tbaa !14
  store ptr %i.q, ptr %.sroa.phi, align 8, !tbaa !15
  %i.t = udiv i64 %2, 3                           ; 3 uses
  %i.u = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !37
  %i.v = icmp ugt i64 %2, -4611686018427387905
  %i.w = shl i64 %i.t, 2                          ; 2 uses
  %i.x = select i1 %i.v, i64 -1, i64 %i.w
  %i.y = invoke noundef ptr %i.u(i64 noundef %i.x)
          to label %bb.h unwind label %bb.ap, !inline_history !18 ; 5 uses

bb.h:                                             ; preds = %bb.g
  %i.z = or disjoint i64 %i.l, 2                  ; 2 uses
  store i64 %i.z, ptr %i.r, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.s
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %i.o, i1 false)
  %.not.i = icmp ult i64 %2, 3
  br i1 %.not.i, label %_ZN7meshoptL22generateHardBoundariesEPjPKjmmjS0_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.h
  %i.ab = load i32, ptr %.076, align 4, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %.076, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %.076, i64 8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !38
  %i.ag = zext i32 %i.ab to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ag ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !38
  %notsub.i = add i32 %i.ai, -18
  %i.aj = icmp ult i32 %notsub.i, -17
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.preheader.i
  store i32 17, ptr %i.ah, align 4, !tbaa !38
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.preheader.i
  %.125.peel.i = phi i32 [ 18, %bb.i ], [ 17, %.lr.ph.preheader.i ] ; 4 uses
  %i.ak = zext i32 %i.ad to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !38
  %i.an = sub i32 %.125.peel.i, %i.am
  %i.ao = icmp ugt i32 %i.an, 16
  br i1 %i.ao, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ap = add nuw nsw i32 %.125.peel.i, 1
  store i32 %.125.peel.i, ptr %i.al, align 4, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.2.peel.i = phi i32 [ %i.ap, %bb.k ], [ %.125.peel.i, %bb.j ] ; 4 uses
  %i.aq = zext i32 %i.af to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.aq ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !38
  %i.at = sub i32 %.2.peel.i, %i.as
  %i.au = icmp ugt i32 %i.at, 16
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = add nuw nsw i32 %.2.peel.i, 1
  store i32 %.2.peel.i, ptr %i.ar, align 4, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.3.peel.i = phi i32 [ %i.av, %bb.m ], [ %.2.peel.i, %bb.l ]
  store i32 0, ptr %i.y, align 4, !tbaa !38
  %i.aw = icmp ult i64 %2, 6
  br i1 %i.aw, label %_ZN7meshoptL22generateHardBoundariesEPjPKjmmjS0_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i
  %.028.i = phi i64 [ %i.ce, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i ], [ 1, %bb.n ] ; 3 uses
  %.02127.i = phi i64 [ %.1.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i ], [ 1, %bb.n ] ; 6 uses
  %.02426.i = phi i32 [ %.333.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i ], [ %.3.peel.i, %bb.n ] ; 4 uses
  %.idx.i = mul nuw i64 %.028.i, 12
  %i.ax = getelementptr inbounds nuw i8, ptr %.076, i64 %.idx.i ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !38
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !38
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !38 ; 2 uses
  %i.bd = zext i32 %i.ay to i64
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bd ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !38
  %i.bg = sub i32 %.02426.i, %i.bf
  %i.bh = icmp ugt i32 %i.bg, 16                  ; 2 uses
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph.i
  %i.bi = add i32 %.02426.i, 1
  store i32 %.02426.i, ptr %i.be, align 4, !tbaa !38
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %.125.i = phi i32 [ %i.bi, %bb.o ], [ %.02426.i, %.lr.ph.i ] ; 8 uses
  %i.bj = zext i32 %i.ba to i64
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bj ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !38
  %i.bm = sub i32 %.125.i, %i.bl
  %i.bn = icmp ugt i32 %i.bm, 16
  br i1 %i.bn, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.bo = add i32 %.125.i, 1                      ; 3 uses
  store i32 %.125.i, ptr %i.bk, align 4, !tbaa !38
  %i.bp = zext i32 %i.bc to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !38
  %i.bs = sub i32 %i.bo, %i.br
  %i.bt = icmp ugt i32 %i.bs, 16
  br i1 %i.bt, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i

.thread:                                          ; preds = %bb.p
  %i.bu = zext i32 %i.bc to i64
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !38
  %i.bx = sub i32 %.125.i, %i.bw
  %i.by = icmp ugt i32 %i.bx, 16
  br i1 %i.by, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i.thread, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i

_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i.thread: ; preds = %.thread
  %i.bz = add i32 %.125.i, 1
  store i32 %.125.i, ptr %i.bv, align 4, !tbaa !38
  br label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i

_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i:        ; preds = %bb.q
  %i.ca = add i32 %.125.i, 2                      ; 2 uses
  store i32 %i.bo, ptr %i.bq, align 4, !tbaa !38
  br i1 %i.bh, label %bb.r, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i

bb.r:                                             ; preds = %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i
  %i.cb = trunc i64 %.028.i to i32
  %i.cc = add i64 %.02127.i, 1
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.02127.i
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !38
  br label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i

_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i: ; preds = %bb.r, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i.thread, %.thread, %bb.q
  %.333.i = phi i32 [ %i.ca, %bb.r ], [ %i.ca, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i ], [ %i.bz, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i.thread ], [ %.125.i, %.thread ], [ %i.bo, %bb.q ]
  %.1.i = phi i64 [ %i.cc, %bb.r ], [ %.02127.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i ], [ %.02127.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i.thread ], [ %.02127.i, %.thread ], [ %.02127.i, %bb.q ] ; 2 uses
  %i.ce = add nuw nsw i64 %.028.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ce, %i.t
  br i1 %exitcond.not.i, label %_ZN7meshoptL22generateHardBoundariesEPjPKjmmjS0_.exit, label %.lr.ph.i, !llvm.loop !19

_ZN7meshoptL22generateHardBoundariesEPjPKjmmjS0_.exit: ; preds = %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i, %bb.n, %bb.h
  %.021.lcssa.i = phi i64 [ 0, %bb.h ], [ 1, %bb.n ], [ %.1.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.thread.i ] ; 3 uses
  %i.cf = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !37
  %i.cg = icmp ugt i64 %2, -4611686018427387908
  %i.ch = add i64 %i.w, 4
  %i.ci = select i1 %i.cg, i64 -1, i64 %i.ch
  %i.cj = invoke noundef ptr %i.cf(i64 noundef %i.ci)
          to label %bb.s unwind label %bb.aq, !inline_history !18 ; 8 uses

bb.s:                                             ; preds = %_ZN7meshoptL22generateHardBoundariesEPjPKjmmjS0_.exit
  %i.ck = add nuw nsw i64 %i.l, 3                 ; 2 uses
  store i64 %i.ck, ptr %i.r, align 8, !tbaa !14
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.z
  store ptr %i.cj, ptr %i.cl, align 8, !tbaa !15
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %i.o, i1 false)
  %.not111.i = icmp eq i64 %.021.lcssa.i, 0
  br i1 %.not111.i, label %_ZN7meshoptL22generateSoftBoundariesEPjPKjmmS2_mjfS0_.exit.thread, label %.lr.ph108.i

.lr.ph108.i:                                      ; preds = %bb.s, %._crit_edge101.i
  %.064106.i = phi i64 [ %spec.select.i.fr, %._crit_edge101.i ], [ 0, %bb.s ] ; 2 uses
  %.068105.i = phi i64 [ %i.cp, %._crit_edge101.i ], [ 0, %bb.s ] ; 2 uses
  %.086104.i = phi i32 [ %.288.lcssa.i, %._crit_edge101.i ], [ 0, %bb.s ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.068105.i
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !38 ; 3 uses
  %i.co = zext i32 %i.cn to i64                   ; 4 uses
  %i.cp = add nuw i64 %.068105.i, 1               ; 4 uses
  %i.cq = icmp ult i64 %i.cp, %.021.lcssa.i
  br i1 %i.cq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph108.i
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %i.cp
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !38
  %i.ct = zext i32 %i.cs to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.lr.ph108.i
  %i.cu = phi i64 [ %i.ct, %bb.t ], [ %i.t, %.lr.ph108.i ] ; 4 uses
  %i.cv = add i32 %.086104.i, 17                  ; 2 uses
  %i.cw = icmp samesign ugt i64 %i.cu, %i.co      ; 2 uses
  br i1 %i.cw, label %.lr.ph.i97, label %._crit_edge.i

._crit_edge.loopexit.i:                           ; preds = %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99
  %i.cx = uitofp i32 %i.ef to float
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.u
  %.187.lcssa.i = phi i32 [ %i.cv, %bb.u ], [ %.6.i, %._crit_edge.loopexit.i ]
  %.067.lcssa.i = phi float [ 0.000000e+00, %bb.u ], [ %i.cx, %._crit_edge.loopexit.i ]
  %i.cy = sub nsw i64 %i.cu, %i.co
  %i.cz = uitofp i64 %i.cy to float
  %i.da = fdiv float %.067.lcssa.i, %i.cz
  %i.db = fmul float %6, %i.da
  %i.dc = add i64 %.064106.i, 1                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.064106.i
  store i32 %i.cn, ptr %i.dd, align 4, !tbaa !38
  %i.de = add i32 %.187.lcssa.i, 17               ; 2 uses
  br i1 %i.cw, label %.lr.ph100.i, label %._crit_edge101.i

.lr.ph.i97:                                       ; preds = %bb.u, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99
  %.06692.i = phi i64 [ %i.eg, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99 ], [ %i.co, %bb.u ] ; 2 uses
  %.06791.i = phi i32 [ %i.ef, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99 ], [ 0, %bb.u ]
  %.18790.i = phi i32 [ %.6.i, %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99 ], [ %i.cv, %bb.u ] ; 4 uses
  %.idx89.i = mul nuw i64 %.06692.i, 12
  %i.df = getelementptr inbounds nuw i8, ptr %.076, i64 %.idx89.i ; 3 uses
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !38
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !38
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !38
  %i.dl = zext i32 %i.dg to i64
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dl ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !38
  %i.do = sub i32 %.18790.i, %i.dn
  %i.dp = icmp ugt i32 %i.do, 16
  br i1 %i.dp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i97
  %i.dq = add i32 %.18790.i, 1
  store i32 %.18790.i, ptr %i.dm, align 4, !tbaa !38
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i97
  %.4.i = phi i32 [ %i.dq, %bb.v ], [ %.18790.i, %.lr.ph.i97 ] ; 4 uses
  %.0.i.i = phi i32 [ 1, %bb.v ], [ 0, %.lr.ph.i97 ] ; 2 uses
  %i.dr = zext i32 %i.di to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dr ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !38
  %i.du = sub i32 %.4.i, %i.dt
  %i.dv = icmp ugt i32 %i.du, 16
  br i1 %i.dv, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dw = add i32 %.4.i, 1
  store i32 %.4.i, ptr %i.ds, align 4, !tbaa !38
  %i.dx = add nuw nsw i32 %.0.i.i, 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.5.i = phi i32 [ %i.dw, %bb.x ], [ %.4.i, %bb.w ] ; 4 uses
  %.1.i.i98 = phi i32 [ %i.dx, %bb.x ], [ %.0.i.i, %bb.w ] ; 2 uses
  %i.dy = zext i32 %i.dk to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !38
  %i.eb = sub i32 %.5.i, %i.ea
  %i.ec = icmp ugt i32 %i.eb, 16
  br i1 %i.ec, label %bb.z, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99

bb.z:                                             ; preds = %bb.y
  %i.ed = add i32 %.5.i, 1
  store i32 %.5.i, ptr %i.dz, align 4, !tbaa !38
  %i.ee = add nuw nsw i32 %.1.i.i98, 1
  br label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99

_ZN7meshoptL11updateCacheEjjjjPjRj.exit.i99:      ; preds = %bb.z, %bb.y
  %.6.i = phi i32 [ %i.ed, %bb.z ], [ %.5.i, %bb.y ] ; 2 uses
  %.2.i.i = phi i32 [ %i.ee, %bb.z ], [ %.1.i.i98, %bb.y ]
  %i.ef = add i32 %.2.i.i, %.06791.i              ; 2 uses
  %i.eg = add nuw nsw i64 %.06692.i, 1            ; 2 uses
  %exitcond.not.i100 = icmp eq i64 %i.eg, %i.cu
  br i1 %exitcond.not.i100, label %._crit_edge.loopexit.i, label %.lr.ph.i97, !llvm.loop !20

._crit_edge101.i:                                 ; preds = %bb.ag, %._crit_edge.i
  %.288.lcssa.i = phi i32 [ %i.de, %._crit_edge.i ], [ %.3.i, %bb.ag ]
  %.165.lcssa.i = phi i64 [ %i.dc, %._crit_edge.i ], [ %.2.i95, %bb.ag ] ; 2 uses
  %i.eh = getelementptr [4 x i8], ptr %i.cj, i64 %.165.lcssa.i
  %i.ei = getelementptr i8, ptr %i.eh, i64 -4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !38
  %.not.i93 = icmp ne i32 %i.ej, %i.cn
  %i.ek = sext i1 %.not.i93 to i64
  %spec.select.i = add i64 %.165.lcssa.i, %i.ek
  %spec.select.i.fr = freeze i64 %spec.select.i   ; 4 uses
  %exitcond113.not.i = icmp eq i64 %i.cp, %.021.lcssa.i
  br i1 %exitcond113.not.i, label %_ZN7meshoptL22generateSoftBoundariesEPjPKjmmS2_mjfS0_.exit, label %.lr.ph108.i, !llvm.loop !21

.lr.ph100.i:                                      ; preds = %._crit_edge.i, %bb.ag
  %.098.i = phi i64 [ %i.fw, %bb.ag ], [ %i.co, %._crit_edge.i ] ; 3 uses
  %.06197.i = phi i32 [ %.1.i96, %bb.ag ], [ 0, %._crit_edge.i ]
  %.06296.i = phi i32 [ %.163.i, %bb.ag ], [ 0, %._crit_edge.i ]
  %.16595.i = phi i64 [ %.2.i95, %bb.ag ], [ %i.dc, %._crit_edge.i ] ; 3 uses
  %.28894.i = phi i32 [ %.3.i, %bb.ag ], [ %i.de, %._crit_edge.i ] ; 4 uses
  %.idx.i94 = mul nuw i64 %.098.i, 12
  %i.el = getelementptr inbounds nuw i8, ptr %.076, i64 %.idx.i94 ; 3 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !38
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !38
  %i.ep = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !38
  %i.er = zext i32 %i.em to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.er ; 2 uses
  %i.et = load i32, ptr %i.es, align 4, !tbaa !38
  %i.eu = sub i32 %.28894.i, %i.et
  %i.ev = icmp ugt i32 %i.eu, 16
  br i1 %i.ev, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %.lr.ph100.i
  %i.ew = add i32 %.28894.i, 1
  store i32 %.28894.i, ptr %i.es, align 4, !tbaa !38
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph100.i
  %.7.i = phi i32 [ %i.ew, %bb.aa ], [ %.28894.i, %.lr.ph100.i ] ; 4 uses
  %.0.i72.i = phi i32 [ 1, %bb.aa ], [ 0, %.lr.ph100.i ] ; 2 uses
  %i.ex = zext i32 %i.eo to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !38
  %i.fa = sub i32 %.7.i, %i.ez
  %i.fb = icmp ugt i32 %i.fa, 16
  br i1 %i.fb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fc = add i32 %.7.i, 1
  store i32 %.7.i, ptr %i.ey, align 4, !tbaa !38
  %i.fd = add nuw nsw i32 %.0.i72.i, 1
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.8.i = phi i32 [ %i.fc, %bb.ac ], [ %.7.i, %bb.ab ] ; 4 uses
  %.1.i73.i = phi i32 [ %i.fd, %bb.ac ], [ %.0.i72.i, %bb.ab ] ; 2 uses
  %i.fe = zext i32 %i.eq to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !38
  %i.fh = sub i32 %.8.i, %i.fg
  %i.fi = icmp ugt i32 %i.fh, 16
  br i1 %i.fi, label %bb.ae, label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit77.i

bb.ae:                                            ; preds = %bb.ad
  %i.fj = add i32 %.8.i, 1
  store i32 %.8.i, ptr %i.ff, align 4, !tbaa !38
  %i.fk = add nuw nsw i32 %.1.i73.i, 1
  br label %_ZN7meshoptL11updateCacheEjjjjPjRj.exit77.i

_ZN7meshoptL11updateCacheEjjjjPjRj.exit77.i:      ; preds = %bb.ae, %bb.ad
  %.9.i = phi i32 [ %i.fj, %bb.ae ], [ %.8.i, %bb.ad ] ; 2 uses
  %.2.i74.i = phi i32 [ %i.fk, %bb.ae ], [ %.1.i73.i, %bb.ad ]
  %i.fl = add i32 %.2.i74.i, %.06296.i            ; 2 uses
  %i.fm = add i32 %.06197.i, 1                    ; 2 uses
end_hunk_0
