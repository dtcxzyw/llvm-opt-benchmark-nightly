Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/get_disto?download=true
inline.NumInlined: 6
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@SSIMScaleChannel:bb.a
  br i1 %lcmp.mod44.not, label %RescalePlane.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %RescalePlane.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv26.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next27.i.1, %RescalePlane.exit.loopexit.unr-lcssa ]
  %lcmp.mod45 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod45)
  %i.pd = mul nsw i64 %indvars.iv26.i.epil.init, %i.oh
  %i.pe = getelementptr inbounds i8, ptr %0, i64 %i.pd
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.epil.preheader
  %indvars.iv.i77.epil = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i78.epil, %bb.i ] ; 2 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 %indvars.iv.i77.epil ; 2 uses
  %i.pg = load i8, ptr %i.pf, align 1, !tbaa !26
  %i.ph = zext i8 %i.pg to i32
  %i.pi = mul nuw i32 %i.oe, %i.ph
  %i.pj = add nuw i32 %i.pi, 32768
  %i.pk = lshr i32 %i.pj, 16
  %i.pl = trunc i32 %i.pk to i8
  store i8 %i.pl, ptr %i.pf, align 1, !tbaa !26
  %indvars.iv.next.i78.epil = add nuw nsw i64 %indvars.iv.i77.epil, 4 ; 2 uses
  %i.pm = icmp samesign ult i64 %indvars.iv.next.i78.epil, %i.og
  br i1 %i.pm, label %bb.i, label %RescalePlane.exit, !llvm.loop !0

RescalePlane.exit:                                ; preds = %RescalePlane.exit.loopexit.unr-lcssa, %bb.i, %bb.f, %._crit_edge96, %bb.a
  %.070 = phi i32 [ -1, %bb.a ], [ %.065.lcssa, %._crit_edge96 ], [ %.065.lcssa, %bb.f ], [ %.065.lcssa, %bb.i ], [ %.065.lcssa, %RescalePlane.exit.loopexit.unr-lcssa ]
  ret i32 %.070
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 256) i32 @DiffScaleChannel(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6) unnamed_addr #7 {
bb.a:
  %i.a = icmp sgt i32 %5, 0                       ; 2 uses
  %i.b = icmp sgt i32 %4, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.lr.ph.us.preheader, label %._crit_edge41

.lr.ph.us.preheader:                              ; preds = %bb.a
  %i.c = shl nsw i32 %4, 2
  %i.d = zext nneg i32 %i.c to i64
  %i.e = sext i32 %1 to i64
  %i.f = sext i32 %3 to i64
  %wide.trip.count = zext nneg i32 %5 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %indvars.iv45 = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next46, %._crit_edge.us ] ; 3 uses
  %.038.us = phi i32 [ 0, %.lr.ph.us.preheader ], [ %spec.select.us, %._crit_edge.us ]
  %i.g = mul nsw i64 %indvars.iv45, %i.e
  %i.h = getelementptr inbounds i8, ptr %0, i64 %i.g
  %i.i = mul nsw i64 %indvars.iv45, %i.f
  %i.j = getelementptr inbounds i8, ptr %2, i64 %i.i
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.us ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.136.us = phi i32 [ %.038.us, %.lr.ph.us ], [ %spec.select.us, %bb.b ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !26
  %i.m = zext i8 %i.l to i32
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26
  %i.p = zext i8 %i.o to i32
  %i.q = sub nsw i32 %i.m, %i.p
  %i.r = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true) ; 2 uses
  %spec.select.us = tail call i32 @llvm.umax.i32(i32 %i.r, i32 %.136.us) ; 3 uses
  %i.s = trunc nuw i32 %i.r to i8
  store i8 %i.s, ptr %i.k, align 1, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.t = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.t, label %bb.b, label %._crit_edge.us, !llvm.loop !45

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge41, label %.lr.ph.us, !llvm.loop !46

._crit_edge41:                                    ; preds = %._crit_edge.us, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %spec.select.us, %._crit_edge.us ] ; 3 uses
  %.not = icmp eq i32 %6, 0
  br i1 %.not, label %RescalePlane.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge41
  %.not.i = icmp eq i32 %.0.lcssa, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = udiv i32 16711680, %.0.lcssa
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = phi i32 [ %i.u, %bb.d ], [ 0, %bb.c ]    ; 3 uses
  %i.w = icmp sgt i32 %4, 0
  %or.cond.i = and i1 %i.w, %i.a
  br i1 %or.cond.i, label %.lr.ph.preheader.i, label %RescalePlane.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.x = shl nuw nsw i32 %4, 2
  %i.y = zext nneg i32 %i.x to i64                ; 3 uses
  %i.z = sext i32 %1 to i64                       ; 3 uses
  %wide.trip.count.i = zext nneg i32 %5 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.aa = icmp eq i32 %5, 1
  br i1 %i.aa, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge.i.1, %.lr.ph.preheader.i.new
  %indvars.iv26.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next27.i.1, %._crit_edge.i.1 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %._crit_edge.i.1 ]
  %i.ab = mul nsw i64 %indvars.iv26.i, %i.z
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %indvars.iv.i ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !26
  %i.af = zext i8 %i.ae to i32
  %i.ag = mul nuw i32 %i.v, %i.af
  %i.ah = add nuw i32 %i.ag, 32768
  %i.ai = lshr i32 %i.ah, 16
  %i.aj = trunc i32 %i.ai to i8
  store i8 %i.aj, ptr %i.ad, align 1, !tbaa !26
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %i.ak = icmp samesign ult i64 %indvars.iv.next.i, %i.y
  br i1 %i.ak, label %bb.f, label %._crit_edge.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %bb.f
  %indvars.iv.next27.i = or disjoint i64 %indvars.iv26.i, 1
  %i.al = mul nsw i64 %indvars.iv.next27.i, %i.z
  %i.am = getelementptr inbounds i8, ptr %0, i64 %i.al
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge.i
  %indvars.iv.i.1 = phi i64 [ 0, %._crit_edge.i ], [ %indvars.iv.next.i.1, %bb.g ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv.i.1 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !26
  %i.ap = zext i8 %i.ao to i32
  %i.aq = mul nuw i32 %i.v, %i.ap
  %i.ar = add nuw i32 %i.aq, 32768
  %i.as = lshr i32 %i.ar, 16
  %i.at = trunc i32 %i.as to i8
  store i8 %i.at, ptr %i.an, align 1, !tbaa !26
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 4 ; 2 uses
  %i.au = icmp samesign ult i64 %indvars.iv.next.i.1, %i.y
  br i1 %i.au, label %bb.g, label %._crit_edge.i.1, !llvm.loop !0

._crit_edge.i.1:                                  ; preds = %bb.g
  %indvars.iv.next27.i.1 = add nuw nsw i64 %indvars.iv26.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %RescalePlane.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !1

RescalePlane.exit.loopexit.unr-lcssa:             ; preds = %._crit_edge.i.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %RescalePlane.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %RescalePlane.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv26.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next27.i.1, %RescalePlane.exit.loopexit.unr-lcssa ]
  %lcmp.mod1 = trunc i32 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod1)
  %i.av = mul nsw i64 %indvars.iv26.i.epil.init, %i.z
  %i.aw = getelementptr inbounds i8, ptr %0, i64 %i.av
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ 0, %.lr.ph.i.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.h ] ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv.i.epil ; 2 uses
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !26
  %i.az = zext i8 %i.ay to i32
  %i.ba = mul nuw i32 %i.v, %i.az
  %i.bb = add nuw i32 %i.ba, 32768
  %i.bc = lshr i32 %i.bb, 16
  %i.bd = trunc i32 %i.bc to i8
  store i8 %i.bd, ptr %i.ax, align 1, !tbaa !26
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 4 ; 2 uses
  %i.be = icmp samesign ult i64 %indvars.iv.next.i.epil, %i.y
  br i1 %i.be, label %bb.h, label %RescalePlane.exit, !llvm.loop !0

RescalePlane.exit:                                ; preds = %RescalePlane.exit.loopexit.unr-lcssa, %bb.h, %bb.e, %._crit_edge41
  ret i32 %.0.lcssa
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ConvertToGray(ptr nofree noundef nonnull readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph24, label %._crit_edge25

.lr.ph24:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph24.split, label %._crit_edge25

.lr.ph24.split:                                   ; preds = %.lr.ph24, %._crit_edge
  %i.j = phi i32 [ %i.ak, %._crit_edge ], [ %i.b, %.lr.ph24 ]
  %i.k = phi i32 [ %i.al, %._crit_edge ], [ %i.h, %.lr.ph24 ] ; 2 uses
  %.02022.a = phi i32 [ %i.am, %._crit_edge ], [ 0, %.lr.ph24 ] ; 2 uses
  %1 = load i32, ptr %i.f, align 8, !tbaa !23
  %i.l = mul nsw i32 %1, %.02022.a
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.m
  %i.o = icmp sgt i32 %i.k, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph24.split, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.lr.ph24.split ] ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !17   ; 4 uses
  %i.r = lshr i32 %i.q, 16
  %i.s = and i32 %i.r, 255
  %i.t = lshr i32 %i.q, 8
  %i.u = and i32 %i.t, 255
  %i.v = and i32 %i.q, 255
  %i.w = uitofp nneg i32 %i.s to double
  %i.x = uitofp nneg i32 %i.u to double
  %i.y = fmul nnan double %i.x, 7.152000e-01
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double 2.126000e-01, double %i.y)
  %i.aa = uitofp nneg i32 %i.v to double
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.aa, double 7.220000e-02, double %i.z)
  %i.ac = fadd double %i.ab, 5.000000e-01
  %i.ad = fptoui double %i.ac to i32
  %i.ae = and i32 %i.q, -16777216
  %i.af = mul i32 %i.ad, 65793
  %i.ag = or i32 %i.af, %i.ae
  store i32 %i.ag, ptr %i.p, align 4, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !24  ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !47

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre.a = load i32, ptr %i.a, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph24.split
  %i.ak = phi i32 [ %.pre.a, %._crit_edge.loopexit ], [ %i.j, %.lr.ph24.split ] ; 2 uses
  %i.al = phi i32 [ %i.ah, %._crit_edge.loopexit ], [ %i.k, %.lr.ph24.split ]
  %i.am = add nuw nsw i32 %.02022.a, 1            ; 2 uses
  %i.an = icmp slt i32 %i.am, %i.ak
  br i1 %i.an, label %.lr.ph24.split, label %._crit_edge25, !llvm.loop !48

._crit_edge25:                                    ; preds = %._crit_edge, %.lr.ph24, %bb.a
  ret void
}

declare i64 @WebPEncodeLosslessBGRA(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare i32 @ImgIoUtilWriteFile(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @WebPFree(ptr noundef) local_unnamed_addr #5

declare void @WebPPictureFree(ptr noundef) local_unnamed_addr #5

declare i32 @WebPPictureInitInternal(ptr noundef, i32 noundef) local_unnamed_addr #5

declare ptr @WebPGetEnabledInputFileFormats() local_unnamed_addr #5

declare i32 @ImgIoUtilReadFile(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @WebPGuessImageReader(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree nounwind }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { cold nounwind }
attributes #19 = { nounwind allocsize(0) }

!llvm.module.flags = !{!2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{!0, !16}
!1 = distinct !{!1, !16}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!8, !8, i64 0}
!18 = !{!"p1 int", !11, i64 0}
!19 = !{!"p1 _ZTS12WebPAuxStats", !11, i64 0}
!20 = !{!"WebPPicture", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !14, i64 16, !14, i64 24, !14, i64 32, !8, i64 40, !8, i64 44, !14, i64 48, !8, i64 56, !7, i64 60, !18, i64 72, !8, i64 80, !7, i64 84, !11, i64 96, !11, i64 104, !8, i64 112, !14, i64 120, !19, i64 128, !8, i64 136, !11, i64 144, !11, i64 152, !7, i64 160, !14, i64 176, !14, i64 184, !7, i64 192, !11, i64 224, !11, i64 232, !7, i64 240}
!21 = !{!20, !8, i64 0}
!22 = !{!20, !18, i64 72}
!23 = !{!20, !8, i64 80}
!24 = !{!20, !8, i64 8}
!25 = !{!20, !8, i64 12}
!26 = !{!7, !7, i64 0}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = !{!"float", !7, i64 0}
!30 = !{!29, !29, i64 0}
!31 = !{!"long", !7, i64 0}
!32 = !{!31, !31, i64 0}
!33 = distinct !{!33, !16, !42, !43}
!34 = distinct !{!34, !16, !42, !43}
!35 = distinct !{!35, !16, !42, !43}
!36 = distinct !{!36, !16, !42}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16, !42}
!41 = distinct !{!41, !16}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"branch_weights", i32 8, i32 8}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16, !49}
!49 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
