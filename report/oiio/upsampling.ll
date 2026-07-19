inline.NumInlined: 90
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }

@WebPUpsamplers = hidden local_unnamed_addr global [13 x ptr] zeroinitializer, align 16
@WebPInitYUV444Converters.WebPInitYUV444Converters_body_last_cpuinfo_used = internal global ptr @WebPInitYUV444Converters.WebPInitYUV444Converters_body_last_cpuinfo_used, align 8
@WebPInitYUV444Converters.WebPInitYUV444Converters_body_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@VP8GetCPUInfo = external local_unnamed_addr global ptr, align 8
@WebPInitUpsamplers.WebPInitUpsamplers_body_last_cpuinfo_used = internal global ptr @WebPInitUpsamplers.WebPInitUpsamplers_body_last_cpuinfo_used, align 8
@WebPInitUpsamplers.WebPInitUpsamplers_body_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@WebPYUV444Converters = hidden local_unnamed_addr global [13 x ptr] zeroinitializer, align 16

; Function Attrs: nounwind uwtable
define hidden ptr @WebPGetLinePairConverter(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @WebPInitUpsamplers()
  %.not = icmp eq i32 %0, 0
  %i.a = select i1 %.not, i64 4, i64 3
  %i.b = getelementptr inbounds nuw [8 x i8], ptr @WebPUpsamplers, i64 %i.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !7
  ret ptr %i.c
}

; Function Attrs: nounwind uwtable
define hidden void @WebPInitUpsamplers() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @WebPInitUpsamplers.WebPInitUpsamplers_body_lock) #4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.b = load volatile ptr, ptr @WebPInitUpsamplers.WebPInitUpsamplers_body_last_cpuinfo_used, align 8, !tbaa !7
  %i.c = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !7 ; 3 uses
  %.not1 = icmp eq ptr %i.b, %i.c
  br i1 %.not1, label %WebPInitUpsamplers_body.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr @UpsampleRgbaLinePair_C, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 8), align 8, !tbaa !7
  store ptr @UpsampleBgraLinePair_C, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 24), align 8, !tbaa !7
  store ptr @UpsampleRgbaLinePair_C, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 56), align 8, !tbaa !7
  store ptr @UpsampleBgraLinePair_C, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 64), align 16, !tbaa !7
  store ptr @UpsampleRgbLinePair_C, ptr @WebPUpsamplers, align 16, !tbaa !7
  store ptr @UpsampleBgrLinePair_C, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 16), align 16, !tbaa !7
  store ptr @UpsampleArgbLinePair_C, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 32), align 16, !tbaa !7
  store ptr @UpsampleRgba4444LinePair_C, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 40), align 8, !tbaa !7
  store ptr @UpsampleRgb565LinePair_C, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 48), align 16, !tbaa !7
  store ptr @UpsampleArgbLinePair_C, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 72), align 8, !tbaa !7
  store ptr @UpsampleRgba4444LinePair_C, ptr getelementptr inbounds nuw (i8, ptr @WebPUpsamplers, i64 80), align 16, !tbaa !7
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %WebPInitUpsamplers_body.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 %i.c(i32 noundef 0) #4, !inline_history !9
  %.not1.i = icmp eq i32 %i.d, 0
  br i1 %.not1.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @WebPInitUpsamplersSSE2() #4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.e = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !7
  %i.f = tail call i32 %i.e(i32 noundef 3) #4, !inline_history !9
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %WebPInitUpsamplers_body.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @WebPInitUpsamplersSSE41() #4
  br label %WebPInitUpsamplers_body.exit

WebPInitUpsamplers_body.exit:                     ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  %i.g = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !7
  store volatile ptr %i.g, ptr @WebPInitUpsamplers.WebPInitUpsamplers_body_last_cpuinfo_used, align 8, !tbaa !7
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @WebPInitUpsamplers.WebPInitUpsamplers_body_lock) #4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %WebPInitUpsamplers_body.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @WebPYuv444ToRgba_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i32 %4, 16
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <16 x i8>, ptr %i.b, align 1, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load15 = load <16 x i8>, ptr %i.c, align 1, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load16 = load <16 x i8>, ptr %i.d, align 1, !tbaa !10
  %i.e = shl nuw nsw i64 %index, 2
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %i.e
  %i.g = zext <16 x i8> %wide.load to <16 x i32>
  %i.h = zext <16 x i8> %wide.load15 to <16 x i32> ; 2 uses
  %i.i = zext <16 x i8> %wide.load16 to <16 x i32> ; 2 uses
  %i.j = mul nuw nsw <16 x i32> %i.g, splat (i32 19077)
  %i.k = lshr <16 x i32> %i.j, splat (i32 8)      ; 3 uses
  %i.l = mul nuw nsw <16 x i32> %i.i, splat (i32 26149)
  %i.m = lshr <16 x i32> %i.l, splat (i32 8)
  %i.n = add nuw nsw <16 x i32> %i.m, %i.k        ; 2 uses
  %i.o = add nsw <16 x i32> %i.n, splat (i32 -14234) ; 2 uses
  %i.p = icmp samesign ult <16 x i32> %i.n, splat (i32 14234)
  %i.q = mul nuw nsw <16 x i32> %i.h, splat (i32 6419)
  %i.r = lshr <16 x i32> %i.q, splat (i32 8)
  %i.s = mul nuw nsw <16 x i32> %i.i, splat (i32 13320)
  %i.t = lshr <16 x i32> %i.s, splat (i32 8)
  %i.u = add nuw nsw <16 x i32> %i.r, %i.t
  %i.v = sub nsw <16 x i32> %i.k, %i.u            ; 2 uses
  %i.w = add nsw <16 x i32> %i.v, splat (i32 8708) ; 2 uses
  %i.x = icmp slt <16 x i32> %i.v, splat (i32 -8708)
  %i.y = mul nuw nsw <16 x i32> %i.h, splat (i32 33050)
  %i.z = lshr <16 x i32> %i.y, splat (i32 8)
  %i.aa = add nuw nsw <16 x i32> %i.z, %i.k       ; 2 uses
  %i.ab = add nsw <16 x i32> %i.aa, splat (i32 -17685) ; 2 uses
  %i.ac = icmp ult <16 x i32> %i.ab, splat (i32 16384)
  %i.ad = lshr <16 x i32> %i.ab, splat (i32 6)
  %i.ae = icmp samesign ult <16 x i32> %i.aa, splat (i32 17685)
  %i.af = select <16 x i1> %i.ae, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.ag = select <16 x i1> %i.ac, <16 x i32> %i.ad, <16 x i32> %i.af
  %i.ah = trunc <16 x i32> %i.ag to <16 x i8>
  %i.ai = shufflevector <16 x i32> %i.o, <16 x i32> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aj = icmp ult <32 x i32> %i.ai, splat (i32 16384)
  %i.ak = shufflevector <16 x i32> %i.o, <16 x i32> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.al = lshr <32 x i32> %i.ak, splat (i32 6)
  %i.am = shufflevector <16 x i1> %i.p, <16 x i1> %i.x, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.an = select <32 x i1> %i.am, <32 x i32> zeroinitializer, <32 x i32> splat (i32 255)
  %i.ao = select <32 x i1> %i.aj, <32 x i32> %i.al, <32 x i32> %i.an
  %i.ap = trunc <32 x i32> %i.ao to <32 x i8>
  %i.aq = shufflevector <16 x i8> %i.ah, <16 x i8> splat (i8 -1), <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i8> %i.ap, <32 x i8> %i.aq, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i8> %interleaved.vec, ptr %i.f, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %index19
  %wide.load20 = load <4 x i8>, ptr %i.as, align 1, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %index19
  %wide.load21 = load <4 x i8>, ptr %i.at, align 1, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %index19
  %wide.load22 = load <4 x i8>, ptr %i.au, align 1, !tbaa !10
  %i.av = shl nuw nsw i64 %index19, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %i.av
  %i.ax = zext <4 x i8> %wide.load20 to <4 x i32>
  %i.ay = zext <4 x i8> %wide.load21 to <4 x i32> ; 2 uses
  %i.az = zext <4 x i8> %wide.load22 to <4 x i32> ; 2 uses
  %i.ba = mul nuw nsw <4 x i32> %i.ax, splat (i32 19077)
  %i.bb = lshr <4 x i32> %i.ba, splat (i32 8)     ; 3 uses
  %i.bc = mul nuw nsw <4 x i32> %i.az, splat (i32 26149)
  %i.bd = lshr <4 x i32> %i.bc, splat (i32 8)
  %i.be = add nuw nsw <4 x i32> %i.bd, %i.bb      ; 2 uses
  %i.bf = add nsw <4 x i32> %i.be, splat (i32 -14234) ; 2 uses
  %i.bg = icmp ult <4 x i32> %i.bf, splat (i32 16384)
  %i.bh = lshr <4 x i32> %i.bf, splat (i32 6)
  %i.bi = icmp samesign ult <4 x i32> %i.be, splat (i32 14234)
  %i.bj = select <4 x i1> %i.bi, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.bk = select <4 x i1> %i.bg, <4 x i32> %i.bh, <4 x i32> %i.bj
  %i.bl = mul nuw nsw <4 x i32> %i.ay, splat (i32 6419)
  %i.bm = lshr <4 x i32> %i.bl, splat (i32 8)
  %i.bn = mul nuw nsw <4 x i32> %i.az, splat (i32 13320)
  %i.bo = lshr <4 x i32> %i.bn, splat (i32 8)
  %i.bp = add nuw nsw <4 x i32> %i.bm, %i.bo
  %i.bq = sub nsw <4 x i32> %i.bb, %i.bp          ; 2 uses
  %i.br = add nsw <4 x i32> %i.bq, splat (i32 8708) ; 2 uses
  %i.bs = icmp ult <4 x i32> %i.br, splat (i32 16384)
  %i.bt = lshr <4 x i32> %i.br, splat (i32 6)
  %i.bu = icmp slt <4 x i32> %i.bq, splat (i32 -8708)
  %i.bv = select <4 x i1> %i.bu, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.bw = select <4 x i1> %i.bs, <4 x i32> %i.bt, <4 x i32> %i.bv
  %i.bx = mul nuw nsw <4 x i32> %i.ay, splat (i32 33050)
  %i.by = lshr <4 x i32> %i.bx, splat (i32 8)
  %i.bz = add nuw nsw <4 x i32> %i.by, %i.bb      ; 2 uses
  %i.ca = add nsw <4 x i32> %i.bz, splat (i32 -17685) ; 2 uses
  %i.cb = icmp ult <4 x i32> %i.ca, splat (i32 16384)
  %i.cc = lshr <4 x i32> %i.ca, splat (i32 6)
  %i.cd = icmp samesign ult <4 x i32> %i.bz, splat (i32 17685)
  %i.ce = select <4 x i1> %i.cd, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.cf = select <4 x i1> %i.cb, <4 x i32> %i.cc, <4 x i32> %i.ce
  %i.cg = trunc <4 x i32> %i.cf to <4 x i8>
  %i.ch = shufflevector <4 x i32> %i.bk, <4 x i32> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = trunc <8 x i32> %i.ch to <8 x i8>
  %i.cj = shufflevector <4 x i8> %i.cg, <4 x i8> splat (i8 -1), <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec23 = shufflevector <8 x i8> %i.ci, <8 x i8> %i.cj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec23, ptr %i.aw, align 1, !tbaa !10
  %index.next24 = add nuw i64 %index19, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next24, %n.vec18
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !16

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec18, %wide.trip.count
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !10
  %i.cr = shl nuw nsw i64 %indvars.iv, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 %i.cr ; 4 uses
  %i.ct = zext i8 %i.cm to i32
  %i.cu = zext i8 %i.co to i32                    ; 2 uses
  %i.cv = zext i8 %i.cq to i32                    ; 2 uses
  %i.cw = mul nuw nsw i32 %i.ct, 19077
  %i.cx = lshr i32 %i.cw, 8                       ; 3 uses
  %i.cy = mul nuw nsw i32 %i.cv, 26149
  %i.cz = lshr i32 %i.cy, 8
  %i.da = add nuw nsw i32 %i.cz, %i.cx            ; 2 uses
  %i.db = add nsw i32 %i.da, -14234               ; 2 uses
  %i.dc = icmp ult i32 %i.db, 16384
  %i.dd = lshr i32 %i.db, 6
  %i.de = icmp samesign ult i32 %i.da, 14234
  %i.df = select i1 %i.de, i32 0, i32 255
  %i.dg = select i1 %i.dc, i32 %i.dd, i32 %i.df
  %i.dh = trunc i32 %i.dg to i8
  store i8 %i.dh, ptr %i.cs, align 1, !tbaa !10
  %i.di = mul nuw nsw i32 %i.cu, 6419
  %i.dj = lshr i32 %i.di, 8
  %i.dk = mul nuw nsw i32 %i.cv, 13320
  %i.dl = lshr i32 %i.dk, 8
  %i.dm = add nuw nsw i32 %i.dj, %i.dl
  %i.dn = sub nsw i32 %i.cx, %i.dm                ; 2 uses
  %i.do = add nsw i32 %i.dn, 8708                 ; 2 uses
  %i.dp = icmp ult i32 %i.do, 16384
  %i.dq = lshr i32 %i.do, 6
  %i.dr = icmp slt i32 %i.dn, -8708
  %i.ds = select i1 %i.dr, i32 0, i32 255
  %i.dt = select i1 %i.dp, i32 %i.dq, i32 %i.ds
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !10
  %i.dw = mul nuw nsw i32 %i.cu, 33050
  %i.dx = lshr i32 %i.dw, 8
  %i.dy = add nuw nsw i32 %i.dx, %i.cx            ; 2 uses
  %i.dz = add nsw i32 %i.dy, -17685               ; 2 uses
  %i.ea = icmp ult i32 %i.dz, 16384
  %i.eb = lshr i32 %i.dz, 6
  %i.ec = icmp samesign ult i32 %i.dy, 17685
  %i.ed = select i1 %i.ec, i32 0, i32 255
  %i.ee = select i1 %i.ea, i32 %i.eb, i32 %i.ed
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  store i8 -1, ptr %i.eh, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @WebPYuv444ToBgra_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i32 %4, 16
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <16 x i8>, ptr %i.b, align 1, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load15 = load <16 x i8>, ptr %i.c, align 1, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load16 = load <16 x i8>, ptr %i.d, align 1, !tbaa !10
  %i.e = shl nuw nsw i64 %index, 2
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 %i.e
  %i.g = zext <16 x i8> %wide.load to <16 x i32>
  %i.h = zext <16 x i8> %wide.load15 to <16 x i32> ; 2 uses
  %i.i = zext <16 x i8> %wide.load16 to <16 x i32> ; 2 uses
  %i.j = mul nuw nsw <16 x i32> %i.g, splat (i32 19077)
  %i.k = lshr <16 x i32> %i.j, splat (i32 8)      ; 3 uses
  %i.l = mul nuw nsw <16 x i32> %i.h, splat (i32 33050)
  %i.m = lshr <16 x i32> %i.l, splat (i32 8)
  %i.n = add nuw nsw <16 x i32> %i.m, %i.k        ; 2 uses
  %i.o = add nsw <16 x i32> %i.n, splat (i32 -17685) ; 2 uses
  %i.p = icmp samesign ult <16 x i32> %i.n, splat (i32 17685)
  %i.q = mul nuw nsw <16 x i32> %i.h, splat (i32 6419)
  %i.r = lshr <16 x i32> %i.q, splat (i32 8)
  %i.s = mul nuw nsw <16 x i32> %i.i, splat (i32 13320)
  %i.t = lshr <16 x i32> %i.s, splat (i32 8)
  %i.u = add nuw nsw <16 x i32> %i.r, %i.t
  %i.v = sub nsw <16 x i32> %i.k, %i.u            ; 2 uses
  %i.w = add nsw <16 x i32> %i.v, splat (i32 8708) ; 2 uses
  %i.x = icmp slt <16 x i32> %i.v, splat (i32 -8708)
  %i.y = mul nuw nsw <16 x i32> %i.i, splat (i32 26149)
  %i.z = lshr <16 x i32> %i.y, splat (i32 8)
  %i.aa = add nuw nsw <16 x i32> %i.z, %i.k       ; 2 uses
  %i.ab = add nsw <16 x i32> %i.aa, splat (i32 -14234) ; 2 uses
  %i.ac = icmp ult <16 x i32> %i.ab, splat (i32 16384)
  %i.ad = lshr <16 x i32> %i.ab, splat (i32 6)
  %i.ae = icmp samesign ult <16 x i32> %i.aa, splat (i32 14234)
  %i.af = select <16 x i1> %i.ae, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.ag = select <16 x i1> %i.ac, <16 x i32> %i.ad, <16 x i32> %i.af
  %i.ah = trunc <16 x i32> %i.ag to <16 x i8>
  %i.ai = shufflevector <16 x i32> %i.o, <16 x i32> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aj = icmp ult <32 x i32> %i.ai, splat (i32 16384)
  %i.ak = shufflevector <16 x i32> %i.o, <16 x i32> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.al = lshr <32 x i32> %i.ak, splat (i32 6)
  %i.am = shufflevector <16 x i1> %i.p, <16 x i1> %i.x, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.an = select <32 x i1> %i.am, <32 x i32> zeroinitializer, <32 x i32> splat (i32 255)
  %i.ao = select <32 x i1> %i.aj, <32 x i32> %i.al, <32 x i32> %i.an
  %i.ap = trunc <32 x i32> %i.ao to <32 x i8>
  %i.aq = shufflevector <16 x i8> %i.ah, <16 x i8> splat (i8 -1), <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %interleaved.vec = shufflevector <32 x i8> %i.ap, <32 x i8> %i.aq, <64 x i32> <i32 0, i32 16, i32 32, i32 48, i32 1, i32 17, i32 33, i32 49, i32 2, i32 18, i32 34, i32 50, i32 3, i32 19, i32 35, i32 51, i32 4, i32 20, i32 36, i32 52, i32 5, i32 21, i32 37, i32 53, i32 6, i32 22, i32 38, i32 54, i32 7, i32 23, i32 39, i32 55, i32 8, i32 24, i32 40, i32 56, i32 9, i32 25, i32 41, i32 57, i32 10, i32 26, i32 42, i32 58, i32 11, i32 27, i32 43, i32 59, i32 12, i32 28, i32 44, i32 60, i32 13, i32 29, i32 45, i32 61, i32 14, i32 30, i32 46, i32 62, i32 15, i32 31, i32 47, i32 63>
  store <64 x i8> %interleaved.vec, ptr %i.f, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %index19
  %wide.load20 = load <4 x i8>, ptr %i.as, align 1, !tbaa !10
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %index19
  %wide.load21 = load <4 x i8>, ptr %i.at, align 1, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 %index19
  %wide.load22 = load <4 x i8>, ptr %i.au, align 1, !tbaa !10
  %i.av = shl nuw nsw i64 %index19, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 %i.av
  %i.ax = zext <4 x i8> %wide.load20 to <4 x i32>
  %i.ay = zext <4 x i8> %wide.load21 to <4 x i32> ; 2 uses
  %i.az = zext <4 x i8> %wide.load22 to <4 x i32> ; 2 uses
  %i.ba = mul nuw nsw <4 x i32> %i.ax, splat (i32 19077)
  %i.bb = lshr <4 x i32> %i.ba, splat (i32 8)     ; 3 uses
  %i.bc = mul nuw nsw <4 x i32> %i.ay, splat (i32 33050)
  %i.bd = lshr <4 x i32> %i.bc, splat (i32 8)
  %i.be = add nuw nsw <4 x i32> %i.bd, %i.bb      ; 2 uses
  %i.bf = add nsw <4 x i32> %i.be, splat (i32 -17685) ; 2 uses
  %i.bg = icmp ult <4 x i32> %i.bf, splat (i32 16384)
  %i.bh = lshr <4 x i32> %i.bf, splat (i32 6)
  %i.bi = icmp samesign ult <4 x i32> %i.be, splat (i32 17685)
  %i.bj = select <4 x i1> %i.bi, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.bk = select <4 x i1> %i.bg, <4 x i32> %i.bh, <4 x i32> %i.bj
  %i.bl = mul nuw nsw <4 x i32> %i.ay, splat (i32 6419)
  %i.bm = lshr <4 x i32> %i.bl, splat (i32 8)
  %i.bn = mul nuw nsw <4 x i32> %i.az, splat (i32 13320)
  %i.bo = lshr <4 x i32> %i.bn, splat (i32 8)
  %i.bp = add nuw nsw <4 x i32> %i.bm, %i.bo
  %i.bq = sub nsw <4 x i32> %i.bb, %i.bp          ; 2 uses
  %i.br = add nsw <4 x i32> %i.bq, splat (i32 8708) ; 2 uses
  %i.bs = icmp ult <4 x i32> %i.br, splat (i32 16384)
  %i.bt = lshr <4 x i32> %i.br, splat (i32 6)
  %i.bu = icmp slt <4 x i32> %i.bq, splat (i32 -8708)
  %i.bv = select <4 x i1> %i.bu, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.bw = select <4 x i1> %i.bs, <4 x i32> %i.bt, <4 x i32> %i.bv
  %i.bx = mul nuw nsw <4 x i32> %i.az, splat (i32 26149)
  %i.by = lshr <4 x i32> %i.bx, splat (i32 8)
  %i.bz = add nuw nsw <4 x i32> %i.by, %i.bb      ; 2 uses
  %i.ca = add nsw <4 x i32> %i.bz, splat (i32 -14234) ; 2 uses
  %i.cb = icmp ult <4 x i32> %i.ca, splat (i32 16384)
  %i.cc = lshr <4 x i32> %i.ca, splat (i32 6)
  %i.cd = icmp samesign ult <4 x i32> %i.bz, splat (i32 14234)
  %i.ce = select <4 x i1> %i.cd, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.cf = select <4 x i1> %i.cb, <4 x i32> %i.cc, <4 x i32> %i.ce
  %i.cg = trunc <4 x i32> %i.cf to <4 x i8>
  %i.ch = shufflevector <4 x i32> %i.bk, <4 x i32> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = trunc <8 x i32> %i.ch to <8 x i8>
  %i.cj = shufflevector <4 x i8> %i.cg, <4 x i8> splat (i8 -1), <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec23 = shufflevector <8 x i8> %i.ci, <8 x i8> %i.cj, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x i8> %interleaved.vec23, ptr %i.aw, align 1, !tbaa !10
  %index.next24 = add nuw i64 %index19, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next24, %n.vec18
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !19

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec18, %wide.trip.count
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !10
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !10
  %i.cr = shl nuw nsw i64 %indvars.iv, 2
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 %i.cr ; 4 uses
  %i.ct = zext i8 %i.cm to i32
  %i.cu = zext i8 %i.co to i32                    ; 2 uses
  %i.cv = zext i8 %i.cq to i32                    ; 2 uses
  %i.cw = mul nuw nsw i32 %i.ct, 19077
  %i.cx = lshr i32 %i.cw, 8                       ; 3 uses
  %i.cy = mul nuw nsw i32 %i.cu, 33050
  %i.cz = lshr i32 %i.cy, 8
  %i.da = add nuw nsw i32 %i.cz, %i.cx            ; 2 uses
  %i.db = add nsw i32 %i.da, -17685               ; 2 uses
  %i.dc = icmp ult i32 %i.db, 16384
  %i.dd = lshr i32 %i.db, 6
  %i.de = icmp samesign ult i32 %i.da, 17685
  %i.df = select i1 %i.de, i32 0, i32 255
  %i.dg = select i1 %i.dc, i32 %i.dd, i32 %i.df
  %i.dh = trunc i32 %i.dg to i8
  store i8 %i.dh, ptr %i.cs, align 1, !tbaa !10
  %i.di = mul nuw nsw i32 %i.cu, 6419
  %i.dj = lshr i32 %i.di, 8
  %i.dk = mul nuw nsw i32 %i.cv, 13320
  %i.dl = lshr i32 %i.dk, 8
  %i.dm = add nuw nsw i32 %i.dj, %i.dl
  %i.dn = sub nsw i32 %i.cx, %i.dm                ; 2 uses
  %i.do = add nsw i32 %i.dn, 8708                 ; 2 uses
  %i.dp = icmp ult i32 %i.do, 16384
  %i.dq = lshr i32 %i.do, 6
  %i.dr = icmp slt i32 %i.dn, -8708
  %i.ds = select i1 %i.dr, i32 0, i32 255
  %i.dt = select i1 %i.dp, i32 %i.dq, i32 %i.ds
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !10
  %i.dw = mul nuw nsw i32 %i.cv, 26149
  %i.dx = lshr i32 %i.dw, 8
  %i.dy = add nuw nsw i32 %i.dx, %i.cx            ; 2 uses
  %i.dz = add nsw i32 %i.dy, -14234               ; 2 uses
  %i.ea = icmp ult i32 %i.dz, 16384
  %i.eb = lshr i32 %i.dz, 6
  %i.ec = icmp samesign ult i32 %i.dy, 14234
  %i.ed = select i1 %i.ec, i32 0, i32 255
  %i.ee = select i1 %i.ea, i32 %i.eb, i32 %i.ed
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cs, i64 2
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.cs, i64 3
  store i8 -1, ptr %i.eh, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !20

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @WebPYuv444ToRgb_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i32 %4, 16
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <16 x i8>, ptr %i.b, align 1, !tbaa !10
  %i.c = zext <16 x i8> %wide.load to <16 x i32>
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load15 = load <16 x i8>, ptr %i.d, align 1, !tbaa !10
  %i.e = zext <16 x i8> %wide.load15 to <16 x i32> ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load16 = load <16 x i8>, ptr %i.f, align 1, !tbaa !10
  %i.g = zext <16 x i8> %wide.load16 to <16 x i32> ; 2 uses
  %i.h = mul nuw nsw i64 %index, 3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %i.j = mul nuw nsw <16 x i32> %i.c, splat (i32 19077)
  %i.k = lshr <16 x i32> %i.j, splat (i32 8)      ; 3 uses
  %i.l = mul nuw nsw <16 x i32> %i.g, splat (i32 26149)
  %i.m = lshr <16 x i32> %i.l, splat (i32 8)
  %i.n = add nuw nsw <16 x i32> %i.m, %i.k        ; 2 uses
  %i.o = add nsw <16 x i32> %i.n, splat (i32 -14234) ; 2 uses
  %i.p = icmp samesign ult <16 x i32> %i.n, splat (i32 14234)
  %i.q = mul nuw nsw <16 x i32> %i.e, splat (i32 6419)
  %i.r = lshr <16 x i32> %i.q, splat (i32 8)
  %i.s = mul nuw nsw <16 x i32> %i.g, splat (i32 13320)
  %i.t = lshr <16 x i32> %i.s, splat (i32 8)
  %i.u = add nuw nsw <16 x i32> %i.r, %i.t
  %i.v = sub nsw <16 x i32> %i.k, %i.u            ; 2 uses
  %i.w = add nsw <16 x i32> %i.v, splat (i32 8708) ; 2 uses
  %i.x = icmp slt <16 x i32> %i.v, splat (i32 -8708)
  %i.y = mul nuw nsw <16 x i32> %i.e, splat (i32 33050)
  %i.z = lshr <16 x i32> %i.y, splat (i32 8)
  %i.aa = add nuw nsw <16 x i32> %i.z, %i.k       ; 2 uses
  %i.ab = add nsw <16 x i32> %i.aa, splat (i32 -17685) ; 2 uses
  %i.ac = icmp ult <16 x i32> %i.ab, splat (i32 16384)
  %i.ad = lshr <16 x i32> %i.ab, splat (i32 6)
  %i.ae = icmp samesign ult <16 x i32> %i.aa, splat (i32 17685)
  %i.af = select <16 x i1> %i.ae, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.ag = select <16 x i1> %i.ac, <16 x i32> %i.ad, <16 x i32> %i.af
  %i.ah = trunc <16 x i32> %i.ag to <16 x i8>
  %i.ai = shufflevector <16 x i32> %i.o, <16 x i32> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aj = icmp ult <32 x i32> %i.ai, splat (i32 16384)
  %i.ak = shufflevector <16 x i32> %i.o, <16 x i32> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.al = lshr <32 x i32> %i.ak, splat (i32 6)
  %i.am = shufflevector <16 x i1> %i.p, <16 x i1> %i.x, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.an = select <32 x i1> %i.am, <32 x i32> zeroinitializer, <32 x i32> splat (i32 255)
  %i.ao = select <32 x i1> %i.aj, <32 x i32> %i.al, <32 x i32> %i.an
  %i.ap = trunc <32 x i32> %i.ao to <32 x i8>
  %i.aq = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i8> %i.ap, <32 x i8> %i.aq, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  store <48 x i8> %interleaved.vec, ptr %i.i, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %index19
  %wide.load20 = load <4 x i8>, ptr %i.as, align 1, !tbaa !10
  %i.at = zext <4 x i8> %wide.load20 to <4 x i32>
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %index19
  %wide.load21 = load <4 x i8>, ptr %i.au, align 1, !tbaa !10
  %i.av = zext <4 x i8> %wide.load21 to <4 x i32> ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %index19
  %wide.load22 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !10
  %i.ax = zext <4 x i8> %wide.load22 to <4 x i32> ; 2 uses
  %i.ay = mul nuw nsw i64 %index19, 3
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %i.ay
  %i.ba = mul nuw nsw <4 x i32> %i.at, splat (i32 19077)
  %i.bb = lshr <4 x i32> %i.ba, splat (i32 8)     ; 3 uses
  %i.bc = mul nuw nsw <4 x i32> %i.ax, splat (i32 26149)
  %i.bd = lshr <4 x i32> %i.bc, splat (i32 8)
  %i.be = add nuw nsw <4 x i32> %i.bd, %i.bb      ; 2 uses
  %i.bf = add nsw <4 x i32> %i.be, splat (i32 -14234) ; 2 uses
  %i.bg = icmp ult <4 x i32> %i.bf, splat (i32 16384)
  %i.bh = lshr <4 x i32> %i.bf, splat (i32 6)
  %i.bi = icmp samesign ult <4 x i32> %i.be, splat (i32 14234)
  %i.bj = select <4 x i1> %i.bi, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.bk = select <4 x i1> %i.bg, <4 x i32> %i.bh, <4 x i32> %i.bj
  %i.bl = mul nuw nsw <4 x i32> %i.av, splat (i32 6419)
  %i.bm = lshr <4 x i32> %i.bl, splat (i32 8)
  %i.bn = mul nuw nsw <4 x i32> %i.ax, splat (i32 13320)
  %i.bo = lshr <4 x i32> %i.bn, splat (i32 8)
  %i.bp = add nuw nsw <4 x i32> %i.bm, %i.bo
  %i.bq = sub nsw <4 x i32> %i.bb, %i.bp          ; 2 uses
  %i.br = add nsw <4 x i32> %i.bq, splat (i32 8708) ; 2 uses
  %i.bs = icmp ult <4 x i32> %i.br, splat (i32 16384)
  %i.bt = lshr <4 x i32> %i.br, splat (i32 6)
  %i.bu = icmp slt <4 x i32> %i.bq, splat (i32 -8708)
  %i.bv = select <4 x i1> %i.bu, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.bw = select <4 x i1> %i.bs, <4 x i32> %i.bt, <4 x i32> %i.bv
  %i.bx = mul nuw nsw <4 x i32> %i.av, splat (i32 33050)
  %i.by = lshr <4 x i32> %i.bx, splat (i32 8)
  %i.bz = add nuw nsw <4 x i32> %i.by, %i.bb      ; 2 uses
  %i.ca = add nsw <4 x i32> %i.bz, splat (i32 -17685) ; 2 uses
  %i.cb = icmp ult <4 x i32> %i.ca, splat (i32 16384)
  %i.cc = lshr <4 x i32> %i.ca, splat (i32 6)
  %i.cd = icmp samesign ult <4 x i32> %i.bz, splat (i32 17685)
  %i.ce = select <4 x i1> %i.cd, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.cf = select <4 x i1> %i.cb, <4 x i32> %i.cc, <4 x i32> %i.ce
  %i.cg = trunc <4 x i32> %i.cf to <4 x i8>
  %i.ch = shufflevector <4 x i32> %i.bk, <4 x i32> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = trunc <8 x i32> %i.ch to <8 x i8>
  %i.cj = shufflevector <4 x i8> %i.cg, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec23 = shufflevector <8 x i8> %i.ci, <8 x i8> %i.cj, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i8> %interleaved.vec23, ptr %i.az, align 1, !tbaa !10
  %index.next24 = add nuw i64 %index19, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next24, %n.vec18
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec18, %wide.trip.count
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
end_hunk_0
begin_hunk_1_@WebPYuv444ToBgr_C:bb.a
  %i.o = add nsw <16 x i32> %i.n, splat (i32 -17685) ; 2 uses
  %i.p = icmp samesign ult <16 x i32> %i.n, splat (i32 17685)
  %i.q = mul nuw nsw <16 x i32> %i.e, splat (i32 6419)
  %i.r = lshr <16 x i32> %i.q, splat (i32 8)
  %i.s = mul nuw nsw <16 x i32> %i.g, splat (i32 13320)
  %i.t = lshr <16 x i32> %i.s, splat (i32 8)
  %i.u = add nuw nsw <16 x i32> %i.r, %i.t
  %i.v = sub nsw <16 x i32> %i.k, %i.u            ; 2 uses
  %i.w = add nsw <16 x i32> %i.v, splat (i32 8708) ; 2 uses
  %i.x = icmp slt <16 x i32> %i.v, splat (i32 -8708)
  %i.y = mul nuw nsw <16 x i32> %i.g, splat (i32 26149)
  %i.z = lshr <16 x i32> %i.y, splat (i32 8)
  %i.aa = add nuw nsw <16 x i32> %i.z, %i.k       ; 2 uses
  %i.ab = add nsw <16 x i32> %i.aa, splat (i32 -14234) ; 2 uses
  %i.ac = icmp ult <16 x i32> %i.ab, splat (i32 16384)
  %i.ad = lshr <16 x i32> %i.ab, splat (i32 6)
  %i.ae = icmp samesign ult <16 x i32> %i.aa, splat (i32 14234)
  %i.af = select <16 x i1> %i.ae, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.ag = select <16 x i1> %i.ac, <16 x i32> %i.ad, <16 x i32> %i.af
  %i.ah = trunc <16 x i32> %i.ag to <16 x i8>
  %i.ai = shufflevector <16 x i32> %i.o, <16 x i32> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.aj = icmp ult <32 x i32> %i.ai, splat (i32 16384)
  %i.ak = shufflevector <16 x i32> %i.o, <16 x i32> %i.w, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.al = lshr <32 x i32> %i.ak, splat (i32 6)
  %i.am = shufflevector <16 x i1> %i.p, <16 x i1> %i.x, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %i.an = select <32 x i1> %i.am, <32 x i32> zeroinitializer, <32 x i32> splat (i32 255)
  %i.ao = select <32 x i1> %i.aj, <32 x i32> %i.al, <32 x i32> %i.an
  %i.ap = trunc <32 x i32> %i.ao to <32 x i8>
  %i.aq = shufflevector <16 x i8> %i.ah, <16 x i8> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <32 x i8> %i.ap, <32 x i8> %i.aq, <48 x i32> <i32 0, i32 16, i32 32, i32 1, i32 17, i32 33, i32 2, i32 18, i32 34, i32 3, i32 19, i32 35, i32 4, i32 20, i32 36, i32 5, i32 21, i32 37, i32 6, i32 22, i32 38, i32 7, i32 23, i32 39, i32 8, i32 24, i32 40, i32 9, i32 25, i32 41, i32 10, i32 26, i32 42, i32 11, i32 27, i32 43, i32 12, i32 28, i32 44, i32 13, i32 29, i32 45, i32 14, i32 30, i32 46, i32 15, i32 31, i32 47>
  store <48 x i8> %interleaved.vec, ptr %i.i, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %index19
  %wide.load20 = load <4 x i8>, ptr %i.as, align 1, !tbaa !10
  %i.at = zext <4 x i8> %wide.load20 to <4 x i32>
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 %index19
  %wide.load21 = load <4 x i8>, ptr %i.au, align 1, !tbaa !10
  %i.av = zext <4 x i8> %wide.load21 to <4 x i32> ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 %index19
  %wide.load22 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !10
  %i.ax = zext <4 x i8> %wide.load22 to <4 x i32> ; 2 uses
  %i.ay = mul nuw nsw i64 %index19, 3
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %i.ay
  %i.ba = mul nuw nsw <4 x i32> %i.at, splat (i32 19077)
  %i.bb = lshr <4 x i32> %i.ba, splat (i32 8)     ; 3 uses
  %i.bc = mul nuw nsw <4 x i32> %i.av, splat (i32 33050)
  %i.bd = lshr <4 x i32> %i.bc, splat (i32 8)
  %i.be = add nuw nsw <4 x i32> %i.bd, %i.bb      ; 2 uses
  %i.bf = add nsw <4 x i32> %i.be, splat (i32 -17685) ; 2 uses
  %i.bg = icmp ult <4 x i32> %i.bf, splat (i32 16384)
  %i.bh = lshr <4 x i32> %i.bf, splat (i32 6)
  %i.bi = icmp samesign ult <4 x i32> %i.be, splat (i32 17685)
  %i.bj = select <4 x i1> %i.bi, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.bk = select <4 x i1> %i.bg, <4 x i32> %i.bh, <4 x i32> %i.bj
  %i.bl = mul nuw nsw <4 x i32> %i.av, splat (i32 6419)
  %i.bm = lshr <4 x i32> %i.bl, splat (i32 8)
  %i.bn = mul nuw nsw <4 x i32> %i.ax, splat (i32 13320)
  %i.bo = lshr <4 x i32> %i.bn, splat (i32 8)
  %i.bp = add nuw nsw <4 x i32> %i.bm, %i.bo
  %i.bq = sub nsw <4 x i32> %i.bb, %i.bp          ; 2 uses
  %i.br = add nsw <4 x i32> %i.bq, splat (i32 8708) ; 2 uses
  %i.bs = icmp ult <4 x i32> %i.br, splat (i32 16384)
  %i.bt = lshr <4 x i32> %i.br, splat (i32 6)
  %i.bu = icmp slt <4 x i32> %i.bq, splat (i32 -8708)
  %i.bv = select <4 x i1> %i.bu, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.bw = select <4 x i1> %i.bs, <4 x i32> %i.bt, <4 x i32> %i.bv
  %i.bx = mul nuw nsw <4 x i32> %i.ax, splat (i32 26149)
  %i.by = lshr <4 x i32> %i.bx, splat (i32 8)
  %i.bz = add nuw nsw <4 x i32> %i.by, %i.bb      ; 2 uses
  %i.ca = add nsw <4 x i32> %i.bz, splat (i32 -14234) ; 2 uses
  %i.cb = icmp ult <4 x i32> %i.ca, splat (i32 16384)
  %i.cc = lshr <4 x i32> %i.ca, splat (i32 6)
  %i.cd = icmp samesign ult <4 x i32> %i.bz, splat (i32 14234)
  %i.ce = select <4 x i1> %i.cd, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.cf = select <4 x i1> %i.cb, <4 x i32> %i.cc, <4 x i32> %i.ce
  %i.cg = trunc <4 x i32> %i.cf to <4 x i8>
  %i.ch = shufflevector <4 x i32> %i.bk, <4 x i32> %i.bw, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ci = trunc <8 x i32> %i.ch to <8 x i8>
  %i.cj = shufflevector <4 x i8> %i.cg, <4 x i8> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec23 = shufflevector <8 x i8> %i.ci, <8 x i8> %i.cj, <12 x i32> <i32 0, i32 4, i32 8, i32 1, i32 5, i32 9, i32 2, i32 6, i32 10, i32 3, i32 7, i32 11>
  store <12 x i8> %interleaved.vec23, ptr %i.az, align 1, !tbaa !10
  %index.next24 = add nuw i64 %index19, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next24, %n.vec18
  br i1 %i.ck, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %n.vec18, %wide.trip.count
  br i1 %cmp.n25, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !10
  %i.cn = zext i8 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !10
  %i.cq = zext i8 %i.cp to i32                    ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !10
  %i.ct = zext i8 %i.cs to i32                    ; 2 uses
  %i.cu = mul nuw nsw i64 %indvars.iv, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 %i.cu ; 3 uses
  %i.cw = mul nuw nsw i32 %i.cn, 19077
  %i.cx = lshr i32 %i.cw, 8                       ; 3 uses
  %i.cy = mul nuw nsw i32 %i.cq, 33050
  %i.cz = lshr i32 %i.cy, 8
  %i.da = add nuw nsw i32 %i.cz, %i.cx            ; 2 uses
  %i.db = add nsw i32 %i.da, -17685               ; 2 uses
  %i.dc = icmp ult i32 %i.db, 16384
  %i.dd = lshr i32 %i.db, 6
  %i.de = icmp samesign ult i32 %i.da, 17685
  %i.df = select i1 %i.de, i32 0, i32 255
  %i.dg = select i1 %i.dc, i32 %i.dd, i32 %i.df
  %i.dh = trunc i32 %i.dg to i8
  store i8 %i.dh, ptr %i.cv, align 1, !tbaa !10
  %i.di = mul nuw nsw i32 %i.cq, 6419
  %i.dj = lshr i32 %i.di, 8
  %i.dk = mul nuw nsw i32 %i.ct, 13320
  %i.dl = lshr i32 %i.dk, 8
  %i.dm = add nuw nsw i32 %i.dj, %i.dl
  %i.dn = sub nsw i32 %i.cx, %i.dm                ; 2 uses
  %i.do = add nsw i32 %i.dn, 8708                 ; 2 uses
  %i.dp = icmp ult i32 %i.do, 16384
  %i.dq = lshr i32 %i.do, 6
  %i.dr = icmp slt i32 %i.dn, -8708
  %i.ds = select i1 %i.dr, i32 0, i32 255
  %i.dt = select i1 %i.dp, i32 %i.dq, i32 %i.ds
  %i.du = trunc i32 %i.dt to i8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.cv, i64 1
  store i8 %i.du, ptr %i.dv, align 1, !tbaa !10
  %i.dw = mul nuw nsw i32 %i.ct, 26149
  %i.dx = lshr i32 %i.dw, 8
  %i.dy = add nuw nsw i32 %i.dx, %i.cx            ; 2 uses
  %i.dz = add nsw i32 %i.dy, -14234               ; 2 uses
  %i.ea = icmp ult i32 %i.dz, 16384
  %i.eb = lshr i32 %i.dz, 6
  %i.ec = icmp samesign ult i32 %i.dy, 14234
  %i.ed = select i1 %i.ec, i32 0, i32 255
  %i.ee = select i1 %i.ea, i32 %i.eb, i32 %i.ed
  %i.ef = trunc i32 %i.ee to i8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.cv, i64 2
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !26

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @WebPYuv444ToArgb_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check14 = icmp ult i32 %4, 16
  br i1 %min.iters.check14, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 20 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <16 x i8>, ptr %i.b, align 1, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load15 = load <16 x i8>, ptr %i.c, align 1, !tbaa !10
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load16 = load <16 x i8>, ptr %i.d, align 1, !tbaa !10
  %i.e = shl nuw nsw i64 %index, 2
  %i.f = shl i64 %index, 2
  %i.g = shl i64 %index, 2
  %i.h = shl i64 %index, 2
  %i.i = shl i64 %index, 2
  %i.j = shl i64 %index, 2
  %i.k = shl i64 %index, 2
  %i.l = shl i64 %index, 2
  %i.m = shl i64 %index, 2
  %i.n = shl i64 %index, 2
  %i.o = shl i64 %index, 2
  %i.p = shl i64 %index, 2
  %i.q = shl i64 %index, 2
  %i.r = shl i64 %index, 2
  %i.s = shl i64 %index, 2
  %i.t = shl i64 %index, 2
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %i.e ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 %i.f ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.g ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.h ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 %i.i ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.j ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %i.k ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %i.l ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 28
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 %i.m ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %i.n ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 36
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 %i.o ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 %i.p ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 %i.q ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.r ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 52
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 %i.s ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.t ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 60
  store i8 -1, ptr %i.u, align 1, !tbaa !10
  store i8 -1, ptr %i.w, align 1, !tbaa !10
  store i8 -1, ptr %i.y, align 1, !tbaa !10
  store i8 -1, ptr %i.aa, align 1, !tbaa !10
  store i8 -1, ptr %i.ac, align 1, !tbaa !10
  store i8 -1, ptr %i.ae, align 1, !tbaa !10
  store i8 -1, ptr %i.ag, align 1, !tbaa !10
  store i8 -1, ptr %i.ai, align 1, !tbaa !10
  store i8 -1, ptr %i.ak, align 1, !tbaa !10
  store i8 -1, ptr %i.am, align 1, !tbaa !10
  store i8 -1, ptr %i.ao, align 1, !tbaa !10
  store i8 -1, ptr %i.aq, align 1, !tbaa !10
  store i8 -1, ptr %i.as, align 1, !tbaa !10
  store i8 -1, ptr %i.au, align 1, !tbaa !10
  store i8 -1, ptr %i.aw, align 1, !tbaa !10
  store i8 -1, ptr %i.ay, align 1, !tbaa !10
  %i.az = zext <16 x i8> %wide.load to <16 x i32>
  %i.ba = zext <16 x i8> %wide.load15 to <16 x i32> ; 2 uses
  %i.bb = zext <16 x i8> %wide.load16 to <16 x i32> ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  %i.be = getelementptr inbounds nuw i8, ptr %i.x, i64 9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.z, i64 13
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 17
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ad, i64 21
  %i.bi = getelementptr inbounds nuw i8, ptr %i.af, i64 25
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 29
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aj, i64 33
  %i.bl = getelementptr inbounds nuw i8, ptr %i.al, i64 37
  %i.bm = getelementptr inbounds nuw i8, ptr %i.an, i64 41
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ap, i64 45
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 49
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 53
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 57
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 61
  %i.bs = mul nuw nsw <16 x i32> %i.az, splat (i32 19077)
  %i.bt = lshr <16 x i32> %i.bs, splat (i32 8)    ; 3 uses
  %i.bu = mul nuw nsw <16 x i32> %i.bb, splat (i32 26149)
  %i.bv = lshr <16 x i32> %i.bu, splat (i32 8)
  %i.bw = add nuw nsw <16 x i32> %i.bv, %i.bt     ; 2 uses
  %i.bx = add nsw <16 x i32> %i.bw, splat (i32 -14234) ; 2 uses
  %i.by = icmp ult <16 x i32> %i.bx, splat (i32 16384)
  %i.bz = lshr <16 x i32> %i.bx, splat (i32 6)
  %i.ca = icmp samesign ult <16 x i32> %i.bw, splat (i32 14234)
  %i.cb = select <16 x i1> %i.ca, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.cc = select <16 x i1> %i.by, <16 x i32> %i.bz, <16 x i32> %i.cb
  %i.cd = trunc <16 x i32> %i.cc to <16 x i8>     ; 16 uses
  %i.ce = extractelement <16 x i8> %i.cd, i64 0
  store i8 %i.ce, ptr %i.bc, align 1, !tbaa !10
  %i.cf = extractelement <16 x i8> %i.cd, i64 1
  store i8 %i.cf, ptr %i.bd, align 1, !tbaa !10
  %i.cg = extractelement <16 x i8> %i.cd, i64 2
  store i8 %i.cg, ptr %i.be, align 1, !tbaa !10
  %i.ch = extractelement <16 x i8> %i.cd, i64 3
  store i8 %i.ch, ptr %i.bf, align 1, !tbaa !10
  %i.ci = extractelement <16 x i8> %i.cd, i64 4
  store i8 %i.ci, ptr %i.bg, align 1, !tbaa !10
  %i.cj = extractelement <16 x i8> %i.cd, i64 5
  store i8 %i.cj, ptr %i.bh, align 1, !tbaa !10
  %i.ck = extractelement <16 x i8> %i.cd, i64 6
  store i8 %i.ck, ptr %i.bi, align 1, !tbaa !10
  %i.cl = extractelement <16 x i8> %i.cd, i64 7
  store i8 %i.cl, ptr %i.bj, align 1, !tbaa !10
  %i.cm = extractelement <16 x i8> %i.cd, i64 8
  store i8 %i.cm, ptr %i.bk, align 1, !tbaa !10
  %i.cn = extractelement <16 x i8> %i.cd, i64 9
  store i8 %i.cn, ptr %i.bl, align 1, !tbaa !10
  %i.co = extractelement <16 x i8> %i.cd, i64 10
  store i8 %i.co, ptr %i.bm, align 1, !tbaa !10
  %i.cp = extractelement <16 x i8> %i.cd, i64 11
  store i8 %i.cp, ptr %i.bn, align 1, !tbaa !10
  %i.cq = extractelement <16 x i8> %i.cd, i64 12
  store i8 %i.cq, ptr %i.bo, align 1, !tbaa !10
  %i.cr = extractelement <16 x i8> %i.cd, i64 13
  store i8 %i.cr, ptr %i.bp, align 1, !tbaa !10
  %i.cs = extractelement <16 x i8> %i.cd, i64 14
  store i8 %i.cs, ptr %i.bq, align 1, !tbaa !10
  %i.ct = extractelement <16 x i8> %i.cd, i64 15
  store i8 %i.ct, ptr %i.br, align 1, !tbaa !10
  %i.cu = mul nuw nsw <16 x i32> %i.ba, splat (i32 6419)
  %i.cv = lshr <16 x i32> %i.cu, splat (i32 8)
  %i.cw = mul nuw nsw <16 x i32> %i.bb, splat (i32 13320)
  %i.cx = lshr <16 x i32> %i.cw, splat (i32 8)
  %i.cy = add nuw nsw <16 x i32> %i.cv, %i.cx
  %i.cz = sub nsw <16 x i32> %i.bt, %i.cy         ; 2 uses
  %i.da = add nsw <16 x i32> %i.cz, splat (i32 8708) ; 2 uses
  %i.db = icmp ult <16 x i32> %i.da, splat (i32 16384)
  %i.dc = lshr <16 x i32> %i.da, splat (i32 6)
  %i.dd = icmp slt <16 x i32> %i.cz, splat (i32 -8708)
  %i.de = select <16 x i1> %i.dd, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.df = select <16 x i1> %i.db, <16 x i32> %i.dc, <16 x i32> %i.de
  %i.dg = trunc <16 x i32> %i.df to <16 x i8>     ; 16 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.di = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  %i.dj = getelementptr inbounds nuw i8, ptr %i.x, i64 10
  %i.dk = getelementptr inbounds nuw i8, ptr %i.z, i64 14
  %i.dl = getelementptr inbounds nuw i8, ptr %i.ab, i64 18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.ad, i64 22
  %i.dn = getelementptr inbounds nuw i8, ptr %i.af, i64 26
  %i.do = getelementptr inbounds nuw i8, ptr %i.ah, i64 30
  %i.dp = getelementptr inbounds nuw i8, ptr %i.aj, i64 34
  %i.dq = getelementptr inbounds nuw i8, ptr %i.al, i64 38
  %i.dr = getelementptr inbounds nuw i8, ptr %i.an, i64 42
  %i.ds = getelementptr inbounds nuw i8, ptr %i.ap, i64 46
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ar, i64 50
  %i.du = getelementptr inbounds nuw i8, ptr %i.at, i64 54
  %i.dv = getelementptr inbounds nuw i8, ptr %i.av, i64 58
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ax, i64 62
  %i.dx = extractelement <16 x i8> %i.dg, i64 0
  store i8 %i.dx, ptr %i.dh, align 1, !tbaa !10
  %i.dy = extractelement <16 x i8> %i.dg, i64 1
  store i8 %i.dy, ptr %i.di, align 1, !tbaa !10
  %i.dz = extractelement <16 x i8> %i.dg, i64 2
  store i8 %i.dz, ptr %i.dj, align 1, !tbaa !10
  %i.ea = extractelement <16 x i8> %i.dg, i64 3
  store i8 %i.ea, ptr %i.dk, align 1, !tbaa !10
  %i.eb = extractelement <16 x i8> %i.dg, i64 4
  store i8 %i.eb, ptr %i.dl, align 1, !tbaa !10
  %i.ec = extractelement <16 x i8> %i.dg, i64 5
  store i8 %i.ec, ptr %i.dm, align 1, !tbaa !10
  %i.ed = extractelement <16 x i8> %i.dg, i64 6
  store i8 %i.ed, ptr %i.dn, align 1, !tbaa !10
  %i.ee = extractelement <16 x i8> %i.dg, i64 7
  store i8 %i.ee, ptr %i.do, align 1, !tbaa !10
  %i.ef = extractelement <16 x i8> %i.dg, i64 8
  store i8 %i.ef, ptr %i.dp, align 1, !tbaa !10
  %i.eg = extractelement <16 x i8> %i.dg, i64 9
  store i8 %i.eg, ptr %i.dq, align 1, !tbaa !10
  %i.eh = extractelement <16 x i8> %i.dg, i64 10
  store i8 %i.eh, ptr %i.dr, align 1, !tbaa !10
  %i.ei = extractelement <16 x i8> %i.dg, i64 11
  store i8 %i.ei, ptr %i.ds, align 1, !tbaa !10
  %i.ej = extractelement <16 x i8> %i.dg, i64 12
  store i8 %i.ej, ptr %i.dt, align 1, !tbaa !10
  %i.ek = extractelement <16 x i8> %i.dg, i64 13
  store i8 %i.ek, ptr %i.du, align 1, !tbaa !10
  %i.el = extractelement <16 x i8> %i.dg, i64 14
  store i8 %i.el, ptr %i.dv, align 1, !tbaa !10
  %i.em = extractelement <16 x i8> %i.dg, i64 15
  store i8 %i.em, ptr %i.dw, align 1, !tbaa !10
  %i.en = mul nuw nsw <16 x i32> %i.ba, splat (i32 33050)
  %i.eo = lshr <16 x i32> %i.en, splat (i32 8)
  %i.ep = add nuw nsw <16 x i32> %i.eo, %i.bt     ; 2 uses
  %i.eq = add nsw <16 x i32> %i.ep, splat (i32 -17685) ; 2 uses
  %i.er = icmp ult <16 x i32> %i.eq, splat (i32 16384)
  %i.es = lshr <16 x i32> %i.eq, splat (i32 6)
  %i.et = icmp samesign ult <16 x i32> %i.ep, splat (i32 17685)
  %i.eu = select <16 x i1> %i.et, <16 x i32> zeroinitializer, <16 x i32> splat (i32 255)
  %i.ev = select <16 x i1> %i.er, <16 x i32> %i.es, <16 x i32> %i.eu
  %i.ew = trunc <16 x i32> %i.ev to <16 x i8>     ; 16 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  %i.ey = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  %i.ez = getelementptr inbounds nuw i8, ptr %i.x, i64 11
  %i.fa = getelementptr inbounds nuw i8, ptr %i.z, i64 15
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ab, i64 19
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ad, i64 23
  %i.fd = getelementptr inbounds nuw i8, ptr %i.af, i64 27
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ah, i64 31
  %i.ff = getelementptr inbounds nuw i8, ptr %i.aj, i64 35
  %i.fg = getelementptr inbounds nuw i8, ptr %i.al, i64 39
  %i.fh = getelementptr inbounds nuw i8, ptr %i.an, i64 43
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ap, i64 47
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ar, i64 51
  %i.fk = getelementptr inbounds nuw i8, ptr %i.at, i64 55
  %i.fl = getelementptr inbounds nuw i8, ptr %i.av, i64 59
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ax, i64 63
  %i.fn = extractelement <16 x i8> %i.ew, i64 0
  store i8 %i.fn, ptr %i.ex, align 1, !tbaa !10
  %i.fo = extractelement <16 x i8> %i.ew, i64 1
  store i8 %i.fo, ptr %i.ey, align 1, !tbaa !10
  %i.fp = extractelement <16 x i8> %i.ew, i64 2
  store i8 %i.fp, ptr %i.ez, align 1, !tbaa !10
  %i.fq = extractelement <16 x i8> %i.ew, i64 3
  store i8 %i.fq, ptr %i.fa, align 1, !tbaa !10
  %i.fr = extractelement <16 x i8> %i.ew, i64 4
  store i8 %i.fr, ptr %i.fb, align 1, !tbaa !10
  %i.fs = extractelement <16 x i8> %i.ew, i64 5
  store i8 %i.fs, ptr %i.fc, align 1, !tbaa !10
  %i.ft = extractelement <16 x i8> %i.ew, i64 6
  store i8 %i.ft, ptr %i.fd, align 1, !tbaa !10
  %i.fu = extractelement <16 x i8> %i.ew, i64 7
  store i8 %i.fu, ptr %i.fe, align 1, !tbaa !10
  %i.fv = extractelement <16 x i8> %i.ew, i64 8
  store i8 %i.fv, ptr %i.ff, align 1, !tbaa !10
  %i.fw = extractelement <16 x i8> %i.ew, i64 9
  store i8 %i.fw, ptr %i.fg, align 1, !tbaa !10
  %i.fx = extractelement <16 x i8> %i.ew, i64 10
  store i8 %i.fx, ptr %i.fh, align 1, !tbaa !10
  %i.fy = extractelement <16 x i8> %i.ew, i64 11
  store i8 %i.fy, ptr %i.fi, align 1, !tbaa !10
  %i.fz = extractelement <16 x i8> %i.ew, i64 12
  store i8 %i.fz, ptr %i.fj, align 1, !tbaa !10
  %i.ga = extractelement <16 x i8> %i.ew, i64 13
  store i8 %i.ga, ptr %i.fk, align 1, !tbaa !10
  %i.gb = extractelement <16 x i8> %i.ew, i64 14
  store i8 %i.gb, ptr %i.fl, align 1, !tbaa !10
  %i.gc = extractelement <16 x i8> %i.ew, i64 15
  store i8 %i.gc, ptr %i.fm, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.gd = icmp eq i64 %index.next, %n.vec
  br i1 %i.gd, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !15

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec18 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index19 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next23, %vec.epilog.vector.body ] ; 8 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %index19
  %wide.load20 = load <4 x i8>, ptr %i.ge, align 1, !tbaa !10
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 %index19
  %wide.load21 = load <4 x i8>, ptr %i.gf, align 1, !tbaa !10
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 %index19
  %wide.load22 = load <4 x i8>, ptr %i.gg, align 1, !tbaa !10
  %i.gh = shl nuw nsw i64 %index19, 2
  %i.gi = shl i64 %index19, 2
  %i.gj = shl i64 %index19, 2
  %i.gk = shl i64 %index19, 2
  %i.gl = getelementptr inbounds nuw i8, ptr %3, i64 %i.gh ; 4 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %3, i64 %i.gi ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.go = getelementptr inbounds nuw i8, ptr %3, i64 %i.gj ; 4 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gq = getelementptr inbounds nuw i8, ptr %3, i64 %i.gk ; 4 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 12
  store i8 -1, ptr %i.gl, align 1, !tbaa !10
  store i8 -1, ptr %i.gn, align 1, !tbaa !10
  store i8 -1, ptr %i.gp, align 1, !tbaa !10
  store i8 -1, ptr %i.gr, align 1, !tbaa !10
  %i.gs = zext <4 x i8> %wide.load20 to <4 x i32>
  %i.gt = zext <4 x i8> %wide.load21 to <4 x i32> ; 2 uses
  %i.gu = zext <4 x i8> %wide.load22 to <4 x i32> ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gl, i64 1
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gm, i64 5
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 9
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gq, i64 13
  %i.gz = mul nuw nsw <4 x i32> %i.gs, splat (i32 19077)
  %i.ha = lshr <4 x i32> %i.gz, splat (i32 8)     ; 3 uses
  %i.hb = mul nuw nsw <4 x i32> %i.gu, splat (i32 26149)
  %i.hc = lshr <4 x i32> %i.hb, splat (i32 8)
  %i.hd = add nuw nsw <4 x i32> %i.hc, %i.ha      ; 2 uses
  %i.he = add nsw <4 x i32> %i.hd, splat (i32 -14234) ; 2 uses
  %i.hf = icmp ult <4 x i32> %i.he, splat (i32 16384)
  %i.hg = lshr <4 x i32> %i.he, splat (i32 6)
  %i.hh = icmp samesign ult <4 x i32> %i.hd, splat (i32 14234)
  %i.hi = select <4 x i1> %i.hh, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.hj = select <4 x i1> %i.hf, <4 x i32> %i.hg, <4 x i32> %i.hi
  %i.hk = trunc <4 x i32> %i.hj to <4 x i8>       ; 4 uses
  %i.hl = extractelement <4 x i8> %i.hk, i64 0
  store i8 %i.hl, ptr %i.gv, align 1, !tbaa !10
  %i.hm = extractelement <4 x i8> %i.hk, i64 1
  store i8 %i.hm, ptr %i.gw, align 1, !tbaa !10
  %i.hn = extractelement <4 x i8> %i.hk, i64 2
  store i8 %i.hn, ptr %i.gx, align 1, !tbaa !10
  %i.ho = extractelement <4 x i8> %i.hk, i64 3
  store i8 %i.ho, ptr %i.gy, align 1, !tbaa !10
  %i.hp = mul nuw nsw <4 x i32> %i.gt, splat (i32 6419)
  %i.hq = lshr <4 x i32> %i.hp, splat (i32 8)
  %i.hr = mul nuw nsw <4 x i32> %i.gu, splat (i32 13320)
  %i.hs = lshr <4 x i32> %i.hr, splat (i32 8)
  %i.ht = add nuw nsw <4 x i32> %i.hq, %i.hs
  %i.hu = sub nsw <4 x i32> %i.ha, %i.ht          ; 2 uses
  %i.hv = add nsw <4 x i32> %i.hu, splat (i32 8708) ; 2 uses
  %i.hw = icmp ult <4 x i32> %i.hv, splat (i32 16384)
  %i.hx = lshr <4 x i32> %i.hv, splat (i32 6)
  %i.hy = icmp slt <4 x i32> %i.hu, splat (i32 -8708)
  %i.hz = select <4 x i1> %i.hy, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.ia = select <4 x i1> %i.hw, <4 x i32> %i.hx, <4 x i32> %i.hz
  %i.ib = trunc <4 x i32> %i.ia to <4 x i8>       ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gl, i64 2
  %i.id = getelementptr inbounds nuw i8, ptr %i.gm, i64 6
  %i.ie = getelementptr inbounds nuw i8, ptr %i.go, i64 10
  %i.if = getelementptr inbounds nuw i8, ptr %i.gq, i64 14
  %i.ig = extractelement <4 x i8> %i.ib, i64 0
  store i8 %i.ig, ptr %i.ic, align 1, !tbaa !10
  %i.ih = extractelement <4 x i8> %i.ib, i64 1
  store i8 %i.ih, ptr %i.id, align 1, !tbaa !10
  %i.ii = extractelement <4 x i8> %i.ib, i64 2
  store i8 %i.ii, ptr %i.ie, align 1, !tbaa !10
  %i.ij = extractelement <4 x i8> %i.ib, i64 3
  store i8 %i.ij, ptr %i.if, align 1, !tbaa !10
  %i.ik = mul nuw nsw <4 x i32> %i.gt, splat (i32 33050)
  %i.il = lshr <4 x i32> %i.ik, splat (i32 8)
  %i.im = add nuw nsw <4 x i32> %i.il, %i.ha      ; 2 uses
  %i.in = add nsw <4 x i32> %i.im, splat (i32 -17685) ; 2 uses
  %i.io = icmp ult <4 x i32> %i.in, splat (i32 16384)
  %i.ip = lshr <4 x i32> %i.in, splat (i32 6)
  %i.iq = icmp samesign ult <4 x i32> %i.im, splat (i32 17685)
  %i.ir = select <4 x i1> %i.iq, <4 x i32> zeroinitializer, <4 x i32> splat (i32 255)
  %i.is = select <4 x i1> %i.io, <4 x i32> %i.ip, <4 x i32> %i.ir
  %i.it = trunc <4 x i32> %i.is to <4 x i8>       ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.gl, i64 3
  %i.iv = getelementptr inbounds nuw i8, ptr %i.gm, i64 7
  %i.iw = getelementptr inbounds nuw i8, ptr %i.go, i64 11
  %i.ix = getelementptr inbounds nuw i8, ptr %i.gq, i64 15
  %i.iy = extractelement <4 x i8> %i.it, i64 0
  store i8 %i.iy, ptr %i.iu, align 1, !tbaa !10
  %i.iz = extractelement <4 x i8> %i.it, i64 1
  store i8 %i.iz, ptr %i.iv, align 1, !tbaa !10
  %i.ja = extractelement <4 x i8> %i.it, i64 2
  store i8 %i.ja, ptr %i.iw, align 1, !tbaa !10
  %i.jb = extractelement <4 x i8> %i.it, i64 3
  store i8 %i.jb, ptr %i.ix, align 1, !tbaa !10
  %index.next23 = add nuw i64 %index19, 4         ; 2 uses
  %i.jc = icmp eq i64 %index.next23, %n.vec18
  br i1 %i.jc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !28

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n24 = icmp eq i64 %n.vec18, %wide.trip.count
  br i1 %cmp.n24, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec18, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !10
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.jg = load i8, ptr %i.jf, align 1, !tbaa !10
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.ji = load i8, ptr %i.jh, align 1, !tbaa !10
  %i.jj = shl nuw nsw i64 %indvars.iv, 2
  %i.jk = getelementptr inbounds nuw i8, ptr %3, i64 %i.jj ; 4 uses
  store i8 -1, ptr %i.jk, align 1, !tbaa !10
  %i.jl = zext i8 %i.je to i32
  %i.jm = zext i8 %i.jg to i32                    ; 2 uses
  %i.jn = zext i8 %i.ji to i32                    ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  %i.jp = mul nuw nsw i32 %i.jl, 19077
  %i.jq = lshr i32 %i.jp, 8                       ; 3 uses
  %i.jr = mul nuw nsw i32 %i.jn, 26149
  %i.js = lshr i32 %i.jr, 8
  %i.jt = add nuw nsw i32 %i.js, %i.jq            ; 2 uses
  %i.ju = add nsw i32 %i.jt, -14234               ; 2 uses
  %i.jv = icmp ult i32 %i.ju, 16384
  %i.jw = lshr i32 %i.ju, 6
  %i.jx = icmp samesign ult i32 %i.jt, 14234
  %i.jy = select i1 %i.jx, i32 0, i32 255
  %i.jz = select i1 %i.jv, i32 %i.jw, i32 %i.jy
  %i.ka = trunc i32 %i.jz to i8
  store i8 %i.ka, ptr %i.jo, align 1, !tbaa !10
  %i.kb = mul nuw nsw i32 %i.jm, 6419
  %i.kc = lshr i32 %i.kb, 8
  %i.kd = mul nuw nsw i32 %i.jn, 13320
  %i.ke = lshr i32 %i.kd, 8
  %i.kf = add nuw nsw i32 %i.kc, %i.ke
  %i.kg = sub nsw i32 %i.jq, %i.kf                ; 2 uses
  %i.kh = add nsw i32 %i.kg, 8708                 ; 2 uses
  %i.ki = icmp ult i32 %i.kh, 16384
  %i.kj = lshr i32 %i.kh, 6
  %i.kk = icmp slt i32 %i.kg, -8708
  %i.kl = select i1 %i.kk, i32 0, i32 255
  %i.km = select i1 %i.ki, i32 %i.kj, i32 %i.kl
  %i.kn = trunc i32 %i.km to i8
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jk, i64 2
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !10
  %i.kp = mul nuw nsw i32 %i.jm, 33050
  %i.kq = lshr i32 %i.kp, 8
  %i.kr = add nuw nsw i32 %i.kq, %i.jq            ; 2 uses
  %i.ks = add nsw i32 %i.kr, -17685               ; 2 uses
  %i.kt = icmp ult i32 %i.ks, 16384
  %i.ku = lshr i32 %i.ks, 6
  %i.kv = icmp samesign ult i32 %i.kr, 17685
  %i.kw = select i1 %i.kv, i32 0, i32 255
  %i.kx = select i1 %i.kt, i32 %i.ku, i32 %i.kw
  %i.ky = trunc i32 %i.kx to i8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jk, i64 3
  store i8 %i.ky, ptr %i.kz, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !29

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @WebPYuv444ToRgba4444_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader16, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %index
  %wide.load = load <8 x i8>, ptr %i.b, align 1, !tbaa !10
  %i.c = zext <8 x i8> %wide.load to <8 x i32>
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %index
  %wide.load14 = load <8 x i8>, ptr %i.d, align 1, !tbaa !10
  %i.e = zext <8 x i8> %wide.load14 to <8 x i32>  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 %index
  %wide.load15 = load <8 x i8>, ptr %i.f, align 1, !tbaa !10
  %i.g = zext <8 x i8> %wide.load15 to <8 x i32>  ; 2 uses
  %i.h = shl nuw nsw i64 %index, 1
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 %i.h
  %i.j = mul nuw nsw <8 x i32> %i.c, splat (i32 19077)
  %i.k = lshr <8 x i32> %i.j, splat (i32 8)       ; 3 uses
  %i.l = mul nuw nsw <8 x i32> %i.g, splat (i32 26149)
  %i.m = lshr <8 x i32> %i.l, splat (i32 8)
  %i.n = add nuw nsw <8 x i32> %i.m, %i.k         ; 2 uses
  %i.o = add nsw <8 x i32> %i.n, splat (i32 -14234) ; 2 uses
  %i.p = icmp ult <8 x i32> %i.o, splat (i32 16384)
  %i.q = lshr <8 x i32> %i.o, splat (i32 6)
  %i.r = icmp samesign ult <8 x i32> %i.n, splat (i32 14234)
  %i.s = select <8 x i1> %i.r, <8 x i32> zeroinitializer, <8 x i32> splat (i32 240)
  %i.t = mul nuw nsw <8 x i32> %i.e, splat (i32 6419)
  %i.u = lshr <8 x i32> %i.t, splat (i32 8)
  %i.v = mul nuw nsw <8 x i32> %i.g, splat (i32 13320)
  %i.w = lshr <8 x i32> %i.v, splat (i32 8)
  %i.x = add nuw nsw <8 x i32> %i.u, %i.w
  %i.y = sub nsw <8 x i32> %i.k, %i.x             ; 2 uses
  %i.z = add nsw <8 x i32> %i.y, splat (i32 8708) ; 2 uses
  %i.aa = icmp ult <8 x i32> %i.z, splat (i32 16384)
  %i.ab = lshr <8 x i32> %i.z, splat (i32 6)
  %i.ac = icmp slt <8 x i32> %i.y, splat (i32 -8708)
  %i.ad = select <8 x i1> %i.ac, <8 x i32> zeroinitializer, <8 x i32> splat (i32 240)
  %i.ae = select <8 x i1> %i.aa, <8 x i32> %i.ab, <8 x i32> %i.ad
  %i.af = mul nuw nsw <8 x i32> %i.e, splat (i32 33050)
  %i.ag = lshr <8 x i32> %i.af, splat (i32 8)
  %i.ah = add nuw nsw <8 x i32> %i.ag, %i.k       ; 2 uses
  %i.ai = add nsw <8 x i32> %i.ah, splat (i32 -17685) ; 2 uses
  %i.aj = icmp ult <8 x i32> %i.ai, splat (i32 16384)
  %i.ak = lshr <8 x i32> %i.ai, splat (i32 6)
  %i.al = icmp samesign ult <8 x i32> %i.ah, splat (i32 17685)
  %i.am = select <8 x i1> %i.al, <8 x i32> zeroinitializer, <8 x i32> splat (i32 240)
  %i.an = select <8 x i1> %i.aj, <8 x i32> %i.ak, <8 x i32> %i.am
  %i.ao = and <8 x i32> %i.q, splat (i32 240)
  %i.ap = select <8 x i1> %i.p, <8 x i32> %i.ao, <8 x i32> %i.s
  %i.aq = lshr <8 x i32> %i.ae, splat (i32 4)
  %i.ar = or <8 x i32> %i.ap, %i.aq
  %i.as = trunc <8 x i32> %i.ar to <8 x i8>
  %i.at = trunc <8 x i32> %i.an to <8 x i8>
  %i.au = or <8 x i8> %i.at, splat (i8 15)
  %interleaved.vec = shufflevector <8 x i8> %i.as, <8 x i8> %i.au, <16 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11, i32 4, i32 12, i32 5, i32 13, i32 6, i32 14, i32 7, i32 15>
  store <16 x i8> %interleaved.vec, ptr %i.i, align 1, !tbaa !10
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.av = icmp eq i64 %index.next, %n.vec
  br i1 %i.av, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader16

.lr.ph.preheader16:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader16, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader16 ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !10
  %i.ay = zext i8 %i.ax to i32
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !10
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !10
  %i.be = zext i8 %i.bd to i32                    ; 2 uses
  %i.bf = shl nuw nsw i64 %indvars.iv, 1
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 %i.bf ; 2 uses
  %i.bh = mul nuw nsw i32 %i.ay, 19077
  %i.bi = lshr i32 %i.bh, 8                       ; 3 uses
  %i.bj = mul nuw nsw i32 %i.be, 26149
  %i.bk = lshr i32 %i.bj, 8
  %i.bl = add nuw nsw i32 %i.bk, %i.bi            ; 2 uses
  %i.bm = add nsw i32 %i.bl, -14234               ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 16384
  %i.bo = lshr i32 %i.bm, 6
  %i.bp = icmp samesign ult i32 %i.bl, 14234
  %i.bq = select i1 %i.bp, i32 0, i32 240
  %i.br = mul nuw nsw i32 %i.bb, 6419
  %i.bs = lshr i32 %i.br, 8
  %i.bt = mul nuw nsw i32 %i.be, 13320
  %i.bu = lshr i32 %i.bt, 8
  %i.bv = add nuw nsw i32 %i.bs, %i.bu
  %i.bw = sub nsw i32 %i.bi, %i.bv                ; 2 uses
  %i.bx = add nsw i32 %i.bw, 8708                 ; 2 uses
  %i.by = icmp ult i32 %i.bx, 16384
  %i.bz = lshr i32 %i.bx, 6
  %i.ca = icmp slt i32 %i.bw, -8708
  %i.cb = select i1 %i.ca, i32 0, i32 240
  %i.cc = select i1 %i.by, i32 %i.bz, i32 %i.cb
  %i.cd = mul nuw nsw i32 %i.bb, 33050
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = add nuw nsw i32 %i.ce, %i.bi            ; 2 uses
  %i.cg = add nsw i32 %i.cf, -17685               ; 2 uses
  %i.ch = icmp ult i32 %i.cg, 16384
  %i.ci = lshr i32 %i.cg, 6
  %i.cj = icmp samesign ult i32 %i.cf, 17685
  %i.ck = select i1 %i.cj, i32 0, i32 240
  %i.cl = select i1 %i.ch, i32 %i.ci, i32 %i.ck
  %i.cm = and i32 %i.bo, 240
  %i.cn = select i1 %i.bn, i32 %i.cm, i32 %i.bq
  %i.co = lshr i32 %i.cc, 4
  %i.cp = or i32 %i.cn, %i.co
  %i.cq = trunc i32 %i.cp to i8
  store i8 %i.cq, ptr %i.bg, align 1, !tbaa !10
  %i.cr = trunc i32 %i.cl to i8
  %i.cs = or i8 %i.cr, 15
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store i8 %i.cs, ptr %i.ct, align 1, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @WebPYuv444ToRgb565_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef writeonly captures(none) %3, i32 noundef %4) #1 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
end_hunk_1
begin_hunk_2_@WebPInitYUV444Converters:bb.a
  %.not2.i = icmp eq i32 %i.f, 0
  br i1 %.not2.i, label %WebPInitYUV444Converters_body.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @WebPInitYUV444ConvertersSSE41() #4
  br label %WebPInitYUV444Converters_body.exit

WebPInitYUV444Converters_body.exit:               ; preds = %bb.g, %bb.f, %bb.c, %bb.b
  %i.g = load ptr, ptr @VP8GetCPUInfo, align 8, !tbaa !7
  store volatile ptr %i.g, ptr @WebPInitYUV444Converters.WebPInitYUV444Converters_body_last_cpuinfo_used, align 8, !tbaa !7
  %i.h = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @WebPInitYUV444Converters.WebPInitYUV444Converters_body_lock) #4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %WebPInitYUV444Converters_body.exit
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

declare void @WebPInitYUV444ConvertersSSE2() local_unnamed_addr #3

declare void @WebPInitYUV444ConvertersSSE41() local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @UpsampleRgbaLinePair_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr noalias nofree noundef writeonly captures(none) %7, i32 noundef %8) #1 {
bb.a:
  %i.a = add nsw i32 %8, -1                       ; 3 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %3, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, %i.d               ; 4 uses
  %i.i = load i8, ptr %4, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %i.k = load i8, ptr %5, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.j               ; 4 uses
  %i.o = mul nuw nsw i32 %i.h, 3
  %i.p = add nuw nsw i32 %i.o, 131074
  %i.q = add nuw nsw i32 %i.p, %i.n               ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = load i8, ptr %0, align 1, !tbaa !10
  %i.t = lshr i32 %i.q, 18                        ; 2 uses
  %i.u = zext i8 %i.s to i32
  %i.v = and i32 %i.r, 255                        ; 2 uses
  %i.w = mul nuw nsw i32 %i.u, 19077
  %i.x = lshr i32 %i.w, 8                         ; 3 uses
  %i.y = mul nuw nsw i32 %i.t, 26149
  %i.z = lshr i32 %i.y, 8
  %i.aa = add nuw nsw i32 %i.z, %i.x              ; 2 uses
  %i.ab = add nsw i32 %i.aa, -14234               ; 2 uses
  %i.ac = icmp ult i32 %i.ab, 16384
  %i.ad = lshr i32 %i.ab, 6
  %i.ae = icmp samesign ult i32 %i.aa, 14234
  %i.af = select i1 %i.ae, i32 0, i32 255
  %i.ag = select i1 %i.ac, i32 %i.ad, i32 %i.af
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %6, align 1, !tbaa !10
  %i.ai = mul nuw nsw i32 %i.v, 6419
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = mul nuw nsw i32 %i.t, 13320
  %i.al = lshr i32 %i.ak, 8
  %i.am = add nuw nsw i32 %i.al, %i.aj
  %i.an = sub nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = add nsw i32 %i.an, 8708                 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 16384
  %i.aq = lshr i32 %i.ao, 6
  %i.ar = icmp slt i32 %i.an, -8708
  %i.as = select i1 %i.ar, i32 0, i32 255
  %i.at = select i1 %i.ap, i32 %i.aq, i32 %i.as
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !10
  %i.aw = mul nuw nsw i32 %i.v, 33050
  %i.ax = lshr i32 %i.aw, 8
  %i.ay = add nuw nsw i32 %i.ax, %i.x             ; 2 uses
  %i.az = add nsw i32 %i.ay, -17685               ; 2 uses
  %i.ba = icmp ult i32 %i.az, 16384
  %i.bb = lshr i32 %i.az, 6
  %i.bc = icmp samesign ult i32 %i.ay, 17685
  %i.bd = select i1 %i.bc, i32 0, i32 255
  %i.be = select i1 %i.ba, i32 %i.bb, i32 %i.bd
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 -1, ptr %i.bh, align 1, !tbaa !10
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bi = mul nuw nsw i32 %i.n, 3
  %i.bj = add nuw nsw i32 %i.h, 131074
  %i.bk = add nuw nsw i32 %i.bj, %i.bi            ; 2 uses
  %i.bl = lshr i32 %i.bk, 2
  %i.bm = load i8, ptr %1, align 1, !tbaa !10
  %i.bn = lshr i32 %i.bk, 18                      ; 2 uses
  %i.bo = zext i8 %i.bm to i32
  %i.bp = and i32 %i.bl, 255                      ; 2 uses
  %i.bq = mul nuw nsw i32 %i.bo, 19077
  %i.br = lshr i32 %i.bq, 8                       ; 3 uses
  %i.bs = mul nuw nsw i32 %i.bn, 26149
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = add nuw nsw i32 %i.br, %i.bt            ; 2 uses
  %i.bv = add nsw i32 %i.bu, -14234               ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 16384
  %i.bx = lshr i32 %i.bv, 6
  %i.by = icmp samesign ult i32 %i.bu, 14234
  %i.bz = select i1 %i.by, i32 0, i32 255
  %i.ca = select i1 %i.bw, i32 %i.bx, i32 %i.bz
  %i.cb = trunc i32 %i.ca to i8
  store i8 %i.cb, ptr %7, align 1, !tbaa !10
  %i.cc = mul nuw nsw i32 %i.bp, 6419
  %i.cd = lshr i32 %i.cc, 8
  %i.ce = mul nuw nsw i32 %i.bn, 13320
  %i.cf = lshr i32 %i.ce, 8
  %i.cg = add nuw nsw i32 %i.cd, %i.cf
  %i.ch = sub nsw i32 %i.br, %i.cg                ; 2 uses
  %i.ci = add nsw i32 %i.ch, 8708                 ; 2 uses
  %i.cj = icmp ult i32 %i.ci, 16384
  %i.ck = lshr i32 %i.ci, 6
  %i.cl = icmp slt i32 %i.ch, -8708
  %i.cm = select i1 %i.cl, i32 0, i32 255
  %i.cn = select i1 %i.cj, i32 %i.ck, i32 %i.cm
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !10
  %i.cq = mul nuw nsw i32 %i.bp, 33050
  %i.cr = lshr i32 %i.cq, 8
  %i.cs = add nuw nsw i32 %i.br, %i.cr            ; 2 uses
  %i.ct = add nsw i32 %i.cs, -17685               ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 16384
  %i.cv = lshr i32 %i.ct, 6
  %i.cw = icmp samesign ult i32 %i.cs, 17685
  %i.cx = select i1 %i.cw, i32 0, i32 255
  %i.cy = select i1 %i.cu, i32 %i.cv, i32 %i.cx
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 -1, ptr %i.db, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not94119 = icmp slt i32 %i.b, 1
  br i1 %.not94119, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.dc = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.dc to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 7 uses
  %.091121 = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.dk, %bb.e ] ; 3 uses
  %.092120 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.ds, %bb.e ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !10
  %i.df = zext i8 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !10
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 16
  %i.dk = or disjoint i32 %i.dj, %i.df            ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !10
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !10
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 16
  %i.ds = or disjoint i32 %i.dr, %i.dn            ; 5 uses
  %i.dt = add nuw nsw i32 %.092120, 524296
  %i.du = add nuw nsw i32 %i.dt, %.091121
  %i.dv = add nuw nsw i32 %i.du, %i.dk
  %i.dw = add nuw nsw i32 %i.dv, %i.ds            ; 2 uses
  %i.dx = add nuw nsw i32 %i.dk, %.092120
  %i.dy = shl nuw nsw i32 %i.dx, 1
  %i.dz = add nuw nsw i32 %i.dw, %i.dy
  %i.ea = lshr i32 %i.dz, 3                       ; 2 uses
  %i.eb = add nuw nsw i32 %i.ds, %.091121
  %i.ec = shl nuw nsw i32 %i.eb, 1
  %i.ed = add nuw nsw i32 %i.dw, %i.ec
  %i.ee = lshr i32 %i.ed, 3                       ; 2 uses
  %i.ef = add nuw nsw i32 %i.ea, %.091121         ; 2 uses
  %i.eg = lshr i32 %i.ef, 1
  %i.eh = add nuw nsw i32 %i.ee, %i.dk            ; 2 uses
  %i.ei = lshr i32 %i.eh, 1
  %i.ej = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ek = add nsw i64 %i.ej, -1                   ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %0, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !10
  %i.en = lshr i32 %i.ef, 17                      ; 2 uses
  %i.eo = shl nuw nsw i64 %i.ek, 2                ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 %i.eo ; 4 uses
  %i.eq = zext i8 %i.em to i32
  %i.er = and i32 %i.eg, 255                      ; 2 uses
  %i.es = mul nuw nsw i32 %i.eq, 19077
  %i.et = lshr i32 %i.es, 8                       ; 3 uses
  %i.eu = mul nuw nsw i32 %i.en, 26149
  %i.ev = lshr i32 %i.eu, 8
  %i.ew = add nuw nsw i32 %i.ev, %i.et            ; 2 uses
  %i.ex = add nsw i32 %i.ew, -14234               ; 2 uses
  %i.ey = icmp ult i32 %i.ex, 16384
  %i.ez = lshr i32 %i.ex, 6
  %i.fa = icmp samesign ult i32 %i.ew, 14234
  %i.fb = select i1 %i.fa, i32 0, i32 255
  %i.fc = select i1 %i.ey, i32 %i.ez, i32 %i.fb
  %i.fd = trunc i32 %i.fc to i8
  store i8 %i.fd, ptr %i.ep, align 1, !tbaa !10
  %i.fe = mul nuw nsw i32 %i.er, 6419
  %i.ff = lshr i32 %i.fe, 8
  %i.fg = mul nuw nsw i32 %i.en, 13320
  %i.fh = lshr i32 %i.fg, 8
  %i.fi = add nuw nsw i32 %i.fh, %i.ff
  %i.fj = sub nsw i32 %i.et, %i.fi                ; 2 uses
  %i.fk = add nsw i32 %i.fj, 8708                 ; 2 uses
  %i.fl = icmp ult i32 %i.fk, 16384
  %i.fm = lshr i32 %i.fk, 6
  %i.fn = icmp slt i32 %i.fj, -8708
  %i.fo = select i1 %i.fn, i32 0, i32 255
  %i.fp = select i1 %i.fl, i32 %i.fm, i32 %i.fo
  %i.fq = trunc i32 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !10
  %i.fs = mul nuw nsw i32 %i.er, 33050
  %i.ft = lshr i32 %i.fs, 8
  %i.fu = add nuw nsw i32 %i.ft, %i.et            ; 2 uses
  %i.fv = add nsw i32 %i.fu, -17685               ; 2 uses
  %i.fw = icmp ult i32 %i.fv, 16384
  %i.fx = lshr i32 %i.fv, 6
  %i.fy = icmp samesign ult i32 %i.fu, 17685
  %i.fz = select i1 %i.fy, i32 0, i32 255
  %i.ga = select i1 %i.fw, i32 %i.fx, i32 %i.fz
  %i.gb = trunc i32 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !10
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ep, i64 3
  store i8 -1, ptr %i.gd, align 1, !tbaa !10
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %i.ej
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !10
  %i.gg = lshr i32 %i.eh, 17                      ; 2 uses
  %i.gh = shl nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 %i.gh ; 4 uses
  %i.gj = zext i8 %i.gf to i32
  %i.gk = and i32 %i.ei, 255                      ; 2 uses
  %i.gl = mul nuw nsw i32 %i.gj, 19077
  %i.gm = lshr i32 %i.gl, 8                       ; 3 uses
  %i.gn = mul nuw nsw i32 %i.gg, 26149
  %i.go = lshr i32 %i.gn, 8
  %i.gp = add nuw nsw i32 %i.go, %i.gm            ; 2 uses
  %i.gq = add nsw i32 %i.gp, -14234               ; 2 uses
  %i.gr = icmp ult i32 %i.gq, 16384
  %i.gs = lshr i32 %i.gq, 6
  %i.gt = icmp samesign ult i32 %i.gp, 14234
  %i.gu = select i1 %i.gt, i32 0, i32 255
  %i.gv = select i1 %i.gr, i32 %i.gs, i32 %i.gu
  %i.gw = trunc i32 %i.gv to i8
  store i8 %i.gw, ptr %i.gi, align 1, !tbaa !10
  %i.gx = mul nuw nsw i32 %i.gk, 6419
  %i.gy = lshr i32 %i.gx, 8
  %i.gz = mul nuw nsw i32 %i.gg, 13320
  %i.ha = lshr i32 %i.gz, 8
  %i.hb = add nuw nsw i32 %i.ha, %i.gy
  %i.hc = sub nsw i32 %i.gm, %i.hb                ; 2 uses
  %i.hd = add nsw i32 %i.hc, 8708                 ; 2 uses
  %i.he = icmp ult i32 %i.hd, 16384
  %i.hf = lshr i32 %i.hd, 6
  %i.hg = icmp slt i32 %i.hc, -8708
  %i.hh = select i1 %i.hg, i32 0, i32 255
  %i.hi = select i1 %i.he, i32 %i.hf, i32 %i.hh
  %i.hj = trunc i32 %i.hi to i8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !10
  %i.hl = mul nuw nsw i32 %i.gk, 33050
  %i.hm = lshr i32 %i.hl, 8
  %i.hn = add nuw nsw i32 %i.hm, %i.gm            ; 2 uses
  %i.ho = add nsw i32 %i.hn, -17685               ; 2 uses
  %i.hp = icmp ult i32 %i.ho, 16384
  %i.hq = lshr i32 %i.ho, 6
  %i.hr = icmp samesign ult i32 %i.hn, 17685
  %i.hs = select i1 %i.hr, i32 0, i32 255
  %i.ht = select i1 %i.hp, i32 %i.hq, i32 %i.hs
  %i.hu = trunc i32 %i.ht to i8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !10
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gi, i64 3
  store i8 -1, ptr %i.hw, align 1, !tbaa !10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.hx = add nuw nsw i32 %i.ee, %.092120         ; 2 uses
  %i.hy = lshr i32 %i.hx, 1
  %i.hz = add nuw nsw i32 %i.ea, %i.ds            ; 2 uses
  %i.ia = lshr i32 %i.hz, 1
  %i.ib = getelementptr inbounds i8, ptr %1, i64 %i.ek
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !10
  %i.id = lshr i32 %i.hx, 17                      ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %7, i64 %i.eo ; 4 uses
  %i.if = zext i8 %i.ic to i32
  %i.ig = and i32 %i.hy, 255                      ; 2 uses
  %i.ih = mul nuw nsw i32 %i.if, 19077
  %i.ii = lshr i32 %i.ih, 8                       ; 3 uses
  %i.ij = mul nuw nsw i32 %i.id, 26149
  %i.ik = lshr i32 %i.ij, 8
  %i.il = add nuw nsw i32 %i.ii, %i.ik            ; 2 uses
  %i.im = add nsw i32 %i.il, -14234               ; 2 uses
  %i.in = icmp ult i32 %i.im, 16384
  %i.io = lshr i32 %i.im, 6
  %i.ip = icmp samesign ult i32 %i.il, 14234
  %i.iq = select i1 %i.ip, i32 0, i32 255
  %i.ir = select i1 %i.in, i32 %i.io, i32 %i.iq
  %i.is = trunc i32 %i.ir to i8
  store i8 %i.is, ptr %i.ie, align 1, !tbaa !10
  %i.it = mul nuw nsw i32 %i.ig, 6419
  %i.iu = lshr i32 %i.it, 8
  %i.iv = mul nuw nsw i32 %i.id, 13320
  %i.iw = lshr i32 %i.iv, 8
  %i.ix = add nuw nsw i32 %i.iu, %i.iw
  %i.iy = sub nsw i32 %i.ii, %i.ix                ; 2 uses
  %i.iz = add nsw i32 %i.iy, 8708                 ; 2 uses
  %i.ja = icmp ult i32 %i.iz, 16384
  %i.jb = lshr i32 %i.iz, 6
  %i.jc = icmp slt i32 %i.iy, -8708
  %i.jd = select i1 %i.jc, i32 0, i32 255
  %i.je = select i1 %i.ja, i32 %i.jb, i32 %i.jd
  %i.jf = trunc i32 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !10
  %i.jh = mul nuw nsw i32 %i.ig, 33050
  %i.ji = lshr i32 %i.jh, 8
  %i.jj = add nuw nsw i32 %i.ii, %i.ji            ; 2 uses
  %i.jk = add nsw i32 %i.jj, -17685               ; 2 uses
  %i.jl = icmp ult i32 %i.jk, 16384
  %i.jm = lshr i32 %i.jk, 6
  %i.jn = icmp samesign ult i32 %i.jj, 17685
  %i.jo = select i1 %i.jn, i32 0, i32 255
  %i.jp = select i1 %i.jl, i32 %i.jm, i32 %i.jo
  %i.jq = trunc i32 %i.jp to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  store i8 %i.jq, ptr %i.jr, align 1, !tbaa !10
  %i.js = getelementptr inbounds nuw i8, ptr %i.ie, i64 3
  store i8 -1, ptr %i.js, align 1, !tbaa !10
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ej
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !10
  %i.jv = lshr i32 %i.hz, 17                      ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %7, i64 %i.gh ; 4 uses
  %i.jx = zext i8 %i.ju to i32
  %i.jy = and i32 %i.ia, 255                      ; 2 uses
  %i.jz = mul nuw nsw i32 %i.jx, 19077
  %i.ka = lshr i32 %i.jz, 8                       ; 3 uses
  %i.kb = mul nuw nsw i32 %i.jv, 26149
  %i.kc = lshr i32 %i.kb, 8
  %i.kd = add nuw nsw i32 %i.ka, %i.kc            ; 2 uses
  %i.ke = add nsw i32 %i.kd, -14234               ; 2 uses
  %i.kf = icmp ult i32 %i.ke, 16384
  %i.kg = lshr i32 %i.ke, 6
  %i.kh = icmp samesign ult i32 %i.kd, 14234
  %i.ki = select i1 %i.kh, i32 0, i32 255
  %i.kj = select i1 %i.kf, i32 %i.kg, i32 %i.ki
  %i.kk = trunc i32 %i.kj to i8
  store i8 %i.kk, ptr %i.jw, align 1, !tbaa !10
  %i.kl = mul nuw nsw i32 %i.jy, 6419
  %i.km = lshr i32 %i.kl, 8
  %i.kn = mul nuw nsw i32 %i.jv, 13320
  %i.ko = lshr i32 %i.kn, 8
  %i.kp = add nuw nsw i32 %i.km, %i.ko
  %i.kq = sub nsw i32 %i.ka, %i.kp                ; 2 uses
  %i.kr = add nsw i32 %i.kq, 8708                 ; 2 uses
  %i.ks = icmp ult i32 %i.kr, 16384
  %i.kt = lshr i32 %i.kr, 6
  %i.ku = icmp slt i32 %i.kq, -8708
  %i.kv = select i1 %i.ku, i32 0, i32 255
  %i.kw = select i1 %i.ks, i32 %i.kt, i32 %i.kv
  %i.kx = trunc i32 %i.kw to i8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !10
  %i.kz = mul nuw nsw i32 %i.jy, 33050
  %i.la = lshr i32 %i.kz, 8
  %i.lb = add nuw nsw i32 %i.ka, %i.la            ; 2 uses
  %i.lc = add nsw i32 %i.lb, -17685               ; 2 uses
  %i.ld = icmp ult i32 %i.lc, 16384
  %i.le = lshr i32 %i.lc, 6
  %i.lf = icmp samesign ult i32 %i.lb, 17685
  %i.lg = select i1 %i.lf, i32 0, i32 255
  %i.lh = select i1 %i.ld, i32 %i.le, i32 %i.lg
  %i.li = trunc i32 %i.lh to i8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  store i8 %i.li, ptr %i.lj, align 1, !tbaa !10
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jw, i64 3
  store i8 -1, ptr %i.lk, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !35

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.092.lcssa = phi i32 [ %i.n, %bb.c ], [ %i.ds, %bb.e ] ; 2 uses
  %.091.lcssa = phi i32 [ %i.h, %bb.c ], [ %i.dk, %bb.e ] ; 2 uses
  %i.ll = and i32 %8, 1
  %.not95 = icmp eq i32 %i.ll, 0
  br i1 %.not95, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.lm = mul nuw nsw i32 %.091.lcssa, 3
  %i.ln = add nuw nsw i32 %.092.lcssa, 131074
  %i.lo = add nuw nsw i32 %i.ln, %i.lm            ; 2 uses
  %i.lp = lshr i32 %i.lo, 2
  %i.lq = sext i32 %i.a to i64                    ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %0, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !10
  %i.lt = lshr i32 %i.lo, 18                      ; 2 uses
  %i.lu = shl nsw i32 %i.a, 2
  %i.lv = sext i32 %i.lu to i64                   ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %6, i64 %i.lv ; 4 uses
  %i.lx = zext i8 %i.ls to i32
  %i.ly = and i32 %i.lp, 255                      ; 2 uses
  %i.lz = mul nuw nsw i32 %i.lx, 19077
  %i.ma = lshr i32 %i.lz, 8                       ; 3 uses
  %i.mb = mul nuw nsw i32 %i.lt, 26149
  %i.mc = lshr i32 %i.mb, 8
  %i.md = add nuw nsw i32 %i.ma, %i.mc            ; 2 uses
  %i.me = add nsw i32 %i.md, -14234               ; 2 uses
  %i.mf = icmp ult i32 %i.me, 16384
  %i.mg = lshr i32 %i.me, 6
  %i.mh = icmp samesign ult i32 %i.md, 14234
  %i.mi = select i1 %i.mh, i32 0, i32 255
  %i.mj = select i1 %i.mf, i32 %i.mg, i32 %i.mi
  %i.mk = trunc i32 %i.mj to i8
  store i8 %i.mk, ptr %i.lw, align 1, !tbaa !10
  %i.ml = mul nuw nsw i32 %i.ly, 6419
  %i.mm = lshr i32 %i.ml, 8
  %i.mn = mul nuw nsw i32 %i.lt, 13320
  %i.mo = lshr i32 %i.mn, 8
  %i.mp = add nuw nsw i32 %i.mm, %i.mo
  %i.mq = sub nsw i32 %i.ma, %i.mp                ; 2 uses
  %i.mr = add nsw i32 %i.mq, 8708                 ; 2 uses
  %i.ms = icmp ult i32 %i.mr, 16384
  %i.mt = lshr i32 %i.mr, 6
  %i.mu = icmp slt i32 %i.mq, -8708
  %i.mv = select i1 %i.mu, i32 0, i32 255
  %i.mw = select i1 %i.ms, i32 %i.mt, i32 %i.mv
  %i.mx = trunc i32 %i.mw to i8
  %i.my = getelementptr inbounds nuw i8, ptr %i.lw, i64 1
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !10
  %i.mz = mul nuw nsw i32 %i.ly, 33050
  %i.na = lshr i32 %i.mz, 8
  %i.nb = add nuw nsw i32 %i.ma, %i.na            ; 2 uses
  %i.nc = add nsw i32 %i.nb, -17685               ; 2 uses
  %i.nd = icmp ult i32 %i.nc, 16384
  %i.ne = lshr i32 %i.nc, 6
  %i.nf = icmp samesign ult i32 %i.nb, 17685
  %i.ng = select i1 %i.nf, i32 0, i32 255
  %i.nh = select i1 %i.nd, i32 %i.ne, i32 %i.ng
  %i.ni = trunc i32 %i.nh to i8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lw, i64 2
  store i8 %i.ni, ptr %i.nj, align 1, !tbaa !10
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lw, i64 3
  store i8 -1, ptr %i.nk, align 1, !tbaa !10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.nl = mul nuw nsw i32 %.092.lcssa, 3
  %i.nm = add nuw nsw i32 %.091.lcssa, 131074
  %i.nn = add nuw nsw i32 %i.nm, %i.nl            ; 2 uses
  %i.no = lshr i32 %i.nn, 2
  %i.np = getelementptr inbounds i8, ptr %1, i64 %i.lq
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !10
  %i.nr = lshr i32 %i.nn, 18                      ; 2 uses
  %i.ns = getelementptr inbounds i8, ptr %7, i64 %i.lv ; 4 uses
  %i.nt = zext i8 %i.nq to i32
  %i.nu = and i32 %i.no, 255                      ; 2 uses
  %i.nv = mul nuw nsw i32 %i.nt, 19077
  %i.nw = lshr i32 %i.nv, 8                       ; 3 uses
  %i.nx = mul nuw nsw i32 %i.nr, 26149
  %i.ny = lshr i32 %i.nx, 8
  %i.nz = add nuw nsw i32 %i.nw, %i.ny            ; 2 uses
  %i.oa = add nsw i32 %i.nz, -14234               ; 2 uses
  %i.ob = icmp ult i32 %i.oa, 16384
  %i.oc = lshr i32 %i.oa, 6
  %i.od = icmp samesign ult i32 %i.nz, 14234
  %i.oe = select i1 %i.od, i32 0, i32 255
  %i.of = select i1 %i.ob, i32 %i.oc, i32 %i.oe
  %i.og = trunc i32 %i.of to i8
  store i8 %i.og, ptr %i.ns, align 1, !tbaa !10
  %i.oh = mul nuw nsw i32 %i.nu, 6419
  %i.oi = lshr i32 %i.oh, 8
  %i.oj = mul nuw nsw i32 %i.nr, 13320
  %i.ok = lshr i32 %i.oj, 8
  %i.ol = add nuw nsw i32 %i.oi, %i.ok
  %i.om = sub nsw i32 %i.nw, %i.ol                ; 2 uses
  %i.on = add nsw i32 %i.om, 8708                 ; 2 uses
  %i.oo = icmp ult i32 %i.on, 16384
  %i.op = lshr i32 %i.on, 6
  %i.oq = icmp slt i32 %i.om, -8708
  %i.or = select i1 %i.oq, i32 0, i32 255
  %i.os = select i1 %i.oo, i32 %i.op, i32 %i.or
  %i.ot = trunc i32 %i.os to i8
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  store i8 %i.ot, ptr %i.ou, align 1, !tbaa !10
  %i.ov = mul nuw nsw i32 %i.nu, 33050
  %i.ow = lshr i32 %i.ov, 8
  %i.ox = add nuw nsw i32 %i.nw, %i.ow            ; 2 uses
  %i.oy = add nsw i32 %i.ox, -17685               ; 2 uses
  %i.oz = icmp ult i32 %i.oy, 16384
  %i.pa = lshr i32 %i.oy, 6
  %i.pb = icmp samesign ult i32 %i.ox, 17685
  %i.pc = select i1 %i.pb, i32 0, i32 255
  %i.pd = select i1 %i.oz, i32 %i.pa, i32 %i.pc
  %i.pe = trunc i32 %i.pd to i8
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ns, i64 2
  store i8 %i.pe, ptr %i.pf, align 1, !tbaa !10
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ns, i64 3
  store i8 -1, ptr %i.pg, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @UpsampleBgraLinePair_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr noalias nofree noundef writeonly captures(none) %7, i32 noundef %8) #1 {
bb.a:
  %i.a = add nsw i32 %8, -1                       ; 3 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %3, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, %i.d               ; 4 uses
  %i.i = load i8, ptr %4, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %i.k = load i8, ptr %5, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.j               ; 4 uses
  %i.o = mul nuw nsw i32 %i.h, 3
  %i.p = add nuw nsw i32 %i.o, 131074
  %i.q = add nuw nsw i32 %i.p, %i.n               ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = load i8, ptr %0, align 1, !tbaa !10
  %i.t = lshr i32 %i.q, 18                        ; 2 uses
  %i.u = zext i8 %i.s to i32
  %i.v = and i32 %i.r, 255                        ; 2 uses
  %i.w = mul nuw nsw i32 %i.u, 19077
  %i.x = lshr i32 %i.w, 8                         ; 3 uses
  %i.y = mul nuw nsw i32 %i.v, 33050
  %i.z = lshr i32 %i.y, 8
  %i.aa = add nuw nsw i32 %i.z, %i.x              ; 2 uses
  %i.ab = add nsw i32 %i.aa, -17685               ; 2 uses
  %i.ac = icmp ult i32 %i.ab, 16384
  %i.ad = lshr i32 %i.ab, 6
  %i.ae = icmp samesign ult i32 %i.aa, 17685
  %i.af = select i1 %i.ae, i32 0, i32 255
  %i.ag = select i1 %i.ac, i32 %i.ad, i32 %i.af
  %i.ah = trunc i32 %i.ag to i8
  store i8 %i.ah, ptr %6, align 1, !tbaa !10
  %i.ai = mul nuw nsw i32 %i.v, 6419
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = mul nuw nsw i32 %i.t, 13320
  %i.al = lshr i32 %i.ak, 8
  %i.am = add nuw nsw i32 %i.al, %i.aj
  %i.an = sub nsw i32 %i.x, %i.am                 ; 2 uses
  %i.ao = add nsw i32 %i.an, 8708                 ; 2 uses
  %i.ap = icmp ult i32 %i.ao, 16384
  %i.aq = lshr i32 %i.ao, 6
  %i.ar = icmp slt i32 %i.an, -8708
  %i.as = select i1 %i.ar, i32 0, i32 255
  %i.at = select i1 %i.ap, i32 %i.aq, i32 %i.as
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !10
  %i.aw = mul nuw nsw i32 %i.t, 26149
  %i.ax = lshr i32 %i.aw, 8
  %i.ay = add nuw nsw i32 %i.ax, %i.x             ; 2 uses
  %i.az = add nsw i32 %i.ay, -14234               ; 2 uses
  %i.ba = icmp ult i32 %i.az, 16384
  %i.bb = lshr i32 %i.az, 6
  %i.bc = icmp samesign ult i32 %i.ay, 14234
  %i.bd = select i1 %i.bc, i32 0, i32 255
  %i.be = select i1 %i.ba, i32 %i.bb, i32 %i.bd
  %i.bf = trunc i32 %i.be to i8
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !10
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 -1, ptr %i.bh, align 1, !tbaa !10
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bi = mul nuw nsw i32 %i.n, 3
  %i.bj = add nuw nsw i32 %i.h, 131074
  %i.bk = add nuw nsw i32 %i.bj, %i.bi            ; 2 uses
  %i.bl = lshr i32 %i.bk, 2
  %i.bm = load i8, ptr %1, align 1, !tbaa !10
  %i.bn = lshr i32 %i.bk, 18                      ; 2 uses
  %i.bo = zext i8 %i.bm to i32
  %i.bp = and i32 %i.bl, 255                      ; 2 uses
  %i.bq = mul nuw nsw i32 %i.bo, 19077
  %i.br = lshr i32 %i.bq, 8                       ; 3 uses
  %i.bs = mul nuw nsw i32 %i.bp, 33050
  %i.bt = lshr i32 %i.bs, 8
  %i.bu = add nuw nsw i32 %i.br, %i.bt            ; 2 uses
  %i.bv = add nsw i32 %i.bu, -17685               ; 2 uses
  %i.bw = icmp ult i32 %i.bv, 16384
  %i.bx = lshr i32 %i.bv, 6
  %i.by = icmp samesign ult i32 %i.bu, 17685
  %i.bz = select i1 %i.by, i32 0, i32 255
  %i.ca = select i1 %i.bw, i32 %i.bx, i32 %i.bz
  %i.cb = trunc i32 %i.ca to i8
  store i8 %i.cb, ptr %7, align 1, !tbaa !10
  %i.cc = mul nuw nsw i32 %i.bp, 6419
  %i.cd = lshr i32 %i.cc, 8
  %i.ce = mul nuw nsw i32 %i.bn, 13320
  %i.cf = lshr i32 %i.ce, 8
  %i.cg = add nuw nsw i32 %i.cd, %i.cf
  %i.ch = sub nsw i32 %i.br, %i.cg                ; 2 uses
  %i.ci = add nsw i32 %i.ch, 8708                 ; 2 uses
  %i.cj = icmp ult i32 %i.ci, 16384
  %i.ck = lshr i32 %i.ci, 6
  %i.cl = icmp slt i32 %i.ch, -8708
  %i.cm = select i1 %i.cl, i32 0, i32 255
  %i.cn = select i1 %i.cj, i32 %i.ck, i32 %i.cm
  %i.co = trunc i32 %i.cn to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !10
  %i.cq = mul nuw nsw i32 %i.bn, 26149
  %i.cr = lshr i32 %i.cq, 8
  %i.cs = add nuw nsw i32 %i.br, %i.cr            ; 2 uses
  %i.ct = add nsw i32 %i.cs, -14234               ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 16384
  %i.cv = lshr i32 %i.ct, 6
  %i.cw = icmp samesign ult i32 %i.cs, 14234
  %i.cx = select i1 %i.cw, i32 0, i32 255
  %i.cy = select i1 %i.cu, i32 %i.cv, i32 %i.cx
  %i.cz = trunc i32 %i.cy to i8
  %i.da = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 -1, ptr %i.db, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not94119 = icmp slt i32 %i.b, 1
  br i1 %.not94119, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.dc = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.dc to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 7 uses
  %.091121 = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.dk, %bb.e ] ; 3 uses
  %.092120 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.ds, %bb.e ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !10
  %i.df = zext i8 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !10
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 16
  %i.dk = or disjoint i32 %i.dj, %i.df            ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !10
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !10
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 16
  %i.ds = or disjoint i32 %i.dr, %i.dn            ; 5 uses
  %i.dt = add nuw nsw i32 %.092120, 524296
  %i.du = add nuw nsw i32 %i.dt, %.091121
  %i.dv = add nuw nsw i32 %i.du, %i.dk
  %i.dw = add nuw nsw i32 %i.dv, %i.ds            ; 2 uses
  %i.dx = add nuw nsw i32 %i.dk, %.092120
  %i.dy = shl nuw nsw i32 %i.dx, 1
  %i.dz = add nuw nsw i32 %i.dw, %i.dy
  %i.ea = lshr i32 %i.dz, 3                       ; 2 uses
  %i.eb = add nuw nsw i32 %i.ds, %.091121
  %i.ec = shl nuw nsw i32 %i.eb, 1
  %i.ed = add nuw nsw i32 %i.dw, %i.ec
  %i.ee = lshr i32 %i.ed, 3                       ; 2 uses
  %i.ef = add nuw nsw i32 %i.ea, %.091121         ; 2 uses
  %i.eg = lshr i32 %i.ef, 1
  %i.eh = add nuw nsw i32 %i.ee, %i.dk            ; 2 uses
  %i.ei = lshr i32 %i.eh, 1
  %i.ej = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ek = add nsw i64 %i.ej, -1                   ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %0, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !10
  %i.en = lshr i32 %i.ef, 17                      ; 2 uses
  %i.eo = shl nuw nsw i64 %i.ek, 2                ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 %i.eo ; 4 uses
  %i.eq = zext i8 %i.em to i32
  %i.er = and i32 %i.eg, 255                      ; 2 uses
  %i.es = mul nuw nsw i32 %i.eq, 19077
  %i.et = lshr i32 %i.es, 8                       ; 3 uses
  %i.eu = mul nuw nsw i32 %i.er, 33050
  %i.ev = lshr i32 %i.eu, 8
  %i.ew = add nuw nsw i32 %i.ev, %i.et            ; 2 uses
  %i.ex = add nsw i32 %i.ew, -17685               ; 2 uses
  %i.ey = icmp ult i32 %i.ex, 16384
  %i.ez = lshr i32 %i.ex, 6
  %i.fa = icmp samesign ult i32 %i.ew, 17685
  %i.fb = select i1 %i.fa, i32 0, i32 255
  %i.fc = select i1 %i.ey, i32 %i.ez, i32 %i.fb
  %i.fd = trunc i32 %i.fc to i8
  store i8 %i.fd, ptr %i.ep, align 1, !tbaa !10
  %i.fe = mul nuw nsw i32 %i.er, 6419
  %i.ff = lshr i32 %i.fe, 8
  %i.fg = mul nuw nsw i32 %i.en, 13320
  %i.fh = lshr i32 %i.fg, 8
  %i.fi = add nuw nsw i32 %i.fh, %i.ff
  %i.fj = sub nsw i32 %i.et, %i.fi                ; 2 uses
  %i.fk = add nsw i32 %i.fj, 8708                 ; 2 uses
  %i.fl = icmp ult i32 %i.fk, 16384
  %i.fm = lshr i32 %i.fk, 6
  %i.fn = icmp slt i32 %i.fj, -8708
  %i.fo = select i1 %i.fn, i32 0, i32 255
  %i.fp = select i1 %i.fl, i32 %i.fm, i32 %i.fo
  %i.fq = trunc i32 %i.fp to i8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  store i8 %i.fq, ptr %i.fr, align 1, !tbaa !10
  %i.fs = mul nuw nsw i32 %i.en, 26149
  %i.ft = lshr i32 %i.fs, 8
  %i.fu = add nuw nsw i32 %i.ft, %i.et            ; 2 uses
  %i.fv = add nsw i32 %i.fu, -14234               ; 2 uses
  %i.fw = icmp ult i32 %i.fv, 16384
  %i.fx = lshr i32 %i.fv, 6
  %i.fy = icmp samesign ult i32 %i.fu, 14234
  %i.fz = select i1 %i.fy, i32 0, i32 255
  %i.ga = select i1 %i.fw, i32 %i.fx, i32 %i.fz
  %i.gb = trunc i32 %i.ga to i8
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store i8 %i.gb, ptr %i.gc, align 1, !tbaa !10
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ep, i64 3
  store i8 -1, ptr %i.gd, align 1, !tbaa !10
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %i.ej
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !10
  %i.gg = lshr i32 %i.eh, 17                      ; 2 uses
  %i.gh = shl nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 %i.gh ; 4 uses
  %i.gj = zext i8 %i.gf to i32
  %i.gk = and i32 %i.ei, 255                      ; 2 uses
  %i.gl = mul nuw nsw i32 %i.gj, 19077
  %i.gm = lshr i32 %i.gl, 8                       ; 3 uses
  %i.gn = mul nuw nsw i32 %i.gk, 33050
  %i.go = lshr i32 %i.gn, 8
  %i.gp = add nuw nsw i32 %i.go, %i.gm            ; 2 uses
  %i.gq = add nsw i32 %i.gp, -17685               ; 2 uses
  %i.gr = icmp ult i32 %i.gq, 16384
  %i.gs = lshr i32 %i.gq, 6
  %i.gt = icmp samesign ult i32 %i.gp, 17685
  %i.gu = select i1 %i.gt, i32 0, i32 255
  %i.gv = select i1 %i.gr, i32 %i.gs, i32 %i.gu
  %i.gw = trunc i32 %i.gv to i8
  store i8 %i.gw, ptr %i.gi, align 1, !tbaa !10
  %i.gx = mul nuw nsw i32 %i.gk, 6419
  %i.gy = lshr i32 %i.gx, 8
  %i.gz = mul nuw nsw i32 %i.gg, 13320
  %i.ha = lshr i32 %i.gz, 8
  %i.hb = add nuw nsw i32 %i.ha, %i.gy
  %i.hc = sub nsw i32 %i.gm, %i.hb                ; 2 uses
  %i.hd = add nsw i32 %i.hc, 8708                 ; 2 uses
  %i.he = icmp ult i32 %i.hd, 16384
  %i.hf = lshr i32 %i.hd, 6
  %i.hg = icmp slt i32 %i.hc, -8708
  %i.hh = select i1 %i.hg, i32 0, i32 255
  %i.hi = select i1 %i.he, i32 %i.hf, i32 %i.hh
  %i.hj = trunc i32 %i.hi to i8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  store i8 %i.hj, ptr %i.hk, align 1, !tbaa !10
  %i.hl = mul nuw nsw i32 %i.gg, 26149
  %i.hm = lshr i32 %i.hl, 8
  %i.hn = add nuw nsw i32 %i.hm, %i.gm            ; 2 uses
  %i.ho = add nsw i32 %i.hn, -14234               ; 2 uses
  %i.hp = icmp ult i32 %i.ho, 16384
  %i.hq = lshr i32 %i.ho, 6
  %i.hr = icmp samesign ult i32 %i.hn, 14234
  %i.hs = select i1 %i.hr, i32 0, i32 255
  %i.ht = select i1 %i.hp, i32 %i.hq, i32 %i.hs
  %i.hu = trunc i32 %i.ht to i8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  store i8 %i.hu, ptr %i.hv, align 1, !tbaa !10
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gi, i64 3
  store i8 -1, ptr %i.hw, align 1, !tbaa !10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.hx = add nuw nsw i32 %i.ee, %.092120         ; 2 uses
  %i.hy = lshr i32 %i.hx, 1
  %i.hz = add nuw nsw i32 %i.ea, %i.ds            ; 2 uses
  %i.ia = lshr i32 %i.hz, 1
  %i.ib = getelementptr inbounds i8, ptr %1, i64 %i.ek
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !10
  %i.id = lshr i32 %i.hx, 17                      ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %7, i64 %i.eo ; 4 uses
  %i.if = zext i8 %i.ic to i32
  %i.ig = and i32 %i.hy, 255                      ; 2 uses
  %i.ih = mul nuw nsw i32 %i.if, 19077
  %i.ii = lshr i32 %i.ih, 8                       ; 3 uses
  %i.ij = mul nuw nsw i32 %i.ig, 33050
  %i.ik = lshr i32 %i.ij, 8
  %i.il = add nuw nsw i32 %i.ii, %i.ik            ; 2 uses
  %i.im = add nsw i32 %i.il, -17685               ; 2 uses
  %i.in = icmp ult i32 %i.im, 16384
  %i.io = lshr i32 %i.im, 6
  %i.ip = icmp samesign ult i32 %i.il, 17685
  %i.iq = select i1 %i.ip, i32 0, i32 255
  %i.ir = select i1 %i.in, i32 %i.io, i32 %i.iq
  %i.is = trunc i32 %i.ir to i8
  store i8 %i.is, ptr %i.ie, align 1, !tbaa !10
  %i.it = mul nuw nsw i32 %i.ig, 6419
  %i.iu = lshr i32 %i.it, 8
  %i.iv = mul nuw nsw i32 %i.id, 13320
  %i.iw = lshr i32 %i.iv, 8
  %i.ix = add nuw nsw i32 %i.iu, %i.iw
  %i.iy = sub nsw i32 %i.ii, %i.ix                ; 2 uses
  %i.iz = add nsw i32 %i.iy, 8708                 ; 2 uses
  %i.ja = icmp ult i32 %i.iz, 16384
  %i.jb = lshr i32 %i.iz, 6
  %i.jc = icmp slt i32 %i.iy, -8708
  %i.jd = select i1 %i.jc, i32 0, i32 255
  %i.je = select i1 %i.ja, i32 %i.jb, i32 %i.jd
  %i.jf = trunc i32 %i.je to i8
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !10
  %i.jh = mul nuw nsw i32 %i.id, 26149
  %i.ji = lshr i32 %i.jh, 8
  %i.jj = add nuw nsw i32 %i.ii, %i.ji            ; 2 uses
  %i.jk = add nsw i32 %i.jj, -14234               ; 2 uses
  %i.jl = icmp ult i32 %i.jk, 16384
  %i.jm = lshr i32 %i.jk, 6
  %i.jn = icmp samesign ult i32 %i.jj, 14234
  %i.jo = select i1 %i.jn, i32 0, i32 255
  %i.jp = select i1 %i.jl, i32 %i.jm, i32 %i.jo
  %i.jq = trunc i32 %i.jp to i8
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  store i8 %i.jq, ptr %i.jr, align 1, !tbaa !10
  %i.js = getelementptr inbounds nuw i8, ptr %i.ie, i64 3
  store i8 -1, ptr %i.js, align 1, !tbaa !10
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ej
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !10
  %i.jv = lshr i32 %i.hz, 17                      ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %7, i64 %i.gh ; 4 uses
  %i.jx = zext i8 %i.ju to i32
  %i.jy = and i32 %i.ia, 255                      ; 2 uses
  %i.jz = mul nuw nsw i32 %i.jx, 19077
  %i.ka = lshr i32 %i.jz, 8                       ; 3 uses
  %i.kb = mul nuw nsw i32 %i.jy, 33050
  %i.kc = lshr i32 %i.kb, 8
  %i.kd = add nuw nsw i32 %i.ka, %i.kc            ; 2 uses
  %i.ke = add nsw i32 %i.kd, -17685               ; 2 uses
  %i.kf = icmp ult i32 %i.ke, 16384
  %i.kg = lshr i32 %i.ke, 6
  %i.kh = icmp samesign ult i32 %i.kd, 17685
  %i.ki = select i1 %i.kh, i32 0, i32 255
  %i.kj = select i1 %i.kf, i32 %i.kg, i32 %i.ki
  %i.kk = trunc i32 %i.kj to i8
  store i8 %i.kk, ptr %i.jw, align 1, !tbaa !10
  %i.kl = mul nuw nsw i32 %i.jy, 6419
  %i.km = lshr i32 %i.kl, 8
  %i.kn = mul nuw nsw i32 %i.jv, 13320
  %i.ko = lshr i32 %i.kn, 8
  %i.kp = add nuw nsw i32 %i.km, %i.ko
  %i.kq = sub nsw i32 %i.ka, %i.kp                ; 2 uses
  %i.kr = add nsw i32 %i.kq, 8708                 ; 2 uses
  %i.ks = icmp ult i32 %i.kr, 16384
  %i.kt = lshr i32 %i.kr, 6
  %i.ku = icmp slt i32 %i.kq, -8708
  %i.kv = select i1 %i.ku, i32 0, i32 255
  %i.kw = select i1 %i.ks, i32 %i.kt, i32 %i.kv
  %i.kx = trunc i32 %i.kw to i8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !10
  %i.kz = mul nuw nsw i32 %i.jv, 26149
  %i.la = lshr i32 %i.kz, 8
  %i.lb = add nuw nsw i32 %i.ka, %i.la            ; 2 uses
  %i.lc = add nsw i32 %i.lb, -14234               ; 2 uses
  %i.ld = icmp ult i32 %i.lc, 16384
  %i.le = lshr i32 %i.lc, 6
  %i.lf = icmp samesign ult i32 %i.lb, 14234
  %i.lg = select i1 %i.lf, i32 0, i32 255
  %i.lh = select i1 %i.ld, i32 %i.le, i32 %i.lg
  %i.li = trunc i32 %i.lh to i8
  %i.lj = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  store i8 %i.li, ptr %i.lj, align 1, !tbaa !10
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jw, i64 3
  store i8 -1, ptr %i.lk, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.092.lcssa = phi i32 [ %i.n, %bb.c ], [ %i.ds, %bb.e ] ; 2 uses
  %.091.lcssa = phi i32 [ %i.h, %bb.c ], [ %i.dk, %bb.e ] ; 2 uses
  %i.ll = and i32 %8, 1
  %.not95 = icmp eq i32 %i.ll, 0
  br i1 %.not95, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.lm = mul nuw nsw i32 %.091.lcssa, 3
  %i.ln = add nuw nsw i32 %.092.lcssa, 131074
  %i.lo = add nuw nsw i32 %i.ln, %i.lm            ; 2 uses
  %i.lp = lshr i32 %i.lo, 2
  %i.lq = sext i32 %i.a to i64                    ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %0, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !10
  %i.lt = lshr i32 %i.lo, 18                      ; 2 uses
  %i.lu = shl nsw i32 %i.a, 2
  %i.lv = sext i32 %i.lu to i64                   ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %6, i64 %i.lv ; 4 uses
  %i.lx = zext i8 %i.ls to i32
  %i.ly = and i32 %i.lp, 255                      ; 2 uses
  %i.lz = mul nuw nsw i32 %i.lx, 19077
  %i.ma = lshr i32 %i.lz, 8                       ; 3 uses
  %i.mb = mul nuw nsw i32 %i.ly, 33050
  %i.mc = lshr i32 %i.mb, 8
  %i.md = add nuw nsw i32 %i.ma, %i.mc            ; 2 uses
  %i.me = add nsw i32 %i.md, -17685               ; 2 uses
  %i.mf = icmp ult i32 %i.me, 16384
  %i.mg = lshr i32 %i.me, 6
  %i.mh = icmp samesign ult i32 %i.md, 17685
  %i.mi = select i1 %i.mh, i32 0, i32 255
  %i.mj = select i1 %i.mf, i32 %i.mg, i32 %i.mi
  %i.mk = trunc i32 %i.mj to i8
  store i8 %i.mk, ptr %i.lw, align 1, !tbaa !10
  %i.ml = mul nuw nsw i32 %i.ly, 6419
  %i.mm = lshr i32 %i.ml, 8
  %i.mn = mul nuw nsw i32 %i.lt, 13320
  %i.mo = lshr i32 %i.mn, 8
  %i.mp = add nuw nsw i32 %i.mm, %i.mo
  %i.mq = sub nsw i32 %i.ma, %i.mp                ; 2 uses
  %i.mr = add nsw i32 %i.mq, 8708                 ; 2 uses
  %i.ms = icmp ult i32 %i.mr, 16384
  %i.mt = lshr i32 %i.mr, 6
  %i.mu = icmp slt i32 %i.mq, -8708
  %i.mv = select i1 %i.mu, i32 0, i32 255
  %i.mw = select i1 %i.ms, i32 %i.mt, i32 %i.mv
  %i.mx = trunc i32 %i.mw to i8
  %i.my = getelementptr inbounds nuw i8, ptr %i.lw, i64 1
  store i8 %i.mx, ptr %i.my, align 1, !tbaa !10
  %i.mz = mul nuw nsw i32 %i.lt, 26149
  %i.na = lshr i32 %i.mz, 8
  %i.nb = add nuw nsw i32 %i.ma, %i.na            ; 2 uses
  %i.nc = add nsw i32 %i.nb, -14234               ; 2 uses
  %i.nd = icmp ult i32 %i.nc, 16384
  %i.ne = lshr i32 %i.nc, 6
  %i.nf = icmp samesign ult i32 %i.nb, 14234
  %i.ng = select i1 %i.nf, i32 0, i32 255
  %i.nh = select i1 %i.nd, i32 %i.ne, i32 %i.ng
  %i.ni = trunc i32 %i.nh to i8
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lw, i64 2
  store i8 %i.ni, ptr %i.nj, align 1, !tbaa !10
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lw, i64 3
  store i8 -1, ptr %i.nk, align 1, !tbaa !10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.nl = mul nuw nsw i32 %.092.lcssa, 3
  %i.nm = add nuw nsw i32 %.091.lcssa, 131074
  %i.nn = add nuw nsw i32 %i.nm, %i.nl            ; 2 uses
  %i.no = lshr i32 %i.nn, 2
  %i.np = getelementptr inbounds i8, ptr %1, i64 %i.lq
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !10
  %i.nr = lshr i32 %i.nn, 18                      ; 2 uses
  %i.ns = getelementptr inbounds i8, ptr %7, i64 %i.lv ; 4 uses
  %i.nt = zext i8 %i.nq to i32
  %i.nu = and i32 %i.no, 255                      ; 2 uses
  %i.nv = mul nuw nsw i32 %i.nt, 19077
  %i.nw = lshr i32 %i.nv, 8                       ; 3 uses
  %i.nx = mul nuw nsw i32 %i.nu, 33050
  %i.ny = lshr i32 %i.nx, 8
  %i.nz = add nuw nsw i32 %i.nw, %i.ny            ; 2 uses
  %i.oa = add nsw i32 %i.nz, -17685               ; 2 uses
  %i.ob = icmp ult i32 %i.oa, 16384
  %i.oc = lshr i32 %i.oa, 6
  %i.od = icmp samesign ult i32 %i.nz, 17685
  %i.oe = select i1 %i.od, i32 0, i32 255
  %i.of = select i1 %i.ob, i32 %i.oc, i32 %i.oe
  %i.og = trunc i32 %i.of to i8
  store i8 %i.og, ptr %i.ns, align 1, !tbaa !10
  %i.oh = mul nuw nsw i32 %i.nu, 6419
  %i.oi = lshr i32 %i.oh, 8
  %i.oj = mul nuw nsw i32 %i.nr, 13320
  %i.ok = lshr i32 %i.oj, 8
  %i.ol = add nuw nsw i32 %i.oi, %i.ok
  %i.om = sub nsw i32 %i.nw, %i.ol                ; 2 uses
  %i.on = add nsw i32 %i.om, 8708                 ; 2 uses
  %i.oo = icmp ult i32 %i.on, 16384
  %i.op = lshr i32 %i.on, 6
  %i.oq = icmp slt i32 %i.om, -8708
  %i.or = select i1 %i.oq, i32 0, i32 255
  %i.os = select i1 %i.oo, i32 %i.op, i32 %i.or
end_hunk_2
begin_hunk_3_@UpsampleBgrLinePair_C:bb.a
  %i.my = add nsw i32 %i.mx, 8708                 ; 2 uses
  %i.mz = icmp ult i32 %i.my, 16384
  %i.na = lshr i32 %i.my, 6
  %i.nb = icmp slt i32 %i.mx, -8708
  %i.nc = select i1 %i.nb, i32 0, i32 255
  %i.nd = select i1 %i.mz, i32 %i.na, i32 %i.nc
  %i.ne = trunc i32 %i.nd to i8
  %i.nf = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !10
  %i.ng = mul nuw nsw i32 %i.me, 26149
  %i.nh = lshr i32 %i.ng, 8
  %i.ni = add nuw nsw i32 %i.mh, %i.nh            ; 2 uses
  %i.nj = add nsw i32 %i.ni, -14234               ; 2 uses
  %i.nk = icmp ult i32 %i.nj, 16384
  %i.nl = lshr i32 %i.nj, 6
  %i.nm = icmp samesign ult i32 %i.ni, 14234
  %i.nn = select i1 %i.nm, i32 0, i32 255
  %i.no = select i1 %i.nk, i32 %i.nl, i32 %i.nn
  %i.np = trunc i32 %i.no to i8
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  store i8 %i.np, ptr %i.nq, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @UpsampleArgbLinePair_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias nofree noundef writeonly captures(none) initializes((0, 4)) %6, ptr noalias nofree noundef writeonly captures(none) %7, i32 noundef %8) #1 {
bb.a:
  %i.a = add nsw i32 %8, -1                       ; 3 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %3, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, %i.d               ; 4 uses
  %i.i = load i8, ptr %4, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %i.k = load i8, ptr %5, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.j               ; 4 uses
  %i.o = mul nuw nsw i32 %i.h, 3
  %i.p = add nuw nsw i32 %i.o, 131074
  %i.q = add nuw nsw i32 %i.p, %i.n               ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = load i8, ptr %0, align 1, !tbaa !10
  %i.t = lshr i32 %i.q, 18                        ; 2 uses
  store i8 -1, ptr %6, align 1, !tbaa !10
  %i.u = zext i8 %i.s to i32
  %i.v = and i32 %i.r, 255                        ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 1
  %i.x = mul nuw nsw i32 %i.u, 19077
  %i.y = lshr i32 %i.x, 8                         ; 3 uses
  %i.z = mul nuw nsw i32 %i.t, 26149
  %i.aa = lshr i32 %i.z, 8
  %i.ab = add nuw nsw i32 %i.aa, %i.y             ; 2 uses
  %i.ac = add nsw i32 %i.ab, -14234               ; 2 uses
  %i.ad = icmp ult i32 %i.ac, 16384
  %i.ae = lshr i32 %i.ac, 6
  %i.af = icmp samesign ult i32 %i.ab, 14234
  %i.ag = select i1 %i.af, i32 0, i32 255
  %i.ah = select i1 %i.ad, i32 %i.ae, i32 %i.ag
  %i.ai = trunc i32 %i.ah to i8
  store i8 %i.ai, ptr %i.w, align 1, !tbaa !10
  %i.aj = mul nuw nsw i32 %i.v, 6419
  %i.ak = lshr i32 %i.aj, 8
  %i.al = mul nuw nsw i32 %i.t, 13320
  %i.am = lshr i32 %i.al, 8
  %i.an = add nuw nsw i32 %i.am, %i.ak
  %i.ao = sub nsw i32 %i.y, %i.an                 ; 2 uses
  %i.ap = add nsw i32 %i.ao, 8708                 ; 2 uses
  %i.aq = icmp ult i32 %i.ap, 16384
  %i.ar = lshr i32 %i.ap, 6
  %i.as = icmp slt i32 %i.ao, -8708
  %i.at = select i1 %i.as, i32 0, i32 255
  %i.au = select i1 %i.aq, i32 %i.ar, i32 %i.at
  %i.av = trunc i32 %i.au to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 2
  store i8 %i.av, ptr %i.aw, align 1, !tbaa !10
  %i.ax = mul nuw nsw i32 %i.v, 33050
  %i.ay = lshr i32 %i.ax, 8
  %i.az = add nuw nsw i32 %i.ay, %i.y             ; 2 uses
  %i.ba = add nsw i32 %i.az, -17685               ; 2 uses
  %i.bb = icmp ult i32 %i.ba, 16384
  %i.bc = lshr i32 %i.ba, 6
  %i.bd = icmp samesign ult i32 %i.az, 17685
  %i.be = select i1 %i.bd, i32 0, i32 255
  %i.bf = select i1 %i.bb, i32 %i.bc, i32 %i.be
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 3
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !10
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bi = mul nuw nsw i32 %i.n, 3
  %i.bj = add nuw nsw i32 %i.h, 131074
  %i.bk = add nuw nsw i32 %i.bj, %i.bi            ; 2 uses
  %i.bl = lshr i32 %i.bk, 2
  %i.bm = load i8, ptr %1, align 1, !tbaa !10
  %i.bn = lshr i32 %i.bk, 18                      ; 2 uses
  store i8 -1, ptr %7, align 1, !tbaa !10
  %i.bo = zext i8 %i.bm to i32
  %i.bp = and i32 %i.bl, 255                      ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %7, i64 1
  %i.br = mul nuw nsw i32 %i.bo, 19077
  %i.bs = lshr i32 %i.br, 8                       ; 3 uses
  %i.bt = mul nuw nsw i32 %i.bn, 26149
  %i.bu = lshr i32 %i.bt, 8
  %i.bv = add nuw nsw i32 %i.bs, %i.bu            ; 2 uses
  %i.bw = add nsw i32 %i.bv, -14234               ; 2 uses
  %i.bx = icmp ult i32 %i.bw, 16384
  %i.by = lshr i32 %i.bw, 6
  %i.bz = icmp samesign ult i32 %i.bv, 14234
  %i.ca = select i1 %i.bz, i32 0, i32 255
  %i.cb = select i1 %i.bx, i32 %i.by, i32 %i.ca
  %i.cc = trunc i32 %i.cb to i8
  store i8 %i.cc, ptr %i.bq, align 1, !tbaa !10
  %i.cd = mul nuw nsw i32 %i.bp, 6419
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = mul nuw nsw i32 %i.bn, 13320
  %i.cg = lshr i32 %i.cf, 8
  %i.ch = add nuw nsw i32 %i.ce, %i.cg
  %i.ci = sub nsw i32 %i.bs, %i.ch                ; 2 uses
  %i.cj = add nsw i32 %i.ci, 8708                 ; 2 uses
  %i.ck = icmp ult i32 %i.cj, 16384
  %i.cl = lshr i32 %i.cj, 6
  %i.cm = icmp slt i32 %i.ci, -8708
  %i.cn = select i1 %i.cm, i32 0, i32 255
  %i.co = select i1 %i.ck, i32 %i.cl, i32 %i.cn
  %i.cp = trunc i32 %i.co to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %7, i64 2
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !10
  %i.cr = mul nuw nsw i32 %i.bp, 33050
  %i.cs = lshr i32 %i.cr, 8
  %i.ct = add nuw nsw i32 %i.bs, %i.cs            ; 2 uses
  %i.cu = add nsw i32 %i.ct, -17685               ; 2 uses
  %i.cv = icmp ult i32 %i.cu, 16384
  %i.cw = lshr i32 %i.cu, 6
  %i.cx = icmp samesign ult i32 %i.ct, 17685
  %i.cy = select i1 %i.cx, i32 0, i32 255
  %i.cz = select i1 %i.cv, i32 %i.cw, i32 %i.cy
  %i.da = trunc i32 %i.cz to i8
  %i.db = getelementptr inbounds nuw i8, ptr %7, i64 3
  store i8 %i.da, ptr %i.db, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not94119 = icmp slt i32 %i.b, 1
  br i1 %.not94119, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.dc = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.dc to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 7 uses
  %.091121 = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.dk, %bb.e ] ; 3 uses
  %.092120 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.ds, %bb.e ] ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !10
  %i.df = zext i8 %i.de to i32
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !10
  %i.di = zext i8 %i.dh to i32
  %i.dj = shl nuw nsw i32 %i.di, 16
  %i.dk = or disjoint i32 %i.dj, %i.df            ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !10
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !10
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 16
  %i.ds = or disjoint i32 %i.dr, %i.dn            ; 5 uses
  %i.dt = add nuw nsw i32 %.092120, 524296
  %i.du = add nuw nsw i32 %i.dt, %.091121
  %i.dv = add nuw nsw i32 %i.du, %i.dk
  %i.dw = add nuw nsw i32 %i.dv, %i.ds            ; 2 uses
  %i.dx = add nuw nsw i32 %i.dk, %.092120
  %i.dy = shl nuw nsw i32 %i.dx, 1
  %i.dz = add nuw nsw i32 %i.dw, %i.dy
  %i.ea = lshr i32 %i.dz, 3                       ; 2 uses
  %i.eb = add nuw nsw i32 %i.ds, %.091121
  %i.ec = shl nuw nsw i32 %i.eb, 1
  %i.ed = add nuw nsw i32 %i.dw, %i.ec
  %i.ee = lshr i32 %i.ed, 3                       ; 2 uses
  %i.ef = add nuw nsw i32 %i.ea, %.091121         ; 2 uses
  %i.eg = lshr i32 %i.ef, 1
  %i.eh = add nuw nsw i32 %i.ee, %i.dk            ; 2 uses
  %i.ei = lshr i32 %i.eh, 1
  %i.ej = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.ek = add nsw i64 %i.ej, -1                   ; 3 uses
  %i.el = getelementptr inbounds i8, ptr %0, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !10
  %i.en = lshr i32 %i.ef, 17                      ; 2 uses
  %i.eo = shl nuw nsw i64 %i.ek, 2                ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %6, i64 %i.eo ; 4 uses
  store i8 -1, ptr %i.ep, align 1, !tbaa !10
  %i.eq = zext i8 %i.em to i32
  %i.er = and i32 %i.eg, 255                      ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.ep, i64 1
  %i.et = mul nuw nsw i32 %i.eq, 19077
  %i.eu = lshr i32 %i.et, 8                       ; 3 uses
  %i.ev = mul nuw nsw i32 %i.en, 26149
  %i.ew = lshr i32 %i.ev, 8
  %i.ex = add nuw nsw i32 %i.ew, %i.eu            ; 2 uses
  %i.ey = add nsw i32 %i.ex, -14234               ; 2 uses
  %i.ez = icmp ult i32 %i.ey, 16384
  %i.fa = lshr i32 %i.ey, 6
  %i.fb = icmp samesign ult i32 %i.ex, 14234
  %i.fc = select i1 %i.fb, i32 0, i32 255
  %i.fd = select i1 %i.ez, i32 %i.fa, i32 %i.fc
  %i.fe = trunc i32 %i.fd to i8
  store i8 %i.fe, ptr %i.es, align 1, !tbaa !10
  %i.ff = mul nuw nsw i32 %i.er, 6419
  %i.fg = lshr i32 %i.ff, 8
  %i.fh = mul nuw nsw i32 %i.en, 13320
  %i.fi = lshr i32 %i.fh, 8
  %i.fj = add nuw nsw i32 %i.fi, %i.fg
  %i.fk = sub nsw i32 %i.eu, %i.fj                ; 2 uses
  %i.fl = add nsw i32 %i.fk, 8708                 ; 2 uses
  %i.fm = icmp ult i32 %i.fl, 16384
  %i.fn = lshr i32 %i.fl, 6
  %i.fo = icmp slt i32 %i.fk, -8708
  %i.fp = select i1 %i.fo, i32 0, i32 255
  %i.fq = select i1 %i.fm, i32 %i.fn, i32 %i.fp
  %i.fr = trunc i32 %i.fq to i8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ep, i64 2
  store i8 %i.fr, ptr %i.fs, align 1, !tbaa !10
  %i.ft = mul nuw nsw i32 %i.er, 33050
  %i.fu = lshr i32 %i.ft, 8
  %i.fv = add nuw nsw i32 %i.fu, %i.eu            ; 2 uses
  %i.fw = add nsw i32 %i.fv, -17685               ; 2 uses
  %i.fx = icmp ult i32 %i.fw, 16384
  %i.fy = lshr i32 %i.fw, 6
  %i.fz = icmp samesign ult i32 %i.fv, 17685
  %i.ga = select i1 %i.fz, i32 0, i32 255
  %i.gb = select i1 %i.fx, i32 %i.fy, i32 %i.ga
  %i.gc = trunc i32 %i.gb to i8
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ep, i64 3
  store i8 %i.gc, ptr %i.gd, align 1, !tbaa !10
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 %i.ej
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !10
  %i.gg = lshr i32 %i.eh, 17                      ; 2 uses
  %i.gh = shl nuw nsw i64 %indvars.iv, 3          ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %6, i64 %i.gh ; 4 uses
  store i8 -1, ptr %i.gi, align 1, !tbaa !10
  %i.gj = zext i8 %i.gf to i32
  %i.gk = and i32 %i.ei, 255                      ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gi, i64 1
  %i.gm = mul nuw nsw i32 %i.gj, 19077
  %i.gn = lshr i32 %i.gm, 8                       ; 3 uses
  %i.go = mul nuw nsw i32 %i.gg, 26149
  %i.gp = lshr i32 %i.go, 8
  %i.gq = add nuw nsw i32 %i.gp, %i.gn            ; 2 uses
  %i.gr = add nsw i32 %i.gq, -14234               ; 2 uses
  %i.gs = icmp ult i32 %i.gr, 16384
  %i.gt = lshr i32 %i.gr, 6
  %i.gu = icmp samesign ult i32 %i.gq, 14234
  %i.gv = select i1 %i.gu, i32 0, i32 255
  %i.gw = select i1 %i.gs, i32 %i.gt, i32 %i.gv
  %i.gx = trunc i32 %i.gw to i8
  store i8 %i.gx, ptr %i.gl, align 1, !tbaa !10
  %i.gy = mul nuw nsw i32 %i.gk, 6419
  %i.gz = lshr i32 %i.gy, 8
  %i.ha = mul nuw nsw i32 %i.gg, 13320
  %i.hb = lshr i32 %i.ha, 8
  %i.hc = add nuw nsw i32 %i.hb, %i.gz
  %i.hd = sub nsw i32 %i.gn, %i.hc                ; 2 uses
  %i.he = add nsw i32 %i.hd, 8708                 ; 2 uses
  %i.hf = icmp ult i32 %i.he, 16384
  %i.hg = lshr i32 %i.he, 6
  %i.hh = icmp slt i32 %i.hd, -8708
  %i.hi = select i1 %i.hh, i32 0, i32 255
  %i.hj = select i1 %i.hf, i32 %i.hg, i32 %i.hi
  %i.hk = trunc i32 %i.hj to i8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.gi, i64 2
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !10
  %i.hm = mul nuw nsw i32 %i.gk, 33050
  %i.hn = lshr i32 %i.hm, 8
  %i.ho = add nuw nsw i32 %i.hn, %i.gn            ; 2 uses
  %i.hp = add nsw i32 %i.ho, -17685               ; 2 uses
  %i.hq = icmp ult i32 %i.hp, 16384
  %i.hr = lshr i32 %i.hp, 6
  %i.hs = icmp samesign ult i32 %i.ho, 17685
  %i.ht = select i1 %i.hs, i32 0, i32 255
  %i.hu = select i1 %i.hq, i32 %i.hr, i32 %i.ht
  %i.hv = trunc i32 %i.hu to i8
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gi, i64 3
  store i8 %i.hv, ptr %i.hw, align 1, !tbaa !10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.hx = add nuw nsw i32 %i.ee, %.092120         ; 2 uses
  %i.hy = lshr i32 %i.hx, 1
  %i.hz = add nuw nsw i32 %i.ea, %i.ds            ; 2 uses
  %i.ia = lshr i32 %i.hz, 1
  %i.ib = getelementptr inbounds i8, ptr %1, i64 %i.ek
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !10
  %i.id = lshr i32 %i.hx, 17                      ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %7, i64 %i.eo ; 4 uses
  store i8 -1, ptr %i.ie, align 1, !tbaa !10
  %i.if = zext i8 %i.ic to i32
  %i.ig = and i32 %i.hy, 255                      ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  %i.ii = mul nuw nsw i32 %i.if, 19077
  %i.ij = lshr i32 %i.ii, 8                       ; 3 uses
  %i.ik = mul nuw nsw i32 %i.id, 26149
  %i.il = lshr i32 %i.ik, 8
  %i.im = add nuw nsw i32 %i.ij, %i.il            ; 2 uses
  %i.in = add nsw i32 %i.im, -14234               ; 2 uses
  %i.io = icmp ult i32 %i.in, 16384
  %i.ip = lshr i32 %i.in, 6
  %i.iq = icmp samesign ult i32 %i.im, 14234
  %i.ir = select i1 %i.iq, i32 0, i32 255
  %i.is = select i1 %i.io, i32 %i.ip, i32 %i.ir
  %i.it = trunc i32 %i.is to i8
  store i8 %i.it, ptr %i.ih, align 1, !tbaa !10
  %i.iu = mul nuw nsw i32 %i.ig, 6419
  %i.iv = lshr i32 %i.iu, 8
  %i.iw = mul nuw nsw i32 %i.id, 13320
  %i.ix = lshr i32 %i.iw, 8
  %i.iy = add nuw nsw i32 %i.iv, %i.ix
  %i.iz = sub nsw i32 %i.ij, %i.iy                ; 2 uses
  %i.ja = add nsw i32 %i.iz, 8708                 ; 2 uses
  %i.jb = icmp ult i32 %i.ja, 16384
  %i.jc = lshr i32 %i.ja, 6
  %i.jd = icmp slt i32 %i.iz, -8708
  %i.je = select i1 %i.jd, i32 0, i32 255
  %i.jf = select i1 %i.jb, i32 %i.jc, i32 %i.je
  %i.jg = trunc i32 %i.jf to i8
  %i.jh = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  store i8 %i.jg, ptr %i.jh, align 1, !tbaa !10
  %i.ji = mul nuw nsw i32 %i.ig, 33050
  %i.jj = lshr i32 %i.ji, 8
  %i.jk = add nuw nsw i32 %i.ij, %i.jj            ; 2 uses
  %i.jl = add nsw i32 %i.jk, -17685               ; 2 uses
  %i.jm = icmp ult i32 %i.jl, 16384
  %i.jn = lshr i32 %i.jl, 6
  %i.jo = icmp samesign ult i32 %i.jk, 17685
  %i.jp = select i1 %i.jo, i32 0, i32 255
  %i.jq = select i1 %i.jm, i32 %i.jn, i32 %i.jp
  %i.jr = trunc i32 %i.jq to i8
  %i.js = getelementptr inbounds nuw i8, ptr %i.ie, i64 3
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !10
  %i.jt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ej
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !10
  %i.jv = lshr i32 %i.hz, 17                      ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %7, i64 %i.gh ; 4 uses
  store i8 -1, ptr %i.jw, align 1, !tbaa !10
  %i.jx = zext i8 %i.ju to i32
  %i.jy = and i32 %i.ia, 255                      ; 2 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 1
  %i.ka = mul nuw nsw i32 %i.jx, 19077
  %i.kb = lshr i32 %i.ka, 8                       ; 3 uses
  %i.kc = mul nuw nsw i32 %i.jv, 26149
  %i.kd = lshr i32 %i.kc, 8
  %i.ke = add nuw nsw i32 %i.kb, %i.kd            ; 2 uses
  %i.kf = add nsw i32 %i.ke, -14234               ; 2 uses
  %i.kg = icmp ult i32 %i.kf, 16384
  %i.kh = lshr i32 %i.kf, 6
  %i.ki = icmp samesign ult i32 %i.ke, 14234
  %i.kj = select i1 %i.ki, i32 0, i32 255
  %i.kk = select i1 %i.kg, i32 %i.kh, i32 %i.kj
  %i.kl = trunc i32 %i.kk to i8
  store i8 %i.kl, ptr %i.jz, align 1, !tbaa !10
  %i.km = mul nuw nsw i32 %i.jy, 6419
  %i.kn = lshr i32 %i.km, 8
  %i.ko = mul nuw nsw i32 %i.jv, 13320
  %i.kp = lshr i32 %i.ko, 8
  %i.kq = add nuw nsw i32 %i.kn, %i.kp
  %i.kr = sub nsw i32 %i.kb, %i.kq                ; 2 uses
  %i.ks = add nsw i32 %i.kr, 8708                 ; 2 uses
  %i.kt = icmp ult i32 %i.ks, 16384
  %i.ku = lshr i32 %i.ks, 6
  %i.kv = icmp slt i32 %i.kr, -8708
  %i.kw = select i1 %i.kv, i32 0, i32 255
  %i.kx = select i1 %i.kt, i32 %i.ku, i32 %i.kw
  %i.ky = trunc i32 %i.kx to i8
  %i.kz = getelementptr inbounds nuw i8, ptr %i.jw, i64 2
  store i8 %i.ky, ptr %i.kz, align 1, !tbaa !10
  %i.la = mul nuw nsw i32 %i.jy, 33050
  %i.lb = lshr i32 %i.la, 8
  %i.lc = add nuw nsw i32 %i.kb, %i.lb            ; 2 uses
  %i.ld = add nsw i32 %i.lc, -17685               ; 2 uses
  %i.le = icmp ult i32 %i.ld, 16384
  %i.lf = lshr i32 %i.ld, 6
  %i.lg = icmp samesign ult i32 %i.lc, 17685
  %i.lh = select i1 %i.lg, i32 0, i32 255
  %i.li = select i1 %i.le, i32 %i.lf, i32 %i.lh
  %i.lj = trunc i32 %i.li to i8
  %i.lk = getelementptr inbounds nuw i8, ptr %i.jw, i64 3
  store i8 %i.lj, ptr %i.lk, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.092.lcssa = phi i32 [ %i.n, %bb.c ], [ %i.ds, %bb.e ] ; 2 uses
  %.091.lcssa = phi i32 [ %i.h, %bb.c ], [ %i.dk, %bb.e ] ; 2 uses
  %i.ll = and i32 %8, 1
  %.not95 = icmp eq i32 %i.ll, 0
  br i1 %.not95, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.lm = mul nuw nsw i32 %.091.lcssa, 3
  %i.ln = add nuw nsw i32 %.092.lcssa, 131074
  %i.lo = add nuw nsw i32 %i.ln, %i.lm            ; 2 uses
  %i.lp = lshr i32 %i.lo, 2
  %i.lq = sext i32 %i.a to i64                    ; 2 uses
  %i.lr = getelementptr inbounds i8, ptr %0, i64 %i.lq
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !10
  %i.lt = lshr i32 %i.lo, 18                      ; 2 uses
  %i.lu = shl nsw i32 %i.a, 2
  %i.lv = sext i32 %i.lu to i64                   ; 2 uses
  %i.lw = getelementptr inbounds i8, ptr %6, i64 %i.lv ; 4 uses
  store i8 -1, ptr %i.lw, align 1, !tbaa !10
  %i.lx = zext i8 %i.ls to i32
  %i.ly = and i32 %i.lp, 255                      ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 1
  %i.ma = mul nuw nsw i32 %i.lx, 19077
  %i.mb = lshr i32 %i.ma, 8                       ; 3 uses
  %i.mc = mul nuw nsw i32 %i.lt, 26149
  %i.md = lshr i32 %i.mc, 8
  %i.me = add nuw nsw i32 %i.mb, %i.md            ; 2 uses
  %i.mf = add nsw i32 %i.me, -14234               ; 2 uses
  %i.mg = icmp ult i32 %i.mf, 16384
  %i.mh = lshr i32 %i.mf, 6
  %i.mi = icmp samesign ult i32 %i.me, 14234
  %i.mj = select i1 %i.mi, i32 0, i32 255
  %i.mk = select i1 %i.mg, i32 %i.mh, i32 %i.mj
  %i.ml = trunc i32 %i.mk to i8
  store i8 %i.ml, ptr %i.lz, align 1, !tbaa !10
  %i.mm = mul nuw nsw i32 %i.ly, 6419
  %i.mn = lshr i32 %i.mm, 8
  %i.mo = mul nuw nsw i32 %i.lt, 13320
  %i.mp = lshr i32 %i.mo, 8
  %i.mq = add nuw nsw i32 %i.mn, %i.mp
  %i.mr = sub nsw i32 %i.mb, %i.mq                ; 2 uses
  %i.ms = add nsw i32 %i.mr, 8708                 ; 2 uses
  %i.mt = icmp ult i32 %i.ms, 16384
  %i.mu = lshr i32 %i.ms, 6
  %i.mv = icmp slt i32 %i.mr, -8708
  %i.mw = select i1 %i.mv, i32 0, i32 255
  %i.mx = select i1 %i.mt, i32 %i.mu, i32 %i.mw
  %i.my = trunc i32 %i.mx to i8
  %i.mz = getelementptr inbounds nuw i8, ptr %i.lw, i64 2
  store i8 %i.my, ptr %i.mz, align 1, !tbaa !10
  %i.na = mul nuw nsw i32 %i.ly, 33050
  %i.nb = lshr i32 %i.na, 8
  %i.nc = add nuw nsw i32 %i.mb, %i.nb            ; 2 uses
  %i.nd = add nsw i32 %i.nc, -17685               ; 2 uses
  %i.ne = icmp ult i32 %i.nd, 16384
  %i.nf = lshr i32 %i.nd, 6
  %i.ng = icmp samesign ult i32 %i.nc, 17685
  %i.nh = select i1 %i.ng, i32 0, i32 255
  %i.ni = select i1 %i.ne, i32 %i.nf, i32 %i.nh
  %i.nj = trunc i32 %i.ni to i8
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lw, i64 3
  store i8 %i.nj, ptr %i.nk, align 1, !tbaa !10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.nl = mul nuw nsw i32 %.092.lcssa, 3
  %i.nm = add nuw nsw i32 %.091.lcssa, 131074
  %i.nn = add nuw nsw i32 %i.nm, %i.nl            ; 2 uses
  %i.no = lshr i32 %i.nn, 2
  %i.np = getelementptr inbounds i8, ptr %1, i64 %i.lq
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !10
  %i.nr = lshr i32 %i.nn, 18                      ; 2 uses
  %i.ns = getelementptr inbounds i8, ptr %7, i64 %i.lv ; 4 uses
  store i8 -1, ptr %i.ns, align 1, !tbaa !10
  %i.nt = zext i8 %i.nq to i32
  %i.nu = and i32 %i.no, 255                      ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.ns, i64 1
  %i.nw = mul nuw nsw i32 %i.nt, 19077
  %i.nx = lshr i32 %i.nw, 8                       ; 3 uses
  %i.ny = mul nuw nsw i32 %i.nr, 26149
  %i.nz = lshr i32 %i.ny, 8
  %i.oa = add nuw nsw i32 %i.nx, %i.nz            ; 2 uses
  %i.ob = add nsw i32 %i.oa, -14234               ; 2 uses
  %i.oc = icmp ult i32 %i.ob, 16384
  %i.od = lshr i32 %i.ob, 6
  %i.oe = icmp samesign ult i32 %i.oa, 14234
  %i.of = select i1 %i.oe, i32 0, i32 255
  %i.og = select i1 %i.oc, i32 %i.od, i32 %i.of
  %i.oh = trunc i32 %i.og to i8
  store i8 %i.oh, ptr %i.nv, align 1, !tbaa !10
  %i.oi = mul nuw nsw i32 %i.nu, 6419
  %i.oj = lshr i32 %i.oi, 8
  %i.ok = mul nuw nsw i32 %i.nr, 13320
  %i.ol = lshr i32 %i.ok, 8
  %i.om = add nuw nsw i32 %i.oj, %i.ol
  %i.on = sub nsw i32 %i.nx, %i.om                ; 2 uses
  %i.oo = add nsw i32 %i.on, 8708                 ; 2 uses
  %i.op = icmp ult i32 %i.oo, 16384
  %i.oq = lshr i32 %i.oo, 6
  %i.or = icmp slt i32 %i.on, -8708
  %i.os = select i1 %i.or, i32 0, i32 255
  %i.ot = select i1 %i.op, i32 %i.oq, i32 %i.os
  %i.ou = trunc i32 %i.ot to i8
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ns, i64 2
  store i8 %i.ou, ptr %i.ov, align 1, !tbaa !10
  %i.ow = mul nuw nsw i32 %i.nu, 33050
  %i.ox = lshr i32 %i.ow, 8
  %i.oy = add nuw nsw i32 %i.nx, %i.ox            ; 2 uses
  %i.oz = add nsw i32 %i.oy, -17685               ; 2 uses
  %i.pa = icmp ult i32 %i.oz, 16384
  %i.pb = lshr i32 %i.oz, 6
  %i.pc = icmp samesign ult i32 %i.oy, 17685
  %i.pd = select i1 %i.pc, i32 0, i32 255
  %i.pe = select i1 %i.pa, i32 %i.pb, i32 %i.pd
  %i.pf = trunc i32 %i.pe to i8
  %i.pg = getelementptr inbounds nuw i8, ptr %i.ns, i64 3
  store i8 %i.pf, ptr %i.pg, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @UpsampleRgba4444LinePair_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias nofree noundef writeonly captures(none) initializes((0, 2)) %6, ptr noalias nofree noundef writeonly captures(none) %7, i32 noundef %8) #1 {
bb.a:
  %i.a = add nsw i32 %8, -1                       ; 3 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %3, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, %i.d               ; 4 uses
  %i.i = load i8, ptr %4, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %i.k = load i8, ptr %5, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.j               ; 4 uses
  %i.o = mul nuw nsw i32 %i.h, 3
  %i.p = add nuw nsw i32 %i.o, 131074
  %i.q = add nuw nsw i32 %i.p, %i.n               ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = load i8, ptr %0, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i32
  %i.u = and i32 %i.r, 255                        ; 2 uses
  %i.v = lshr i32 %i.q, 18                        ; 2 uses
  %i.w = mul nuw nsw i32 %i.t, 19077
  %i.x = lshr i32 %i.w, 8                         ; 3 uses
  %i.y = mul nuw nsw i32 %i.v, 26149
  %i.z = lshr i32 %i.y, 8
  %i.aa = add nuw nsw i32 %i.z, %i.x              ; 2 uses
  %i.ab = add nsw i32 %i.aa, -14234               ; 2 uses
  %i.ac = icmp ult i32 %i.ab, 16384
  %i.ad = lshr i32 %i.ab, 6
  %i.ae = icmp samesign ult i32 %i.aa, 14234
  %i.af = select i1 %i.ae, i32 0, i32 240
  %i.ag = mul nuw nsw i32 %i.u, 6419
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = mul nuw nsw i32 %i.v, 13320
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = add nuw nsw i32 %i.aj, %i.ah
  %i.al = sub nsw i32 %i.x, %i.ak                 ; 2 uses
  %i.am = add nsw i32 %i.al, 8708                 ; 2 uses
  %i.an = icmp ult i32 %i.am, 16384
  %i.ao = lshr i32 %i.am, 6
  %i.ap = icmp slt i32 %i.al, -8708
  %i.aq = select i1 %i.ap, i32 0, i32 240
  %i.ar = select i1 %i.an, i32 %i.ao, i32 %i.aq
  %i.as = mul nuw nsw i32 %i.u, 33050
  %i.at = lshr i32 %i.as, 8
  %i.au = add nuw nsw i32 %i.at, %i.x             ; 2 uses
  %i.av = add nsw i32 %i.au, -17685               ; 2 uses
  %i.aw = icmp ult i32 %i.av, 16384
  %i.ax = lshr i32 %i.av, 6
  %i.ay = icmp samesign ult i32 %i.au, 17685
  %i.az = select i1 %i.ay, i32 0, i32 240
  %i.ba = select i1 %i.aw, i32 %i.ax, i32 %i.az
  %i.bb = and i32 %i.ad, 240
  %i.bc = select i1 %i.ac, i32 %i.bb, i32 %i.af
  %i.bd = lshr i32 %i.ar, 4
  %i.be = or i32 %i.bd, %i.bc
  %i.bf = trunc i32 %i.be to i8
  store i8 %i.bf, ptr %6, align 1, !tbaa !10
  %i.bg = trunc i32 %i.ba to i8
  %i.bh = or i8 %i.bg, 15
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !10
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bj = mul nuw nsw i32 %i.n, 3
  %i.bk = add nuw nsw i32 %i.h, 131074
  %i.bl = add nuw nsw i32 %i.bk, %i.bj            ; 2 uses
  %i.bm = lshr i32 %i.bl, 2
  %i.bn = load i8, ptr %1, align 1, !tbaa !10
  %i.bo = zext i8 %i.bn to i32
  %i.bp = and i32 %i.bm, 255                      ; 2 uses
  %i.bq = lshr i32 %i.bl, 18                      ; 2 uses
  %i.br = mul nuw nsw i32 %i.bo, 19077
  %i.bs = lshr i32 %i.br, 8                       ; 3 uses
  %i.bt = mul nuw nsw i32 %i.bq, 26149
  %i.bu = lshr i32 %i.bt, 8
  %i.bv = add nuw nsw i32 %i.bs, %i.bu            ; 2 uses
  %i.bw = add nsw i32 %i.bv, -14234               ; 2 uses
  %i.bx = icmp ult i32 %i.bw, 16384
  %i.by = lshr i32 %i.bw, 6
  %i.bz = icmp samesign ult i32 %i.bv, 14234
  %i.ca = select i1 %i.bz, i32 0, i32 240
  %i.cb = mul nuw nsw i32 %i.bp, 6419
  %i.cc = lshr i32 %i.cb, 8
  %i.cd = mul nuw nsw i32 %i.bq, 13320
  %i.ce = lshr i32 %i.cd, 8
  %i.cf = add nuw nsw i32 %i.cc, %i.ce
  %i.cg = sub nsw i32 %i.bs, %i.cf                ; 2 uses
  %i.ch = add nsw i32 %i.cg, 8708                 ; 2 uses
  %i.ci = icmp ult i32 %i.ch, 16384
  %i.cj = lshr i32 %i.ch, 6
  %i.ck = icmp slt i32 %i.cg, -8708
  %i.cl = select i1 %i.ck, i32 0, i32 240
  %i.cm = select i1 %i.ci, i32 %i.cj, i32 %i.cl
  %i.cn = mul nuw nsw i32 %i.bp, 33050
  %i.co = lshr i32 %i.cn, 8
  %i.cp = add nuw nsw i32 %i.bs, %i.co            ; 2 uses
  %i.cq = add nsw i32 %i.cp, -17685               ; 2 uses
  %i.cr = icmp ult i32 %i.cq, 16384
  %i.cs = lshr i32 %i.cq, 6
  %i.ct = icmp samesign ult i32 %i.cp, 17685
  %i.cu = select i1 %i.ct, i32 0, i32 240
  %i.cv = select i1 %i.cr, i32 %i.cs, i32 %i.cu
  %i.cw = and i32 %i.by, 240
  %i.cx = select i1 %i.bx, i32 %i.cw, i32 %i.ca
  %i.cy = lshr i32 %i.cm, 4
  %i.cz = or i32 %i.cx, %i.cy
  %i.da = trunc i32 %i.cz to i8
  store i8 %i.da, ptr %7, align 1, !tbaa !10
  %i.db = trunc i32 %i.cv to i8
  %i.dc = or i8 %i.db, 15
  %i.dd = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not94119 = icmp slt i32 %i.b, 1
  br i1 %.not94119, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.de = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.de to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 7 uses
  %.091121 = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.dm, %bb.e ] ; 3 uses
  %.092120 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.du, %bb.e ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !10
  %i.dh = zext i8 %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !10
  %i.dk = zext i8 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 16
  %i.dm = or disjoint i32 %i.dl, %i.dh            ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !10
  %i.dp = zext i8 %i.do to i32
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !10
  %i.ds = zext i8 %i.dr to i32
  %i.dt = shl nuw nsw i32 %i.ds, 16
  %i.du = or disjoint i32 %i.dt, %i.dp            ; 5 uses
  %i.dv = add nuw nsw i32 %.092120, 524296
  %i.dw = add nuw nsw i32 %i.dv, %.091121
  %i.dx = add nuw nsw i32 %i.dw, %i.dm
  %i.dy = add nuw nsw i32 %i.dx, %i.du            ; 2 uses
  %i.dz = add nuw nsw i32 %i.dm, %.092120
  %i.ea = shl nuw nsw i32 %i.dz, 1
  %i.eb = add nuw nsw i32 %i.dy, %i.ea
  %i.ec = lshr i32 %i.eb, 3                       ; 2 uses
  %i.ed = add nuw nsw i32 %i.du, %.091121
  %i.ee = shl nuw nsw i32 %i.ed, 1
  %i.ef = add nuw nsw i32 %i.dy, %i.ee
  %i.eg = lshr i32 %i.ef, 3                       ; 2 uses
  %i.eh = add nuw nsw i32 %i.ec, %.091121         ; 2 uses
  %i.ei = lshr i32 %i.eh, 1
  %i.ej = add nuw nsw i32 %i.eg, %i.dm            ; 2 uses
  %i.ek = lshr i32 %i.ej, 1
  %i.el = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.em = add nsw i64 %i.el, -1                   ; 3 uses
  %i.en = getelementptr inbounds i8, ptr %0, i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !10
  %i.ep = zext i8 %i.eo to i32
  %i.eq = and i32 %i.ei, 255                      ; 2 uses
  %i.er = lshr i32 %i.eh, 17                      ; 2 uses
  %i.es = shl nuw nsw i64 %i.em, 1                ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %6, i64 %i.es ; 2 uses
  %i.eu = mul nuw nsw i32 %i.ep, 19077
  %i.ev = lshr i32 %i.eu, 8                       ; 3 uses
  %i.ew = mul nuw nsw i32 %i.er, 26149
  %i.ex = lshr i32 %i.ew, 8
  %i.ey = add nuw nsw i32 %i.ex, %i.ev            ; 2 uses
  %i.ez = add nsw i32 %i.ey, -14234               ; 2 uses
  %i.fa = icmp ult i32 %i.ez, 16384
  %i.fb = lshr i32 %i.ez, 6
  %i.fc = icmp samesign ult i32 %i.ey, 14234
  %i.fd = select i1 %i.fc, i32 0, i32 240
  %i.fe = mul nuw nsw i32 %i.eq, 6419
  %i.ff = lshr i32 %i.fe, 8
  %i.fg = mul nuw nsw i32 %i.er, 13320
  %i.fh = lshr i32 %i.fg, 8
  %i.fi = add nuw nsw i32 %i.fh, %i.ff
  %i.fj = sub nsw i32 %i.ev, %i.fi                ; 2 uses
  %i.fk = add nsw i32 %i.fj, 8708                 ; 2 uses
  %i.fl = icmp ult i32 %i.fk, 16384
  %i.fm = lshr i32 %i.fk, 6
  %i.fn = icmp slt i32 %i.fj, -8708
  %i.fo = select i1 %i.fn, i32 0, i32 240
  %i.fp = select i1 %i.fl, i32 %i.fm, i32 %i.fo
  %i.fq = mul nuw nsw i32 %i.eq, 33050
  %i.fr = lshr i32 %i.fq, 8
  %i.fs = add nuw nsw i32 %i.fr, %i.ev            ; 2 uses
  %i.ft = add nsw i32 %i.fs, -17685               ; 2 uses
  %i.fu = icmp ult i32 %i.ft, 16384
  %i.fv = lshr i32 %i.ft, 6
  %i.fw = icmp samesign ult i32 %i.fs, 17685
  %i.fx = select i1 %i.fw, i32 0, i32 240
  %i.fy = select i1 %i.fu, i32 %i.fv, i32 %i.fx
  %i.fz = and i32 %i.fb, 240
  %i.ga = select i1 %i.fa, i32 %i.fz, i32 %i.fd
  %i.gb = lshr i32 %i.fp, 4
  %i.gc = or i32 %i.gb, %i.ga
  %i.gd = trunc i32 %i.gc to i8
  store i8 %i.gd, ptr %i.et, align 1, !tbaa !10
  %i.ge = trunc i32 %i.fy to i8
  %i.gf = or i8 %i.ge, 15
  %i.gg = getelementptr inbounds nuw i8, ptr %i.et, i64 1
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !10
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 %i.el
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !10
  %i.gj = zext i8 %i.gi to i32
  %i.gk = and i32 %i.ek, 255                      ; 2 uses
  %i.gl = lshr i32 %i.ej, 17                      ; 2 uses
  %i.gm = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %6, i64 %i.gm ; 2 uses
  %i.go = mul nuw nsw i32 %i.gj, 19077
  %i.gp = lshr i32 %i.go, 8                       ; 3 uses
  %i.gq = mul nuw nsw i32 %i.gl, 26149
  %i.gr = lshr i32 %i.gq, 8
  %i.gs = add nuw nsw i32 %i.gr, %i.gp            ; 2 uses
  %i.gt = add nsw i32 %i.gs, -14234               ; 2 uses
  %i.gu = icmp ult i32 %i.gt, 16384
  %i.gv = lshr i32 %i.gt, 6
  %i.gw = icmp samesign ult i32 %i.gs, 14234
  %i.gx = select i1 %i.gw, i32 0, i32 240
  %i.gy = mul nuw nsw i32 %i.gk, 6419
  %i.gz = lshr i32 %i.gy, 8
  %i.ha = mul nuw nsw i32 %i.gl, 13320
  %i.hb = lshr i32 %i.ha, 8
  %i.hc = add nuw nsw i32 %i.hb, %i.gz
  %i.hd = sub nsw i32 %i.gp, %i.hc                ; 2 uses
  %i.he = add nsw i32 %i.hd, 8708                 ; 2 uses
  %i.hf = icmp ult i32 %i.he, 16384
  %i.hg = lshr i32 %i.he, 6
  %i.hh = icmp slt i32 %i.hd, -8708
  %i.hi = select i1 %i.hh, i32 0, i32 240
  %i.hj = select i1 %i.hf, i32 %i.hg, i32 %i.hi
  %i.hk = mul nuw nsw i32 %i.gk, 33050
  %i.hl = lshr i32 %i.hk, 8
  %i.hm = add nuw nsw i32 %i.hl, %i.gp            ; 2 uses
  %i.hn = add nsw i32 %i.hm, -17685               ; 2 uses
  %i.ho = icmp ult i32 %i.hn, 16384
  %i.hp = lshr i32 %i.hn, 6
  %i.hq = icmp samesign ult i32 %i.hm, 17685
  %i.hr = select i1 %i.hq, i32 0, i32 240
  %i.hs = select i1 %i.ho, i32 %i.hp, i32 %i.hr
  %i.ht = and i32 %i.gv, 240
  %i.hu = select i1 %i.gu, i32 %i.ht, i32 %i.gx
  %i.hv = lshr i32 %i.hj, 4
  %i.hw = or i32 %i.hv, %i.hu
  %i.hx = trunc i32 %i.hw to i8
  store i8 %i.hx, ptr %i.gn, align 1, !tbaa !10
  %i.hy = trunc i32 %i.hs to i8
  %i.hz = or i8 %i.hy, 15
  %i.ia = getelementptr inbounds nuw i8, ptr %i.gn, i64 1
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.ib = add nuw nsw i32 %i.eg, %.092120         ; 2 uses
  %i.ic = lshr i32 %i.ib, 1
  %i.id = add nuw nsw i32 %i.ec, %i.du            ; 2 uses
  %i.ie = lshr i32 %i.id, 1
  %i.if = getelementptr inbounds i8, ptr %1, i64 %i.em
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !10
  %i.ih = zext i8 %i.ig to i32
  %i.ii = and i32 %i.ic, 255                      ; 2 uses
  %i.ij = lshr i32 %i.ib, 17                      ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %7, i64 %i.es ; 2 uses
  %i.il = mul nuw nsw i32 %i.ih, 19077
  %i.im = lshr i32 %i.il, 8                       ; 3 uses
  %i.in = mul nuw nsw i32 %i.ij, 26149
  %i.io = lshr i32 %i.in, 8
  %i.ip = add nuw nsw i32 %i.im, %i.io            ; 2 uses
  %i.iq = add nsw i32 %i.ip, -14234               ; 2 uses
  %i.ir = icmp ult i32 %i.iq, 16384
  %i.is = lshr i32 %i.iq, 6
  %i.it = icmp samesign ult i32 %i.ip, 14234
  %i.iu = select i1 %i.it, i32 0, i32 240
  %i.iv = mul nuw nsw i32 %i.ii, 6419
  %i.iw = lshr i32 %i.iv, 8
  %i.ix = mul nuw nsw i32 %i.ij, 13320
  %i.iy = lshr i32 %i.ix, 8
  %i.iz = add nuw nsw i32 %i.iw, %i.iy
  %i.ja = sub nsw i32 %i.im, %i.iz                ; 2 uses
  %i.jb = add nsw i32 %i.ja, 8708                 ; 2 uses
  %i.jc = icmp ult i32 %i.jb, 16384
  %i.jd = lshr i32 %i.jb, 6
  %i.je = icmp slt i32 %i.ja, -8708
  %i.jf = select i1 %i.je, i32 0, i32 240
  %i.jg = select i1 %i.jc, i32 %i.jd, i32 %i.jf
  %i.jh = mul nuw nsw i32 %i.ii, 33050
  %i.ji = lshr i32 %i.jh, 8
  %i.jj = add nuw nsw i32 %i.im, %i.ji            ; 2 uses
  %i.jk = add nsw i32 %i.jj, -17685               ; 2 uses
  %i.jl = icmp ult i32 %i.jk, 16384
  %i.jm = lshr i32 %i.jk, 6
  %i.jn = icmp samesign ult i32 %i.jj, 17685
  %i.jo = select i1 %i.jn, i32 0, i32 240
  %i.jp = select i1 %i.jl, i32 %i.jm, i32 %i.jo
  %i.jq = and i32 %i.is, 240
  %i.jr = select i1 %i.ir, i32 %i.jq, i32 %i.iu
  %i.js = lshr i32 %i.jg, 4
  %i.jt = or i32 %i.jr, %i.js
  %i.ju = trunc i32 %i.jt to i8
  store i8 %i.ju, ptr %i.ik, align 1, !tbaa !10
  %i.jv = trunc i32 %i.jp to i8
  %i.jw = or i8 %i.jv, 15
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ik, i64 1
  store i8 %i.jw, ptr %i.jx, align 1, !tbaa !10
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 %i.el
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !10
  %i.ka = zext i8 %i.jz to i32
  %i.kb = and i32 %i.ie, 255                      ; 2 uses
  %i.kc = lshr i32 %i.id, 17                      ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %7, i64 %i.gm ; 2 uses
  %i.ke = mul nuw nsw i32 %i.ka, 19077
  %i.kf = lshr i32 %i.ke, 8                       ; 3 uses
  %i.kg = mul nuw nsw i32 %i.kc, 26149
  %i.kh = lshr i32 %i.kg, 8
  %i.ki = add nuw nsw i32 %i.kf, %i.kh            ; 2 uses
  %i.kj = add nsw i32 %i.ki, -14234               ; 2 uses
  %i.kk = icmp ult i32 %i.kj, 16384
  %i.kl = lshr i32 %i.kj, 6
  %i.km = icmp samesign ult i32 %i.ki, 14234
  %i.kn = select i1 %i.km, i32 0, i32 240
  %i.ko = mul nuw nsw i32 %i.kb, 6419
  %i.kp = lshr i32 %i.ko, 8
  %i.kq = mul nuw nsw i32 %i.kc, 13320
  %i.kr = lshr i32 %i.kq, 8
  %i.ks = add nuw nsw i32 %i.kp, %i.kr
  %i.kt = sub nsw i32 %i.kf, %i.ks                ; 2 uses
  %i.ku = add nsw i32 %i.kt, 8708                 ; 2 uses
  %i.kv = icmp ult i32 %i.ku, 16384
  %i.kw = lshr i32 %i.ku, 6
  %i.kx = icmp slt i32 %i.kt, -8708
  %i.ky = select i1 %i.kx, i32 0, i32 240
  %i.kz = select i1 %i.kv, i32 %i.kw, i32 %i.ky
  %i.la = mul nuw nsw i32 %i.kb, 33050
  %i.lb = lshr i32 %i.la, 8
  %i.lc = add nuw nsw i32 %i.kf, %i.lb            ; 2 uses
  %i.ld = add nsw i32 %i.lc, -17685               ; 2 uses
  %i.le = icmp ult i32 %i.ld, 16384
  %i.lf = lshr i32 %i.ld, 6
  %i.lg = icmp samesign ult i32 %i.lc, 17685
  %i.lh = select i1 %i.lg, i32 0, i32 240
  %i.li = select i1 %i.le, i32 %i.lf, i32 %i.lh
  %i.lj = and i32 %i.kl, 240
  %i.lk = select i1 %i.kk, i32 %i.lj, i32 %i.kn
  %i.ll = lshr i32 %i.kz, 4
  %i.lm = or i32 %i.lk, %i.ll
  %i.ln = trunc i32 %i.lm to i8
  store i8 %i.ln, ptr %i.kd, align 1, !tbaa !10
  %i.lo = trunc i32 %i.li to i8
  %i.lp = or i8 %i.lo, 15
  %i.lq = getelementptr inbounds nuw i8, ptr %i.kd, i64 1
  store i8 %i.lp, ptr %i.lq, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.092.lcssa = phi i32 [ %i.n, %bb.c ], [ %i.du, %bb.e ] ; 2 uses
  %.091.lcssa = phi i32 [ %i.h, %bb.c ], [ %i.dm, %bb.e ] ; 2 uses
  %i.lr = and i32 %8, 1
  %.not95 = icmp eq i32 %i.lr, 0
  br i1 %.not95, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.ls = mul nuw nsw i32 %.091.lcssa, 3
  %i.lt = add nuw nsw i32 %.092.lcssa, 131074
  %i.lu = add nuw nsw i32 %i.lt, %i.ls            ; 2 uses
  %i.lv = lshr i32 %i.lu, 2
  %i.lw = sext i32 %i.a to i64                    ; 2 uses
  %i.lx = getelementptr inbounds i8, ptr %0, i64 %i.lw
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !10
  %i.lz = zext i8 %i.ly to i32
  %i.ma = and i32 %i.lv, 255                      ; 2 uses
  %i.mb = lshr i32 %i.lu, 18                      ; 2 uses
  %i.mc = shl nsw i32 %i.a, 1
  %i.md = sext i32 %i.mc to i64                   ; 2 uses
  %i.me = getelementptr inbounds i8, ptr %6, i64 %i.md ; 2 uses
  %i.mf = mul nuw nsw i32 %i.lz, 19077
  %i.mg = lshr i32 %i.mf, 8                       ; 3 uses
  %i.mh = mul nuw nsw i32 %i.mb, 26149
  %i.mi = lshr i32 %i.mh, 8
  %i.mj = add nuw nsw i32 %i.mg, %i.mi            ; 2 uses
  %i.mk = add nsw i32 %i.mj, -14234               ; 2 uses
  %i.ml = icmp ult i32 %i.mk, 16384
  %i.mm = lshr i32 %i.mk, 6
  %i.mn = icmp samesign ult i32 %i.mj, 14234
  %i.mo = select i1 %i.mn, i32 0, i32 240
  %i.mp = mul nuw nsw i32 %i.ma, 6419
  %i.mq = lshr i32 %i.mp, 8
  %i.mr = mul nuw nsw i32 %i.mb, 13320
  %i.ms = lshr i32 %i.mr, 8
  %i.mt = add nuw nsw i32 %i.mq, %i.ms
  %i.mu = sub nsw i32 %i.mg, %i.mt                ; 2 uses
  %i.mv = add nsw i32 %i.mu, 8708                 ; 2 uses
  %i.mw = icmp ult i32 %i.mv, 16384
  %i.mx = lshr i32 %i.mv, 6
  %i.my = icmp slt i32 %i.mu, -8708
  %i.mz = select i1 %i.my, i32 0, i32 240
  %i.na = select i1 %i.mw, i32 %i.mx, i32 %i.mz
  %i.nb = mul nuw nsw i32 %i.ma, 33050
  %i.nc = lshr i32 %i.nb, 8
  %i.nd = add nuw nsw i32 %i.mg, %i.nc            ; 2 uses
  %i.ne = add nsw i32 %i.nd, -17685               ; 2 uses
  %i.nf = icmp ult i32 %i.ne, 16384
  %i.ng = lshr i32 %i.ne, 6
  %i.nh = icmp samesign ult i32 %i.nd, 17685
  %i.ni = select i1 %i.nh, i32 0, i32 240
  %i.nj = select i1 %i.nf, i32 %i.ng, i32 %i.ni
  %i.nk = and i32 %i.mm, 240
  %i.nl = select i1 %i.ml, i32 %i.nk, i32 %i.mo
  %i.nm = lshr i32 %i.na, 4
  %i.nn = or i32 %i.nl, %i.nm
  %i.no = trunc i32 %i.nn to i8
  store i8 %i.no, ptr %i.me, align 1, !tbaa !10
  %i.np = trunc i32 %i.nj to i8
  %i.nq = or i8 %i.np, 15
  %i.nr = getelementptr inbounds nuw i8, ptr %i.me, i64 1
  store i8 %i.nq, ptr %i.nr, align 1, !tbaa !10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ns = mul nuw nsw i32 %.092.lcssa, 3
  %i.nt = add nuw nsw i32 %.091.lcssa, 131074
  %i.nu = add nuw nsw i32 %i.nt, %i.ns            ; 2 uses
  %i.nv = lshr i32 %i.nu, 2
  %i.nw = getelementptr inbounds i8, ptr %1, i64 %i.lw
  %i.nx = load i8, ptr %i.nw, align 1, !tbaa !10
  %i.ny = zext i8 %i.nx to i32
  %i.nz = and i32 %i.nv, 255                      ; 2 uses
  %i.oa = lshr i32 %i.nu, 18                      ; 2 uses
  %i.ob = getelementptr inbounds i8, ptr %7, i64 %i.md ; 2 uses
  %i.oc = mul nuw nsw i32 %i.ny, 19077
  %i.od = lshr i32 %i.oc, 8                       ; 3 uses
  %i.oe = mul nuw nsw i32 %i.oa, 26149
  %i.of = lshr i32 %i.oe, 8
  %i.og = add nuw nsw i32 %i.od, %i.of            ; 2 uses
  %i.oh = add nsw i32 %i.og, -14234               ; 2 uses
  %i.oi = icmp ult i32 %i.oh, 16384
  %i.oj = lshr i32 %i.oh, 6
  %i.ok = icmp samesign ult i32 %i.og, 14234
  %i.ol = select i1 %i.ok, i32 0, i32 240
  %i.om = mul nuw nsw i32 %i.nz, 6419
  %i.on = lshr i32 %i.om, 8
  %i.oo = mul nuw nsw i32 %i.oa, 13320
  %i.op = lshr i32 %i.oo, 8
  %i.oq = add nuw nsw i32 %i.on, %i.op
  %i.or = sub nsw i32 %i.od, %i.oq                ; 2 uses
  %i.os = add nsw i32 %i.or, 8708                 ; 2 uses
  %i.ot = icmp ult i32 %i.os, 16384
  %i.ou = lshr i32 %i.os, 6
  %i.ov = icmp slt i32 %i.or, -8708
  %i.ow = select i1 %i.ov, i32 0, i32 240
  %i.ox = select i1 %i.ot, i32 %i.ou, i32 %i.ow
  %i.oy = mul nuw nsw i32 %i.nz, 33050
  %i.oz = lshr i32 %i.oy, 8
  %i.pa = add nuw nsw i32 %i.od, %i.oz            ; 2 uses
  %i.pb = add nsw i32 %i.pa, -17685               ; 2 uses
  %i.pc = icmp ult i32 %i.pb, 16384
  %i.pd = lshr i32 %i.pb, 6
  %i.pe = icmp samesign ult i32 %i.pa, 17685
  %i.pf = select i1 %i.pe, i32 0, i32 240
  %i.pg = select i1 %i.pc, i32 %i.pd, i32 %i.pf
  %i.ph = and i32 %i.oj, 240
  %i.pi = select i1 %i.oi, i32 %i.ph, i32 %i.ol
  %i.pj = lshr i32 %i.ox, 4
  %i.pk = or i32 %i.pi, %i.pj
  %i.pl = trunc i32 %i.pk to i8
  store i8 %i.pl, ptr %i.ob, align 1, !tbaa !10
  %i.pm = trunc i32 %i.pg to i8
  %i.pn = or i8 %i.pm, 15
  %i.po = getelementptr inbounds nuw i8, ptr %i.ob, i64 1
  store i8 %i.pn, ptr %i.po, align 1, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @UpsampleRgb565LinePair_C(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef readonly captures(address_is_null) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, ptr noalias nofree noundef readonly captures(none) %5, ptr noalias nofree noundef writeonly captures(none) initializes((0, 2)) %6, ptr noalias nofree noundef writeonly captures(none) %7, i32 noundef %8) #1 {
bb.a:
  %i.a = add nsw i32 %8, -1                       ; 3 uses
  %i.b = ashr i32 %i.a, 1                         ; 2 uses
  %i.c = load i8, ptr %2, align 1, !tbaa !10
  %i.d = zext i8 %i.c to i32
  %i.e = load i8, ptr %3, align 1, !tbaa !10
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 16
  %i.h = or disjoint i32 %i.g, %i.d               ; 4 uses
  %i.i = load i8, ptr %4, align 1, !tbaa !10
  %i.j = zext i8 %i.i to i32
  %i.k = load i8, ptr %5, align 1, !tbaa !10
  %i.l = zext i8 %i.k to i32
  %i.m = shl nuw nsw i32 %i.l, 16
  %i.n = or disjoint i32 %i.m, %i.j               ; 4 uses
  %i.o = mul nuw nsw i32 %i.h, 3
  %i.p = add nuw nsw i32 %i.o, 131074
  %i.q = add nuw nsw i32 %i.p, %i.n               ; 2 uses
  %i.r = lshr i32 %i.q, 2
  %i.s = load i8, ptr %0, align 1, !tbaa !10
  %i.t = zext i8 %i.s to i32
  %i.u = and i32 %i.r, 255                        ; 2 uses
  %i.v = lshr i32 %i.q, 18                        ; 2 uses
  %i.w = mul nuw nsw i32 %i.t, 19077
  %i.x = lshr i32 %i.w, 8                         ; 3 uses
  %i.y = mul nuw nsw i32 %i.v, 26149
  %i.z = lshr i32 %i.y, 8
  %i.aa = add nuw nsw i32 %i.z, %i.x              ; 2 uses
  %i.ab = add nsw i32 %i.aa, -14234               ; 2 uses
  %i.ac = icmp ult i32 %i.ab, 16384
  %i.ad = lshr i32 %i.ab, 6
  %i.ae = icmp samesign ult i32 %i.aa, 14234
  %i.af = select i1 %i.ae, i32 0, i32 248
  %i.ag = mul nuw nsw i32 %i.u, 6419
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = mul nuw nsw i32 %i.v, 13320
  %i.aj = lshr i32 %i.ai, 8
  %i.ak = add nuw nsw i32 %i.aj, %i.ah
  %i.al = sub nsw i32 %i.x, %i.ak                 ; 2 uses
  %i.am = add nsw i32 %i.al, 8708                 ; 2 uses
  %i.an = icmp ult i32 %i.am, 16384
  %i.ao = lshr i32 %i.am, 6
  %i.ap = icmp slt i32 %i.al, -8708
  %i.aq = select i1 %i.ap, i32 0, i32 255
  %i.ar = select i1 %i.an, i32 %i.ao, i32 %i.aq   ; 2 uses
  %i.as = mul nuw nsw i32 %i.u, 33050
  %i.at = lshr i32 %i.as, 8
  %i.au = add nuw nsw i32 %i.at, %i.x             ; 2 uses
  %i.av = add nsw i32 %i.au, -17685               ; 2 uses
  %i.aw = icmp ult i32 %i.av, 16384
  %i.ax = lshr i32 %i.av, 6
  %i.ay = icmp samesign ult i32 %i.au, 17685
  %i.az = select i1 %i.ay, i32 0, i32 248
  %i.ba = select i1 %i.aw, i32 %i.ax, i32 %i.az
  %i.bb = and i32 %i.ad, 248
  %i.bc = select i1 %i.ac, i32 %i.bb, i32 %i.af
  %i.bd = lshr i32 %i.ar, 5
  %i.be = or i32 %i.bd, %i.bc
  %i.bf = shl nuw nsw i32 %i.ar, 3
  %i.bg = and i32 %i.bf, 224
  %i.bh = lshr i32 %i.ba, 3
  %i.bi = or i32 %i.bg, %i.bh
  %i.bj = trunc i32 %i.be to i8
  store i8 %i.bj, ptr %6, align 1, !tbaa !10
  %i.bk = trunc i32 %i.bi to i8
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 1
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !10
  %.not = icmp eq ptr %1, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bm = mul nuw nsw i32 %i.n, 3
  %i.bn = add nuw nsw i32 %i.h, 131074
  %i.bo = add nuw nsw i32 %i.bn, %i.bm            ; 2 uses
  %i.bp = lshr i32 %i.bo, 2
  %i.bq = load i8, ptr %1, align 1, !tbaa !10
  %i.br = zext i8 %i.bq to i32
  %i.bs = and i32 %i.bp, 255                      ; 2 uses
  %i.bt = lshr i32 %i.bo, 18                      ; 2 uses
  %i.bu = mul nuw nsw i32 %i.br, 19077
  %i.bv = lshr i32 %i.bu, 8                       ; 3 uses
  %i.bw = mul nuw nsw i32 %i.bt, 26149
  %i.bx = lshr i32 %i.bw, 8
  %i.by = add nuw nsw i32 %i.bv, %i.bx            ; 2 uses
  %i.bz = add nsw i32 %i.by, -14234               ; 2 uses
  %i.ca = icmp ult i32 %i.bz, 16384
  %i.cb = lshr i32 %i.bz, 6
  %i.cc = icmp samesign ult i32 %i.by, 14234
  %i.cd = select i1 %i.cc, i32 0, i32 248
  %i.ce = mul nuw nsw i32 %i.bs, 6419
  %i.cf = lshr i32 %i.ce, 8
  %i.cg = mul nuw nsw i32 %i.bt, 13320
  %i.ch = lshr i32 %i.cg, 8
  %i.ci = add nuw nsw i32 %i.cf, %i.ch
  %i.cj = sub nsw i32 %i.bv, %i.ci                ; 2 uses
  %i.ck = add nsw i32 %i.cj, 8708                 ; 2 uses
  %i.cl = icmp ult i32 %i.ck, 16384
  %i.cm = lshr i32 %i.ck, 6
  %i.cn = icmp slt i32 %i.cj, -8708
  %i.co = select i1 %i.cn, i32 0, i32 255
  %i.cp = select i1 %i.cl, i32 %i.cm, i32 %i.co   ; 2 uses
  %i.cq = mul nuw nsw i32 %i.bs, 33050
  %i.cr = lshr i32 %i.cq, 8
  %i.cs = add nuw nsw i32 %i.bv, %i.cr            ; 2 uses
  %i.ct = add nsw i32 %i.cs, -17685               ; 2 uses
  %i.cu = icmp ult i32 %i.ct, 16384
  %i.cv = lshr i32 %i.ct, 6
  %i.cw = icmp samesign ult i32 %i.cs, 17685
  %i.cx = select i1 %i.cw, i32 0, i32 248
  %i.cy = select i1 %i.cu, i32 %i.cv, i32 %i.cx
  %i.cz = and i32 %i.cb, 248
  %i.da = select i1 %i.ca, i32 %i.cz, i32 %i.cd
  %i.db = lshr i32 %i.cp, 5
  %i.dc = or i32 %i.da, %i.db
  %i.dd = shl nuw nsw i32 %i.cp, 3
  %i.de = and i32 %i.dd, 224
  %i.df = lshr i32 %i.cy, 3
  %i.dg = or i32 %i.de, %i.df
  %i.dh = trunc i32 %i.dc to i8
  store i8 %i.dh, ptr %7, align 1, !tbaa !10
  %i.di = trunc i32 %i.dg to i8
  %i.dj = getelementptr inbounds nuw i8, ptr %7, i64 1
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not94119 = icmp slt i32 %i.b, 1
  br i1 %.not94119, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.dk = add nuw nsw i32 %i.b, 1
  %wide.trip.count = zext nneg i32 %i.dk to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 7 uses
  %.091121 = phi i32 [ %i.h, %.lr.ph.preheader ], [ %i.ds, %bb.e ] ; 3 uses
  %.092120 = phi i32 [ %i.n, %.lr.ph.preheader ], [ %i.ea, %bb.e ] ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 %indvars.iv
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !10
  %i.dn = zext i8 %i.dm to i32
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !10
  %i.dq = zext i8 %i.dp to i32
  %i.dr = shl nuw nsw i32 %i.dq, 16
  %i.ds = or disjoint i32 %i.dr, %i.dn            ; 5 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !10
  %i.dv = zext i8 %i.du to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !10
  %i.dy = zext i8 %i.dx to i32
  %i.dz = shl nuw nsw i32 %i.dy, 16
  %i.ea = or disjoint i32 %i.dz, %i.dv            ; 5 uses
  %i.eb = add nuw nsw i32 %.092120, 524296
  %i.ec = add nuw nsw i32 %i.eb, %.091121
  %i.ed = add nuw nsw i32 %i.ec, %i.ds
  %i.ee = add nuw nsw i32 %i.ed, %i.ea            ; 2 uses
  %i.ef = add nuw nsw i32 %i.ds, %.092120
  %i.eg = shl nuw nsw i32 %i.ef, 1
  %i.eh = add nuw nsw i32 %i.ee, %i.eg
  %i.ei = lshr i32 %i.eh, 3                       ; 2 uses
  %i.ej = add nuw nsw i32 %i.ea, %.091121
  %i.ek = shl nuw nsw i32 %i.ej, 1
  %i.el = add nuw nsw i32 %i.ee, %i.ek
  %i.em = lshr i32 %i.el, 3                       ; 2 uses
  %i.en = add nuw nsw i32 %i.ei, %.091121         ; 2 uses
  %i.eo = lshr i32 %i.en, 1
  %i.ep = add nuw nsw i32 %i.em, %i.ds            ; 2 uses
  %i.eq = lshr i32 %i.ep, 1
  %i.er = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.es = add nsw i64 %i.er, -1                   ; 3 uses
  %i.et = getelementptr inbounds i8, ptr %0, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !10
  %i.ev = zext i8 %i.eu to i32
  %i.ew = and i32 %i.eo, 255                      ; 2 uses
  %i.ex = lshr i32 %i.en, 17                      ; 2 uses
  %i.ey = shl nuw nsw i64 %i.es, 1                ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %6, i64 %i.ey ; 2 uses
  %i.fa = mul nuw nsw i32 %i.ev, 19077
  %i.fb = lshr i32 %i.fa, 8                       ; 3 uses
  %i.fc = mul nuw nsw i32 %i.ex, 26149
  %i.fd = lshr i32 %i.fc, 8
  %i.fe = add nuw nsw i32 %i.fd, %i.fb            ; 2 uses
  %i.ff = add nsw i32 %i.fe, -14234               ; 2 uses
  %i.fg = icmp ult i32 %i.ff, 16384
  %i.fh = lshr i32 %i.ff, 6
  %i.fi = icmp samesign ult i32 %i.fe, 14234
  %i.fj = select i1 %i.fi, i32 0, i32 248
  %i.fk = mul nuw nsw i32 %i.ew, 6419
  %i.fl = lshr i32 %i.fk, 8
  %i.fm = mul nuw nsw i32 %i.ex, 13320
  %i.fn = lshr i32 %i.fm, 8
  %i.fo = add nuw nsw i32 %i.fn, %i.fl
  %i.fp = sub nsw i32 %i.fb, %i.fo                ; 2 uses
  %i.fq = add nsw i32 %i.fp, 8708                 ; 2 uses
  %i.fr = icmp ult i32 %i.fq, 16384
  %i.fs = lshr i32 %i.fq, 6
  %i.ft = icmp slt i32 %i.fp, -8708
  %i.fu = select i1 %i.ft, i32 0, i32 255
  %i.fv = select i1 %i.fr, i32 %i.fs, i32 %i.fu   ; 2 uses
  %i.fw = mul nuw nsw i32 %i.ew, 33050
  %i.fx = lshr i32 %i.fw, 8
  %i.fy = add nuw nsw i32 %i.fx, %i.fb            ; 2 uses
  %i.fz = add nsw i32 %i.fy, -17685               ; 2 uses
  %i.ga = icmp ult i32 %i.fz, 16384
  %i.gb = lshr i32 %i.fz, 6
  %i.gc = icmp samesign ult i32 %i.fy, 17685
  %i.gd = select i1 %i.gc, i32 0, i32 248
  %i.ge = select i1 %i.ga, i32 %i.gb, i32 %i.gd
  %i.gf = and i32 %i.fh, 248
  %i.gg = select i1 %i.fg, i32 %i.gf, i32 %i.fj
  %i.gh = lshr i32 %i.fv, 5
  %i.gi = or i32 %i.gh, %i.gg
  %i.gj = shl nuw nsw i32 %i.fv, 3
  %i.gk = and i32 %i.gj, 224
  %i.gl = lshr i32 %i.ge, 3
  %i.gm = or i32 %i.gk, %i.gl
  %i.gn = trunc i32 %i.gi to i8
  store i8 %i.gn, ptr %i.ez, align 1, !tbaa !10
  %i.go = trunc i32 %i.gm to i8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ez, i64 1
  store i8 %i.go, ptr %i.gp, align 1, !tbaa !10
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 %i.er
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !10
  %i.gs = zext i8 %i.gr to i32
  %i.gt = and i32 %i.eq, 255                      ; 2 uses
  %i.gu = lshr i32 %i.ep, 17                      ; 2 uses
  %i.gv = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %6, i64 %i.gv ; 2 uses
  %i.gx = mul nuw nsw i32 %i.gs, 19077
  %i.gy = lshr i32 %i.gx, 8                       ; 3 uses
  %i.gz = mul nuw nsw i32 %i.gu, 26149
  %i.ha = lshr i32 %i.gz, 8
  %i.hb = add nuw nsw i32 %i.ha, %i.gy            ; 2 uses
  %i.hc = add nsw i32 %i.hb, -14234               ; 2 uses
  %i.hd = icmp ult i32 %i.hc, 16384
  %i.he = lshr i32 %i.hc, 6
  %i.hf = icmp samesign ult i32 %i.hb, 14234
  %i.hg = select i1 %i.hf, i32 0, i32 248
  %i.hh = mul nuw nsw i32 %i.gt, 6419
  %i.hi = lshr i32 %i.hh, 8
  %i.hj = mul nuw nsw i32 %i.gu, 13320
  %i.hk = lshr i32 %i.hj, 8
  %i.hl = add nuw nsw i32 %i.hk, %i.hi
  %i.hm = sub nsw i32 %i.gy, %i.hl                ; 2 uses
  %i.hn = add nsw i32 %i.hm, 8708                 ; 2 uses
  %i.ho = icmp ult i32 %i.hn, 16384
  %i.hp = lshr i32 %i.hn, 6
  %i.hq = icmp slt i32 %i.hm, -8708
  %i.hr = select i1 %i.hq, i32 0, i32 255
  %i.hs = select i1 %i.ho, i32 %i.hp, i32 %i.hr   ; 2 uses
  %i.ht = mul nuw nsw i32 %i.gt, 33050
  %i.hu = lshr i32 %i.ht, 8
  %i.hv = add nuw nsw i32 %i.hu, %i.gy            ; 2 uses
  %i.hw = add nsw i32 %i.hv, -17685               ; 2 uses
  %i.hx = icmp ult i32 %i.hw, 16384
  %i.hy = lshr i32 %i.hw, 6
  %i.hz = icmp samesign ult i32 %i.hv, 17685
  %i.ia = select i1 %i.hz, i32 0, i32 248
  %i.ib = select i1 %i.hx, i32 %i.hy, i32 %i.ia
  %i.ic = and i32 %i.he, 248
  %i.id = select i1 %i.hd, i32 %i.ic, i32 %i.hg
  %i.ie = lshr i32 %i.hs, 5
  %i.if = or i32 %i.ie, %i.id
  %i.ig = shl nuw nsw i32 %i.hs, 3
  %i.ih = and i32 %i.ig, 224
  %i.ii = lshr i32 %i.ib, 3
  %i.ij = or i32 %i.ih, %i.ii
  %i.ik = trunc i32 %i.if to i8
  store i8 %i.ik, ptr %i.gw, align 1, !tbaa !10
  %i.il = trunc i32 %i.ij to i8
  %i.im = getelementptr inbounds nuw i8, ptr %i.gw, i64 1
  store i8 %i.il, ptr %i.im, align 1, !tbaa !10
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.in = add nuw nsw i32 %i.em, %.092120         ; 2 uses
  %i.io = lshr i32 %i.in, 1
  %i.ip = add nuw nsw i32 %i.ei, %i.ea            ; 2 uses
  %i.iq = lshr i32 %i.ip, 1
  %i.ir = getelementptr inbounds i8, ptr %1, i64 %i.es
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !10
  %i.it = zext i8 %i.is to i32
  %i.iu = and i32 %i.io, 255                      ; 2 uses
  %i.iv = lshr i32 %i.in, 17                      ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %7, i64 %i.ey ; 2 uses
  %i.ix = mul nuw nsw i32 %i.it, 19077
  %i.iy = lshr i32 %i.ix, 8                       ; 3 uses
  %i.iz = mul nuw nsw i32 %i.iv, 26149
  %i.ja = lshr i32 %i.iz, 8
  %i.jb = add nuw nsw i32 %i.iy, %i.ja            ; 2 uses
  %i.jc = add nsw i32 %i.jb, -14234               ; 2 uses
  %i.jd = icmp ult i32 %i.jc, 16384
  %i.je = lshr i32 %i.jc, 6
  %i.jf = icmp samesign ult i32 %i.jb, 14234
  %i.jg = select i1 %i.jf, i32 0, i32 248
  %i.jh = mul nuw nsw i32 %i.iu, 6419
  %i.ji = lshr i32 %i.jh, 8
  %i.jj = mul nuw nsw i32 %i.iv, 13320
  %i.jk = lshr i32 %i.jj, 8
  %i.jl = add nuw nsw i32 %i.ji, %i.jk
  %i.jm = sub nsw i32 %i.iy, %i.jl                ; 2 uses
  %i.jn = add nsw i32 %i.jm, 8708                 ; 2 uses
  %i.jo = icmp ult i32 %i.jn, 16384
  %i.jp = lshr i32 %i.jn, 6
  %i.jq = icmp slt i32 %i.jm, -8708
  %i.jr = select i1 %i.jq, i32 0, i32 255
  %i.js = select i1 %i.jo, i32 %i.jp, i32 %i.jr   ; 2 uses
  %i.jt = mul nuw nsw i32 %i.iu, 33050
  %i.ju = lshr i32 %i.jt, 8
  %i.jv = add nuw nsw i32 %i.iy, %i.ju            ; 2 uses
  %i.jw = add nsw i32 %i.jv, -17685               ; 2 uses
  %i.jx = icmp ult i32 %i.jw, 16384
  %i.jy = lshr i32 %i.jw, 6
  %i.jz = icmp samesign ult i32 %i.jv, 17685
  %i.ka = select i1 %i.jz, i32 0, i32 248
  %i.kb = select i1 %i.jx, i32 %i.jy, i32 %i.ka
  %i.kc = and i32 %i.je, 248
  %i.kd = select i1 %i.jd, i32 %i.kc, i32 %i.jg
  %i.ke = lshr i32 %i.js, 5
  %i.kf = or i32 %i.kd, %i.ke
  %i.kg = shl nuw nsw i32 %i.js, 3
  %i.kh = and i32 %i.kg, 224
  %i.ki = lshr i32 %i.kb, 3
  %i.kj = or i32 %i.kh, %i.ki
  %i.kk = trunc i32 %i.kf to i8
  store i8 %i.kk, ptr %i.iw, align 1, !tbaa !10
  %i.kl = trunc i32 %i.kj to i8
  %i.km = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  store i8 %i.kl, ptr %i.km, align 1, !tbaa !10
  %i.kn = getelementptr inbounds nuw i8, ptr %1, i64 %i.er
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !10
  %i.kp = zext i8 %i.ko to i32
  %i.kq = and i32 %i.iq, 255                      ; 2 uses
  %i.kr = lshr i32 %i.ip, 17                      ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %7, i64 %i.gv ; 2 uses
  %i.kt = mul nuw nsw i32 %i.kp, 19077
  %i.ku = lshr i32 %i.kt, 8                       ; 3 uses
  %i.kv = mul nuw nsw i32 %i.kr, 26149
  %i.kw = lshr i32 %i.kv, 8
  %i.kx = add nuw nsw i32 %i.ku, %i.kw            ; 2 uses
  %i.ky = add nsw i32 %i.kx, -14234               ; 2 uses
  %i.kz = icmp ult i32 %i.ky, 16384
  %i.la = lshr i32 %i.ky, 6
  %i.lb = icmp samesign ult i32 %i.kx, 14234
  %i.lc = select i1 %i.lb, i32 0, i32 248
  %i.ld = mul nuw nsw i32 %i.kq, 6419
  %i.le = lshr i32 %i.ld, 8
  %i.lf = mul nuw nsw i32 %i.kr, 13320
  %i.lg = lshr i32 %i.lf, 8
  %i.lh = add nuw nsw i32 %i.le, %i.lg
  %i.li = sub nsw i32 %i.ku, %i.lh                ; 2 uses
  %i.lj = add nsw i32 %i.li, 8708                 ; 2 uses
  %i.lk = icmp ult i32 %i.lj, 16384
  %i.ll = lshr i32 %i.lj, 6
  %i.lm = icmp slt i32 %i.li, -8708
  %i.ln = select i1 %i.lm, i32 0, i32 255
  %i.lo = select i1 %i.lk, i32 %i.ll, i32 %i.ln   ; 2 uses
  %i.lp = mul nuw nsw i32 %i.kq, 33050
  %i.lq = lshr i32 %i.lp, 8
  %i.lr = add nuw nsw i32 %i.ku, %i.lq            ; 2 uses
  %i.ls = add nsw i32 %i.lr, -17685               ; 2 uses
  %i.lt = icmp ult i32 %i.ls, 16384
  %i.lu = lshr i32 %i.ls, 6
  %i.lv = icmp samesign ult i32 %i.lr, 17685
  %i.lw = select i1 %i.lv, i32 0, i32 248
  %i.lx = select i1 %i.lt, i32 %i.lu, i32 %i.lw
  %i.ly = and i32 %i.la, 248
  %i.lz = select i1 %i.kz, i32 %i.ly, i32 %i.lc
  %i.ma = lshr i32 %i.lo, 5
  %i.mb = or i32 %i.lz, %i.ma
  %i.mc = shl nuw nsw i32 %i.lo, 3
  %i.md = and i32 %i.mc, 224
  %i.me = lshr i32 %i.lx, 3
  %i.mf = or i32 %i.md, %i.me
  %i.mg = trunc i32 %i.mb to i8
  store i8 %i.mg, ptr %i.ks, align 1, !tbaa !10
  %i.mh = trunc i32 %i.mf to i8
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ks, i64 1
  store i8 %i.mh, ptr %i.mi, align 1, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.e, %bb.c
  %.092.lcssa = phi i32 [ %i.n, %bb.c ], [ %i.ea, %bb.e ] ; 2 uses
  %.091.lcssa = phi i32 [ %i.h, %bb.c ], [ %i.ds, %bb.e ] ; 2 uses
  %i.mj = and i32 %8, 1
  %.not95 = icmp eq i32 %i.mj, 0
  br i1 %.not95, label %bb.f, label %bb.h

bb.f:                                             ; preds = %._crit_edge
  %i.mk = mul nuw nsw i32 %.091.lcssa, 3
  %i.ml = add nuw nsw i32 %.092.lcssa, 131074
  %i.mm = add nuw nsw i32 %i.ml, %i.mk            ; 2 uses
  %i.mn = lshr i32 %i.mm, 2
  %i.mo = sext i32 %i.a to i64                    ; 2 uses
  %i.mp = getelementptr inbounds i8, ptr %0, i64 %i.mo
  %i.mq = load i8, ptr %i.mp, align 1, !tbaa !10
  %i.mr = zext i8 %i.mq to i32
  %i.ms = and i32 %i.mn, 255                      ; 2 uses
  %i.mt = lshr i32 %i.mm, 18                      ; 2 uses
  %i.mu = shl nsw i32 %i.a, 1
  %i.mv = sext i32 %i.mu to i64                   ; 2 uses
  %i.mw = getelementptr inbounds i8, ptr %6, i64 %i.mv ; 2 uses
  %i.mx = mul nuw nsw i32 %i.mr, 19077
  %i.my = lshr i32 %i.mx, 8                       ; 3 uses
  %i.mz = mul nuw nsw i32 %i.mt, 26149
  %i.na = lshr i32 %i.mz, 8
  %i.nb = add nuw nsw i32 %i.my, %i.na            ; 2 uses
  %i.nc = add nsw i32 %i.nb, -14234               ; 2 uses
  %i.nd = icmp ult i32 %i.nc, 16384
  %i.ne = lshr i32 %i.nc, 6
  %i.nf = icmp samesign ult i32 %i.nb, 14234
  %i.ng = select i1 %i.nf, i32 0, i32 248
  %i.nh = mul nuw nsw i32 %i.ms, 6419
  %i.ni = lshr i32 %i.nh, 8
  %i.nj = mul nuw nsw i32 %i.mt, 13320
  %i.nk = lshr i32 %i.nj, 8
  %i.nl = add nuw nsw i32 %i.ni, %i.nk
  %i.nm = sub nsw i32 %i.my, %i.nl                ; 2 uses
  %i.nn = add nsw i32 %i.nm, 8708                 ; 2 uses
  %i.no = icmp ult i32 %i.nn, 16384
  %i.np = lshr i32 %i.nn, 6
  %i.nq = icmp slt i32 %i.nm, -8708
  %i.nr = select i1 %i.nq, i32 0, i32 255
  %i.ns = select i1 %i.no, i32 %i.np, i32 %i.nr   ; 2 uses
  %i.nt = mul nuw nsw i32 %i.ms, 33050
  %i.nu = lshr i32 %i.nt, 8
  %i.nv = add nuw nsw i32 %i.my, %i.nu            ; 2 uses
  %i.nw = add nsw i32 %i.nv, -17685               ; 2 uses
  %i.nx = icmp ult i32 %i.nw, 16384
  %i.ny = lshr i32 %i.nw, 6
  %i.nz = icmp samesign ult i32 %i.nv, 17685
  %i.oa = select i1 %i.nz, i32 0, i32 248
  %i.ob = select i1 %i.nx, i32 %i.ny, i32 %i.oa
  %i.oc = and i32 %i.ne, 248
  %i.od = select i1 %i.nd, i32 %i.oc, i32 %i.ng
  %i.oe = lshr i32 %i.ns, 5
  %i.of = or i32 %i.od, %i.oe
  %i.og = shl nuw nsw i32 %i.ns, 3
  %i.oh = and i32 %i.og, 224
  %i.oi = lshr i32 %i.ob, 3
  %i.oj = or i32 %i.oh, %i.oi
  %i.ok = trunc i32 %i.of to i8
  store i8 %i.ok, ptr %i.mw, align 1, !tbaa !10
  %i.ol = trunc i32 %i.oj to i8
  %i.om = getelementptr inbounds nuw i8, ptr %i.mw, i64 1
  store i8 %i.ol, ptr %i.om, align 1, !tbaa !10
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.on = mul nuw nsw i32 %.092.lcssa, 3
  %i.oo = add nuw nsw i32 %.091.lcssa, 131074
  %i.op = add nuw nsw i32 %i.oo, %i.on            ; 2 uses
  %i.oq = lshr i32 %i.op, 2
  %i.or = getelementptr inbounds i8, ptr %1, i64 %i.mo
  %i.os = load i8, ptr %i.or, align 1, !tbaa !10
  %i.ot = zext i8 %i.os to i32
  %i.ou = and i32 %i.oq, 255                      ; 2 uses
  %i.ov = lshr i32 %i.op, 18                      ; 2 uses
  %i.ow = getelementptr inbounds i8, ptr %7, i64 %i.mv ; 2 uses
  %i.ox = mul nuw nsw i32 %i.ot, 19077
  %i.oy = lshr i32 %i.ox, 8                       ; 3 uses
  %i.oz = mul nuw nsw i32 %i.ov, 26149
  %i.pa = lshr i32 %i.oz, 8
  %i.pb = add nuw nsw i32 %i.oy, %i.pa            ; 2 uses
  %i.pc = add nsw i32 %i.pb, -14234               ; 2 uses
  %i.pd = icmp ult i32 %i.pc, 16384
  %i.pe = lshr i32 %i.pc, 6
  %i.pf = icmp samesign ult i32 %i.pb, 14234
  %i.pg = select i1 %i.pf, i32 0, i32 248
  %i.ph = mul nuw nsw i32 %i.ou, 6419
  %i.pi = lshr i32 %i.ph, 8
  %i.pj = mul nuw nsw i32 %i.ov, 13320
  %i.pk = lshr i32 %i.pj, 8
  %i.pl = add nuw nsw i32 %i.pi, %i.pk
  %i.pm = sub nsw i32 %i.oy, %i.pl                ; 2 uses
  %i.pn = add nsw i32 %i.pm, 8708                 ; 2 uses
  %i.po = icmp ult i32 %i.pn, 16384
  %i.pp = lshr i32 %i.pn, 6
  %i.pq = icmp slt i32 %i.pm, -8708
  %i.pr = select i1 %i.pq, i32 0, i32 255
end_hunk_3
