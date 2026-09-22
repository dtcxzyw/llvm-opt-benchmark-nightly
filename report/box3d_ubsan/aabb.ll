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
  %i.a = shufflevector <2 x float> %3, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.b = insertelement <3 x float> %i.a, float %4, i64 2
  %i.c = shufflevector <2 x float> %1, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.d = insertelement <3 x float> %i.c, float %2, i64 2 ; 2 uses
  %i.e = fsub <3 x float> %i.b, %i.d              ; 4 uses
  %foldExtExtBinop = fmul <3 x float> %i.e, %i.e
  %i.f = extractelement <3 x float> %foldExtExtBinop, i64 0
  %i.g = shufflevector <3 x float> %i.e, <3 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.h = fmul <2 x float> %i.g, %i.g              ; 2 uses
  %i.i = extractelement <2 x float> %i.h, i64 0
  %i.j = fadd float %i.f, %i.i
  %i.k = extractelement <2 x float> %i.h, i64 1
  %i.l = fadd float %i.k, %i.j
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.l) ; 6 uses
  %i.m = fcmp olt float %sqrt.i, f0x34000000
  br i1 %i.m, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.n = load float, ptr %0, align 8, !tbaa !13
  %i.o = fcmp ult float %.sroa.0.0.vec.extract.i, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.q = load float, ptr %i.p, align 4
  %i.r = fcmp ugt float %.sroa.0.0.vec.extract.i, %i.q
  %or.cond168 = select i1 %i.o, i1 true, i1 %i.r
  br i1 %or.cond168, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.t = load float, ptr %i.s, align 4, !tbaa !14
  %i.u = fcmp ult float %.sroa.0.4.vec.extract.i, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load float, ptr %i.v, align 8
  %i.x = fcmp ugt float %.sroa.0.4.vec.extract.i, %i.w
  %or.cond = select i1 %i.u, i1 true, i1 %i.x
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load float, ptr %i.y, align 8, !tbaa !15
  %i.aa = fcmp ult float %2, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ac = load float, ptr %i.ab, align 4
  %i.ad = fcmp ugt float %2, %i.ac
  %or.cond158 = select i1 %i.aa, i1 true, i1 %i.ad
  br i1 %or.cond158, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp ne ptr %5, null, !nosanitize !16
  %i.af = ptrtoint ptr %5 to i64, !nosanitize !16 ; 2 uses
  %i.ag = and i64 %i.af, 3, !nosanitize !16
  %i.ah = icmp eq i64 %i.ag, 0, !nosanitize !16
  %i.ai = and i1 %i.ae, %i.ah, !nosanitize !16
  br i1 %i.ai, label %bb.g, label %bb.f, !prof !17, !nosanitize !16

bb.f:                                             ; preds = %bb.e
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @1, i64 %i.af) #3, !nosanitize !16
  unreachable, !nosanitize !16

bb.g:                                             ; preds = %bb.e
  store float 0.000000e+00, ptr %5, align 4, !tbaa !18
  %i.aj = icmp ne ptr %6, null, !nosanitize !16
  %i.ak = ptrtoint ptr %6 to i64, !nosanitize !16 ; 2 uses
  %i.al = and i64 %i.ak, 3, !nosanitize !16
  %i.am = icmp eq i64 %i.al, 0, !nosanitize !16
  %i.an = and i1 %i.aj, %i.am, !nosanitize !16
  br i1 %i.an, label %.critedge.sink.split, label %bb.h, !prof !17, !nosanitize !16

bb.h:                                             ; preds = %bb.g
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @2, i64 %i.ak) #3, !nosanitize !16
  unreachable, !nosanitize !16

bb.i:                                             ; preds = %bb.a
  %i.ao = fdiv float 1.000000e+00, %sqrt.i
  %i.ap = insertelement <3 x float> poison, float %i.ao, i64 0
  %i.aq = shufflevector <3 x float> %i.ap, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ar = fmul <3 x float> %i.e, %i.aq            ; 6 uses
  %i.as = load float, ptr %0, align 8, !tbaa !13  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.au = load float, ptr %i.at, align 4, !tbaa !19 ; 2 uses
  %i.av = extractelement <3 x float> %i.ar, i64 0
  %i.aw = tail call float @llvm.fabs.f32(float %i.av)
  %i.ax = fcmp olt float %i.aw, f0x34000000
  br i1 %i.ax, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ay = fcmp olt float %.sroa.0.0.vec.extract.i, %i.as
  %i.az = fcmp ogt float %.sroa.0.0.vec.extract.i, %i.au
  %or.cond159 = select i1 %i.ay, i1 true, i1 %i.az
  %i.ba = insertelement <2 x float> <float 0.000000e+00, float poison>, float %sqrt.i, i64 1
  br i1 %or.cond159, label %.critedge, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bb = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.as, i64 1
  %i.bd = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = fsub <2 x float> %i.bc, %i.bd
  %i.bf = shufflevector <3 x float> %i.ar, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fdiv <2 x float> %i.be, %i.bf           ; 4 uses
  %i.bh = extractelement <2 x float> %i.bg, i64 0
  %i.bi = extractelement <2 x float> %i.bg, i64 1
  %i.bj = fcmp ogt float %i.bi, %i.bh
  %i.bk = insertelement <2 x i1> poison, i1 %i.bj, i64 0
  %i.bl = shufflevector <2 x i1> %i.bk, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bm = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bn = select <2 x i1> %i.bl, <2 x float> %i.bg, <2 x float> %i.bm ; 3 uses
  %i.bo = insertelement <2 x float> %i.bn, float %sqrt.i, i64 1 ; 2 uses
  %i.bp = insertelement <2 x float> %i.bn, float 0.000000e+00, i64 0
  %i.bq = fcmp olt <2 x float> %i.bo, %i.bp
  %i.br = insertelement <2 x float> %i.bo, float 0.000000e+00, i64 0
  %i.bs = select <2 x i1> %i.bq, <2 x float> %i.br, <2 x float> %i.bn ; 3 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 0
  %i.bu = extractelement <2 x float> %i.bs, i64 1
  %i.bv = fcmp ule float %i.bt, %i.bu
  br i1 %i.bv, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bw = phi <2 x float> [ %i.ba, %bb.j ], [ %i.bs, %bb.k ] ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.by = load float, ptr %i.bx, align 4, !tbaa !14 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !20 ; 2 uses
  %i.cb = extractelement <3 x float> %i.ar, i64 1
  %i.cc = tail call float @llvm.fabs.f32(float %i.cb)
  %i.cd = fcmp olt float %i.cc, f0x34000000
  br i1 %i.cd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ce = fcmp olt float %.sroa.0.4.vec.extract.i, %i.by
  %i.cf = fcmp ogt float %.sroa.0.4.vec.extract.i, %i.ca
  %or.cond160 = select i1 %i.ce, i1 true, i1 %i.cf
  br i1 %or.cond160, label %.critedge, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.cg = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.ch = insertelement <2 x float> %i.cg, float %i.by, i64 1
  %i.ci = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fsub <2 x float> %i.ch, %i.ci
  %i.ck = shufflevector <3 x float> %i.ar, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = fdiv <2 x float> %i.cj, %i.ck           ; 4 uses
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
  %i.df = extractelement <3 x float> %i.ar, i64 2
  %i.dg = tail call float @llvm.fabs.f32(float %i.df)
  %i.dh = fcmp olt float %i.dg, f0x34000000
  br i1 %i.dh, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.di = fcmp olt float %2, %i.dc
  %i.dj = fcmp ogt float %2, %i.de
  %or.cond163 = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond163, label %.critedge, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.dk = insertelement <2 x float> poison, float %i.de, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %i.dc, i64 1
  %7 = shufflevector <3 x float> %i.d, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dm = fsub <2 x float> %i.dl, %7
  %i.dn = shufflevector <3 x float> %i.ar, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.do = fdiv <2 x float> %i.dm, %i.dn           ; 4 uses
  %i.dp = extractelement <2 x float> %i.do, i64 0
  %i.dq = extractelement <2 x float> %i.do, i64 1
  %i.dr = fcmp ogt float %i.dq, %i.dp
  %i.ds = insertelement <2 x i1> poison, i1 %i.dr, i64 0
  %i.dt = shufflevector <2 x i1> %i.ds, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.du = shufflevector <2 x float> %i.do, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dv = select <2 x i1> %i.dt, <2 x float> %i.do, <2 x float> %i.du ; 3 uses
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> %i.da, <2 x i32> <i32 0, i32 3>
  %i.dx = shufflevector <2 x float> %i.da, <2 x float> %i.dv, <2 x i32> <i32 0, i32 3>
  %i.dy = fcmp olt <2 x float> %i.dw, %i.dx
  %i.dz = select <2 x i1> %i.dy, <2 x float> %i.da, <2 x float> %i.dv ; 3 uses
  %i.ea = extractelement <2 x float> %i.dz, i64 0
  %i.eb = extractelement <2 x float> %i.dz, i64 1
  %i.ec = fcmp ule float %i.ea, %i.eb
  br i1 %i.ec, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ed = phi <2 x float> [ %i.da, %bb.p ], [ %i.dz, %bb.q ] ; 2 uses
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
