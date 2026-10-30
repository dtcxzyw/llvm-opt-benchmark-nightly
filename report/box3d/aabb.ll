Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/aabb?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3AABB = type { %struct.b3Vec3, %struct.b3Vec3 }
%struct.b3Vec3 = type { float, float, float }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable
define hidden noundef zeroext i1 @b3RayCastAABB(ptr nofree noundef readonly byval(%struct.b3AABB) align 8 captures(none) %0, <2 x float> %1, float %2, <2 x float> %3, float %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(none) %6) local_unnamed_addr #0 {
bb.a:
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %1, i64 0 ; 4 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %1, i64 1 ; 4 uses
  %i.a = fsub float %4, %2                        ; 3 uses
  %i.b = fsub <2 x float> %3, %1                  ; 4 uses
  %i.c = fmul <2 x float> %i.b, %i.b              ; 2 uses
  %shift = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.c, %shift
  %i.d = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.e = fmul float %i.a, %i.a
  %i.f = fadd float %i.e, %i.d
  %i.g = tail call float @sqrtf(float noundef %i.f) #3 ; 6 uses
  %i.h = fcmp olt float %i.g, f0x34000000
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = load float, ptr %0, align 8, !tbaa !11
  %i.j = fcmp ult float %.sroa.03.0.vec.extract.i, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.l = load float, ptr %i.k, align 4
  %i.m = fcmp ugt float %.sroa.03.0.vec.extract.i, %i.l
  %or.cond = select i1 %i.j, i1 true, i1 %i.m
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load float, ptr %i.n, align 4, !tbaa !12
  %i.p = fcmp ult float %.sroa.03.4.vec.extract.i, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load float, ptr %i.q, align 8
  %i.s = fcmp ugt float %.sroa.03.4.vec.extract.i, %i.r
  %or.cond164 = select i1 %i.p, i1 true, i1 %i.s
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load float, ptr %i.t, align 8
  %i.v = fcmp ult float %2, %i.u
  %or.cond167 = select i1 %or.cond164, i1 true, i1 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = load float, ptr %i.w, align 4
  %i.y = fcmp ugt float %2, %i.x
  %or.cond170 = select i1 %or.cond167, i1 true, i1 %i.y
  br i1 %or.cond170, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float 0.000000e+00, ptr %5, align 4, !tbaa !13
  br label %.critedge.sink.split

bb.e:                                             ; preds = %bb.a
  %i.z = fdiv float 1.000000e+00, %i.g            ; 3 uses
  %i.aa = extractelement <2 x float> %i.b, i64 0
  %i.ab = fmul float %i.aa, %i.z                  ; 2 uses
  %i.ac = extractelement <2 x float> %i.b, i64 1
  %i.ad = fmul float %i.ac, %i.z                  ; 2 uses
  %i.ae = fmul float %i.a, %i.z                   ; 2 uses
  %i.af = load float, ptr %0, align 8, !tbaa !11  ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !14 ; 2 uses
  %i.ai = tail call float @llvm.fabs.f32(float %i.ab)
  %i.aj = fcmp olt float %i.ai, f0x34000000
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = fcmp olt float %.sroa.03.0.vec.extract.i, %i.af
  %i.al = fcmp ogt float %.sroa.03.0.vec.extract.i, %i.ah
  %or.cond171 = select i1 %i.ak, i1 true, i1 %i.al
  %i.am = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.g, i64 1
  br i1 %or.cond171, label %.critedge, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.an = insertelement <2 x float> poison, float %i.ah, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.af, i64 1
  %i.ap = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fsub <2 x float> %i.ao, %i.ap
  %i.ar = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fdiv <2 x float> %i.aq, %i.as           ; 4 uses
  %i.au = extractelement <2 x float> %i.at, i64 0
  %i.av = extractelement <2 x float> %i.at, i64 1
  %i.aw = fcmp ogt float %i.av, %i.au
  %i.ax = insertelement <2 x i1> poison, i1 %i.aw, i64 0
  %i.ay = shufflevector <2 x i1> %i.ax, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.az = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ba = select <2 x i1> %i.ay, <2 x float> %i.at, <2 x float> %i.az ; 3 uses
  %i.bb = extractelement <2 x float> %i.ba, i64 0
  %i.bc = fcmp olt float %i.bb, 0.000000e+00
  %i.bd = extractelement <2 x float> %i.ba, i64 1
  %i.be = fcmp olt float %i.g, %i.bd
  %i.bf = insertelement <2 x i1> poison, i1 %i.bc, i64 0
  %i.bg = insertelement <2 x i1> %i.bf, i1 %i.be, i64 1
  %i.bh = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.g, i64 1
  %i.bi = select <2 x i1> %i.bg, <2 x float> %i.bh, <2 x float> %i.ba ; 3 uses
  %i.bj = extractelement <2 x float> %i.bi, i64 0
  %i.bk = extractelement <2 x float> %i.bi, i64 1
  %i.bl = fcmp ule float %i.bj, %i.bk
  br i1 %i.bl, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bm = phi <2 x float> [ %i.am, %bb.f ], [ %i.bi, %bb.g ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !12 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load float, ptr %i.bp, align 8, !tbaa !15 ; 2 uses
  %i.br = tail call float @llvm.fabs.f32(float %i.ad)
  %i.bs = fcmp olt float %i.br, f0x34000000
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bt = fcmp olt float %.sroa.03.4.vec.extract.i, %i.bo
  %i.bu = fcmp ogt float %.sroa.03.4.vec.extract.i, %i.bq
  %or.cond172 = select i1 %i.bt, i1 true, i1 %i.bu
  br i1 %or.cond172, label %.critedge, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bv = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bw = insertelement <2 x float> %i.bv, float %i.bo, i64 1
  %i.bx = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.by = fsub <2 x float> %i.bw, %i.bx
  %i.bz = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fdiv <2 x float> %i.by, %i.ca           ; 4 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0
  %i.cd = extractelement <2 x float> %i.cb, i64 1
  %i.ce = fcmp ogt float %i.cd, %i.cc
  %i.cf = insertelement <2 x i1> poison, i1 %i.ce, i64 0
  %i.cg = shufflevector <2 x i1> %i.cf, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ch = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ci = select <2 x i1> %i.cg, <2 x float> %i.cb, <2 x float> %i.ch ; 3 uses
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> %i.bm, <2 x i32> <i32 0, i32 3>
  %i.ck = shufflevector <2 x float> %i.bm, <2 x float> %i.ci, <2 x i32> <i32 0, i32 3>
  %i.cl = fcmp olt <2 x float> %i.cj, %i.ck
  %i.cm = select <2 x i1> %i.cl, <2 x float> %i.bm, <2 x float> %i.ci ; 3 uses
  %i.cn = extractelement <2 x float> %i.cm, i64 0
  %i.co = extractelement <2 x float> %i.cm, i64 1
  %i.cp = fcmp ule float %i.cn, %i.co
  br i1 %i.cp, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.cq = phi <2 x float> [ %i.bm, %bb.i ], [ %i.cm, %bb.j ] ; 4 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cs = load float, ptr %i.cr, align 8, !tbaa !16 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !17 ; 2 uses
  %i.cv = tail call float @llvm.fabs.f32(float %i.ae)
  %i.cw = fcmp olt float %i.cv, f0x34000000
  br i1 %i.cw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cx = fcmp olt float %2, %i.cs
  %i.cy = fcmp ogt float %2, %i.cu
  %or.cond175 = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %or.cond175, label %.critedge, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cz = insertelement <2 x float> poison, float %i.cu, i64 0
  %i.da = insertelement <2 x float> %i.cz, float %i.cs, i64 1
  %i.db = insertelement <2 x float> poison, float %2, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fsub <2 x float> %i.da, %i.dc
  %i.de = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fdiv <2 x float> %i.dd, %i.df           ; 4 uses
  %i.dh = extractelement <2 x float> %i.dg, i64 0
  %i.di = extractelement <2 x float> %i.dg, i64 1
  %i.dj = fcmp ogt float %i.di, %i.dh
  %i.dk = insertelement <2 x i1> poison, i1 %i.dj, i64 0
  %i.dl = shufflevector <2 x i1> %i.dk, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dm = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dn = select <2 x i1> %i.dl, <2 x float> %i.dg, <2 x float> %i.dm ; 3 uses
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> %i.cq, <2 x i32> <i32 0, i32 3>
  %i.dp = shufflevector <2 x float> %i.cq, <2 x float> %i.dn, <2 x i32> <i32 0, i32 3>
  %i.dq = fcmp olt <2 x float> %i.do, %i.dp
  %i.dr = select <2 x i1> %i.dq, <2 x float> %i.cq, <2 x float> %i.dn ; 3 uses
  %i.ds = extractelement <2 x float> %i.dr, i64 0
  %i.dt = extractelement <2 x float> %i.dr, i64 1
  %i.du = fcmp ule float %i.ds, %i.dt
  br i1 %i.du, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.dv = phi <2 x float> [ %i.cq, %bb.l ], [ %i.dr, %bb.m ] ; 2 uses
  %i.dw = extractelement <2 x float> %i.dv, i64 1
  %i.dx = fcmp olt float %i.dw, 0.000000e+00
  br i1 %i.dx, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dy = shufflevector <2 x float> %i.dv, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.dz = insertelement <4 x float> poison, float %i.g, i64 0
  %i.ea = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eb = fdiv <4 x float> %i.dy, %i.ea           ; 4 uses
  %i.ec = fcmp olt <4 x float> %i.eb, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ed = fcmp ogt <4 x float> %i.eb, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ee = extractelement <4 x i1> %i.ed, i64 3
  %i.ef = extractelement <4 x float> %i.eb, i64 1
  %i.eg = select i1 %i.ee, float 1.000000e+00, float %i.ef
  %i.eh = extractelement <4 x i1> %i.ec, i64 1
  %i.ei = select i1 %i.eh, float 0.000000e+00, float %i.eg
  store float %i.ei, ptr %5, align 4, !tbaa !13
  %i.ej = extractelement <4 x i1> %i.ed, i64 2
  %i.ek = extractelement <4 x float> %i.eb, i64 0
  %i.el = select i1 %i.ej, float 1.000000e+00, float %i.ek
  %i.em = extractelement <4 x i1> %i.ec, i64 0
  %i.en = select i1 %i.em, float 0.000000e+00, float %i.el
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.d, %bb.o
  %.sink = phi float [ %i.en, %bb.o ], [ 0.000000e+00, %bb.d ]
  store float %.sink, ptr %6, align 4, !tbaa !13
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.n, %bb.f, %bb.g, %bb.i, %bb.j, %bb.l, %bb.m, %bb.b, %bb.c
  %.10 = phi i1 [ false, %bb.l ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.j ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.i ], [ true, %.critedge.sink.split ]
  ret i1 %.10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!"b3Vec3", !8, i64 0, !8, i64 4, !8, i64 8}
!10 = !{!"b3AABB", !9, i64 0, !9, i64 12}
!11 = !{!10, !8, i64 0}
!12 = !{!10, !8, i64 4}
!13 = !{!8, !8, i64 0}
!14 = !{!10, !8, i64 12}
!15 = !{!10, !8, i64 16}
!16 = !{!10, !8, i64 8}
!17 = !{!10, !8, i64 20}
end_hunk_0
