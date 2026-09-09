Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/simplifier?download=true
inline.NumInlined: 193
inline.NumDeleted: 81
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 35
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.meshopt_Allocator::Storage" = type { ptr, ptr }
%"struct.meshopt::QuadricGrad" = type { float, float, float, float }
%class.meshopt_Allocator = type { [24 x ptr], i64 }
%"struct.meshopt::EdgeAdjacency" = type { ptr, ptr }

$_ZN17meshopt_AllocatorD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZZN17meshopt_Allocator7storageEvE1s = comdat any

@_ZZN17meshopt_Allocator7storageEvE1s = linkonce_odr dso_local local_unnamed_addr global %"struct.meshopt_Allocator::Storage" { ptr @_Znwm, ptr @_ZdlPv }, comdat, align 8
@_ZZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_E4next = internal unnamed_addr constant [4 x i32] [i32 1, i32 2, i32 0, i32 1], align 16
@_ZN7meshoptL12kCanCollapseE = internal unnamed_addr constant [5 x [5 x i8]] [[5 x i8] c"\01\01\01\01\01", [5 x i8] c"\00\01\00\00\01", [5 x i8] c"\00\00\01\00\01", [5 x i8] c"\00\00\00\01\01", [5 x i8] zeroinitializer], align 16
@_ZN7meshoptL12kHasOppositeE = internal unnamed_addr constant [5 x [5 x i8]] [[5 x i8] c"\01\01\01\01\01", [5 x i8] c"\01\00\01\00\00", [5 x i8] c"\01\01\01\00\01", [5 x i8] c"\01\00\00\00\00", [5 x i8] c"\01\00\01\00\00"], align 16
@_ZZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_9ReservoirEPKNS_7Vector3EPKfmfmE11dummy_color = internal unnamed_addr constant [3 x float] zeroinitializer, align 4

; Function Attrs: mustprogress uwtable
define dso_local noundef i64 @_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr nofree noundef captures(none) %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(none) %6, i64 noundef %7, ptr nofree noundef readonly captures(none) %8, i64 noundef %9, ptr nofree noundef readonly captures(address_is_null) %10, i64 noundef %11, float noundef %12, i32 noundef %13, ptr nofree noundef writeonly captures(address_is_null) %14) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2560 x i32], align 16            ; 14 uses
  %15 = alloca [32 x %"struct.meshopt::QuadricGrad"], align 16 ; 12 uses
  %16 = alloca %class.meshopt_Allocator, align 8  ; 31 uses
  %17 = alloca %"struct.meshopt::EdgeAdjacency", align 8 ; 8 uses
  %i.b = alloca [3 x float], align 4              ; 11 uses
  %i.c = alloca [32 x i32], align 16              ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %16, i8 0, i64 200, i1 false)
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl i64 %2, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %i.d, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = and i32 %13, 2
  %.not401 = icmp eq i32 %i.e, 0
  br i1 %.not401, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = add i64 %4, 7
  %i.g = lshr i64 %i.f, 3
  %i.h = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.i = invoke noundef ptr %i.h(i64 noundef %i.g)
          to label %.noexc unwind label %bb.h, !inline_history !57 ; 9 uses

.noexc:                                           ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %16, i64 192 ; 8 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = add nsw i64 %i.k, 1
  store i64 %i.l, ptr %i.j, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.k
  store ptr %i.i, ptr %i.m, align 8, !tbaa !27
  %.not.i = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.noexc
  %i.n = add i64 %2, -1                           ; 2 uses
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.o = icmp ult i64 %i.n, 3
  br i1 %i.o, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05261.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.am, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05261.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !28
  %i.r = lshr i32 %i.q, 3
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.s
  store i8 0, ptr %i.t, align 1, !tbaa !29
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05261.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !28
  %i.x = lshr i32 %i.w, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  store i8 0, ptr %i.z, align 1, !tbaa !29
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05261.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !28
  %i.ad = lshr i32 %i.ac, 3
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ae
  store i8 0, ptr %i.af, align 1, !tbaa !29
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05261.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !28
  %i.aj = lshr i32 %i.ai, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ak
  store i8 0, ptr %i.al, align 1, !tbaa !29
  %i.am = add nuw i64 %.05261.i, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph64.i.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !58

.lr.ph64.i.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph64.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph64.i.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.05261.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.am, %.lr.ph64.i.preheader.unr-lcssa ]
  %lcmp.mod1268 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1268)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.05261.i.epil = phi i64 [ %i.as, %.lr.ph.i.epil ], [ %.05261.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05261.i.epil
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !28
  %i.ap = lshr i32 %i.ao, 3
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.aq
  store i8 0, ptr %i.ar, align 1, !tbaa !29
  %i.as = add nuw i64 %.05261.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph64.i.preheader, label %.lr.ph.i.epil, !llvm.loop !59

.lr.ph64.i.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph64.i.preheader.unr-lcssa
  %xtraiter1269 = and i64 %2, 1
  %i.at = icmp eq i64 %i.n, 0
  br i1 %i.at, label %.lr.ph64.i.epil.preheader, label %.lr.ph64.i.preheader.new

.lr.ph64.i.preheader.new:                         ; preds = %.lr.ph64.i.preheader
  %unroll_iter1274 = and i64 %2, -2
  br label %.lr.ph64.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph64.i
  %lcmp.mod1271.not = icmp eq i64 %xtraiter1269, 0
  br i1 %lcmp.mod1271.not, label %._crit_edge.i, label %.lr.ph64.i.epil.preheader

.lr.ph64.i.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph64.i.preheader
  %.05063.i.epil.init = phi i64 [ 0, %.lr.ph64.i.preheader ], [ %i.dj, %._crit_edge.i.unr-lcssa ]
  %.05162.i.epil.init = phi i64 [ 0, %.lr.ph64.i.preheader ], [ %i.dg, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod1273 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1273)
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05063.i.epil.init
  %i.av = load i32, ptr %i.au, align 4, !tbaa !28 ; 2 uses
  %i.aw = lshr i32 %i.av, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ax ; 2 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !29  ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = and i32 %i.av, 7
  %i.bc = shl nuw nsw i32 1, %i.bb                ; 2 uses
  %i.bd = and i32 %i.bc, %i.ba
  %.fr92.i.epil = freeze i32 %i.bd
  %i.be = icmp eq i32 %.fr92.i.epil, 0
  %i.bf = zext i1 %i.be to i64
  %i.bg = add i64 %.05162.i.epil.init, %i.bf
  %i.bh = trunc nuw i32 %i.bc to i8
  %i.bi = or i8 %i.az, %i.bh
  store i8 %i.bi, ptr %i.ay, align 1, !tbaa !29
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph64.i.epil.preheader
  %.lcssa1267 = phi i64 [ %i.dg, %._crit_edge.i.unr-lcssa ], [ %i.bg, %.lr.ph64.i.epil.preheader ] ; 3 uses
  %i.bj = icmp ugt i64 %.lcssa1267, 4611686018427387903
  %i.bk = shl nuw i64 %.lcssa1267, 2
  %spec.select.i = select i1 %i.bj, i64 -1, i64 %i.bk
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.noexc, %._crit_edge.i
  %.051.lcssa88.i = phi i64 [ %.lcssa1267, %._crit_edge.i ], [ 0, %.noexc ] ; 3 uses
  %i.bl = phi i64 [ %spec.select.i, %._crit_edge.i ], [ 0, %.noexc ]
  %i.bm = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bn = invoke noundef ptr %i.bm(i64 noundef %i.bl)
          to label %.noexc434 unwind label %bb.h, !inline_history !57 ; 4 uses

.noexc434:                                        ; preds = %._crit_edge.thread.i
  %i.bo = load i64, ptr %i.j, align 8, !tbaa !26  ; 2 uses
  %i.bp = add nsw i64 %i.bo, 1
  store i64 %i.bp, ptr %i.j, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bo
  store ptr %i.bn, ptr %i.bq, align 8, !tbaa !27
  %i.br = lshr i64 %.051.lcssa88.i, 2
  %i.bs = add i64 %i.br, %.051.lcssa88.i
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.noexc434
  %.0.i.i = phi i64 [ 1, %.noexc434 ], [ %i.bu, %bb.e ] ; 5 uses
  %i.bt = icmp ult i64 %.0.i.i, %i.bs
  %i.bu = shl i64 %.0.i.i, 1
  br i1 %i.bt, label %bb.e, label %_ZN7meshoptL12hashBuckets2Em.exit.i, !llvm.loop !0

_ZN7meshoptL12hashBuckets2Em.exit.i:              ; preds = %bb.e
  %i.bv = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bw = icmp ugt i64 %.0.i.i, 4611686018427387903
  %i.bx = shl i64 %.0.i.i, 2                      ; 2 uses
  %i.by = select i1 %i.bw, i64 -1, i64 %i.bx
  %i.bz = invoke noundef ptr %i.bv(i64 noundef %i.by)
          to label %.noexc435 unwind label %bb.h, !inline_history !57 ; 6 uses

.noexc435:                                        ; preds = %_ZN7meshoptL12hashBuckets2Em.exit.i
  %i.ca = load i64, ptr %i.j, align 8, !tbaa !26  ; 2 uses
  %i.cb = add nsw i64 %i.ca, 1
  store i64 %i.cb, ptr %i.j, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.ca
  store ptr %i.bz, ptr %i.cc, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bz, i8 -1, i64 %i.bx, i1 false)
  br i1 %.not.i, label %._crit_edge75.i, label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.noexc435
  %i.cd = add i64 %.0.i.i, -1                     ; 3 uses
  br label %bb.f

.lr.ph64.i:                                       ; preds = %.lr.ph64.i, %.lr.ph64.i.preheader.new
  %.05063.i = phi i64 [ 0, %.lr.ph64.i.preheader.new ], [ %i.dj, %.lr.ph64.i ] ; 3 uses
  %.05162.i = phi i64 [ 0, %.lr.ph64.i.preheader.new ], [ %i.dg, %.lr.ph64.i ]
  %niter1275 = phi i64 [ 0, %.lr.ph64.i.preheader.new ], [ %niter1275.next.1, %.lr.ph64.i ]
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05063.i
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !28 ; 2 uses
  %i.cg = lshr i32 %i.cf, 3
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ch ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !29  ; 2 uses
  %i.ck = zext i8 %i.cj to i32
  %i.cl = and i32 %i.cf, 7
  %i.cm = shl nuw nsw i32 1, %i.cl                ; 2 uses
  %i.cn = and i32 %i.cm, %i.ck
  %.fr92.i = freeze i32 %i.cn
  %i.co = icmp eq i32 %.fr92.i, 0
  %i.cp = zext i1 %i.co to i64
  %i.cq = add i64 %.05162.i, %i.cp
  %i.cr = trunc nuw i32 %i.cm to i8
  %i.cs = or i8 %i.cj, %i.cr
  store i8 %i.cs, ptr %i.ci, align 1, !tbaa !29
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05063.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !28 ; 2 uses
  %i.cw = lshr i32 %i.cv, 3
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !29  ; 2 uses
  %i.da = zext i8 %i.cz to i32
  %i.db = and i32 %i.cv, 7
  %i.dc = shl nuw nsw i32 1, %i.db                ; 2 uses
  %i.dd = and i32 %i.dc, %i.da
  %.fr92.i.1 = freeze i32 %i.dd
  %i.de = icmp eq i32 %.fr92.i.1, 0
  %i.df = zext i1 %i.de to i64
  %i.dg = add i64 %i.cq, %i.df                    ; 3 uses
  %i.dh = trunc nuw i32 %i.dc to i8
  %i.di = or i8 %i.cz, %i.dh
  store i8 %i.di, ptr %i.cy, align 1, !tbaa !29
  %i.dj = add nuw i64 %.05063.i, 2                ; 2 uses
  %niter1275.next.1 = add i64 %niter1275, 2       ; 2 uses
  %niter1275.ncmp.1 = icmp eq i64 %niter1275.next.1, %unroll_iter1274
  br i1 %niter1275.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph64.i, !llvm.loop !60

._crit_edge75.i:                                  ; preds = %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %.noexc435
  %i.dk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !32
  invoke void %i.dk(ptr noundef %i.bz)
          to label %_ZN7meshoptL16buildSparseRemapEPjmmPmR17meshopt_Allocator.exit unwind label %bb.h, !inline_history !57

bb.f:                                             ; preds = %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %.lr.ph74.i
  %.073.i = phi i64 [ 0, %.lr.ph74.i ], [ %i.ei, %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ] ; 2 uses
  %.04971.i = phi i64 [ 0, %.lr.ph74.i ], [ %.1.i, %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.073.i ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !28 ; 3 uses
  %i.dn = mul i32 %i.dm, 1540483477
  %i.do = zext i32 %i.dn to i64
  %i.dp = and i64 %i.cd, %i.do                    ; 3 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !28 ; 2 uses
  %i.ds = icmp eq i32 %i.dr, -1
  br i1 %i.ds, label %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph69.i

.lr.ph69.i:                                       ; preds = %bb.f, %bb.g
  %.pr.i = phi i32 [ %i.eb, %bb.g ], [ %i.dr, %bb.f ] ; 2 uses
  %.02313.i67.i = phi i64 [ %i.dz, %bb.g ], [ %i.dp, %bb.f ]
  %.02214.i66.i = phi i64 [ %i.dx, %bb.g ], [ 0, %bb.f ]
  %i.dt = zext i32 %.pr.i to i64
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.dt
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !28
  %i.dw = icmp eq i32 %i.dv, %i.dm
  br i1 %i.dw, label %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph69.i
  %i.dx = add i64 %.02214.i66.i, 1                ; 3 uses
  %i.dy = add i64 %i.dx, %.02313.i67.i
  %i.dz = and i64 %i.dy, %i.cd                    ; 3 uses
  %.not.i.i = icmp ule i64 %i.dx, %i.cd
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %i.dz
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !28 ; 2 uses
  %i.ec = icmp eq i32 %i.eb, -1
  br i1 %i.ec, label %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph69.i

_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i: ; preds = %bb.g, %bb.f
  %.02313.i.lcssa65.i = phi i64 [ %i.dp, %bb.f ], [ %i.dz, %bb.g ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %.02313.i.lcssa65.i
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.04971.i
  store i32 %i.dm, ptr %i.ee, align 4, !tbaa !28
  %i.ef = trunc i64 %.04971.i to i32              ; 2 uses
  store i32 %i.ef, ptr %i.ed, align 4, !tbaa !28
  %i.eg = add i64 %.04971.i, 1
  br label %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i

_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i: ; preds = %.lr.ph69.i, %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i
  %i.eh = phi i32 [ %i.ef, %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ], [ %.pr.i, %.lr.ph69.i ]
  %.1.i = phi i64 [ %i.eg, %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ], [ %.04971.i, %.lr.ph69.i ]
  store i32 %i.eh, ptr %i.dl, align 4, !tbaa !28
  %i.ei = add nuw i64 %.073.i, 1                  ; 2 uses
  %exitcond81.not.i = icmp eq i64 %i.ei, %2
  br i1 %exitcond81.not.i, label %._crit_edge75.i, label %bb.f, !llvm.loop !61

_ZN7meshoptL16buildSparseRemapEPjmmPmR17meshopt_Allocator.exit: ; preds = %._crit_edge75.i
  %i.ej = load i64, ptr %i.j, align 8, !tbaa !26
  %i.ek = add i64 %i.ej, -1
  store i64 %i.ek, ptr %i.j, align 8, !tbaa !26
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge75.i, %_ZN7meshoptL12hashBuckets2Em.exit.i, %._crit_edge.thread.i, %bb.d
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.i:                                             ; preds = %_ZN7meshoptL16buildSparseRemapEPjmmPmR17meshopt_Allocator.exit, %bb.c
  %.0702 = phi i64 [ %4, %bb.c ], [ %.051.lcssa88.i, %_ZN7meshoptL16buildSparseRemapEPjmmPmR17meshopt_Allocator.exit ] ; 69 uses
  %.0379 = phi ptr [ null, %bb.c ], [ %i.bn, %_ZN7meshoptL16buildSparseRemapEPjmmPmR17meshopt_Allocator.exit ] ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.em = add i64 %.0702, 1                       ; 2 uses
  %i.en = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.eo = icmp ugt i64 %i.em, 4611686018427387903
  %i.ep = shl nuw i64 %i.em, 2
  %i.eq = select i1 %i.eo, i64 -1, i64 %i.ep
  %i.er = invoke noundef ptr %i.en(i64 noundef %i.eq)
          to label %.noexc437 unwind label %bb.bq, !inline_history !62 ; 19 uses

.noexc437:                                        ; preds = %bb.i
  %i.es = getelementptr inbounds nuw i8, ptr %16, i64 192 ; 39 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.eu = add nsw i64 %i.et, 1
  store i64 %i.eu, ptr %i.es, align 8, !tbaa !26
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.et
  store ptr %i.er, ptr %i.ev, align 8, !tbaa !27
  store ptr %i.er, ptr %17, align 8, !tbaa !36
  %i.ew = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.ex = icmp ugt i64 %2, 2305843009213693951
  %i.ey = shl nuw i64 %2, 3
  %i.ez = select i1 %i.ex, i64 -1, i64 %i.ey
  %i.fa = invoke noundef ptr %i.ew(i64 noundef %i.ez)
          to label %bb.j unwind label %bb.bq, !inline_history !62 ; 15 uses

bb.j:                                             ; preds = %.noexc437
  %i.fb = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.fc = add nsw i64 %i.fb, 1
  store i64 %i.fc, ptr %i.es, align 8, !tbaa !26
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.fb
  store ptr %i.fa, ptr %i.fd, align 8, !tbaa !27
  %i.fe = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.fa, ptr %i.fe, align 8, !tbaa !37
  %i.ff = udiv i64 %2, 3
  %i.fg = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 14 uses
  %i.fh = shl i64 %.0702, 2                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.fg, i8 0, i64 %i.fh, i1 false)
  %.not87.i = icmp eq i64 %2, 0                   ; 3 uses
  br i1 %.not87.i, label %.preheader80.i, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %bb.j
  %i.fi = add i64 %2, -1
  %xtraiter1276 = and i64 %2, 3                   ; 3 uses
  %i.fj = icmp ult i64 %i.fi, 3
  br i1 %i.fj, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter1280 = and i64 %2, -4
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %.07781.us.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.gl, %.lr.ph.split.us.i ] ; 5 uses
  %niter1281 = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter1281.next.3, %.lr.ph.split.us.i ]
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07781.us.i
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !28
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.fm ; 2 uses
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !28
  %i.fp = add i32 %i.fo, 1
  store i32 %i.fp, ptr %i.fn, align 4, !tbaa !28
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07781.us.i
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !28
  %i.ft = zext i32 %i.fs to i64
  %i.fu = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !28
  %i.fw = add i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !28
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07781.us.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !28
  %i.ga = zext i32 %i.fz to i64
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ga ; 2 uses
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !28
  %i.gd = add i32 %i.gc, 1
  store i32 %i.gd, ptr %i.gb, align 4, !tbaa !28
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07781.us.i
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 12
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !28
  %i.gh = zext i32 %i.gg to i64
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !28
  %i.gk = add i32 %i.gj, 1
  store i32 %i.gk, ptr %i.gi, align 4, !tbaa !28
  %i.gl = add nuw i64 %.07781.us.i, 4             ; 2 uses
  %niter1281.next.3 = add nuw i64 %niter1281, 4   ; 2 uses
  %niter1281.ncmp.3 = icmp eq i64 %niter1281.next.3, %unroll_iter1280
  br i1 %niter1281.ncmp.3, label %.preheader80.i.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !1

.preheader80.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.i
  %lcmp.mod1278.not = icmp eq i64 %xtraiter1276, 0
  br i1 %lcmp.mod1278.not, label %.preheader80.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %.preheader80.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %.07781.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.gl, %.preheader80.i.loopexit.unr-lcssa ]
  %lcmp.mod1279 = icmp ne i64 %xtraiter1276, 0
  tail call void @llvm.assume(i1 %lcmp.mod1279)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %.07781.us.i.epil = phi i64 [ %i.gs, %.lr.ph.split.us.i.epil ], [ %.07781.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %epil.iter1277 = phi i64 [ %epil.iter1277.next, %.lr.ph.split.us.i.epil ], [ 0, %.lr.ph.split.us.i.epil.preheader ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07781.us.i.epil
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !28
  %i.go = zext i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.go ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !28
  %i.gr = add i32 %i.gq, 1
  store i32 %i.gr, ptr %i.gp, align 4, !tbaa !28
  %i.gs = add nuw i64 %.07781.us.i.epil, 1
  %epil.iter1277.next = add i64 %epil.iter1277, 1 ; 2 uses
  %epil.iter1277.cmp.not = icmp eq i64 %epil.iter1277.next, %xtraiter1276
  br i1 %epil.iter1277.cmp.not, label %.preheader80.i, label %.lr.ph.split.us.i.epil, !llvm.loop !63

.preheader80.i:                                   ; preds = %.preheader80.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.epil, %bb.j
  %.not88.i = icmp eq i64 %.0702, 0               ; 8 uses
  br i1 %.not88.i, label %.preheader.i, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %.preheader80.i
  %i.gt = add i64 %.0702, -1
  %xtraiter1282 = and i64 %.0702, 3               ; 3 uses
  %i.gu = icmp ult i64 %i.gt, 3
  br i1 %i.gu, label %.lr.ph84.i.epil.preheader, label %.lr.ph84.i.preheader.new

.lr.ph84.i.preheader.new:                         ; preds = %.lr.ph84.i.preheader
  %unroll_iter1286 = and i64 %.0702, -4
  br label %.lr.ph84.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph84.i
  %lcmp.mod1284.not = icmp eq i64 %xtraiter1282, 0
  br i1 %lcmp.mod1284.not, label %.preheader.i, label %.lr.ph84.i.epil.preheader

.lr.ph84.i.epil.preheader:                        ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph84.i.preheader
  %.07583.i.epil.init = phi i64 [ 0, %.lr.ph84.i.preheader ], [ %i.ho, %.preheader.i.loopexit.unr-lcssa ]
  %.07682.i.epil.init = phi i32 [ 0, %.lr.ph84.i.preheader ], [ %i.hn, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod1285 = icmp ne i64 %xtraiter1282, 0
  tail call void @llvm.assume(i1 %lcmp.mod1285)
  br label %.lr.ph84.i.epil

.lr.ph84.i.epil:                                  ; preds = %.lr.ph84.i.epil, %.lr.ph84.i.epil.preheader
  %.07583.i.epil = phi i64 [ %i.gy, %.lr.ph84.i.epil ], [ %.07583.i.epil.init, %.lr.ph84.i.epil.preheader ] ; 2 uses
  %.07682.i.epil = phi i32 [ %i.gx, %.lr.ph84.i.epil ], [ %.07682.i.epil.init, %.lr.ph84.i.epil.preheader ] ; 2 uses
  %epil.iter1283 = phi i64 [ %epil.iter1283.next, %.lr.ph84.i.epil ], [ 0, %.lr.ph84.i.epil.preheader ]
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.07583.i.epil ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !28
  store i32 %.07682.i.epil, ptr %i.gv, align 4, !tbaa !28
  %i.gx = add i32 %i.gw, %.07682.i.epil
  %i.gy = add nuw i64 %.07583.i.epil, 1
  %epil.iter1283.next = add i64 %epil.iter1283, 1 ; 2 uses
  %epil.iter1283.cmp.not = icmp eq i64 %epil.iter1283.next, %xtraiter1282
  br i1 %epil.iter1283.cmp.not, label %.preheader.i, label %.lr.ph84.i.epil, !llvm.loop !64

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph84.i.epil, %.preheader80.i
  %.not89.i = icmp ult i64 %2, 3
  br i1 %.not89.i, label %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit, label %.lr.ph86.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i, %.lr.ph84.i.preheader.new
  %.07583.i = phi i64 [ 0, %.lr.ph84.i.preheader.new ], [ %i.ho, %.lr.ph84.i ] ; 5 uses
  %.07682.i = phi i32 [ 0, %.lr.ph84.i.preheader.new ], [ %i.hn, %.lr.ph84.i ] ; 2 uses
  %niter1287 = phi i64 [ 0, %.lr.ph84.i.preheader.new ], [ %niter1287.next.3, %.lr.ph84.i ]
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.07583.i ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !28
  store i32 %.07682.i, ptr %i.gz, align 4, !tbaa !28
  %i.hb = add i32 %i.ha, %.07682.i                ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.07583.i
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 4 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !28
  store i32 %i.hb, ptr %i.hd, align 4, !tbaa !28
  %i.hf = add i32 %i.he, %i.hb                    ; 2 uses
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.07583.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !28
  store i32 %i.hf, ptr %i.hh, align 4, !tbaa !28
  %i.hj = add i32 %i.hi, %i.hf                    ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %.07583.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 12 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !28
  store i32 %i.hj, ptr %i.hl, align 4, !tbaa !28
  %i.hn = add i32 %i.hm, %i.hj                    ; 2 uses
  %i.ho = add nuw i64 %.07583.i, 4                ; 2 uses
  %niter1287.next.3 = add nuw i64 %niter1287, 4   ; 2 uses
  %niter1287.ncmp.3 = icmp eq i64 %niter1287.next.3, %unroll_iter1286
  br i1 %niter1287.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph84.i, !llvm.loop !2

.lr.ph86.i:                                       ; preds = %.preheader.i, %.lr.ph86.i
  %.07485.i = phi i64 [ %i.jc, %.lr.ph86.i ], [ 0, %.preheader.i ] ; 2 uses
  %.idx.i = mul nuw i64 %.07485.i, 12
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 3 uses
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !28 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !28 ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !28 ; 3 uses
  %i.hv = zext i32 %i.hq to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.hv ; 4 uses
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !28
  %i.hy = zext i32 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.hy
  store i32 %i.hs, ptr %i.hz, align 4, !tbaa !39
  %i.ia = load i32, ptr %i.hw, align 4, !tbaa !28
  %i.ib = zext i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ib
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4
  store i32 %i.hu, ptr %i.id, align 4, !tbaa !40
  %i.ie = load i32, ptr %i.hw, align 4, !tbaa !28
  %i.if = add i32 %i.ie, 1
  store i32 %i.if, ptr %i.hw, align 4, !tbaa !28
  %i.ig = zext i32 %i.hs to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ig ; 4 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !28
  %i.ij = zext i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ij
  store i32 %i.hu, ptr %i.ik, align 4, !tbaa !39
  %i.il = load i32, ptr %i.ih, align 4, !tbaa !28
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 4
  store i32 %i.hq, ptr %i.io, align 4, !tbaa !40
  %i.ip = load i32, ptr %i.ih, align 4, !tbaa !28
  %i.iq = add i32 %i.ip, 1
  store i32 %i.iq, ptr %i.ih, align 4, !tbaa !28
  %i.ir = zext i32 %i.hu to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %i.ir ; 4 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !28
  %i.iu = zext i32 %i.it to i64
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.iu
  store i32 %i.hq, ptr %i.iv, align 4, !tbaa !39
  %i.iw = load i32, ptr %i.is, align 4, !tbaa !28
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 4
  store i32 %i.hs, ptr %i.iz, align 4, !tbaa !40
  %i.ja = load i32, ptr %i.is, align 4, !tbaa !28
  %i.jb = add i32 %i.ja, 1
  store i32 %i.jb, ptr %i.is, align 4, !tbaa !28
  %i.jc = add nuw nsw i64 %.07485.i, 1            ; 2 uses
  %exitcond93.not.i = icmp eq i64 %i.jc, %i.ff
  br i1 %exitcond93.not.i, label %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit, label %.lr.ph86.i, !llvm.loop !3

_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit: ; preds = %.lr.ph86.i, %.preheader.i
  store i32 0, ptr %i.er, align 4, !tbaa !28
  %i.jd = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.je = icmp ugt i64 %.0702, 4611686018427387903
  %i.jf = select i1 %i.je, i64 -1, i64 %i.fh      ; 6 uses
  %i.jg = invoke noundef ptr %i.jd(i64 noundef %i.jf)
          to label %bb.k unwind label %bb.br, !inline_history !4 ; 58 uses

bb.k:                                             ; preds = %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit
  %i.jh = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.ji = add nsw i64 %i.jh, 1
  store i64 %i.ji, ptr %i.es, align 8, !tbaa !26
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.jh
  store ptr %i.jg, ptr %i.jj, align 8, !tbaa !27
  %i.jk = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.jl = invoke noundef ptr %i.jk(i64 noundef %i.jf)
          to label %bb.l unwind label %bb.bs, !inline_history !4 ; 23 uses

bb.l:                                             ; preds = %bb.k
  %i.jm = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.jn = add nsw i64 %i.jm, 1
  store i64 %i.jn, ptr %i.es, align 8, !tbaa !26
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.jm
  store ptr %i.jl, ptr %i.jo, align 8, !tbaa !27
  invoke fastcc void @_ZN7meshoptL18buildPositionRemapEPjS0_PKfmmPKjR17meshopt_Allocator(ptr noundef %i.jg, ptr noundef %i.jl, ptr noundef %3, i64 noundef %.0702, i64 noundef %5, ptr noundef %.0379, ptr noundef nonnull align 8 dereferenceable(200) %16)
          to label %bb.m unwind label %bb.bs

bb.m:                                             ; preds = %bb.l
  %i.jp = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.jq = invoke noundef ptr %i.jp(i64 noundef %.0702)
          to label %bb.n unwind label %bb.bt, !inline_history !65 ; 87 uses

bb.n:                                             ; preds = %bb.m
  %i.jr = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.js = add nsw i64 %i.jr, 1
  store i64 %i.js, ptr %i.es, align 8, !tbaa !26
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.jr
  store ptr %i.jq, ptr %i.jt, align 8, !tbaa !27
  %i.ju = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.jv = invoke noundef ptr %i.ju(i64 noundef %i.jf)
          to label %bb.o unwind label %bb.bu, !inline_history !4 ; 22 uses

bb.o:                                             ; preds = %bb.n
  %i.jw = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.jx = add nsw i64 %i.jw, 1
  store i64 %i.jx, ptr %i.es, align 8, !tbaa !26
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.jw
  store ptr %i.jv, ptr %i.jy, align 8, !tbaa !27
  %i.jz = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.ka = invoke noundef ptr %i.jz(i64 noundef %i.jf)
          to label %bb.p unwind label %bb.bv, !inline_history !4 ; 21 uses

bb.p:                                             ; preds = %bb.o
  %i.kb = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.kc = add nsw i64 %i.kb, 1
  store i64 %i.kc, ptr %i.es, align 8, !tbaa !26
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.kb
  store ptr %i.ka, ptr %i.kd, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jv, i8 -1, i64 %i.fh, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ka, i8 -1, i64 %i.fh, i1 false)
  br i1 %.not88.i, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %.lr.ph296.i

.loopexit292.i:                                   ; preds = %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i, %.lr.ph296.i
  %exitcond343.not.i = icmp eq i64 %i.kf, %.0702
  br i1 %exitcond343.not.i, label %.lr.ph298.i, label %.lr.ph296.i, !llvm.loop !66

.lr.ph296.i:                                      ; preds = %bb.p, %.loopexit292.i
  %.0231295.i = phi i64 [ %i.kf, %.loopexit292.i ], [ 0, %bb.p ] ; 3 uses
  %i.ke = trunc i64 %.0231295.i to i32            ; 6 uses
  %i.kf = add nuw i64 %.0231295.i, 1              ; 3 uses
  %i.kg = and i64 %i.kf, 4294967295
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !28 ; 2 uses
  %i.kj = and i64 %.0231295.i, 4294967295         ; 3 uses
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.kj
  %i.kl = load i32, ptr %i.kk, align 4, !tbaa !28 ; 3 uses
  %i.km = sub i32 %i.ki, %i.kl
  %i.kn = zext i32 %i.kl to i64
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.kn
  %i.kp = zext i32 %i.km to i64
  %.not327.i = icmp eq i32 %i.ki, %i.kl
  br i1 %.not327.i, label %.loopexit292.i, label %.lr.ph.i450

.lr.ph.i450:                                      ; preds = %.lr.ph296.i
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.kj ; 3 uses
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.kj
  br label %bb.q

bb.q:                                             ; preds = %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i, %.lr.ph.i450
  %.0230294.i = phi i64 [ 0, %.lr.ph.i450 ], [ %i.lr, %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %i.ko, i64 %.0230294.i
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !39 ; 5 uses
  %i.ku = icmp eq i32 %i.kt, %i.ke
  br i1 %i.ku, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.ke, ptr %i.kq, align 4, !tbaa !28
  store i32 %i.ke, ptr %i.kr, align 4, !tbaa !28
  br label %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i

bb.s:                                             ; preds = %bb.q
  %i.kv = add i32 %i.kt, 1
  %i.kw = zext i32 %i.kv to i64
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.kw
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !28 ; 2 uses
  %i.kz = zext i32 %i.kt to i64                   ; 2 uses
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.kz
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !28 ; 3 uses
  %i.lc = sub i32 %i.ky, %i.lb
  %i.ld = zext i32 %i.lb to i64
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.fa, i64 %i.ld
  %i.lf = zext i32 %i.lc to i64
  %.not1.not.i.i = icmp eq i32 %i.ky, %i.lb
  br i1 %.not1.not.i.i, label %.loopexit291.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.lg = add nuw nsw i64 %.0142.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.lg, %i.lf
  br i1 %exitcond.not.i.i, label %.loopexit291.i, label %.lr.ph.i.i, !llvm.loop !67

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.t
  %.0142.i.i = phi i64 [ %i.lg, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.lh = getelementptr inbounds nuw [8 x i8], ptr %i.le, i64 %.0142.i.i
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !39
  %i.lj = icmp eq i32 %i.li, %i.ke
  br i1 %i.lj, label %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i, label %bb.t

.loopexit291.i:                                   ; preds = %bb.t, %bb.s
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.kz ; 2 uses
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !28
  %i.lm = icmp eq i32 %i.ll, -1
  %i.ln = select i1 %i.lm, i32 %i.ke, i32 %i.kt
  store i32 %i.ln, ptr %i.lk, align 4, !tbaa !28
  %i.lo = load i32, ptr %i.kq, align 4, !tbaa !28
  %i.lp = icmp eq i32 %i.lo, -1
  %i.lq = select i1 %i.lp, i32 %i.kt, i32 %i.ke
  store i32 %i.lq, ptr %i.kq, align 4, !tbaa !28
  br label %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i

_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i: ; preds = %.lr.ph.i.i, %.loopexit291.i, %bb.r
  %i.lr = add nuw nsw i64 %.0230294.i, 1          ; 2 uses
  %exitcond.not.i451 = icmp eq i64 %i.lr, %i.kp
  br i1 %exitcond.not.i451, label %.loopexit292.i, label %bb.q, !llvm.loop !68

._crit_edge.i452:                                 ; preds = %bb.ap
  %i.ls = and i32 %13, 32
  %.not.not.i = icmp eq i32 %i.ls, 0
  br i1 %.not.not.i, label %.loopexit289.i, label %.lr.ph317.i

.lr.ph317.i:                                      ; preds = %._crit_edge.i452
  %.not260.i = icmp eq ptr %.0379, null           ; 2 uses
  %.not261.i = icmp eq ptr %10, null
  br label %bb.aq

.lr.ph298.i:                                      ; preds = %.loopexit292.i, %bb.ap
  %.0229297.i = phi i64 [ %i.oh, %bb.ap ], [ 0, %.loopexit292.i ] ; 23 uses
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.0229297.i
  %i.lu = load i32, ptr %i.lt, align 4, !tbaa !28
  %i.lv = zext i32 %i.lu to i64                   ; 2 uses
  %i.lw = icmp eq i64 %.0229297.i, %i.lv
  br i1 %i.lw, label %bb.u, label %bb.ao

bb.u:                                             ; preds = %.lr.ph298.i
  %i.lx = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %.0229297.i
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !28 ; 3 uses
  %i.lz = zext i32 %i.ly to i64                   ; 4 uses
  %i.ma = icmp eq i64 %.0229297.i, %i.lz
  br i1 %i.ma, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.0229297.i
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !28 ; 3 uses
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.0229297.i
  %i.me = load i32, ptr %i.md, align 4, !tbaa !28 ; 4 uses
  %i.mf = icmp eq i32 %i.mc, -1
  %i.mg = icmp eq i32 %i.me, -1
  %or.cond.i = select i1 %i.mf, i1 %i.mg, i1 false
  br i1 %or.cond.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.mh = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0229297.i
  store i8 0, ptr %i.mh, align 1, !tbaa !29
  br label %bb.ap

bb.x:                                             ; preds = %bb.v
  %i.mi = icmp ne i32 %i.mc, -1
  %i.mj = icmp ne i32 %i.me, -1
  %or.cond3.i = select i1 %i.mi, i1 %i.mj, i1 false
  %i.mk = zext i32 %i.mc to i64                   ; 3 uses
  br i1 %or.cond3.i, label %bb.y, label %._crit_edge351.i

._crit_edge351.i:                                 ; preds = %bb.x
  %.pre352.i = zext i32 %i.me to i64
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.ml = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.mk
  %i.mm = load i32, ptr %i.ml, align 4, !tbaa !28
  %i.mn = zext i32 %i.me to i64                   ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.mn
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !28
  %i.mq = icmp ne i32 %i.mm, %i.mp
  %.not267.i = icmp eq i64 %.0229297.i, %i.mk
  %or.cond270.i = or i1 %.not267.i, %i.mq
  br i1 %or.cond270.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0229297.i
  store i8 2, ptr %i.mr, align 1, !tbaa !29
  br label %bb.ap

bb.aa:                                            ; preds = %bb.y, %._crit_edge351.i
  %.pre-phi353.i = phi i64 [ %.pre352.i, %._crit_edge351.i ], [ %i.mn, %bb.y ]
  %.not268.i = icmp eq i64 %.0229297.i, %i.mk
  %.not269.i = icmp eq i64 %.0229297.i, %.pre-phi353.i
  %or.cond271.i = select i1 %.not268.i, i1 true, i1 %.not269.i
  %i.ms = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0229297.i ; 2 uses
  br i1 %or.cond271.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.ms, align 1, !tbaa !29
  br label %bb.ap

bb.ac:                                            ; preds = %bb.aa
  store i8 4, ptr %i.ms, align 1, !tbaa !29
  br label %bb.ap

bb.ad:                                            ; preds = %bb.u
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.jl, i64 %i.lz
  %i.mu = load i32, ptr %i.mt, align 4, !tbaa !28
  %i.mv = zext i32 %i.mu to i64
  %i.mw = icmp eq i64 %.0229297.i, %i.mv
  br i1 %i.mw, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %.0229297.i
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !28 ; 2 uses
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.0229297.i
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !28 ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.lz
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !28 ; 3 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.lz
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !28 ; 3 uses
  %.not264.i = icmp eq i32 %i.my, -1
  br i1 %.not264.i, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.nf = zext i32 %i.my to i64                   ; 2 uses
  %i.ng = icmp ne i64 %.0229297.i, %i.nf
  %i.nh = icmp ne i32 %i.na, -1
  %or.cond5.i = select i1 %i.ng, i1 %i.nh, i1 false
  br i1 %or.cond5.i, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.ni = zext i32 %i.na to i64                   ; 2 uses
end_hunk_0
begin_hunk_1_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a

pred.store.continue1150:                          ; preds = %pred.store.if1149, %pred.store.continue1148
  %i.xt = extractelement <16 x i1> %i.uu, i64 10
  br i1 %i.xt, label %pred.store.if1151, label %pred.store.continue1152

pred.store.if1151:                                ; preds = %pred.store.continue1150
  %i.xu = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 26
  store i8 4, ptr %i.xv, align 1, !tbaa !29
  br label %pred.store.continue1152

pred.store.continue1152:                          ; preds = %pred.store.if1151, %pred.store.continue1150
  %i.xw = extractelement <16 x i1> %i.uu, i64 11
  br i1 %i.xw, label %pred.store.if1153, label %pred.store.continue1154

pred.store.if1153:                                ; preds = %pred.store.continue1152
  %i.xx = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 27
  store i8 4, ptr %i.xy, align 1, !tbaa !29
  br label %pred.store.continue1154

pred.store.continue1154:                          ; preds = %pred.store.if1153, %pred.store.continue1152
  %i.xz = extractelement <16 x i1> %i.uu, i64 12
  br i1 %i.xz, label %pred.store.if1155, label %pred.store.continue1156

pred.store.if1155:                                ; preds = %pred.store.continue1154
  %i.ya = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 28
  store i8 4, ptr %i.yb, align 1, !tbaa !29
  br label %pred.store.continue1156

pred.store.continue1156:                          ; preds = %pred.store.if1155, %pred.store.continue1154
  %i.yc = extractelement <16 x i1> %i.uu, i64 13
  br i1 %i.yc, label %pred.store.if1157, label %pred.store.continue1158

pred.store.if1157:                                ; preds = %pred.store.continue1156
  %i.yd = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 29
  store i8 4, ptr %i.ye, align 1, !tbaa !29
  br label %pred.store.continue1158

pred.store.continue1158:                          ; preds = %pred.store.if1157, %pred.store.continue1156
  %i.yf = extractelement <16 x i1> %i.uu, i64 14
  br i1 %i.yf, label %pred.store.if1159, label %pred.store.continue1160

pred.store.if1159:                                ; preds = %pred.store.continue1158
  %i.yg = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yg, i64 30
  store i8 4, ptr %i.yh, align 1, !tbaa !29
  br label %pred.store.continue1160

pred.store.continue1160:                          ; preds = %pred.store.if1159, %pred.store.continue1158
  %i.yi = extractelement <16 x i1> %i.uu, i64 15
  br i1 %i.yi, label %pred.store.if1161, label %pred.store.continue1162

pred.store.if1161:                                ; preds = %pred.store.continue1160
  %i.yj = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index
  %i.yk = getelementptr inbounds nuw i8, ptr %i.yj, i64 31
  store i8 4, ptr %i.yk, align 1, !tbaa !29
  br label %pred.store.continue1162

pred.store.continue1162:                          ; preds = %pred.store.if1161, %pred.store.continue1160
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.yl = icmp eq i64 %index.next, %n.vec
  br i1 %i.yl, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %pred.store.continue1162
  %cmp.n = icmp eq i64 %.0702, %n.vec
  br i1 %cmp.n, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.uq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph323.i.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1163 = and i64 %.0702, -8                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue1181, %vec.epilog.ph
  %index1164 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1182, %pred.store.continue1181 ] ; 9 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164 ; 2 uses
  %wide.load1165 = load <8 x i8>, ptr %i.ym, align 1, !tbaa !29
  %i.yn = icmp eq <8 x i8> %wide.load1165, splat (i8 1) ; 8 uses
  %i.yo = extractelement <8 x i1> %i.yn, i64 0
  br i1 %i.yo, label %pred.store.if1166, label %pred.store.continue1167

pred.store.if1166:                                ; preds = %vec.epilog.vector.body
  store i8 4, ptr %i.ym, align 1, !tbaa !29
  br label %pred.store.continue1167

pred.store.continue1167:                          ; preds = %pred.store.if1166, %vec.epilog.vector.body
  %i.yp = extractelement <8 x i1> %i.yn, i64 1
  br i1 %i.yp, label %pred.store.if1168, label %pred.store.continue1169

pred.store.if1168:                                ; preds = %pred.store.continue1167
  %i.yq = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 1
  store i8 4, ptr %i.yr, align 1, !tbaa !29
  br label %pred.store.continue1169

pred.store.continue1169:                          ; preds = %pred.store.if1168, %pred.store.continue1167
  %i.ys = extractelement <8 x i1> %i.yn, i64 2
  br i1 %i.ys, label %pred.store.if1170, label %pred.store.continue1171

pred.store.if1170:                                ; preds = %pred.store.continue1169
  %i.yt = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 2
  store i8 4, ptr %i.yu, align 1, !tbaa !29
  br label %pred.store.continue1171

pred.store.continue1171:                          ; preds = %pred.store.if1170, %pred.store.continue1169
  %i.yv = extractelement <8 x i1> %i.yn, i64 3
  br i1 %i.yv, label %pred.store.if1172, label %pred.store.continue1173

pred.store.if1172:                                ; preds = %pred.store.continue1171
  %i.yw = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 3
  store i8 4, ptr %i.yx, align 1, !tbaa !29
  br label %pred.store.continue1173

pred.store.continue1173:                          ; preds = %pred.store.if1172, %pred.store.continue1171
  %i.yy = extractelement <8 x i1> %i.yn, i64 4
  br i1 %i.yy, label %pred.store.if1174, label %pred.store.continue1175

pred.store.if1174:                                ; preds = %pred.store.continue1173
  %i.yz = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 4
  store i8 4, ptr %i.za, align 1, !tbaa !29
  br label %pred.store.continue1175

pred.store.continue1175:                          ; preds = %pred.store.if1174, %pred.store.continue1173
  %i.zb = extractelement <8 x i1> %i.yn, i64 5
  br i1 %i.zb, label %pred.store.if1176, label %pred.store.continue1177

pred.store.if1176:                                ; preds = %pred.store.continue1175
  %i.zc = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 5
  store i8 4, ptr %i.zd, align 1, !tbaa !29
  br label %pred.store.continue1177

pred.store.continue1177:                          ; preds = %pred.store.if1176, %pred.store.continue1175
  %i.ze = extractelement <8 x i1> %i.yn, i64 6
  br i1 %i.ze, label %pred.store.if1178, label %pred.store.continue1179

pred.store.if1178:                                ; preds = %pred.store.continue1177
  %i.zf = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 6
  store i8 4, ptr %i.zg, align 1, !tbaa !29
  br label %pred.store.continue1179

pred.store.continue1179:                          ; preds = %pred.store.if1178, %pred.store.continue1177
  %i.zh = extractelement <8 x i1> %i.yn, i64 7
  br i1 %i.zh, label %pred.store.if1180, label %pred.store.continue1181

pred.store.if1180:                                ; preds = %pred.store.continue1179
  %i.zi = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1164
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 7
  store i8 4, ptr %i.zj, align 1, !tbaa !29
  br label %pred.store.continue1181

pred.store.continue1181:                          ; preds = %pred.store.if1180, %pred.store.continue1179
  %index.next1182 = add nuw i64 %index1164, 8     ; 2 uses
  %i.zk = icmp eq i64 %index.next1182, %n.vec1163
  br i1 %i.zk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !79

vec.epilog.middle.block:                          ; preds = %pred.store.continue1181
  %cmp.n1183 = icmp eq i64 %.0702, %n.vec1163
  br i1 %cmp.n1183, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %.lr.ph323.i.preheader

.lr.ph323.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0322.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1163, %vec.epilog.middle.block ]
  br label %.lr.ph323.i

.lr.ph323.i:                                      ; preds = %.lr.ph323.i.preheader, %bb.bn
  %.0322.i = phi i64 [ %i.zo, %bb.bn ], [ %.0322.i.ph, %.lr.ph323.i.preheader ] ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0322.i ; 2 uses
  %i.zm = load i8, ptr %i.zl, align 1, !tbaa !29
  %i.zn = icmp eq i8 %i.zm, 1
  br i1 %i.zn, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph323.i
  store i8 4, ptr %i.zl, align 1, !tbaa !29
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph323.i
  %i.zo = add nuw i64 %.0322.i, 1                 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %i.zo, %.0702
  br i1 %exitcond350.not.i, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %.lr.ph323.i, !llvm.loop !80

_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit: ; preds = %bb.bn, %middle.block, %vec.epilog.middle.block, %bb.p, %.loopexit284.i
  %i.zp = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.zq = icmp ugt i64 %.0702, 1537228672809129301
  %i.zr = mul nuw i64 %.0702, 12
  %i.zs = select i1 %i.zq, i64 -1, i64 %i.zr
  %i.zt = invoke noundef ptr %i.zp(i64 noundef %i.zs)
          to label %bb.bo unwind label %bb.bw, !inline_history !5 ; 37 uses

bb.bo:                                            ; preds = %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit
  %i.zu = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.zv = add nsw i64 %i.zu, 1
  store i64 %i.zv, ptr %i.es, align 8, !tbaa !26
  %i.zw = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.zu
  store ptr %i.zt, ptr %i.zw, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  %i.zx = call fastcc noundef float @_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf(ptr noundef %i.zt, ptr noundef %3, i64 noundef %.0702, i64 noundef %5, ptr noundef %.0379, ptr noundef nonnull %i.b) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %.not402 = icmp eq i64 %9, 0
  br i1 %.not402, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.preheader729.preheader

.preheader729.preheader:                          ; preds = %bb.bo
  %xtraiter1306 = and i64 %9, 1
  %i.zy = icmp eq i64 %9, 1
  br i1 %i.zy, label %.preheader729.epil.preheader, label %.preheader729.preheader.new

.preheader729.preheader.new:                      ; preds = %.preheader729.preheader
  %unroll_iter1311 = and i64 %9, -2
  br label %.preheader729

.unr-lcssa:                                       ; preds = %bb.bz
  %lcmp.mod1308.not = icmp eq i64 %xtraiter1306, 0
  br i1 %lcmp.mod1308.not, label %.epilog-lcssa, label %.preheader729.epil.preheader

.preheader729.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader729.preheader
  %.0349774.epil.init = phi i64 [ 0, %.preheader729.preheader ], [ %i.abf, %.unr-lcssa ] ; 2 uses
  %.0350773.epil.init = phi i64 [ 0, %.preheader729.preheader ], [ %.1351.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod1310 = trunc i64 %9 to i1
  call void @llvm.assume(i1 %lcmp.mod1310)
  %i.zz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.0349774.epil.init
  %i.aaa = load float, ptr %i.zz, align 4, !tbaa !44
  %i.aab = fcmp ogt float %i.aaa, 0.000000e+00
  br i1 %i.aab, label %bb.bp, label %.epilog-lcssa

bb.bp:                                            ; preds = %.preheader729.epil.preheader
  %i.aac = trunc i64 %.0349774.epil.init to i32
  %i.aad = add nsw i64 %.0350773.epil.init, 1
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0350773.epil.init
  store i32 %i.aac, ptr %i.aae, align 4, !tbaa !28
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.preheader729.epil.preheader, %bb.bp, %.unr-lcssa
  %.1351.lcssa = phi i64 [ %.1351.1, %.unr-lcssa ], [ %i.aad, %bb.bp ], [ %.0350773.epil.init, %.preheader729.epil.preheader ] ; 15 uses
  %i.aaf = mul i64 %.1351.lcssa, %.0702           ; 2 uses
  %i.aag = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.aah = icmp ugt i64 %i.aaf, 4611686018427387903
  %i.aai = shl nuw i64 %i.aaf, 2
  %i.aaj = select i1 %i.aah, i64 -1, i64 %i.aai
  %i.aak = invoke noundef ptr %i.aag(i64 noundef %i.aaj)
          to label %bb.ca unwind label %bb.cb, !inline_history !6 ; 7 uses

bb.bq:                                            ; preds = %.noexc437, %bb.i
  %i.aal = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.br:                                            ; preds = %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit
  %i.aam = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bs:                                            ; preds = %bb.k, %bb.l
  %i.aan = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bt:                                            ; preds = %bb.m
  %i.aao = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bu:                                            ; preds = %bb.n
  %i.aap = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bv:                                            ; preds = %bb.o
  %i.aaq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bw:                                            ; preds = %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit
  %i.aar = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

.preheader729:                                    ; preds = %bb.bz, %.preheader729.preheader.new
  %.0349774 = phi i64 [ 0, %.preheader729.preheader.new ], [ %i.abf, %bb.bz ] ; 4 uses
  %.0350773 = phi i64 [ 0, %.preheader729.preheader.new ], [ %.1351.1, %bb.bz ] ; 3 uses
  %niter1312 = phi i64 [ 0, %.preheader729.preheader.new ], [ %niter1312.next.1, %bb.bz ]
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.0349774
  %i.aat = load float, ptr %i.aas, align 4, !tbaa !44
  %i.aau = fcmp ogt float %i.aat, 0.000000e+00
  br i1 %i.aau, label %bb.bx, label %.preheader729.1

bb.bx:                                            ; preds = %.preheader729
  %i.aav = trunc i64 %.0349774 to i32
  %i.aaw = add nsw i64 %.0350773, 1
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0350773
  store i32 %i.aav, ptr %i.aax, align 4, !tbaa !28
  br label %.preheader729.1

.preheader729.1:                                  ; preds = %.preheader729, %bb.bx
  %.1351 = phi i64 [ %i.aaw, %bb.bx ], [ %.0350773, %.preheader729 ] ; 3 uses
  %i.aay = or disjoint i64 %.0349774, 1           ; 2 uses
  %i.aaz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.aay
  %i.aba = load float, ptr %i.aaz, align 4, !tbaa !44
  %i.abb = fcmp ogt float %i.aba, 0.000000e+00
  br i1 %i.abb, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.preheader729.1
  %i.abc = trunc i64 %i.aay to i32
  %i.abd = add nsw i64 %.1351, 1
  %i.abe = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.1351
  store i32 %i.abc, ptr %i.abe, align 4, !tbaa !28
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.preheader729.1
  %.1351.1 = phi i64 [ %i.abd, %bb.by ], [ %.1351, %.preheader729.1 ] ; 3 uses
  %i.abf = add nuw i64 %.0349774, 2               ; 2 uses
  %niter1312.next.1 = add nuw i64 %niter1312, 2   ; 2 uses
  %niter1312.ncmp.1 = icmp eq i64 %niter1312.next.1, %unroll_iter1311
  br i1 %niter1312.ncmp.1, label %.unr-lcssa, label %.preheader729, !llvm.loop !81

bb.ca:                                            ; preds = %.epilog-lcssa
  %i.abg = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.abh = add nsw i64 %i.abg, 1
  store i64 %i.abh, ptr %i.es, align 8, !tbaa !26
  %i.abi = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.abg
  store ptr %i.aak, ptr %i.abi, align 8, !tbaa !27
  %i.abj = lshr i64 %7, 2                         ; 2 uses
  br i1 %.not88.i, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %bb.ca
  %.not33.i = icmp eq i64 %.1351.lcssa, 0
  br i1 %.not33.i, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.lr.ph29.split.us.i

.lr.ph29.split.us.i:                              ; preds = %.lr.ph29.i
  %.not.i458 = icmp eq ptr %.0379, null
  br i1 %.not.i458, label %.lr.ph.us.us.i.preheader, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph29.split.us.i
  %xtraiter1313 = and i64 %.1351.lcssa, 1
  %i.abk = icmp eq i64 %.1351.lcssa, 1
  %unroll_iter1317 = and i64 %.1351.lcssa, -2
  %lcmp.mod1315.not = icmp eq i64 %xtraiter1313, 0
  %lcmp.mod1316 = trunc i64 %.1351.lcssa to i1
  br label %.lr.ph.us.i

.lr.ph.us.us.i.preheader:                         ; preds = %.lr.ph29.split.us.i
  %xtraiter1320 = and i64 %.1351.lcssa, 1
  %i.abl = icmp eq i64 %.1351.lcssa, 1
  %unroll_iter1324 = and i64 %.1351.lcssa, -2
  %lcmp.mod1322.not = icmp eq i64 %xtraiter1320, 0
  %lcmp.mod1323 = trunc i64 %.1351.lcssa to i1
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph.us.us.i.preheader, %._crit_edge.us.us.i
  %.027.us.us.i = phi i64 [ %i.acu, %._crit_edge.us.us.i ], [ 0, %.lr.ph.us.us.i.preheader ] ; 3 uses
  %i.abm = and i64 %.027.us.us.i, 4294967295
  %i.abn = mul i64 %i.abm, %i.abj
  %i.abo = getelementptr [4 x i8], ptr %6, i64 %i.abn ; 3 uses
  %i.abp = mul i64 %.027.us.us.i, %.1351.lcssa
  %i.abq = getelementptr [4 x i8], ptr %i.aak, i64 %i.abp ; 3 uses
  br i1 %i.abl, label %.epil.preheader1319, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %.02326.us.us.i = phi i64 [ %i.ack, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 4 uses
  %niter1325 = phi i64 [ %niter1325.next.1, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.abr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02326.us.us.i
  %i.abs = load i32, ptr %i.abr, align 8, !tbaa !28
  %i.abt = zext i32 %i.abs to i64                 ; 2 uses
  %i.abu = getelementptr [4 x i8], ptr %i.abo, i64 %i.abt
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !44
  %i.abw = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.abt
  %i.abx = load float, ptr %i.abw, align 4, !tbaa !44
  %i.aby = fmul float %i.abv, %i.abx
  %i.abz = getelementptr [4 x i8], ptr %i.abq, i64 %.02326.us.us.i
  store float %i.aby, ptr %i.abz, align 4, !tbaa !44
  %i.aca = or disjoint i64 %.02326.us.us.i, 1     ; 2 uses
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aca
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !28
  %i.acd = zext i32 %i.acc to i64                 ; 2 uses
  %i.ace = getelementptr [4 x i8], ptr %i.abo, i64 %i.acd
  %i.acf = load float, ptr %i.ace, align 4, !tbaa !44
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.acd
  %i.ach = load float, ptr %i.acg, align 4, !tbaa !44
  %i.aci = fmul float %i.acf, %i.ach
  %i.acj = getelementptr [4 x i8], ptr %i.abq, i64 %i.aca
  store float %i.aci, ptr %i.acj, align 4, !tbaa !44
  %i.ack = add nuw nsw i64 %.02326.us.us.i, 2     ; 2 uses
  %niter1325.next.1 = add nuw i64 %niter1325, 2   ; 2 uses
  %niter1325.ncmp.1 = icmp eq i64 %niter1325.next.1, %unroll_iter1324
  br i1 %niter1325.ncmp.1, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !82

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod1322.not, label %._crit_edge.us.us.i, label %.epil.preheader1319

.epil.preheader1319:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %.02326.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %i.ack, %._crit_edge.us.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1323)
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02326.us.us.i.epil.init
  %i.acm = load i32, ptr %i.acl, align 4, !tbaa !28
  %i.acn = zext i32 %i.acm to i64                 ; 2 uses
  %i.aco = getelementptr [4 x i8], ptr %i.abo, i64 %i.acn
  %i.acp = load float, ptr %i.aco, align 4, !tbaa !44
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.acn
  %i.acr = load float, ptr %i.acq, align 4, !tbaa !44
  %i.acs = fmul float %i.acp, %i.acr
  %i.act = getelementptr [4 x i8], ptr %i.abq, i64 %.02326.us.us.i.epil.init
  store float %i.acs, ptr %i.act, align 4, !tbaa !44
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.epil.preheader1319
  %i.acu = add nuw i64 %.027.us.us.i, 1           ; 2 uses
  %exitcond39.not.i = icmp eq i64 %i.acu, %.0702
  br i1 %exitcond39.not.i, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.lr.ph.us.us.i, !llvm.loop !83

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.027.us.i = phi i64 [ %i.aef, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %.027.us.i
  %i.acw = load i32, ptr %i.acv, align 4, !tbaa !28
  %i.acx = zext i32 %i.acw to i64
  %i.acy = mul i64 %i.abj, %i.acx
  %i.acz = getelementptr [4 x i8], ptr %6, i64 %i.acy ; 3 uses
  %i.ada = mul i64 %.027.us.i, %.1351.lcssa
  %i.adb = getelementptr [4 x i8], ptr %i.aak, i64 %i.ada ; 3 uses
  br i1 %i.abk, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.02326.us.i = phi i64 [ %i.adv, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 4 uses
  %niter1318 = phi i64 [ %niter1318.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.adc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02326.us.i
  %i.add = load i32, ptr %i.adc, align 8, !tbaa !28
  %i.ade = zext i32 %i.add to i64                 ; 2 uses
  %i.adf = getelementptr [4 x i8], ptr %i.acz, i64 %i.ade
  %i.adg = load float, ptr %i.adf, align 4, !tbaa !44
  %i.adh = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ade
  %i.adi = load float, ptr %i.adh, align 4, !tbaa !44
  %i.adj = fmul float %i.adg, %i.adi
  %i.adk = getelementptr [4 x i8], ptr %i.adb, i64 %.02326.us.i
  store float %i.adj, ptr %i.adk, align 4, !tbaa !44
  %i.adl = or disjoint i64 %.02326.us.i, 1        ; 2 uses
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.adl
  %i.adn = load i32, ptr %i.adm, align 4, !tbaa !28
  %i.ado = zext i32 %i.adn to i64                 ; 2 uses
  %i.adp = getelementptr [4 x i8], ptr %i.acz, i64 %i.ado
  %i.adq = load float, ptr %i.adp, align 4, !tbaa !44
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ado
  %i.ads = load float, ptr %i.adr, align 4, !tbaa !44
  %i.adt = fmul float %i.adq, %i.ads
  %i.adu = getelementptr [4 x i8], ptr %i.adb, i64 %i.adl
  store float %i.adt, ptr %i.adu, align 4, !tbaa !44
  %i.adv = add nuw nsw i64 %.02326.us.i, 2        ; 2 uses
  %niter1318.next.1 = add nuw i64 %niter1318, 2   ; 2 uses
  %niter1318.ncmp.1 = icmp eq i64 %niter1318.next.1, %unroll_iter1317
  br i1 %niter1318.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !82

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod1315.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.02326.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %i.adv, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1316)
  %i.adw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02326.us.i.epil.init
  %i.adx = load i32, ptr %i.adw, align 4, !tbaa !28
  %i.ady = zext i32 %i.adx to i64                 ; 2 uses
  %i.adz = getelementptr [4 x i8], ptr %i.acz, i64 %i.ady
  %i.aea = load float, ptr %i.adz, align 4, !tbaa !44
  %i.aeb = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.ady
  %i.aec = load float, ptr %i.aeb, align 4, !tbaa !44
  %i.aed = fmul float %i.aea, %i.aec
  %i.aee = getelementptr [4 x i8], ptr %i.adb, i64 %.02326.us.i.epil.init
  store float %i.aed, ptr %i.aee, align 4, !tbaa !44
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %i.aef = add nuw i64 %.027.us.i, 1              ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.aef, %.0702
  br i1 %exitcond37.not.i, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.lr.ph.us.i, !llvm.loop !83

bb.cb:                                            ; preds = %.epilog-lcssa
  %i.aeg = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit: ; preds = %._crit_edge.us.i, %._crit_edge.us.us.i, %.lr.ph29.i, %bb.ca, %bb.bo
  %.0352 = phi ptr [ null, %bb.bo ], [ %i.aak, %bb.ca ], [ %i.aak, %.lr.ph29.i ], [ %i.aak, %._crit_edge.us.us.i ], [ %i.aak, %._crit_edge.us.i ] ; 15 uses
  %.0330 = phi i64 [ 0, %bb.bo ], [ %.1351.lcssa, %bb.ca ], [ 0, %.lr.ph29.i ], [ %.1351.lcssa, %._crit_edge.us.us.i ], [ %.1351.lcssa, %._crit_edge.us.i ] ; 58 uses
  %i.aeh = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.aei = icmp ugt i64 %.0702, 419244183493398900
  %i.aej = mul i64 %.0702, 44                     ; 3 uses
  %i.aek = select i1 %i.aei, i64 -1, i64 %i.aej   ; 2 uses
  %i.ael = invoke noundef ptr %i.aeh(i64 noundef %i.aek)
          to label %bb.cc unwind label %bb.ci, !inline_history !7 ; 14 uses

bb.cc:                                            ; preds = %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit
  %i.aem = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.aen = add nsw i64 %i.aem, 1
  store i64 %i.aen, ptr %i.es, align 8, !tbaa !26
  %i.aeo = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.aem
  store ptr %i.ael, ptr %i.aeo, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 4 %i.ael, i8 0, i64 %i.aej, i1 false)
  %.not403 = icmp eq i64 %.0330, 0                ; 7 uses
  br i1 %.not403, label %bb.ck, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.aep = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.aeq = invoke noundef ptr %i.aep(i64 noundef %i.aek)
          to label %bb.ce unwind label %bb.cj, !inline_history !7 ; 4 uses

bb.ce:                                            ; preds = %bb.cd
  %i.aer = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.aes = add nsw i64 %i.aer, 1
  store i64 %i.aes, ptr %i.es, align 8, !tbaa !26
  %i.aet = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.aer
  store ptr %i.aeq, ptr %i.aet, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 4 %i.aeq, i8 0, i64 %i.aej, i1 false)
  %i.aeu = mul i64 %.0330, %.0702                 ; 2 uses
  %i.aev = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.aew = icmp ugt i64 %i.aeu, 1152921504606846975
  %i.aex = shl i64 %i.aeu, 4                      ; 2 uses
  %i.aey = select i1 %i.aew, i64 -1, i64 %i.aex
  %i.aez = invoke noundef ptr %i.aev(i64 noundef %i.aey)
          to label %bb.cf unwind label %bb.cj, !inline_history !84 ; 4 uses

bb.cf:                                            ; preds = %bb.ce
  %i.afa = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.afb = add nsw i64 %i.afa, 1
  store i64 %i.afb, ptr %i.es, align 8, !tbaa !26
  %i.afc = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.afa
  store ptr %i.aez, ptr %i.afc, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 4 %i.aez, i8 0, i64 %i.aex, i1 false)
  %i.afd = and i32 %13, 536870912
  %.not404 = icmp eq i32 %i.afd, 0
  br i1 %.not404, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.afe = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.aff = icmp ugt i64 %.0702, 1152921504606846975
  %i.afg = shl i64 %.0702, 4                      ; 2 uses
  %i.afh = select i1 %i.aff, i64 -1, i64 %i.afg
  %i.afi = invoke noundef ptr %i.afe(i64 noundef %i.afh)
          to label %bb.ch unwind label %bb.cj, !inline_history !84 ; 3 uses

bb.ch:                                            ; preds = %bb.cg
  %i.afj = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.afk = add nsw i64 %i.afj, 1
  store i64 %i.afk, ptr %i.es, align 8, !tbaa !26
  %i.afl = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.afj
  store ptr %i.afi, ptr %i.afl, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 4 %i.afi, i8 0, i64 %i.afg, i1 false)
  br label %bb.ck

bb.ci:                                            ; preds = %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit
  %i.afm = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.cj:                                            ; preds = %bb.cg, %bb.ce, %bb.cd
  %i.afn = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.ck:                                            ; preds = %bb.cf, %bb.ch, %bb.cc
  %.0348 = phi ptr [ %i.aeq, %bb.ch ], [ %i.aeq, %bb.cf ], [ null, %bb.cc ] ; 15 uses
  %.0347 = phi ptr [ %i.aez, %bb.ch ], [ %i.aez, %bb.cf ], [ null, %bb.cc ] ; 13 uses
  %.0346 = phi ptr [ %i.afi, %bb.ch ], [ null, %bb.cf ], [ null, %bb.cc ] ; 9 uses
  br i1 %.not87.i, label %_ZN7meshoptL16fillFaceQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3ES5_.exit, label %.lr.ph.i466

.lr.ph.i466:                                      ; preds = %bb.ck
  %.not.i467 = icmp eq ptr %.0346, null
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cn, %.lr.ph.i466
  %.076.i = phi i64 [ 0, %.lr.ph.i466 ], [ %i.alf, %bb.cn ] ; 2 uses
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.076.i ; 3 uses
  %i.afp = load i32, ptr %i.afo, align 4, !tbaa !28
  %i.afq = getelementptr i8, ptr %i.afo, i64 4
  %i.afr = load i32, ptr %i.afq, align 4, !tbaa !28
  %i.afs = getelementptr i8, ptr %i.afo, i64 8
  %i.aft = load i32, ptr %i.afs, align 4, !tbaa !28
  %i.afu = zext i32 %i.afp to i64                 ; 2 uses
  %i.afv = getelementptr inbounds nuw [12 x i8], ptr %i.zt, i64 %i.afu ; 2 uses
  %i.afw = zext i32 %i.afr to i64                 ; 2 uses
  %i.afx = getelementptr inbounds nuw [12 x i8], ptr %i.zt, i64 %i.afw ; 2 uses
  %i.afy = zext i32 %i.aft to i64                 ; 2 uses
  %i.afz = getelementptr inbounds nuw [12 x i8], ptr %i.zt, i64 %i.afy ; 2 uses
  %i.aga = getelementptr inbounds nuw i8, ptr %i.afx, i64 8
  %i.agb = load float, ptr %i.aga, align 4, !tbaa !46
  %i.agc = getelementptr inbounds nuw i8, ptr %i.afv, i64 8
  %i.agd = load float, ptr %i.agc, align 4, !tbaa !46 ; 3 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.afz, i64 8
  %i.agf = load float, ptr %i.age, align 4, !tbaa !46
  %i.agg = load <2 x float>, ptr %i.afx, align 4, !tbaa !44 ; 2 uses
  %i.agh = load <2 x float>, ptr %i.afv, align 4, !tbaa !44 ; 5 uses
  %i.agi = fsub <2 x float> %i.agg, %i.agh        ; 2 uses
  %i.agj = shufflevector <2 x float> %i.agg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.agk = insertelement <2 x float> %i.agj, float %i.agb, i64 0
  %i.agl = shufflevector <2 x float> %i.agh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.agm = insertelement <2 x float> %i.agl, float %i.agd, i64 0 ; 2 uses
  %i.agn = fsub <2 x float> %i.agk, %i.agm        ; 2 uses
  %i.ago = load <2 x float>, ptr %i.afz, align 4, !tbaa !44 ; 2 uses
  %i.agp = fsub <2 x float> %i.ago, %i.agh        ; 2 uses
  %i.agq = shufflevector <2 x float> %i.ago, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.agr = insertelement <2 x float> %i.agq, float %i.agf, i64 0
  %i.ags = fsub <2 x float> %i.agr, %i.agm        ; 2 uses
  %i.agt = extractelement <2 x float> %i.agp, i64 1
  %i.agu = fneg float %i.agt
  %i.agv = extractelement <2 x float> %i.agn, i64 0
  %i.agw = fmul float %i.agv, %i.agu
  %i.agx = extractelement <2 x float> %i.agi, i64 1
  %i.agy = extractelement <2 x float> %i.ags, i64 0
  %i.agz = call float @llvm.fmuladd.f32(float %i.agx, float %i.agy, float %i.agw) ; 4 uses
  %i.aha = fneg <2 x float> %i.ags
  %i.ahb = fmul <2 x float> %i.agi, %i.aha
  %i.ahc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.agn, <2 x float> %i.agp, <2 x float> %i.ahb) ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.ahc, %i.ahc
  %i.ahd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ahe = call float @llvm.fmuladd.f32(float %i.agz, float %i.agz, float %i.ahd)
  %i.ahf = extractelement <2 x float> %i.ahc, i64 1 ; 2 uses
  %i.ahg = call float @llvm.fmuladd.f32(float %i.ahf, float %i.ahf, float %i.ahe) ; 2 uses
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.ahg) ; 4 uses
  %i.ahh = fcmp ogt float %i.ahg, 0.000000e+00    ; 2 uses
  %i.ahi = fdiv float %i.agz, %sqrt.i.i.i
  %i.ahj = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.ahk = shufflevector <2 x float> %i.ahj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ahl = fdiv <2 x float> %i.ahc, %i.ahk
  %i.ahm = insertelement <2 x i1> poison, i1 %i.ahh, i64 0
  %i.ahn = shufflevector <2 x i1> %i.ahm, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.aho = select <2 x i1> %i.ahn, <2 x float> %i.ahl, <2 x float> %i.ahc ; 4 uses
  %.sroa.0.0.i.i = select i1 %i.ahh, float %i.ahi, float %i.agz ; 4 uses
  %i.ahp = extractelement <2 x float> %i.aho, i64 0 ; 2 uses
  %i.ahq = extractelement <2 x float> %i.agh, i64 1 ; 2 uses
  %i.ahr = fmul float %i.ahq, %i.ahp
  %i.ahs = extractelement <2 x float> %i.agh, i64 0 ; 2 uses
  %i.aht = call float @llvm.fmuladd.f32(float %.sroa.0.0.i.i, float %i.ahs, float %i.ahr)
  %i.ahu = extractelement <2 x float> %i.aho, i64 1 ; 3 uses
  %i.ahv = call float @llvm.fmuladd.f32(float %i.ahu, float %i.agd, float %i.aht)
  %i.ahw = fneg float %i.ahv                      ; 2 uses
  %sqrt.i.i = call float @llvm.sqrt.f32(float %sqrt.i.i.i) ; 5 uses
  %i.ahx = fmul float %sqrt.i.i, %i.ahw           ; 3 uses
  %i.ahy = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.afu
  %i.ahz = load i32, ptr %i.ahy, align 4, !tbaa !28
  %i.aia = zext i32 %i.ahz to i64                 ; 2 uses
  %i.aib = getelementptr inbounds nuw [44 x i8], ptr %i.ael, i64 %i.aia ; 5 uses
  %i.aic = getelementptr inbounds nuw i8, ptr %i.aib, i64 16 ; 2 uses
  %i.aid = getelementptr inbounds nuw i8, ptr %i.aib, i64 32 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aib, i64 40 ; 2 uses
  %i.aif = load float, ptr %i.aie, align 4, !tbaa !48
  %i.aig = fadd float %sqrt.i.i, %i.aif
  store float %i.aig, ptr %i.aie, align 4, !tbaa !48
  %i.aih = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.afw
  %i.aii = load i32, ptr %i.aih, align 4, !tbaa !28
  %i.aij = zext i32 %i.aii to i64                 ; 2 uses
  %i.aik = getelementptr inbounds nuw [44 x i8], ptr %i.ael, i64 %i.aij ; 5 uses
  %i.ail = getelementptr inbounds nuw i8, ptr %i.aik, i64 16 ; 2 uses
  %i.aim = getelementptr inbounds nuw i8, ptr %i.aik, i64 32 ; 2 uses
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aik, i64 40 ; 2 uses
  %i.aio = load float, ptr %i.ain, align 4, !tbaa !48
  %i.aip = fadd float %sqrt.i.i, %i.aio
  store float %i.aip, ptr %i.ain, align 4, !tbaa !48
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.afy
  %i.air = load i32, ptr %i.aiq, align 4, !tbaa !28
  %i.ais = zext i32 %i.air to i64                 ; 2 uses
  %i.ait = getelementptr inbounds nuw [44 x i8], ptr %i.ael, i64 %i.ais ; 5 uses
  %i.aiu = insertelement <4 x float> poison, float %sqrt.i.i, i64 0
  %i.aiv = shufflevector <4 x float> %i.aiu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aiw = shufflevector <2 x float> %i.aho, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 0> ; 3 uses
  %i.aix = insertelement <4 x float> poison, float %.sroa.0.0.i.i, i64 0 ; 2 uses
  %i.aiy = insertelement <4 x float> %i.aiw, float %.sroa.0.0.i.i, i64 0 ; 2 uses
  %i.aiz = fmul <4 x float> %i.aiv, %i.aiy        ; 2 uses
  %i.aja = shufflevector <4 x float> %i.aiw, <4 x float> %i.aiy, <4 x i32> <i32 4, i32 1, i32 2, i32 4>
  %i.ajb = fmul <4 x float> %i.aja, %i.aiz        ; 3 uses
  %i.ajc = load <4 x float>, ptr %i.aib, align 4, !tbaa !44
  %i.ajd = fadd <4 x float> %i.ajc, %i.ajb
  store <4 x float> %i.ajd, ptr %i.aib, align 4, !tbaa !44
  %i.aje = load <4 x float>, ptr %i.aik, align 4, !tbaa !44
  %i.ajf = fadd <4 x float> %i.ajb, %i.aje
  store <4 x float> %i.ajf, ptr %i.aik, align 4, !tbaa !44
  %i.ajg = load <4 x float>, ptr %i.ait, align 4, !tbaa !44
  %i.ajh = fadd <4 x float> %i.ajb, %i.ajg
  store <4 x float> %i.ajh, ptr %i.ait, align 4, !tbaa !44
  %i.aji = getelementptr inbounds nuw i8, ptr %i.ait, i64 16 ; 2 uses
  %i.ajj = shufflevector <4 x float> %i.aix, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.ajk = shufflevector <4 x float> %i.ajj, <4 x float> %i.aiw, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ajl = shufflevector <4 x float> %i.aiz, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ajm = insertelement <2 x float> %i.ajl, float %i.ahx, i64 1
  %i.ajn = shufflevector <2 x float> %i.ajm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ajo = fmul <4 x float> %i.ajk, %i.ajn        ; 3 uses
  %i.ajp = load <4 x float>, ptr %i.aic, align 4, !tbaa !44
  %i.ajq = fadd <4 x float> %i.ajp, %i.ajo
  store <4 x float> %i.ajq, ptr %i.aic, align 4, !tbaa !44
  %i.ajr = load <4 x float>, ptr %i.ail, align 4, !tbaa !44
  %i.ajs = fadd <4 x float> %i.ajo, %i.ajr
  store <4 x float> %i.ajs, ptr %i.ail, align 4, !tbaa !44
  %i.ajt = load <4 x float>, ptr %i.aji, align 4, !tbaa !44
  %i.aju = fadd <4 x float> %i.ajo, %i.ajt
  store <4 x float> %i.aju, ptr %i.aji, align 4, !tbaa !44
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ait, i64 32 ; 2 uses
  %i.ajw = load <2 x float>, ptr %i.aid, align 4, !tbaa !44
  %i.ajx = fmul float %i.ahx, %i.ahw
  %i.ajy = fmul float %i.ahu, %i.ahx
  %i.ajz = insertelement <2 x float> poison, float %i.ajy, i64 0
  %i.aka = insertelement <2 x float> %i.ajz, float %i.ajx, i64 1 ; 3 uses
  %i.akb = fadd <2 x float> %i.aka, %i.ajw
  store <2 x float> %i.akb, ptr %i.aid, align 4, !tbaa !44
  %i.akc = load <2 x float>, ptr %i.aim, align 4, !tbaa !44
  %i.akd = fadd <2 x float> %i.aka, %i.akc
  store <2 x float> %i.akd, ptr %i.aim, align 4, !tbaa !44
  %i.ake = load <2 x float>, ptr %i.ajv, align 4, !tbaa !44
  %i.akf = fadd <2 x float> %i.aka, %i.ake
  store <2 x float> %i.akf, ptr %i.ajv, align 4, !tbaa !44
  %i.akg = getelementptr inbounds nuw i8, ptr %i.ait, i64 40 ; 2 uses
  %i.akh = load float, ptr %i.akg, align 4, !tbaa !48
  %i.aki = fadd float %sqrt.i.i, %i.akh
  store float %i.aki, ptr %i.akg, align 4, !tbaa !48
  br i1 %.not.i467, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.akj = fmul float %sqrt.i.i.i, 5.000000e-01
  %i.akk = fneg float %i.ahs
  %i.akl = fneg float %i.ahp
  %i.akm = fmul float %i.ahq, %i.akl
  %i.akn = call float @llvm.fmuladd.f32(float %i.akk, float %.sroa.0.0.i.i, float %i.akm)
  %i.ako = fneg float %i.agd
  %i.akp = call float @llvm.fmuladd.f32(float %i.ako, float %i.ahu, float %i.akn)
  %i.akq = getelementptr inbounds nuw [16 x i8], ptr %.0346, i64 %i.aia ; 2 uses
  %i.akr = getelementptr inbounds nuw [16 x i8], ptr %.0346, i64 %i.aij ; 2 uses
  %i.aks = getelementptr inbounds nuw [16 x i8], ptr %.0346, i64 %i.ais ; 2 uses
  %i.akt = insertelement <4 x float> poison, float %i.akj, i64 0
  %i.aku = shufflevector <4 x float> %i.akt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.akv = shufflevector <2 x float> %i.aho, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.akw = shufflevector <4 x float> %i.aix, <4 x float> %i.akv, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.akx = insertelement <4 x float> %i.akw, float %i.akp, i64 3
  %i.aky = fmul <4 x float> %i.aku, %i.akx        ; 3 uses
  %i.akz = load <4 x float>, ptr %i.akq, align 4, !tbaa !44
  %i.ala = fadd <4 x float> %i.aky, %i.akz
  store <4 x float> %i.ala, ptr %i.akq, align 4, !tbaa !44
  %i.alb = load <4 x float>, ptr %i.akr, align 4, !tbaa !44
  %i.alc = fadd <4 x float> %i.aky, %i.alb
  store <4 x float> %i.alc, ptr %i.akr, align 4, !tbaa !44
  %i.ald = load <4 x float>, ptr %i.aks, align 4, !tbaa !44
  %i.ale = fadd <4 x float> %i.aky, %i.ald
  store <4 x float> %i.ale, ptr %i.aks, align 4, !tbaa !44
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
end_hunk_1
begin_hunk_2_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %i.ayd = call float @llvm.fmuladd.f32(float %i.awv, float %i.aya, float %i.ayc) ; 4 uses
  %i.aye = insertelement <4 x float> poison, float %i.ayd, i64 0
  %i.ayf = shufflevector <4 x float> %i.axr, <4 x float> %i.aye, <4 x i32> <i32 2, i32 1, i32 4, i32 4>
  %i.ayg = fmul <4 x float> %i.axv, %i.ayf
  %i.ayh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.awx, <4 x float> %i.ayg, <4 x float> %i.axb) ; 4 uses
  %i.ayi = insertelement <2 x float> %i.axw, float %i.ayd, i64 1
  %i.ayj = insertelement <2 x float> poison, float %i.ayd, i64 0
  %i.ayk = shufflevector <2 x float> %i.ayj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ayl = fmul <2 x float> %i.ayi, %i.ayk
  %i.aym = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.awz, <2 x float> %i.ayl, <2 x float> %i.axc) ; 4 uses
  %i.ayn = insertelement <4 x float> %i.axr, float %i.ayd, i64 3
  %i.ayo = fmul <4 x float> %i.awx, %i.ayn
  store <4 x float> %i.ayo, ptr %i.axx, align 16, !tbaa !44
  %i.ayp = add nuw nsw i64 %.0210.i.i, 1          ; 2 uses
  %exitcond.not.i.i487 = icmp eq i64 %i.ayp, %.0330
  br i1 %exitcond.not.i.i487, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, label %bb.df, !llvm.loop !89

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i: ; preds = %bb.df
  %i.ayq = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.aub ; 5 uses
  %i.ayr = load <4 x float>, ptr %i.ayq, align 4, !tbaa !44
  %i.ays = fadd <4 x float> %i.axu, %i.ayr
  store <4 x float> %i.ays, ptr %i.ayq, align 4, !tbaa !44
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayq, i64 16 ; 2 uses
  %i.ayu = load <4 x float>, ptr %i.ayt, align 4, !tbaa !44
  %i.ayv = fadd <4 x float> %i.ayh, %i.ayu
  store <4 x float> %i.ayv, ptr %i.ayt, align 4, !tbaa !44
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayq, i64 32 ; 2 uses
  %i.ayx = load <2 x float>, ptr %i.ayw, align 4, !tbaa !44
  %i.ayy = fadd <2 x float> %i.aym, %i.ayx
  store <2 x float> %i.ayy, ptr %i.ayw, align 4, !tbaa !44
  %i.ayz = getelementptr inbounds nuw i8, ptr %i.ayq, i64 40 ; 2 uses
  %i.aza = load float, ptr %i.ayz, align 4, !tbaa !48
  %i.azb = fadd float %i.avp, %i.aza
  store float %i.azb, ptr %i.ayz, align 4, !tbaa !48
  %i.azc = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.aud ; 5 uses
  %i.azd = load <4 x float>, ptr %i.azc, align 4, !tbaa !44
  %i.aze = fadd <4 x float> %i.axu, %i.azd
  store <4 x float> %i.aze, ptr %i.azc, align 4, !tbaa !44
  %i.azf = getelementptr inbounds nuw i8, ptr %i.azc, i64 16 ; 2 uses
  %i.azg = load <4 x float>, ptr %i.azf, align 4, !tbaa !44
  %i.azh = fadd <4 x float> %i.ayh, %i.azg
  store <4 x float> %i.azh, ptr %i.azf, align 4, !tbaa !44
  %i.azi = getelementptr inbounds nuw i8, ptr %i.azc, i64 32 ; 2 uses
  %i.azj = load <2 x float>, ptr %i.azi, align 4, !tbaa !44
  %i.azk = fadd <2 x float> %i.aym, %i.azj
  store <2 x float> %i.azk, ptr %i.azi, align 4, !tbaa !44
  %i.azl = getelementptr inbounds nuw i8, ptr %i.azc, i64 40 ; 2 uses
  %i.azm = load float, ptr %i.azl, align 4, !tbaa !48
  %i.azn = fadd float %i.avp, %i.azm
  store float %i.azn, ptr %i.azl, align 4, !tbaa !48
  %i.azo = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.auf ; 5 uses
  %i.azp = load <4 x float>, ptr %i.azo, align 4, !tbaa !44
  %i.azq = fadd <4 x float> %i.axu, %i.azp
  store <4 x float> %i.azq, ptr %i.azo, align 4, !tbaa !44
  %i.azr = getelementptr inbounds nuw i8, ptr %i.azo, i64 16 ; 2 uses
  %i.azs = load <4 x float>, ptr %i.azr, align 4, !tbaa !44
  %i.azt = fadd <4 x float> %i.ayh, %i.azs
  store <4 x float> %i.azt, ptr %i.azr, align 4, !tbaa !44
  %i.azu = getelementptr inbounds nuw i8, ptr %i.azo, i64 32 ; 2 uses
  %i.azv = load <2 x float>, ptr %i.azu, align 4, !tbaa !44
  %i.azw = fadd <2 x float> %i.aym, %i.azv
  store <2 x float> %i.azw, ptr %i.azu, align 4, !tbaa !44
  %i.azx = getelementptr inbounds nuw i8, ptr %i.azo, i64 40 ; 2 uses
  %i.azy = load float, ptr %i.azx, align 4, !tbaa !48
  %i.azz = fadd float %i.avp, %i.azy
  store float %i.azz, ptr %i.azx, align 4, !tbaa !48
  %i.baa = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.auh ; 3 uses
  br i1 %i.ats, label %.epil.preheader1326, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  %.018.i.i = phi i64 [ %i.bam, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ] ; 4 uses
  %niter1332 = phi i64 [ %niter1332.next.1, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ]
  %i.bab = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i
  %i.bac = getelementptr inbounds nuw [16 x i8], ptr %i.baa, i64 %.018.i.i ; 2 uses
  %i.bad = load <4 x float>, ptr %i.bab, align 16, !tbaa !44
  %i.bae = load <4 x float>, ptr %i.bac, align 4, !tbaa !44
  %i.baf = fadd <4 x float> %i.bad, %i.bae
  store <4 x float> %i.baf, ptr %i.bac, align 4, !tbaa !44
  %i.bag = or disjoint i64 %.018.i.i, 1           ; 2 uses
  %i.bah = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.bag
  %i.bai = getelementptr inbounds nuw [16 x i8], ptr %i.baa, i64 %i.bag ; 2 uses
  %i.baj = load <4 x float>, ptr %i.bah, align 16, !tbaa !44
  %i.bak = load <4 x float>, ptr %i.bai, align 4, !tbaa !44
  %i.bal = fadd <4 x float> %i.baj, %i.bak
  store <4 x float> %i.bal, ptr %i.bai, align 4, !tbaa !44
  %i.bam = add nuw nsw i64 %.018.i.i, 2           ; 2 uses
  %niter1332.next.1 = add nuw i64 %niter1332, 2   ; 2 uses
  %niter1332.ncmp.1 = icmp eq i64 %niter1332.next.1, %unroll_iter1331
  br i1 %niter1332.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  br i1 %lcmp.mod1329.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, label %.epil.preheader1326

.epil.preheader1326:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i
  %.018.i.i.epil.init = phi i64 [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ], [ %i.bam, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1330)
  %i.ban = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i.epil.init
  %i.bao = getelementptr inbounds nuw [16 x i8], ptr %i.baa, i64 %.018.i.i.epil.init ; 2 uses
  %i.bap = load <4 x float>, ptr %i.ban, align 16, !tbaa !44
  %i.baq = load <4 x float>, ptr %i.bao, align 4, !tbaa !44
  %i.bar = fadd <4 x float> %i.bap, %i.baq
  store <4 x float> %i.bar, ptr %i.bao, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %.epil.preheader1326
  %i.bas = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.auj ; 3 uses
  br i1 %i.att, label %.epil.preheader1333, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  %.018.i43.i = phi i64 [ %i.bbe, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ] ; 4 uses
  %niter1339 = phi i64 [ %niter1339.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ]
  %i.bat = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i
  %i.bau = getelementptr inbounds nuw [16 x i8], ptr %i.bas, i64 %.018.i43.i ; 2 uses
  %i.bav = load <4 x float>, ptr %i.bat, align 16, !tbaa !44
  %i.baw = load <4 x float>, ptr %i.bau, align 4, !tbaa !44
  %i.bax = fadd <4 x float> %i.bav, %i.baw
  store <4 x float> %i.bax, ptr %i.bau, align 4, !tbaa !44
  %i.bay = or disjoint i64 %.018.i43.i, 1         ; 2 uses
  %i.baz = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.bay
  %i.bba = getelementptr inbounds nuw [16 x i8], ptr %i.bas, i64 %i.bay ; 2 uses
  %i.bbb = load <4 x float>, ptr %i.baz, align 16, !tbaa !44
  %i.bbc = load <4 x float>, ptr %i.bba, align 4, !tbaa !44
  %i.bbd = fadd <4 x float> %i.bbb, %i.bbc
  store <4 x float> %i.bbd, ptr %i.bba, align 4, !tbaa !44
  %i.bbe = add nuw nsw i64 %.018.i43.i, 2         ; 2 uses
  %niter1339.next.1 = add nuw i64 %niter1339, 2   ; 2 uses
  %niter1339.ncmp.1 = icmp eq i64 %niter1339.next.1, %unroll_iter1338
  br i1 %niter1339.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  br i1 %lcmp.mod1336.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, label %.epil.preheader1333

.epil.preheader1333:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i
  %.018.i43.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ], [ %i.bbe, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1337)
  %i.bbf = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i.epil.init
  %i.bbg = getelementptr inbounds nuw [16 x i8], ptr %i.bas, i64 %.018.i43.i.epil.init ; 2 uses
  %i.bbh = load <4 x float>, ptr %i.bbf, align 16, !tbaa !44
  %i.bbi = load <4 x float>, ptr %i.bbg, align 4, !tbaa !44
  %i.bbj = fadd <4 x float> %i.bbh, %i.bbi
  store <4 x float> %i.bbj, ptr %i.bbg, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %.epil.preheader1333
  %i.bbk = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.aul ; 3 uses
  br i1 %i.atu, label %.epil.preheader1340, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  %.018.i46.i = phi i64 [ %i.bbw, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ] ; 4 uses
  %niter1346 = phi i64 [ %niter1346.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ]
  %i.bbl = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i
  %i.bbm = getelementptr inbounds nuw [16 x i8], ptr %i.bbk, i64 %.018.i46.i ; 2 uses
  %i.bbn = load <4 x float>, ptr %i.bbl, align 16, !tbaa !44
  %i.bbo = load <4 x float>, ptr %i.bbm, align 4, !tbaa !44
  %i.bbp = fadd <4 x float> %i.bbn, %i.bbo
  store <4 x float> %i.bbp, ptr %i.bbm, align 4, !tbaa !44
  %i.bbq = or disjoint i64 %.018.i46.i, 1         ; 2 uses
  %i.bbr = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.bbq
  %i.bbs = getelementptr inbounds nuw [16 x i8], ptr %i.bbk, i64 %i.bbq ; 2 uses
  %i.bbt = load <4 x float>, ptr %i.bbr, align 16, !tbaa !44
  %i.bbu = load <4 x float>, ptr %i.bbs, align 4, !tbaa !44
  %i.bbv = fadd <4 x float> %i.bbt, %i.bbu
  store <4 x float> %i.bbv, ptr %i.bbs, align 4, !tbaa !44
  %i.bbw = add nuw nsw i64 %.018.i46.i, 2         ; 2 uses
  %niter1346.next.1 = add nuw i64 %niter1346, 2   ; 2 uses
  %niter1346.ncmp.1 = icmp eq i64 %niter1346.next.1, %unroll_iter1345
  br i1 %niter1346.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  br i1 %lcmp.mod1343.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, label %.epil.preheader1340

.epil.preheader1340:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i
  %.018.i46.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ], [ %i.bbw, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1344)
  %i.bbx = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i.epil.init
  %i.bby = getelementptr inbounds nuw [16 x i8], ptr %i.bbk, i64 %.018.i46.i.epil.init ; 2 uses
  %i.bbz = load <4 x float>, ptr %i.bbx, align 16, !tbaa !44
  %i.bca = load <4 x float>, ptr %i.bby, align 4, !tbaa !44
  %i.bcb = fadd <4 x float> %i.bbz, %i.bca
  store <4 x float> %i.bcb, ptr %i.bby, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %.epil.preheader1340
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.bcc = add i64 %.080.i, 3                     ; 2 uses
  %i.bcd = icmp ult i64 %i.bcc, %2
  br i1 %i.bcd, label %.lr.ph.i485, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, !llvm.loop !91

_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit, %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit
  %i.bce = and i32 %13, 8
  %.not405 = icmp ne i32 %i.bce, 0                ; 3 uses
  br i1 %.not405, label %bb.dg, label %.loopexit727

bb.dg:                                            ; preds = %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit
  %i.bcf = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bcg = invoke noundef ptr %i.bcf(i64 noundef %i.jf)
          to label %bb.dh unwind label %bb.dj, !inline_history !4 ; 6 uses

bb.dh:                                            ; preds = %bb.dg
  %i.bch = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.bci = add nsw i64 %i.bch, 1
  store i64 %i.bci, ptr %i.es, align 8, !tbaa !26
  %i.bcj = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bch
  store ptr %i.bcg, ptr %i.bcj, align 8, !tbaa !27
  %i.bck = call fastcc noundef i64 @_ZN7meshoptL15buildComponentsEPjmPKjmS2_(ptr noundef %i.bcg, i64 noundef %.0702, ptr noundef %0, i64 noundef %2, ptr noundef %i.jg) ; 8 uses
  %i.bcl = shl nuw nsw i64 %i.bck, 4
  %i.bcm = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bcn = invoke noundef ptr %i.bcm(i64 noundef %i.bcl)
          to label %bb.di unwind label %bb.dj, !inline_history !6 ; 10 uses

bb.di:                                            ; preds = %bb.dh
  %i.bco = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.bcp = add nsw i64 %i.bco, 1
  store i64 %i.bcp, ptr %i.es, align 8, !tbaa !26
  %i.bcq = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bco
  store ptr %i.bcn, ptr %i.bcq, align 8, !tbaa !27
  call fastcc void @_ZN7meshoptL17measureComponentsEPfmPKjPKNS_7Vector3Em(ptr noundef %i.bcn, i64 noundef %i.bck, ptr noundef %i.bcg, ptr noundef %i.zt, i64 noundef %.0702)
  %.not832 = icmp eq i64 %i.bck, 0
  br i1 %.not832, label %.loopexit727, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.di
  %xtraiter1347 = and i64 %i.bck, 3               ; 3 uses
  %i.bcr = icmp samesign ult i64 %i.bck, 4
  br i1 %i.bcr, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter1352 = and i64 %i.bck, 4294967292
  br label %.lr.ph

bb.dj:                                            ; preds = %bb.dh, %bb.dg
  %i.bcs = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0342776 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bdi, %.lr.ph ] ; 5 uses
  %.0696775 = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.new ], [ %..3, %.lr.ph ] ; 2 uses
  %niter1353 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter1353.next.3, %.lr.ph ]
  %i.bct = getelementptr inbounds nuw [4 x i8], ptr %i.bcn, i64 %.0342776
  %i.bcu = load float, ptr %i.bct, align 4, !tbaa !44 ; 2 uses
  %i.bcv = fcmp ogt float %.0696775, %i.bcu
  %. = select i1 %i.bcv, float %i.bcu, float %.0696775 ; 2 uses
  %i.bcw = getelementptr inbounds nuw [4 x i8], ptr %i.bcn, i64 %.0342776
  %i.bcx = getelementptr inbounds nuw i8, ptr %i.bcw, i64 4
  %i.bcy = load float, ptr %i.bcx, align 4, !tbaa !44 ; 2 uses
  %i.bcz = fcmp ogt float %., %i.bcy
  %..1 = select i1 %i.bcz, float %i.bcy, float %. ; 2 uses
  %i.bda = getelementptr inbounds nuw [4 x i8], ptr %i.bcn, i64 %.0342776
  %i.bdb = getelementptr inbounds nuw i8, ptr %i.bda, i64 8
  %i.bdc = load float, ptr %i.bdb, align 4, !tbaa !44 ; 2 uses
  %i.bdd = fcmp ogt float %..1, %i.bdc
  %..2 = select i1 %i.bdd, float %i.bdc, float %..1 ; 2 uses
  %i.bde = getelementptr inbounds nuw [4 x i8], ptr %i.bcn, i64 %.0342776
  %i.bdf = getelementptr inbounds nuw i8, ptr %i.bde, i64 12
  %i.bdg = load float, ptr %i.bdf, align 4, !tbaa !44 ; 2 uses
  %i.bdh = fcmp ogt float %..2, %i.bdg
  %..3 = select i1 %i.bdh, float %i.bdg, float %..2 ; 3 uses
  %i.bdi = add nuw nsw i64 %.0342776, 4           ; 2 uses
  %niter1353.next.3 = add nuw nsw i64 %niter1353, 4 ; 2 uses
  %niter1353.ncmp.3 = icmp eq i64 %niter1353.next.3, %unroll_iter1352
  br i1 %niter1353.ncmp.3, label %.loopexit727.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !92

.loopexit727.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod1349.not = icmp eq i64 %xtraiter1347, 0
  br i1 %lcmp.mod1349.not, label %.loopexit727, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit727.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0342776.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bdi, %.loopexit727.loopexit.unr-lcssa ]
  %.0696775.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.preheader ], [ %..3, %.loopexit727.loopexit.unr-lcssa ]
  %lcmp.mod1351 = icmp ne i64 %xtraiter1347, 0
  call void @llvm.assume(i1 %lcmp.mod1351)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0342776.epil = phi i64 [ %i.bdm, %.lr.ph.epil ], [ %.0342776.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0696775.epil = phi float [ %..epil, %.lr.ph.epil ], [ %.0696775.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter1348 = phi i64 [ %epil.iter1348.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bdj = getelementptr inbounds nuw [4 x i8], ptr %i.bcn, i64 %.0342776.epil
  %i.bdk = load float, ptr %i.bdj, align 4, !tbaa !44 ; 2 uses
  %i.bdl = fcmp ogt float %.0696775.epil, %i.bdk
  %..epil = select i1 %i.bdl, float %i.bdk, float %.0696775.epil ; 2 uses
  %i.bdm = add nuw nsw i64 %.0342776.epil, 1
  %epil.iter1348.next = add i64 %epil.iter1348, 1 ; 2 uses
  %epil.iter1348.cmp.not = icmp eq i64 %epil.iter1348.next, %xtraiter1347
  br i1 %epil.iter1348.cmp.not, label %.loopexit727, label %.lr.ph.epil, !llvm.loop !93

.loopexit727:                                     ; preds = %.loopexit727.loopexit.unr-lcssa, %.lr.ph.epil, %bb.di, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit
  %.1697 = phi float [ 0.000000e+00, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit ], [ f0x7F7FFFFF, %bb.di ], [ %..3, %.loopexit727.loopexit.unr-lcssa ], [ %..epil, %.lr.ph.epil ] ; 3 uses
  %.0345 = phi ptr [ null, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit ], [ %i.bcg, %bb.di ], [ %i.bcg, %.lr.ph.epil ], [ %i.bcg, %.loopexit727.loopexit.unr-lcssa ] ; 2 uses
  %.0344 = phi ptr [ null, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit ], [ %i.bcn, %bb.di ], [ %i.bcn, %.lr.ph.epil ], [ %i.bcn, %.loopexit727.loopexit.unr-lcssa ] ; 5 uses
  %.0343 = phi i64 [ 0, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit ], [ 0, %bb.di ], [ %i.bck, %.lr.ph.epil ], [ %i.bck, %.loopexit727.loopexit.unr-lcssa ] ; 5 uses
  br i1 %.not88.i, label %_ZN7meshoptL18boundEdgeCollapsesERKNS_13EdgeAdjacencyEmmPh.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit727
  %.pre.i = load i32, ptr %i.er, align 4, !tbaa !28 ; 2 uses
  %min.iters.check1184 = icmp ult i64 %.0702, 4
  br i1 %min.iters.check1184, label %.lr.ph.i494.preheader, label %vector.ph1185

vector.ph1185:                                    ; preds = %.lr.ph.preheader.i
  %n.vec1186 = and i64 %.0702, -4                 ; 3 uses
  %vector.recur.init = insertelement <2 x i32> poison, i32 %.pre.i, i64 1
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1185
  %index1188 = phi i64 [ 0, %vector.ph1185 ], [ %index.next1194, %vector.body1187 ] ; 3 uses
  %vector.recur = phi <2 x i32> [ %vector.recur.init, %vector.ph1185 ], [ %wide.load1193, %vector.body1187 ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph1185 ], [ %i.beg, %vector.body1187 ]
  %vec.phi1189 = phi <2 x i64> [ zeroinitializer, %vector.ph1185 ], [ %i.beh, %vector.body1187 ]
  %i.bdn = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index1188 ; 2 uses
  %i.bdo = getelementptr inbounds nuw i8, ptr %i.bdn, i64 2
  %wide.load1190 = load <2 x i8>, ptr %i.bdn, align 1, !tbaa !29
  %wide.load1191 = load <2 x i8>, ptr %i.bdo, align 1, !tbaa !29
  %i.bdp = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %index1188 ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 4
  %i.bdr = getelementptr inbounds nuw i8, ptr %i.bdp, i64 12
  %wide.load1192 = load <2 x i32>, ptr %i.bdq, align 4, !tbaa !28 ; 3 uses
  %wide.load1193 = load <2 x i32>, ptr %i.bdr, align 4, !tbaa !28 ; 4 uses
  %i.bds = shufflevector <2 x i32> %vector.recur, <2 x i32> %wide.load1192, <2 x i32> <i32 1, i32 2>
  %i.bdt = shufflevector <2 x i32> %wide.load1192, <2 x i32> %wide.load1193, <2 x i32> <i32 1, i32 2>
  %i.bdu = sub <2 x i32> %wide.load1192, %i.bds
  %i.bdv = sub <2 x i32> %wide.load1193, %i.bdt
  %i.bdw = and <2 x i8> %wide.load1190, splat (i8 -3)
  %i.bdx = and <2 x i8> %wide.load1191, splat (i8 -3)
  %i.bdy = icmp eq <2 x i8> %i.bdw, zeroinitializer
  %i.bdz = icmp eq <2 x i8> %i.bdx, zeroinitializer
  %i.bea = zext <2 x i32> %i.bdu to <2 x i64>
  %i.beb = zext <2 x i32> %i.bdv to <2 x i64>
  %i.bec = select <2 x i1> %i.bdy, <2 x i64> %i.bea, <2 x i64> zeroinitializer
  %i.bed = select <2 x i1> %i.bdz, <2 x i64> %i.beb, <2 x i64> zeroinitializer
  %i.bee = freeze <2 x i64> %i.bec
  %i.bef = freeze <2 x i64> %i.bed
  %i.beg = add <2 x i64> %i.bee, %vec.phi         ; 2 uses
  %i.beh = add <2 x i64> %i.bef, %vec.phi1189     ; 2 uses
  %index.next1194 = add nuw i64 %index1188, 4     ; 2 uses
  %i.bei = icmp eq i64 %index.next1194, %n.vec1186
  br i1 %i.bei, label %middle.block1195, label %vector.body1187, !llvm.loop !94

middle.block1195:                                 ; preds = %vector.body1187
  %bin.rdx = add <2 x i64> %i.beh, %i.beg
  %i.bej = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %vector.recur.extract = extractelement <2 x i32> %wide.load1193, i64 1
  %cmp.n1196 = icmp eq i64 %.0702, %n.vec1186
  br i1 %cmp.n1196, label %._crit_edge.loopexit.i, label %.lr.ph.i494.preheader

.lr.ph.i494.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block1195
  %.ph = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %vector.recur.extract, %middle.block1195 ]
  %.02.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.bej, %middle.block1195 ]
  %.0161.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec1186, %middle.block1195 ]
  br label %.lr.ph.i494

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i494, %middle.block1195
  %.lcssa1078 = phi i64 [ %i.bej, %middle.block1195 ], [ %i.bev, %.lr.ph.i494 ]
  %i.bek = lshr i64 %.lcssa1078, 1
  br label %_ZN7meshoptL18boundEdgeCollapsesERKNS_13EdgeAdjacencyEmmPh.exit

.lr.ph.i494:                                      ; preds = %.lr.ph.i494.preheader, %.lr.ph.i494
  %i.bel = phi i32 [ %i.beq, %.lr.ph.i494 ], [ %.ph, %.lr.ph.i494.preheader ]
  %.02.i = phi i64 [ %i.bev, %.lr.ph.i494 ], [ %.02.i.ph, %.lr.ph.i494.preheader ]
  %.0161.i = phi i64 [ %i.beo, %.lr.ph.i494 ], [ %.0161.i.ph, %.lr.ph.i494.preheader ] ; 2 uses
  %i.bem = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.0161.i
  %i.ben = load i8, ptr %i.bem, align 1, !tbaa !29
  %i.beo = add nuw i64 %.0161.i, 1                ; 3 uses
  %i.bep = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.beo
  %i.beq = load i32, ptr %i.bep, align 4, !tbaa !28 ; 2 uses
  %i.ber = sub i32 %i.beq, %i.bel
  %i.bes = and i8 %i.ben, -3
  %or.cond.i495 = icmp eq i8 %i.bes, 0
  %i.bet = zext i32 %i.ber to i64
  %i.beu = select i1 %or.cond.i495, i64 %i.bet, i64 0
  %.fr835 = freeze i64 %i.beu
  %i.bev = add i64 %.fr835, %.02.i                ; 2 uses
  %exitcond.not.i496 = icmp eq i64 %i.beo, %.0702
  br i1 %exitcond.not.i496, label %._crit_edge.loopexit.i, label %.lr.ph.i494, !llvm.loop !95

_ZN7meshoptL18boundEdgeCollapsesERKNS_13EdgeAdjacencyEmmPh.exit: ; preds = %.loopexit727, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %.loopexit727 ], [ %i.bek, %._crit_edge.loopexit.i ]
  %i.bew = add i64 %2, 3
  %i.bex = sub i64 %i.bew, %.0.lcssa.i            ; 6 uses
  %i.bey = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bez = icmp ugt i64 %i.bex, 1537228672809129301
  %i.bfa = mul nuw i64 %i.bex, 12
  %i.bfb = select i1 %i.bez, i64 -1, i64 %i.bfa
  %i.bfc = invoke noundef ptr %i.bey(i64 noundef %i.bfb)
          to label %bb.dk unwind label %bb.em, !inline_history !96 ; 13 uses

bb.dk:                                            ; preds = %_ZN7meshoptL18boundEdgeCollapsesERKNS_13EdgeAdjacencyEmmPh.exit
  %i.bfd = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.bfe = add nsw i64 %i.bfd, 1
  store i64 %i.bfe, ptr %i.es, align 8, !tbaa !26
  %i.bff = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bfd
  store ptr %i.bfc, ptr %i.bff, align 8, !tbaa !27
  %i.bfg = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bfh = icmp ugt i64 %i.bex, 4611686018427387903
  %i.bfi = shl nuw i64 %i.bex, 2
  %i.bfj = select i1 %i.bfh, i64 -1, i64 %i.bfi
  %i.bfk = invoke noundef ptr %i.bfg(i64 noundef %i.bfj)
          to label %bb.dl unwind label %bb.en, !inline_history !4 ; 6 uses

bb.dl:                                            ; preds = %bb.dk
  %i.bfl = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.bfm = add nsw i64 %i.bfl, 1
  store i64 %i.bfm, ptr %i.es, align 8, !tbaa !26
  %i.bfn = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bfl
  store ptr %i.bfk, ptr %i.bfn, align 8, !tbaa !27
  %i.bfo = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bfp = invoke noundef ptr %i.bfo(i64 noundef %i.jf)
          to label %bb.dm unwind label %bb.eo, !inline_history !4 ; 16 uses

bb.dm:                                            ; preds = %bb.dl
  %i.bfq = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.bfr = add nsw i64 %i.bfq, 1
  store i64 %i.bfr, ptr %i.es, align 8, !tbaa !26
  %i.bfs = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bfq
  store ptr %i.bfp, ptr %i.bfs, align 8, !tbaa !27
  %i.bft = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bfu = invoke noundef ptr %i.bft(i64 noundef %.0702)
          to label %bb.dn unwind label %bb.ep, !inline_history !65 ; 17 uses

bb.dn:                                            ; preds = %bb.dm
  %i.bfv = load i64, ptr %i.es, align 8, !tbaa !26 ; 2 uses
  %i.bfw = add nsw i64 %i.bfv, 1
  store i64 %i.bfw, ptr %i.es, align 8, !tbaa !26
  %i.bfx = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bfv
  store ptr %i.bfu, ptr %i.bfx, align 8, !tbaa !27
  %i.bfy = and i32 %13, 4
  %.not406 = icmp eq i32 %i.bfy, 0
  %i.bfz = select i1 %.not406, float 1.000000e+00, float %i.zx ; 3 uses
  %i.bga = fmul float %12, %12
  %i.bgb = fmul float %i.bfz, %i.bfz
  %i.bgc = fdiv float %i.bga, %i.bgb              ; 5 uses
  %i.bgd = icmp ugt i64 %2, %11
  br i1 %i.bgd, label %.lr.ph784, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread

.lr.ph784:                                        ; preds = %bb.dn
  %i.bge = icmp ult i64 %i.bex, 3
  %.not.i542 = icmp eq ptr %.0346, null
  br i1 %i.bge, label %.lr.ph784.split.us, label %.preheader.i505.preheader.preheader

.preheader.i505.preheader.preheader:              ; preds = %.lr.ph784
  %min.iters.check1199 = icmp ult i64 %.0702, 8
  %n.vec1201 = and i64 %.0702, -8                 ; 3 uses
  %cmp.n1206 = icmp eq i64 %.0702, %n.vec1201
  %xtraiter1370 = and i64 %.0330, 1
  %i.bgf = icmp eq i64 %.0330, 1
  %unroll_iter1374 = and i64 %.0330, -2
  %lcmp.mod1372.not = icmp eq i64 %xtraiter1370, 0
  %lcmp.mod1373 = trunc i64 %.0330 to i1
  br label %.preheader.i505.preheader

.lr.ph784.split.us:                               ; preds = %.lr.ph784
  call fastcc void @_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef %0, i64 noundef %2, i64 noundef %.0702, ptr noundef %i.jg)
  br label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread

.preheader.i505.preheader:                        ; preds = %.preheader.i505.preheader.preheader, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit
  %.0339782 = phi i64 [ %.3, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ], [ %2, %.preheader.i505.preheader.preheader ] ; 6 uses
  %.0680781 = phi float [ %i.cvg, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ], [ 0.000000e+00, %.preheader.i505.preheader.preheader ] ; 2 uses
  %.0688780 = phi float [ %.8, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ], [ 0.000000e+00, %.preheader.i505.preheader.preheader ] ; 2 uses
  %.2698779 = phi float [ %.3699, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ], [ %.1697, %.preheader.i505.preheader.preheader ] ; 4 uses
  call fastcc void @_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef %0, i64 noundef %.0339782, i64 noundef %.0702, ptr noundef %i.jg)
  br label %.preheader.i505

.preheader.i505:                                  ; preds = %.preheader.i505.preheader, %bb.el
  %.093.i = phi i64 [ %.4.2.i, %bb.el ], [ 0, %.preheader.i505.preheader ] ; 7 uses
  %.07792.i = phi i64 [ %i.bkj, %bb.el ], [ 0, %.preheader.i505.preheader ] ; 2 uses
  %i.bgg = getelementptr [4 x i8], ptr %0, i64 %.07792.i ; 4 uses
  %i.bgh = load i32, ptr %i.bgg, align 4, !tbaa !28 ; 4 uses
  %i.bgi = getelementptr i8, ptr %i.bgg, i64 4    ; 2 uses
  %i.bgj = load i32, ptr %i.bgi, align 4, !tbaa !28 ; 9 uses
  %i.bgk = zext i32 %i.bgh to i64                 ; 3 uses
  %i.bgl = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.bgk
  %i.bgm = load i32, ptr %i.bgl, align 4, !tbaa !28 ; 3 uses
  %i.bgn = zext i32 %i.bgj to i64                 ; 8 uses
  %i.bgo = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.bgn
  %i.bgp = load i32, ptr %i.bgo, align 4, !tbaa !28 ; 6 uses
  %i.bgq = icmp eq i32 %i.bgm, %i.bgp
  br i1 %i.bgq, label %bb.dv, label %bb.do

bb.do:                                            ; preds = %.preheader.i505
  %i.bgr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.bgk
  %i.bgs = load i8, ptr %i.bgr, align 1, !tbaa !29 ; 3 uses
  %i.bgt = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.bgn
  %i.bgu = load i8, ptr %i.bgt, align 1, !tbaa !29 ; 3 uses
  %i.bgv = zext i8 %i.bgs to i64                  ; 3 uses
  %i.bgw = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kCanCollapseE, i64 %i.bgv
  %i.bgx = zext i8 %i.bgu to i64                  ; 3 uses
  %i.bgy = getelementptr inbounds nuw i8, ptr %i.bgw, i64 %i.bgx
  %i.bgz = load i8, ptr %i.bgy, align 1, !tbaa !29 ; 3 uses
  %i.bha = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kCanCollapseE, i64 %i.bgx
  %i.bhb = getelementptr inbounds nuw i8, ptr %i.bha, i64 %i.bgv
  %i.bhc = load i8, ptr %i.bhb, align 1, !tbaa !29 ; 2 uses
  %i.bhd = or i8 %i.bhc, %i.bgz
  %.not.i506 = icmp eq i8 %i.bhd, 0
  br i1 %.not.i506, label %bb.dv, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bhe = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kHasOppositeE, i64 %i.bgv
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bhe, i64 %i.bgx
  %i.bhg = load i8, ptr %i.bhf, align 1, !tbaa !29
  %.not81.i = icmp ne i8 %i.bhg, 0
  %i.bhh = icmp ugt i32 %i.bgp, %i.bgm
  %or.cond86.i = and i1 %i.bhh, %.not81.i
  br i1 %or.cond86.i, label %bb.dv, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.bhi = add i8 %i.bgs, -1
  %or.cond.i507 = icmp ult i8 %i.bhi, 2
  %i.bhj = icmp ne i8 %i.bgu, 0
  %or.cond5.i508 = and i1 %or.cond.i507, %i.bhj
  br i1 %or.cond5.i508, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.bhk = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %i.bgk
  %i.bhl = load i32, ptr %i.bhk, align 4, !tbaa !28
  %.not82.i = icmp eq i32 %i.bhl, %i.bgj
  br i1 %.not82.i, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.bhm = add i8 %i.bgu, -1
  %or.cond8.i509 = icmp ult i8 %i.bhm, 2
  %i.bhn = icmp ne i8 %i.bgs, 0
  %or.cond11.i510 = and i1 %i.bhn, %or.cond8.i509
  br i1 %or.cond11.i510, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.bgn
  %i.bhp = load i32, ptr %i.bho, align 4, !tbaa !28
  %.not83.i = icmp eq i32 %i.bhp, %i.bgh
  br i1 %.not83.i, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.bhq = and i8 %i.bhc, %i.bgz
  %.not84.i = icmp ne i8 %i.bhq, 0
  %.not85.i = icmp eq i8 %i.bgz, 0                ; 2 uses
  %.sink116.i = select i1 %.not85.i, i32 %i.bgj, i32 %i.bgh
  %.sink114.i = select i1 %.not85.i, i32 %i.bgh, i32 %i.bgj
  %.sink.i = zext i1 %.not84.i to i32
  %i.bhr = getelementptr inbounds nuw [12 x i8], ptr %i.bfc, i64 %.093.i ; 3 uses
  store i32 %.sink116.i, ptr %i.bhr, align 4, !tbaa !28
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bhr, i64 4
  store i32 %.sink114.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !28
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bhr, i64 8
  store i32 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !29
  %.2.i = add i64 %.093.i, 1
  %.pre.i511 = load i32, ptr %i.bgi, align 4, !tbaa !28 ; 2 uses
  %.phi.trans.insert.i = zext i32 %.pre.i511 to i64 ; 2 uses
  %.phi.trans.insert95.i = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %.phi.trans.insert.i
  %.pre96.i = load i32, ptr %.phi.trans.insert95.i, align 4, !tbaa !28
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.dr, %bb.dp, %bb.do, %.preheader.i505
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %bb.du ], [ %i.bgn, %bb.do ], [ %i.bgn, %bb.dp ], [ %i.bgn, %bb.dr ], [ %i.bgn, %bb.dt ], [ %i.bgn, %.preheader.i505 ] ; 2 uses
  %i.bhs = phi i32 [ %.pre96.i, %bb.du ], [ %i.bgp, %bb.do ], [ %i.bgp, %bb.dp ], [ %i.bgp, %bb.dr ], [ %i.bgp, %bb.dt ], [ %i.bgm, %.preheader.i505 ] ; 3 uses
  %i.bht = phi i32 [ %.pre.i511, %bb.du ], [ %i.bgj, %bb.do ], [ %i.bgj, %bb.dp ], [ %i.bgj, %bb.dr ], [ %i.bgj, %bb.dt ], [ %i.bgj, %.preheader.i505 ] ; 3 uses
  %.4.i = phi i64 [ %.2.i, %bb.du ], [ %.093.i, %bb.do ], [ %.093.i, %bb.dp ], [ %.093.i, %bb.dr ], [ %.093.i, %bb.dt ], [ %.093.i, %.preheader.i505 ] ; 7 uses
  %i.bhu = getelementptr i8, ptr %i.bgg, i64 8    ; 2 uses
  %i.bhv = load i32, ptr %i.bhu, align 4, !tbaa !28 ; 9 uses
  %i.bhw = zext i32 %i.bhv to i64                 ; 8 uses
  %i.bhx = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.bhw
  %i.bhy = load i32, ptr %i.bhx, align 4, !tbaa !28 ; 6 uses
  %i.bhz = icmp eq i32 %i.bhs, %i.bhy
  br i1 %i.bhz, label %bb.ed, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.bia = getelementptr inbounds nuw i8, ptr %i.jq, i64 %.pre-phi.i
  %i.bib = load i8, ptr %i.bia, align 1, !tbaa !29 ; 3 uses
  %i.bic = getelementptr inbounds nuw i8, ptr %i.jq, i64 %i.bhw
  %i.bid = load i8, ptr %i.bic, align 1, !tbaa !29 ; 3 uses
  %i.bie = zext i8 %i.bib to i64                  ; 3 uses
  %i.bif = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kCanCollapseE, i64 %i.bie
  %i.big = zext i8 %i.bid to i64                  ; 3 uses
  %i.bih = getelementptr inbounds nuw i8, ptr %i.bif, i64 %i.big
  %i.bii = load i8, ptr %i.bih, align 1, !tbaa !29 ; 3 uses
  %i.bij = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kCanCollapseE, i64 %i.big
  %i.bik = getelementptr inbounds nuw i8, ptr %i.bij, i64 %i.bie
  %i.bil = load i8, ptr %i.bik, align 1, !tbaa !29 ; 2 uses
  %i.bim = or i8 %i.bil, %i.bii
  %.not.1.i = icmp eq i8 %i.bim, 0
  br i1 %.not.1.i, label %bb.ed, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.bin = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kHasOppositeE, i64 %i.bie
  %i.bio = getelementptr inbounds nuw i8, ptr %i.bin, i64 %i.big
  %i.bip = load i8, ptr %i.bio, align 1, !tbaa !29
  %.not81.1.i = icmp ne i8 %i.bip, 0
  %i.biq = icmp ugt i32 %i.bhy, %i.bhs
  %or.cond86.1.i = and i1 %i.biq, %.not81.1.i
  br i1 %or.cond86.1.i, label %bb.ed, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bir = add i8 %i.bib, -1
  %or.cond.1.i = icmp ult i8 %i.bir, 2
  %i.bis = icmp ne i8 %i.bid, 0
  %or.cond5.1.i = and i1 %or.cond.1.i, %i.bis
  br i1 %or.cond5.1.i, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.bit = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.pre-phi.i
  %i.biu = load i32, ptr %i.bit, align 4, !tbaa !28
  %.not82.1.i = icmp eq i32 %i.biu, %i.bhv
  br i1 %.not82.1.i, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.biv = add i8 %i.bid, -1
  %or.cond8.1.i = icmp ult i8 %i.biv, 2
  %i.biw = icmp ne i8 %i.bib, 0
  %or.cond11.1.i = and i1 %i.biw, %or.cond8.1.i
  br i1 %or.cond11.1.i, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.bix = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %i.bhw
  %i.biy = load i32, ptr %i.bix, align 4, !tbaa !28
  %.not83.1.i = icmp eq i32 %i.biy, %i.bht
  br i1 %.not83.1.i, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.biz = and i8 %i.bil, %i.bii
  %.not84.1.i = icmp ne i8 %i.biz, 0
  %.not85.1.i = icmp eq i8 %i.bii, 0              ; 2 uses
  %.sink122.i = select i1 %.not85.1.i, i32 %i.bhv, i32 %i.bht
  %.sink120.i = select i1 %.not85.1.i, i32 %i.bht, i32 %i.bhv
  %.sink118.i = zext i1 %.not84.1.i to i32
end_hunk_2
begin_hunk_3_@meshopt_simplifySloppy:bb.a
  %i.fl = insertelement <4 x float> %i.fk, float %i.fh, i64 2
  %i.fm = insertelement <4 x float> %i.fl, float %i.fi, i64 3
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> %broadcast.splat307, <4 x float> splat (float 5.000000e-01))
  %i.fo = fptosi <4 x float> %i.fn to <4 x i32>
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fb, i64 28
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fd, i64 40
  %i.ft = load float, ptr %i.fp, align 4, !tbaa !50
  %i.fu = load float, ptr %i.fq, align 4, !tbaa !50
  %i.fv = load float, ptr %i.fr, align 4, !tbaa !50
  %i.fw = load float, ptr %i.fs, align 4, !tbaa !50
  %i.fx = insertelement <4 x float> poison, float %i.ft, i64 0
  %i.fy = insertelement <4 x float> %i.fx, float %i.fu, i64 1
  %i.fz = insertelement <4 x float> %i.fy, float %i.fv, i64 2
  %i.ga = insertelement <4 x float> %i.fz, float %i.fw, i64 3
  %i.gb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> %broadcast.splat307, <4 x float> splat (float 5.000000e-01))
  %i.gc = fptosi <4 x float> %i.gb to <4 x i32>
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ez, i64 20
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fb, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fd, i64 44
  %i.gh = load float, ptr %i.gd, align 4, !tbaa !46
  %i.gi = load float, ptr %i.ge, align 4, !tbaa !46
  %i.gj = load float, ptr %i.gf, align 4, !tbaa !46
  %i.gk = load float, ptr %i.gg, align 4, !tbaa !46
  %i.gl = insertelement <4 x float> poison, float %i.gh, i64 0
  %i.gm = insertelement <4 x float> %i.gl, float %i.gi, i64 1
  %i.gn = insertelement <4 x float> %i.gm, float %i.gj, i64 2
  %i.go = insertelement <4 x float> %i.gn, float %i.gk, i64 3
  %i.gp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %broadcast.splat307, <4 x float> splat (float 5.000000e-01))
  %i.gq = fptosi <4 x float> %i.gp to <4 x i32>
  %i.gr = shl <4 x i32> %i.fo, splat (i32 20)
  %i.gs = shl <4 x i32> %i.gc, splat (i32 10)
  %i.gt = or <4 x i32> %i.gs, %i.gr
  %i.gu = or <4 x i32> %i.gt, %i.gq
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index309
  store <4 x i32> %i.gu, ptr %i.gv, align 4, !tbaa !28
  %index.next310 = add nuw i64 %index309, 4       ; 2 uses
  %i.gw = icmp eq i64 %index.next310, %n.vec305
  br i1 %i.gw, label %middle.block311, label %vector.body308, !llvm.loop !168

middle.block311:                                  ; preds = %vector.body308
  br i1 %cmp.n312, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, label %.lr.ph.split.us.i175.preheader343

.lr.ph.split.us.i175.preheader343:                ; preds = %.lr.ph.split.us.i175.preheader, %middle.block311
  %.024.us.i176.ph = phi i64 [ 0, %.lr.ph.split.us.i175.preheader ], [ %n.vec305, %middle.block311 ]
  %i.gx = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us.i175

.lr.ph.split.us.i175:                             ; preds = %.lr.ph.split.us.i175.preheader343, %.lr.ph.split.us.i175
  %.024.us.i176 = phi i64 [ %i.hl, %.lr.ph.split.us.i175 ], [ %.024.us.i176.ph, %.lr.ph.split.us.i175.preheader343 ] ; 3 uses
  %i.gz = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.us.i176 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !46
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.hb, float %i.ev, float 5.000000e-01)
  %i.hd = fptosi float %i.hc to i32
  %i.he = load <2 x float>, ptr %i.gz, align 4, !tbaa !44
  %i.hf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.gy, <2 x float> splat (float 5.000000e-01))
  %i.hg = fptosi <2 x float> %i.hf to <2 x i32>
  %i.hh = shl <2 x i32> %i.hg, <i32 20, i32 10>   ; 2 uses
  %shift327 = shufflevector <2 x i32> %i.hh, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop328.a = or <2 x i32> %shift327, %i.hh
  %i.hi = extractelement <2 x i32> %foldExtExtBinop328.a, i64 0
  %i.hj = or i32 %i.hi, %i.hd
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.us.i176
  store i32 %i.hj, ptr %i.hk, align 4, !tbaa !28
  %i.hl = add nuw i64 %.024.us.i176, 1            ; 2 uses
  %exitcond28.not.i177 = icmp eq i64 %i.hl, %4
  br i1 %exitcond28.not.i177, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, label %.lr.ph.split.us.i175, !llvm.loop !169

.lr.ph.split.i170:                                ; preds = %.lr.ph.split.i170.preheader, %bb.q
  %.024.i171 = phi i64 [ %i.if, %bb.q ], [ 0, %.lr.ph.split.i170.preheader ] ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %6, i64 %.024.i171
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !29
  %i.ho = and i8 %i.hn, 1
  %.not23.i172 = icmp eq i8 %i.ho, 0
  br i1 %.not23.i172, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.split.i170
  %i.hp = trunc i64 %.024.i171 to i32
  %i.hq = or i32 %i.hp, 1073741824
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.i170
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.i171 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !46
  %i.hu = tail call float @llvm.fmuladd.f32(float %i.ht, float %i.ev, float 5.000000e-01)
  %i.hv = fptosi float %i.hu to i32
  %i.hw = load <2 x float>, ptr %i.hr, align 4, !tbaa !44
  %i.hx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hw, <2 x float> %i.ex, <2 x float> splat (float 5.000000e-01))
  %i.hy = fptosi <2 x float> %i.hx to <2 x i32>
  %i.hz = shl <2 x i32> %i.hy, <i32 20, i32 10>   ; 2 uses
  %i.ia = extractelement <2 x i32> %i.hz, i64 1
  %i.ib = or i32 %i.ia, %i.hv
  %i.ic = extractelement <2 x i32> %i.hz, i64 0
  %i.id = or i32 %i.ib, %i.ic
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sink.i173 = phi i32 [ %i.id, %bb.p ], [ %i.hq, %bb.o ]
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.i171
  store i32 %.sink.i173, ptr %i.ie, align 4, !tbaa !28
  %i.if = add nuw i64 %.024.i171, 1               ; 2 uses
  %exitcond.not.i174 = icmp eq i64 %i.if, %4
  br i1 %exitcond.not.i174, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, label %.lr.ph.split.i170, !llvm.loop !166

_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178: ; preds = %bb.q, %.lr.ph.split.us.i175, %middle.block311, %bb.n
  br i1 %.not.i179, label %_ZN7meshoptL14countTrianglesEPKjS1_m.exit184, label %.lr.ph.i180

.lr.ph.i180:                                      ; preds = %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178, %.lr.ph.i180
  %.021.i181 = phi i64 [ %i.jb, %.lr.ph.i180 ], [ 0, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178 ]
  %.01920.i182 = phi i64 [ %i.jc, %.lr.ph.i180 ], [ 0, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178 ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01920.i182 ; 3 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !28
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ii
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !28 ; 2 uses
  %i.il = getelementptr i8, ptr %i.ig, i64 4
  %i.im = load i32, ptr %i.il, align 4, !tbaa !28
  %i.in = zext i32 %i.im to i64
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.in
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !28 ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ig, i64 8
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !28
  %i.is = zext i32 %i.ir to i64
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.is
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !28 ; 2 uses
  %i.iv = icmp ne i32 %i.ik, %i.ip
  %i.iw = icmp ne i32 %i.ik, %i.iu
  %i.ix = and i1 %i.iv, %i.iw
  %i.iy = icmp ne i32 %i.ip, %i.iu
  %i.iz = and i1 %i.iy, %i.ix
  %i.ja = zext i1 %i.iz to i64
  %i.jb = add i64 %.021.i181, %i.ja               ; 2 uses
  %i.jc = add i64 %.01920.i182, 3                 ; 2 uses
  %i.jd = icmp ult i64 %i.jc, %2
  br i1 %i.jd, label %.lr.ph.i180, label %_ZN7meshoptL14countTrianglesEPKjS1_m.exit184, !llvm.loop !167

_ZN7meshoptL14countTrianglesEPKjS1_m.exit184:     ; preds = %.lr.ph.i180, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178
  %.0.lcssa.i183 = phi i64 [ 0, %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit178 ], [ %i.jb, %.lr.ph.i180 ] ; 4 uses
  %.not151 = icmp ugt i64 %.0.lcssa.i183, %i.em   ; 4 uses
  %.0127. = select i1 %.not151, i32 %.0127231, i32 %i.et ; 3 uses
  %..0125 = select i1 %.not151, i32 %i.et, i32 %.0125232 ; 2 uses
  %.1124. = select i1 %.not151, i64 %.1124233, i64 %.0.lcssa.i183 ; 2 uses
  %..0122 = select i1 %.not151, i64 %.0.lcssa.i183, i64 %.0122234
  %i.je = icmp samesign ult i32 %.0120236, 5
  br i1 %i.je, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZN7meshoptL14countTrianglesEPKjS1_m.exit184
  %i.jf = sitofp i32 %i.et to float               ; 3 uses
  %i.jg = sitofp i32 %.0125232 to float
  %i.jh = fsub float %i.jf, %i.jg                 ; 2 uses
  %i.ji = uitofp i64 %.0122234 to float           ; 3 uses
  %i.jj = fsub nnan float %i.ji, %i.en
  %i.jk = fmul float %i.jj, %i.jh
  %i.jl = uitofp nneg i64 %.1124233 to float      ; 3 uses
  %i.jm = uitofp i64 %.0.lcssa.i183 to float      ; 3 uses
  %i.jn = fsub float %i.jl, %i.jm
  %i.jo = fsub nnan float %i.jl, %i.en
  %i.jp = sitofp i32 %.0127231 to float
  %i.jq = fsub float %i.jf, %i.jp                 ; 2 uses
  %i.jr = fmul float %i.jo, %i.jq
  %i.js = fsub nnan float %i.jm, %i.ji
  %i.jt = fmul float %i.jr, %i.js
  %i.ju = tail call float @llvm.fmuladd.f32(float %i.jk, float %i.jn, float %i.jt) ; 2 uses
  %i.jv = fcmp oeq float %i.ju, 0.000000e+00
  %i.jw = fsub nnan float %i.ji, %i.jl
  %i.jx = fsub nnan float %i.jm, %i.en
  %i.jy = fmul float %i.jh, %i.jx
  %i.jz = fmul float %i.jq, %i.jy
  %i.ka = fmul float %i.jw, %i.jz
  %i.kb = fdiv float %i.ka, %i.ju
  %i.kc = select i1 %i.jv, float 0.000000e+00, float %i.kb
  %i.kd = fadd float %i.kc, %i.jf
  %i.ke = fadd float %i.kd, 5.000000e-01
  %i.kf = fptosi float %i.ke to i32
  br label %bb.t

bb.s:                                             ; preds = %_ZN7meshoptL14countTrianglesEPKjS1_m.exit184
  %i.kg = add nsw i32 %.0127., %..0125
  %i.kh = sdiv i32 %i.kg, 2
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ki = phi i32 [ %i.kf, %bb.r ], [ %i.kh, %bb.s ]
  %i.kj = add nuw nsw i32 %.0120236, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.kj, 15
  br i1 %exitcond.not, label %bb.u, label %bb.j, !llvm.loop !170

bb.u:                                             ; preds = %bb.j, %bb.t
  %.0127.lcssa = phi i32 [ %.0127231, %bb.j ], [ %.0127., %bb.t ]
  %.1124.lcssa = phi i64 [ %.1124233, %bb.j ], [ %.1124., %bb.t ] ; 3 uses
  %i.kk = icmp eq i64 %.1124.lcssa, 0
  br i1 %i.kk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.not162 = icmp eq ptr %9, null
  br i1 %.not162, label %.lr.ph.i218.preheader, label %11

11:                                               ; preds = %bb.v
  store float 1.000000e+00, ptr %9, align 4, !tbaa !44
  br label %.lr.ph.i218.preheader

bb.w:                                             ; preds = %bb.u
  %i.kl = lshr i64 %4, 2
  %i.km = add i64 %i.kl, %4
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.0.i = phi i64 [ 1, %bb.w ], [ %i.ko, %bb.x ]  ; 5 uses
  %i.kn = icmp ult i64 %.0.i, %i.km
  %i.ko = shl i64 %.0.i, 1
  br i1 %i.kn, label %bb.x, label %_ZN7meshoptL12hashBuckets2Em.exit, !llvm.loop !0

_ZN7meshoptL12hashBuckets2Em.exit:                ; preds = %bb.x
  %i.kp = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.kq = icmp ugt i64 %.0.i, 4611686018427387903
  %i.kr = shl i64 %.0.i, 2                        ; 3 uses
  %i.ks = select i1 %i.kq, i64 -1, i64 %i.kr
  %i.kt = invoke noundef ptr %i.kp(i64 noundef %i.ks)
          to label %bb.y unwind label %bb.aq, !inline_history !4 ; 6 uses

bb.y:                                             ; preds = %_ZN7meshoptL12hashBuckets2Em.exit
  store i64 3, ptr %i.g, align 8, !tbaa !26
  %i.ku = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.kt, ptr %i.ku, align 8, !tbaa !27
  %i.kv = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.kw = invoke noundef ptr %i.kv(i64 noundef %i.l)
          to label %bb.z unwind label %bb.ar, !inline_history !4 ; 10 uses

bb.z:                                             ; preds = %bb.y
  store i64 4, ptr %i.g, align 8, !tbaa !26
  %i.kx = getelementptr inbounds nuw i8, ptr %10, i64 24
  store ptr %i.kw, ptr %i.kx, align 8, !tbaa !27
  %i.ky = add nsw i32 %.0127.lcssa, -1
  %i.kz = sitofp i32 %i.ky to float               ; 5 uses
  br i1 %.not26.i167, label %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread, label %.lr.ph.i188

.lr.ph.i188:                                      ; preds = %bb.z
  br i1 %.not.i169, label %.lr.ph.split.us.i195.preheader, label %.lr.ph.split.i190.preheader

.lr.ph.split.i190.preheader:                      ; preds = %.lr.ph.i188
  %i.la = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.i190

.lr.ph.split.us.i195.preheader:                   ; preds = %.lr.ph.i188
  %min.iters.check315 = icmp ult i64 %4, 4
  br i1 %min.iters.check315, label %.lr.ph.split.us.i195.preheader341, label %vector.ph316

vector.ph316:                                     ; preds = %.lr.ph.split.us.i195.preheader
  %n.vec317 = and i64 %4, -4                      ; 3 uses
  %broadcast.splatinsert318 = insertelement <4 x float> poison, float %i.kz, i64 0
  %broadcast.splat319 = shufflevector <4 x float> %broadcast.splatinsert318, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body320

vector.body320:                                   ; preds = %vector.body320, %vector.ph316
  %index321 = phi i64 [ 0, %vector.ph316 ], [ %index.next322, %vector.body320 ] ; 6 uses
  %i.lc = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index321 ; 3 uses
  %i.ld = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index321 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 12
  %i.lf = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index321 ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index321 ; 3 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 36
  %i.lj = load float, ptr %i.lc, align 4, !tbaa !49
  %i.lk = load float, ptr %i.le, align 4, !tbaa !49
  %i.ll = load float, ptr %i.lg, align 4, !tbaa !49
  %i.lm = load float, ptr %i.li, align 4, !tbaa !49
  %i.ln = insertelement <4 x float> poison, float %i.lj, i64 0
  %i.lo = insertelement <4 x float> %i.ln, float %i.lk, i64 1
  %i.lp = insertelement <4 x float> %i.lo, float %i.ll, i64 2
  %i.lq = insertelement <4 x float> %i.lp, float %i.lm, i64 3
  %i.lr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lq, <4 x float> %broadcast.splat319, <4 x float> splat (float 5.000000e-01))
  %i.ls = fptosi <4 x float> %i.lr to <4 x i32>
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lc, i64 4
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lf, i64 28
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lh, i64 40
  %i.lx = load float, ptr %i.lt, align 4, !tbaa !50
  %i.ly = load float, ptr %i.lu, align 4, !tbaa !50
  %i.lz = load float, ptr %i.lv, align 4, !tbaa !50
  %i.ma = load float, ptr %i.lw, align 4, !tbaa !50
  %i.mb = insertelement <4 x float> poison, float %i.lx, i64 0
  %i.mc = insertelement <4 x float> %i.mb, float %i.ly, i64 1
  %i.md = insertelement <4 x float> %i.mc, float %i.lz, i64 2
  %i.me = insertelement <4 x float> %i.md, float %i.ma, i64 3
  %i.mf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.me, <4 x float> %broadcast.splat319, <4 x float> splat (float 5.000000e-01))
  %i.mg = fptosi <4 x float> %i.mf to <4 x i32>
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ld, i64 20
  %i.mj = getelementptr inbounds nuw i8, ptr %i.lf, i64 32
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lh, i64 44
  %i.ml = load float, ptr %i.mh, align 4, !tbaa !46
  %i.mm = load float, ptr %i.mi, align 4, !tbaa !46
  %i.mn = load float, ptr %i.mj, align 4, !tbaa !46
  %i.mo = load float, ptr %i.mk, align 4, !tbaa !46
  %i.mp = insertelement <4 x float> poison, float %i.ml, i64 0
  %i.mq = insertelement <4 x float> %i.mp, float %i.mm, i64 1
  %i.mr = insertelement <4 x float> %i.mq, float %i.mn, i64 2
  %i.ms = insertelement <4 x float> %i.mr, float %i.mo, i64 3
  %i.mt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ms, <4 x float> %broadcast.splat319, <4 x float> splat (float 5.000000e-01))
  %i.mu = fptosi <4 x float> %i.mt to <4 x i32>
  %i.mv = shl <4 x i32> %i.ls, splat (i32 20)
  %i.mw = shl <4 x i32> %i.mg, splat (i32 10)
  %i.mx = or <4 x i32> %i.mw, %i.mv
  %i.my = or <4 x i32> %i.mx, %i.mu
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index321
  store <4 x i32> %i.my, ptr %i.mz, align 4, !tbaa !28
  %index.next322 = add nuw i64 %index321, 4       ; 2 uses
  %i.na = icmp eq i64 %index.next322, %n.vec317
  br i1 %i.na, label %middle.block323, label %vector.body320, !llvm.loop !171

middle.block323:                                  ; preds = %vector.body320
  %cmp.n324 = icmp eq i64 %4, %n.vec317
  br i1 %cmp.n324, label %.lr.ph33.i, label %.lr.ph.split.us.i195.preheader341

.lr.ph.split.us.i195.preheader341:                ; preds = %.lr.ph.split.us.i195.preheader, %middle.block323
  %.024.us.i196.ph = phi i64 [ 0, %.lr.ph.split.us.i195.preheader ], [ %n.vec317, %middle.block323 ]
  %i.nb = insertelement <2 x float> poison, float %i.kz, i64 0
  %i.nc = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.split.us.i195

.lr.ph.split.us.i195:                             ; preds = %.lr.ph.split.us.i195.preheader341, %.lr.ph.split.us.i195
  %.024.us.i196 = phi i64 [ %i.np, %.lr.ph.split.us.i195 ], [ %.024.us.i196.ph, %.lr.ph.split.us.i195.preheader341 ] ; 3 uses
  %i.nd = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.us.i196 ; 2 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 8
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !46
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.nf, float %i.kz, float 5.000000e-01)
  %i.nh = fptosi float %i.ng to i32
  %i.ni = load <2 x float>, ptr %i.nd, align 4, !tbaa !44
  %i.nj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ni, <2 x float> %i.nc, <2 x float> splat (float 5.000000e-01))
  %i.nk = fptosi <2 x float> %i.nj to <2 x i32>
  %i.nl = shl <2 x i32> %i.nk, <i32 20, i32 10>   ; 2 uses
  %shift330.a = shufflevector <2 x i32> %i.nl, <2 x i32> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop331.a = or <2 x i32> %shift330.a, %i.nl
  %i.nm = extractelement <2 x i32> %foldExtExtBinop331.a, i64 0
  %i.nn = or i32 %i.nm, %i.nh
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.us.i196
  store i32 %i.nn, ptr %i.no, align 4, !tbaa !28
  %i.np = add nuw i64 %.024.us.i196, 1            ; 2 uses
  %exitcond28.not.i197 = icmp eq i64 %i.np, %4
  br i1 %exitcond28.not.i197, label %.lr.ph33.i, label %.lr.ph.split.us.i195, !llvm.loop !172

.lr.ph.split.i190:                                ; preds = %.lr.ph.split.i190.preheader, %bb.ac
  %.024.i191 = phi i64 [ %i.oj, %bb.ac ], [ 0, %.lr.ph.split.i190.preheader ] ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %6, i64 %.024.i191
  %i.nr = load i8, ptr %i.nq, align 1, !tbaa !29
  %i.ns = and i8 %i.nr, 1
  %.not23.i192 = icmp eq i8 %i.ns, 0
  br i1 %.not23.i192, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.split.i190
  %i.nt = trunc i64 %.024.i191 to i32
  %i.nu = or i32 %i.nt, 1073741824
  br label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.i190
  %i.nv = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.024.i191 ; 2 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  %i.nx = load float, ptr %i.nw, align 4, !tbaa !46
  %i.ny = tail call float @llvm.fmuladd.f32(float %i.nx, float %i.kz, float 5.000000e-01)
  %i.nz = fptosi float %i.ny to i32
  %i.oa = load <2 x float>, ptr %i.nv, align 4, !tbaa !44
  %i.ob = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oa, <2 x float> %i.lb, <2 x float> splat (float 5.000000e-01))
  %i.oc = fptosi <2 x float> %i.ob to <2 x i32>
  %i.od = shl <2 x i32> %i.oc, <i32 20, i32 10>   ; 2 uses
  %i.oe = extractelement <2 x i32> %i.od, i64 1
  %i.of = or i32 %i.oe, %i.nz
  %i.og = extractelement <2 x i32> %i.od, i64 0
  %i.oh = or i32 %i.of, %i.og
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink.i193 = phi i32 [ %i.oh, %bb.ab ], [ %i.nu, %bb.aa ]
  %i.oi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.024.i191
  store i32 %.sink.i193, ptr %i.oi, align 4, !tbaa !28
  %i.oj = add nuw i64 %.024.i191, 1               ; 2 uses
  %exitcond.not.i194 = icmp eq i64 %i.oj, %4
  br i1 %exitcond.not.i194, label %.lr.ph33.i, label %.lr.ph.split.i190, !llvm.loop !166

_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread: ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kt, i8 -1, i64 %i.kr, i1 false)
  br label %bb.ag

.lr.ph33.i:                                       ; preds = %bb.ac, %.lr.ph.split.us.i195, %middle.block323
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.kt, i8 -1, i64 %i.kr, i1 false)
  %i.ok = add i64 %.0.i, -1                       ; 3 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.af, %.lr.ph33.i
  %.032.i = phi i64 [ 0, %.lr.ph33.i ], [ %i.pp, %bb.af ] ; 4 uses
  %.01930.i = phi i64 [ 0, %.lr.ph33.i ], [ %.1.i, %bb.af ] ; 3 uses
  %i.ol = trunc i64 %.032.i to i32
  %i.om = and i64 %.032.i, 4294967295
  %i.on = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.om
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !28 ; 3 uses
  %i.op = lshr i32 %i.oo, 13
  %i.oq = xor i32 %i.op, %i.oo
  %i.or = mul i32 %i.oq, 1540483477               ; 2 uses
  %i.os = lshr i32 %i.or, 15
  %i.ot = xor i32 %i.os, %i.or
end_hunk_3
begin_hunk_4_@meshopt_simplifySloppy:bb.a
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.pg = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.pf
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !28 ; 2 uses
  %i.pi = icmp eq i32 %i.ph, -1
  br i1 %i.pi, label %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i200

_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i: ; preds = %bb.ae, %bb.ad
  %.02313.i.lcssa27.i = phi i64 [ %i.ov, %bb.ad ], [ %i.pf, %bb.ae ]
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %.02313.i.lcssa27.i
  store i32 %i.ol, ptr %i.pj, align 4, !tbaa !28
  %i.pk = add i64 %.01930.i, 1
  %i.pl = trunc i64 %.01930.i to i32
  br label %bb.af

_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i: ; preds = %.lr.ph.i200
  %i.pm = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.oz
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !28
  br label %bb.af

bb.af:                                            ; preds = %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i
  %.sink.i201 = phi i32 [ %i.pn, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ], [ %i.pl, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ]
  %.1.i = phi i64 [ %.01930.i, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ], [ %i.pk, %_ZN7meshoptL11hashLookup2IjNS_10CellHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ] ; 4 uses
  %i.po = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %.032.i
  store i32 %.sink.i201, ptr %i.po, align 4, !tbaa !28
  %i.pp = add nuw i64 %.032.i, 1                  ; 2 uses
  %exitcond.not.i202 = icmp eq i64 %i.pp, %4
  br i1 %exitcond.not.i202, label %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit, label %bb.ad, !llvm.loop !11

_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit:    ; preds = %bb.af
  %i.pq = icmp ugt i64 %.1.i, 419244183493398900
  %i.pr = mul i64 %.1.i, 44                       ; 2 uses
  %spec.select = select i1 %i.pq, i64 -1, i64 %i.pr
  br label %bb.ag

bb.ag:                                            ; preds = %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread
  %i.ps = phi i64 [ 0, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread ], [ %i.pr, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit ]
  %.019.lcssa.i222 = phi i64 [ 0, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread ], [ %.1.i, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit ] ; 6 uses
  %i.pt = phi i64 [ 0, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit.thread ], [ %spec.select, %_ZN7meshoptL15fillVertexCellsEPjmS0_PKjm.exit ]
  %i.pu = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.pv = invoke noundef ptr %i.pu(i64 noundef %i.pt)
          to label %bb.ah unwind label %bb.as, !inline_history !7 ; 6 uses

bb.ah:                                            ; preds = %bb.ag
  store i64 5, ptr %i.g, align 8, !tbaa !26
  %i.pw = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr %i.pv, ptr %i.pw, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.pv, i8 0, i64 %i.ps, i1 false)
  br i1 %.not.i179, label %_ZN7meshoptL16fillCellQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_.exit, label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %bb.ah, %bb.aj
  %.067.i = phi i64 [ %i.uf, %bb.aj ], [ 0, %bb.ah ] ; 2 uses
  %i.px = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.067.i ; 3 uses
  %i.py = load i32, ptr %i.px, align 4, !tbaa !28
  %i.pz = getelementptr i8, ptr %i.px, i64 4
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !28
  %i.qb = getelementptr i8, ptr %i.px, i64 8
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !28
  %i.qd = zext i32 %i.py to i64                   ; 2 uses
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !28 ; 3 uses
  %i.qg = zext i32 %i.qa to i64                   ; 2 uses
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.qg
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !28 ; 2 uses
  %i.qj = zext i32 %i.qc to i64                   ; 2 uses
  %i.qk = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.qj
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !28 ; 2 uses
  %i.qm = icmp eq i32 %i.qf, %i.qi
  %i.qn = icmp eq i32 %i.qf, %i.ql
  %i.qo = and i1 %i.qm, %i.qn                     ; 2 uses
  %i.qp = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.qd ; 2 uses
  %i.qq = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.qg
  %i.qr = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %i.qj
  %i.qs = select i1 %i.qo, float 3.000000e+00, float 1.000000e+00
  %i.qt = load <3 x float>, ptr %i.qq, align 4, !tbaa !44
  %i.qu = shufflevector <3 x float> %i.qt, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.qv = load float, ptr %i.qp, align 4, !tbaa !49
  %i.qw = load <3 x float>, ptr %i.qp, align 4, !tbaa !44 ; 3 uses
  %i.qx = shufflevector <3 x float> %i.qw, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.qy = fsub <4 x float> %i.qu, %i.qx           ; 2 uses
  %i.qz = load <3 x float>, ptr %i.qr, align 4, !tbaa !44
  %i.ra = shufflevector <3 x float> %i.qz, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.rb = shufflevector <3 x float> %i.qw, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.rc = fsub <4 x float> %i.ra, %i.rb           ; 2 uses
  %i.rd = fneg <4 x float> %i.rc
  %i.re = shufflevector <4 x float> %i.rd, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.rf = shufflevector <4 x float> %i.qy, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.rg = fmul <4 x float> %i.rf, %i.re
  %i.rh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qy, <4 x float> %i.rc, <4 x float> %i.rg) ; 6 uses
  %foldExtExtBinop333 = fmul <4 x float> %i.rh, %i.rh
  %i.ri = extractelement <4 x float> %foldExtExtBinop333, i64 1
  %i.rj = extractelement <4 x float> %i.rh, i64 0 ; 2 uses
  %i.rk = tail call float @llvm.fmuladd.f32(float %i.rj, float %i.rj, float %i.ri)
  %i.rl = extractelement <4 x float> %i.rh, i64 2 ; 2 uses
  %i.rm = tail call float @llvm.fmuladd.f32(float %i.rl, float %i.rl, float %i.rk) ; 2 uses
  %sqrt.i.i.i = tail call float @llvm.sqrt.f32(float %i.rm) ; 2 uses
  %i.rn = fcmp ogt float %i.rm, 0.000000e+00
  %i.ro = insertelement <4 x float> poison, float %sqrt.i.i.i, i64 0
  %i.rp = shufflevector <4 x float> %i.ro, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rq = fdiv <4 x float> %i.rh, %i.rp
  %i.rr = insertelement <4 x i1> poison, i1 %i.rn, i64 0
  %i.rs = shufflevector <4 x i1> %i.rr, <4 x i1> poison, <4 x i32> zeroinitializer
  %i.rt = select <4 x i1> %i.rs, <4 x float> %i.rq, <4 x float> %i.rh ; 7 uses
  %shift335 = shufflevector <4 x float> %i.rt, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop336 = fmul <4 x float> %i.qx, %shift335
  %i.ru = extractelement <4 x float> %foldExtExtBinop336, i64 0
  %i.rv = extractelement <4 x float> %i.rt, i64 0
  %i.rw = tail call float @llvm.fmuladd.f32(float %i.rv, float %i.qv, float %i.ru)
  %i.rx = extractelement <4 x float> %i.rt, i64 2
  %i.ry = extractelement <3 x float> %i.qw, i64 2
  %i.rz = tail call float @llvm.fmuladd.f32(float %i.rx, float %i.ry, float %i.rw)
  %i.sa = fneg float %i.rz                        ; 2 uses
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %sqrt.i.i.i)
  %i.sb = fmul float %i.qs, %sqrt.i.i             ; 5 uses
  %i.sc = shufflevector <4 x float> %i.rt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.sd = insertelement <4 x float> poison, float %i.sb, i64 0
  %i.se = shufflevector <4 x float> %i.sd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.sf = fmul <4 x float> %i.sc, %i.se           ; 2 uses
  %i.sg = fmul float %i.sb, %i.sa                 ; 2 uses
  %i.sh = fmul <4 x float> %i.rt, %i.sf           ; 3 uses
  %i.si = shufflevector <4 x float> %i.rt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.sj = shufflevector <4 x float> %i.sf, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.sk = insertelement <2 x float> %i.sj, float %i.sg, i64 1
  %i.sl = shufflevector <2 x float> %i.sk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.sm = fmul <4 x float> %i.si, %i.sl           ; 3 uses
  %i.sn = shufflevector <4 x float> %i.rt, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.so = insertelement <2 x float> %i.sn, float %i.sa, i64 1
  %i.sp = insertelement <2 x float> poison, float %i.sg, i64 0
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.sr = fmul <2 x float> %i.so, %i.sq           ; 3 uses
  %i.ss = zext i32 %i.qf to i64
  %i.st = getelementptr inbounds nuw [44 x i8], ptr %i.pv, i64 %i.ss ; 5 uses
  %i.su = load <4 x float>, ptr %i.st, align 4, !tbaa !44
  %i.sv = fadd <4 x float> %i.su, %i.sh
  store <4 x float> %i.sv, ptr %i.st, align 4, !tbaa !44
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 16 ; 2 uses
  %i.sx = load <4 x float>, ptr %i.sw, align 4, !tbaa !44
  %i.sy = fadd <4 x float> %i.sx, %i.sm
  store <4 x float> %i.sy, ptr %i.sw, align 4, !tbaa !44
  %i.sz = getelementptr inbounds nuw i8, ptr %i.st, i64 32 ; 2 uses
  %i.ta = load <2 x float>, ptr %i.sz, align 4, !tbaa !44
  %i.tb = fadd <2 x float> %i.sr, %i.ta
  store <2 x float> %i.tb, ptr %i.sz, align 4, !tbaa !44
  %i.tc = getelementptr inbounds nuw i8, ptr %i.st, i64 40 ; 2 uses
  %i.td = load float, ptr %i.tc, align 4, !tbaa !48
  %i.te = fadd float %i.sb, %i.td
  store float %i.te, ptr %i.tc, align 4, !tbaa !48
  br i1 %i.qo, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph.i204
  %i.tf = zext i32 %i.qi to i64
  %i.tg = getelementptr inbounds nuw [44 x i8], ptr %i.pv, i64 %i.tf ; 5 uses
  %i.th = load <4 x float>, ptr %i.tg, align 4, !tbaa !44
  %i.ti = fadd <4 x float> %i.sh, %i.th
  store <4 x float> %i.ti, ptr %i.tg, align 4, !tbaa !44
  %i.tj = getelementptr inbounds nuw i8, ptr %i.tg, i64 16 ; 2 uses
  %i.tk = load <4 x float>, ptr %i.tj, align 4, !tbaa !44
  %i.tl = fadd <4 x float> %i.sm, %i.tk
  store <4 x float> %i.tl, ptr %i.tj, align 4, !tbaa !44
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tg, i64 32 ; 2 uses
  %i.tn = load <2 x float>, ptr %i.tm, align 4, !tbaa !44
  %i.to = fadd <2 x float> %i.sr, %i.tn
  store <2 x float> %i.to, ptr %i.tm, align 4, !tbaa !44
  %i.tp = getelementptr inbounds nuw i8, ptr %i.tg, i64 40 ; 2 uses
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !48
  %i.tr = fadd float %i.sb, %i.tq
  store float %i.tr, ptr %i.tp, align 4, !tbaa !48
  %i.ts = zext i32 %i.ql to i64
  %i.tt = getelementptr inbounds nuw [44 x i8], ptr %i.pv, i64 %i.ts ; 5 uses
  %i.tu = load <4 x float>, ptr %i.tt, align 4, !tbaa !44
  %i.tv = fadd <4 x float> %i.sh, %i.tu
  store <4 x float> %i.tv, ptr %i.tt, align 4, !tbaa !44
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tt, i64 16 ; 2 uses
  %i.tx = load <4 x float>, ptr %i.tw, align 4, !tbaa !44
  %i.ty = fadd <4 x float> %i.sm, %i.tx
  store <4 x float> %i.ty, ptr %i.tw, align 4, !tbaa !44
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tt, i64 32 ; 2 uses
  %i.ua = load <2 x float>, ptr %i.tz, align 4, !tbaa !44
  %i.ub = fadd <2 x float> %i.sr, %i.ua
  store <2 x float> %i.ub, ptr %i.tz, align 4, !tbaa !44
  %i.uc = getelementptr inbounds nuw i8, ptr %i.tt, i64 40 ; 2 uses
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !48
  %i.ue = fadd float %i.sb, %i.ud
  store float %i.ue, ptr %i.uc, align 4, !tbaa !48
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %.lr.ph.i204
  %i.uf = add i64 %.067.i, 3                      ; 2 uses
  %i.ug = icmp ult i64 %i.uf, %2
  br i1 %i.ug, label %.lr.ph.i204, label %_ZN7meshoptL16fillCellQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_.exit, !llvm.loop !173

_ZN7meshoptL16fillCellQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_.exit: ; preds = %bb.aj, %bb.ah
  %i.uh = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.ui = icmp ugt i64 %.019.lcssa.i222, 4611686018427387903
  %i.uj = shl i64 %.019.lcssa.i222, 2             ; 2 uses
  %i.uk = select i1 %i.ui, i64 -1, i64 %i.uj      ; 2 uses
  %i.ul = invoke noundef ptr %i.uh(i64 noundef %i.uk)
          to label %bb.ak unwind label %bb.at, !inline_history !4 ; 6 uses

bb.ak:                                            ; preds = %_ZN7meshoptL16fillCellQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_.exit
  %i.um = load i64, ptr %i.g, align 8, !tbaa !26  ; 4 uses
  %i.un = add nsw i64 %i.um, 1                    ; 2 uses
  store i64 %i.un, ptr %i.g, align 8, !tbaa !26
  %i.uo = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.um
  store ptr %i.ul, ptr %i.uo, align 8, !tbaa !27
  %i.up = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.uq = invoke noundef ptr %i.up(i64 noundef %i.uk)
          to label %bb.al unwind label %bb.au, !inline_history !6 ; 8 uses

bb.al:                                            ; preds = %bb.ak
  %i.ur = add nsw i64 %i.um, 2                    ; 2 uses
  store i64 %i.ur, ptr %i.g, align 8, !tbaa !26
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.un
  store ptr %i.uq, ptr %i.us, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ul, i8 -1, i64 %i.uj, i1 false)
  br i1 %.not26.i167, label %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_7QuadricEPKNS_7Vector3Em.exit, label %.lr.ph.i207

.lr.ph.i207:                                      ; preds = %bb.al, %bb.ao
  %.021.i208 = phi i64 [ %i.ww, %bb.ao ], [ 0, %bb.al ] ; 4 uses
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %.021.i208
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !28
  %i.uv = zext i32 %i.uu to i64                   ; 4 uses
  %i.uw = getelementptr inbounds nuw [44 x i8], ptr %i.pv, i64 %i.uv ; 9 uses
  %i.ux = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %.021.i208 ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.uw, i64 24
  %i.uz = load float, ptr %i.uy, align 4, !tbaa !51
  %i.va = getelementptr inbounds nuw i8, ptr %i.uw, i64 28
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uw, i64 12
  %i.vc = load float, ptr %i.vb, align 4, !tbaa !52
  %i.vd = getelementptr inbounds nuw i8, ptr %i.ux, i64 4
  %i.ve = load float, ptr %i.vd, align 4, !tbaa !50 ; 3 uses
  %i.vf = tail call float @llvm.fmuladd.f32(float %i.vc, float %i.ve, float %i.uz)
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ux, i64 8
  %i.vh = load float, ptr %i.vg, align 4, !tbaa !46 ; 3 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %i.uw, i64 16
  %i.vj = load float, ptr %i.ux, align 4, !tbaa !49 ; 3 uses
  %i.vk = fmul float %i.vf, 2.000000e+00
  %i.vl = load <2 x float>, ptr %i.va, align 4, !tbaa !44
  %i.vm = load <2 x float>, ptr %i.vi, align 4, !tbaa !44
  %i.vn = shufflevector <2 x float> %i.vm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vo = insertelement <2 x float> poison, float %i.vh, i64 0
  %i.vp = insertelement <2 x float> %i.vo, float %i.vj, i64 1
  %i.vq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vn, <2 x float> %i.vp, <2 x float> %i.vl)
  %i.vr = fmul <2 x float> %i.vq, splat (float 2.000000e+00) ; 2 uses
  %i.vs = load float, ptr %i.uw, align 4, !tbaa !53
  %i.vt = tail call float @llvm.fmuladd.f32(float %i.vs, float %i.vj, float %i.vk)
  %i.vu = getelementptr inbounds nuw i8, ptr %i.uw, i64 4
  %i.vv = load float, ptr %i.vu, align 4, !tbaa !54
  %i.vw = extractelement <2 x float> %i.vr, i64 0
  %i.vx = tail call float @llvm.fmuladd.f32(float %i.vv, float %i.ve, float %i.vw)
  %i.vy = getelementptr inbounds nuw i8, ptr %i.uw, i64 8
  %i.vz = load float, ptr %i.vy, align 4, !tbaa !55
  %i.wa = extractelement <2 x float> %i.vr, i64 1
  %i.wb = tail call float @llvm.fmuladd.f32(float %i.vz, float %i.vh, float %i.wa)
  %i.wc = getelementptr inbounds nuw i8, ptr %i.uw, i64 36
  %i.wd = load float, ptr %i.wc, align 4, !tbaa !56
  %i.we = tail call float @llvm.fmuladd.f32(float %i.vt, float %i.vj, float %i.wd)
  %i.wf = tail call float @llvm.fmuladd.f32(float %i.vx, float %i.ve, float %i.we)
  %i.wg = tail call noundef float @llvm.fmuladd.f32(float %i.wb, float %i.vh, float %i.wf)
  %i.wh = getelementptr inbounds nuw i8, ptr %i.uw, i64 40
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !48 ; 2 uses
  %i.wj = fcmp oeq float %i.wi, 0.000000e+00
  %i.wk = fdiv float 1.000000e+00, %i.wi
  %i.wl = select i1 %i.wj, float 0.000000e+00, float %i.wk
  %i.wm = tail call float @llvm.fabs.f32(float %i.wg)
  %i.wn = fmul float %i.wl, %i.wm                 ; 2 uses
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.uv ; 2 uses
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !28
  %i.wq = icmp eq i32 %i.wp, -1
  br i1 %i.wq, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.lr.ph.i207
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.uv
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !44
  %i.wt = fcmp ogt float %i.ws, %i.wn
  br i1 %i.wt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am, %.lr.ph.i207
  %i.wu = trunc i64 %.021.i208 to i32
  store i32 %i.wu, ptr %i.wo, align 4, !tbaa !28
  %i.wv = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %i.uv
  store float %i.wn, ptr %i.wv, align 4, !tbaa !44
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.ww = add nuw i64 %.021.i208, 1               ; 2 uses
  %exitcond.not.i209 = icmp eq i64 %i.ww, %4
  br i1 %exitcond.not.i209, label %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_7QuadricEPKNS_7Vector3Em.exit, label %.lr.ph.i207, !llvm.loop !174

_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_7QuadricEPKNS_7Vector3Em.exit: ; preds = %bb.ao, %bb.al
  %.not239 = icmp eq i64 %.019.lcssa.i222, 0
  br i1 %.not239, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_7QuadricEPKNS_7Vector3Em.exit
  %xtraiter = and i64 %.019.lcssa.i222, 3         ; 3 uses
  %i.wx = icmp ult i64 %.019.lcssa.i222, 4
  br i1 %i.wx, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %.019.lcssa.i222, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0238.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.yf, %._crit_edge.loopexit.unr-lcssa ]
  %.0119237.epil.init = phi float [ 0.000000e+00, %.lr.ph.preheader ], [ %..0119.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod350 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod350)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0238.epil = phi i64 [ %i.xb, %.lr.ph.epil ], [ %.0238.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0119237.epil = phi float [ %..0119.epil, %.lr.ph.epil ], [ %.0119237.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.wy = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %.0238.epil
  %i.wz = load float, ptr %i.wy, align 4, !tbaa !44 ; 2 uses
  %i.xa = fcmp olt float %.0119237.epil, %i.wz
  %..0119.epil = select i1 %i.xa, float %i.wz, float %.0119237.epil ; 2 uses
  %i.xb = add nuw i64 %.0238.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !175

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_7QuadricEPKNS_7Vector3Em.exit
  %.0119.lcssa = phi float [ 0.000000e+00, %_ZN7meshoptL13fillCellRemapEPjPfmPKjPKNS_7QuadricEPKNS_7Vector3Em.exit ], [ %..0119.3, %._crit_edge.loopexit.unr-lcssa ], [ %..0119.epil, %.lr.ph.epil ]
  %i.xc = lshr i64 %.1124.lcssa, 2
  %i.xd = add i64 %i.xc, %.1124.lcssa
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ap, %._crit_edge
  %.0.i210 = phi i64 [ 1, %._crit_edge ], [ %i.xf, %bb.ap ] ; 5 uses
  %i.xe = icmp ult i64 %.0.i210, %i.xd
  %i.xf = shl i64 %.0.i210, 1
  br i1 %i.xe, label %bb.ap, label %_ZN7meshoptL12hashBuckets2Em.exit211, !llvm.loop !0

_ZN7meshoptL12hashBuckets2Em.exit211:             ; preds = %bb.ap
  %i.xg = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.xh = icmp ugt i64 %.0.i210, 4611686018427387903
  %i.xi = shl i64 %.0.i210, 2                     ; 2 uses
  %i.xj = select i1 %i.xh, i64 -1, i64 %i.xi
  %i.xk = invoke noundef ptr %i.xg(i64 noundef %i.xj)
          to label %bb.av unwind label %bb.bd, !inline_history !4 ; 5 uses

bb.aq:                                            ; preds = %_ZN7meshoptL12hashBuckets2Em.exit
  %i.xl = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.ar:                                            ; preds = %bb.y
  %i.xm = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.as:                                            ; preds = %bb.ag
  %i.xn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.at:                                            ; preds = %_ZN7meshoptL16fillCellQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_.exit
  %i.xo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.au:                                            ; preds = %bb.ak
  %i.xp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0238 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.yf, %.lr.ph ] ; 5 uses
  %.0119237 = phi float [ 0.000000e+00, %.lr.ph.preheader.new ], [ %..0119.3, %.lr.ph ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %.0238
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !44 ; 2 uses
  %i.xs = fcmp olt float %.0119237, %i.xr
  %..0119 = select i1 %i.xs, float %i.xr, float %.0119237 ; 2 uses
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %.0238
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 4
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !44 ; 2 uses
  %i.xw = fcmp olt float %..0119, %i.xv
  %..0119.1 = select i1 %i.xw, float %i.xv, float %..0119 ; 2 uses
  %i.xx = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %.0238
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xx, i64 8
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !44 ; 2 uses
  %i.ya = fcmp olt float %..0119.1, %i.xz
  %..0119.2 = select i1 %i.ya, float %i.xz, float %..0119.1 ; 2 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.uq, i64 %.0238
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 12
  %i.yd = load float, ptr %i.yc, align 4, !tbaa !44 ; 2 uses
  %i.ye = fcmp olt float %..0119.2, %i.yd
  %..0119.3 = select i1 %i.ye, float %i.yd, float %..0119.2 ; 3 uses
  %i.yf = add nuw i64 %.0238, 4                   ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !176

bb.av:                                            ; preds = %_ZN7meshoptL12hashBuckets2Em.exit211
  %i.yg = add nsw i64 %i.um, 3                    ; 2 uses
  %i.yh = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %i.ur
  store ptr %i.xk, ptr %i.yh, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.xk, i8 -1, i64 %i.xi, i1 false)
  br i1 %.not.i179, label %_ZN7meshoptL15filterTrianglesEPjS0_mPKjmS2_S2_.exit, label %.lr.ph90.i

.lr.ph90.i:                                       ; preds = %bb.av
  %i.yi = add i64 %.0.i210, -1                    ; 3 uses
  br label %bb.aw

._crit_edge.loopexit.i:                           ; preds = %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i
  %i.yj = mul i64 %.2.i, 3
  br label %_ZN7meshoptL15filterTrianglesEPjS0_mPKjmS2_S2_.exit

bb.aw:                                            ; preds = %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %.lr.ph90.i
  %.088.i = phi i64 [ 0, %.lr.ph90.i ], [ %.2.i, %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ] ; 6 uses
  %.05887.i = phi i64 [ 0, %.lr.ph90.i ], [ %i.abc, %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ] ; 2 uses
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05887.i ; 3 uses
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !28
  %i.ym = zext i32 %i.yl to i64
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.ym
  %i.yo = load i32, ptr %i.yn, align 4, !tbaa !28 ; 3 uses
  %i.yp = getelementptr i8, ptr %i.yk, i64 4
  %i.yq = load i32, ptr %i.yp, align 4, !tbaa !28
  %i.yr = zext i32 %i.yq to i64
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.yr
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !28 ; 3 uses
  %i.yu = getelementptr i8, ptr %i.yk, i64 8
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !28
  %i.yw = zext i32 %i.yv to i64
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.yw
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !28 ; 3 uses
  %.not.i213 = icmp eq i32 %i.yo, %i.yt
  %.not73.i = icmp eq i32 %i.yo, %i.yy
  %.not74.i = icmp eq i32 %i.yt, %i.yy
  %i.yz = or i1 %.not73.i, %.not74.i
  %or.cond75.i = select i1 %.not.i213, i1 true, i1 %i.yz
  br i1 %or.cond75.i, label %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.za = zext i32 %i.yo to i64
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.za
  %i.zc = load i32, ptr %i.zb, align 4, !tbaa !28 ; 5 uses
  %i.zd = zext i32 %i.yt to i64
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.zd
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !28 ; 6 uses
  %i.zg = zext i32 %i.yy to i64
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.ul, i64 %i.zg
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !28 ; 6 uses
  %i.zj = icmp ult i32 %i.zf, %i.zc
  %i.zk = icmp ult i32 %i.zf, %i.zi
  %or.cond76.i = select i1 %i.zj, i1 %i.zk, i1 false
  br i1 %or.cond76.i, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.zl = icmp ult i32 %i.zi, %i.zc
  %i.zm = icmp ult i32 %i.zi, %i.zf
  %or.cond77.i = and i1 %i.zl, %i.zm
  br i1 %or.cond77.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay, %bb.ax
  %.061.i = phi i32 [ %i.zc, %bb.ay ], [ %i.zi, %bb.az ], [ %i.zf, %bb.ax ]
  %.060.i = phi i32 [ %i.zf, %bb.ay ], [ %i.zc, %bb.az ], [ %i.zi, %bb.ax ]
  %.059.i = phi i32 [ %i.zi, %bb.ay ], [ %i.zf, %bb.az ], [ %i.zc, %bb.ax ]
  %.idx.i = mul i64 %.088.i, 12
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 3 uses
  store i32 %.061.i, ptr %i.zn, align 4, !tbaa !28
  %i.zo = getelementptr i8, ptr %i.zn, i64 4
  store i32 %.060.i, ptr %i.zo, align 4, !tbaa !28
  %i.zp = getelementptr i8, ptr %i.zn, i64 8
  store i32 %.059.i, ptr %i.zp, align 4, !tbaa !28
  %i.zq = trunc i64 %.088.i to i32
  %i.zr = mul i64 %.088.i, 3
  %i.zs = and i64 %i.zr, 4294967295
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.zs ; 3 uses
  %i.zu = load i32, ptr %i.zt, align 4, !tbaa !28 ; 2 uses
  %i.zv = mul i32 %i.zu, 73856093
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zt, i64 4
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !28 ; 2 uses
  %i.zy = mul i32 %i.zx, 19349663
  %i.zz = xor i32 %i.zy, %i.zv
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  %i.aab = load i32, ptr %i.aaa, align 4, !tbaa !28 ; 2 uses
  %i.aac = mul i32 %i.aab, 83492791
  %i.aad = xor i32 %i.zz, %i.aac
  %i.aae = zext i32 %i.aad to i64
  %i.aaf = and i64 %i.yi, %i.aae                  ; 3 uses
  %i.aag = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.aaf
  %i.aah = load i32, ptr %i.aag, align 4, !tbaa !28 ; 2 uses
  %i.aai = icmp eq i32 %i.aah, -1
  br i1 %i.aai, label %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i214

.lr.ph.i214:                                      ; preds = %bb.ba, %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i
  %.pr.i215 = phi i32 [ %i.aay, %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i ], [ %i.aah, %bb.ba ]
  %.02313.i86.i = phi i64 [ %i.aaw, %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i ], [ %i.aaf, %bb.ba ]
  %.02214.i85.i = phi i64 [ %i.aau, %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i ], [ 0, %bb.ba ]
  %i.aaj = mul i32 %.pr.i215, 3
  %i.aak = zext i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aak ; 3 uses
  %i.aam = load i32, ptr %i.aal, align 4, !tbaa !28
  %i.aan = icmp eq i32 %i.aam, %i.zu
  br i1 %i.aan, label %bb.bb, label %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i

bb.bb:                                            ; preds = %.lr.ph.i214
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aal, i64 4
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !28
  %i.aaq = icmp eq i32 %i.aap, %i.zx
  br i1 %i.aaq, label %_ZNK7meshopt14TriangleHasher5equalEjj.exit.i.i, label %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i

_ZNK7meshopt14TriangleHasher5equalEjj.exit.i.i:   ; preds = %bb.bb
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aal, i64 8
  %i.aas = load i32, ptr %i.aar, align 4, !tbaa !28
  %i.aat = icmp eq i32 %i.aas, %i.aab
  br i1 %i.aat, label %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, label %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i

_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i: ; preds = %_ZNK7meshopt14TriangleHasher5equalEjj.exit.i.i, %bb.bb, %.lr.ph.i214
  %i.aau = add i64 %.02214.i85.i, 1               ; 3 uses
  %i.aav = add i64 %i.aau, %.02313.i86.i
  %i.aaw = and i64 %i.aav, %i.yi                  ; 3 uses
  %.not.i.i216 = icmp ule i64 %i.aau, %i.yi
  tail call void @llvm.assume(i1 %.not.i.i216)
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.aaw
  %i.aay = load i32, ptr %i.aax, align 4, !tbaa !28 ; 2 uses
  %i.aaz = icmp eq i32 %i.aay, -1
  br i1 %i.aaz, label %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph.i214

_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i: ; preds = %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i, %bb.ba
  %.02313.i.lcssa84.i = phi i64 [ %i.aaf, %bb.ba ], [ %i.aaw, %_ZNK7meshopt14TriangleHasher5equalEjj.exit.thread.i.i ]
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %.02313.i.lcssa84.i
  %i.abb = add i64 %.088.i, 1
  store i32 %i.zq, ptr %i.aba, align 4, !tbaa !28
  br label %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i

_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i: ; preds = %_ZNK7meshopt14TriangleHasher5equalEjj.exit.i.i, %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, %bb.aw
  %.2.i = phi i64 [ %.088.i, %bb.aw ], [ %i.abb, %_ZN7meshoptL11hashLookup2IjNS_14TriangleHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ], [ %.088.i, %_ZNK7meshopt14TriangleHasher5equalEjj.exit.i.i ] ; 2 uses
  %i.abc = add i64 %.05887.i, 3                   ; 2 uses
  %i.abd = icmp ult i64 %i.abc, %2
  br i1 %i.abd, label %bb.aw, label %._crit_edge.loopexit.i, !llvm.loop !177

_ZN7meshoptL15filterTrianglesEPjS0_mPKjmS2_S2_.exit: ; preds = %._crit_edge.loopexit.i, %bb.av
  %.0.lcssa.i217 = phi i64 [ 0, %bb.av ], [ %i.yj, %._crit_edge.loopexit.i ] ; 2 uses
  %.not161 = icmp eq ptr %9, null
  br i1 %.not161, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %_ZN7meshoptL15filterTrianglesEPjS0_mPKjmS2_S2_.exit
  %i.abe = tail call float @sqrtf(float noundef %.0119.lcssa) #14
  store float %i.abe, ptr %9, align 4, !tbaa !44
  br label %bb.be

bb.bd:                                            ; preds = %_ZN7meshoptL12hashBuckets2Em.exit211
  %i.abf = landingpad { ptr, i32 }
          cleanup
  br label %bb.bh

bb.be:                                            ; preds = %_ZN7meshoptL15filterTrianglesEPjS0_mPKjmS2_S2_.exit, %bb.bc
  %.not3.i = icmp eq i64 %i.yg, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i218.preheader

.lr.ph.i218.preheader:                            ; preds = %11, %bb.v, %bb.be
  %.0141284 = phi i64 [ %.0.lcssa.i217, %bb.be ], [ 0, %bb.v ], [ 0, %11 ]
  %i.abg = phi i64 [ %i.yg, %bb.be ], [ 2, %bb.v ], [ 2, %11 ]
  br label %.lr.ph.i218

.lr.ph.i218:                                      ; preds = %.lr.ph.i218.preheader, %bb.bf
  %.04.i = phi i64 [ %i.abl, %bb.bf ], [ %i.abg, %.lr.ph.i218.preheader ] ; 2 uses
  %i.abh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !32
  %i.abi = getelementptr [8 x i8], ptr %10, i64 %.04.i
  %i.abj = getelementptr i8, ptr %i.abi, i64 -8
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !27
  invoke void %i.abh(ptr noundef %i.abk)
          to label %bb.bf unwind label %bb.bg

bb.bf:                                            ; preds = %.lr.ph.i218
  %i.abl = add i64 %.04.i, -1                     ; 2 uses
  %.not.i219 = icmp eq i64 %i.abl, 0
  br i1 %.not.i219, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i218, !llvm.loop !9

bb.bg:                                            ; preds = %.lr.ph.i218
  %i.abm = landingpad { ptr, i32 }
          catch ptr null
  %i.abn = extractvalue { ptr, i32 } %i.abm, 0
  tail call void @__clang_call_terminate(ptr %i.abn) #15
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.bf, %bb.be
  %.0141285 = phi i64 [ %.0.lcssa.i217, %bb.be ], [ %.0141284, %bb.bf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  ret i64 %.0141285

bb.bh:                                            ; preds = %bb.i, %bb.ar, %bb.as, %bb.au, %bb.bd, %bb.at, %bb.aq, %bb.h
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.eh, %bb.h ], [ %i.ei, %bb.i ], [ %i.xl, %bb.aq ], [ %i.xm, %bb.ar ], [ %i.abf, %bb.bd ], [ %i.xn, %bb.as ], [ %i.xo, %bb.at ], [ %i.xp, %bb.au ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @meshopt_simplifyPrune(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5, float noundef %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.meshopt_Allocator, align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %7, i8 0, i64 200, i1 false)
  %.not = icmp eq ptr %0, %1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl i64 %2, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %0, ptr align 4 %1, i64 %i.a, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.c = icmp ugt i64 %4, 4611686018427387903
  %i.d = shl nuw i64 %4, 2
  %i.e = select i1 %i.c, i64 -1, i64 %i.d         ; 2 uses
  %i.f = invoke noundef ptr %i.b(i64 noundef %i.e)
          to label %bb.d unwind label %bb.m, !inline_history !4 ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 192 ; 4 uses
  store i64 1, ptr %i.g, align 8, !tbaa !26
  store ptr %i.f, ptr %7, align 8, !tbaa !27
  invoke fastcc void @_ZN7meshoptL18buildPositionRemapEPjS0_PKfmmPKjR17meshopt_Allocator(ptr noundef %i.f, ptr noundef null, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(200) %7)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.i = icmp ugt i64 %4, 1537228672809129301
  %i.j = mul nuw i64 %4, 12
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = invoke noundef ptr %i.h(i64 noundef %i.k)
          to label %bb.f unwind label %bb.n, !inline_history !5 ; 3 uses

bb.f:                                             ; preds = %bb.e
  %i.m = load i64, ptr %i.g, align 8, !tbaa !26   ; 4 uses
  %i.n = add nsw i64 %i.m, 1                      ; 2 uses
  store i64 %i.n, ptr %i.g, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.m
  store ptr %i.l, ptr %i.o, align 8, !tbaa !27
  %i.p = tail call fastcc noundef float @_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf(ptr noundef %i.l, ptr noundef %3, i64 noundef %4, i64 noundef %5, ptr noundef null, ptr noundef null) ; 0 uses
  %i.q = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.r = invoke noundef ptr %i.q(i64 noundef %i.e)
          to label %bb.g unwind label %bb.o, !inline_history !4 ; 4 uses

bb.g:                                             ; preds = %bb.f
  %i.s = add nsw i64 %i.m, 2                      ; 2 uses
  store i64 %i.s, ptr %i.g, align 8, !tbaa !26
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.n
  store ptr %i.r, ptr %i.t, align 8, !tbaa !27
  %i.u = tail call fastcc noundef i64 @_ZN7meshoptL15buildComponentsEPjmPKjmS2_(ptr noundef %i.r, i64 noundef %4, ptr noundef %1, i64 noundef %2, ptr noundef %i.f) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.x = invoke noundef ptr %i.w(i64 noundef %i.v)
          to label %bb.h unwind label %bb.p, !inline_history !6 ; 3 uses

bb.h:                                             ; preds = %bb.g
  %i.y = add nsw i64 %i.m, 3                      ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %7, i64 %i.s
  store ptr %i.x, ptr %i.z, align 8, !tbaa !27
  tail call fastcc void @_ZN7meshoptL17measureComponentsEPfmPKjPKNS_7Vector3Em(ptr noundef %i.x, i64 noundef %i.u, ptr noundef %i.r, ptr noundef %i.l, i64 noundef %4)
  %i.aa = fmul float %6, %6
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.h, %bb.j
  %.038.i = phi i64 [ %i.ap, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %.03336.i = phi i64 [ %.134.i, %bb.j ], [ 0, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.038.i ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !28 ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !44
  %i.aj = fcmp ogt float %i.ai, %i.aa
  br i1 %i.aj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ak = getelementptr i8, ptr %i.ab, i64 4
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03336.i ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 4
  %i.an = load <2 x i32>, ptr %i.ak, align 4, !tbaa !28
  store i32 %i.ac, ptr %i.al, align 4, !tbaa !28
  store <2 x i32> %i.an, ptr %i.am, align 4, !tbaa !28
  %i.ao = add i64 %.03336.i, 3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i
  %.134.i = phi i64 [ %i.ao, %bb.i ], [ %.03336.i, %.lr.ph.i ] ; 2 uses
  %i.ap = add i64 %.038.i, 3                      ; 2 uses
  %i.aq = icmp ult i64 %i.ap, %2
  br i1 %i.aq, label %.lr.ph.i, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit, !llvm.loop !8

_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit: ; preds = %bb.j, %bb.h
  %.033.lcssa.i = phi i64 [ 0, %bb.h ], [ %.134.i, %bb.j ]
  %.not3.i = icmp eq i64 %i.y, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i48

.lr.ph.i48:                                       ; preds = %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit, %bb.k
  %.04.i = phi i64 [ %i.av, %bb.k ], [ %i.y, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ] ; 2 uses
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !32
  %i.as = getelementptr [8 x i8], ptr %7, i64 %.04.i
  %i.at = getelementptr i8, ptr %i.as, i64 -8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !27
  invoke void %i.ar(ptr noundef %i.au)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.lr.ph.i48
  %i.av = add i64 %.04.i, -1                      ; 2 uses
  %.not.i49 = icmp eq i64 %i.av, 0
  br i1 %.not.i49, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i48, !llvm.loop !9

bb.l:                                             ; preds = %.lr.ph.i48
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #15
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.k, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret i64 %.033.lcssa.i

bb.m:                                             ; preds = %bb.c, %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.n:                                             ; preds = %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.o:                                             ; preds = %bb.f
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.p, %bb.o, %bb.m
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.m ], [ %i.az, %bb.n ], [ %i.ba, %bb.o ], [ %i.bb, %bb.p ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @meshopt_simplifyPoints(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i64 noundef %5, float noundef %6, i64 noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.meshopt_Allocator, align 8   ; 14 uses
  %i.a = icmp eq i64 %7, 0
  br i1 %i.a, label %bb.am, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %8, i8 0, i64 200, i1 false)
  %i.b = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.c = icmp ugt i64 %2, 1537228672809129301
  %i.d = mul nuw i64 %2, 12
  %i.e = select i1 %i.c, i64 -1, i64 %i.d
  %i.f = invoke noundef ptr %i.b(i64 noundef %i.e)
          to label %bb.c unwind label %bb.g, !inline_history !5 ; 15 uses

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 6 uses
  store i64 1, ptr %i.g, align 8, !tbaa !26
  store ptr %i.f, ptr %8, align 8, !tbaa !27
  %i.h = tail call fastcc noundef float @_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf(ptr noundef %i.f, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef null, ptr noundef null) ; 0 uses
  %i.i = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.j = icmp ugt i64 %2, 4611686018427387903
  %i.k = shl nuw i64 %2, 2
  %i.l = select i1 %i.j, i64 -1, i64 %i.k         ; 2 uses
  %i.m = invoke noundef ptr %i.i(i64 noundef %i.l)
          to label %bb.d unwind label %bb.h, !inline_history !4 ; 8 uses

bb.d:                                             ; preds = %bb.c
  store i64 2, ptr %i.g, align 8, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.m, ptr %i.n, align 8, !tbaa !27
  %i.o = lshr i64 %2, 2
  %i.p = add i64 %i.o, %2
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0.i = phi i64 [ 1, %bb.d ], [ %i.r, %bb.e ]   ; 5 uses
  %i.q = icmp ult i64 %.0.i, %i.p
  %i.r = shl i64 %.0.i, 1
  br i1 %i.q, label %bb.e, label %_ZN7meshoptL12hashBuckets2Em.exit, !llvm.loop !0

_ZN7meshoptL12hashBuckets2Em.exit:                ; preds = %bb.e
  %i.s = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.t = icmp ugt i64 %.0.i, 4611686018427387903
  %i.u = shl i64 %.0.i, 2                         ; 5 uses
  %i.v = select i1 %i.t, i64 -1, i64 %i.u
  %i.w = invoke noundef ptr %i.s(i64 noundef %i.v)
          to label %bb.f unwind label %bb.i, !inline_history !4 ; 11 uses

bb.f:                                             ; preds = %_ZN7meshoptL12hashBuckets2Em.exit
  store i64 3, ptr %i.g, align 8, !tbaa !26
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.w, ptr %i.x, align 8, !tbaa !27
  %i.y = uitofp i64 %7 to float                   ; 4 uses
  %sqrt = tail call float @llvm.sqrt.f32(float %i.y)
  %i.z = fadd float %sqrt, 5.000000e-01
  %i.aa = fptosi float %i.z to i32
  %.not26.i = icmp eq i64 %2, 0                   ; 4 uses
  %i.ab = add i64 %.0.i, -1                       ; 6 uses
  %min.iters.check = icmp ult i64 %2, 4
  %n.vec = and i64 %2, -4                         ; 3 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br label %bb.j

bb.g:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.h:                                             ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.i:                                             ; preds = %_ZN7meshoptL12hashBuckets2Em.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.j:                                             ; preds = %bb.f, %bb.r
  %.095170 = phi i32 [ 0, %bb.f ], [ %i.fg, %bb.r ] ; 2 uses
  %.096169 = phi i32 [ %i.aa, %bb.f ], [ %.197, %bb.r ] ; 2 uses
  %.098168 = phi i64 [ %2, %bb.f ], [ %..098, %bb.r ] ; 2 uses
  %.0100167 = phi i64 [ 0, %bb.f ], [ %.0100., %bb.r ] ; 2 uses
  %.0102166 = phi i32 [ 1025, %bb.f ], [ %..0102, %bb.r ] ; 3 uses
  %.0104165 = phi i32 [ 0, %bb.f ], [ %.0104., %bb.r ] ; 4 uses
  %.not = icmp sgt i32 %.096169, %.0104165
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = add nsw i32 %.0104165, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ag = add nsw i32 %.0102166, -1
  %i.ah = tail call i32 @llvm.smin.i32(i32 %.096169, i32 %i.ag)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ai = phi i32 [ %i.af, %bb.k ], [ %i.ah, %bb.l ] ; 4 uses
  %i.aj = add nsw i32 %i.ai, -1
  %i.ak = sitofp i32 %i.aj to float               ; 3 uses
  br i1 %.not26.i, label %_ZN7meshoptL16computeVertexIdsEPjPKNS_7Vector3EPKhmi.exit.thread, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %bb.m
  br i1 %min.iters.check, label %.lr.ph.split.us.i.preheader231, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.i.preheader
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ak, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.al = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = getelementptr inbounds nuw [12 x i8], ptr %i.f, i64 %index ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 36
  %i.as = load float, ptr %i.al, align 4, !tbaa !49
  %i.at = load float, ptr %i.an, align 4, !tbaa !49
  %i.au = load float, ptr %i.ap, align 4, !tbaa !49
  %i.av = load float, ptr %i.ar, align 4, !tbaa !49
  %i.aw = insertelement <4 x float> poison, float %i.as, i64 0
  %i.ax = insertelement <4 x float> %i.aw, float %i.at, i64 1
  %i.ay = insertelement <4 x float> %i.ax, float %i.au, i64 2
  %i.az = insertelement <4 x float> %i.ay, float %i.av, i64 3
  %i.ba = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %broadcast.splat, <4 x float> splat (float 5.000000e-01))
  %i.bb = fptosi <4 x float> %i.ba to <4 x i32>
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 28
  %i.bf = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !50
  %i.bh = load float, ptr %i.bd, align 4, !tbaa !50
  %i.bi = load float, ptr %i.be, align 4, !tbaa !50
  %i.bj = load float, ptr %i.bf, align 4, !tbaa !50
  %i.bk = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 1
  %i.bm = insertelement <4 x float> %i.bl, float %i.bi, i64 2
  %i.bn = insertelement <4 x float> %i.bm, float %i.bj, i64 3
  %i.bo = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> %broadcast.splat, <4 x float> splat (float 5.000000e-01))
  %i.bp = fptosi <4 x float> %i.bo to <4 x i32>
  %i.bq = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 44
  %i.bu = load float, ptr %i.bq, align 4, !tbaa !46
  %i.bv = load float, ptr %i.br, align 4, !tbaa !46
  %i.bw = load float, ptr %i.bs, align 4, !tbaa !46
  %i.bx = load float, ptr %i.bt, align 4, !tbaa !46
  %i.by = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 1
  %i.ca = insertelement <4 x float> %i.bz, float %i.bw, i64 2
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 3
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cb, <4 x float> %broadcast.splat, <4 x float> splat (float 5.000000e-01))
  %i.cd = fptosi <4 x float> %i.cc to <4 x i32>
  %i.ce = shl <4 x i32> %i.bb, splat (i32 20)
  %i.cf = shl <4 x i32> %i.bp, splat (i32 10)
  %i.cg = or <4 x i32> %i.cf, %i.ce
  %i.ch = or <4 x i32> %i.cg, %i.cd
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index
  store <4 x i32> %i.ch, ptr %i.ci, align 4, !tbaa !28
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !178
end_hunk_4
