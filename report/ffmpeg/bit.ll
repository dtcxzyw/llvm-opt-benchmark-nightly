inline.NumInlined: 6
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FFOutputFormat = type { %struct.AVOutputFormat, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.AVOutputFormat = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [4 x i8] c"bit\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"G.729 BIT file format\00", align 1
@ff_bit_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 0, [4 x i8] zeroinitializer, ptr @.str, ptr null, ptr null, ptr null }, i32 0, i32 0, i32 0, [4 x i8] zeroinitializer, ptr @probe, ptr @read_header, ptr @read_packet, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"audio/bit\00", align 1
@ff_bit_muxer = local_unnamed_addr constant %struct.FFOutputFormat { %struct.AVOutputFormat { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str, i32 86069, i32 0, i32 0, i32 0, ptr null, ptr null }, i32 0, i32 12, ptr null, ptr @write_packet, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @init, ptr null, ptr null }, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"Internal error, put_bits buffer too small\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"s->buf_ptr < s->buf_end\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"./libavcodec/put_bits.h\00", align 1
@.str.7 = private unnamed_addr constant [60 x i8] c"only codec g729 with 1 channel is supported by this format\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 101) i32 @probe(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = icmp sgt i32 %i.b, 3
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.f = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.e ]  ; 2 uses
  %.028 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 2 uses
  %.02527 = phi i32 [ 0, %.lr.ph ], [ %i.q, %bb.e ]
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g
  %i.i = load i16, ptr %i.h, align 1, !tbaa !14
  %.not = icmp eq i16 %i.i, 27425
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.02527, 2
  %i.k = add i32 %i.f, 2
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds i8, ptr %i.e, i64 %i.l
  %i.n = load i16, ptr %i.m, align 1, !tbaa !14   ; 2 uses
  %i.o = zext nneg i16 %i.n to i32
  switch i16 %i.n, label %.loopexit [
    i16 0, label %bb.e
    i16 16, label %bb.d
    i16 64, label %bb.d
    i16 80, label %bb.d
    i16 118, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.p = add i32 %.028, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.p, %bb.d ], [ %.028, %bb.c ] ; 3 uses
  %i.q = add nsw i32 %i.j, %i.o                   ; 2 uses
  %i.r = shl nsw i32 %i.q, 1                      ; 2 uses
  %i.s = add nsw i32 %i.r, 3
  %i.t = icmp slt i32 %i.s, %i.b
  br i1 %i.t, label %bb.b, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.e
  %i.u = icmp sgt i32 %.1, 10
  br i1 %i.u, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.v = icmp sgt i32 %.1, 2
  %spec.select = select i1 %i.v, i32 49, i32 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.f, %bb.a, %._crit_edge
  %.024 = phi i32 [ 100, %._crit_edge ], [ 0, %bb.a ], [ %spec.select, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @read_header(ptr noundef %0) #1 {
bb.a:
  %i.a = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #7 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 5 uses
  store i32 1, ptr %i.c, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 86069, ptr %i.d, align 4, !tbaa !30
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i32 8000, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store i32 16, ptr %i.f, align 4, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store i32 1, ptr %i.g, align 4, !tbaa !33
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.a, i32 noundef 64, i32 noundef 1, i32 noundef 100) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -12, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @read_packet(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca [82 x i16], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = tail call i64 @avio_seek(ptr noundef %i.c, i64 noundef 0, i32 noundef 1) #7
  %i.e = tail call i32 @avio_feof(ptr noundef %i.c) #7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @avio_rl16(ptr noundef %i.c) #7 ; 0 uses
  %i.g = tail call i32 @avio_rl16(ptr noundef %i.c) #7 ; 4 uses
  %i.h = lshr i32 %i.g, 3                         ; 3 uses
  %i.i = icmp ugt i32 %i.g, 87
  br i1 %i.i, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %i.g, 1
  %i.k = and i32 %i.j, 240
  %i.l = call i32 @ffio_read_size(ptr noundef %i.c, ptr noundef nonnull %i.a, i32 noundef %i.k) #7 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.m, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @av_new_packet(ptr noundef %1, i32 noundef %i.h) #7 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !46   ; 2 uses
  %i.r = zext nneg i32 %i.h to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %flush_put_bits.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.t = ptrtoint ptr %i.s to i64
  %2 = and i32 %i.g, 120
  %3 = call i32 @llvm.umax.i32(i32 %2, i32 1)
  %umax = zext nneg i32 %3 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %put_bits.exit.7
  %indvar50 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next51, %put_bits.exit.7 ]
  %.02646 = phi ptr [ %i.a, %.preheader.lr.ph ], [ %i.u, %put_bits.exit.7 ] ; 2 uses
  %.sroa.0.045 = phi i32 [ 0, %.preheader.lr.ph ], [ %.026.i.i.7, %put_bits.exit.7 ] ; 2 uses
  %.sroa.11.044 = phi i32 [ 32, %.preheader.lr.ph ], [ %i.ak, %put_bits.exit.7 ] ; 4 uses
  %.sroa.19.043 = phi ptr [ %i.q, %.preheader.lr.ph ], [ %.sroa.19.2.7, %put_bits.exit.7 ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02646, i64 2
  %i.v = load i16, ptr %.02646, align 1, !tbaa !14
  %i.w = icmp eq i16 %i.v, 129
  %i.x = zext i1 %i.w to i32                      ; 4 uses
  %i.y = icmp sgt i32 %.sroa.11.044, 1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.z = shl i32 %.sroa.0.045, 1
  %i.aa = or disjoint i32 %i.z, %i.x
  br label %put_bits.exit.7

bb.g:                                             ; preds = %.preheader
  %i.ab = ptrtoint ptr %.sroa.19.043 to i64
  %i.ac = sub i64 %i.t, %i.ab
  %i.ad = icmp ugt i64 %i.ac, 3
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = shl i32 %.sroa.0.045, %.sroa.11.044
  %i.af = sub nsw i32 1, %.sroa.11.044
  %i.ag = lshr i32 %i.x, %i.af
  %i.ah = or i32 %i.ag, %i.ae
  %i.ai = call i32 @llvm.bswap.i32(i32 %i.ah)
  store i32 %i.ai, ptr %.sroa.19.043, align 1, !tbaa !14
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.19.043, i64 4
  br label %put_bits.exit.7

bb.i:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %put_bits.exit.7

put_bits.exit.7:                                  ; preds = %bb.f, %bb.h, %bb.i
  %.sroa.19.2.7 = phi ptr [ %.sroa.19.043, %bb.f ], [ %i.aj, %bb.h ], [ %.sroa.19.043, %bb.i ] ; 2 uses
  %.sink.i.i.7 = phi i32 [ -1, %bb.f ], [ 31, %bb.h ], [ 31, %bb.i ]
  %.026.i.i.7 = phi i32 [ %i.aa, %bb.f ], [ %i.x, %bb.h ], [ %i.x, %bb.i ] ; 2 uses
  %i.ak = add nsw i32 %.sink.i.i.7, %.sroa.11.044 ; 4 uses
  %indvar.next51 = add nuw nsw i64 %indvar50, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvar.next51, %umax
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !47

._crit_edge:                                      ; preds = %put_bits.exit.7
  %i.al = icmp slt i32 %i.ak, 32
  br i1 %i.al, label %.lr.ph.i, label %flush_put_bits.exit

.lr.ph.i:                                         ; preds = %._crit_edge
  %i.am = shl i32 %.026.i.i.7, %i.ak
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i
  %.sroa.19.3 = phi ptr [ %.sroa.19.2.7, %.lr.ph.i ], [ %i.aq, %bb.l ] ; 3 uses
  %.sroa.11.2 = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.as, %bb.l ] ; 2 uses
  %.sroa.0.2 = phi i32 [ %i.am, %.lr.ph.i ], [ %i.ar, %bb.l ] ; 2 uses
  %i.an = icmp ult ptr %.sroa.19.3, %i.s
  br i1 %i.an, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 160) #7
  call void @abort() #8
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ao = lshr i32 %.sroa.0.2, 24
  %i.ap = trunc nuw i32 %i.ao to i8
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.19.3, i64 1
  store i8 %i.ap, ptr %.sroa.19.3, align 1, !tbaa !14
  %i.ar = shl i32 %.sroa.0.2, 8
  %i.as = add nsw i32 %.sroa.11.2, 8
  %i.at = icmp slt i32 %.sroa.11.2, 24
  br i1 %i.at, label %bb.j, label %flush_put_bits.exit, !llvm.loop !48

flush_put_bits.exit:                              ; preds = %bb.l, %bb.e, %._crit_edge
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 1, ptr %i.au, align 8, !tbaa !49
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %i.d, ptr %i.av, align 8, !tbaa !50
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %flush_put_bits.exit
  %.0 = phi i32 [ 0, %flush_put_bits.exit ], [ -541478725, %bb.a ], [ -1094995529, %bb.b ], [ %i.l, %bb.c ], [ %i.n, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -22, 1) i32 @write_packet(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !51
  %.not = icmp eq i32 %i.d, 10
  br i1 %.not, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  tail call void @avio_wl16(ptr noundef %i.b, i32 noundef 27425) #7
  %i.e = load i32, ptr %i.c, align 8, !tbaa !51
  %i.f = shl nsw i32 %i.e, 3
  tail call void @avio_wl16(ptr noundef %i.b, i32 noundef %i.f) #7
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !46   ; 2 uses
  %i.i = load i32, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.j = shl nsw i32 %i.i, 3                      ; 2 uses
  %or.cond.i = icmp ult i32 %i.j, 2147483135
  %i.k = icmp ne ptr %i.h, null
  %or.cond3.i = and i1 %i.k, %or.cond.i
  %i.l = add nuw nsw i32 %i.j, 8
  %i.m = select i1 %or.cond3.i, i32 %i.l, i32 8
  %i.n = icmp sgt i32 %i.i, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.014 = phi i32 [ %i.z, %.lr.ph ], [ 0, %bb.b ]
  %.sroa.4.013 = phi i32 [ %spec.select.i, %.lr.ph ], [ 0, %bb.b ] ; 4 uses
  %i.o = lshr i32 %.sroa.4.013, 3
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.p
  %i.r = load i8, ptr %i.q, align 1, !tbaa !14
  %i.s = icmp slt i32 %.sroa.4.013, %i.m
  %i.t = zext i1 %i.s to i32
  %spec.select.i = add i32 %.sroa.4.013, %i.t
  %i.u = zext i8 %i.r to i32
  %i.v = and i32 %.sroa.4.013, 7
  %i.w = lshr exact i32 128, %i.v
  %i.x = and i32 %i.w, %i.u
  %.not12 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not12, i32 127, i32 129
  tail call void @avio_wl16(ptr noundef %i.b, i32 noundef %i.y) #7
  %i.z = add nuw nsw i32 %.014, 1                 ; 2 uses
  %i.aa = load i32, ptr %i.c, align 8, !tbaa !51
  %i.ab = shl nsw i32 %i.aa, 3
  %i.ac = icmp slt i32 %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph, label %.loopexit, !llvm.loop !52

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.011 = phi i32 [ -22, %bb.a ], [ 0, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.011
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -22, 1) i32 @init(ptr noundef %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !53
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !54
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 132
  %i.g = load i32, ptr %i.f, align 4, !tbaa !33
  %.not = icmp eq i32 %i.g, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.7) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i32 16, ptr %i.h, align 8, !tbaa !56
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 156
  store i32 2, ptr %i.i, align 4, !tbaa !32
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ -22, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare i32 @avio_feof(ptr noundef) local_unnamed_addr #4

declare i32 @avio_rl16(ptr noundef) local_unnamed_addr #4

declare i32 @ffio_read_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @av_new_packet(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @avio_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #5

declare void @avio_wl16(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

attributes #0 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!9 = !{!10, !6, i64 16}
!10 = !{!"AVProbeData", !11, i64 0, !11, i64 8, !6, i64 16, !11, i64 24}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!10, !11, i64 8}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !20, i64 16}
!18 = !{!"AVStream", !19, i64 0, !6, i64 8, !6, i64 12, !20, i64 16, !12, i64 24, !21, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !6, i64 64, !6, i64 68, !21, i64 72, !23, i64 80, !21, i64 88, !24, i64 96, !6, i64 200, !21, i64 204, !6, i64 212}
!19 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!20 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!21 = !{!"AVRational", !6, i64 0, !6, i64 4}
!22 = !{!"long", !7, i64 0}
!23 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!24 = !{!"AVPacket", !25, i64 0, !22, i64 8, !22, i64 16, !11, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !26, i64 48, !6, i64 56, !22, i64 64, !22, i64 72, !12, i64 80, !25, i64 88, !21, i64 96}
!25 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!26 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!27 = !{!28, !6, i64 0}
!28 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !11, i64 16, !6, i64 24, !26, i64 32, !6, i64 40, !6, i64 44, !22, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !21, i64 80, !21, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !29, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!29 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!30 = !{!28, !6, i64 4}
!31 = !{!28, !6, i64 152}
!32 = !{!28, !6, i64 156}
!33 = !{!28, !6, i64 132}
!34 = !{!35, !38, i64 32}
!35 = !{!"AVFormatContext", !19, i64 0, !36, i64 8, !37, i64 16, !12, i64 24, !38, i64 32, !6, i64 40, !6, i64 44, !39, i64 48, !6, i64 56, !41, i64 64, !6, i64 72, !42, i64 80, !11, i64 88, !22, i64 96, !22, i64 104, !22, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !22, i64 136, !22, i64 144, !11, i64 152, !6, i64 160, !6, i64 164, !43, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !23, i64 192, !22, i64 200, !6, i64 208, !6, i64 212, !44, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !22, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !22, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !6, i64 368, !45, i64 376, !45, i64 384, !45, i64 392, !45, i64 400, !6, i64 408, !12, i64 416, !12, i64 424, !22, i64 432, !11, i64 440, !12, i64 448, !12, i64 456, !22, i64 464, !11, i64 472}
!36 = !{!"p1 _ZTS13AVInputFormat", !12, i64 0}
!37 = !{!"p1 _ZTS14AVOutputFormat", !12, i64 0}
!38 = !{!"p1 _ZTS11AVIOContext", !12, i64 0}
!39 = !{!"p2 _ZTS8AVStream", !40, i64 0}
!40 = !{!"any p2 pointer", !12, i64 0}
!41 = !{!"p2 _ZTS13AVStreamGroup", !40, i64 0}
!42 = !{!"p2 _ZTS9AVChapter", !40, i64 0}
!43 = !{!"p2 _ZTS9AVProgram", !40, i64 0}
!44 = !{!"AVIOInterruptCB", !12, i64 0, !12, i64 8}
!45 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!46 = !{!24, !11, i64 24}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = !{!24, !22, i64 64}
!50 = !{!24, !22, i64 72}
!51 = !{!24, !6, i64 32}
!52 = distinct !{!52, !16}
!53 = !{!35, !39, i64 48}
!54 = !{!55, !55, i64 0}
!55 = !{!"p1 _ZTS8AVStream", !12, i64 0}
!56 = !{!28, !6, i64 56}
end_hunk_0
