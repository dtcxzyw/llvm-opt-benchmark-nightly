Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/msmpeg4?download=true
inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0_@ff_msmpeg4_pred_dc:bb.a
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.du, %vector.ph ], [ %i.dx, %vector.body ]
  %i.dv = getelementptr i8, ptr %invariant.gep.i, i64 %index
  %wide.load = load <4 x i8>, ptr %i.dv, align 1, !tbaa !39
  %i.dw = zext <4 x i8> %wide.load to <4 x i32>
  %i.dx = add <4 x i32> %vec.phi, %i.dw           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dy = icmp eq i64 %index.next, %i.dm
  br i1 %i.dy, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %i.dz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.dx)
  br label %.loopexit179

scalar.ph:                                        ; preds = %.preheader.i, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ 0, %.preheader.i ] ; 2 uses
  %.116.i = phi i32 [ %i.ec, %scalar.ph ], [ %.01319.i, %.preheader.i ]
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ea = load i8, ptr %gep.i, align 1, !tbaa !39
  %i.eb = zext i8 %i.ea to i32
  %i.ec = add nsw i32 %.116.i, %i.eb              ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dm
  br i1 %exitcond.not.i, label %.loopexit179, label %scalar.ph, !llvm.loop !48

.loopexit179:                                     ; preds = %scalar.ph, %middle.block
  %.lcssa165 = phi i32 [ %i.dz, %middle.block ], [ %i.ec, %scalar.ph ] ; 2 uses
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %i.dm
  br i1 %exitcond25.not.i, label %get_dc.exit, label %.preheader.i, !llvm.loop !49

get_dc.exit:                                      ; preds = %.loopexit179, %bb.p
  %.013.lcssa.i = phi i32 [ 0, %bb.p ], [ %.lcssa165, %.loopexit179 ]
  %i.ed = ashr i32 %i.dr, 1
  %i.ee = add nsw i32 %.013.lcssa.i, %i.ed
  %i.ef = sext i32 %i.ee to i64
  %i.eg = sext i32 %i.dr to i64
  %i.eh = getelementptr inbounds [4 x i8], ptr @ff_inverse, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !38
  %i.ej = zext i32 %i.ei to i64
  %i.ek = mul nsw i64 %i.ej, %i.ef
  %i.el = lshr i64 %i.ek, 32
  %i.em = trunc nuw i64 %i.el to i32
  br label %bb.q

bb.q:                                             ; preds = %get_dc.exit, %bb.o
  %.1128 = phi i32 [ %i.dl, %bb.o ], [ %i.em, %get_dc.exit ] ; 3 uses
  %i.en = icmp eq i32 %i.dd, 0
  br i1 %i.en, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.eo = ashr i32 %.0120, 1
  %i.ep = add nsw i32 %i.eo, 1024
  %i.eq = sdiv i32 %i.ep, %.0120
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.er = mul nsw i32 %.0, %i.bu
  %i.es = sext i32 %i.er to i64
  %i.et = sub nsw i64 0, %i.es
  %i.eu = getelementptr inbounds i8, ptr %i.dh, i64 %i.et
  %i.ev = shl nsw i32 %.0120, 3
  %i.ew = shl nsw i32 %i.bt, 1
  %i.ex = ashr i32 %i.ev, %i.ew                   ; 2 uses
  %.not.i135 = icmp ugt i32 %i.bt, 3
  br i1 %.not.i135, label %get_dc.exit150, label %.preheader.preheader.i136

.preheader.preheader.i136:                        ; preds = %bb.s
  %i.ey = sext i32 %.0 to i64
  %wide.trip.count24.i137 = zext nneg i32 %i.bu to i64 ; 3 uses
  %min.iters.check167 = icmp ugt i32 %i.bt, 1
  br label %.preheader.i138

.preheader.i138:                                  ; preds = %.loopexit, %.preheader.preheader.i136
  %indvars.iv21.i139 = phi i64 [ 0, %.preheader.preheader.i136 ], [ %indvars.iv.next22.i147, %.loopexit ] ; 2 uses
  %.01319.i140 = phi i32 [ 0, %.preheader.preheader.i136 ], [ %.lcssa, %.loopexit ] ; 2 uses
  %i.ez = mul nsw i64 %indvars.iv21.i139, %i.ey
  %invariant.gep.i141 = getelementptr i8, ptr %i.eu, i64 %i.ez ; 2 uses
  br i1 %min.iters.check167, label %scalar.ph166, label %vector.ph168

vector.ph168:                                     ; preds = %.preheader.i138
  %i.fa = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.01319.i140, i64 0
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph168
  %index171 = phi i64 [ 0, %vector.ph168 ], [ %index.next174, %vector.body170 ] ; 2 uses
  %vec.phi172 = phi <4 x i32> [ %i.fa, %vector.ph168 ], [ %i.fd, %vector.body170 ]
  %i.fb = getelementptr i8, ptr %invariant.gep.i141, i64 %index171
  %wide.load173 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !39
  %i.fc = zext <4 x i8> %wide.load173 to <4 x i32>
  %i.fd = add <4 x i32> %vec.phi172, %i.fc        ; 2 uses
  %index.next174 = add nuw i64 %index171, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next174, %wide.trip.count24.i137
  br i1 %i.fe, label %middle.block175, label %vector.body170, !llvm.loop !50

middle.block175:                                  ; preds = %vector.body170
  %i.ff = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.fd)
  br label %.loopexit

scalar.ph166:                                     ; preds = %.preheader.i138, %scalar.ph166
  %indvars.iv.i142 = phi i64 [ %indvars.iv.next.i145, %scalar.ph166 ], [ 0, %.preheader.i138 ] ; 2 uses
  %.116.i143 = phi i32 [ %i.fi, %scalar.ph166 ], [ %.01319.i140, %.preheader.i138 ]
  %gep.i144 = getelementptr i8, ptr %invariant.gep.i141, i64 %indvars.iv.i142
  %i.fg = load i8, ptr %gep.i144, align 1, !tbaa !39
  %i.fh = zext i8 %i.fg to i32
  %i.fi = add nsw i32 %.116.i143, %i.fh           ; 2 uses
  %indvars.iv.next.i145 = add nuw nsw i64 %indvars.iv.i142, 1 ; 2 uses
  %exitcond.not.i146 = icmp eq i64 %indvars.iv.next.i145, %wide.trip.count24.i137
  br i1 %exitcond.not.i146, label %.loopexit, label %scalar.ph166, !llvm.loop !51

.loopexit:                                        ; preds = %scalar.ph166, %middle.block175
  %.lcssa = phi i32 [ %i.ff, %middle.block175 ], [ %i.fi, %scalar.ph166 ] ; 2 uses
  %indvars.iv.next22.i147 = add nuw nsw i64 %indvars.iv21.i139, 1 ; 2 uses
  %exitcond25.not.i148 = icmp eq i64 %indvars.iv.next22.i147, %wide.trip.count24.i137
  br i1 %exitcond25.not.i148, label %get_dc.exit150, label %.preheader.i138, !llvm.loop !49

get_dc.exit150:                                   ; preds = %.loopexit, %bb.s
  %.013.lcssa.i149 = phi i32 [ 0, %bb.s ], [ %.lcssa, %.loopexit ]
  %i.fj = ashr i32 %i.ex, 1
  %i.fk = add nsw i32 %.013.lcssa.i149, %i.fj
  %i.fl = sext i32 %i.fk to i64
  %i.fm = sext i32 %i.ex to i64
  %i.fn = getelementptr inbounds [4 x i8], ptr @ff_inverse, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !38
  %i.fp = zext i32 %i.fo to i64
  %i.fq = mul nsw i64 %i.fp, %i.fl
  %i.fr = lshr i64 %i.fq, 32
  %i.fs = trunc nuw i64 %i.fr to i32
  br label %bb.t

bb.t:                                             ; preds = %get_dc.exit150, %bb.r
  %.2124 = phi i32 [ %i.eq, %bb.r ], [ %i.fs, %get_dc.exit150 ] ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 3728
  %i.fu = load i32, ptr %i.ft, align 16, !tbaa !77
  switch i32 %i.fu, label %bb.w [
    i32 0, label %bb.z
    i32 1, label %bb.u
    i32 2, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.fv = icmp eq i32 %1, 0                       ; 2 uses
  %.2124..1128 = select i1 %i.fv, i32 %.2124, i32 %.1128
  br label %bb.z

bb.v:                                             ; preds = %bb.t
  %i.fw = icmp ne i32 %1, 0                       ; 2 uses
  %.1128..2124 = select i1 %i.fw, i32 %.2124, i32 %.1128
  br label %bb.z

bb.w:                                             ; preds = %bb.t
  br label %bb.z

bb.x:                                             ; preds = %bb.g
  %i.fx = sub nsw i32 %.0127, %.1126
  %i.fy = tail call i32 @llvm.abs.i32(i32 %i.fx, i1 true)
  %i.fz = sub nsw i32 %.1126, %.1123
  %i.ga = tail call i32 @llvm.abs.i32(i32 %i.fz, i1 true)
  %i.gb = icmp samesign ult i32 %i.fy, %i.ga      ; 2 uses
  %.1123..0127163 = select i1 %i.gb, i32 %.1123, i32 %.0127
  br label %bb.z

bb.y:                                             ; preds = %bb.f
  %i.gc = sub nsw i32 %.0127, %.1126
  %i.gd = tail call i32 @llvm.abs.i32(i32 %i.gc, i1 true)
  %i.ge = sub nsw i32 %.1126, %.1123
  %i.gf = tail call i32 @llvm.abs.i32(i32 %i.ge, i1 true)
  %.not132 = icmp samesign ule i32 %i.gd, %i.gf   ; 2 uses
  %.0127..1123 = select i1 %.not132, i32 %.1123, i32 %.0127
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.v, %bb.u, %bb.t, %bb.j, %bb.h, %bb.i, %bb.w
  %.sink159.shrunk = phi i1 [ %i.gb, %bb.x ], [ false, %bb.h ], [ %i.bp, %bb.j ], [ true, %bb.i ], [ false, %bb.t ], [ %i.fv, %bb.u ], [ %i.fw, %bb.v ], [ %.not132, %bb.y ], [ true, %bb.w ]
  %.2 = phi i32 [ %.1123..0127163, %bb.x ], [ %.0127, %bb.h ], [ %.1123..0127, %bb.j ], [ %.1123, %bb.i ], [ %.1128, %bb.t ], [ %.2124..1128, %bb.u ], [ %.1128..2124, %bb.v ], [ %.0127..1123, %bb.y ], [ %.2124, %bb.w ]
  %.sink159 = zext i1 %.sink159.shrunk to i32
  store i32 %.sink159, ptr %3, align 4, !tbaa !38
  store ptr %i.h, ptr %2, align 8, !tbaa !78
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

declare void @ff_rl_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @init_h263_dc_for_msmpeg4() unnamed_addr #5 {
bb.a:
  br label %bb.c

bb.b:                                             ; preds = %bb.i
  ret void

bb.c:                                             ; preds = %bb.a, %bb.i
  %indvars.iv = phi i64 [ -256, %bb.a ], [ %indvars.iv.next, %bb.i ] ; 6 uses
  %i.a = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.b = icmp eq i64 %indvars.iv, 0
  br i1 %i.b, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %0 = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true)
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.04859 = phi i32 [ %1, %.lr.ph ], [ %0, %.lr.ph.preheader ]
  %.04958 = phi i32 [ %2, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %1 = lshr i32 %.04859, 1                        ; 2 uses
  %2 = add nuw nsw i32 %.04958, 1                 ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !79

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.049.lcssa = phi i32 [ 0, %bb.c ], [ %2, %.lr.ph ] ; 9 uses
  %i.c = icmp slt i64 %indvars.iv, 0
  %notmask = shl nsw i32 -1, %.049.lcssa
  %i.d = trunc i64 %indvars.iv to i32
  %i.e = add i32 %i.d, -1
  %i.f = xor i32 %notmask, %i.e
  %.0 = select i1 %i.c, i32 %i.f, i32 %i.a        ; 2 uses
  %i.g = zext nneg i32 %.049.lcssa to i64         ; 2 uses
  %i.h = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_lum, i64 %i.g ; 2 uses
  %i.i = load i8, ptr %i.h, align 2, !tbaa !39
  %i.j = zext i8 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !39
  %i.m = zext i8 %i.l to i32                      ; 3 uses
  %notmask54 = shl nsw i32 -1, %i.m
  %i.n = xor i32 %notmask54, %i.j
  %i.o = xor i32 %i.n, -1                         ; 2 uses
  %.not55 = icmp eq i32 %.049.lcssa, 0            ; 2 uses
  br i1 %.not55, label %bb.f, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.p = shl i32 %i.o, %.049.lcssa
  %i.q = or i32 %i.p, %.0                         ; 2 uses
  %i.r = add nuw nsw i32 %.049.lcssa, %i.m        ; 2 uses
  %i.s = icmp samesign ugt i32 %.049.lcssa, 8
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = shl i32 %i.q, 1
  %i.u = or disjoint i32 %i.t, 1
  %i.v = add nuw nsw i32 %i.r, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %._crit_edge
  %.051 = phi i32 [ %i.u, %bb.e ], [ %i.q, %bb.d ], [ %i.o, %._crit_edge ]
  %.050 = phi i32 [ %i.v, %bb.e ], [ %i.r, %bb.d ], [ %i.m, %._crit_edge ]
  %i.w = add nsw i64 %indvars.iv, 256             ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr @ff_v2_dc_lum_table, i64 %i.w ; 2 uses
  store i32 %.051, ptr %i.x, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store i32 %.050, ptr %i.y, align 4, !tbaa !38
  %i.z = getelementptr inbounds nuw [2 x i8], ptr @ff_mpeg4_DCtab_chrom, i64 %i.g ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2, !tbaa !39
  %i.ab = zext i8 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !39
  %i.ae = zext i8 %i.ad to i32                    ; 3 uses
  %notmask56 = shl nsw i32 -1, %i.ae
  %i.af = xor i32 %notmask56, %i.ab
  %i.ag = xor i32 %i.af, -1                       ; 2 uses
  br i1 %.not55, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = shl i32 %i.ag, %.049.lcssa
  %i.ai = or i32 %i.ah, %.0                       ; 2 uses
  %i.aj = add nuw nsw i32 %.049.lcssa, %i.ae      ; 2 uses
  %i.ak = icmp samesign ugt i32 %.049.lcssa, 8
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = shl i32 %i.ai, 1
  %i.am = or disjoint i32 %i.al, 1
  %i.an = add nuw nsw i32 %i.aj, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.f
  %.152 = phi i32 [ %i.am, %bb.h ], [ %i.ai, %bb.g ], [ %i.ag, %bb.f ]
  %.1 = phi i32 [ %i.an, %bb.h ], [ %i.aj, %bb.g ], [ %i.ae, %bb.f ]
  %i.ao = getelementptr inbounds [8 x i8], ptr @ff_v2_dc_chroma_table, i64 %i.w ; 2 uses
  store i32 %.152, ptr %i.ao, align 8, !tbaa !38
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 %.1, ptr %i.ap, align 4, !tbaa !38
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 256
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !80
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { cold nofree norecurse nosync nounwind optsize memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { cold }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 omnipotent char", !9, i64 0}
!12 = !{!"ScanTable", !11, i64 0, !5, i64 8, !5, i64 72}
!13 = !{!"p1 _ZTS14AVCodecContext", !9, i64 0}
!14 = !{!"long", !5, i64 0}
!15 = !{!"p1 _ZTS15AVRefStructPool", !9, i64 0}
!16 = !{!"BufferPoolContext", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !6, i64 48}
!17 = !{!"p1 _ZTS10MPVPicture", !9, i64 0}
!18 = !{!"p1 int", !9, i64 0}
!19 = !{!"MPVWorkPicture", !5, i64 0, !5, i64 24, !17, i64 48, !11, i64 56, !5, i64 64, !18, i64 80, !11, i64 88, !5, i64 96, !6, i64 112}
!20 = !{!"p1 short", !9, i64 0}
!21 = !{!"ScratchpadContext", !11, i64 0, !11, i64 8, !5, i64 16, !6, i64 24}
!22 = !{!"BlockDSPContext", !9, i64 0, !9, i64 8, !5, i64 16}
!23 = !{!"H264ChromaContext", !5, i64 0, !5, i64 32}
!24 = !{!"HpelDSPContext", !5, i64 0, !5, i64 128, !5, i64 256, !5, i64 352}
!25 = !{!"IDCTDSPContext", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24, !9, i64 32, !9, i64 40, !5, i64 48, !6, i64 112, !6, i64 116}
!26 = !{!"QpelDSPContext", !5, i64 0, !5, i64 256, !5, i64 512}
!27 = !{!"VideoDSPContext", !9, i64 0, !9, i64 8}
!28 = !{!"H263DSPContext", !9, i64 0, !9, i64 8}
!29 = !{!"short", !5, i64 0}
!30 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!31 = !{!"p1 _ZTS11ThreadFrame", !9, i64 0}
!32 = !{!"p1 _ZTS14ThreadProgress", !9, i64 0}
!33 = !{!"ERPicture", !30, i64 0, !31, i64 8, !32, i64 16, !5, i64 24, !5, i64 40, !18, i64 56, !6, i64 64}
!34 = !{!"ERContext", !13, i64 0, !9, i64 8, !18, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !14, i64 40, !14, i64 48, !5, i64 56, !6, i64 60, !11, i64 64, !11, i64 72, !5, i64 80, !11, i64 104, !11, i64 112, !5, i64 120, !33, i64 184, !33, i64 256, !33, i64 328, !5, i64 400, !5, i64 416, !29, i64 432, !29, i64 434, !6, i64 436, !6, i64 440, !9, i64 448, !9, i64 456}
!35 = !{!"MpegEncContext", !10, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !5, i64 20, !6, i64 68, !12, i64 72, !12, i64 208, !13, i64 344, !6, i64 352, !6, i64 356, !6, i64 360, !6, i64 364, !6, i64 368, !6, i64 372, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !6, i64 408, !6, i64 412, !14, i64 416, !14, i64 424, !15, i64 432, !16, i64 440, !6, i64 496, !6, i64 500, !5, i64 504, !6, i64 760, !19, i64 768, !19, i64 888, !19, i64 1008, !20, i64 1128, !11, i64 1136, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !20, i64 1176, !20, i64 1184, !20, i64 1192, !6, i64 1200, !11, i64 1208, !11, i64 1216, !11, i64 1224, !11, i64 1232, !21, i64 1240, !6, i64 1272, !6, i64 1276, !6, i64 1280, !6, i64 1284, !22, i64 1288, !23, i64 1320, !24, i64 1384, !25, i64 1768, !26, i64 1888, !27, i64 2656, !28, i64 2672, !20, i64 2688, !5, i64 2696, !6, i64 2728, !6, i64 2732, !5, i64 2736, !5, i64 2800, !5, i64 2816, !5, i64 2848, !6, i64 3104, !6, i64 3108, !6, i64 3112, !6, i64 3116, !5, i64 3120, !5, i64 3144, !5, i64 3168, !18, i64 3192, !5, i64 3200, !5, i64 3328, !5, i64 3456, !5, i64 3584, !6, i64 3712, !6, i64 3716, !6, i64 3720, !6, i64 3724, !6, i64 3728, !6, i64 3732, !6, i64 3736, !6, i64 3740, !14, i64 3744, !14, i64 3752, !29, i64 3760, !29, i64 3762, !29, i64 3764, !29, i64 3766, !6, i64 3768, !6, i64 3772, !6, i64 3776, !6, i64 3780, !6, i64 3784, !6, i64 3788, !6, i64 3792, !6, i64 3796, !5, i64 3800, !6, i64 3816, !6, i64 3820, !6, i64 3824, !6, i64 3828, !6, i64 3832, !6, i64 3836, !6, i64 3840, !6, i64 3844, !6, i64 3848, !6, i64 3852, !6, i64 3856, !6, i64 3860, !6, i64 3864, !6, i64 3868, !5, i64 3872, !6, i64 3880, !6, i64 3884, !9, i64 3888, !9, i64 3896, !6, i64 3904, !6, i64 3908, !34, i64 3912}
!36 = !{!35, !6, i64 3784}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!6, !6, i64 0}
!39 = !{!5, !5, i64 0}
!40 = !{!11, !11, i64 0}
!41 = !{!35, !6, i64 376}
!42 = !{!35, !11, i64 1136}
!43 = !{!35, !11, i64 1144}
!44 = distinct !{!44, !37}
!45 = !{!35, !6, i64 400}
!46 = !{!35, !11, i64 1168}
!47 = distinct !{!47, !37, !75, !76}
!48 = distinct !{!48, !37, !76, !75}
!49 = distinct !{!49, !37}
!50 = distinct !{!50, !37, !75, !76}
!51 = distinct !{!51, !37, !76, !75}
!52 = !{!35, !20, i64 1184}
!53 = !{!29, !29, i64 0}
!54 = !{!35, !6, i64 3780}
!55 = !{!35, !6, i64 3788}
!56 = !{!35, !13, i64 344}
!57 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!58 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!59 = !{!"AVRational", !6, i64 0, !6, i64 4}
!60 = !{!"float", !5, i64 0}
!61 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!62 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!63 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!64 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!65 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!66 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!67 = !{!"any p2 pointer", !9, i64 0}
!68 = !{!"p2 _ZTS15AVFrameSideData", !67, i64 0}
!69 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !57, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !58, i64 40, !9, i64 48, !14, i64 56, !6, i64 64, !6, i64 68, !11, i64 72, !6, i64 80, !59, i64 84, !59, i64 92, !59, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !59, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !60, i64 204, !60, i64 208, !60, i64 212, !60, i64 216, !60, i64 220, !60, i64 224, !60, i64 228, !60, i64 232, !60, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !20, i64 288, !20, i64 296, !20, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !61, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !60, i64 428, !60, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !62, i64 456, !14, i64 464, !14, i64 472, !60, i64 480, !60, i64 484, !6, i64 488, !6, i64 492, !11, i64 496, !11, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !63, i64 536, !9, i64 544, !64, i64 552, !64, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !65, i64 728, !11, i64 736, !6, i64 744, !6, i64 748, !11, i64 752, !11, i64 760, !11, i64 768, !66, i64 776, !6, i64 784, !6, i64 788, !14, i64 792, !6, i64 800, !6, i64 804, !14, i64 808, !9, i64 816, !14, i64 824, !18, i64 832, !6, i64 840, !68, i64 848, !6, i64 856, !6, i64 860}
!70 = !{!69, !6, i64 720}
!71 = !{!35, !14, i64 416}
!72 = !{!35, !6, i64 3112}
!73 = !{!35, !6, i64 3108}
!74 = !{!35, !14, i64 424}
!75 = !{!"llvm.loop.isvectorized", i32 1}
!76 = !{!"llvm.loop.unroll.runtime.disable"}
!77 = !{!35, !6, i64 3728}
!78 = !{!20, !20, i64 0}
!79 = distinct !{!79, !37}
!80 = distinct !{!80, !37}
end_hunk_0
