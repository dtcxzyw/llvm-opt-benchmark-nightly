Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meshoptimizer/original/opacitymap?download=true
inline.NumInlined: 56
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.meshopt_Allocator::Storage" = type { ptr, ptr }
%class.meshopt_Allocator = type { [24 x ptr], i64 }
%"struct.meshopt::Texture" = type { ptr, i64, i64, i32, i32, float, float }

$_ZN17meshopt_AllocatorD2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZZN17meshopt_Allocator7storageEvE1s = comdat any

@_ZZN17meshopt_Allocator7storageEvE1s = linkonce_odr dso_local local_unnamed_addr global %"struct.meshopt_Allocator::Storage" { ptr @_Znwm, ptr @_ZdlPv }, comdat, align 8
@_ZZN7meshoptL17rasterizeOpacity1ILi4EEEvPhmiPKfS3_S3_RKNS_7TextureEE5edges = internal unnamed_addr constant [9 x [2 x i8]] [[2 x i8] c"\00\01", [2 x i8] c"\01\02", [2 x i8] c"\02\03", [2 x i8] c"\03\04", [2 x i8] c"\04\05", [2 x i8] c"\05\00", [2 x i8] c"\05\01", [2 x i8] c"\01\03", [2 x i8] c"\03\05"], align 16
@_ZZN7meshoptL17rasterizeOpacity1ILi4EEEvPhmiPKfS3_S3_RKNS_7TextureEE9triangles = internal unnamed_addr constant [4 x [6 x i8]] [[6 x i8] c"\00\01\05\00\06\05", [6 x i8] c"\05\03\01\08\07\06", [6 x i8] c"\01\02\03\01\02\07", [6 x i8] c"\03\05\04\08\04\03"], align 16

; Function Attrs: mustprogress uwtable
define dso_local i64 @meshopt_opacityMapMeasure(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5, i64 noundef %6, i64 noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, float noundef %11) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %12 = alloca %class.meshopt_Allocator, align 8  ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %12, i8 0, i64 200, i1 false)
  %i.a = udiv i64 %4, 3                           ; 3 uses
  %i.b = lshr i64 %i.a, 2
  %i.c = add nuw nsw i64 %i.b, %i.a
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ 1, %bb.a ], [ %i.e, %bb.b ]   ; 5 uses
  %i.d = icmp ult i64 %.0.i, %i.c
  %i.e = shl i64 %.0.i, 1
  br i1 %i.d, label %bb.b, label %_ZN7meshoptL12hashBuckets3Em.exit, !llvm.loop !0

_ZN7meshoptL12hashBuckets3Em.exit:                ; preds = %bb.b
  %i.f = lshr i64 %7, 2                           ; 3 uses
  %i.g = uitofp i32 %8 to float
  %i.h = uitofp i32 %9 to float
  %i.i = fmul nnan float %i.g, %i.h
  %i.j = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !15
  %i.k = icmp ugt i64 %.0.i, 4611686018427387903
  %i.l = shl i64 %.0.i, 2                         ; 2 uses
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = invoke noundef ptr %i.j(i64 noundef %i.m)
          to label %bb.c unwind label %bb.f, !inline_history !1 ; 5 uses

bb.c:                                             ; preds = %_ZN7meshoptL12hashBuckets3Em.exit
  %i.o = getelementptr inbounds nuw i8, ptr %12, i64 192
  store i64 1, ptr %i.o, align 8, !tbaa !18
  store ptr %i.n, ptr %12, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.n, i8 -1, i64 %i.l, i1 false)
  %i.p = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !15
  %i.q = icmp ugt i64 %4, 1976436865040309102
  %i.r = mul nuw i64 %i.a, 28
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = invoke noundef ptr %i.p(i64 noundef %i.s)
          to label %bb.d unwind label %bb.f, !inline_history !34 ; 4 uses

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.t, ptr %i.u, align 8, !tbaa !19
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.lr.ph.i, label %.lr.ph118

.lr.ph118:                                        ; preds = %bb.d
  %i.v = fcmp ogt float %11, 0.000000e+00
  %i.w = insertelement <2 x i32> poison, i32 %8, i64 0
  %i.x = insertelement <2 x i32> %i.w, i32 %9, i64 1
  %i.y = shl nsw <2 x i32> %i.x, splat (i32 2)
  %i.z = sitofp <2 x i32> %i.y to <2 x float>     ; 2 uses
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ab = add i64 %.0.i, -1                       ; 3 uses
  br label %bb.g

.lr.ph.i:                                         ; preds = %bb.d, %bb.j
  %.098.lcssa = phi i64 [ 0, %bb.d ], [ %.1, %bb.j ]
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !20
  %i.ad = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19
  invoke void %i.ac(ptr noundef %i.ae)
          to label %.lr.ph.i.1 unwind label %bb.e

.lr.ph.i.1:                                       ; preds = %.lr.ph.i
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !20
  %i.ag = load ptr, ptr %12, align 8, !tbaa !19
  invoke void %i.af(ptr noundef %i.ag)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.e

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i.1
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  ret i64 %.098.lcssa

bb.e:                                             ; preds = %.lr.ph.i.1, %.lr.ph.i
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #16
  unreachable

bb.f:                                             ; preds = %bb.c, %_ZN7meshoptL12hashBuckets3Em.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  resume { ptr, i32 } %i.aj

bb.g:                                             ; preds = %.lr.ph118, %bb.j
  %.097117 = phi i64 [ 0, %.lr.ph118 ], [ %i.fq, %bb.j ] ; 4 uses
  %.098116 = phi i64 [ 0, %.lr.ph118 ], [ %.1, %bb.j ] ; 7 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.097117 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !21
  %i.am = getelementptr i8, ptr %i.ak, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !21
  %i.ao = getelementptr i8, ptr %i.ak, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !21
  %i.aq = zext i32 %i.al to i64
  %i.ar = mul i64 %i.f, %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.ar ; 2 uses
  %i.at = zext i32 %i.an to i64
  %i.au = mul i64 %i.f, %i.at
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.au ; 2 uses
  %i.aw = load <2 x float>, ptr %i.as, align 4, !tbaa !23 ; 3 uses
  %i.ax = load <2 x float>, ptr %i.av, align 4, !tbaa !23 ; 2 uses
  %i.ay = zext i32 %i.ap to i64
  %i.az = mul i64 %i.f, %i.ay
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.az
  %i.bb = load <2 x float>, ptr %i.ba, align 4, !tbaa !23 ; 4 uses
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr i8, ptr %i.av, i64 4
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !23
  %i.be = getelementptr i8, ptr %i.as, i64 4
  %i.bf = load float, ptr %i.be, align 4, !tbaa !23 ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.ax, %i.aw
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bh = extractelement <2 x float> %i.bb, i64 1
  %i.bi = fsub float %i.bh, %i.bf
  %foldExtExtBinop131 = fsub <2 x float> %i.bb, %i.aw
  %i.bj = extractelement <2 x float> %foldExtExtBinop131, i64 0
  %i.bk = fsub float %i.bd, %i.bf
  %i.bl = fneg float %i.bk
  %i.bm = fmul float %i.bj, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bg, float %i.bi, float %i.bm)
  %i.bo = tail call float @llvm.fabs.f32(float %i.bn)
  %i.bp = fmul float %i.bo, 5.000000e-01
  %i.bq = fmul float %i.i, %i.bp
  %sqrt = tail call float @llvm.sqrt.f32(float %i.bq)
  %i.br = fdiv float %sqrt, %11                   ; 2 uses
  %i.bs = fcmp ogt float %i.br, 1.000000e+00
  %i.bt = select i1 %i.bs, float %i.br, float 1.000000e+00
  %i.bu = tail call float @log2f(float noundef %i.bt) #15
  %i.bv = fadd float %i.bu, 5.000000e-01
  %i.bw = fptosi float %i.bv to i32
  %i.bx = tail call i32 @llvm.smax.i32(i32 %i.bw, i32 0)
  %i.by = tail call i32 @llvm.smin.i32(i32 %i.bx, i32 %10)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi i32 [ %i.by, %bb.h ], [ %10, %bb.g ]  ; 2 uses
  %i.bz = shufflevector <2 x float> %i.aw, <2 x float> %i.ax, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ca = fcmp oge <4 x float> %i.bz, zeroinitializer
  %i.cb = fcmp oge <2 x float> %i.bb, zeroinitializer
  %i.cc = getelementptr inbounds nuw [28 x i8], ptr %i.t, i64 %.098116 ; 3 uses
  %i.cd = select <4 x i1> %i.ca, <4 x float> splat (float 5.000000e-01), <4 x float> splat (float -5.000000e-01)
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bz, <4 x float> %i.aa, <4 x float> %i.cd)
  %i.cf = fptosi <4 x float> %i.ce to <4 x i32>
  store <4 x i32> %i.cf, ptr %i.cc, align 4, !tbaa !24
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %i.cg = select <2 x i1> %i.cb, <2 x float> splat (float 5.000000e-01), <2 x float> splat (float -5.000000e-01)
  %i.ch = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.z, <2 x float> %i.cg)
  %i.ci = fptosi <2 x float> %i.ch to <2 x i32>
  store <2 x i32> %i.ci, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !24
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  store i32 %.0, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !21
  %i.cj = trunc i64 %.098116 to i32
  %i.ck = and i64 %.098116, 4294967295
  %i.cl = getelementptr inbounds nuw [28 x i8], ptr %i.t, i64 %i.ck ; 9 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !37 ; 2 uses
  %.0.copyload.i.i.i = load i32, ptr %i.cl, align 4
  %i.co = mul i32 %.0.copyload.i.i.i, 1540483477  ; 2 uses
  %i.cp = lshr i32 %i.co, 24
  %i.cq = xor i32 %i.cp, %i.co
  %i.cr = mul i32 %i.cq, 1540483477
  %i.cs = mul i32 %i.cn, 1540483477
  %i.ct = xor i32 %i.cr, %i.cs
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %.0.copyload.i.1.i.i = load i32, ptr %i.cu, align 4
  %i.cv = mul i32 %.0.copyload.i.1.i.i, 1540483477 ; 2 uses
  %i.cw = lshr i32 %i.cv, 24
  %i.cx = xor i32 %i.cw, %i.cv
  %i.cy = mul i32 %i.cx, 1540483477
  %i.cz = mul i32 %i.ct, 1540483477
  %i.da = xor i32 %i.cz, %i.cy
  %i.db = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %.0.copyload.i.2.i.i = load i32, ptr %i.db, align 4
  %i.dc = mul i32 %.0.copyload.i.2.i.i, 1540483477 ; 2 uses
  %i.dd = lshr i32 %i.dc, 24
  %i.de = xor i32 %i.dd, %i.dc
  %i.df = mul i32 %i.de, 1540483477
  %i.dg = mul i32 %i.da, 1540483477
  %i.dh = xor i32 %i.dg, %i.df
  %i.di = getelementptr inbounds nuw i8, ptr %i.cl, i64 12
  %.0.copyload.i.3.i.i = load i32, ptr %i.di, align 4
  %i.dj = mul i32 %.0.copyload.i.3.i.i, 1540483477 ; 2 uses
  %i.dk = lshr i32 %i.dj, 24
  %i.dl = xor i32 %i.dk, %i.dj
  %i.dm = mul i32 %i.dl, 1540483477
  %i.dn = mul i32 %i.dh, 1540483477
  %i.do = xor i32 %i.dn, %i.dm
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %.0.copyload.i.4.i.i = load i32, ptr %i.dp, align 4
  %i.dq = mul i32 %.0.copyload.i.4.i.i, 1540483477 ; 2 uses
  %i.dr = lshr i32 %i.dq, 24
  %i.ds = xor i32 %i.dr, %i.dq
  %i.dt = mul i32 %i.ds, 1540483477
  %i.du = mul i32 %i.do, 1540483477
  %i.dv = xor i32 %i.du, %i.dt
  %i.dw = getelementptr inbounds nuw i8, ptr %i.cl, i64 20
  %.0.copyload.i.5.i.i = load i32, ptr %i.dw, align 4
  %i.dx = mul i32 %.0.copyload.i.5.i.i, 1540483477 ; 2 uses
  %i.dy = lshr i32 %i.dx, 24
  %i.dz = xor i32 %i.dy, %i.dx
  %i.ea = mul i32 %i.dz, 1540483477
  %i.eb = mul i32 %i.dv, 1540483477
  %i.ec = xor i32 %i.eb, %i.ea
  %i.ed = zext i32 %i.ec to i64
  %i.ee = and i64 %i.ab, %i.ed                    ; 3 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.ee
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !21 ; 2 uses
  %i.eh = icmp eq i32 %i.eg, -1
  br i1 %i.eh, label %_ZN7meshoptL11hashLookup3IjNS_17TriangleOMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %_ZNK7meshopt17TriangleOMMHasher5equalEjj.exit.thread.i
  %.pr = phi i32 [ %i.ff, %_ZNK7meshopt17TriangleOMMHasher5equalEjj.exit.thread.i ], [ %i.eg, %bb.i ] ; 2 uses
  %.02313.i115 = phi i64 [ %i.fd, %_ZNK7meshopt17TriangleOMMHasher5equalEjj.exit.thread.i ], [ %i.ee, %bb.i ]
  %.02214.i114 = phi i64 [ %i.fb, %_ZNK7meshopt17TriangleOMMHasher5equalEjj.exit.thread.i ], [ 0, %bb.i ]
  %i.ei = zext i32 %.pr to i64
  %i.ej = getelementptr inbounds nuw [28 x i8], ptr %i.t, i64 %i.ei ; 3 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !37
  %i.em = icmp eq i32 %i.el, %i.cn
  br i1 %i.em, label %_ZNK7meshopt17TriangleOMMHasher5equalEjj.exit.i, label %_ZNK7meshopt17TriangleOMMHasher5equalEjj.exit.thread.i

_ZNK7meshopt17TriangleOMMHasher5equalEjj.exit.i:  ; preds = %.lr.ph
  %i.en = load i128, ptr %i.ej, align 1
  %i.eo = load i128, ptr %i.cl, align 1
  %i.ep = xor i128 %i.en, %i.eo
  %i.eq = getelementptr i8, ptr %i.ej, i64 16
  %i.er = getelementptr i8, ptr %i.cl, i64 16
  %i.es = load i64, ptr %i.eq, align 1
  %i.et = load i64, ptr %i.er, align 1
  %i.eu = zext i64 %i.es to i128
  %i.ev = zext i64 %i.et to i128
  %i.ew = xor i128 %i.eu, %i.ev
  %i.ex = or i128 %i.ep, %i.ew
  %i.ey = icmp ne i128 %i.ex, 0
  %i.ez = zext i1 %i.ey to i32
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %_ZN7meshoptL11hashLookup3IjNS_17TriangleOMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit._crit_edge, label %_ZNK7meshopt17TriangleOMMHasher5equalEjj.exit.thread.i

_ZNK7meshopt17TriangleOMMHasher5equalEjj.exit.thread.i: ; preds = %_ZNK7meshopt17TriangleOMMHasher5equalEjj.exit.i, %.lr.ph
  %i.fb = add i64 %.02214.i114, 1                 ; 3 uses
  %i.fc = add i64 %i.fb, %.02313.i115
  %i.fd = and i64 %i.fc, %i.ab                    ; 3 uses
  %.not.i108 = icmp ule i64 %i.fb, %i.ab
  tail call void @llvm.assume(i1 %.not.i108)
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !21 ; 2 uses
  %i.fg = icmp eq i32 %i.ff, -1
  br i1 %i.fg, label %_ZN7meshoptL11hashLookup3IjNS_17TriangleOMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

_ZN7meshoptL11hashLookup3IjNS_17TriangleOMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit._crit_edge: ; preds = %_ZNK7meshopt17TriangleOMMHasher5equalEjj.exit.i
  %.pre121 = udiv i64 %.097117, 3
  br label %bb.j

_ZN7meshoptL11hashLookup3IjNS_17TriangleOMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread: ; preds = %_ZNK7meshopt17TriangleOMMHasher5equalEjj.exit.thread.i, %bb.i
  %.02313.i.lcssa113 = phi i64 [ %i.ee, %bb.i ], [ %i.fd, %_ZNK7meshopt17TriangleOMMHasher5equalEjj.exit.thread.i ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.02313.i.lcssa113 ; 2 uses
  store i32 %i.cj, ptr %i.fh, align 4, !tbaa !21
  %i.fi = trunc i32 %.0 to i8
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 %.098116
  store i8 %i.fi, ptr %i.fj, align 1, !tbaa !24
  %i.fk = udiv i64 %.097117, 3                    ; 2 uses
  %i.fl = trunc i64 %i.fk to i32
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.098116
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !21
  %i.fn = add i64 %.098116, 1
  %.pre = load i32, ptr %i.fh, align 4, !tbaa !21
  br label %bb.j

bb.j:                                             ; preds = %_ZN7meshoptL11hashLookup3IjNS_17TriangleOMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit._crit_edge, %_ZN7meshoptL11hashLookup3IjNS_17TriangleOMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread
  %.pre-phi = phi i64 [ %.pre121, %_ZN7meshoptL11hashLookup3IjNS_17TriangleOMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit._crit_edge ], [ %i.fk, %_ZN7meshoptL11hashLookup3IjNS_17TriangleOMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ]
  %i.fo = phi i32 [ %.pr, %_ZN7meshoptL11hashLookup3IjNS_17TriangleOMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit._crit_edge ], [ %.pre, %_ZN7meshoptL11hashLookup3IjNS_17TriangleOMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ]
  %.1 = phi i64 [ %.098116, %_ZN7meshoptL11hashLookup3IjNS_17TriangleOMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit._crit_edge ], [ %i.fn, %_ZN7meshoptL11hashLookup3IjNS_17TriangleOMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ] ; 2 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.pre-phi
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !21
  %i.fq = add i64 %.097117, 3                     ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %4
  br i1 %i.fr, label %bb.g, label %.lr.ph.i, !llvm.loop !35
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @log2f(float noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN17meshopt_AllocatorD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not3 = icmp eq i64 %i.b, 0
  br i1 %.not3, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.04 = phi i64 [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !20
  %i.d = getelementptr [8 x i8], ptr %0, i64 %.04
  %i.e = getelementptr i8, ptr %i.d, i64 -8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  invoke void %i.c(ptr noundef %i.f)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.g = add i64 %.04, -1                         ; 2 uses
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !38

bb.c:                                             ; preds = %.lr.ph
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  tail call void @__clang_call_terminate(ptr %i.i) #16
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i64 -268435456, 268435456) i64 @meshopt_opacityMapEntrySize(i32 noundef %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = shl nsw i32 %0, 1
  %i.b = ashr i32 %1, 1
  %i.c = shl i32 %i.b, %i.a
  %i.d = add nsw i32 %i.c, 7
  %i.e = ashr i32 %i.d, 3
  %i.f = sext i32 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: mustprogress uwtable
define dso_local void @meshopt_opacityMapRasterize(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr noundef %6, i64 noundef %7, i64 noundef %8, i32 noundef %9, i32 noundef %10) local_unnamed_addr #0 {
bb.a:
  %11 = alloca %"struct.meshopt::Texture", align 8 ; 9 uses
  %i.a = alloca [3 x float], align 8              ; 5 uses
  %i.b = alloca [3 x float], align 8              ; 5 uses
  %i.c = alloca [3 x float], align 8              ; 5 uses
  %i.d = shl nsw i32 %1, 1
  %i.e = ashr i32 %2, 1
  %i.f = shl i32 %i.e, %i.d
  %i.g = add nsw i32 %i.f, 7
  %i.h = ashr i32 %i.g, 3
  %i.i = sext i32 %i.h to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %i.i, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  store ptr %6, ptr %11, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %7, ptr %i.j, align 8, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %8, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 %9, ptr %i.l, align 8, !tbaa !30
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 28
  store i32 %10, ptr %12, align 4, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 32
  %i.n = insertelement <2 x i32> poison, i32 %9, i64 0
  %i.o = insertelement <2 x i32> %i.n, i32 %10, i64 1 ; 2 uses
  %i.p = sitofp <2 x i32> %i.o to <2 x float>     ; 3 uses
  %i.q = fmul nnan <2 x float> %i.p, splat (float 2.560000e+02) ; 4 uses
  store <2 x float> %i.q, ptr %i.m, align 8, !tbaa !23
  %shift = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul nnan <2 x float> %shift, %i.p
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = load <2 x float>, ptr %5, align 4, !tbaa !23 ; 4 uses
  %i.t = extractelement <2 x float> %i.s, i64 1   ; 4 uses
  %i.u = extractelement <2 x float> %i.s, i64 0   ; 4 uses
  %i.v = load <2 x float>, ptr %4, align 4, !tbaa !23 ; 4 uses
  %i.w = extractelement <2 x float> %i.v, i64 1   ; 4 uses
  %i.x = extractelement <2 x float> %i.v, i64 0   ; 4 uses
  %i.y = load <2 x float>, ptr %3, align 4, !tbaa !23 ; 4 uses
  %i.z = extractelement <2 x float> %i.y, i64 1   ; 4 uses
  %i.aa = extractelement <2 x float> %i.y, i64 0  ; 4 uses
  %i.ab = shufflevector <2 x float> %i.s, <2 x float> %i.v, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %i.ac = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.ad = fsub <4 x float> %i.ab, %i.ac           ; 4 uses
  %i.ae = extractelement <4 x float> %i.ad, i64 3
  %i.af = fneg float %i.ae
  %i.ag = extractelement <4 x float> %i.ad, i64 1
  %i.ah = fmul float %i.ag, %i.af
  %i.ai = extractelement <4 x float> %i.ad, i64 0
  %i.aj = extractelement <4 x float> %i.ad, i64 2
  %i.ak = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ai, float %i.ah)
  %i.al = tail call float @llvm.fabs.f32(float %i.ak)
  %i.am = fmul float %i.al, 5.000000e-01
  %i.an = fmul float %i.r, %i.am
  %i.ao = tail call float @sqrtf(float noundef %i.an) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store <2 x float> %i.y, ptr %i.a, align 8, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aq = fadd float %i.aa, -5.000000e-01
  %i.ar = tail call float @llvm.fabs.f32(float %i.aq)
  %i.as = fcmp ogt float %i.ar, 5.000000e-01
  br i1 %i.as, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.at = tail call float @llvm.floor.f32(float %i.aa)
  %i.au = fsub float %i.aa, %i.at
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.av = phi float [ %i.au, %bb.b ], [ %i.aa, %bb.a ]
  %i.aw = fadd float %i.z, -5.000000e-01
  %i.ax = tail call float @llvm.fabs.f32(float %i.aw)
  %i.ay = fcmp ogt float %i.ax, 5.000000e-01
  br i1 %i.ay, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.az = tail call float @llvm.floor.f32(float %i.z)
  %i.ba = fsub float %i.z, %i.az
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.bb = phi float [ %i.ba, %bb.d ], [ %i.z, %bb.c ]
  %i.bc = insertelement <2 x float> poison, float %i.av, i64 0
  %i.bd = insertelement <2 x float> %i.bc, float %i.bb, i64 1
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.q, <2 x float> splat (float -1.275000e+02)) ; 2 uses
  %i.bf = extractelement <2 x float> %i.be, i64 0
  %i.bg = fptosi float %i.bf to i32
  %i.bh = extractelement <2 x float> %i.be, i64 1
  %i.bi = fptosi float %i.bh to i32
  %i.bj = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 0) ; 2 uses
  %i.bk = tail call i32 @llvm.smax.i32(i32 %i.bi, i32 0) ; 2 uses
  %i.bl = lshr i32 %i.bj, 8                       ; 3 uses
  %i.bm = lshr i32 %i.bk, 8                       ; 3 uses
  %.not.i = icmp ult i32 %i.bl, %9
  %.not62.i = icmp ult i32 %i.bm, %10
  %or.cond = select i1 %.not.i, i1 %.not62.i, i1 false
  br i1 %or.cond, label %bb.f, label %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit

bb.f:                                             ; preds = %bb.e
  %i.bn = and i32 %i.bk, 255
  %i.bo = and i32 %i.bj, 255                      ; 2 uses
  %i.bp = zext nneg i32 %i.bm to i64
  %i.bq = mul i64 %8, %i.bp
  %i.br = zext nneg i32 %i.bl to i64
  %i.bs = mul i64 %7, %i.br
  %i.bt = add nuw nsw i32 %i.bl, 1
  %i.bu = icmp slt i32 %i.bt, %9
  %spec.select.i = select i1 %i.bu, i64 %7, i64 0
  %i.bv = add nuw nsw i32 %i.bm, 1
  %i.bw = icmp slt i32 %i.bv, %10
  %spec.select63.i = select i1 %i.bw, i64 %8, i64 0 ; 2 uses
  %i.bx = getelementptr i8, ptr %6, i64 %i.bs
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bq  ; 3 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !24
  %i.ca = getelementptr i8, ptr %i.by, i64 %spec.select.i ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !24
  %i.cc = getelementptr i8, ptr %i.by, i64 %spec.select63.i
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !24
  %i.ce = getelementptr i8, ptr %i.ca, i64 %spec.select63.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !24
  %i.cg = zext i8 %i.bz to i32                    ; 2 uses
  %i.ch = shl nuw nsw i32 %i.cg, 8
  %i.ci = zext i8 %i.cb to i32
  %i.cj = sub nsw i32 %i.ci, %i.cg
  %i.ck = mul nsw i32 %i.cj, %i.bo
  %i.cl = add nsw i32 %i.ck, %i.ch                ; 2 uses
  %i.cm = zext i8 %i.cd to i32                    ; 2 uses
  %i.cn = shl nuw nsw i32 %i.cm, 8
  %i.co = zext i8 %i.cf to i32
  %i.cp = sub nsw i32 %i.co, %i.cm
  %i.cq = mul nsw i32 %i.cp, %i.bo
  %i.cr = shl nsw i32 %i.cl, 8
  %i.cs = sub nsw i32 %i.cn, %i.cl
  %i.ct = add nsw i32 %i.cs, %i.cq
  %i.cu = mul nsw i32 %i.ct, %i.bn
  %i.cv = add nsw i32 %i.cu, %i.cr
  %i.cw = sitofp i32 %i.cv to float
  %i.cx = fmul nnan float %i.cw, f0x33808081
  br label %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit

_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit: ; preds = %bb.e, %bb.f
  %.0.i = phi float [ %i.cx, %bb.f ], [ 0.000000e+00, %bb.e ]
  store float %.0.i, ptr %i.ap, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store <2 x float> %i.v, ptr %i.b, align 8, !tbaa !23
  %i.cy = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cz = fadd float %i.x, -5.000000e-01
  %i.da = tail call float @llvm.fabs.f32(float %i.cz)
  %i.db = fcmp ogt float %i.da, 5.000000e-01
  br i1 %i.db, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit
  %i.dc = tail call float @llvm.floor.f32(float %i.x)
  %i.dd = fsub float %i.x, %i.dc
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit
  %i.de = phi float [ %i.dd, %bb.g ], [ %i.x, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit ]
  %i.df = fadd float %i.w, -5.000000e-01
  %i.dg = tail call float @llvm.fabs.f32(float %i.df)
  %i.dh = fcmp ogt float %i.dg, 5.000000e-01
  br i1 %i.dh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.di = tail call float @llvm.floor.f32(float %i.w)
  %i.dj = fsub float %i.w, %i.di
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.dk = phi float [ %i.dj, %bb.i ], [ %i.w, %bb.h ]
  %i.dl = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dm = insertelement <2 x float> %i.dl, float %i.dk, i64 1
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.q, <2 x float> splat (float -1.275000e+02)) ; 2 uses
  %i.do = extractelement <2 x float> %i.dn, i64 0
  %i.dp = fptosi float %i.do to i32
  %i.dq = extractelement <2 x float> %i.dn, i64 1
  %i.dr = fptosi float %i.dq to i32
  %i.ds = tail call i32 @llvm.smax.i32(i32 %i.dp, i32 0) ; 2 uses
  %i.dt = tail call i32 @llvm.smax.i32(i32 %i.dr, i32 0) ; 2 uses
  %i.du = lshr i32 %i.ds, 8                       ; 3 uses
  %i.dv = lshr i32 %i.dt, 8                       ; 3 uses
  %.not.i43 = icmp ult i32 %i.du, %9
  %.not62.i45 = icmp ult i32 %i.dv, %10
  %or.cond55 = select i1 %.not.i43, i1 %.not62.i45, i1 false
  br i1 %or.cond55, label %bb.k, label %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit48

bb.k:                                             ; preds = %bb.j
  %i.dw = and i32 %i.dt, 255
  %i.dx = and i32 %i.ds, 255                      ; 2 uses
  %i.dy = zext nneg i32 %i.dv to i64
  %i.dz = mul i64 %8, %i.dy
  %i.ea = zext nneg i32 %i.du to i64
  %i.eb = mul i64 %7, %i.ea
  %i.ec = add nuw nsw i32 %i.du, 1
  %i.ed = icmp slt i32 %i.ec, %9
  %spec.select.i46 = select i1 %i.ed, i64 %7, i64 0
  %i.ee = add nuw nsw i32 %i.dv, 1
  %i.ef = icmp slt i32 %i.ee, %10
  %spec.select63.i47 = select i1 %i.ef, i64 %8, i64 0 ; 2 uses
  %i.eg = getelementptr i8, ptr %6, i64 %i.eb
  %i.eh = getelementptr i8, ptr %i.eg, i64 %i.dz  ; 3 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !24
  %i.ej = getelementptr i8, ptr %i.eh, i64 %spec.select.i46 ; 2 uses
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !24
  %i.el = getelementptr i8, ptr %i.eh, i64 %spec.select63.i47
  %i.em = load i8, ptr %i.el, align 1, !tbaa !24
  %i.en = getelementptr i8, ptr %i.ej, i64 %spec.select63.i47
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !24
  %i.ep = zext i8 %i.ei to i32                    ; 2 uses
  %i.eq = shl nuw nsw i32 %i.ep, 8
  %i.er = zext i8 %i.ek to i32
  %i.es = sub nsw i32 %i.er, %i.ep
  %i.et = mul nsw i32 %i.es, %i.dx
  %i.eu = add nsw i32 %i.et, %i.eq                ; 2 uses
  %i.ev = zext i8 %i.em to i32                    ; 2 uses
  %i.ew = shl nuw nsw i32 %i.ev, 8
  %i.ex = zext i8 %i.eo to i32
  %i.ey = sub nsw i32 %i.ex, %i.ev
  %i.ez = mul nsw i32 %i.ey, %i.dx
  %i.fa = shl nsw i32 %i.eu, 8
  %i.fb = sub nsw i32 %i.ew, %i.eu
  %i.fc = add nsw i32 %i.fb, %i.ez
  %i.fd = mul nsw i32 %i.fc, %i.dw
  %i.fe = add nsw i32 %i.fd, %i.fa
  %i.ff = sitofp i32 %i.fe to float
  %i.fg = fmul nnan float %i.ff, f0x33808081
  br label %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit48

_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit48: ; preds = %bb.j, %bb.k
  %.0.i44 = phi float [ %i.fg, %bb.k ], [ 0.000000e+00, %bb.j ]
  store float %.0.i44, ptr %i.cy, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  store <2 x float> %i.s, ptr %i.c, align 8, !tbaa !23
  %i.fh = fadd float %i.u, -5.000000e-01
  %i.fi = tail call float @llvm.fabs.f32(float %i.fh)
  %i.fj = fcmp ogt float %i.fi, 5.000000e-01
  br i1 %i.fj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit48
  %i.fk = tail call float @llvm.floor.f32(float %i.u)
  %i.fl = fsub float %i.u, %i.fk
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit48
  %i.fm = phi float [ %i.fl, %bb.l ], [ %i.u, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit48 ]
  %i.fn = fadd float %i.t, -5.000000e-01
  %i.fo = tail call float @llvm.fabs.f32(float %i.fn)
  %i.fp = fcmp ogt float %i.fo, 5.000000e-01
  br i1 %i.fp, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.fq = tail call float @llvm.floor.f32(float %i.t)
  %i.fr = fsub float %i.t, %i.fq
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.fs = phi float [ %i.fr, %bb.n ], [ %i.t, %bb.m ]
  %i.ft = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %i.fs, i64 1
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.q, <2 x float> splat (float -1.275000e+02))
  %i.fw = fptosi <2 x float> %i.fv to <2 x i32>
  %i.fx = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.fw, <2 x i32> zeroinitializer) ; 3 uses
  %i.fy = lshr <2 x i32> %i.fx, splat (i32 8)     ; 3 uses
  %i.fz = extractelement <2 x i32> %i.fy, i64 0   ; 2 uses
  %.not.i49 = icmp ult i32 %i.fz, %9
  %i.ga = extractelement <2 x i32> %i.fy, i64 1   ; 2 uses
  %.not62.i51 = icmp ult i32 %i.ga, %10
  %or.cond56 = select i1 %.not.i49, i1 %.not62.i51, i1 false
  br i1 %or.cond56, label %bb.p, label %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit54

bb.p:                                             ; preds = %bb.o
  %i.gb = extractelement <2 x i32> %i.fx, i64 1
  %i.gc = and i32 %i.gb, 255
  %i.gd = extractelement <2 x i32> %i.fx, i64 0
  %i.ge = and i32 %i.gd, 255                      ; 2 uses
  %i.gf = zext nneg i32 %i.ga to i64
  %i.gg = mul i64 %8, %i.gf
  %i.gh = zext nneg i32 %i.fz to i64
  %i.gi = mul i64 %7, %i.gh
  %i.gj = add nuw nsw <2 x i32> %i.fy, splat (i32 1)
  %i.gk = icmp slt <2 x i32> %i.gj, %i.o          ; 2 uses
  %i.gl = extractelement <2 x i1> %i.gk, i64 0
  %spec.select.i52 = select i1 %i.gl, i64 %7, i64 0
  %i.gm = extractelement <2 x i1> %i.gk, i64 1
  %spec.select63.i53 = select i1 %i.gm, i64 %8, i64 0 ; 2 uses
  %i.gn = getelementptr i8, ptr %6, i64 %i.gi
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.gg  ; 3 uses
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !24
  %i.gq = getelementptr i8, ptr %i.go, i64 %spec.select.i52 ; 2 uses
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !24
  %i.gs = getelementptr i8, ptr %i.go, i64 %spec.select63.i53
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !24
  %i.gu = getelementptr i8, ptr %i.gq, i64 %spec.select63.i53
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !24
  %i.gw = zext i8 %i.gp to i32                    ; 2 uses
  %i.gx = shl nuw nsw i32 %i.gw, 8
  %i.gy = zext i8 %i.gr to i32
  %i.gz = sub nsw i32 %i.gy, %i.gw
  %i.ha = mul nsw i32 %i.gz, %i.ge
  %i.hb = add nsw i32 %i.ha, %i.gx                ; 2 uses
  %i.hc = zext i8 %i.gt to i32                    ; 2 uses
  %i.hd = shl nuw nsw i32 %i.hc, 8
  %i.he = zext i8 %i.gv to i32
  %i.hf = sub nsw i32 %i.he, %i.hc
  %i.hg = mul nsw i32 %i.hf, %i.ge
  %i.hh = shl nsw i32 %i.hb, 8
  %i.hi = sub nsw i32 %i.hd, %i.hb
  %i.hj = add nsw i32 %i.hi, %i.hg
  %i.hk = mul nsw i32 %i.hj, %i.gc
  %i.hl = add nsw i32 %i.hk, %i.hh
  %i.hm = sitofp i32 %i.hl to float
  %i.hn = fmul nnan float %i.hm, f0x33808081
  br label %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit54

_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit54: ; preds = %bb.o, %bb.p
  %.0.i50 = phi float [ %i.hn, %bb.p ], [ 0.000000e+00, %bb.o ]
  %i.ho = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.hp = shl nuw i32 1, %1
  %i.hq = sitofp i32 %i.hp to float
  %i.hr = fdiv float %i.ao, %i.hq
  %i.hs = fmul float %i.hr, 7.500000e-01
  %i.ht = fptosi float %i.hs to i32
  %i.hu = tail call i32 @llvm.smax.i32(i32 %i.ht, i32 0)
  %i.hv = tail call i32 @llvm.umin.i32(i32 %i.hu, i32 7)
  store float %.0.i50, ptr %i.ho, align 8, !tbaa !23
  %i.hw = icmp eq i32 %2, 2
  %i.hx = select i1 %i.hw, ptr @_ZN7meshoptL19rasterizeOpacityRecILi2EEEvPhmiiPKfS3_S3_RKNS_7TextureE, ptr @_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE
  call void %i.hx(ptr noundef %0, i64 noundef 0, i32 noundef %1, i32 noundef %i.hv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull align 8 dereferenceable(40) %11), !callees !39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, float noundef %1, float noundef %2) unnamed_addr #7 {
bb.a:
  %i.a = fadd float %1, -5.000000e-01
  %i.b = tail call float @llvm.fabs.f32(float %i.a)
  %i.c = fcmp ogt float %i.b, 5.000000e-01
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call float @llvm.floor.f32(float %1)
  %i.e = fsub float %1, %i.d
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi float [ %i.e, %bb.b ], [ %1, %bb.a ]
  %i.g = fadd float %2, -5.000000e-01
  %i.h = tail call float @llvm.fabs.f32(float %i.g)
  %i.i = fcmp ogt float %i.h, 5.000000e-01
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call float @llvm.floor.f32(float %2)
  %i.k = fsub float %2, %i.j
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.l = phi float [ %i.k, %bb.d ], [ %2, %bb.c ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load <2 x float>, ptr %i.m, align 8, !tbaa !23
  %i.o = insertelement <2 x float> poison, float %i.f, i64 0
  %i.p = insertelement <2 x float> %i.o, float %i.l, i64 1
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.p, <2 x float> %i.n, <2 x float> splat (float -1.275000e+02))
  %i.r = fptosi <2 x float> %i.q to <2 x i32>
  %i.s = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.r, <2 x i32> zeroinitializer) ; 3 uses
  %i.t = lshr <2 x i32> %i.s, splat (i32 8)       ; 3 uses
  %i.u = extractelement <2 x i32> %i.s, i64 0
  %i.v = and i32 %i.u, 255                        ; 2 uses
  %i.w = extractelement <2 x i32> %i.s, i64 1
  %i.x = and i32 %i.w, 255
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !30
  %i.aa = extractelement <2 x i32> %i.t, i64 0    ; 2 uses
  %.not = icmp ult i32 %i.aa, %i.z
  br i1 %.not, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !31
  %i.ad = extractelement <2 x i32> %i.t, i64 1    ; 2 uses
  %.not62 = icmp ult i32 %i.ad, %i.ac
  br i1 %.not62, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load <2 x i32>, ptr %i.y, align 8, !tbaa !21
  %i.af = zext nneg i32 %i.ad to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %i.ai = mul i64 %i.ah, %i.af
  %i.aj = zext nneg i32 %i.aa to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !28 ; 2 uses
  %i.am = mul i64 %i.al, %i.aj
  %i.an = add nuw nsw <2 x i32> %i.t, splat (i32 1)
  %i.ao = icmp slt <2 x i32> %i.an, %i.ae         ; 2 uses
  %i.ap = extractelement <2 x i1> %i.ao, i64 0
  %spec.select = select i1 %i.ap, i64 %i.al, i64 0
  %i.aq = extractelement <2 x i1> %i.ao, i64 1
  %spec.select63 = select i1 %i.aq, i64 %i.ah, i64 0 ; 2 uses
  %i.ar = load ptr, ptr %0, align 8, !tbaa !27
  %i.as = getelementptr i8, ptr %i.ar, i64 %i.am
  %i.at = getelementptr i8, ptr %i.as, i64 %i.ai  ; 3 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !24
  %i.av = getelementptr i8, ptr %i.at, i64 %spec.select ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !24
  %i.ax = getelementptr i8, ptr %i.at, i64 %spec.select63
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !24
  %i.az = getelementptr i8, ptr %i.av, i64 %spec.select63
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !24
  %i.bb = zext i8 %i.au to i32                    ; 2 uses
  %i.bc = shl nuw nsw i32 %i.bb, 8
  %i.bd = zext i8 %i.aw to i32
  %i.be = sub nsw i32 %i.bd, %i.bb
  %i.bf = mul nsw i32 %i.be, %i.v
  %i.bg = add nsw i32 %i.bf, %i.bc                ; 2 uses
  %i.bh = zext i8 %i.ay to i32                    ; 2 uses
  %i.bi = shl nuw nsw i32 %i.bh, 8
  %i.bj = zext i8 %i.ba to i32
  %i.bk = sub nsw i32 %i.bj, %i.bh
  %i.bl = mul nsw i32 %i.bk, %i.v
  %i.bm = shl nsw i32 %i.bg, 8
  %i.bn = sub nsw i32 %i.bi, %i.bg
  %i.bo = add nsw i32 %i.bn, %i.bl
  %i.bp = mul nsw i32 %i.bo, %i.x
  %i.bq = add nsw i32 %i.bp, %i.bm
  %i.br = sitofp i32 %i.bq to float
  %i.bs = fmul nnan float %i.br, f0x33808081
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.f, %bb.g
  %.0 = phi float [ %i.bs, %bb.g ], [ 0.000000e+00, %bb.f ], [ 0.000000e+00, %bb.e ]
  ret float %.0
}

; Function Attrs: mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZN7meshoptL19rasterizeOpacityRecILi2EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) unnamed_addr #8 {
bb.a:
  %i.a = alloca [3 x float], align 4              ; 6 uses
  %i.b = alloca [3 x float], align 4              ; 6 uses
  %i.c = alloca [3 x float], align 4              ; 6 uses
  %i.d = alloca [6 x ptr], align 16               ; 10 uses
  %i.e = alloca [9 x i32], align 16               ; 13 uses
  %i.f = alloca [3 x float], align 4              ; 8 uses
  %i.g = alloca [3 x float], align 4              ; 8 uses
  %i.h = alloca [3 x float], align 4              ; 8 uses
  %i.i = icmp eq i32 %2, 0
  br i1 %i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.j = load float, ptr %4, align 4, !tbaa !23   ; 4 uses
  %i.k = load float, ptr %5, align 4, !tbaa !23   ; 4 uses
  %i.l = fadd float %i.j, %i.k
  %i.m = load float, ptr %6, align 4, !tbaa !23   ; 4 uses
  %i.n = fadd float %i.l, %i.m
  %i.o = fmul float %i.n, f0x3EAAAAAB
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load float, ptr %i.p, align 4, !tbaa !23 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !23 ; 4 uses
  %i.t = fadd float %i.q, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !23 ; 4 uses
  %i.w = fadd float %i.t, %i.v
  %i.x = fmul float %i.w, f0x3EAAAAAB
  %i.y = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull align 8 dereferenceable(40) %7, float noundef %i.o, float noundef %i.x) ; 2 uses
  %i.z = icmp sgt i32 %3, 0
  br i1 %i.z, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.aa = add nuw nsw i32 %3, 1
  %i.ab = uitofp nneg i32 %i.aa to float
  %i.ac = fdiv float 1.000000e+00, %i.ab          ; 6 uses
  %i.ad = fsub float %i.k, %i.j
  %i.ae = fmul float %i.ac, %i.ad
  %i.af = fsub float %i.s, %i.q
  %i.ag = fmul float %i.ac, %i.af
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.033.i = phi i32 [ 0, %bb.c ], [ %i.ap, %bb.d ] ; 2 uses
  %.02532.i = phi i32 [ 0, %bb.c ], [ %i.ao, %bb.d ]
  %.02631.i = phi i32 [ 0, %bb.c ], [ %i.an, %bb.d ]
  %.02730.i = phi float [ %i.q, %bb.c ], [ %i.ai, %bb.d ]
  %.02829.i = phi float [ %i.j, %bb.c ], [ %i.ah, %bb.d ]
  %i.ah = fadd float %i.ae, %.02829.i             ; 2 uses
  %i.ai = fadd float %i.ag, %.02730.i             ; 2 uses
  %i.aj = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.ah, float noundef %i.ai)
  %i.ak = fcmp oge float %i.aj, 5.000000e-01
  %i.al = zext i1 %i.ak to i32                    ; 2 uses
  %i.am = shl nuw i32 %i.al, %.033.i
  %i.an = or i32 %i.am, %.02631.i                 ; 2 uses
  %i.ao = add nuw nsw i32 %.02532.i, %i.al        ; 2 uses
  %i.ap = add nuw nsw i32 %.033.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ap, %3
  br i1 %exitcond.not.i, label %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit, label %bb.d, !llvm.loop !2

_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit: ; preds = %bb.d
  %i.aq = fsub float %i.m, %i.k
  %i.ar = fmul float %i.ac, %i.aq
  %i.as = fsub float %i.v, %i.s
  %i.at = fmul float %i.ac, %i.as
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit
  %.033.i90 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.bc, %bb.e ] ; 2 uses
  %.02532.i91 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.bb, %bb.e ]
  %.02631.i92 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.ba, %bb.e ]
  %.02730.i93 = phi float [ %i.s, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.av, %bb.e ]
  %.02829.i94 = phi float [ %i.k, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.au, %bb.e ]
  %i.au = fadd float %i.ar, %.02829.i94           ; 2 uses
  %i.av = fadd float %i.at, %.02730.i93           ; 2 uses
  %i.aw = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.au, float noundef %i.av)
  %i.ax = fcmp oge float %i.aw, 5.000000e-01
  %i.ay = zext i1 %i.ax to i32                    ; 2 uses
  %i.az = shl nuw i32 %i.ay, %.033.i90
  %i.ba = or i32 %i.az, %.02631.i92               ; 2 uses
  %i.bb = add nuw nsw i32 %.02532.i91, %i.ay      ; 2 uses
  %i.bc = add nuw nsw i32 %.033.i90, 1            ; 2 uses
  %exitcond.not.i95 = icmp eq i32 %i.bc, %3
  br i1 %exitcond.not.i95, label %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96, label %bb.e, !llvm.loop !2

_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96: ; preds = %bb.e
  %i.bd = fsub float %i.j, %i.m
  %i.be = fmul float %i.ac, %i.bd
  %i.bf = fsub float %i.q, %i.v
  %i.bg = fmul float %i.ac, %i.bf
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96
  %.033.i97 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bp, %bb.f ] ; 2 uses
  %.02532.i98 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bo, %bb.f ]
  %.02631.i99 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bn, %bb.f ]
  %.02730.i100 = phi float [ %i.v, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bi, %bb.f ]
  %.02829.i101 = phi float [ %i.m, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bh, %bb.f ]
  %i.bh = fadd float %i.be, %.02829.i101          ; 2 uses
  %i.bi = fadd float %i.bg, %.02730.i100          ; 2 uses
  %i.bj = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.bh, float noundef %i.bi)
  %i.bk = fcmp oge float %i.bj, 5.000000e-01
  %i.bl = zext i1 %i.bk to i32                    ; 2 uses
  %i.bm = shl nuw i32 %i.bl, %.033.i97
  %i.bn = or i32 %i.bm, %.02631.i99               ; 2 uses
  %i.bo = add nuw nsw i32 %.02532.i98, %i.bl      ; 2 uses
  %i.bp = add nuw nsw i32 %.033.i97, 1            ; 2 uses
  %exitcond.not.i102 = icmp eq i32 %i.bp, %3
  br i1 %exitcond.not.i102, label %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103, label %bb.f, !llvm.loop !2

_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103: ; preds = %bb.f
  %i.bq = shl i32 %i.ao, 16
  %i.br = or i32 %i.bq, %i.an
  %i.bs = shl i32 %i.bb, 16
  %i.bt = or i32 %i.bs, %i.ba
  %i.bu = shl i32 %i.bo, 16
  %i.bv = or i32 %i.bu, %i.bn
  %i.bw = ashr i32 %i.br, 16
  %i.bx = ashr i32 %i.bt, 16
  %i.by = ashr i32 %i.bv, 16
  br label %bb.g

bb.g:                                             ; preds = %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103, %bb.b
  %.087 = phi i32 [ %i.bw, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103 ], [ 0, %bb.b ]
  %.086 = phi i32 [ %i.bx, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103 ], [ 0, %bb.b ]
  %.0 = phi i32 [ %i.by, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103 ], [ 0, %bb.b ]
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !23
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !23
  %i.cd = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !23
  %i.cf = fadd float %i.ca, %i.cc
  %i.cg = fadd float %i.cf, %i.ce                 ; 2 uses
  %i.ch = fmul float %i.y, 6.400000e-01
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.cg, float 1.200000e-01, float %i.ch)
  %.not.i = icmp eq i32 %3, 0
  br i1 %.not.i, label %_ZN7meshoptL17rasterizeOpacity0ILi2EEEvPhmffffiiii.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cj = sitofp i32 %3 to float
  %i.ck = fdiv nnan float 1.000000e+00, %i.cj
  %i.cl = add nsw i32 %.086, %.087
  %i.cm = add nsw i32 %i.cl, %.0
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fmul float %i.ck, %i.cn
  %i.cp = fmul float %i.co, 2.300000e-01
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.y, float 2.200000e-01, float %i.cp)
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cg, float 3.000000e-02, float %i.cq)
  br label %_ZN7meshoptL17rasterizeOpacity0ILi2EEEvPhmffffiiii.exit

_ZN7meshoptL17rasterizeOpacity0ILi2EEEvPhmffffiiii.exit: ; preds = %bb.g, %bb.h
  %.0.i = phi float [ %i.cr, %bb.h ], [ %i.ci, %bb.g ]
  %i.cs = fcmp oge float %.0.i, 5.000000e-01
  %i.ct = zext i1 %i.cs to i8
  %i.cu = trunc i64 %1 to i8
  %i.cv = and i8 %i.cu, 7
  %i.cw = shl nuw i8 %i.ct, %i.cv
  %i.cx = lshr i64 %1, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !24
  %i.da = or i8 %i.cw, %i.cz
  store i8 %i.da, ptr %i.cy, align 1, !tbaa !24
  br label %bb.s

bb.i:                                             ; preds = %bb.a
  %i.db = icmp eq i32 %2, 1
  %i.dc = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.db, %i.dc
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  br i1 %or.cond, label %bb.j, label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.dg = load float, ptr %5, align 4, !tbaa !23  ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.di = load float, ptr %i.de, align 4, !tbaa !23 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.dk = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.dm = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.dn = load <2 x float>, ptr %4, align 4, !tbaa !23 ; 2 uses
  %i.do = load float, ptr %i.dd, align 4, !tbaa !23 ; 2 uses
  %i.dp = load <2 x float>, ptr %6, align 4, !tbaa !23 ; 2 uses
  %i.dq = load float, ptr %i.df, align 4, !tbaa !23
  %i.dr = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.ds = insertelement <4 x float> %i.dr, float 1.000000e+00, i64 2
  %i.dt = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.du = insertelement <4 x float> %i.dt, float -0.000000e+00, i64 2
  %i.dv = insertelement <4 x float> %i.du, float %i.dg, i64 3
  %i.dw = fadd <4 x float> %i.ds, %i.dv
  %i.dx = fmul <4 x float> %i.dw, <float 5.000000e-01, float 5.000000e-01, float -0.000000e+00, float 5.000000e-01> ; 4 uses
  %i.dy = extractelement <4 x float> %i.dx, i64 3 ; 4 uses
  store float %i.dy, ptr %i.a, align 4, !tbaa !23
  %i.dz = fadd float %i.do, %i.di
  %i.ea = fmul float %i.dz, 5.000000e-01          ; 5 uses
  store float %i.ea, ptr %i.dh, align 4, !tbaa !23
  %i.eb = extractelement <2 x float> %i.dp, i64 0
  %i.ec = fadd float %i.dg, %i.eb
  %i.ed = fmul float %i.ec, 5.000000e-01          ; 4 uses
  store float %i.ed, ptr %i.b, align 4, !tbaa !23
  %i.ee = fadd float %i.di, %i.dq
  %i.ef = fmul float %i.ee, 5.000000e-01          ; 4 uses
  store float %i.ef, ptr %i.dk, align 4, !tbaa !23
  %i.eg = extractelement <4 x float> %i.dx, i64 0 ; 3 uses
  store float %i.eg, ptr %i.c, align 4, !tbaa !23
  %i.eh = extractelement <4 x float> %i.dx, i64 1 ; 3 uses
  store float %i.eh, ptr %i.dm, align 4, !tbaa !23
  %i.ei = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ej = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.dy, float noundef %i.ea) ; 4 uses
  store float %i.ej, ptr %i.dj, align 4, !tbaa !23
  %i.ek = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.ed, float noundef %i.ef) ; 3 uses
  store float %i.ek, ptr %i.dl, align 4, !tbaa !23
  %i.el = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.eg, float noundef %i.eh) ; 3 uses
  store float %i.el, ptr %i.ei, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr %4, ptr %i.d, align 16, !tbaa !33
  %i.em = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.a, ptr %i.em, align 8, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %5, ptr %i.en, align 16, !tbaa !33
  %i.eo = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.b, ptr %i.eo, align 8, !tbaa !33
  %i.ep = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %6, ptr %i.ep, align 16, !tbaa !33
  %i.eq = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.c, ptr %i.eq, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  %i.er = add nuw nsw i32 %3, 1
  %i.es = uitofp nneg i32 %i.er to float
  %i.et = fdiv nnan float 1.000000e+00, %i.es
  %i.eu = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ev = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ew = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ey = load <2 x float>, ptr %i.eu, align 8, !tbaa !23
  %i.ez = load <2 x i32>, ptr %i.ev, align 8      ; 2 uses
  %i.fa = load i64, ptr %i.ew, align 8            ; 2 uses
  %i.fb = load i64, ptr %i.ex, align 8            ; 2 uses
  %i.fc = load ptr, ptr %7, align 8
  %i.fd = insertelement <2 x float> poison, float %i.et, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.k

bb.k:                                             ; preds = %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i, %bb.j
  %.056.i = phi i64 [ 0, %bb.j ], [ %i.iq, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [2 x i8], ptr @_ZZN7meshoptL17rasterizeOpacity1ILi4EEEvPhmiPKfS3_S3_RKNS_7TextureEE5edges, i64 %.056.i ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 2, !tbaa !24
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fh
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !33
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !24
  %i.fm = zext i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.fm
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !33
  %i.fp = load <2 x float>, ptr %i.fj, align 4, !tbaa !23 ; 2 uses
  %i.fq = load <2 x float>, ptr %i.fo, align 4, !tbaa !23
  %i.fr = fsub <2 x float> %i.fq, %i.fp
  %i.fs = fmul <2 x float> %i.fe, %i.fr
  br label %bb.l

bb.l:                                             ; preds = %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i, %bb.k
  %.033.i.i = phi i32 [ 0, %bb.k ], [ %i.im, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i ] ; 2 uses
  %.02532.i.i = phi i32 [ 0, %bb.k ], [ %i.il, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i ]
  %.02631.i.i = phi i32 [ 0, %bb.k ], [ %i.ik, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i ]
  %i.ft = phi <2 x float> [ %i.fp, %bb.k ], [ %i.fu, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i ]
  %i.fu = fadd <2 x float> %i.fs, %i.ft           ; 3 uses
  %i.fv = extractelement <2 x float> %i.fu, i64 0 ; 4 uses
  %i.fw = fadd float %i.fv, -5.000000e-01
  %i.fx = call float @llvm.fabs.f32(float %i.fw)
  %i.fy = fcmp ogt float %i.fx, 5.000000e-01
  br i1 %i.fy, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.fz = call float @llvm.floor.f32(float %i.fv)
  %i.ga = fsub float %i.fv, %i.fz
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.gb = phi float [ %i.ga, %bb.m ], [ %i.fv, %bb.l ]
  %i.gc = extractelement <2 x float> %i.fu, i64 1 ; 4 uses
  %i.gd = fadd float %i.gc, -5.000000e-01
  %i.ge = call float @llvm.fabs.f32(float %i.gd)
  %i.gf = fcmp ogt float %i.ge, 5.000000e-01
  br i1 %i.gf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gg = call float @llvm.floor.f32(float %i.gc)
  %i.gh = fsub float %i.gc, %i.gg
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gi = phi float [ %i.gh, %bb.o ], [ %i.gc, %bb.n ]
  %i.gj = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gk = insertelement <2 x float> %i.gj, float %i.gi, i64 1
  %i.gl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.ey, <2 x float> splat (float -1.275000e+02))
  %i.gm = fptosi <2 x float> %i.gl to <2 x i32>
  %i.gn = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.gm, <2 x i32> zeroinitializer) ; 3 uses
  %i.go = lshr <2 x i32> %i.gn, splat (i32 8)     ; 4 uses
  %i.gp = icmp ult <2 x i32> %i.go, %i.ez         ; 2 uses
  %i.gq = extractelement <2 x i1> %i.gp, i64 0
  %i.gr = extractelement <2 x i1> %i.gp, i64 1
  %or.cond112 = select i1 %i.gq, i1 %i.gr, i1 false
  br i1 %or.cond112, label %bb.q, label %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i

bb.q:                                             ; preds = %bb.p
  %i.gs = extractelement <2 x i32> %i.gn, i64 1
  %i.gt = and i32 %i.gs, 255
  %i.gu = extractelement <2 x i32> %i.gn, i64 0
  %i.gv = and i32 %i.gu, 255                      ; 2 uses
  %i.gw = extractelement <2 x i32> %i.go, i64 1
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = mul i64 %i.fa, %i.gx
  %i.gz = extractelement <2 x i32> %i.go, i64 0
  %i.ha = zext nneg i32 %i.gz to i64
  %i.hb = mul i64 %i.fb, %i.ha
  %i.hc = add nuw nsw <2 x i32> %i.go, splat (i32 1)
  %i.hd = icmp slt <2 x i32> %i.hc, %i.ez         ; 2 uses
  %i.he = extractelement <2 x i1> %i.hd, i64 0
  %spec.select.i.i = select i1 %i.he, i64 %i.fb, i64 0
  %i.hf = extractelement <2 x i1> %i.hd, i64 1
  %spec.select63.i.i = select i1 %i.hf, i64 %i.fa, i64 0 ; 2 uses
  %i.hg = getelementptr i8, ptr %i.fc, i64 %i.hb
  %i.hh = getelementptr i8, ptr %i.hg, i64 %i.gy  ; 3 uses
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !24
  %i.hj = getelementptr i8, ptr %i.hh, i64 %spec.select.i.i ; 2 uses
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !24
  %i.hl = getelementptr i8, ptr %i.hh, i64 %spec.select63.i.i
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !24
  %i.hn = getelementptr i8, ptr %i.hj, i64 %spec.select63.i.i
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !24
  %i.hp = zext i8 %i.hi to i32                    ; 2 uses
  %i.hq = shl nuw nsw i32 %i.hp, 8
  %i.hr = zext i8 %i.hk to i32
  %i.hs = sub nsw i32 %i.hr, %i.hp
  %i.ht = mul nsw i32 %i.hs, %i.gv
  %i.hu = add nsw i32 %i.ht, %i.hq                ; 2 uses
  %i.hv = zext i8 %i.hm to i32                    ; 2 uses
  %i.hw = shl nuw nsw i32 %i.hv, 8
  %i.hx = zext i8 %i.ho to i32
  %i.hy = sub nsw i32 %i.hx, %i.hv
  %i.hz = mul nsw i32 %i.hy, %i.gv
  %i.ia = shl nsw i32 %i.hu, 8
  %i.ib = sub nsw i32 %i.hw, %i.hu
  %i.ic = add nsw i32 %i.ib, %i.hz
  %i.id = mul nsw i32 %i.ic, %i.gt
  %i.ie = add nsw i32 %i.id, %i.ia
  %i.if = sitofp i32 %i.ie to float
  %i.ig = fmul nnan float %i.if, f0x33808081
  %i.ih = fcmp oge float %i.ig, 5.000000e-01
  %i.ii = zext i1 %i.ih to i32
  br label %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i

_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i: ; preds = %bb.q, %bb.p
  %.0.i.i = phi i32 [ %i.ii, %bb.q ], [ 0, %bb.p ] ; 2 uses
  %i.ij = shl nuw i32 %.0.i.i, %.033.i.i
  %i.ik = or i32 %i.ij, %.02631.i.i               ; 2 uses
  %i.il = add nuw nsw i32 %.0.i.i, %.02532.i.i    ; 2 uses
  %i.im = add nuw nsw i32 %.033.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.im, %3
  br i1 %exitcond.not.i.i, label %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i, label %bb.l, !llvm.loop !2

_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i: ; preds = %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i
  %i.in = shl i32 %i.il, 16
  %i.io = or i32 %i.in, %i.ik
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.056.i
  store i32 %i.io, ptr %i.ip, align 4, !tbaa !21
  %i.iq = add nuw nsw i64 %.056.i, 1              ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %i.iq, 9
  br i1 %exitcond.not.i104, label %_ZN7meshoptL17rasterizeOpacity1ILi2EEEvPhmiPKfS3_S3_RKNS_7TextureE.exit, label %bb.k, !llvm.loop !40

_ZN7meshoptL17rasterizeOpacity1ILi2EEEvPhmiPKfS3_S3_RKNS_7TextureE.exit: ; preds = %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i
  %i.ir = shl i64 %1, 2                           ; 2 uses
  %i.is = uitofp nneg i32 %3 to float
  %i.it = lshr i64 %i.ir, 3
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 %i.it ; 5 uses
  %.promoted.i = load i8, ptr %i.iu, align 1, !tbaa !24
  %i.iv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !23
  %i.ix = load i32, ptr %i.e, align 16, !tbaa !21
  %i.iy = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.iz = load i32, ptr %i.iy, align 8, !tbaa !21
  %i.ja = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !21
  %i.jc = fadd float %i.ej, %i.iw
  %i.jd = fadd float %i.el, %i.jc
  %i.je = ashr i32 %i.ix, 16
  %i.jf = ashr i32 %i.iz, 16                      ; 2 uses
  %i.jg = add nsw i32 %i.jf, %i.je
  %i.jh = ashr i32 %i.jb, 16
  %i.ji = add nsw i32 %i.jg, %i.jh
  %i.jj = sitofp i32 %i.ji to float
  %i.jk = trunc i64 %i.ir to i8
  %i.jl = and i8 %i.jk, 4                         ; 4 uses
  %i.jm = fdiv nnan float 1.000000e+00, %i.is     ; 4 uses
  %i.jn = extractelement <2 x float> %i.dn, i64 0
  %i.jo = fadd float %i.jn, %i.dy
  %i.jp = fadd float %i.do, %i.ea
  %i.jq = fadd float %i.eg, %i.ed                 ; 2 uses
  %i.jr = insertelement <4 x float> poison, float %i.jo, i64 0
  %i.js = insertelement <4 x float> %i.jr, float %i.jp, i64 1
  %i.jt = insertelement <4 x float> %i.js, float %i.jm, i64 2
  %i.ju = insertelement <4 x float> %i.jt, float %i.jq, i64 3
  %i.jv = fadd <4 x float> %i.ju, %i.dx
  %i.jw = insertelement <4 x float> <float f0x3EAAAAAB, float f0x3EAAAAAB, float poison, float f0x3EAAAAAB>, float %i.jj, i64 2
  %i.jx = fmul <4 x float> %i.jv, %i.jw           ; 4 uses
  %i.jy = extractelement <4 x float> %i.jx, i64 0
  %i.jz = extractelement <4 x float> %i.jx, i64 1
  %i.ka = call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.jy, float noundef %i.jz)
  %i.kb = extractelement <4 x float> %i.jx, i64 2
  %i.kc = fmul float %i.kb, 2.300000e-01
  %i.kd = call float @llvm.fmuladd.f32(float %i.ka, float 2.200000e-01, float %i.kc)
  %i.ke = call float @llvm.fmuladd.f32(float %i.jd, float 3.000000e-02, float %i.kd)
  %i.kf = fcmp oge float %i.ke, 5.000000e-01
  %i.kg = zext i1 %i.kf to i8
  %i.kh = shl nuw nsw i8 %i.kg, %i.jl
  %i.ki = or i8 %i.kh, %.promoted.i               ; 2 uses
  store i8 %i.ki, ptr %i.iu, align 1, !tbaa !24
  %i.kj = fadd float %i.eh, %i.ef                 ; 2 uses
  %i.kk = fadd float %i.ea, %i.kj
  %i.kl = fmul float %i.kk, f0x3EAAAAAB
  %i.km = extractelement <4 x float> %i.jx, i64 3
  %i.kn = call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.km, float noundef %i.kl)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.kp = load i32, ptr %i.ko, align 16, !tbaa !21
  %i.kq = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !21
  %i.ks = fadd float %i.ek, %i.el                 ; 2 uses
  %i.kt = fadd float %i.ej, %i.ks
  %i.ku = ashr i32 %i.kp, 16                      ; 2 uses
  %i.kv = ashr i32 %i.kr, 16                      ; 2 uses
  %i.kw = add nsw i32 %i.ku, %i.jf
  %i.kx = add nsw i32 %i.kw, %i.kv
  %i.ky = sitofp i32 %i.kx to float
  %i.kz = fmul float %i.jm, %i.ky
  %i.la = fmul float %i.kz, 2.300000e-01
  %i.lb = call float @llvm.fmuladd.f32(float %i.kn, float 2.200000e-01, float %i.la)
  %i.lc = call float @llvm.fmuladd.f32(float %i.kt, float 3.000000e-02, float %i.lb)
  %i.ld = fcmp oge float %i.lc, 5.000000e-01
  %i.le = zext i1 %i.ld to i8
  %i.lf = or disjoint i8 %i.jl, 1
  %i.lg = shl nuw nsw i8 %i.le, %i.lf
  %i.lh = or i8 %i.lg, %i.ki                      ; 2 uses
  store i8 %i.lh, ptr %i.iu, align 1, !tbaa !24
  %i.li = load float, ptr %5, align 4, !tbaa !23
  %i.lj = fadd float %i.dy, %i.li
  %i.lk = fadd float %i.ed, %i.lj
  %i.ll = fmul float %i.lk, f0x3EAAAAAB
  %i.lm = load float, ptr %i.de, align 4, !tbaa !23
  %i.ln = fadd float %i.ea, %i.lm
  %i.lo = fadd float %i.ef, %i.ln
  %i.lp = fmul float %i.lo, f0x3EAAAAAB
  %i.lq = call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.ll, float noundef %i.lp)
  %i.lr = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ls = load float, ptr %i.lr, align 4, !tbaa !23
end_hunk_0
begin_hunk_1_@_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE:bb.a
  %i.am = shl nuw i32 %i.al, %.033.i
  %i.an = or i32 %i.am, %.02631.i                 ; 2 uses
  %i.ao = add nuw nsw i32 %.02532.i, %i.al        ; 2 uses
  %i.ap = add nuw nsw i32 %.033.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ap, %3
  br i1 %exitcond.not.i, label %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit, label %bb.d, !llvm.loop !2

_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit: ; preds = %bb.d
  %i.aq = fsub float %i.m, %i.k
  %i.ar = fmul float %i.ac, %i.aq
  %i.as = fsub float %i.v, %i.s
  %i.at = fmul float %i.ac, %i.as
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit
  %.033.i90 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.bc, %bb.e ] ; 2 uses
  %.02532.i91 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.bb, %bb.e ]
  %.02631.i92 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.ba, %bb.e ]
  %.02730.i93 = phi float [ %i.s, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.av, %bb.e ]
  %.02829.i94 = phi float [ %i.k, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit ], [ %i.au, %bb.e ]
  %i.au = fadd float %i.ar, %.02829.i94           ; 2 uses
  %i.av = fadd float %i.at, %.02730.i93           ; 2 uses
  %i.aw = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.au, float noundef %i.av)
  %i.ax = fcmp oge float %i.aw, 5.000000e-01
  %i.ay = zext i1 %i.ax to i32                    ; 2 uses
  %i.az = shl nuw i32 %i.ay, %.033.i90
  %i.ba = or i32 %i.az, %.02631.i92               ; 2 uses
  %i.bb = add nuw nsw i32 %.02532.i91, %i.ay      ; 2 uses
  %i.bc = add nuw nsw i32 %.033.i90, 1            ; 2 uses
  %exitcond.not.i95 = icmp eq i32 %i.bc, %3
  br i1 %exitcond.not.i95, label %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96, label %bb.e, !llvm.loop !2

_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96: ; preds = %bb.e
  %i.bd = fsub float %i.j, %i.m
  %i.be = fmul float %i.ac, %i.bd
  %i.bf = fsub float %i.q, %i.v
  %i.bg = fmul float %i.ac, %i.bf
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96
  %.033.i97 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bp, %bb.f ] ; 2 uses
  %.02532.i98 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bo, %bb.f ]
  %.02631.i99 = phi i32 [ 0, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bn, %bb.f ]
  %.02730.i100 = phi float [ %i.v, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bi, %bb.f ]
  %.02829.i101 = phi float [ %i.m, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit96 ], [ %i.bh, %bb.f ]
  %i.bh = fadd float %i.be, %.02829.i101          ; 2 uses
  %i.bi = fadd float %i.bg, %.02730.i100          ; 2 uses
  %i.bj = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.bh, float noundef %i.bi)
  %i.bk = fcmp oge float %i.bj, 5.000000e-01
  %i.bl = zext i1 %i.bk to i32                    ; 2 uses
  %i.bm = shl nuw i32 %i.bl, %.033.i97
  %i.bn = or i32 %i.bm, %.02631.i99               ; 2 uses
  %i.bo = add nuw nsw i32 %.02532.i98, %i.bl      ; 2 uses
  %i.bp = add nuw nsw i32 %.033.i97, 1            ; 2 uses
  %exitcond.not.i102 = icmp eq i32 %i.bp, %3
  br i1 %exitcond.not.i102, label %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103, label %bb.f, !llvm.loop !2

_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103: ; preds = %bb.f
  %i.bq = shl i32 %i.ao, 16
  %i.br = or i32 %i.bq, %i.an
  %i.bs = shl i32 %i.bb, 16
  %i.bt = or i32 %i.bs, %i.ba
  %i.bu = shl i32 %i.bo, 16
  %i.bv = or i32 %i.bu, %i.bn
  br label %bb.g

bb.g:                                             ; preds = %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103, %bb.b
  %.087 = phi i32 [ %i.br, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103 ], [ 0, %bb.b ] ; 2 uses
  %.086 = phi i32 [ %i.bt, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103 ], [ 0, %bb.b ] ; 2 uses
  %.0 = phi i32 [ %i.bv, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit103 ], [ 0, %bb.b ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !23 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bz = load float, ptr %i.by, align 4, !tbaa !23 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !23 ; 3 uses
  %i.cc = fadd float %i.bx, %i.bz
  %i.cd = fadd float %i.cc, %i.cb                 ; 2 uses
  %i.ce = fmul float %i.y, 6.400000e-01
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.cd, float 1.200000e-01, float %i.ce)
  %.not.i = icmp ne i32 %3, 0                     ; 2 uses
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cg = sitofp i32 %3 to float
  %i.ch = fdiv nnan float 1.000000e+00, %i.cg
  %i.ci = ashr i32 %.087, 16
  %i.cj = ashr i32 %.086, 16
  %i.ck = add nsw i32 %i.cj, %i.ci
  %i.cl = ashr i32 %.0, 16
  %i.cm = add nsw i32 %i.ck, %i.cl
  %i.cn = sitofp i32 %i.cm to float
  %i.co = fmul float %i.ch, %i.cn
  %i.cp = fmul float %i.co, 2.300000e-01
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.y, float 2.200000e-01, float %i.cp)
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cd, float 3.000000e-02, float %i.cq)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi float [ %i.cr, %bb.h ], [ %i.cf, %bb.g ]
  %i.cs = fcmp olt float %i.bx, 5.000000e-01
  %i.ct = fcmp olt float %i.bz, 5.000000e-01
  %i.cu = and i1 %i.cs, %i.ct
  %i.cv = fcmp olt float %i.cb, 5.000000e-01
  %i.cw = and i1 %i.cu, %i.cv
  %i.cx = fcmp olt float %i.y, 5.000000e-01
  %i.cy = and i1 %i.cx, %i.cw
  %i.cz = fcmp ogt float %i.bx, 5.000000e-01
  %i.da = fcmp ogt float %i.bz, 5.000000e-01
  %i.db = and i1 %i.cz, %i.da
  %i.dc = fcmp ogt float %i.cb, 5.000000e-01
  %i.dd = and i1 %i.db, %i.dc
  %i.de = fcmp ogt float %i.y, 5.000000e-01
  %i.df = and i1 %i.de, %i.dd                     ; 3 uses
  %i.dg = zext i1 %i.df to i8
  %i.dh = fcmp oge float %.0.i, 5.000000e-01
  %i.di = select i1 %i.dh, i8 3, i8 2             ; 2 uses
  %i.dj = or i1 %i.cy, %i.df                      ; 2 uses
  %i.dk = select i1 %i.dj, i8 %i.dg, i8 %i.di     ; 2 uses
  %brmerge.not.i = and i1 %.not.i, %i.dj
  br i1 %brmerge.not.i, label %bb.j, label %_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit

bb.j:                                             ; preds = %bb.i
  %notmask.i = shl nsw i32 -1, %3
  %i.dl = xor i32 %notmask.i, -1
  %i.dm = select i1 %i.df, i32 %i.dl, i32 0       ; 3 uses
  %i.dn = and i32 %.087, 65535
  %i.do = icmp eq i32 %i.dn, %i.dm
  %i.dp = and i32 %.086, 65535
  %i.dq = icmp eq i32 %i.dp, %i.dm
  %i.dr = and i1 %i.do, %i.dq
  %i.ds = and i32 %.0, 65535
  %i.dt = icmp eq i32 %i.ds, %i.dm
  %i.du = and i1 %i.dt, %i.dr
  %i.dv = select i1 %i.du, i8 %i.dk, i8 %i.di
  br label %_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit

_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit: ; preds = %bb.i, %bb.j
  %.049.i = phi i8 [ %i.dv, %bb.j ], [ %i.dk, %bb.i ]
  %.tr.i = trunc i64 %1 to i8
  %i.dw = shl i8 %.tr.i, 1
  %i.dx = and i8 %i.dw, 6
  %i.dy = shl nuw i8 %.049.i, %i.dx
  %i.dz = lshr i64 %1, 2
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 %i.dz ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !24
  %i.ec = or i8 %i.dy, %i.eb
  store i8 %i.ec, ptr %i.ea, align 1, !tbaa !24
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  %i.ed = icmp eq i32 %2, 1
  %i.ee = icmp sgt i32 %3, 0
  %or.cond = and i1 %i.ed, %i.ee
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  br i1 %or.cond, label %bb.l, label %bb.v

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.ei = load float, ptr %4, align 4, !tbaa !23  ; 2 uses
  %i.ej = load float, ptr %5, align 4, !tbaa !23  ; 2 uses
  %i.ek = fadd float %i.ei, %i.ej
  %i.el = fmul float %i.ek, 5.000000e-01          ; 2 uses
  store float %i.el, ptr %i.a, align 4, !tbaa !23
  %i.em = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.en = load float, ptr %i.ef, align 4, !tbaa !23 ; 2 uses
  %i.eo = load float, ptr %i.eg, align 4, !tbaa !23 ; 2 uses
  %i.ep = fadd float %i.en, %i.eo
  %i.eq = fmul float %i.ep, 5.000000e-01          ; 2 uses
  store float %i.eq, ptr %i.em, align 4, !tbaa !23
  %i.er = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.es = load float, ptr %6, align 4, !tbaa !23  ; 2 uses
  %i.et = fadd float %i.ej, %i.es
  %i.eu = fmul float %i.et, 5.000000e-01          ; 2 uses
  store float %i.eu, ptr %i.b, align 4, !tbaa !23
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ew = load float, ptr %i.eh, align 4, !tbaa !23 ; 2 uses
  %i.ex = fadd float %i.eo, %i.ew
  %i.ey = fmul float %i.ex, 5.000000e-01          ; 2 uses
  store float %i.ey, ptr %i.ev, align 4, !tbaa !23
  %i.ez = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.fa = fadd float %i.ei, %i.es
  %i.fb = fmul float %i.fa, 5.000000e-01          ; 2 uses
  store float %i.fb, ptr %i.c, align 4, !tbaa !23
  %i.fc = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.fd = fadd float %i.en, %i.ew
  %i.fe = fmul float %i.fd, 5.000000e-01          ; 2 uses
  store float %i.fe, ptr %i.fc, align 4, !tbaa !23
  %i.ff = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.fg = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.el, float noundef %i.eq)
  store float %i.fg, ptr %i.er, align 4, !tbaa !23
  %i.fh = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.eu, float noundef %i.ey)
  store float %i.fh, ptr %i.ez, align 4, !tbaa !23
  %i.fi = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.fb, float noundef %i.fe)
  store float %i.fi, ptr %i.ff, align 4, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  store ptr %4, ptr %i.d, align 16, !tbaa !33
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.a, ptr %i.fj, align 8, !tbaa !33
  %i.fk = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %5, ptr %i.fk, align 16, !tbaa !33
  %i.fl = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.b, ptr %i.fl, align 8, !tbaa !33
  %i.fm = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %6, ptr %i.fm, align 16, !tbaa !33
  %i.fn = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.c, ptr %i.fn, align 8, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(36) %i.e, i8 0, i64 36, i1 false)
  %i.fo = add nuw nsw i32 %3, 1
  %i.fp = uitofp nneg i32 %i.fo to float
  %i.fq = fdiv nnan float 1.000000e+00, %i.fp
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.fs = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.ft = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fu = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fv = load <2 x float>, ptr %i.fr, align 8, !tbaa !23
  %i.fw = load <2 x i32>, ptr %i.fs, align 8      ; 2 uses
  %i.fx = load i64, ptr %i.ft, align 8            ; 2 uses
  %i.fy = load i64, ptr %i.fu, align 8            ; 2 uses
  %i.fz = load ptr, ptr %7, align 8
  %i.ga = insertelement <2 x float> poison, float %i.fq, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.m

.preheader.i:                                     ; preds = %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i
  %i.gc = and i64 %1, 4611686018427387903
  %i.gd = uitofp nneg i32 %3 to float
  %i.ge = fdiv nnan float 1.000000e+00, %i.gd
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 %i.gc ; 2 uses
  %.promoted.i = load i8, ptr %i.gf, align 1, !tbaa !24
  %notmask.i.i = shl nsw i32 -1, %3
  %i.gg = xor i32 %notmask.i.i, -1
  br label %bb.t

bb.m:                                             ; preds = %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i, %bb.l
  %.056.i = phi i64 [ 0, %bb.l ], [ %i.js, %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [2 x i8], ptr @_ZZN7meshoptL17rasterizeOpacity1ILi4EEEvPhmiPKfS3_S3_RKNS_7TextureEE5edges, i64 %.056.i ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 2, !tbaa !24
  %i.gj = zext i8 %i.gi to i64
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.gj
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !33
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 1
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !24
  %i.go = zext i8 %i.gn to i64
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.go
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !33
  %i.gr = load <2 x float>, ptr %i.gl, align 4, !tbaa !23 ; 2 uses
  %i.gs = load <2 x float>, ptr %i.gq, align 4, !tbaa !23
  %i.gt = fsub <2 x float> %i.gs, %i.gr
  %i.gu = fmul <2 x float> %i.gb, %i.gt
  br label %bb.n

bb.n:                                             ; preds = %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i, %bb.m
  %.033.i.i = phi i32 [ 0, %bb.m ], [ %i.jo, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i ] ; 2 uses
  %.02532.i.i = phi i32 [ 0, %bb.m ], [ %i.jn, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i ]
  %.02631.i.i = phi i32 [ 0, %bb.m ], [ %i.jm, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i ]
  %i.gv = phi <2 x float> [ %i.gr, %bb.m ], [ %i.gw, %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i ]
  %i.gw = fadd <2 x float> %i.gu, %i.gv           ; 3 uses
  %i.gx = extractelement <2 x float> %i.gw, i64 0 ; 4 uses
  %i.gy = fadd float %i.gx, -5.000000e-01
  %i.gz = call float @llvm.fabs.f32(float %i.gy)
  %i.ha = fcmp ogt float %i.gz, 5.000000e-01
  br i1 %i.ha, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.hb = call float @llvm.floor.f32(float %i.gx)
  %i.hc = fsub float %i.gx, %i.hb
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.hd = phi float [ %i.hc, %bb.o ], [ %i.gx, %bb.n ]
  %i.he = extractelement <2 x float> %i.gw, i64 1 ; 4 uses
  %i.hf = fadd float %i.he, -5.000000e-01
  %i.hg = call float @llvm.fabs.f32(float %i.hf)
  %i.hh = fcmp ogt float %i.hg, 5.000000e-01
  br i1 %i.hh, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.hi = call float @llvm.floor.f32(float %i.he)
  %i.hj = fsub float %i.he, %i.hi
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.hk = phi float [ %i.hj, %bb.q ], [ %i.he, %bb.p ]
  %i.hl = insertelement <2 x float> poison, float %i.hd, i64 0
  %i.hm = insertelement <2 x float> %i.hl, float %i.hk, i64 1
  %i.hn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hm, <2 x float> %i.fv, <2 x float> splat (float -1.275000e+02))
  %i.ho = fptosi <2 x float> %i.hn to <2 x i32>
  %i.hp = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.ho, <2 x i32> zeroinitializer) ; 3 uses
  %i.hq = lshr <2 x i32> %i.hp, splat (i32 8)     ; 4 uses
  %i.hr = icmp ult <2 x i32> %i.hq, %i.fw         ; 2 uses
  %i.hs = extractelement <2 x i1> %i.hr, i64 0
  %i.ht = extractelement <2 x i1> %i.hr, i64 1
  %or.cond112 = select i1 %i.hs, i1 %i.ht, i1 false
  br i1 %or.cond112, label %bb.s, label %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i

bb.s:                                             ; preds = %bb.r
  %i.hu = extractelement <2 x i32> %i.hp, i64 1
  %i.hv = and i32 %i.hu, 255
  %i.hw = extractelement <2 x i32> %i.hp, i64 0
  %i.hx = and i32 %i.hw, 255                      ; 2 uses
  %i.hy = extractelement <2 x i32> %i.hq, i64 1
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = mul i64 %i.fx, %i.hz
  %i.ib = extractelement <2 x i32> %i.hq, i64 0
  %i.ic = zext nneg i32 %i.ib to i64
  %i.id = mul i64 %i.fy, %i.ic
  %i.ie = add nuw nsw <2 x i32> %i.hq, splat (i32 1)
  %i.if = icmp slt <2 x i32> %i.ie, %i.fw         ; 2 uses
  %i.ig = extractelement <2 x i1> %i.if, i64 0
  %spec.select.i.i = select i1 %i.ig, i64 %i.fy, i64 0
  %i.ih = extractelement <2 x i1> %i.if, i64 1
  %spec.select63.i.i = select i1 %i.ih, i64 %i.fx, i64 0 ; 2 uses
  %i.ii = getelementptr i8, ptr %i.fz, i64 %i.id
  %i.ij = getelementptr i8, ptr %i.ii, i64 %i.ia  ; 3 uses
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !24
  %i.il = getelementptr i8, ptr %i.ij, i64 %spec.select.i.i ; 2 uses
  %i.im = load i8, ptr %i.il, align 1, !tbaa !24
  %i.in = getelementptr i8, ptr %i.ij, i64 %spec.select63.i.i
  %i.io = load i8, ptr %i.in, align 1, !tbaa !24
  %i.ip = getelementptr i8, ptr %i.il, i64 %spec.select63.i.i
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !24
  %i.ir = zext i8 %i.ik to i32                    ; 2 uses
  %i.is = shl nuw nsw i32 %i.ir, 8
  %i.it = zext i8 %i.im to i32
  %i.iu = sub nsw i32 %i.it, %i.ir
  %i.iv = mul nsw i32 %i.iu, %i.hx
  %i.iw = add nsw i32 %i.iv, %i.is                ; 2 uses
  %i.ix = zext i8 %i.io to i32                    ; 2 uses
  %i.iy = shl nuw nsw i32 %i.ix, 8
  %i.iz = zext i8 %i.iq to i32
  %i.ja = sub nsw i32 %i.iz, %i.ix
  %i.jb = mul nsw i32 %i.ja, %i.hx
  %i.jc = shl nsw i32 %i.iw, 8
  %i.jd = sub nsw i32 %i.iy, %i.iw
  %i.je = add nsw i32 %i.jd, %i.jb
  %i.jf = mul nsw i32 %i.je, %i.hv
  %i.jg = add nsw i32 %i.jf, %i.jc
  %i.jh = sitofp i32 %i.jg to float
  %i.ji = fmul nnan float %i.jh, f0x33808081
  %i.jj = fcmp oge float %i.ji, 5.000000e-01
  %i.jk = zext i1 %i.jj to i32
  br label %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i

_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i: ; preds = %bb.s, %bb.r
  %.0.i.i = phi i32 [ %i.jk, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.jl = shl nuw i32 %.0.i.i, %.033.i.i
  %i.jm = or i32 %i.jl, %.02631.i.i               ; 2 uses
  %i.jn = add nuw nsw i32 %.0.i.i, %.02532.i.i    ; 2 uses
  %i.jo = add nuw nsw i32 %.033.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.jo, %3
  br i1 %exitcond.not.i.i, label %_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i, label %bb.n, !llvm.loop !2

_ZN7meshoptL13rasterizeEdgeEffffiRKNS_7TextureE.exit.i: ; preds = %_ZN7meshoptL13sampleTextureERKNS_7TextureEff.exit.i
  %i.jp = shl i32 %i.jn, 16
  %i.jq = or i32 %i.jp, %i.jm
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.056.i
  store i32 %i.jq, ptr %i.jr, align 4, !tbaa !21
  %i.js = add nuw nsw i64 %.056.i, 1              ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %i.js, 9
  br i1 %exitcond.not.i104, label %.preheader.i, label %bb.m, !llvm.loop !41

bb.t:                                             ; preds = %_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit.i, %.preheader.i
  %.05357.i = phi i64 [ 0, %.preheader.i ], [ %i.nl, %_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit.i ] ; 3 uses
  %i.jt = phi i8 [ %.promoted.i, %.preheader.i ], [ %i.nk, %_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit.i ]
  %i.ju = getelementptr inbounds nuw [6 x i8], ptr @_ZZN7meshoptL17rasterizeOpacity1ILi4EEEvPhmiPKfS3_S3_RKNS_7TextureEE9triangles, i64 %.05357.i ; 6 uses
  %i.jv = load i8, ptr %i.ju, align 2, !tbaa !24
  %i.jw = zext i8 %i.jv to i64
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.jw
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !33 ; 3 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !24
  %i.kb = zext i8 %i.ka to i64
  %i.kc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.kb
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !33 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ju, i64 2
  %i.kf = load i8, ptr %i.ke, align 2, !tbaa !24
  %i.kg = zext i8 %i.kf to i64
  %i.kh = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.kg
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !33 ; 3 uses
  %i.kj = load float, ptr %i.jy, align 4, !tbaa !23
  %i.kk = load float, ptr %i.kd, align 4, !tbaa !23
  %i.kl = fadd float %i.kj, %i.kk
  %i.km = load float, ptr %i.ki, align 4, !tbaa !23
  %i.kn = fadd float %i.kl, %i.km
  %i.ko = fmul float %i.kn, f0x3EAAAAAB
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !23
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !23
  %i.kt = fadd float %i.kq, %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ki, i64 4
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !23
  %i.kw = fadd float %i.kt, %i.kv
  %i.kx = fmul float %i.kw, f0x3EAAAAAB
  %i.ky = call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull readonly align 8 dereferenceable(40) %7, float noundef %i.ko, float noundef %i.kx) ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jy, i64 8
  %i.la = load float, ptr %i.kz, align 4, !tbaa !23 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kd, i64 8
  %i.lc = load float, ptr %i.lb, align 4, !tbaa !23 ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ki, i64 8
  %i.le = load float, ptr %i.ld, align 4, !tbaa !23 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ju, i64 3
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !24
  %i.lh = zext i8 %i.lg to i64
  %i.li = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.lh
  %i.lj = load i32, ptr %i.li, align 4, !tbaa !21 ; 2 uses
  %i.lk = getelementptr inbounds nuw i8, ptr %i.ju, i64 4
  %i.ll = load i8, ptr %i.lk, align 2, !tbaa !24
  %i.lm = zext i8 %i.ll to i64
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.lm
  %i.lo = load i32, ptr %i.ln, align 4, !tbaa !21 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ju, i64 5
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !24
  %i.lr = zext i8 %i.lq to i64
  %i.ls = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.lr
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !21 ; 2 uses
  %i.lu = fadd float %i.la, %i.lc
  %i.lv = fadd float %i.lu, %i.le
  %i.lw = ashr i32 %i.lj, 16
  %i.lx = ashr i32 %i.lo, 16
  %i.ly = add nsw i32 %i.lx, %i.lw
  %i.lz = ashr i32 %i.lt, 16
  %i.ma = add nsw i32 %i.ly, %i.lz
  %i.mb = sitofp i32 %i.ma to float
  %i.mc = fmul float %i.ge, %i.mb
  %i.md = fmul float %i.mc, 2.300000e-01
  %i.me = call float @llvm.fmuladd.f32(float %i.ky, float 2.200000e-01, float %i.md)
  %i.mf = call float @llvm.fmuladd.f32(float %i.lv, float 3.000000e-02, float %i.me)
  %i.mg = fcmp olt float %i.la, 5.000000e-01
  %i.mh = fcmp olt float %i.lc, 5.000000e-01
  %i.mi = and i1 %i.mg, %i.mh
  %i.mj = fcmp olt float %i.le, 5.000000e-01
  %i.mk = and i1 %i.mi, %i.mj
  %i.ml = fcmp olt float %i.ky, 5.000000e-01
  %i.mm = and i1 %i.ml, %i.mk
  %i.mn = fcmp ogt float %i.la, 5.000000e-01
  %i.mo = fcmp ogt float %i.lc, 5.000000e-01
  %i.mp = and i1 %i.mn, %i.mo
  %i.mq = fcmp ogt float %i.le, 5.000000e-01
  %i.mr = and i1 %i.mp, %i.mq
  %i.ms = fcmp ogt float %i.ky, 5.000000e-01
  %i.mt = and i1 %i.ms, %i.mr                     ; 3 uses
  %i.mu = fcmp oge float %i.mf, 5.000000e-01
  %i.mv = select i1 %i.mu, i8 3, i8 2             ; 2 uses
  %i.mw = or i1 %i.mm, %i.mt
  br i1 %i.mw, label %bb.u, label %_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit.i

bb.u:                                             ; preds = %bb.t
  %i.mx = zext i1 %i.mt to i8
  %i.my = select i1 %i.mt, i32 %i.gg, i32 0       ; 3 uses
  %i.mz = and i32 %i.lj, 65535
  %i.na = icmp eq i32 %i.mz, %i.my
  %i.nb = and i32 %i.lo, 65535
  %i.nc = icmp eq i32 %i.nb, %i.my
  %i.nd = and i1 %i.na, %i.nc
  %i.ne = and i32 %i.lt, 65535
  %i.nf = icmp eq i32 %i.ne, %i.my
  %i.ng = and i1 %i.nd, %i.nf
  %i.nh = select i1 %i.ng, i8 %i.mx, i8 %i.mv
  br label %_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit.i

_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit.i: ; preds = %bb.u, %bb.t
  %.049.i.i = phi i8 [ %i.nh, %bb.u ], [ %i.mv, %bb.t ]
  %.tr.i.i = trunc nuw nsw i64 %.05357.i to i8
  %i.ni = shl nuw nsw i8 %.tr.i.i, 1
  %i.nj = shl nuw i8 %.049.i.i, %i.ni
  %i.nk = or i8 %i.nj, %i.jt                      ; 2 uses
  store i8 %i.nk, ptr %i.gf, align 1, !tbaa !24
  %i.nl = add nuw nsw i64 %.05357.i, 1            ; 2 uses
  %exitcond59.not.i = icmp eq i64 %i.nl, 4
  br i1 %exitcond59.not.i, label %_ZN7meshoptL17rasterizeOpacity1ILi4EEEvPhmiPKfS3_S3_RKNS_7TextureE.exit, label %bb.t, !llvm.loop !42

_ZN7meshoptL17rasterizeOpacity1ILi4EEEvPhmiPKfS3_S3_RKNS_7TextureE.exit: ; preds = %_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.w

bb.v:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.nm = load float, ptr %4, align 4, !tbaa !23  ; 2 uses
  %i.nn = load float, ptr %5, align 4, !tbaa !23  ; 2 uses
  %i.no = fadd float %i.nm, %i.nn
  %i.np = fmul float %i.no, 5.000000e-01          ; 2 uses
  store float %i.np, ptr %i.f, align 4, !tbaa !23
  %i.nq = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.nr = load float, ptr %i.ef, align 4, !tbaa !23 ; 2 uses
  %i.ns = load float, ptr %i.eg, align 4, !tbaa !23 ; 2 uses
  %i.nt = fadd float %i.nr, %i.ns
  %i.nu = fmul float %i.nt, 5.000000e-01          ; 2 uses
  store float %i.nu, ptr %i.nq, align 4, !tbaa !23
  %i.nv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %i.nw = load float, ptr %6, align 4, !tbaa !23  ; 2 uses
  %i.nx = fadd float %i.nn, %i.nw
  %i.ny = fmul float %i.nx, 5.000000e-01          ; 2 uses
  store float %i.ny, ptr %i.g, align 4, !tbaa !23
  %i.nz = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.oa = load float, ptr %i.eh, align 4, !tbaa !23 ; 2 uses
  %i.ob = fadd float %i.ns, %i.oa
  %i.oc = fmul float %i.ob, 5.000000e-01          ; 2 uses
  store float %i.oc, ptr %i.nz, align 4, !tbaa !23
  %i.od = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %i.oe = fadd float %i.nm, %i.nw
  %i.of = fmul float %i.oe, 5.000000e-01          ; 2 uses
  store float %i.of, ptr %i.h, align 4, !tbaa !23
  %i.og = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.oh = fadd float %i.nr, %i.oa
  %i.oi = fmul float %i.oh, 5.000000e-01          ; 2 uses
  store float %i.oi, ptr %i.og, align 4, !tbaa !23
  %i.oj = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ok = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull align 8 dereferenceable(40) %7, float noundef %i.np, float noundef %i.nu)
  store float %i.ok, ptr %i.nv, align 4, !tbaa !23
  %i.ol = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull align 8 dereferenceable(40) %7, float noundef %i.ny, float noundef %i.oc)
  store float %i.ol, ptr %i.od, align 4, !tbaa !23
  %i.om = tail call fastcc noundef float @_ZN7meshoptL13sampleTextureERKNS_7TextureEff(ptr noundef nonnull align 8 dereferenceable(40) %7, float noundef %i.of, float noundef %i.oi)
  store float %i.om, ptr %i.oj, align 4, !tbaa !23
  %i.on = shl i64 %1, 2                           ; 4 uses
  %i.oo = add nsw i32 %2, -1                      ; 4 uses
  call void @_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %i.on, i32 noundef %i.oo, i32 noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h, ptr noundef nonnull align 8 dereferenceable(40) %7)
  %i.op = or disjoint i64 %i.on, 1
  call void @_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %i.op, i32 noundef %i.oo, i32 noundef %3, ptr noundef nonnull %i.h, ptr noundef nonnull %i.g, ptr noundef nonnull %i.f, ptr noundef nonnull align 8 dereferenceable(40) %7)
  %i.oq = or disjoint i64 %i.on, 2
  call void @_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %i.oq, i32 noundef %i.oo, i32 noundef %3, ptr noundef nonnull %i.f, ptr noundef nonnull %5, ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(40) %7)
  %i.or = or disjoint i64 %i.on, 3
  call void @_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE(ptr noundef %0, i64 noundef %i.or, i32 noundef %i.oo, i32 noundef %3, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(40) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN7meshoptL17rasterizeOpacity1ILi4EEEvPhmiPKfS3_S3_RKNS_7TextureE.exit, %_ZN7meshoptL17rasterizeOpacity0ILi4EEEvPhmffffiiii.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local i64 @meshopt_opacityMapCompact(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, i64 noundef %4, ptr nofree noundef captures(none) %5, i64 noundef %6, i32 noundef %7) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.meshopt_Allocator, align 8   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %8, i8 0, i64 200, i1 false)
  %i.a = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !15
  %i.b = invoke noundef ptr %i.a(i64 noundef %1)
          to label %bb.b unwind label %bb.f, !inline_history !43 ; 3 uses

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 192 ; 2 uses
  store i64 1, ptr %i.c, align 8, !tbaa !18
  store ptr %i.b, ptr %8, align 8, !tbaa !19
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.b, ptr align 1 %0, i64 %1, i1 false)
  %i.d = lshr i64 %4, 2
  %i.e = add i64 %i.d, %4
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi i64 [ 1, %bb.b ], [ %i.g, %bb.c ]   ; 5 uses
  %i.f = icmp ult i64 %.0.i, %i.e
  %i.g = shl i64 %.0.i, 1
  br i1 %i.f, label %bb.c, label %_ZN7meshoptL12hashBuckets3Em.exit, !llvm.loop !0

_ZN7meshoptL12hashBuckets3Em.exit:                ; preds = %bb.c
  %i.h = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !15
  %i.i = icmp ugt i64 %.0.i, 4611686018427387903
  %i.j = shl i64 %.0.i, 2                         ; 2 uses
  %i.k = select i1 %i.i, i64 -1, i64 %i.j
  %i.l = invoke noundef ptr %i.h(i64 noundef %i.k)
          to label %bb.d unwind label %bb.f, !inline_history !1 ; 5 uses

bb.d:                                             ; preds = %_ZN7meshoptL12hashBuckets3Em.exit
  store i64 2, ptr %i.c, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !19
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.l, i8 -1, i64 %i.j, i1 false)
  %i.n = load ptr, ptr @_ZZN17meshopt_Allocator7storageEvE1s, align 8, !tbaa !15
  %i.o = icmp ugt i64 %4, 4611686018427387903
  %i.p = shl nuw i64 %4, 2
end_hunk_1
begin_hunk_2_@meshopt_opacityMapCompact:bb.a

_ZNK7meshopt9OMMHasher5equalEjj.exit.thread.i:    ; preds = %_ZNK7meshopt9OMMHasher5equalEjj.exit.i, %.lr.ph
  %i.ee = add i64 %.02212.i95, 1                  ; 3 uses
  %i.ef = add i64 %i.ee, %.02311.i96
  %i.eg = and i64 %i.ef, %i.x                     ; 3 uses
  %.not.i84 = icmp ule i64 %i.ee, %i.x
  tail call void @llvm.assume(i1 %.not.i84)
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !21 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, -1
  br i1 %i.ej, label %_ZN7meshoptL11hashLookup3IjNS_9OMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, label %.lr.ph

_ZN7meshoptL11hashLookup3IjNS_9OMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread: ; preds = %_ZNK7meshopt9OMMHasher5equalEjj.exit.thread.i, %_ZNK7meshopt9OMMHasher4hashEj.exit.i
  %.02311.i.lcssa94 = phi i64 [ %i.dr, %_ZNK7meshopt9OMMHasher4hashEj.exit.i ], [ %i.eg, %_ZNK7meshopt9OMMHasher5equalEjj.exit.thread.i ]
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.02311.i.lcssa94
  store i32 %i.bm, ptr %i.ek, align 4, !tbaa !21
  %i.el = add i64 %.06897, 1
  %i.em = add i64 %.06799, %i.as
  br label %select.unfold

select.unfold:                                    ; preds = %bb.k, %_ZNK7meshopt9OMMHasher5equalEjj.exit.i, %_ZN7meshoptL11hashLookup3IjNS_9OMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread, %bb.j, %bb.g, %bb.i
  %.sink = phi i32 [ %i.aw, %bb.j ], [ %.pr, %_ZNK7meshopt9OMMHasher5equalEjj.exit.i ], [ %i.aw, %bb.i ], [ %i.aw, %bb.g ], [ %i.bm, %_ZN7meshoptL11hashLookup3IjNS_9OMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %i.aw, %bb.k ]
  %.270 = phi i64 [ %.06897, %bb.j ], [ %.06897, %_ZNK7meshopt9OMMHasher5equalEjj.exit.i ], [ %.06897, %bb.i ], [ %.06897, %bb.g ], [ %i.el, %_ZN7meshoptL11hashLookup3IjNS_9OMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %.06897, %bb.k ] ; 2 uses
  %.2 = phi i64 [ %.06799, %bb.j ], [ %.06799, %_ZNK7meshopt9OMMHasher5equalEjj.exit.i ], [ %.06799, %bb.i ], [ %.06799, %bb.g ], [ %i.em, %_ZN7meshoptL11hashLookup3IjNS_9OMMHasherEEEPT_S3_mRKT0_RKS2_S8_.exit.thread ], [ %.06799, %bb.k ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.066101
  store i32 %.sink, ptr %i.en, align 4, !tbaa !21
  %i.eo = add nuw i64 %.066101, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.eo, %4
  br i1 %exitcond.not, label %.preheader, label %bb.g, !llvm.loop !47

.lr.ph.i85:                                       ; preds = %.preheader, %.lr.ph.i85.preheader.loopexit.unr-lcssa, %.lr.ph.i85.preheader.loopexit.epilog-lcssa
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !20
  %i.eq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !19
  invoke void %i.ep(ptr noundef %i.er)
          to label %.lr.ph.i85.1 unwind label %bb.m

.lr.ph.i85.1:                                     ; preds = %.lr.ph.i85
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !20
  %i.et = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !19
  invoke void %i.es(ptr noundef %i.eu)
          to label %.lr.ph.i85.2 unwind label %bb.m

.lr.ph.i85.2:                                     ; preds = %.lr.ph.i85.1
  %i.ev = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZZN17meshopt_Allocator7storageEvE1s, i64 8), align 8, !tbaa !20
  %i.ew = load ptr, ptr %8, align 8, !tbaa !19
  invoke void %i.ev(ptr noundef %i.ew)
          to label %_ZN17meshopt_AllocatorD2Ev.exit unwind label %bb.m

_ZN17meshopt_AllocatorD2Ev.exit:                  ; preds = %.lr.ph.i85.2
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  ret i64 %.068.lcssa

bb.m:                                             ; preds = %.lr.ph.i85.2, %.lr.ph.i85.1, %.lr.ph.i85
  %i.ex = landingpad { ptr, i32 }
          catch ptr null
  %i.ey = extractvalue { ptr, i32 } %i.ex, 0
  tail call void @__clang_call_terminate(ptr %i.ey) #16
  unreachable

.lr.ph105:                                        ; preds = %bb.p, %.lr.ph105.preheader.new
  %.0104 = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %i.fo, %bb.p ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph105.preheader.new ], [ %niter.next.1, %bb.p ]
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0104 ; 2 uses
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !21 ; 3 uses
  %i.fb = icmp slt i32 %i.fa, 0
  br i1 %i.fb, label %.lr.ph105.1, label %bb.n

bb.n:                                             ; preds = %.lr.ph105
  %i.fc = zext nneg i32 %i.fa to i64
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fc
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !21
  br label %.lr.ph105.1

.lr.ph105.1:                                      ; preds = %.lr.ph105, %bb.n
  %i.ff = phi i32 [ %i.fe, %bb.n ], [ %i.fa, %.lr.ph105 ]
  store i32 %i.ff, ptr %i.ez, align 4, !tbaa !21
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.0104
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !21 ; 3 uses
  %i.fj = icmp slt i32 %i.fi, 0
  br i1 %i.fj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph105.1
  %i.fk = zext nneg i32 %i.fi to i64
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.fk
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !21
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph105.1
  %i.fn = phi i32 [ %i.fm, %bb.o ], [ %i.fi, %.lr.ph105.1 ]
  store i32 %i.fn, ptr %i.fh, align 4, !tbaa !21
  %i.fo = add nuw i64 %.0104, 2                   ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i85.preheader.loopexit.unr-lcssa, label %.lr.ph105, !llvm.loop !48
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #15 ; 0 uses
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) #11

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.floor.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn nounwind }

!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{!0, !12}
!1 = distinct !{null}
!2 = distinct !{!2, !12}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"any pointer", !8, i64 0}
!14 = !{!"_ZTSN17meshopt_Allocator7StorageE", !13, i64 0, !13, i64 8}
!15 = !{!14, !13, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"_ZTS17meshopt_Allocator", !8, i64 0, !16, i64 192}
!18 = !{!17, !16, i64 192}
!19 = !{!13, !13, i64 0}
!20 = !{!14, !13, i64 8}
!21 = !{!9, !9, i64 0}
!22 = !{!"float", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{!8, !8, i64 0}
!25 = !{!"p1 omnipotent char", !13, i64 0}
!26 = !{!"_ZTSN7meshopt7TextureE", !25, i64 0, !16, i64 8, !16, i64 16, !9, i64 24, !9, i64 28, !22, i64 32, !22, i64 36}
!27 = !{!26, !25, i64 0}
!28 = !{!26, !16, i64 8}
!29 = !{!26, !16, i64 16}
!30 = !{!26, !9, i64 24}
!31 = !{!26, !9, i64 28}
!32 = !{!"p1 float", !13, i64 0}
!33 = !{!32, !32, i64 0}
!34 = distinct !{null}
!35 = distinct !{!35, !12}
!36 = !{!"_ZTSN7meshopt11TriangleOMME", !8, i64 0, !9, i64 24}
!37 = !{!36, !9, i64 24}
!38 = distinct !{!38, !12}
!39 = !{ptr @_ZN7meshoptL19rasterizeOpacityRecILi2EEEvPhmiiPKfS3_S3_RKNS_7TextureE, ptr @_ZN7meshoptL19rasterizeOpacityRecILi4EEEvPhmiiPKfS3_S3_RKNS_7TextureE}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = distinct !{!42, !12}
!43 = distinct !{null}
!44 = distinct !{null}
!45 = distinct !{!45, !12}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
end_hunk_2
