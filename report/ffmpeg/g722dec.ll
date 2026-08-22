Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/g722dec?download=true
inline.NumInlined: 5
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { ptr }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { ptr, ptr, ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"g722\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"G.722 ADPCM\00", align 1
@ff_adpcm_g722_decoder = local_unnamed_addr constant { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr }, i8, i8, i8, i8, i32, ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.0 } { { ptr, ptr, i32, i32, i32, i8, [3 x i8], ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, i32 69660, i32 1026, i8 0, [3 x i8] zeroinitializer, ptr @g722_decoder_class, ptr null, ptr null }, i8 0, i8 0, i8 0, i8 1, i32 2232, ptr null, ptr null, ptr null, ptr @g722_decode_init, %union.anon { ptr @g722_decode_frame }, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %union.anon.0 zeroinitializer }, align 8
@.str.2 = private unnamed_addr constant [13 x i8] c"g722 decoder\00", align 1
@g722_decoder_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [18 x i8] c"bits_per_codeword\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Bits per G722 codeword\00", align 1
@options = internal constant [2 x { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr }] [{ ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 8, i32 2, %union.anon.2 { i64 8 }, double 6.000000e+00, double 8.000000e+00, i32 10, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer], align 16
@low_inv_quants = internal unnamed_addr constant [3 x ptr] [ptr @ff_g722_low_inv_quant6, ptr @low_inv_quant5, ptr @ff_g722_low_inv_quant4], align 16
@ff_g722_high_inv_quant = external local_unnamed_addr constant [4 x i16], align 2
@ff_g722_low_inv_quant6 = external constant [64 x i16], align 16
@low_inv_quant5 = internal constant [32 x i16] [i16 -35, i16 -35, i16 -2919, i16 -2195, i16 -1765, i16 -1458, i16 -1219, i16 -1023, i16 -858, i16 -714, i16 -587, i16 -473, i16 -370, i16 -276, i16 -190, i16 -110, i16 2919, i16 2195, i16 1765, i16 1458, i16 1219, i16 1023, i16 858, i16 714, i16 587, i16 473, i16 370, i16 276, i16 190, i16 110, i16 35, i16 -35], align 16
@ff_g722_low_inv_quant4 = external constant [16 x i16], align 16

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @g722_decode_init(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 352
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.c) #5
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  store i32 1, ptr %.sroa.2.0..sroa_idx, align 4, !tbaa !29
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 360
  store i64 4, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !30
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr null, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 348
  store <2 x i32> splat (i32 1), ptr %i.d, align 4, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 16000, ptr %i.e, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2118
  store i16 8, ptr %i.g, align 2, !tbaa !33
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 2174
  store i16 2, ptr %i.h, align 2, !tbaa !33
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2060
  store i32 22, ptr %i.i, align 4, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 2224
  tail call void @ff_g722dsp_init(ptr noundef nonnull %i.j) #5
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @g722_decode_frame(ptr noundef %0, ptr noundef initializes((112, 116)) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39   ; 4 uses
  %i.f = sub nsw i32 8, %i.e                      ; 2 uses
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds [8 x i8], ptr @low_inv_quants, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !41
  %i.l = shl nsw i32 %i.k, 1
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 112
  store i32 %i.l, ptr %i.m, align 8, !tbaa !43
  %i.n = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #5 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = load ptr, ptr %1, align 8, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !49   ; 3 uses
  %i.s = load i32, ptr %i.j, align 8, !tbaa !41   ; 3 uses
  %or.cond.i = icmp ugt i32 %i.s, 268435455
  %i.t = shl nuw nsw i32 %i.s, 3
  %i.u = select i1 %or.cond.i, i32 -8, i32 %i.t   ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.u, 2147483135
  %i.v = icmp ne ptr %i.r, null
  %or.cond3.i.i = and i1 %i.v, %or.cond.i.i       ; 2 uses
  %i.w = add nuw nsw i32 %i.u, 8
  %i.x = select i1 %or.cond3.i.i, i32 %i.w, i32 8 ; 3 uses
  br i1 %or.cond3.i.i, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.b
  %i.y = icmp sgt i32 %i.s, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.z = add i32 %i.e, -2
  %i.aa = sub i32 34, %i.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 2064 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 2118
  %i.ad = add i32 %i.e, -6
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 2120 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 2174
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 12 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 2060 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 2224
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %.067 = phi i32 [ 0, %.lr.ph ], [ %i.de, %bb.e ]
  %.05266 = phi ptr [ %i.p, %.lr.ph ], [ %i.ct, %bb.e ] ; 2 uses
  %.sroa.5.065 = phi i32 [ 0, %.lr.ph ], [ %i.be, %bb.e ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.aj = lshr i32 %.sroa.5.065, 3
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 1, !tbaa !30
  %i.an = call i32 @llvm.bswap.i32(i32 %i.am)
  %i.ao = and i32 %.sroa.5.065, 7
  %i.ap = shl i32 %i.an, %i.ao
  %i.aq = lshr i32 %i.ap, 30                      ; 2 uses
  %i.ar = add i32 %.sroa.5.065, 2
  %i.as = call i32 @llvm.umin.i32(i32 %i.x, i32 %i.ar) ; 3 uses
  %i.at = lshr i32 %i.as, 3
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 1, !tbaa !30
  %i.ax = call i32 @llvm.bswap.i32(i32 %i.aw)
  %i.ay = and i32 %i.as, 7
  %i.az = shl i32 %i.ax, %i.ay
  %i.ba = lshr i32 %i.az, %i.aa                   ; 2 uses
  %i.bb = add i32 %i.z, %i.as
  %i.bc = call i32 @llvm.umin.i32(i32 %i.x, i32 %i.bb)
  %i.bd = add i32 %i.bc, %i.f
  %i.be = call i32 @llvm.umin.i32(i32 %i.x, i32 %i.bd)
  %i.bf = load i16, ptr %i.ac, align 2, !tbaa !33
  %i.bg = sext i16 %i.bf to i32
  %i.bh = sext i32 %i.ba to i64
  %i.bi = getelementptr inbounds [2 x i8], ptr %i.i, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !50
  %i.bk = sext i16 %i.bj to i32
  %i.bl = mul nsw i32 %i.bk, %i.bg
  %i.bm = ashr i32 %i.bl, 10
  %i.bn = load i16, ptr %i.ab, align 8, !tbaa !51
  %i.bo = sext i16 %i.bn to i32
  %i.bp = add nsw i32 %i.bm, %i.bo
  %i.bq = call i32 @llvm.smax.i32(i32 %i.bp, i32 -16384)
  %.0.i57 = call i32 @llvm.smin.i32(i32 %i.bq, i32 16383) ; 2 uses
  %i.br = ashr i32 %i.ba, %i.ad
  call void @ff_g722_update_low_predictor(ptr noundef nonnull %i.ab, i32 noundef %i.br) #5
  %i.bs = load i16, ptr %i.af, align 2, !tbaa !33
  %i.bt = sext i16 %i.bs to i32
  %i.bu = zext nneg i32 %i.aq to i64
  %i.bv = getelementptr inbounds nuw [2 x i8], ptr @ff_g722_high_inv_quant, i64 %i.bu
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !50
  %i.bx = sext i16 %i.bw to i32
  %i.by = mul nsw i32 %i.bx, %i.bt
  %i.bz = ashr i32 %i.by, 10                      ; 2 uses
  %i.ca = load i16, ptr %i.ae, align 8, !tbaa !51
  %i.cb = sext i16 %i.ca to i32
  %i.cc = add nsw i32 %i.bz, %i.cb
  %i.cd = call i32 @llvm.smax.i32(i32 %i.cc, i32 -16384)
  %.0.i = call i32 @llvm.smin.i32(i32 %i.cd, i32 16383) ; 2 uses
  call void @ff_g722_update_high_predictor(ptr noundef nonnull %i.ae, i32 noundef %i.bz, i32 noundef %i.aq) #5
  %i.ce = add nsw i32 %.0.i, %.0.i57
  %i.cf = trunc nsw i32 %i.ce to i16
  %i.cg = load i32, ptr %i.ah, align 4, !tbaa !36 ; 3 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [2 x i8], ptr %i.ag, i64 %i.ch
  store i16 %i.cf, ptr %i.ci, align 2, !tbaa !50
  %i.cj = sub nsw i32 %.0.i57, %.0.i
  %i.ck = trunc nsw i32 %i.cj to i16
  %i.cl = add nsw i32 %i.cg, 2                    ; 2 uses
  store i32 %i.cl, ptr %i.ah, align 4, !tbaa !36
  %i.cm = sext i32 %i.cg to i64
  %i.cn = getelementptr [2 x i8], ptr %i.ag, i64 %i.cm
  %i.co = getelementptr i8, ptr %i.cn, i64 2
  store i16 %i.ck, ptr %i.co, align 2, !tbaa !50
  %i.cp = load ptr, ptr %i.ai, align 8, !tbaa !52
  %i.cq = sext i32 %i.cl to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %i.ag, i64 %i.cq
  %i.cs = getelementptr inbounds i8, ptr %i.cr, i64 -48
  call void %i.cp(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.a) #5
  %i.ct = getelementptr inbounds nuw i8, ptr %.05266, i64 4
  %i.cu = load <2 x i32>, ptr %i.a, align 8, !tbaa !29
  %i.cv = ashr <2 x i32> %i.cu, splat (i32 11)
  %i.cw = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.cv, <2 x i32> splat (i32 -32768))
  %i.cx = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.cw, <2 x i32> splat (i32 32767))
  %i.cy = trunc nsw <2 x i32> %i.cx to <2 x i16>
  store <2 x i16> %i.cy, ptr %.05266, align 2, !tbaa !50
  %i.cz = load i32, ptr %i.ah, align 4, !tbaa !36 ; 2 uses
  %i.da = icmp sgt i32 %i.cz, 1023
  br i1 %i.da, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.db = zext nneg i32 %i.cz to i64
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.db
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -44
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.ag, ptr noundef nonnull align 2 dereferenceable(44) %i.dd, i64 44, i1 false)
  store i32 22, ptr %i.ah, align 4, !tbaa !36
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.de = add nuw nsw i32 %.067, 1                ; 2 uses
  %i.df = load i32, ptr %i.j, align 8, !tbaa !41
  %i.dg = icmp slt i32 %i.de, %i.df
  br i1 %i.dg, label %bb.c, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.e, %.preheader
  store i32 1, ptr %2, align 4, !tbaa !29
  %i.dh = load i32, ptr %i.j, align 8, !tbaa !41
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  %.053 = phi i32 [ %i.dh, %._crit_edge ], [ %i.n, %bb.a ], [ -1094995529, %bb.b ]
  ret i32 %.053
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_channel_layout_uninit(ptr noundef) local_unnamed_addr #2

declare void @ff_g722dsp_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_get_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_g722_update_low_predictor(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ff_g722_update_high_predictor(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #4

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 32}
!10 = !{!"AVCodecContext", !11, i64 0, !6, i64 8, !6, i64 12, !13, i64 16, !6, i64 24, !6, i64 28, !12, i64 32, !14, i64 40, !12, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !16, i64 72, !6, i64 80, !17, i64 84, !17, i64 92, !17, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !17, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !12, i64 184, !12, i64 192, !6, i64 200, !18, i64 204, !18, i64 208, !18, i64 212, !18, i64 216, !18, i64 220, !18, i64 224, !18, i64 228, !18, i64 232, !18, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !19, i64 288, !19, i64 296, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !20, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !12, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !18, i64 428, !18, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !21, i64 456, !15, i64 464, !15, i64 472, !18, i64 480, !18, i64 484, !6, i64 488, !6, i64 492, !16, i64 496, !16, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !22, i64 536, !12, i64 544, !23, i64 552, !23, i64 560, !6, i64 568, !6, i64 572, !7, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !12, i64 672, !12, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !24, i64 728, !16, i64 736, !6, i64 744, !6, i64 748, !16, i64 752, !16, i64 760, !16, i64 768, !25, i64 776, !6, i64 784, !6, i64 788, !15, i64 792, !6, i64 800, !6, i64 804, !15, i64 808, !12, i64 816, !15, i64 824, !26, i64 832, !6, i64 840, !27, i64 848, !6, i64 856, !6, i64 860}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!14 = !{!"p1 _ZTS15AVCodecInternal", !12, i64 0}
!15 = !{!"long", !7, i64 0}
!16 = !{!"p1 omnipotent char", !12, i64 0}
!17 = !{!"AVRational", !6, i64 0, !6, i64 4}
!18 = !{!"float", !7, i64 0}
!19 = !{!"p1 short", !12, i64 0}
!20 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!21 = !{!"p1 _ZTS10RcOverride", !12, i64 0}
!22 = !{!"p1 _ZTS9AVHWAccel", !12, i64 0}
!23 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!24 = !{!"p1 _ZTS17AVCodecDescriptor", !12, i64 0}
!25 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!26 = !{!"p1 int", !12, i64 0}
!27 = !{!"p2 _ZTS15AVFrameSideData", !28, i64 0}
!28 = !{!"any p2 pointer", !12, i64 0}
!29 = !{!6, !6, i64 0}
!30 = !{!7, !7, i64 0}
!31 = !{!12, !12, i64 0}
!32 = !{!10, !6, i64 344}
!33 = !{!34, !35, i64 54}
!34 = !{!"G722Band", !35, i64 0, !6, i64 4, !7, i64 8, !35, i64 10, !7, i64 12, !7, i64 16, !7, i64 40, !35, i64 52, !35, i64 54}
!35 = !{!"short", !7, i64 0}
!36 = !{!37, !6, i64 2060}
!37 = !{!"G722Context", !11, i64 0, !6, i64 8, !7, i64 12, !6, i64 2060, !7, i64 2064, !7, i64 2176, !7, i64 2192, !7, i64 2208, !38, i64 2224}
!38 = !{!"G722DSPContext", !12, i64 0}
!39 = !{!37, !6, i64 8}
!40 = !{!19, !19, i64 0}
!41 = !{!42, !6, i64 32}
!42 = !{!"AVPacket", !23, i64 0, !15, i64 8, !15, i64 16, !16, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !25, i64 48, !6, i64 56, !15, i64 64, !15, i64 72, !12, i64 80, !23, i64 88, !17, i64 96}
!43 = !{!44, !6, i64 112}
!44 = !{!"AVFrame", !7, i64 0, !7, i64 64, !45, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !17, i64 124, !15, i64 136, !15, i64 144, !17, i64 152, !6, i64 160, !12, i64 168, !6, i64 176, !6, i64 180, !7, i64 184, !46, i64 248, !6, i64 256, !27, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !15, i64 304, !47, i64 312, !6, i64 320, !23, i64 328, !23, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !12, i64 376, !20, i64 384, !15, i64 408, !6, i64 416}
!45 = !{!"p2 omnipotent char", !28, i64 0}
!46 = !{!"p2 _ZTS11AVBufferRef", !28, i64 0}
!47 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!48 = !{!16, !16, i64 0}
!49 = !{!42, !16, i64 24}
!50 = !{!35, !35, i64 0}
!51 = !{!34, !35, i64 0}
!52 = !{!37, !12, i64 2224}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
end_hunk_0
