Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/mystrtoul?download=true
begin_hunk_0_@PyOS_strtoul:bb.a
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = icmp ugt i8 %i.p, 15
  br i1 %i.q, label %bb.f, label %.preheader139.preheader

bb.f:                                             ; preds = %bb.e
  %.not132 = icmp eq ptr %1, null
  br i1 %.not132, label %bb.ar, label %bb.g

bb.g:                                             ; preds = %bb.f
  store ptr %i.j, ptr %1, align 8, !tbaa !21
  br label %bb.ar

bb.h:                                             ; preds = %bb.d, %bb.d
  %i.r = getelementptr i8, ptr %.0103.lcssa, i64 2 ; 2 uses
  %i.s = load i8, ptr %i.r, align 1, !tbaa !11
  %i.t = zext i8 %i.s to i64
  %i.u = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.t
  %i.v = load i8, ptr %i.u, align 1, !tbaa !11
  %i.w = icmp ugt i8 %i.v, 7
  br i1 %i.w, label %bb.i, label %.preheader139.preheader

bb.i:                                             ; preds = %bb.h
  %.not131 = icmp eq ptr %1, null
  br i1 %.not131, label %bb.ar, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.j, ptr %1, align 8, !tbaa !21
  br label %bb.ar

bb.k:                                             ; preds = %bb.d, %bb.d
  %i.x = getelementptr i8, ptr %.0103.lcssa, i64 2 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %i.z = zext i8 %i.y to i64
  %i.aa = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !11
  %i.ac = icmp ugt i8 %i.ab, 1
  br i1 %i.ac, label %bb.l, label %.preheader139.preheader

bb.l:                                             ; preds = %bb.k
  %.not130 = icmp eq ptr %1, null
  br i1 %.not130, label %bb.ar, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %i.j, ptr %1, align 8, !tbaa !21
  br label %bb.ar

.lr.ph151:                                        ; preds = %bb.d, %.lr.ph151
  %.1104150 = phi ptr [ %i.ad, %.lr.ph151 ], [ %i.j, %bb.d ]
  %i.ad = getelementptr i8, ptr %.1104150, i64 1  ; 3 uses
  %.pr = load i8, ptr %i.ad, align 1, !tbaa !11
  %i.ae = icmp eq i8 %.pr, 48
  br i1 %i.ae, label %.lr.ph151, label %.preheader140.preheader, !llvm.loop !14

.preheader140.preheader:                          ; preds = %.lr.ph151, %bb.d
  %.2105.ph = phi ptr [ %i.j, %bb.d ], [ %i.ad, %.lr.ph151 ]
  br label %.preheader140

.preheader140:                                    ; preds = %.preheader140.preheader, %.preheader140
  %.2105 = phi ptr [ %i.ak, %.preheader140 ], [ %.2105.ph, %.preheader140.preheader ] ; 3 uses
  %i.af = load i8, ptr %.2105, align 1, !tbaa !11
  %i.ag = zext i8 %i.af to i64
  %i.ah = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !10
  %i.aj = and i32 %i.ai, 8
  %.not128 = icmp eq i32 %i.aj, 0
  %i.ak = getelementptr i8, ptr %.2105, i64 1
  br i1 %.not128, label %bb.n, label %.preheader140, !llvm.loop !15

bb.n:                                             ; preds = %.preheader140
  %.not129 = icmp eq ptr %1, null
  br i1 %.not129, label %bb.ar, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %.2105, ptr %1, align 8, !tbaa !21
  br label %bb.ar

bb.p:                                             ; preds = %.critedge
  br i1 %.lcssa, label %bb.q, label %.preheader139.preheader

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr i8, ptr %.0103.lcssa, i64 1 ; 3 uses
  %i.am = load i8, ptr %i.al, align 1, !tbaa !11
  switch i8 %i.am, label %.preheader139.preheader [
    i8 120, label %bb.r
    i8 88, label %bb.r
  ]

bb.r:                                             ; preds = %bb.q, %bb.q
  %i.an = getelementptr i8, ptr %.0103.lcssa, i64 2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !11
  %i.ap = zext i8 %i.ao to i64
  %i.aq = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !11
  %i.as = icmp ugt i8 %i.ar, 15
  br i1 %i.as, label %bb.s, label %.preheader139.preheader

bb.s:                                             ; preds = %bb.r
  %.not127 = icmp eq ptr %1, null
  br i1 %.not127, label %bb.ar, label %bb.t

bb.t:                                             ; preds = %bb.s
  store ptr %i.al, ptr %1, align 8, !tbaa !21
  br label %bb.ar

bb.u:                                             ; preds = %.critedge
  br i1 %.lcssa, label %bb.v, label %.preheader139.preheader

bb.v:                                             ; preds = %bb.u
  %i.at = getelementptr i8, ptr %.0103.lcssa, i64 1 ; 3 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !11
  switch i8 %i.au, label %.preheader139.preheader [
    i8 111, label %bb.w
    i8 79, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.av = getelementptr i8, ptr %.0103.lcssa, i64 2 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !11
  %i.ax = zext i8 %i.aw to i64
  %i.ay = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !11
  %i.ba = icmp ugt i8 %i.az, 7
  br i1 %i.ba, label %bb.x, label %.preheader139.preheader

bb.x:                                             ; preds = %bb.w
  %.not126 = icmp eq ptr %1, null
  br i1 %.not126, label %bb.ar, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.at, ptr %1, align 8, !tbaa !21
  br label %bb.ar

bb.z:                                             ; preds = %.critedge
  br i1 %.lcssa, label %bb.aa, label %.preheader139.preheader

bb.aa:                                            ; preds = %bb.z
  %i.bb = getelementptr i8, ptr %.0103.lcssa, i64 1 ; 3 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !11
  switch i8 %i.bc, label %.preheader139.preheader [
    i8 98, label %bb.ab
    i8 66, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.aa
  %i.bd = getelementptr i8, ptr %.0103.lcssa, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !11
  %i.bf = zext i8 %i.be to i64
  %i.bg = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.bf
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !11
  %i.bi = icmp ugt i8 %i.bh, 1
  br i1 %i.bi, label %bb.ac, label %.preheader139.preheader

bb.ac:                                            ; preds = %bb.ab
  %.not125 = icmp eq ptr %1, null
  br i1 %.not125, label %bb.ar, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.bb, ptr %1, align 8, !tbaa !21
  br label %bb.ar

bb.ae:                                            ; preds = %.critedge
  %i.bj = add i32 %2, -37
  %or.cond = icmp ult i32 %i.bj, -35
  br i1 %or.cond, label %bb.af, label %.preheader139.preheader

.preheader139.preheader:                          ; preds = %bb.ab, %bb.aa, %bb.w, %bb.u, %bb.v, %bb.r, %bb.p, %bb.q, %bb.c, %bb.k, %bb.h, %bb.e, %bb.z, %bb.ae
  %.0101174 = phi i32 [ %2, %bb.ae ], [ 2, %bb.ab ], [ 2, %bb.aa ], [ 8, %bb.w ], [ 8, %bb.u ], [ 8, %bb.v ], [ 16, %bb.r ], [ 16, %bb.p ], [ 16, %bb.q ], [ 10, %bb.c ], [ 2, %bb.k ], [ 8, %bb.h ], [ 16, %bb.e ], [ 2, %bb.z ] ; 4 uses
  %.3173 = phi ptr [ %.0103.lcssa, %bb.ae ], [ %i.bd, %bb.ab ], [ %i.bb, %bb.aa ], [ %i.av, %bb.w ], [ %.0103.lcssa, %bb.u ], [ %i.at, %bb.v ], [ %i.an, %bb.r ], [ %.0103.lcssa, %bb.p ], [ %i.al, %bb.q ], [ %.0103.lcssa, %bb.c ], [ %i.x, %bb.k ], [ %i.r, %bb.h ], [ %i.l, %bb.e ], [ %.0103.lcssa, %bb.z ]
  br label %.preheader139

bb.af:                                            ; preds = %bb.ae
  %.not135 = icmp eq ptr %1, null
  br i1 %.not135, label %bb.ar, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store ptr %.0103.lcssa, ptr %1, align 8, !tbaa !21
  br label %bb.ar

.preheader139:                                    ; preds = %.preheader139.preheader, %.preheader139
  %.4 = phi ptr [ %i.bm, %.preheader139 ], [ %.3173, %.preheader139.preheader ] ; 4 uses
  %i.bk = load i8, ptr %.4, align 1, !tbaa !11    ; 2 uses
  %i.bl = icmp eq i8 %i.bk, 48
  %i.bm = getelementptr i8, ptr %.4, i64 1
  br i1 %i.bl, label %.preheader139, label %bb.ah, !llvm.loop !16

bb.ah:                                            ; preds = %.preheader139
  %i.bn = zext nneg i32 %.0101174 to i64          ; 4 uses
  %i.bo = zext i8 %i.bk to i64
  %i.bp = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !11  ; 2 uses
  %i.br = zext i8 %i.bq to i32
  %i.bs = icmp samesign ugt i32 %.0101174, %i.br
  br i1 %i.bs, label %.lr.ph156, label %._crit_edge

.lr.ph156:                                        ; preds = %bb.ah
  %i.bt = getelementptr [4 x i8], ptr @digitlimit, i64 %i.bn
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !10
  %i.bv = getelementptr [8 x i8], ptr @smallmax, i64 %i.bn
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph156, %bb.an
  %i.bw = phi i8 [ %i.bq, %.lr.ph156 ], [ %i.cn, %bb.an ] ; 2 uses
  %.099155 = phi i32 [ %i.bu, %.lr.ph156 ], [ %i.cj, %bb.an ] ; 3 uses
  %.0100154 = phi i64 [ 0, %.lr.ph156 ], [ %.2, %bb.an ] ; 3 uses
  %.5153 = phi ptr [ %.4, %.lr.ph156 ], [ %i.ci, %bb.an ] ; 2 uses
  %i.bx = icmp sgt i32 %.099155, 0
  br i1 %i.bx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.by = mul i64 %.0100154, %i.bn
  %i.bz = zext i8 %i.bw to i64
  %i.ca = add i64 %i.by, %i.bz
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.cb = icmp slt i32 %.099155, 0
  br i1 %i.cb, label %select.unfold, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cc = load i64, ptr %i.bv, align 8, !tbaa !23
  %i.cd = icmp ugt i64 %.0100154, %i.cc
  br i1 %i.cd, label %select.unfold, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ce = mul i64 %.0100154, %i.bn                ; 2 uses
  %i.cf = zext i8 %i.bw to i64
  %i.cg = add i64 %i.ce, %i.cf                    ; 2 uses
  %i.ch = icmp ult i64 %i.cg, %i.ce
  br i1 %i.ch, label %select.unfold, label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj
  %.2 = phi i64 [ %i.ca, %bb.aj ], [ %i.cg, %bb.am ] ; 2 uses
  %i.ci = getelementptr i8, ptr %.5153, i64 1     ; 3 uses
  %i.cj = add nsw i32 %.099155, -1
  %i.ck = load i8, ptr %i.ci, align 1, !tbaa !11
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !11  ; 2 uses
  %3 = zext i8 %i.cn to i32
  %4 = icmp samesign ugt i32 %.0101174, %3
  br i1 %4, label %bb.ai, label %._crit_edge, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.an, %bb.ah
  %.5.lcssa = phi ptr [ %.4, %bb.ah ], [ %i.ci, %bb.an ]
  %.0100.lcssa = phi i64 [ 0, %bb.ah ], [ %.2, %bb.an ] ; 2 uses
  %.not133 = icmp eq ptr %1, null
  br i1 %.not133, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %._crit_edge
  store ptr %.5.lcssa, ptr %1, align 8, !tbaa !21
  br label %bb.ar

select.unfold:                                    ; preds = %bb.am, %bb.al, %bb.ak
  %.not134 = icmp eq ptr %1, null
  br i1 %.not134, label %bb.aq, label %.preheader

.preheader:                                       ; preds = %select.unfold, %.preheader
  %.6 = phi ptr [ %i.cu, %.preheader ], [ %.5153, %select.unfold ] ; 3 uses
  %i.co = load i8, ptr %.6, align 1, !tbaa !11
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr i8, ptr @_PyLong_DigitValue, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !11
  %i.cs = zext i8 %i.cr to i32
  %i.ct = icmp samesign ugt i32 %.0101174, %i.cs
  %i.cu = getelementptr i8, ptr %.6, i64 1
  br i1 %i.ct, label %.preheader, label %bb.ap, !llvm.loop !18

bb.ap:                                            ; preds = %.preheader
  store ptr %.6, ptr %1, align 8, !tbaa !21
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %select.unfold
  %i.cv = tail call ptr @__errno_location() #2
  store i32 34, ptr %i.cv, align 4, !tbaa !10
  br label %bb.ar

bb.ar:                                            ; preds = %._crit_edge, %bb.ao, %bb.af, %bb.ag, %bb.ac, %bb.ad, %bb.x, %bb.y, %bb.s, %bb.t, %bb.n, %bb.o, %bb.l, %bb.m, %bb.i, %bb.j, %bb.f, %bb.g, %bb.aq
  %.0102 = phi i64 [ 0, %bb.ac ], [ 0, %bb.af ], [ -1, %bb.aq ], [ 0, %bb.ag ], [ 0, %bb.x ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.l ], [ 0, %bb.n ], [ 0, %bb.s ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.m ], [ 0, %bb.o ], [ 0, %bb.t ], [ 0, %bb.y ], [ 0, %bb.ad ], [ %.0100.lcssa, %bb.ao ], [ %.0100.lcssa, %._crit_edge ]
  ret i64 %.0102
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i64 @PyOS_strtol(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !11      ; 2 uses
  %.not27 = icmp eq i8 %i.a, 0
  br i1 %.not27, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.b = phi i8 [ %i.h, %bb.b ], [ %i.a, %bb.a ]  ; 3 uses
  %.02028 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.c = zext i8 %i.b to i64
  %i.d = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !10
  %i.f = and i32 %i.e, 8
  %.not24 = icmp eq i32 %i.f, 0
  br i1 %.not24, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr i8, ptr %.02028, i64 1     ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !11    ; 2 uses
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !24

.critedge:                                        ; preds = %.lr.ph
  %i.i = icmp eq i8 %i.b, 45                      ; 2 uses
  switch i8 %i.b, label %.critedge.thread [
    i8 45, label %bb.c
    i8 43, label %bb.c
  ]

bb.c:                                             ; preds = %.critedge, %.critedge
  %i.j = getelementptr i8, ptr %.02028, i64 1
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.b, %bb.a, %.critedge, %bb.c
  %i.k = phi i1 [ %i.i, %bb.c ], [ %i.i, %.critedge ], [ false, %bb.a ], [ false, %bb.b ] ; 2 uses
  %.1 = phi ptr [ %i.j, %bb.c ], [ %.02028, %.critedge ], [ %0, %bb.a ], [ %i.g, %bb.b ]
  %i.l = tail call i64 @PyOS_strtoul(ptr noundef %.1, ptr noundef %1, i32 noundef %2) ; 4 uses
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.critedge.thread
  %i.n = sub nsw i64 0, %i.l
  %spec.select = select i1 %i.k, i64 %i.n, i64 %i.l
  br label %bb.g

bb.e:                                             ; preds = %.critedge.thread
  %i.o = icmp eq i64 %i.l, -9223372036854775808
  %or.cond4 = and i1 %i.k, %i.o
  br i1 %or.cond4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__errno_location() #2
  store i32 34, ptr %i.p, align 4, !tbaa !10
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.e, %bb.f
  %.0 = phi i64 [ 9223372036854775807, %bb.f ], [ -9223372036854775808, %bb.e ], [ %spec.select, %bb.d ]
  ret i64 %.0
}

attributes #0 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!8, !8, i64 0}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = !{!"any pointer", !8, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = !{!22, !22, i64 0}
!24 = distinct !{!24, !12}
end_hunk_0
