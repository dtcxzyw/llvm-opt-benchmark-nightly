inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 0, 4) i32 @WebPEstimateBestFilter(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x [16 x i32]], align 16        ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  %i.b = add nsw i32 %2, -1
  %i.c = icmp sgt i32 %2, 3
  br i1 %i.c, label %.lr.ph68, label %.preheader63

.lr.ph68:                                         ; preds = %bb.a
  %i.d = icmp sgt i32 %1, 3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  br i1 %i.d, label %.lr.ph.us.preheader, label %.preheader63

.lr.ph.us.preheader:                              ; preds = %.lr.ph68
  %i.h = add nsw i32 %1, -1
  %i.i = zext nneg i32 %1 to i64
  %i.j = zext nneg i32 %i.h to i64
  %i.k = sext i32 %3 to i64
  %i.l = zext nneg i32 %i.b to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv76 = phi i64 [ 2, %.lr.ph.us.preheader ], [ %indvars.iv.next77, %._crit_edge.us ] ; 2 uses
  %i.m = mul nsw i64 %indvars.iv76, %i.k
  %i.n = getelementptr inbounds i8, ptr %0, i64 %i.m ; 3 uses
  %i.o = load i8, ptr %i.n, align 1, !tbaa !7
  %i.p = zext i8 %i.o to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv = phi i64 [ 2, %.lr.ph.us ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.06064.us = phi i32 [ %i.p, %.lr.ph.us ], [ %i.be, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !7
  %i.s = zext i8 %i.r to i32                      ; 5 uses
  %i.t = sub nsw i32 %i.s, %.06064.us
  %i.u = tail call i32 @llvm.abs.i32(i32 %i.t, i1 true)
  %i.v = lshr i32 %i.u, 4
  %i.w = getelementptr i8, ptr %i.q, i64 -1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !7
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = sub nsw i32 %i.s, %i.y
  %i.aa = tail call i32 @llvm.abs.i32(i32 %i.z, i1 true)
  %i.ab = lshr i32 %i.aa, 4
  %i.ac = sub nsw i64 %indvars.iv, %i.i
  %i.ad = getelementptr inbounds i8, ptr %i.n, i64 %i.ac ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !7
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = sub nsw i32 %i.s, %i.af
  %i.ah = tail call i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %i.ai = lshr i32 %i.ah, 4
  %i.aj = getelementptr i8, ptr %i.ad, i64 -1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !7
  %i.al = add nuw nsw i32 %i.af, %i.y
  %i.am = zext i8 %i.ak to i32
  %i.an = sub nsw i32 %i.al, %i.am
  %i.ao = tail call i32 @llvm.smax.i32(i32 %i.an, i32 0)
  %i.ap = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.ao, i32 255)
  %i.aq = sub nsw i32 %i.s, %i.ap
  %i.ar = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  %i.as = lshr i32 %i.ar, 4
  %i.at = zext nneg i32 %i.v to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store i32 1, ptr %i.au, align 4, !tbaa !3
  %i.av = zext nneg i32 %i.ab to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.av
  store i32 1, ptr %i.aw, align 4, !tbaa !3
  %i.ax = zext nneg i32 %i.ai to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ax
  store i32 1, ptr %i.ay, align 4, !tbaa !3
  %i.az = zext nneg i32 %i.as to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.az
  store i32 1, ptr %i.ba, align 4, !tbaa !3
  %i.bb = mul nuw nsw i32 %.06064.us, 3
  %i.bc = add nuw nsw i32 %i.bb, 2
  %i.bd = add nuw nsw i32 %i.bc, %i.s
  %i.be = lshr i32 %i.bd, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bf = icmp samesign ult i64 %indvars.iv.next, %i.j
  br i1 %i.bf, label %bb.b, label %._crit_edge.us, !llvm.loop !8

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 2 ; 2 uses
  %i.bg = icmp samesign ult i64 %indvars.iv.next77, %i.l
  br i1 %i.bg, label %.lr.ph.us, label %.preheader63.loopexit, !llvm.loop !10

.preheader63.loopexit:                            ; preds = %._crit_edge.us
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  %.phi.trans.insert85 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre86 = load i32, ptr %.phi.trans.insert85, align 8, !tbaa !3
  %.phi.trans.insert87 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre88 = load i32, ptr %.phi.trans.insert87, align 4, !tbaa !3
  %.phi.trans.insert89 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.phi.trans.insert114 = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %.pre115 = load i32, ptr %.phi.trans.insert114, align 4, !tbaa !3
  %.phi.trans.insert117 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.pre118 = load i32, ptr %.phi.trans.insert117, align 8, !tbaa !3
  %.phi.trans.insert120 = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %.pre121 = load i32, ptr %.phi.trans.insert120, align 4, !tbaa !3
  %.phi.trans.insert123 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.pre124 = load i32, ptr %.phi.trans.insert123, align 16, !tbaa !3
  %.phi.trans.insert126 = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %.pre127 = load i32, ptr %.phi.trans.insert126, align 4, !tbaa !3
  %i.bh = icmp sgt i32 %.pre, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp sgt i32 %.pre86, 0
  %i.bk = select i1 %i.bj, i32 2, i32 0
  %i.bl = or disjoint i32 %i.bk, %i.bi
  %i.bm = icmp sgt i32 %.pre88, 0
  %i.bn = select i1 %i.bm, i32 3, i32 0
  %i.bo = load <12 x i32>, ptr %.phi.trans.insert89, align 16, !tbaa !3
  %i.bp = icmp sgt <12 x i32> %i.bo, zeroinitializer
  %i.bq = select <12 x i1> %i.bp, <12 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, <12 x i32> zeroinitializer
  %i.br = icmp sgt i32 %.pre115, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp sgt i32 %.pre118, 0
  %i.bu = select i1 %i.bt, i32 2, i32 0
  %i.bv = or disjoint i32 %i.bu, %i.bs
  %i.bw = icmp sgt i32 %.pre121, 0
  %i.bx = select i1 %i.bw, i32 3, i32 0
  %i.by = icmp sgt i32 %.pre124, 0
  %i.bz = select i1 %i.by, i32 4, i32 0
  %i.ca = icmp sgt i32 %.pre127, 0
  %i.cb = select i1 %i.ca, i32 5, i32 0
  %i.cc = insertelement <12 x i32> poison, i32 %i.bx, i64 0
  %i.cd = insertelement <12 x i32> %i.cc, i32 %i.bv, i64 1
  %i.ce = tail call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %i.bq)
  br label %.preheader63

.preheader63:                                     ; preds = %.lr.ph68, %.preheader63.loopexit, %bb.a
  %i.cf = phi i32 [ 0, %bb.a ], [ %i.cb, %.preheader63.loopexit ], [ 0, %.lr.ph68 ]
  %i.cg = phi i32 [ 0, %bb.a ], [ %i.bz, %.preheader63.loopexit ], [ 0, %.lr.ph68 ]
  %i.ch = phi i32 [ 0, %bb.a ], [ %i.bn, %.preheader63.loopexit ], [ 0, %.lr.ph68 ]
  %spec.select.2 = phi i32 [ 0, %bb.a ], [ %i.bl, %.preheader63.loopexit ], [ 0, %.lr.ph68 ]
  %i.ci = phi <12 x i32> [ <i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, %bb.a ], [ %i.cd, %.preheader63.loopexit ], [ <i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, %.lr.ph68 ]
  %i.cj = phi i32 [ 0, %bb.a ], [ %i.ce, %.preheader63.loopexit ], [ 0, %.lr.ph68 ]
  %op.rdx133 = add nsw i32 %i.cj, %i.ch
  %op.rdx134 = add nsw i32 %op.rdx133, %spec.select.2 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.cl = load <10 x i32>, ptr %i.ck, align 8, !tbaa !3
  %i.cm = icmp sgt <10 x i32> %i.cl, zeroinitializer
  %i.cn = select <10 x i1> %i.cm, <10 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, <10 x i32> zeroinitializer
  %i.co = shufflevector <10 x i32> %i.cn, <10 x i32> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 poison, i32 poison>
  %i.cp = shufflevector <12 x i32> %i.co, <12 x i32> %i.ci, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 12, i32 13>
  %i.cq = tail call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %i.cp)
  %op.rdx131 = add i32 %i.cq, %i.cg
  %op.rdx132 = add i32 %op.rdx131, %i.cf          ; 2 uses
  %i.cr = icmp samesign ult i32 %op.rdx132, %op.rdx134
  %spec.select61.1 = zext i1 %i.cr to i32
  %i.cs = tail call i32 @llvm.umin.i32(i32 %op.rdx132, i32 %op.rdx134) ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !3
  %i.cv = icmp sgt i32 %i.cu, 0
  %i.cw = zext i1 %i.cv to i32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %4 = load <14 x i32>, ptr %i.cx, align 8, !tbaa !3
  %5 = icmp sgt <14 x i32> %4, zeroinitializer
  %6 = select <14 x i1> %5, <14 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, <14 x i32> zeroinitializer
  %7 = insertelement <14 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.cw, i64 0
  %8 = or disjoint <14 x i32> %6, %7
  %i.cy = tail call i32 @llvm.vector.reduce.add.v14i32(<14 x i32> %8) ; 2 uses
  %i.cz = icmp samesign ult i32 %i.cy, %i.cs
  %spec.select61.2 = select i1 %i.cz, i32 2, i32 %spec.select61.1
  %i.da = tail call i32 @llvm.umin.i32(i32 %i.cy, i32 %i.cs)
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !3
  %i.dd = icmp sgt i32 %i.dc, 0
  %i.de = zext i1 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %9 = load <14 x i32>, ptr %i.df, align 8, !tbaa !3
  %10 = icmp sgt <14 x i32> %9, zeroinitializer
  %11 = select <14 x i1> %10, <14 x i32> <i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, <14 x i32> zeroinitializer
  %12 = insertelement <14 x i32> <i32 poison, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0>, i32 %i.de, i64 0
  %13 = or disjoint <14 x i32> %11, %12
  %i.dg = tail call i32 @llvm.vector.reduce.add.v14i32(<14 x i32> %13)
  %i.dh = icmp samesign ult i32 %i.dg, %i.da
  %spec.select61.3 = select i1 %i.dh, i32 3, i32 %spec.select61.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %spec.select61.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v14i32(<14 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v12i32(<12 x i32>) #4

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
end_hunk_0
