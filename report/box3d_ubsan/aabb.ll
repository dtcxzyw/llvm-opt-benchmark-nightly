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
  %i.a = fsub float %4, %2                        ; 3 uses
  %i.b = fsub <2 x float> %3, %1                  ; 4 uses
  %i.c = fmul <2 x float> %i.b, %i.b              ; 2 uses
  %shift = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.c, %shift
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.e = fmul float %i.a, %i.a
  %i.f = fadd float %i.e, %i.d
  %i.g = tail call float @sqrtf(float noundef %i.f) #4 ; 7 uses
  %i.h = fcmp olt float %i.g, f0x34000000
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.i = load float, ptr %0, align 8, !tbaa !13
  %i.j = fcmp ult float %.sroa.0.0.vec.extract.i, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load float, ptr %i.k, align 4
  %i.m = fcmp ugt float %.sroa.0.0.vec.extract.i, %i.l
  %or.cond168 = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond168, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !14
  %i.p = fcmp ult float %.sroa.0.4.vec.extract.i, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load float, ptr %i.q, align 8
  %i.s = fcmp ugt float %.sroa.0.4.vec.extract.i, %i.r
  %or.cond = select i1 %i.p, i1 true, i1 %i.s
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load float, ptr %i.t, align 8, !tbaa !15
  %i.v = fcmp ult float %2, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = load float, ptr %i.w, align 4
  %i.y = fcmp ugt float %2, %i.x
  %or.cond158 = select i1 %i.v, i1 true, i1 %i.y
  br i1 %or.cond158, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp ne ptr %5, null, !nosanitize !16
  %i.aa = ptrtoint ptr %5 to i64, !nosanitize !16 ; 2 uses
  %i.ab = and i64 %i.aa, 3, !nosanitize !16
  %i.ac = icmp eq i64 %i.ab, 0, !nosanitize !16
  %i.ad = and i1 %i.z, %i.ac, !nosanitize !16
  br i1 %i.ad, label %bb.g, label %bb.f, !prof !17, !nosanitize !16

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.aa) #5, !nosanitize !16
  unreachable, !nosanitize !16

bb.g:                                             ; preds = %bb.e
  store float 0.000000e+00, ptr %5, align 4, !tbaa !18
  %i.ae = icmp ne ptr %6, null, !nosanitize !16
  %i.af = ptrtoint ptr %6 to i64, !nosanitize !16 ; 2 uses
  %i.ag = and i64 %i.af, 3, !nosanitize !16
  %i.ah = icmp eq i64 %i.ag, 0, !nosanitize !16
  %i.ai = and i1 %i.ae, %i.ah, !nosanitize !16
  br i1 %i.ai, label %.critedge.sink.split, label %bb.h, !prof !17, !nosanitize !16

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @2, i64 %i.af) #5, !nosanitize !16
  unreachable, !nosanitize !16

bb.i:                                             ; preds = %bb.a
  %i.aj = fdiv float 1.000000e+00, %i.g           ; 3 uses
  %i.ak = extractelement <2 x float> %i.b, i64 0
  %i.al = fmul float %i.ak, %i.aj                 ; 2 uses
  %i.am = extractelement <2 x float> %i.b, i64 1
  %i.an = fmul float %i.am, %i.aj                 ; 2 uses
  %i.ao = fmul float %i.a, %i.aj                  ; 2 uses
  %i.ap = load float, ptr %0, align 8, !tbaa !13  ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !19 ; 2 uses
  %i.as = tail call float @llvm.fabs.f32(float %i.al)
  %i.at = fcmp olt float %i.as, f0x34000000
  br i1 %i.at, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.au = fcmp olt float %.sroa.0.0.vec.extract.i, %i.ap
  %i.av = fcmp ogt float %.sroa.0.0.vec.extract.i, %i.ar
  %or.cond159 = select i1 %i.au, i1 true, i1 %i.av
  %i.aw = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.g, i64 1
  br i1 %or.cond159, label %.critedge, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ax = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.ay = insertelement <2 x float> %i.ax, float %i.ap, i64 1
  %i.az = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ba = fsub <2 x float> %i.ay, %i.az
  %i.bb = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bd = fdiv <2 x float> %i.ba, %i.bc           ; 4 uses
  %i.be = extractelement <2 x float> %i.bd, i64 0
  %i.bf = extractelement <2 x float> %i.bd, i64 1
  %i.bg = fcmp ogt float %i.bf, %i.be
  %i.bh = insertelement <2 x i1> poison, i1 %i.bg, i64 0
  %i.bi = shufflevector <2 x i1> %i.bh, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bj = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bk = select <2 x i1> %i.bi, <2 x float> %i.bd, <2 x float> %i.bj ; 3 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  %i.bm = fcmp olt float %i.bl, 0.000000e+00
  %i.bn = extractelement <2 x float> %i.bk, i64 1
  %i.bo = fcmp olt float %i.g, %i.bn
  %i.bp = insertelement <2 x i1> poison, i1 %i.bm, i64 0
  %i.bq = insertelement <2 x i1> %i.bp, i1 %i.bo, i64 1
  %i.br = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.g, i64 1
  %i.bs = select <2 x i1> %i.bq, <2 x float> %i.br, <2 x float> %i.bk ; 3 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = extractelement <2 x float> %i.bs, i64 1
  %i.bv = fcmp ule float %i.bt, %i.bu
  br i1 %i.bv, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bw = phi <2 x float> [ %i.aw, %bb.j ], [ %i.bs, %bb.k ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !14 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !20 ; 2 uses
  %i.cb = tail call float @llvm.fabs.f32(float %i.an)
  %i.cc = fcmp olt float %i.cb, f0x34000000
  br i1 %i.cc, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cd = fcmp olt float %.sroa.0.4.vec.extract.i, %i.by
  %i.ce = fcmp ogt float %.sroa.0.4.vec.extract.i, %i.ca
  %or.cond160 = select i1 %i.cd, i1 true, i1 %i.ce
  br i1 %or.cond160, label %.critedge, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cf = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.by, i64 1
  %i.ch = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ci = fsub <2 x float> %i.cg, %i.ch
  %i.cj = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fdiv <2 x float> %i.ci, %i.ck           ; 4 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0
  %i.cn = extractelement <2 x float> %i.cl, i64 1
  %i.co = fcmp ogt float %i.cn, %i.cm
  %i.cp = insertelement <2 x i1> poison, i1 %i.co, i64 0
  %i.cq = shufflevector <2 x i1> %i.cp, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cr = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cs = select <2 x i1> %i.cq, <2 x float> %i.cl, <2 x float> %i.cr ; 3 uses
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.cu = shufflevector <2 x float> %i.bw, <2 x float> %i.cs, <2 x i32> <i32 0, i32 3>
  %i.cv = fcmp olt <2 x float> %i.ct, %i.cu
  %i.cw = select <2 x i1> %i.cv, <2 x float> %i.bw, <2 x float> %i.cs ; 3 uses
  %i.cx = extractelement <2 x float> %i.cw, i64 0
  %i.cy = extractelement <2 x float> %i.cw, i64 1
  %i.cz = fcmp ule float %i.cx, %i.cy
  br i1 %i.cz, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.da = phi <2 x float> [ %i.bw, %bb.m ], [ %i.cw, %bb.n ] ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dc = load float, ptr %i.db, align 8, !tbaa !15 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.de = load float, ptr %i.dd, align 4, !tbaa !21 ; 2 uses
  %i.df = tail call float @llvm.fabs.f32(float %i.ao)
  %i.dg = fcmp olt float %i.df, f0x34000000
  br i1 %i.dg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dh = fcmp olt float %2, %i.dc
  %i.di = fcmp ogt float %2, %i.de
  %or.cond163 = select i1 %i.dh, i1 true, i1 %i.di
  br i1 %or.cond163, label %.critedge, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.dj = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %i.dc, i64 1
  %i.dl = insertelement <2 x float> poison, float %2, i64 0
  %i.dm = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dn = fsub <2 x float> %i.dk, %i.dm
  %i.do = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.dp = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dq = fdiv <2 x float> %i.dn, %i.dp           ; 4 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0
  %i.ds = extractelement <2 x float> %i.dq, i64 1
  %i.dt = fcmp ogt float %i.ds, %i.dr
  %i.du = insertelement <2 x i1> poison, i1 %i.dt, i64 0
  %i.dv = shufflevector <2 x i1> %i.du, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dw = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dx = select <2 x i1> %i.dv, <2 x float> %i.dq, <2 x float> %i.dw ; 3 uses
  %i.dy = shufflevector <2 x float> %i.dx, <2 x float> %i.da, <2 x i32> <i32 0, i32 3>
  %i.dz = shufflevector <2 x float> %i.da, <2 x float> %i.dx, <2 x i32> <i32 0, i32 3>
  %i.ea = fcmp olt <2 x float> %i.dy, %i.dz
  %i.eb = select <2 x i1> %i.ea, <2 x float> %i.da, <2 x float> %i.dx ; 3 uses
  %i.ec = extractelement <2 x float> %i.eb, i64 0
  %i.ed = extractelement <2 x float> %i.eb, i64 1
  %i.ee = fcmp ule float %i.ec, %i.ed
  br i1 %i.ee, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ef = phi <2 x float> [ %i.da, %bb.p ], [ %i.eb, %bb.q ] ; 2 uses
  %i.eg = extractelement <2 x float> %i.ef, i64 1 ; 2 uses
  %i.eh = fcmp olt float %i.eg, 0.000000e+00
  br i1 %i.eh, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ei = icmp ne ptr %5, null, !nosanitize !16
  %i.ej = ptrtoint ptr %5 to i64, !nosanitize !16 ; 2 uses
  %i.ek = and i64 %i.ej, 3, !nosanitize !16
  %i.el = icmp eq i64 %i.ek, 0, !nosanitize !16
  %i.em = and i1 %i.ei, %i.el, !nosanitize !16
  br i1 %i.em, label %bb.u, label %bb.t, !prof !17, !nosanitize !16

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.ej) #5, !nosanitize !16
  unreachable, !nosanitize !16

bb.u:                                             ; preds = %bb.s
  %i.en = extractelement <2 x float> %i.ef, i64 0
  %i.eo = fdiv float %i.en, %i.g                  ; 3 uses
  %i.ep = fcmp olt float %i.eo, 0.000000e+00
  %i.eq = fcmp ogt float %i.eo, 1.000000e+00
  %i.er = select i1 %i.eq, float 1.000000e+00, float %i.eo
  %i.es = select i1 %i.ep, float 0.000000e+00, float %i.er
  store float %i.es, ptr %5, align 4, !tbaa !18
  %i.et = icmp ne ptr %6, null, !nosanitize !16
  %i.eu = ptrtoint ptr %6 to i64, !nosanitize !16 ; 2 uses
  %i.ev = and i64 %i.eu, 3, !nosanitize !16
  %i.ew = icmp eq i64 %i.ev, 0, !nosanitize !16
  %i.ex = and i1 %i.et, %i.ew, !nosanitize !16
  br i1 %i.ex, label %bb.w, label %bb.v, !prof !17, !nosanitize !16

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @4, i64 %i.eu) #5, !nosanitize !16
  unreachable, !nosanitize !16

bb.w:                                             ; preds = %bb.u
  %i.ey = fdiv float %i.eg, %i.g                  ; 3 uses
  %i.ez = fcmp olt float %i.ey, 0.000000e+00
  %i.fa = fcmp ogt float %i.ey, 1.000000e+00
  %i.fb = select i1 %i.fa, float 1.000000e+00, float %i.ey
  %i.fc = select i1 %i.ez, float 0.000000e+00, float %i.fb
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.g, %bb.w
  %.sink = phi float [ %i.fc, %bb.w ], [ 0.000000e+00, %bb.g ]
  store float %.sink, ptr %6, align 4, !tbaa !18
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.r, %bb.j, %bb.k, %bb.m, %bb.n, %bb.p, %bb.q, %bb.b, %bb.c, %bb.d
  %.10 = phi i1 [ false, %bb.p ], [ false, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.n ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.m ], [ true, %.critedge.sink.split ]
  ret i1 %.10
}

; Function Attrs: noreturn nounwind uwtable
declare void @__ubsan_handle_type_mismatch_v1_abort(ptr, i64) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #3

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind uwtable }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

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
