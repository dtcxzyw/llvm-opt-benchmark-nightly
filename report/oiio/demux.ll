inline.NumInlined: 88
inline.NumDeleted: 31
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.WebPBitstreamFeatures = type { i32, i32, i32, i32, i32, [5 x i32] }

@kMasterChunks = internal constant [4 x { [4 x i8], [4 x i8], ptr, ptr }] [{ [4 x i8], [4 x i8], ptr, ptr } { [4 x i8] c"VP8 ", [4 x i8] zeroinitializer, ptr @ParseSingleImage, ptr @IsValidSimpleFormat }, { [4 x i8], [4 x i8], ptr, ptr } { [4 x i8] c"VP8L", [4 x i8] zeroinitializer, ptr @ParseSingleImage, ptr @IsValidSimpleFormat }, { [4 x i8], [4 x i8], ptr, ptr } { [4 x i8] c"VP8X", [4 x i8] zeroinitializer, ptr @ParseVP8X, ptr @IsValidExtendedFormat }, { [4 x i8], [4 x i8], ptr, ptr } { [4 x i8] c"0000", [4 x i8] zeroinitializer, ptr null, ptr null }], align 16

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @WebPGetDemuxVersion() local_unnamed_addr #0 {
bb.a:
  ret i32 67072
}

; Function Attrs: nounwind uwtable
define ptr @WebPDemuxInternal(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2, i32 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.WebPBitstreamFeatures, align 4 ; 7 uses
  %.not = icmp eq ptr %2, null                    ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 -1, ptr %2, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.mask = and i32 %3, -256
  %.not45 = icmp ne i32 %.mask, 256
  %i.a = icmp eq ptr %0, null
  %or.cond53 = or i1 %i.a, %.not45
  br i1 %or.cond53, label %bb.ad, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = load ptr, ptr %0, align 8, !tbaa !7      ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.ad, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !12   ; 9 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.ad, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = icmp ult i64 %i.e, 20
  br i1 %i.g, label %ReadHeader.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = load i32, ptr %i.b, align 1
  %i.i = icmp ne i32 %i.h, 1179011410
  %i.j = zext i1 %i.i to i32
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load i32, ptr %i.k, align 1
  %i.m = icmp ne i32 %i.l, 1346520407
  %i.n = zext i1 %i.m to i32
  %.not17.i = icmp eq i32 %i.n, 0
  br i1 %.not17.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %.val3.i.i = load i32, ptr %i.o, align 1        ; 2 uses
  %i.p = add i32 %.val3.i.i, 9
  %or.cond.i = icmp ult i32 %i.p, 17
  br i1 %or.cond.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = add nuw i32 %.val3.i.i, 8
  %i.r = zext i32 %i.q to i64                     ; 4 uses
  %i.s = icmp ugt i64 %i.e, %i.r
  br i1 %i.s, label %.thread, label %bb.s

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.t = call i32 @WebPGetFeaturesInternal(ptr noundef nonnull %i.b, i64 noundef %i.e, ptr noundef nonnull %4, i32 noundef 528) #12 ; 2 uses
  %.not.i55 = icmp eq i32 %i.t, 0
  br i1 %.not.i55, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.u = icmp ne i32 %i.t, 7
  %i.v = sext i1 %i.u to i32
  br label %CreateRawImageDemuxer.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.w = call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 104) #12 ; 18 uses
  %i.x = call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 80) #12 ; 11 uses
  %i.y = icmp eq ptr %i.w, null
  %i.z = icmp eq ptr %i.x, null
  %or.cond.i56 = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i56, label %AddFrame.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  store i32 0, ptr %i.aa, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 52 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store <4 x i32> <i32 -1, i32 -1, i32 1, i32 -1>, ptr %i.ab, align 4, !tbaa !3
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 72 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 80 ; 2 uses
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 88
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !22
  store i64 0, ptr %i.w, align 8, !tbaa !23
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %i.e, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !23
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i64 0, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !23
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 %i.e, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !23
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store ptr %i.b, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  store i64 0, ptr %i.ah, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store i64 %i.e, ptr %i.ai, align 8, !tbaa !27
  %i.aj = load i32, ptr %4, align 4, !tbaa !28    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !32 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 %i.am, ptr %i.an, align 4, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !35
  %i.as = or i32 %i.ar, %i.ap                     ; 2 uses
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  store i32 1, ptr %i.at, align 8, !tbaa !36
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 36
  store i32 1, ptr %i.au, align 4, !tbaa !37
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !38 ; 2 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 36
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !37
  %.not9.i.i = icmp eq i32 %i.ax, 0
  br i1 %.not9.i.i, label %AddFrame.exit.thread.i, label %bb.p

AddFrame.exit.thread.i:                           ; preds = %bb.o, %bb.m
  call void @WebPSafeFree(ptr noundef %i.w) #12
  call void @WebPSafeFree(ptr noundef %i.x) #12
  br label %CreateRawImageDemuxer.exit.thread

CreateRawImageDemuxer.exit.thread:                ; preds = %bb.l, %AddFrame.exit.thread.i
  %.1.i.ph = phi i32 [ -1, %AddFrame.exit.thread.i ], [ %i.v, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %ReadHeader.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  store ptr %i.x, ptr %i.ad, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 72 ; 2 uses
  store ptr null, ptr %i.ay, align 8, !tbaa !39
  store ptr %i.ay, ptr %i.ae, align 8, !tbaa !21
  store i32 2, ptr %i.aa, align 8, !tbaa !13
  store i32 %i.aj, ptr %i.ab, align 4, !tbaa !40
  store i32 %i.am, ptr %i.ac, align 8, !tbaa !41
  %.not30.i = icmp eq i32 %i.as, 0
  %i.az = select i1 %.not30.i, i32 0, i32 16
  %i.ba = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !42
  %i.bc = or i32 %i.bb, %i.az
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !42
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 68
  store i32 1, ptr %i.bd, align 4, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br i1 %.not, label %bb.ad, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 2, ptr %2, align 4, !tbaa !3
  br label %bb.ad

ReadHeader.exit:                                  ; preds = %CreateRawImageDemuxer.exit.thread, %bb.f
  %.0 = phi i32 [ %.1.i.ph, %CreateRawImageDemuxer.exit.thread ], [ 0, %bb.f ]
  br i1 %.not, label %bb.ad, label %bb.r

bb.r:                                             ; preds = %ReadHeader.exit
  store i32 %.0, ptr %2, align 4, !tbaa !3
  br label %bb.ad

bb.s:                                             ; preds = %bb.j
  %i.be = icmp samesign ult i64 %i.e, %i.r        ; 2 uses
  %i.bf = icmp eq i32 %1, 0
  %or.cond = select i1 %i.bf, i1 %i.be, i1 false
  br i1 %or.cond, label %bb.ad, label %.thread

.thread:                                          ; preds = %bb.j, %bb.s
  %i.bg = phi i1 [ %i.be, %bb.s ], [ false, %bb.j ]
  %.sroa.12.1.ph110 = phi i64 [ %i.e, %bb.s ], [ %i.r, %bb.j ] ; 2 uses
  %i.bh = tail call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 104) #12 ; 16 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.ad, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 40 ; 4 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !13
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 52
  store <4 x i32> <i32 -1, i32 -1, i32 1, i32 -1>, ptr %i.bk, align 4, !tbaa !3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !21
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 88
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 96
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !22
  store i64 12, ptr %i.bh, align 8, !tbaa !23
  %.sroa.7.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 %.sroa.12.1.ph110, ptr %.sroa.7.0..sroa_idx66, align 8, !tbaa !23
  %.sroa.10.0..sroa_idx68 = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.r, ptr %.sroa.10.0..sroa_idx68, align 8, !tbaa !23
  %.sroa.12.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 %.sroa.12.1.ph110, ptr %.sroa.12.0..sroa_idx70, align 8, !tbaa !23
  %.sroa.18.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  store ptr %i.b, ptr %.sroa.18.0..sroa_idx75, align 8, !tbaa !24
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.bq = load i32, ptr %i.bp, align 1
  %i.br = icmp ne i32 540561494, %i.bq
  %i.bs = zext i1 %i.br to i32
  %.not49 = icmp eq i32 %i.bs, 0
  br i1 %.not49, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.z, %bb.y, %bb.t
  %.lcssa = phi ptr [ @ParseSingleImage, %bb.t ], [ @ParseSingleImage, %bb.y ], [ @ParseVP8X, %bb.z ]
  %.035113.lcssa = phi ptr [ @kMasterChunks, %bb.t ], [ getelementptr inbounds nuw (i8, ptr @kMasterChunks, i64 24), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @kMasterChunks, i64 48), %bb.z ]
  %i.bt = tail call i32 %.lcssa(ptr noundef nonnull %i.bh) #12 ; 3 uses
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 2, ptr %i.bj, align 8, !tbaa !13
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bv = icmp ne i32 %i.bt, 1
  %or.cond3 = select i1 %i.bv, i1 true, i1 %i.bg
  %.not5052 = icmp ne i32 %i.bt, 2
  %.not50.not = and i1 %.not5052, %or.cond3
  br i1 %.not50.not, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.bw = getelementptr inbounds nuw i8, ptr %.035113.lcssa, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !44
  %i.by = tail call i32 %i.bx(ptr noundef nonnull %i.bh) #12
  %.not51 = icmp eq i32 %i.by, 0
  br i1 %.not51, label %.critedge, label %.loopexit

.critedge:                                        ; preds = %bb.w, %bb.x
  store i32 -1, ptr %i.bj, align 8, !tbaa !13
  br label %.loopexit

bb.y:                                             ; preds = %bb.t
  %i.bz = load i32, ptr %i.bp, align 1
  %i.ca = icmp ne i32 1278758998, %i.bz
  %i.cb = zext i1 %i.ca to i32
  %.not49.1 = icmp eq i32 %i.cb, 0
  br i1 %.not49.1, label %bb.u, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cc = load i32, ptr %i.bp, align 1
  %i.cd = icmp ne i32 1480085590, %i.cc
  %i.ce = zext i1 %i.cd to i32
  %.not49.2 = icmp eq i32 %i.ce, 0
  br i1 %.not49.2, label %bb.u, label %.loopexit

.loopexit:                                        ; preds = %bb.z, %bb.x, %.critedge
  %.2 = phi i1 [ true, %.critedge ], [ false, %bb.x ], [ true, %bb.z ]
  br i1 %.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.cf = load i32, ptr %i.bj, align 8, !tbaa !13
  store i32 %i.cf, ptr %2, align 4, !tbaa !3
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.loopexit
  br i1 %.2, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @WebPDemuxDelete(ptr noundef nonnull %i.bh)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.p, %bb.q, %.thread, %bb.s, %ReadHeader.exit, %bb.r, %bb.d, %bb.e, %bb.c, %bb.ac
  %.034 = phi ptr [ null, %.thread ], [ null, %bb.c ], [ null, %bb.d ], [ null, %bb.r ], [ null, %ReadHeader.exit ], [ null, %bb.s ], [ null, %bb.ac ], [ %i.w, %bb.p ], [ null, %bb.e ], [ %i.w, %bb.q ], [ %i.bh, %bb.ab ]
  ret ptr %.034
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare ptr @WebPSafeCalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @WebPDemuxDelete(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !46   ; 2 uses
  %.not15 = icmp eq ptr %i.c, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.01216 = phi ptr [ %i.e, %.lr.ph ], [ %i.c, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01216, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39   ; 2 uses
  tail call void @WebPSafeFree(ptr noundef nonnull %.01216) #12
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !49   ; 2 uses
  %.not1417 = icmp eq ptr %i.g, null
  br i1 %.not1417, label %._crit_edge21, label %.lr.ph20

.lr.ph20:                                         ; preds = %._crit_edge, %.lr.ph20
  %.018 = phi ptr [ %i.i, %.lr.ph20 ], [ %i.g, %._crit_edge ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.018, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50   ; 2 uses
  tail call void @WebPSafeFree(ptr noundef nonnull %.018) #12
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %._crit_edge21, label %.lr.ph20, !llvm.loop !52

._crit_edge21:                                    ; preds = %.lr.ph20, %._crit_edge
  tail call void @WebPSafeFree(ptr noundef nonnull %0) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i32 @WebPDemuxGetI(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.i [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
    i32 5, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = load i32, ptr %i.b, align 8, !tbaa !42
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !41
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !53
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i32, ptr %i.j, align 8, !tbaa !54
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.m = load i32, ptr %i.l, align 4, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.b, %bb.a, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i32 [ %i.m, %bb.h ], [ 0, %bb.a ], [ %i.c, %bb.c ], [ %i.e, %bb.d ], [ %i.g, %bb.e ], [ %i.i, %bb.f ], [ %i.k, %bb.g ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @WebPDemuxGetFrame(ptr noundef %0, i32 noundef %1, ptr noundef writeonly captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %SetFrame.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %2, i8 0, i64 72, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %0, ptr %i.b, align 8, !tbaa !55
  %i.c = icmp eq ptr %0, null
  %i.d = icmp slt i32 %1, 0
  %or.cond.i = or i1 %i.c, %i.d
  br i1 %or.cond.i, label %SetFrame.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4, !tbaa !43   ; 3 uses
  %i.g = icmp sgt i32 %1, %i.f
  br i1 %i.g, label %SetFrame.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp eq i32 %1, 0
  %spec.select.i = select i1 %i.h, i32 %i.f, i32 %1 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn.i.i = phi ptr [ %0, %bb.d ], [ %.0.i.i, %bb.f ]
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 72
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !38 ; 12 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %SetFrame.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !36
  %i.k = icmp eq i32 %spec.select.i, %i.j
  br i1 %i.k, label %GetFrame.exit.i, label %bb.e, !llvm.loop !57

GetFrame.exit.i:                                  ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !58   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  %i.q = load i64, ptr %i.p, align 8, !tbaa !27   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27   ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.s, 0
  br i1 %.not.i.i.i, label %GetFramePayload.exit.i.i, label %bb.g

bb.g:                                             ; preds = %GetFrame.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %.not22.i.i.i = icmp eq i64 %i.o, 0
  %.pre.i.i.i = load i64, ptr %i.t, align 8, !tbaa !25 ; 2 uses
  %i.u = add i64 %i.s, %.pre.i.i.i
  %i.v = sub i64 %i.o, %i.u
  %i.w = select i1 %.not22.i.i.i, i64 0, i64 %i.v
  %i.x = add i64 %i.s, %i.q
  %i.y = add i64 %i.x, %i.w
  br label %GetFramePayload.exit.i.i

GetFramePayload.exit.i.i:                         ; preds = %bb.g, %GetFrame.exit.i
  %.030.i.i = phi i64 [ %i.q, %GetFrame.exit.i ], [ %i.y, %bb.g ]
  %.018.i.i.i = phi i64 [ %i.o, %GetFrame.exit.i ], [ %.pre.i.i.i, %bb.g ]
  %i.z = icmp eq ptr %i.m, null
  br i1 %i.z, label %SetFrame.exit, label %bb.h

bb.h:                                             ; preds = %GetFramePayload.exit.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 %.018.i.i.i
  store i32 %spec.select.i, ptr %2, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.f, ptr %i.ab, align 4, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load <4 x i32>, ptr %.0.i.i, align 8, !tbaa !3
  store <4 x i32> %i.ad, ptr %i.ac, align 8, !tbaa !3
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aj = load <2 x i32>, ptr %i.ah, align 4, !tbaa !3
  store <2 x i32> %i.aj, ptr %i.ai, align 8, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 28
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 60
  store i32 %i.al, ptr %i.am, align 4, !tbaa !63
  %i.an = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr %i.aa, ptr %i.aq, align 8, !tbaa !65
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %.030.i.i, ptr %i.ar, align 8, !tbaa !66
  br label %SetFrame.exit

SetFrame.exit:                                    ; preds = %bb.e, %bb.h, %GetFramePayload.exit.i.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %GetFramePayload.exit.i.i ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.h ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @WebPDemuxNextFrame(ptr noundef captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %SetFrame.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.c = add nsw i32 %i.b, 1                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55   ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = icmp slt i32 %i.b, -1
  %or.cond.i = or i1 %i.g, %i.f
  br i1 %or.cond.i, label %SetFrame.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43   ; 3 uses
  %.not = icmp slt i32 %i.b, %i.i
  br i1 %.not, label %bb.d, label %SetFrame.exit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq i32 %i.c, 0
  %spec.select.i = select i1 %i.j, i32 %i.i, i32 %i.c ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  %.pn.i.i = phi ptr [ %i.e, %bb.d ], [ %.0.i.i, %bb.f ]
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 72
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !38 ; 12 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %SetFrame.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36
  %i.m = icmp eq i32 %spec.select.i, %i.l
  br i1 %i.m, label %GetFrame.exit.i, label %bb.e, !llvm.loop !57

GetFrame.exit.i:                                  ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27   ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i, label %GetFramePayload.exit.i.i, label %bb.g

bb.g:                                             ; preds = %GetFrame.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %.not22.i.i.i = icmp eq i64 %i.q, 0
  %.pre.i.i.i = load i64, ptr %i.v, align 8, !tbaa !25 ; 2 uses
  %i.w = add i64 %i.u, %.pre.i.i.i
  %i.x = sub i64 %i.q, %i.w
  %i.y = select i1 %.not22.i.i.i, i64 0, i64 %i.x
  %i.z = add i64 %i.u, %i.s
  %i.aa = add i64 %i.z, %i.y
  br label %GetFramePayload.exit.i.i

GetFramePayload.exit.i.i:                         ; preds = %bb.g, %GetFrame.exit.i
  %.030.i.i = phi i64 [ %i.s, %GetFrame.exit.i ], [ %i.aa, %bb.g ]
  %.018.i.i.i = phi i64 [ %i.q, %GetFrame.exit.i ], [ %.pre.i.i.i, %bb.g ]
  %i.ab = icmp eq ptr %i.o, null
  br i1 %i.ab, label %SetFrame.exit, label %bb.h

bb.h:                                             ; preds = %GetFramePayload.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %.018.i.i.i
  store i32 %spec.select.i, ptr %0, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.ad, align 4, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load <4 x i32>, ptr %.0.i.i, align 8, !tbaa !3
  store <4 x i32> %i.af, ptr %i.ae, align 8, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load <2 x i32>, ptr %i.aj, align 4, !tbaa !3
  store <2 x i32> %i.al, ptr %i.ak, align 8, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ac, ptr %i.as, align 8, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.030.i.i, ptr %i.at, align 8, !tbaa !66
  br label %SetFrame.exit

SetFrame.exit:                                    ; preds = %bb.e, %bb.h, %GetFramePayload.exit.i.i, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %GetFramePayload.exit.i.i ], [ 0, %bb.b ], [ 0, %bb.c ], [ 1, %bb.h ], [ 0, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @WebPDemuxPrevFrame(ptr noundef captures(address_is_null) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %SetFrame.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.c = icmp slt i32 %i.b, 2
  br i1 %i.c, label %SetFrame.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add nsw i32 %i.b, -1                     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !55   ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %SetFrame.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 68
  %i.i = load i32, ptr %i.h, align 4, !tbaa !43   ; 2 uses
  %i.j = icmp sgt i32 %i.d, %i.i
  br i1 %i.j, label %SetFrame.exit, label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.e
  %.pn.i.i = phi ptr [ %.0.i.i, %bb.e ], [ %i.f, %bb.d ]
  %.0.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 72
  %.0.i.i = load ptr, ptr %.0.in.i.i, align 8, !tbaa !38 ; 12 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %SetFrame.exit, label %bb.e

bb.e:                                             ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.l = load i32, ptr %i.k, align 8, !tbaa !36
  %i.m = icmp eq i32 %i.d, %i.l
  br i1 %i.m, label %GetFrame.exit.i, label %.preheader, !llvm.loop !57

GetFrame.exit.i:                                  ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !58   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !27   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 64
  %i.u = load i64, ptr %i.t, align 8, !tbaa !27   ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.u, 0
  br i1 %.not.i.i.i, label %GetFramePayload.exit.i.i, label %bb.f

bb.f:                                             ; preds = %GetFrame.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 56
  %.not22.i.i.i = icmp eq i64 %i.q, 0
  %.pre.i.i.i = load i64, ptr %i.v, align 8, !tbaa !25 ; 2 uses
  %i.w = add i64 %i.u, %.pre.i.i.i
  %i.x = sub i64 %i.q, %i.w
  %i.y = select i1 %.not22.i.i.i, i64 0, i64 %i.x
  %i.z = add i64 %i.u, %i.s
  %i.aa = add i64 %i.z, %i.y
  br label %GetFramePayload.exit.i.i

GetFramePayload.exit.i.i:                         ; preds = %bb.f, %GetFrame.exit.i
  %.030.i.i = phi i64 [ %i.s, %GetFrame.exit.i ], [ %i.aa, %bb.f ]
  %.018.i.i.i = phi i64 [ %i.q, %GetFrame.exit.i ], [ %.pre.i.i.i, %bb.f ]
  %i.ab = icmp eq ptr %i.o, null
  br i1 %i.ab, label %SetFrame.exit, label %bb.g

bb.g:                                             ; preds = %GetFramePayload.exit.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 %.018.i.i.i
  store i32 %i.d, ptr %0, align 8, !tbaa !59
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.i, ptr %i.ad, align 4, !tbaa !60
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load <4 x i32>, ptr %.0.i.i, align 8, !tbaa !3
  store <4 x i32> %i.af, ptr %i.ae, align 8, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !61
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 20
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load <2 x i32>, ptr %i.aj, align 4, !tbaa !3
  store <2 x i32> %i.al, ptr %i.ak, align 8, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %i.an, ptr %i.ao, align 4, !tbaa !63
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 36
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.ac, ptr %i.as, align 8, !tbaa !65
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.030.i.i, ptr %i.at, align 8, !tbaa !66
  br label %SetFrame.exit

SetFrame.exit:                                    ; preds = %.preheader, %bb.g, %GetFramePayload.exit.i.i, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %GetFramePayload.exit.i.i ], [ 0, %bb.c ], [ 0, %bb.d ], [ 1, %bb.g ], [ 0, %.preheader ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @WebPDemuxReleaseIterator(ptr noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @WebPDemuxGetChunk(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef captures(address_is_null) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %3, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %0, ptr %i.b, align 8, !tbaa !67
  %i.c = tail call fastcc i32 @SetChunk(ptr noundef %1, i32 noundef %2, ptr noundef %3)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @SetChunk(ptr noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr noundef nonnull captures(none) %2) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !67   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq ptr %0, null
  %or.cond = or i1 %i.d, %i.c
  %i.e = icmp slt i32 %1, 0
  %or.cond3 = or i1 %i.e, %or.cond
  br i1 %or.cond3, label %ChunkCount.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !58   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %.011.i = load ptr, ptr %i.h, align 8, !tbaa !69 ; 5 uses
  %.not12.i = icmp eq ptr %.011.i, null
  br i1 %.not12.i, label %ChunkCount.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi ptr [ %.0.i, %.lr.ph.i ], [ %.011.i, %bb.b ] ; 2 uses
  %.0913.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.b ]
  %i.i = load i64, ptr %.014.i, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.k = load i32, ptr %i.j, align 1
  %i.l = load i32, ptr %0, align 1
  %i.m = icmp ne i32 %i.k, %i.l
  %i.n = zext i1 %i.m to i32
  %.not10.i = icmp eq i32 %i.n, 0
  %i.o = zext i1 %.not10.i to i32
  %spec.select.i = add nuw nsw i32 %.0913.i, %i.o ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i, i64 16
  %.0.i = load ptr, ptr %i.p, align 8, !tbaa !69  ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %ChunkCount.exit, label %.lr.ph.i, !llvm.loop !71

ChunkCount.exit:                                  ; preds = %.lr.ph.i
  %i.q = icmp eq i32 %spec.select.i, 0
  br i1 %i.q, label %ChunkCount.exit.thread, label %bb.c

bb.c:                                             ; preds = %ChunkCount.exit
  %i.r = icmp eq i32 %1, 0
  %spec.select = select i1 %i.r, i32 %spec.select.i, i32 %1 ; 4 uses
  %.not = icmp sgt i32 %spec.select, %spec.select.i
  br i1 %.not, label %ChunkCount.exit.thread, label %.lr.ph.i32.preheader

.lr.ph.i32.preheader:                             ; preds = %bb.c
  %i.s = load i64, ptr %.011.i, align 8, !tbaa !70 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.s
  %i.u = load i32, ptr %i.t, align 1
  %i.v = load i32, ptr %0, align 1
  %i.w = icmp ne i32 %i.u, %i.v
  %i.x = zext i1 %i.w to i32
  %.not14.i38 = icmp eq i32 %i.x, 0
  %i.y = zext i1 %.not14.i38 to i32               ; 2 uses
  %i.z = icmp eq i32 %spec.select, %i.y
  br i1 %i.z, label %GetChunk.exit, label %.lr.ph.i32

.lr.ph.i32:                                       ; preds = %.lr.ph.i32.preheader, %.lr.ph.i32
  %spec.select.i3440 = phi i32 [ %spec.select.i34, %.lr.ph.i32 ], [ %i.y, %.lr.ph.i32.preheader ]
  %.01218.i39 = phi ptr [ %.012.i, %.lr.ph.i32 ], [ %.011.i, %.lr.ph.i32.preheader ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.01218.i39, i64 16
  %.012.i = load ptr, ptr %i.aa, align 8, !tbaa !69, !nonnull !72, !noundef !72 ; 3 uses
  %i.ab = load i64, ptr %.012.i, align 8, !tbaa !70 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ab
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = load i32, ptr %0, align 1
  %i.af = icmp ne i32 %i.ad, %i.ae
  %i.ag = zext i1 %i.af to i32
  %.not14.i = icmp eq i32 %i.ag, 0
  %i.ah = zext i1 %.not14.i to i32
  %spec.select.i34 = add nuw nsw i32 %spec.select.i3440, %i.ah ; 2 uses
  %i.ai = icmp eq i32 %spec.select.i34, %spec.select
  br i1 %i.ai, label %GetChunk.exit, label %.lr.ph.i32

GetChunk.exit:                                    ; preds = %.lr.ph.i32, %.lr.ph.i32.preheader
  %i.aj = phi i64 [ %i.s, %.lr.ph.i32.preheader ], [ %i.ab, %.lr.ph.i32 ]
  %.01218.i.lcssa = phi ptr [ %.011.i, %.lr.ph.i32.preheader ], [ %.012.i, %.lr.ph.i32 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.al, ptr %i.am, align 8, !tbaa !73
  %i.an = getelementptr inbounds nuw i8, ptr %.01218.i.lcssa, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !74
  %i.ap = add i64 %i.ao, -8
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !75
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %spec.select.i, ptr %i.ar, align 4, !tbaa !76
  store i32 %spec.select, ptr %2, align 8, !tbaa !77
  br label %ChunkCount.exit.thread

ChunkCount.exit.thread:                           ; preds = %bb.b, %bb.c, %ChunkCount.exit, %bb.a, %GetChunk.exit
  %.0 = phi i32 [ 0, %ChunkCount.exit ], [ 0, %bb.a ], [ 1, %GetChunk.exit ], [ 0, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @WebPDemuxNextChunk(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !73
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load i32, ptr %0, align 8, !tbaa !77
  %i.e = add nsw i32 %i.d, 1
  %i.f = tail call fastcc i32 @SetChunk(ptr noundef nonnull %i.c, i32 noundef %i.e, ptr noundef %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @WebPDemuxPrevChunk(ptr noundef captures(address_is_null) %0) local_unnamed_addr #8 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.f = add nsw i32 %i.a, -1
  %i.g = tail call fastcc i32 @SetChunk(ptr noundef nonnull %i.e, i32 noundef %i.f, ptr noundef %0)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i32 [ %i.g, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @WebPDemuxReleaseChunkIterator(ptr noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  ret void
}

declare i32 @WebPGetFeaturesInternal(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @ParseSingleImage(ptr noundef captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %.val45 = load i64, ptr %0, align 8, !tbaa !78  ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 16
  %.val46 = load i64, ptr %i.c, align 8, !tbaa !79
  %i.d = sub i64 %.val46, %.val45
  %i.e = icmp ugt i64 %i.d, 7
  br i1 %i.e, label %bb.c, label %bb.p

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 8
  %.val44 = load i64, ptr %i.f, align 8, !tbaa !80
  %i.g = sub i64 %.val44, %.val45
  %i.h = icmp ult i64 %i.g, 8
  br i1 %i.h, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 80) #12 ; 11 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call fastcc i32 @StoreFrame(i32 noundef 1, i32 noundef 0, ptr noundef nonnull %0, ptr noundef nonnull %i.i) ; 2 uses
  %.not37 = icmp eq i32 %i.k, 2
  br i1 %.not37, label %AddFrame.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !42   ; 2 uses
  %i.n = and i32 %i.m, 16
  %.not38 = icmp eq i32 %i.n, 0
  br i1 %.not38, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27
  %.not39 = icmp eq i64 %i.p, 0
  br i1 %.not39, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i32 0, ptr %i.r, align 8, !tbaa !35
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.q, i8 0, i64 16, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.t = load i32, ptr %i.s, align 4, !tbaa !81
  %.not40 = icmp eq i32 %i.t, 0
  br i1 %.not40, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !30   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !33   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.aa, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.v, ptr %i.ab, align 4, !tbaa !40
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.y, ptr %i.ac, align 8, !tbaa !41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !35
  %.not41 = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not41, i32 0, i32 16
  %i.ag = or i32 %i.af, %i.m
  store i32 %i.ag, ptr %i.l, align 8, !tbaa !42
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !21 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !38 ; 2 uses
  %.not.i = icmp eq ptr %i.aj, null
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !37
  %.not9.i = icmp eq i32 %i.al, 0
  br i1 %.not9.i, label %AddFrame.exit.thread, label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  store ptr %i.i, ptr %i.ai, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  store ptr null, ptr %i.am, align 8, !tbaa !39
  store ptr %i.am, ptr %i.ah, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 1, ptr %i.an, align 4, !tbaa !43
  br label %bb.p

AddFrame.exit.thread:                             ; preds = %bb.n, %bb.e
  tail call void @WebPSafeFree(ptr noundef nonnull %i.i) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %AddFrame.exit.thread, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 2, %bb.d ], [ 2, %bb.a ], [ 2, %bb.b ], [ 1, %bb.c ], [ 2, %AddFrame.exit.thread ], [ %i.k, %bb.o ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @IsValidSimpleFormat(ptr noundef readonly captures(none) %0) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !40
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load i32, ptr %i.i, align 8, !tbaa !41
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = icmp eq i32 %i.d, 2
  %i.m = icmp eq ptr %i.b, null
  %or.cond = select i1 %i.l, i1 %i.m, i1 false
  br i1 %or.cond, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !30
  %i.p = icmp slt i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !33
  %i.s = icmp sgt i32 %i.r, 0
  %spec.select = zext i1 %i.s to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %.0 = phi i32 [ 0, %bb.e ], [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.c ], [ %spec.select, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @ParseVP8X(ptr noundef captures(none) %0) #1 {
bb.a:
  %.val33 = load i64, ptr %0, align 8, !tbaa !78  ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val34 = load i64, ptr %i.a, align 8, !tbaa !80 ; 3 uses
  %i.b = sub i64 %.val34, %.val33
  %i.c = icmp ult i64 %i.b, 8
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 1, ptr %i.d, align 4, !tbaa !81
  %i.e = add i64 %.val33, 4                       ; 2 uses
  store i64 %i.e, ptr %0, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.e
  %.val3.i.i = load i32, ptr %i.h, align 1        ; 3 uses
  %i.i = add i64 %.val33, 8                       ; 4 uses
  store i64 %i.i, ptr %0, align 8, !tbaa !78
  %i.j = add i32 %.val3.i.i, 9
  %or.cond = icmp ult i32 %i.j, 19
  br i1 %or.cond, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %.val3.i.i, 1
  %i.l = add nuw i32 %i.k, %.val3.i.i             ; 2 uses
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 16
  %.val38 = load i64, ptr %i.n, align 8, !tbaa !79 ; 2 uses
  %i.o = sub i64 %.val38, %i.i
  %.not = icmp ult i64 %i.o, %i.m
  br i1 %.not, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = sub i64 %.val34, %i.i
  %i.q = icmp ult i64 %i.p, %i.m
  br i1 %i.q, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.s = load i8, ptr %i.r, align 1, !tbaa !83
  %i.t = zext i8 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.t, ptr %i.u, align 8, !tbaa !42
  %i.v = add i64 %.val33, 12                      ; 2 uses
  store i64 %i.v, ptr %0, align 8, !tbaa !78
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v ; 2 uses
  %.val.i.i = load i16, ptr %i.w, align 1
  %i.x = zext i16 %.val.i.i to i32
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.z = load i8, ptr %i.y, align 1, !tbaa !83
  %i.aa = zext i8 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 16
  %i.ac = or disjoint i32 %i.ab, %i.x
  %i.ad = add i64 %.val33, 15                     ; 2 uses
  store i64 %i.ad, ptr %0, align 8, !tbaa !78
  %i.ae = add nuw nsw i32 %i.ac, 1                ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ad ; 2 uses
  %.val.i.i39 = load i16, ptr %i.ag, align 1
  %i.ah = zext i16 %.val.i.i39 to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !83
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 16
  %i.am = or disjoint i32 %i.al, %i.ah
  %i.an = add i64 %.val33, 18                     ; 2 uses
  store i64 %i.an, ptr %0, align 8, !tbaa !78
  %i.ao = add nuw nsw i32 %i.am, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %i.ao, ptr %i.ap, align 8, !tbaa !41
  %umul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.ae, i32 %i.ao)
  %i.aq = extractvalue { i32, i1 } %umul, 1
  br i1 %i.aq, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = add i32 %i.l, -10
  %i.as = zext i32 %i.ar to i64
  %i.at = add i64 %i.an, %i.as                    ; 3 uses
  store i64 %i.at, ptr %0, align 8, !tbaa !78
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 1, ptr %i.au, align 8, !tbaa !13
  %i.av = sub i64 %.val38, %i.at
  %i.aw = icmp ugt i64 %i.av, 7
  br i1 %i.aw, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ax = sub i64 %.val34, %i.at
  %i.ay = icmp ult i64 %i.ax, 8
  br i1 %i.ay, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = tail call fastcc i32 @ParseVP8XChunks(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a, %bb.h
  %.0 = phi i32 [ %i.az, %bb.h ], [ 1, %bb.a ], [ 2, %bb.b ], [ 1, %bb.g ], [ 2, %bb.c ], [ 1, %bb.d ], [ 2, %bb.e ], [ 2, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 2) i32 @IsValidExtendedFormat(ptr noundef readonly captures(none) %0) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !46   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !13   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.j = load i32, ptr %i.i, align 4, !tbaa !40   ; 3 uses
  %i.k = icmp slt i32 %i.j, 1
  br i1 %i.k, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load i32, ptr %i.l, align 8, !tbaa !41   ; 3 uses
  %i.n = icmp slt i32 %i.m, 1
  br i1 %i.n, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.p = load i32, ptr %i.o, align 4, !tbaa !53
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ne i32 %i.g, 2                      ; 2 uses
  %i.s = icmp ne ptr %i.e, null
  %or.cond.not72 = select i1 %i.r, i1 true, i1 %i.s
  %i.t = and i32 %i.b, -63
  %.not48 = icmp eq i32 %i.t, 0
  %or.cond63 = select i1 %or.cond.not72, i1 %.not48, i1 false
  br i1 %or.cond63, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.e
  %.not4976 = icmp eq ptr %i.e, null
  br i1 %.not4976, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %.preheader
  %.04277 = phi ptr [ %i.e, %.preheader ], [ %.14375, %bb.f ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04277, i64 32
  %i.v = load i32, ptr %i.u, align 8, !tbaa !36   ; 2 uses
  %i.w = icmp sgt i32 %i.v, 1
  %or.cond57 = and i1 %.not, %i.w
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %CheckFrameBounds.exit
  %.14375 = phi ptr [ %.04277, %.lr.ph ], [ %i.bt, %CheckFrameBounds.exit ] ; 18 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.14375, i64 32
  %i.y = load i32, ptr %i.x, align 8, !tbaa !36
  %i.z = icmp eq i32 %i.y, %i.v
  br i1 %i.z, label %bb.g, label %.lr.ph

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %.14375, i64 40 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.14375, i64 56 ; 2 uses
  br i1 %or.cond57, label %.critedge, label %bb.h, !llvm.loop !84

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %.14375, i64 36
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !37
  %.not51 = icmp eq i32 %i.ad, 0
  br i1 %.not51, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %.14375, i64 64
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !27
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.14375, i64 48
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !27
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.critedge, label %.thread, !llvm.loop !84

bb.k:                                             ; preds = %bb.i
  %i.ak = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.al = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.am = icmp ugt i64 %i.ak, %i.al
  br i1 %i.am, label %.critedge, label %.thread, !llvm.loop !84

.thread:                                          ; preds = %bb.j, %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.14375, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !30 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 1
  br i1 %i.ap, label %.critedge, label %bb.l, !llvm.loop !84

bb.l:                                             ; preds = %.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %.14375, i64 12
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !33
  %i.as = icmp slt i32 %i.ar, 1
  br i1 %i.as, label %.critedge, label %.thread90, !llvm.loop !84

bb.m:                                             ; preds = %bb.h
  br i1 %i.r, label %bb.n, label %.critedge, !llvm.loop !84

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %.14375, i64 64
  %i.au = load i64, ptr %i.at, align 8, !tbaa !27
  %.not52 = icmp eq i64 %i.au, 0
  br i1 %.not52, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %.14375, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !27
  %.not53 = icmp eq i64 %i.aw, 0
  br i1 %.not53, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ax = load i64, ptr %i.ab, align 8, !tbaa !25
  %i.ay = load i64, ptr %i.aa, align 8, !tbaa !25
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %.critedge, label %bb.q, !llvm.loop !84

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.ba = getelementptr inbounds nuw i8, ptr %.14375, i64 72
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !39
  %.not54 = icmp eq ptr %i.bb, null
  br i1 %.not54, label %bb.r, label %.critedge, !llvm.loop !84

bb.r:                                             ; preds = %bb.q
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.14375, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !30 ; 2 uses
  %i.bc = icmp sgt i32 %.pre, 0
  br i1 %i.bc, label %.thread90, label %CheckFrameBounds.exit

.thread90:                                        ; preds = %bb.l, %bb.r
  %i.bd = phi i32 [ %.pre, %bb.r ], [ %i.ao, %bb.l ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.14375, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33 ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.s, label %CheckFrameBounds.exit

bb.s:                                             ; preds = %.thread90
  %i.bh = load i32, ptr %.14375, align 8, !tbaa !85 ; 3 uses
  br i1 %.not, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.not17.i = icmp eq i32 %i.bh, 0
  br i1 %.not17.i, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %.14375, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !86
  %.not18.i = icmp eq i32 %i.bj, 0
  %.not19.i = icmp eq i32 %i.bd, %i.j
  %or.cond64 = and i1 %.not19.i, %.not18.i
  %.not20.i = icmp eq i32 %i.bf, %i.m
  %or.cond65 = and i1 %.not20.i, %or.cond64
  br i1 %or.cond65, label %CheckFrameBounds.exit, label %.critedge, !llvm.loop !84

bb.v:                                             ; preds = %bb.s
  %i.bk = icmp slt i32 %i.bh, 0
  br i1 %i.bk, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bl = getelementptr inbounds nuw i8, ptr %.14375, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !86 ; 2 uses
  %i.bn = icmp slt i32 %i.bm, 0
  %i.bo = add nuw nsw i32 %i.bh, %i.bd
  %i.bp = icmp sgt i32 %i.bo, %i.j
  %or.cond67 = select i1 %i.bn, i1 true, i1 %i.bp
  %i.bq = add nuw nsw i32 %i.bm, %i.bf
  %i.br = icmp sgt i32 %i.bq, %i.m
  %or.cond69 = select i1 %or.cond67, i1 true, i1 %i.br
  br i1 %or.cond69, label %.critedge, label %CheckFrameBounds.exit, !llvm.loop !84

CheckFrameBounds.exit:                            ; preds = %bb.w, %bb.u, %.thread90, %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %.14375, i64 72
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !39 ; 2 uses
  %.not50 = icmp eq ptr %i.bt, null
  br i1 %.not50, label %.critedge, label %bb.f, !llvm.loop !87

.critedge:                                        ; preds = %CheckFrameBounds.exit, %bb.w, %bb.u, %bb.v, %bb.t, %bb.l, %bb.p, %bb.m, %.thread, %bb.q, %bb.k, %bb.j, %bb.g, %.preheader, %bb.e, %bb.d, %bb.b, %bb.c, %bb.a
  %.4 = phi i32 [ 1, %.preheader ], [ 1, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %bb.c ], [ 1, %CheckFrameBounds.exit ], [ 0, %bb.u ], [ 0, %bb.v ], [ 0, %bb.t ], [ 0, %bb.l ], [ 0, %bb.p ], [ 0, %bb.m ], [ 0, %.thread ], [ 0, %bb.q ], [ 0, %bb.k ], [ 0, %bb.j ], [ 0, %bb.g ], [ 0, %bb.w ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @StoreFrame(i32 noundef range(i32 -2147483647, -2147483648) %0, i32 noundef range(i32 -16, -24) %1, ptr noundef captures(none) %2, ptr noundef captures(none) %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.WebPBitstreamFeatures, align 8 ; 6 uses
  %.val89 = load i64, ptr %2, align 8, !tbaa !78  ; 2 uses
  %i.a = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %.val90 = load i64, ptr %i.a, align 8, !tbaa !80 ; 2 uses
  %i.b = sub i64 %.val90, %.val89                 ; 2 uses
  %i.c = icmp ult i64 %i.b, 8
  %i.d = zext i32 %1 to i64
  %i.e = icmp ult i64 %i.b, %i.d
  %or.cond114 = or i1 %i.c, %i.e
  br i1 %or.cond114, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.n
  %.val86 = phi i64 [ %.val80, %bb.n ], [ %.val90, %.preheader ]
  %i.q = phi i64 [ %i.at, %bb.n ], [ %.val89, %.preheader ] ; 7 uses
  %.061 = phi i32 [ %.263, %bb.n ], [ 0, %.preheader ] ; 3 uses
  %.058 = phi i32 [ %.159, %bb.n ], [ 0, %.preheader ] ; 4 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !82   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.q ; 2 uses
  %.val3.i.i = load i32, ptr %i.s, align 1
  %i.t = add i64 %i.q, 4                          ; 2 uses
  store i64 %i.t, ptr %2, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.t
  %.val3.i.i93 = load i32, ptr %i.u, align 1      ; 3 uses
  %i.v = add i64 %i.q, 8                          ; 4 uses
  store i64 %i.v, ptr %2, align 8, !tbaa !78
  %i.w = icmp ugt i32 %.val3.i.i93, -10
  br i1 %i.w, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = and i32 %.val3.i.i93, 1
  %i.y = add nuw i32 %i.x, %.val3.i.i93
  %i.z = zext i32 %i.y to i64                     ; 3 uses
  %i.aa = sub i64 %.val86, %i.v                   ; 2 uses
  %spec.select112 = call i64 @llvm.umin.i64(i64 %i.aa, i64 %i.z) ; 3 uses
  %i.ab = add nuw nsw i64 %spec.select112, 8      ; 3 uses
  %.val92 = load i64, ptr %i.g, align 8, !tbaa !79 ; 3 uses
  %i.ac = sub i64 %.val92, %i.v
  %.not = icmp ult i64 %i.ac, %i.z
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = icmp ult i64 %i.aa, %i.z                ; 3 uses
  %spec.select = zext i1 %i.ad to i32             ; 2 uses
  switch i32 %.val3.i.i, label %bb.l [
    i32 1213221953, label %bb.e
    i32 1278758998, label %bb.g
    i32 540561494, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp eq i32 %.058, 0
  br i1 %i.ae, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  store i64 %i.q, ptr %i.o, align 8, !tbaa !25
  store i64 %i.ab, ptr %i.p, align 8, !tbaa !27
  store i32 1, ptr %i.l, align 8, !tbaa !35
  store i32 %0, ptr %i.m, align 8, !tbaa !36
  %i.af = add i64 %spec.select112, %i.v           ; 2 uses
  store i64 %i.af, ptr %2, align 8, !tbaa !78
  br label %bb.m

bb.g:                                             ; preds = %bb.d
  %i.ag = icmp sgt i32 %.058, 0
  br i1 %i.ag, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %i.ah = icmp eq i32 %.061, 0
  br i1 %i.ah, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.ai = call i32 @WebPGetFeaturesInternal(ptr noundef nonnull %i.s, i64 noundef %i.ab, ptr noundef nonnull %4, i32 noundef 528) #12 ; 2 uses
  %i.aj = icmp eq i32 %i.ai, 7
  %or.cond = select i1 %i.ad, i1 %i.aj, i1 false
  br i1 %or.cond, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not77 = icmp eq i32 %i.ai, 0
  br i1 %.not77, label %bb.k, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j
  %.1.ph = phi i32 [ 2, %bb.j ], [ 1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.ak = xor i1 %i.ad, true
  %i.al = zext i1 %i.ak to i32
  store i64 %i.q, ptr %i.h, align 8, !tbaa !25
  store i64 %i.ab, ptr %i.i, align 8, !tbaa !27
  %i.am = load <2 x i32>, ptr %4, align 8, !tbaa !3
  store <2 x i32> %i.am, ptr %i.j, align 8, !tbaa !3
  %i.an = load i32, ptr %i.k, align 8, !tbaa !34
  %i.ao = load i32, ptr %i.l, align 8, !tbaa !35
  %i.ap = or i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.l, align 8, !tbaa !35
  store i32 %0, ptr %i.m, align 8, !tbaa !36
  store i32 %i.al, ptr %i.n, align 4, !tbaa !37
  %i.aq = load i64, ptr %2, align 8, !tbaa !78
  %i.ar = add i64 %i.aq, %spec.select112          ; 2 uses
  store i64 %i.ar, ptr %2, align 8, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %.pre = load i64, ptr %i.g, align 8, !tbaa !79
  br label %bb.m

bb.l:                                             ; preds = %bb.e, %bb.h, %bb.d
  store i64 %i.q, ptr %2, align 8, !tbaa !78
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.f
  %i.as = phi i64 [ %.val92, %bb.l ], [ %.val92, %bb.f ], [ %.pre, %bb.k ]
  %i.at = phi i64 [ %i.q, %bb.l ], [ %i.af, %bb.f ], [ %i.ar, %bb.k ] ; 3 uses
  %.not78 = phi i1 [ false, %bb.l ], [ true, %bb.f ], [ true, %bb.k ]
  %.263 = phi i32 [ %.061, %bb.l ], [ %.061, %bb.f ], [ 1, %bb.k ]
  %.159 = phi i32 [ %.058, %bb.l ], [ 1, %bb.f ], [ %.058, %bb.k ]
  %i.au = icmp eq i64 %i.at, %i.as
  br i1 %i.au, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val80 = load i64, ptr %i.a, align 8, !tbaa !80 ; 2 uses
  %i.av = sub i64 %.val80, %i.at
  %i.aw = icmp ult i64 %i.av, 8
  %spec.select79 = select i1 %i.aw, i32 1, i32 %spec.select ; 2 uses
  %i.ax = icmp eq i32 %spec.select79, 0
  %i.ay = select i1 %.not78, i1 %i.ax, i1 false
  br i1 %i.ay, label %bb.b, label %.critedge, !llvm.loop !88

.critedge:                                        ; preds = %bb.c, %bb.g, %bb.b, %bb.m, %bb.n, %.thread, %bb.a
  %.4 = phi i32 [ 1, %bb.a ], [ %.1.ph, %.thread ], [ 2, %bb.b ], [ 2, %bb.g ], [ 2, %bb.c ], [ %spec.select79, %bb.n ], [ %spec.select, %bb.m ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 3) i32 @ParseVP8XChunks(ptr noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %i.c = and i32 %i.b, 2
  %i.d = icmp ne i32 %i.c, 0
  %i.e = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.pre = load i64, ptr %0, align 8, !tbaa !78
  br label %bb.b

bb.b:                                             ; preds = %bb.z, %bb.a
  %i.m = phi i64 [ %.pre, %bb.a ], [ %i.ek, %bb.z ] ; 7 uses
  %.048 = phi i32 [ 0, %bb.a ], [ %.149, %bb.z ]  ; 8 uses
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !82   ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  %.val3.i.i = load i32, ptr %i.o, align 1
  %i.p = add i64 %i.m, 4                          ; 2 uses
  store i64 %i.p, ptr %0, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %.val3.i.i70 = load i32, ptr %i.q, align 1      ; 4 uses
  %i.r = add i64 %i.m, 8                          ; 10 uses
  store i64 %i.r, ptr %0, align 8, !tbaa !78
  %i.s = icmp ugt i32 %.val3.i.i70, -10
  br i1 %i.s, label %.thread81, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = and i32 %.val3.i.i70, 1
  %i.u = add nuw i32 %i.t, %.val3.i.i70           ; 5 uses
  %i.v = zext i32 %i.u to i64                     ; 6 uses
  %.val69 = load i64, ptr %i.g, align 8, !tbaa !79
  %i.w = sub i64 %.val69, %i.r
  %.not = icmp ult i64 %i.w, %i.v
  br i1 %.not, label %.thread81, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %.val3.i.i, label %.thread [
    i32 1480085590, label %.thread81
    i32 1213221953, label %bb.e
    i32 540561494, label %bb.e
    i32 1278758998, label %bb.e
    i32 1296649793, label %bb.g
    i32 1179471425, label %bb.k
    i32 1346585417, label %bb.x
    i32 1179211845, label %bb.v
    i32 542133592, label %bb.w
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d
  %i.x = icmp sgt i32 %.048, 0
  %or.cond = select i1 %i.x, i1 true, i1 %i.d
  br i1 %or.cond, label %.thread81, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.m, ptr %0, align 8, !tbaa !78
  %i.y = tail call i32 @ParseSingleImage(ptr noundef nonnull %0)
  br label %ParseAnimationFrame.exit

bb.g:                                             ; preds = %bb.d
  %i.z = icmp ult i32 %i.u, 6
  br i1 %i.z, label %.thread81, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val67 = load i64, ptr %i.e, align 8, !tbaa !80
  %i.aa = sub i64 %.val67, %i.r
  %i.ab = icmp ult i64 %i.aa, %i.v
  br i1 %i.ab, label %ParseAnimationFrame.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = icmp eq i32 %.048, 0
  br i1 %i.ac, label %bb.j, label %.thread99

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.r
  %.val3.i.i71 = load i32, ptr %i.ad, align 1
  %i.ae = add i64 %i.m, 12                        ; 2 uses
  store i64 %i.ae, ptr %0, align 8, !tbaa !78
  store i32 %.val3.i.i71, ptr %i.j, align 8, !tbaa !54
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ae
  %.val.i = load i16, ptr %i.af, align 1
  %i.ag = zext i16 %.val.i to i32
  %i.ah = add i64 %i.m, 14
  store i32 %i.ag, ptr %i.k, align 4, !tbaa !53
  %i.ai = add i32 %i.u, -6
  %i.aj = zext i32 %i.ai to i64
  %i.ak = add i64 %i.ah, %i.aj
  store i64 %i.ak, ptr %0, align 8, !tbaa !78
  br label %ParseAnimationFrame.exit

bb.k:                                             ; preds = %bb.d
  %i.al = icmp eq i32 %.048, 0
  br i1 %i.al, label %.thread81, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = load i32, ptr %i.a, align 8, !tbaa !42
  %i.an = and i32 %i.am, 2
  %i.ao = icmp ne i32 %i.an, 0
  %i.ap = add i32 %i.u, -16                       ; 2 uses
  %i.aq = icmp ult i32 %i.u, 16
  br i1 %i.aq, label %ParseAnimationFrame.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val8.i.i = load i64, ptr %i.e, align 8, !tbaa !80
  %i.ar = sub i64 %.val8.i.i, %i.r
  %i.as = icmp ult i64 %i.ar, 16
  br i1 %i.as, label %ParseAnimationFrame.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.at = tail call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 80) #12 ; 14 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %ParseAnimationFrame.exit, label %NewFrame.exit.i

NewFrame.exit.i:                                  ; preds = %bb.n
  %i.av = load ptr, ptr %i.f, align 8, !tbaa !82  ; 6 uses
  %i.aw = load i64, ptr %0, align 8, !tbaa !78    ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.aw ; 2 uses
  %.val.i.i.i = load i16, ptr %i.ax, align 1
  %i.ay = zext i16 %.val.i.i.i to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !83
  %i.bb = zext i8 %i.ba to i32
  %i.bc = add i64 %i.aw, 3                        ; 2 uses
  store i64 %i.bc, ptr %0, align 8, !tbaa !78
  %i.bd = shl nuw nsw i32 %i.bb, 17
  %i.be = shl nuw nsw i32 %i.ay, 1
  %i.bf = or disjoint i32 %i.bd, %i.be
  store i32 %i.bf, ptr %i.at, align 8, !tbaa !85
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bc ; 2 uses
  %.val.i.i43.i = load i16, ptr %i.bg, align 1
  %i.bh = zext i16 %.val.i.i43.i to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 2
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !83
  %i.bk = zext i8 %i.bj to i32
  %i.bl = add i64 %i.aw, 6                        ; 2 uses
  store i64 %i.bl, ptr %0, align 8, !tbaa !78
  %i.bm = shl nuw nsw i32 %i.bk, 17
  %i.bn = shl nuw nsw i32 %i.bh, 1
  %i.bo = or disjoint i32 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %i.bo, ptr %i.bp, align 4, !tbaa !86
  %i.bq = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bl ; 2 uses
  %.val.i.i44.i = load i16, ptr %i.bq, align 1
  %i.br = zext i16 %.val.i.i44.i to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 2
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !83
  %i.bu = zext i8 %i.bt to i32
  %i.bv = shl nuw nsw i32 %i.bu, 16
  %i.bw = or disjoint i32 %i.bv, %i.br
  %i.bx = add i64 %i.aw, 9                        ; 2 uses
  store i64 %i.bx, ptr %0, align 8, !tbaa !78
  %i.by = add nuw nsw i32 %i.bw, 1                ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !30
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.bx ; 2 uses
  %.val.i.i45.i = load i16, ptr %i.ca, align 1
  %i.cb = zext i16 %.val.i.i45.i to i32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 2
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !83
  %i.ce = zext i8 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 16
  %i.cg = or disjoint i32 %i.cf, %i.cb
  %i.ch = add i64 %i.aw, 12                       ; 2 uses
  store i64 %i.ch, ptr %0, align 8, !tbaa !78
  %i.ci = add nuw nsw i32 %i.cg, 1                ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !33
  %i.ck = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.ch ; 2 uses
  %.val.i.i46.i = load i16, ptr %i.ck, align 1
  %i.cl = zext i16 %.val.i.i46.i to i32
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 2
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !83
  %i.co = zext i8 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 16
  %i.cq = or disjoint i32 %i.cp, %i.cl
  %i.cr = add i64 %i.aw, 15                       ; 2 uses
  store i64 %i.cr, ptr %0, align 8, !tbaa !78
  %i.cs = getelementptr inbounds nuw i8, ptr %i.at, i64 20
  store i32 %i.cq, ptr %i.cs, align 4, !tbaa !89
  %i.ct = getelementptr inbounds nuw i8, ptr %i.av, i64 %i.cr
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !83  ; 2 uses
  %i.cv = add i64 %i.aw, 16                       ; 2 uses
  store i64 %i.cv, ptr %0, align 8, !tbaa !78
  %i.cw = and i8 %i.cu, 1
  %i.cx = zext nneg i8 %i.cw to i32
  %i.cy = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store i32 %i.cx, ptr %i.cy, align 8, !tbaa !90
  %i.cz = lshr i8 %i.cu, 1
  %.lobit.i = and i8 %i.cz, 1
  %i.da = zext nneg i8 %.lobit.i to i32
  %i.db = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  store i32 %i.da, ptr %i.db, align 4, !tbaa !62
  %umul.i = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.by, i32 %i.ci)
  %i.dc = extractvalue { i32, i1 } %umul.i, 1
  br i1 %i.dc, label %bb.o, label %bb.p

bb.o:                                             ; preds = %NewFrame.exit.i
  tail call void @WebPSafeFree(ptr noundef nonnull %i.at) #12
  br label %ParseAnimationFrame.exit

bb.p:                                             ; preds = %NewFrame.exit.i
  %i.dd = load i32, ptr %i.h, align 4, !tbaa !43
  %i.de = add nsw i32 %i.dd, 1
  %i.df = tail call fastcc i32 @StoreFrame(i32 noundef %i.de, i32 noundef %i.ap, ptr noundef nonnull %0, ptr noundef nonnull %i.at) ; 4 uses
  %.not40.i = icmp eq i32 %i.df, 2
  br i1 %.not40.i, label %.thread.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dg = load i64, ptr %0, align 8, !tbaa !78
  %i.dh = sub i64 %i.dg, %i.cv
  %i.di = zext i32 %i.ap to i64
  %i.dj = icmp ugt i64 %i.dh, %i.di
  %spec.select.i = select i1 %i.dj, i32 2, i32 %i.df ; 2 uses
  %i.dk = icmp ne i32 %spec.select.i, 2
  %or.cond.i = select i1 %i.dk, i1 %i.ao, i1 false
  br i1 %or.cond.i, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.dl = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !36
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %bb.r
  %i.do = load ptr, ptr %i.i, align 8, !tbaa !21  ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !38 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dp, null
  br i1 %.not.i.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !37
  %.not9.i.i = icmp eq i32 %i.dr, 0
  br i1 %.not9.i.i, label %.thread.i, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store ptr %i.at, ptr %i.do, align 8, !tbaa !38
  %i.ds = getelementptr inbounds nuw i8, ptr %i.at, i64 72 ; 2 uses
  store ptr null, ptr %i.ds, align 8, !tbaa !39
  store ptr %i.ds, ptr %i.i, align 8, !tbaa !21
  %i.dt = load i32, ptr %i.h, align 4, !tbaa !43
  %i.du = add nsw i32 %i.dt, 1
  store i32 %i.du, ptr %i.h, align 4, !tbaa !43
  br label %ParseAnimationFrame.exit

.thread.i:                                        ; preds = %bb.t, %bb.r, %bb.q, %bb.p
  %.1.ph.i = phi i32 [ %spec.select.i, %bb.q ], [ 2, %bb.p ], [ %i.df, %bb.r ], [ 2, %bb.t ]
  tail call void @WebPSafeFree(ptr noundef nonnull %i.at) #12
  br label %ParseAnimationFrame.exit

bb.v:                                             ; preds = %bb.d
  br label %bb.x

bb.w:                                             ; preds = %bb.d
  br label %bb.x

bb.x:                                             ; preds = %bb.d, %bb.v, %bb.w
  %.sink108 = phi i32 [ 2, %bb.w ], [ 3, %bb.v ], [ 5, %bb.d ]
  %.val65 = load i64, ptr %i.e, align 8, !tbaa !80
  %i.dv = sub i64 %.val65, %i.r
  %.not60 = icmp ult i64 %i.dv, %i.v
  br i1 %.not60, label %ParseAnimationFrame.exit, label %bb.y

.thread99:                                        ; preds = %bb.i
  %.val65101 = load i64, ptr %i.e, align 8, !tbaa !80
  %i.dw = sub i64 %.val65101, %i.r
  %.not60102 = icmp ult i64 %i.dw, %i.v
  br i1 %.not60102, label %ParseAnimationFrame.exit, label %.thread104

.thread:                                          ; preds = %bb.d
  %.val6573 = load i64, ptr %i.e, align 8, !tbaa !80
  %i.dx = sub i64 %.val6573, %i.r
  %.not6074 = icmp ult i64 %i.dx, %i.v
  br i1 %.not6074, label %ParseAnimationFrame.exit, label %.thread76

bb.y:                                             ; preds = %bb.x
  %i.dy = load i32, ptr %i.a, align 8, !tbaa !42
  %i.dz = shl nuw nsw i32 1, %.sink108
  %i.ea = and i32 %i.dy, %i.dz
  %.not61 = icmp eq i32 %i.ea, 0
  br i1 %.not61, label %.thread104, label %.thread76

.thread76:                                        ; preds = %.thread, %bb.y
  %i.eb = tail call ptr @WebPSafeCalloc(i64 noundef 1, i64 noundef 24) #12 ; 5 uses
  %i.ec = icmp eq ptr %i.eb, null
  br i1 %i.ec, label %.thread81, label %StoreChunk.exit

StoreChunk.exit:                                  ; preds = %.thread76
  %i.ed = add nuw i32 %.val3.i.i70, 8
  store i64 %i.m, ptr %i.eb, align 8, !tbaa !70
  %i.ee = zext i32 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i64 %i.ee, ptr %i.ef, align 8, !tbaa !74
  %i.eg = load ptr, ptr %i.l, align 8, !tbaa !22
  store ptr %i.eb, ptr %i.eg, align 8, !tbaa !69
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  store ptr null, ptr %i.eh, align 8, !tbaa !50
  store ptr %i.eh, ptr %i.l, align 8, !tbaa !22
  %.pre92 = load i64, ptr %0, align 8, !tbaa !78
  br label %.thread104

.thread104:                                       ; preds = %.thread99, %StoreChunk.exit, %bb.y
  %i.ei = phi i64 [ %.pre92, %StoreChunk.exit ], [ %i.r, %bb.y ], [ %i.r, %.thread99 ]
  %i.ej = add i64 %i.ei, %i.v
  store i64 %i.ej, ptr %0, align 8, !tbaa !78
  br label %ParseAnimationFrame.exit

ParseAnimationFrame.exit:                         ; preds = %.thread99, %.thread, %.thread.i, %bb.u, %bb.o, %bb.n, %bb.m, %bb.l, %bb.x, %bb.h, %.thread104, %bb.j, %bb.f
  %.152 = phi i32 [ 0, %.thread104 ], [ 1, %bb.h ], [ %i.y, %bb.f ], [ 1, %bb.x ], [ 0, %bb.j ], [ %i.df, %bb.u ], [ 2, %bb.o ], [ %.1.ph.i, %.thread.i ], [ 2, %bb.l ], [ 1, %bb.m ], [ 2, %bb.n ], [ 1, %.thread ], [ 1, %.thread99 ] ; 2 uses
  %.149 = phi i32 [ %.048, %.thread104 ], [ %.048, %bb.h ], [ 0, %bb.f ], [ %.048, %bb.x ], [ 1, %bb.j ], [ 1, %bb.u ], [ 1, %bb.o ], [ 1, %.thread.i ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ], [ %.048, %.thread ], [ %.048, %.thread99 ]
  %i.ek = load i64, ptr %0, align 8, !tbaa !78    ; 3 uses
  %i.el = load i64, ptr %i.g, align 8, !tbaa !79
  %i.em = icmp eq i64 %i.ek, %i.el
  br i1 %i.em, label %.thread81, label %bb.z

bb.z:                                             ; preds = %ParseAnimationFrame.exit
  %.val63 = load i64, ptr %i.e, align 8, !tbaa !80
  %i.en = sub i64 %.val63, %i.ek
  %i.eo = icmp ult i64 %i.en, 8
  %spec.select = select i1 %i.eo, i32 1, i32 %.152 ; 2 uses
  %i.ep = icmp eq i32 %spec.select, 0
  br i1 %i.ep, label %bb.b, label %.thread81, !llvm.loop !91

.thread81:                                        ; preds = %.thread76, %bb.e, %bb.d, %bb.c, %bb.k, %bb.b, %bb.g, %bb.z, %ParseAnimationFrame.exit
  %.2 = phi i32 [ %.152, %ParseAnimationFrame.exit ], [ %spec.select, %bb.z ], [ 2, %bb.g ], [ 2, %bb.b ], [ 2, %bb.k ], [ 2, %bb.c ], [ 2, %bb.d ], [ 2, %bb.e ], [ 2, %.thread76 ]
  ret i32 %.2
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree norecurse nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree norecurse nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"WebPData", !9, i64 0, !11, i64 8}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"long", !5, i64 0}
!12 = !{!8, !11, i64 8}
!13 = !{!14, !4, i64 40}
!14 = !{!"WebPDemuxer", !15, i64 0, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !16, i64 72, !17, i64 80, !19, i64 88, !20, i64 96}
!15 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !9, i64 32}
!16 = !{!"p1 _ZTS5Frame", !10, i64 0}
!17 = !{!"p2 _ZTS5Frame", !18, i64 0}
!18 = !{!"any p2 pointer", !10, i64 0}
!19 = !{!"p1 _ZTS5Chunk", !10, i64 0}
!20 = !{!"p2 _ZTS5Chunk", !18, i64 0}
!21 = !{!14, !17, i64 80}
!22 = !{!14, !20, i64 96}
!23 = !{!11, !11, i64 0}
!24 = !{!9, !9, i64 0}
!25 = !{!26, !11, i64 0}
!26 = !{!"", !11, i64 0, !11, i64 8}
!27 = !{!26, !11, i64 8}
!28 = !{!29, !4, i64 0}
!29 = !{!"WebPBitstreamFeatures", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !5, i64 20}
!30 = !{!31, !4, i64 8}
!31 = !{!"Frame", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !5, i64 40, !16, i64 72}
!32 = !{!29, !4, i64 4}
!33 = !{!31, !4, i64 12}
!34 = !{!29, !4, i64 8}
!35 = !{!31, !4, i64 16}
!36 = !{!31, !4, i64 32}
!37 = !{!31, !4, i64 36}
!38 = !{!16, !16, i64 0}
!39 = !{!31, !16, i64 72}
!40 = !{!14, !4, i64 52}
!41 = !{!14, !4, i64 56}
!42 = !{!14, !4, i64 48}
!43 = !{!14, !4, i64 68}
!44 = !{!45, !10, i64 16}
!45 = !{!"ChunkParser", !5, i64 0, !10, i64 8, !10, i64 16}
!46 = !{!14, !16, i64 72}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!14, !19, i64 88}
!50 = !{!51, !19, i64 16}
!51 = !{!"Chunk", !26, i64 0, !19, i64 16}
!52 = distinct !{!52, !48}
!53 = !{!14, !4, i64 60}
!54 = !{!14, !4, i64 64}
!55 = !{!56, !10, i64 72}
!56 = !{!"WebPIterator", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !8, i64 40, !4, i64 56, !4, i64 60, !5, i64 64, !10, i64 72}
!57 = distinct !{!57, !48}
!58 = !{!14, !9, i64 32}
!59 = !{!56, !4, i64 0}
!60 = !{!56, !4, i64 4}
!61 = !{!56, !4, i64 56}
!62 = !{!31, !4, i64 28}
!63 = !{!56, !4, i64 60}
!64 = !{!56, !4, i64 32}
!65 = !{!56, !9, i64 40}
!66 = !{!56, !11, i64 48}
!67 = !{!68, !10, i64 48}
!68 = !{!"WebPChunkIterator", !4, i64 0, !4, i64 4, !8, i64 8, !5, i64 24, !10, i64 48}
!69 = !{!19, !19, i64 0}
!70 = !{!51, !11, i64 0}
!71 = distinct !{!71, !48}
!72 = !{}
!73 = !{!68, !9, i64 8}
!74 = !{!51, !11, i64 8}
!75 = !{!68, !11, i64 16}
!76 = !{!68, !4, i64 4}
!77 = !{!68, !4, i64 0}
!78 = !{!15, !11, i64 0}
!79 = !{!15, !11, i64 16}
!80 = !{!15, !11, i64 8}
!81 = !{!14, !4, i64 44}
!82 = !{!15, !9, i64 32}
!83 = !{!5, !5, i64 0}
!84 = distinct !{!84, !48}
!85 = !{!31, !4, i64 0}
!86 = !{!31, !4, i64 4}
!87 = distinct !{!87, !48}
!88 = distinct !{!88, !48}
!89 = !{!31, !4, i64 20}
!90 = !{!31, !4, i64 24}
!91 = distinct !{!91, !48}
end_hunk_0
