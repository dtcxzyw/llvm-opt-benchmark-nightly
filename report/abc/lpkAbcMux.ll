Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/lpkAbcMux?download=true
inline.NumInlined: 28
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Lpk_MuxSplit:bb.a
  br i1 %.not.27.i.not, label %Kit_WordFindFirstBit.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bb = and i32 %i.y, 268435456
  %.not.28.i.not = icmp eq i32 %i.bb, 0
  br i1 %.not.28.i.not, label %Kit_WordFindFirstBit.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bc = and i32 %i.y, 536870912
  %.not.29.i.not = icmp eq i32 %i.bc, 0
  br i1 %.not.29.i.not, label %Kit_WordFindFirstBit.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bd = and i32 %i.y, 1073741824
  %.not.30.i.not = icmp eq i32 %i.bd, 0
  br i1 %.not.30.i.not, label %Kit_WordFindFirstBit.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not.31.i = icmp eq i32 %i.y, -1
  %spec.select = select i1 %.not.31.i, i32 -1, i32 31
  br label %Kit_WordFindFirstBit.exit

Kit_WordFindFirstBit.exit:                        ; preds = %bb.af, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %.06.i = phi i32 [ 0, %bb.a ], [ 16, %bb.q ], [ 1, %bb.b ], [ %spec.select, %bb.af ], [ 2, %bb.c ], [ 20, %bb.u ], [ 3, %bb.d ], [ 30, %bb.ae ], [ 4, %bb.e ], [ 17, %bb.r ], [ 5, %bb.f ], [ 29, %bb.ad ], [ 6, %bb.g ], [ 23, %bb.x ], [ 7, %bb.h ], [ 28, %bb.ac ], [ 8, %bb.i ], [ 18, %bb.s ], [ 9, %bb.j ], [ 27, %bb.ab ], [ 10, %bb.k ], [ 21, %bb.v ], [ 11, %bb.l ], [ 26, %bb.aa ], [ 12, %bb.m ], [ 19, %bb.t ], [ 13, %bb.n ], [ 25, %bb.z ], [ 14, %bb.o ], [ 22, %bb.w ], [ 15, %bb.p ], [ 24, %bb.y ] ; 5 uses
  %i.be = shl nuw i32 1, %.06.i
  %i.bf = or i32 %i.be, %i.y
  store i32 %i.bf, ptr %i.w, align 4, !tbaa !11
  %i.bg = load i32, ptr %i.b, align 8
  %i.bh = lshr i32 %i.bg, 7
  %i.bi = and i32 %i.bh, 31                       ; 4 uses
  %i.bj = icmp samesign ult i32 %i.bi, 6
  %i.bk = add nsw i32 %i.bi, -5
  %i.bl = shl nuw nsw i32 1, %i.bk
  %i.bm = select i1 %i.bj, i32 1, i32 %i.bl       ; 4 uses
  %i.bn = icmp slt i32 %.06.i, 5
  br i1 %i.bn, label %.preheader.i, label %.preheader19.i

.preheader19.i:                                   ; preds = %Kit_WordFindFirstBit.exit
  %i.bo = add nsw i32 %.06.i, -5
  %i.bp = shl nuw nsw i32 1, %i.bo                ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.bm to i64 ; 2 uses
  %min.iters.check = icmp samesign ult i32 %i.bm, 8
  br i1 %min.iters.check, label %scalar.ph, label %vector.ph

vector.ph:                                        ; preds = %.preheader19.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.bq = and <4 x i32> %broadcast.splat, %vec.ind
  %i.br = and <4 x i32> %broadcast.splat, %step.add
  %i.bs = icmp ne <4 x i32> %i.bq, zeroinitializer
  %i.bt = icmp ne <4 x i32> %i.br, zeroinitializer
  %i.bu = sext <4 x i1> %i.bs to <4 x i32>
  %i.bv = sext <4 x i1> %i.bt to <4 x i32>
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store <4 x i32> %i.bu, ptr %i.bw, align 4, !tbaa !12
  store <4 x i32> %i.bv, ptr %i.bx, align 4, !tbaa !12
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %Kit_TruthIthVar.exit, label %vector.body, !llvm.loop !23

.preheader.i:                                     ; preds = %Kit_WordFindFirstBit.exit
  %i.bz = sext i32 %.06.i to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr @__const.Kit_TruthIthVar.Masks, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !12 ; 2 uses
  %wide.trip.count28.i = zext nneg i32 %i.bm to i64 ; 2 uses
  %min.iters.check87 = icmp samesign ult i32 %i.bm, 8
  br i1 %min.iters.check87, label %scalar.ph86, label %vector.ph88

vector.ph88:                                      ; preds = %.preheader.i
  %n.vec89 = and i64 %wide.trip.count28.i, 2147483640
  %broadcast.splatinsert90 = insertelement <4 x i32> poison, i32 %i.cb, i64 0
  %broadcast.splat91 = shufflevector <4 x i32> %broadcast.splatinsert90, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph88
  %index93 = phi i64 [ 0, %vector.ph88 ], [ %index.next94, %vector.body92 ] ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index93 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store <4 x i32> %broadcast.splat91, ptr %i.cc, align 4, !tbaa !12
  store <4 x i32> %broadcast.splat91, ptr %i.cd, align 4, !tbaa !12
  %index.next94 = add nuw i64 %index93, 8         ; 2 uses
  %i.ce = icmp eq i64 %index.next94, %n.vec89
  br i1 %i.ce, label %Kit_TruthIthVar.exit, label %vector.body92, !llvm.loop !24

scalar.ph86:                                      ; preds = %.preheader.i, %scalar.ph86
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %scalar.ph86 ], [ 0, %.preheader.i ] ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv25.i
  store i32 %i.cb, ptr %i.cf, align 4, !tbaa !12
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1 ; 2 uses
  %exitcond29.not.i = icmp eq i64 %indvars.iv.next26.i, %wide.trip.count28.i
  br i1 %exitcond29.not.i, label %Kit_TruthIthVar.exit, label %scalar.ph86, !llvm.loop !25

scalar.ph:                                        ; preds = %.preheader19.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader19.i ] ; 3 uses
  %i.cg = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.ch = and i32 %i.bp, %i.cg
  %.not.i79 = icmp ne i32 %i.ch, 0
  %spec.select.i80 = sext i1 %.not.i79 to i32
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i
  store i32 %spec.select.i80, ptr %i.ci, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Kit_TruthIthVar.exit, label %scalar.ph, !llvm.loop !26

Kit_TruthIthVar.exit:                             ; preds = %vector.body, %scalar.ph, %vector.body92, %scalar.ph86
  br i1 %.not, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %Kit_TruthIthVar.exit
  tail call void @Kit_TruthMuxVar(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.l, i32 noundef %i.bi, i32 noundef %2) #4
  br label %bb.ai

bb.ah:                                            ; preds = %Kit_TruthIthVar.exit
  tail call void @Kit_TruthMuxVar(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i, ptr noundef nonnull %i.a, i32 noundef %i.bi, i32 noundef %2) #4
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cj = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 8 uses
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = trunc i32 %i.ck to i8
  %i.cm = and i8 %i.cl, 127
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 212
  %i.co = sext i32 %.06.i to i64                  ; 2 uses
  %i.cp = getelementptr inbounds i8, ptr %i.cn, i64 %i.co
  store i8 %i.cm, ptr %i.cp, align 1, !tbaa !29
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !13
  %i.cs = add i32 %i.cr, -1
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 148
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.co
  store i32 %i.cs, ptr %i.cu, align 4, !tbaa !12
  %i.cv = load i32, ptr %i.b, align 8
  %i.cw = and i32 %i.cv, -1073741825
  store i32 %i.cw, ptr %i.b, align 8
  %i.cx = tail call i32 @Lpk_FunSuppMinimize(ptr noundef nonnull %1) #4 ; 0 uses
  %i.cy = tail call i32 @Lpk_FunSuppMinimize(ptr noundef %i.q) #4 ; 0 uses
  %i.cz = load i32, ptr %i.cq, align 8, !tbaa !13
  %i.da = add i32 %i.cz, -1
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 144
  store i32 %i.da, ptr %i.db, align 8, !tbaa !13
  %i.dc = load i32, ptr %i.cj, align 8            ; 6 uses
  %i.dd = lshr i32 %i.dc, 7
  %i.de = and i32 %i.dd, 31                       ; 2 uses
  %i.df = lshr i32 %i.dc, 12
  %i.dg = and i32 %i.df, 15
  %.not76 = icmp samesign ugt i32 %i.de, %i.dg
  br i1 %.not76, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dh = and i32 %i.dc, -1073676289
  %i.di = or disjoint i32 %i.dh, 65536
  store i32 %i.di, ptr %i.cj, align 8
  %i.dj = load i32, ptr %i.b, align 8             ; 2 uses
  %i.dk = add i32 %i.dj, 1073676288
  %i.dl = and i32 %i.dk, 1073676288
  %i.dm = and i32 %i.dj, -1073676289
  %i.dn = or disjoint i32 %i.dl, %i.dm
  br label %bb.ap

bb.ak:                                            ; preds = %bb.ai
  %i.do = load i32, ptr %i.b, align 8             ; 7 uses
  %i.dp = lshr i32 %i.do, 7
  %i.dq = and i32 %i.dp, 31                       ; 2 uses
  %i.dr = lshr i32 %i.do, 12
  %i.ds = and i32 %i.dr, 15
  %.not77 = icmp samesign ugt i32 %i.dq, %i.ds
  br i1 %.not77, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dt = add i32 %i.do, 1073676288
  %i.du = and i32 %i.dt, 1073676288
  %i.dv = and i32 %i.dc, -1073676289
  %i.dw = or disjoint i32 %i.du, %i.dv
  store i32 %i.dw, ptr %i.cj, align 8
  %i.dx = load i32, ptr %i.b, align 8
  %i.dy = and i32 %i.dx, -1073676289
  %i.dz = or disjoint i32 %i.dy, 65536
  br label %bb.ap

bb.am:                                            ; preds = %bb.ak
  %i.ea = icmp samesign ult i32 %i.dq, %i.de
  br i1 %i.ea, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.eb = lshr i32 %i.do, 1
  %i.ec = and i32 %i.eb, 536805376
  %.mask78 = and i32 %i.do, 65536
  %i.ed = add nuw nsw i32 %i.ec, %.mask78
  %i.ee = and i32 %i.dc, -1073676289
  %i.ef = or disjoint i32 %i.ed, %i.ee
  store i32 %i.ef, ptr %i.cj, align 8
  %i.eg = load i32, ptr %i.b, align 8             ; 3 uses
  %i.eh = lshr i32 %i.eg, 17
  %4 = and i32 %i.eh, 8191
  %5 = shl i32 %i.eg, 15
  %6 = ashr i32 %5, 31
  %7 = add nsw i32 %6, %4
  %i.ei = shl nsw i32 %7, 16
  %i.ej = and i32 %i.ei, 1073676288
  %i.ek = and i32 %i.eg, -1073676289
  %i.el = or disjoint i32 %i.ej, %i.ek
  br label %bb.ap

bb.ao:                                            ; preds = %bb.am
  %i.em = lshr i32 %i.do, 17
  %8 = and i32 %i.em, 8191
  %9 = shl i32 %i.do, 15
  %10 = ashr i32 %9, 31
  %11 = add nsw i32 %10, %8
  %i.en = shl nsw i32 %11, 16
  %i.eo = and i32 %i.en, 1073676288
  %i.ep = and i32 %i.dc, -1073676289
  %i.eq = or disjoint i32 %i.eo, %i.ep
  store i32 %i.eq, ptr %i.cj, align 8
  %i.er = load i32, ptr %i.b, align 8             ; 3 uses
  %i.es = lshr i32 %i.er, 1
  %i.et = and i32 %i.es, 536805376
  %.mask = and i32 %i.er, 65536
  %i.eu = add nuw nsw i32 %i.et, %.mask
  %i.ev = and i32 %i.er, -1073676289
  %i.ew = or disjoint i32 %i.eu, %i.ev
  br label %bb.ap

bb.ap:                                            ; preds = %bb.al, %bb.ao, %bb.an, %bb.aj
  %.sink = phi i32 [ %i.dz, %bb.al ], [ %i.ew, %bb.ao ], [ %i.el, %bb.an ], [ %i.dn, %bb.aj ]
  store i32 %.sink, ptr %i.b, align 8
  %i.ex = load i32, ptr %i.cj, align 8
  %i.ey = or i32 %i.ex, -2147483648
  store i32 %i.ey, ptr %i.cj, align 8
  ret ptr %i.q
}

declare void @Kit_TruthCofactor0New(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @Kit_TruthCofactor1New(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Lpk_FunDup(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @Kit_TruthSupport(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @Kit_TruthMuxVar(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @Lpk_FunSuppMinimize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS10Vec_Ptr_t_", !8, i64 0}
!10 = !{!"Lpk_Fun_t_", !9, i64 0, !5, i64 8, !5, i64 8, !5, i64 9, !5, i64 10, !5, i64 11, !5, i64 11, !5, i64 12, !4, i64 16, !5, i64 144, !4, i64 148, !4, i64 212, !4, i64 228}
!11 = !{!10, !5, i64 12}
!12 = !{!5, !5, i64 0}
!13 = !{!10, !5, i64 144}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = !{!"Lpk_Res_t_", !5, i64 0, !5, i64 4, !5, i64 8, !4, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36}
!17 = !{!16, !5, i64 32}
!18 = !{!16, !5, i64 28}
!19 = !{!16, !5, i64 16}
!20 = !{!16, !5, i64 20}
!21 = !{!16, !5, i64 36}
!22 = !{!16, !5, i64 24}
!23 = distinct !{!23, !14, !27, !28}
!24 = distinct !{!24, !14, !27, !28}
!25 = distinct !{!25, !14, !28, !27}
!26 = distinct !{!26, !14, !28, !27}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = !{!4, !4, i64 0}
end_hunk_0
