Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/yuv_sse2?download=true
inline.NumInlined: 109
inline.NumDeleted: 33
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@WebPSamplers = external local_unnamed_addr global [13 x ptr], align 16
@WebPConvertARGBToY = external local_unnamed_addr global ptr, align 8
@WebPConvertARGBToUV = external local_unnamed_addr global ptr, align 8
@WebPConvertRGBToY = external local_unnamed_addr global ptr, align 8
@WebPConvertBGRToY = external local_unnamed_addr global ptr, align 8
@WebPConvertRGBA32ToUV = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8YuvToRgba32_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.0924 = phi ptr [ %3, %bb.a ], [ %i.aj, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %.val = load i64, ptr %i.a, align 1, !tbaa !9
  %.val10 = load i64, ptr %i.b, align 1, !tbaa !9
  %.val11 = load i64, ptr %i.c, align 1, !tbaa !9
  %i.d = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %4 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.f = insertelement <2 x i64> poison, i64 %.val10, i64 0
  %i.g = bitcast <2 x i64> %i.f to <16 x i8>
  %5 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.g, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.h = insertelement <2 x i64> poison, i64 %.val11, i64 0
  %i.i = bitcast <2 x i64> %i.h to <16 x i8>
  %6 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.j = bitcast <16 x i8> %4 to <8 x i16>
  %i.k = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.j, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.l = bitcast <16 x i8> %6 to <8 x i16>        ; 2 uses
  %i.m = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.l, <8 x i16> splat (i16 26149))
  %i.n = add nsw <8 x i16> %i.k, splat (i16 -14234)
  %i.o = add <8 x i16> %i.n, %i.m
  %i.p = bitcast <16 x i8> %5 to <8 x i16>        ; 2 uses
  %i.q = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 6419))
  %i.r = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.l, <8 x i16> splat (i16 13320))
  %.neg23 = add nuw <8 x i16> %i.k, splat (i16 8708)
  %i.s = add nuw nsw <8 x i16> %i.q, %i.r
  %i.t = sub <8 x i16> %.neg23, %i.s
  %i.u = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 -32486))
  %i.v = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.u, <8 x i16> %i.k)
  %i.w = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.v, <8 x i16> splat (i16 17685))
  %i.x = ashr <8 x i16> %i.o, splat (i16 6)
  %i.y = ashr <8 x i16> %i.t, splat (i16 6)
  %i.z = lshr <8 x i16> %i.w, splat (i16 6)
  %i.aa = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.x, <8 x i16> %i.z) ; 2 uses
  %i.ab = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.y, <8 x i16> splat (i16 255)) ; 2 uses
  %i.ac = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ab, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ad = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ab, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ae = bitcast <16 x i8> %i.ac to <8 x i16>    ; 2 uses
  %i.af = bitcast <16 x i8> %i.ad to <8 x i16>    ; 2 uses
  %i.ag = shufflevector <8 x i16> %i.ae, <8 x i16> %i.af, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ah = shufflevector <8 x i16> %i.ae, <8 x i16> %i.af, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ag, ptr %.0924, align 1, !tbaa !9, !alias.scope !16
  %i.ai = getelementptr inbounds nuw i8, ptr %.0924, i64 16
  store <8 x i16> %i.ah, ptr %i.ai, align 1, !tbaa !9, !alias.scope !16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0924, i64 32
  %i.ak = icmp samesign ult i64 %indvars.iv, 24
  br i1 %i.ak, label %bb.b, label %bb.c, !llvm.loop !15

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8YuvToBgra32_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.0924 = phi ptr [ %3, %bb.a ], [ %i.aj, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %.val = load i64, ptr %i.a, align 1, !tbaa !9
  %.val10 = load i64, ptr %i.b, align 1, !tbaa !9
  %.val11 = load i64, ptr %i.c, align 1, !tbaa !9
  %i.d = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %4 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.f = insertelement <2 x i64> poison, i64 %.val10, i64 0
  %i.g = bitcast <2 x i64> %i.f to <16 x i8>
  %5 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.g, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.h = insertelement <2 x i64> poison, i64 %.val11, i64 0
  %i.i = bitcast <2 x i64> %i.h to <16 x i8>
  %6 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.j = bitcast <16 x i8> %4 to <8 x i16>
  %i.k = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.j, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.l = bitcast <16 x i8> %6 to <8 x i16>        ; 2 uses
  %i.m = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.l, <8 x i16> splat (i16 26149))
  %i.n = add nsw <8 x i16> %i.k, splat (i16 -14234)
  %i.o = add <8 x i16> %i.n, %i.m
  %i.p = bitcast <16 x i8> %5 to <8 x i16>        ; 2 uses
  %i.q = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 6419))
  %i.r = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.l, <8 x i16> splat (i16 13320))
  %.neg23 = add nuw <8 x i16> %i.k, splat (i16 8708)
  %i.s = add nuw nsw <8 x i16> %i.q, %i.r
  %i.t = sub <8 x i16> %.neg23, %i.s
  %i.u = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 -32486))
  %i.v = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.u, <8 x i16> %i.k)
  %i.w = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.v, <8 x i16> splat (i16 17685))
  %i.x = ashr <8 x i16> %i.o, splat (i16 6)
  %i.y = ashr <8 x i16> %i.t, splat (i16 6)
  %i.z = lshr <8 x i16> %i.w, splat (i16 6)
  %i.aa = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.z, <8 x i16> %i.x) ; 2 uses
  %i.ab = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.y, <8 x i16> splat (i16 255)) ; 2 uses
  %i.ac = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ab, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ad = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ab, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ae = bitcast <16 x i8> %i.ac to <8 x i16>    ; 2 uses
  %i.af = bitcast <16 x i8> %i.ad to <8 x i16>    ; 2 uses
  %i.ag = shufflevector <8 x i16> %i.ae, <8 x i16> %i.af, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ah = shufflevector <8 x i16> %i.ae, <8 x i16> %i.af, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ag, ptr %.0924, align 1, !tbaa !9, !alias.scope !20
  %i.ai = getelementptr inbounds nuw i8, ptr %.0924, i64 16
  store <8 x i16> %i.ah, ptr %i.ai, align 1, !tbaa !9, !alias.scope !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0924, i64 32
  %i.ak = icmp samesign ult i64 %indvars.iv, 24
  br i1 %i.ak, label %bb.b, label %bb.c, !llvm.loop !19

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8YuvToArgb32_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.0924 = phi ptr [ %3, %bb.a ], [ %i.aj, %bb.b ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %.val = load i64, ptr %i.a, align 1, !tbaa !9
  %.val10 = load i64, ptr %i.b, align 1, !tbaa !9
  %.val11 = load i64, ptr %i.c, align 1, !tbaa !9
  %i.d = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %4 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.f = insertelement <2 x i64> poison, i64 %.val10, i64 0
  %i.g = bitcast <2 x i64> %i.f to <16 x i8>
  %5 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.g, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.h = insertelement <2 x i64> poison, i64 %.val11, i64 0
  %i.i = bitcast <2 x i64> %i.h to <16 x i8>
  %6 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.j = bitcast <16 x i8> %4 to <8 x i16>
  %i.k = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.j, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.l = bitcast <16 x i8> %6 to <8 x i16>        ; 2 uses
  %i.m = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.l, <8 x i16> splat (i16 26149))
  %i.n = add nsw <8 x i16> %i.k, splat (i16 -14234)
  %i.o = add <8 x i16> %i.n, %i.m
  %i.p = bitcast <16 x i8> %5 to <8 x i16>        ; 2 uses
  %i.q = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 6419))
  %i.r = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.l, <8 x i16> splat (i16 13320))
  %.neg23 = add nuw <8 x i16> %i.k, splat (i16 8708)
  %i.s = add nuw nsw <8 x i16> %i.q, %i.r
  %i.t = sub <8 x i16> %.neg23, %i.s
  %i.u = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 -32486))
  %i.v = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.u, <8 x i16> %i.k)
  %i.w = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.v, <8 x i16> splat (i16 17685))
  %i.x = ashr <8 x i16> %i.o, splat (i16 6)
  %i.y = ashr <8 x i16> %i.t, splat (i16 6)
  %i.z = lshr <8 x i16> %i.w, splat (i16 6)
  %i.aa = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> splat (i16 255), <8 x i16> %i.y) ; 2 uses
  %i.ab = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.x, <8 x i16> %i.z) ; 2 uses
  %i.ac = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ab, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ad = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ab, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ae = bitcast <16 x i8> %i.ac to <8 x i16>    ; 2 uses
  %i.af = bitcast <16 x i8> %i.ad to <8 x i16>    ; 2 uses
  %i.ag = shufflevector <8 x i16> %i.ae, <8 x i16> %i.af, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ah = shufflevector <8 x i16> %i.ae, <8 x i16> %i.af, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ag, ptr %.0924, align 1, !tbaa !9, !alias.scope !24
  %i.ai = getelementptr inbounds nuw i8, ptr %.0924, i64 16
  store <8 x i16> %i.ah, ptr %i.ai, align 1, !tbaa !9, !alias.scope !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %i.aj = getelementptr inbounds nuw i8, ptr %.0924, i64 32
  %i.ak = icmp samesign ult i64 %indvars.iv, 24
  br i1 %i.ak, label %bb.b, label %bb.c, !llvm.loop !23

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8YuvToRgba444432_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.0924 = phi ptr [ %3, %bb.a ], [ %i.al, %bb.b ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %.val = load i64, ptr %i.a, align 1, !tbaa !9
  %.val10 = load i64, ptr %i.b, align 1, !tbaa !9
  %.val11 = load i64, ptr %i.c, align 1, !tbaa !9
  %i.d = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %4 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.f = insertelement <2 x i64> poison, i64 %.val10, i64 0
  %i.g = bitcast <2 x i64> %i.f to <16 x i8>
  %5 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.g, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.h = insertelement <2 x i64> poison, i64 %.val11, i64 0
  %i.i = bitcast <2 x i64> %i.h to <16 x i8>
  %6 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.j = bitcast <16 x i8> %4 to <8 x i16>
  %i.k = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.j, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.l = bitcast <16 x i8> %6 to <8 x i16>        ; 2 uses
  %i.m = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.l, <8 x i16> splat (i16 26149))
  %i.n = add nsw <8 x i16> %i.k, splat (i16 -14234)
  %i.o = add <8 x i16> %i.n, %i.m
  %i.p = bitcast <16 x i8> %5 to <8 x i16>        ; 2 uses
  %i.q = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 6419))
  %i.r = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.l, <8 x i16> splat (i16 13320))
  %.neg23 = add nuw <8 x i16> %i.k, splat (i16 8708)
  %i.s = add nuw nsw <8 x i16> %i.q, %i.r
  %i.t = sub <8 x i16> %.neg23, %i.s
  %i.u = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 -32486))
  %i.v = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.u, <8 x i16> %i.k)
  %i.w = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.v, <8 x i16> splat (i16 17685))
  %i.x = ashr <8 x i16> %i.o, splat (i16 6)
  %i.y = ashr <8 x i16> %i.t, splat (i16 6)
  %i.z = lshr <8 x i16> %i.w, splat (i16 6)
  %i.aa = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.x, <8 x i16> %i.y) ; 2 uses
  %i.ab = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.z, <8 x i16> splat (i16 255)) ; 2 uses
  %i.ac = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ab, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ad = shufflevector <16 x i8> %i.aa, <16 x i8> %i.ab, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ae = bitcast <16 x i8> %i.ac to <2 x i64>
  %i.af = and <2 x i64> %i.ae, splat (i64 -1085102592571150096)
  %i.ag = bitcast <16 x i8> %i.ad to <8 x i16>
  %i.ah = lshr <8 x i16> %i.ag, splat (i16 4)
  %i.ai = bitcast <8 x i16> %i.ah to <2 x i64>
  %i.aj = and <2 x i64> %i.ai, splat (i64 1085102592571150095)
  %i.ak = or disjoint <2 x i64> %i.aj, %i.af
  store <2 x i64> %i.ak, ptr %.0924, align 1, !tbaa !9, !alias.scope !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %i.al = getelementptr inbounds nuw i8, ptr %.0924, i64 16
  %i.am = icmp samesign ult i64 %indvars.iv, 24
  br i1 %i.am, label %bb.b, label %bb.c, !llvm.loop !27

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @VP8YuvToRgb56532_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 5 uses
  %.0922 = phi ptr [ %3, %bb.a ], [ %i.aq, %bb.b ] ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %.val = load i64, ptr %i.a, align 1, !tbaa !9
  %.val10 = load i64, ptr %i.b, align 1, !tbaa !9
  %.val11 = load i64, ptr %i.c, align 1, !tbaa !9
  %i.d = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %4 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.f = insertelement <2 x i64> poison, i64 %.val10, i64 0
  %i.g = bitcast <2 x i64> %i.f to <16 x i8>
  %5 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.g, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.h = insertelement <2 x i64> poison, i64 %.val11, i64 0
  %i.i = bitcast <2 x i64> %i.h to <16 x i8>
  %6 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.i, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.j = bitcast <16 x i8> %4 to <8 x i16>
  %i.k = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.j, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.l = bitcast <16 x i8> %6 to <8 x i16>        ; 2 uses
  %i.m = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.l, <8 x i16> splat (i16 26149))
  %i.n = add nsw <8 x i16> %i.k, splat (i16 -14234)
  %i.o = add <8 x i16> %i.n, %i.m
  %i.p = bitcast <16 x i8> %5 to <8 x i16>        ; 2 uses
  %i.q = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 6419))
  %i.r = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.l, <8 x i16> splat (i16 13320))
  %.neg21 = add nuw <8 x i16> %i.k, splat (i16 8708)
  %i.s = add nuw nsw <8 x i16> %i.q, %i.r
  %i.t = sub <8 x i16> %.neg21, %i.s
  %i.u = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.p, <8 x i16> splat (i16 -32486))
  %i.v = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.u, <8 x i16> %i.k)
  %i.w = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.v, <8 x i16> splat (i16 17685))
  %i.x = ashr <8 x i16> %i.o, splat (i16 6)
  %i.y = ashr <8 x i16> %i.t, splat (i16 6)       ; 2 uses
  %i.z = lshr <8 x i16> %i.w, splat (i16 6)       ; 2 uses
  %i.aa = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.x, <8 x i16> poison)
  %i.ab = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.y, <8 x i16> %i.y)
  %i.ac = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.z, <8 x i16> %i.z)
  %i.ad = bitcast <16 x i8> %i.aa to <2 x i64>
  %i.ae = and <2 x i64> %i.ad, <i64 -506381209866536712, i64 poison>
  %i.af = bitcast <16 x i8> %i.ac to <8 x i16>
  %i.ag = lshr <8 x i16> %i.af, splat (i16 3)
  %.inner25 = and <8 x i16> %i.ag, <i16 7967, i16 7967, i16 7967, i16 7967, i16 poison, i16 poison, i16 poison, i16 poison>
  %i.ah = bitcast <16 x i8> %i.ab to <8 x i16>    ; 2 uses
  %i.ai = lshr <8 x i16> %i.ah, splat (i16 5)
  %i.aj = bitcast <8 x i16> %i.ai to <2 x i64>
  %i.ak = and <2 x i64> %i.aj, <i64 506381209866536711, i64 poison>
  %i.al = shl <8 x i16> %i.ah, splat (i16 3)
  %.inner27 = and <8 x i16> %i.al, <i16 -7968, i16 -7968, i16 -7968, i16 -7968, i16 poison, i16 poison, i16 poison, i16 poison>
  %i.am = or disjoint <2 x i64> %i.ak, %i.ae
  %.inner28 = or disjoint <8 x i16> %.inner25, %.inner27
  %i.an = bitcast <2 x i64> %i.am to <16 x i8>
  %i.ao = bitcast <8 x i16> %.inner28 to <16 x i8>
  %i.ap = shufflevector <16 x i8> %i.an, <16 x i8> %i.ao, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  store <16 x i8> %i.ap, ptr %.0922, align 1, !tbaa !9, !alias.scope !32
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8
  %i.aq = getelementptr inbounds nuw i8, ptr %.0922, i64 16
  %i.ar = icmp samesign ult i64 %indvars.iv, 24
  br i1 %i.ar, label %bb.b, label %bb.c, !llvm.loop !31

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @VP8YuvToRgb32_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) initializes((0, 96)) %3) local_unnamed_addr #2 {
bb.a:
  %.val21 = load i64, ptr %0, align 1, !tbaa !9
  %.val22 = load i64, ptr %1, align 1, !tbaa !9
  %.val23 = load i64, ptr %2, align 1, !tbaa !9
  %i.a = insertelement <2 x i64> poison, i64 %.val21, i64 0
  %i.b = bitcast <2 x i64> %i.a to <16 x i8>
  %4 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.b, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.c = insertelement <2 x i64> poison, i64 %.val22, i64 0
  %i.d = bitcast <2 x i64> %i.c to <16 x i8>
  %5 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.d, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.e = insertelement <2 x i64> poison, i64 %.val23, i64 0
  %i.f = bitcast <2 x i64> %i.e to <16 x i8>
  %6 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.f, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.g = bitcast <16 x i8> %4 to <8 x i16>
  %i.h = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.g, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.i = bitcast <16 x i8> %6 to <8 x i16>        ; 2 uses
  %i.j = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 26149))
  %i.k = add nsw <8 x i16> %i.h, splat (i16 -14234)
  %i.l = add <8 x i16> %i.k, %i.j
  %i.m = bitcast <16 x i8> %5 to <8 x i16>        ; 2 uses
  %i.n = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 6419))
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 13320))
  %.neg79 = add nuw <8 x i16> %i.h, splat (i16 8708)
  %i.p = add nuw nsw <8 x i16> %i.n, %i.o
  %i.q = sub <8 x i16> %.neg79, %i.p
  %i.r = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 -32486))
  %i.s = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.r, <8 x i16> %i.h)
  %i.t = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.s, <8 x i16> splat (i16 17685))
  %i.u = ashr <8 x i16> %i.l, splat (i16 6)
  %i.v = ashr <8 x i16> %i.q, splat (i16 6)
  %i.w = lshr <8 x i16> %i.t, splat (i16 6)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val18 = load i64, ptr %i.x, align 1, !tbaa !9
  %.val19 = load i64, ptr %i.y, align 1, !tbaa !9
  %.val20 = load i64, ptr %i.z, align 1, !tbaa !9
  %i.aa = insertelement <2 x i64> poison, i64 %.val18, i64 0
  %i.ab = bitcast <2 x i64> %i.aa to <16 x i8>
  %7 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ab, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ac = insertelement <2 x i64> poison, i64 %.val19, i64 0
  %i.ad = bitcast <2 x i64> %i.ac to <16 x i8>
  %8 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ad, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ae = insertelement <2 x i64> poison, i64 %.val20, i64 0
  %i.af = bitcast <2 x i64> %i.ae to <16 x i8>
  %9 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.af, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ag = bitcast <16 x i8> %7 to <8 x i16>
  %i.ah = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ag, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.ai = bitcast <16 x i8> %9 to <8 x i16>       ; 2 uses
  %i.aj = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ai, <8 x i16> splat (i16 26149))
  %i.ak = add nsw <8 x i16> %i.ah, splat (i16 -14234)
  %i.al = add <8 x i16> %i.ak, %i.aj
  %i.am = bitcast <16 x i8> %8 to <8 x i16>       ; 2 uses
  %i.an = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.am, <8 x i16> splat (i16 6419))
  %i.ao = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ai, <8 x i16> splat (i16 13320))
  %.neg82 = add nuw <8 x i16> %i.ah, splat (i16 8708)
  %i.ap = add nuw nsw <8 x i16> %i.an, %i.ao
  %i.aq = sub <8 x i16> %.neg82, %i.ap
  %i.ar = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.am, <8 x i16> splat (i16 -32486))
  %i.as = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.ar, <8 x i16> %i.ah)
  %i.at = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.as, <8 x i16> splat (i16 17685))
  %i.au = ashr <8 x i16> %i.al, splat (i16 6)
  %i.av = ashr <8 x i16> %i.aq, splat (i16 6)
  %i.aw = lshr <8 x i16> %i.at, splat (i16 6)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val15 = load i64, ptr %i.ax, align 1, !tbaa !9
  %.val16 = load i64, ptr %i.ay, align 1, !tbaa !9
  %.val17 = load i64, ptr %i.az, align 1, !tbaa !9
  %i.ba = insertelement <2 x i64> poison, i64 %.val15, i64 0
  %i.bb = bitcast <2 x i64> %i.ba to <16 x i8>
  %10 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bc = insertelement <2 x i64> poison, i64 %.val16, i64 0
  %i.bd = bitcast <2 x i64> %i.bc to <16 x i8>
  %11 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.be = insertelement <2 x i64> poison, i64 %.val17, i64 0
  %i.bf = bitcast <2 x i64> %i.be to <16 x i8>
  %12 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bg = bitcast <16 x i8> %10 to <8 x i16>
  %i.bh = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bg, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.bi = bitcast <16 x i8> %12 to <8 x i16>      ; 2 uses
  %i.bj = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bi, <8 x i16> splat (i16 26149))
  %i.bk = add nsw <8 x i16> %i.bh, splat (i16 -14234)
  %i.bl = add <8 x i16> %i.bk, %i.bj
  %i.bm = bitcast <16 x i8> %11 to <8 x i16>      ; 2 uses
  %i.bn = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 6419))
  %i.bo = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bi, <8 x i16> splat (i16 13320))
  %.neg85 = add nuw <8 x i16> %i.bh, splat (i16 8708)
  %i.bp = add nuw nsw <8 x i16> %i.bn, %i.bo
  %i.bq = sub <8 x i16> %.neg85, %i.bp
  %i.br = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 -32486))
  %i.bs = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.br, <8 x i16> %i.bh)
  %i.bt = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.bs, <8 x i16> splat (i16 17685))
  %i.bu = ashr <8 x i16> %i.bl, splat (i16 6)
  %i.bv = ashr <8 x i16> %i.bq, splat (i16 6)
  %i.bw = lshr <8 x i16> %i.bt, splat (i16 6)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load i64, ptr %i.bx, align 1, !tbaa !9
  %.val13 = load i64, ptr %i.by, align 1, !tbaa !9
  %.val14 = load i64, ptr %i.bz, align 1, !tbaa !9
  %i.ca = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <16 x i8>
  %13 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.cb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cc = insertelement <2 x i64> poison, i64 %.val13, i64 0
  %i.cd = bitcast <2 x i64> %i.cc to <16 x i8>
  %14 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.cd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ce = insertelement <2 x i64> poison, i64 %.val14, i64 0
  %i.cf = bitcast <2 x i64> %i.ce to <16 x i8>
  %15 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.cf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cg = bitcast <16 x i8> %13 to <8 x i16>
  %i.ch = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cg, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.ci = bitcast <16 x i8> %15 to <8 x i16>      ; 2 uses
  %i.cj = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ci, <8 x i16> splat (i16 26149))
  %i.ck = add nsw <8 x i16> %i.ch, splat (i16 -14234)
  %i.cl = add <8 x i16> %i.ck, %i.cj
  %i.cm = bitcast <16 x i8> %14 to <8 x i16>      ; 2 uses
  %i.cn = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cm, <8 x i16> splat (i16 6419))
  %i.co = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ci, <8 x i16> splat (i16 13320))
  %.neg88 = add nuw <8 x i16> %i.ch, splat (i16 8708)
  %i.cp = add nuw nsw <8 x i16> %i.cn, %i.co
  %i.cq = sub <8 x i16> %.neg88, %i.cp
  %i.cr = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cm, <8 x i16> splat (i16 -32486))
  %i.cs = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.cr, <8 x i16> %i.ch)
  %i.ct = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.cs, <8 x i16> splat (i16 17685))
  %i.cu = ashr <8 x i16> %i.cl, splat (i16 6)
  %i.cv = ashr <8 x i16> %i.cq, splat (i16 6)
  %i.cw = lshr <8 x i16> %i.ct, splat (i16 6)
  %i.cx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.u, <8 x i16> %i.au) ; 2 uses
  %i.cy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bu, <8 x i16> %i.cu) ; 2 uses
  %i.cz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.v, <8 x i16> %i.av) ; 2 uses
  %i.da = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bv, <8 x i16> %i.cv) ; 2 uses
  %i.db = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.w, <8 x i16> %i.aw) ; 2 uses
  %i.dc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bw, <8 x i16> %i.cw) ; 2 uses
  %i.dd = bitcast <16 x i8> %i.cx to <8 x i16>
  %i.de = bitcast <16 x i8> %i.cy to <8 x i16>
  %i.df = bitcast <16 x i8> %i.cx to <8 x i16>
  %i.dg = and <8 x i16> %i.df, splat (i16 255)
  %i.dh = bitcast <16 x i8> %i.cy to <8 x i16>
  %i.di = and <8 x i16> %i.dh, splat (i16 255)
  %i.dj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dg, <8 x i16> %i.di) ; 2 uses
  %i.dk = bitcast <16 x i8> %i.cz to <8 x i16>
  %i.dl = bitcast <16 x i8> %i.da to <8 x i16>
  %i.dm = bitcast <16 x i8> %i.cz to <8 x i16>
  %i.dn = and <8 x i16> %i.dm, splat (i16 255)
  %i.do = bitcast <16 x i8> %i.da to <8 x i16>
  %i.dp = and <8 x i16> %i.do, splat (i16 255)
  %i.dq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dn, <8 x i16> %i.dp) ; 2 uses
  %i.dr = bitcast <16 x i8> %i.db to <8 x i16>
  %i.ds = bitcast <16 x i8> %i.dc to <8 x i16>
  %i.dt = bitcast <16 x i8> %i.db to <8 x i16>
  %i.du = and <8 x i16> %i.dt, splat (i16 255)
  %i.dv = bitcast <16 x i8> %i.dc to <8 x i16>
  %i.dw = and <8 x i16> %i.dv, splat (i16 255)
  %i.dx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.du, <8 x i16> %i.dw) ; 2 uses
  %i.dy = lshr <8 x i16> %i.dd, splat (i16 8)
  %i.dz = lshr <8 x i16> %i.de, splat (i16 8)
  %i.ea = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dy, <8 x i16> %i.dz) ; 2 uses
  %i.eb = lshr <8 x i16> %i.dk, splat (i16 8)
  %i.ec = lshr <8 x i16> %i.dl, splat (i16 8)
  %i.ed = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.eb, <8 x i16> %i.ec) ; 2 uses
  %i.ee = lshr <8 x i16> %i.dr, splat (i16 8)
  %i.ef = lshr <8 x i16> %i.ds, splat (i16 8)
  %i.eg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ee, <8 x i16> %i.ef) ; 2 uses
  %i.eh = bitcast <16 x i8> %i.dj to <8 x i16>
  %i.ei = bitcast <16 x i8> %i.dj to <8 x i16>
  %i.ej = and <8 x i16> %i.ei, splat (i16 255)
  %i.ek = bitcast <16 x i8> %i.dq to <8 x i16>
  %i.el = bitcast <16 x i8> %i.dq to <8 x i16>
  %i.em = and <8 x i16> %i.el, splat (i16 255)
  %i.en = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ej, <8 x i16> %i.em) ; 2 uses
  %i.eo = bitcast <16 x i8> %i.dx to <8 x i16>
  %i.ep = bitcast <16 x i8> %i.dx to <8 x i16>
  %i.eq = and <8 x i16> %i.ep, splat (i16 255)
  %i.er = bitcast <16 x i8> %i.ea to <8 x i16>
  %i.es = bitcast <16 x i8> %i.ea to <8 x i16>
  %i.et = and <8 x i16> %i.es, splat (i16 255)
  %i.eu = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.eq, <8 x i16> %i.et) ; 2 uses
  %i.ev = bitcast <16 x i8> %i.ed to <8 x i16>
  %i.ew = bitcast <16 x i8> %i.ed to <8 x i16>
  %i.ex = and <8 x i16> %i.ew, splat (i16 255)
  %i.ey = bitcast <16 x i8> %i.eg to <8 x i16>
  %i.ez = bitcast <16 x i8> %i.eg to <8 x i16>
  %i.fa = and <8 x i16> %i.ez, splat (i16 255)
  %i.fb = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ex, <8 x i16> %i.fa) ; 2 uses
  %i.fc = lshr <8 x i16> %i.eh, splat (i16 8)
  %i.fd = lshr <8 x i16> %i.ek, splat (i16 8)
  %i.fe = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fc, <8 x i16> %i.fd) ; 2 uses
  %i.ff = lshr <8 x i16> %i.eo, splat (i16 8)
  %i.fg = lshr <8 x i16> %i.er, splat (i16 8)
  %i.fh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ff, <8 x i16> %i.fg) ; 2 uses
  %i.fi = lshr <8 x i16> %i.ev, splat (i16 8)
  %i.fj = lshr <8 x i16> %i.ey, splat (i16 8)
  %i.fk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fi, <8 x i16> %i.fj) ; 2 uses
  %i.fl = bitcast <16 x i8> %i.en to <8 x i16>
  %i.fm = bitcast <16 x i8> %i.eu to <8 x i16>
  %i.fn = bitcast <16 x i8> %i.en to <8 x i16>
  %i.fo = and <8 x i16> %i.fn, splat (i16 255)
  %i.fp = bitcast <16 x i8> %i.eu to <8 x i16>
  %i.fq = and <8 x i16> %i.fp, splat (i16 255)
  %i.fr = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fo, <8 x i16> %i.fq) ; 2 uses
  %i.fs = bitcast <16 x i8> %i.fb to <8 x i16>
  %i.ft = bitcast <16 x i8> %i.fe to <8 x i16>
  %i.fu = bitcast <16 x i8> %i.fb to <8 x i16>
  %i.fv = and <8 x i16> %i.fu, splat (i16 255)
  %i.fw = bitcast <16 x i8> %i.fe to <8 x i16>
  %i.fx = and <8 x i16> %i.fw, splat (i16 255)
  %i.fy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fv, <8 x i16> %i.fx) ; 2 uses
  %i.fz = bitcast <16 x i8> %i.fh to <8 x i16>
  %i.ga = bitcast <16 x i8> %i.fh to <8 x i16>
  %i.gb = and <8 x i16> %i.ga, splat (i16 255)
  %i.gc = bitcast <16 x i8> %i.fk to <8 x i16>
  %i.gd = bitcast <16 x i8> %i.fk to <8 x i16>
  %i.ge = and <8 x i16> %i.gd, splat (i16 255)
  %i.gf = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gb, <8 x i16> %i.ge) ; 2 uses
  %i.gg = lshr <8 x i16> %i.fl, splat (i16 8)
  %i.gh = lshr <8 x i16> %i.fm, splat (i16 8)
  %i.gi = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gg, <8 x i16> %i.gh) ; 2 uses
  %i.gj = lshr <8 x i16> %i.fs, splat (i16 8)
  %i.gk = lshr <8 x i16> %i.ft, splat (i16 8)
  %i.gl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gj, <8 x i16> %i.gk) ; 2 uses
  %i.gm = lshr <8 x i16> %i.fz, splat (i16 8)
  %i.gn = lshr <8 x i16> %i.gc, splat (i16 8)
  %i.go = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gm, <8 x i16> %i.gn) ; 2 uses
  %i.gp = bitcast <16 x i8> %i.fr to <8 x i16>
  %i.gq = bitcast <16 x i8> %i.fr to <8 x i16>
  %i.gr = and <8 x i16> %i.gq, splat (i16 255)
  %i.gs = bitcast <16 x i8> %i.fy to <8 x i16>
  %i.gt = bitcast <16 x i8> %i.fy to <8 x i16>
  %i.gu = and <8 x i16> %i.gt, splat (i16 255)
  %i.gv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gr, <8 x i16> %i.gu) ; 2 uses
  %i.gw = bitcast <16 x i8> %i.gf to <8 x i16>
  %i.gx = bitcast <16 x i8> %i.gf to <8 x i16>
  %i.gy = and <8 x i16> %i.gx, splat (i16 255)
  %i.gz = bitcast <16 x i8> %i.gi to <8 x i16>
  %i.ha = bitcast <16 x i8> %i.gi to <8 x i16>
  %i.hb = and <8 x i16> %i.ha, splat (i16 255)
  %i.hc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gy, <8 x i16> %i.hb) ; 2 uses
  %i.hd = bitcast <16 x i8> %i.gl to <8 x i16>
  %i.he = bitcast <16 x i8> %i.gl to <8 x i16>
  %i.hf = and <8 x i16> %i.he, splat (i16 255)
  %i.hg = bitcast <16 x i8> %i.go to <8 x i16>
  %i.hh = bitcast <16 x i8> %i.go to <8 x i16>
  %i.hi = and <8 x i16> %i.hh, splat (i16 255)
  %i.hj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hf, <8 x i16> %i.hi) ; 2 uses
  %i.hk = lshr <8 x i16> %i.gp, splat (i16 8)
  %i.hl = lshr <8 x i16> %i.gs, splat (i16 8)
  %i.hm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hk, <8 x i16> %i.hl) ; 2 uses
  %i.hn = lshr <8 x i16> %i.gw, splat (i16 8)
  %i.ho = lshr <8 x i16> %i.gz, splat (i16 8)
  %i.hp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hn, <8 x i16> %i.ho) ; 2 uses
  %i.hq = lshr <8 x i16> %i.hd, splat (i16 8)
  %i.hr = lshr <8 x i16> %i.hg, splat (i16 8)
  %i.hs = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hq, <8 x i16> %i.hr) ; 2 uses
  %i.ht = bitcast <16 x i8> %i.gv to <8 x i16>
  %i.hu = bitcast <16 x i8> %i.gv to <8 x i16>
  %i.hv = and <8 x i16> %i.hu, splat (i16 255)
  %i.hw = bitcast <16 x i8> %i.hc to <8 x i16>
  %i.hx = bitcast <16 x i8> %i.hc to <8 x i16>
  %i.hy = and <8 x i16> %i.hx, splat (i16 255)
  %i.hz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hv, <8 x i16> %i.hy)
  %i.ia = bitcast <16 x i8> %i.hj to <8 x i16>
  %i.ib = bitcast <16 x i8> %i.hj to <8 x i16>
  %i.ic = and <8 x i16> %i.ib, splat (i16 255)
  %i.id = bitcast <16 x i8> %i.hm to <8 x i16>
  %i.ie = bitcast <16 x i8> %i.hm to <8 x i16>
  %i.if = and <8 x i16> %i.ie, splat (i16 255)
  %i.ig = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ic, <8 x i16> %i.if)
  %i.ih = bitcast <16 x i8> %i.hp to <8 x i16>
  %i.ii = bitcast <16 x i8> %i.hp to <8 x i16>
  %i.ij = and <8 x i16> %i.ii, splat (i16 255)
  %i.ik = bitcast <16 x i8> %i.hs to <8 x i16>
  %i.il = bitcast <16 x i8> %i.hs to <8 x i16>
  %i.im = and <8 x i16> %i.il, splat (i16 255)
  %i.in = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ij, <8 x i16> %i.im)
  %i.io = lshr <8 x i16> %i.ht, splat (i16 8)
  %i.ip = lshr <8 x i16> %i.hw, splat (i16 8)
  %i.iq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.io, <8 x i16> %i.ip)
  %i.ir = lshr <8 x i16> %i.ia, splat (i16 8)
  %i.is = lshr <8 x i16> %i.id, splat (i16 8)
  %i.it = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ir, <8 x i16> %i.is)
  %i.iu = lshr <8 x i16> %i.ih, splat (i16 8)
  %i.iv = lshr <8 x i16> %i.ik, splat (i16 8)
  %i.iw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.iu, <8 x i16> %i.iv)
  store <16 x i8> %i.hz, ptr %3, align 1, !tbaa !9, !alias.scope !35
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <16 x i8> %i.ig, ptr %i.ix, align 1, !tbaa !9, !alias.scope !35
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <16 x i8> %i.in, ptr %i.iy, align 1, !tbaa !9, !alias.scope !35
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <16 x i8> %i.iq, ptr %i.iz, align 1, !tbaa !9, !alias.scope !35
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <16 x i8> %i.it, ptr %i.ja, align 1, !tbaa !9, !alias.scope !35
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <16 x i8> %i.iw, ptr %i.jb, align 1, !tbaa !9, !alias.scope !35
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @VP8YuvToBgr32_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) initializes((0, 96)) %3) local_unnamed_addr #2 {
bb.a:
  %.val21 = load i64, ptr %0, align 1, !tbaa !9
  %.val22 = load i64, ptr %1, align 1, !tbaa !9
  %.val23 = load i64, ptr %2, align 1, !tbaa !9
  %i.a = insertelement <2 x i64> poison, i64 %.val21, i64 0
  %i.b = bitcast <2 x i64> %i.a to <16 x i8>
  %4 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.b, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.c = insertelement <2 x i64> poison, i64 %.val22, i64 0
  %i.d = bitcast <2 x i64> %i.c to <16 x i8>
  %5 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.d, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.e = insertelement <2 x i64> poison, i64 %.val23, i64 0
  %i.f = bitcast <2 x i64> %i.e to <16 x i8>
  %6 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.f, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.g = bitcast <16 x i8> %4 to <8 x i16>
  %i.h = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.g, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.i = bitcast <16 x i8> %6 to <8 x i16>        ; 2 uses
  %i.j = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 26149))
  %i.k = add nsw <8 x i16> %i.h, splat (i16 -14234)
  %i.l = add <8 x i16> %i.k, %i.j
  %i.m = bitcast <16 x i8> %5 to <8 x i16>        ; 2 uses
  %i.n = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 6419))
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 13320))
  %.neg79 = add nuw <8 x i16> %i.h, splat (i16 8708)
  %i.p = add nuw nsw <8 x i16> %i.n, %i.o
  %i.q = sub <8 x i16> %.neg79, %i.p
  %i.r = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 -32486))
  %i.s = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.r, <8 x i16> %i.h)
  %i.t = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.s, <8 x i16> splat (i16 17685))
  %i.u = ashr <8 x i16> %i.l, splat (i16 6)
  %i.v = ashr <8 x i16> %i.q, splat (i16 6)
  %i.w = lshr <8 x i16> %i.t, splat (i16 6)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val18 = load i64, ptr %i.x, align 1, !tbaa !9
  %.val19 = load i64, ptr %i.y, align 1, !tbaa !9
  %.val20 = load i64, ptr %i.z, align 1, !tbaa !9
  %i.aa = insertelement <2 x i64> poison, i64 %.val18, i64 0
  %i.ab = bitcast <2 x i64> %i.aa to <16 x i8>
  %7 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ab, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ac = insertelement <2 x i64> poison, i64 %.val19, i64 0
  %i.ad = bitcast <2 x i64> %i.ac to <16 x i8>
  %8 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ad, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ae = insertelement <2 x i64> poison, i64 %.val20, i64 0
  %i.af = bitcast <2 x i64> %i.ae to <16 x i8>
  %9 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.af, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ag = bitcast <16 x i8> %7 to <8 x i16>
  %i.ah = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ag, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.ai = bitcast <16 x i8> %9 to <8 x i16>       ; 2 uses
  %i.aj = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ai, <8 x i16> splat (i16 26149))
  %i.ak = add nsw <8 x i16> %i.ah, splat (i16 -14234)
  %i.al = add <8 x i16> %i.ak, %i.aj
  %i.am = bitcast <16 x i8> %8 to <8 x i16>       ; 2 uses
  %i.an = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.am, <8 x i16> splat (i16 6419))
  %i.ao = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ai, <8 x i16> splat (i16 13320))
  %.neg82 = add nuw <8 x i16> %i.ah, splat (i16 8708)
  %i.ap = add nuw nsw <8 x i16> %i.an, %i.ao
  %i.aq = sub <8 x i16> %.neg82, %i.ap
  %i.ar = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.am, <8 x i16> splat (i16 -32486))
  %i.as = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.ar, <8 x i16> %i.ah)
  %i.at = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.as, <8 x i16> splat (i16 17685))
  %i.au = ashr <8 x i16> %i.al, splat (i16 6)
  %i.av = ashr <8 x i16> %i.aq, splat (i16 6)
  %i.aw = lshr <8 x i16> %i.at, splat (i16 6)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val15 = load i64, ptr %i.ax, align 1, !tbaa !9
  %.val16 = load i64, ptr %i.ay, align 1, !tbaa !9
  %.val17 = load i64, ptr %i.az, align 1, !tbaa !9
  %i.ba = insertelement <2 x i64> poison, i64 %.val15, i64 0
  %i.bb = bitcast <2 x i64> %i.ba to <16 x i8>
  %10 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bc = insertelement <2 x i64> poison, i64 %.val16, i64 0
  %i.bd = bitcast <2 x i64> %i.bc to <16 x i8>
  %11 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.be = insertelement <2 x i64> poison, i64 %.val17, i64 0
  %i.bf = bitcast <2 x i64> %i.be to <16 x i8>
  %12 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bg = bitcast <16 x i8> %10 to <8 x i16>
  %i.bh = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bg, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.bi = bitcast <16 x i8> %12 to <8 x i16>      ; 2 uses
  %i.bj = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bi, <8 x i16> splat (i16 26149))
  %i.bk = add nsw <8 x i16> %i.bh, splat (i16 -14234)
  %i.bl = add <8 x i16> %i.bk, %i.bj
  %i.bm = bitcast <16 x i8> %11 to <8 x i16>      ; 2 uses
  %i.bn = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 6419))
  %i.bo = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bi, <8 x i16> splat (i16 13320))
  %.neg85 = add nuw <8 x i16> %i.bh, splat (i16 8708)
  %i.bp = add nuw nsw <8 x i16> %i.bn, %i.bo
  %i.bq = sub <8 x i16> %.neg85, %i.bp
  %i.br = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 -32486))
  %i.bs = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.br, <8 x i16> %i.bh)
  %i.bt = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.bs, <8 x i16> splat (i16 17685))
  %i.bu = ashr <8 x i16> %i.bl, splat (i16 6)
  %i.bv = ashr <8 x i16> %i.bq, splat (i16 6)
  %i.bw = lshr <8 x i16> %i.bt, splat (i16 6)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.val = load i64, ptr %i.bx, align 1, !tbaa !9
  %.val13 = load i64, ptr %i.by, align 1, !tbaa !9
  %.val14 = load i64, ptr %i.bz, align 1, !tbaa !9
  %i.ca = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.cb = bitcast <2 x i64> %i.ca to <16 x i8>
  %13 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.cb, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cc = insertelement <2 x i64> poison, i64 %.val13, i64 0
  %i.cd = bitcast <2 x i64> %i.cc to <16 x i8>
  %14 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.cd, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ce = insertelement <2 x i64> poison, i64 %.val14, i64 0
  %i.cf = bitcast <2 x i64> %i.ce to <16 x i8>
  %15 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.cf, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cg = bitcast <16 x i8> %13 to <8 x i16>
  %i.ch = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cg, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.ci = bitcast <16 x i8> %15 to <8 x i16>      ; 2 uses
  %i.cj = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ci, <8 x i16> splat (i16 26149))
  %i.ck = add nsw <8 x i16> %i.ch, splat (i16 -14234)
  %i.cl = add <8 x i16> %i.ck, %i.cj
  %i.cm = bitcast <16 x i8> %14 to <8 x i16>      ; 2 uses
  %i.cn = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cm, <8 x i16> splat (i16 6419))
  %i.co = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ci, <8 x i16> splat (i16 13320))
  %.neg88 = add nuw <8 x i16> %i.ch, splat (i16 8708)
  %i.cp = add nuw nsw <8 x i16> %i.cn, %i.co
  %i.cq = sub <8 x i16> %.neg88, %i.cp
  %i.cr = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cm, <8 x i16> splat (i16 -32486))
  %i.cs = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.cr, <8 x i16> %i.ch)
  %i.ct = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.cs, <8 x i16> splat (i16 17685))
  %i.cu = ashr <8 x i16> %i.cl, splat (i16 6)
  %i.cv = ashr <8 x i16> %i.cq, splat (i16 6)
  %i.cw = lshr <8 x i16> %i.ct, splat (i16 6)
  %i.cx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.w, <8 x i16> %i.aw) ; 2 uses
  %i.cy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bw, <8 x i16> %i.cw) ; 2 uses
  %i.cz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.v, <8 x i16> %i.av) ; 2 uses
  %i.da = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bv, <8 x i16> %i.cv) ; 2 uses
  %i.db = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.u, <8 x i16> %i.au) ; 2 uses
  %i.dc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.bu, <8 x i16> %i.cu) ; 2 uses
  %i.dd = bitcast <16 x i8> %i.cx to <8 x i16>
  %i.de = bitcast <16 x i8> %i.cy to <8 x i16>
  %i.df = bitcast <16 x i8> %i.cx to <8 x i16>
  %i.dg = and <8 x i16> %i.df, splat (i16 255)
  %i.dh = bitcast <16 x i8> %i.cy to <8 x i16>
  %i.di = and <8 x i16> %i.dh, splat (i16 255)
  %i.dj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dg, <8 x i16> %i.di) ; 2 uses
  %i.dk = bitcast <16 x i8> %i.cz to <8 x i16>
  %i.dl = bitcast <16 x i8> %i.da to <8 x i16>
  %i.dm = bitcast <16 x i8> %i.cz to <8 x i16>
  %i.dn = and <8 x i16> %i.dm, splat (i16 255)
  %i.do = bitcast <16 x i8> %i.da to <8 x i16>
  %i.dp = and <8 x i16> %i.do, splat (i16 255)
  %i.dq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dn, <8 x i16> %i.dp) ; 2 uses
  %i.dr = bitcast <16 x i8> %i.db to <8 x i16>
  %i.ds = bitcast <16 x i8> %i.dc to <8 x i16>
  %i.dt = bitcast <16 x i8> %i.db to <8 x i16>
  %i.du = and <8 x i16> %i.dt, splat (i16 255)
  %i.dv = bitcast <16 x i8> %i.dc to <8 x i16>
  %i.dw = and <8 x i16> %i.dv, splat (i16 255)
  %i.dx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.du, <8 x i16> %i.dw) ; 2 uses
  %i.dy = lshr <8 x i16> %i.dd, splat (i16 8)
  %i.dz = lshr <8 x i16> %i.de, splat (i16 8)
  %i.ea = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dy, <8 x i16> %i.dz) ; 2 uses
  %i.eb = lshr <8 x i16> %i.dk, splat (i16 8)
  %i.ec = lshr <8 x i16> %i.dl, splat (i16 8)
  %i.ed = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.eb, <8 x i16> %i.ec) ; 2 uses
  %i.ee = lshr <8 x i16> %i.dr, splat (i16 8)
  %i.ef = lshr <8 x i16> %i.ds, splat (i16 8)
  %i.eg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ee, <8 x i16> %i.ef) ; 2 uses
  %i.eh = bitcast <16 x i8> %i.dj to <8 x i16>
  %i.ei = bitcast <16 x i8> %i.dj to <8 x i16>
  %i.ej = and <8 x i16> %i.ei, splat (i16 255)
  %i.ek = bitcast <16 x i8> %i.dq to <8 x i16>
  %i.el = bitcast <16 x i8> %i.dq to <8 x i16>
  %i.em = and <8 x i16> %i.el, splat (i16 255)
  %i.en = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ej, <8 x i16> %i.em) ; 2 uses
  %i.eo = bitcast <16 x i8> %i.dx to <8 x i16>
  %i.ep = bitcast <16 x i8> %i.dx to <8 x i16>
  %i.eq = and <8 x i16> %i.ep, splat (i16 255)
  %i.er = bitcast <16 x i8> %i.ea to <8 x i16>
  %i.es = bitcast <16 x i8> %i.ea to <8 x i16>
  %i.et = and <8 x i16> %i.es, splat (i16 255)
  %i.eu = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.eq, <8 x i16> %i.et) ; 2 uses
  %i.ev = bitcast <16 x i8> %i.ed to <8 x i16>
  %i.ew = bitcast <16 x i8> %i.ed to <8 x i16>
  %i.ex = and <8 x i16> %i.ew, splat (i16 255)
  %i.ey = bitcast <16 x i8> %i.eg to <8 x i16>
  %i.ez = bitcast <16 x i8> %i.eg to <8 x i16>
  %i.fa = and <8 x i16> %i.ez, splat (i16 255)
  %i.fb = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ex, <8 x i16> %i.fa) ; 2 uses
  %i.fc = lshr <8 x i16> %i.eh, splat (i16 8)
  %i.fd = lshr <8 x i16> %i.ek, splat (i16 8)
  %i.fe = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fc, <8 x i16> %i.fd) ; 2 uses
  %i.ff = lshr <8 x i16> %i.eo, splat (i16 8)
  %i.fg = lshr <8 x i16> %i.er, splat (i16 8)
  %i.fh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ff, <8 x i16> %i.fg) ; 2 uses
  %i.fi = lshr <8 x i16> %i.ev, splat (i16 8)
  %i.fj = lshr <8 x i16> %i.ey, splat (i16 8)
  %i.fk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fi, <8 x i16> %i.fj) ; 2 uses
  %i.fl = bitcast <16 x i8> %i.en to <8 x i16>
  %i.fm = bitcast <16 x i8> %i.eu to <8 x i16>
  %i.fn = bitcast <16 x i8> %i.en to <8 x i16>
  %i.fo = and <8 x i16> %i.fn, splat (i16 255)
  %i.fp = bitcast <16 x i8> %i.eu to <8 x i16>
  %i.fq = and <8 x i16> %i.fp, splat (i16 255)
  %i.fr = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fo, <8 x i16> %i.fq) ; 2 uses
  %i.fs = bitcast <16 x i8> %i.fb to <8 x i16>
  %i.ft = bitcast <16 x i8> %i.fe to <8 x i16>
  %i.fu = bitcast <16 x i8> %i.fb to <8 x i16>
  %i.fv = and <8 x i16> %i.fu, splat (i16 255)
  %i.fw = bitcast <16 x i8> %i.fe to <8 x i16>
  %i.fx = and <8 x i16> %i.fw, splat (i16 255)
  %i.fy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fv, <8 x i16> %i.fx) ; 2 uses
  %i.fz = bitcast <16 x i8> %i.fh to <8 x i16>
  %i.ga = bitcast <16 x i8> %i.fh to <8 x i16>
  %i.gb = and <8 x i16> %i.ga, splat (i16 255)
  %i.gc = bitcast <16 x i8> %i.fk to <8 x i16>
  %i.gd = bitcast <16 x i8> %i.fk to <8 x i16>
  %i.ge = and <8 x i16> %i.gd, splat (i16 255)
  %i.gf = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gb, <8 x i16> %i.ge) ; 2 uses
  %i.gg = lshr <8 x i16> %i.fl, splat (i16 8)
  %i.gh = lshr <8 x i16> %i.fm, splat (i16 8)
  %i.gi = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gg, <8 x i16> %i.gh) ; 2 uses
  %i.gj = lshr <8 x i16> %i.fs, splat (i16 8)
  %i.gk = lshr <8 x i16> %i.ft, splat (i16 8)
  %i.gl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gj, <8 x i16> %i.gk) ; 2 uses
  %i.gm = lshr <8 x i16> %i.fz, splat (i16 8)
  %i.gn = lshr <8 x i16> %i.gc, splat (i16 8)
  %i.go = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gm, <8 x i16> %i.gn) ; 2 uses
  %i.gp = bitcast <16 x i8> %i.fr to <8 x i16>
  %i.gq = bitcast <16 x i8> %i.fr to <8 x i16>
  %i.gr = and <8 x i16> %i.gq, splat (i16 255)
  %i.gs = bitcast <16 x i8> %i.fy to <8 x i16>
  %i.gt = bitcast <16 x i8> %i.fy to <8 x i16>
  %i.gu = and <8 x i16> %i.gt, splat (i16 255)
  %i.gv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gr, <8 x i16> %i.gu) ; 2 uses
  %i.gw = bitcast <16 x i8> %i.gf to <8 x i16>
  %i.gx = bitcast <16 x i8> %i.gf to <8 x i16>
  %i.gy = and <8 x i16> %i.gx, splat (i16 255)
  %i.gz = bitcast <16 x i8> %i.gi to <8 x i16>
  %i.ha = bitcast <16 x i8> %i.gi to <8 x i16>
  %i.hb = and <8 x i16> %i.ha, splat (i16 255)
  %i.hc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gy, <8 x i16> %i.hb) ; 2 uses
  %i.hd = bitcast <16 x i8> %i.gl to <8 x i16>
  %i.he = bitcast <16 x i8> %i.gl to <8 x i16>
  %i.hf = and <8 x i16> %i.he, splat (i16 255)
  %i.hg = bitcast <16 x i8> %i.go to <8 x i16>
  %i.hh = bitcast <16 x i8> %i.go to <8 x i16>
  %i.hi = and <8 x i16> %i.hh, splat (i16 255)
  %i.hj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hf, <8 x i16> %i.hi) ; 2 uses
  %i.hk = lshr <8 x i16> %i.gp, splat (i16 8)
  %i.hl = lshr <8 x i16> %i.gs, splat (i16 8)
  %i.hm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hk, <8 x i16> %i.hl) ; 2 uses
  %i.hn = lshr <8 x i16> %i.gw, splat (i16 8)
  %i.ho = lshr <8 x i16> %i.gz, splat (i16 8)
  %i.hp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hn, <8 x i16> %i.ho) ; 2 uses
  %i.hq = lshr <8 x i16> %i.hd, splat (i16 8)
  %i.hr = lshr <8 x i16> %i.hg, splat (i16 8)
  %i.hs = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hq, <8 x i16> %i.hr) ; 2 uses
  %i.ht = bitcast <16 x i8> %i.gv to <8 x i16>
  %i.hu = bitcast <16 x i8> %i.gv to <8 x i16>
  %i.hv = and <8 x i16> %i.hu, splat (i16 255)
  %i.hw = bitcast <16 x i8> %i.hc to <8 x i16>
  %i.hx = bitcast <16 x i8> %i.hc to <8 x i16>
  %i.hy = and <8 x i16> %i.hx, splat (i16 255)
  %i.hz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hv, <8 x i16> %i.hy)
  %i.ia = bitcast <16 x i8> %i.hj to <8 x i16>
  %i.ib = bitcast <16 x i8> %i.hj to <8 x i16>
  %i.ic = and <8 x i16> %i.ib, splat (i16 255)
  %i.id = bitcast <16 x i8> %i.hm to <8 x i16>
  %i.ie = bitcast <16 x i8> %i.hm to <8 x i16>
  %i.if = and <8 x i16> %i.ie, splat (i16 255)
  %i.ig = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ic, <8 x i16> %i.if)
  %i.ih = bitcast <16 x i8> %i.hp to <8 x i16>
  %i.ii = bitcast <16 x i8> %i.hp to <8 x i16>
  %i.ij = and <8 x i16> %i.ii, splat (i16 255)
  %i.ik = bitcast <16 x i8> %i.hs to <8 x i16>
  %i.il = bitcast <16 x i8> %i.hs to <8 x i16>
  %i.im = and <8 x i16> %i.il, splat (i16 255)
  %i.in = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ij, <8 x i16> %i.im)
  %i.io = lshr <8 x i16> %i.ht, splat (i16 8)
  %i.ip = lshr <8 x i16> %i.hw, splat (i16 8)
  %i.iq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.io, <8 x i16> %i.ip)
  %i.ir = lshr <8 x i16> %i.ia, splat (i16 8)
  %i.is = lshr <8 x i16> %i.id, splat (i16 8)
  %i.it = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ir, <8 x i16> %i.is)
  %i.iu = lshr <8 x i16> %i.ih, splat (i16 8)
  %i.iv = lshr <8 x i16> %i.ik, splat (i16 8)
  %i.iw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.iu, <8 x i16> %i.iv)
  store <16 x i8> %i.hz, ptr %3, align 1, !tbaa !9, !alias.scope !38
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 16
  store <16 x i8> %i.ig, ptr %i.ix, align 1, !tbaa !9, !alias.scope !38
  %i.iy = getelementptr inbounds nuw i8, ptr %3, i64 32
  store <16 x i8> %i.in, ptr %i.iy, align 1, !tbaa !9, !alias.scope !38
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <16 x i8> %i.iq, ptr %i.iz, align 1, !tbaa !9, !alias.scope !38
  %i.ja = getelementptr inbounds nuw i8, ptr %3, i64 64
  store <16 x i8> %i.it, ptr %i.ja, align 1, !tbaa !9, !alias.scope !38
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 80
  store <16 x i8> %i.iw, ptr %i.jb, align 1, !tbaa !9, !alias.scope !38
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitSamplersSSE2() local_unnamed_addr #3 {
bb.a:
  store ptr @YuvToRgbRow_SSE2, ptr @WebPSamplers, align 16, !tbaa !12
  store ptr @YuvToRgbaRow_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPSamplers, i64 8), align 8, !tbaa !12
  store ptr @YuvToBgrRow_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPSamplers, i64 16), align 16, !tbaa !12
  store ptr @YuvToBgraRow_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPSamplers, i64 24), align 8, !tbaa !12
  store ptr @YuvToArgbRow_SSE2, ptr getelementptr inbounds nuw (i8, ptr @WebPSamplers, i64 32), align 16, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToRgbRow_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %.not117 = icmp slt i32 %4, 32
  br i1 %.not117, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.a = and i32 %4, 2147483616
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.038.lcssa = phi ptr [ %1, %bb.a ], [ %i.jo, %.preheader.loopexit ]
  %.036.lcssa = phi ptr [ %2, %bb.a ], [ %i.jp, %.preheader.loopexit ]
  %.034.lcssa = phi ptr [ %3, %bb.a ], [ %i.jq, %.preheader.loopexit ]
  %.032.lcssa = phi ptr [ %0, %bb.a ], [ %i.jn, %.preheader.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.a, %.preheader.loopexit ] ; 2 uses
  %i.b = icmp slt i32 %.0.lcssa, %4
  br i1 %i.b, label %.lr.ph131, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i32 [ %i.jr, %.lr.ph ], [ 32, %bb.a ]
  %.032121 = phi ptr [ %i.jn, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.034120 = phi ptr [ %i.jq, %.lr.ph ], [ %3, %bb.a ] ; 7 uses
  %.036119 = phi ptr [ %i.jp, %.lr.ph ], [ %2, %bb.a ] ; 5 uses
  %.038118 = phi ptr [ %i.jo, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.032.val = load i64, ptr %.032121, align 1, !tbaa !9
  %.038.val = load i32, ptr %.038118, align 1
  %.036.val = load i32, ptr %.036119, align 1
  %i.d = insertelement <2 x i64> poison, i64 %.032.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %5 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.f = insertelement <4 x i32> poison, i32 %.038.val, i64 0
  %i.g = bitcast <4 x i32> %i.f to <16 x i8>
  %6 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.g, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.h = bitcast <16 x i8> %6 to <8 x i16>
  %i.i = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.j = insertelement <4 x i32> poison, i32 %.036.val, i64 0
  %i.k = bitcast <4 x i32> %i.j to <16 x i8>
  %7 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.k, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.l = bitcast <16 x i8> %7 to <8 x i16>
  %i.m = shufflevector <8 x i16> %i.l, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.n = bitcast <16 x i8> %5 to <8 x i16>
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.n, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.p = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 26149))
  %i.q = add nsw <8 x i16> %i.o, splat (i16 -14234)
  %i.r = add <8 x i16> %i.q, %i.p
  %i.s = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 6419))
  %i.t = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 13320))
  %.neg104 = add nuw <8 x i16> %i.o, splat (i16 8708)
  %i.u = add nuw nsw <8 x i16> %i.s, %i.t
  %i.v = sub <8 x i16> %.neg104, %i.u
  %i.w = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 -32486))
  %i.x = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.w, <8 x i16> %i.o)
  %i.y = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.x, <8 x i16> splat (i16 17685))
  %i.z = ashr <8 x i16> %i.r, splat (i16 6)
  %i.aa = ashr <8 x i16> %i.v, splat (i16 6)
  %i.ab = lshr <8 x i16> %i.y, splat (i16 6)
  %i.ac = getelementptr inbounds nuw i8, ptr %.032121, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.038118, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.036119, i64 4
  %.val46 = load i64, ptr %i.ac, align 1, !tbaa !9
  %.val47 = load i32, ptr %i.ad, align 1
  %.val48 = load i32, ptr %i.ae, align 1
  %i.af = insertelement <2 x i64> poison, i64 %.val46, i64 0
  %i.ag = bitcast <2 x i64> %i.af to <16 x i8>
  %8 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ag, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ah = insertelement <4 x i32> poison, i32 %.val47, i64 0
  %i.ai = bitcast <4 x i32> %i.ah to <16 x i8>
  %9 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ai, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = bitcast <16 x i8> %9 to <8 x i16>
  %i.ak = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.al = insertelement <4 x i32> poison, i32 %.val48, i64 0
  %i.am = bitcast <4 x i32> %i.al to <16 x i8>
  %10 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.am, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = bitcast <16 x i8> %10 to <8 x i16>
  %i.ao = shufflevector <8 x i16> %i.an, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ap = bitcast <16 x i8> %8 to <8 x i16>
  %i.aq = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ap, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.ar = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ao, <8 x i16> splat (i16 26149))
  %i.as = add nsw <8 x i16> %i.aq, splat (i16 -14234)
  %i.at = add <8 x i16> %i.as, %i.ar
  %i.au = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ak, <8 x i16> splat (i16 6419))
  %i.av = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ao, <8 x i16> splat (i16 13320))
  %.neg107 = add nuw <8 x i16> %i.aq, splat (i16 8708)
  %i.aw = add nuw nsw <8 x i16> %i.au, %i.av
  %i.ax = sub <8 x i16> %.neg107, %i.aw
  %i.ay = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ak, <8 x i16> splat (i16 -32486))
  %i.az = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.ay, <8 x i16> %i.aq)
  %i.ba = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.az, <8 x i16> splat (i16 17685))
  %i.bb = ashr <8 x i16> %i.at, splat (i16 6)
  %i.bc = ashr <8 x i16> %i.ax, splat (i16 6)
  %i.bd = lshr <8 x i16> %i.ba, splat (i16 6)
  %i.be = getelementptr inbounds nuw i8, ptr %.032121, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.038118, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.036119, i64 8
  %.val43 = load i64, ptr %i.be, align 1, !tbaa !9
  %.val44 = load i32, ptr %i.bf, align 1
  %.val45 = load i32, ptr %i.bg, align 1
  %i.bh = insertelement <2 x i64> poison, i64 %.val43, i64 0
  %i.bi = bitcast <2 x i64> %i.bh to <16 x i8>
  %11 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bj = insertelement <4 x i32> poison, i32 %.val44, i64 0
  %i.bk = bitcast <4 x i32> %i.bj to <16 x i8>
  %12 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bl = bitcast <16 x i8> %12 to <8 x i16>
  %i.bm = shufflevector <8 x i16> %i.bl, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.bn = insertelement <4 x i32> poison, i32 %.val45, i64 0
  %i.bo = bitcast <4 x i32> %i.bn to <16 x i8>
  %13 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = bitcast <16 x i8> %13 to <8 x i16>
  %i.bq = shufflevector <8 x i16> %i.bp, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.br = bitcast <16 x i8> %11 to <8 x i16>
  %i.bs = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.br, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.bt = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bq, <8 x i16> splat (i16 26149))
  %i.bu = add nsw <8 x i16> %i.bs, splat (i16 -14234)
  %i.bv = add <8 x i16> %i.bu, %i.bt
  %i.bw = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 6419))
  %i.bx = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bq, <8 x i16> splat (i16 13320))
  %.neg110 = add nuw <8 x i16> %i.bs, splat (i16 8708)
  %i.by = add nuw nsw <8 x i16> %i.bw, %i.bx
  %i.bz = sub <8 x i16> %.neg110, %i.by
  %i.ca = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 -32486))
  %i.cb = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.ca, <8 x i16> %i.bs)
  %i.cc = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.cb, <8 x i16> splat (i16 17685))
  %i.cd = ashr <8 x i16> %i.bv, splat (i16 6)
  %i.ce = ashr <8 x i16> %i.bz, splat (i16 6)
  %i.cf = lshr <8 x i16> %i.cc, splat (i16 6)
  %i.cg = getelementptr inbounds nuw i8, ptr %.032121, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %.038118, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %.036119, i64 12
  %.val = load i64, ptr %i.cg, align 1, !tbaa !9
  %.val41 = load i32, ptr %i.ch, align 1
  %.val42 = load i32, ptr %i.ci, align 1
  %i.cj = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.ck = bitcast <2 x i64> %i.cj to <16 x i8>
  %14 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ck, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cl = insertelement <4 x i32> poison, i32 %.val41, i64 0
  %i.cm = bitcast <4 x i32> %i.cl to <16 x i8>
  %15 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.cm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cn = bitcast <16 x i8> %15 to <8 x i16>
  %i.co = shufflevector <8 x i16> %i.cn, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.cp = insertelement <4 x i32> poison, i32 %.val42, i64 0
  %i.cq = bitcast <4 x i32> %i.cp to <16 x i8>
  %16 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.cq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cr = bitcast <16 x i8> %16 to <8 x i16>
  %i.cs = shufflevector <8 x i16> %i.cr, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ct = bitcast <16 x i8> %14 to <8 x i16>
  %i.cu = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ct, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.cv = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cs, <8 x i16> splat (i16 26149))
  %i.cw = add nsw <8 x i16> %i.cu, splat (i16 -14234)
  %i.cx = add <8 x i16> %i.cw, %i.cv
  %i.cy = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.co, <8 x i16> splat (i16 6419))
  %i.cz = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cs, <8 x i16> splat (i16 13320))
  %.neg113 = add nuw <8 x i16> %i.cu, splat (i16 8708)
  %i.da = add nuw nsw <8 x i16> %i.cy, %i.cz
  %i.db = sub <8 x i16> %.neg113, %i.da
  %i.dc = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.co, <8 x i16> splat (i16 -32486))
  %i.dd = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.dc, <8 x i16> %i.cu)
  %i.de = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.dd, <8 x i16> splat (i16 17685))
  %i.df = ashr <8 x i16> %i.cx, splat (i16 6)
  %i.dg = ashr <8 x i16> %i.db, splat (i16 6)
  %i.dh = lshr <8 x i16> %i.de, splat (i16 6)
  %i.di = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.z, <8 x i16> %i.bb) ; 2 uses
  %i.dj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cd, <8 x i16> %i.df) ; 2 uses
  %i.dk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aa, <8 x i16> %i.bc) ; 2 uses
  %i.dl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ce, <8 x i16> %i.dg) ; 2 uses
  %i.dm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ab, <8 x i16> %i.bd) ; 2 uses
  %i.dn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cf, <8 x i16> %i.dh) ; 2 uses
  %i.do = bitcast <16 x i8> %i.di to <8 x i16>
  %i.dp = bitcast <16 x i8> %i.dj to <8 x i16>
  %i.dq = bitcast <16 x i8> %i.di to <8 x i16>
  %i.dr = and <8 x i16> %i.dq, splat (i16 255)
  %i.ds = bitcast <16 x i8> %i.dj to <8 x i16>
  %i.dt = and <8 x i16> %i.ds, splat (i16 255)
  %i.du = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dr, <8 x i16> %i.dt) ; 2 uses
  %i.dv = bitcast <16 x i8> %i.dk to <8 x i16>
  %i.dw = bitcast <16 x i8> %i.dl to <8 x i16>
  %i.dx = bitcast <16 x i8> %i.dk to <8 x i16>
  %i.dy = and <8 x i16> %i.dx, splat (i16 255)
  %i.dz = bitcast <16 x i8> %i.dl to <8 x i16>
  %i.ea = and <8 x i16> %i.dz, splat (i16 255)
  %i.eb = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dy, <8 x i16> %i.ea) ; 2 uses
  %i.ec = bitcast <16 x i8> %i.dm to <8 x i16>
  %i.ed = bitcast <16 x i8> %i.dn to <8 x i16>
  %i.ee = bitcast <16 x i8> %i.dm to <8 x i16>
  %i.ef = and <8 x i16> %i.ee, splat (i16 255)
  %i.eg = bitcast <16 x i8> %i.dn to <8 x i16>
  %i.eh = and <8 x i16> %i.eg, splat (i16 255)
  %i.ei = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ef, <8 x i16> %i.eh) ; 2 uses
  %i.ej = lshr <8 x i16> %i.do, splat (i16 8)
  %i.ek = lshr <8 x i16> %i.dp, splat (i16 8)
  %i.el = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ej, <8 x i16> %i.ek) ; 2 uses
  %i.em = lshr <8 x i16> %i.dv, splat (i16 8)
  %i.en = lshr <8 x i16> %i.dw, splat (i16 8)
  %i.eo = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.em, <8 x i16> %i.en) ; 2 uses
  %i.ep = lshr <8 x i16> %i.ec, splat (i16 8)
  %i.eq = lshr <8 x i16> %i.ed, splat (i16 8)
  %i.er = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ep, <8 x i16> %i.eq) ; 2 uses
  %i.es = bitcast <16 x i8> %i.du to <8 x i16>
  %i.et = bitcast <16 x i8> %i.du to <8 x i16>
  %i.eu = and <8 x i16> %i.et, splat (i16 255)
  %i.ev = bitcast <16 x i8> %i.eb to <8 x i16>
  %i.ew = bitcast <16 x i8> %i.eb to <8 x i16>
  %i.ex = and <8 x i16> %i.ew, splat (i16 255)
  %i.ey = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.eu, <8 x i16> %i.ex) ; 2 uses
  %i.ez = bitcast <16 x i8> %i.ei to <8 x i16>
  %i.fa = bitcast <16 x i8> %i.ei to <8 x i16>
  %i.fb = and <8 x i16> %i.fa, splat (i16 255)
  %i.fc = bitcast <16 x i8> %i.el to <8 x i16>
  %i.fd = bitcast <16 x i8> %i.el to <8 x i16>
  %i.fe = and <8 x i16> %i.fd, splat (i16 255)
  %i.ff = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fb, <8 x i16> %i.fe) ; 2 uses
  %i.fg = bitcast <16 x i8> %i.eo to <8 x i16>
  %i.fh = bitcast <16 x i8> %i.eo to <8 x i16>
  %i.fi = and <8 x i16> %i.fh, splat (i16 255)
  %i.fj = bitcast <16 x i8> %i.er to <8 x i16>
  %i.fk = bitcast <16 x i8> %i.er to <8 x i16>
  %i.fl = and <8 x i16> %i.fk, splat (i16 255)
  %i.fm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fi, <8 x i16> %i.fl) ; 2 uses
  %i.fn = lshr <8 x i16> %i.es, splat (i16 8)
  %i.fo = lshr <8 x i16> %i.ev, splat (i16 8)
  %i.fp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fn, <8 x i16> %i.fo) ; 2 uses
  %i.fq = lshr <8 x i16> %i.ez, splat (i16 8)
  %i.fr = lshr <8 x i16> %i.fc, splat (i16 8)
  %i.fs = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fq, <8 x i16> %i.fr) ; 2 uses
  %i.ft = lshr <8 x i16> %i.fg, splat (i16 8)
  %i.fu = lshr <8 x i16> %i.fj, splat (i16 8)
  %i.fv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ft, <8 x i16> %i.fu) ; 2 uses
  %i.fw = bitcast <16 x i8> %i.ey to <8 x i16>
  %i.fx = bitcast <16 x i8> %i.ff to <8 x i16>
  %i.fy = bitcast <16 x i8> %i.ey to <8 x i16>
  %i.fz = and <8 x i16> %i.fy, splat (i16 255)
  %i.ga = bitcast <16 x i8> %i.ff to <8 x i16>
  %i.gb = and <8 x i16> %i.ga, splat (i16 255)
  %i.gc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fz, <8 x i16> %i.gb) ; 2 uses
  %i.gd = bitcast <16 x i8> %i.fm to <8 x i16>
  %i.ge = bitcast <16 x i8> %i.fp to <8 x i16>
  %i.gf = bitcast <16 x i8> %i.fm to <8 x i16>
  %i.gg = and <8 x i16> %i.gf, splat (i16 255)
  %i.gh = bitcast <16 x i8> %i.fp to <8 x i16>
  %i.gi = and <8 x i16> %i.gh, splat (i16 255)
  %i.gj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gg, <8 x i16> %i.gi) ; 2 uses
  %i.gk = bitcast <16 x i8> %i.fs to <8 x i16>
  %i.gl = bitcast <16 x i8> %i.fs to <8 x i16>
  %i.gm = and <8 x i16> %i.gl, splat (i16 255)
  %i.gn = bitcast <16 x i8> %i.fv to <8 x i16>
  %i.go = bitcast <16 x i8> %i.fv to <8 x i16>
  %i.gp = and <8 x i16> %i.go, splat (i16 255)
  %i.gq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gm, <8 x i16> %i.gp) ; 2 uses
  %i.gr = lshr <8 x i16> %i.fw, splat (i16 8)
  %i.gs = lshr <8 x i16> %i.fx, splat (i16 8)
  %i.gt = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gr, <8 x i16> %i.gs) ; 2 uses
  %i.gu = lshr <8 x i16> %i.gd, splat (i16 8)
  %i.gv = lshr <8 x i16> %i.ge, splat (i16 8)
  %i.gw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gu, <8 x i16> %i.gv) ; 2 uses
  %i.gx = lshr <8 x i16> %i.gk, splat (i16 8)
  %i.gy = lshr <8 x i16> %i.gn, splat (i16 8)
  %i.gz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gx, <8 x i16> %i.gy) ; 2 uses
  %i.ha = bitcast <16 x i8> %i.gc to <8 x i16>
  %i.hb = bitcast <16 x i8> %i.gc to <8 x i16>
  %i.hc = and <8 x i16> %i.hb, splat (i16 255)
  %i.hd = bitcast <16 x i8> %i.gj to <8 x i16>
  %i.he = bitcast <16 x i8> %i.gj to <8 x i16>
  %i.hf = and <8 x i16> %i.he, splat (i16 255)
  %i.hg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hc, <8 x i16> %i.hf) ; 2 uses
  %i.hh = bitcast <16 x i8> %i.gq to <8 x i16>
  %i.hi = bitcast <16 x i8> %i.gq to <8 x i16>
  %i.hj = and <8 x i16> %i.hi, splat (i16 255)
  %i.hk = bitcast <16 x i8> %i.gt to <8 x i16>
  %i.hl = bitcast <16 x i8> %i.gt to <8 x i16>
  %i.hm = and <8 x i16> %i.hl, splat (i16 255)
  %i.hn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hj, <8 x i16> %i.hm) ; 2 uses
  %i.ho = bitcast <16 x i8> %i.gw to <8 x i16>
  %i.hp = bitcast <16 x i8> %i.gw to <8 x i16>
  %i.hq = and <8 x i16> %i.hp, splat (i16 255)
  %i.hr = bitcast <16 x i8> %i.gz to <8 x i16>
  %i.hs = bitcast <16 x i8> %i.gz to <8 x i16>
  %i.ht = and <8 x i16> %i.hs, splat (i16 255)
  %i.hu = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hq, <8 x i16> %i.ht) ; 2 uses
  %i.hv = lshr <8 x i16> %i.ha, splat (i16 8)
  %i.hw = lshr <8 x i16> %i.hd, splat (i16 8)
  %i.hx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hv, <8 x i16> %i.hw) ; 2 uses
  %i.hy = lshr <8 x i16> %i.hh, splat (i16 8)
  %i.hz = lshr <8 x i16> %i.hk, splat (i16 8)
  %i.ia = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hy, <8 x i16> %i.hz) ; 2 uses
  %i.ib = lshr <8 x i16> %i.ho, splat (i16 8)
  %i.ic = lshr <8 x i16> %i.hr, splat (i16 8)
  %i.id = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ib, <8 x i16> %i.ic) ; 2 uses
  %i.ie = bitcast <16 x i8> %i.hg to <8 x i16>
  %i.if = bitcast <16 x i8> %i.hg to <8 x i16>
  %i.ig = and <8 x i16> %i.if, splat (i16 255)
  %i.ih = bitcast <16 x i8> %i.hn to <8 x i16>
  %i.ii = bitcast <16 x i8> %i.hn to <8 x i16>
  %i.ij = and <8 x i16> %i.ii, splat (i16 255)
  %i.ik = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ig, <8 x i16> %i.ij)
  %i.il = bitcast <16 x i8> %i.hu to <8 x i16>
  %i.im = bitcast <16 x i8> %i.hu to <8 x i16>
  %i.in = and <8 x i16> %i.im, splat (i16 255)
  %i.io = bitcast <16 x i8> %i.hx to <8 x i16>
  %i.ip = bitcast <16 x i8> %i.hx to <8 x i16>
  %i.iq = and <8 x i16> %i.ip, splat (i16 255)
  %i.ir = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.in, <8 x i16> %i.iq)
  %i.is = bitcast <16 x i8> %i.ia to <8 x i16>
  %i.it = bitcast <16 x i8> %i.ia to <8 x i16>
  %i.iu = and <8 x i16> %i.it, splat (i16 255)
  %i.iv = bitcast <16 x i8> %i.id to <8 x i16>
  %i.iw = bitcast <16 x i8> %i.id to <8 x i16>
  %i.ix = and <8 x i16> %i.iw, splat (i16 255)
  %i.iy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.iu, <8 x i16> %i.ix)
  %i.iz = lshr <8 x i16> %i.ie, splat (i16 8)
  %i.ja = lshr <8 x i16> %i.ih, splat (i16 8)
  %i.jb = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.iz, <8 x i16> %i.ja)
  %i.jc = lshr <8 x i16> %i.il, splat (i16 8)
  %i.jd = lshr <8 x i16> %i.io, splat (i16 8)
  %i.je = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.jc, <8 x i16> %i.jd)
  %i.jf = lshr <8 x i16> %i.is, splat (i16 8)
  %i.jg = lshr <8 x i16> %i.iv, splat (i16 8)
  %i.jh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.jf, <8 x i16> %i.jg)
  store <16 x i8> %i.ik, ptr %.034120, align 1, !tbaa !9, !alias.scope !43
  %i.ji = getelementptr inbounds nuw i8, ptr %.034120, i64 16
  store <16 x i8> %i.ir, ptr %i.ji, align 1, !tbaa !9, !alias.scope !43
  %i.jj = getelementptr inbounds nuw i8, ptr %.034120, i64 32
  store <16 x i8> %i.iy, ptr %i.jj, align 1, !tbaa !9, !alias.scope !43
  %i.jk = getelementptr inbounds nuw i8, ptr %.034120, i64 48
  store <16 x i8> %i.jb, ptr %i.jk, align 1, !tbaa !9, !alias.scope !43
  %i.jl = getelementptr inbounds nuw i8, ptr %.034120, i64 64
  store <16 x i8> %i.je, ptr %i.jl, align 1, !tbaa !9, !alias.scope !43
  %i.jm = getelementptr inbounds nuw i8, ptr %.034120, i64 80
  store <16 x i8> %i.jh, ptr %i.jm, align 1, !tbaa !9, !alias.scope !43
  %i.jn = getelementptr inbounds nuw i8, ptr %.032121, i64 32 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.038118, i64 16 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.036119, i64 16 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.034120, i64 96 ; 2 uses
  %i.jr = add nuw nsw i32 %i.c, 32                ; 2 uses
  %.not = icmp sgt i32 %i.jr, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !41

.lr.ph131:                                        ; preds = %.preheader, %.lr.ph131
  %.1130 = phi i32 [ %i.lp, %.lr.ph131 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.133129 = phi ptr [ %i.lk, %.lr.ph131 ], [ %.032.lcssa, %.preheader ] ; 2 uses
  %.135128 = phi ptr [ %i.lj, %.lr.ph131 ], [ %.034.lcssa, %.preheader ] ; 4 uses
  %.137127 = phi ptr [ %i.lo, %.lr.ph131 ], [ %.036.lcssa, %.preheader ] ; 2 uses
  %.139126 = phi ptr [ %i.ln, %.lr.ph131 ], [ %.038.lcssa, %.preheader ] ; 2 uses
  %i.js = load i8, ptr %.133129, align 1, !tbaa !9
  %i.jt = zext i8 %i.js to i32
  %i.ju = load i8, ptr %.139126, align 1, !tbaa !9
  %i.jv = zext i8 %i.ju to i32                    ; 2 uses
  %i.jw = load i8, ptr %.137127, align 1, !tbaa !9
  %i.jx = zext i8 %i.jw to i32                    ; 2 uses
  %i.jy = mul nuw nsw i32 %i.jt, 19077
  %i.jz = lshr i32 %i.jy, 8                       ; 3 uses
  %i.ka = mul nuw nsw i32 %i.jx, 26149
  %i.kb = lshr i32 %i.ka, 8
  %i.kc = add nuw nsw i32 %i.kb, %i.jz            ; 2 uses
  %i.kd = add nsw i32 %i.kc, -14234               ; 2 uses
  %i.ke = icmp ult i32 %i.kd, 16384
  %i.kf = lshr i32 %i.kd, 6
  %i.kg = icmp samesign ult i32 %i.kc, 14234
  %i.kh = select i1 %i.kg, i32 0, i32 255
  %i.ki = select i1 %i.ke, i32 %i.kf, i32 %i.kh
  %i.kj = trunc i32 %i.ki to i8
  store i8 %i.kj, ptr %.135128, align 1, !tbaa !9
  %i.kk = mul nuw nsw i32 %i.jv, 6419
  %i.kl = lshr i32 %i.kk, 8
  %i.km = mul nuw nsw i32 %i.jx, 13320
  %i.kn = lshr i32 %i.km, 8
  %i.ko = add nuw nsw i32 %i.kl, %i.kn
  %i.kp = sub nsw i32 %i.jz, %i.ko                ; 2 uses
  %i.kq = add nsw i32 %i.kp, 8708                 ; 2 uses
  %i.kr = icmp ult i32 %i.kq, 16384
  %i.ks = lshr i32 %i.kq, 6
  %i.kt = icmp slt i32 %i.kp, -8708
  %i.ku = select i1 %i.kt, i32 0, i32 255
  %i.kv = select i1 %i.kr, i32 %i.ks, i32 %i.ku
  %i.kw = trunc i32 %i.kv to i8
  %i.kx = getelementptr inbounds nuw i8, ptr %.135128, i64 1
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !9
  %i.ky = mul nuw nsw i32 %i.jv, 33050
  %i.kz = lshr i32 %i.ky, 8
  %i.la = add nuw nsw i32 %i.kz, %i.jz            ; 2 uses
  %i.lb = add nsw i32 %i.la, -17685               ; 2 uses
  %i.lc = icmp ult i32 %i.lb, 16384
  %i.ld = lshr i32 %i.lb, 6
  %i.le = icmp samesign ult i32 %i.la, 17685
  %i.lf = select i1 %i.le, i32 0, i32 255
  %i.lg = select i1 %i.lc, i32 %i.ld, i32 %i.lf
  %i.lh = trunc i32 %i.lg to i8
  %i.li = getelementptr inbounds nuw i8, ptr %.135128, i64 2
  store i8 %i.lh, ptr %i.li, align 1, !tbaa !9
  %i.lj = getelementptr inbounds nuw i8, ptr %.135128, i64 3
  %i.lk = getelementptr inbounds nuw i8, ptr %.133129, i64 1
  %i.ll = and i32 %.1130, 1
  %i.lm = zext nneg i32 %i.ll to i64              ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.139126, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %.137127, i64 %i.lm
  %i.lp = add nuw nsw i32 %.1130, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.lp, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph131, !llvm.loop !42

._crit_edge:                                      ; preds = %.lr.ph131, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToRgbaRow_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %.not46 = icmp slt i32 %4, 8
  br i1 %.not46, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.a = and i32 %4, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.029.lcssa = phi ptr [ %1, %bb.a ], [ %i.am, %.preheader.loopexit ]
  %.027.lcssa = phi ptr [ %2, %bb.a ], [ %i.an, %.preheader.loopexit ]
  %.025.lcssa = phi ptr [ %3, %bb.a ], [ %i.ao, %.preheader.loopexit ]
  %.023.lcssa = phi ptr [ %0, %bb.a ], [ %i.al, %.preheader.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.a, %.preheader.loopexit ] ; 2 uses
  %i.b = icmp slt i32 %.0.lcssa, %4
  br i1 %i.b, label %.lr.ph60, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i32 [ %i.ap, %.lr.ph ], [ 8, %bb.a ]
  %.02350 = phi ptr [ %i.al, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.02549 = phi ptr [ %i.ao, %.lr.ph ], [ %3, %bb.a ] ; 3 uses
  %.02748 = phi ptr [ %i.an, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02947 = phi ptr [ %i.am, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.023.val = load i64, ptr %.02350, align 1, !tbaa !9
  %.029.val = load i32, ptr %.02947, align 1
  %.027.val = load i32, ptr %.02748, align 1
  %i.d = insertelement <2 x i64> poison, i64 %.023.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %5 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.f = insertelement <4 x i32> poison, i32 %.029.val, i64 0
  %i.g = bitcast <4 x i32> %i.f to <16 x i8>
  %6 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.g, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.h = bitcast <16 x i8> %6 to <8 x i16>
  %i.i = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.j = insertelement <4 x i32> poison, i32 %.027.val, i64 0
  %i.k = bitcast <4 x i32> %i.j to <16 x i8>
  %7 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.k, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.l = bitcast <16 x i8> %7 to <8 x i16>
  %i.m = shufflevector <8 x i16> %i.l, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.n = bitcast <16 x i8> %5 to <8 x i16>
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.n, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.p = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 26149))
  %i.q = add nsw <8 x i16> %i.o, splat (i16 -14234)
  %i.r = add <8 x i16> %i.q, %i.p
  %i.s = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 6419))
  %i.t = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 13320))
  %.neg42 = add nuw <8 x i16> %i.o, splat (i16 8708)
  %i.u = add nuw nsw <8 x i16> %i.s, %i.t
  %i.v = sub <8 x i16> %.neg42, %i.u
  %i.w = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 -32486))
  %i.x = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.w, <8 x i16> %i.o)
  %i.y = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.x, <8 x i16> splat (i16 17685))
  %i.z = ashr <8 x i16> %i.r, splat (i16 6)
  %i.aa = ashr <8 x i16> %i.v, splat (i16 6)
  %i.ab = lshr <8 x i16> %i.y, splat (i16 6)
  %i.ac = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.z, <8 x i16> %i.ab) ; 2 uses
  %i.ad = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aa, <8 x i16> splat (i16 255)) ; 2 uses
  %i.ae = shufflevector <16 x i8> %i.ac, <16 x i8> %i.ad, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.af = shufflevector <16 x i8> %i.ac, <16 x i8> %i.ad, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ag = bitcast <16 x i8> %i.ae to <8 x i16>    ; 2 uses
  %i.ah = bitcast <16 x i8> %i.af to <8 x i16>    ; 2 uses
  %i.ai = shufflevector <8 x i16> %i.ag, <8 x i16> %i.ah, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aj = shufflevector <8 x i16> %i.ag, <8 x i16> %i.ah, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ai, ptr %.02549, align 1, !tbaa !9, !alias.scope !48
  %i.ak = getelementptr inbounds nuw i8, ptr %.02549, i64 16
  store <8 x i16> %i.aj, ptr %i.ak, align 1, !tbaa !9, !alias.scope !48
  %i.al = getelementptr inbounds nuw i8, ptr %.02350, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02947, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02748, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02549, i64 32 ; 2 uses
  %i.ap = add nuw nsw i32 %i.c, 8                 ; 2 uses
  %.not = icmp sgt i32 %i.ap, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !46

.lr.ph60:                                         ; preds = %.preheader, %.lr.ph60
  %.159 = phi i32 [ %i.co, %.lr.ph60 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.12458 = phi ptr [ %i.cj, %.lr.ph60 ], [ %.023.lcssa, %.preheader ] ; 2 uses
  %.12657 = phi ptr [ %i.ci, %.lr.ph60 ], [ %.025.lcssa, %.preheader ] ; 5 uses
  %.12856 = phi ptr [ %i.cn, %.lr.ph60 ], [ %.027.lcssa, %.preheader ] ; 2 uses
  %.13055 = phi ptr [ %i.cm, %.lr.ph60 ], [ %.029.lcssa, %.preheader ] ; 2 uses
  %i.aq = load i8, ptr %.12458, align 1, !tbaa !9
  %i.ar = load i8, ptr %.13055, align 1, !tbaa !9
  %i.as = load i8, ptr %.12856, align 1, !tbaa !9
  %i.at = zext i8 %i.aq to i32
  %i.au = zext i8 %i.ar to i32                    ; 2 uses
  %i.av = zext i8 %i.as to i32                    ; 2 uses
  %i.aw = mul nuw nsw i32 %i.at, 19077
  %i.ax = lshr i32 %i.aw, 8                       ; 3 uses
  %i.ay = mul nuw nsw i32 %i.av, 26149
  %i.az = lshr i32 %i.ay, 8
  %i.ba = add nuw nsw i32 %i.az, %i.ax            ; 2 uses
  %i.bb = add nsw i32 %i.ba, -14234               ; 2 uses
  %i.bc = icmp ult i32 %i.bb, 16384
  %i.bd = lshr i32 %i.bb, 6
  %i.be = icmp samesign ult i32 %i.ba, 14234
  %i.bf = select i1 %i.be, i32 0, i32 255
  %i.bg = select i1 %i.bc, i32 %i.bd, i32 %i.bf
  %i.bh = trunc i32 %i.bg to i8
  store i8 %i.bh, ptr %.12657, align 1, !tbaa !9
  %i.bi = mul nuw nsw i32 %i.au, 6419
  %i.bj = lshr i32 %i.bi, 8
  %i.bk = mul nuw nsw i32 %i.av, 13320
  %i.bl = lshr i32 %i.bk, 8
  %i.bm = add nuw nsw i32 %i.bj, %i.bl
  %i.bn = sub nsw i32 %i.ax, %i.bm                ; 2 uses
  %i.bo = add nsw i32 %i.bn, 8708                 ; 2 uses
  %i.bp = icmp ult i32 %i.bo, 16384
  %i.bq = lshr i32 %i.bo, 6
  %i.br = icmp slt i32 %i.bn, -8708
  %i.bs = select i1 %i.br, i32 0, i32 255
  %i.bt = select i1 %i.bp, i32 %i.bq, i32 %i.bs
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.12657, i64 1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !9
  %i.bw = mul nuw nsw i32 %i.au, 33050
  %i.bx = lshr i32 %i.bw, 8
  %i.by = add nuw nsw i32 %i.bx, %i.ax            ; 2 uses
  %i.bz = add nsw i32 %i.by, -17685               ; 2 uses
  %i.ca = icmp ult i32 %i.bz, 16384
  %i.cb = lshr i32 %i.bz, 6
  %i.cc = icmp samesign ult i32 %i.by, 17685
  %i.cd = select i1 %i.cc, i32 0, i32 255
  %i.ce = select i1 %i.ca, i32 %i.cb, i32 %i.cd
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.12657, i64 2
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %.12657, i64 3
  store i8 -1, ptr %i.ch, align 1, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %.12657, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.12458, i64 1
  %i.ck = and i32 %.159, 1
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.13055, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.12856, i64 %i.cl
  %i.co = add nuw nsw i32 %.159, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph60, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToBgrRow_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %.not117 = icmp slt i32 %4, 32
  br i1 %.not117, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.a = and i32 %4, 2147483616
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.038.lcssa = phi ptr [ %1, %bb.a ], [ %i.jo, %.preheader.loopexit ]
  %.036.lcssa = phi ptr [ %2, %bb.a ], [ %i.jp, %.preheader.loopexit ]
  %.034.lcssa = phi ptr [ %3, %bb.a ], [ %i.jq, %.preheader.loopexit ]
  %.032.lcssa = phi ptr [ %0, %bb.a ], [ %i.jn, %.preheader.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.a, %.preheader.loopexit ] ; 2 uses
  %i.b = icmp slt i32 %.0.lcssa, %4
  br i1 %i.b, label %.lr.ph131, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i32 [ %i.jr, %.lr.ph ], [ 32, %bb.a ]
  %.032121 = phi ptr [ %i.jn, %.lr.ph ], [ %0, %bb.a ] ; 5 uses
  %.034120 = phi ptr [ %i.jq, %.lr.ph ], [ %3, %bb.a ] ; 7 uses
  %.036119 = phi ptr [ %i.jp, %.lr.ph ], [ %2, %bb.a ] ; 5 uses
  %.038118 = phi ptr [ %i.jo, %.lr.ph ], [ %1, %bb.a ] ; 5 uses
  %.032.val = load i64, ptr %.032121, align 1, !tbaa !9
  %.038.val = load i32, ptr %.038118, align 1
  %.036.val = load i32, ptr %.036119, align 1
  %i.d = insertelement <2 x i64> poison, i64 %.032.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %5 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.f = insertelement <4 x i32> poison, i32 %.038.val, i64 0
  %i.g = bitcast <4 x i32> %i.f to <16 x i8>
  %6 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.g, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.h = bitcast <16 x i8> %6 to <8 x i16>
  %i.i = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.j = insertelement <4 x i32> poison, i32 %.036.val, i64 0
  %i.k = bitcast <4 x i32> %i.j to <16 x i8>
  %7 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.k, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.l = bitcast <16 x i8> %7 to <8 x i16>
  %i.m = shufflevector <8 x i16> %i.l, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.n = bitcast <16 x i8> %5 to <8 x i16>
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.n, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.p = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 26149))
  %i.q = add nsw <8 x i16> %i.o, splat (i16 -14234)
  %i.r = add <8 x i16> %i.q, %i.p
  %i.s = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 6419))
  %i.t = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 13320))
  %.neg104 = add nuw <8 x i16> %i.o, splat (i16 8708)
  %i.u = add nuw nsw <8 x i16> %i.s, %i.t
  %i.v = sub <8 x i16> %.neg104, %i.u
  %i.w = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 -32486))
  %i.x = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.w, <8 x i16> %i.o)
  %i.y = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.x, <8 x i16> splat (i16 17685))
  %i.z = ashr <8 x i16> %i.r, splat (i16 6)
  %i.aa = ashr <8 x i16> %i.v, splat (i16 6)
  %i.ab = lshr <8 x i16> %i.y, splat (i16 6)
  %i.ac = getelementptr inbounds nuw i8, ptr %.032121, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %.038118, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %.036119, i64 4
  %.val46 = load i64, ptr %i.ac, align 1, !tbaa !9
  %.val47 = load i32, ptr %i.ad, align 1
  %.val48 = load i32, ptr %i.ae, align 1
  %i.af = insertelement <2 x i64> poison, i64 %.val46, i64 0
  %i.ag = bitcast <2 x i64> %i.af to <16 x i8>
  %8 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ag, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.ah = insertelement <4 x i32> poison, i32 %.val47, i64 0
  %i.ai = bitcast <4 x i32> %i.ah to <16 x i8>
  %9 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ai, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.aj = bitcast <16 x i8> %9 to <8 x i16>
  %i.ak = shufflevector <8 x i16> %i.aj, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.al = insertelement <4 x i32> poison, i32 %.val48, i64 0
  %i.am = bitcast <4 x i32> %i.al to <16 x i8>
  %10 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.am, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.an = bitcast <16 x i8> %10 to <8 x i16>
  %i.ao = shufflevector <8 x i16> %i.an, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ap = bitcast <16 x i8> %8 to <8 x i16>
  %i.aq = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ap, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.ar = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ao, <8 x i16> splat (i16 26149))
  %i.as = add nsw <8 x i16> %i.aq, splat (i16 -14234)
  %i.at = add <8 x i16> %i.as, %i.ar
  %i.au = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ak, <8 x i16> splat (i16 6419))
  %i.av = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ao, <8 x i16> splat (i16 13320))
  %.neg107 = add nuw <8 x i16> %i.aq, splat (i16 8708)
  %i.aw = add nuw nsw <8 x i16> %i.au, %i.av
  %i.ax = sub <8 x i16> %.neg107, %i.aw
  %i.ay = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ak, <8 x i16> splat (i16 -32486))
  %i.az = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.ay, <8 x i16> %i.aq)
  %i.ba = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.az, <8 x i16> splat (i16 17685))
  %i.bb = ashr <8 x i16> %i.at, splat (i16 6)
  %i.bc = ashr <8 x i16> %i.ax, splat (i16 6)
  %i.bd = lshr <8 x i16> %i.ba, splat (i16 6)
  %i.be = getelementptr inbounds nuw i8, ptr %.032121, i64 16
  %i.bf = getelementptr inbounds nuw i8, ptr %.038118, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %.036119, i64 8
  %.val43 = load i64, ptr %i.be, align 1, !tbaa !9
  %.val44 = load i32, ptr %i.bf, align 1
  %.val45 = load i32, ptr %i.bg, align 1
  %i.bh = insertelement <2 x i64> poison, i64 %.val43, i64 0
  %i.bi = bitcast <2 x i64> %i.bh to <16 x i8>
  %11 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bi, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.bj = insertelement <4 x i32> poison, i32 %.val44, i64 0
  %i.bk = bitcast <4 x i32> %i.bj to <16 x i8>
  %12 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bk, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bl = bitcast <16 x i8> %12 to <8 x i16>
  %i.bm = shufflevector <8 x i16> %i.bl, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.bn = insertelement <4 x i32> poison, i32 %.val45, i64 0
  %i.bo = bitcast <4 x i32> %i.bn to <16 x i8>
  %13 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.bo, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bp = bitcast <16 x i8> %13 to <8 x i16>
  %i.bq = shufflevector <8 x i16> %i.bp, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.br = bitcast <16 x i8> %11 to <8 x i16>
  %i.bs = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.br, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.bt = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bq, <8 x i16> splat (i16 26149))
  %i.bu = add nsw <8 x i16> %i.bs, splat (i16 -14234)
  %i.bv = add <8 x i16> %i.bu, %i.bt
  %i.bw = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 6419))
  %i.bx = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bq, <8 x i16> splat (i16 13320))
  %.neg110 = add nuw <8 x i16> %i.bs, splat (i16 8708)
  %i.by = add nuw nsw <8 x i16> %i.bw, %i.bx
  %i.bz = sub <8 x i16> %.neg110, %i.by
  %i.ca = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.bm, <8 x i16> splat (i16 -32486))
  %i.cb = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.ca, <8 x i16> %i.bs)
  %i.cc = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.cb, <8 x i16> splat (i16 17685))
  %i.cd = ashr <8 x i16> %i.bv, splat (i16 6)
  %i.ce = ashr <8 x i16> %i.bz, splat (i16 6)
  %i.cf = lshr <8 x i16> %i.cc, splat (i16 6)
  %i.cg = getelementptr inbounds nuw i8, ptr %.032121, i64 24
  %i.ch = getelementptr inbounds nuw i8, ptr %.038118, i64 12
  %i.ci = getelementptr inbounds nuw i8, ptr %.036119, i64 12
  %.val = load i64, ptr %i.cg, align 1, !tbaa !9
  %.val41 = load i32, ptr %i.ch, align 1
  %.val42 = load i32, ptr %i.ci, align 1
  %i.cj = insertelement <2 x i64> poison, i64 %.val, i64 0
  %i.ck = bitcast <2 x i64> %i.cj to <16 x i8>
  %14 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.ck, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.cl = insertelement <4 x i32> poison, i32 %.val41, i64 0
  %i.cm = bitcast <4 x i32> %i.cl to <16 x i8>
  %15 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.cm, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cn = bitcast <16 x i8> %15 to <8 x i16>
  %i.co = shufflevector <8 x i16> %i.cn, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.cp = insertelement <4 x i32> poison, i32 %.val42, i64 0
  %i.cq = bitcast <4 x i32> %i.cp to <16 x i8>
  %16 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.cq, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cr = bitcast <16 x i8> %16 to <8 x i16>
  %i.cs = shufflevector <8 x i16> %i.cr, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.ct = bitcast <16 x i8> %14 to <8 x i16>
  %i.cu = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.ct, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.cv = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cs, <8 x i16> splat (i16 26149))
  %i.cw = add nsw <8 x i16> %i.cu, splat (i16 -14234)
  %i.cx = add <8 x i16> %i.cw, %i.cv
  %i.cy = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.co, <8 x i16> splat (i16 6419))
  %i.cz = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.cs, <8 x i16> splat (i16 13320))
  %.neg113 = add nuw <8 x i16> %i.cu, splat (i16 8708)
  %i.da = add nuw nsw <8 x i16> %i.cy, %i.cz
  %i.db = sub <8 x i16> %.neg113, %i.da
  %i.dc = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.co, <8 x i16> splat (i16 -32486))
  %i.dd = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.dc, <8 x i16> %i.cu)
  %i.de = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.dd, <8 x i16> splat (i16 17685))
  %i.df = ashr <8 x i16> %i.cx, splat (i16 6)
  %i.dg = ashr <8 x i16> %i.db, splat (i16 6)
  %i.dh = lshr <8 x i16> %i.de, splat (i16 6)
  %i.di = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ab, <8 x i16> %i.bd) ; 2 uses
  %i.dj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cf, <8 x i16> %i.dh) ; 2 uses
  %i.dk = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aa, <8 x i16> %i.bc) ; 2 uses
  %i.dl = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ce, <8 x i16> %i.dg) ; 2 uses
  %i.dm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.z, <8 x i16> %i.bb) ; 2 uses
  %i.dn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.cd, <8 x i16> %i.df) ; 2 uses
  %i.do = bitcast <16 x i8> %i.di to <8 x i16>
  %i.dp = bitcast <16 x i8> %i.dj to <8 x i16>
  %i.dq = bitcast <16 x i8> %i.di to <8 x i16>
  %i.dr = and <8 x i16> %i.dq, splat (i16 255)
  %i.ds = bitcast <16 x i8> %i.dj to <8 x i16>
  %i.dt = and <8 x i16> %i.ds, splat (i16 255)
  %i.du = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dr, <8 x i16> %i.dt) ; 2 uses
  %i.dv = bitcast <16 x i8> %i.dk to <8 x i16>
  %i.dw = bitcast <16 x i8> %i.dl to <8 x i16>
  %i.dx = bitcast <16 x i8> %i.dk to <8 x i16>
  %i.dy = and <8 x i16> %i.dx, splat (i16 255)
  %i.dz = bitcast <16 x i8> %i.dl to <8 x i16>
  %i.ea = and <8 x i16> %i.dz, splat (i16 255)
  %i.eb = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.dy, <8 x i16> %i.ea) ; 2 uses
  %i.ec = bitcast <16 x i8> %i.dm to <8 x i16>
  %i.ed = bitcast <16 x i8> %i.dn to <8 x i16>
  %i.ee = bitcast <16 x i8> %i.dm to <8 x i16>
  %i.ef = and <8 x i16> %i.ee, splat (i16 255)
  %i.eg = bitcast <16 x i8> %i.dn to <8 x i16>
  %i.eh = and <8 x i16> %i.eg, splat (i16 255)
  %i.ei = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ef, <8 x i16> %i.eh) ; 2 uses
  %i.ej = lshr <8 x i16> %i.do, splat (i16 8)
  %i.ek = lshr <8 x i16> %i.dp, splat (i16 8)
  %i.el = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ej, <8 x i16> %i.ek) ; 2 uses
  %i.em = lshr <8 x i16> %i.dv, splat (i16 8)
  %i.en = lshr <8 x i16> %i.dw, splat (i16 8)
  %i.eo = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.em, <8 x i16> %i.en) ; 2 uses
  %i.ep = lshr <8 x i16> %i.ec, splat (i16 8)
  %i.eq = lshr <8 x i16> %i.ed, splat (i16 8)
  %i.er = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ep, <8 x i16> %i.eq) ; 2 uses
  %i.es = bitcast <16 x i8> %i.du to <8 x i16>
  %i.et = bitcast <16 x i8> %i.du to <8 x i16>
  %i.eu = and <8 x i16> %i.et, splat (i16 255)
  %i.ev = bitcast <16 x i8> %i.eb to <8 x i16>
  %i.ew = bitcast <16 x i8> %i.eb to <8 x i16>
  %i.ex = and <8 x i16> %i.ew, splat (i16 255)
  %i.ey = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.eu, <8 x i16> %i.ex) ; 2 uses
  %i.ez = bitcast <16 x i8> %i.ei to <8 x i16>
  %i.fa = bitcast <16 x i8> %i.ei to <8 x i16>
  %i.fb = and <8 x i16> %i.fa, splat (i16 255)
  %i.fc = bitcast <16 x i8> %i.el to <8 x i16>
  %i.fd = bitcast <16 x i8> %i.el to <8 x i16>
  %i.fe = and <8 x i16> %i.fd, splat (i16 255)
  %i.ff = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fb, <8 x i16> %i.fe) ; 2 uses
  %i.fg = bitcast <16 x i8> %i.eo to <8 x i16>
  %i.fh = bitcast <16 x i8> %i.eo to <8 x i16>
  %i.fi = and <8 x i16> %i.fh, splat (i16 255)
  %i.fj = bitcast <16 x i8> %i.er to <8 x i16>
  %i.fk = bitcast <16 x i8> %i.er to <8 x i16>
  %i.fl = and <8 x i16> %i.fk, splat (i16 255)
  %i.fm = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fi, <8 x i16> %i.fl) ; 2 uses
  %i.fn = lshr <8 x i16> %i.es, splat (i16 8)
  %i.fo = lshr <8 x i16> %i.ev, splat (i16 8)
  %i.fp = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fn, <8 x i16> %i.fo) ; 2 uses
  %i.fq = lshr <8 x i16> %i.ez, splat (i16 8)
  %i.fr = lshr <8 x i16> %i.fc, splat (i16 8)
  %i.fs = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fq, <8 x i16> %i.fr) ; 2 uses
  %i.ft = lshr <8 x i16> %i.fg, splat (i16 8)
  %i.fu = lshr <8 x i16> %i.fj, splat (i16 8)
  %i.fv = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ft, <8 x i16> %i.fu) ; 2 uses
  %i.fw = bitcast <16 x i8> %i.ey to <8 x i16>
  %i.fx = bitcast <16 x i8> %i.ff to <8 x i16>
  %i.fy = bitcast <16 x i8> %i.ey to <8 x i16>
  %i.fz = and <8 x i16> %i.fy, splat (i16 255)
  %i.ga = bitcast <16 x i8> %i.ff to <8 x i16>
  %i.gb = and <8 x i16> %i.ga, splat (i16 255)
  %i.gc = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.fz, <8 x i16> %i.gb) ; 2 uses
  %i.gd = bitcast <16 x i8> %i.fm to <8 x i16>
  %i.ge = bitcast <16 x i8> %i.fp to <8 x i16>
  %i.gf = bitcast <16 x i8> %i.fm to <8 x i16>
  %i.gg = and <8 x i16> %i.gf, splat (i16 255)
  %i.gh = bitcast <16 x i8> %i.fp to <8 x i16>
  %i.gi = and <8 x i16> %i.gh, splat (i16 255)
  %i.gj = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gg, <8 x i16> %i.gi) ; 2 uses
  %i.gk = bitcast <16 x i8> %i.fs to <8 x i16>
  %i.gl = bitcast <16 x i8> %i.fs to <8 x i16>
  %i.gm = and <8 x i16> %i.gl, splat (i16 255)
  %i.gn = bitcast <16 x i8> %i.fv to <8 x i16>
  %i.go = bitcast <16 x i8> %i.fv to <8 x i16>
  %i.gp = and <8 x i16> %i.go, splat (i16 255)
  %i.gq = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gm, <8 x i16> %i.gp) ; 2 uses
  %i.gr = lshr <8 x i16> %i.fw, splat (i16 8)
  %i.gs = lshr <8 x i16> %i.fx, splat (i16 8)
  %i.gt = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gr, <8 x i16> %i.gs) ; 2 uses
  %i.gu = lshr <8 x i16> %i.gd, splat (i16 8)
  %i.gv = lshr <8 x i16> %i.ge, splat (i16 8)
  %i.gw = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gu, <8 x i16> %i.gv) ; 2 uses
  %i.gx = lshr <8 x i16> %i.gk, splat (i16 8)
  %i.gy = lshr <8 x i16> %i.gn, splat (i16 8)
  %i.gz = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.gx, <8 x i16> %i.gy) ; 2 uses
  %i.ha = bitcast <16 x i8> %i.gc to <8 x i16>
  %i.hb = bitcast <16 x i8> %i.gc to <8 x i16>
  %i.hc = and <8 x i16> %i.hb, splat (i16 255)
  %i.hd = bitcast <16 x i8> %i.gj to <8 x i16>
  %i.he = bitcast <16 x i8> %i.gj to <8 x i16>
  %i.hf = and <8 x i16> %i.he, splat (i16 255)
  %i.hg = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hc, <8 x i16> %i.hf) ; 2 uses
  %i.hh = bitcast <16 x i8> %i.gq to <8 x i16>
  %i.hi = bitcast <16 x i8> %i.gq to <8 x i16>
  %i.hj = and <8 x i16> %i.hi, splat (i16 255)
  %i.hk = bitcast <16 x i8> %i.gt to <8 x i16>
  %i.hl = bitcast <16 x i8> %i.gt to <8 x i16>
  %i.hm = and <8 x i16> %i.hl, splat (i16 255)
  %i.hn = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hj, <8 x i16> %i.hm) ; 2 uses
  %i.ho = bitcast <16 x i8> %i.gw to <8 x i16>
  %i.hp = bitcast <16 x i8> %i.gw to <8 x i16>
  %i.hq = and <8 x i16> %i.hp, splat (i16 255)
  %i.hr = bitcast <16 x i8> %i.gz to <8 x i16>
  %i.hs = bitcast <16 x i8> %i.gz to <8 x i16>
  %i.ht = and <8 x i16> %i.hs, splat (i16 255)
  %i.hu = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hq, <8 x i16> %i.ht) ; 2 uses
  %i.hv = lshr <8 x i16> %i.ha, splat (i16 8)
  %i.hw = lshr <8 x i16> %i.hd, splat (i16 8)
  %i.hx = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hv, <8 x i16> %i.hw) ; 2 uses
  %i.hy = lshr <8 x i16> %i.hh, splat (i16 8)
  %i.hz = lshr <8 x i16> %i.hk, splat (i16 8)
  %i.ia = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.hy, <8 x i16> %i.hz) ; 2 uses
  %i.ib = lshr <8 x i16> %i.ho, splat (i16 8)
  %i.ic = lshr <8 x i16> %i.hr, splat (i16 8)
  %i.id = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ib, <8 x i16> %i.ic) ; 2 uses
  %i.ie = bitcast <16 x i8> %i.hg to <8 x i16>
  %i.if = bitcast <16 x i8> %i.hg to <8 x i16>
  %i.ig = and <8 x i16> %i.if, splat (i16 255)
  %i.ih = bitcast <16 x i8> %i.hn to <8 x i16>
  %i.ii = bitcast <16 x i8> %i.hn to <8 x i16>
  %i.ij = and <8 x i16> %i.ii, splat (i16 255)
  %i.ik = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ig, <8 x i16> %i.ij)
  %i.il = bitcast <16 x i8> %i.hu to <8 x i16>
  %i.im = bitcast <16 x i8> %i.hu to <8 x i16>
  %i.in = and <8 x i16> %i.im, splat (i16 255)
  %i.io = bitcast <16 x i8> %i.hx to <8 x i16>
  %i.ip = bitcast <16 x i8> %i.hx to <8 x i16>
  %i.iq = and <8 x i16> %i.ip, splat (i16 255)
  %i.ir = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.in, <8 x i16> %i.iq)
  %i.is = bitcast <16 x i8> %i.ia to <8 x i16>
  %i.it = bitcast <16 x i8> %i.ia to <8 x i16>
  %i.iu = and <8 x i16> %i.it, splat (i16 255)
  %i.iv = bitcast <16 x i8> %i.id to <8 x i16>
  %i.iw = bitcast <16 x i8> %i.id to <8 x i16>
  %i.ix = and <8 x i16> %i.iw, splat (i16 255)
  %i.iy = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.iu, <8 x i16> %i.ix)
  %i.iz = lshr <8 x i16> %i.ie, splat (i16 8)
  %i.ja = lshr <8 x i16> %i.ih, splat (i16 8)
  %i.jb = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.iz, <8 x i16> %i.ja)
  %i.jc = lshr <8 x i16> %i.il, splat (i16 8)
  %i.jd = lshr <8 x i16> %i.io, splat (i16 8)
  %i.je = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.jc, <8 x i16> %i.jd)
  %i.jf = lshr <8 x i16> %i.is, splat (i16 8)
  %i.jg = lshr <8 x i16> %i.iv, splat (i16 8)
  %i.jh = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.jf, <8 x i16> %i.jg)
  store <16 x i8> %i.ik, ptr %.034120, align 1, !tbaa !9, !alias.scope !53
  %i.ji = getelementptr inbounds nuw i8, ptr %.034120, i64 16
  store <16 x i8> %i.ir, ptr %i.ji, align 1, !tbaa !9, !alias.scope !53
  %i.jj = getelementptr inbounds nuw i8, ptr %.034120, i64 32
  store <16 x i8> %i.iy, ptr %i.jj, align 1, !tbaa !9, !alias.scope !53
  %i.jk = getelementptr inbounds nuw i8, ptr %.034120, i64 48
  store <16 x i8> %i.jb, ptr %i.jk, align 1, !tbaa !9, !alias.scope !53
  %i.jl = getelementptr inbounds nuw i8, ptr %.034120, i64 64
  store <16 x i8> %i.je, ptr %i.jl, align 1, !tbaa !9, !alias.scope !53
  %i.jm = getelementptr inbounds nuw i8, ptr %.034120, i64 80
  store <16 x i8> %i.jh, ptr %i.jm, align 1, !tbaa !9, !alias.scope !53
  %i.jn = getelementptr inbounds nuw i8, ptr %.032121, i64 32 ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %.038118, i64 16 ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %.036119, i64 16 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.034120, i64 96 ; 2 uses
  %i.jr = add nuw nsw i32 %i.c, 32                ; 2 uses
  %.not = icmp sgt i32 %i.jr, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !51

.lr.ph131:                                        ; preds = %.preheader, %.lr.ph131
  %.1130 = phi i32 [ %i.lp, %.lr.ph131 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.133129 = phi ptr [ %i.lk, %.lr.ph131 ], [ %.032.lcssa, %.preheader ] ; 2 uses
  %.135128 = phi ptr [ %i.lj, %.lr.ph131 ], [ %.034.lcssa, %.preheader ] ; 4 uses
  %.137127 = phi ptr [ %i.lo, %.lr.ph131 ], [ %.036.lcssa, %.preheader ] ; 2 uses
  %.139126 = phi ptr [ %i.ln, %.lr.ph131 ], [ %.038.lcssa, %.preheader ] ; 2 uses
  %i.js = load i8, ptr %.133129, align 1, !tbaa !9
  %i.jt = zext i8 %i.js to i32
  %i.ju = load i8, ptr %.139126, align 1, !tbaa !9
  %i.jv = zext i8 %i.ju to i32                    ; 2 uses
  %i.jw = load i8, ptr %.137127, align 1, !tbaa !9
  %i.jx = zext i8 %i.jw to i32                    ; 2 uses
  %i.jy = mul nuw nsw i32 %i.jt, 19077
  %i.jz = lshr i32 %i.jy, 8                       ; 3 uses
  %i.ka = mul nuw nsw i32 %i.jv, 33050
  %i.kb = lshr i32 %i.ka, 8
  %i.kc = add nuw nsw i32 %i.kb, %i.jz            ; 2 uses
  %i.kd = add nsw i32 %i.kc, -17685               ; 2 uses
  %i.ke = icmp ult i32 %i.kd, 16384
  %i.kf = lshr i32 %i.kd, 6
  %i.kg = icmp samesign ult i32 %i.kc, 17685
  %i.kh = select i1 %i.kg, i32 0, i32 255
  %i.ki = select i1 %i.ke, i32 %i.kf, i32 %i.kh
  %i.kj = trunc i32 %i.ki to i8
  store i8 %i.kj, ptr %.135128, align 1, !tbaa !9
  %i.kk = mul nuw nsw i32 %i.jv, 6419
  %i.kl = lshr i32 %i.kk, 8
  %i.km = mul nuw nsw i32 %i.jx, 13320
  %i.kn = lshr i32 %i.km, 8
  %i.ko = add nuw nsw i32 %i.kl, %i.kn
  %i.kp = sub nsw i32 %i.jz, %i.ko                ; 2 uses
  %i.kq = add nsw i32 %i.kp, 8708                 ; 2 uses
  %i.kr = icmp ult i32 %i.kq, 16384
  %i.ks = lshr i32 %i.kq, 6
  %i.kt = icmp slt i32 %i.kp, -8708
  %i.ku = select i1 %i.kt, i32 0, i32 255
  %i.kv = select i1 %i.kr, i32 %i.ks, i32 %i.ku
  %i.kw = trunc i32 %i.kv to i8
  %i.kx = getelementptr inbounds nuw i8, ptr %.135128, i64 1
  store i8 %i.kw, ptr %i.kx, align 1, !tbaa !9
  %i.ky = mul nuw nsw i32 %i.jx, 26149
  %i.kz = lshr i32 %i.ky, 8
  %i.la = add nuw nsw i32 %i.kz, %i.jz            ; 2 uses
  %i.lb = add nsw i32 %i.la, -14234               ; 2 uses
  %i.lc = icmp ult i32 %i.lb, 16384
  %i.ld = lshr i32 %i.lb, 6
  %i.le = icmp samesign ult i32 %i.la, 14234
  %i.lf = select i1 %i.le, i32 0, i32 255
  %i.lg = select i1 %i.lc, i32 %i.ld, i32 %i.lf
  %i.lh = trunc i32 %i.lg to i8
  %i.li = getelementptr inbounds nuw i8, ptr %.135128, i64 2
  store i8 %i.lh, ptr %i.li, align 1, !tbaa !9
  %i.lj = getelementptr inbounds nuw i8, ptr %.135128, i64 3
  %i.lk = getelementptr inbounds nuw i8, ptr %.133129, i64 1
  %i.ll = and i32 %.1130, 1
  %i.lm = zext nneg i32 %i.ll to i64              ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %.139126, i64 %i.lm
  %i.lo = getelementptr inbounds nuw i8, ptr %.137127, i64 %i.lm
  %i.lp = add nuw nsw i32 %.1130, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.lp, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph131, !llvm.loop !52

._crit_edge:                                      ; preds = %.lr.ph131, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToBgraRow_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %.not46 = icmp slt i32 %4, 8
  br i1 %.not46, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.a = and i32 %4, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.029.lcssa = phi ptr [ %1, %bb.a ], [ %i.am, %.preheader.loopexit ]
  %.027.lcssa = phi ptr [ %2, %bb.a ], [ %i.an, %.preheader.loopexit ]
  %.025.lcssa = phi ptr [ %3, %bb.a ], [ %i.ao, %.preheader.loopexit ]
  %.023.lcssa = phi ptr [ %0, %bb.a ], [ %i.al, %.preheader.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.a, %.preheader.loopexit ] ; 2 uses
  %i.b = icmp slt i32 %.0.lcssa, %4
  br i1 %i.b, label %.lr.ph60, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i32 [ %i.ap, %.lr.ph ], [ 8, %bb.a ]
  %.02350 = phi ptr [ %i.al, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.02549 = phi ptr [ %i.ao, %.lr.ph ], [ %3, %bb.a ] ; 3 uses
  %.02748 = phi ptr [ %i.an, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02947 = phi ptr [ %i.am, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.023.val = load i64, ptr %.02350, align 1, !tbaa !9
  %.029.val = load i32, ptr %.02947, align 1
  %.027.val = load i32, ptr %.02748, align 1
  %i.d = insertelement <2 x i64> poison, i64 %.023.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %5 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.f = insertelement <4 x i32> poison, i32 %.029.val, i64 0
  %i.g = bitcast <4 x i32> %i.f to <16 x i8>
  %6 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.g, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.h = bitcast <16 x i8> %6 to <8 x i16>
  %i.i = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.j = insertelement <4 x i32> poison, i32 %.027.val, i64 0
  %i.k = bitcast <4 x i32> %i.j to <16 x i8>
  %7 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.k, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.l = bitcast <16 x i8> %7 to <8 x i16>
  %i.m = shufflevector <8 x i16> %i.l, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.n = bitcast <16 x i8> %5 to <8 x i16>
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.n, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.p = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 26149))
  %i.q = add nsw <8 x i16> %i.o, splat (i16 -14234)
  %i.r = add <8 x i16> %i.q, %i.p
  %i.s = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 6419))
  %i.t = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 13320))
  %.neg42 = add nuw <8 x i16> %i.o, splat (i16 8708)
  %i.u = add nuw nsw <8 x i16> %i.s, %i.t
  %i.v = sub <8 x i16> %.neg42, %i.u
  %i.w = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 -32486))
  %i.x = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.w, <8 x i16> %i.o)
  %i.y = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.x, <8 x i16> splat (i16 17685))
  %i.z = ashr <8 x i16> %i.r, splat (i16 6)
  %i.aa = ashr <8 x i16> %i.v, splat (i16 6)
  %i.ab = lshr <8 x i16> %i.y, splat (i16 6)
  %i.ac = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.ab, <8 x i16> %i.z) ; 2 uses
  %i.ad = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.aa, <8 x i16> splat (i16 255)) ; 2 uses
  %i.ae = shufflevector <16 x i8> %i.ac, <16 x i8> %i.ad, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.af = shufflevector <16 x i8> %i.ac, <16 x i8> %i.ad, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ag = bitcast <16 x i8> %i.ae to <8 x i16>    ; 2 uses
  %i.ah = bitcast <16 x i8> %i.af to <8 x i16>    ; 2 uses
  %i.ai = shufflevector <8 x i16> %i.ag, <8 x i16> %i.ah, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aj = shufflevector <8 x i16> %i.ag, <8 x i16> %i.ah, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ai, ptr %.02549, align 1, !tbaa !9, !alias.scope !58
  %i.ak = getelementptr inbounds nuw i8, ptr %.02549, i64 16
  store <8 x i16> %i.aj, ptr %i.ak, align 1, !tbaa !9, !alias.scope !58
  %i.al = getelementptr inbounds nuw i8, ptr %.02350, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02947, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02748, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02549, i64 32 ; 2 uses
  %i.ap = add nuw nsw i32 %i.c, 8                 ; 2 uses
  %.not = icmp sgt i32 %i.ap, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !56

.lr.ph60:                                         ; preds = %.preheader, %.lr.ph60
  %.159 = phi i32 [ %i.co, %.lr.ph60 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.12458 = phi ptr [ %i.cj, %.lr.ph60 ], [ %.023.lcssa, %.preheader ] ; 2 uses
  %.12657 = phi ptr [ %i.ci, %.lr.ph60 ], [ %.025.lcssa, %.preheader ] ; 5 uses
  %.12856 = phi ptr [ %i.cn, %.lr.ph60 ], [ %.027.lcssa, %.preheader ] ; 2 uses
  %.13055 = phi ptr [ %i.cm, %.lr.ph60 ], [ %.029.lcssa, %.preheader ] ; 2 uses
  %i.aq = load i8, ptr %.12458, align 1, !tbaa !9
  %i.ar = load i8, ptr %.13055, align 1, !tbaa !9
  %i.as = load i8, ptr %.12856, align 1, !tbaa !9
  %i.at = zext i8 %i.aq to i32
  %i.au = zext i8 %i.ar to i32                    ; 2 uses
  %i.av = zext i8 %i.as to i32                    ; 2 uses
  %i.aw = mul nuw nsw i32 %i.at, 19077
  %i.ax = lshr i32 %i.aw, 8                       ; 3 uses
  %i.ay = mul nuw nsw i32 %i.au, 33050
  %i.az = lshr i32 %i.ay, 8
  %i.ba = add nuw nsw i32 %i.az, %i.ax            ; 2 uses
  %i.bb = add nsw i32 %i.ba, -17685               ; 2 uses
  %i.bc = icmp ult i32 %i.bb, 16384
  %i.bd = lshr i32 %i.bb, 6
  %i.be = icmp samesign ult i32 %i.ba, 17685
  %i.bf = select i1 %i.be, i32 0, i32 255
  %i.bg = select i1 %i.bc, i32 %i.bd, i32 %i.bf
  %i.bh = trunc i32 %i.bg to i8
  store i8 %i.bh, ptr %.12657, align 1, !tbaa !9
  %i.bi = mul nuw nsw i32 %i.au, 6419
  %i.bj = lshr i32 %i.bi, 8
  %i.bk = mul nuw nsw i32 %i.av, 13320
  %i.bl = lshr i32 %i.bk, 8
  %i.bm = add nuw nsw i32 %i.bj, %i.bl
  %i.bn = sub nsw i32 %i.ax, %i.bm                ; 2 uses
  %i.bo = add nsw i32 %i.bn, 8708                 ; 2 uses
  %i.bp = icmp ult i32 %i.bo, 16384
  %i.bq = lshr i32 %i.bo, 6
  %i.br = icmp slt i32 %i.bn, -8708
  %i.bs = select i1 %i.br, i32 0, i32 255
  %i.bt = select i1 %i.bp, i32 %i.bq, i32 %i.bs
  %i.bu = trunc i32 %i.bt to i8
  %i.bv = getelementptr inbounds nuw i8, ptr %.12657, i64 1
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !9
  %i.bw = mul nuw nsw i32 %i.av, 26149
  %i.bx = lshr i32 %i.bw, 8
  %i.by = add nuw nsw i32 %i.bx, %i.ax            ; 2 uses
  %i.bz = add nsw i32 %i.by, -14234               ; 2 uses
  %i.ca = icmp ult i32 %i.bz, 16384
  %i.cb = lshr i32 %i.bz, 6
  %i.cc = icmp samesign ult i32 %i.by, 14234
  %i.cd = select i1 %i.cc, i32 0, i32 255
  %i.ce = select i1 %i.ca, i32 %i.cb, i32 %i.cd
  %i.cf = trunc i32 %i.ce to i8
  %i.cg = getelementptr inbounds nuw i8, ptr %.12657, i64 2
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %.12657, i64 3
  store i8 -1, ptr %i.ch, align 1, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %.12657, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.12458, i64 1
  %i.ck = and i32 %.159, 1
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.13055, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.12856, i64 %i.cl
  %i.co = add nuw nsw i32 %.159, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !57

._crit_edge:                                      ; preds = %.lr.ph60, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @YuvToArgbRow_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %.not46 = icmp slt i32 %4, 8
  br i1 %.not46, label %.preheader, label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.a = and i32 %4, 2147483640
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.029.lcssa = phi ptr [ %1, %bb.a ], [ %i.am, %.preheader.loopexit ]
  %.027.lcssa = phi ptr [ %2, %bb.a ], [ %i.an, %.preheader.loopexit ]
  %.025.lcssa = phi ptr [ %3, %bb.a ], [ %i.ao, %.preheader.loopexit ]
  %.023.lcssa = phi ptr [ %0, %bb.a ], [ %i.al, %.preheader.loopexit ]
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.a, %.preheader.loopexit ] ; 2 uses
  %i.b = icmp slt i32 %.0.lcssa, %4
  br i1 %i.b, label %.lr.ph60, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i32 [ %i.ap, %.lr.ph ], [ 8, %bb.a ]
  %.02350 = phi ptr [ %i.al, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.02549 = phi ptr [ %i.ao, %.lr.ph ], [ %3, %bb.a ] ; 3 uses
  %.02748 = phi ptr [ %i.an, %.lr.ph ], [ %2, %bb.a ] ; 2 uses
  %.02947 = phi ptr [ %i.am, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.023.val = load i64, ptr %.02350, align 1, !tbaa !9
  %.029.val = load i32, ptr %.02947, align 1
  %.027.val = load i32, ptr %.02748, align 1
  %i.d = insertelement <2 x i64> poison, i64 %.023.val, i64 0
  %i.e = bitcast <2 x i64> %i.d to <16 x i8>
  %5 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.e, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.f = insertelement <4 x i32> poison, i32 %.029.val, i64 0
  %i.g = bitcast <4 x i32> %i.f to <16 x i8>
  %6 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.g, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.h = bitcast <16 x i8> %6 to <8 x i16>
  %i.i = shufflevector <8 x i16> %i.h, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.j = insertelement <4 x i32> poison, i32 %.027.val, i64 0
  %i.k = bitcast <4 x i32> %i.j to <16 x i8>
  %7 = shufflevector <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i8> %i.k, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.l = bitcast <16 x i8> %7 to <8 x i16>
  %i.m = shufflevector <8 x i16> %i.l, <8 x i16> poison, <8 x i32> <i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3> ; 2 uses
  %i.n = bitcast <16 x i8> %5 to <8 x i16>
  %i.o = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.n, <8 x i16> splat (i16 19077)) ; 3 uses
  %i.p = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 26149))
  %i.q = add nsw <8 x i16> %i.o, splat (i16 -14234)
  %i.r = add <8 x i16> %i.q, %i.p
  %i.s = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 6419))
  %i.t = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.m, <8 x i16> splat (i16 13320))
  %.neg42 = add nuw <8 x i16> %i.o, splat (i16 8708)
  %i.u = add nuw nsw <8 x i16> %i.s, %i.t
  %i.v = sub <8 x i16> %.neg42, %i.u
  %i.w = tail call <8 x i16> @llvm.umulh.v8i16(<8 x i16> %i.i, <8 x i16> splat (i16 -32486))
  %i.x = tail call <8 x i16> @llvm.uadd.sat.v8i16(<8 x i16> %i.w, <8 x i16> %i.o)
  %i.y = tail call <8 x i16> @llvm.usub.sat.v8i16(<8 x i16> %i.x, <8 x i16> splat (i16 17685))
  %i.z = ashr <8 x i16> %i.r, splat (i16 6)
  %i.aa = ashr <8 x i16> %i.v, splat (i16 6)
  %i.ab = lshr <8 x i16> %i.y, splat (i16 6)
  %i.ac = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> splat (i16 255), <8 x i16> %i.aa) ; 2 uses
  %i.ad = tail call <16 x i8> @llvm.x86.sse2.packuswb.128(<8 x i16> %i.z, <8 x i16> %i.ab) ; 2 uses
  %i.ae = shufflevector <16 x i8> %i.ac, <16 x i8> %i.ad, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.af = shufflevector <16 x i8> %i.ac, <16 x i8> %i.ad, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
  %i.ag = bitcast <16 x i8> %i.ae to <8 x i16>    ; 2 uses
  %i.ah = bitcast <16 x i8> %i.af to <8 x i16>    ; 2 uses
  %i.ai = shufflevector <8 x i16> %i.ag, <8 x i16> %i.ah, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.aj = shufflevector <8 x i16> %i.ag, <8 x i16> %i.ah, <8 x i32> <i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <8 x i16> %i.ai, ptr %.02549, align 1, !tbaa !9, !alias.scope !63
  %i.ak = getelementptr inbounds nuw i8, ptr %.02549, i64 16
  store <8 x i16> %i.aj, ptr %i.ak, align 1, !tbaa !9, !alias.scope !63
  %i.al = getelementptr inbounds nuw i8, ptr %.02350, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.02947, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02748, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02549, i64 32 ; 2 uses
  %i.ap = add nuw nsw i32 %i.c, 8                 ; 2 uses
  %.not = icmp sgt i32 %i.ap, %4
  br i1 %.not, label %.preheader.loopexit, label %.lr.ph, !llvm.loop !61

.lr.ph60:                                         ; preds = %.preheader, %.lr.ph60
  %.159 = phi i32 [ %i.co, %.lr.ph60 ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %.12458 = phi ptr [ %i.cj, %.lr.ph60 ], [ %.023.lcssa, %.preheader ] ; 2 uses
  %.12657 = phi ptr [ %i.ci, %.lr.ph60 ], [ %.025.lcssa, %.preheader ] ; 5 uses
  %.12856 = phi ptr [ %i.cn, %.lr.ph60 ], [ %.027.lcssa, %.preheader ] ; 2 uses
  %.13055 = phi ptr [ %i.cm, %.lr.ph60 ], [ %.029.lcssa, %.preheader ] ; 2 uses
  %i.aq = load i8, ptr %.12458, align 1, !tbaa !9
  %i.ar = load i8, ptr %.13055, align 1, !tbaa !9
  %i.as = load i8, ptr %.12856, align 1, !tbaa !9
  store i8 -1, ptr %.12657, align 1, !tbaa !9
  %i.at = zext i8 %i.aq to i32
  %i.au = zext i8 %i.ar to i32                    ; 2 uses
  %i.av = zext i8 %i.as to i32                    ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.12657, i64 1
  %i.ax = mul nuw nsw i32 %i.at, 19077
  %i.ay = lshr i32 %i.ax, 8                       ; 3 uses
  %i.az = mul nuw nsw i32 %i.av, 26149
  %i.ba = lshr i32 %i.az, 8
  %i.bb = add nuw nsw i32 %i.ba, %i.ay            ; 2 uses
  %i.bc = add nsw i32 %i.bb, -14234               ; 2 uses
  %i.bd = icmp ult i32 %i.bc, 16384
  %i.be = lshr i32 %i.bc, 6
  %i.bf = icmp samesign ult i32 %i.bb, 14234
  %i.bg = select i1 %i.bf, i32 0, i32 255
  %i.bh = select i1 %i.bd, i32 %i.be, i32 %i.bg
  %i.bi = trunc i32 %i.bh to i8
  store i8 %i.bi, ptr %i.aw, align 1, !tbaa !9
  %i.bj = mul nuw nsw i32 %i.au, 6419
  %i.bk = lshr i32 %i.bj, 8
  %i.bl = mul nuw nsw i32 %i.av, 13320
  %i.bm = lshr i32 %i.bl, 8
  %i.bn = add nuw nsw i32 %i.bk, %i.bm
  %i.bo = sub nsw i32 %i.ay, %i.bn                ; 2 uses
  %i.bp = add nsw i32 %i.bo, 8708                 ; 2 uses
  %i.bq = icmp ult i32 %i.bp, 16384
  %i.br = lshr i32 %i.bp, 6
  %i.bs = icmp slt i32 %i.bo, -8708
  %i.bt = select i1 %i.bs, i32 0, i32 255
  %i.bu = select i1 %i.bq, i32 %i.br, i32 %i.bt
  %i.bv = trunc i32 %i.bu to i8
  %i.bw = getelementptr inbounds nuw i8, ptr %.12657, i64 2
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !9
  %i.bx = mul nuw nsw i32 %i.au, 33050
  %i.by = lshr i32 %i.bx, 8
  %i.bz = add nuw nsw i32 %i.by, %i.ay            ; 2 uses
  %i.ca = add nsw i32 %i.bz, -17685               ; 2 uses
  %i.cb = icmp ult i32 %i.ca, 16384
  %i.cc = lshr i32 %i.ca, 6
  %i.cd = icmp samesign ult i32 %i.bz, 17685
  %i.ce = select i1 %i.cd, i32 0, i32 255
  %i.cf = select i1 %i.cb, i32 %i.cc, i32 %i.ce
  %i.cg = trunc i32 %i.cf to i8
  %i.ch = getelementptr inbounds nuw i8, ptr %.12657, i64 3
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !9
  %i.ci = getelementptr inbounds nuw i8, ptr %.12657, i64 4
  %i.cj = getelementptr inbounds nuw i8, ptr %.12458, i64 1
  %i.ck = and i32 %.159, 1
  %i.cl = zext nneg i32 %i.ck to i64              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.13055, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.12856, i64 %i.cl
  %i.co = add nuw nsw i32 %.159, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.co, %4
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph60, !llvm.loop !62

._crit_edge:                                      ; preds = %.lr.ph60, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @WebPInitConvertARGBToYUVSSE2() local_unnamed_addr #3 {
bb.a:
  store ptr @ConvertARGBToY_SSE2, ptr @WebPConvertARGBToY, align 8, !tbaa !12
  store ptr @ConvertARGBToUV_SSE2, ptr @WebPConvertARGBToUV, align 8, !tbaa !12
  store ptr @ConvertRGBToY_SSE2, ptr @WebPConvertRGBToY, align 8, !tbaa !12
  store ptr @ConvertBGRToY_SSE2, ptr @WebPConvertBGRToY, align 8, !tbaa !12
  store ptr @ConvertRGBA32ToUV_SSE2, ptr @WebPConvertRGBA32ToUV, align 8, !tbaa !12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @ConvertARGBToY_SSE2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp sgt i32 %2, 15
  br i1 %i.a, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = and i32 %2, 2147483632
  %i.c = zext nneg i32 %i.b to i64
  br label %.lr.ph

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.d = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.preheader.loopexit ] ; 2 uses
  %i.e = icmp slt i32 %.0.lcssa, %2
  br i1 %i.e, label %.lr.ph33.preheader, label %._crit_edge

.lr.ph33.preheader:                               ; preds = %.preheader
  %i.f = zext i32 %.0.lcssa to i64                ; 4 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %i.g = sub nsw i64 %wide.trip.count, %i.f       ; 3 uses
  %min.iters.check = icmp ult i64 %i.g, 4
  br i1 %min.iters.check, label %.lr.ph33.preheader38, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph33.preheader
  %n.vec = and i64 %i.g, -4                       ; 3 uses
  %i.h = add nsw i64 %n.vec, %i.f
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.i = add nuw i64 %index, %i.f                 ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.i
  %wide.load = load <4 x i32>, ptr %i.j, align 4, !tbaa !69 ; 3 uses
  %i.k = lshr <4 x i32> %wide.load, splat (i32 16)
  %i.l = and <4 x i32> %i.k, splat (i32 255)
  %i.m = lshr <4 x i32> %wide.load, splat (i32 8)
  %i.n = and <4 x i32> %i.m, splat (i32 255)
  %i.o = and <4 x i32> %wide.load, splat (i32 255)
  %i.p = mul nuw nsw <4 x i32> %i.l, splat (i32 16839)
  %i.q = mul nuw nsw <4 x i32> %i.n, splat (i32 33059)
  %i.r = mul nuw nsw <4 x i32> %i.o, splat (i32 6420)
  %i.s = add nuw nsw <4 x i32> %i.r, splat (i32 1081344)
  %i.t = add nuw nsw <4 x i32> %i.s, %i.p
  %i.u = add nuw nsw <4 x i32> %i.t, %i.q
  %i.v = lshr <4 x i32> %i.u, splat (i32 16)
  %i.w = trunc nuw <4 x i32> %i.v to <4 x i8>
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.i
  store <4 x i8> %i.w, ptr %i.x, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph33.preheader38

.lr.ph33.preheader38:                             ; preds = %.lr.ph33.preheader, %middle.block
  %indvars.iv35.ph = phi i64 [ %i.f, %.lr.ph33.preheader ], [ %i.h, %middle.block ]
  br label %.lr.ph33

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.aa = load <32 x i8>, ptr %i.z, align 1, !tbaa !9, !alias.scope !72 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32
  %i.ac = load <32 x i8>, ptr %i.ab, align 1, !tbaa !9, !alias.scope !72 ; 2 uses
  %i.ad = shufflevector <32 x i8> %i.aa, <32 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ae = bitcast <16 x i8> %i.ad to <2 x i64>    ; 2 uses
  %i.af = shufflevector <32 x i8> %i.aa, <32 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ag = bitcast <16 x i8> %i.af to <2 x i64>
  %i.ah = shufflevector <32 x i8> %i.ac, <32 x i8> poison, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29>
  %i.ai = bitcast <16 x i8> %i.ah to <2 x i64>    ; 2 uses
  %i.aj = shufflevector <32 x i8> %i.ac, <32 x i8> poison, <16 x i32> <i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ak = bitcast <16 x i8> %i.aj to <2 x i64>
  %i.al = shufflevector <2 x i64> %i.ag, <2 x i64> %i.ak, <2 x i32> <i32 0, i32 2>
  %i.am = shufflevector <2 x i64> %i.ae, <2 x i64> %i.ai, <2 x i32> <i32 1, i32 3>
  %i.an = shufflevector <2 x i64> %i.ae, <2 x i64> %i.ai, <2 x i32> <i32 0, i32 2>
  %i.ao = bitcast <2 x i64> %i.al to <16 x i8>    ; 2 uses
  %i.ap = shufflevector <16 x i8> %i.ao, <16 x i8> <i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison>, <16 x i32> <i32 0, i32 16, i32 1, i32 17, i32 2, i32 18, i32 3, i32 19, i32 4, i32 20, i32 5, i32 21, i32 6, i32 22, i32 7, i32 23>
  %i.aq = shufflevector <16 x i8> %i.ao, <16 x i8> <i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, <16 x i32> <i32 8, i32 24, i32 9, i32 25, i32 10, i32 26, i32 11, i32 27, i32 12, i32 28, i32 13, i32 29, i32 14, i32 30, i32 15, i32 31>
end_hunk_0
