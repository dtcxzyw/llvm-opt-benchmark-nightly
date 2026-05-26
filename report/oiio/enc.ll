inline.NumInlined: 51
inline.NumDeleted: 23
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@VP8DspScan = hidden local_unnamed_addr constant [24 x i32] [i32 0, i32 4, i32 8, i32 12, i32 128, i32 132, i32 136, i32 140, i32 256, i32 260, i32 264, i32 268, i32 384, i32 388, i32 392, i32 396, i32 0, i32 4, i32 128, i32 132, i32 8, i32 12, i32 136, i32 140], align 16
@VP8EncDspInit.VP8EncDspInit_body_last_cpuinfo_used = internal global ptr @VP8EncDspInit.VP8EncDspInit_body_last_cpuinfo_used, align 8
@VP8EncDspInit.VP8EncDspInit_body_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@VP8GetCPUInfo = external local_unnamed_addr global ptr, align 8
@VP8CollectHistogram = hidden local_unnamed_addr global ptr null, align 8
@VP8ITransform = hidden local_unnamed_addr global ptr null, align 8
@VP8FTransform = hidden local_unnamed_addr global ptr null, align 8
@VP8FTransform2 = hidden local_unnamed_addr global ptr null, align 8
@VP8FTransformWHT = hidden local_unnamed_addr global ptr null, align 8
@VP8EncPredLuma4 = hidden local_unnamed_addr global ptr null, align 8
@VP8EncPredLuma16 = hidden local_unnamed_addr global ptr null, align 8
@VP8EncPredChroma8 = hidden local_unnamed_addr global ptr null, align 8
@VP8SSE16x16 = hidden local_unnamed_addr global ptr null, align 8
@VP8SSE8x8 = hidden local_unnamed_addr global ptr null, align 8
@VP8SSE16x8 = hidden local_unnamed_addr global ptr null, align 8
@VP8SSE4x4 = hidden local_unnamed_addr global ptr null, align 8
@VP8TDisto4x4 = hidden local_unnamed_addr global ptr null, align 8
@VP8TDisto16x16 = hidden local_unnamed_addr global ptr null, align 8
@VP8Mean16x4 = hidden local_unnamed_addr global ptr null, align 8
@VP8EncQuantizeBlock = hidden local_unnamed_addr global ptr null, align 8
@VP8EncQuantize2Blocks = hidden local_unnamed_addr global ptr null, align 8
@VP8EncQuantizeBlockWHT = hidden local_unnamed_addr global ptr null, align 8
@VP8Copy4x4 = hidden local_unnamed_addr global ptr null, align 8
@VP8Copy16x8 = hidden local_unnamed_addr global ptr null, align 8
@tables_ok = internal global i32 0, align 4
@clip1 = internal unnamed_addr global [766 x i8] zeroinitializer, align 16
@kZigzag = internal unnamed_addr constant [16 x i8] c"\00\01\04\08\05\02\03\06\09\0C\0D\0A\07\0B\0E\0F", align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @VP8SetHistogramData(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3      ; 2 uses
  %i.b = icmp slt i32 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  %spec.select.1.a = tail call i32 @llvm.smax.i32(i32 %i.a, i32 %i.d)
  %narrow = select i1 %i.e, i1 true, i1 %i.b
  %.114.1 = zext i1 %narrow to i32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3    ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  %spec.select.2.a = tail call i32 @llvm.smax.i32(i32 %spec.select.1.a, i32 %i.g)
  %.2.2 = select i1 %i.h, i32 2, i32 %.114.1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3    ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  %spec.select.3.a = tail call i32 @llvm.smax.i32(i32 %spec.select.2.a, i32 %i.j)
  %.2.3 = select i1 %i.k, i32 3, i32 %.2.2
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 4, !tbaa !3    ; 2 uses
  %i.n = icmp sgt i32 %i.m, 0
  %spec.select.4.a = tail call i32 @llvm.smax.i32(i32 %spec.select.3.a, i32 %i.m)
  %.2.4 = select i1 %i.n, i32 4, i32 %.2.3
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4, !tbaa !3    ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  %spec.select.5.a = tail call i32 @llvm.smax.i32(i32 %spec.select.4.a, i32 %i.p)
  %.2.5 = select i1 %i.q, i32 5, i32 %.2.4
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.t = icmp sgt i32 %i.s, 0
  %spec.select.6.a = tail call i32 @llvm.smax.i32(i32 %spec.select.5.a, i32 %i.s)
  %.2.6 = select i1 %i.t, i32 6, i32 %.2.5
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3    ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  %spec.select.7.a = tail call i32 @llvm.smax.i32(i32 %spec.select.6.a, i32 %i.v)
  %.2.7 = select i1 %i.w, i32 7, i32 %.2.6
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3    ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  %spec.select.8.a = tail call i32 @llvm.smax.i32(i32 %spec.select.7.a, i32 %i.y)
  %.2.8 = select i1 %i.z, i32 8, i32 %.2.7
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !3  ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  %spec.select.9.a = tail call i32 @llvm.smax.i32(i32 %spec.select.8.a, i32 %i.ab)
  %.2.9 = select i1 %i.ac, i32 9, i32 %.2.8
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !3  ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 0
  %spec.select.10.a = tail call i32 @llvm.smax.i32(i32 %spec.select.9.a, i32 %i.ae)
  %.2.10 = select i1 %i.af, i32 10, i32 %.2.9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3  ; 2 uses
  %i.ai = icmp sgt i32 %i.ah, 0
  %spec.select.11.a = tail call i32 @llvm.smax.i32(i32 %spec.select.10.a, i32 %i.ah)
  %.2.11 = select i1 %i.ai, i32 11, i32 %.2.10
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3  ; 2 uses
  %i.al = icmp sgt i32 %i.ak, 0
  %spec.select.12.a = tail call i32 @llvm.smax.i32(i32 %spec.select.11.a, i32 %i.ak)
  %.2.12 = select i1 %i.al, i32 12, i32 %.2.11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3  ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  %spec.select.13.a = tail call i32 @llvm.smax.i32(i32 %spec.select.12.a, i32 %i.an)
  %.2.13 = select i1 %i.ao, i32 13, i32 %.2.12
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !3  ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  %spec.select.14.a = tail call i32 @llvm.smax.i32(i32 %spec.select.13.a, i32 %i.aq)
  %.2.14 = select i1 %i.ar, i32 14, i32 %.2.13
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  %spec.select.15.a = tail call i32 @llvm.smax.i32(i32 %spec.select.14.a, i32 %i.at)
  %.2.15 = select i1 %i.au, i32 15, i32 %.2.14
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !3  ; 2 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  %spec.select.16.a = tail call i32 @llvm.smax.i32(i32 %spec.select.15.a, i32 %i.aw)
  %.2.16 = select i1 %i.ax, i32 16, i32 %.2.15
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !3  ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  %spec.select.17.a = tail call i32 @llvm.smax.i32(i32 %spec.select.16.a, i32 %i.az)
  %.2.17 = select i1 %i.ba, i32 17, i32 %.2.16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !3  ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  %spec.select.18.a = tail call i32 @llvm.smax.i32(i32 %spec.select.17.a, i32 %i.bc)
  %.2.18 = select i1 %i.bd, i32 18, i32 %.2.17
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3  ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  %spec.select.19.a = tail call i32 @llvm.smax.i32(i32 %spec.select.18.a, i32 %i.bf)
  %.2.19 = select i1 %i.bg, i32 19, i32 %.2.18
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3  ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  %spec.select.20.a = tail call i32 @llvm.smax.i32(i32 %spec.select.19.a, i32 %i.bi)
  %.2.20 = select i1 %i.bj, i32 20, i32 %.2.19
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !3  ; 2 uses
  %i.bm = icmp sgt i32 %i.bl, 0
  %spec.select.21.a = tail call i32 @llvm.smax.i32(i32 %spec.select.20.a, i32 %i.bl)
  %.2.21 = select i1 %i.bm, i32 21, i32 %.2.20
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !3  ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  %spec.select.22.a = tail call i32 @llvm.smax.i32(i32 %spec.select.21.a, i32 %i.bo)
  %.2.22 = select i1 %i.bp, i32 22, i32 %.2.21
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3  ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  %spec.select.23.a = tail call i32 @llvm.smax.i32(i32 %spec.select.22.a, i32 %i.br)
  %.2.23 = select i1 %i.bs, i32 23, i32 %.2.22
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3  ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 0
  %spec.select.24.a = tail call i32 @llvm.smax.i32(i32 %spec.select.23.a, i32 %i.bu)
  %.2.24 = select i1 %i.bv, i32 24, i32 %.2.23
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3  ; 2 uses
  %i.by = icmp sgt i32 %i.bx, 0
  %spec.select.25.a = tail call i32 @llvm.smax.i32(i32 %spec.select.24.a, i32 %i.bx)
  %.2.25 = select i1 %i.by, i32 25, i32 %.2.24
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !3  ; 2 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  %spec.select.26.a = tail call i32 @llvm.smax.i32(i32 %spec.select.25.a, i32 %i.ca)
  %.2.26 = select i1 %i.cb, i32 26, i32 %.2.25
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3  ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  %spec.select.27.a = tail call i32 @llvm.smax.i32(i32 %spec.select.26.a, i32 %i.cd)
  %.2.27 = select i1 %i.ce, i32 27, i32 %.2.26
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !3  ; 2 uses
  %i.ch = icmp sgt i32 %i.cg, 0
  %spec.select.28.a = tail call i32 @llvm.smax.i32(i32 %spec.select.27.a, i32 %i.cg)
  %.2.28 = select i1 %i.ch, i32 28, i32 %.2.27
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3  ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  %spec.select.29.a = tail call i32 @llvm.smax.i32(i32 %spec.select.28.a, i32 %i.cj)
  %.2.29 = select i1 %i.ck, i32 29, i32 %.2.28
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !3  ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  %spec.select.30.a = tail call i32 @llvm.smax.i32(i32 %spec.select.29.a, i32 %i.cm)
  %.2.30 = select i1 %i.cn, i32 30, i32 %.2.29
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !3  ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  %spec.select.31.a = tail call i32 @llvm.smax.i32(i32 %spec.select.30.a, i32 %i.cp)
  %spec.select.31 = tail call i32 @llvm.smax.i32(i32 %spec.select.31.a, i32 0)
  %.2.31 = select i1 %i.cq, i32 31, i32 %.2.30
  store i32 %spec.select.31, ptr %1, align 4, !tbaa !7
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.2.31, ptr %i.cr, align 4, !tbaa !9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden void @VP8EncDspInit() local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @VP8EncDspInit.VP8EncDspInit_body_lock) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = load volatile ptr, ptr @VP8EncDspInit.VP8EncDspInit_body_last_cpuinfo_used, align 8, !tbaa !10
  %i.c = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !10
  %.not1 = icmp eq ptr %i.b, %i.c
  br i1 %.not1, label %VP8EncDspInit_body.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @VP8DspInit() #17
  %i.d = load volatile i32, ptr @tables_ok, align 4, !tbaa !3
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %vector.body, label %InitTables.exit.i

vector.body:                                      ; preds = %bb.c, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %bb.c ] ; 2 uses
  %vec.ind = phi <16 x i32> [ %vec.ind.next, %vector.body ], [ <i32 -255, i32 -254, i32 -253, i32 -252, i32 -251, i32 -250, i32 -249, i32 -248, i32 -247, i32 -246, i32 -245, i32 -244, i32 -243, i32 -242, i32 -241, i32 -240>, %bb.c ] ; 2 uses
  %i.e = tail call <16 x i32> @llvm.smax.v16i32(<16 x i32> %vec.ind, <16 x i32> zeroinitializer)
  %i.f = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.e, <16 x i32> splat (i32 255))
  %i.g = trunc nuw <16 x i32> %i.f to <16 x i8>
  %i.h = getelementptr i8, ptr @clip1, i64 %index
  store <16 x i8> %i.g, ptr %i.h, align 16, !tbaa !12
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.i = icmp eq i64 %index.next, 752
  br i1 %i.i, label %vec.epilog.vector.body, label %vector.body, !llvm.loop !13

vec.epilog.vector.body:                           ; preds = %vector.body
  store <4 x i8> splat (i8 -1), ptr getelementptr inbounds nuw (i8, ptr @clip1, i64 752), align 16, !tbaa !12
  store <4 x i8> splat (i8 -1), ptr getelementptr inbounds nuw (i8, ptr @clip1, i64 756), align 4, !tbaa !12
  store <4 x i8> splat (i8 -1), ptr getelementptr inbounds nuw (i8, ptr @clip1, i64 760), align 8, !tbaa !12
  store i8 -1, ptr getelementptr inbounds nuw (i8, ptr @clip1, i64 764), align 4, !tbaa !12
  store i8 -1, ptr getelementptr inbounds nuw (i8, ptr @clip1, i64 765), align 1, !tbaa !12
  store volatile i32 1, ptr @tables_ok, align 4, !tbaa !3
  br label %InitTables.exit.i

InitTables.exit.i:                                ; preds = %vec.epilog.vector.body, %bb.c
  store ptr @ITransform_C, ptr @VP8ITransform, align 8, !tbaa !10
  store ptr @FTransform_C, ptr @VP8FTransform, align 8, !tbaa !10
  store ptr @FTransformWHT_C, ptr @VP8FTransformWHT, align 8, !tbaa !10
  store ptr @Disto4x4_C, ptr @VP8TDisto4x4, align 8, !tbaa !10
  store ptr @Disto16x16_C, ptr @VP8TDisto16x16, align 8, !tbaa !10
  store ptr @CollectHistogram_C, ptr @VP8CollectHistogram, align 8, !tbaa !10
  store ptr @SSE16x16_C, ptr @VP8SSE16x16, align 8, !tbaa !10
  store ptr @SSE16x8_C, ptr @VP8SSE16x8, align 8, !tbaa !10
  store ptr @SSE8x8_C, ptr @VP8SSE8x8, align 8, !tbaa !10
  store ptr @SSE4x4_C, ptr @VP8SSE4x4, align 8, !tbaa !10
  store ptr @QuantizeBlock_C, ptr @VP8EncQuantizeBlock, align 8, !tbaa !10
  store ptr @Quantize2Blocks_C, ptr @VP8EncQuantize2Blocks, align 8, !tbaa !10
  store ptr @QuantizeBlock_C, ptr @VP8EncQuantizeBlockWHT, align 8, !tbaa !10
  store ptr @Intra4Preds_C, ptr @VP8EncPredLuma4, align 8, !tbaa !10
  store ptr @Intra16Preds_C, ptr @VP8EncPredLuma16, align 8, !tbaa !10
  store ptr @FTransform2_C, ptr @VP8FTransform2, align 8, !tbaa !10
  store ptr @IntraChromaPreds_C, ptr @VP8EncPredChroma8, align 8, !tbaa !10
  store ptr @Mean16x4_C, ptr @VP8Mean16x4, align 8, !tbaa !10
  store ptr @Copy4x4_C, ptr @VP8Copy4x4, align 8, !tbaa !10
  store ptr @Copy16x8_C, ptr @VP8Copy16x8, align 8, !tbaa !10
  %i.j = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !10 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %VP8EncDspInit_body.exit, label %bb.d

bb.d:                                             ; preds = %InitTables.exit.i
  %i.k = tail call i32 %i.j(i32 noundef 0) #17, !inline_history !17
  %.not1.i = icmp eq i32 %i.k, 0
  br i1 %.not1.i, label %VP8EncDspInit_body.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @VP8EncDspInitSSE2() #17
  %i.l = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !10
  %i.m = tail call i32 %i.l(i32 noundef 3) #17, !inline_history !17
  %.not2.i = icmp eq i32 %i.m, 0
  br i1 %.not2.i, label %VP8EncDspInit_body.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @VP8EncDspInitSSE41() #17
  br label %VP8EncDspInit_body.exit

VP8EncDspInit_body.exit:                          ; preds = %bb.f, %bb.e, %bb.d, %InitTables.exit.i, %bb.b
  %i.n = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !10
  store volatile ptr %i.n, ptr @VP8EncDspInit.VP8EncDspInit_body_last_cpuinfo_used, align 8, !tbaa !10
  %i.o = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @VP8EncDspInit.VP8EncDspInit_body_lock) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %VP8EncDspInit_body.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare void @VP8DspInit() local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @ITransform_C(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef writeonly captures(none) initializes((0, 4), (32, 36), (64, 68), (96, 100)) %2, i32 noundef %3) #0 {
bb.a:
  tail call fastcc void @ITransformOne(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  tail call fastcc void @ITransformOne(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @FTransform_C(ptr noalias noundef readonly captures(none) %0, ptr noalias noundef readonly captures(none) %1, ptr noalias noundef writeonly captures(none) initializes((0, 32)) %2) #0 {
.preheader.preheader:
  %i.a = load i8, ptr %0, align 1, !tbaa !12
  %i.b = zext i8 %i.a to i32
  %i.c = load i8, ptr %1, align 1, !tbaa !12
  %i.d = zext i8 %i.c to i32
  %i.e = sub nsw i32 %i.b, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  %i.h = zext i8 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !12
  %i.k = zext i8 %i.j to i32
  %i.l = sub nsw i32 %i.h, %i.k                   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !12
  %i.o = zext i8 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.q = load i8, ptr %i.p, align 1, !tbaa !12
  %i.r = zext i8 %i.q to i32
  %i.s = sub nsw i32 %i.o, %i.r                   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.u = load i8, ptr %i.t, align 1, !tbaa !12
  %i.v = zext i8 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.x = load i8, ptr %i.w, align 1, !tbaa !12
  %i.y = zext i8 %i.x to i32
  %i.z = sub nsw i32 %i.v, %i.y                   ; 2 uses
  %i.aa = add nsw i32 %i.z, %i.e                  ; 2 uses
  %i.ab = add nsw i32 %i.s, %i.l                  ; 2 uses
  %i.ac = sub nsw i32 %i.l, %i.s                  ; 2 uses
  %i.ad = sub nsw i32 %i.e, %i.z                  ; 2 uses
  %i.ae = add nsw i32 %i.aa, %i.ab
  %i.af = shl nsw i32 %i.ae, 3                    ; 3 uses
  %i.ag = mul nsw i32 %i.ac, 2217
  %i.ah = mul nsw i32 %i.ad, 5352
  %i.ai = add nsw i32 %i.ag, 1812
  %i.aj = add nsw i32 %i.ai, %i.ah
  %i.ak = ashr i32 %i.aj, 9                       ; 3 uses
  %i.al = sub nsw i32 %i.aa, %i.ab
  %i.am = shl nsw i32 %i.al, 3                    ; 3 uses
  %i.an = mul nsw i32 %i.ad, 2217
  %.neg60 = mul nsw i32 %i.ac, -5352
  %i.ao = add nsw i32 %.neg60, 937
  %i.ap = add nsw i32 %i.ao, %i.an
  %i.aq = ashr i32 %i.ap, 9                       ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = load i8, ptr %i.ar, align 1, !tbaa !12
  %i.au = zext i8 %i.at to i32
  %i.av = load i8, ptr %i.as, align 1, !tbaa !12
  %i.aw = zext i8 %i.av to i32
  %i.ax = sub nsw i32 %i.au, %i.aw                ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !12
  %i.ba = zext i8 %i.az to i32
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 33
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !12
  %i.bd = zext i8 %i.bc to i32
  %i.be = sub nsw i32 %i.ba, %i.bd                ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !12
  %i.bh = zext i8 %i.bg to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 34
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !12
  %i.bk = zext i8 %i.bj to i32
  %i.bl = sub nsw i32 %i.bh, %i.bk                ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 35
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !12
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 35
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !12
end_hunk_0
