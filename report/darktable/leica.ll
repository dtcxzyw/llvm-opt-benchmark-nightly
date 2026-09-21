Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/leica?download=true
inline.NumInlined: 14
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str.1 = private unnamed_addr constant [5 x i8] c"not \00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"000000000000\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"M-Adapter L\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6LibRaw20setLeicaBodyFeaturesEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(768512) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  switch i32 %1, label %bb.w [
    i32 -3, label %bb.b
    i32 -2, label %bb.c
    i32 0, label %bb.e
    i32 4096, label %bb.f
    i32 1792, label %bb.f
    i32 1280, label %bb.f
    i32 256, label %bb.f
    i32 1024, label %bb.g
    i32 768, label %bb.h
    i32 767, label %bb.h
    i32 512, label %bb.h
    i32 6656, label %bb.m
    i32 2560, label %bb.m
    i32 2304, label %bb.m
    i32 1536, label %bb.m
    i32 2048, label %bb.v
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 4, ptr %i.a, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 17, ptr %i.b, align 2, !tbaa !73
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 15, ptr %i.c, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.e = load i8, ptr %i.d, align 4, !tbaa !74
  %i.f = icmp eq i8 %i.e, 82
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.h = load i8, ptr %i.g, align 2
  %i.i = icmp eq i8 %i.h, 82
  %or.cond39 = select i1 %i.f, i1 true, i1 %i.i
  br i1 %or.cond39, label %bb.d, label %bb.w

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 18, ptr %i.j, align 2, !tbaa !73
  br label %bb.w

bb.e:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 43, ptr %i.k, align 2, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 43, ptr %i.l, align 2, !tbaa !73
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1420
  store i16 2, ptr %i.m, align 4, !tbaa !80
  br label %bb.w

bb.f:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 1, ptr %i.n, align 8, !tbaa !76
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 1, ptr %i.o, align 8, !tbaa !79
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 43, ptr %i.p, align 2, !tbaa !75
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 43, ptr %i.q, align 2, !tbaa !73
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1420
  store i16 1, ptr %i.r, align 4, !tbaa !80
  br label %bb.w

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 1, ptr %i.s, align 8, !tbaa !76
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 1, ptr %i.t, align 8, !tbaa !79
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 43, ptr %i.u, align 2, !tbaa !75
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 43, ptr %i.v, align 2, !tbaa !73
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1420
  store i16 2, ptr %i.w, align 4, !tbaa !80
  br label %bb.w

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.y = load i8, ptr %i.x, align 4, !tbaa !74    ; 2 uses
  %i.z = icmp eq i8 %i.y, 77
  br i1 %i.z, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.ab = load i8, ptr %i.aa, align 2, !tbaa !74  ; 2 uses
  %i.ac = icmp eq i8 %i.ab, 77
  br i1 %i.ac, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 2, ptr %i.ad, align 8, !tbaa !79
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 17, ptr %i.ae, align 2, !tbaa !73
  br label %bb.w

bb.k:                                             ; preds = %bb.i
  %i.af = icmp eq i8 %i.y, 83
  %i.ag = icmp eq i8 %i.ab, 83
  %or.cond = or i1 %i.af, %i.ag
  br i1 %or.cond, label %bb.l, label %bb.w

bb.l:                                             ; preds = %bb.k
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 10, ptr %i.ah, align 8, !tbaa !79
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 19, ptr %i.ai, align 2, !tbaa !73
  br label %bb.w

bb.m:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !74  ; 4 uses
  %i.al = icmp eq i8 %i.ak, 83
  br i1 %i.al, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.an = load i8, ptr %i.am, align 2, !tbaa !74  ; 4 uses
  %i.ao = icmp eq i8 %i.an, 83
  br i1 %i.ao, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 2, ptr %i.ap, align 8, !tbaa !79
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 22, ptr %i.aq, align 2, !tbaa !73
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %2 = icmp eq i8 %i.ak, 84
  %3 = icmp eq i8 %i.an, 84
  %or.cond40 = or i1 %2, %3
  %4 = icmp eq i8 %i.ak, 67
  %or.cond41 = or i1 %4, %or.cond40
  %i.ar = icmp eq i8 %i.an, 67
  %or.cond42 = or i1 %i.ar, %or.cond41
  br i1 %or.cond42, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 1, ptr %i.as, align 8, !tbaa !79
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 22, ptr %i.at, align 2, !tbaa !73
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.au = icmp eq i8 %i.ak, 81
  %i.av = icmp eq i8 %i.an, 81
  %or.cond43 = or i1 %i.au, %i.av
  br i1 %or.cond43, label %bb.s, label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 269
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !74
  %.fr = freeze i8 %i.ax                          ; 2 uses
  %i.ay = icmp eq i8 %.fr, 50
  br i1 %i.ay, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 275
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !74
  %i.bb = icmp eq i8 %.fr, 51
  %i.bc = and i8 %i.ba, -2
  %i.bd = icmp eq i8 %i.bc, 50
  %or.cond47 = select i1 %i.bb, i1 true, i1 %i.bd
  br i1 %or.cond47, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 2, ptr %i.be, align 8, !tbaa !76
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 2, ptr %i.bf, align 8, !tbaa !79
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 43, ptr %i.bg, align 2, !tbaa !75
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 43, ptr %i.bh, align 2, !tbaa !73
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1420
  store i16 1, ptr %i.bi, align 4, !tbaa !80
  br label %bb.w

bb.v:                                             ; preds = %bb.a
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 2, ptr %i.bj, align 8, !tbaa !76
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1352
  store i16 2, ptr %i.bk, align 8, !tbaa !79
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 43, ptr %i.bl, align 2, !tbaa !75
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1354
  store i16 43, ptr %i.bm, align 2, !tbaa !73
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1420
  store i16 1, ptr %i.bn, align 4, !tbaa !80
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.a, %bb.r, %bb.k, %bb.c, %bb.d, %bb.f, %bb.l, %bb.j, %bb.v, %bb.o, %bb.u, %bb.q, %bb.g, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw16parseLeicaLensIDEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0) ; 3 uses
  %i.b = zext i32 %i.a to i64                     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 2 uses
  store i64 %i.b, ptr %i.c, align 8, !tbaa !77
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = shl nuw nsw i64 %i.b, 6
  %i.e = and i64 %i.d, 274877906688
  %i.f = and i64 %i.b, 3
  %i.g = or disjoint i64 %i.e, %i.f
  store i64 %i.g, ptr %i.c, align 8, !tbaa !77
  %i.h = add i32 %i.a, -4
  %or.cond = icmp ult i32 %i.h, 232
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1354
  %i.j = load i16, ptr %i.i, align 2, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1338
  store i16 %i.j, ptr %i.k, align 2, !tbaa !75
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i16 2, ptr %i.l, align 8, !tbaa !76
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

declare noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 2) i32 @_ZN6LibRaw18parseLeicaLensNameEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 4 uses
  br i1 %.not, label %.tail8.thread.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @llvm.umin.i32(i32 %1, i32 128)
  %i.c = zext nneg i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef %i.e) ; 0 uses
  %i.g = load i8, ptr %i.a, align 8, !tbaa !74    ; 2 uses
  %i.h = icmp eq i8 %i.g, 32
  br i1 %i.h, label %.tail8.thread.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call i32 @strncasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, i64 noundef 4) #8
  %.not5 = icmp eq i32 %i.i, 0
  br i1 %.not5, label %.tail8.thread.sink.split, label %sub_0

sub_0:                                            ; preds = %bb.c
  switch i8 %i.g, label %.tail8.thread [
    i8 45, label %sub_1
    i8 42, label %sub_110
  ]

sub_1:                                            ; preds = %sub_0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1209
  %i.k = load i8, ptr %i.j, align 1
  %.not14 = icmp eq i8 %i.k, 45
  br i1 %.not14, label %.tail, label %.tail8.thread

.tail:                                            ; preds = %sub_1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1210
  %i.m = load i8, ptr %i.l, align 2
  %i.n = icmp eq i8 %i.m, 45
  br i1 %i.n, label %.tail8.thread.sink.split, label %.tail8.thread

sub_110:                                          ; preds = %sub_0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1209
  %i.p = load i8, ptr %i.o, align 1
  %.not16 = icmp eq i8 %i.p, 42
  br i1 %.not16, label %.tail8, label %.tail8.thread

.tail8:                                           ; preds = %sub_110
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1210
  %i.r = load i8, ptr %i.q, align 2
  %i.s = icmp eq i8 %i.r, 42
  br i1 %i.s, label %.tail8.thread.sink.split, label %.tail8.thread

.tail8.thread.sink.split:                         ; preds = %bb.b, %bb.c, %.tail, %.tail8, %bb.a
  store i32 4271950, ptr %i.a, align 8
  br label %.tail8.thread

.tail8.thread:                                    ; preds = %.tail8.thread.sink.split, %sub_0, %.tail, %sub_1, %sub_110, %.tail8
  %.0 = phi i32 [ 1, %sub_1 ], [ 1, %.tail ], [ 1, %.tail8 ], [ 1, %sub_0 ], [ 1, %sub_110 ], [ 0, %.tail8.thread.sink.split ]
  ret i32 %.0
}

declare noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 3) i32 @_ZN6LibRaw28parseLeicaInternalBodySerialEj(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5174 ; 5 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 4271950, ptr %i.a, align 2
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = tail call i64 @llvm.umin.i64(i64 %i.b, i64 64)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381592
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  %i.f = tail call noundef i32 @_ZN6LibRaw6streadEPcmP26LibRaw_abstract_datastream(ptr noundef nonnull %i.a, i64 noundef %i.c, ptr noundef %i.e) ; 0 uses
  %i.g = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(13) @.str.4, i64 noundef 12) #8
  %.not12 = icmp eq i32 %i.g, 0
  br i1 %.not12, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 48, ptr %i.a, align 2, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 5175
  store i8 0, ptr %i.h, align 1, !tbaa !74
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef i64 @_ZN6LibRaw7strnlenEPKcm(ptr noundef nonnull %i.a, i64 noundef %i.b)
  %i.j = icmp eq i64 %i.i, 13
  br i1 %i.j, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 5177
  %i.l = load i8, ptr %i.k, align 1, !tbaa !74
  %i.m = sext i8 %i.l to i32
end_hunk_0
