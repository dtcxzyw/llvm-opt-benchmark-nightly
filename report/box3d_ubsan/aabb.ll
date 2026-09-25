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
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.f) ; 7 uses
  %i.g = fcmp olt float %sqrt.i, f0x34000000
  br i1 %i.g, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.h = load float, ptr %0, align 8, !tbaa !13
  %i.i = fcmp ult float %.sroa.0.0.vec.extract.i, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load float, ptr %i.j, align 4
  %i.l = fcmp ugt float %.sroa.0.0.vec.extract.i, %i.k
  %or.cond168 = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond168, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !14
  %i.o = fcmp ult float %.sroa.0.4.vec.extract.i, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load float, ptr %i.p, align 8
  %i.r = fcmp ugt float %.sroa.0.4.vec.extract.i, %i.q
  %or.cond = select i1 %i.o, i1 true, i1 %i.r
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load float, ptr %i.s, align 8, !tbaa !15
  %i.u = fcmp ult float %2, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load float, ptr %i.v, align 4
  %i.x = fcmp ugt float %2, %i.w
  %or.cond158 = select i1 %i.u, i1 true, i1 %i.x
  br i1 %or.cond158, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp ne ptr %5, null, !nosanitize !16
  %i.z = ptrtoint ptr %5 to i64, !nosanitize !16  ; 2 uses
  %i.aa = and i64 %i.z, 3, !nosanitize !16
  %i.ab = icmp eq i64 %i.aa, 0, !nosanitize !16
  %i.ac = and i1 %i.y, %i.ab, !nosanitize !16
  br i1 %i.ac, label %bb.g, label %bb.f, !prof !17, !nosanitize !16

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.z) #3, !nosanitize !16
  unreachable, !nosanitize !16

bb.g:                                             ; preds = %bb.e
  store float 0.000000e+00, ptr %5, align 4, !tbaa !18
  %i.ad = icmp ne ptr %6, null, !nosanitize !16
  %i.ae = ptrtoint ptr %6 to i64, !nosanitize !16 ; 2 uses
  %i.af = and i64 %i.ae, 3, !nosanitize !16
  %i.ag = icmp eq i64 %i.af, 0, !nosanitize !16
  %i.ah = and i1 %i.ad, %i.ag, !nosanitize !16
  br i1 %i.ah, label %.critedge.sink.split, label %bb.h, !prof !17, !nosanitize !16

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @2, i64 %i.ae) #3, !nosanitize !16
  unreachable, !nosanitize !16

bb.i:                                             ; preds = %bb.a
  %i.ai = fdiv float 1.000000e+00, %sqrt.i        ; 3 uses
  %7 = extractelement <2 x float> %i.b, i64 0
  %i.aj = fmul float %7, %i.ai                    ; 2 uses
  %i.ak = extractelement <2 x float> %i.b, i64 1
  %i.al = fmul float %i.ak, %i.ai                 ; 2 uses
  %i.am = fmul float %i.a, %i.ai                  ; 2 uses
  %i.an = load float, ptr %0, align 8, !tbaa !13  ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !19 ; 2 uses
  %i.aq = tail call float @llvm.fabs.f32(float %i.aj)
  %i.ar = fcmp olt float %i.aq, f0x34000000
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.as = fcmp olt float %.sroa.0.0.vec.extract.i, %i.an
  %i.at = fcmp ogt float %.sroa.0.0.vec.extract.i, %i.ap
  %or.cond159 = select i1 %i.as, i1 true, i1 %i.at
  %i.au = insertelement <2 x float> <float 0.000000e+00, float poison>, float %sqrt.i, i64 1
  br i1 %or.cond159, label %.critedge, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.av = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.an, i64 1
  %i.ax = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ay = fsub <2 x float> %i.aw, %i.ax
  %i.az = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.ba = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bb = fdiv <2 x float> %i.ay, %i.ba           ; 4 uses
  %i.bc = extractelement <2 x float> %i.bb, i64 0
  %i.bd = extractelement <2 x float> %i.bb, i64 1
  %i.be = fcmp ogt float %i.bd, %i.bc
  %i.bf = insertelement <2 x i1> poison, i1 %i.be, i64 0
  %i.bg = shufflevector <2 x i1> %i.bf, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bh = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bi = select <2 x i1> %i.bg, <2 x float> %i.bb, <2 x float> %i.bh ; 3 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  %i.bk = fcmp olt float %i.bj, 0.000000e+00
  %i.bl = extractelement <2 x float> %i.bi, i64 1
  %i.bm = fcmp olt float %sqrt.i, %i.bl
  %i.bn = insertelement <2 x i1> poison, i1 %i.bk, i64 0
  %i.bo = insertelement <2 x i1> %i.bn, i1 %i.bm, i64 1
  %i.bp = insertelement <2 x float> <float 0.000000e+00, float poison>, float %sqrt.i, i64 1
  %i.bq = select <2 x i1> %i.bo, <2 x float> %i.bp, <2 x float> %i.bi ; 3 uses
  %i.br = extractelement <2 x float> %i.bq, i64 0
  %i.bs = extractelement <2 x float> %i.bq, i64 1
  %i.bt = fcmp ule float %i.br, %i.bs
  br i1 %i.bt, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bu = phi <2 x float> [ %i.au, %bb.j ], [ %i.bq, %bb.k ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !14 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load float, ptr %i.bx, align 8, !tbaa !20 ; 2 uses
  %i.bz = tail call float @llvm.fabs.f32(float %i.al)
  %i.ca = fcmp olt float %i.bz, f0x34000000
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = fcmp olt float %.sroa.0.4.vec.extract.i, %i.bw
  %i.cc = fcmp ogt float %.sroa.0.4.vec.extract.i, %i.by
  %or.cond160 = select i1 %i.cb, i1 true, i1 %i.cc
  br i1 %or.cond160, label %.critedge, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cd = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ce = insertelement <2 x float> %i.cd, float %i.bw, i64 1
  %i.cf = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = fsub <2 x float> %i.ce, %i.cf
  %i.ch = insertelement <2 x float> poison, float %i.al, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = fdiv <2 x float> %i.cg, %i.ci           ; 4 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 0
  %i.cl = extractelement <2 x float> %i.cj, i64 1
  %i.cm = fcmp ogt float %i.cl, %i.ck
  %i.cn = insertelement <2 x i1> poison, i1 %i.cm, i64 0
  %i.co = shufflevector <2 x i1> %i.cn, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cp = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cq = select <2 x i1> %i.co, <2 x float> %i.cj, <2 x float> %i.cp ; 3 uses
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> %i.bu, <2 x i32> <i32 0, i32 3>
  %i.cs = shufflevector <2 x float> %i.bu, <2 x float> %i.cq, <2 x i32> <i32 0, i32 3>
  %i.ct = fcmp olt <2 x float> %i.cr, %i.cs
  %i.cu = select <2 x i1> %i.ct, <2 x float> %i.bu, <2 x float> %i.cq ; 3 uses
  %i.cv = extractelement <2 x float> %i.cu, i64 0
  %i.cw = extractelement <2 x float> %i.cu, i64 1
  %i.cx = fcmp ule float %i.cv, %i.cw
  br i1 %i.cx, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cy = phi <2 x float> [ %i.bu, %bb.m ], [ %i.cu, %bb.n ] ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load float, ptr %i.cz, align 8, !tbaa !15 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dc = load float, ptr %i.db, align 4, !tbaa !21 ; 2 uses
  %i.dd = tail call float @llvm.fabs.f32(float %i.am)
  %i.de = fcmp olt float %i.dd, f0x34000000
  br i1 %i.de, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.df = fcmp olt float %2, %i.da
  %i.dg = fcmp ogt float %2, %i.dc
  %or.cond163 = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond163, label %.critedge, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.dh = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.da, i64 1
  %i.dj = insertelement <2 x float> poison, float %2, i64 0
  %i.dk = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dl = fsub <2 x float> %i.di, %i.dk
  %i.dm = insertelement <2 x float> poison, float %i.am, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = fdiv <2 x float> %i.dl, %i.dn           ; 4 uses
  %i.dp = extractelement <2 x float> %i.do, i64 0
  %i.dq = extractelement <2 x float> %i.do, i64 1
  %i.dr = fcmp ogt float %i.dq, %i.dp
  %i.ds = insertelement <2 x i1> poison, i1 %i.dr, i64 0
  %i.dt = shufflevector <2 x i1> %i.ds, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.du = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dv = select <2 x i1> %i.dt, <2 x float> %i.do, <2 x float> %i.du ; 3 uses
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> %i.cy, <2 x i32> <i32 0, i32 3>
  %i.dx = shufflevector <2 x float> %i.cy, <2 x float> %i.dv, <2 x i32> <i32 0, i32 3>
  %i.dy = fcmp olt <2 x float> %i.dw, %i.dx
  %i.dz = select <2 x i1> %i.dy, <2 x float> %i.cy, <2 x float> %i.dv ; 3 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = extractelement <2 x float> %i.dz, i64 1
  %i.ec = fcmp ule float %i.ea, %i.eb
  br i1 %i.ec, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ed = phi <2 x float> [ %i.cy, %bb.p ], [ %i.dz, %bb.q ] ; 2 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 1 ; 2 uses
  %i.ef = fcmp olt float %i.ee, 0.000000e+00
  br i1 %i.ef, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eg = icmp ne ptr %5, null, !nosanitize !16
  %i.eh = ptrtoint ptr %5 to i64, !nosanitize !16 ; 2 uses
  %i.ei = and i64 %i.eh, 3, !nosanitize !16
  %i.ej = icmp eq i64 %i.ei, 0, !nosanitize !16
  %i.ek = and i1 %i.eg, %i.ej, !nosanitize !16
  br i1 %i.ek, label %bb.u, label %bb.t, !prof !17, !nosanitize !16

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.eh) #3, !nosanitize !16
  unreachable, !nosanitize !16

bb.u:                                             ; preds = %bb.s
  %i.el = extractelement <2 x float> %i.ed, i64 0
  %i.em = fdiv float %i.el, %sqrt.i               ; 3 uses
  %i.en = fcmp olt float %i.em, 0.000000e+00
  %i.eo = fcmp ogt float %i.em, 1.000000e+00
  %i.ep = select i1 %i.eo, float 1.000000e+00, float %i.em
  %i.eq = select i1 %i.en, float 0.000000e+00, float %i.ep
  store float %i.eq, ptr %5, align 4, !tbaa !18
  %i.er = icmp ne ptr %6, null, !nosanitize !16
  %i.es = ptrtoint ptr %6 to i64, !nosanitize !16 ; 2 uses
  %i.et = and i64 %i.es, 3, !nosanitize !16
  %i.eu = icmp eq i64 %i.et, 0, !nosanitize !16
  %i.ev = and i1 %i.er, %i.eu, !nosanitize !16
  br i1 %i.ev, label %bb.w, label %bb.v, !prof !17, !nosanitize !16

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @4, i64 %i.es) #3, !nosanitize !16
  unreachable, !nosanitize !16

bb.w:                                             ; preds = %bb.u
  %i.ew = fdiv float %i.ee, %sqrt.i               ; 3 uses
  %i.ex = fcmp olt float %i.ew, 0.000000e+00
  %i.ey = fcmp ogt float %i.ew, 1.000000e+00
  %i.ez = select i1 %i.ey, float 1.000000e+00, float %i.ew
  %i.fa = select i1 %i.ex, float 0.000000e+00, float %i.ez
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.g, %bb.w
  %.sink = phi float [ %i.fa, %bb.w ], [ 0.000000e+00, %bb.g ]
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
