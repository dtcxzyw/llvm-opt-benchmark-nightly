Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/aabb?download=true
inline.NumInlined: 15
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3AABB = type { %struct.b3Vec3, %struct.b3Vec3 }
%struct.b3Vec3 = type { float, float, float }

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
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
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.f) ; 6 uses
  %i.g = fcmp olt float %sqrt.i, f0x34000000
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load float, ptr %0, align 8, !tbaa !11
  %i.i = fcmp ult float %.sroa.03.0.vec.extract.i, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load float, ptr %i.j, align 4
  %i.l = fcmp ugt float %.sroa.03.0.vec.extract.i, %i.k
  %or.cond = select i1 %i.i, i1 true, i1 %i.l
  br i1 %or.cond, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !12
  %i.o = fcmp ult float %.sroa.03.4.vec.extract.i, %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load float, ptr %i.p, align 8
  %i.r = fcmp ugt float %.sroa.03.4.vec.extract.i, %i.q
  %or.cond164 = select i1 %i.o, i1 true, i1 %i.r
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load float, ptr %i.s, align 8
  %i.u = fcmp ult float %2, %i.t
  %or.cond167 = select i1 %or.cond164, i1 true, i1 %i.u
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.w = load float, ptr %i.v, align 4
  %i.x = fcmp ugt float %2, %i.w
  %or.cond170 = select i1 %or.cond167, i1 true, i1 %i.x
  br i1 %or.cond170, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float 0.000000e+00, ptr %5, align 4, !tbaa !13
  br label %.critedge.sink.split

bb.e:                                             ; preds = %bb.a
  %i.y = fdiv float 1.000000e+00, %sqrt.i         ; 3 uses
  %i.z = extractelement <2 x float> %i.b, i64 0
  %i.aa = fmul float %i.z, %i.y                   ; 2 uses
  %i.ab = extractelement <2 x float> %i.b, i64 1
  %i.ac = fmul float %i.ab, %i.y                  ; 2 uses
  %i.ad = fmul float %i.a, %i.y                   ; 2 uses
  %i.ae = load float, ptr %0, align 8, !tbaa !11  ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !14 ; 2 uses
  %i.ah = tail call float @llvm.fabs.f32(float %i.aa)
  %i.ai = fcmp olt float %i.ah, f0x34000000
  br i1 %i.ai, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aj = fcmp olt float %.sroa.03.0.vec.extract.i, %i.ae
  %i.ak = fcmp ogt float %.sroa.03.0.vec.extract.i, %i.ag
  %or.cond171 = select i1 %i.aj, i1 true, i1 %i.ak
  %i.al = insertelement <2 x float> <float 0.000000e+00, float poison>, float %sqrt.i, i64 1
  br i1 %or.cond171, label %.critedge, label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.am = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ae, i64 1
  %i.ao = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fsub <2 x float> %i.an, %i.ao
  %i.aq = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.as = fdiv <2 x float> %i.ap, %i.ar           ; 4 uses
  %i.at = extractelement <2 x float> %i.as, i64 0
  %i.au = extractelement <2 x float> %i.as, i64 1
  %i.av = fcmp ogt float %i.au, %i.at
  %i.aw = insertelement <2 x i1> poison, i1 %i.av, i64 0
  %i.ax = shufflevector <2 x i1> %i.aw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ay = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.az = select <2 x i1> %i.ax, <2 x float> %i.as, <2 x float> %i.ay ; 3 uses
  %i.ba = extractelement <2 x float> %i.az, i64 0
  %i.bb = fcmp olt float %i.ba, 0.000000e+00
  %i.bc = extractelement <2 x float> %i.az, i64 1
  %i.bd = fcmp olt float %sqrt.i, %i.bc
  %i.be = insertelement <2 x i1> poison, i1 %i.bb, i64 0
  %i.bf = insertelement <2 x i1> %i.be, i1 %i.bd, i64 1
  %i.bg = insertelement <2 x float> <float 0.000000e+00, float poison>, float %sqrt.i, i64 1
  %i.bh = select <2 x i1> %i.bf, <2 x float> %i.bg, <2 x float> %i.az ; 3 uses
  %i.bi = extractelement <2 x float> %i.bh, i64 0
  %i.bj = extractelement <2 x float> %i.bh, i64 1
  %i.bk = fcmp ule float %i.bi, %i.bj
  br i1 %i.bk, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bl = phi <2 x float> [ %i.al, %bb.f ], [ %i.bh, %bb.g ] ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !12 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !15 ; 2 uses
  %i.bq = tail call float @llvm.fabs.f32(float %i.ac)
  %i.br = fcmp olt float %i.bq, f0x34000000
  br i1 %i.br, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bs = fcmp olt float %.sroa.03.4.vec.extract.i, %i.bn
  %i.bt = fcmp ogt float %.sroa.03.4.vec.extract.i, %i.bp
  %or.cond172 = select i1 %i.bs, i1 true, i1 %i.bt
  br i1 %or.cond172, label %.critedge, label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bu = insertelement <2 x float> poison, float %i.bp, i64 0
  %i.bv = insertelement <2 x float> %i.bu, float %i.bn, i64 1
  %i.bw = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = fsub <2 x float> %i.bv, %i.bw
  %i.by = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.bz = shufflevector <2 x float> %i.by, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ca = fdiv <2 x float> %i.bx, %i.bz           ; 4 uses
  %i.cb = extractelement <2 x float> %i.ca, i64 0
  %i.cc = extractelement <2 x float> %i.ca, i64 1
  %i.cd = fcmp ogt float %i.cc, %i.cb
  %i.ce = insertelement <2 x i1> poison, i1 %i.cd, i64 0
  %i.cf = shufflevector <2 x i1> %i.ce, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.cg = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ch = select <2 x i1> %i.cf, <2 x float> %i.ca, <2 x float> %i.cg ; 3 uses
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> %i.bl, <2 x i32> <i32 0, i32 3>
  %i.cj = shufflevector <2 x float> %i.bl, <2 x float> %i.ch, <2 x i32> <i32 0, i32 3>
  %i.ck = fcmp olt <2 x float> %i.ci, %i.cj
  %i.cl = select <2 x i1> %i.ck, <2 x float> %i.bl, <2 x float> %i.ch ; 3 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0
  %i.cn = extractelement <2 x float> %i.cl, i64 1
  %i.co = fcmp ule float %i.cm, %i.cn
  br i1 %i.co, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.cp = phi <2 x float> [ %i.bl, %bb.i ], [ %i.cl, %bb.j ] ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !16 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !17 ; 2 uses
  %i.cu = tail call float @llvm.fabs.f32(float %i.ad)
  %i.cv = fcmp olt float %i.cu, f0x34000000
  br i1 %i.cv, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cw = fcmp olt float %2, %i.cr
  %i.cx = fcmp ogt float %2, %i.ct
  %or.cond175 = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond175, label %.critedge, label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.cy = insertelement <2 x float> poison, float %i.ct, i64 0
  %i.cz = insertelement <2 x float> %i.cy, float %i.cr, i64 1
  %i.da = insertelement <2 x float> poison, float %2, i64 0
  %i.db = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dc = fsub <2 x float> %i.cz, %i.db
  %i.dd = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.de = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = fdiv <2 x float> %i.dc, %i.de           ; 4 uses
  %i.dg = extractelement <2 x float> %i.df, i64 0
  %i.dh = extractelement <2 x float> %i.df, i64 1
  %i.di = fcmp ogt float %i.dh, %i.dg
  %i.dj = insertelement <2 x i1> poison, i1 %i.di, i64 0
  %i.dk = shufflevector <2 x i1> %i.dj, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dl = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dm = select <2 x i1> %i.dk, <2 x float> %i.df, <2 x float> %i.dl ; 3 uses
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> %i.cp, <2 x i32> <i32 0, i32 3>
  %i.do = shufflevector <2 x float> %i.cp, <2 x float> %i.dm, <2 x i32> <i32 0, i32 3>
  %i.dp = fcmp olt <2 x float> %i.dn, %i.do
  %i.dq = select <2 x i1> %i.dp, <2 x float> %i.cp, <2 x float> %i.dm ; 3 uses
  %i.dr = extractelement <2 x float> %i.dq, i64 0
  %i.ds = extractelement <2 x float> %i.dq, i64 1
  %i.dt = fcmp ule float %i.dr, %i.ds
  br i1 %i.dt, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.du = phi <2 x float> [ %i.cp, %bb.l ], [ %i.dq, %bb.m ] ; 2 uses
  %i.dv = extractelement <2 x float> %i.du, i64 1
  %i.dw = fcmp olt float %i.dv, 0.000000e+00
  br i1 %i.dw, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = shufflevector <2 x float> %i.du, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.dy = insertelement <4 x float> poison, float %sqrt.i, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = fdiv <4 x float> %i.dx, %i.dz           ; 4 uses
  %i.eb = fcmp olt <4 x float> %i.ea, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ec = fcmp ogt <4 x float> %i.ea, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 2 uses
  %i.ed = extractelement <4 x i1> %i.ec, i64 3
  %i.ee = extractelement <4 x float> %i.ea, i64 1
  %i.ef = select i1 %i.ed, float 1.000000e+00, float %i.ee
  %i.eg = extractelement <4 x i1> %i.eb, i64 1
  %i.eh = select i1 %i.eg, float 0.000000e+00, float %i.ef
  store float %i.eh, ptr %5, align 4, !tbaa !13
  %i.ei = extractelement <4 x i1> %i.ec, i64 2
  %i.ej = extractelement <4 x float> %i.ea, i64 0
  %i.ek = select i1 %i.ei, float 1.000000e+00, float %i.ej
  %i.el = extractelement <4 x i1> %i.eb, i64 0
  %i.em = select i1 %i.el, float 0.000000e+00, float %i.ek
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.d, %bb.o
  %.sink = phi float [ %i.em, %bb.o ], [ 0.000000e+00, %bb.d ]
  store float %.sink, ptr %6, align 4, !tbaa !13
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.n, %bb.f, %bb.g, %bb.i, %bb.j, %bb.l, %bb.m, %bb.b, %bb.c
  %.10 = phi i1 [ false, %bb.l ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.j ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.i ], [ true, %.critedge.sink.split ]
  ret i1 %.10
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
