Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/vcacheoptimizer?download=true
inline.NumInlined: 25
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.meshopt::VertexScoreTable" = type { [17 x float], [9 x float] }
%"struct.meshopt_Allocator::Storage" = type { ptr, ptr }
%class.meshopt_Allocator = type { [24 x ptr], i64 }
%"struct.meshopt::TriangleAdjacency" = type { ptr, ptr, ptr }

$_ZN17meshopt_AllocatorD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZZN17meshopt_Allocator7storageEvE1s = comdat any

@_ZN7meshoptL17kVertexScoreTableE = internal constant %"struct.meshopt::VertexScoreTable" { [17 x float] [float 0.000000e+00, float f0x3F476C8B, float 7.910000e-01, float f0x3F49FBE7, float 9.810000e-01, float f0x3F57CED9, float 7.260000e-01, float 8.470000e-01, float 8.820000e-01, float f0x3F5DF3B6, float 7.990000e-01, float 6.420000e-01, float f0x3F1CED91, float 6.000000e-01, float 5.680000e-01, float 3.720000e-01, float 2.340000e-01], [9 x float] [float 0.000000e+00, float 9.950000e-01, float f0x3F36872B, float 4.500000e-01, float 4.040000e-01, float 5.900000e-02, float 5.000000e-03, float 1.470000e-01, float 6.000000e-03] }, align 4
@_ZN7meshoptL22kVertexScoreTableStripE = internal constant %"struct.meshopt::VertexScoreTable" { [17 x float] [float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 4.530000e-01, float 5.610000e-01, float 4.900000e-01, float 4.590000e-01, float 1.790000e-01, float 5.260000e-01, float 0.000000e+00, float 2.270000e-01, float 1.840000e-01, float 4.900000e-01, float 1.120000e-01, float 5.000000e-02, float 1.310000e-01], [9 x float] [float 0.000000e+00, float f0x3F74BC6A, float 7.860000e-01, float 5.770000e-01, float 5.580000e-01, float f0x3F1E353F, float 5.490000e-01, float 4.990000e-01, float 4.890000e-01] }, align 4
@_ZZN17meshopt_Allocator7storageEvE1s = linkonce_odr dso_local local_unnamed_addr global %"struct.meshopt_Allocator::Storage" { ptr @_Znwm, ptr @_ZdlPv }, comdat, align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z32meshopt_optimizeVertexCacheTablePjPKjmmPKN7meshopt16VertexScoreTableE(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.meshopt_Allocator, align 8   ; 13 uses
  %6 = alloca %"struct.meshopt::TriangleAdjacency", align 8 ; 8 uses
  %i.a = alloca [40 x i32], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %5, i8 0, i64 200, i1 false)
  %i.b = icmp eq i64 %2, 0
  %i.c = icmp eq i64 %3, 0
  %or.cond = or i1 %i.b, %i.c
  br i1 %or.cond, label %_ZN17meshopt_AllocatorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %0, %1
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.f = icmp ugt i64 %2, 4611686018427387903
  %i.g = shl i64 %2, 2                            ; 2 uses
  %i.h = select i1 %i.f, i64 -1, i64 %i.g
  %i.i = invoke noundef ptr %i.e(i64 noundef %i.h)
          to label %bb.d unwind label %bb.e, !inline_history !0 ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 1, ptr %i.j, align 8, !tbaa !17
  store ptr %i.i, ptr %5, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %1, i64 %i.g, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.f:                                             ; preds = %bb.d, %bb.b
  %.0 = phi ptr [ %i.i, %bb.d ], [ %1, %bb.b ]    ; 7 uses
  %i.l = udiv i64 %2, 3                           ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN7meshoptL22buildTriangleAdjacencyERNS_17TriangleAdjacencyEPKjmmR17meshopt_Allocator(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %.0, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(200) %5)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %6, align 8, !tbaa !21     ; 7 uses
  %i.n = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.o = invoke noundef ptr %i.n(i64 noundef %i.l)
          to label %bb.h unwind label %bb.j, !inline_history !1 ; 4 uses

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !17   ; 4 uses
  %i.r = add nsw i64 %i.q, 1                      ; 2 uses
  store i64 %i.r, ptr %i.p, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.q
  store ptr %i.o, ptr %i.s, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.o, i8 0, i64 %i.l, i1 false)
  %i.t = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.u = icmp ugt i64 %3, 4611686018427387903
  %i.v = shl nuw i64 %3, 2
  %i.w = select i1 %i.u, i64 -1, i64 %i.v
  %i.x = invoke noundef ptr %i.t(i64 noundef %i.w)
          to label %.lr.ph unwind label %bb.k, !inline_history !28 ; 14 uses

.lr.ph:                                           ; preds = %bb.h
  %i.y = add nsw i64 %i.q, 2                      ; 2 uses
  store i64 %i.y, ptr %i.p, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.r
  store ptr %i.x, ptr %i.z, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 68 ; 3 uses
  %xtraiter = and i64 %3, 1
  %i.ab = icmp eq i64 %3, 1
  br i1 %i.ab, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %3, -2
  br label %bb.l

._crit_edge.unr-lcssa:                            ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.0187207.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bp, %._crit_edge.unr-lcssa ] ; 2 uses
  %lcmp.mod296 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod296)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.0187207.epil.init
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !22
  %i.ae = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 8)
  %i.af = load float, ptr %4, align 4, !tbaa !38
  %i.ag = zext nneg i32 %i.ae to i64
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ag
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !38
  %i.aj = fadd float %i.af, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0187207.epil.init
  store float %i.aj, ptr %i.ak, align 4, !tbaa !38
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %i.al = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.am = icmp ugt i64 %2, -4611686018427387905
  %i.an = shl nuw i64 %i.l, 2
  %i.ao = select i1 %i.am, i64 -1, i64 %i.an
  %i.ap = invoke noundef ptr %i.al(i64 noundef %i.ao)
          to label %_ZN17meshopt_Allocator8allocateIfEEPT_m.exit200 unwind label %bb.m, !inline_history !28 ; 8 uses

_ZN17meshopt_Allocator8allocateIfEEPT_m.exit200:  ; preds = %._crit_edge
  %i.aq = add nsw i64 %i.q, 3                     ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.y
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !18
  %.not241 = icmp ult i64 %2, 3
  br i1 %.not241, label %._crit_edge210, label %.lr.ph209.preheader

.lr.ph209.preheader:                              ; preds = %_ZN17meshopt_Allocator8allocateIfEEPT_m.exit200
  %xtraiter297 = and i64 %i.l, 1
  %.off = add i64 %2, -3
  %i.as = icmp ult i64 %.off, 3
  br i1 %i.as, label %.lr.ph209.epil.preheader, label %.lr.ph209.preheader.new

.lr.ph209.preheader.new:                          ; preds = %.lr.ph209.preheader
  %unroll_iter300 = and i64 %i.l, 9223372036854775806
  br label %.lr.ph209

bb.i:                                             ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.j:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.k:                                             ; preds = %bb.h
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.l:                                             ; preds = %bb.l, %.lr.ph.new
  %.0187207 = phi i64 [ 0, %.lr.ph.new ], [ %i.bp, %bb.l ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.l ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.0187207
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !22
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 8)
  %i.az = load float, ptr %4, align 4, !tbaa !38
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ba
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !38
  %i.bd = fadd float %i.az, %i.bc
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.0187207
  store float %i.bd, ptr %i.be, align 4, !tbaa !38
  %i.bf = or disjoint i64 %.0187207, 1            ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !22
  %i.bi = tail call i32 @llvm.umin.i32(i32 %i.bh, i32 8)
  %i.bj = load float, ptr %4, align 4, !tbaa !38
  %i.bk = zext nneg i32 %i.bi to i64
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bk
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !38
  %i.bn = fadd float %i.bj, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bf
  store float %i.bn, ptr %i.bo, align 4, !tbaa !38
  %i.bp = add nuw i64 %.0187207, 2                ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.l, !llvm.loop !29

._crit_edge210.loopexit.unr-lcssa:                ; preds = %.lr.ph209
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %._crit_edge210, label %.lr.ph209.epil.preheader

.lr.ph209.epil.preheader:                         ; preds = %._crit_edge210.loopexit.unr-lcssa, %.lr.ph209.preheader
  %.0186208.epil.init = phi i64 [ 0, %.lr.ph209.preheader ], [ %i.ea, %._crit_edge210.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod299 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod299)
  %.idx.epil = mul nuw i64 %.0186208.epil.init, 12
  %i.bq = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx.epil ; 3 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !22
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !22
  %i.bw = zext i32 %i.br to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bw
  %i.by = load float, ptr %i.bx, align 4, !tbaa !38
  %i.bz = zext i32 %i.bt to i64
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bz
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !38
  %i.cc = fadd float %i.by, %i.cb
  %i.cd = zext i32 %i.bv to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cd
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !38
  %i.cg = fadd float %i.cc, %i.cf
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.0186208.epil.init
  store float %i.cg, ptr %i.ch, align 4, !tbaa !38
  br label %._crit_edge210

._crit_edge210:                                   ; preds = %.lr.ph209.epil.preheader, %._crit_edge210.loopexit.unr-lcssa, %_ZN17meshopt_Allocator8allocateIfEEPT_m.exit200
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !24 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !25 ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 68
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.lr.ph209:                                        ; preds = %.lr.ph209, %.lr.ph209.preheader.new
  %.0186208 = phi i64 [ 0, %.lr.ph209.preheader.new ], [ %i.ea, %.lr.ph209 ] ; 4 uses
  %niter301 = phi i64 [ 0, %.lr.ph209.preheader.new ], [ %niter301.next.1, %.lr.ph209 ]
  %.idx = mul nuw i64 %.0186208, 12
  %i.cp = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !22
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !22
  %i.cv = zext i32 %i.cq to i64
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cv
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !38
  %i.cy = zext i32 %i.cs to i64
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.cy
  %i.da = load float, ptr %i.cz, align 4, !tbaa !38
  %i.db = fadd float %i.cx, %i.da
  %i.dc = zext i32 %i.cu to i64
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.dc
  %i.de = load float, ptr %i.dd, align 4, !tbaa !38
  %i.df = fadd float %i.db, %i.de
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.0186208
  store float %i.df, ptr %i.dg, align 4, !tbaa !38
  %i.dh = or disjoint i64 %.0186208, 1            ; 2 uses
  %.idx.1 = mul nuw i64 %i.dh, 12
  %i.di = getelementptr inbounds nuw i8, ptr %.0, i64 %.idx.1 ; 3 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !22
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !22
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !22
  %i.do = zext i32 %i.dj to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.do
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !38
  %i.dr = zext i32 %i.dl to i64
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.dr
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !38
  %i.du = fadd float %i.dq, %i.dt
  %i.dv = zext i32 %i.dn to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.dv
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !38
  %i.dy = fadd float %i.du, %i.dx
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.dh
  store float %i.dy, ptr %i.dz, align 4, !tbaa !38
  %i.ea = add nuw nsw i64 %.0186208, 2            ; 2 uses
  %niter301.next.1 = add i64 %niter301, 2         ; 2 uses
  %niter301.ncmp.1 = icmp eq i64 %niter301.next.1, %unroll_iter300
  br i1 %niter301.ncmp.1, label %._crit_edge210.loopexit.unr-lcssa, label %.lr.ph209, !llvm.loop !30

bb.n:                                             ; preds = %._crit_edge210, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit
  %.0173239 = phi i32 [ 0, %._crit_edge210 ], [ %i.ew, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit ] ; 2 uses
  %.0174238 = phi i32 [ 0, %._crit_edge210 ], [ %.1175, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit ] ; 5 uses
  %.0176237 = phi i64 [ 0, %._crit_edge210 ], [ %i.in, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit ] ; 5 uses
  %.0177236 = phi ptr [ %i.ci, %._crit_edge210 ], [ %.0178235, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit ] ; 8 uses
  %.0178235 = phi ptr [ %i.a, %._crit_edge210 ], [ %.0177236, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit ] ; 4 uses
  %.0203234 = phi i32 [ 1, %._crit_edge210 ], [ %.1204, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit ] ; 3 uses
  %i.eb = mul i32 %.0174238, 3                    ; 3 uses
  %i.ec = zext i32 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.ec ; 4 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !22 ; 5 uses
  %i.ef = add i32 %i.eb, 1
  %i.eg = zext i32 %i.ef to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !22 ; 5 uses
  %i.ej = add i32 %i.eb, 2
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.0, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !22 ; 5 uses
  %i.en = mul i32 %.0173239, 3                    ; 3 uses
  %i.eo = zext i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eo
  store i32 %i.ee, ptr %i.ep, align 4, !tbaa !22
  %i.eq = add i32 %i.en, 1
  %i.er = zext i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.er
  store i32 %i.ei, ptr %i.es, align 4, !tbaa !22
  %i.et = add i32 %i.en, 2
  %i.eu = zext i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.eu
  store i32 %i.em, ptr %i.ev, align 4, !tbaa !22
  %i.ew = add i32 %.0173239, 1
  %i.ex = zext i32 %.0174238 to i64               ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ex
  store i8 1, ptr %i.ey, align 1, !tbaa !26
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.ex
  store float 0.000000e+00, ptr %i.ez, align 4, !tbaa !38
  store i32 %i.ee, ptr %.0177236, align 4, !tbaa !22
  %i.fa = getelementptr inbounds nuw i8, ptr %.0177236, i64 4
  store i32 %i.ei, ptr %i.fa, align 4, !tbaa !22
  %i.fb = getelementptr inbounds nuw i8, ptr %.0177236, i64 8
  store i32 %i.em, ptr %i.fb, align 4, !tbaa !22
  %.not242 = icmp eq i64 %.0176237, 0
  br i1 %.not242, label %._crit_edge215, label %.lr.ph214.preheader

.lr.ph214.preheader:                              ; preds = %bb.n
  %xtraiter302 = and i64 %.0176237, 1
end_hunk_0
begin_hunk_1_@_Z32meshopt_optimizeVertexCacheTablePjPKjmmPKN7meshopt16VertexScoreTableE:bb.a
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.he ; 3 uses
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !22 ; 2 uses
  %i.hl = zext i32 %i.hk to i64                   ; 2 uses
  %.not243.1 = icmp eq i32 %i.hk, 0
  br i1 %.not243.1, label %.loopexit206.1, label %.lr.ph218.1

.lr.ph218.1:                                      ; preds = %.loopexit206, %.critedge.1
  %.0169216.1 = phi i64 [ %i.ho, %.critedge.1 ], [ 0, %.loopexit206 ] ; 3 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.0169216.1
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !22
  %.not199.1 = icmp eq i32 %i.hn, %.0174238
  br i1 %.not199.1, label %bb.p, label %.critedge.1

.critedge.1:                                      ; preds = %.lr.ph218.1
  %i.ho = add nuw nsw i64 %.0169216.1, 1          ; 2 uses
  %exitcond251.1.not = icmp eq i64 %i.ho, %i.hl
  br i1 %exitcond251.1.not, label %.loopexit206.1, label %.lr.ph218.1, !llvm.loop !32

bb.p:                                             ; preds = %.lr.ph218.1
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.hi, i64 %.0169216.1
  %i.hq = getelementptr [4 x i8], ptr %i.hi, i64 %i.hl
  %i.hr = getelementptr i8, ptr %i.hq, i64 -4
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !22
  store i32 %i.hs, ptr %i.hp, align 4, !tbaa !22
  %i.ht = load i32, ptr %i.hj, align 4, !tbaa !22
  %i.hu = add i32 %i.ht, -1
  store i32 %i.hu, ptr %i.hj, align 4, !tbaa !22
  br label %.loopexit206.1

.loopexit206.1:                                   ; preds = %.critedge.1, %bb.p, %.loopexit206
  %gep.2 = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  %i.hv = load i32, ptr %gep.2, align 4, !tbaa !22
  %i.hw = zext i32 %i.hv to i64                   ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !22
  %i.hz = zext i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.ck, i64 %i.hz ; 3 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.hw ; 3 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !22 ; 2 uses
  %i.id = zext i32 %i.ic to i64                   ; 2 uses
  %.not243.2 = icmp eq i32 %i.ic, 0
  br i1 %.not243.2, label %.loopexit206.2, label %.lr.ph218.2

.lr.ph218.2:                                      ; preds = %.loopexit206.1, %.critedge.2
  %.0169216.2 = phi i64 [ %i.ig, %.critedge.2 ], [ 0, %.loopexit206.1 ] ; 3 uses
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.0169216.2
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !22
  %.not199.2 = icmp eq i32 %i.if, %.0174238
  br i1 %.not199.2, label %bb.q, label %.critedge.2

.critedge.2:                                      ; preds = %.lr.ph218.2
  %i.ig = add nuw nsw i64 %.0169216.2, 1          ; 2 uses
  %exitcond251.2.not = icmp eq i64 %i.ig, %i.id
  br i1 %exitcond251.2.not, label %.loopexit206.2, label %.lr.ph218.2, !llvm.loop !32

bb.q:                                             ; preds = %.lr.ph218.2
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.ia, i64 %.0169216.2
  %i.ii = getelementptr [4 x i8], ptr %i.ia, i64 %i.id
  %i.ij = getelementptr i8, ptr %i.ii, i64 -4
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !22
  store i32 %i.ik, ptr %i.ih, align 4, !tbaa !22
  %i.il = load i32, ptr %i.ib, align 4, !tbaa !22
  %i.im = add i32 %i.il, -1
  store i32 %i.im, ptr %i.ib, align 4, !tbaa !22
  br label %.loopexit206.2

.loopexit206.2:                                   ; preds = %.critedge.2, %bb.q, %.loopexit206.1
  %i.in = tail call i64 @llvm.umin.i64(i64 %.0172.lcssa, i64 16)
  %.not244 = icmp eq i64 %.0172.lcssa, 0
  br i1 %.not244, label %._crit_edge232.thread, label %.lr.ph231

._crit_edge232:                                   ; preds = %.loopexit
  %i.io = icmp eq i32 %.2168, -1
  br i1 %i.io, label %._crit_edge232.thread, label %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit

bb.r:                                             ; preds = %.lr.ph231, %.loopexit
  %.0164230 = phi i64 [ 0, %.lr.ph231 ], [ %i.kt, %.loopexit ] ; 4 uses
  %.0165229 = phi float [ 0.000000e+00, %.lr.ph231 ], [ %.2, %.loopexit ] ; 4 uses
  %.0166228 = phi i32 [ -1, %.lr.ph231 ], [ %.2168, %.loopexit ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %.0177236, i64 %.0164230
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !22
  %i.ir = zext i32 %i.iq to i64                   ; 3 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ir
  %i.it = load i32, ptr %i.is, align 4, !tbaa !22 ; 3 uses
  %i.iu = icmp eq i32 %i.it, 0
  br i1 %i.iu, label %.loopexit, label %.lr.ph225.preheader

.lr.ph225.preheader:                              ; preds = %bb.r
  %i.iv = icmp ugt i64 %.0164230, 15
  %i.iw = tail call i32 @llvm.umin.i32(i32 %i.it, i32 8)
  %sext = shl i64 %.0164230, 32
  %i.ix = ashr exact i64 %sext, 32
  %i.iy = select i1 %i.iv, i64 -1, i64 %i.ix
  %i.iz = getelementptr [4 x i8], ptr %4, i64 %i.iy
  %i.ja = getelementptr i8, ptr %i.iz, i64 4
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !38
  %i.jc = zext nneg i32 %i.iw to i64
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %i.jc
  %i.je = load float, ptr %i.jd, align 4, !tbaa !38
  %i.jf = fadd float %i.jb, %i.je                 ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ir ; 2 uses
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !38
  %i.ji = fsub float %i.jf, %i.jh                 ; 3 uses
  store float %i.jf, ptr %i.jg, align 4, !tbaa !38
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.ir
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !22
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.jl ; 4 uses
  %i.jn = zext i32 %i.it to i64
  %.idx245 = shl nuw nsw i64 %i.jn, 2             ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 %.idx245
  %i.jp = add nsw i64 %.idx245, -4                ; 2 uses
  %i.jq = and i64 %i.jp, 4
  %lcmp.mod309.not.not = icmp eq i64 %i.jq, 0
  br i1 %lcmp.mod309.not.not, label %.lr.ph225.prol, label %.lr.ph225.prol.loopexit

.lr.ph225.prol:                                   ; preds = %.lr.ph225.preheader
  %i.jr = load i32, ptr %i.jm, align 4, !tbaa !22 ; 2 uses
  %i.js = zext i32 %i.jr to i64
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.js ; 2 uses
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !38
  %i.jv = fadd float %i.ji, %i.ju                 ; 3 uses
  %i.jw = fcmp olt float %.0165229, %i.jv         ; 2 uses
  %i.jx = select i1 %i.jw, i32 %i.jr, i32 %.0166228 ; 2 uses
  %i.jy = select i1 %i.jw, float %i.jv, float %.0165229 ; 2 uses
  store float %i.jv, ptr %i.jt, align 4, !tbaa !38
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jm, i64 4
  br label %.lr.ph225.prol.loopexit

.lr.ph225.prol.loopexit:                          ; preds = %.lr.ph225.prol, %.lr.ph225.preheader
  %.lcssa294.unr = phi i32 [ poison, %.lr.ph225.preheader ], [ %i.jx, %.lr.ph225.prol ]
  %.lcssa293.unr = phi float [ poison, %.lr.ph225.preheader ], [ %i.jy, %.lr.ph225.prol ]
  %.0163223.unr = phi ptr [ %i.jm, %.lr.ph225.preheader ], [ %i.jz, %.lr.ph225.prol ]
  %.1222.unr = phi float [ %.0165229, %.lr.ph225.preheader ], [ %i.jy, %.lr.ph225.prol ]
  %.1167221.unr = phi i32 [ %.0166228, %.lr.ph225.preheader ], [ %i.jx, %.lr.ph225.prol ]
  %i.ka = icmp eq i64 %i.jp, 0
  br i1 %i.ka, label %.loopexit, label %.lr.ph225

.lr.ph225:                                        ; preds = %.lr.ph225.prol.loopexit, %.lr.ph225
  %.0163223 = phi ptr [ %i.ks, %.lr.ph225 ], [ %.0163223.unr, %.lr.ph225.prol.loopexit ] ; 3 uses
  %.1222 = phi float [ %i.kr, %.lr.ph225 ], [ %.1222.unr, %.lr.ph225.prol.loopexit ] ; 2 uses
  %.1167221 = phi i32 [ %i.kq, %.lr.ph225 ], [ %.1167221.unr, %.lr.ph225.prol.loopexit ]
  %i.kb = load i32, ptr %.0163223, align 4, !tbaa !22 ; 2 uses
  %i.kc = zext i32 %i.kb to i64
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.kc ; 2 uses
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !38
  %i.kf = fadd float %i.ji, %i.ke                 ; 3 uses
  %i.kg = fcmp olt float %.1222, %i.kf            ; 2 uses
  %i.kh = select i1 %i.kg, i32 %i.kb, i32 %.1167221
  %i.ki = select i1 %i.kg, float %i.kf, float %.1222 ; 2 uses
  store float %i.kf, ptr %i.kd, align 4, !tbaa !38
  %i.kj = getelementptr inbounds nuw i8, ptr %.0163223, i64 4
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !22 ; 2 uses
  %i.kl = zext i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.kl ; 2 uses
  %i.kn = load float, ptr %i.km, align 4, !tbaa !38
  %i.ko = fadd float %i.ji, %i.kn                 ; 3 uses
  %i.kp = fcmp olt float %i.ki, %i.ko             ; 2 uses
  %i.kq = select i1 %i.kp, i32 %i.kk, i32 %i.kh   ; 2 uses
  %i.kr = select i1 %i.kp, float %i.ko, float %i.ki ; 2 uses
  store float %i.ko, ptr %i.km, align 4, !tbaa !38
  %i.ks = getelementptr inbounds nuw i8, ptr %.0163223, i64 8 ; 2 uses
  %.not198.1 = icmp eq ptr %i.ks, %i.jo
  br i1 %.not198.1, label %.loopexit, label %.lr.ph225, !llvm.loop !33

.loopexit:                                        ; preds = %.lr.ph225.prol.loopexit, %.lr.ph225, %bb.r
  %.2168 = phi i32 [ %.0166228, %bb.r ], [ %.lcssa294.unr, %.lr.ph225.prol.loopexit ], [ %i.kq, %.lr.ph225 ] ; 3 uses
  %.2 = phi float [ %.0165229, %bb.r ], [ %.lcssa293.unr, %.lr.ph225.prol.loopexit ], [ %i.kr, %.lr.ph225 ]
  %i.kt = add nuw i64 %.0164230, 1                ; 2 uses
  %exitcond253.not = icmp eq i64 %i.kt, %.0172.lcssa
  br i1 %exitcond253.not, label %._crit_edge232, label %bb.r, !llvm.loop !34

._crit_edge232.thread:                            ; preds = %.loopexit206.2, %._crit_edge232
  %i.ku = zext i32 %.0203234 to i64               ; 2 uses
  %i.kv = icmp samesign ugt i64 %i.l, %i.ku
  br i1 %i.kv, label %.lr.ph.i, label %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit.thread

.lr.ph.i:                                         ; preds = %._crit_edge232.thread, %bb.s
  %.2205 = phi i32 [ %i.kz, %bb.s ], [ %.0203234, %._crit_edge232.thread ] ; 3 uses
  %i.kw = phi i64 [ %i.la, %bb.s ], [ %i.ku, %._crit_edge232.thread ]
  %i.kx = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.kw
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.ky, 0
  br i1 %.not.i, label %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %i.kz = add i32 %.2205, 1                       ; 2 uses
  %i.la = zext i32 %i.kz to i64                   ; 2 uses
  %i.lb = icmp samesign ugt i64 %i.l, %i.la
  br i1 %i.lb, label %.lr.ph.i, label %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit.thread, !llvm.loop !35

_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit: ; preds = %.lr.ph.i, %._crit_edge232
  %.1204 = phi i32 [ %.0203234, %._crit_edge232 ], [ %.2205, %.lr.ph.i ]
  %.1175 = phi i32 [ %.2168, %._crit_edge232 ], [ %.2205, %.lr.ph.i ] ; 2 uses
  %.not = icmp eq i32 %.1175, -1
  br i1 %.not, label %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit.thread, label %bb.n, !llvm.loop !36

_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit.thread: ; preds = %._crit_edge232.thread, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %.not3.i = icmp eq i64 %i.aq, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i201

.lr.ph.i201:                                      ; preds = %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit.thread, %bb.t
  %.04.i = phi i64 [ %i.lg, %bb.t ], [ %i.aq, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit.thread ] ; 2 uses
  %i.lc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.ld = getelementptr [8 x i8], ptr %5, i64 %.04.i
  %i.le = getelementptr i8, ptr %i.ld, i64 -8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !18
  invoke void %i.lc(ptr noundef %i.lf)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %.lr.ph.i201
  %i.lg = add i64 %.04.i, -1                      ; 2 uses
  %.not.i202 = icmp eq i64 %i.lg, 0
  br i1 %.not.i202, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i201, !llvm.loop !2

bb.u:                                             ; preds = %.lr.ph.i201
  %i.lh = landingpad { ptr, i32 }
          catch ptr null
  %i.li = extractvalue { ptr, i32 } %i.lh, 0
  tail call void @__clang_call_terminate(ptr %i.li) #11
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.t, %bb.a, %_ZN7meshoptL22getNextTriangleDeadEndERjPKhm.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void

bb.v:                                             ; preds = %bb.j, %bb.m, %bb.k, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.at, %bb.i ], [ %i.au, %bb.j ], [ %i.co, %bb.m ], [ %i.av, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.e
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.v ], [ %i.k, %bb.e ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  resume { ptr, i32 } %.pn.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7meshoptL22buildTriangleAdjacencyERNS_17TriangleAdjacencyEPKjmmR17meshopt_Allocator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 1, 0) %2, i64 noundef range(i64 1, 0) %3, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(200) %4) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.b = icmp ugt i64 %3, 4611686018427387903
  %i.c = shl i64 %3, 2                            ; 2 uses
  %i.d = select i1 %i.b, i64 -1, i64 %i.c         ; 2 uses
  %i.e = tail call noundef ptr %i.a(i64 noundef %i.d), !inline_history !0 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 192 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.h = add i64 %i.g, 1
  store i64 %i.h, ptr %i.f, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.g
  store ptr %i.e, ptr %i.i, align 8, !tbaa !18
  store ptr %i.e, ptr %0, align 8, !tbaa !21
  %i.j = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.k = tail call noundef ptr %i.j(i64 noundef %i.d), !inline_history !0 ; 2 uses
  %i.l = load i64, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.f, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.l
  store ptr %i.k, ptr %i.n, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.o, align 8, !tbaa !25
  %i.p = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.q = icmp ugt i64 %2, 4611686018427387903
  %i.r = shl nuw i64 %2, 2
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = tail call noundef ptr %i.p(i64 noundef %i.s), !inline_history !0 ; 2 uses
  %i.u = load i64, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %i.v = add i64 %i.u, 1
  store i64 %i.v, ptr %i.f, align 8, !tbaa !17
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.u
  store ptr %i.t, ptr %i.w, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.t, ptr %i.x, align 8, !tbaa !24
  %i.y = load ptr, ptr %0, align 8, !tbaa !21
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.y, i8 0, i64 %i.c, i1 false)
  %i.z = load ptr, ptr %0, align 8, !tbaa !21     ; 18 uses
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.aa = icmp ult i64 %2, 4
  br i1 %i.aa, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %2, -4
  br label %bb.c

.preheader60.unr-lcssa:                           ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader60, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader60.unr-lcssa, %bb.a
  %.05461.epil.init = phi i64 [ 0, %bb.a ], [ %i.bl, %.preheader60.unr-lcssa ]
  %lcmp.mod74 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod74)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %.05461.epil = phi i64 [ %.05461.epil.init, %.epil.preheader ], [ %i.ah, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05461.epil
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !22
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !22
  %i.ag = add i32 %i.af, 1
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !22
  %i.ah = add nuw i64 %.05461.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader60, label %bb.b, !llvm.loop !39

.preheader60:                                     ; preds = %bb.b, %.preheader60.unr-lcssa
  %i.ai = load ptr, ptr %i.o, align 8, !tbaa !25  ; 16 uses
  %xtraiter76 = and i64 %3, 3                     ; 3 uses
  %i.aj = icmp ult i64 %3, 4
  br i1 %i.aj, label %.epil.preheader75, label %.preheader60.new

.preheader60.new:                                 ; preds = %.preheader60
  %unroll_iter80 = and i64 %3, -4
  br label %bb.e

bb.c:                                             ; preds = %bb.c, %.new
  %.05461 = phi i64 [ 0, %.new ], [ %i.bl, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05461
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !22
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22
  %i.ap = add i32 %i.ao, 1
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !22
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05461
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !22
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.at ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !22
  %i.aw = add i32 %i.av, 1
  store i32 %i.aw, ptr %i.au, align 4, !tbaa !22
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05461
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !22
  %i.ba = zext i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !22
  %i.bd = add i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !22
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.05461
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !22
  %i.bh = zext i32 %i.bg to i64
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !22
  %i.bk = add i32 %i.bj, 1
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !22
  %i.bl = add nuw i64 %.05461, 4                  ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader60.unr-lcssa, label %bb.c, !llvm.loop !40

.preheader59.unr-lcssa:                           ; preds = %bb.e
  %lcmp.mod78.not = icmp eq i64 %xtraiter76, 0
  br i1 %lcmp.mod78.not, label %.preheader59, label %.epil.preheader75

.epil.preheader75:                                ; preds = %.preheader59.unr-lcssa, %.preheader60
  %.05563.epil.init = phi i32 [ 0, %.preheader60 ], [ %i.cl, %.preheader59.unr-lcssa ]
  %.05762.epil.init = phi i64 [ 0, %.preheader60 ], [ %i.cm, %.preheader59.unr-lcssa ]
  %lcmp.mod79 = icmp ne i64 %xtraiter76, 0
  tail call void @llvm.assume(i1 %lcmp.mod79)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader75
  %.05563.epil = phi i32 [ %.05563.epil.init, %.epil.preheader75 ], [ %i.bp, %bb.d ] ; 2 uses
  %.05762.epil = phi i64 [ %.05762.epil.init, %.epil.preheader75 ], [ %i.bq, %bb.d ] ; 3 uses
  %epil.iter77 = phi i64 [ 0, %.epil.preheader75 ], [ %epil.iter77.next, %bb.d ]
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.05762.epil
  store i32 %.05563.epil, ptr %i.bm, align 4, !tbaa !22
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.05762.epil
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !22
  %i.bp = add i32 %i.bo, %.05563.epil
  %i.bq = add nuw i64 %.05762.epil, 1
  %epil.iter77.next = add i64 %epil.iter77, 1     ; 2 uses
  %epil.iter77.cmp.not = icmp eq i64 %epil.iter77.next, %xtraiter76
  br i1 %epil.iter77.cmp.not, label %.preheader59, label %bb.d, !llvm.loop !41

.preheader59:                                     ; preds = %bb.d, %.preheader59.unr-lcssa
  %i.br = udiv i64 %2, 3
  %.not = icmp ult i64 %2, 3
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader59
  %i.bs = load ptr, ptr %i.x, align 8, !tbaa !24  ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.e, %.preheader60.new
  %.05563 = phi i32 [ 0, %.preheader60.new ], [ %i.cl, %bb.e ] ; 2 uses
  %.05762 = phi i64 [ 0, %.preheader60.new ], [ %i.cm, %bb.e ] ; 6 uses
  %niter81 = phi i64 [ 0, %.preheader60.new ], [ %niter81.next.3, %bb.e ]
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.05762
  store i32 %.05563, ptr %i.bt, align 4, !tbaa !22
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.05762
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !22
  %i.bw = add i32 %i.bv, %.05563                  ; 2 uses
  %i.bx = or disjoint i64 %.05762, 1              ; 2 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bx
  store i32 %i.bw, ptr %i.by, align 4, !tbaa !22
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.bx
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !22
  %i.cb = add i32 %i.ca, %i.bw                    ; 2 uses
  %i.cc = or disjoint i64 %.05762, 2              ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN7meshoptL22buildTriangleAdjacencyERNS_17TriangleAdjacencyEPKjmmR17meshopt_Allocator:bb.a
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  br i1 %lcmp.mod83.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.065.prol = phi i64 [ %i.da, %scalar.ph.prol ], [ %.065.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.065.prol
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !22
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.065.prol ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !22
  %i.cz = sub i32 %i.cy, %i.cw
  store i32 %i.cz, ptr %i.cx, align 4, !tbaa !22
  %i.da = add nuw i64 %.065.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter82
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !47

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.065.unr = phi i64 [ %.065.ph, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %i.db = sub i64 %.065.ph, %3
  %i.dc = icmp ugt i64 %i.db, -4
  br i1 %i.dc, label %.loopexit, label %scalar.ph

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %.05664 = phi i64 [ 0, %.lr.ph ], [ %i.ec, %bb.f ] ; 3 uses
  %.idx = mul nuw i64 %.05664, 12
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 3 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !22
  %i.df = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !22
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !22
  %i.dj = trunc i64 %.05664 to i32                ; 3 uses
  %i.dk = zext i32 %i.de to i64
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !22 ; 2 uses
  %i.dn = add i32 %i.dm, 1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !22
  %i.do = zext i32 %i.dm to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.do
  store i32 %i.dj, ptr %i.dp, align 4, !tbaa !22
  %i.dq = zext i32 %i.dg to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !22 ; 2 uses
  %i.dt = add i32 %i.ds, 1
  store i32 %i.dt, ptr %i.dr, align 4, !tbaa !22
  %i.du = zext i32 %i.ds to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.du
  store i32 %i.dj, ptr %i.dv, align 4, !tbaa !22
  %i.dw = zext i32 %i.di to i64
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.dw ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !22 ; 2 uses
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr %i.dx, align 4, !tbaa !22
  %i.ea = zext i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.ea
  store i32 %i.dj, ptr %i.eb, align 4, !tbaa !22
  %i.ec = add nuw nsw i64 %.05664, 1              ; 2 uses
  %exitcond67.not = icmp eq i64 %i.ec, %i.br
  br i1 %exitcond67.not, label %.preheader, label %bb.f, !llvm.loop !48

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.065 = phi i64 [ %i.fa, %scalar.ph ], [ %.065.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.065
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !22
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.065 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !22
  %i.eh = sub i32 %i.eg, %i.ee
  store i32 %i.eh, ptr %i.ef, align 4, !tbaa !22
  %i.ei = add nuw i64 %.065, 1                    ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !22
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ei ; 2 uses
  %i.em = load i32, ptr %i.el, align 4, !tbaa !22
  %i.en = sub i32 %i.em, %i.ek
  store i32 %i.en, ptr %i.el, align 4, !tbaa !22
  %i.eo = add nuw i64 %.065, 2                    ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.eo
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !22
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.eo ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !22
  %i.et = sub i32 %i.es, %i.eq
  store i32 %i.et, ptr %i.er, align 4, !tbaa !22
  %i.eu = add nuw i64 %.065, 3                    ; 2 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.eu
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !22
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.eu ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !22
  %i.ez = sub i32 %i.ey, %i.ew
  store i32 %i.ez, ptr %i.ex, align 4, !tbaa !22
  %i.fa = add nuw i64 %.065, 4                    ; 2 uses
  %exitcond68.not.3 = icmp eq i64 %i.fa, %3
  br i1 %exitcond68.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !49
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !2

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #11
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_optimizeVertexCache(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z32meshopt_optimizeVertexCacheTablePjPKjmmPKN7meshopt16VertexScoreTableE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull @_ZN7meshoptL17kVertexScoreTableE)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_optimizeVertexCacheStrip(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  tail call void @_Z32meshopt_optimizeVertexCacheTablePjPKjmmPKN7meshopt16VertexScoreTableE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull @_ZN7meshoptL22kVertexScoreTableStripE)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_optimizeVertexCacheFifo(ptr nofree noundef writeonly captures(address) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.meshopt_Allocator, align 8   ; 14 uses
  %6 = alloca %"struct.meshopt::TriangleAdjacency", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %5, i8 0, i64 200, i1 false)
  %i.a = icmp eq i64 %2, 0
  %i.b = icmp eq i64 %3, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %_ZN17meshopt_AllocatorD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, %1
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.e = icmp ugt i64 %2, 4611686018427387903
  %i.f = shl i64 %2, 2                            ; 2 uses
  %i.g = select i1 %i.e, i64 -1, i64 %i.f
  %i.h = invoke noundef ptr %i.d(i64 noundef %i.g)
          to label %bb.d unwind label %bb.e, !inline_history !0 ; 3 uses

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 192
  store i64 1, ptr %i.i, align 8, !tbaa !17
  store ptr %i.h, ptr %5, align 8, !tbaa !18
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %1, i64 %i.f, i1 false)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.f:                                             ; preds = %bb.d, %bb.b
  %.0116 = phi ptr [ %i.h, %bb.d ], [ %1, %bb.b ] ; 4 uses
  %i.k = udiv i64 %2, 3                           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  invoke fastcc void @_ZN7meshoptL22buildTriangleAdjacencyERNS_17TriangleAdjacencyEPKjmmR17meshopt_Allocator(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef %.0116, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(200) %5)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.m = icmp ugt i64 %3, 4611686018427387903
  %i.n = shl i64 %3, 2                            ; 3 uses
  %i.o = select i1 %i.m, i64 -1, i64 %i.n         ; 2 uses
  %i.p = invoke noundef ptr %i.l(i64 noundef %i.o)
          to label %bb.h unwind label %bb.p, !inline_history !0 ; 8 uses

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 192 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !17   ; 5 uses
  %i.s = add nsw i64 %i.r, 1                      ; 2 uses
  store i64 %i.s, ptr %i.q, align 8, !tbaa !17
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.r
  store ptr %i.p, ptr %i.t, align 8, !tbaa !18
  %i.u = load ptr, ptr %6, align 8, !tbaa !21     ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.p, ptr align 4 %i.u, i64 %i.n, i1 false)
  %i.v = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.w = invoke noundef ptr %i.v(i64 noundef %i.o)
          to label %bb.i unwind label %bb.q, !inline_history !0 ; 6 uses

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i64 %i.r, 2                      ; 2 uses
  store i64 %i.x, ptr %i.q, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.s
  store ptr %i.w, ptr %i.y, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.w, i8 0, i64 %i.n, i1 false)
  %i.z = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.aa = icmp ugt i64 %2, 4611686018427387903
  %i.ab = shl nuw i64 %2, 2
  %i.ac = select i1 %i.aa, i64 -1, i64 %i.ab
  %i.ad = invoke noundef ptr %i.z(i64 noundef %i.ac)
          to label %bb.j unwind label %bb.r, !inline_history !0 ; 7 uses

bb.j:                                             ; preds = %bb.i
  %i.ae = add nsw i64 %i.r, 3                     ; 2 uses
  store i64 %i.ae, ptr %i.q, align 8, !tbaa !17
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.x
  store ptr %i.ad, ptr %i.af, align 8, !tbaa !18
  %i.ag = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !14
  %i.ah = invoke noundef ptr %i.ag(i64 noundef %i.k)
          to label %bb.k unwind label %bb.s, !inline_history !1 ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.ai = add nsw i64 %i.r, 4                     ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.ae
  store ptr %i.ah, ptr %i.aj, align 8, !tbaa !18
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ah, i8 0, i64 %i.k, i1 false)
  %i.ak = add i32 %4, 1
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !24
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !25
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit
  %.0100172 = phi i32 [ 0, %bb.k ], [ %.1.lcssa, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit ] ; 2 uses
  %.0101171 = phi i32 [ %i.ak, %bb.k ], [ %.1102.lcssa, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit ] ; 2 uses
  %.0104170 = phi i32 [ 0, %bb.k ], [ %.1105, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit ]
  %.0144169 = phi i32 [ 1, %bb.k ], [ %.1145, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit ] ; 4 uses
  %.0148168 = phi i32 [ 0, %bb.k ], [ %.3151, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit ] ; 4 uses
  %i.ap = zext i32 %.0148168 to i64               ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ap
  %i.ar = zext i32 %.0104170 to i64               ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !22
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.au ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %i.ar
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !22 ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %.idx = shl nuw nsw i64 %i.ay, 2
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 %.idx
  %.not127157 = icmp eq i32 %i.ax, 0
  br i1 %.not127157, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.aa
  %.pre = zext i32 %.2150 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.l
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.ap, %bb.l ] ; 2 uses
  %.1149.lcssa = phi i32 [ %.2150, %._crit_edge.loopexit ], [ %.0148168, %bb.l ] ; 3 uses
  %.1102.lcssa = phi i32 [ %.5, %._crit_edge.loopexit ], [ %.0101171, %bb.l ] ; 3 uses
  %.1.lcssa = phi i32 [ %.2, %._crit_edge.loopexit ], [ %.0100172, %bb.l ]
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.pre-phi
  %.not28.i = icmp eq i32 %.0148168, %.1149.lcssa
  br i1 %.not28.i, label %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.n
  %.02031.i = phi ptr [ %i.bm, %bb.n ], [ %i.aq, %._crit_edge ] ; 2 uses
  %.02130.i = phi i32 [ %.2.i, %bb.n ], [ -1, %._crit_edge ] ; 3 uses
  %.02229.i = phi i32 [ %.224.i, %bb.n ], [ -1, %._crit_edge ] ; 2 uses
  %i.bb = load i32, ptr %.02031.i, align 4, !tbaa !22 ; 2 uses
  %i.bc = zext i32 %i.bb to i64                   ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !22 ; 2 uses
  %.not26.i = icmp eq i32 %i.be, 0
  br i1 %.not26.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.bf = shl i32 %i.be, 1
  %i.bg = add i32 %i.bf, %.1102.lcssa
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.bc
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !22 ; 2 uses
  %i.bj = sub i32 %i.bg, %i.bi
  %.not27.i = icmp ugt i32 %i.bj, %4
  %i.bk = sub i32 %.1102.lcssa, %i.bi
  %spec.select.i = select i1 %.not27.i, i32 0, i32 %i.bk ; 2 uses
  %i.bl = icmp sgt i32 %spec.select.i, %.02130.i
  %.123.i = select i1 %i.bl, i32 %i.bb, i32 %.02229.i
  %.1.i = tail call i32 @llvm.smax.i32(i32 %spec.select.i, i32 %.02130.i)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i
  %.224.i = phi i32 [ %.123.i, %bb.m ], [ %.02229.i, %.lr.ph.i ] ; 3 uses
  %.2.i = phi i32 [ %.1.i, %bb.m ], [ %.02130.i, %.lr.ph.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.02031.i, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.bm, %i.ba
  br i1 %.not.i, label %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit, label %.lr.ph.i, !llvm.loop !55

_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit: ; preds = %bb.n
  %i.bn = icmp eq i32 %.224.i, -1
  br i1 %i.bn, label %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit.thread, label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit

bb.o:                                             ; preds = %bb.f
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.p:                                             ; preds = %bb.g
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.q:                                             ; preds = %bb.h
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.r:                                             ; preds = %bb.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.s:                                             ; preds = %bb.j
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

.lr.ph:                                           ; preds = %bb.l, %bb.aa
  %.0161 = phi ptr [ %i.ed, %bb.aa ], [ %i.av, %bb.l ] ; 2 uses
  %.1160 = phi i32 [ %.2, %bb.aa ], [ %.0100172, %bb.l ] ; 3 uses
  %.1102159 = phi i32 [ %.5, %bb.aa ], [ %.0101171, %bb.l ] ; 5 uses
  %.1149158 = phi i32 [ %.2150, %bb.aa ], [ %.0148168, %bb.l ] ; 5 uses
  %i.bt = load i32, ptr %.0161, align 4, !tbaa !22 ; 2 uses
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bu ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !26
  %.not128 = icmp eq i8 %i.bw, 0
  br i1 %.not128, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %.lr.ph
  %i.bx = mul i32 %i.bt, 3                        ; 3 uses
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %.0116, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !22 ; 3 uses
  %i.cb = add i32 %i.bx, 1
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %.0116, i64 %i.cc
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !22 ; 3 uses
  %i.cf = add i32 %i.bx, 2
  %i.cg = zext i32 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %.0116, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !22 ; 3 uses
  %i.cj = mul i32 %.1160, 3                       ; 3 uses
  %i.ck = zext i32 %i.cj to i64
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ck
  store i32 %i.ca, ptr %i.cl, align 4, !tbaa !22
  %i.cm = add i32 %i.cj, 1
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cn
  store i32 %i.ce, ptr %i.co, align 4, !tbaa !22
  %i.cp = add i32 %i.cj, 2
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.cq
  store i32 %i.ci, ptr %i.cr, align 4, !tbaa !22
  %i.cs = add i32 %.1160, 1
  %i.ct = zext i32 %.1149158 to i64
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ct
  store i32 %i.ca, ptr %i.cu, align 4, !tbaa !22
  %i.cv = add i32 %.1149158, 1
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cw
  store i32 %i.ce, ptr %i.cx, align 4, !tbaa !22
  %i.cy = add i32 %.1149158, 2
  %i.cz = zext i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.cz
  store i32 %i.ci, ptr %i.da, align 4, !tbaa !22
  %i.db = add i32 %.1149158, 3
  %i.dc = zext i32 %i.ca to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dc ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !22
  %i.df = add i32 %i.de, -1
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !22
  %i.dg = zext i32 %i.ce to i64                   ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dg ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !22
  %i.dj = add i32 %i.di, -1
  store i32 %i.dj, ptr %i.dh, align 4, !tbaa !22
  %i.dk = zext i32 %i.ci to i64                   ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dk ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !22
  %i.dn = add i32 %i.dm, -1
  store i32 %i.dn, ptr %i.dl, align 4, !tbaa !22
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.dc ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !22
  %i.dq = sub i32 %.1102159, %i.dp
  %i.dr = icmp ugt i32 %i.dq, %4
  br i1 %i.dr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ds = add i32 %.1102159, 1
  store i32 %.1102159, ptr %i.do, align 4, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.2103 = phi i32 [ %i.ds, %bb.u ], [ %.1102159, %bb.t ] ; 4 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.dg ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !22
  %i.dv = sub i32 %.2103, %i.du
  %i.dw = icmp ugt i32 %i.dv, %4
  br i1 %i.dw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dx = add i32 %.2103, 1
  store i32 %.2103, ptr %i.dt, align 4, !tbaa !22
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.3 = phi i32 [ %i.dx, %bb.w ], [ %.2103, %bb.v ] ; 4 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %i.dk ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !22
  %i.ea = sub i32 %.3, %i.dz
  %i.eb = icmp ugt i32 %i.ea, %4
  br i1 %i.eb, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ec = add i32 %.3, 1
  store i32 %.3, ptr %i.dy, align 4, !tbaa !22
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.4 = phi i32 [ %i.ec, %bb.y ], [ %.3, %bb.x ]
  store i8 1, ptr %i.bv, align 1, !tbaa !26
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.lr.ph
  %.2150 = phi i32 [ %i.db, %bb.z ], [ %.1149158, %.lr.ph ] ; 3 uses
  %.5 = phi i32 [ %.4, %bb.z ], [ %.1102159, %.lr.ph ] ; 2 uses
  %.2 = phi i32 [ %i.cs, %bb.z ], [ %.1160, %.lr.ph ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.0161, i64 4 ; 2 uses
  %.not127 = icmp eq ptr %i.ed, %i.az
  br i1 %.not127, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !56

_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit.thread: ; preds = %._crit_edge, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit
  %.not.i132164 = icmp eq i32 %.1149.lcssa, 0
  br i1 %.not.i132164, label %.preheader.i, label %.lr.ph166

bb.ab:                                            ; preds = %.lr.ph166
  %.not.i132 = icmp eq i64 %indvars.iv.next.i, 0
  br i1 %.not.i132, label %.preheader.i, label %.lr.ph166

.preheader.i:                                     ; preds = %bb.ab, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit.thread
  %i.ee = zext i32 %.0144169 to i64               ; 2 uses
  %i.ef = icmp ugt i64 %3, %i.ee
  br i1 %i.ef, label %.lr.ph.i134, label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.thread

.lr.ph166:                                        ; preds = %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit.thread, %bb.ab
  %indvars.iv.i165 = phi i64 [ %indvars.iv.next.i, %bb.ab ], [ %.pre-phi, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit.thread ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i165, -1 ; 4 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv.next.i
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !22 ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.ei
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !22
  %.not17.not.i = icmp eq i32 %i.ek, 0
  br i1 %.not17.not.i, label %bb.ab, label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.loopexit173

.lr.ph.i134:                                      ; preds = %.preheader.i, %bb.ac
  %.2146 = phi i32 [ %i.eo, %bb.ac ], [ %.0144169, %.preheader.i ] ; 3 uses
  %i.el = phi i64 [ %i.ep, %bb.ac ], [ %i.ee, %.preheader.i ]
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.el
  %i.en = load i32, ptr %i.em, align 4, !tbaa !22
  %.not16.i = icmp eq i32 %i.en, 0
  br i1 %.not16.i, label %bb.ac, label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit

bb.ac:                                            ; preds = %.lr.ph.i134
  %i.eo = add i32 %.2146, 1                       ; 2 uses
  %i.ep = zext i32 %i.eo to i64                   ; 2 uses
  %i.eq = icmp ugt i64 %3, %i.ep
  br i1 %i.eq, label %.lr.ph.i134, label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.thread, !llvm.loop !57

_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.loopexit173: ; preds = %.lr.ph166
  %indvars.i = trunc nuw i64 %indvars.iv.next.i to i32
  br label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit

_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit: ; preds = %.lr.ph.i134, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.loopexit173, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit
  %.3151 = phi i32 [ %.1149.lcssa, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit ], [ %indvars.i, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.loopexit173 ], [ 0, %.lr.ph.i134 ]
  %.1145 = phi i32 [ %.0144169, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit ], [ %.0144169, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.loopexit173 ], [ %.2146, %.lr.ph.i134 ]
  %.1105 = phi i32 [ %.224.i, %_ZN7meshoptL21getNextVertexNeighborEPKjS1_S1_S1_jj.exit ], [ %i.eh, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.loopexit173 ], [ %.2146, %.lr.ph.i134 ] ; 2 uses
  %.not = icmp eq i32 %.1105, -1
  br i1 %.not, label %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.thread, label %bb.l, !llvm.loop !58

_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.thread: ; preds = %.preheader.i, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %.not3.i = icmp eq i64 %i.ai, 0
  br i1 %.not3.i, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.thread, %bb.ad
  %.04.i = phi i64 [ %i.ev, %bb.ad ], [ %i.ai, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.thread ] ; 2 uses
  %i.er = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !27
  %i.es = getelementptr [8 x i8], ptr %5, i64 %.04.i
  %i.et = getelementptr i8, ptr %i.es, i64 -8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !18
  invoke void %i.er(ptr noundef %i.eu)
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.i135
  %i.ev = add i64 %.04.i, -1                      ; 2 uses
  %.not.i136 = icmp eq i64 %i.ev, 0
  br i1 %.not.i136, label %_ZN17meshopt_AllocatorD2Ev.exit, label %.lr.ph.i135, !llvm.loop !2

bb.ae:                                            ; preds = %.lr.ph.i135
  %i.ew = landingpad { ptr, i32 }
          catch ptr null
  %i.ex = extractvalue { ptr, i32 } %i.ew, 0
  tail call void @__clang_call_terminate(ptr %i.ex) #11
  unreachable

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %bb.ad, %bb.a, %_ZN7meshoptL20getNextVertexDeadEndEPKjRjS2_S1_m.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret void

bb.af:                                            ; preds = %bb.p, %bb.r, %bb.s, %bb.q, %bb.o
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.o ], [ %i.bp, %bb.p ], [ %i.bq, %bb.q ], [ %i.bs, %bb.s ], [ %i.br, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.e
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn, %bb.af ], [ %i.j, %bb.e ]
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = distinct !{!2, !23}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"_ZTSN17meshopt_Allocator7StorageE", !12, i64 0, !12, i64 8}
!14 = !{!13, !12, i64 0}
!15 = !{!"long", !8, i64 0}
!16 = !{!"_ZTS17meshopt_Allocator", !8, i64 0, !15, i64 192}
!17 = !{!16, !15, i64 192}
!18 = !{!12, !12, i64 0}
!19 = !{!"p1 int", !12, i64 0}
!20 = !{!"_ZTSN7meshopt17TriangleAdjacencyE", !19, i64 0, !19, i64 8, !19, i64 16}
!21 = !{!20, !19, i64 0}
!22 = !{!9, !9, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!20, !19, i64 16}
!25 = !{!20, !19, i64 8}
!26 = !{!8, !8, i64 0}
!27 = !{!13, !12, i64 8}
!28 = distinct !{null}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
!35 = distinct !{!35, !23}
!36 = distinct !{!36, !23}
!37 = !{!"float", !8, i64 0}
!38 = !{!37, !37, i64 0}
!39 = distinct !{!39, !50}
!40 = distinct !{!40, !23}
!41 = distinct !{!41, !50}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !"LVerDomain"}
!44 = distinct !{!44, !43}
!45 = distinct !{!45, !43}
!46 = distinct !{!46, !23, !53, !54}
!47 = distinct !{!47, !50}
!48 = distinct !{!48, !23}
!49 = distinct !{!49, !23, !53}
!50 = !{!"llvm.loop.unroll.disable"}
!51 = !{!44}
!52 = !{!45}
!53 = !{!"llvm.loop.isvectorized", i32 1}
!54 = !{!"llvm.loop.unroll.runtime.disable"}
!55 = distinct !{!55, !23}
!56 = distinct !{!56, !23}
!57 = distinct !{!57, !23}
!58 = distinct !{!58, !23}
end_hunk_2
