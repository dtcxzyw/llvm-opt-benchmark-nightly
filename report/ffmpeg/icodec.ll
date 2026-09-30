Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/icodec?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ico\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Microsoft Windows ICO\00", align 1
@ff_ico_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 128, [4 x i8] zeroinitializer, ptr null, ptr null, ptr null, ptr null }, i32 0, i32 16, i32 1, [4 x i8] zeroinitializer, ptr @probe, ptr @read_header, ptr @read_packet, ptr @ico_read_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid image size %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"codec %d\00", align 1

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 52) i32 @probe(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47   ; 3 uses
  %i.c = icmp slt i32 %i.b, 22
  br i1 %i.c, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 8 uses
  %i.f = load i16, ptr %i.e, align 1, !tbaa !11
  %.not = icmp eq i16 %i.f, 0
  br i1 %.not, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.h = load i16, ptr %i.g, align 1, !tbaa !11
  %.not48 = icmp eq i16 %i.h, 1
  br i1 %.not48, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.j = load i16, ptr %i.i, align 1, !tbaa !11   ; 3 uses
  %i.k = zext i16 %i.j to i32
  %.not49 = icmp eq i16 %i.j, 0
  br i1 %.not49, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 10
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 14
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 18
  %i.o = add nsw i32 %i.b, -8
  %i.p = zext nneg i32 %i.b to i64
  %wide.trip.count = zext i16 %i.j to i64
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.s
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %bb.s ] ; 7 uses
  %.04170 = phi i32 [ 0, %.preheader ], [ %.1, %bb.s ] ; 3 uses
  %i.q = shl nuw nsw i64 %indvars.iv, 4           ; 5 uses
  %1 = add nuw nsw i64 %i.q, 22
  %.not50 = icmp samesign ugt i64 %1, %i.p
  br i1 %.not50, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.q
  %i.s = load i16, ptr %i.r, align 1, !tbaa !11
  %i.t = icmp ugt i16 %i.s, 1
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = trunc nuw nsw i64 %indvars.iv to i32
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.u, i32 25)
  br label %.thread

bb.h:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 13
  %i.y = load i8, ptr %i.x, align 1, !tbaa !11
  %.not52 = icmp eq i8 %i.y, 0
  br i1 %.not52, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %i.aa = tail call i32 @llvm.umin.i32(i32 %i.z, i32 25)
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.q
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !11
  %i.ad = icmp ult i32 %i.ac, 40
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  %i.af = tail call i32 @llvm.umin.i32(i32 %i.ae, i32 25)
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.ah = load i32, ptr %i.ag, align 1, !tbaa !11 ; 3 uses
  %i.ai = icmp ult i32 %i.ah, 22
  br i1 %i.ai, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  %i.ak = tail call i32 @llvm.umin.i32(i32 %i.aj, i32 25)
  br label %.thread

bb.n:                                             ; preds = %bb.l
  %i.al = icmp ugt i32 %i.ah, %i.o
  br i1 %i.al, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = zext nneg i32 %i.ah to i64
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.am ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !11
  %.not53 = icmp eq i8 %i.ao, 40
  br i1 %.not53, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = load i64, ptr %i.an, align 1, !tbaa !11
  %.not54 = icmp eq i64 %i.ap, 727905341920923785
  br i1 %.not54, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  %i.ar = tail call i32 @llvm.umin.i32(i32 %i.aq, i32 25)
  br label %.thread

bb.r:                                             ; preds = %bb.p, %bb.o
  %i.as = add i32 %.04170, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %.1 = phi i32 [ %i.as, %bb.r ], [ %.04170, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.e, !llvm.loop !45

.critedge:                                        ; preds = %bb.s, %bb.e
  %.041.lcssa = phi i32 [ %.1, %bb.s ], [ %.04170, %bb.e ] ; 2 uses
  %i.at = icmp ult i32 %.041.lcssa, %i.k
  br i1 %i.at, label %bb.t, label %.thread

bb.t:                                             ; preds = %.critedge
  %.not51 = icmp eq i32 %.041.lcssa, 0
  %i.au = select i1 %.not51, i32 25, i32 26
  br label %.thread

.thread:                                          ; preds = %bb.q, %bb.m, %bb.k, %bb.i, %bb.g, %.critedge, %bb.d, %bb.a, %bb.b, %bb.c, %bb.t
  %.2 = phi i32 [ 0, %bb.a ], [ 51, %.critedge ], [ %i.au, %bb.t ], [ 0, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ %i.ar, %bb.q ], [ %i.ak, %bb.m ], [ %i.af, %bb.k ], [ %i.aa, %bb.i ], [ %i.v, %bb.g ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1094995529, 1) i32 @read_header(ptr noundef %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !28   ; 13 uses
  %i.e = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef 4) #4 ; 0 uses
  %i.f = tail call i32 @avio_rl16(ptr noundef %i.d) #4 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 3 uses
  store i32 %i.f, ptr %i.g, align 4, !tbaa !30
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sext i32 %i.f to i64
  %i.i = tail call ptr @av_malloc_array(i64 noundef %i.h, i64 noundef 12) #4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr %i.i, ptr %i.j, align 8, !tbaa !31
  %.not71 = icmp eq ptr %i.i, null
  br i1 %.not71, label %.thread, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.k = load i32, ptr %i.g, align 4, !tbaa !30
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.preheader ] ; 6 uses
  %i.m = shl nuw nsw i64 %indvars.iv, 4
  %i.n = or disjoint i64 %i.m, 6
  %i.o = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.n, i32 noundef 0) #4
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.q = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #4 ; 2 uses
  %.not72 = icmp eq ptr %i.q, null
  br i1 %.not72, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !38
  store i32 0, ptr %i.s, align 8, !tbaa !50
  %i.t = tail call i32 @avio_r8(ptr noundef %i.d) #4
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 72
  store i32 %i.t, ptr %i.v, align 8, !tbaa !51
  %i.w = tail call i32 @avio_r8(ptr noundef %i.d) #4
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !38
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 76
  store i32 %i.w, ptr %i.y, align 4, !tbaa !52
  %i.z = tail call i32 @avio_r8(ptr noundef %i.d) #4 ; 2 uses
  %i.aa = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.ab = getelementptr inbounds nuw [12 x i8], ptr %i.aa, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = icmp eq i32 %i.z, 255
  %spec.store.select = select i1 %i.ad, i32 0, i32 %i.z
  store i32 %spec.store.select, ptr %i.ac, align 4
  %i.ae = tail call i64 @avio_skip(ptr noundef %i.d, i64 noundef 5) #4 ; 0 uses
  %i.af = tail call i32 @avio_rl32(ptr noundef %i.d) #4 ; 3 uses
  %i.ag = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.ah = getelementptr inbounds nuw [12 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store i32 %i.af, ptr %i.ai, align 4, !tbaa !42
  %i.aj = add i32 %i.af, -2147483634
  %or.cond = icmp ult i32 %i.aj, -2147483633
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.2, i32 noundef %i.af) #4
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.ak = tail call i32 @avio_rl32(ptr noundef %i.d) #4 ; 2 uses
  %i.al = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.am = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %indvars.iv
  store i32 %i.ak, ptr %i.am, align 4, !tbaa !43
  %i.an = sext i32 %i.ak to i64
  %i.ao = tail call i64 @avio_seek(ptr noundef %i.d, i64 noundef %i.an, i32 noundef 0) #4
  %i.ap = icmp slt i64 %i.ao, 0
  br i1 %i.ap, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = tail call i32 @avio_rl32(ptr noundef %i.d) #4 ; 2 uses
  switch i32 %i.aq, label %bb.n [
    i32 1196314761, label %bb.h
    i32 40, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.ar = load ptr, ptr %i.r, align 8, !tbaa !38  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 61, ptr %i.as, align 4, !tbaa !44
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store i32 0, ptr %i.at, align 8, !tbaa !51
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !31
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.au, i64 %indvars.iv
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !42
  %i.ay = icmp slt i32 %i.ax, 40
  br i1 %i.ay, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.r, align 8, !tbaa !38
end_hunk_0
