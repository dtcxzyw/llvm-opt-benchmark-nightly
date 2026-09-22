Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/aabb?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3AABB = type { %struct.b3Vec3, %struct.b3Vec3 }
%struct.b3Vec3 = type { float, float, float }

@.src = private unnamed_addr constant [45 x i8] c"/opt-bench/work/box3d_ubsan/box3d/src/aabb.c\00", align 1
@0 = private unnamed_addr constant { i16, i16, [8 x i8] } { i16 1, i16 32, [8 x i8] c"'float'\00" }
@1 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 28, i32 4 }, ptr @0, i8 2, i8 1 }
@2 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 29, i32 4 }, ptr @0, i8 2, i8 1 }
@3 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 172, i32 2 }, ptr @0, i8 2, i8 1 }
@4 = private unnamed_addr global { { ptr, i32, i32 }, ptr, i8, i8 } { { ptr, i32, i32 } { ptr @.src, i32 173, i32 2 }, ptr @0, i8 2, i8 1 }

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @b3RayCastAABB(ptr nofree noundef readonly byval(%struct.b3AABB) align 8 captures(none) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 !func_sanitize !9 {
bb.a:
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 4 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 4 uses
  %7 = fsub float %4, %2                          ; 3 uses
  %8 = fsub <2 x float> %3, %1                    ; 4 uses
  %9 = fmul <2 x float> %8, %8                    ; 2 uses
  %shift = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %9, %shift
  %i.a = extractelement <2 x float> %foldExtExtBinop, i64 0
  %10 = fmul float %7, %7
  %i.b = fadd float %10, %i.a
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.b) ; 7 uses
  %i.c = fcmp olt float %sqrt.i, f0x34000000
  br i1 %i.c, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load float, ptr %0, align 8, !tbaa !13
  %i.e = fcmp ult float %.sroa.0.0.vec.extract.i, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4
  %i.h = fcmp ugt float %.sroa.0.0.vec.extract.i, %i.g
  %or.cond168 = select i1 %i.e, i1 true, i1 %i.h
  br i1 %or.cond168, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !14
  %i.k = fcmp ult float %.sroa.0.4.vec.extract.i, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load float, ptr %i.l, align 8
  %i.n = fcmp ugt float %.sroa.0.4.vec.extract.i, %i.m
  %or.cond = select i1 %i.k, i1 true, i1 %i.n
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load float, ptr %i.o, align 8, !tbaa !15
  %i.q = fcmp ult float %2, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.s = load float, ptr %i.r, align 4
  %i.t = fcmp ugt float %2, %i.s
  %or.cond158 = select i1 %i.q, i1 true, i1 %i.t
  br i1 %or.cond158, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ne ptr %5, null, !nosanitize !16
  %i.v = ptrtoint ptr %5 to i64, !nosanitize !16  ; 2 uses
  %i.w = and i64 %i.v, 3, !nosanitize !16
  %i.x = icmp eq i64 %i.w, 0, !nosanitize !16
  %i.y = and i1 %i.u, %i.x, !nosanitize !16
  br i1 %i.y, label %bb.g, label %bb.f, !prof !17, !nosanitize !16

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.v) #3, !nosanitize !16
  unreachable, !nosanitize !16

bb.g:                                             ; preds = %bb.e
  store float 0.000000e+00, ptr %5, align 4, !tbaa !18
  %i.z = icmp ne ptr %6, null, !nosanitize !16
  %i.aa = ptrtoint ptr %6 to i64, !nosanitize !16 ; 2 uses
  %i.ab = and i64 %i.aa, 3, !nosanitize !16
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !16
  %i.ad = and i1 %i.z, %i.ac, !nosanitize !16
  br i1 %i.ad, label %.critedge.sink.split, label %bb.h, !prof !17, !nosanitize !16

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @2, i64 %i.aa) #3, !nosanitize !16
  unreachable, !nosanitize !16

bb.i:                                             ; preds = %bb.a
  %i.ae = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %11 = fmul float %7, %i.ae                      ; 2 uses
  %12 = extractelement <2 x float> %8, i64 1
  %13 = fmul float %12, %i.ae                     ; 2 uses
  %14 = extractelement <2 x float> %8, i64 0
  %15 = fmul float %14, %i.ae                     ; 2 uses
  %i.af = load float, ptr %0, align 8, !tbaa !13  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !19 ; 2 uses
  %i.ai = tail call float @llvm.fabs.f32(float %15)
  %i.aj = fcmp olt float %i.ai, f0x34000000
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = fcmp olt float %.sroa.0.0.vec.extract.i, %i.af
  %i.al = fcmp ogt float %.sroa.0.0.vec.extract.i, %i.ah
  %or.cond159 = select i1 %i.ak, i1 true, i1 %i.al
  %i.am = insertelement <2 x float> <float 0.000000e+00, float poison>, float %sqrt.i, i64 1
  br i1 %or.cond159, label %.critedge, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.an = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.af, i64 1
  %i.ap = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fsub <2 x float> %i.ao, %i.ap
  %16 = insertelement <2 x float> poison, float %15, i64 0
  %i.ar = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fdiv <2 x float> %i.aq, %i.ar           ; 4 uses
  %i.at = extractelement <2 x float> %i.as, i64 0
  %i.au = extractelement <2 x float> %i.as, i64 1
  %i.av = fcmp ogt float %i.au, %i.at
  %i.aw = insertelement <2 x i1> poison, i1 %i.av, i64 0
  %i.ax = shufflevector <2 x i1> %i.aw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ay = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.az = select <2 x i1> %i.ax, <2 x float> %i.as, <2 x float> %i.ay ; 3 uses
  %17 = extractelement <2 x float> %i.az, i64 0
  %18 = fcmp olt float %17, 0.000000e+00
  %19 = extractelement <2 x float> %i.az, i64 1
  %20 = fcmp olt float %sqrt.i, %19
  %21 = insertelement <2 x i1> poison, i1 %18, i64 0
  %22 = insertelement <2 x i1> %21, i1 %20, i64 1
  %i.ba = insertelement <2 x float> <float 0.000000e+00, float poison>, float %sqrt.i, i64 1
  %i.bb = select <2 x i1> %22, <2 x float> %i.ba, <2 x float> %i.az ; 3 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  %i.bd = extractelement <2 x float> %i.bb, i64 1
  %i.be = fcmp ule float %i.bc, %i.bd
  br i1 %i.be, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bf = phi <2 x float> [ %i.am, %bb.j ], [ %i.bb, %bb.k ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !14 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load float, ptr %i.bi, align 8, !tbaa !20 ; 2 uses
  %i.bk = tail call float @llvm.fabs.f32(float %13)
  %i.bl = fcmp olt float %i.bk, f0x34000000
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bm = fcmp olt float %.sroa.0.4.vec.extract.i, %i.bh
  %i.bn = fcmp ogt float %.sroa.0.4.vec.extract.i, %i.bj
  %or.cond160 = select i1 %i.bm, i1 true, i1 %i.bn
  br i1 %or.cond160, label %.critedge, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bo = insertelement <2 x float> poison, float %i.bj, i64 0
  %i.bp = insertelement <2 x float> %i.bo, float %i.bh, i64 1
  %i.bq = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = fsub <2 x float> %i.bp, %i.bq
  %23 = insertelement <2 x float> poison, float %13, i64 0
  %24 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fdiv <2 x float> %i.br, %24             ; 4 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = extractelement <2 x float> %i.bs, i64 1
  %i.bv = fcmp ogt float %i.bu, %i.bt
  %i.bw = insertelement <2 x i1> poison, i1 %i.bv, i64 0
  %i.bx = shufflevector <2 x i1> %i.bw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.by = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bz = select <2 x i1> %i.bx, <2 x float> %i.bs, <2 x float> %i.by ; 3 uses
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> %i.bf, <2 x i32> <i32 0, i32 3>
  %i.cb = shufflevector <2 x float> %i.bf, <2 x float> %i.bz, <2 x i32> <i32 0, i32 3>
  %i.cc = fcmp olt <2 x float> %i.ca, %i.cb
  %i.cd = select <2 x i1> %i.cc, <2 x float> %i.bf, <2 x float> %i.bz ; 3 uses
  %i.ce = extractelement <2 x float> %i.cd, i64 0
  %i.cf = extractelement <2 x float> %i.cd, i64 1
  %i.cg = fcmp ule float %i.ce, %i.cf
  br i1 %i.cg, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ch = phi <2 x float> [ %i.bf, %bb.m ], [ %i.cd, %bb.n ] ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cj = load float, ptr %i.ci, align 8, !tbaa !15 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !21 ; 2 uses
  %i.cm = tail call float @llvm.fabs.f32(float %11)
  %i.cn = fcmp olt float %i.cm, f0x34000000
  br i1 %i.cn, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.co = fcmp olt float %2, %i.cj
  %i.cp = fcmp ogt float %2, %i.cl
  %or.cond163 = select i1 %i.co, i1 true, i1 %i.cp
  br i1 %or.cond163, label %.critedge, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cq = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.cj, i64 1
  %i.cs = insertelement <2 x float> poison, float %2, i64 0
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = fsub <2 x float> %i.cr, %i.ct
  %25 = insertelement <2 x float> poison, float %11, i64 0
  %26 = shufflevector <2 x float> %25, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cv = fdiv <2 x float> %i.cu, %26             ; 4 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = extractelement <2 x float> %i.cv, i64 1
  %i.cy = fcmp ogt float %i.cx, %i.cw
  %i.cz = insertelement <2 x i1> poison, i1 %i.cy, i64 0
  %i.da = shufflevector <2 x i1> %i.cz, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.db = shufflevector <2 x float> %i.cv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dc = select <2 x i1> %i.da, <2 x float> %i.cv, <2 x float> %i.db ; 3 uses
  %i.dd = shufflevector <2 x float> %i.dc, <2 x float> %i.ch, <2 x i32> <i32 0, i32 3>
  %i.de = shufflevector <2 x float> %i.ch, <2 x float> %i.dc, <2 x i32> <i32 0, i32 3>
  %i.df = fcmp olt <2 x float> %i.dd, %i.de
  %i.dg = select <2 x i1> %i.df, <2 x float> %i.ch, <2 x float> %i.dc ; 3 uses
  %i.dh = extractelement <2 x float> %i.dg, i64 0
  %i.di = extractelement <2 x float> %i.dg, i64 1
  %i.dj = fcmp ule float %i.dh, %i.di
  br i1 %i.dj, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.dk = phi <2 x float> [ %i.ch, %bb.p ], [ %i.dg, %bb.q ] ; 2 uses
  %i.dl = extractelement <2 x float> %i.dk, i64 1 ; 2 uses
  %i.dm = fcmp olt float %i.dl, 0.000000e+00
  br i1 %i.dm, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dn = icmp ne ptr %5, null, !nosanitize !16
  %i.do = ptrtoint ptr %5 to i64, !nosanitize !16 ; 2 uses
  %i.dp = and i64 %i.do, 3, !nosanitize !16
  %i.dq = icmp eq i64 %i.dp, 0, !nosanitize !16
  %i.dr = and i1 %i.dn, %i.dq, !nosanitize !16
  br i1 %i.dr, label %bb.u, label %bb.t, !prof !17, !nosanitize !16

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.do) #3, !nosanitize !16
  unreachable, !nosanitize !16

bb.u:                                             ; preds = %bb.s
  %i.ds = extractelement <2 x float> %i.dk, i64 0
  %i.dt = fdiv float %i.ds, %sqrt.i               ; 3 uses
  %i.du = fcmp olt float %i.dt, 0.000000e+00
  %i.dv = fcmp ogt float %i.dt, 1.000000e+00
  %i.dw = select i1 %i.dv, float 1.000000e+00, float %i.dt
  %i.dx = select i1 %i.du, float 0.000000e+00, float %i.dw
  store float %i.dx, ptr %5, align 4, !tbaa !18
  %i.dy = icmp ne ptr %6, null, !nosanitize !16
  %i.dz = ptrtoint ptr %6 to i64, !nosanitize !16 ; 2 uses
  %i.ea = and i64 %i.dz, 3, !nosanitize !16
  %i.eb = icmp eq i64 %i.ea, 0, !nosanitize !16
  %i.ec = and i1 %i.dy, %i.eb, !nosanitize !16
  br i1 %i.ec, label %bb.w, label %bb.v, !prof !17, !nosanitize !16

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @4, i64 %i.dz) #3, !nosanitize !16
  unreachable, !nosanitize !16

bb.w:                                             ; preds = %bb.u
  %i.ed = fdiv float %i.dl, %sqrt.i               ; 3 uses
  %i.ee = fcmp olt float %i.ed, 0.000000e+00
  %i.ef = fcmp ogt float %i.ed, 1.000000e+00
  %i.eg = select i1 %i.ef, float 1.000000e+00, float %i.ed
  %i.eh = select i1 %i.ee, float 0.000000e+00, float %i.eg
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.g, %bb.w
  %.sink = phi float [ %i.eh, %bb.w ], [ 0.000000e+00, %bb.g ]
  store float %.sink, ptr %6, align 4, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.r, %bb.j, %bb.k, %bb.m, %bb.n, %bb.p, %bb.q, %bb.b, %bb.c, %bb.d
  %.10 = phi i1 [ false, %bb.p ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.n ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.m ], [ true, %.critedge.sink.split ]
  ret i1 %.10
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind uwtable }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 7, !"frame-pointer", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{i32 -1056584962, i32 957965217}
!10 = !{!"float", !5, i64 0}
!11 = !{!"b3Vec3", !10, i64 0, !10, i64 4, !10, i64 8}
!12 = !{!"b3AABB", !11, i64 0, !11, i64 12}
!13 = !{!12, !10, i64 0}
!14 = !{!12, !10, i64 4}
!15 = !{!12, !10, i64 8}
!16 = !{}
!17 = !{!"branch_weights", i32 1048575, i32 1}
!18 = !{!10, !10, i64 0}
!19 = !{!12, !10, i64 12}
!20 = !{!12, !10, i64 16}
!21 = !{!12, !10, i64 20}
end_hunk_0
