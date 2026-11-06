Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/CAFFileALAC?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AudioFormatDescription = type { double, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.port_CAFAudioDescription = type { double, i32, i32, i32, i32, i32, i32 }

@__const._Z18WriteCAFFcaffChunkP8_IO_FILE.theReadBuffer = private unnamed_addr constant [8 x i8] c"caff\00\01\00\00", align 1, !guid !8
@__const._Z18WriteCAFFdescChunkP8_IO_FILE22AudioFormatDescription.theReadBuffer = private unnamed_addr constant <{ i8, i8, i8, i8, [8 x i8] }> <{ i8 100, i8 101, i8 115, i8 99, [8 x i8] zeroinitializer }>, align 1, !guid !9
@__const._Z18WriteCAFFdataChunkP8_IO_FILE.theReadBuffer = private unnamed_addr constant [16 x i8] c"data\00\00\00\00\00\00\00\00\00\00\00\01", align 16, !guid !10
@__const._Z18WriteCAFFkukiChunkP8_IO_FILEPvj.thekukiHeaderBuffer = private unnamed_addr constant <{ i8, i8, i8, i8, [8 x i8] }> <{ i8 107, i8 117, i8 107, i8 105, [8 x i8] zeroinitializer }>, align 1, !guid !11
@__const._Z18WriteCAFFchanChunkP8_IO_FILEj.theBuffer = private unnamed_addr constant <{ i8, i8, i8, i8, [20 x i8] }> <{ i8 99, i8 104, i8 97, i8 110, [20 x i8] zeroinitializer }>, align 16, !guid !12

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef i32 @_Z24FindCAFFPacketTableStartP8_IO_FILEPiS1_(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 !guid !39 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  %i.b = tail call i64 @ftell(ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.e = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef %0)
  %i.f = load i32, ptr %i.a, align 4
  %cond = icmp eq i32 %i.f, 1953194352
  br i1 %cond, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.g = tail call i64 @ftell(ptr noundef %0)
  %i.h = trunc i64 %i.g to i32
  %i.i = add i32 %i.h, 24
  store i32 %i.i, ptr %1, align 4, !tbaa !7
  %i.j = load i32, ptr %i.d, align 4
  %i.k = tail call i32 @llvm.bswap.i32(i32 %i.j)
  store i32 %i.k, ptr %2, align 4, !tbaa !7
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = trunc i64 %i.e to i32
  %i.m = load i32, ptr %i.d, align 4
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %i.o = zext i32 %i.n to i64
  %i.p = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.o, i32 noundef 1) ; 0 uses
  %i.q = icmp slt i32 %i.l, 1
  br i1 %i.q, label %.loopexit, label %bb.b, !llvm.loop !38

.loopexit:                                        ; preds = %bb.c, %.thread
  %i.r = shl i64 %i.b, 32
  %i.s = ashr exact i64 %i.r, 32
  %i.t = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.s, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z18WriteCAFFcaffChunkP8_IO_FILE(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 !guid !40 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr noundef nonnull @__const._Z18WriteCAFFcaffChunkP8_IO_FILE.theReadBuffer, i64 noundef 1, i64 noundef 8, ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z18WriteCAFFdescChunkP8_IO_FILE22AudioFormatDescription(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly byval(%struct.AudioFormatDescription) align 8 captures(none) %1) local_unnamed_addr #3 !guid !41 {
bb.a:
  %2 = alloca %struct.port_CAFAudioDescription, align 8 ; 10 uses
  %i.a = alloca [12 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.c = load i32, ptr %i.b, align 4, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @__const._Z18WriteCAFFdescChunkP8_IO_FILE22AudioFormatDescription.theReadBuffer, i64 11, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %i.f = icmp eq i32 %i.e, 1819304813
  %spec.select = select i1 %i.f, i32 2, i32 %i.c
  %i.g = load double, ptr %1, align 8, !tbaa !18
  %i.h = tail call double @SwapFloat64NtoB(double noundef %i.g)
  store double %i.h, ptr %2, align 8, !tbaa !20
  %i.i = tail call i32 @Swap32NtoB(i32 noundef %i.e)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.i, ptr %i.j, align 8, !tbaa !21
  %i.k = tail call i32 @Swap32NtoB(i32 noundef %spec.select)
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.k, ptr %i.l, align 4, !tbaa !22
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !23
  %i.o = tail call i32 @Swap32NtoB(i32 noundef %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.o, ptr %i.p, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  %i.s = tail call i32 @Swap32NtoB(i32 noundef %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %i.s, ptr %i.t, align 4, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.v = load i32, ptr %i.u, align 4, !tbaa !27
  %i.w = tail call i32 @Swap32NtoB(i32 noundef %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %i.w, ptr %i.x, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !29
  %i.aa = tail call i32 @Swap32NtoB(i32 noundef %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 28
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !30
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 32, ptr %i.ac, align 1, !tbaa !31
  %i.ad = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef %0) ; 0 uses
  %i.ae = call i64 @fwrite(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 32, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret void
}

declare double @SwapFloat64NtoB(double noundef) local_unnamed_addr #4

declare i32 @Swap32NtoB(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z18WriteCAFFdataChunkP8_IO_FILE(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 !guid !42 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr noundef nonnull @__const._Z18WriteCAFFdataChunkP8_IO_FILE.theReadBuffer, i64 noundef 1, i64 noundef 16, ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z18WriteCAFFkukiChunkP8_IO_FILEPvj(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 !guid !43 {
bb.a:
  %i.a = alloca [12 x i8], align 1                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @__const._Z18WriteCAFFkukiChunkP8_IO_FILEPvj.thekukiHeaderBuffer, i64 11, i1 false)
  %i.b = trunc i32 %2 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 %i.b, ptr %i.c, align 1, !tbaa !31
  %i.d = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef %0) ; 0 uses
  %i.e = zext i32 %2 to i64
  %i.f = tail call i64 @fwrite(ptr noundef %1, i64 noundef 1, i64 noundef %i.e, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z18WriteCAFFChunkSizeP8_IO_FILEl(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 !guid !44 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %2 = tail call i64 @llvm.bswap.i64(i64 %1)
  store i64 %2, ptr %i.a, align 8, !tbaa !31
  %i.b = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 8, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z18WriteCAFFchanChunkP8_IO_FILEj(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 !guid !45 {
bb.a:
  %i.a = alloca [24 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 16 dereferenceable(24) @__const._Z18WriteCAFFchanChunkP8_IO_FILEj.theBuffer, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  store i8 12, ptr %i.b, align 1, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  store i32 %2, ptr %i.c, align 4, !tbaa !31
  %i.d = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 24, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z18WriteCAFFfreeChunkP8_IO_FILEj(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 !guid !47 {
bb.a:
  %i.a = alloca [12 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 1701147238, ptr %i.a, align 8
  %i.b = add i32 %1, -12                          ; 3 uses
  %i.c = icmp ugt i32 %1, 11
  br i1 %i.c, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %2 = tail call i32 @llvm.bswap.i32(i32 %i.b)
  store i32 %2, ptr %i.d, align 8, !tbaa !31
  %i.e = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef %0) ; 0 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.012 = phi i32 [ %i.f, %.lr.ph ], [ 0, %bb.b ]
  %fputc = tail call i32 @fputc(i32 0, ptr %0)    ; 0 uses
  %i.f = add nuw i32 %.012, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.f, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !46

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z24WriteCAFFpaktChunkHeaderP8_IO_FILEP25port_CAFPacketTableHeaderj(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #3 !guid !48 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = load i64, ptr %1, align 1, !tbaa !34
  %i.c = tail call i64 @Swap64NtoB(i64 noundef %i.b)
  store i64 %i.c, ptr %1, align 1, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 1, !tbaa !35
  %i.f = tail call i64 @Swap64NtoB(i64 noundef %i.e)
  store i64 %i.f, ptr %i.d, align 1, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = load i32, ptr %i.g, align 1, !tbaa !36
  %i.i = tail call i32 @Swap32NtoB(i32 noundef %i.h)
  store i32 %i.i, ptr %i.g, align 1, !tbaa !36
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.k = load i32, ptr %i.j, align 1, !tbaa !37
  %i.l = tail call i32 @Swap32NtoB(i32 noundef %i.k)
  store i32 %i.l, ptr %i.j, align 1, !tbaa !37
  store <4 x i8> <i8 112, i8 97, i8 107, i8 116>, ptr %i.a, align 4, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.m, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  store i32 %3, ptr %i.n, align 4, !tbaa !31
  %i.o = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef %0) ; 0 uses
  %i.p = tail call i64 @fwrite(ptr noundef nonnull %1, i64 noundef 1, i64 noundef 24, ptr noundef %0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare i64 @Swap64NtoB(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_Z13GetBERIntegeriPhPi(i32 noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2) local_unnamed_addr #5 !guid !49 {
bb.a:
  %i.a = and i32 %0, 127                          ; 4 uses
  %i.b = icmp ult i32 %0, 128
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !7
  %i.c = trunc nuw nsw i32 %0 to i8
  store i8 %i.c, ptr %1, align 1, !tbaa !31
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %0, 16384
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 2, ptr %2, align 4, !tbaa !7
  %i.e = lshr i32 %0, 7
  %i.f = trunc nuw nsw i32 %i.e to i8
  %i.g = or disjoint i8 %i.f, -128
  store i8 %i.g, ptr %1, align 1, !tbaa !31
  %i.h = trunc nuw nsw i32 %i.a to i8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 %i.h, ptr %i.i, align 1, !tbaa !31
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.j = icmp ult i32 %0, 2097152
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 3, ptr %2, align 4, !tbaa !7
  %i.k = lshr i32 %0, 14
  %i.l = trunc nuw nsw i32 %i.k to i8
  %i.m = or disjoint i8 %i.l, -128
  store i8 %i.m, ptr %1, align 1, !tbaa !31
  %i.n = lshr i32 %0, 7
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.p = trunc i32 %i.n to i8
  %i.q = or i8 %i.p, -128
  store i8 %i.q, ptr %i.o, align 1, !tbaa !31
  %i.r = trunc nuw nsw i32 %i.a to i8
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 2
  store i8 %i.r, ptr %i.s, align 1, !tbaa !31
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.t = icmp ult i32 %0, 268435456
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 3 ; 2 uses
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 4, ptr %2, align 4, !tbaa !7
  %i.x = lshr i32 %0, 21
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -128
  store i8 %i.z, ptr %1, align 1, !tbaa !31
  %i.aa = lshr i32 %0, 14
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = or i8 %i.ab, -128
  store i8 %i.ac, ptr %i.u, align 1, !tbaa !31
  %i.ad = lshr i32 %0, 7
  %i.ae = trunc i32 %i.ad to i8
  %i.af = or i8 %i.ae, -128
  store i8 %i.af, ptr %i.v, align 1, !tbaa !31
  %i.ag = trunc nuw nsw i32 %i.a to i8
  store i8 %i.ag, ptr %i.w, align 1, !tbaa !31
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  store i32 5, ptr %2, align 4, !tbaa !7
  %i.ah = ashr i32 %0, 28
  %i.ai = trunc nsw i32 %i.ah to i8
  %i.aj = or i8 %i.ai, -128
  store i8 %i.aj, ptr %1, align 1, !tbaa !31
  %i.ak = lshr i32 %0, 21
  %i.al = trunc i32 %i.ak to i8
  %i.am = or i8 %i.al, -128
  store i8 %i.am, ptr %i.u, align 1, !tbaa !31
  %i.an = lshr i32 %0, 14
  %i.ao = trunc i32 %i.an to i8
  %i.ap = or i8 %i.ao, -128
  store i8 %i.ap, ptr %i.v, align 1, !tbaa !31
  %i.aq = lshr i32 %0, 7
  %i.ar = trunc i32 %i.aq to i8
  %i.as = or i8 %i.ar, -128
  store i8 %i.as, ptr %i.w, align 1, !tbaa !31
  %i.at = trunc nuw nsw i32 %i.a to i8
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i8 %i.at, ptr %i.au, align 1, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.h, %bb.i, %bb.f, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z14ReadBERIntegerPhPi(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #6 !guid !50 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !31      ; 2 uses
  %i.b = and i8 %i.a, 127
  %i.c = zext nneg i8 %i.b to i32                 ; 3 uses
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !7      ; 5 uses
  %.not14.not = icmp sgt i32 %i.d, 0
  br i1 %.not14.not, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !31    ; 2 uses
  %i.g = shl nuw nsw i32 %i.c, 7
  %i.h = and i8 %i.f, 127
  %i.i = zext nneg i8 %i.h to i32
  %i.j = or disjoint i32 %i.g, %i.i               ; 2 uses
  %.not.1 = icmp sgt i8 %i.f, -1
  %.not14.not.1.not = icmp eq i32 %i.d, 1
  %or.cond = or i1 %.not.1, %.not14.not.1.not
  br i1 %or.cond, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !31    ; 2 uses
  %i.m = shl nuw nsw i32 %i.j, 7
  %i.n = and i8 %i.l, 127
  %i.o = zext nneg i8 %i.n to i32
  %i.p = or disjoint i32 %i.m, %i.o               ; 2 uses
  %.not.2 = icmp slt i8 %i.l, 0
  %.not14.not.2 = icmp samesign ugt i32 %i.d, 2
  %or.cond22 = select i1 %.not.2, i1 %.not14.not.2, i1 false
  br i1 %or.cond22, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.r = load i8, ptr %i.q, align 1, !tbaa !31    ; 2 uses
  %i.s = shl nuw nsw i32 %i.p, 7
  %i.t = and i8 %i.r, 127
  %i.u = zext nneg i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %.not.3 = icmp sgt i8 %i.r, -1
  %.not14.not.3.not = icmp eq i32 %i.d, 3
  %or.cond23 = or i1 %.not.3, %.not14.not.3.not
  br i1 %or.cond23, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.x = load i8, ptr %i.w, align 1, !tbaa !31    ; 2 uses
  %i.y = shl i32 %i.v, 7
  %i.z = and i8 %i.x, 127
  %i.aa = zext nneg i8 %i.z to i32
  %i.ab = or disjoint i32 %i.y, %i.aa
  %.not.4 = icmp slt i8 %i.x, 0
  %.not14.not.4 = icmp samesign ugt i32 %i.d, 4
  %or.cond24 = select i1 %.not.4, i1 %.not14.not.4, i1 false
  br i1 %or.cond24, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.a, %bb.b
  %.lcssa20 = phi i32 [ %i.c, %bb.a ], [ %i.c, %bb.b ], [ %i.j, %bb.c ], [ %i.v, %bb.e ], [ %i.p, %bb.d ], [ %i.ab, %bb.f ]
  %.lcssa18 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 4, %bb.e ], [ 3, %bb.d ], [ 5, %bb.f ]
  store i32 %.lcssa18, ptr %1, align 4, !tbaa !7
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.critedge
  %.012 = phi i32 [ %.lcssa20, %.critedge ], [ 0, %bb.f ]
  ret i32 %.012
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z20BuildBasePacketTable22AudioFormatDescriptioniPiP25port_CAFPacketTableHeader(ptr nofree noundef readonly byval(%struct.AudioFormatDescription) align 8 captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %2, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %3) local_unnamed_addr #6 !guid !51 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = lshr i32 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.e = load i32, ptr %i.d, align 4, !tbaa !27
  %i.f = mul i32 %i.c, %i.e                       ; 2 uses
  %i.g = udiv i32 %1, %i.f                        ; 2 uses
  %i.h = zext i32 %i.g to i64                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.h, ptr %i.i, align 1, !tbaa !35
  %i.j = lshr i64 %i.h, 12
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.k, align 1, !tbaa !36
  %i.l = and i32 %i.g, 4095
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.n = sub nuw nsw i32 4096, %i.l
end_hunk_0
begin_hunk_1_@_Z30GetMagicCookieSizeFromCAFFkukiP8_IO_FILE:bb.a
  %i.r = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.q, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.0.21
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef range(i32 -1, 1) i32 @_Z26GetMagicCookieFromCAFFkukiP8_IO_FILEPhPj(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 !guid !55 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 6 uses
  %i.b = tail call i64 @ftell(ptr noundef %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.e
  %i.f = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef %0)
  %i.g = load i32, ptr %i.a, align 4
  %cond = icmp eq i32 %i.g, 1768650091
  br i1 %cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.e, align 1, !tbaa !31    ; 2 uses
  %i.i = zext i8 %i.h to i32                      ; 2 uses
  %i.j = load i32, ptr %2, align 4, !tbaa !7
  %.not = icmp ult i32 %i.j, %i.i
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = zext i8 %i.h to i64
  %i.l = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %i.k, ptr noundef %0) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.c
  %storemerge = phi i32 [ %i.i, %bb.d ], [ 0, %bb.c ]
  %.1.neg = phi i32 [ 0, %bb.d ], [ -1, %bb.c ]
  store i32 %storemerge, ptr %2, align 4, !tbaa !7
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.m = trunc i64 %i.f to i32
  %i.n = load i32, ptr %i.d, align 4
  %i.o = tail call i32 @llvm.bswap.i32(i32 %i.n)
  %i.p = zext i32 %i.o to i64
  %i.q = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.p, i32 noundef 1) ; 0 uses
  %i.r = icmp slt i32 %i.m, 1
  br i1 %i.r, label %.loopexit, label %bb.b, !llvm.loop !54

.loopexit:                                        ; preds = %bb.e, %.thread
  %. = phi i32 [ %.1.neg, %.thread ], [ -1, %bb.e ]
  %i.s = shl i64 %i.b, 32
  %i.t = ashr exact i64 %i.s, 32
  %i.u = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.t, i32 noundef 0) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.
}

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local noundef zeroext i1 @_Z17FindCAFFDataStartP8_IO_FILEPiS1_(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 !guid !57 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 0) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %i.d = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 12, ptr noundef %0)
  %i.e = load i32, ptr %i.a, align 4
  %cond = icmp eq i32 %i.e, 1635017060            ; 2 uses
  br i1 %cond, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.f = tail call i64 @ftell(ptr noundef %0)
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, 4
  store i32 %i.h, ptr %1, align 4, !tbaa !7
  %i.i = load i32, ptr %i.c, align 4
  %i.j = tail call i32 @llvm.bswap.i32(i32 %i.i)
  %i.k = add nsw i32 %i.j, -4
  store i32 %i.k, ptr %2, align 4, !tbaa !7
  br label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.l = trunc i64 %i.d to i32
  %i.m = load i32, ptr %i.c, align 4
  %i.n = tail call i32 @llvm.bswap.i32(i32 %i.m)
  %i.o = zext i32 %i.n to i64
  %i.p = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.o, i32 noundef 1) ; 0 uses
  %i.q = icmp slt i32 %i.l, 1
  br i1 %i.q, label %.loopexit, label %bb.b, !llvm.loop !56

.loopexit:                                        ; preds = %bb.c, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i1 %cond
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_Z17GetCAFFdescFormatP8_IO_FILEP22AudioFormatDescription(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #3 !guid !59 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = tail call i32 @fseek(ptr noundef %0, i64 noundef 4, i32 noundef 1) ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %bb.a
  %i.o = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4, ptr noundef %0) ; 0 uses
  %i.p = load i32, ptr %i.a, align 16
  %cond = icmp eq i32 %i.p, 1668506980
  br i1 %cond, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.q = tail call i32 @fseek(ptr noundef %0, i64 noundef 8, i32 noundef 1) ; 0 uses
  %i.r = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 32, ptr noundef %0) ; 0 uses
  %i.s = load i32, ptr %i.d, align 8, !tbaa !21
  %i.t = tail call i32 @Swap32BtoN(i32 noundef %i.s)
  store i32 %i.t, ptr %i.e, align 8, !tbaa !17
  %i.u = load i32, ptr %i.f, align 8, !tbaa !28
  %i.v = tail call i32 @Swap32BtoN(i32 noundef %i.u)
  store i32 %i.v, ptr %i.g, align 4, !tbaa !27
  %i.w = load double, ptr %i.a, align 16, !tbaa !20
  %i.x = tail call double @SwapFloat64BtoN(double noundef %i.w)
  store double %i.x, ptr %1, align 8, !tbaa !18
  %i.y = load i32, ptr %i.h, align 4, !tbaa !30
  %i.z = tail call i32 @Swap32BtoN(i32 noundef %i.y)
  store i32 %i.z, ptr %i.i, align 8, !tbaa !29
  %i.aa = load i32, ptr %i.j, align 4, !tbaa !22
  %i.ab = tail call i32 @Swap32BtoN(i32 noundef %i.aa)
  store i32 %i.ab, ptr %i.k, align 4, !tbaa !16
  %i.ac = load i32, ptr %i.l, align 16, !tbaa !24
  %i.ad = tail call i32 @Swap32BtoN(i32 noundef %i.ac) ; 2 uses
  store i32 %i.ad, ptr %i.m, align 8, !tbaa !23
  %i.ae = load i32, ptr %i.e, align 8, !tbaa !17
  %i.af = icmp eq i32 %i.ae, 1634492771
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8, !tbaa !60
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  store i32 %i.ad, ptr %i.n, align 8, !tbaa !60
  %i.ag = load i32, ptr %i.k, align 4, !tbaa !16  ; 3 uses
  %i.ah = and i32 %i.ag, 2
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = and i32 %i.ag, -4
  store i32 %i.ai, ptr %i.k, align 4, !tbaa !16
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.aj = or disjoint i32 %i.ag, 2
  store i32 %i.aj, ptr %i.k, align 4, !tbaa !16
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.ak = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 8, ptr noundef %0) ; 0 uses
  %i.al = load i32, ptr %i.c, align 4
  %i.am = tail call i32 @llvm.bswap.i32(i32 %i.al)
  %i.an = zext i32 %i.am to i64
  %i.ao = tail call i32 @fseek(ptr noundef %0, i64 noundef %i.an, i32 noundef 1) ; 0 uses
  br label %bb.b, !llvm.loop !58

bb.i:                                             ; preds = %bb.d, %bb.g, %bb.f
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !26
  %i.at = tail call i32 @Swap32BtoN(i32 noundef %i.as)
  store i32 %i.at, ptr %i.aq, align 4, !tbaa !25
  store i32 0, ptr %i.ap, align 4, !tbaa !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i1 true
}

declare i32 @Swap32BtoN(i32 noundef) local_unnamed_addr #4

declare double @SwapFloat64BtoN(double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #8

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 -4913339737264988135}
!9 = !{i64 -102036131210162103}
!10 = !{i64 3767684819971358141}
!11 = !{i64 -2268700627399734053}
!12 = !{i64 -8516848109341698397}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"double", !5, i64 0}
!15 = !{!"_ZTS22AudioFormatDescription", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!16 = !{!15, !6, i64 12}
!17 = !{!15, !6, i64 8}
!18 = !{!15, !14, i64 0}
!19 = !{!"_ZTS24port_CAFAudioDescription", !14, i64 0, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28}
!20 = !{!19, !14, i64 0}
!21 = !{!19, !6, i64 8}
!22 = !{!19, !6, i64 12}
!23 = !{!15, !6, i64 16}
!24 = !{!19, !6, i64 16}
!25 = !{!15, !6, i64 20}
!26 = !{!19, !6, i64 20}
!27 = !{!15, !6, i64 28}
!28 = !{!19, !6, i64 24}
!29 = !{!15, !6, i64 32}
!30 = !{!19, !6, i64 28}
!31 = !{!5, !5, i64 0}
!32 = !{!"long", !5, i64 0}
!33 = !{!"_ZTS25port_CAFPacketTableHeader", !32, i64 0, !32, i64 8, !6, i64 16, !6, i64 20, !5, i64 24}
!34 = !{!33, !32, i64 0}
!35 = !{!33, !32, i64 8}
!36 = !{!33, !6, i64 16}
!37 = !{!33, !6, i64 20}
!38 = distinct !{!38, !13}
!39 = !{i64 -2353691436215044903}
!40 = !{i64 5284050227065562093}
!41 = !{i64 -3086018190889364822}
!42 = !{i64 207835506995391418}
!43 = !{i64 -6998303276191984557}
!44 = !{i64 1607210394650923013}
!45 = !{i64 -8583185981551409954}
!46 = distinct !{!46, !13}
!47 = !{i64 -118955343746271335}
!48 = !{i64 5377862155357946610}
!49 = !{i64 -688953480385853253}
!50 = !{i64 292541365674222399}
!51 = !{i64 5360187711184638189}
!52 = distinct !{!52, !13}
!53 = !{i64 -128797705404919792}
!54 = distinct !{!54, !13}
!55 = !{i64 1373571865025023253}
!56 = distinct !{!56, !13}
!57 = !{i64 -5599280155968556452}
!58 = distinct !{!58, !13}
!59 = !{i64 5420260400089976542}
!60 = !{!15, !6, i64 24}
!61 = !{!15, !6, i64 36}
end_hunk_1
