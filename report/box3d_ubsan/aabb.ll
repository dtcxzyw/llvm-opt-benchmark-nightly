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
  %i.aj = extractelement <2 x float> %i.b, i64 0
  %i.ak = fmul float %i.aj, %i.ai                 ; 2 uses
  %i.al = extractelement <2 x float> %i.b, i64 1
  %i.am = fmul float %i.al, %i.ai                 ; 2 uses
  %i.an = fmul float %i.a, %i.ai                  ; 2 uses
  %i.ao = load float, ptr %0, align 8, !tbaa !13  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !19 ; 2 uses
  %i.ar = tail call float @llvm.fabs.f32(float %i.ak)
  %i.as = fcmp olt float %i.ar, f0x34000000
  br i1 %i.as, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = fcmp olt float %.sroa.0.0.vec.extract.i, %i.ao
  %i.au = fcmp ogt float %.sroa.0.0.vec.extract.i, %i.aq
  %or.cond159 = select i1 %i.at, i1 true, i1 %i.au
  %i.av = insertelement <2 x float> <float 0.000000e+00, float poison>, float %sqrt.i, i64 1
  br i1 %or.cond159, label %.critedge, label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aw = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.ao, i64 1
  %i.ay = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.az = fsub <2 x float> %i.ax, %i.ay
  %i.ba = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bc = fdiv <2 x float> %i.az, %i.bb           ; 4 uses
  %i.bd = extractelement <2 x float> %i.bc, i64 0
  %i.be = extractelement <2 x float> %i.bc, i64 1
  %i.bf = fcmp ogt float %i.be, %i.bd
  %i.bg = insertelement <2 x i1> poison, i1 %i.bf, i64 0
  %i.bh = shufflevector <2 x i1> %i.bg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bi = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bj = select <2 x i1> %i.bh, <2 x float> %i.bc, <2 x float> %i.bi ; 3 uses
  %i.bk = extractelement <2 x float> %i.bj, i64 0
  %i.bl = fcmp olt float %i.bk, 0.000000e+00
  %i.bm = extractelement <2 x float> %i.bj, i64 1
  %i.bn = fcmp olt float %sqrt.i, %i.bm
  %i.bo = insertelement <2 x i1> poison, i1 %i.bl, i64 0
  %i.bp = insertelement <2 x i1> %i.bo, i1 %i.bn, i64 1
  %i.bq = insertelement <2 x float> <float 0.000000e+00, float poison>, float %sqrt.i, i64 1
  %i.br = select <2 x i1> %i.bp, <2 x float> %i.bq, <2 x float> %i.bj ; 3 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0
  %i.bt = extractelement <2 x float> %i.br, i64 1
  %i.bu = fcmp ule float %i.bs, %i.bt
  br i1 %i.bu, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bv = phi <2 x float> [ %i.av, %bb.j ], [ %i.br, %bb.k ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !14 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load float, ptr %i.by, align 8, !tbaa !20 ; 2 uses
  %i.ca = tail call float @llvm.fabs.f32(float %i.am)
  %i.cb = fcmp olt float %i.ca, f0x34000000
  br i1 %i.cb, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cc = fcmp olt float %.sroa.0.4.vec.extract.i, %i.bx
  %i.cd = fcmp ogt float %.sroa.0.4.vec.extract.i, %i.bz
  %or.cond160 = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %or.cond160, label %.critedge, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ce = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.bx, i64 1
  %i.cg = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = fsub <2 x float> %i.cf, %i.cg
  %i.ci = insertelement <2 x float> poison, float %i.am, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ck = fdiv <2 x float> %i.ch, %i.cj           ; 4 uses
  %i.cl = extractelement <2 x float> %i.ck, i64 0
  %i.cm = extractelement <2 x float> %i.ck, i64 1
  %i.cn = fcmp ogt float %i.cm, %i.cl
  %i.co = insertelement <2 x i1> poison, i1 %i.cn, i64 0
  %i.cp = shufflevector <2 x i1> %i.co, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cq = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cr = select <2 x i1> %i.cp, <2 x float> %i.ck, <2 x float> %i.cq ; 3 uses
  %i.cs = shufflevector <2 x float> %i.cr, <2 x float> %i.bv, <2 x i32> <i32 0, i32 3>
  %i.ct = shufflevector <2 x float> %i.bv, <2 x float> %i.cr, <2 x i32> <i32 0, i32 3>
  %i.cu = fcmp olt <2 x float> %i.cs, %i.ct
  %i.cv = select <2 x i1> %i.cu, <2 x float> %i.bv, <2 x float> %i.cr ; 3 uses
  %i.cw = extractelement <2 x float> %i.cv, i64 0
  %i.cx = extractelement <2 x float> %i.cv, i64 1
  %i.cy = fcmp ule float %i.cw, %i.cx
  br i1 %i.cy, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cz = phi <2 x float> [ %i.bv, %bb.m ], [ %i.cv, %bb.n ] ; 4 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.db = load float, ptr %i.da, align 8, !tbaa !15 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !21 ; 2 uses
  %i.de = tail call float @llvm.fabs.f32(float %i.an)
  %i.df = fcmp olt float %i.de, f0x34000000
  br i1 %i.df, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.dg = fcmp olt float %2, %i.db
  %i.dh = fcmp ogt float %2, %i.dd
  %or.cond163 = select i1 %i.dg, i1 true, i1 %i.dh
  br i1 %or.cond163, label %.critedge, label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.di = insertelement <2 x float> poison, float %i.dd, i64 0
  %i.dj = insertelement <2 x float> %i.di, float %i.db, i64 1
  %i.dk = insertelement <2 x float> poison, float %2, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fsub <2 x float> %i.dj, %i.dl
  %i.dn = insertelement <2 x float> poison, float %i.an, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fdiv <2 x float> %i.dm, %i.do           ; 4 uses
  %i.dq = extractelement <2 x float> %i.dp, i64 0
  %i.dr = extractelement <2 x float> %i.dp, i64 1
  %i.ds = fcmp ogt float %i.dr, %i.dq
  %i.dt = insertelement <2 x i1> poison, i1 %i.ds, i64 0
  %i.du = shufflevector <2 x i1> %i.dt, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dv = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dw = select <2 x i1> %i.du, <2 x float> %i.dp, <2 x float> %i.dv ; 3 uses
  %i.dx = shufflevector <2 x float> %i.dw, <2 x float> %i.cz, <2 x i32> <i32 0, i32 3>
  %i.dy = shufflevector <2 x float> %i.cz, <2 x float> %i.dw, <2 x i32> <i32 0, i32 3>
  %i.dz = fcmp olt <2 x float> %i.dx, %i.dy
  %i.ea = select <2 x i1> %i.dz, <2 x float> %i.cz, <2 x float> %i.dw ; 3 uses
  %i.eb = extractelement <2 x float> %i.ea, i64 0
  %i.ec = extractelement <2 x float> %i.ea, i64 1
  %i.ed = fcmp ule float %i.eb, %i.ec
  br i1 %i.ed, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.ee = phi <2 x float> [ %i.cz, %bb.p ], [ %i.ea, %bb.q ] ; 2 uses
  %i.ef = extractelement <2 x float> %i.ee, i64 1 ; 2 uses
  %i.eg = fcmp olt float %i.ef, 0.000000e+00
  br i1 %i.eg, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eh = icmp ne ptr %5, null, !nosanitize !16
  %i.ei = ptrtoint ptr %5 to i64, !nosanitize !16 ; 2 uses
  %i.ej = and i64 %i.ei, 3, !nosanitize !16
  %i.ek = icmp eq i64 %i.ej, 0, !nosanitize !16
  %i.el = and i1 %i.eh, %i.ek, !nosanitize !16
  br i1 %i.el, label %bb.u, label %bb.t, !prof !17, !nosanitize !16

bb.t:                                             ; preds = %bb.s
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @3, i64 %i.ei) #3, !nosanitize !16
  unreachable, !nosanitize !16

bb.u:                                             ; preds = %bb.s
  %i.em = extractelement <2 x float> %i.ee, i64 0
  %i.en = fdiv float %i.em, %sqrt.i               ; 3 uses
  %i.eo = fcmp olt float %i.en, 0.000000e+00
  %i.ep = fcmp ogt float %i.en, 1.000000e+00
  %i.eq = select i1 %i.ep, float 1.000000e+00, float %i.en
  %i.er = select i1 %i.eo, float 0.000000e+00, float %i.eq
  store float %i.er, ptr %5, align 4, !tbaa !18
  %i.es = icmp ne ptr %6, null, !nosanitize !16
  %i.et = ptrtoint ptr %6 to i64, !nosanitize !16 ; 2 uses
  %i.eu = and i64 %i.et, 3, !nosanitize !16
  %i.ev = icmp eq i64 %i.eu, 0, !nosanitize !16
  %i.ew = and i1 %i.es, %i.ev, !nosanitize !16
  br i1 %i.ew, label %bb.w, label %bb.v, !prof !17, !nosanitize !16

bb.v:                                             ; preds = %bb.u
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @4, i64 %i.et) #3, !nosanitize !16
  unreachable, !nosanitize !16

bb.w:                                             ; preds = %bb.u
  %i.ex = fdiv float %i.ef, %sqrt.i               ; 3 uses
  %i.ey = fcmp olt float %i.ex, 0.000000e+00
  %i.ez = fcmp ogt float %i.ex, 1.000000e+00
  %i.fa = select i1 %i.ez, float 1.000000e+00, float %i.ex
  %i.fb = select i1 %i.ey, float 0.000000e+00, float %i.fa
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.g, %bb.w
  %.sink = phi float [ %i.fb, %bb.w ], [ 0.000000e+00, %bb.g ]
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
