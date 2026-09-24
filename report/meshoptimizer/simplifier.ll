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
  %18 = load i64, ptr %i.j, align 8, !tbaa !26    ; 2 uses
  %19 = add nuw nsw i64 %18, 1
  store i64 %19, ptr %i.j, align 8, !tbaa !26
  %20 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %18
  store ptr %i.i, ptr %20, align 8, !tbaa !27
  %.not.i = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %._crit_edge.thread.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.noexc
  %i.k = add i64 %2, -1                           ; 2 uses
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.l = icmp ult i64 %i.k, 3
  br i1 %i.l, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %2, -4
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05261.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.aj, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.3, %.lr.ph.i ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05261.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28
  %i.o = lshr i32 %i.n, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.p
  store i8 0, ptr %i.q, align 1, !tbaa !29
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05261.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !28
  %i.u = lshr i32 %i.t, 3
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.v
  store i8 0, ptr %i.w, align 1, !tbaa !29
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05261.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !28
  %i.aa = lshr i32 %i.z, 3
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ab
  store i8 0, ptr %i.ac, align 1, !tbaa !29
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05261.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !28
  %i.ag = lshr i32 %i.af, 3
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.ah
  store i8 0, ptr %i.ai, align 1, !tbaa !29
  %i.aj = add nuw i64 %.05261.i, 4                ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph64.i.preheader.unr-lcssa, label %.lr.ph.i, !llvm.loop !58

.lr.ph64.i.preheader.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph64.i.preheader, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.lr.ph64.i.preheader.unr-lcssa, %.lr.ph.i.preheader
  %.05261.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.aj, %.lr.ph64.i.preheader.unr-lcssa ]
  %lcmp.mod1268 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod1268)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.05261.i.epil = phi i64 [ %i.ap, %.lr.ph.i.epil ], [ %.05261.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05261.i.epil
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !28
  %i.am = lshr i32 %i.al, 3
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.an
  store i8 0, ptr %i.ao, align 1, !tbaa !29
  %i.ap = add nuw i64 %.05261.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph64.i.preheader, label %.lr.ph.i.epil, !llvm.loop !59

.lr.ph64.i.preheader:                             ; preds = %.lr.ph.i.epil, %.lr.ph64.i.preheader.unr-lcssa
  %xtraiter1269 = and i64 %2, 1
  %i.aq = icmp eq i64 %i.k, 0
  br i1 %i.aq, label %.lr.ph64.i.epil.preheader, label %.lr.ph64.i.preheader.new

.lr.ph64.i.preheader.new:                         ; preds = %.lr.ph64.i.preheader
  %unroll_iter1274 = and i64 %2, -2
  br label %.lr.ph64.i

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph64.i
  %lcmp.mod1271.not = icmp eq i64 %xtraiter1269, 0
  br i1 %lcmp.mod1271.not, label %._crit_edge.i, label %.lr.ph64.i.epil.preheader

.lr.ph64.i.epil.preheader:                        ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph64.i.preheader
  %.05063.i.epil.init = phi i64 [ 0, %.lr.ph64.i.preheader ], [ %i.da, %._crit_edge.i.unr-lcssa ]
  %.05162.i.epil.init = phi i64 [ 0, %.lr.ph64.i.preheader ], [ %i.cx, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod1273 = trunc i64 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1273)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05063.i.epil.init
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !28 ; 2 uses
  %i.at = lshr i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.au ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !29  ; 2 uses
  %i.ax = zext i8 %i.aw to i32
  %i.ay = and i32 %i.as, 7
  %i.az = shl nuw nsw i32 1, %i.ay                ; 2 uses
  %i.ba = and i32 %i.az, %i.ax
  %.fr92.i.epil = freeze i32 %i.ba
  %i.bb = icmp eq i32 %.fr92.i.epil, 0
  %i.bc = zext i1 %i.bb to i64
  %i.bd = add i64 %.05162.i.epil.init, %i.bc
  %i.be = trunc nuw i32 %i.az to i8
  %i.bf = or i8 %i.aw, %i.be
  store i8 %i.bf, ptr %i.av, align 1, !tbaa !29
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph64.i.epil.preheader
  %.lcssa1267 = phi i64 [ %i.cx, %._crit_edge.i.unr-lcssa ], [ %i.bd, %.lr.ph64.i.epil.preheader ] ; 3 uses
  %i.bg = icmp ugt i64 %.lcssa1267, 4611686018427387903
  %i.bh = shl nuw i64 %.lcssa1267, 2
  %spec.select.i = select i1 %i.bg, i64 -1, i64 %i.bh
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.noexc, %._crit_edge.i
  %.051.lcssa88.i = phi i64 [ %.lcssa1267, %._crit_edge.i ], [ 0, %.noexc ] ; 3 uses
  %i.bi = phi i64 [ %spec.select.i, %._crit_edge.i ], [ 0, %.noexc ]
  %i.bj = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bk = invoke noundef ptr %i.bj(i64 noundef %i.bi)
          to label %.noexc434 unwind label %bb.h, !inline_history !57 ; 4 uses

.noexc434:                                        ; preds = %._crit_edge.thread.i
  %21 = load i64, ptr %i.j, align 8, !tbaa !26    ; 2 uses
  %22 = add nuw nsw i64 %21, 1
  store i64 %22, ptr %i.j, align 8, !tbaa !26
  %23 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %21
  store ptr %i.bk, ptr %23, align 8, !tbaa !27
  %i.bl = lshr i64 %.051.lcssa88.i, 2
  %i.bm = add i64 %i.bl, %.051.lcssa88.i
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.noexc434
  %.0.i.i = phi i64 [ 1, %.noexc434 ], [ %i.bo, %bb.e ] ; 5 uses
  %i.bn = icmp ult i64 %.0.i.i, %i.bm
  %i.bo = shl i64 %.0.i.i, 1
  br i1 %i.bn, label %bb.e, label %_ZN7meshoptL12hashBuckets2Em.exit.i, !llvm.loop !0

_ZN7meshoptL12hashBuckets2Em.exit.i:              ; preds = %bb.e
  %i.bp = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bq = icmp ugt i64 %.0.i.i, 4611686018427387903
  %i.br = shl i64 %.0.i.i, 2                      ; 2 uses
  %i.bs = select i1 %i.bq, i64 -1, i64 %i.br
  %i.bt = invoke noundef ptr %i.bp(i64 noundef %i.bs)
          to label %.noexc435 unwind label %bb.h, !inline_history !57 ; 6 uses

.noexc435:                                        ; preds = %_ZN7meshoptL12hashBuckets2Em.exit.i
  %24 = load i64, ptr %i.j, align 8, !tbaa !26    ; 2 uses
  %25 = add nuw nsw i64 %24, 1
  store i64 %25, ptr %i.j, align 8, !tbaa !26
  %26 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %24
  store ptr %i.bt, ptr %26, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bt, i8 -1, i64 %i.br, i1 false)
  br i1 %.not.i, label %._crit_edge75.i, label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.noexc435
  %i.bu = add i64 %.0.i.i, -1                     ; 3 uses
  br label %bb.f

.lr.ph64.i:                                       ; preds = %.lr.ph64.i, %.lr.ph64.i.preheader.new
  %.05063.i = phi i64 [ 0, %.lr.ph64.i.preheader.new ], [ %i.da, %.lr.ph64.i ] ; 3 uses
  %.05162.i = phi i64 [ 0, %.lr.ph64.i.preheader.new ], [ %i.cx, %.lr.ph64.i ]
  %niter1275 = phi i64 [ 0, %.lr.ph64.i.preheader.new ], [ %niter1275.next.1, %.lr.ph64.i ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05063.i
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !28 ; 2 uses
  %i.bx = lshr i32 %i.bw, 3
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.by ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !29  ; 2 uses
  %i.cb = zext i8 %i.ca to i32
  %i.cc = and i32 %i.bw, 7
  %i.cd = shl nuw nsw i32 1, %i.cc                ; 2 uses
  %i.ce = and i32 %i.cd, %i.cb
  %.fr92.i = freeze i32 %i.ce
  %i.cf = icmp eq i32 %.fr92.i, 0
  %i.cg = zext i1 %i.cf to i64
  %i.ch = add i64 %.05162.i, %i.cg
  %i.ci = trunc nuw i32 %i.cd to i8
  %i.cj = or i8 %i.ca, %i.ci
  store i8 %i.cj, ptr %i.bz, align 1, !tbaa !29
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.05063.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !28 ; 2 uses
  %i.cn = lshr i32 %i.cm, 3
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.co ; 2 uses
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !29  ; 2 uses
  %i.cr = zext i8 %i.cq to i32
  %i.cs = and i32 %i.cm, 7
  %i.ct = shl nuw nsw i32 1, %i.cs                ; 2 uses
  %i.cu = and i32 %i.ct, %i.cr
  %.fr92.i.1 = freeze i32 %i.cu
  %i.cv = icmp eq i32 %.fr92.i.1, 0
  %i.cw = zext i1 %i.cv to i64
  %i.cx = add i64 %i.ch, %i.cw                    ; 3 uses
  %i.cy = trunc nuw i32 %i.ct to i8
  %i.cz = or i8 %i.cq, %i.cy
  store i8 %i.cz, ptr %i.cp, align 1, !tbaa !29
  %i.da = add nuw i64 %.05063.i, 2                ; 2 uses
  %niter1275.next.1 = add i64 %niter1275, 2       ; 2 uses
  %niter1275.ncmp.1 = icmp eq i64 %niter1275.next.1, %unroll_iter1274
  br i1 %niter1275.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph64.i, !llvm.loop !60

._crit_edge75.i:                                  ; preds = %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %.noexc435
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !32
  invoke void %i.db(ptr noundef %i.bt)
          to label %_ZN7meshoptL16buildSparseRemapEPjmmPmR17meshopt_Allocator.exit unwind label %bb.h, !inline_history !57

bb.f:                                             ; preds = %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, %.lr.ph74.i
  %.073.i = phi i64 [ 0, %.lr.ph74.i ], [ %i.dz, %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ] ; 2 uses
  %.04971.i = phi i64 [ 0, %.lr.ph74.i ], [ %.1.i, %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.073.i ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !28 ; 3 uses
  %i.de = mul i32 %i.dd, 1540483477
  %i.df = zext i32 %i.de to i64
  %i.dg = and i64 %i.bu, %i.df                    ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !28 ; 2 uses
  %i.dj = icmp eq i32 %i.di, -1
  br i1 %i.dj, label %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph69.i

.lr.ph69.i:                                       ; preds = %bb.f, %bb.g
  %.pr.i = phi i32 [ %i.ds, %bb.g ], [ %i.di, %bb.f ] ; 2 uses
  %.02313.i67.i = phi i64 [ %i.dq, %bb.g ], [ %i.dg, %bb.f ]
  %.02214.i66.i = phi i64 [ %i.do, %bb.g ], [ 0, %bb.f ]
  %i.dk = zext i32 %.pr.i to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !28
  %i.dn = icmp eq i32 %i.dm, %i.dd
  br i1 %i.dn, label %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph69.i
  %i.do = add i64 %.02214.i66.i, 1                ; 3 uses
  %i.dp = add i64 %i.do, %.02313.i67.i
  %i.dq = and i64 %i.dp, %i.bu                    ; 3 uses
  %.not.i.i = icmp ule i64 %i.do, %i.bu
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !28 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, -1
  br i1 %i.dt, label %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i, label %.lr.ph69.i

_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i: ; preds = %bb.g, %bb.f
  %.02313.i.lcssa65.i = phi i64 [ %i.dg, %bb.f ], [ %i.dq, %bb.g ]
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.02313.i.lcssa65.i
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.04971.i
  store i32 %i.dd, ptr %i.dv, align 4, !tbaa !28
  %i.dw = trunc i64 %.04971.i to i32              ; 2 uses
  store i32 %i.dw, ptr %i.du, align 4, !tbaa !28
  %i.dx = add i64 %.04971.i, 1
  br label %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i

_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.i: ; preds = %.lr.ph69.i, %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i
  %i.dy = phi i32 [ %i.dw, %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ], [ %.pr.i, %.lr.ph69.i ]
  %.1.i = phi i64 [ %i.dx, %_ZN7meshoptL11hashLookup2IjNS_11RemapHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread.i ], [ %.04971.i, %.lr.ph69.i ]
  store i32 %i.dy, ptr %i.dc, align 4, !tbaa !28
  %i.dz = add nuw i64 %.073.i, 1                  ; 2 uses
  %exitcond81.not.i = icmp eq i64 %i.dz, %2
  br i1 %exitcond81.not.i, label %._crit_edge75.i, label %bb.f, !llvm.loop !61

_ZN7meshoptL16buildSparseRemapEPjmmPmR17meshopt_Allocator.exit: ; preds = %._crit_edge75.i
  %27 = load i64, ptr %i.j, align 8, !tbaa !26
  %28 = add i64 %27, -1
  store i64 %28, ptr %i.j, align 8, !tbaa !26
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge75.i, %_ZN7meshoptL12hashBuckets2Em.exit.i, %._crit_edge.thread.i, %bb.d
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.i:                                             ; preds = %_ZN7meshoptL16buildSparseRemapEPjmmPmR17meshopt_Allocator.exit, %bb.c
  %.0702 = phi i64 [ %4, %bb.c ], [ %.051.lcssa88.i, %_ZN7meshoptL16buildSparseRemapEPjmmPmR17meshopt_Allocator.exit ] ; 69 uses
  %.0379 = phi ptr [ null, %bb.c ], [ %i.bk, %_ZN7meshoptL16buildSparseRemapEPjmmPmR17meshopt_Allocator.exit ] ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #14
  %i.eb = add i64 %.0702, 1                       ; 2 uses
  %i.ec = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.ed = icmp ugt i64 %i.eb, 4611686018427387903
  %i.ee = shl nuw i64 %i.eb, 2
  %i.ef = select i1 %i.ed, i64 -1, i64 %i.ee
  %i.eg = invoke noundef ptr %i.ec(i64 noundef %i.ef)
          to label %.noexc437 unwind label %bb.bq, !inline_history !62 ; 19 uses

.noexc437:                                        ; preds = %bb.i
  %i.eh = getelementptr inbounds nuw i8, ptr %16, i64 192 ; 39 uses
  %29 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %30 = add nuw nsw i64 %29, 1
  store i64 %30, ptr %i.eh, align 8, !tbaa !26
  %31 = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %29
  store ptr %i.eg, ptr %31, align 8, !tbaa !27
  store ptr %i.eg, ptr %17, align 8, !tbaa !36
  %i.ei = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.ej = icmp ugt i64 %2, 2305843009213693951
  %i.ek = shl nuw i64 %2, 3
  %i.el = select i1 %i.ej, i64 -1, i64 %i.ek
  %i.em = invoke noundef ptr %i.ei(i64 noundef %i.el)
          to label %bb.j unwind label %bb.bq, !inline_history !62 ; 15 uses

bb.j:                                             ; preds = %.noexc437
  %32 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.en = add nuw nsw i64 %32, 1
  store i64 %i.en, ptr %i.eh, align 8, !tbaa !26
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %32
  store ptr %i.em, ptr %i.eo, align 8, !tbaa !27
  %i.ep = getelementptr inbounds nuw i8, ptr %17, i64 8
  store ptr %i.em, ptr %i.ep, align 8, !tbaa !37
  %i.eq = udiv i64 %2, 3
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 14 uses
  %i.es = shl i64 %.0702, 2                       ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.er, i8 0, i64 %i.es, i1 false)
  %.not87.i = icmp eq i64 %2, 0                   ; 3 uses
  br i1 %.not87.i, label %.preheader80.i, label %.lr.ph.split.us.i.preheader

.lr.ph.split.us.i.preheader:                      ; preds = %bb.j
  %i.et = add i64 %2, -1
  %xtraiter1276 = and i64 %2, 3                   ; 3 uses
  %i.eu = icmp ult i64 %i.et, 3
  br i1 %i.eu, label %.lr.ph.split.us.i.epil.preheader, label %.lr.ph.split.us.i.preheader.new

.lr.ph.split.us.i.preheader.new:                  ; preds = %.lr.ph.split.us.i.preheader
  %unroll_iter1280 = and i64 %2, -4
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i, %.lr.ph.split.us.i.preheader.new
  %.07781.us.i = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %i.fw, %.lr.ph.split.us.i ] ; 5 uses
  %niter1281 = phi i64 [ 0, %.lr.ph.split.us.i.preheader.new ], [ %niter1281.next.3, %.lr.ph.split.us.i ]
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07781.us.i
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !28
  %i.ex = zext i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !28
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ey, align 4, !tbaa !28
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07781.us.i
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !28
  %i.fe = zext i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.fe ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !28
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.ff, align 4, !tbaa !28
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07781.us.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !28
  %i.fl = zext i32 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.fl ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !28
  %i.fo = add i32 %i.fn, 1
  store i32 %i.fo, ptr %i.fm, align 4, !tbaa !28
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07781.us.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !28
  %i.fs = zext i32 %i.fr to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.fs ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !28
  %i.fv = add i32 %i.fu, 1
  store i32 %i.fv, ptr %i.ft, align 4, !tbaa !28
  %i.fw = add nuw i64 %.07781.us.i, 4             ; 2 uses
  %niter1281.next.3 = add nuw i64 %niter1281, 4   ; 2 uses
  %niter1281.ncmp.3 = icmp eq i64 %niter1281.next.3, %unroll_iter1280
  br i1 %niter1281.ncmp.3, label %.preheader80.i.loopexit.unr-lcssa, label %.lr.ph.split.us.i, !llvm.loop !1

.preheader80.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.split.us.i
  %lcmp.mod1278.not = icmp eq i64 %xtraiter1276, 0
  br i1 %lcmp.mod1278.not, label %.preheader80.i, label %.lr.ph.split.us.i.epil.preheader

.lr.ph.split.us.i.epil.preheader:                 ; preds = %.preheader80.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.preheader
  %.07781.us.i.epil.init = phi i64 [ 0, %.lr.ph.split.us.i.preheader ], [ %i.fw, %.preheader80.i.loopexit.unr-lcssa ]
  %lcmp.mod1279 = icmp ne i64 %xtraiter1276, 0
  tail call void @llvm.assume(i1 %lcmp.mod1279)
  br label %.lr.ph.split.us.i.epil

.lr.ph.split.us.i.epil:                           ; preds = %.lr.ph.split.us.i.epil, %.lr.ph.split.us.i.epil.preheader
  %.07781.us.i.epil = phi i64 [ %i.gd, %.lr.ph.split.us.i.epil ], [ %.07781.us.i.epil.init, %.lr.ph.split.us.i.epil.preheader ] ; 2 uses
  %epil.iter1277 = phi i64 [ %epil.iter1277.next, %.lr.ph.split.us.i.epil ], [ 0, %.lr.ph.split.us.i.epil.preheader ]
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.07781.us.i.epil
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !28
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.fz ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !28
  %i.gc = add i32 %i.gb, 1
  store i32 %i.gc, ptr %i.ga, align 4, !tbaa !28
  %i.gd = add nuw i64 %.07781.us.i.epil, 1
  %epil.iter1277.next = add i64 %epil.iter1277, 1 ; 2 uses
  %epil.iter1277.cmp.not = icmp eq i64 %epil.iter1277.next, %xtraiter1276
  br i1 %epil.iter1277.cmp.not, label %.preheader80.i, label %.lr.ph.split.us.i.epil, !llvm.loop !63

.preheader80.i:                                   ; preds = %.preheader80.i.loopexit.unr-lcssa, %.lr.ph.split.us.i.epil, %bb.j
  %.not88.i = icmp eq i64 %.0702, 0               ; 8 uses
  br i1 %.not88.i, label %.preheader.i, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %.preheader80.i
  %i.ge = add i64 %.0702, -1
  %xtraiter1282 = and i64 %.0702, 3               ; 3 uses
  %i.gf = icmp ult i64 %i.ge, 3
  br i1 %i.gf, label %.lr.ph84.i.epil.preheader, label %.lr.ph84.i.preheader.new

.lr.ph84.i.preheader.new:                         ; preds = %.lr.ph84.i.preheader
  %unroll_iter1286 = and i64 %.0702, -4
  br label %.lr.ph84.i

.preheader.i.loopexit.unr-lcssa:                  ; preds = %.lr.ph84.i
  %lcmp.mod1284.not = icmp eq i64 %xtraiter1282, 0
  br i1 %lcmp.mod1284.not, label %.preheader.i, label %.lr.ph84.i.epil.preheader

.lr.ph84.i.epil.preheader:                        ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph84.i.preheader
  %.07583.i.epil.init = phi i64 [ 0, %.lr.ph84.i.preheader ], [ %i.gz, %.preheader.i.loopexit.unr-lcssa ]
  %.07682.i.epil.init = phi i32 [ 0, %.lr.ph84.i.preheader ], [ %i.gy, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod1285 = icmp ne i64 %xtraiter1282, 0
  tail call void @llvm.assume(i1 %lcmp.mod1285)
  br label %.lr.ph84.i.epil

.lr.ph84.i.epil:                                  ; preds = %.lr.ph84.i.epil, %.lr.ph84.i.epil.preheader
  %.07583.i.epil = phi i64 [ %i.gj, %.lr.ph84.i.epil ], [ %.07583.i.epil.init, %.lr.ph84.i.epil.preheader ] ; 2 uses
  %.07682.i.epil = phi i32 [ %i.gi, %.lr.ph84.i.epil ], [ %.07682.i.epil.init, %.lr.ph84.i.epil.preheader ] ; 2 uses
  %epil.iter1283 = phi i64 [ %epil.iter1283.next, %.lr.ph84.i.epil ], [ 0, %.lr.ph84.i.epil.preheader ]
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.07583.i.epil ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !28
  store i32 %.07682.i.epil, ptr %i.gg, align 4, !tbaa !28
  %i.gi = add i32 %i.gh, %.07682.i.epil
  %i.gj = add nuw i64 %.07583.i.epil, 1
  %epil.iter1283.next = add i64 %epil.iter1283, 1 ; 2 uses
  %epil.iter1283.cmp.not = icmp eq i64 %epil.iter1283.next, %xtraiter1282
  br i1 %epil.iter1283.cmp.not, label %.preheader.i, label %.lr.ph84.i.epil, !llvm.loop !64

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph84.i.epil, %.preheader80.i
  %.not89.i = icmp ult i64 %2, 3
  br i1 %.not89.i, label %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit, label %.lr.ph86.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i, %.lr.ph84.i.preheader.new
  %.07583.i = phi i64 [ 0, %.lr.ph84.i.preheader.new ], [ %i.gz, %.lr.ph84.i ] ; 5 uses
  %.07682.i = phi i32 [ 0, %.lr.ph84.i.preheader.new ], [ %i.gy, %.lr.ph84.i ] ; 2 uses
  %niter1287 = phi i64 [ 0, %.lr.ph84.i.preheader.new ], [ %niter1287.next.3, %.lr.ph84.i ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.07583.i ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !28
  store i32 %.07682.i, ptr %i.gk, align 4, !tbaa !28
  %i.gm = add i32 %i.gl, %.07682.i                ; 2 uses
  %i.gn = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.07583.i
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 4 ; 2 uses
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !28
  store i32 %i.gm, ptr %i.go, align 4, !tbaa !28
  %i.gq = add i32 %i.gp, %i.gm                    ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.07583.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8 ; 2 uses
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !28
  store i32 %i.gq, ptr %i.gs, align 4, !tbaa !28
  %i.gu = add i32 %i.gt, %i.gq                    ; 2 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %.07583.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 12 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !28
  store i32 %i.gu, ptr %i.gw, align 4, !tbaa !28
  %i.gy = add i32 %i.gx, %i.gu                    ; 2 uses
  %i.gz = add nuw i64 %.07583.i, 4                ; 2 uses
  %niter1287.next.3 = add nuw i64 %niter1287, 4   ; 2 uses
  %niter1287.ncmp.3 = icmp eq i64 %niter1287.next.3, %unroll_iter1286
  br i1 %niter1287.ncmp.3, label %.preheader.i.loopexit.unr-lcssa, label %.lr.ph84.i, !llvm.loop !2

.lr.ph86.i:                                       ; preds = %.preheader.i, %.lr.ph86.i
  %.07485.i = phi i64 [ %i.in, %.lr.ph86.i ], [ 0, %.preheader.i ] ; 2 uses
  %.idx.i = mul nuw i64 %.07485.i, 12
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i ; 3 uses
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !28 ; 3 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !28 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !28 ; 3 uses
  %i.hg = zext i32 %i.hb to i64
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.hg ; 4 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !28
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.hj
  store i32 %i.hd, ptr %i.hk, align 4, !tbaa !39
  %i.hl = load i32, ptr %i.hh, align 4, !tbaa !28
  %i.hm = zext i32 %i.hl to i64
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 4
  store i32 %i.hf, ptr %i.ho, align 4, !tbaa !40
  %i.hp = load i32, ptr %i.hh, align 4, !tbaa !28
  %i.hq = add i32 %i.hp, 1
  store i32 %i.hq, ptr %i.hh, align 4, !tbaa !28
  %i.hr = zext i32 %i.hd to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.hr ; 4 uses
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !28
  %i.hu = zext i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.hu
  store i32 %i.hf, ptr %i.hv, align 4, !tbaa !39
  %i.hw = load i32, ptr %i.hs, align 4, !tbaa !28
  %i.hx = zext i32 %i.hw to i64
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.hx
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 4
  store i32 %i.hb, ptr %i.hz, align 4, !tbaa !40
  %i.ia = load i32, ptr %i.hs, align 4, !tbaa !28
  %i.ib = add i32 %i.ia, 1
  store i32 %i.ib, ptr %i.hs, align 4, !tbaa !28
  %i.ic = zext i32 %i.hf to i64
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %i.ic ; 4 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !28
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.if
  store i32 %i.hb, ptr %i.ig, align 4, !tbaa !39
  %i.ih = load i32, ptr %i.id, align 4, !tbaa !28
  %i.ii = zext i32 %i.ih to i64
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ii
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 4
  store i32 %i.hd, ptr %i.ik, align 4, !tbaa !40
  %i.il = load i32, ptr %i.id, align 4, !tbaa !28
  %i.im = add i32 %i.il, 1
  store i32 %i.im, ptr %i.id, align 4, !tbaa !28
  %i.in = add nuw nsw i64 %.07485.i, 1            ; 2 uses
  %exitcond93.not.i = icmp eq i64 %i.in, %i.eq
  br i1 %exitcond93.not.i, label %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit, label %.lr.ph86.i, !llvm.loop !3

_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit: ; preds = %.lr.ph86.i, %.preheader.i
  store i32 0, ptr %i.eg, align 4, !tbaa !28
  %i.io = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.ip = icmp ugt i64 %.0702, 4611686018427387903
  %i.iq = select i1 %i.ip, i64 -1, i64 %i.es      ; 6 uses
  %i.ir = invoke noundef ptr %i.io(i64 noundef %i.iq)
          to label %bb.k unwind label %bb.br, !inline_history !4 ; 58 uses

bb.k:                                             ; preds = %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit
  %33 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.is = add nuw nsw i64 %33, 1
  store i64 %i.is, ptr %i.eh, align 8, !tbaa !26
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %33
  store ptr %i.ir, ptr %i.it, align 8, !tbaa !27
  %i.iu = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.iv = invoke noundef ptr %i.iu(i64 noundef %i.iq)
          to label %bb.l unwind label %bb.bs, !inline_history !4 ; 23 uses

bb.l:                                             ; preds = %bb.k
  %34 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %35 = add nuw nsw i64 %34, 1
  store i64 %35, ptr %i.eh, align 8, !tbaa !26
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %34
  store ptr %i.iv, ptr %i.iw, align 8, !tbaa !27
  invoke fastcc void @_ZN7meshoptL18buildPositionRemapEPjS0_PKfmmPKjR17meshopt_Allocator(ptr noundef %i.ir, ptr noundef %i.iv, ptr noundef %3, i64 noundef %.0702, i64 noundef %5, ptr noundef %.0379, ptr noundef nonnull align 8 dereferenceable(200) %16)
          to label %bb.m unwind label %bb.bs

bb.m:                                             ; preds = %bb.l
  %i.ix = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.iy = invoke noundef ptr %i.ix(i64 noundef %.0702)
          to label %bb.n unwind label %bb.bt, !inline_history !65 ; 87 uses

bb.n:                                             ; preds = %bb.m
  %i.iz = load i64, ptr %i.eh, align 8, !tbaa !26 ; 2 uses
  %i.ja = add nuw nsw i64 %i.iz, 1
  store i64 %i.ja, ptr %i.eh, align 8, !tbaa !26
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.iz
  store ptr %i.iy, ptr %i.jb, align 8, !tbaa !27
  %i.jc = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.jd = invoke noundef ptr %i.jc(i64 noundef %i.iq)
          to label %bb.o unwind label %bb.bu, !inline_history !4 ; 22 uses

bb.o:                                             ; preds = %bb.n
  %36 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.je = add nuw nsw i64 %36, 1
  store i64 %i.je, ptr %i.eh, align 8, !tbaa !26
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %36
  store ptr %i.jd, ptr %i.jf, align 8, !tbaa !27
  %i.jg = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.jh = invoke noundef ptr %i.jg(i64 noundef %i.iq)
          to label %bb.p unwind label %bb.bv, !inline_history !4 ; 21 uses

bb.p:                                             ; preds = %bb.o
  %37 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.ji = add nuw nsw i64 %37, 1
  store i64 %i.ji, ptr %i.eh, align 8, !tbaa !26
  %i.jj = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %37
  store ptr %i.jh, ptr %i.jj, align 8, !tbaa !27
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jd, i8 -1, i64 %i.es, i1 false)
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.jh, i8 -1, i64 %i.es, i1 false)
  br i1 %.not88.i, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %.lr.ph296.i

.loopexit292.i:                                   ; preds = %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i, %.lr.ph296.i
  %exitcond343.not.i = icmp eq i64 %i.jl, %.0702
  br i1 %exitcond343.not.i, label %.lr.ph298.i, label %.lr.ph296.i, !llvm.loop !66

.lr.ph296.i:                                      ; preds = %bb.p, %.loopexit292.i
  %.0231295.i = phi i64 [ %i.jl, %.loopexit292.i ], [ 0, %bb.p ] ; 3 uses
  %i.jk = trunc i64 %.0231295.i to i32            ; 6 uses
  %i.jl = add nuw i64 %.0231295.i, 1              ; 3 uses
  %i.jm = and i64 %i.jl, 4294967295
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.jm
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !28 ; 2 uses
  %i.jp = and i64 %.0231295.i, 4294967295         ; 3 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.jp
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !28 ; 3 uses
  %i.js = sub i32 %i.jo, %i.jr
  %i.jt = zext i32 %i.jr to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.jt
  %i.jv = zext i32 %i.js to i64
  %.not327.i = icmp eq i32 %i.jo, %i.jr
  br i1 %.not327.i, label %.loopexit292.i, label %.lr.ph.i450

.lr.ph.i450:                                      ; preds = %.lr.ph296.i
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.jp ; 3 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jp
  br label %bb.q

bb.q:                                             ; preds = %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i, %.lr.ph.i450
  %.0230294.i = phi i64 [ 0, %.lr.ph.i450 ], [ %i.kx, %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i ] ; 2 uses
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %.0230294.i
  %i.jz = load i32, ptr %i.jy, align 4, !tbaa !39 ; 5 uses
  %i.ka = icmp eq i32 %i.jz, %i.jk
  br i1 %i.ka, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 %i.jk, ptr %i.jw, align 4, !tbaa !28
  store i32 %i.jk, ptr %i.jx, align 4, !tbaa !28
  br label %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i

bb.s:                                             ; preds = %bb.q
  %i.kb = add i32 %i.jz, 1
  %i.kc = zext i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.kc
  %i.ke = load i32, ptr %i.kd, align 4, !tbaa !28 ; 2 uses
  %i.kf = zext i32 %i.jz to i64                   ; 2 uses
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.kf
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !28 ; 3 uses
  %i.ki = sub i32 %i.ke, %i.kh
  %i.kj = zext i32 %i.kh to i64
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.kj
  %i.kl = zext i32 %i.ki to i64
  %.not1.not.i.i = icmp eq i32 %i.ke, %i.kh
  br i1 %.not1.not.i.i, label %.loopexit291.i, label %.lr.ph.i.i

bb.t:                                             ; preds = %.lr.ph.i.i
  %i.km = add nuw nsw i64 %.0142.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.km, %i.kl
  br i1 %exitcond.not.i.i, label %.loopexit291.i, label %.lr.ph.i.i, !llvm.loop !67

.lr.ph.i.i:                                       ; preds = %bb.s, %bb.t
  %.0142.i.i = phi i64 [ %i.km, %bb.t ], [ 0, %bb.s ] ; 2 uses
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.kk, i64 %.0142.i.i
  %i.ko = load i32, ptr %i.kn, align 4, !tbaa !39
  %i.kp = icmp eq i32 %i.ko, %i.jk
  br i1 %i.kp, label %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i, label %bb.t

.loopexit291.i:                                   ; preds = %bb.t, %bb.s
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.kf ; 2 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !28
  %i.ks = icmp eq i32 %i.kr, -1
  %i.kt = select i1 %i.ks, i32 %i.jk, i32 %i.jz
  store i32 %i.kt, ptr %i.kq, align 4, !tbaa !28
  %i.ku = load i32, ptr %i.jw, align 4, !tbaa !28
  %i.kv = icmp eq i32 %i.ku, -1
  %i.kw = select i1 %i.kv, i32 %i.jz, i32 %i.jk
  store i32 %i.kw, ptr %i.jw, align 4, !tbaa !28
  br label %_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i

_ZN7meshoptL7hasEdgeERKNS_13EdgeAdjacencyEjj.exit.i: ; preds = %.lr.ph.i.i, %.loopexit291.i, %bb.r
  %i.kx = add nuw nsw i64 %.0230294.i, 1          ; 2 uses
  %exitcond.not.i451 = icmp eq i64 %i.kx, %i.jv
  br i1 %exitcond.not.i451, label %.loopexit292.i, label %bb.q, !llvm.loop !68

._crit_edge.i452:                                 ; preds = %bb.ap
  %i.ky = and i32 %13, 32
  %.not.not.i = icmp eq i32 %i.ky, 0
  br i1 %.not.not.i, label %.loopexit289.i, label %.lr.ph317.i

.lr.ph317.i:                                      ; preds = %._crit_edge.i452
  %.not260.i = icmp eq ptr %.0379, null           ; 2 uses
  %.not261.i = icmp eq ptr %10, null
  br label %bb.aq

.lr.ph298.i:                                      ; preds = %.loopexit292.i, %bb.ap
  %.0229297.i = phi i64 [ %i.nn, %bb.ap ], [ 0, %.loopexit292.i ] ; 23 uses
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.0229297.i
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !28
  %i.lb = zext i32 %i.la to i64                   ; 2 uses
  %i.lc = icmp eq i64 %.0229297.i, %i.lb
  br i1 %i.lc, label %bb.u, label %bb.ao

bb.u:                                             ; preds = %.lr.ph298.i
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %.0229297.i
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !28 ; 3 uses
  %i.lf = zext i32 %i.le to i64                   ; 4 uses
  %i.lg = icmp eq i64 %.0229297.i, %i.lf
  br i1 %i.lg, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %bb.u
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.0229297.i
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !28 ; 3 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %.0229297.i
  %i.lk = load i32, ptr %i.lj, align 4, !tbaa !28 ; 4 uses
  %i.ll = icmp eq i32 %i.li, -1
  %i.lm = icmp eq i32 %i.lk, -1
  %or.cond.i = select i1 %i.ll, i1 %i.lm, i1 false
  br i1 %or.cond.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ln = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.0229297.i
  store i8 0, ptr %i.ln, align 1, !tbaa !29
  br label %bb.ap

bb.x:                                             ; preds = %bb.v
  %i.lo = icmp ne i32 %i.li, -1
  %i.lp = icmp ne i32 %i.lk, -1
  %or.cond3.i = select i1 %i.lo, i1 %i.lp, i1 false
  %i.lq = zext i32 %i.li to i64                   ; 3 uses
  br i1 %or.cond3.i, label %bb.y, label %._crit_edge351.i

._crit_edge351.i:                                 ; preds = %bb.x
  %.pre352.i = zext i32 %i.lk to i64
  br label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.lq
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !28
  %i.lt = zext i32 %i.lk to i64                   ; 2 uses
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.lt
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !28
  %i.lw = icmp ne i32 %i.ls, %i.lv
  %.not267.i = icmp eq i64 %.0229297.i, %i.lq
  %or.cond270.i = or i1 %.not267.i, %i.lw
  br i1 %or.cond270.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.lx = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.0229297.i
  store i8 2, ptr %i.lx, align 1, !tbaa !29
  br label %bb.ap

bb.aa:                                            ; preds = %bb.y, %._crit_edge351.i
  %.pre-phi353.i = phi i64 [ %.pre352.i, %._crit_edge351.i ], [ %i.lt, %bb.y ]
  %.not268.i = icmp eq i64 %.0229297.i, %i.lq
  %.not269.i = icmp eq i64 %.0229297.i, %.pre-phi353.i
  %or.cond271.i = select i1 %.not268.i, i1 true, i1 %.not269.i
  %i.ly = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.0229297.i ; 2 uses
  br i1 %or.cond271.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 1, ptr %i.ly, align 1, !tbaa !29
  br label %bb.ap

bb.ac:                                            ; preds = %bb.aa
  store i8 4, ptr %i.ly, align 1, !tbaa !29
  br label %bb.ap

bb.ad:                                            ; preds = %bb.u
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.iv, i64 %i.lf
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !28
  %i.mb = zext i32 %i.ma to i64
  %i.mc = icmp eq i64 %.0229297.i, %i.mb
  br i1 %i.mc, label %bb.ae, label %bb.an

bb.ae:                                            ; preds = %bb.ad
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %.0229297.i
  %i.me = load i32, ptr %i.md, align 4, !tbaa !28 ; 2 uses
  %i.mf = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %.0229297.i
  %i.mg = load i32, ptr %i.mf, align 4, !tbaa !28 ; 2 uses
  %i.mh = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.lf
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !28 ; 3 uses
  %i.mj = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.lf
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !28 ; 3 uses
  %.not264.i = icmp eq i32 %i.me, -1
  br i1 %.not264.i, label %bb.am, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ml = zext i32 %i.me to i64                   ; 2 uses
  %i.mm = icmp ne i64 %.0229297.i, %i.ml
  %i.mn = icmp ne i32 %i.mg, -1
  %or.cond5.i = select i1 %i.mm, i1 %i.mn, i1 false
  br i1 %or.cond5.i, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %bb.af
  %i.mo = zext i32 %i.mg to i64                   ; 2 uses
  %i.mp = icmp ne i64 %.0229297.i, %i.mo
  %i.mq = icmp ne i32 %i.mi, -1
end_hunk_0
begin_hunk_1_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  br label %pred.store.continue1150

pred.store.continue1150:                          ; preds = %pred.store.if1149, %pred.store.continue1148
  %i.wz = extractelement <16 x i1> %i.ua, i64 10
  br i1 %i.wz, label %pred.store.if1151, label %pred.store.continue1152

pred.store.if1151:                                ; preds = %pred.store.continue1150
  %i.xa = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index
  %i.xb = getelementptr inbounds nuw i8, ptr %i.xa, i64 26
  store i8 4, ptr %i.xb, align 1, !tbaa !29
  br label %pred.store.continue1152

pred.store.continue1152:                          ; preds = %pred.store.if1151, %pred.store.continue1150
  %i.xc = extractelement <16 x i1> %i.ua, i64 11
  br i1 %i.xc, label %pred.store.if1153, label %pred.store.continue1154

pred.store.if1153:                                ; preds = %pred.store.continue1152
  %i.xd = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index
  %i.xe = getelementptr inbounds nuw i8, ptr %i.xd, i64 27
  store i8 4, ptr %i.xe, align 1, !tbaa !29
  br label %pred.store.continue1154

pred.store.continue1154:                          ; preds = %pred.store.if1153, %pred.store.continue1152
  %i.xf = extractelement <16 x i1> %i.ua, i64 12
  br i1 %i.xf, label %pred.store.if1155, label %pred.store.continue1156

pred.store.if1155:                                ; preds = %pred.store.continue1154
  %i.xg = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 28
  store i8 4, ptr %i.xh, align 1, !tbaa !29
  br label %pred.store.continue1156

pred.store.continue1156:                          ; preds = %pred.store.if1155, %pred.store.continue1154
  %i.xi = extractelement <16 x i1> %i.ua, i64 13
  br i1 %i.xi, label %pred.store.if1157, label %pred.store.continue1158

pred.store.if1157:                                ; preds = %pred.store.continue1156
  %i.xj = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xj, i64 29
  store i8 4, ptr %i.xk, align 1, !tbaa !29
  br label %pred.store.continue1158

pred.store.continue1158:                          ; preds = %pred.store.if1157, %pred.store.continue1156
  %i.xl = extractelement <16 x i1> %i.ua, i64 14
  br i1 %i.xl, label %pred.store.if1159, label %pred.store.continue1160

pred.store.if1159:                                ; preds = %pred.store.continue1158
  %i.xm = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xm, i64 30
  store i8 4, ptr %i.xn, align 1, !tbaa !29
  br label %pred.store.continue1160

pred.store.continue1160:                          ; preds = %pred.store.if1159, %pred.store.continue1158
  %i.xo = extractelement <16 x i1> %i.ua, i64 15
  br i1 %i.xo, label %pred.store.if1161, label %pred.store.continue1162

pred.store.if1161:                                ; preds = %pred.store.continue1160
  %i.xp = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 31
  store i8 4, ptr %i.xq, align 1, !tbaa !29
  br label %pred.store.continue1162

pred.store.continue1162:                          ; preds = %pred.store.if1161, %pred.store.continue1160
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.xr = icmp eq i64 %index.next, %n.vec
  br i1 %i.xr, label %middle.block, label %vector.body, !llvm.loop !78

middle.block:                                     ; preds = %pred.store.continue1162
  %cmp.n = icmp eq i64 %.0702, %n.vec
  br i1 %cmp.n, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.tw, 0
  br i1 %min.epilog.iters.check, label %.lr.ph323.i.preheader, label %vec.epilog.ph, !prof !129

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec1163 = and i64 %.0702, -8                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %pred.store.continue1181, %vec.epilog.ph
  %index1164 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1182, %pred.store.continue1181 ] ; 9 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index1164 ; 2 uses
  %wide.load1165 = load <8 x i8>, ptr %i.xs, align 1, !tbaa !29
  %i.xt = icmp eq <8 x i8> %wide.load1165, splat (i8 1) ; 8 uses
  %i.xu = extractelement <8 x i1> %i.xt, i64 0
  br i1 %i.xu, label %pred.store.if1166, label %pred.store.continue1167

pred.store.if1166:                                ; preds = %vec.epilog.vector.body
  store i8 4, ptr %i.xs, align 1, !tbaa !29
  br label %pred.store.continue1167

pred.store.continue1167:                          ; preds = %pred.store.if1166, %vec.epilog.vector.body
  %i.xv = extractelement <8 x i1> %i.xt, i64 1
  br i1 %i.xv, label %pred.store.if1168, label %pred.store.continue1169

pred.store.if1168:                                ; preds = %pred.store.continue1167
  %i.xw = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index1164
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xw, i64 1
  store i8 4, ptr %i.xx, align 1, !tbaa !29
  br label %pred.store.continue1169

pred.store.continue1169:                          ; preds = %pred.store.if1168, %pred.store.continue1167
  %i.xy = extractelement <8 x i1> %i.xt, i64 2
  br i1 %i.xy, label %pred.store.if1170, label %pred.store.continue1171

pred.store.if1170:                                ; preds = %pred.store.continue1169
  %i.xz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index1164
  %i.ya = getelementptr inbounds nuw i8, ptr %i.xz, i64 2
  store i8 4, ptr %i.ya, align 1, !tbaa !29
  br label %pred.store.continue1171

pred.store.continue1171:                          ; preds = %pred.store.if1170, %pred.store.continue1169
  %i.yb = extractelement <8 x i1> %i.xt, i64 3
  br i1 %i.yb, label %pred.store.if1172, label %pred.store.continue1173

pred.store.if1172:                                ; preds = %pred.store.continue1171
  %i.yc = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index1164
  %i.yd = getelementptr inbounds nuw i8, ptr %i.yc, i64 3
  store i8 4, ptr %i.yd, align 1, !tbaa !29
  br label %pred.store.continue1173

pred.store.continue1173:                          ; preds = %pred.store.if1172, %pred.store.continue1171
  %i.ye = extractelement <8 x i1> %i.xt, i64 4
  br i1 %i.ye, label %pred.store.if1174, label %pred.store.continue1175

pred.store.if1174:                                ; preds = %pred.store.continue1173
  %i.yf = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index1164
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 4
  store i8 4, ptr %i.yg, align 1, !tbaa !29
  br label %pred.store.continue1175

pred.store.continue1175:                          ; preds = %pred.store.if1174, %pred.store.continue1173
  %i.yh = extractelement <8 x i1> %i.xt, i64 5
  br i1 %i.yh, label %pred.store.if1176, label %pred.store.continue1177

pred.store.if1176:                                ; preds = %pred.store.continue1175
  %i.yi = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index1164
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yi, i64 5
  store i8 4, ptr %i.yj, align 1, !tbaa !29
  br label %pred.store.continue1177

pred.store.continue1177:                          ; preds = %pred.store.if1176, %pred.store.continue1175
  %i.yk = extractelement <8 x i1> %i.xt, i64 6
  br i1 %i.yk, label %pred.store.if1178, label %pred.store.continue1179

pred.store.if1178:                                ; preds = %pred.store.continue1177
  %i.yl = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index1164
  %i.ym = getelementptr inbounds nuw i8, ptr %i.yl, i64 6
  store i8 4, ptr %i.ym, align 1, !tbaa !29
  br label %pred.store.continue1179

pred.store.continue1179:                          ; preds = %pred.store.if1178, %pred.store.continue1177
  %i.yn = extractelement <8 x i1> %i.xt, i64 7
  br i1 %i.yn, label %pred.store.if1180, label %pred.store.continue1181

pred.store.if1180:                                ; preds = %pred.store.continue1179
  %i.yo = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index1164
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 7
  store i8 4, ptr %i.yp, align 1, !tbaa !29
  br label %pred.store.continue1181

pred.store.continue1181:                          ; preds = %pred.store.if1180, %pred.store.continue1179
  %index.next1182 = add nuw i64 %index1164, 8     ; 2 uses
  %i.yq = icmp eq i64 %index.next1182, %n.vec1163
  br i1 %i.yq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !79

vec.epilog.middle.block:                          ; preds = %pred.store.continue1181
  %cmp.n1183 = icmp eq i64 %.0702, %n.vec1163
  br i1 %cmp.n1183, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %.lr.ph323.i.preheader

.lr.ph323.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.0322.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec1163, %vec.epilog.middle.block ]
  br label %.lr.ph323.i

.lr.ph323.i:                                      ; preds = %.lr.ph323.i.preheader, %bb.bn
  %.0322.i = phi i64 [ %i.yu, %bb.bn ], [ %.0322.i.ph, %.lr.ph323.i.preheader ] ; 2 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.0322.i ; 2 uses
  %i.ys = load i8, ptr %i.yr, align 1, !tbaa !29
  %i.yt = icmp eq i8 %i.ys, 1
  br i1 %i.yt, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %.lr.ph323.i
  store i8 4, ptr %i.yr, align 1, !tbaa !29
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %.lr.ph323.i
  %i.yu = add nuw i64 %.0322.i, 1                 ; 2 uses
  %exitcond350.not.i = icmp eq i64 %i.yu, %.0702
  br i1 %exitcond350.not.i, label %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit, label %.lr.ph323.i, !llvm.loop !80

_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit: ; preds = %bb.bn, %middle.block, %vec.epilog.middle.block, %bb.p, %.loopexit284.i
  %i.yv = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.yw = icmp ugt i64 %.0702, 1537228672809129301
  %i.yx = mul nuw i64 %.0702, 12
  %i.yy = select i1 %i.yw, i64 -1, i64 %i.yx
  %i.yz = invoke noundef ptr %i.yv(i64 noundef %i.yy)
          to label %bb.bo unwind label %bb.bw, !inline_history !5 ; 37 uses

bb.bo:                                            ; preds = %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit
  %38 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.za = add nuw nsw i64 %38, 1
  store i64 %i.za, ptr %i.eh, align 8, !tbaa !26
  %i.zb = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %38
  store ptr %i.yz, ptr %i.zb, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.b, i8 0, i64 12, i1 false)
  %i.zc = call fastcc noundef float @_ZN7meshoptL16rescalePositionsEPNS_7Vector3EPKfmmPKjPf(ptr noundef %i.yz, ptr noundef %3, i64 noundef %.0702, i64 noundef %5, ptr noundef %.0379, ptr noundef nonnull %i.b) ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %.not402 = icmp eq i64 %9, 0
  br i1 %.not402, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.preheader729.preheader

.preheader729.preheader:                          ; preds = %bb.bo
  %xtraiter1306 = and i64 %9, 1
  %i.zd = icmp eq i64 %9, 1
  br i1 %i.zd, label %.preheader729.epil.preheader, label %.preheader729.preheader.new

.preheader729.preheader.new:                      ; preds = %.preheader729.preheader
  %unroll_iter1311 = and i64 %9, -2
  br label %.preheader729

.unr-lcssa:                                       ; preds = %bb.bz
  %lcmp.mod1308.not = icmp eq i64 %xtraiter1306, 0
  br i1 %lcmp.mod1308.not, label %.epilog-lcssa, label %.preheader729.epil.preheader

.preheader729.epil.preheader:                     ; preds = %.unr-lcssa, %.preheader729.preheader
  %.0349774.epil.init = phi i64 [ 0, %.preheader729.preheader ], [ %i.aak, %.unr-lcssa ] ; 2 uses
  %.0350773.epil.init = phi i64 [ 0, %.preheader729.preheader ], [ %.1351.1, %.unr-lcssa ] ; 3 uses
  %lcmp.mod1310 = trunc i64 %9 to i1
  call void @llvm.assume(i1 %lcmp.mod1310)
  %i.ze = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.0349774.epil.init
  %i.zf = load float, ptr %i.ze, align 4, !tbaa !44
  %i.zg = fcmp ogt float %i.zf, 0.000000e+00
  br i1 %i.zg, label %bb.bp, label %.epilog-lcssa

bb.bp:                                            ; preds = %.preheader729.epil.preheader
  %i.zh = trunc i64 %.0349774.epil.init to i32
  %i.zi = add nuw nsw i64 %.0350773.epil.init, 1
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0350773.epil.init
  store i32 %i.zh, ptr %i.zj, align 4, !tbaa !28
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.preheader729.epil.preheader, %bb.bp, %.unr-lcssa
  %.1351.lcssa = phi i64 [ %.1351.1, %.unr-lcssa ], [ %i.zi, %bb.bp ], [ %.0350773.epil.init, %.preheader729.epil.preheader ] ; 15 uses
  %i.zk = mul i64 %.1351.lcssa, %.0702            ; 2 uses
  %i.zl = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.zm = icmp ugt i64 %i.zk, 4611686018427387903
  %i.zn = shl nuw i64 %i.zk, 2
  %i.zo = select i1 %i.zm, i64 -1, i64 %i.zn
  %i.zp = invoke noundef ptr %i.zl(i64 noundef %i.zo)
          to label %bb.ca unwind label %bb.cb, !inline_history !6 ; 7 uses

bb.bq:                                            ; preds = %.noexc437, %bb.i
  %i.zq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.br:                                            ; preds = %_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_.exit
  %i.zr = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bs:                                            ; preds = %bb.k, %bb.l
  %i.zs = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bt:                                            ; preds = %bb.m
  %i.zt = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bu:                                            ; preds = %bb.n
  %i.zu = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bv:                                            ; preds = %bb.o
  %i.zv = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.bw:                                            ; preds = %_ZN7meshoptL16classifyVerticesEPhPjS1_mRKNS_13EdgeAdjacencyEPKjS6_PKhS6_j.exit
  %i.zw = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

.preheader729:                                    ; preds = %bb.bz, %.preheader729.preheader.new
  %.0349774 = phi i64 [ 0, %.preheader729.preheader.new ], [ %i.aak, %bb.bz ] ; 4 uses
  %.0350773 = phi i64 [ 0, %.preheader729.preheader.new ], [ %.1351.1, %bb.bz ] ; 3 uses
  %niter1312 = phi i64 [ 0, %.preheader729.preheader.new ], [ %niter1312.next.1, %bb.bz ]
  %i.zx = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.0349774
  %i.zy = load float, ptr %i.zx, align 4, !tbaa !44
  %i.zz = fcmp ogt float %i.zy, 0.000000e+00
  br i1 %i.zz, label %bb.bx, label %.preheader729.1

bb.bx:                                            ; preds = %.preheader729
  %i.aaa = trunc i64 %.0349774 to i32
  %i.aab = add nuw nsw i64 %.0350773, 1
  %i.aac = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.0350773
  store i32 %i.aaa, ptr %i.aac, align 4, !tbaa !28
  br label %.preheader729.1

.preheader729.1:                                  ; preds = %.preheader729, %bb.bx
  %.1351 = phi i64 [ %i.aab, %bb.bx ], [ %.0350773, %.preheader729 ] ; 3 uses
  %i.aad = or disjoint i64 %.0349774, 1           ; 2 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.aad
  %i.aaf = load float, ptr %i.aae, align 4, !tbaa !44
  %i.aag = fcmp ogt float %i.aaf, 0.000000e+00
  br i1 %i.aag, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.preheader729.1
  %i.aah = trunc i64 %i.aad to i32
  %i.aai = add nuw nsw i64 %.1351, 1
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.1351
  store i32 %i.aah, ptr %i.aaj, align 4, !tbaa !28
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %.preheader729.1
  %.1351.1 = phi i64 [ %i.aai, %bb.by ], [ %.1351, %.preheader729.1 ] ; 3 uses
  %i.aak = add nuw i64 %.0349774, 2               ; 2 uses
  %niter1312.next.1 = add nuw i64 %niter1312, 2   ; 2 uses
  %niter1312.ncmp.1 = icmp eq i64 %niter1312.next.1, %unroll_iter1311
  br i1 %niter1312.ncmp.1, label %.unr-lcssa, label %.preheader729, !llvm.loop !81

bb.ca:                                            ; preds = %.epilog-lcssa
  %39 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.aal = add nuw nsw i64 %39, 1
  store i64 %i.aal, ptr %i.eh, align 8, !tbaa !26
  %i.aam = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %39
  store ptr %i.zp, ptr %i.aam, align 8, !tbaa !27
  %i.aan = lshr i64 %7, 2                         ; 2 uses
  br i1 %.not88.i, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.lr.ph29.i

.lr.ph29.i:                                       ; preds = %bb.ca
  %.not33.i = icmp eq i64 %.1351.lcssa, 0
  br i1 %.not33.i, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.lr.ph29.split.us.i

.lr.ph29.split.us.i:                              ; preds = %.lr.ph29.i
  %.not.i458 = icmp eq ptr %.0379, null
  br i1 %.not.i458, label %.lr.ph.us.us.i.preheader, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.lr.ph29.split.us.i
  %xtraiter1313 = and i64 %.1351.lcssa, 1
  %i.aao = icmp eq i64 %.1351.lcssa, 1
  %unroll_iter1317 = and i64 %.1351.lcssa, -2
  %lcmp.mod1315.not = icmp eq i64 %xtraiter1313, 0
  %lcmp.mod1316 = trunc i64 %.1351.lcssa to i1
  br label %.lr.ph.us.i

.lr.ph.us.us.i.preheader:                         ; preds = %.lr.ph29.split.us.i
  %xtraiter1320 = and i64 %.1351.lcssa, 1
  %i.aap = icmp eq i64 %.1351.lcssa, 1
  %unroll_iter1324 = and i64 %.1351.lcssa, -2
  %lcmp.mod1322.not = icmp eq i64 %xtraiter1320, 0
  %lcmp.mod1323 = trunc i64 %.1351.lcssa to i1
  br label %.lr.ph.us.us.i

.lr.ph.us.us.i:                                   ; preds = %.lr.ph.us.us.i.preheader, %._crit_edge.us.us.i
  %.027.us.us.i = phi i64 [ %i.aby, %._crit_edge.us.us.i ], [ 0, %.lr.ph.us.us.i.preheader ] ; 3 uses
  %i.aaq = and i64 %.027.us.us.i, 4294967295
  %i.aar = mul i64 %i.aaq, %i.aan
  %i.aas = getelementptr [4 x i8], ptr %6, i64 %i.aar ; 3 uses
  %i.aat = mul i64 %.027.us.us.i, %.1351.lcssa
  %i.aau = getelementptr [4 x i8], ptr %i.zp, i64 %i.aat ; 3 uses
  br i1 %i.aap, label %.epil.preheader1319, label %.lr.ph.us.us.i.new

.lr.ph.us.us.i.new:                               ; preds = %.lr.ph.us.us.i, %.lr.ph.us.us.i.new
  %.02326.us.us.i = phi i64 [ %i.abo, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ] ; 4 uses
  %niter1325 = phi i64 [ %niter1325.next.1, %.lr.ph.us.us.i.new ], [ 0, %.lr.ph.us.us.i ]
  %i.aav = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02326.us.us.i
  %i.aaw = load i32, ptr %i.aav, align 8, !tbaa !28
  %i.aax = zext i32 %i.aaw to i64                 ; 2 uses
  %i.aay = getelementptr [4 x i8], ptr %i.aas, i64 %i.aax
  %i.aaz = load float, ptr %i.aay, align 4, !tbaa !44
  %i.aba = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.aax
  %i.abb = load float, ptr %i.aba, align 4, !tbaa !44
  %i.abc = fmul float %i.aaz, %i.abb
  %i.abd = getelementptr [4 x i8], ptr %i.aau, i64 %.02326.us.us.i
  store float %i.abc, ptr %i.abd, align 4, !tbaa !44
  %i.abe = or disjoint i64 %.02326.us.us.i, 1     ; 2 uses
  %i.abf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.abe
  %i.abg = load i32, ptr %i.abf, align 4, !tbaa !28
  %i.abh = zext i32 %i.abg to i64                 ; 2 uses
  %i.abi = getelementptr [4 x i8], ptr %i.aas, i64 %i.abh
  %i.abj = load float, ptr %i.abi, align 4, !tbaa !44
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.abh
  %i.abl = load float, ptr %i.abk, align 4, !tbaa !44
  %i.abm = fmul float %i.abj, %i.abl
  %i.abn = getelementptr [4 x i8], ptr %i.aau, i64 %i.abe
  store float %i.abm, ptr %i.abn, align 4, !tbaa !44
  %i.abo = add nuw nsw i64 %.02326.us.us.i, 2     ; 2 uses
  %niter1325.next.1 = add nuw i64 %niter1325, 2   ; 2 uses
  %niter1325.ncmp.1 = icmp eq i64 %niter1325.next.1, %unroll_iter1324
  br i1 %niter1325.ncmp.1, label %._crit_edge.us.us.i.unr-lcssa, label %.lr.ph.us.us.i.new, !llvm.loop !82

._crit_edge.us.us.i.unr-lcssa:                    ; preds = %.lr.ph.us.us.i.new
  br i1 %lcmp.mod1322.not, label %._crit_edge.us.us.i, label %.epil.preheader1319

.epil.preheader1319:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.lr.ph.us.us.i
  %.02326.us.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.us.i ], [ %i.abo, %._crit_edge.us.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1323)
  %i.abp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02326.us.us.i.epil.init
  %i.abq = load i32, ptr %i.abp, align 4, !tbaa !28
  %i.abr = zext i32 %i.abq to i64                 ; 2 uses
  %i.abs = getelementptr [4 x i8], ptr %i.aas, i64 %i.abr
  %i.abt = load float, ptr %i.abs, align 4, !tbaa !44
  %i.abu = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.abr
  %i.abv = load float, ptr %i.abu, align 4, !tbaa !44
  %i.abw = fmul float %i.abt, %i.abv
  %i.abx = getelementptr [4 x i8], ptr %i.aau, i64 %.02326.us.us.i.epil.init
  store float %i.abw, ptr %i.abx, align 4, !tbaa !44
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %._crit_edge.us.us.i.unr-lcssa, %.epil.preheader1319
  %i.aby = add nuw i64 %.027.us.us.i, 1           ; 2 uses
  %exitcond39.not.i = icmp eq i64 %i.aby, %.0702
  br i1 %exitcond39.not.i, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.lr.ph.us.us.i, !llvm.loop !83

.lr.ph.us.i:                                      ; preds = %.lr.ph.us.i.preheader, %._crit_edge.us.i
  %.027.us.i = phi i64 [ %i.adj, %._crit_edge.us.i ], [ 0, %.lr.ph.us.i.preheader ] ; 3 uses
  %i.abz = getelementptr inbounds nuw [4 x i8], ptr %.0379, i64 %.027.us.i
  %i.aca = load i32, ptr %i.abz, align 4, !tbaa !28
  %i.acb = zext i32 %i.aca to i64
  %i.acc = mul i64 %i.aan, %i.acb
  %i.acd = getelementptr [4 x i8], ptr %6, i64 %i.acc ; 3 uses
  %i.ace = mul i64 %.027.us.i, %.1351.lcssa
  %i.acf = getelementptr [4 x i8], ptr %i.zp, i64 %i.ace ; 3 uses
  br i1 %i.aao, label %.epil.preheader, label %.lr.ph.us.i.new

.lr.ph.us.i.new:                                  ; preds = %.lr.ph.us.i, %.lr.ph.us.i.new
  %.02326.us.i = phi i64 [ %i.acz, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ] ; 4 uses
  %niter1318 = phi i64 [ %niter1318.next.1, %.lr.ph.us.i.new ], [ 0, %.lr.ph.us.i ]
  %i.acg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02326.us.i
  %i.ach = load i32, ptr %i.acg, align 8, !tbaa !28
  %i.aci = zext i32 %i.ach to i64                 ; 2 uses
  %i.acj = getelementptr [4 x i8], ptr %i.acd, i64 %i.aci
  %i.ack = load float, ptr %i.acj, align 4, !tbaa !44
  %i.acl = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.aci
  %i.acm = load float, ptr %i.acl, align 4, !tbaa !44
  %i.acn = fmul float %i.ack, %i.acm
  %i.aco = getelementptr [4 x i8], ptr %i.acf, i64 %.02326.us.i
  store float %i.acn, ptr %i.aco, align 4, !tbaa !44
  %i.acp = or disjoint i64 %.02326.us.i, 1        ; 2 uses
  %i.acq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.acp
  %i.acr = load i32, ptr %i.acq, align 4, !tbaa !28
  %i.acs = zext i32 %i.acr to i64                 ; 2 uses
  %i.act = getelementptr [4 x i8], ptr %i.acd, i64 %i.acs
  %i.acu = load float, ptr %i.act, align 4, !tbaa !44
  %i.acv = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.acs
  %i.acw = load float, ptr %i.acv, align 4, !tbaa !44
  %i.acx = fmul float %i.acu, %i.acw
  %i.acy = getelementptr [4 x i8], ptr %i.acf, i64 %i.acp
  store float %i.acx, ptr %i.acy, align 4, !tbaa !44
  %i.acz = add nuw nsw i64 %.02326.us.i, 2        ; 2 uses
  %niter1318.next.1 = add nuw i64 %niter1318, 2   ; 2 uses
  %niter1318.ncmp.1 = icmp eq i64 %niter1318.next.1, %unroll_iter1317
  br i1 %niter1318.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.lr.ph.us.i.new, !llvm.loop !82

._crit_edge.us.i.unr-lcssa:                       ; preds = %.lr.ph.us.i.new
  br i1 %lcmp.mod1315.not, label %._crit_edge.us.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.i.unr-lcssa, %.lr.ph.us.i
  %.02326.us.i.epil.init = phi i64 [ 0, %.lr.ph.us.i ], [ %i.acz, %._crit_edge.us.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1316)
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.02326.us.i.epil.init
  %i.adb = load i32, ptr %i.ada, align 4, !tbaa !28
  %i.adc = zext i32 %i.adb to i64                 ; 2 uses
  %i.add = getelementptr [4 x i8], ptr %i.acd, i64 %i.adc
  %i.ade = load float, ptr %i.add, align 4, !tbaa !44
  %i.adf = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.adc
  %i.adg = load float, ptr %i.adf, align 4, !tbaa !44
  %i.adh = fmul float %i.ade, %i.adg
  %i.adi = getelementptr [4 x i8], ptr %i.acf, i64 %.02326.us.i.epil.init
  store float %i.adh, ptr %i.adi, align 4, !tbaa !44
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.epil.preheader
  %i.adj = add nuw i64 %.027.us.i, 1              ; 2 uses
  %exitcond37.not.i = icmp eq i64 %i.adj, %.0702
  br i1 %exitcond37.not.i, label %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit, label %.lr.ph.us.i, !llvm.loop !83

bb.cb:                                            ; preds = %.epilog-lcssa
  %i.adk = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit: ; preds = %._crit_edge.us.i, %._crit_edge.us.us.i, %.lr.ph29.i, %bb.ca, %bb.bo
  %.0352 = phi ptr [ null, %bb.bo ], [ %i.zp, %bb.ca ], [ %i.zp, %.lr.ph29.i ], [ %i.zp, %._crit_edge.us.us.i ], [ %i.zp, %._crit_edge.us.i ] ; 15 uses
  %.0330 = phi i64 [ 0, %bb.bo ], [ %.1351.lcssa, %bb.ca ], [ 0, %.lr.ph29.i ], [ %.1351.lcssa, %._crit_edge.us.us.i ], [ %.1351.lcssa, %._crit_edge.us.i ] ; 58 uses
  %i.adl = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.adm = icmp ugt i64 %.0702, 419244183493398900
  %i.adn = mul i64 %.0702, 44                     ; 3 uses
  %i.ado = select i1 %i.adm, i64 -1, i64 %i.adn   ; 2 uses
  %i.adp = invoke noundef ptr %i.adl(i64 noundef %i.ado)
          to label %bb.cc unwind label %bb.ci, !inline_history !7 ; 14 uses

bb.cc:                                            ; preds = %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit
  %40 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.adq = add nuw nsw i64 %40, 1
  store i64 %i.adq, ptr %i.eh, align 8, !tbaa !26
  %i.adr = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %40
  store ptr %i.adp, ptr %i.adr, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 4 %i.adp, i8 0, i64 %i.adn, i1 false)
  %.not403 = icmp eq i64 %.0330, 0                ; 7 uses
  br i1 %.not403, label %bb.ck, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.ads = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.adt = invoke noundef ptr %i.ads(i64 noundef %i.ado)
          to label %bb.ce unwind label %bb.cj, !inline_history !7 ; 4 uses

bb.ce:                                            ; preds = %bb.cd
  %41 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.adu = add nuw nsw i64 %41, 1
  store i64 %i.adu, ptr %i.eh, align 8, !tbaa !26
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %41
  store ptr %i.adt, ptr %i.adv, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 4 %i.adt, i8 0, i64 %i.adn, i1 false)
  %i.adw = mul i64 %.0330, %.0702                 ; 2 uses
  %i.adx = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.ady = icmp ugt i64 %i.adw, 1152921504606846975
  %i.adz = shl i64 %i.adw, 4                      ; 2 uses
  %i.aea = select i1 %i.ady, i64 -1, i64 %i.adz
  %i.aeb = invoke noundef ptr %i.adx(i64 noundef %i.aea)
          to label %bb.cf unwind label %bb.cj, !inline_history !84 ; 4 uses

bb.cf:                                            ; preds = %bb.ce
  %42 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.aec = add nuw nsw i64 %42, 1
  store i64 %i.aec, ptr %i.eh, align 8, !tbaa !26
  %i.aed = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %42
  store ptr %i.aeb, ptr %i.aed, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 4 %i.aeb, i8 0, i64 %i.adz, i1 false)
  %i.aee = and i32 %13, 536870912
  %.not404 = icmp eq i32 %i.aee, 0
  br i1 %.not404, label %bb.ck, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.aef = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.aeg = icmp ugt i64 %.0702, 1152921504606846975
  %i.aeh = shl i64 %.0702, 4                      ; 2 uses
  %i.aei = select i1 %i.aeg, i64 -1, i64 %i.aeh
  %i.aej = invoke noundef ptr %i.aef(i64 noundef %i.aei)
          to label %bb.ch unwind label %bb.cj, !inline_history !84 ; 3 uses

bb.ch:                                            ; preds = %bb.cg
  %43 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.aek = add nuw nsw i64 %43, 1
  store i64 %i.aek, ptr %i.eh, align 8, !tbaa !26
  %i.ael = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %43
  store ptr %i.aej, ptr %i.ael, align 8, !tbaa !27
  call void @llvm.memset.p0.i64(ptr align 4 %i.aej, i8 0, i64 %i.aeh, i1 false)
  br label %bb.ck

bb.ci:                                            ; preds = %_ZN7meshoptL17rescaleAttributesEPfPKfmmS2_mPKjS4_.exit
  %i.aem = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.cj:                                            ; preds = %bb.cg, %bb.ce, %bb.cd
  %i.aen = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

bb.ck:                                            ; preds = %bb.cf, %bb.ch, %bb.cc
  %.0348 = phi ptr [ %i.adt, %bb.ch ], [ %i.adt, %bb.cf ], [ null, %bb.cc ] ; 15 uses
  %.0347 = phi ptr [ %i.aeb, %bb.ch ], [ %i.aeb, %bb.cf ], [ null, %bb.cc ] ; 13 uses
  %.0346 = phi ptr [ %i.aej, %bb.ch ], [ null, %bb.cf ], [ null, %bb.cc ] ; 9 uses
  br i1 %.not87.i, label %_ZN7meshoptL16fillFaceQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3ES5_.exit, label %.lr.ph.i466

.lr.ph.i466:                                      ; preds = %bb.ck
  %.not.i467 = icmp eq ptr %.0346, null
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cn, %.lr.ph.i466
  %.076.i = phi i64 [ 0, %.lr.ph.i466 ], [ %i.akf, %bb.cn ] ; 2 uses
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.076.i ; 3 uses
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !28
  %i.aeq = getelementptr i8, ptr %i.aeo, i64 4
  %i.aer = load i32, ptr %i.aeq, align 4, !tbaa !28
  %i.aes = getelementptr i8, ptr %i.aeo, i64 8
  %i.aet = load i32, ptr %i.aes, align 4, !tbaa !28
  %i.aeu = zext i32 %i.aep to i64                 ; 2 uses
  %i.aev = getelementptr inbounds nuw [12 x i8], ptr %i.yz, i64 %i.aeu ; 2 uses
  %i.aew = zext i32 %i.aer to i64                 ; 2 uses
  %i.aex = getelementptr inbounds nuw [12 x i8], ptr %i.yz, i64 %i.aew ; 2 uses
  %i.aey = zext i32 %i.aet to i64                 ; 2 uses
  %i.aez = getelementptr inbounds nuw [12 x i8], ptr %i.yz, i64 %i.aey ; 2 uses
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aex, i64 8
  %i.afb = load float, ptr %i.afa, align 4, !tbaa !46
  %i.afc = getelementptr inbounds nuw i8, ptr %i.aev, i64 8
  %i.afd = load float, ptr %i.afc, align 4, !tbaa !46 ; 3 uses
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aez, i64 8
  %i.aff = load float, ptr %i.afe, align 4, !tbaa !46
  %i.afg = load <2 x float>, ptr %i.aex, align 4, !tbaa !44 ; 2 uses
  %i.afh = load <2 x float>, ptr %i.aev, align 4, !tbaa !44 ; 5 uses
  %i.afi = fsub <2 x float> %i.afg, %i.afh        ; 2 uses
  %i.afj = shufflevector <2 x float> %i.afg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.afk = insertelement <2 x float> %i.afj, float %i.afb, i64 0
  %i.afl = shufflevector <2 x float> %i.afh, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.afm = insertelement <2 x float> %i.afl, float %i.afd, i64 0 ; 2 uses
  %i.afn = fsub <2 x float> %i.afk, %i.afm        ; 2 uses
  %i.afo = load <2 x float>, ptr %i.aez, align 4, !tbaa !44 ; 2 uses
  %i.afp = fsub <2 x float> %i.afo, %i.afh        ; 2 uses
  %i.afq = shufflevector <2 x float> %i.afo, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.afr = insertelement <2 x float> %i.afq, float %i.aff, i64 0
  %i.afs = fsub <2 x float> %i.afr, %i.afm        ; 2 uses
  %i.aft = extractelement <2 x float> %i.afp, i64 1
  %i.afu = fneg float %i.aft
  %i.afv = extractelement <2 x float> %i.afn, i64 0
  %i.afw = fmul float %i.afv, %i.afu
  %i.afx = extractelement <2 x float> %i.afi, i64 1
  %i.afy = extractelement <2 x float> %i.afs, i64 0
  %i.afz = call float @llvm.fmuladd.f32(float %i.afx, float %i.afy, float %i.afw) ; 4 uses
  %i.aga = fneg <2 x float> %i.afs
  %i.agb = fmul <2 x float> %i.afi, %i.aga
  %i.agc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.afn, <2 x float> %i.afp, <2 x float> %i.agb) ; 5 uses
  %foldExtExtBinop = fmul <2 x float> %i.agc, %i.agc
  %i.agd = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.age = call float @llvm.fmuladd.f32(float %i.afz, float %i.afz, float %i.agd)
  %i.agf = extractelement <2 x float> %i.agc, i64 1 ; 2 uses
  %i.agg = call float @llvm.fmuladd.f32(float %i.agf, float %i.agf, float %i.age) ; 2 uses
  %sqrt.i.i.i = call float @llvm.sqrt.f32(float %i.agg) ; 4 uses
  %i.agh = fcmp ogt float %i.agg, 0.000000e+00    ; 2 uses
  %i.agi = fdiv float %i.afz, %sqrt.i.i.i
  %i.agj = insertelement <2 x float> poison, float %sqrt.i.i.i, i64 0
  %i.agk = shufflevector <2 x float> %i.agj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.agl = fdiv <2 x float> %i.agc, %i.agk
  %i.agm = insertelement <2 x i1> poison, i1 %i.agh, i64 0
  %i.agn = shufflevector <2 x i1> %i.agm, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ago = select <2 x i1> %i.agn, <2 x float> %i.agl, <2 x float> %i.agc ; 4 uses
  %.sroa.0.0.i.i = select i1 %i.agh, float %i.agi, float %i.afz ; 4 uses
  %i.agp = extractelement <2 x float> %i.ago, i64 0 ; 2 uses
  %i.agq = extractelement <2 x float> %i.afh, i64 1 ; 2 uses
  %i.agr = fmul float %i.agq, %i.agp
  %i.ags = extractelement <2 x float> %i.afh, i64 0 ; 2 uses
  %i.agt = call float @llvm.fmuladd.f32(float %.sroa.0.0.i.i, float %i.ags, float %i.agr)
  %i.agu = extractelement <2 x float> %i.ago, i64 1 ; 3 uses
  %i.agv = call float @llvm.fmuladd.f32(float %i.agu, float %i.afd, float %i.agt)
  %i.agw = fneg float %i.agv                      ; 2 uses
  %sqrt.i.i = call float @llvm.sqrt.f32(float %sqrt.i.i.i) ; 5 uses
  %i.agx = fmul float %sqrt.i.i, %i.agw           ; 3 uses
  %i.agy = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.aeu
  %i.agz = load i32, ptr %i.agy, align 4, !tbaa !28
  %i.aha = zext i32 %i.agz to i64                 ; 2 uses
  %i.ahb = getelementptr inbounds nuw [44 x i8], ptr %i.adp, i64 %i.aha ; 5 uses
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.ahb, i64 16 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %i.ahb, i64 32 ; 2 uses
  %i.ahe = getelementptr inbounds nuw i8, ptr %i.ahb, i64 40 ; 2 uses
  %i.ahf = load float, ptr %i.ahe, align 4, !tbaa !48
  %i.ahg = fadd float %sqrt.i.i, %i.ahf
  store float %i.ahg, ptr %i.ahe, align 4, !tbaa !48
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.aew
  %i.ahi = load i32, ptr %i.ahh, align 4, !tbaa !28
  %i.ahj = zext i32 %i.ahi to i64                 ; 2 uses
  %i.ahk = getelementptr inbounds nuw [44 x i8], ptr %i.adp, i64 %i.ahj ; 5 uses
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.ahk, i64 16 ; 2 uses
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahk, i64 32 ; 2 uses
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahk, i64 40 ; 2 uses
  %i.aho = load float, ptr %i.ahn, align 4, !tbaa !48
  %i.ahp = fadd float %sqrt.i.i, %i.aho
  store float %i.ahp, ptr %i.ahn, align 4, !tbaa !48
  %i.ahq = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.aey
  %i.ahr = load i32, ptr %i.ahq, align 4, !tbaa !28
  %i.ahs = zext i32 %i.ahr to i64                 ; 2 uses
  %i.aht = getelementptr inbounds nuw [44 x i8], ptr %i.adp, i64 %i.ahs ; 5 uses
  %i.ahu = insertelement <4 x float> poison, float %sqrt.i.i, i64 0
  %i.ahv = shufflevector <4 x float> %i.ahu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ahw = shufflevector <2 x float> %i.ago, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 0> ; 3 uses
  %i.ahx = insertelement <4 x float> poison, float %.sroa.0.0.i.i, i64 0 ; 2 uses
  %i.ahy = insertelement <4 x float> %i.ahw, float %.sroa.0.0.i.i, i64 0 ; 2 uses
  %i.ahz = fmul <4 x float> %i.ahv, %i.ahy        ; 2 uses
  %i.aia = shufflevector <4 x float> %i.ahw, <4 x float> %i.ahy, <4 x i32> <i32 4, i32 1, i32 2, i32 4>
  %i.aib = fmul <4 x float> %i.aia, %i.ahz        ; 3 uses
  %i.aic = load <4 x float>, ptr %i.ahb, align 4, !tbaa !44
  %i.aid = fadd <4 x float> %i.aic, %i.aib
  store <4 x float> %i.aid, ptr %i.ahb, align 4, !tbaa !44
  %i.aie = load <4 x float>, ptr %i.ahk, align 4, !tbaa !44
  %i.aif = fadd <4 x float> %i.aib, %i.aie
  store <4 x float> %i.aif, ptr %i.ahk, align 4, !tbaa !44
  %i.aig = load <4 x float>, ptr %i.aht, align 4, !tbaa !44
  %i.aih = fadd <4 x float> %i.aib, %i.aig
  store <4 x float> %i.aih, ptr %i.aht, align 4, !tbaa !44
  %i.aii = getelementptr inbounds nuw i8, ptr %i.aht, i64 16 ; 2 uses
  %i.aij = shufflevector <4 x float> %i.ahx, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.aik = shufflevector <4 x float> %i.aij, <4 x float> %i.ahw, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.ail = shufflevector <4 x float> %i.ahz, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.aim = insertelement <2 x float> %i.ail, float %i.agx, i64 1
  %i.ain = shufflevector <2 x float> %i.aim, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.aio = fmul <4 x float> %i.aik, %i.ain        ; 3 uses
  %i.aip = load <4 x float>, ptr %i.ahc, align 4, !tbaa !44
  %i.aiq = fadd <4 x float> %i.aip, %i.aio
  store <4 x float> %i.aiq, ptr %i.ahc, align 4, !tbaa !44
  %i.air = load <4 x float>, ptr %i.ahl, align 4, !tbaa !44
  %i.ais = fadd <4 x float> %i.aio, %i.air
  store <4 x float> %i.ais, ptr %i.ahl, align 4, !tbaa !44
  %i.ait = load <4 x float>, ptr %i.aii, align 4, !tbaa !44
  %i.aiu = fadd <4 x float> %i.aio, %i.ait
  store <4 x float> %i.aiu, ptr %i.aii, align 4, !tbaa !44
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.aht, i64 32 ; 2 uses
  %i.aiw = load <2 x float>, ptr %i.ahd, align 4, !tbaa !44
  %i.aix = fmul float %i.agx, %i.agw
  %i.aiy = fmul float %i.agu, %i.agx
  %i.aiz = insertelement <2 x float> poison, float %i.aiy, i64 0
  %i.aja = insertelement <2 x float> %i.aiz, float %i.aix, i64 1 ; 3 uses
  %i.ajb = fadd <2 x float> %i.aja, %i.aiw
  store <2 x float> %i.ajb, ptr %i.ahd, align 4, !tbaa !44
  %i.ajc = load <2 x float>, ptr %i.ahm, align 4, !tbaa !44
  %i.ajd = fadd <2 x float> %i.aja, %i.ajc
  store <2 x float> %i.ajd, ptr %i.ahm, align 4, !tbaa !44
  %i.aje = load <2 x float>, ptr %i.aiv, align 4, !tbaa !44
  %i.ajf = fadd <2 x float> %i.aja, %i.aje
  store <2 x float> %i.ajf, ptr %i.aiv, align 4, !tbaa !44
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.aht, i64 40 ; 2 uses
  %i.ajh = load float, ptr %i.ajg, align 4, !tbaa !48
  %i.aji = fadd float %sqrt.i.i, %i.ajh
  store float %i.aji, ptr %i.ajg, align 4, !tbaa !48
  br i1 %.not.i467, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ajj = fmul float %sqrt.i.i.i, 5.000000e-01
  %i.ajk = fneg float %i.ags
  %i.ajl = fneg float %i.agp
  %i.ajm = fmul float %i.agq, %i.ajl
  %i.ajn = call float @llvm.fmuladd.f32(float %i.ajk, float %.sroa.0.0.i.i, float %i.ajm)
  %i.ajo = fneg float %i.afd
  %i.ajp = call float @llvm.fmuladd.f32(float %i.ajo, float %i.agu, float %i.ajn)
  %i.ajq = getelementptr inbounds nuw [16 x i8], ptr %.0346, i64 %i.aha ; 2 uses
  %i.ajr = getelementptr inbounds nuw [16 x i8], ptr %.0346, i64 %i.ahj ; 2 uses
  %i.ajs = getelementptr inbounds nuw [16 x i8], ptr %.0346, i64 %i.ahs ; 2 uses
  %i.ajt = insertelement <4 x float> poison, float %i.ajj, i64 0
  %i.aju = shufflevector <4 x float> %i.ajt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ajv = shufflevector <2 x float> %i.ago, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ajw = shufflevector <4 x float> %i.ahx, <4 x float> %i.ajv, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.ajx = insertelement <4 x float> %i.ajw, float %i.ajp, i64 3
  %i.ajy = fmul <4 x float> %i.aju, %i.ajx        ; 3 uses
  %i.ajz = load <4 x float>, ptr %i.ajq, align 4, !tbaa !44
  %i.aka = fadd <4 x float> %i.ajy, %i.ajz
  store <4 x float> %i.aka, ptr %i.ajq, align 4, !tbaa !44
  %i.akb = load <4 x float>, ptr %i.ajr, align 4, !tbaa !44
  %i.akc = fadd <4 x float> %i.ajy, %i.akb
  store <4 x float> %i.akc, ptr %i.ajr, align 4, !tbaa !44
  %i.akd = load <4 x float>, ptr %i.ajs, align 4, !tbaa !44
  %i.ake = fadd <4 x float> %i.ajy, %i.akd
  store <4 x float> %i.ake, ptr %i.ajs, align 4, !tbaa !44
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.akf = add i64 %.076.i, 3                     ; 2 uses
  %i.akg = icmp ult i64 %i.akf, %2
end_hunk_1
begin_hunk_2_@_Z20meshopt_simplifyEdgePjPKjmPKfmmS3_mS3_mPKhmfjPf:bb.a
  %i.axb = call float @llvm.fmuladd.f32(float %i.avt, float %i.awy, float %i.axa)
  %i.axc = call float @llvm.fmuladd.f32(float %i.avv, float %i.awz, float %i.axb) ; 4 uses
  %i.axd = insertelement <4 x float> poison, float %i.axc, i64 0
  %i.axe = shufflevector <4 x float> %i.awq, <4 x float> %i.axd, <4 x i32> <i32 2, i32 1, i32 4, i32 4>
  %i.axf = fmul <4 x float> %i.awu, %i.axe
  %i.axg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.avx, <4 x float> %i.axf, <4 x float> %i.awb) ; 4 uses
  %i.axh = insertelement <2 x float> %i.awv, float %i.axc, i64 1
  %i.axi = insertelement <2 x float> poison, float %i.axc, i64 0
  %i.axj = shufflevector <2 x float> %i.axi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.axk = fmul <2 x float> %i.axh, %i.axj
  %i.axl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.avz, <2 x float> %i.axk, <2 x float> %i.awc) ; 4 uses
  %i.axm = insertelement <4 x float> %i.awq, float %i.axc, i64 3
  %i.axn = fmul <4 x float> %i.avx, %i.axm
  store <4 x float> %i.axn, ptr %i.aww, align 16, !tbaa !44
  %i.axo = add nuw nsw i64 %.0210.i.i, 1          ; 2 uses
  %exitcond.not.i.i487 = icmp eq i64 %i.axo, %.0330
  br i1 %exitcond.not.i.i487, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, label %bb.df, !llvm.loop !89

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i: ; preds = %bb.df
  %i.axp = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.atb ; 5 uses
  %i.axq = load <4 x float>, ptr %i.axp, align 4, !tbaa !44
  %i.axr = fadd <4 x float> %i.awt, %i.axq
  store <4 x float> %i.axr, ptr %i.axp, align 4, !tbaa !44
  %i.axs = getelementptr inbounds nuw i8, ptr %i.axp, i64 16 ; 2 uses
  %i.axt = load <4 x float>, ptr %i.axs, align 4, !tbaa !44
  %i.axu = fadd <4 x float> %i.axg, %i.axt
  store <4 x float> %i.axu, ptr %i.axs, align 4, !tbaa !44
  %i.axv = getelementptr inbounds nuw i8, ptr %i.axp, i64 32 ; 2 uses
  %i.axw = load <2 x float>, ptr %i.axv, align 4, !tbaa !44
  %i.axx = fadd <2 x float> %i.axl, %i.axw
  store <2 x float> %i.axx, ptr %i.axv, align 4, !tbaa !44
  %i.axy = getelementptr inbounds nuw i8, ptr %i.axp, i64 40 ; 2 uses
  %i.axz = load float, ptr %i.axy, align 4, !tbaa !48
  %i.aya = fadd float %i.aup, %i.axz
  store float %i.aya, ptr %i.axy, align 4, !tbaa !48
  %i.ayb = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.atd ; 5 uses
  %i.ayc = load <4 x float>, ptr %i.ayb, align 4, !tbaa !44
  %i.ayd = fadd <4 x float> %i.awt, %i.ayc
  store <4 x float> %i.ayd, ptr %i.ayb, align 4, !tbaa !44
  %i.aye = getelementptr inbounds nuw i8, ptr %i.ayb, i64 16 ; 2 uses
  %i.ayf = load <4 x float>, ptr %i.aye, align 4, !tbaa !44
  %i.ayg = fadd <4 x float> %i.axg, %i.ayf
  store <4 x float> %i.ayg, ptr %i.aye, align 4, !tbaa !44
  %i.ayh = getelementptr inbounds nuw i8, ptr %i.ayb, i64 32 ; 2 uses
  %i.ayi = load <2 x float>, ptr %i.ayh, align 4, !tbaa !44
  %i.ayj = fadd <2 x float> %i.axl, %i.ayi
  store <2 x float> %i.ayj, ptr %i.ayh, align 4, !tbaa !44
  %i.ayk = getelementptr inbounds nuw i8, ptr %i.ayb, i64 40 ; 2 uses
  %i.ayl = load float, ptr %i.ayk, align 4, !tbaa !48
  %i.aym = fadd float %i.aup, %i.ayl
  store float %i.aym, ptr %i.ayk, align 4, !tbaa !48
  %i.ayn = getelementptr inbounds nuw [44 x i8], ptr %.0348, i64 %i.atf ; 5 uses
  %i.ayo = load <4 x float>, ptr %i.ayn, align 4, !tbaa !44
  %i.ayp = fadd <4 x float> %i.awt, %i.ayo
  store <4 x float> %i.ayp, ptr %i.ayn, align 4, !tbaa !44
  %i.ayq = getelementptr inbounds nuw i8, ptr %i.ayn, i64 16 ; 2 uses
  %i.ayr = load <4 x float>, ptr %i.ayq, align 4, !tbaa !44
  %i.ays = fadd <4 x float> %i.axg, %i.ayr
  store <4 x float> %i.ays, ptr %i.ayq, align 4, !tbaa !44
  %i.ayt = getelementptr inbounds nuw i8, ptr %i.ayn, i64 32 ; 2 uses
  %i.ayu = load <2 x float>, ptr %i.ayt, align 4, !tbaa !44
  %i.ayv = fadd <2 x float> %i.axl, %i.ayu
  store <2 x float> %i.ayv, ptr %i.ayt, align 4, !tbaa !44
  %i.ayw = getelementptr inbounds nuw i8, ptr %i.ayn, i64 40 ; 2 uses
  %i.ayx = load float, ptr %i.ayw, align 4, !tbaa !48
  %i.ayy = fadd float %i.aup, %i.ayx
  store float %i.ayy, ptr %i.ayw, align 4, !tbaa !48
  %i.ayz = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.ath ; 3 uses
  br i1 %i.ass, label %.epil.preheader1326, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new

_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  %.018.i.i = phi i64 [ %i.azl, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ] ; 4 uses
  %niter1332 = phi i64 [ %niter1332.next.1, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new ], [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ]
  %i.aza = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i
  %i.azb = getelementptr inbounds nuw [16 x i8], ptr %i.ayz, i64 %.018.i.i ; 2 uses
  %i.azc = load <4 x float>, ptr %i.aza, align 16, !tbaa !44
  %i.azd = load <4 x float>, ptr %i.azb, align 4, !tbaa !44
  %i.aze = fadd <4 x float> %i.azc, %i.azd
  store <4 x float> %i.aze, ptr %i.azb, align 4, !tbaa !44
  %i.azf = or disjoint i64 %.018.i.i, 1           ; 2 uses
  %i.azg = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.azf
  %i.azh = getelementptr inbounds nuw [16 x i8], ptr %i.ayz, i64 %i.azf ; 2 uses
  %i.azi = load <4 x float>, ptr %i.azg, align 16, !tbaa !44
  %i.azj = load <4 x float>, ptr %i.azh, align 4, !tbaa !44
  %i.azk = fadd <4 x float> %i.azi, %i.azj
  store <4 x float> %i.azk, ptr %i.azh, align 4, !tbaa !44
  %i.azl = add nuw nsw i64 %.018.i.i, 2           ; 2 uses
  %niter1332.next.1 = add nuw i64 %niter1332, 2   ; 2 uses
  %niter1332.ncmp.1 = icmp eq i64 %niter1332.next.1, %unroll_iter1331
  br i1 %niter1332.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, label %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa: ; preds = %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i.new
  br i1 %lcmp.mod1329.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, label %.epil.preheader1326

.epil.preheader1326:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i
  %.018.i.i.epil.init = phi i64 [ 0, %_ZN7meshoptL21quadricFromAttributesERNS_7QuadricEPNS_11QuadricGradERKNS_7Vector3ES6_S6_PKfS8_S8_m.exit.i ], [ %i.azl, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1330)
  %i.azm = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i.i.epil.init
  %i.azn = getelementptr inbounds nuw [16 x i8], ptr %i.ayz, i64 %.018.i.i.epil.init ; 2 uses
  %i.azo = load <4 x float>, ptr %i.azm, align 16, !tbaa !44
  %i.azp = load <4 x float>, ptr %i.azn, align 4, !tbaa !44
  %i.azq = fadd <4 x float> %i.azo, %i.azp
  store <4 x float> %i.azq, ptr %i.azn, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.unr-lcssa, %.epil.preheader1326
  %i.azr = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.atj ; 3 uses
  br i1 %i.ast, label %.epil.preheader1333, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  %.018.i43.i = phi i64 [ %i.bad, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ] ; 4 uses
  %niter1339 = phi i64 [ %niter1339.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ]
  %i.azs = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i
  %i.azt = getelementptr inbounds nuw [16 x i8], ptr %i.azr, i64 %.018.i43.i ; 2 uses
  %i.azu = load <4 x float>, ptr %i.azs, align 16, !tbaa !44
  %i.azv = load <4 x float>, ptr %i.azt, align 4, !tbaa !44
  %i.azw = fadd <4 x float> %i.azu, %i.azv
  store <4 x float> %i.azw, ptr %i.azt, align 4, !tbaa !44
  %i.azx = or disjoint i64 %.018.i43.i, 1         ; 2 uses
  %i.azy = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.azx
  %i.azz = getelementptr inbounds nuw [16 x i8], ptr %i.azr, i64 %i.azx ; 2 uses
  %i.baa = load <4 x float>, ptr %i.azy, align 16, !tbaa !44
  %i.bab = load <4 x float>, ptr %i.azz, align 4, !tbaa !44
  %i.bac = fadd <4 x float> %i.baa, %i.bab
  store <4 x float> %i.bac, ptr %i.azz, align 4, !tbaa !44
  %i.bad = add nuw nsw i64 %.018.i43.i, 2         ; 2 uses
  %niter1339.next.1 = add nuw i64 %niter1339, 2   ; 2 uses
  %niter1339.ncmp.1 = icmp eq i64 %niter1339.next.1, %unroll_iter1338
  br i1 %niter1339.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i.new
  br i1 %lcmp.mod1336.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, label %.epil.preheader1333

.epil.preheader1333:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i
  %.018.i43.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit.i ], [ %i.bad, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1337)
  %i.bae = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i43.i.epil.init
  %i.baf = getelementptr inbounds nuw [16 x i8], ptr %i.azr, i64 %.018.i43.i.epil.init ; 2 uses
  %i.bag = load <4 x float>, ptr %i.bae, align 16, !tbaa !44
  %i.bah = load <4 x float>, ptr %i.baf, align 4, !tbaa !44
  %i.bai = fadd <4 x float> %i.bag, %i.bah
  store <4 x float> %i.bai, ptr %i.baf, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.unr-lcssa, %.epil.preheader1333
  %i.baj = getelementptr inbounds nuw [16 x i8], ptr %.0347, i64 %i.atl ; 3 uses
  br i1 %i.asu, label %.epil.preheader1340, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  %.018.i46.i = phi i64 [ %i.bav, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ] ; 4 uses
  %niter1346 = phi i64 [ %niter1346.next.1, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new ], [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ]
  %i.bak = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i
  %i.bal = getelementptr inbounds nuw [16 x i8], ptr %i.baj, i64 %.018.i46.i ; 2 uses
  %i.bam = load <4 x float>, ptr %i.bak, align 16, !tbaa !44
  %i.ban = load <4 x float>, ptr %i.bal, align 4, !tbaa !44
  %i.bao = fadd <4 x float> %i.bam, %i.ban
  store <4 x float> %i.bao, ptr %i.bal, align 4, !tbaa !44
  %i.bap = or disjoint i64 %.018.i46.i, 1         ; 2 uses
  %i.baq = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %i.bap
  %i.bar = getelementptr inbounds nuw [16 x i8], ptr %i.baj, i64 %i.bap ; 2 uses
  %i.bas = load <4 x float>, ptr %i.baq, align 16, !tbaa !44
  %i.bat = load <4 x float>, ptr %i.bar, align 4, !tbaa !44
  %i.bau = fadd <4 x float> %i.bas, %i.bat
  store <4 x float> %i.bau, ptr %i.bar, align 4, !tbaa !44
  %i.bav = add nuw nsw i64 %.018.i46.i, 2         ; 2 uses
  %niter1346.next.1 = add nuw i64 %niter1346, 2   ; 2 uses
  %niter1346.ncmp.1 = icmp eq i64 %niter1346.next.1, %unroll_iter1345
  br i1 %niter1346.ncmp.1, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new, !llvm.loop !90

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i.new
  br i1 %lcmp.mod1343.not, label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, label %.epil.preheader1340

.epil.preheader1340:                              ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i
  %.018.i46.i.epil.init = phi i64 [ 0, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit45.i ], [ %i.bav, %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod1344)
  %i.baw = getelementptr inbounds nuw [16 x i8], ptr %15, i64 %.018.i46.i.epil.init
  %i.bax = getelementptr inbounds nuw [16 x i8], ptr %i.baj, i64 %.018.i46.i.epil.init ; 2 uses
  %i.bay = load <4 x float>, ptr %i.baw, align 16, !tbaa !44
  %i.baz = load <4 x float>, ptr %i.bax, align 4, !tbaa !44
  %i.bba = fadd <4 x float> %i.bay, %i.baz
  store <4 x float> %i.bba, ptr %i.bax, align 4, !tbaa !44
  br label %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i

_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i.unr-lcssa, %.epil.preheader1340
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #14
  %i.bbb = add i64 %.080.i, 3                     ; 2 uses
  %i.bbc = icmp ult i64 %i.bbb, %2
  br i1 %i.bbc, label %.lr.ph.i485, label %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit, !llvm.loop !91

_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit: ; preds = %_ZN7meshoptL10quadricAddEPNS_11QuadricGradEPKS0_m.exit48.i, %_ZN7meshoptL16fillEdgeQuadricsEPNS_7QuadricEPKjmPKNS_7Vector3ES3_PKhS3_S3_.exit, %_ZN7meshoptL18fillVertexQuadricsEPNS_7QuadricEPKNS_7Vector3EmPKjPKhS6_j.exit
  %i.bbd = and i32 %13, 8
  %.not405 = icmp ne i32 %i.bbd, 0                ; 3 uses
  br i1 %.not405, label %bb.dg, label %.loopexit727

bb.dg:                                            ; preds = %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit
  %i.bbe = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bbf = invoke noundef ptr %i.bbe(i64 noundef %i.iq)
          to label %bb.dh unwind label %bb.dj, !inline_history !4 ; 6 uses

bb.dh:                                            ; preds = %bb.dg
  %i.bbg = load i64, ptr %i.eh, align 8, !tbaa !26 ; 2 uses
  %i.bbh = add nuw nsw i64 %i.bbg, 1
  store i64 %i.bbh, ptr %i.eh, align 8, !tbaa !26
  %i.bbi = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.bbg
  store ptr %i.bbf, ptr %i.bbi, align 8, !tbaa !27
  %i.bbj = call fastcc noundef i64 @_ZN7meshoptL15buildComponentsEPjmPKjmS2_(ptr noundef %i.bbf, i64 noundef %.0702, ptr noundef %0, i64 noundef %2, ptr noundef %i.ir) ; 8 uses
  %i.bbk = shl nuw nsw i64 %i.bbj, 4
  %i.bbl = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bbm = invoke noundef ptr %i.bbl(i64 noundef %i.bbk)
          to label %bb.di unwind label %bb.dj, !inline_history !6 ; 10 uses

bb.di:                                            ; preds = %bb.dh
  %44 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.bbn = add nuw nsw i64 %44, 1
  store i64 %i.bbn, ptr %i.eh, align 8, !tbaa !26
  %i.bbo = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %44
  store ptr %i.bbm, ptr %i.bbo, align 8, !tbaa !27
  call fastcc void @_ZN7meshoptL17measureComponentsEPfmPKjPKNS_7Vector3Em(ptr noundef %i.bbm, i64 noundef %i.bbj, ptr noundef %i.bbf, ptr noundef %i.yz, i64 noundef %.0702)
  %.not832 = icmp eq i64 %i.bbj, 0
  br i1 %.not832, label %.loopexit727, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.di
  %xtraiter1347 = and i64 %i.bbj, 3               ; 3 uses
  %i.bbp = icmp samesign ult i64 %i.bbj, 4
  br i1 %i.bbp, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter1352 = and i64 %i.bbj, 4294967292
  br label %.lr.ph

bb.dj:                                            ; preds = %bb.dh, %bb.dg
  %i.bbq = landingpad { ptr, i32 }
          cleanup
  br label %bb.jj

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0342776 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.bcg, %.lr.ph ] ; 5 uses
  %.0696775 = phi float [ f0x7F7FFFFF, %.lr.ph.preheader.new ], [ %..3, %.lr.ph ] ; 2 uses
  %niter1353 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter1353.next.3, %.lr.ph ]
  %i.bbr = getelementptr inbounds nuw [4 x i8], ptr %i.bbm, i64 %.0342776
  %i.bbs = load float, ptr %i.bbr, align 4, !tbaa !44 ; 2 uses
  %i.bbt = fcmp ogt float %.0696775, %i.bbs
  %. = select i1 %i.bbt, float %i.bbs, float %.0696775 ; 2 uses
  %i.bbu = getelementptr inbounds nuw [4 x i8], ptr %i.bbm, i64 %.0342776
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.bbu, i64 4
  %i.bbw = load float, ptr %i.bbv, align 4, !tbaa !44 ; 2 uses
  %i.bbx = fcmp ogt float %., %i.bbw
  %..1 = select i1 %i.bbx, float %i.bbw, float %. ; 2 uses
  %i.bby = getelementptr inbounds nuw [4 x i8], ptr %i.bbm, i64 %.0342776
  %i.bbz = getelementptr inbounds nuw i8, ptr %i.bby, i64 8
  %i.bca = load float, ptr %i.bbz, align 4, !tbaa !44 ; 2 uses
  %i.bcb = fcmp ogt float %..1, %i.bca
  %..2 = select i1 %i.bcb, float %i.bca, float %..1 ; 2 uses
  %i.bcc = getelementptr inbounds nuw [4 x i8], ptr %i.bbm, i64 %.0342776
  %i.bcd = getelementptr inbounds nuw i8, ptr %i.bcc, i64 12
  %i.bce = load float, ptr %i.bcd, align 4, !tbaa !44 ; 2 uses
  %i.bcf = fcmp ogt float %..2, %i.bce
  %..3 = select i1 %i.bcf, float %i.bce, float %..2 ; 3 uses
  %i.bcg = add nuw nsw i64 %.0342776, 4           ; 2 uses
  %niter1353.next.3 = add nuw nsw i64 %niter1353, 4 ; 2 uses
  %niter1353.ncmp.3 = icmp eq i64 %niter1353.next.3, %unroll_iter1352
  br i1 %niter1353.ncmp.3, label %.loopexit727.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !92

.loopexit727.loopexit.unr-lcssa:                  ; preds = %.lr.ph
  %lcmp.mod1349.not = icmp eq i64 %xtraiter1347, 0
  br i1 %lcmp.mod1349.not, label %.loopexit727, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit727.loopexit.unr-lcssa, %.lr.ph.preheader
  %.0342776.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.bcg, %.loopexit727.loopexit.unr-lcssa ]
  %.0696775.epil.init = phi float [ f0x7F7FFFFF, %.lr.ph.preheader ], [ %..3, %.loopexit727.loopexit.unr-lcssa ]
  %lcmp.mod1351 = icmp ne i64 %xtraiter1347, 0
  call void @llvm.assume(i1 %lcmp.mod1351)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.0342776.epil = phi i64 [ %i.bck, %.lr.ph.epil ], [ %.0342776.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %.0696775.epil = phi float [ %..epil, %.lr.ph.epil ], [ %.0696775.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter1348 = phi i64 [ %epil.iter1348.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.bch = getelementptr inbounds nuw [4 x i8], ptr %i.bbm, i64 %.0342776.epil
  %i.bci = load float, ptr %i.bch, align 4, !tbaa !44 ; 2 uses
  %i.bcj = fcmp ogt float %.0696775.epil, %i.bci
  %..epil = select i1 %i.bcj, float %i.bci, float %.0696775.epil ; 2 uses
  %i.bck = add nuw nsw i64 %.0342776.epil, 1
  %epil.iter1348.next = add i64 %epil.iter1348, 1 ; 2 uses
  %epil.iter1348.cmp.not = icmp eq i64 %epil.iter1348.next, %xtraiter1347
  br i1 %epil.iter1348.cmp.not, label %.loopexit727, label %.lr.ph.epil, !llvm.loop !93

.loopexit727:                                     ; preds = %.loopexit727.loopexit.unr-lcssa, %.lr.ph.epil, %bb.di, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit
  %.1697 = phi float [ 0.000000e+00, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit ], [ f0x7F7FFFFF, %bb.di ], [ %..3, %.loopexit727.loopexit.unr-lcssa ], [ %..epil, %.lr.ph.epil ] ; 3 uses
  %.0345 = phi ptr [ null, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit ], [ %i.bbf, %bb.di ], [ %i.bbf, %.lr.ph.epil ], [ %i.bbf, %.loopexit727.loopexit.unr-lcssa ] ; 2 uses
  %.0344 = phi ptr [ null, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit ], [ %i.bbm, %bb.di ], [ %i.bbm, %.lr.ph.epil ], [ %i.bbm, %.loopexit727.loopexit.unr-lcssa ] ; 5 uses
  %.0343 = phi i64 [ 0, %_ZN7meshoptL21fillAttributeQuadricsEPNS_7QuadricEPNS_11QuadricGradEPKjmPKNS_7Vector3EPKfm.exit ], [ 0, %bb.di ], [ %i.bbj, %.lr.ph.epil ], [ %i.bbj, %.loopexit727.loopexit.unr-lcssa ] ; 5 uses
  br i1 %.not88.i, label %_ZN7meshoptL18boundEdgeCollapsesERKNS_13EdgeAdjacencyEmmPh.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit727
  %.pre.i = load i32, ptr %i.eg, align 4, !tbaa !28 ; 2 uses
  %min.iters.check1184 = icmp ult i64 %.0702, 4
  br i1 %min.iters.check1184, label %.lr.ph.i494.preheader, label %vector.ph1185

vector.ph1185:                                    ; preds = %.lr.ph.preheader.i
  %n.vec1186 = and i64 %.0702, -4                 ; 3 uses
  %vector.recur.init = insertelement <2 x i32> poison, i32 %.pre.i, i64 1
  br label %vector.body1187

vector.body1187:                                  ; preds = %vector.body1187, %vector.ph1185
  %index1188 = phi i64 [ 0, %vector.ph1185 ], [ %index.next1194, %vector.body1187 ] ; 3 uses
  %vector.recur = phi <2 x i32> [ %vector.recur.init, %vector.ph1185 ], [ %wide.load1193, %vector.body1187 ]
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph1185 ], [ %i.bde, %vector.body1187 ]
  %vec.phi1189 = phi <2 x i64> [ zeroinitializer, %vector.ph1185 ], [ %i.bdf, %vector.body1187 ]
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.iy, i64 %index1188 ; 2 uses
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bcl, i64 2
  %wide.load1190 = load <2 x i8>, ptr %i.bcl, align 1, !tbaa !29
  %wide.load1191 = load <2 x i8>, ptr %i.bcm, align 1, !tbaa !29
  %i.bcn = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %index1188 ; 2 uses
  %i.bco = getelementptr inbounds nuw i8, ptr %i.bcn, i64 4
  %i.bcp = getelementptr inbounds nuw i8, ptr %i.bcn, i64 12
  %wide.load1192 = load <2 x i32>, ptr %i.bco, align 4, !tbaa !28 ; 3 uses
  %wide.load1193 = load <2 x i32>, ptr %i.bcp, align 4, !tbaa !28 ; 4 uses
  %i.bcq = shufflevector <2 x i32> %vector.recur, <2 x i32> %wide.load1192, <2 x i32> <i32 1, i32 2>
  %i.bcr = shufflevector <2 x i32> %wide.load1192, <2 x i32> %wide.load1193, <2 x i32> <i32 1, i32 2>
  %i.bcs = sub <2 x i32> %wide.load1192, %i.bcq
  %i.bct = sub <2 x i32> %wide.load1193, %i.bcr
  %i.bcu = and <2 x i8> %wide.load1190, splat (i8 -3)
  %i.bcv = and <2 x i8> %wide.load1191, splat (i8 -3)
  %i.bcw = icmp eq <2 x i8> %i.bcu, zeroinitializer
  %i.bcx = icmp eq <2 x i8> %i.bcv, zeroinitializer
  %i.bcy = zext <2 x i32> %i.bcs to <2 x i64>
  %i.bcz = zext <2 x i32> %i.bct to <2 x i64>
  %i.bda = select <2 x i1> %i.bcw, <2 x i64> %i.bcy, <2 x i64> zeroinitializer
  %i.bdb = select <2 x i1> %i.bcx, <2 x i64> %i.bcz, <2 x i64> zeroinitializer
  %i.bdc = freeze <2 x i64> %i.bda
  %i.bdd = freeze <2 x i64> %i.bdb
  %i.bde = add <2 x i64> %i.bdc, %vec.phi         ; 2 uses
  %i.bdf = add <2 x i64> %i.bdd, %vec.phi1189     ; 2 uses
  %index.next1194 = add nuw i64 %index1188, 4     ; 2 uses
  %i.bdg = icmp eq i64 %index.next1194, %n.vec1186
  br i1 %i.bdg, label %middle.block1195, label %vector.body1187, !llvm.loop !94

middle.block1195:                                 ; preds = %vector.body1187
  %bin.rdx = add <2 x i64> %i.bdf, %i.bde
  %i.bdh = call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %vector.recur.extract = extractelement <2 x i32> %wide.load1193, i64 1
  %cmp.n1196 = icmp eq i64 %.0702, %n.vec1186
  br i1 %cmp.n1196, label %._crit_edge.loopexit.i, label %.lr.ph.i494.preheader

.lr.ph.i494.preheader:                            ; preds = %.lr.ph.preheader.i, %middle.block1195
  %.ph = phi i32 [ %.pre.i, %.lr.ph.preheader.i ], [ %vector.recur.extract, %middle.block1195 ]
  %.02.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.bdh, %middle.block1195 ]
  %.0161.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec1186, %middle.block1195 ]
  br label %.lr.ph.i494

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i494, %middle.block1195
  %.lcssa1078 = phi i64 [ %i.bdh, %middle.block1195 ], [ %i.bdt, %.lr.ph.i494 ]
  %i.bdi = lshr i64 %.lcssa1078, 1
  br label %_ZN7meshoptL18boundEdgeCollapsesERKNS_13EdgeAdjacencyEmmPh.exit

.lr.ph.i494:                                      ; preds = %.lr.ph.i494.preheader, %.lr.ph.i494
  %i.bdj = phi i32 [ %i.bdo, %.lr.ph.i494 ], [ %.ph, %.lr.ph.i494.preheader ]
  %.02.i = phi i64 [ %i.bdt, %.lr.ph.i494 ], [ %.02.i.ph, %.lr.ph.i494.preheader ]
  %.0161.i = phi i64 [ %i.bdm, %.lr.ph.i494 ], [ %.0161.i.ph, %.lr.ph.i494.preheader ] ; 2 uses
  %i.bdk = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.0161.i
  %i.bdl = load i8, ptr %i.bdk, align 1, !tbaa !29
  %i.bdm = add nuw i64 %.0161.i, 1                ; 3 uses
  %i.bdn = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.bdm
  %i.bdo = load i32, ptr %i.bdn, align 4, !tbaa !28 ; 2 uses
  %i.bdp = sub i32 %i.bdo, %i.bdj
  %i.bdq = and i8 %i.bdl, -3
  %or.cond.i495 = icmp eq i8 %i.bdq, 0
  %i.bdr = zext i32 %i.bdp to i64
  %i.bds = select i1 %or.cond.i495, i64 %i.bdr, i64 0
  %.fr835 = freeze i64 %i.bds
  %i.bdt = add i64 %.fr835, %.02.i                ; 2 uses
  %exitcond.not.i496 = icmp eq i64 %i.bdm, %.0702
  br i1 %exitcond.not.i496, label %._crit_edge.loopexit.i, label %.lr.ph.i494, !llvm.loop !95

_ZN7meshoptL18boundEdgeCollapsesERKNS_13EdgeAdjacencyEmmPh.exit: ; preds = %.loopexit727, %._crit_edge.loopexit.i
  %.0.lcssa.i = phi i64 [ 0, %.loopexit727 ], [ %i.bdi, %._crit_edge.loopexit.i ]
  %i.bdu = add i64 %2, 3
  %i.bdv = sub i64 %i.bdu, %.0.lcssa.i            ; 6 uses
  %i.bdw = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bdx = icmp ugt i64 %i.bdv, 1537228672809129301
  %i.bdy = mul nuw i64 %i.bdv, 12
  %i.bdz = select i1 %i.bdx, i64 -1, i64 %i.bdy
  %i.bea = invoke noundef ptr %i.bdw(i64 noundef %i.bdz)
          to label %bb.dk unwind label %bb.em, !inline_history !96 ; 13 uses

bb.dk:                                            ; preds = %_ZN7meshoptL18boundEdgeCollapsesERKNS_13EdgeAdjacencyEmmPh.exit
  %i.beb = load i64, ptr %i.eh, align 8, !tbaa !26 ; 2 uses
  %i.bec = add nuw nsw i64 %i.beb, 1
  store i64 %i.bec, ptr %i.eh, align 8, !tbaa !26
  %i.bed = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %i.beb
  store ptr %i.bea, ptr %i.bed, align 8, !tbaa !27
  %i.bee = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bef = icmp ugt i64 %i.bdv, 4611686018427387903
  %i.beg = shl nuw i64 %i.bdv, 2
  %i.beh = select i1 %i.bef, i64 -1, i64 %i.beg
  %i.bei = invoke noundef ptr %i.bee(i64 noundef %i.beh)
          to label %bb.dl unwind label %bb.en, !inline_history !4 ; 6 uses

bb.dl:                                            ; preds = %bb.dk
  %45 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.bej = add nuw nsw i64 %45, 1
  store i64 %i.bej, ptr %i.eh, align 8, !tbaa !26
  %i.bek = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %45
  store ptr %i.bei, ptr %i.bek, align 8, !tbaa !27
  %i.bel = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.bem = invoke noundef ptr %i.bel(i64 noundef %i.iq)
          to label %bb.dm unwind label %bb.eo, !inline_history !4 ; 16 uses

bb.dm:                                            ; preds = %bb.dl
  %46 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.ben = add nuw nsw i64 %46, 1
  store i64 %i.ben, ptr %i.eh, align 8, !tbaa !26
  %i.beo = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %46
  store ptr %i.bem, ptr %i.beo, align 8, !tbaa !27
  %i.bep = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !23
  %i.beq = invoke noundef ptr %i.bep(i64 noundef %.0702)
          to label %bb.dn unwind label %bb.ep, !inline_history !65 ; 17 uses

bb.dn:                                            ; preds = %bb.dm
  %47 = load i64, ptr %i.eh, align 8, !tbaa !26   ; 2 uses
  %i.ber = add nuw nsw i64 %47, 1
  store i64 %i.ber, ptr %i.eh, align 8, !tbaa !26
  %i.bes = getelementptr inbounds nuw [8 x i8], ptr %16, i64 %47
  store ptr %i.beq, ptr %i.bes, align 8, !tbaa !27
  %i.bet = and i32 %13, 4
  %.not406 = icmp eq i32 %i.bet, 0
  %i.beu = select i1 %.not406, float 1.000000e+00, float %i.zc ; 3 uses
  %i.bev = fmul float %12, %12
  %i.bew = fmul float %i.beu, %i.beu
  %i.bex = fdiv float %i.bev, %i.bew              ; 5 uses
  %i.bey = icmp ugt i64 %2, %11
  br i1 %i.bey, label %.lr.ph784, label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread

.lr.ph784:                                        ; preds = %bb.dn
  %i.bez = icmp ult i64 %i.bdv, 3
  %.not.i542 = icmp eq ptr %.0346, null
  br i1 %i.bez, label %.lr.ph784.split.us, label %.preheader.i505.preheader.preheader

.preheader.i505.preheader.preheader:              ; preds = %.lr.ph784
  %min.iters.check1199 = icmp ult i64 %.0702, 8
  %n.vec1201 = and i64 %.0702, -8                 ; 3 uses
  %cmp.n1206 = icmp eq i64 %.0702, %n.vec1201
  %xtraiter1370 = and i64 %.0330, 1
  %i.bfa = icmp eq i64 %.0330, 1
  %unroll_iter1374 = and i64 %.0330, -2
  %lcmp.mod1372.not = icmp eq i64 %xtraiter1370, 0
  %lcmp.mod1373 = trunc i64 %.0330 to i1
  br label %.preheader.i505.preheader

.lr.ph784.split.us:                               ; preds = %.lr.ph784
  call fastcc void @_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef %0, i64 noundef %2, i64 noundef %.0702, ptr noundef %i.ir)
  br label %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit.thread

.preheader.i505.preheader:                        ; preds = %.preheader.i505.preheader.preheader, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit
  %.0339782 = phi i64 [ %.3, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ], [ %2, %.preheader.i505.preheader.preheader ] ; 6 uses
  %.0680781 = phi float [ %i.cub, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ], [ 0.000000e+00, %.preheader.i505.preheader.preheader ] ; 2 uses
  %.0688780 = phi float [ %.8, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ], [ 0.000000e+00, %.preheader.i505.preheader.preheader ] ; 2 uses
  %.2698779 = phi float [ %.3699, %_ZN7meshoptL15pruneComponentsEPjmPKjPKfmfRf.exit ], [ %.1697, %.preheader.i505.preheader.preheader ] ; 4 uses
  call fastcc void @_ZN7meshoptL19updateEdgeAdjacencyERNS_13EdgeAdjacencyEPKjmmS3_(ptr noundef nonnull align 8 dereferenceable(16) %17, ptr noundef %0, i64 noundef %.0339782, i64 noundef %.0702, ptr noundef %i.ir)
  br label %.preheader.i505

.preheader.i505:                                  ; preds = %.preheader.i505.preheader, %bb.el
  %.093.i = phi i64 [ %.4.2.i, %bb.el ], [ 0, %.preheader.i505.preheader ] ; 7 uses
  %.07792.i = phi i64 [ %i.bje, %bb.el ], [ 0, %.preheader.i505.preheader ] ; 2 uses
  %i.bfb = getelementptr [4 x i8], ptr %0, i64 %.07792.i ; 4 uses
  %i.bfc = load i32, ptr %i.bfb, align 4, !tbaa !28 ; 4 uses
  %i.bfd = getelementptr i8, ptr %i.bfb, i64 4    ; 2 uses
  %i.bfe = load i32, ptr %i.bfd, align 4, !tbaa !28 ; 9 uses
  %i.bff = zext i32 %i.bfc to i64                 ; 3 uses
  %i.bfg = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.bff
  %i.bfh = load i32, ptr %i.bfg, align 4, !tbaa !28 ; 3 uses
  %i.bfi = zext i32 %i.bfe to i64                 ; 8 uses
  %i.bfj = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.bfi
  %i.bfk = load i32, ptr %i.bfj, align 4, !tbaa !28 ; 6 uses
  %i.bfl = icmp eq i32 %i.bfh, %i.bfk
  br i1 %i.bfl, label %bb.dv, label %bb.do

bb.do:                                            ; preds = %.preheader.i505
  %i.bfm = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.bff
  %i.bfn = load i8, ptr %i.bfm, align 1, !tbaa !29 ; 3 uses
  %i.bfo = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.bfi
  %i.bfp = load i8, ptr %i.bfo, align 1, !tbaa !29 ; 3 uses
  %i.bfq = zext i8 %i.bfn to i64                  ; 3 uses
  %i.bfr = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kCanCollapseE, i64 %i.bfq
  %i.bfs = zext i8 %i.bfp to i64                  ; 3 uses
  %i.bft = getelementptr inbounds nuw i8, ptr %i.bfr, i64 %i.bfs
  %i.bfu = load i8, ptr %i.bft, align 1, !tbaa !29 ; 3 uses
  %i.bfv = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kCanCollapseE, i64 %i.bfs
  %i.bfw = getelementptr inbounds nuw i8, ptr %i.bfv, i64 %i.bfq
  %i.bfx = load i8, ptr %i.bfw, align 1, !tbaa !29 ; 2 uses
  %i.bfy = or i8 %i.bfx, %i.bfu
  %.not.i506 = icmp eq i8 %i.bfy, 0
  br i1 %.not.i506, label %bb.dv, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.bfz = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kHasOppositeE, i64 %i.bfq
  %i.bga = getelementptr inbounds nuw i8, ptr %i.bfz, i64 %i.bfs
  %i.bgb = load i8, ptr %i.bga, align 1, !tbaa !29
  %.not81.i = icmp ne i8 %i.bgb, 0
  %i.bgc = icmp ugt i32 %i.bfk, %i.bfh
  %or.cond86.i = and i1 %i.bgc, %.not81.i
  br i1 %or.cond86.i, label %bb.dv, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.bgd = add i8 %i.bfn, -1
  %or.cond.i507 = icmp ult i8 %i.bgd, 2
  %i.bge = icmp ne i8 %i.bfp, 0
  %or.cond5.i508 = and i1 %or.cond.i507, %i.bge
  br i1 %or.cond5.i508, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.bgf = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.bff
  %i.bgg = load i32, ptr %i.bgf, align 4, !tbaa !28
  %.not82.i = icmp eq i32 %i.bgg, %i.bfe
  br i1 %.not82.i, label %bb.ds, label %bb.dv

bb.ds:                                            ; preds = %bb.dr, %bb.dq
  %i.bgh = add i8 %i.bfp, -1
  %or.cond8.i509 = icmp ult i8 %i.bgh, 2
  %i.bgi = icmp ne i8 %i.bfn, 0
  %or.cond11.i510 = and i1 %i.bgi, %or.cond8.i509
  br i1 %or.cond11.i510, label %bb.dt, label %bb.du

bb.dt:                                            ; preds = %bb.ds
  %i.bgj = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.bfi
  %i.bgk = load i32, ptr %i.bgj, align 4, !tbaa !28
  %.not83.i = icmp eq i32 %i.bgk, %i.bfc
  br i1 %.not83.i, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt, %bb.ds
  %i.bgl = and i8 %i.bfx, %i.bfu
  %.not84.i = icmp ne i8 %i.bgl, 0
  %.not85.i = icmp eq i8 %i.bfu, 0                ; 2 uses
  %.sink116.i = select i1 %.not85.i, i32 %i.bfe, i32 %i.bfc
  %.sink114.i = select i1 %.not85.i, i32 %i.bfc, i32 %i.bfe
  %.sink.i = zext i1 %.not84.i to i32
  %i.bgm = getelementptr inbounds nuw [12 x i8], ptr %i.bea, i64 %.093.i ; 3 uses
  store i32 %.sink116.i, ptr %i.bgm, align 4, !tbaa !28
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bgm, i64 4
  store i32 %.sink114.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !28
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bgm, i64 8
  store i32 %.sink.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !29
  %.2.i = add i64 %.093.i, 1
  %.pre.i511 = load i32, ptr %i.bfd, align 4, !tbaa !28 ; 2 uses
  %.phi.trans.insert.i = zext i32 %.pre.i511 to i64 ; 2 uses
  %.phi.trans.insert95.i = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %.phi.trans.insert.i
  %.pre96.i = load i32, ptr %.phi.trans.insert95.i, align 4, !tbaa !28
  br label %bb.dv

bb.dv:                                            ; preds = %bb.du, %bb.dt, %bb.dr, %bb.dp, %bb.do, %.preheader.i505
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i, %bb.du ], [ %i.bfi, %bb.do ], [ %i.bfi, %bb.dp ], [ %i.bfi, %bb.dr ], [ %i.bfi, %bb.dt ], [ %i.bfi, %.preheader.i505 ] ; 2 uses
  %i.bgn = phi i32 [ %.pre96.i, %bb.du ], [ %i.bfk, %bb.do ], [ %i.bfk, %bb.dp ], [ %i.bfk, %bb.dr ], [ %i.bfk, %bb.dt ], [ %i.bfh, %.preheader.i505 ] ; 3 uses
  %i.bgo = phi i32 [ %.pre.i511, %bb.du ], [ %i.bfe, %bb.do ], [ %i.bfe, %bb.dp ], [ %i.bfe, %bb.dr ], [ %i.bfe, %bb.dt ], [ %i.bfe, %.preheader.i505 ] ; 3 uses
  %.4.i = phi i64 [ %.2.i, %bb.du ], [ %.093.i, %bb.do ], [ %.093.i, %bb.dp ], [ %.093.i, %bb.dr ], [ %.093.i, %bb.dt ], [ %.093.i, %.preheader.i505 ] ; 7 uses
  %i.bgp = getelementptr i8, ptr %i.bfb, i64 8    ; 2 uses
  %i.bgq = load i32, ptr %i.bgp, align 4, !tbaa !28 ; 9 uses
  %i.bgr = zext i32 %i.bgq to i64                 ; 8 uses
  %i.bgs = getelementptr inbounds nuw [4 x i8], ptr %i.ir, i64 %i.bgr
  %i.bgt = load i32, ptr %i.bgs, align 4, !tbaa !28 ; 6 uses
  %i.bgu = icmp eq i32 %i.bgn, %i.bgt
  br i1 %i.bgu, label %bb.ed, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.bgv = getelementptr inbounds nuw i8, ptr %i.iy, i64 %.pre-phi.i
  %i.bgw = load i8, ptr %i.bgv, align 1, !tbaa !29 ; 3 uses
  %i.bgx = getelementptr inbounds nuw i8, ptr %i.iy, i64 %i.bgr
  %i.bgy = load i8, ptr %i.bgx, align 1, !tbaa !29 ; 3 uses
  %i.bgz = zext i8 %i.bgw to i64                  ; 3 uses
  %i.bha = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kCanCollapseE, i64 %i.bgz
  %i.bhb = zext i8 %i.bgy to i64                  ; 3 uses
  %i.bhc = getelementptr inbounds nuw i8, ptr %i.bha, i64 %i.bhb
  %i.bhd = load i8, ptr %i.bhc, align 1, !tbaa !29 ; 3 uses
  %i.bhe = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kCanCollapseE, i64 %i.bhb
  %i.bhf = getelementptr inbounds nuw i8, ptr %i.bhe, i64 %i.bgz
  %i.bhg = load i8, ptr %i.bhf, align 1, !tbaa !29 ; 2 uses
  %i.bhh = or i8 %i.bhg, %i.bhd
  %.not.1.i = icmp eq i8 %i.bhh, 0
  br i1 %.not.1.i, label %bb.ed, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  %i.bhi = getelementptr inbounds nuw [5 x i8], ptr @_ZN7meshoptL12kHasOppositeE, i64 %i.bgz
  %i.bhj = getelementptr inbounds nuw i8, ptr %i.bhi, i64 %i.bhb
  %i.bhk = load i8, ptr %i.bhj, align 1, !tbaa !29
  %.not81.1.i = icmp ne i8 %i.bhk, 0
  %i.bhl = icmp ugt i32 %i.bgt, %i.bgn
  %or.cond86.1.i = and i1 %i.bhl, %.not81.1.i
  br i1 %or.cond86.1.i, label %bb.ed, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.bhm = add i8 %i.bgw, -1
  %or.cond.1.i = icmp ult i8 %i.bhm, 2
  %i.bhn = icmp ne i8 %i.bgy, 0
  %or.cond5.1.i = and i1 %or.cond.1.i, %i.bhn
  br i1 %or.cond5.1.i, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.bho = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %.pre-phi.i
  %i.bhp = load i32, ptr %i.bho, align 4, !tbaa !28
  %.not82.1.i = icmp eq i32 %i.bhp, %i.bgq
  br i1 %.not82.1.i, label %bb.ea, label %bb.ed

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.bhq = add i8 %i.bgy, -1
  %or.cond8.1.i = icmp ult i8 %i.bhq, 2
  %i.bhr = icmp ne i8 %i.bgw, 0
  %or.cond11.1.i = and i1 %i.bhr, %or.cond8.1.i
  br i1 %or.cond11.1.i, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %bb.ea
  %i.bhs = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.bgr
  %i.bht = load i32, ptr %i.bhs, align 4, !tbaa !28
  %.not83.1.i = icmp eq i32 %i.bht, %i.bgo
  br i1 %.not83.1.i, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb, %bb.ea
  %i.bhu = and i8 %i.bhg, %i.bhd
  %.not84.1.i = icmp ne i8 %i.bhu, 0
  %.not85.1.i = icmp eq i8 %i.bhd, 0              ; 2 uses
  %.sink122.i = select i1 %.not85.1.i, i32 %i.bgq, i32 %i.bgo
  %.sink120.i = select i1 %.not85.1.i, i32 %i.bgo, i32 %i.bgq
  %.sink118.i = zext i1 %.not84.1.i to i32
  %i.bhv = getelementptr inbounds nuw [12 x i8], ptr %i.bea, i64 %.4.i ; 3 uses
  store i32 %.sink122.i, ptr %i.bhv, align 4, !tbaa !28
end_hunk_2
