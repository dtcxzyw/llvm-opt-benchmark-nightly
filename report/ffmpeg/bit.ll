Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/bit?download=true
inline.NumInlined: 6
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
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
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 3
  br i1 %i.c, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.f = phi i32 [ 0, %.lr.ph ], [ %i.p, %bb.e ]
  %.028 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.e ]  ; 2 uses
  %.02427 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.e ]
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr i8, ptr %i.e, i64 %i.g     ; 2 uses
  %i.i = load i16, ptr %i.h, align 1, !tbaa !11
  %.not = icmp eq i16 %i.i, 27425
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.02427, 2
  %i.k = getelementptr i8, ptr %i.h, i64 2
  %i.l = load i16, ptr %i.k, align 1, !tbaa !11   ; 2 uses
  %i.m = zext nneg i16 %i.l to i32
  switch i16 %i.l, label %.loopexit [
    i16 0, label %bb.e
    i16 16, label %bb.d
    i16 64, label %bb.d
    i16 80, label %bb.d
    i16 118, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c
  %i.n = add i32 %.028, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.n, %bb.d ], [ %.028, %bb.c ] ; 3 uses
  %i.o = add nsw i32 %i.j, %i.m                   ; 2 uses
  %i.p = shl nsw i32 %i.o, 1                      ; 2 uses
  %i.q = add nsw i32 %i.p, 3
  %i.r = icmp slt i32 %i.q, %i.b
  br i1 %i.r, label %bb.b, label %._crit_edge, !llvm.loop !40

._crit_edge:                                      ; preds = %bb.e
  %i.s = icmp sgt i32 %.1, 10
  br i1 %i.s, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.t = icmp sgt i32 %.1, 2
  %spec.select = select i1 %i.t, i32 49, i32 0
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.f, %bb.a, %._crit_edge
  %.025 = phi i32 [ 100, %._crit_edge ], [ 0, %bb.a ], [ %spec.select, %bb.f ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define internal range(i32 -12, 1) i32 @read_header(ptr noundef %0) #1 {
bb.a:
  %i.a = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #7 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !22   ; 5 uses
  store i32 1, ptr %i.c, align 8, !tbaa !44
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 86069, ptr %i.d, align 4, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 152
  store i32 8000, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 156
  store i32 16, ptr %i.f, align 4, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 132
  store i32 1, ptr %i.g, align 4, !tbaa !26
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.d = tail call i64 @avio_seek(ptr noundef %i.c, i64 noundef 0, i32 noundef 1) #7
  %i.e = tail call i32 @avio_feof(ptr noundef %i.c) #7
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.b, label %bb.ao

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @avio_rl16(ptr noundef %i.c) #7 ; 0 uses
  %i.g = tail call i32 @avio_rl16(ptr noundef %i.c) #7 ; 3 uses
  %i.h = lshr i32 %i.g, 3                         ; 4 uses
  %i.i = icmp ugt i32 %i.g, 87
  br i1 %i.i, label %bb.ao, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = shl nuw nsw i32 %i.g, 1
  %i.k = and i32 %i.j, 240
  %i.l = call i32 @ffio_read_size(ptr noundef %i.c, ptr noundef nonnull %i.a, i32 noundef %i.k) #7 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.ao, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = call i32 @av_new_packet(ptr noundef %1, i32 noundef %i.h) #7 ; 2 uses
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.ao, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !39   ; 2 uses
  %i.r = zext nneg i32 %i.h to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.r ; 2 uses
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %flush_put_bits.exit, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.t = ptrtoint ptr %i.s to i64                 ; 8 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %put_bits.exit.7
  %.047 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.fa, %put_bits.exit.7 ]
  %.02546 = phi ptr [ %i.a, %.preheader.lr.ph ], [ %i.ej, %put_bits.exit.7 ] ; 9 uses
  %.sroa.0.045 = phi i32 [ 0, %.preheader.lr.ph ], [ %.026.i.i.7, %put_bits.exit.7 ] ; 2 uses
  %.sroa.11.044 = phi i32 [ 32, %.preheader.lr.ph ], [ %i.ez, %put_bits.exit.7 ] ; 4 uses
  %.sroa.19.043 = phi ptr [ %i.q, %.preheader.lr.ph ], [ %.sroa.19.2.7, %put_bits.exit.7 ] ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.02546, i64 2
  %i.v = load i16, ptr %.02546, align 1, !tbaa !11
  %i.w = icmp eq i16 %i.v, 129
  %i.x = zext i1 %i.w to i32                      ; 4 uses
  %i.y = icmp sgt i32 %.sroa.11.044, 1
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.z = shl i32 %.sroa.0.045, 1
  %i.aa = or disjoint i32 %i.z, %i.x
  br label %put_bits.exit

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
  store i32 %i.ai, ptr %.sroa.19.043, align 1, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.19.043, i64 4
  br label %put_bits.exit

bb.i:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %put_bits.exit

put_bits.exit:                                    ; preds = %bb.f, %bb.h, %bb.i
  %.sroa.19.2 = phi ptr [ %.sroa.19.043, %bb.f ], [ %i.aj, %bb.h ], [ %.sroa.19.043, %bb.i ] ; 5 uses
  %.sink.i.i = phi i32 [ -1, %bb.f ], [ 31, %bb.h ], [ 31, %bb.i ]
  %.026.i.i = phi i32 [ %i.aa, %bb.f ], [ %i.x, %bb.h ], [ %i.x, %bb.i ] ; 2 uses
  %i.ak = add nsw i32 %.sink.i.i, %.sroa.11.044   ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.02546, i64 4
  %i.am = load i16, ptr %i.u, align 1, !tbaa !11
  %i.an = icmp eq i16 %i.am, 129
  %i.ao = zext i1 %i.an to i32                    ; 4 uses
  %i.ap = icmp sgt i32 %i.ak, 1
  br i1 %i.ap, label %bb.m, label %bb.j

bb.j:                                             ; preds = %put_bits.exit
  %i.aq = ptrtoint ptr %.sroa.19.2 to i64
  %i.ar = sub i64 %i.t, %i.aq
  %i.as = icmp ugt i64 %i.ar, 3
  br i1 %i.as, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.3) #7
  br label %put_bits.exit.1

bb.l:                                             ; preds = %bb.j
  %i.at = shl i32 %.026.i.i, %i.ak
  %i.au = sub nsw i32 1, %i.ak
  %i.av = lshr i32 %i.ao, %i.au
  %i.aw = or i32 %i.av, %i.at
  %i.ax = call i32 @llvm.bswap.i32(i32 %i.aw)
  store i32 %i.ax, ptr %.sroa.19.2, align 1, !tbaa !11
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.19.2, i64 4
  br label %put_bits.exit.1

bb.m:                                             ; preds = %put_bits.exit
  %i.az = shl i32 %.026.i.i, 1
  %i.ba = or disjoint i32 %i.az, %i.ao
  br label %put_bits.exit.1

put_bits.exit.1:                                  ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.19.2.1 = phi ptr [ %.sroa.19.2, %bb.m ], [ %i.ay, %bb.l ], [ %.sroa.19.2, %bb.k ] ; 5 uses
  %.sink.i.i.1 = phi i32 [ -1, %bb.m ], [ 31, %bb.l ], [ 31, %bb.k ]
  %.026.i.i.1 = phi i32 [ %i.ba, %bb.m ], [ %i.ao, %bb.l ], [ %i.ao, %bb.k ] ; 2 uses
  %i.bb = add nsw i32 %.sink.i.i.1, %i.ak         ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.02546, i64 6
  %i.bd = load i16, ptr %i.al, align 1, !tbaa !11
  %i.be = icmp eq i16 %i.bd, 129
  %i.bf = zext i1 %i.be to i32                    ; 4 uses
  %i.bg = icmp sgt i32 %i.bb, 1
  br i1 %i.bg, label %bb.q, label %bb.n

bb.n:                                             ; preds = %put_bits.exit.1
  %i.bh = ptrtoint ptr %.sroa.19.2.1 to i64
  %i.bi = sub i64 %i.t, %i.bh
  %i.bj = icmp ugt i64 %i.bi, 3
  br i1 %i.bj, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
end_hunk_0
