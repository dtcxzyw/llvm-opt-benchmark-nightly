Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jemalloc/original/sc?download=true
inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden i64 @je_reg_size_compute(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i32 %0 to i64
  %i.b = shl nuw i64 1, %i.a
  %i.c = sext i32 %2 to i64
  %i.d = zext nneg i32 %1 to i64
  %i.e = shl i64 %i.c, %i.d
  %i.f = add i64 %i.e, %i.b
  ret i64 %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @je_sc_data_init(ptr nofree noundef writeonly captures(none) initializes((76, 94), (96, 122), (124, 150), (152, 178), (180, 206), (208, 216)) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store <4 x i32> <i32 0, i32 3, i32 3, i32 0>, ptr %i.a, align 4, !tbaa !26
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 0, ptr %i.b, align 4, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 93
  store i8 1, ptr %i.c, align 1, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x i32> <i32 1, i32 3, i32 1, i32 3>, ptr %i.d, align 4, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i32 3, ptr %i.e, align 4, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 1, ptr %i.f, align 4, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.g, align 4, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.h, align 1, !tbaa !14
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 124
  store <4 x i32> <i32 1, i32 3, i32 2, i32 4>, ptr %i.i, align 4, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 4, ptr %i.j, align 4, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 1, ptr %i.k, align 4, !tbaa !16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  store i8 0, ptr %i.l, align 4, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 149
  store i8 1, ptr %i.m, align 1, !tbaa !14
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  store <4 x i32> <i32 1, i32 4, i32 3, i32 4>, ptr %i.n, align 4, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i32 4, ptr %i.o, align 4, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 2, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %i.q, align 4, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 177
  store i8 1, ptr %i.r, align 1, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 180
  store <4 x i32> <i32 3, i32 4, i32 4, i32 4>, ptr %i.s, align 4, !tbaa !26
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 196
  store i32 4, ptr %i.t, align 4, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 3, ptr %i.u, align 4, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i8 0, ptr %i.v, align 4, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 205
  store i8 1, ptr %i.w, align 1, !tbaa !14
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 1, ptr %i.x, align 4, !tbaa !17
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 4, ptr %i.y, align 4, !tbaa !28
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %indvars.iv224.i = phi i64 [ 6, %bb.a ], [ %indvars.iv.next225.i, %bb.g ] ; 4 uses
  %indvars.iv222.i = phi i64 [ 4, %bb.a ], [ %indvars.iv.next223.i, %bb.g ] ; 3 uses
  %.0132209.i = phi i32 [ 0, %bb.a ], [ %.2.i.a, %bb.g ]
  %.0134208.i = phi i64 [ 0, %bb.a ], [ %.2136.i.a, %bb.g ]
  %.0137207.i = phi i64 [ 0, %bb.a ], [ %.2139.i.a, %bb.g ]
  %.3204.i = phi i32 [ 5, %bb.a ], [ %i.bh, %bb.g ] ; 2 uses
  %.6203.i = phi i32 [ 0, %bb.a ], [ %.8.i.a, %bb.g ]
  %.6163202.i = phi i32 [ 5, %bb.a ], [ %.8165.i.a, %bb.g ]
  %.2169201.i = phi i32 [ 1, %bb.a ], [ %.4171.i.a, %bb.g ]
  %i.z = icmp eq i64 %indvars.iv224.i, 62
  %..i = select i1 %i.z, i32 3, i32 4             ; 2 uses
  %i.aa = shl nuw nsw i64 1, %indvars.iv224.i
  %indvars.iv.next225.i = add nuw nsw i64 %indvars.iv224.i, 1 ; 3 uses
  %i.ab = sext i32 %.3204.i to i64
  %i.ac = trunc nuw nsw i64 %indvars.iv222.i to i32 ; 2 uses
  %i.ad = trunc nuw nsw i64 %indvars.iv224.i to i32
  %i.ae = trunc nuw nsw i64 %indvars.iv.next225.i to i32
  %i.af = add nuw nsw i32 %..i, 1
  br label %bb.c

bb.c:                                             ; preds = %size_class.exit186.i.a, %bb.b
  %indvars.iv217.i = phi i64 [ %i.ab, %bb.b ], [ %indvars.iv.next218.i.a, %size_class.exit186.i.a ] ; 4 uses
  %indvars.iv.i = phi i64 [ 1, %bb.b ], [ %indvars.iv.next.i, %size_class.exit186.i.a ] ; 3 uses
  %.1133200.i = phi i32 [ %.0132209.i, %bb.b ], [ %.2.i.a, %size_class.exit186.i.a ]
  %.1135199.i = phi i64 [ %.0134208.i, %bb.b ], [ %.2136.i.a, %size_class.exit186.i.a ]
  %.1138198.i = phi i64 [ %.0137207.i, %bb.b ], [ %.2139.i.a, %size_class.exit186.i.a ]
  %.7195.i = phi i32 [ %.6203.i, %bb.b ], [ %.8.i.a, %size_class.exit186.i.a ]
  %.7164194.i = phi i32 [ %.6163202.i, %bb.b ], [ %.8165.i.a, %size_class.exit186.i.a ]
  %.3170193.i = phi i32 [ %.2169201.i, %bb.b ], [ %.4171.i.a, %size_class.exit186.i.a ]
  %i.ag = getelementptr inbounds [28 x i8], ptr %i.a, i64 %indvars.iv217.i ; 9 uses
  %i.ah = trunc nsw i64 %indvars.iv217.i to i32
  store i32 %i.ah, ptr %i.ag, align 4, !tbaa !29
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store i32 %i.ad, ptr %i.ai, align 4, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 %i.ac, ptr %i.aj, align 4, !tbaa !15
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %1 = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %1, ptr %i.ak, align 4, !tbaa !16
  %i.al = shl i64 %indvars.iv.i, %indvars.iv222.i
  %i.am = add i64 %i.al, %i.aa                    ; 7 uses
  %i.an = and i64 %i.am, 4095
  %i.ao = icmp eq i64 %i.an, 0                    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aq = zext i1 %i.ao to i8
  store i8 %i.aq, ptr %i.ap, align 4, !tbaa !27
  %i.ar = icmp ult i64 %i.am, 16384
  %i.as = getelementptr inbounds nuw i8, ptr %i.ag, i64 17 ; 2 uses
  br i1 %i.ar, label %bb.d, label %.thread.i183.i.a

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.as, align 1, !tbaa !14
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.02122.i.i185.i.a = phi i64 [ 4096, %bb.d ], [ %i.at, %bb.e ] ; 3 uses
  %i.at = add i64 %.02122.i.i185.i.a, 4096
  %i.au = urem i64 %.02122.i.i185.i.a, %i.am
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %bb.f, label %bb.e, !llvm.loop !23

.thread.i183.i.a:                                 ; preds = %bb.c
  store i8 0, ptr %i.as, align 1, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 0, ptr %i.aw, align 4, !tbaa !17
  br label %size_class.exit186.i.a

bb.f:                                             ; preds = %bb.e
  %i.ax = lshr exact i64 %.02122.i.i185.i.a, 12
  %i.ay = trunc i64 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !17
  %i.ba = icmp samesign ult i64 %i.am, 4097
  %spec.select.i.a = select i1 %i.ba, i32 %i.ac, i32 0
  br label %size_class.exit186.i.a

size_class.exit186.i.a:                           ; preds = %bb.f, %.thread.i183.i.a
  %i.bb = phi i8 [ 1, %bb.f ], [ 0, %.thread.i183.i.a ] ; 2 uses
  %.sink.i184.i.a = phi i32 [ %spec.select.i.a, %bb.f ], [ 0, %.thread.i183.i.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i32 %.sink.i184.i.a, ptr %i.bc, align 4, !tbaa !28
  %.not175.i.a = icmp eq i32 %.sink.i184.i.a, 0   ; 2 uses
  %indvars.iv.next218.i.a = add nsw i64 %indvars.iv217.i, 1 ; 2 uses
  %i.bd = trunc i64 %indvars.iv.next218.i.a to i32
  %.4171.i.a = select i1 %.not175.i.a, i32 %.3170193.i, i32 %i.bd ; 3 uses
  %.2139.i.a = select i1 %.not175.i.a, i64 %.1138198.i, i64 %i.am ; 3 uses
  %i.be = zext i1 %i.ao to i32
  %.8.i.a = add nsw i32 %.7195.i, %i.be           ; 3 uses
  %i.bf = trunc nuw i8 %i.bb to i1                ; 2 uses
  %i.bg = zext nneg i8 %i.bb to i32
  %.8165.i.a = add nsw i32 %.7164194.i, %i.bg     ; 3 uses
  %.2136.i.a = select i1 %i.bf, i64 %i.am, i64 %.1135199.i ; 3 uses
  %.2.i.a = select i1 %i.bf, i32 %i.ae, i32 %.1133200.i ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond.a = icmp eq i32 %i.af, %lftr.wideiv
  br i1 %exitcond.a, label %bb.g, label %bb.c, !llvm.loop !24

bb.g:                                             ; preds = %size_class.exit186.i.a
  %i.bh = add i32 %.3204.i, %..i
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i, 1
  %exitcond229.not.i = icmp eq i64 %indvars.iv.next225.i, 63
  br i1 %exitcond229.not.i, label %size_classes.exit, label %bb.b, !llvm.loop !25

size_classes.exit:                                ; preds = %bb.g
  %i.bi = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %indvars.iv217.i, i1 false)
  %i.bj = trunc nuw nsw i64 %i.bi to i32
  %i.bk = sub nuw nsw i32 64, %i.bj
  store i32 1, ptr %0, align 8, !tbaa !30
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.4171.i.a, ptr %i.bl, align 4, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.8165.i.a, ptr %i.bm, align 8, !tbaa !32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 232, ptr %i.bn, align 4, !tbaa !22
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bk, ptr %i.bo, align 8, !tbaa !33
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %.8.i.a, ptr %i.bp, align 4, !tbaa !34
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 3, ptr %i.bq, align 8, !tbaa !35
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.2139.i.a, ptr %i.br, align 8, !tbaa !36
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.2136.i.a, ptr %i.bs, align 8, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.2.i.a, ptr %i.bt, align 8, !tbaa !38
  %i.bu = zext nneg i32 %.2.i.a to i64
  %i.bv = shl nuw i64 1, %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.bv, ptr %i.bw, align 8, !tbaa !39
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.am, ptr %i.bx, align 8, !tbaa !40
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 1, ptr %i.by, align 8, !tbaa !41
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @je_sc_data_update_slab_size(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.e = sext i32 %3 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %sc_data_update_sc_slab_size.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %sc_data_update_sc_slab_size.exit ] ; 2 uses
  %i.f = getelementptr inbounds nuw [28 x i8], ptr %i.d, i64 %indvars.iv ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14, !range !43, !noundef !44
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !18
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !16
  %i.p = zext nneg i32 %i.k to i64
  %i.q = shl nuw i64 1, %i.p
  %i.r = sext i32 %i.o to i64
  %i.s = zext nneg i32 %i.m to i64
  %i.t = shl i64 %i.r, %i.s
  %i.u = add i64 %i.t, %i.q                       ; 5 uses
  %.not = icmp ugt i64 %1, %i.u
  %.not18 = icmp ugt i64 %i.u, %2
  %or.cond = or i1 %.not, %.not18
  br i1 %or.cond, label %sc_data_update_sc_slab_size.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = lshr i64 %i.u, 12
  %i.w = and i64 %i.u, 4095
  %.not.i = icmp ne i64 %i.w, 0
  %i.x = zext i1 %.not.i to i64
  %spec.select.i = add nuw nsw i64 %i.v, %i.x     ; 2 uses
  %i.y = lshr i64 %i.u, 3                         ; 2 uses
  %i.z = icmp ugt i64 %spec.select.i, %i.e
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aa = trunc i64 %spec.select.i to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !17
  br label %sc_data_update_sc_slab_size.exit

bb.f:                                             ; preds = %bb.d
  %i.ac = and i64 %i.y, 4503599627370495
  %i.ad = icmp ult i64 %i.ac, %i.e
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 20 ; 2 uses
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.af = trunc i64 %i.y to i32
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !17
  br label %sc_data_update_sc_slab_size.exit

bb.h:                                             ; preds = %bb.f
  store i32 %3, ptr %i.ae, align 4, !tbaa !17
  br label %sc_data_update_sc_slab_size.exit

sc_data_update_sc_slab_size.exit:                 ; preds = %bb.c, %bb.e, %bb.g, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !42

.critedge:                                        ; preds = %sc_data_update_sc_slab_size.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define hidden void @je_sc_boot(ptr nofree noundef writeonly captures(none) initializes((76, 94), (96, 122), (124, 150), (152, 178), (180, 206), (208, 216)) %0) local_unnamed_addr #1 {
bb.a:
  tail call void @je_sc_data_init(ptr noundef %0)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_Bool", !8, i64 0}
!13 = !{!"sc_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !12, i64 16, !12, i64 17, !9, i64 20, !9, i64 24}
!14 = !{!13, !12, i64 17}
!15 = !{!13, !9, i64 8}
!16 = !{!13, !9, i64 12}
!17 = !{!13, !9, i64 20}
!18 = !{!13, !9, i64 4}
!19 = !{!"llvm.loop.mustprogress"}
!20 = !{!"long", !8, i64 0}
!21 = !{!"sc_data_s", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !20, i64 32, !20, i64 40, !9, i64 48, !20, i64 56, !20, i64 64, !12, i64 72, !8, i64 76}
!22 = !{!21, !9, i64 12}
!23 = distinct !{!23, !19}
!24 = distinct !{!24, !19}
!25 = distinct !{!25, !19}
!26 = !{!9, !9, i64 0}
!27 = !{!13, !12, i64 16}
!28 = !{!13, !9, i64 24}
!29 = !{!13, !9, i64 0}
!30 = !{!21, !9, i64 0}
!31 = !{!21, !9, i64 4}
!32 = !{!21, !9, i64 8}
!33 = !{!21, !9, i64 16}
!34 = !{!21, !9, i64 20}
!35 = !{!21, !9, i64 24}
!36 = !{!21, !20, i64 32}
!37 = !{!21, !20, i64 40}
!38 = !{!21, !9, i64 48}
!39 = !{!21, !20, i64 56}
!40 = !{!21, !20, i64 64}
!41 = !{!21, !12, i64 72}
!42 = distinct !{!42, !19}
!43 = !{i8 0, i8 2}
!44 = !{}
end_hunk_0
