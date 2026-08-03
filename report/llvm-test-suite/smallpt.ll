inline.NumInlined: 132
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Sphere = type <{ double, %struct.Vec, %struct.Vec, %struct.Vec, i32, [4 x i8] }>
%struct.Vec = type { double, double, double }
%struct.Ray = type { %struct.Vec, %struct.Vec }

@spheres = dso_local local_unnamed_addr global [9 x %struct.Sphere] [%struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 1.000010e+05, double 4.080000e+01, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 2.500000e-01, double 2.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double -9.990100e+04, double 4.080000e+01, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 2.500000e-01, double 2.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 4.080000e+01, double 1.000000e+05 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 7.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 4.080000e+01, double -9.983000e+04 }, %struct.Vec zeroinitializer, %struct.Vec zeroinitializer, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double 1.000000e+05, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 7.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.000000e+05, %struct.Vec { double 5.000000e+01, double f0xC0F864E666666666, double 8.160000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double 7.500000e-01, double 7.500000e-01, double 7.500000e-01 }, i32 0, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.650000e+01, %struct.Vec { double 2.700000e+01, double 1.650000e+01, double 4.700000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double f0x3FEFF7CED916872B, double f0x3FEFF7CED916872B, double f0x3FEFF7CED916872B }, i32 1, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 1.650000e+01, %struct.Vec { double 7.300000e+01, double 1.650000e+01, double 7.800000e+01 }, %struct.Vec zeroinitializer, %struct.Vec { double f0x3FEFF7CED916872B, double f0x3FEFF7CED916872B, double f0x3FEFF7CED916872B }, i32 2, [4 x i8] zeroinitializer }>, %struct.Sphere <{ double 6.000000e+02, %struct.Vec { double 5.000000e+01, double 6.813300e+02, double 8.160000e+01 }, %struct.Vec { double 1.200000e+01, double 1.200000e+01, double 1.200000e+01 }, %struct.Vec zeroinitializer, i32 0, [4 x i8] zeroinitializer }>], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [20 x i8] c"Rendering (%d spp)\0A\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: nounwind uwtable
define dso_local void @_Z8radianceRK3RayiPt(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.Vec) align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.Vec, align 16               ; 5 uses
  %5 = alloca %struct.Ray, align 8                ; 8 uses
  %6 = alloca %struct.Vec, align 16               ; 5 uses
  %7 = alloca %struct.Ray, align 8                ; 8 uses
  %8 = alloca %struct.Ray, align 8                ; 11 uses
  %9 = alloca %struct.Vec, align 16               ; 5 uses
  %10 = alloca %struct.Vec, align 16              ; 5 uses
  %11 = alloca %struct.Vec, align 16              ; 5 uses
  %12 = alloca %struct.Ray, align 8               ; 9 uses
  %13 = alloca %struct.Vec, align 16              ; 5 uses
  %14 = alloca %struct.Vec, align 16              ; 5 uses
  %15 = alloca %struct.Ray, align 8               ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.f = load double, ptr %i.b, align 8, !tbaa !8, !noalias !11 ; 10 uses
  %i.g = load double, ptr %i.a, align 8, !tbaa !14, !noalias !11 ; 10 uses
  %16 = load double, ptr %1, align 8, !tbaa !15, !noalias !11 ; 10 uses
  %i.h = load double, ptr %i.d, align 8, !tbaa !14 ; 11 uses
  %i.i = load double, ptr %i.c, align 8, !tbaa !15 ; 11 uses
  %i.j = load double, ptr %i.e, align 8, !tbaa !8 ; 11 uses
  %i.k = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 712), align 8, !tbaa !15, !noalias !11
  %i.l = fsub double %i.k, %16                    ; 3 uses
  %i.m = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 720), align 16, !tbaa !14, !noalias !11
  %i.n = fsub double %i.m, %i.g                   ; 3 uses
  %i.o = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 728), align 8, !tbaa !8, !noalias !11
  %i.p = fsub double %i.o, %i.f                   ; 3 uses
  %i.q = fmul double %i.n, %i.h
  %i.r = tail call double @llvm.fmuladd.f64(double %i.l, double %i.i, double %i.q)
  %i.s = tail call noundef double @llvm.fmuladd.f64(double %i.p, double %i.j, double %i.r) ; 4 uses
  %i.t = fmul double %i.n, %i.n
  %i.u = tail call double @llvm.fmuladd.f64(double %i.l, double %i.l, double %i.t)
  %i.v = tail call noundef double @llvm.fmuladd.f64(double %i.p, double %i.p, double %i.u)
  %i.w = fneg double %i.v
  %i.x = tail call double @llvm.fmuladd.f64(double %i.s, double %i.s, double %i.w)
  %i.y = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 704), align 16, !tbaa !16 ; 2 uses
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.y, double %i.x) ; 2 uses
  %i.aa = fcmp olt double %i.z, 0.000000e+00
  br i1 %i.aa, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = tail call double @sqrt(double noundef %i.z) #10, !tbaa !4 ; 2 uses
  %i.ac = fsub double %i.s, %i.ab                 ; 2 uses
  %i.ad = fcmp ogt double %i.ac, 1.000000e-04
  br i1 %i.ad, label %_ZNK6Sphere9intersectERK3Ray.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = fadd double %i.s, %i.ab                 ; 2 uses
  %i.af = fcmp ogt double %i.ae, 1.000000e-04
  br i1 %i.af, label %_ZNK6Sphere9intersectERK3Ray.exit.i, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i

_ZNK6Sphere9intersectERK3Ray.exit.i:              ; preds = %bb.c, %bb.b
  %.0.i.i = phi double [ %i.ac, %bb.b ], [ %i.ae, %bb.c ] ; 3 uses
  %i.ag = fcmp une double %.0.i.i, 0.000000e+00
  %i.ah = fcmp olt double %.0.i.i, 1.000000e+20
  %or.cond.i = and i1 %i.ag, %i.ah
  br i1 %or.cond.i, label %bb.d, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i

bb.d:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.i
  br label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i

_ZNK6Sphere9intersectERK3Ray.exit.thread.i:       ; preds = %bb.d, %_ZNK6Sphere9intersectERK3Ray.exit.i, %bb.c, %bb.a
  %.1330 = phi i32 [ 0, %bb.a ], [ 8, %bb.d ], [ 0, %_ZNK6Sphere9intersectERK3Ray.exit.i ], [ 0, %bb.c ] ; 3 uses
  %.1 = phi double [ 1.000000e+20, %bb.a ], [ %.0.i.i, %bb.d ], [ 1.000000e+20, %_ZNK6Sphere9intersectERK3Ray.exit.i ], [ 1.000000e+20, %bb.c ] ; 4 uses
  %i.ai = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 624), align 16, !tbaa !15, !noalias !11
  %i.aj = fsub double %i.ai, %16                  ; 3 uses
  %i.ak = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 632), align 8, !tbaa !14, !noalias !11
  %i.al = fsub double %i.ak, %i.g                 ; 3 uses
  %i.am = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 640), align 16, !tbaa !8, !noalias !11
  %i.an = fsub double %i.am, %i.f                 ; 3 uses
  %i.ao = fmul double %i.al, %i.h
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.i, double %i.ao)
  %i.aq = tail call noundef double @llvm.fmuladd.f64(double %i.an, double %i.j, double %i.ap) ; 4 uses
  %i.ar = fmul double %i.al, %i.al
  %i.as = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.aj, double %i.ar)
  %i.at = tail call noundef double @llvm.fmuladd.f64(double %i.an, double %i.an, double %i.as)
  %i.au = fneg double %i.at
  %i.av = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.aq, double %i.au)
  %i.aw = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 616), align 8, !tbaa !16 ; 2 uses
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.aw, double %i.av) ; 2 uses
  %i.ay = fcmp olt double %i.ax, 0.000000e+00
  br i1 %i.ay, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.thread.i
  %i.az = tail call double @sqrt(double noundef %i.ax) #10, !tbaa !4 ; 2 uses
  %i.ba = fsub double %i.aq, %i.az                ; 2 uses
  %i.bb = fcmp ogt double %i.ba, 1.000000e-04
  br i1 %i.bb, label %_ZNK6Sphere9intersectERK3Ray.exit.i.1, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bc = fadd double %i.aq, %i.az                ; 2 uses
  %i.bd = fcmp ogt double %i.bc, 1.000000e-04
  br i1 %i.bd, label %_ZNK6Sphere9intersectERK3Ray.exit.i.1, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.1

_ZNK6Sphere9intersectERK3Ray.exit.i.1:            ; preds = %bb.f, %bb.e
  %.0.i.i.1 = phi double [ %i.ba, %bb.e ], [ %i.bc, %bb.f ] ; 3 uses
  %i.be = fcmp une double %.0.i.i.1, 0.000000e+00
  %i.bf = fcmp olt double %.0.i.i.1, %.1
  %or.cond.i.1 = and i1 %i.be, %i.bf
  br i1 %or.cond.i.1, label %bb.g, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.1

bb.g:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.i.1
  br label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.1

_ZNK6Sphere9intersectERK3Ray.exit.thread.i.1:     ; preds = %bb.g, %_ZNK6Sphere9intersectERK3Ray.exit.i.1, %bb.f, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i
  %.1330.1 = phi i32 [ %.1330, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i ], [ 7, %bb.g ], [ %.1330, %_ZNK6Sphere9intersectERK3Ray.exit.i.1 ], [ %.1330, %bb.f ] ; 3 uses
  %.1.1 = phi double [ %.1, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i ], [ %.0.i.i.1, %bb.g ], [ %.1, %_ZNK6Sphere9intersectERK3Ray.exit.i.1 ], [ %.1, %bb.f ] ; 4 uses
  %i.bg = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 536), align 8, !tbaa !15, !noalias !11
  %i.bh = fsub double %i.bg, %16                  ; 3 uses
  %i.bi = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 544), align 16, !tbaa !14, !noalias !11
  %i.bj = fsub double %i.bi, %i.g                 ; 3 uses
  %i.bk = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 552), align 8, !tbaa !8, !noalias !11
  %i.bl = fsub double %i.bk, %i.f                 ; 3 uses
  %i.bm = fmul double %i.bj, %i.h
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.i, double %i.bm)
  %i.bo = tail call noundef double @llvm.fmuladd.f64(double %i.bl, double %i.j, double %i.bn) ; 4 uses
  %i.bp = fmul double %i.bj, %i.bj
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.bh, double %i.bp)
  %i.br = tail call noundef double @llvm.fmuladd.f64(double %i.bl, double %i.bl, double %i.bq)
  %i.bs = fneg double %i.br
  %i.bt = tail call double @llvm.fmuladd.f64(double %i.bo, double %i.bo, double %i.bs)
  %i.bu = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 528), align 16, !tbaa !16 ; 2 uses
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.bt) ; 2 uses
  %i.bw = fcmp olt double %i.bv, 0.000000e+00
  br i1 %i.bw, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.2, label %bb.h

bb.h:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.1
  %i.bx = tail call double @sqrt(double noundef %i.bv) #10, !tbaa !4 ; 2 uses
  %i.by = fsub double %i.bo, %i.bx                ; 2 uses
  %i.bz = fcmp ogt double %i.by, 1.000000e-04
  br i1 %i.bz, label %_ZNK6Sphere9intersectERK3Ray.exit.i.2, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ca = fadd double %i.bo, %i.bx                ; 2 uses
  %i.cb = fcmp ogt double %i.ca, 1.000000e-04
  br i1 %i.cb, label %_ZNK6Sphere9intersectERK3Ray.exit.i.2, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.2

_ZNK6Sphere9intersectERK3Ray.exit.i.2:            ; preds = %bb.i, %bb.h
  %.0.i.i.2 = phi double [ %i.by, %bb.h ], [ %i.ca, %bb.i ] ; 3 uses
  %i.cc = fcmp une double %.0.i.i.2, 0.000000e+00
  %i.cd = fcmp olt double %.0.i.i.2, %.1.1
  %or.cond.i.2 = and i1 %i.cc, %i.cd
  br i1 %or.cond.i.2, label %bb.j, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.2

bb.j:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.i.2
  br label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.2

_ZNK6Sphere9intersectERK3Ray.exit.thread.i.2:     ; preds = %bb.j, %_ZNK6Sphere9intersectERK3Ray.exit.i.2, %bb.i, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.1
  %.1330.2 = phi i32 [ %.1330.1, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.1 ], [ 6, %bb.j ], [ %.1330.1, %_ZNK6Sphere9intersectERK3Ray.exit.i.2 ], [ %.1330.1, %bb.i ] ; 3 uses
  %.1.2 = phi double [ %.1.1, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.1 ], [ %.0.i.i.2, %bb.j ], [ %.1.1, %_ZNK6Sphere9intersectERK3Ray.exit.i.2 ], [ %.1.1, %bb.i ] ; 4 uses
  %i.ce = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 448), align 16, !tbaa !15, !noalias !11
  %i.cf = fsub double %i.ce, %16                  ; 3 uses
  %i.cg = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 456), align 8, !tbaa !14, !noalias !11
  %i.ch = fsub double %i.cg, %i.g                 ; 3 uses
  %i.ci = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 464), align 16, !tbaa !8, !noalias !11
  %i.cj = fsub double %i.ci, %i.f                 ; 3 uses
  %i.ck = fmul double %i.ch, %i.h
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.i, double %i.ck)
  %i.cm = tail call noundef double @llvm.fmuladd.f64(double %i.cj, double %i.j, double %i.cl) ; 4 uses
  %i.cn = fmul double %i.ch, %i.ch
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cf, double %i.cf, double %i.cn)
  %i.cp = tail call noundef double @llvm.fmuladd.f64(double %i.cj, double %i.cj, double %i.co)
  %i.cq = fneg double %i.cp
  %i.cr = tail call double @llvm.fmuladd.f64(double %i.cm, double %i.cm, double %i.cq)
  %i.cs = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 440), align 8, !tbaa !16 ; 2 uses
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.cs, double %i.cs, double %i.cr) ; 2 uses
  %i.cu = fcmp olt double %i.ct, 0.000000e+00
  br i1 %i.cu, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.3, label %bb.k

bb.k:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.2
  %i.cv = tail call double @sqrt(double noundef %i.ct) #10, !tbaa !4 ; 2 uses
  %i.cw = fsub double %i.cm, %i.cv                ; 2 uses
  %i.cx = fcmp ogt double %i.cw, 1.000000e-04
  br i1 %i.cx, label %_ZNK6Sphere9intersectERK3Ray.exit.i.3, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cy = fadd double %i.cm, %i.cv                ; 2 uses
  %i.cz = fcmp ogt double %i.cy, 1.000000e-04
  br i1 %i.cz, label %_ZNK6Sphere9intersectERK3Ray.exit.i.3, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.3

_ZNK6Sphere9intersectERK3Ray.exit.i.3:            ; preds = %bb.l, %bb.k
  %.0.i.i.3 = phi double [ %i.cw, %bb.k ], [ %i.cy, %bb.l ] ; 3 uses
  %i.da = fcmp une double %.0.i.i.3, 0.000000e+00
  %i.db = fcmp olt double %.0.i.i.3, %.1.2
  %or.cond.i.3 = and i1 %i.da, %i.db
  br i1 %or.cond.i.3, label %bb.m, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.3

bb.m:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.i.3
  br label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.3

_ZNK6Sphere9intersectERK3Ray.exit.thread.i.3:     ; preds = %bb.m, %_ZNK6Sphere9intersectERK3Ray.exit.i.3, %bb.l, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.2
  %.1330.3 = phi i32 [ %.1330.2, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.2 ], [ 5, %bb.m ], [ %.1330.2, %_ZNK6Sphere9intersectERK3Ray.exit.i.3 ], [ %.1330.2, %bb.l ] ; 3 uses
  %.1.3 = phi double [ %.1.2, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.2 ], [ %.0.i.i.3, %bb.m ], [ %.1.2, %_ZNK6Sphere9intersectERK3Ray.exit.i.3 ], [ %.1.2, %bb.l ] ; 4 uses
  %i.dc = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 360), align 8, !tbaa !15, !noalias !11
  %i.dd = fsub double %i.dc, %16                  ; 3 uses
  %i.de = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 368), align 16, !tbaa !14, !noalias !11
  %i.df = fsub double %i.de, %i.g                 ; 3 uses
  %i.dg = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 376), align 8, !tbaa !8, !noalias !11
  %i.dh = fsub double %i.dg, %i.f                 ; 3 uses
  %i.di = fmul double %i.df, %i.h
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.i, double %i.di)
  %i.dk = tail call noundef double @llvm.fmuladd.f64(double %i.dh, double %i.j, double %i.dj) ; 4 uses
  %i.dl = fmul double %i.df, %i.df
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dd, double %i.dd, double %i.dl)
  %i.dn = tail call noundef double @llvm.fmuladd.f64(double %i.dh, double %i.dh, double %i.dm)
  %i.do = fneg double %i.dn
  %i.dp = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dk, double %i.do)
  %i.dq = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 352), align 16, !tbaa !16 ; 2 uses
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dq, double %i.dq, double %i.dp) ; 2 uses
  %i.ds = fcmp olt double %i.dr, 0.000000e+00
  br i1 %i.ds, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.4, label %bb.n

bb.n:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.3
  %i.dt = tail call double @sqrt(double noundef %i.dr) #10, !tbaa !4 ; 2 uses
  %i.du = fsub double %i.dk, %i.dt                ; 2 uses
  %i.dv = fcmp ogt double %i.du, 1.000000e-04
  br i1 %i.dv, label %_ZNK6Sphere9intersectERK3Ray.exit.i.4, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dw = fadd double %i.dk, %i.dt                ; 2 uses
  %i.dx = fcmp ogt double %i.dw, 1.000000e-04
  br i1 %i.dx, label %_ZNK6Sphere9intersectERK3Ray.exit.i.4, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.4

_ZNK6Sphere9intersectERK3Ray.exit.i.4:            ; preds = %bb.o, %bb.n
  %.0.i.i.4 = phi double [ %i.du, %bb.n ], [ %i.dw, %bb.o ] ; 3 uses
  %i.dy = fcmp une double %.0.i.i.4, 0.000000e+00
  %i.dz = fcmp olt double %.0.i.i.4, %.1.3
  %or.cond.i.4 = and i1 %i.dy, %i.dz
  br i1 %or.cond.i.4, label %bb.p, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.4

bb.p:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.i.4
  br label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.4

_ZNK6Sphere9intersectERK3Ray.exit.thread.i.4:     ; preds = %bb.p, %_ZNK6Sphere9intersectERK3Ray.exit.i.4, %bb.o, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.3
  %.1330.4 = phi i32 [ %.1330.3, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.3 ], [ 4, %bb.p ], [ %.1330.3, %_ZNK6Sphere9intersectERK3Ray.exit.i.4 ], [ %.1330.3, %bb.o ] ; 3 uses
  %.1.4 = phi double [ %.1.3, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.3 ], [ %.0.i.i.4, %bb.p ], [ %.1.3, %_ZNK6Sphere9intersectERK3Ray.exit.i.4 ], [ %.1.3, %bb.o ] ; 4 uses
  %i.ea = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 272), align 16, !tbaa !15, !noalias !11
  %i.eb = fsub double %i.ea, %16                  ; 3 uses
  %i.ec = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 280), align 8, !tbaa !14, !noalias !11
  %i.ed = fsub double %i.ec, %i.g                 ; 3 uses
  %i.ee = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 288), align 16, !tbaa !8, !noalias !11
  %i.ef = fsub double %i.ee, %i.f                 ; 3 uses
  %i.eg = fmul double %i.ed, %i.h
  %i.eh = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.i, double %i.eg)
  %i.ei = tail call noundef double @llvm.fmuladd.f64(double %i.ef, double %i.j, double %i.eh) ; 4 uses
  %i.ej = fmul double %i.ed, %i.ed
  %i.ek = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.eb, double %i.ej)
  %i.el = tail call noundef double @llvm.fmuladd.f64(double %i.ef, double %i.ef, double %i.ek)
  %i.em = fneg double %i.el
  %i.en = tail call double @llvm.fmuladd.f64(double %i.ei, double %i.ei, double %i.em)
  %i.eo = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 264), align 8, !tbaa !16 ; 2 uses
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.eo, double %i.eo, double %i.en) ; 2 uses
  %i.eq = fcmp olt double %i.ep, 0.000000e+00
  br i1 %i.eq, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.5, label %bb.q

bb.q:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.4
  %i.er = tail call double @sqrt(double noundef %i.ep) #10, !tbaa !4 ; 2 uses
  %i.es = fsub double %i.ei, %i.er                ; 2 uses
  %i.et = fcmp ogt double %i.es, 1.000000e-04
  br i1 %i.et, label %_ZNK6Sphere9intersectERK3Ray.exit.i.5, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eu = fadd double %i.ei, %i.er                ; 2 uses
  %i.ev = fcmp ogt double %i.eu, 1.000000e-04
  br i1 %i.ev, label %_ZNK6Sphere9intersectERK3Ray.exit.i.5, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.5

_ZNK6Sphere9intersectERK3Ray.exit.i.5:            ; preds = %bb.r, %bb.q
  %.0.i.i.5 = phi double [ %i.es, %bb.q ], [ %i.eu, %bb.r ] ; 3 uses
  %i.ew = fcmp une double %.0.i.i.5, 0.000000e+00
  %i.ex = fcmp olt double %.0.i.i.5, %.1.4
  %or.cond.i.5 = and i1 %i.ew, %i.ex
  br i1 %or.cond.i.5, label %bb.s, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.5

bb.s:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.i.5
  br label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.5

_ZNK6Sphere9intersectERK3Ray.exit.thread.i.5:     ; preds = %bb.s, %_ZNK6Sphere9intersectERK3Ray.exit.i.5, %bb.r, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.4
  %.1330.5 = phi i32 [ %.1330.4, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.4 ], [ 3, %bb.s ], [ %.1330.4, %_ZNK6Sphere9intersectERK3Ray.exit.i.5 ], [ %.1330.4, %bb.r ] ; 3 uses
  %.1.5 = phi double [ %.1.4, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.4 ], [ %.0.i.i.5, %bb.s ], [ %.1.4, %_ZNK6Sphere9intersectERK3Ray.exit.i.5 ], [ %.1.4, %bb.r ] ; 4 uses
  %i.ey = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 184), align 8, !tbaa !15, !noalias !11
  %i.ez = fsub double %i.ey, %16                  ; 3 uses
  %i.fa = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 192), align 16, !tbaa !14, !noalias !11
  %i.fb = fsub double %i.fa, %i.g                 ; 3 uses
  %i.fc = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 200), align 8, !tbaa !8, !noalias !11
  %i.fd = fsub double %i.fc, %i.f                 ; 3 uses
  %i.fe = fmul double %i.fb, %i.h
  %i.ff = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.i, double %i.fe)
  %i.fg = tail call noundef double @llvm.fmuladd.f64(double %i.fd, double %i.j, double %i.ff) ; 4 uses
  %i.fh = fmul double %i.fb, %i.fb
  %i.fi = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.ez, double %i.fh)
  %i.fj = tail call noundef double @llvm.fmuladd.f64(double %i.fd, double %i.fd, double %i.fi)
  %i.fk = fneg double %i.fj
  %i.fl = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.fg, double %i.fk)
  %i.fm = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 176), align 16, !tbaa !16 ; 2 uses
  %i.fn = tail call double @llvm.fmuladd.f64(double %i.fm, double %i.fm, double %i.fl) ; 2 uses
  %i.fo = fcmp olt double %i.fn, 0.000000e+00
  br i1 %i.fo, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.6, label %bb.t

bb.t:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.5
  %i.fp = tail call double @sqrt(double noundef %i.fn) #10, !tbaa !4 ; 2 uses
  %i.fq = fsub double %i.fg, %i.fp                ; 2 uses
  %i.fr = fcmp ogt double %i.fq, 1.000000e-04
  br i1 %i.fr, label %_ZNK6Sphere9intersectERK3Ray.exit.i.6, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fs = fadd double %i.fg, %i.fp                ; 2 uses
  %i.ft = fcmp ogt double %i.fs, 1.000000e-04
  br i1 %i.ft, label %_ZNK6Sphere9intersectERK3Ray.exit.i.6, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.6

_ZNK6Sphere9intersectERK3Ray.exit.i.6:            ; preds = %bb.u, %bb.t
  %.0.i.i.6 = phi double [ %i.fq, %bb.t ], [ %i.fs, %bb.u ] ; 3 uses
  %i.fu = fcmp une double %.0.i.i.6, 0.000000e+00
  %i.fv = fcmp olt double %.0.i.i.6, %.1.5
  %or.cond.i.6 = and i1 %i.fu, %i.fv
  br i1 %or.cond.i.6, label %bb.v, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.6

bb.v:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.i.6
  br label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.6

_ZNK6Sphere9intersectERK3Ray.exit.thread.i.6:     ; preds = %bb.v, %_ZNK6Sphere9intersectERK3Ray.exit.i.6, %bb.u, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.5
  %.1330.6 = phi i32 [ %.1330.5, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.5 ], [ 2, %bb.v ], [ %.1330.5, %_ZNK6Sphere9intersectERK3Ray.exit.i.6 ], [ %.1330.5, %bb.u ] ; 3 uses
  %.1.6 = phi double [ %.1.5, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.5 ], [ %.0.i.i.6, %bb.v ], [ %.1.5, %_ZNK6Sphere9intersectERK3Ray.exit.i.6 ], [ %.1.5, %bb.u ] ; 4 uses
  %i.fw = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 96), align 16, !tbaa !15, !noalias !11
  %i.fx = fsub double %i.fw, %16                  ; 3 uses
  %i.fy = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 104), align 8, !tbaa !14, !noalias !11
  %i.fz = fsub double %i.fy, %i.g                 ; 3 uses
  %i.ga = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 112), align 16, !tbaa !8, !noalias !11
  %i.gb = fsub double %i.ga, %i.f                 ; 3 uses
  %i.gc = fmul double %i.fz, %i.h
  %i.gd = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.i, double %i.gc)
  %i.ge = tail call noundef double @llvm.fmuladd.f64(double %i.gb, double %i.j, double %i.gd) ; 4 uses
  %i.gf = fmul double %i.fz, %i.fz
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.fx, double %i.fx, double %i.gf)
  %i.gh = tail call noundef double @llvm.fmuladd.f64(double %i.gb, double %i.gb, double %i.gg)
  %i.gi = fneg double %i.gh
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.ge, double %i.ge, double %i.gi)
  %i.gk = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 88), align 8, !tbaa !16 ; 2 uses
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gk, double %i.gk, double %i.gj) ; 2 uses
  %i.gm = fcmp olt double %i.gl, 0.000000e+00
  br i1 %i.gm, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.7, label %bb.w

bb.w:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.6
  %i.gn = tail call double @sqrt(double noundef %i.gl) #10, !tbaa !4 ; 2 uses
  %i.go = fsub double %i.ge, %i.gn                ; 2 uses
  %i.gp = fcmp ogt double %i.go, 1.000000e-04
  br i1 %i.gp, label %_ZNK6Sphere9intersectERK3Ray.exit.i.7, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gq = fadd double %i.ge, %i.gn                ; 2 uses
  %i.gr = fcmp ogt double %i.gq, 1.000000e-04
  br i1 %i.gr, label %_ZNK6Sphere9intersectERK3Ray.exit.i.7, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.7

_ZNK6Sphere9intersectERK3Ray.exit.i.7:            ; preds = %bb.x, %bb.w
  %.0.i.i.7 = phi double [ %i.go, %bb.w ], [ %i.gq, %bb.x ] ; 3 uses
  %i.gs = fcmp une double %.0.i.i.7, 0.000000e+00
  %i.gt = fcmp olt double %.0.i.i.7, %.1.6
  %or.cond.i.7 = select i1 %i.gs, i1 %i.gt, i1 false
  br i1 %or.cond.i.7, label %bb.y, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.7

bb.y:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.i.7
  br label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.7

_ZNK6Sphere9intersectERK3Ray.exit.thread.i.7:     ; preds = %bb.y, %_ZNK6Sphere9intersectERK3Ray.exit.i.7, %bb.x, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.6
  %.1330.7 = phi i32 [ %.1330.6, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.6 ], [ 1, %bb.y ], [ %.1330.6, %_ZNK6Sphere9intersectERK3Ray.exit.i.7 ], [ %.1330.6, %bb.x ] ; 3 uses
  %.1.7 = phi double [ %.1.6, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.6 ], [ %.0.i.i.7, %bb.y ], [ %.1.6, %_ZNK6Sphere9intersectERK3Ray.exit.i.7 ], [ %.1.6, %bb.x ] ; 4 uses
  %i.gu = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 8), align 8, !tbaa !15, !noalias !11
  %i.gv = fsub double %i.gu, %16                  ; 3 uses
  %i.gw = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 16), align 16, !tbaa !14, !noalias !11
  %i.gx = fsub double %i.gw, %i.g                 ; 3 uses
  %i.gy = load double, ptr getelementptr inbounds nuw (i8, ptr @spheres, i64 24), align 8, !tbaa !8, !noalias !11
  %i.gz = fsub double %i.gy, %i.f                 ; 3 uses
  %i.ha = fmul double %i.gx, %i.h
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.i, double %i.ha)
  %i.hc = tail call noundef double @llvm.fmuladd.f64(double %i.gz, double %i.j, double %i.hb) ; 4 uses
  %i.hd = fmul double %i.gx, %i.gx
  %i.he = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.gv, double %i.hd)
  %i.hf = tail call noundef double @llvm.fmuladd.f64(double %i.gz, double %i.gz, double %i.he)
  %i.hg = fneg double %i.hf
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.hc, double %i.hc, double %i.hg)
  %i.hi = load double, ptr @spheres, align 16, !tbaa !16 ; 2 uses
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.hi, double %i.hi, double %i.hh) ; 2 uses
  %i.hk = fcmp olt double %i.hj, 0.000000e+00
  br i1 %i.hk, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.8, label %bb.z

bb.z:                                             ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.7
  %i.hl = tail call double @sqrt(double noundef %i.hj) #10, !tbaa !4 ; 2 uses
  %i.hm = fsub double %i.hc, %i.hl                ; 2 uses
  %i.hn = fcmp ogt double %i.hm, 1.000000e-04
  br i1 %i.hn, label %_ZNK6Sphere9intersectERK3Ray.exit.i.8, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ho = fadd double %i.hc, %i.hl                ; 2 uses
  %i.hp = fcmp ogt double %i.ho, 1.000000e-04
  br i1 %i.hp, label %_ZNK6Sphere9intersectERK3Ray.exit.i.8, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.8

_ZNK6Sphere9intersectERK3Ray.exit.i.8:            ; preds = %bb.aa, %bb.z
  %.0.i.i.8 = phi double [ %i.hm, %bb.z ], [ %i.ho, %bb.aa ] ; 3 uses
  %i.hq = fcmp une double %.0.i.i.8, 0.000000e+00
  %i.hr = fcmp olt double %.0.i.i.8, %.1.7
  %or.cond.i.8 = select i1 %i.hq, i1 %i.hr, i1 false
  br i1 %or.cond.i.8, label %bb.ab, label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.8

bb.ab:                                            ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.i.8
  br label %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.8

_ZNK6Sphere9intersectERK3Ray.exit.thread.i.8:     ; preds = %bb.ab, %_ZNK6Sphere9intersectERK3Ray.exit.i.8, %bb.aa, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.7
  %.1330.8 = phi i32 [ %.1330.7, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.7 ], [ 0, %bb.ab ], [ %.1330.7, %_ZNK6Sphere9intersectERK3Ray.exit.i.8 ], [ %.1330.7, %bb.aa ]
  %.1.8 = phi double [ %.1.7, %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.7 ], [ %.0.i.i.8, %bb.ab ], [ %.1.7, %_ZNK6Sphere9intersectERK3Ray.exit.i.8 ], [ %.1.7, %bb.aa ] ; 3 uses
  %i.hs = fcmp olt double %.1.8, 1.000000e+20
  br i1 %i.hs, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.av

bb.ad:                                            ; preds = %_ZNK6Sphere9intersectERK3Ray.exit.thread.i.8
  %i.ht = zext nneg i32 %.1330.8 to i64
  %i.hu = getelementptr inbounds nuw [88 x i8], ptr @spheres, i64 %i.ht ; 16 uses
  %i.hv = insertelement <2 x double> poison, double %.1.8, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %17 = insertelement <2 x double> poison, double %i.j, i64 0
  %i.hx = insertelement <2 x double> %17, double %i.i, i64 1
  %i.hy = fmul <2 x double> %i.hw, %i.hx
  %i.hz = fmul double %.1.8, %i.h
  %18 = getelementptr inbounds nuw i8, ptr %i.hu, i64 8
  %19 = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !8, !noalias !19
  %20 = fadd double %i.g, %i.hz                   ; 6 uses
  %21 = insertelement <2 x double> poison, double %i.f, i64 0
  %22 = insertelement <2 x double> %21, double %16, i64 1
  %23 = fadd <2 x double> %22, %i.hy              ; 7 uses
  %i.ic = load double, ptr %19, align 8, !tbaa !14, !noalias !19
  %24 = load double, ptr %18, align 8, !tbaa !15, !noalias !19
  %25 = fsub double %20, %i.ic                    ; 3 uses
  %26 = insertelement <2 x double> poison, double %i.ib, i64 0
  %i.id = insertelement <2 x double> %26, double %24, i64 1
  %27 = fsub <2 x double> %23, %i.id              ; 3 uses
  %28 = fmul double %25, %25
  %i.ie = extractelement <2 x double> %27, i64 1  ; 2 uses
  %i.if = tail call double @llvm.fmuladd.f64(double %i.ie, double %i.ie, double %28)
  %i.ig = extractelement <2 x double> %27, i64 0  ; 2 uses
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.ig, double %i.if)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.ih)
  %i.ii = fdiv double 1.000000e+00, %sqrt.i       ; 2 uses
  %i.ij = fmul double %25, %i.ii                  ; 10 uses
  %i.ik = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = fmul <2 x double> %27, %i.il            ; 6 uses
  %i.in = fmul double %i.h, %i.ij
  %i.io = extractelement <2 x double> %i.im, i64 1 ; 8 uses
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.io, double %i.i, double %i.in)
  %i.iq = extractelement <2 x double> %i.im, i64 0 ; 7 uses
  %i.ir = tail call noundef double @llvm.fmuladd.f64(double %i.iq, double %i.j, double %i.ip)
  %i.is = fcmp olt double %i.ir, 0.000000e+00     ; 2 uses
  %i.it = fneg double %i.ij
  %i.iu = fneg <2 x double> %i.im
  %.sroa.7227.0 = select i1 %i.is, double %i.ij, double %i.it ; 7 uses
  %i.iv = insertelement <2 x i1> poison, i1 %i.is, i64 0
  %i.iw = shufflevector <2 x i1> %i.iv, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ix = select <2 x i1> %i.iw, <2 x double> %i.im, <2 x double> %i.iu ; 10 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %i.hu, i64 56
  %i.iz = load <2 x double>, ptr %i.iy, align 8, !tbaa !22 ; 4 uses
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 72
  %.sroa.18.0.copyload = load double, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !22 ; 5 uses
  %i.ja = extractelement <2 x double> %i.iz, i64 0 ; 3 uses
  %i.jb = extractelement <2 x double> %i.iz, i64 1 ; 3 uses
  %i.jc = fcmp ogt double %i.ja, %i.jb
  %i.jd = fcmp ogt double %i.ja, %.sroa.18.0.copyload
  %or.cond = select i1 %i.jc, i1 %i.jd, i1 false
  %i.je = fcmp ogt double %i.jb, %.sroa.18.0.copyload
  %i.jf = select i1 %i.je, double %i.jb, double %.sroa.18.0.copyload
  %i.jg = select i1 %or.cond, double %i.ja, double %i.jf ; 2 uses
  %i.jh = add nsw i32 %2, 1                       ; 7 uses
  %i.ji = icmp sgt i32 %2, 4
  br i1 %i.ji, label %bb.ae, label %.thread

bb.ae:                                            ; preds = %bb.ad
  %i.jj = tail call double @erand48(ptr noundef %3) #10
  %i.jk = fcmp olt double %i.jj, %i.jg
  br i1 %i.jk, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jl = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.jl, i64 24, i1 false), !tbaa.struct !23
  br label %bb.av

bb.ag:                                            ; preds = %bb.ae
  %i.jm = fdiv double 1.000000e+00, %i.jg         ; 2 uses
  %i.jn = insertelement <2 x double> poison, double %i.jm, i64 0
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = fmul <2 x double> %i.iz, %i.jo
  %i.jq = fmul double %.sroa.18.0.copyload, %i.jm
  %i.jr = icmp samesign ugt i32 %2, 127
  br i1 %i.jr, label %bb.ah, label %.thread

bb.ah:                                            ; preds = %bb.ag
  %i.js = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.js, i64 24, i1 false), !tbaa.struct !23
  br label %bb.av

.thread:                                          ; preds = %bb.ad, %bb.ag
  %.sroa.18.0336 = phi double [ %i.jq, %bb.ag ], [ %.sroa.18.0.copyload, %bb.ad ] ; 4 uses
  %i.jt = phi <2 x double> [ %i.jp, %bb.ag ], [ %i.iz, %bb.ad ] ; 4 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.hu, i64 80
  %i.jv = load i32, ptr %i.ju, align 8, !tbaa !24
  switch i32 %i.jv, label %bb.ak [
    i32 0, label %bb.ai
    i32 1, label %bb.aj
  ]

bb.ai:                                            ; preds = %.thread
  %i.jw = tail call double @erand48(ptr noundef %3) #10
  %i.jx = fmul double %i.jw, f0x401921FB54442D18  ; 2 uses
  %i.jy = tail call double @erand48(ptr noundef %3) #10 ; 2 uses
  %i.jz = tail call double @sqrt(double noundef %i.jy) #10, !tbaa !4 ; 3 uses
  %i.ka = tail call double @llvm.fabs.f64(double %i.io)
  %i.kb = fcmp ogt double %i.ka, 1.000000e-01     ; 2 uses
  %i.kc = extractelement <2 x double> %i.ix, i64 0
  %i.kd = tail call double @cos(double noundef %i.jx) #10, !tbaa !4 ; 2 uses
  %i.ke = tail call double @sin(double noundef %i.jx) #10, !tbaa !4 ; 2 uses
  %i.kf = fsub double 1.000000e+00, %i.jy
  %i.kg = tail call double @sqrt(double noundef %i.kf) #10, !tbaa !4 ; 2 uses
  %i.kh = fmul double %i.kc, %i.kg
  %i.ki = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.kj = extractelement <2 x double> %23, i64 1
  store double %i.kj, ptr %5, align 8, !tbaa !22
  %.sroa.4300.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store double %20, ptr %.sroa.4300.0..sroa_idx, align 8, !tbaa !22
  %.sroa.5301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.kk = extractelement <2 x double> %23, i64 0
  store double %i.kk, ptr %.sroa.5301.0..sroa_idx, align 8, !tbaa !22
  %i.kl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.sroa.5183.0 = select i1 %i.kb, double 1.000000e+00, double 0.000000e+00 ; 2 uses
  %.sroa.0182.0 = select i1 %i.kb, double 0.000000e+00, double 1.000000e+00 ; 2 uses
  %i.km = insertelement <2 x double> poison, double %.sroa.7227.0, i64 0
  %i.kn = insertelement <2 x double> %i.km, double %.sroa.0182.0, i64 1
  %i.ko = fneg <2 x double> %i.ix
  %i.kp = shufflevector <2 x double> <double -0.000000e+00, double poison>, <2 x double> %i.ko, <2 x i32> <i32 0, i32 2>
  %i.kq = fmul <2 x double> %i.kn, %i.kp
  %i.kr = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.sroa.5183.0, i64 0
  %i.ks = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kr, <2 x double> %i.ix, <2 x double> %i.kq) ; 4 uses
  %i.kt = insertelement <2 x double> %i.ks, double %.sroa.5183.0, i64 0
  %i.ku = fneg <2 x double> %i.ix
  %i.kv = shufflevector <2 x double> %i.ks, <2 x double> %i.ku, <2 x i32> <i32 3, i32 1>
  %i.kw = fmul <2 x double> %i.kt, %i.kv
  %i.kx = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.ky = insertelement <2 x double> %i.kx, double %.sroa.0182.0, i64 0
  %i.kz = insertelement <2 x double> %i.kx, double %.sroa.7227.0, i64 0
  %i.la = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ky, <2 x double> %i.kz, <2 x double> %i.kw) ; 2 uses
  %i.lb = extractelement <2 x double> %i.la, i64 0 ; 3 uses
  %i.lc = extractelement <2 x double> %i.la, i64 1
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.lb, double %i.lb, double %i.lc)
  %sqrt.i96 = tail call double @llvm.sqrt.f64(double %i.ld)
  %i.le = fdiv double 1.000000e+00, %sqrt.i96     ; 2 uses
  %i.lf = insertelement <2 x double> poison, double %i.le, i64 0
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = fmul <2 x double> %i.ks, %i.lg          ; 4 uses
  %i.li = fmul double %i.lb, %i.le                ; 3 uses
  %i.lj = shufflevector <2 x double> %i.lh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lk = insertelement <2 x double> %i.lj, double %i.li, i64 1
  %i.ll = fneg <2 x double> %i.lk
  %i.lm = fmul <2 x double> %i.ix, %i.ll
  %i.ln = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lo = insertelement <2 x double> %i.ln, double %.sroa.7227.0, i64 0
  %i.lp = insertelement <2 x double> %i.lj, double %i.li, i64 0
  %i.lq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lo, <2 x double> %i.lp, <2 x double> %i.lm)
  %i.lr = insertelement <2 x double> poison, double %i.kd, i64 0
  %i.ls = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lt = fmul <2 x double> %i.lh, %i.ls
  %i.lu = fmul double %i.li, %i.kd
  %i.lv = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.lw = shufflevector <2 x double> %i.lv, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lx = fmul <2 x double> %i.lw, %i.lt
  %i.ly = fmul double %i.jz, %i.lu
  %i.lz = insertelement <2 x double> poison, double %i.ke, i64 0
  %i.ma = shufflevector <2 x double> %i.lz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mb = fmul <2 x double> %i.lq, %i.ma
  %i.mc = fmul <2 x double> %i.lw, %i.mb
  %i.md = fadd <2 x double> %i.lx, %i.mc
  %i.me = insertelement <2 x double> %i.ln, double %.sroa.7227.0, i64 1
  %i.mf = insertelement <2 x double> poison, double %i.kg, i64 0
  %i.mg = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mh = fmul <2 x double> %i.me, %i.mg
  %i.mi = fadd <2 x double> %i.mh, %i.md          ; 5 uses
  %i.mj = insertelement <2 x double> %i.mi, double %.sroa.7227.0, i64 0
  %i.mk = fneg <2 x double> %i.lh
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> %i.mi, <2 x i32> <i32 0, i32 3>
  %i.mm = fmul <2 x double> %i.mj, %i.ml
  %i.mn = shufflevector <2 x double> %i.ix, <2 x double> %i.mi, <2 x i32> <i32 1, i32 2>
  %i.mo = shufflevector <2 x double> %i.lh, <2 x double> %i.mi, <2 x i32> <i32 1, i32 2>
  %i.mp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.mo, <2 x double> %i.mm) ; 2 uses
  %i.mq = extractelement <2 x double> %i.mp, i64 0
  %i.mr = fmul double %i.mq, %i.ke
  %i.ms = fmul double %i.jz, %i.mr
  %i.mt = fadd double %i.ly, %i.ms
  %i.mu = fadd double %i.kh, %i.mt                ; 3 uses
  %i.mv = extractelement <2 x double> %i.mp, i64 1
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.mu, double %i.mu, double %i.mv)
  %sqrt.i97 = tail call double @llvm.sqrt.f64(double %i.mw)
  %i.mx = fdiv double 1.000000e+00, %sqrt.i97     ; 2 uses
  %i.my = insertelement <2 x double> poison, double %i.mx, i64 0
  %i.mz = shufflevector <2 x double> %i.my, <2 x double> poison, <2 x i32> zeroinitializer
  %i.na = fmul <2 x double> %i.mi, %i.mz
  %i.nb = fmul double %i.mu, %i.mx
  store <2 x double> %i.na, ptr %i.kl, align 8, !tbaa !22
  %.sroa.5304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  store double %i.nb, ptr %.sroa.5304.0..sroa_idx, align 8, !tbaa !22
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %4, ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef %i.jh, ptr noundef %3)
  %i.nc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.nd = load double, ptr %i.nc, align 16, !tbaa !8, !noalias !25
  %i.ne = fmul double %.sroa.18.0336, %i.nd
  tail call void @llvm.experimental.noalias.scope.decl(metadata !28)
  %i.nf = getelementptr inbounds nuw i8, ptr %i.hu, i64 48
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !8, !noalias !28
  %i.nh = fadd double %i.ne, %i.ng
  %i.ni = load <2 x double>, ptr %4, align 16, !tbaa !22, !noalias !25
  %i.nj = fmul <2 x double> %i.jt, %i.ni
  %i.nk = load <2 x double>, ptr %i.ki, align 8, !tbaa !22, !noalias !28
  %i.nl = fadd <2 x double> %i.nj, %i.nk
  store <2 x double> %i.nl, ptr %0, align 8, !tbaa !22, !alias.scope !28
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.nh, ptr %i.nm, align 8, !tbaa !8, !alias.scope !28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.av

bb.aj:                                            ; preds = %.thread
  %i.nn = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.no = fmul double %i.iq, 2.000000e+00
  %i.np = load double, ptr %i.e, align 8, !tbaa !8 ; 2 uses
  %i.nq = extractelement <2 x double> %23, i64 1
  store double %i.nq, ptr %7, align 8, !tbaa !22
  %.sroa.4306.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store double %20, ptr %.sroa.4306.0..sroa_idx, align 8, !tbaa !22
  %.sroa.5307.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.nr = extractelement <2 x double> %23, i64 0
  store double %i.nr, ptr %.sroa.5307.0..sroa_idx, align 8, !tbaa !22
  %i.ns = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.nt = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.nu = insertelement <2 x double> %i.nt, double %i.ij, i64 1
  %i.nv = fmul <2 x double> %i.nu, splat (double 2.000000e+00)
  %i.nw = load <2 x double>, ptr %i.c, align 8, !tbaa !22 ; 3 uses
  %i.nx = extractelement <2 x double> %i.nw, i64 1
  %i.ny = fmul double %i.ij, %i.nx
  %i.nz = extractelement <2 x double> %i.nw, i64 0
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.io, double %i.nz, double %i.ny)
  %i.ob = tail call noundef double @llvm.fmuladd.f64(double %i.iq, double %i.np, double %i.oa) ; 2 uses
  %i.oc = insertelement <2 x double> poison, double %i.ob, i64 0
  %i.od = shufflevector <2 x double> %i.oc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oe = fmul <2 x double> %i.nv, %i.od
  %i.of = fmul double %i.no, %i.ob
  %i.og = fsub <2 x double> %i.nw, %i.oe
  %i.oh = fsub double %i.np, %i.of
  store <2 x double> %i.og, ptr %i.ns, align 8, !tbaa !22
  %.sroa.5310.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store double %i.oh, ptr %.sroa.5310.0..sroa_idx, align 8, !tbaa !22
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %6, ptr noundef nonnull align 8 dereferenceable(48) %7, i32 noundef %i.jh, ptr noundef %3)
  %i.oi = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.oj = load double, ptr %i.oi, align 16, !tbaa !8, !noalias !31
  %i.ok = fmul double %.sroa.18.0336, %i.oj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !34)
  %i.ol = getelementptr inbounds nuw i8, ptr %i.hu, i64 48
  %i.om = load double, ptr %i.ol, align 8, !tbaa !8, !noalias !34
  %i.on = fadd double %i.ok, %i.om
  %i.oo = load <2 x double>, ptr %6, align 16, !tbaa !22, !noalias !31
  %i.op = fmul <2 x double> %i.jt, %i.oo
  %i.oq = load <2 x double>, ptr %i.nn, align 8, !tbaa !22, !noalias !34
  %i.or = fadd <2 x double> %i.op, %i.oq
  store <2 x double> %i.or, ptr %0, align 8, !tbaa !22, !alias.scope !34
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.on, ptr %i.os, align 8, !tbaa !8, !alias.scope !34
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.av

bb.ak:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.ot = fmul double %i.io, 2.000000e+00
  %i.ou = fmul double %i.ij, 2.000000e+00
  %i.ov = fmul double %i.iq, 2.000000e+00
  %i.ow = load double, ptr %i.d, align 8, !tbaa !14 ; 4 uses
  %i.ox = load double, ptr %i.e, align 8, !tbaa !8 ; 4 uses
  %29 = extractelement <2 x double> %23, i64 1    ; 3 uses
  store double %29, ptr %8, align 8, !tbaa !22
  %.sroa.4312.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store double %20, ptr %.sroa.4312.0..sroa_idx, align 8, !tbaa !22
  %.sroa.5313.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %30 = extractelement <2 x double> %23, i64 0    ; 3 uses
  store double %30, ptr %.sroa.5313.0..sroa_idx, align 8, !tbaa !22
  %31 = getelementptr inbounds nuw i8, ptr %8, i64 24
  %.sroa.4315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 32
  %.sroa.5316.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40
  %32 = fmul double %i.ij, %.sroa.7227.0
  %33 = fmul double %.sroa.7227.0, %i.ow
  %34 = load double, ptr %i.c, align 8, !tbaa !15 ; 4 uses
  %35 = fmul double %i.ij, %i.ow
  %36 = tail call double @llvm.fmuladd.f64(double %i.io, double %34, double %35)
  %37 = tail call noundef double @llvm.fmuladd.f64(double %i.iq, double %i.ox, double %36) ; 3 uses
  %38 = fmul double %i.ot, %37
  %39 = fmul double %i.ou, %37
  %40 = fmul double %i.ov, %37
  %41 = fsub double %34, %38
  %42 = fsub double %i.ow, %39
  %43 = fsub double %i.ox, %40
  store double %41, ptr %31, align 8, !tbaa !22
  store double %42, ptr %.sroa.4315.0..sroa_idx, align 8, !tbaa !22
  store double %43, ptr %.sroa.5316.0..sroa_idx, align 8, !tbaa !22
  %i.oy = extractelement <2 x double> %i.ix, i64 1
  %i.oz = tail call double @llvm.fmuladd.f64(double %i.io, double %i.oy, double %32)
  %i.pa = insertelement <2 x double> %i.im, double %34, i64 1
  %i.pb = insertelement <2 x double> poison, double %i.oz, i64 0
  %i.pc = insertelement <2 x double> %i.pb, double %33, i64 1
  %i.pd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pa, <2 x double> %i.ix, <2 x double> %i.pc) ; 2 uses
  %i.pe = extractelement <2 x double> %i.pd, i64 0
  %i.pf = fcmp ogt double %i.pe, 0.000000e+00     ; 3 uses
  %. = select i1 %i.pf, double f0x3FE5555555555555, double 1.500000e+00 ; 6 uses
  %i.pg = extractelement <2 x double> %i.pd, i64 1
  %i.ph = extractelement <2 x double> %i.ix, i64 0
  %i.pi = tail call noundef double @llvm.fmuladd.f64(double %i.ox, double %i.ph, double %i.pg) ; 3 uses
  %i.pj = fneg double %i.pi                       ; 2 uses
  %i.pk = tail call double @llvm.fmuladd.f64(double %i.pj, double %i.pi, double 1.000000e+00)
  %i.pl = fneg double %.
  %i.pm = fmul nnan double %., %i.pl
  %i.pn = tail call double @llvm.fmuladd.f64(double %i.pm, double %i.pk, double 1.000000e+00) ; 2 uses
  %i.po = fcmp olt double %i.pn, 0.000000e+00
  br i1 %i.po, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.pp = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %9, ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef %i.jh, ptr noundef %3)
  %i.pq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.pr = load double, ptr %i.pq, align 16, !tbaa !8, !noalias !37
  %i.ps = fmul double %.sroa.18.0336, %i.pr
  tail call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %i.pt = getelementptr inbounds nuw i8, ptr %i.hu, i64 48
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !8, !noalias !40
  %i.pv = fadd double %i.ps, %i.pu
  %i.pw = load <2 x double>, ptr %9, align 16, !tbaa !22, !noalias !37
  %i.px = fmul <2 x double> %i.jt, %i.pw
  %i.py = load <2 x double>, ptr %i.pp, align 8, !tbaa !22, !noalias !40
  %i.pz = fadd <2 x double> %i.px, %i.py
  store <2 x double> %i.pz, ptr %0, align 8, !tbaa !22, !alias.scope !40
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.pv, ptr %i.qa, align 8, !tbaa !8, !alias.scope !40
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  br label %bb.au

bb.am:                                            ; preds = %bb.ak
  %i.qb = fmul double %., %34
  %i.qc = fmul double %., %i.ow
  %i.qd = fmul double %., %i.ox
  %i.qe = tail call double @sqrt(double noundef %i.pn) #10, !tbaa !4
  %i.qf = tail call double @llvm.fmuladd.f64(double %i.pi, double %., double %i.qe) ; 2 uses
  %i.qg = fneg double %i.qf
  %i.qh = select i1 %i.pf, double %i.qf, double %i.qg ; 3 uses
  %i.qi = fmul double %i.io, %i.qh
  %i.qj = fmul double %i.ij, %i.qh
  %i.qk = fmul double %i.iq, %i.qh
  %i.ql = fsub double %i.qb, %i.qi                ; 3 uses
  %i.qm = fsub double %i.qc, %i.qj                ; 3 uses
  %i.qn = fsub double %i.qd, %i.qk                ; 3 uses
  %i.qo = fmul double %i.qm, %i.qm
  %i.qp = tail call double @llvm.fmuladd.f64(double %i.ql, double %i.ql, double %i.qo)
  %i.qq = tail call double @llvm.fmuladd.f64(double %i.qn, double %i.qn, double %i.qp)
  %sqrt.i98 = tail call double @llvm.sqrt.f64(double %i.qq)
  %i.qr = fdiv double 1.000000e+00, %sqrt.i98     ; 3 uses
  %i.qs = fmul double %i.ql, %i.qr                ; 3 uses
  %i.qt = fmul double %i.qm, %i.qr                ; 3 uses
  %i.qu = fmul double %i.qn, %i.qr                ; 3 uses
  br i1 %i.pf, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qv = fmul double %i.ij, %i.qt
  %i.qw = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.io, double %i.qv)
  %i.qx = tail call noundef double @llvm.fmuladd.f64(double %i.qu, double %i.iq, double %i.qw)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.qy = phi double [ %i.qx, %bb.an ], [ %i.pj, %bb.am ]
  %i.qz = fsub double 1.000000e+00, %i.qy         ; 5 uses
  %i.ra = fmul double %i.qz, f0x3FEEB851EB851EB8
  %i.rb = fmul double %i.qz, %i.ra
  %i.rc = fmul double %i.qz, %i.rb
  %i.rd = fmul double %i.qz, %i.rc
  %i.re = tail call double @llvm.fmuladd.f64(double %i.rd, double %i.qz, double 4.000000e-02) ; 5 uses
  %i.rf = fsub double 1.000000e+00, %i.re         ; 3 uses
  %i.rg = tail call double @llvm.fmuladd.f64(double %i.re, double 5.000000e-01, double 2.500000e-01) ; 3 uses
  %i.rh = fdiv double %i.re, %i.rg                ; 2 uses
  %i.ri = fsub double 1.000000e+00, %i.rg
  %i.rj = fdiv double %i.rf, %i.ri                ; 2 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.hu, i64 32
  %i.rl = icmp sgt i32 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #10
  br i1 %i.rl, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.rm = tail call double @erand48(ptr noundef %3) #10
  %i.rn = fcmp olt double %i.rm, %i.rg
  br i1 %i.rn, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %10, ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef %i.jh, ptr noundef %3)
  %i.ro = load <2 x double>, ptr %10, align 16, !tbaa !22, !noalias !43
  %i.rp = insertelement <2 x double> poison, double %i.rh, i64 0
  %i.rq = shufflevector <2 x double> %i.rp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rr = fmul <2 x double> %i.rq, %i.ro
  %i.rs = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.rt = load double, ptr %i.rs, align 16, !tbaa !8, !noalias !43
  %i.ru = fmul double %i.rh, %i.rt
  br label %bb.at

bb.ar:                                            ; preds = %bb.ap
  store double %29, ptr %12, align 8, !tbaa !22
  %.sroa.4318.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8
  store double %20, ptr %.sroa.4318.0..sroa_idx, align 8, !tbaa !22
  %.sroa.5319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store double %30, ptr %.sroa.5319.0..sroa_idx, align 8, !tbaa !22
  %i.rv = getelementptr inbounds nuw i8, ptr %12, i64 24
  store double %i.qs, ptr %i.rv, align 8, !tbaa !22
  %.sroa.4321.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 32
  store double %i.qt, ptr %.sroa.4321.0..sroa_idx, align 8, !tbaa !22
  %.sroa.5322.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 40
  store double %i.qu, ptr %.sroa.5322.0..sroa_idx, align 8, !tbaa !22
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %11, ptr noundef nonnull align 8 dereferenceable(48) %12, i32 noundef %i.jh, ptr noundef %3)
  %i.rw = load <2 x double>, ptr %11, align 16, !tbaa !22, !noalias !46
  %i.rx = insertelement <2 x double> poison, double %i.rj, i64 0
  %i.ry = shufflevector <2 x double> %i.rx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rz = fmul <2 x double> %i.ry, %i.rw
  %i.sa = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.sb = load double, ptr %i.sa, align 16, !tbaa !8, !noalias !46
  %i.sc = fmul double %i.rj, %i.sb
  br label %bb.at

bb.as:                                            ; preds = %bb.ao
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %8, i32 noundef %i.jh, ptr noundef %3)
  %i.sd = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.se = load double, ptr %i.sd, align 16, !tbaa !8, !noalias !49
  %i.sf = fmul double %i.re, %i.se
  store double %29, ptr %15, align 8, !tbaa !22
  %.sroa.4324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store double %20, ptr %.sroa.4324.0..sroa_idx, align 8, !tbaa !22
  %.sroa.5325.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 16
  store double %30, ptr %.sroa.5325.0..sroa_idx, align 8, !tbaa !22
  %i.sg = getelementptr inbounds nuw i8, ptr %15, i64 24
  store double %i.qs, ptr %i.sg, align 8, !tbaa !22
  %.sroa.4327.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 32
  store double %i.qt, ptr %.sroa.4327.0..sroa_idx, align 8, !tbaa !22
  %.sroa.5328.0..sroa_idx = getelementptr inbounds nuw i8, ptr %15, i64 40
  store double %i.qu, ptr %.sroa.5328.0..sroa_idx, align 8, !tbaa !22
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %14, ptr noundef nonnull align 8 dereferenceable(48) %15, i32 noundef %i.jh, ptr noundef %3)
  %i.sh = load <2 x double>, ptr %13, align 16, !tbaa !22, !noalias !49
  %i.si = insertelement <2 x double> poison, double %i.re, i64 0
  %i.sj = shufflevector <2 x double> %i.si, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sk = fmul <2 x double> %i.sj, %i.sh
  %i.sl = load <2 x double>, ptr %14, align 16, !tbaa !22, !noalias !52
  %i.sm = insertelement <2 x double> poison, double %i.rf, i64 0
  %i.sn = shufflevector <2 x double> %i.sm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.so = fmul <2 x double> %i.sn, %i.sl
  %i.sp = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.sq = load double, ptr %i.sp, align 16, !tbaa !8, !noalias !52
  %i.sr = fmul double %i.rf, %i.sq
  %i.ss = fadd <2 x double> %i.sk, %i.so
  %i.st = fadd double %i.sf, %i.sr
  br label %bb.at

bb.at:                                            ; preds = %bb.aq, %bb.ar, %bb.as
  %.sroa.10.0 = phi double [ %i.ru, %bb.aq ], [ %i.sc, %bb.ar ], [ %i.st, %bb.as ]
  %i.su = phi <2 x double> [ %i.rr, %bb.aq ], [ %i.rz, %bb.ar ], [ %i.ss, %bb.as ]
  %i.sv = fmul double %.sroa.18.0336, %.sroa.10.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !55)
  %i.sw = getelementptr inbounds nuw i8, ptr %i.hu, i64 48
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !8, !noalias !55
  %i.sy = fadd double %i.sv, %i.sx
  %i.sz = fmul <2 x double> %i.jt, %i.su
  %i.ta = load <2 x double>, ptr %i.rk, align 8, !tbaa !22, !noalias !55
  %i.tb = fadd <2 x double> %i.sz, %i.ta
  store <2 x double> %i.tb, ptr %0, align 8, !tbaa !22, !alias.scope !55
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.sy, ptr %i.tc, align 8, !tbaa !8, !alias.scope !55
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.av

bb.av:                                            ; preds = %bb.af, %bb.ah, %bb.ai, %bb.aj, %bb.au, %bb.ac
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nounwind
declare double @erand48(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #4

; Function Attrs: cold norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i16], align 2                ; 13 uses
  %2 = alloca %struct.Vec, align 16               ; 9 uses
  %3 = alloca %struct.Ray, align 16               ; 11 uses
  %i.b = icmp eq i32 %0, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.e = tail call i64 @__isoc23_strtol(ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 10) #10, !inline_history !61
  %i.f = trunc i64 %i.e to i32
  %i.g = sdiv i32 %i.f, 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.h = phi i32 [ %i.g, %bb.b ], [ 1, %bb.a ]    ; 5 uses
  %i.i = tail call noalias noundef nonnull dereferenceable(18874368) ptr @_Znam(i64 noundef 18874368) #11 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(18874368) %i.i, i8 0, i64 18874368, i1 false), !tbaa !22
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !62
  %i.k = shl nsw i32 %i.h, 2
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.j, ptr noundef nonnull @.str, i32 noundef %i.k) #12 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.o = icmp sgt i32 %i.h, 0
  %.sroa.5135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.q = sitofp i32 %i.h to double
  %i.r = fdiv double 1.000000e+00, %i.q           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br i1 %i.o, label %.split161.us.us.preheader, label %.split161

.split161.us.us.preheader:                        ; preds = %bb.c
  %i.t = insertelement <2 x double> poison, double %i.r, i64 0
  %i.u = shufflevector <2 x double> %i.t, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.split161.us.us

.split161.us.us:                                  ; preds = %.split161.us.us.preheader, %.split163.us.us
  %indvars.iv185 = phi i64 [ %indvars.iv.next186, %.split163.us.us ], [ 0, %.split161.us.us.preheader ] ; 3 uses
  %indvars187 = trunc i64 %indvars.iv185 to i32   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i16 0, ptr %i.a, align 2, !tbaa !64
  store i16 0, ptr %i.m, align 2, !tbaa !64
  %i.v = mul nuw nsw i32 %indvars187, %indvars187
  %i.w = mul nuw nsw i32 %i.v, %indvars187
  %i.x = trunc i32 %i.w to i16
  store i16 %i.x, ptr %i.n, align 2, !tbaa !64
  %i.y = shl nuw nsw i64 %indvars.iv185, 10
  %i.z = uitofp nneg i32 %indvars187 to double    ; 2 uses
  br label %.split152.us.us.us

.split152.us.us.us:                               ; preds = %.split154.us.us.us, %.split161.us.us
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %.split154.us.us.us ], [ 0, %.split161.us.us ] ; 3 uses
  %i.aa = sub nsw i64 %indvars.iv180, %i.y
  %i.ab = trunc i64 %indvars.iv180 to i16
  %i.ac = uitofp nneg i16 %i.ab to double         ; 2 uses
  %i.ad = getelementptr [24 x i8], ptr %i.i, i64 %i.aa ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 18849792 ; 3 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 18849808 ; 3 uses
  br label %.preheader139.us.us.us

.preheader139.us.us.us:                           ; preds = %._crit_edge.us.us.us.us.1, %.split152.us.us.us
  %i.ag = phi i1 [ true, %.split152.us.us.us ], [ false, %._crit_edge.us.us.us.us.1 ]
  %.047151.us.us.us = phi double [ 5.000000e-01, %.split152.us.us.us ], [ 1.500000e+00, %._crit_edge.us.us.us.us.1 ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %.preheader139.us.us.us
  %.048143.us.us.us.us = phi i32 [ 0, %.preheader139.us.us.us ], [ %i.co, %bb.j ]
  %.sroa.12.4142.us.us.us.us = phi double [ 0.000000e+00, %.preheader139.us.us.us ], [ %i.cn, %bb.j ]
  %i.ah = phi <2 x double> [ zeroinitializer, %.preheader139.us.us.us ], [ %i.cm, %bb.j ]
  %i.ai = call double @erand48(ptr noundef nonnull %i.a) #10
  %i.aj = fmul double %i.ai, 2.000000e+00         ; 3 uses
  %i.ak = fcmp olt double %i.aj, 1.000000e+00
  br i1 %i.ak, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = fsub double 2.000000e+00, %i.aj
  %i.am = call double @sqrt(double noundef %i.al) #10, !tbaa !4
  %i.an = fsub double 1.000000e+00, %i.am
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ao = call double @sqrt(double noundef %i.aj) #10, !tbaa !4
  %i.ap = fadd double %i.ao, -1.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aq = phi double [ %i.ap, %bb.f ], [ %i.an, %bb.e ]
  %i.ar = call double @erand48(ptr noundef nonnull %i.a) #10
  %i.as = fmul double %i.ar, 2.000000e+00         ; 3 uses
  %i.at = fcmp olt double %i.as, 1.000000e+00
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = fsub double 2.000000e+00, %i.as
  %i.av = call double @sqrt(double noundef %i.au) #10, !tbaa !4
  %i.aw = fsub double 1.000000e+00, %i.av
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ax = call double @sqrt(double noundef %i.as) #10, !tbaa !4
  %i.ay = fadd double %i.ax, -1.000000e+00
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = phi double [ %i.ay, %bb.i ], [ %i.aw, %bb.h ]
  %i.ba = fadd double %i.aq, 5.000000e-01
  %i.bb = fadd double %.047151.us.us.us, %i.az
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.bc = fmul double %i.ba, 5.000000e-01
  %i.bd = fmul double %i.bb, 5.000000e-01
  %i.be = fadd double %i.bc, %i.ac
  %i.bf = fadd double %i.bd, %i.z
  %i.bg = fmul double %i.be, f0x3F50000000000000
  %i.bh = fdiv double %i.bf, 7.680000e+02
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = insertelement <2 x double> %i.bi, double %i.bg, i64 1
  %i.bk = fadd <2 x double> %i.bj, splat (double -5.000000e-01) ; 3 uses
  %i.bl = fmul <2 x double> %i.bk, zeroinitializer ; 2 uses
  %i.bm = fmul <2 x double> %i.bk, <double f0x3FE06AC72F44BE81, double f0x3FE5E8CA11BFD44F>
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.bo = extractelement <2 x double> %i.bk, i64 0
  %i.bp = fmul double %i.bo, f0x3F9662D746DC5A9D
  %i.bq = fadd <2 x double> %i.bl, %i.bn
  %i.br = extractelement <2 x double> %i.bl, i64 1
  %i.bs = fsub double %i.br, %i.bp
  %i.bt = fadd <2 x double> %i.bq, <double 0.000000e+00, double f0xBFA5CC2D1960285F> ; 5 uses
  %i.bu = fadd double %i.bs, f0xBFEFF8929A5E7D34  ; 4 uses
  %i.bv = fmul <2 x double> %i.bt, splat (double 1.400000e+02)
  %i.bw = fmul double %i.bu, 1.400000e+02
  %i.bx = fadd <2 x double> %i.bv, <double 5.000000e+01, double 5.200000e+01>
  %i.by = fadd double %i.bw, 2.956000e+02
  %foldExtExtBinop = fmul <2 x double> %i.bt, %i.bt
  %i.bz = extractelement <2 x double> %foldExtExtBinop, i64 1
  %i.ca = extractelement <2 x double> %i.bt, i64 0 ; 2 uses
  %i.cb = call double @llvm.fmuladd.f64(double %i.ca, double %i.ca, double %i.bz)
  %i.cc = call double @llvm.fmuladd.f64(double %i.bu, double %i.bu, double %i.cb)
  %sqrt.i57.us.us.us.us = call double @llvm.sqrt.f64(double %i.cc)
  %i.cd = fdiv double 1.000000e+00, %sqrt.i57.us.us.us.us ; 2 uses
  %i.ce = fmul double %i.bu, %i.cd
  store <2 x double> %i.bx, ptr %3, align 16, !tbaa !22
  store double %i.by, ptr %.sroa.5135.0..sroa_idx, align 16, !tbaa !22
  %i.cf = insertelement <2 x double> poison, double %i.cd, i64 0
  %i.cg = shufflevector <2 x double> %i.cf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x double> %i.bt, %i.cg
  store <2 x double> %i.ch, ptr %i.p, align 8, !tbaa !22
  store double %i.ce, ptr %.sroa.5138.0..sroa_idx, align 8, !tbaa !22
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.ci = load <2 x double>, ptr %2, align 16, !tbaa !22, !noalias !66
  %i.cj = fmul <2 x double> %i.u, %i.ci
  %i.ck = load double, ptr %i.s, align 16, !tbaa !8, !noalias !66
  %i.cl = fmul double %i.r, %i.ck
  %i.cm = fadd <2 x double> %i.ah, %i.cj          ; 4 uses
  %i.cn = fadd double %.sroa.12.4142.us.us.us.us, %i.cl ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.co = add nuw nsw i32 %.048143.us.us.us.us, 1 ; 2 uses
  %exitcond177.not = icmp eq i32 %i.co, %i.h
  br i1 %exitcond177.not, label %._crit_edge.us.us.us.us, label %bb.d

._crit_edge.us.us.us.us:                          ; preds = %bb.j
  %i.cp = fcmp olt <2 x double> %i.cm, zeroinitializer
  %i.cq = fcmp ogt <2 x double> %i.cm, splat (double 1.000000e+00)
  %i.cr = fcmp olt double %i.cn, 0.000000e+00
  %i.cs = fcmp ogt double %i.cn, 1.000000e+00
  %i.ct = select i1 %i.cs, double 1.000000e+00, double %i.cn
  %i.cu = fmul double %i.ct, 2.500000e-01
  %i.cv = select i1 %i.cr, double 0.000000e+00, double %i.cu
  %i.cw = select <2 x i1> %i.cq, <2 x double> splat (double 1.000000e+00), <2 x double> %i.cm
  %i.cx = fmul <2 x double> %i.cw, splat (double 2.500000e-01)
  %i.cy = select <2 x i1> %i.cp, <2 x double> zeroinitializer, <2 x double> %i.cx
  %i.cz = load <2 x double>, ptr %i.ae, align 8, !tbaa !22, !noalias !69
  %i.da = fadd <2 x double> %i.cy, %i.cz          ; 2 uses
  %i.db = load double, ptr %i.af, align 8, !tbaa !8, !noalias !69
  %i.dc = fadd double %i.cv, %i.db                ; 2 uses
  store <2 x double> %i.da, ptr %i.ae, align 8, !tbaa !22
  store double %i.dc, ptr %i.af, align 8, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %bb.q, %._crit_edge.us.us.us.us
  %.048143.us.us.us.us.1 = phi i32 [ 0, %._crit_edge.us.us.us.us ], [ %i.fk, %bb.q ]
  %.sroa.12.4142.us.us.us.us.1 = phi double [ 0.000000e+00, %._crit_edge.us.us.us.us ], [ %i.fj, %bb.q ]
  %i.dd = phi <2 x double> [ zeroinitializer, %._crit_edge.us.us.us.us ], [ %i.fi, %bb.q ]
  %i.de = call double @erand48(ptr noundef nonnull %i.a) #10
  %i.df = fmul double %i.de, 2.000000e+00         ; 3 uses
  %i.dg = fcmp olt double %i.df, 1.000000e+00
  br i1 %i.dg, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.dh = fsub double 2.000000e+00, %i.df
  %i.di = call double @sqrt(double noundef %i.dh) #10, !tbaa !4
  %i.dj = fsub double 1.000000e+00, %i.di
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.dk = call double @sqrt(double noundef %i.df) #10, !tbaa !4
  %i.dl = fadd double %i.dk, -1.000000e+00
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.dm = phi double [ %i.dl, %bb.m ], [ %i.dj, %bb.l ]
  %i.dn = call double @erand48(ptr noundef nonnull %i.a) #10
  %i.do = fmul double %i.dn, 2.000000e+00         ; 3 uses
  %i.dp = fcmp olt double %i.do, 1.000000e+00
  br i1 %i.dp, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dq = fsub double 2.000000e+00, %i.do
  %i.dr = call double @sqrt(double noundef %i.dq) #10, !tbaa !4
  %i.ds = fsub double 1.000000e+00, %i.dr
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.dt = call double @sqrt(double noundef %i.do) #10, !tbaa !4
  %i.du = fadd double %i.dt, -1.000000e+00
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.dv = phi double [ %i.du, %bb.p ], [ %i.ds, %bb.o ]
  %i.dw = fadd double %i.dm, 1.500000e+00
  %i.dx = fadd double %.047151.us.us.us, %i.dv
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  %i.dy = fmul double %i.dw, 5.000000e-01
  %i.dz = fmul double %i.dx, 5.000000e-01
  %i.ea = fadd double %i.dy, %i.ac
  %i.eb = fadd double %i.dz, %i.z
  %i.ec = fmul double %i.ea, f0x3F50000000000000
  %i.ed = fdiv double %i.eb, 7.680000e+02
  %i.ee = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.ec, i64 1
  %i.eg = fadd <2 x double> %i.ef, splat (double -5.000000e-01) ; 3 uses
  %i.eh = fmul <2 x double> %i.eg, zeroinitializer ; 2 uses
  %i.ei = fmul <2 x double> %i.eg, <double f0x3FE06AC72F44BE81, double f0x3FE5E8CA11BFD44F>
  %i.ej = shufflevector <2 x double> %i.ei, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ek = extractelement <2 x double> %i.eg, i64 0
  %i.el = fmul double %i.ek, f0x3F9662D746DC5A9D
  %i.em = fadd <2 x double> %i.eh, %i.ej
  %i.en = extractelement <2 x double> %i.eh, i64 1
  %i.eo = fsub double %i.en, %i.el
  %i.ep = fadd <2 x double> %i.em, <double 0.000000e+00, double f0xBFA5CC2D1960285F> ; 5 uses
  %i.eq = fadd double %i.eo, f0xBFEFF8929A5E7D34  ; 4 uses
  %i.er = fmul <2 x double> %i.ep, splat (double 1.400000e+02)
  %i.es = fmul double %i.eq, 1.400000e+02
  %i.et = fadd <2 x double> %i.er, <double 5.000000e+01, double 5.200000e+01>
  %i.eu = fadd double %i.es, 2.956000e+02
  %foldExtExtBinop211 = fmul <2 x double> %i.ep, %i.ep
  %i.ev = extractelement <2 x double> %foldExtExtBinop211, i64 1
  %i.ew = extractelement <2 x double> %i.ep, i64 0 ; 2 uses
  %i.ex = call double @llvm.fmuladd.f64(double %i.ew, double %i.ew, double %i.ev)
  %i.ey = call double @llvm.fmuladd.f64(double %i.eq, double %i.eq, double %i.ex)
  %sqrt.i57.us.us.us.us.1 = call double @llvm.sqrt.f64(double %i.ey)
  %i.ez = fdiv double 1.000000e+00, %sqrt.i57.us.us.us.us.1 ; 2 uses
  %i.fa = fmul double %i.eq, %i.ez
  store <2 x double> %i.et, ptr %3, align 16, !tbaa !22
  store double %i.eu, ptr %.sroa.5135.0..sroa_idx, align 16, !tbaa !22
  %i.fb = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fc = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fd = fmul <2 x double> %i.ep, %i.fc
  store <2 x double> %i.fd, ptr %i.p, align 8, !tbaa !22
  store double %i.fa, ptr %.sroa.5138.0..sroa_idx, align 8, !tbaa !22
  call void @_Z8radianceRK3RayiPt(ptr dead_on_unwind nonnull writable sret(%struct.Vec) align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %3, i32 noundef 0, ptr noundef nonnull %i.a)
  %i.fe = load <2 x double>, ptr %2, align 16, !tbaa !22, !noalias !66
  %i.ff = fmul <2 x double> %i.u, %i.fe
  %i.fg = load double, ptr %i.s, align 16, !tbaa !8, !noalias !66
  %i.fh = fmul double %i.r, %i.fg
  %i.fi = fadd <2 x double> %i.dd, %i.ff          ; 4 uses
  %i.fj = fadd double %.sroa.12.4142.us.us.us.us.1, %i.fh ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.fk = add nuw nsw i32 %.048143.us.us.us.us.1, 1 ; 2 uses
  %exitcond177.1.not = icmp eq i32 %i.fk, %i.h
  br i1 %exitcond177.1.not, label %._crit_edge.us.us.us.us.1, label %bb.k

._crit_edge.us.us.us.us.1:                        ; preds = %bb.q
  %i.fl = fcmp olt <2 x double> %i.fi, zeroinitializer
  %i.fm = fcmp ogt <2 x double> %i.fi, splat (double 1.000000e+00)
  %i.fn = fcmp olt double %i.fj, 0.000000e+00
  %i.fo = fcmp ogt double %i.fj, 1.000000e+00
  %i.fp = select i1 %i.fo, double 1.000000e+00, double %i.fj
  %i.fq = fmul double %i.fp, 2.500000e-01
  %i.fr = select i1 %i.fn, double 0.000000e+00, double %i.fq
  %i.fs = fadd double %i.fr, %i.dc
  %i.ft = select <2 x i1> %i.fm, <2 x double> splat (double 1.000000e+00), <2 x double> %i.fi
  %i.fu = fmul <2 x double> %i.ft, splat (double 2.500000e-01)
  %i.fv = select <2 x i1> %i.fl, <2 x double> zeroinitializer, <2 x double> %i.fu
  %i.fw = fadd <2 x double> %i.fv, %i.da
  store <2 x double> %i.fw, ptr %i.ae, align 8, !tbaa !22
  store double %i.fs, ptr %i.af, align 8, !tbaa !22
  br i1 %i.ag, label %.preheader139.us.us.us, label %.split154.us.us.us

.split154.us.us.us:                               ; preds = %._crit_edge.us.us.us.us.1
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond184.not = icmp eq i64 %indvars.iv.next181, 1024
  br i1 %exitcond184.not, label %.split163.us.us, label %.split152.us.us.us

.split163.us.us:                                  ; preds = %.split154.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next186 = add nuw nsw i64 %indvars.iv185, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next186, 768
  br i1 %exitcond188.not, label %.split167.us, label %.split161.us.us

.split167.us:                                     ; preds = %.split163, %.split163.us.us
  ret i32 0

.split161:                                        ; preds = %bb.c, %.split163
  %indvars.iv = phi i64 [ %indvars.iv.next, %.split163 ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.fx = shl nuw nsw i64 %indvars.iv, 10         ; 2 uses
  br label %.split152

.split163:                                        ; preds = %.split152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond176.not = icmp eq i64 %indvars.iv.next, 768
  br i1 %exitcond176.not, label %.split167.us, label %.split161

.split152:                                        ; preds = %.split152, %.split161
  %indvars.iv171 = phi i64 [ 0, %.split161 ], [ %indvars.iv.next172.1, %.split152 ] ; 3 uses
  %i.fy = sub nsw i64 %indvars.iv171, %i.fx
  %i.fz = getelementptr [24 x i8], ptr %i.i, i64 %i.fy ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 18849792 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fz, i64 18849808 ; 2 uses
  %.promoted158 = load double, ptr %i.gb, align 8, !tbaa !22
  %i.gc = fadd double %.promoted158, 0.000000e+00
  %i.gd = load <2 x double>, ptr %i.ga, align 8, !tbaa !22
  %i.ge = fadd <2 x double> %i.gd, zeroinitializer
  store <2 x double> %i.ge, ptr %i.ga, align 8, !tbaa !22
  store double %i.gc, ptr %i.gb, align 8, !tbaa !22
  %indvars.iv.next172 = or disjoint i64 %indvars.iv171, 1
  %i.gf = sub nsw i64 %indvars.iv.next172, %i.fx
  %i.gg = getelementptr [24 x i8], ptr %i.i, i64 %i.gf ; 2 uses
  %i.gh = getelementptr i8, ptr %i.gg, i64 18849792 ; 2 uses
  %i.gi = getelementptr i8, ptr %i.gg, i64 18849808 ; 2 uses
  %.promoted158.1 = load double, ptr %i.gi, align 8, !tbaa !22
  %i.gj = fadd double %.promoted158.1, 0.000000e+00
  %i.gk = load <2 x double>, ptr %i.gh, align 8, !tbaa !22
  %i.gl = fadd <2 x double> %i.gk, zeroinitializer
  store <2 x double> %i.gl, ptr %i.gh, align 8, !tbaa !22
  store double %i.gj, ptr %i.gi, align 8, !tbaa !22
  %indvars.iv.next172.1 = add nuw nsw i64 %indvars.iv171, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next172.1, 1024
  br i1 %exitcond.not.1, label %.split163, label %.split152
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @__isoc23_strtol(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 16}
!9 = !{!"_ZTS3Vec", !10, i64 0, !10, i64 8, !10, i64 16}
!10 = !{!"double", !6, i64 0}
!11 = !{!12}
!12 = distinct !{!12, !13, !"_ZNK3VecmiERKS_: argument 0"}
!13 = distinct !{!13, !"_ZNK3VecmiERKS_"}
!14 = !{!9, !10, i64 8}
!15 = !{!9, !10, i64 0}
!16 = !{!17, !10, i64 0}
!17 = !{!"_ZTS6Sphere", !10, i64 0, !9, i64 8, !9, i64 32, !9, i64 56, !18, i64 80}
!18 = !{!"_ZTS6Refl_t", !6, i64 0}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZNK3VecmiERKS_: argument 0"}
!21 = distinct !{!21, !"_ZNK3VecmiERKS_"}
!22 = !{!10, !10, i64 0}
!23 = !{i64 0, i64 8, !22, i64 8, i64 8, !22, i64 16, i64 8, !22}
!24 = !{!17, !18, i64 80}
!25 = !{!26}
!26 = distinct !{!26, !27, !"_ZNK3Vec4multERKS_: argument 0"}
!27 = distinct !{!27, !"_ZNK3Vec4multERKS_"}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNK3VecplERKS_: argument 0"}
!30 = distinct !{!30, !"_ZNK3VecplERKS_"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNK3Vec4multERKS_: argument 0"}
!33 = distinct !{!33, !"_ZNK3Vec4multERKS_"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZNK3VecplERKS_: argument 0"}
!36 = distinct !{!36, !"_ZNK3VecplERKS_"}
!37 = !{!38}
!38 = distinct !{!38, !39, !"_ZNK3Vec4multERKS_: argument 0"}
!39 = distinct !{!39, !"_ZNK3Vec4multERKS_"}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZNK3VecplERKS_: argument 0"}
!42 = distinct !{!42, !"_ZNK3VecplERKS_"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNK3VecmlEd: argument 0"}
!45 = distinct !{!45, !"_ZNK3VecmlEd"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZNK3VecmlEd: argument 0"}
!48 = distinct !{!48, !"_ZNK3VecmlEd"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"_ZNK3VecmlEd: argument 0"}
!51 = distinct !{!51, !"_ZNK3VecmlEd"}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNK3VecmlEd: argument 0"}
!54 = distinct !{!54, !"_ZNK3VecmlEd"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNK3VecplERKS_: argument 0"}
!57 = distinct !{!57, !"_ZNK3VecplERKS_"}
!58 = !{!59, !59, i64 0}
!59 = !{!"p1 omnipotent char", !60, i64 0}
!60 = !{!"any pointer", !6, i64 0}
!61 = distinct !{null}
!62 = !{!63, !63, i64 0}
!63 = !{!"p1 _ZTS8_IO_FILE", !60, i64 0}
!64 = !{!65, !65, i64 0}
!65 = !{!"short", !6, i64 0}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZNK3VecmlEd: argument 0"}
!68 = distinct !{!68, !"_ZNK3VecmlEd"}
!69 = !{!70}
!70 = distinct !{!70, !71, !"_ZNK3VecplERKS_: argument 0"}
!71 = distinct !{!71, !"_ZNK3VecplERKS_"}
end_hunk_0
