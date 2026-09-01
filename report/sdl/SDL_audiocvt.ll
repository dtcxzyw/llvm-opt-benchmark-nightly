Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_audiocvt?download=true
inline.NumInlined: 31
inline.NumDeleted: 17
loop-unroll.NumRuntimeUnrolled: 45
loop-unroll.NumUnrolled: 45
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.SDL_AudioSpec = type { i32, i32, i32 }

@channel_converters = internal unnamed_addr constant [8 x [8 x ptr]] [[8 x ptr] [ptr null, ptr @SDL_ConvertMonoToStereo, ptr @SDL_ConvertMonoTo21, ptr @SDL_ConvertMonoToQuad, ptr @SDL_ConvertMonoTo41, ptr @SDL_ConvertMonoTo51, ptr @SDL_ConvertMonoTo61, ptr @SDL_ConvertMonoTo71], [8 x ptr] [ptr @SDL_ConvertStereoToMono, ptr null, ptr @SDL_ConvertStereoTo21, ptr @SDL_ConvertStereoToQuad, ptr @SDL_ConvertStereoTo41, ptr @SDL_ConvertStereoTo51, ptr @SDL_ConvertStereoTo61, ptr @SDL_ConvertStereoTo71], [8 x ptr] [ptr @SDL_Convert21ToMono, ptr @SDL_Convert21ToStereo, ptr null, ptr @SDL_Convert21ToQuad, ptr @SDL_Convert21To41, ptr @SDL_Convert21To51, ptr @SDL_Convert21To61, ptr @SDL_Convert21To71], [8 x ptr] [ptr @SDL_ConvertQuadToMono, ptr @SDL_ConvertQuadToStereo, ptr @SDL_ConvertQuadTo21, ptr null, ptr @SDL_ConvertQuadTo41, ptr @SDL_ConvertQuadTo51, ptr @SDL_ConvertQuadTo61, ptr @SDL_ConvertQuadTo71], [8 x ptr] [ptr @SDL_Convert41ToMono, ptr @SDL_Convert41ToStereo, ptr @SDL_Convert41To21, ptr @SDL_Convert41ToQuad, ptr null, ptr @SDL_Convert41To51, ptr @SDL_Convert41To61, ptr @SDL_Convert41To71], [8 x ptr] [ptr @SDL_Convert51ToMono, ptr @SDL_Convert51ToStereo, ptr @SDL_Convert51To21, ptr @SDL_Convert51ToQuad, ptr @SDL_Convert51To41, ptr null, ptr @SDL_Convert51To61, ptr @SDL_Convert51To71], [8 x ptr] [ptr @SDL_Convert61ToMono, ptr @SDL_Convert61ToStereo, ptr @SDL_Convert61To21, ptr @SDL_Convert61ToQuad, ptr @SDL_Convert61To41, ptr @SDL_Convert61To51, ptr null, ptr @SDL_Convert61To71], [8 x ptr] [ptr @SDL_Convert71ToMono, ptr @SDL_Convert71ToStereo, ptr @SDL_Convert71To21, ptr @SDL_Convert71ToQuad, ptr @SDL_Convert71To41, ptr @SDL_Convert71To51, ptr @SDL_Convert71To61, ptr null]], align 16
@.str = private unnamed_addr constant [26 x i8] c"Parameter '%s' is invalid\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Stream has no source format\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Stream has no destination format\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"src_spec->format\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"src_spec->channels\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"src_spec->freq\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"dst_spec->format\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"dst_spec->channels\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"dst_spec->freq\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"Wrong number of channels\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Invalid channel mapping\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Frequency ratio is too low\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Frequency ratio is too high\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"gain\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"channel_buffers\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"num_samples\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"src_data\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"src_len\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"dst_data\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"dst_len\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Can't add partial sample frames\00", align 1
@.str.24 = private unnamed_addr constant [25 x i8] c"Not enough data in queue\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"Not enough data in queue (resample)\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @SDL_ChannelMapIsBogus(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ne ptr %0, null
  %i.a = icmp sgt i32 %1, 0
  %or.cond22 = and i1 %.not, %i.a
  br i1 %or.cond22, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = icmp slt i32 %i.c, -1
  %.not17 = icmp sge i32 %i.c, %1
  %or.cond.not = or i1 %i.d, %.not17              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %or.cond = select i1 %or.cond.not, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.thread, label %.lr.ph, !llvm.loop !3

.thread:                                          ; preds = %.lr.ph, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ %or.cond.not, %.lr.ph ]
  ret i1 %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define hidden noundef zeroext i1 @SDL_ChannelMapIsDefault(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp ne ptr %0, null
  %i.a = icmp sgt i32 %1, 0
  %or.cond = and i1 %.not, %i.a
  br i1 %or.cond, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4
  %i.d = zext i32 %i.c to i64
  %.not11 = icmp eq i64 %indvars.iv, %i.d         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond18.not = select i1 %.not11, i1 %exitcond.not, i1 false
  br i1 %or.cond18.not, label %.lr.ph, label %.thread, !llvm.loop !5

.thread:                                          ; preds = %.lr.ph, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ %.not11, %.lr.ph ]
  ret i1 %.1
}

; Function Attrs: nounwind uwtable
define hidden void @ConvertAudio(i32 noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, float noundef %10) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = and i32 %6, 255                          ; 2 uses
  %i.b = lshr i32 %i.a, 3
  %i.c = icmp eq i32 %3, %7                       ; 2 uses
  br i1 %i.c, label %bb.c, label %.thread162

bb.c:                                             ; preds = %bb.b
  %i.d = tail call zeroext i1 @SDL_AudioChannelMapsEqual(i32 noundef %3, ptr noundef %4, ptr noundef %8) #10
  %cond.fr160 = freeze i1 %i.d
  br i1 %cond.fr160, label %.thread166, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not150 = icmp eq ptr %4, null
  br i1 %.not150, label %.thread166, label %bb.e

.thread162:                                       ; preds = %bb.b
  %.not150.old = icmp eq ptr %4, null
  br i1 %.not150.old, label %.thread166.thread, label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread162
  %.not151 = icmp eq ptr %9, null
  %i.e = select i1 %.not151, ptr %5, ptr %9       ; 2 uses
  tail call fastcc void @SwizzleAudio(i32 noundef %0, ptr noundef %i.e, ptr noundef %1, i32 noundef %3, ptr noundef %4, i32 noundef %2)
  br label %.thread166

.thread166:                                       ; preds = %bb.c, %bb.d, %bb.e
  %i.f = phi ptr [ %8, %bb.e ], [ null, %bb.c ], [ %8, %bb.d ] ; 6 uses
  %.0 = phi ptr [ %i.e, %bb.e ], [ %1, %bb.c ], [ %1, %bb.d ] ; 7 uses
  %i.g = fcmp oeq float %10, 1.000000e+00
  %or.cond = and i1 %i.c, %i.g
  br i1 %or.cond, label %bb.f, label %.thread166.thread

bb.f:                                             ; preds = %.thread166
  %i.h = icmp eq i32 %2, %6
  br i1 %i.h, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %.not156 = icmp eq ptr %i.f, null
  br i1 %.not156, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @SwizzleAudio(i32 noundef %0, ptr noundef %5, ptr noundef %.0, i32 noundef %3, ptr noundef %i.f, i32 noundef %6)
  br label %bb.w

bb.i:                                             ; preds = %bb.g
  %.not157 = icmp eq ptr %.0, %5
  br i1 %.not157, label %bb.w, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = mul i32 %3, %0
  %i.j = mul i32 %i.i, %i.b
  %i.k = sext i32 %i.j to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %.0, i64 %i.k, i1 false)
  br label %bb.w

bb.k:                                             ; preds = %bb.f
  %i.l = xor i32 %6, %2
  %i.m = icmp eq i32 %i.l, 4096
  br i1 %i.m, label %bb.l, label %.thread166.thread

bb.l:                                             ; preds = %bb.k
  %.not155 = icmp eq ptr %i.f, null
  br i1 %.not155, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call fastcc void @SwizzleAudio(i32 noundef %0, ptr noundef %5, ptr noundef %.0, i32 noundef %3, ptr noundef %i.f, i32 noundef %6)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.1 = phi ptr [ %5, %bb.m ], [ %.0, %bb.l ]
  %i.n = mul nsw i32 %3, %0
  tail call void @ConvertAudioSwapEndian(ptr noundef %5, ptr noundef %.1, i32 noundef %i.n, i32 noundef %i.a) #10
  br label %bb.w

.thread166.thread:                                ; preds = %.thread162, %bb.k, %.thread166
  %.0202 = phi ptr [ %.0, %.thread166 ], [ %.0, %bb.k ], [ %1, %.thread162 ] ; 2 uses
  %i.o = phi ptr [ %i.f, %.thread166 ], [ %i.f, %bb.k ], [ %8, %.thread162 ] ; 2 uses
  %.not152 = icmp eq ptr %9, null
  %spec.select159 = select i1 %.not152, ptr %5, ptr %9 ; 3 uses
  %.not153 = icmp eq i32 %2, 33056
  %i.p = icmp ne i32 %3, %7                       ; 3 uses
  %i.q = icmp ne i32 %6, 33056                    ; 4 uses
  br i1 %.not153, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread166.thread
  %or.cond3 = or i1 %i.q, %i.p
  %i.r = select i1 %or.cond3, ptr %spec.select159, ptr %5 ; 2 uses
  %i.s = mul nsw i32 %3, %0
  tail call void @ConvertAudioToFloat(ptr noundef %i.r, ptr noundef %.0202, i32 noundef %i.s, i32 noundef %2) #10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread166.thread
  %.2 = phi ptr [ %i.r, %bb.o ], [ %.0202, %.thread166.thread ] ; 9 uses
  %.2205 = ptrtoaddr ptr %.2 to i64
  %i.t = fcmp une float %10, 1.000000e+00
  br i1 %i.t, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %bb.p
  %or.cond5 = or i1 %i.q, %i.p
  %i.u = select i1 %or.cond5, ptr %spec.select159, ptr %5 ; 17 uses
  %i.v = ptrtoaddr ptr %i.u to i64
  %i.w = mul i32 %3, %0                           ; 5 uses
  %i.x = icmp eq ptr %.2, %i.u
  %i.y = icmp sgt i32 %i.w, 0                     ; 2 uses
  br i1 %i.x, label %.preheader, label %.preheader169

.preheader169:                                    ; preds = %bb.q
  br i1 %i.y, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader169
  %wide.trip.count = zext nneg i32 %i.w to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.w, 8
  %i.z = sub i64 %.2205, %i.v
  %diff.check = icmp ugt i64 %i.z, -32
  %or.cond221 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond221, label %.lr.ph.preheader223, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %10, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <4 x float>, ptr %i.aa, align 4
  %wide.load206 = load <4 x float>, ptr %i.ab, align 4
  %i.ac = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ad = fmul <4 x float> %broadcast.splat, %wide.load206
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x float> %i.ac, ptr %i.ae, align 4
  store <4 x float> %i.ad, ptr %i.af, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !6

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader223

.lr.ph.preheader223:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader223, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader223 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader223 ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %.2, i64 %indvars.iv.prol
  %i.ai = load float, ptr %i.ah, align 4
  %i.aj = fmul float %10, %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.prol
  store float %i.aj, ptr %i.ak, align 4
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !9

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader223
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader223 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.al = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.am = icmp ugt i64 %i.al, -4
  br i1 %i.am, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %bb.q
  br i1 %i.y, label %.lr.ph173.preheader, label %.loopexit

.lr.ph173.preheader:                              ; preds = %.preheader
  %wide.trip.count179 = zext nneg i32 %i.w to i64 ; 3 uses
  %min.iters.check208 = icmp ult i32 %i.w, 8
  br i1 %min.iters.check208, label %.lr.ph173.preheader222, label %vector.ph209

vector.ph209:                                     ; preds = %.lr.ph173.preheader
  %n.vec210 = and i64 %wide.trip.count179, 2147483640 ; 3 uses
  %broadcast.splatinsert211 = insertelement <4 x float> poison, float %10, i64 0
  %broadcast.splat212 = shufflevector <4 x float> %broadcast.splatinsert211, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %vector.ph209
  %index214 = phi i64 [ 0, %vector.ph209 ], [ %index.next217, %vector.body213 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index214 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %wide.load215 = load <4 x float>, ptr %i.an, align 4
  %wide.load216 = load <4 x float>, ptr %i.ao, align 4
  %i.ap = fmul <4 x float> %broadcast.splat212, %wide.load215
  %i.aq = fmul <4 x float> %broadcast.splat212, %wide.load216
  store <4 x float> %i.ap, ptr %i.an, align 4
end_hunk_0
