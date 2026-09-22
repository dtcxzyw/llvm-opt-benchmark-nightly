Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/dgif_lib?download=true
inline.NumInlined: 36
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"GIF89a\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"GIF87a\00", align 1

; Function Attrs: nounwind uwtable
define noundef ptr @DGifOpenFileName(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 0) #12 ; 2 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 101, ptr %1, align 4, !tbaa !10
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.c = tail call ptr @DGifOpenFileHandle(i32 noundef %i.a, ptr noundef %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ %i.c, %bb.d ], [ null, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define noundef ptr @DGifOpenFileHandle(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [7 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %calloc = tail call dereferenceable_or_null(120) ptr @calloc(i64 1, i64 120) ; 10 uses
  %i.b = icmp eq ptr %calloc, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not48 = icmp eq ptr %1, null
  br i1 %.not48, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 109, ptr %1, align 4, !tbaa !10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = tail call i32 @close(i32 noundef %0) #12 ; 0 uses
  br label %bb.s

bb.e:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(24936) ptr @calloc(i64 noundef 1, i64 noundef 24936) #13 ; 9 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %InternalRead.exit

bb.f:                                             ; preds = %bb.e
  %.not47 = icmp eq ptr %1, null
  br i1 %.not47, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 109, ptr %1, align 4, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.f = tail call i32 @close(i32 noundef %0) #12 ; 0 uses
  tail call void @free(ptr noundef nonnull %calloc) #12
  br label %bb.s

InternalRead.exit:                                ; preds = %bb.e
  %i.g = tail call noalias ptr @fdopen(i32 noundef %0, ptr noundef nonnull @.str) #12 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %calloc, i64 112
  store ptr %i.d, ptr %i.h, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %0, ptr %i.i, align 4, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store ptr %i.g, ptr %i.j, align 8, !tbaa !23
  store i32 8, ptr %i.d, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %calloc, i64 104
  store ptr null, ptr %i.k, align 8, !tbaa !25
  %i.l = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 6, ptr noundef %i.g)
  %i.m = and i64 %i.l, 4294967295
  %.not = icmp eq i64 %i.m, 6
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %InternalRead.exit
  %.not46 = icmp eq ptr %1, null
  br i1 %.not46, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i32 102, ptr %1, align 4, !tbaa !10
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.n = tail call i32 @fclose(ptr noundef %i.g)  ; 0 uses
  tail call void @free(ptr noundef nonnull %i.d) #12
  tail call void @free(ptr noundef nonnull %calloc) #12
  br label %bb.s

bb.l:                                             ; preds = %InternalRead.exit
  %i.o = load i16, ptr %i.a, align 1
  %i.p = xor i16 18759, %i.o
  %i.q = getelementptr i8, ptr %i.a, i64 2
  %i.r = load i8, ptr %i.q, align 1
  %i.s = zext i8 %i.r to i16
  %i.t = xor i16 70, %i.s
  %i.u = or i16 %i.p, %i.t
  %i.v = icmp ne i16 %i.u, 0
  %i.w = zext i1 %i.v to i32
  %.not44 = icmp eq i32 %i.w, 0
  br i1 %.not44, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not45 = icmp eq ptr %1, null
  br i1 %.not45, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 103, ptr %1, align 4, !tbaa !10
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.x = tail call i32 @fclose(ptr noundef %i.g)  ; 0 uses
  tail call void @free(ptr noundef nonnull %i.d) #12
  tail call void @free(ptr noundef nonnull %calloc) #12
  br label %bb.s

bb.p:                                             ; preds = %bb.l
  %i.y = tail call i32 @DGifGetScreenDesc(ptr noundef nonnull %calloc)
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aa = tail call i32 @fclose(ptr noundef %i.g) ; 0 uses
  tail call void @free(ptr noundef nonnull %i.d) #12
  tail call void @free(ptr noundef nonnull %calloc) #12
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %calloc, i64 96
  store i32 0, ptr %i.ab, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !27
  %i.ae = icmp eq i8 %i.ad, 57
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 24928
  %i.ag = zext i1 %i.ae to i8
  store i8 %i.ag, ptr %i.af, align 8, !tbaa !28
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.k, %bb.h, %bb.d
  %.0 = phi ptr [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.k ], [ null, %bb.o ], [ null, %bb.q ], [ %calloc, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr noundef readonly captures(none)) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @DGifGetScreenDesc(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 6 uses
  %i.b = alloca [2 x i8], align 2                 ; 6 uses
  %i.c = alloca [3 x i8], align 1                 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !24
  %i.g = and i32 %i.f, 8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 111, ptr %i.h, align 8, !tbaa !26
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.e, label %bb.d
end_hunk_0
begin_hunk_1_@DGifGetLZCodes:bb.a
  br label %InternalRead.exit15.i

InternalRead.exit15.i:                            ; preds = %bb.j, %bb.i
  %i.ai = phi i32 [ %i.ac, %bb.i ], [ %i.ah, %bb.j ]
  %i.aj = load i8, ptr %i.a, align 1, !tbaa !27
  %i.ak = zext i8 %i.aj to i32
  %.not13.i = icmp eq i32 %i.ai, %i.ak
  br i1 %.not13.i, label %bb.k, label %DGifGetCodeNext.exit.thread

DGifGetCodeNext.exit.thread:                      ; preds = %InternalRead.exit15.i, %InternalRead.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 102, ptr %i.al, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.o

bb.k:                                             ; preds = %InternalRead.exit15.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.preheader, !llvm.loop !112

bb.l:                                             ; preds = %bb.g
  store i8 0, ptr %i.w, align 8, !tbaa !27
  %i.am = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store i64 0, ptr %i.am, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  store i32 -1, ptr %1, align 4, !tbaa !10
  br label %bb.o

bb.m:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !46
  %i.ap = icmp eq i32 %i.i, %i.ao
  br i1 %i.ap, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aq = add nsw i32 %i.k, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !48
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !45
  %i.au = add nsw i32 %i.at, 1                    ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.au, ptr %i.av, align 8, !tbaa !49
  %i.aw = shl nuw i32 1, %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !50
  br label %bb.o

bb.o:                                             ; preds = %DGifGetCodeNext.exit.thread, %bb.l, %bb.n, %bb.m, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %DGifGetCodeNext.exit.thread ], [ 1, %bb.m ], [ 1, %bb.n ], [ 1, %bb.l ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @DGifDecompressInput(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !49   ; 4 uses
  %i.e = icmp sgt i32 %i.d, 12
  br i1 %i.e, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 44 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !53   ; 2 uses
  %i.h = icmp slt i32 %i.g, %i.d
  br i1 %i.h, label %.lr.ph, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.pre41 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !54
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 89 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %.pre = load i8, ptr %i.i, align 8, !tbaa !27
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 112, ptr %i.l, align 8, !tbaa !26
  br label %DGifBufferedInput.exit.thread

bb.c:                                             ; preds = %.lr.ph, %bb.p
  %i.m = phi i32 [ %i.d, %.lr.ph ], [ %i.ax, %bb.p ]
  %i.n = phi i32 [ %i.g, %.lr.ph ], [ %i.be, %bb.p ]
  %i.o = phi i8 [ %.pre, %.lr.ph ], [ %storemerge.i, %bb.p ] ; 2 uses
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %bb.d, label %bb.o

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 %i.s(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef 1) #12, !inline_history !113
  br label %InternalRead.exit.i

bb.f:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23
  %i.w = tail call i64 @fread(ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef 1, ptr noundef %i.v)
  %i.x = trunc i64 %i.w to i32
  br label %InternalRead.exit.i

InternalRead.exit.i:                              ; preds = %bb.f, %bb.e
  %i.y = phi i32 [ %i.t, %bb.e ], [ %i.x, %bb.f ]
  %.not.i = icmp eq i32 %i.y, 1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %InternalRead.exit.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 102, ptr %i.z, align 8, !tbaa !26
  br label %DGifBufferedInput.exit.thread

bb.h:                                             ; preds = %InternalRead.exit.i
  %i.aa = load i8, ptr %i.i, align 8, !tbaa !27   ; 3 uses
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 112, ptr %i.ac, align 8, !tbaa !26
  br label %DGifBufferedInput.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %.not.i21.i = icmp eq ptr %i.af, null
  br i1 %.not.i21.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ag = zext i8 %i.aa to i32
  %i.ah = tail call i32 %i.af(ptr noundef nonnull %0, ptr noundef nonnull %i.j, i32 noundef range(i32 0, 256) %i.ag) #12, !inline_history !113
  br label %InternalRead.exit22.i

bb.l:                                             ; preds = %bb.j
  %i.ai = zext i8 %i.aa to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !23
  %i.al = tail call i64 @fread(ptr noundef nonnull %i.j, i64 noundef 1, i64 noundef %i.ai, ptr noundef %i.ak)
  %i.am = trunc i64 %i.al to i32
  br label %InternalRead.exit22.i

InternalRead.exit22.i:                            ; preds = %bb.l, %bb.k
  %i.an = phi i32 [ %i.ah, %bb.k ], [ %i.am, %bb.l ]
  %i.ao = load i8, ptr %i.i, align 8, !tbaa !27   ; 2 uses
  %i.ap = zext i8 %i.ao to i32
  %.not20.i = icmp eq i32 %i.an, %i.ap
  br i1 %.not20.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %InternalRead.exit22.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 102, ptr %i.aq, align 8, !tbaa !26
  br label %DGifBufferedInput.exit.thread

bb.n:                                             ; preds = %InternalRead.exit22.i
  %i.ar = load i8, ptr %i.j, align 1, !tbaa !27
  store i8 2, ptr %i.j, align 1, !tbaa !27
  %.pre39 = load i32, ptr %i.f, align 4, !tbaa !53
  %.pre40 = load i32, ptr %i.c, align 8, !tbaa !49
  br label %bb.p

bb.o:                                             ; preds = %bb.c
  %i.as = load i8, ptr %i.j, align 1, !tbaa !27   ; 2 uses
  %i.at = add i8 %i.as, 1
  store i8 %i.at, ptr %i.j, align 1, !tbaa !27
  %i.au = zext i8 %i.as to i64
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !27
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ax = phi i32 [ %.pre40, %bb.n ], [ %i.m, %bb.o ] ; 3 uses
  %i.ay = phi i32 [ %.pre39, %bb.n ], [ %i.n, %bb.o ] ; 2 uses
  %storemerge.in.i = phi i8 [ %i.ao, %bb.n ], [ %i.o, %bb.o ]
  %.1 = phi i8 [ %i.ar, %bb.n ], [ %i.aw, %bb.o ]
  %storemerge.i = add i8 %storemerge.in.i, -1     ; 2 uses
  store i8 %storemerge.i, ptr %i.i, align 8, !tbaa !27
  %i.az = zext i8 %.1 to i64
  %i.ba = zext nneg i32 %i.ay to i64
  %i.bb = shl i64 %i.az, %i.ba
  %i.bc = load i64, ptr %i.k, align 8, !tbaa !54
  %i.bd = or i64 %i.bb, %i.bc                     ; 2 uses
  store i64 %i.bd, ptr %i.k, align 8, !tbaa !54
  %i.be = add nsw i32 %i.ay, 8                    ; 3 uses
  store i32 %i.be, ptr %i.f, align 4, !tbaa !53
  %i.bf = icmp slt i32 %i.be, %i.ax
  br i1 %i.bf, label %bb.c, label %._crit_edge, !llvm.loop !114

._crit_edge:                                      ; preds = %bb.p, %.preheader.._crit_edge_crit_edge
  %i.bg = phi i64 [ %.pre41, %.preheader.._crit_edge_crit_edge ], [ %i.bd, %bb.p ] ; 2 uses
  %.lcssa = phi i32 [ %i.d, %.preheader.._crit_edge_crit_edge ], [ %i.ax, %bb.p ]
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %2 = trunc i32 %.lcssa to i16
  %notmask = shl nsw i16 -1, %2
  %3 = xor i16 %notmask, -1
  %i.bi = zext nneg i16 %3 to i64
  %i.bj = and i64 %i.bg, %i.bi
  %i.bk = trunc nuw nsw i64 %i.bj to i32
  store i32 %i.bk, ptr %1, align 4, !tbaa !10
  %i.bl = load i32, ptr %i.c, align 8, !tbaa !49  ; 4 uses
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = lshr i64 %i.bg, %i.bm
  store i64 %i.bn, ptr %i.bh, align 8, !tbaa !54
  %i.bo = load i32, ptr %i.f, align 4, !tbaa !53
  %i.bp = sub nsw i32 %i.bo, %i.bl
  store i32 %i.bp, ptr %i.f, align 4, !tbaa !53
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !48 ; 3 uses
  %i.bs = icmp slt i32 %i.br, 4097
  br i1 %i.bs, label %bb.q, label %DGifBufferedInput.exit.thread

bb.q:                                             ; preds = %._crit_edge
  %i.bt = add nsw i32 %i.br, 1
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !48
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !50 ; 2 uses
  %.not = icmp sge i32 %i.br, %i.bv
  %i.bw = icmp slt i32 %i.bl, 12
  %or.cond = select i1 %.not, i1 %i.bw, i1 false
  br i1 %or.cond, label %bb.r, label %DGifBufferedInput.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.bx = shl i32 %i.bv, 1
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !50
  %i.by = add nsw i32 %i.bl, 1
  store i32 %i.by, ptr %i.c, align 8, !tbaa !49
  br label %DGifBufferedInput.exit.thread

DGifBufferedInput.exit.thread:                    ; preds = %bb.m, %bb.i, %bb.g, %._crit_edge, %bb.q, %bb.r, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge ], [ 1, %bb.r ], [ 0, %bb.m ], [ 1, %bb.q ], [ 0, %bb.g ], [ 0, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @DGifSlurp(ptr noundef initializes((80, 84), (88, 96)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %i.b = alloca i8, align 1                       ; 9 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  store ptr null, ptr %i.e, align 8, !tbaa !118
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store i32 0, ptr %i.f, align 8, !tbaa !119
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !24
  %i.j = and i32 %i.i, 8
  %.not.i90 = icmp eq i32 %i.j, 0
  br i1 %.not.i90, label %DGifGetRecordType.exit.thread, label %.lr.ph92

.lr.ph92:                                         ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph92, %bb.ac
  %i.m = phi ptr [ %i.h, %.lr.ph92 ], [ %i.eh, %bb.ac ] ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !29   ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = call i32 %i.o(ptr noundef nonnull %0, ptr noundef nonnull %i.b, i32 noundef 1) #12, !inline_history !115
  br label %InternalRead.exit.i

bb.d:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !23
  %i.s = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 1, ptr noundef %i.r)
  %i.t = trunc i64 %i.s to i32
  br label %InternalRead.exit.i

InternalRead.exit.i:                              ; preds = %bb.d, %bb.c
  %i.u = phi i32 [ %i.p, %bb.c ], [ %i.t, %bb.d ]
  %.not10.i = icmp eq i32 %i.u, 1
  br i1 %.not10.i, label %bb.e, label %DGifGetRecordType.exit.thread

bb.e:                                             ; preds = %InternalRead.exit.i
  %i.v = load i8, ptr %i.b, align 1, !tbaa !27
  switch i8 %i.v, label %DGifGetRecordType.exit.thread [
    i8 44, label %bb.f
    i8 33, label %bb.r
    i8 59, label %bb.ad
  ]

DGifGetRecordType.exit.thread:                    ; preds = %bb.e, %InternalRead.exit.i, %bb.ac, %bb.a
  %.sink = phi i32 [ 111, %bb.a ], [ 102, %InternalRead.exit.i ], [ 111, %bb.ac ], [ 107, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %.sink, ptr %i.w, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.x = call i32 @DGifGetImageDesc(ptr noundef nonnull %0)
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !57
  %i.aa = load i32, ptr %i.l, align 8, !tbaa !58
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr [56 x i8], ptr %i.z, i64 %i.ab ; 6 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 -48    ; 5 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !120 ; 3 uses
  %i.af = icmp slt i32 %i.ae, 1
  br i1 %i.af, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr i8, ptr %i.ac, i64 -44    ; 6 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !121 ; 3 uses
  %i.ai = icmp slt i32 %i.ah, 1
  br i1 %i.ai, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aj = udiv i32 2147483647, %i.ah
  %i.ak = icmp samesign ugt i32 %i.ae, %i.aj
  br i1 %i.ak, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = mul nuw nsw i32 %i.ah, %i.ae            ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = call ptr @openbsd_reallocarray(ptr noundef null, i64 noundef %i.am, i64 noundef 1) #12 ; 3 uses
  %i.ao = getelementptr i8, ptr %i.ac, i64 -24    ; 5 uses
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !61
  %i.ap = icmp eq ptr %i.an, null
  br i1 %i.ap, label %.loopexit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr i8, ptr %i.ac, i64 -40
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !122, !range !40, !noundef !41
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %.preheader.preheader, label %bb.p

.preheader.preheader:                             ; preds = %bb.k
  %i.at = load i32, ptr %i.ag, align 4, !tbaa !121
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader.preheader, %bb.l
  %.088 = phi i32 [ %i.bc, %bb.l ], [ 0, %.preheader.preheader ] ; 2 uses
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !61
  %i.aw = load i32, ptr %i.ad, align 8, !tbaa !120 ; 2 uses
  %i.ax = mul nsw i32 %i.aw, %.088
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %i.ay
  %i.ba = call i32 @DGifGetLine(ptr noundef nonnull %0, ptr noundef %i.az, i32 noundef %i.aw)
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.bc = add nuw nsw i32 %.088, 8                ; 2 uses
  %i.bd = load i32, ptr %i.ag, align 4, !tbaa !121 ; 3 uses
  %i.be = icmp slt i32 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph, label %._crit_edge, !llvm.loop !116

._crit_edge:                                      ; preds = %bb.l
  %i.bf = icmp sgt i32 %i.bd, 4
  br i1 %i.bf, label %.lr.ph.1, label %._crit_edge.1

.lr.ph.1:                                         ; preds = %._crit_edge, %bb.m
  %.088.1 = phi i32 [ %i.bn, %bb.m ], [ 4, %._crit_edge ] ; 2 uses
  %i.bg = load ptr, ptr %i.ao, align 8, !tbaa !61
  %i.bh = load i32, ptr %i.ad, align 8, !tbaa !120 ; 2 uses
  %i.bi = mul nsw i32 %i.bh, %.088.1
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds i8, ptr %i.bg, i64 %i.bj
  %i.bl = call i32 @DGifGetLine(ptr noundef nonnull %0, ptr noundef %i.bk, i32 noundef %i.bh)
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.1
  %i.bn = add nuw nsw i32 %.088.1, 8              ; 2 uses
  %i.bo = load i32, ptr %i.ag, align 4, !tbaa !121 ; 2 uses
  %i.bp = icmp slt i32 %i.bn, %i.bo
  br i1 %i.bp, label %.lr.ph.1, label %._crit_edge.1, !llvm.loop !116

._crit_edge.1:                                    ; preds = %bb.m, %._crit_edge
  %i.bq = phi i32 [ %i.bd, %._crit_edge ], [ %i.bo, %bb.m ] ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 2
  br i1 %i.br, label %.lr.ph.2, label %._crit_edge.2

.lr.ph.2:                                         ; preds = %._crit_edge.1, %bb.n
  %.088.2 = phi i32 [ %i.bz, %bb.n ], [ 2, %._crit_edge.1 ] ; 2 uses
  %i.bs = load ptr, ptr %i.ao, align 8, !tbaa !61
  %i.bt = load i32, ptr %i.ad, align 8, !tbaa !120 ; 2 uses
  %i.bu = mul nsw i32 %i.bt, %.088.2
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %i.bs, i64 %i.bv
  %i.bx = call i32 @DGifGetLine(ptr noundef nonnull %0, ptr noundef %i.bw, i32 noundef %i.bt)
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.2
  %i.bz = add nuw nsw i32 %.088.2, 4              ; 2 uses
  %i.ca = load i32, ptr %i.ag, align 4, !tbaa !121 ; 2 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %.lr.ph.2, label %._crit_edge.2, !llvm.loop !116

._crit_edge.2:                                    ; preds = %bb.n, %._crit_edge.1
  %i.cc = phi i32 [ %i.bq, %._crit_edge.1 ], [ %i.ca, %bb.n ]
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %.lr.ph.3, label %.critedge

.lr.ph.3:                                         ; preds = %._crit_edge.2, %bb.o
  %.088.3 = phi i32 [ %i.cl, %bb.o ], [ 1, %._crit_edge.2 ] ; 2 uses
  %i.ce = load ptr, ptr %i.ao, align 8, !tbaa !61
  %i.cf = load i32, ptr %i.ad, align 8, !tbaa !120 ; 2 uses
  %i.cg = mul nsw i32 %i.cf, %.088.3
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds i8, ptr %i.ce, i64 %i.ch
  %i.cj = call i32 @DGifGetLine(ptr noundef nonnull %0, ptr noundef %i.ci, i32 noundef %i.cf)
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %.lr.ph.3
  %i.cl = add nuw nsw i32 %.088.3, 2              ; 2 uses
  %i.cm = load i32, ptr %i.ag, align 4, !tbaa !121
  %i.cn = icmp slt i32 %i.cl, %i.cm
  br i1 %i.cn, label %.lr.ph.3, label %.critedge, !llvm.loop !116

bb.p:                                             ; preds = %bb.k
  %i.co = call i32 @DGifGetLine(ptr noundef nonnull %0, ptr noundef nonnull %i.an, i32 noundef %i.al)
  %i.cp = icmp eq i32 %i.co, 0
  br i1 %i.cp, label %.loopexit, label %.critedge

.critedge:                                        ; preds = %bb.o, %.preheader.preheader, %._crit_edge.2, %bb.p
  %i.cq = load ptr, ptr %i.e, align 8, !tbaa !118 ; 2 uses
  %.not57 = icmp eq ptr %i.cq, null
  br i1 %.not57, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.cr = getelementptr i8, ptr %i.ac, i64 -8
  store ptr %i.cq, ptr %i.cr, align 8, !tbaa !63
  %i.cs = load i32, ptr %i.f, align 8, !tbaa !119
  %i.ct = getelementptr i8, ptr %i.ac, i64 -16
  store i32 %i.cs, ptr %i.ct, align 8, !tbaa !62
  store ptr null, ptr %i.e, align 8, !tbaa !118
  store i32 0, ptr %i.f, align 8, !tbaa !119
  br label %bb.ac

bb.r:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.cu = call i32 @DGifGetExtension(ptr noundef nonnull %0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c)
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cw = load ptr, ptr %i.c, align 8, !tbaa !64  ; 3 uses
  %.not = icmp eq ptr %i.cw, null
  br i1 %.not, label %.preheader, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cx = load i32, ptr %i.d, align 4, !tbaa !10
  %i.cy = load i8, ptr %i.cw, align 1, !tbaa !27
  %i.cz = zext i8 %i.cy to i32
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 1
  %i.db = call i32 @GifAddExtensionBlock(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i32 noundef %i.cx, i32 noundef %i.cz, ptr noundef nonnull %i.da) #12
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.t, %bb.s
  br label %bb.u

bb.u:                                             ; preds = %.preheader, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.dd = load ptr, ptr %i.g, align 8, !tbaa !18  ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 72
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !29 ; 2 uses
  %.not.i.i59 = icmp eq ptr %i.df, null
  br i1 %.not.i.i59, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dg = call i32 %i.df(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) #12, !inline_history !3
  br label %InternalRead.exit.i60

bb.w:                                             ; preds = %bb.u
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !23
  %i.dj = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.di)
  %i.dk = trunc i64 %i.dj to i32
  br label %InternalRead.exit.i60

InternalRead.exit.i60:                            ; preds = %bb.w, %bb.v
  %i.dl = phi i32 [ %i.dg, %bb.v ], [ %i.dk, %bb.w ]
  %.not.i61 = icmp eq i32 %i.dl, 1
  br i1 %.not.i61, label %bb.x, label %DGifGetExtensionNext.exit.thread

bb.x:                                             ; preds = %InternalRead.exit.i60
  %i.dm = load i8, ptr %i.a, align 1, !tbaa !27   ; 4 uses
  %.not10.i63 = icmp eq i8 %i.dm, 0
  br i1 %.not10.i63, label %.thread76, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 88 ; 2 uses
  store i8 %i.dm, ptr %i.dn, align 8, !tbaa !27
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 89 ; 3 uses
  %i.dp = load ptr, ptr %i.g, align 8, !tbaa !18  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !29 ; 2 uses
  %.not.i12.i = icmp eq ptr %i.dr, null
  br i1 %.not.i12.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ds = zext i8 %i.dm to i32
  %i.dt = call i32 %i.dr(ptr noundef nonnull %0, ptr noundef nonnull %i.do, i32 noundef range(i32 0, 256) %i.ds) #12, !inline_history !3
  br label %InternalRead.exit13.i

bb.aa:                                            ; preds = %bb.y
  %i.du = zext i8 %i.dm to i64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 64
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !23
  %i.dx = call i64 @fread(ptr noundef nonnull %i.do, i64 noundef 1, i64 noundef %i.du, ptr noundef %i.dw)
  %i.dy = trunc i64 %i.dx to i32
  br label %InternalRead.exit13.i

InternalRead.exit13.i:                            ; preds = %bb.aa, %bb.z
  %i.dz = phi i32 [ %i.dt, %bb.z ], [ %i.dy, %bb.aa ]
  %i.ea = load i8, ptr %i.a, align 1, !tbaa !27
  %i.eb = zext i8 %i.ea to i32
  %.not11.i = icmp eq i32 %i.dz, %i.eb
  br i1 %.not11.i, label %bb.ab, label %DGifGetExtensionNext.exit.thread

.thread76:                                        ; preds = %bb.x
  store ptr null, ptr %i.c, align 8, !tbaa !64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.ac

DGifGetExtensionNext.exit.thread:                 ; preds = %InternalRead.exit13.i, %InternalRead.exit.i60
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 102, ptr %i.ec, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit

bb.ab:                                            ; preds = %InternalRead.exit13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ed = load i8, ptr %i.dn, align 8, !tbaa !27
  %i.ee = zext i8 %i.ed to i32
  %i.ef = call i32 @GifAddExtensionBlock(ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, i32 noundef 0, i32 noundef %i.ee, ptr noundef nonnull %i.do) #12
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %.loopexit, label %bb.u

bb.ac:                                            ; preds = %.thread76, %bb.q, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.eh = load ptr, ptr %i.g, align 8, !tbaa !18  ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !24
  %i.ej = and i32 %i.ei, 8
  %.not.i = icmp eq i32 %i.ej, 0
  br i1 %.not.i, label %DGifGetRecordType.exit.thread, label %bb.b, !llvm.loop !117

bb.ad:                                            ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.ek = load i32, ptr %i.l, align 8, !tbaa !58
  %i.el = icmp eq i32 %i.ek, 0
  br i1 %i.el, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 105, ptr %i.em, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.r, %bb.p, %bb.j, %bb.g, %bb.h, %bb.i, %bb.f, %bb.ab, %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %DGifGetExtensionNext.exit.thread, %DGifGetRecordType.exit.thread, %bb.ad, %bb.ae
  %.4 = phi i32 [ 0, %bb.ab ], [ 0, %bb.ae ], [ 0, %.lr.ph.1 ], [ 0, %DGifGetRecordType.exit.thread ], [ 1, %bb.ad ], [ 0, %DGifGetExtensionNext.exit.thread ], [ 0, %.lr.ph ], [ 0, %.lr.ph.3 ], [ 0, %.lr.ph.2 ], [ 0, %bb.f ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ], [ 0, %bb.j ], [ 0, %bb.p ], [ 0, %bb.r ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  ret i32 %.4
}

declare i32 @GifAddExtensionBlock(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0,1) }
attributes #14 = { nounwind allocsize(0) }

!llvm.module.flags = !{!4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!10}

!0 = distinct !{null, null}
!1 = distinct !{null}
!2 = distinct !{ptr @DGifGetCodeNext, null}
!3 = distinct !{ptr @DGifGetExtensionNext, null}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !8, i64 0}
!12 = !{!"p1 _ZTS14ColorMapObject", !11, i64 0}
!13 = !{!"_Bool", !8, i64 0}
!14 = !{!"GifImageDesc", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !13, i64 16, !12, i64 24}
!15 = !{!"p1 _ZTS10SavedImage", !11, i64 0}
!16 = !{!"p1 _ZTS14ExtensionBlock", !11, i64 0}
!17 = !{!"GifFileType", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !8, i64 16, !12, i64 24, !9, i64 32, !14, i64 40, !15, i64 72, !9, i64 80, !16, i64 88, !9, i64 96, !11, i64 104, !11, i64 112}
!18 = !{!17, !11, i64 112}
!19 = !{!"long", !8, i64 0}
!20 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!21 = !{!"p1 _ZTS16GifHashTableType", !11, i64 0}
!22 = !{!"GifFilePrivateType", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !19, i64 48, !19, i64 56, !20, i64 64, !11, i64 72, !11, i64 80, !8, i64 88, !8, i64 344, !8, i64 4439, !8, i64 8536, !21, i64 24920, !13, i64 24928}
!23 = !{!22, !20, i64 64}
!24 = !{!22, !9, i64 0}
!25 = !{!17, !11, i64 104}
!26 = !{!17, !9, i64 96}
!27 = !{!8, !8, i64 0}
!28 = !{!22, !13, i64 24928}
!29 = !{!22, !11, i64 72}
!30 = !{!17, !12, i64 24}
!31 = !{!"p1 _ZTS12GifColorType", !11, i64 0}
!32 = !{!"ColorMapObject", !9, i64 0, !9, i64 4, !13, i64 8, !31, i64 16}
!33 = !{!32, !9, i64 0}
!34 = !{!32, !31, i64 16}
!35 = !{!"GifColorType", !8, i64 0, !8, i64 1, !8, i64 2}
!36 = !{!35, !8, i64 0}
!37 = !{!35, !8, i64 1}
!38 = !{!35, !8, i64 2}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{i8 0, i8 2}
!41 = !{}
!42 = !{!17, !12, i64 64}
!43 = !{!17, !9, i64 48}
!44 = !{!22, !19, i64 56}
!45 = !{!22, !9, i64 8}
!46 = !{!22, !9, i64 12}
!47 = !{!22, !9, i64 16}
!48 = !{!22, !9, i64 20}
!49 = !{!22, !9, i64 24}
!50 = !{!22, !9, i64 28}
!51 = !{!22, !9, i64 40}
!52 = !{!22, !9, i64 32}
!53 = !{!22, !9, i64 44}
!54 = !{!22, !19, i64 48}
!55 = !{!"llvm.loop.isvectorized", i32 1}
!56 = !{!"llvm.loop.unroll.runtime.disable"}
!57 = !{!17, !15, i64 72}
!58 = !{!17, !9, i64 32}
!59 = !{!"p1 omnipotent char", !11, i64 0}
!60 = !{!"SavedImage", !14, i64 0, !59, i64 32, !9, i64 40, !16, i64 48}
!61 = !{!60, !59, i64 32}
!62 = !{!60, !9, i64 40}
!63 = !{!60, !16, i64 48}
!64 = !{!59, !59, i64 0}
!65 = !{!"GraphicsControlBlock", !9, i64 0, !13, i64 4, !9, i64 8, !9, i64 12}
!66 = !{!65, !9, i64 0}
!67 = !{!65, !13, i64 4}
!68 = !{!65, !9, i64 8}
!69 = !{!65, !9, i64 12}
!70 = !{!22, !9, i64 4}
!71 = distinct !{!71, !39}
!72 = !{!17, !9, i64 8}
!73 = !{!17, !9, i64 12}
!74 = !{!17, !8, i64 16}
!75 = !{!32, !13, i64 8}
!76 = distinct !{!76, !39}
!77 = distinct !{null, null}
!78 = distinct !{!78, !39, !55, !56}
!79 = !{!17, !13, i64 56}
!80 = !{!17, !9, i64 52}
!81 = !{!60, !12, i64 24}
!82 = distinct !{!82, !39}
!83 = distinct !{!83, !"LVerDomain"}
!84 = distinct !{!84, !83}
!85 = distinct !{!85, !83}
!86 = distinct !{!86, !39, !55, !56}
!87 = distinct !{!87, !39, !55, !56}
!88 = distinct !{!88, !103}
!89 = distinct !{!89, !39, !55}
!90 = distinct !{!90, !39, !55, !56}
!91 = distinct !{!91, !39}
!92 = distinct !{!92, !39}
!93 = distinct !{!93, !"LVerDomain"}
!94 = distinct !{!94, !93}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !39, !55, !56}
!97 = distinct !{!97, !39, !55, !56}
!98 = distinct !{!98, !39, !55}
!99 = distinct !{!99, !39}
!100 = !{!84}
!101 = !{!85}
!102 = !{!"branch_weights", i32 4, i32 12}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !{!94}
!105 = !{!95}
!106 = distinct !{!106, !39}
!107 = distinct !{!107, !39}
!108 = !{!"ExtensionBlock", !9, i64 0, !59, i64 8, !9, i64 16}
!109 = !{!108, !9, i64 16}
!110 = !{!108, !9, i64 0}
!111 = !{!108, !59, i64 8}
!112 = distinct !{!112, !39}
!113 = distinct !{null, null}
!114 = distinct !{!114, !39}
!115 = distinct !{ptr @DGifGetRecordType, null}
!116 = distinct !{!116, !39}
!117 = distinct !{!117, !39}
!118 = !{!17, !16, i64 88}
!119 = !{!17, !9, i64 80}
!120 = !{!60, !9, i64 8}
!121 = !{!60, !9, i64 12}
!122 = !{!60, !13, i64 16}
end_hunk_1
