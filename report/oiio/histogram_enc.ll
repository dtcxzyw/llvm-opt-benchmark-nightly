inline.NumInlined: 117
inline.NumDeleted: 52
begin_hunk_0_@VP8LGetHistoImageSymbols:bb.a

.loopexit164:                                     ; preds = %.loopexit164.loopexit, %bb.c
  %i.cf = phi ptr [ %.pre, %.loopexit164.loopexit ], [ %i.w, %bb.c ]
  %i.cg = icmp ne i32 %4, 0                       ; 5 uses
  %wide.trip.count.i80 = select i1 %i.cg, i64 4, i64 64 ; 2 uses
  %i.ch = shl nuw i32 1, %5
  %i.ci = add i32 %0, -1
  %i.cj = add i32 %i.ci, %i.ch
end_hunk_0
begin_hunk_1_@VP8LGetHistoImageSymbols:bb.a

HistogramCopyAndAnalyze.exit:                     ; preds = %bb.o
  %.pre196 = load i32, ptr %7, align 8, !tbaa !26 ; 7 uses
  %29 = select i1 %i.cg, i32 8, i32 128
  %i.jf = icmp sgt i32 %.pre196, %29
  %i.jg = icmp slt i32 %3, 100
  %i.jh = and i1 %i.jg, %i.jf
  br i1 %i.jh, label %bb.p, label %.thread138
end_hunk_1
begin_hunk_2_@VP8LGetHistoImageSymbols:bb.a
  %i.jj = icmp sgt i32 %i.k, 256
  %spec.select.i = select i1 %i.jj, i32 8, i32 16
  %i.jk = icmp sgt i32 %i.k, 512
  %.1.i = select i1 %i.jk, i32 4, i32 %spec.select.i
  %i.jl = icmp sgt i32 %i.k, 1024
  %i.jm = zext i1 %i.jl to i32
  %.2.i = lshr exact i32 %.1.i, %i.jm
end_hunk_2
begin_hunk_3_@VP8LGetHistoImageSymbols:bb.a

HistogramAnalyzeEntropyBin.exit:                  ; preds = %GetBinIdForEntropy.exit.i.i.epil.preheader, %HistogramAnalyzeEntropyBin.exit.loopexit335.unr-lcssa, %HistogramAnalyzeEntropyBin.exit.loopexit334.unr-lcssa, %GetBinIdForEntropy.exit.i.us21.i.epil, %GetBinIdForEntropy.exit17.i.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #10
  br i1 %i.cg, label %scalar.ph, label %vector.body

vector.body:                                      ; preds = %HistogramAnalyzeEntropyBin.exit, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %HistogramAnalyzeEntropyBin.exit ] ; 3 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %index
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr %27, i64 %index
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 16
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %i.oa, align 16, !tbaa !14
  store <8 x i16> <i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0, i16 -1, i16 0>, ptr %i.oc, align 16, !tbaa !14
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.od = icmp eq i64 %index.next, %wide.trip.count.i80
  br i1 %i.od, label %.lr.ph.i86, label %vector.body, !llvm.loop !52

.lr.ph.i86:                                       ; preds = %vector.body, %scalar.ph
end_hunk_3
