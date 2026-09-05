Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/twinvq?download=true
inline.NumInlined: 30
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@construct_perm_table:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 34020 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !51
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 33970 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 33975
  tail call fastcc void @permutate_in_line(ptr noundef %i.d, i32 noundef %i.m, i32 noundef %i.k, i32 noundef %i.h, ptr noundef nonnull %i.n, i32 noundef 3)
  br label %bb.b

.split38:                                         ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  %i.q = load i16, ptr %i.p, align 8, !tbaa !38
  %i.r = zext nneg i32 %1 to i64                  ; 5 uses
  %i.s = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.r
  %i.t = load i8, ptr %i.s, align 8, !tbaa !45    ; 2 uses
  %i.u = zext i8 %i.t to i32
  %.rhs.trunc = zext i8 %i.t to i16
  %i.v = udiv i16 %i.q, %.rhs.trunc
  %.zext = zext i16 %i.v to i32                   ; 2 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 356
  %i.y = load i32, ptr %i.x, align 4, !tbaa !43
  %i.z = mul nsw i32 %i.y, %i.u                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 34008
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.r ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 33964
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %i.ad, i64 %i.r ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 33972
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.r
  tail call fastcc void @permutate_in_line(ptr noundef %i.d, i32 noundef %i.ac, i32 noundef %i.z, i32 noundef %.zext, ptr noundef nonnull %i.ae, i32 noundef %1)
  br label %bb.b

bb.b:                                             ; preds = %.split38, %.split
  %i.ah = phi i64 [ 3, %.split ], [ %i.r, %.split38 ]
  %i.ai = phi ptr [ %i.l, %.split ], [ %i.ab, %.split38 ]
  %i.aj = phi ptr [ %i.n, %.split ], [ %i.ae, %.split38 ]
  %i.ak = phi ptr [ %i.o, %.split ], [ %i.ag, %.split38 ]
  %.036 = phi i32 [ %i.h, %.split ], [ %.zext, %.split38 ] ; 2 uses
  %.0 = phi i32 [ %i.k, %.split ], [ %i.z, %.split38 ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 1196
  %i.am = getelementptr inbounds nuw [8192 x i8], ptr %i.al, i64 %i.ah ; 2 uses
  %i.an = load i32, ptr %i.ai, align 4, !tbaa !51 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.preheader.preheader.i, label %transpose_perm.exit

.preheader.preheader.i:                           ; preds = %bb.b
  %i.ap = load i8, ptr %i.ak, align 1, !tbaa !46
  %i.aq = zext nneg i32 %i.an to i64              ; 2 uses
  %i.ar = zext i8 %i.ap to i64
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %indvars.iv26.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next27.i, %._crit_edge.i ] ; 3 uses
  %.019.i = phi i32 [ 0, %.preheader.preheader.i ], [ %.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %i.as = icmp samesign uge i64 %indvars.iv26.i, %i.ar
  %i.at = zext i1 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.at ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !tbaa !46
  %.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.aw = sext i32 %.019.i to i64
  %invariant.gep.i = getelementptr inbounds nuw [2 x i8], ptr %i.d, i64 %indvars.iv26.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv21.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next22.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.aw, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.ax = mul nuw nsw i64 %indvars.iv21.i, %i.aq
  %gep.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i, i64 %i.ax
  %i.ay = load i16, ptr %gep.i, align 2, !tbaa !63
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.az = getelementptr inbounds [2 x i8], ptr %i.am, i64 %indvars.iv.i
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !63
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %i.ba = load i8, ptr %i.au, align 1, !tbaa !46
  %i.bb = zext i8 %i.ba to i64
  %i.bc = icmp samesign ult i64 %indvars.iv.next22.i, %i.bb
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !155

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %i.bd = trunc nsw i64 %indvars.iv.next.i to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %.1.lcssa.i = phi i32 [ %.019.i, %.preheader.i ], [ %i.bd, %._crit_edge.loopexit.i ]
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next27.i, %i.aq
  br i1 %exitcond.not.i, label %transpose_perm.exit, label %.preheader.i, !llvm.loop !156

transpose_perm.exit:                              ; preds = %._crit_edge.i, %bb.b
  %i.be = mul nsw i32 %.0, %.036                  ; 2 uses
  %i.bf = icmp sgt i32 %i.be, 0
  br i1 %i.bf, label %.lr.ph.preheader.i41, label %linear_perm.exit

.lr.ph.preheader.i41:                             ; preds = %transpose_perm.exit
  %wide.trip.count.i = zext nneg i32 %i.be to i64
  br label %.lr.ph.i42

.lr.ph.i42:                                       ; preds = %.lr.ph.i42, %.lr.ph.preheader.i41
  %indvars.iv.i43 = phi i64 [ 0, %.lr.ph.preheader.i41 ], [ %indvars.iv.next.i44, %.lr.ph.i42 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %indvars.iv.i43 ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !63
  %i.bi = sext i16 %i.bh to i32                   ; 2 uses
  %i.bj = srem i32 %i.bi, %.0
  %i.bk = mul nsw i32 %i.bj, %.036
  %i.bl = sdiv i32 %i.bi, %.0
  %i.bm = add nsw i32 %i.bk, %i.bl
  %i.bn = trunc i32 %i.bm to i16
  store i16 %i.bn, ptr %i.bg, align 2, !tbaa !63
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %wide.trip.count.i
  br i1 %exitcond.not.i45, label %linear_perm.exit, label %.lr.ph.i42, !llvm.loop !157

linear_perm.exit:                                 ; preds = %.lr.ph.i42, %transpose_perm.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @permutate_in_line(ptr nofree noundef writeonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef range(i32 0, 65536) %3, ptr nofree noundef readonly captures(none) %4, i32 noundef range(i32 0, 4) %5) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %4, align 1, !tbaa !46
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph43

.lr.ph43:                                         ; preds = %bb.a
  %i.b = icmp eq i32 %5, 2                        ; 2 uses
  %i.c = and i32 %1, 1
  %.not37 = icmp eq i32 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.e = icmp sgt i32 %1, 0
  %i.f = mul i32 %3, %2                           ; 3 uses
  br i1 %i.e, label %.lr.ph43.split.us, label %._crit_edge

.lr.ph43.split.us:                                ; preds = %.lr.ph43
  %i.g = icmp eq i32 %2, 1
  %i.h = zext nneg i32 %1 to i64                  ; 5 uses
  br i1 %i.g, label %.lr.ph.us.us.preheader, label %.lr.ph43.split.us.split

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph43.split.us
  %i.i = add nsw i64 %i.h, -1
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.critedge.us.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.critedge.us.us ], [ 0, %.lr.ph.us.us.preheader ] ; 4 uses
  %i.j = trunc i64 %indvars.iv62 to i32
  %i.k = mul i32 %1, %i.j
  %i.l = trunc i64 %indvars.iv62 to i32
  %i.m = mul i32 %1, %i.l
  %i.n = mul nuw nsw i64 %indvars.iv62, %i.h      ; 3 uses
  %i.o = tail call i32 @llvm.smax.i32(i32 %i.m, i32 %i.f)
  %i.p = sub i32 %i.o, %i.k
  %i.q = zext i32 %i.p to i64
  %i.r = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.q) ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.r, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.us.us
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.t = and i64 %i.s, 7                          ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = select i1 %i.u, i64 8, i64 %i.t
  %n.vec = sub nsw i64 %i.s, %i.v                 ; 2 uses
  %i.w = insertelement <8 x i64> poison, i64 %i.n, i64 0
  %i.x = shufflevector <8 x i64> %i.w, <8 x i64> poison, <8 x i32> zeroinitializer
  %invariant.gep = getelementptr [2 x i8], ptr %0, i64 %i.n
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = insertelement <8 x i64> poison, i64 %index, i64 0
  %i.z = shufflevector <8 x i64> %i.y, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.aa = or disjoint <8 x i64> %i.z, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %i.ab = add nuw nsw <8 x i64> %i.aa, %i.x
  %i.ac = trunc <8 x i64> %i.ab to <8 x i16>
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index
  store <8 x i16> %i.ac, ptr %gep, align 2, !tbaa !63
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %scalar.ph.preheader, label %vector.body, !llvm.loop !158

scalar.ph.preheader:                              ; preds = %vector.body, %.lr.ph.us.us
  %indvars.iv57.ph = phi i64 [ 0, %.lr.ph.us.us ], [ %n.vec, %vector.body ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.b
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %bb.b ], [ %indvars.iv57.ph, %scalar.ph.preheader ] ; 2 uses
  %i.ae = add nuw nsw i64 %indvars.iv57, %i.n     ; 3 uses
  %i.af = trunc nuw i64 %i.ae to i32
  %i.ag = icmp sgt i32 %i.f, %i.af
  br i1 %i.ag, label %bb.b, label %.critedge.us.us

bb.b:                                             ; preds = %scalar.ph
  %i.ah = trunc i64 %i.ae to i16
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ae
  store i16 %i.ah, ptr %i.ai, align 2, !tbaa !63
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1 ; 2 uses
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %i.h
  br i1 %exitcond61.not, label %.critedge.us.us, label %scalar.ph, !llvm.loop !159

.critedge.us.us:                                  ; preds = %bb.b, %scalar.ph
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.aj = load i8, ptr %4, align 1, !tbaa !46
  %i.ak = zext i8 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next63, %i.ak
  br i1 %i.al, label %.lr.ph.us.us, label %._crit_edge, !llvm.loop !160

.lr.ph43.split.us.split:                          ; preds = %.lr.ph43.split.us, %.critedge.us
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %.critedge.us ], [ 0, %.lr.ph43.split.us ] ; 5 uses
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph43.split.us.split
  br i1 %.not37, label %.thread.us, label %.lr.ph.us

bb.d:                                             ; preds = %.lr.ph43.split.us.split
  %i.am = srem i32 %1, %2
  %.not.us = icmp eq i32 %i.am, 0
  br i1 %.not.us, label %.thread.us, label %.lr.ph.us

.thread.us:                                       ; preds = %bb.d, %bb.c
  %i.an = load i8, ptr %i.d, align 1, !tbaa !46
  %i.ao = zext i8 %i.an to i64
  %i.ap = icmp eq i64 %indvars.iv54, %i.ao
  br i1 %i.ap, label %.lr.ph.us, label %bb.e

bb.e:                                             ; preds = %.thread.us
  %i.aq = select i1 %i.b, i64 1, i64 %indvars.iv54
  %spec.select.us = mul nuw nsw i64 %i.aq, %indvars.iv54
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %bb.e, %.thread.us, %bb.d, %bb.c
  %.0.us = phi i64 [ %spec.select.us, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %.thread.us ]
  %i.ar = mul nuw nsw i64 %indvars.iv54, %i.h     ; 2 uses
  %i.as = trunc nuw i64 %i.ar to i32
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph.us, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.at = add nuw nsw i64 %indvars.iv, %i.ar      ; 2 uses
  %i.au = trunc nuw i64 %i.at to i32
  %i.av = icmp sgt i32 %i.f, %i.au
  br i1 %i.av, label %bb.g, label %.critedge.us

bb.g:                                             ; preds = %bb.f
  %i.aw = add nuw nsw i64 %indvars.iv, %.0.us
  %i.ax = trunc nuw i64 %i.aw to i32
  %i.ay = srem i32 %i.ax, %1
  %i.az = add nsw i32 %i.ay, %i.as
  %i.ba = trunc i32 %i.az to i16
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.at
  store i16 %i.ba, ptr %i.bb, align 2, !tbaa !63
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.h
  br i1 %exitcond.not, label %.critedge.us, label %bb.f, !llvm.loop !161

.critedge.us:                                     ; preds = %bb.f, %bb.g
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1 ; 2 uses
  %i.bc = load i8, ptr %4, align 1, !tbaa !46
  %i.bd = zext i8 %i.bc to i64
  %i.be = icmp samesign ult i64 %indvars.iv.next55, %i.bd
  br i1 %i.be, label %.lr.ph43.split.us.split, label %._crit_edge, !llvm.loop !160

._crit_edge:                                      ; preds = %.critedge.us, %.critedge.us.us, %.lr.ph43, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.cos.v4f64(<4 x double>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.exp.v4f64(<4 x double>) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { cold }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !48}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 1, !"override-stack-alignment", i32 16}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS11AVBufferRef", !10, i64 0}
!12 = !{!"long", !6, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"p1 _ZTS16AVPacketSideData", !10, i64 0}
!15 = !{!"AVRational", !7, i64 0, !7, i64 4}
!16 = !{!"p1 _ZTS7AVClass", !10, i64 0}
!17 = !{!"p1 _ZTS7AVCodec", !10, i64 0}
!18 = !{!"p1 _ZTS15AVCodecInternal", !10, i64 0}
!19 = !{!"float", !6, i64 0}
!20 = !{!"p1 short", !10, i64 0}
!21 = !{!"AVChannelLayout", !7, i64 0, !7, i64 4, !6, i64 8, !10, i64 16}
!22 = !{!"p1 _ZTS10RcOverride", !10, i64 0}
!23 = !{!"p1 _ZTS9AVHWAccel", !10, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !10, i64 0}
!25 = !{!"p1 int", !10, i64 0}
!26 = !{!"any p2 pointer", !10, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !26, i64 0}
!28 = !{!"AVCodecContext", !16, i64 0, !7, i64 8, !7, i64 12, !17, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !18, i64 40, !10, i64 48, !12, i64 56, !7, i64 64, !7, i64 68, !13, i64 72, !7, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !15, i64 128, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !10, i64 184, !10, i64 192, !7, i64 200, !19, i64 204, !19, i64 208, !19, i64 212, !19, i64 216, !19, i64 220, !19, i64 224, !19, i64 228, !19, i64 232, !19, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !20, i64 288, !20, i64 296, !20, i64 304, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !21, i64 352, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !10, i64 408, !7, i64 416, !7, i64 420, !7, i64 424, !19, i64 428, !19, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !22, i64 456, !12, i64 464, !12, i64 472, !19, i64 480, !19, i64 484, !7, i64 488, !7, i64 492, !13, i64 496, !13, i64 504, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !23, i64 536, !10, i64 544, !11, i64 552, !11, i64 560, !7, i64 568, !7, i64 572, !6, i64 576, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !10, i64 672, !10, i64 680, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716, !7, i64 720, !24, i64 728, !13, i64 736, !7, i64 744, !7, i64 748, !13, i64 752, !13, i64 760, !13, i64 768, !14, i64 776, !7, i64 784, !7, i64 788, !12, i64 792, !7, i64 800, !7, i64 804, !12, i64 808, !10, i64 816, !12, i64 824, !25, i64 832, !7, i64 840, !27, i64 848, !7, i64 856, !7, i64 860}
!29 = !{!28, !10, i64 32}
!30 = !{!"p1 _ZTS14AVCodecContext", !10, i64 0}
!31 = !{!"p1 _ZTS17AVFloatDSPContext", !10, i64 0}
!32 = !{!"p1 _ZTS13TwinVQModeTab", !10, i64 0}
!33 = !{!"p1 float", !10, i64 0}
!34 = !{!"TwinVQContext", !30, i64 0, !31, i64 8, !6, i64 16, !6, i64 40, !32, i64 64, !7, i64 72, !6, i64 76, !6, i64 236, !6, i64 1196, !6, i64 33964, !6, i64 33972, !6, i64 33976, !6, i64 33992, !6, i64 34008, !33, i64 34024, !33, i64 34032, !33, i64 34040, !6, i64 34048, !7, i64 34056, !6, i64 34064, !33, i64 34088, !7, i64 34096, !7, i64 34100, !7, i64 34104, !6, i64 34108, !7, i64 36740, !10, i64 36744, !10, i64 36752, !10, i64 36760}
!35 = !{!34, !32, i64 64}
!36 = !{!"short", !6, i64 0}
!37 = !{!"TwinVQModeTab", !6, i64 0, !36, i64 192, !6, i64 194, !33, i64 200, !6, i64 208, !6, i64 209, !6, i64 210, !6, i64 211, !20, i64 216, !6, i64 224, !6, i64 225, !6, i64 226, !6, i64 227, !36, i64 228}
!38 = !{!37, !36, i64 192}
!39 = !{!34, !7, i64 34100}
!40 = !{!28, !7, i64 380}
!41 = !{!34, !33, i64 34024}
!42 = !{!34, !30, i64 0}
!43 = !{!28, !7, i64 356}
!44 = !{!"TwinVQFrameMode", !6, i64 0, !20, i64 8, !6, i64 16, !20, i64 24, !6, i64 32, !6, i64 33, !20, i64 40, !20, i64 48, !6, i64 56}
!45 = !{!44, !6, i64 0}
!46 = !{!6, !6, i64 0}
!47 = !{!19, !19, i64 0}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!"llvm.loop.isvectorized", i32 1}
!50 = !{!"llvm.loop.unroll.runtime.disable"}
!51 = !{!7, !7, i64 0}
!52 = !{!37, !6, i64 226}
!53 = !{!34, !33, i64 34088}
!54 = !{!34, !31, i64 8}
!55 = !{!37, !6, i64 209}
!56 = !{!37, !6, i64 194}
!57 = !{!37, !6, i64 210}
!58 = !{!37, !6, i64 211}
!59 = !{!"llvm.loop.unroll.disable"}
!60 = !{!33, !33, i64 0}
!61 = !{!34, !33, i64 34040}
!62 = !{!34, !33, i64 34032}
!63 = !{!36, !36, i64 0}
!64 = distinct !{!64, !48, !49, !50}
!65 = distinct !{!65, !48, !50, !49}
!66 = distinct !{!66, !48, !49, !50}
!67 = distinct !{!67, !48, !50, !49}
!68 = distinct !{!68, !48}
!69 = distinct !{null}
!70 = distinct !{!70, !48}
!71 = distinct !{!71, !48}
!72 = distinct !{!72, !48, !49, !50}
!73 = distinct !{!73, !59}
!74 = distinct !{!74, !48, !49}
!75 = distinct !{!75, !48}
!76 = distinct !{!76, !"LVerDomain"}
!77 = distinct !{!77, !76}
!78 = distinct !{!78, !76}
!79 = distinct !{!79, !76}
!80 = distinct !{!80, !48, !49, !50}
!81 = distinct !{!81, !48, !49}
!82 = distinct !{!82, !48, !49, !50}
!83 = distinct !{!83, !48, !50, !49}
!84 = distinct !{!84, !48}
!85 = distinct !{!85, !48}
!86 = distinct !{!86, !48}
!87 = distinct !{null, null}
!88 = distinct !{!88, !48, !124}
!89 = distinct !{!89, !48}
!90 = distinct !{null}
!91 = distinct !{!91, !48}
!92 = !{!"AVPacket", !11, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !14, i64 48, !7, i64 56, !12, i64 64, !12, i64 72, !10, i64 80, !11, i64 88, !15, i64 96}
!93 = !{!92, !13, i64 24}
!94 = !{!92, !7, i64 32}
end_hunk_0
