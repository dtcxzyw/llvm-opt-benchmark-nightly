Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/fe-exec?download=true
inline.NumInlined: 92
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
@.str.38 = private unnamed_addr constant [51 x i8] c"cannot exit pipeline mode with uncollected results\00", align 1
@.str.39 = private unnamed_addr constant [37 x i8] c"cannot exit pipeline mode while busy\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"cannot exit pipeline mode while in COPY\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"no connection to the server\00", align 1
@.str.42 = private unnamed_addr constant [39 x i8] c"another command is already in progress\00", align 1
@.str.43 = private unnamed_addr constant [28 x i8] c"invalid ExecStatusType code\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"PGresult is not an error result\0A\00", align 1
@PQoidStatus.buf = internal global [24 x i8] zeroinitializer, align 16
@.str.45 = private unnamed_addr constant [8 x i8] c"INSERT \00", align 1
@.str.46 = private unnamed_addr constant [11 x i8] c"0123456789\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"SELECT \00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"DELETE \00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"UPDATE \00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c"FETCH \00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"MERGE \00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"MOVE \00", align 1
@.str.53 = private unnamed_addr constant [6 x i8] c"COPY \00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c"could not interpret result from server: %s\00", align 1
@OOM_result = internal constant { i32, i32, ptr, ptr, i32, i32, ptr, i32, [64 x i8], i32, %struct.PGNoticeHooks, ptr, i32, i32, ptr, ptr, ptr, [1 x i8], [7 x i8], ptr, i32, i32, i64 } { i32 0, i32 0, ptr null, ptr null, i32 0, i32 0, ptr null, i32 7, [64 x i8] zeroinitializer, i32 0, %struct.PGNoticeHooks zeroinitializer, ptr null, i32 0, i32 0, ptr @.str.16, ptr null, ptr null, [1 x i8] zeroinitializer, [7 x i8] zeroinitializer, ptr null, i32 0, i32 0, i64 0 }, align 8
@.str.56 = private unnamed_addr constant [49 x i8] c"PGresult cannot support more than INT_MAX tuples\00", align 1
@.str.57 = private unnamed_addr constant [12 x i8] c"PQsendQuery\00", align 1
@.str.58 = private unnamed_addr constant [34 x i8] c"cannot queue commands during COPY\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"length must be given for binary parameter\00", align 1
@.str.60 = private unnamed_addr constant [23 x i8] c"write to server failed\00", align 1
@.str.61 = private unnamed_addr constant [73 x i8] c"synchronous command execution functions are not allowed in pipeline mode\00", align 1
@.str.62 = private unnamed_addr constant [30 x i8] c"COPY terminated by new PQexec\00", align 1
@.str.63 = private unnamed_addr constant [36 x i8] c"PQexec not allowed during COPY BOTH\00", align 1
@.str.65 = private unnamed_addr constant [47 x i8] c"cannot send pipeline when not in pipeline mode\00", align 1
@.str.66 = private unnamed_addr constant [52 x i8] c"internal error: cannot send pipeline while in COPY\0A\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"column number %d is out of range 0..%d\00", align 1
@.str.68 = private unnamed_addr constant [42 x i8] c"parameter number %d is out of range 0..%d\00", align 1
@.str.69 = private unnamed_addr constant [31 x i8] c"incomplete multibyte character\00", align 1
@.str.70 = private unnamed_addr constant [28 x i8] c"invalid multibyte character\00", align 1
@.str.71 = private unnamed_addr constant [54 x i8] c"escaped string size exceeds the maximum allowed (%zu)\00", align 1
@hextbl = internal unnamed_addr constant [17 x i8] c"0123456789abcdef\00", align 16
@.str.72 = private unnamed_addr constant [53 x i8] c"escaped bytea size exceeds the maximum allowed (%zu)\00", align 1
@hexlookup = internal unnamed_addr constant [128 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\00\01\02\03\04\05\06\07\08\09\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\0A\0B\0C\0D\0E\0F\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", align 16

; Function Attrs: nounwind uwtable
define noundef ptr @PQmakeEmptyPGresult(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(216) ptr @malloc(i64 noundef 216) #24 ; 18 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, i8 0, i64 40, i1 false)
  store i32 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  store i8 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 144 ; 2 uses
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  store i32 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 208 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %i.g, i8 0, i64 25, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i64 216, ptr %i.i, align 8
  %.not48 = icmp eq ptr %0, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  br i1 %.not48, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 472
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.m = load i32, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i32 %i.m, ptr %i.n, align 4
  switch i32 %1, label %bb.d [
    i32 0, label %bb.f
    i32 1, label %bb.f
    i32 2, label %bb.f
    i32 3, label %bb.f
    i32 4, label %bb.f
    i32 8, label %bb.f
    i32 9, label %bb.f
    i32 12, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.p = load i64, ptr %i.o, align 8
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call ptr @pqResultStrdup(ptr noundef nonnull %i.a, ptr noundef %i.s) ; 2 uses
  %.not11.i = icmp eq ptr %i.t, null
  br i1 %.not11.i, label %.thread.i, label %pqSetResultError.exit

.thread.i:                                        ; preds = %bb.e, %bb.d
  br label %pqSetResultError.exit

pqSetResultError.exit:                            ; preds = %bb.e, %.thread.i
  %.sink.i = phi ptr [ @.str.16, %.thread.i ], [ %i.t, %bb.e ]
  store ptr %.sink.i, ptr %i.g, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %pqSetResultError.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8              ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call fastcc ptr @dupEvents(ptr noundef %i.y, i32 noundef %i.v, ptr noundef %i.i) ; 2 uses
  store ptr %i.z, ptr %i.e, align 8
  %.not49 = icmp eq ptr %i.z, null
  br i1 %.not49, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @PQclear(ptr noundef nonnull %i.a)
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.aa = load i32, ptr %i.u, align 8
  store i32 %i.aa, ptr %i.f, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 156
  store i32 0, ptr %i.ab, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.f, %bb.a, %bb.h
  %.0 = phi ptr [ null, %bb.a ], [ null, %bb.h ], [ %i.a, %bb.f ], [ %i.a, %bb.i ], [ %i.a, %bb.j ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @pqSetResultError(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %1, align 8
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  %i.h = tail call ptr @pqResultStrdup(ptr noundef nonnull %0, ptr noundef %i.g) ; 2 uses
  %.not11 = icmp eq ptr %i.h, null
  br i1 %.not11, label %.thread, label %.sink.split

.thread:                                          ; preds = %bb.b, %bb.c, %bb.d
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %.thread
  %.sink = phi ptr [ @.str.16, %.thread ], [ %i.h, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %.sink, ptr %i.i, align 8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noalias noundef ptr @dupEvents(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef range(i32 1, -2147483648) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64                  ; 2 uses
  %i.c = mul nuw nsw i64 %i.b, 40                 ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #24 ; 5 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %.preheader44

.preheader44:                                     ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.03747 = phi i64 [ %i.v, %bb.c ], [ %i.c, %bb.b ]
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %indvars.iv ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv ; 5 uses
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr null, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i8 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = tail call noalias ptr @strdup(ptr noundef %i.n) #25 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  %.not43 = icmp eq ptr %i.o, null
  br i1 %.not43, label %.preheader, label %bb.c

.preheader:                                       ; preds = %.preheader44
  %.not49 = icmp eq i64 %indvars.iv, 0
  br i1 %.not49, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %3 = add nuw i64 %indvars.iv, 4294967295
  %4 = and i64 %3, 4294967295
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv55 = phi i64 [ %4, %.lr.ph.preheader ], [ %indvars.iv.next56, %.lr.ph ] ; 3 uses
  %i.q = getelementptr inbounds nuw [40 x i8], ptr %i.d, i64 %indvars.iv55
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  tail call void @free(ptr noundef %i.s) #25
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, -1
  %.not61 = icmp eq i64 %indvars.iv55, 0
  br i1 %.not61, label %._crit_edge, label %.lr.ph, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @free(ptr noundef nonnull %i.d) #25
  br label %bb.e

bb.c:                                             ; preds = %.preheader44
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #26
  %i.u = add i64 %.03747, 1
  %i.v = add i64 %i.u, %i.t                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.b
  br i1 %exitcond.not, label %bb.d, label %.preheader44, !llvm.loop !13

bb.d:                                             ; preds = %bb.c
  %i.w = load i64, ptr %2, align 8
  %i.x = add i64 %i.w, %i.v
  store i64 %i.x, ptr %2, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %bb.d, %._crit_edge
  %.038 = phi ptr [ null, %bb.a ], [ null, %._crit_edge ], [ %i.d, %bb.d ], [ null, %bb.b ]
  ret ptr %.038
}

; Function Attrs: nounwind uwtable
define void @PQclear(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.PGEventResultDestroy, align 8 ; 4 uses
  %.not = icmp eq ptr %0, null
  %i.a = icmp eq ptr %0, @OOM_result
  %or.cond = or i1 %.not, %i.a
  br i1 %or.cond, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw [40 x i8], ptr %i.f, i64 %indvars.iv ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i8, ptr %i.h, align 8, !range !6, !noundef !7
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #25
  store ptr %0, ptr %1, align 8
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = call i32 %i.k(i32 noundef 5, ptr noundef nonnull %1, ptr noundef %i.m) #25 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #25
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.o = phi ptr [ %.pre, %bb.c ], [ %i.f, %bb.b ]
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void @free(ptr noundef %i.r) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.s = load i32, ptr %i.b, align 8
  %i.t = sext i32 %i.s to i64
  %i.u = icmp slt i64 %indvars.iv.next, %i.t
  br i1 %i.u, label %bb.b, label %._crit_edge, !llvm.loop !14

._crit_edge:                                      ; preds = %bb.d, %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.w = load ptr, ptr %i.v, align 8
  call void @free(ptr noundef %i.w) #25
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not2830 = icmp eq ptr %i.y, null
  br i1 %.not2830, label %._crit_edge33, label %.lr.ph32

.lr.ph32:                                         ; preds = %._crit_edge, %.lr.ph32
  %i.z = phi ptr [ %i.ab, %.lr.ph32 ], [ %i.y, %._crit_edge ] ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  store ptr %i.aa, ptr %i.x, align 8
  call void @free(ptr noundef nonnull %i.z) #25
  %i.ab = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not28 = icmp eq ptr %i.ab, null
  br i1 %.not28, label %._crit_edge33, label %.lr.ph32, !llvm.loop !15

._crit_edge33:                                    ; preds = %.lr.ph32, %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  call void @free(ptr noundef %i.ad) #25
  call void @free(ptr noundef nonnull %0) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @PQsetResultAttrs(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @OOM_result
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %1, 0
  %i.g = icmp ne ptr %2, null
  %or.cond3 = and i1 %i.f, %i.g
  br i1 %or.cond3, label %PQresultAlloc.exit, label %.loopexit

PQresultAlloc.exit:                               ; preds = %bb.c
  %i.h = zext nneg i32 %1 to i64
  %i.i = shl nuw nsw i64 %i.h, 5                  ; 2 uses
  %i.j = tail call ptr @pqResultAlloc(ptr noundef nonnull %0, i64 noundef %i.i, i1 noundef zeroext true) ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr %i.j, ptr %i.k, align 8
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %PQresultAlloc.exit
  store i32 %1, ptr %i.c, align 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.j, ptr nonnull align 8 %2, i64 %i.i, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  store i32 1, ptr %i.l, align 4
  %i.m = load i32, ptr %i.c, align 4
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.pre = load ptr, ptr %i.k, align 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.k
  %i.p = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.k ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not41 = icmp eq ptr %i.r, null
  br i1 %.not41, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = tail call ptr @pqResultStrdup(ptr noundef nonnull %0, ptr noundef nonnull %i.r)
  %i.t = load ptr, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.t, i64 %indvars.iv
  store ptr %i.s, ptr %i.u, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store ptr %i.o, ptr %i.q, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.v = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.v, i64 %indvars.iv ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %.not42 = icmp eq ptr %i.x, null
  br i1 %.not42, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.l, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %bb.e, label %.loopexit, !llvm.loop !0

.loopexit:                                        ; preds = %bb.h, %bb.k, %bb.d, %PQresultAlloc.exit, %bb.c, %bb.b, %bb.a
  %.036 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %PQresultAlloc.exit ], [ 1, %bb.c ], [ 1, %bb.d ], [ 0, %bb.h ], [ 1, %bb.k ]
  ret i32 %.036
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable
define ptr @PQresultAlloc(ptr nofree noundef captures(address, ret: address, provenance) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %0, @OOM_result
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @pqResultAlloc(ptr noundef nonnull %0, i64 noundef %1, i1 noundef zeroext true)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_0
