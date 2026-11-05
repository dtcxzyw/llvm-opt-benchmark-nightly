Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/cost_sse2?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@VP8SetResidualCoeffs = external local_unnamed_addr global ptr, align 8
@VP8GetResidualCost = external local_unnamed_addr global ptr, align 8
@VP8LevelFixedCosts = external local_unnamed_addr constant [2048 x i16], align 16
@VP8EncBands = external local_unnamed_addr constant [17 x i8], align 16
@VP8EntropyCost = external local_unnamed_addr constant [256 x i16], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @VP8EncDspCostInitSSE2() local_unnamed_addr #0 {
bb.a:
  store ptr @SetResidualCoeffs_SSE2, ptr @VP8SetResidualCoeffs, align 8, !tbaa !18
  store ptr @GetResidualCost_SSE2, ptr @VP8GetResidualCost, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @SetResidualCoeffs_SSE2(ptr noalias noundef %0, ptr noalias nofree noundef writeonly captures(none) initializes((4, 16)) %1) #1 {
bb.a:
  %i.a = load <8 x i16>, ptr %0, align 1, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load <8 x i16>, ptr %i.b, align 1, !tbaa !9
  %i.d = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.a, <8 x i16> %i.c)
  %i.e = icmp eq <16 x i8> %i.d, zeroinitializer
  %i.f = bitcast <16 x i1> %i.e to i16            ; 2 uses
  %.not = icmp eq i16 %i.f, -1
  %i.g = xor i16 %i.f, -1
  %i.h = zext i16 %i.g to i32
  %i.i = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 range(i32 1, 0) %i.h, i1 true)
  %i.j = xor i32 %i.i, 31
  %i.k = select i1 %.not, i32 -1, i32 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %0, ptr %i.m, align 8, !tbaa !17
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal i32 @GetResidualCost_SSE2(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 7 uses
  %i.b = alloca [16 x i8], align 16               ; 7 uses
  %i.c = alloca [16 x i16], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.d = load i32, ptr %1, align 8, !tbaa !20     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !21   ; 2 uses
  %i.g = sext i32 %i.d to i64                     ; 9 uses
  %i.h = getelementptr inbounds [33 x i8], ptr %i.f, i64 %i.g
  %i.i = sext i32 %0 to i64                       ; 2 uses
  %i.j = getelementptr inbounds [11 x i8], ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !9     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22   ; 4 uses
  %i.n = getelementptr inbounds [24 x i8], ptr %i.m, i64 %i.g
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.i
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !23   ; 3 uses
  %i.q = icmp eq i32 %0, 0
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.pn.in.i = xor i8 %i.k, -1
  %.pn.i = zext i8 %.pn.in.i to i64
  %.in.in.i = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i
  %.in.i = load i16, ptr %.in.in.i, align 2, !tbaa !25
  %i.r = zext i16 %.in.i to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = phi i32 [ %i.r, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !16   ; 5 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.pn.i64 = zext i8 %i.k to i64
  %.in.in.i65 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i64
  %.in.i66 = load i16, ptr %.in.in.i65, align 2, !tbaa !25
  %i.w = zext i16 %.in.i66 to i32
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17   ; 2 uses
  %i.z = load <8 x i16>, ptr %i.y, align 1, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ab = load <8 x i16>, ptr %i.aa, align 1, !tbaa !9
  %i.ac = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.z, i1 false) ; 2 uses
  %i.ad = tail call <8 x i16> @llvm.abs.v8i16(<8 x i16> %i.ab, i1 false) ; 2 uses
  %i.ae = tail call <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16> %i.ac, <8 x i16> %i.ad) ; 2 uses
  %i.af = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ae, <16 x i8> splat (i8 2))
  %i.ag = tail call <16 x i8> @llvm.umin.v16i8(<16 x i8> %i.ae, <16 x i8> splat (i8 67))
  store <16 x i8> %i.af, ptr %i.b, align 16, !tbaa !9
  store <16 x i8> %i.ag, ptr %i.a, align 16, !tbaa !9
  store <8 x i16> %i.ac, ptr %i.c, align 16, !tbaa !9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store <8 x i16> %i.ad, ptr %i.ah, align 16, !tbaa !9
  %i.ai = icmp slt i32 %i.d, %i.u
  br i1 %i.ai, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %i.u to i64    ; 3 uses
  %i.aj = sub nsw i64 %wide.trip.count, %i.g
  %xtraiter = and i64 %i.aj, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.ak = getelementptr inbounds i8, ptr %i.b, i64 %i.g
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !9
  %i.am = getelementptr inbounds i8, ptr %i.a, i64 %i.g
  %i.an = load i8, ptr %i.am, align 1, !tbaa !9
  %i.ao = getelementptr inbounds [2 x i8], ptr %i.c, i64 %i.g
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !25
  %i.aq = zext i16 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr @VP8LevelFixedCosts, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !25
  %i.at = zext i16 %i.as to i32
  %i.au = zext i8 %i.an to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.p, i64 %i.au
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !25
  %i.ax = zext i16 %i.aw to i32
  %i.ay = add nuw nsw i32 %i.s, %i.at
  %i.az = add nuw nsw i32 %i.ay, %i.ax            ; 2 uses
  %indvars.iv.next.prol = add nsw i64 %i.g, 1     ; 2 uses
  %i.ba = getelementptr inbounds [24 x i8], ptr %i.m, i64 %indvars.iv.next.prol
  %i.bb = zext i8 %i.al to i64
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !23 ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa83.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.bd, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %i.g, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.06172.unr = phi ptr [ %i.p, %.lr.ph.preheader ], [ %i.bd, %.lr.ph.prol ]
  %.06271.unr = phi i32 [ %i.s, %.lr.ph.preheader ], [ %i.az, %.lr.ph.prol ]
  %i.be = add nsw i64 %wide.trip.count, -1
  %i.bf = icmp eq i64 %i.be, %i.g
  br i1 %i.bf, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.06172 = phi ptr [ %i.ct, %.lr.ph ], [ %.06172.unr, %.lr.ph.prol.loopexit ]
  %.06271 = phi i32 [ %i.cp, %.lr.ph ], [ %.06271.unr, %.lr.ph.prol.loopexit ]
  %i.bg = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !9
  %i.bi = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !9
  %i.bk = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !25
  %i.bm = zext i16 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr @VP8LevelFixedCosts, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2, !tbaa !25
  %i.bp = zext i16 %i.bo to i32
  %i.bq = zext i8 %i.bj to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %.06172, i64 %i.bq
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !25
  %i.bt = zext i16 %i.bs to i32
  %i.bu = add nuw nsw i32 %.06271, %i.bp
  %i.bv = add nuw nsw i32 %i.bu, %i.bt
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.bw = getelementptr inbounds [24 x i8], ptr %i.m, i64 %indvars.iv.next
  %i.bx = zext i8 %i.bh to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !23
  %i.ca = getelementptr inbounds i8, ptr %i.b, i64 %indvars.iv.next
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !9
  %i.cc = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !9
  %i.ce = getelementptr inbounds [2 x i8], ptr %i.c, i64 %indvars.iv.next
  %i.cf = load i16, ptr %i.ce, align 2, !tbaa !25
  %i.cg = zext i16 %i.cf to i64
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr @VP8LevelFixedCosts, i64 %i.cg
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !25
  %i.cj = zext i16 %i.ci to i32
  %i.ck = zext i8 %i.cd to i64
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.bz, i64 %i.ck
  %i.cm = load i16, ptr %i.cl, align 2, !tbaa !25
  %i.cn = zext i16 %i.cm to i32
  %i.co = add nuw nsw i32 %i.bv, %i.cj
  %i.cp = add nuw nsw i32 %i.co, %i.cn            ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 3 uses
  %i.cq = getelementptr inbounds [24 x i8], ptr %i.m, i64 %indvars.iv.next.1
  %i.cr = zext i8 %i.cb to i64
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.cr
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !23 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.e
  %.062.lcssa = phi i32 [ %i.s, %bb.e ], [ %.lcssa83.unr, %.lr.ph.prol.loopexit ], [ %i.cp, %.lr.ph ]
  %.061.lcssa = phi ptr [ %i.p, %bb.e ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ct, %.lr.ph ]
  %.060.lcssa = phi i32 [ %i.d, %bb.e ], [ %i.u, %.lr.ph ], [ %i.u, %.lr.ph.prol.loopexit ] ; 2 uses
  %2 = zext nneg i32 %.060.lcssa to i64           ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.a, i64 %2
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !9
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %2
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !25
  %i.cy = zext i16 %i.cx to i64
  %i.cz = getelementptr inbounds nuw [2 x i8], ptr @VP8LevelFixedCosts, i64 %i.cy
  %i.da = load i16, ptr %i.cz, align 2, !tbaa !25
  %i.db = zext i16 %i.da to i32
  %i.dc = zext i8 %i.cv to i64
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.061.lcssa, i64 %i.dc
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !25
  %i.df = zext i16 %i.de to i32
  %i.dg = add nuw nsw i32 %.062.lcssa, %i.db
  %i.dh = add nuw nsw i32 %i.dg, %i.df            ; 2 uses
  %i.di = icmp samesign ult i32 %.060.lcssa, 15
  br i1 %i.di, label %bb.f, label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.dj = getelementptr i8, ptr @VP8EncBands, i64 %2
  %i.dk = getelementptr i8, ptr %i.dj, i64 1
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !9
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 %2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !9
  %i.do = zext i8 %i.dl to i64
  %i.dp = getelementptr inbounds nuw [33 x i8], ptr %i.f, i64 %i.do
  %i.dq = zext i8 %i.dn to i64
  %i.dr = getelementptr inbounds nuw [11 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !9
  %.pn.i68 = zext i8 %i.ds to i64
  %.in.in.i69 = getelementptr inbounds nuw [2 x i8], ptr @VP8EntropyCost, i64 %.pn.i68
  %.in.i70 = load i16, ptr %.in.in.i69, align 2, !tbaa !25
  %i.dt = zext i16 %.in.i70 to i32
  %i.du = add nuw nsw i32 %i.dh, %i.dt
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f, %bb.d
  %.0 = phi i32 [ %i.w, %bb.d ], [ %i.du, %bb.f ], [ %i.dh, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.sse2.packsswb.128(<8 x i16>, <8 x i16>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i8> @llvm.umin.v16i8(<16 x i8>, <16 x i8>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i16> @llvm.abs.v8i16(<8 x i16>, i1 immarg) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!4, !4, i64 0}
!10 = !{!"p1 short", !8, i64 0}
!11 = !{!"p1 omnipotent char", !8, i64 0}
!12 = !{!"p1 int", !8, i64 0}
!13 = !{!"any p2 pointer", !8, i64 0}
!14 = !{!"p2 short", !13, i64 0}
!15 = !{!"VP8Residual", !5, i64 0, !5, i64 4, !10, i64 8, !5, i64 16, !11, i64 24, !12, i64 32, !14, i64 40}
!16 = !{!15, !5, i64 4}
!17 = !{!15, !10, i64 8}
!18 = !{!8, !8, i64 0}
!19 = distinct !{!19, !26}
!20 = !{!15, !5, i64 0}
!21 = !{!15, !11, i64 24}
!22 = !{!15, !14, i64 40}
!23 = !{!10, !10, i64 0}
!24 = !{!"short", !4, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!"llvm.loop.mustprogress"}
end_hunk_0
