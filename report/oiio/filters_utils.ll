inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden range(i32 0, 4) i32 @WebPEstimateBestFilter(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x [16 x i32]], align 16        ; 25 uses
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
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader63

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.h = add nsw i32 %1, -1
  %i.i = zext nneg i32 %1 to i64
  %4 = sext i32 %i.h to i64
  %i.j = sext i32 %3 to i64
  %5 = sext i32 %i.b to i64
  br label %.lr.ph

.preheader63.loopexit:                            ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !3
  %.phi.trans.insert84 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre85 = load i32, ptr %.phi.trans.insert84, align 8, !tbaa !3
  %.phi.trans.insert86 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.pre87 = load i32, ptr %.phi.trans.insert86, align 4, !tbaa !3
  %.phi.trans.insert88 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.phi.trans.insert113 = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  %.pre114 = load i32, ptr %.phi.trans.insert113, align 4, !tbaa !3
  %.phi.trans.insert116 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %.pre117 = load i32, ptr %.phi.trans.insert116, align 8, !tbaa !3
  %.phi.trans.insert119 = getelementptr inbounds nuw i8, ptr %i.a, i64 76
  %.pre120 = load i32, ptr %.phi.trans.insert119, align 4, !tbaa !3
  %.phi.trans.insert122 = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.pre123 = load i32, ptr %.phi.trans.insert122, align 16, !tbaa !3
  %.phi.trans.insert125 = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  %.pre126 = load i32, ptr %.phi.trans.insert125, align 4, !tbaa !3
  %i.k = icmp sgt i32 %.pre, 0
  %i.l = zext i1 %i.k to i32
  %i.m = icmp sgt i32 %.pre85, 0
  %i.n = select i1 %i.m, i32 2, i32 0
  %i.o = or disjoint i32 %i.n, %i.l
  %i.p = icmp sgt i32 %.pre87, 0
  %i.q = select i1 %i.p, i32 3, i32 0
  %i.r = load <12 x i32>, ptr %.phi.trans.insert88, align 16, !tbaa !3
  %i.s = icmp sgt <12 x i32> %i.r, zeroinitializer
  %i.t = select <12 x i1> %i.s, <12 x i32> <i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, <12 x i32> zeroinitializer
  %i.u = icmp sgt i32 %.pre114, 0
  %i.v = zext i1 %i.u to i32
  %i.w = icmp sgt i32 %.pre117, 0
  %i.x = select i1 %i.w, i32 2, i32 0
  %i.y = or disjoint i32 %i.x, %i.v
  %i.z = icmp sgt i32 %.pre120, 0
  %i.aa = select i1 %i.z, i32 3, i32 0
  %i.ab = icmp sgt i32 %.pre123, 0
  %i.ac = select i1 %i.ab, i32 4, i32 0
  %i.ad = icmp sgt i32 %.pre126, 0
  %i.ae = select i1 %i.ad, i32 5, i32 0
  %i.af = insertelement <12 x i32> poison, i32 %i.aa, i64 0
  %i.ag = insertelement <12 x i32> %i.af, i32 %i.y, i64 1
  %i.ah = tail call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %i.t)
  br label %.preheader63

.preheader63:                                     ; preds = %.preheader63.loopexit, %.lr.ph68, %bb.a
  %i.ai = phi i32 [ %i.ae, %.preheader63.loopexit ], [ 0, %.lr.ph68 ], [ 0, %bb.a ]
  %i.aj = phi i32 [ %i.ac, %.preheader63.loopexit ], [ 0, %.lr.ph68 ], [ 0, %bb.a ]
  %i.ak = phi i32 [ %i.q, %.preheader63.loopexit ], [ 0, %.lr.ph68 ], [ 0, %bb.a ]
  %spec.select.2 = phi i32 [ %i.o, %.preheader63.loopexit ], [ 0, %.lr.ph68 ], [ 0, %bb.a ]
  %i.al = phi <12 x i32> [ %i.ag, %.preheader63.loopexit ], [ <i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, %.lr.ph68 ], [ <i32 0, i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, %bb.a ]
  %i.am = phi i32 [ %i.ah, %.preheader63.loopexit ], [ 0, %.lr.ph68 ], [ 0, %bb.a ]
  %op.rdx132 = add nsw i32 %i.am, %i.ak
  %op.rdx133 = add nsw i32 %op.rdx132, %spec.select.2 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.ao = load <10 x i32>, ptr %i.an, align 8, !tbaa !3
  %i.ap = icmp sgt <10 x i32> %i.ao, zeroinitializer
  %i.aq = select <10 x i1> %i.ap, <10 x i32> <i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, <10 x i32> zeroinitializer
  %i.ar = shufflevector <10 x i32> %i.aq, <10 x i32> poison, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 poison, i32 poison>
  %i.as = shufflevector <12 x i32> %i.ar, <12 x i32> %i.al, <12 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 12, i32 13>
  %i.at = tail call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %i.as)
  %op.rdx130 = add i32 %i.at, %i.aj
  %op.rdx131 = add i32 %op.rdx130, %i.ai          ; 2 uses
  %i.au = icmp samesign ult i32 %op.rdx131, %op.rdx133
  %spec.select61.1 = zext i1 %i.au to i32
  %i.av = tail call i32 @llvm.umin.i32(i32 %op.rdx131, i32 %op.rdx133) ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 132
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = icmp sgt i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !3
  %i.bc = icmp sgt i32 %i.bb, 0
  %i.bd = select i1 %i.bc, i32 2, i32 0
  %spec.select.2.2 = or disjoint i32 %i.bd, %i.az
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 140
  %i.bf = load <12 x i32>, ptr %i.be, align 4, !tbaa !3
  %i.bg = icmp sgt <12 x i32> %i.bf, zeroinitializer
  %i.bh = select <12 x i1> %i.bg, <12 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>, <12 x i32> zeroinitializer
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  %i.bk = icmp sgt i32 %i.bj, 0
  %i.bl = select i1 %i.bk, i32 15, i32 0
  %i.bm = tail call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %i.bh)
  %op.rdx128 = add nuw nsw i32 %i.bm, %i.bl
  %op.rdx129 = add nuw nsw i32 %op.rdx128, %spec.select.2.2 ; 2 uses
  %i.bn = icmp samesign ult i32 %op.rdx129, %i.av
  %spec.select61.2 = select i1 %i.bn, i32 2, i32 %spec.select61.1
  %i.bo = tail call i32 @llvm.umin.i32(i32 %op.rdx129, i32 %i.av)
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 196
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !3
  %i.br = icmp sgt i32 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !3
  %i.bv = icmp sgt i32 %i.bu, 0
  %i.bw = select i1 %i.bv, i32 2, i32 0
  %spec.select.2.3 = or disjoint i32 %i.bw, %i.bs
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 204
  %i.by = load <12 x i32>, ptr %i.bx, align 4, !tbaa !3
  %i.bz = icmp sgt <12 x i32> %i.by, zeroinitializer
  %i.ca = select <12 x i1> %i.bz, <12 x i32> <i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>, <12 x i32> zeroinitializer
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 252
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !3
  %i.cd = icmp sgt i32 %i.cc, 0
  %i.ce = select i1 %i.cd, i32 15, i32 0
  %i.cf = tail call i32 @llvm.vector.reduce.add.v12i32(<12 x i32> %i.ca)
  %op.rdx = add nuw nsw i32 %i.cf, %i.ce
  %op.rdx127 = add nuw nsw i32 %op.rdx, %spec.select.2.3
  %i.cg = icmp samesign ult i32 %op.rdx127, %i.bo
  %spec.select61.3 = select i1 %i.cg, i32 3, i32 %spec.select61.2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %spec.select61.3

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv75 = phi i64 [ 2, %.lr.ph.preheader ], [ %indvars.iv.next76, %._crit_edge ] ; 2 uses
  %i.ch = mul nsw i64 %indvars.iv75, %i.j
  %i.ci = getelementptr inbounds i8, ptr %0, i64 %i.ch ; 3 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !7
  %i.ck = zext i8 %i.cj to i32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.06064 = phi i32 [ %i.ck, %.lr.ph ], [ %i.dz, %bb.b ] ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !7
  %i.cn = zext i8 %i.cm to i32                    ; 5 uses
  %i.co = sub nsw i32 %i.cn, %.06064
  %i.cp = tail call i32 @llvm.abs.i32(i32 %i.co, i1 true)
  %i.cq = lshr i32 %i.cp, 4
  %i.cr = getelementptr i8, ptr %i.cl, i64 -1
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !7
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = sub nsw i32 %i.cn, %i.ct
  %i.cv = tail call i32 @llvm.abs.i32(i32 %i.cu, i1 true)
  %i.cw = lshr i32 %i.cv, 4
  %i.cx = sub nsw i64 %indvars.iv, %i.i
  %i.cy = getelementptr inbounds i8, ptr %i.ci, i64 %i.cx ; 2 uses
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !7
  %i.da = zext i8 %i.cz to i32                    ; 2 uses
  %i.db = sub nsw i32 %i.cn, %i.da
  %i.dc = tail call i32 @llvm.abs.i32(i32 %i.db, i1 true)
  %i.dd = lshr i32 %i.dc, 4
  %i.de = getelementptr i8, ptr %i.cy, i64 -1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !7
  %i.dg = add nuw nsw i32 %i.da, %i.ct
  %i.dh = zext i8 %i.df to i32
  %i.di = sub nsw i32 %i.dg, %i.dh
  %i.dj = tail call i32 @llvm.smax.i32(i32 %i.di, i32 0)
  %i.dk = tail call range(i32 0, 256) i32 @llvm.umin.i32(i32 %i.dj, i32 255)
  %i.dl = sub nsw i32 %i.cn, %i.dk
  %i.dm = tail call i32 @llvm.abs.i32(i32 %i.dl, i1 true)
  %i.dn = lshr i32 %i.dm, 4
  %i.do = zext nneg i32 %i.cq to i64
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.do
  store i32 1, ptr %i.dp, align 4, !tbaa !3
  %i.dq = zext nneg i32 %i.cw to i64
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.dq
  store i32 1, ptr %i.dr, align 4, !tbaa !3
  %i.ds = zext nneg i32 %i.dd to i64
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ds
  store i32 1, ptr %i.dt, align 4, !tbaa !3
  %i.du = zext nneg i32 %i.dn to i64
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.du
  store i32 1, ptr %i.dv, align 4, !tbaa !3
  %i.dw = mul nuw nsw i32 %.06064, 3
  %i.dx = add nuw nsw i32 %i.dw, 2
  %i.dy = add nuw nsw i32 %i.dx, %i.cn
  %i.dz = lshr i32 %i.dy, 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %6 = icmp slt i64 %indvars.iv.next, %4
  br i1 %6, label %bb.b, label %._crit_edge, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.b
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 2 ; 2 uses
  %7 = icmp slt i64 %indvars.iv.next76, %5
  br i1 %7, label %.lr.ph, label %.preheader63.loopexit, !llvm.loop !10
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
