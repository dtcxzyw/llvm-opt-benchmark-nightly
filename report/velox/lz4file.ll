inline.NumInlined: 28
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.LZ4F_frameInfo_t = type { i32, i32, i32, i32, i64, i32, i32 }

@switch.table.LZ4F_writeOpen = private unnamed_addr constant [8 x i64] [i64 65536, i64 poison, i64 poison, i64 poison, i64 65536, i64 262144, i64 1048576, i64 4194304], align 8

; Function Attrs: nounwind uwtable
define noundef i64 @LZ4F_readOpen(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [19 x i8], align 16               ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.LZ4F_frameInfo_t, align 8   ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %0, null
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #9 ; 3 uses
  store ptr %i.e, ptr %0, align 8, !tbaa !7
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i64 @LZ4F_createDecompressionContext(ptr noundef nonnull %i.e, i32 noundef 100) #8 ; 3 uses
  %i.h = tail call i32 @LZ4F_isError(i64 noundef %i.g) #8
  %.not = icmp eq i32 %i.h, 0
  %i.i = load ptr, ptr %0, align 8, !tbaa !7      ; 5 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %LZ4F_freeAndNullReadFile.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.l = tail call i64 @LZ4F_freeDecompressionContext(ptr noundef %i.k) #8 ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.n) #8
  tail call void @free(ptr noundef nonnull %i.i) #8
  br label %LZ4F_freeAndNullReadFile.exit

LZ4F_freeAndNullReadFile.exit:                    ; preds = %bb.d, %bb.e
  store ptr null, ptr %0, align 8, !tbaa !7
  br label %bb.q

bb.f:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %1, ptr %i.o, align 8, !tbaa !17
  %i.p = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 19, ptr noundef nonnull %1) ; 2 uses
  store i64 %i.p, ptr %i.b, align 8, !tbaa !18
  %.not35 = icmp eq i64 %i.p, 19
  br i1 %.not35, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %LZ4F_freeAndNullReadFile.exit37, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !10
  %i.t = tail call i64 @LZ4F_freeDecompressionContext(ptr noundef %i.s) #8 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.v) #8
  tail call void @free(ptr noundef nonnull %i.q) #8
  br label %LZ4F_freeAndNullReadFile.exit37

LZ4F_freeAndNullReadFile.exit37:                  ; preds = %bb.g, %bb.h
  store ptr null, ptr %0, align 8, !tbaa !7
  br label %bb.q

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.w = load ptr, ptr %0, align 8, !tbaa !7
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10
  %i.y = call i64 @LZ4F_getFrameInfo(ptr noundef %i.x, ptr noundef nonnull %2, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8 ; 2 uses
  %i.z = call i32 @LZ4F_isError(i64 noundef %i.y) #8
  %.not36 = icmp eq i32 %i.z, 0
  br i1 %.not36, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load ptr, ptr %0, align 8, !tbaa !7     ; 4 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %LZ4F_freeAndNullReadFile.exit38, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = load ptr, ptr %i.aa, align 8, !tbaa !10
  %i.ad = call i64 @LZ4F_freeDecompressionContext(ptr noundef %i.ac) #8 ; 0 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  call void @free(ptr noundef %i.af) #8
  call void @free(ptr noundef nonnull %i.aa) #8
  br label %LZ4F_freeAndNullReadFile.exit38

LZ4F_freeAndNullReadFile.exit38:                  ; preds = %bb.j, %bb.k
  store ptr null, ptr %0, align 8, !tbaa !7
  br label %bb.n

bb.l:                                             ; preds = %bb.i
  %i.ag = load i32, ptr %2, align 8, !tbaa !19    ; 3 uses
  %i.ah = icmp ult i32 %i.ag, 8
  %switch.maskindex = trunc i32 %i.ag to i8
  %switch.shifted = lshr i8 -15, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond50 = select i1 %i.ah, i1 %switch.lobit, i1 false
  br i1 %or.cond50, label %switch.lookup, label %bb.m

bb.m:                                             ; preds = %bb.l
  call fastcc void @LZ4F_freeAndNullReadFile(ptr noundef %0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %LZ4F_freeAndNullReadFile.exit38
  %.0 = phi i64 [ %i.y, %LZ4F_freeAndNullReadFile.exit38 ], [ -2, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.q

switch.lookup:                                    ; preds = %bb.l
  %i.ai = zext nneg i32 %i.ag to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.LZ4F_writeOpen, i64 %i.ai
  %switch.load = load i64, ptr %switch.gep, align 8 ; 2 uses
  %i.aj = load ptr, ptr %0, align 8, !tbaa !7     ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i64 %switch.load, ptr %i.ak, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.al = call noalias ptr @malloc(i64 noundef %switch.load) #10 ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.al, ptr %i.am, align 8, !tbaa !16
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %bb.o, label %bb.p

bb.o:                                             ; preds = %switch.lookup
  call fastcc void @LZ4F_freeAndNullReadFile(ptr noundef %0)
  br label %bb.q

bb.p:                                             ; preds = %switch.lookup
  %i.ao = load i64, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.ap = sub i64 19, %i.ao                       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.al, ptr nonnull align 1 %i.ar, i64 %i.ap, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.n, %bb.b, %bb.a, %bb.p, %bb.o, %LZ4F_freeAndNullReadFile.exit37, %LZ4F_freeAndNullReadFile.exit
  %.1 = phi i64 [ %.0, %bb.n ], [ -21, %bb.a ], [ %i.g, %LZ4F_freeAndNullReadFile.exit ], [ -23, %LZ4F_freeAndNullReadFile.exit37 ], [ -9, %bb.o ], [ %i.g, %bb.p ], [ -9, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @LZ4F_createDecompressionContext(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @LZ4F_isError(i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @LZ4F_freeAndNullReadFile(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %LZ4F_freeReadFile.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.d = tail call i64 @LZ4F_freeDecompressionContext(ptr noundef %i.c) #8 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.f) #8
  tail call void @free(ptr noundef nonnull %i.a) #8
  br label %LZ4F_freeReadFile.exit

LZ4F_freeReadFile.exit:                           ; preds = %bb.a, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare i64 @LZ4F_getFrameInfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define i64 @LZ4F_read(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not54 = icmp eq i64 %2, 0
  br i1 %.not54, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load i64, ptr %i.f, align 8, !tbaa !24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.j = phi i64 [ %.pre, %.lr.ph ], [ %i.aa, %bb.f ] ; 3 uses
  %.03053 = phi i64 [ 0, %.lr.ph ], [ %i.ac, %bb.f ] ; 3 uses
  %.03152 = phi ptr [ %1, %.lr.ph ], [ %i.ad, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.k = load i64, ptr %i.e, align 8, !tbaa !23   ; 2 uses
  %i.l = sub i64 %i.k, %i.j
  store i64 %i.l, ptr %i.a, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.m = sub nuw i64 %2, %.03053
  store i64 %i.m, ptr %i.b, align 8, !tbaa !18
  %i.n = icmp eq i64 %i.k, %i.j
  br i1 %i.n, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.p = load i64, ptr %i.h, align 8, !tbaa !22
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !17
  %i.r = call i64 @fread(ptr noundef %i.o, i64 noundef 1, i64 noundef %i.p, ptr noundef %i.q) ; 3 uses
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.r, ptr %i.e, align 8, !tbaa !23
  store i64 %i.r, ptr %i.a, align 8, !tbaa !18
  store i64 0, ptr %i.f, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.s = phi i64 [ 0, %bb.d ], [ %i.j, %bb.b ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !10
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  %i.w = call i64 @LZ4F_decompress(ptr noundef %i.t, ptr noundef %.03152, ptr noundef nonnull %i.b, ptr noundef %i.v, ptr noundef nonnull %i.a, ptr noundef null) #8 ; 2 uses
  %i.x = call i32 @LZ4F_isError(i64 noundef %i.w) #8
  %.not39 = icmp eq i32 %i.x, 0
  br i1 %.not39, label %bb.f, label %.loopexit.sink.split

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.a, align 8, !tbaa !18
  %i.z = load i64, ptr %i.f, align 8, !tbaa !24
  %i.aa = add i64 %i.z, %i.y                      ; 2 uses
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !24
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !18  ; 2 uses
  %i.ac = add i64 %i.ab, %.03053                  ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.03152, i64 %i.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.ae = icmp ult i64 %i.ac, %2
  br i1 %i.ae, label %bb.b, label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.c, %bb.e
  %.235.ph = phi i64 [ %i.w, %bb.e ], [ %.03053, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %.loopexit.sink.split, %.preheader, %bb.a
  %.235 = phi i64 [ 0, %.preheader ], [ %.235.ph, %.loopexit.sink.split ], [ -21, %bb.a ], [ %i.ac, %bb.f ]
  ret i64 %.235
}

declare i64 @LZ4F_decompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i64 -21, 1) i64 @LZ4F_readClose(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %LZ4F_freeReadFile.exit

LZ4F_freeReadFile.exit:                           ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !10
  %i.c = tail call i64 @LZ4F_freeDecompressionContext(ptr noundef %i.b) #8 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.e) #8
  tail call void @free(ptr noundef nonnull %0) #8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %LZ4F_freeReadFile.exit
  %.0 = phi i64 [ 0, %LZ4F_freeReadFile.exit ], [ -21, %bb.a ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define noundef i64 @LZ4F_writeOpen(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [19 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = icmp eq ptr %1, null
  %i.c = icmp eq ptr %0, null
  %or.cond = or i1 %i.c, %i.b
  br i1 %or.cond, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #9 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !25
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %2, align 8, !tbaa !27     ; 3 uses
  %i.g = icmp ult i32 %i.f, 8
  %switch.maskindex = trunc i32 %i.f to i8
  %switch.shifted = lshr i8 -15, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond53 = select i1 %i.g, i1 %switch.lobit, i1 false
  br i1 %or.cond53, label %switch.lookup, label %LZ4F_freeAndNullWriteFile.exit

LZ4F_freeAndNullWriteFile.exit:                   ; preds = %bb.d
  %i.h = tail call i64 @LZ4F_freeCompressionContext(ptr noundef null) #8 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.j) #8
  tail call void @free(ptr noundef nonnull %i.d) #8
  store ptr null, ptr %0, align 8, !tbaa !25
  br label %bb.o

switch.lookup:                                    ; preds = %bb.d
  %i.k = zext nneg i32 %i.f to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.LZ4F_writeOpen, i64 %i.k
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %bb.c
  %.sink = phi i64 [ %switch.load, %switch.lookup ], [ 65536, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sink, ptr %i.l, align 8, !tbaa !32
  %i.m = tail call i64 @LZ4F_compressBound(i64 noundef %.sink, ptr noundef %2) #8 ; 2 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !25     ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i64 %i.m, ptr %i.o, align 8, !tbaa !33
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.m) #10 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %i.p, ptr %i.q, align 8, !tbaa !29
  %i.r = icmp eq ptr %i.p, null
  br i1 %i.r, label %LZ4F_freeAndNullWriteFile.exit43, label %bb.f

LZ4F_freeAndNullWriteFile.exit43:                 ; preds = %bb.e
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.t = tail call i64 @LZ4F_freeCompressionContext(ptr noundef %i.s) #8 ; 0 uses
  %i.u = load ptr, ptr %i.q, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.u) #8
  tail call void @free(ptr noundef nonnull %i.n) #8
  store ptr null, ptr %0, align 8, !tbaa !25
  br label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.v = tail call i64 @LZ4F_createCompressionContext(ptr noundef nonnull %i.n, i32 noundef 100) #8 ; 2 uses
  %i.w = tail call i32 @LZ4F_isError(i64 noundef %i.v) #8
  %.not40 = icmp eq i32 %i.w, 0
  %i.x = load ptr, ptr %0, align 8, !tbaa !25     ; 5 uses
  br i1 %.not40, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %LZ4F_freeAndNullWriteFile.exit44, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.aa = tail call i64 @LZ4F_freeCompressionContext(ptr noundef %i.z) #8 ; 0 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.ac) #8
  tail call void @free(ptr noundef nonnull %i.x) #8
  br label %LZ4F_freeAndNullWriteFile.exit44

LZ4F_freeAndNullWriteFile.exit44:                 ; preds = %bb.g, %bb.h
  store ptr null, ptr %0, align 8, !tbaa !25
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !34
  %i.ae = call i64 @LZ4F_compressBegin(ptr noundef %i.ad, ptr noundef nonnull %i.a, i64 noundef 19, ptr noundef %2) #8 ; 4 uses
  %i.af = call i32 @LZ4F_isError(i64 noundef %i.ae) #8
  %.not41 = icmp eq i32 %i.af, 0
  br i1 %.not41, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = load ptr, ptr %0, align 8, !tbaa !25    ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %LZ4F_freeAndNullWriteFile.exit45, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !34
  %i.aj = call i64 @LZ4F_freeCompressionContext(ptr noundef %i.ai) #8 ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !29
  call void @free(ptr noundef %i.al) #8
  call void @free(ptr noundef nonnull %i.ag) #8
  br label %LZ4F_freeAndNullWriteFile.exit45

LZ4F_freeAndNullWriteFile.exit45:                 ; preds = %bb.j, %bb.k
  store ptr null, ptr %0, align 8, !tbaa !25
  br label %bb.o

bb.l:                                             ; preds = %bb.i
  %i.am = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.ae, ptr noundef nonnull %1)
  %.not42 = icmp eq i64 %i.ae, %i.am
  br i1 %.not42, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call fastcc void @LZ4F_freeAndNullWriteFile(ptr noundef %0)
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %0, align 8, !tbaa !25    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %1, ptr %i.ao, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i64 0, ptr %i.ap, align 8, !tbaa !36
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.a, %bb.n, %bb.m, %LZ4F_freeAndNullWriteFile.exit45, %LZ4F_freeAndNullWriteFile.exit44, %LZ4F_freeAndNullWriteFile.exit43, %LZ4F_freeAndNullWriteFile.exit
  %.0 = phi i64 [ 0, %bb.n ], [ -21, %bb.a ], [ -2, %LZ4F_freeAndNullWriteFile.exit ], [ -9, %LZ4F_freeAndNullWriteFile.exit43 ], [ %i.v, %LZ4F_freeAndNullWriteFile.exit44 ], [ %i.ae, %LZ4F_freeAndNullWriteFile.exit45 ], [ -22, %bb.m ], [ -9, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @LZ4F_freeAndNullWriteFile(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %LZ4F_freeWriteFile.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.d = tail call i64 @LZ4F_freeCompressionContext(ptr noundef %i.c) #8 ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.f) #8
  tail call void @free(ptr noundef nonnull %i.a) #8
  br label %LZ4F_freeWriteFile.exit

LZ4F_freeWriteFile.exit:                          ; preds = %bb.a, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !25
  ret void
}

declare i64 @LZ4F_compressBound(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i64 @LZ4F_createCompressionContext(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i64 @LZ4F_compressBegin(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define noundef i64 @LZ4F_write(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not37 = icmp eq i64 %2, 0
  br i1 %.not37, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.03039 = phi i64 [ %2, %.lr.ph ], [ %i.q, %bb.d ] ; 2 uses
  %.03138 = phi ptr [ %1, %.lr.ph ], [ %i.p, %bb.d ] ; 2 uses
  %i.g = load i64, ptr %i.c, align 8, !tbaa !32
  %..030 = tail call i64 @llvm.umin.i64(i64 %.03039, i64 %i.g) ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !34
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.j = load i64, ptr %i.e, align 8, !tbaa !33
  %i.k = tail call i64 @LZ4F_compressUpdate(ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.j, ptr noundef %.03138, i64 noundef %..030, ptr noundef null) #8 ; 4 uses
  %i.l = tail call i32 @LZ4F_isError(i64 noundef %i.k) #8
  %.not34 = icmp eq i32 %i.l, 0
  br i1 %.not34, label %bb.c, label %.loopexit.sink.split

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.o = tail call i64 @fwrite(ptr noundef %i.m, i64 noundef 1, i64 noundef %i.k, ptr noundef %i.n)
  %.not35 = icmp eq i64 %i.k, %i.o
  br i1 %.not35, label %bb.d, label %.loopexit.sink.split

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.03138, i64 %..030
  %i.q = sub i64 %.03039, %..030                  ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !37

.loopexit.sink.split:                             ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.k, %bb.b ], [ -22, %bb.c ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sink, ptr %i.r, align 8, !tbaa !36
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %.loopexit.sink.split, %.preheader, %bb.a
  %.0 = phi i64 [ -21, %bb.a ], [ 0, %.preheader ], [ %.sink, %.loopexit.sink.split ], [ %2, %bb.d ]
  ret i64 %.0
}

declare i64 @LZ4F_compressUpdate(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef i64 @LZ4F_writeClose(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load i64, ptr %i.b, align 8, !tbaa !36
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %LZ4F_freeWriteFile.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !33
  %i.j = tail call i64 @LZ4F_compressEnd(ptr noundef %i.e, ptr noundef %i.g, i64 noundef %i.i, ptr noundef null) #8 ; 5 uses
end_hunk_0
