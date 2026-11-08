Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/tool_formparse?download=true
inline.NumInlined: 19
inline.NumDeleted: 11
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dynbuf = type { ptr, i64, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str.1 = private unnamed_addr constant [26 x i8] c"no multipart to terminate\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"error while reading standard input\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"garbage at end of field specification: %s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Illegally formatted input field\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [30 x i8] c"Failed to read from stdin: %s\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"type=\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"filename=\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"headers=\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"encoder=\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"skip unknown form field: %s\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"Field filename not allowed here: %s\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"Field encoder not allowed here: %s\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Trailing data after quoted form parameter\00", align 1
@.str.17 = private unnamed_addr constant [18 x i8] c"()<>@,;:\\\22[]?=\0D\0A \00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"Cannot read from %s: %s\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Out of memory for field header\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Out of memory for field headers\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Failed to read field headers\00", align 1
@.str.24 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define void @tool_mime_free(ptr noundef captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %.not19 = icmp eq ptr %i.b, null
  br i1 %.not19, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @tool_mime_free(ptr noundef nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !15   ; 2 uses
  %.not20 = icmp eq ptr %i.d, null
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @tool_mime_free(ptr noundef nonnull %i.d)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !16
  tail call void @free(ptr noundef %i.f) #12
  store ptr null, ptr %i.e, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  tail call void @free(ptr noundef %i.h) #12
  store ptr null, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.j) #12
  store ptr null, ptr %i.i, align 8, !tbaa !18
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.l) #12
  store ptr null, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.n) #12
  store ptr null, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21
  tail call void @curl_slist_free_all(ptr noundef %i.p) #12
  tail call void @free(ptr noundef nonnull %0) #12
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

declare void @curl_slist_free_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define i32 @tool2curlmime(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 8)) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @curl_mime_init(ptr noundef %0) #12 ; 5 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !41
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %tool2curlparts.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !14   ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %tool2curlparts.exit.thread33, label %.preheader45.preheader

.preheader45:                                     ; preds = %.preheader45.preheader
  %exitcond = icmp eq i32 %.068.i4988, 100000
  br i1 %exitcond, label %tool2curlparts.exit.thread, label %.preheader45.preheader.1

.preheader45.preheader.1:                         ; preds = %.preheader45
  %i.e = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !15   ; 2 uses
  %.not83.i.1 = icmp eq ptr %i.f, null
  br i1 %.not83.i.1, label %.split.loop.exit100, label %.preheader45.1, !llvm.loop !36

.preheader45.1:                                   ; preds = %.preheader45.preheader.1
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !15   ; 2 uses
  %.not83.i.2 = icmp eq ptr %i.h, null
  br i1 %.not83.i.2, label %.split.loop.exit96, label %.preheader45.2, !llvm.loop !36

.preheader45.2:                                   ; preds = %.preheader45.1
  %i.i = add nuw nsw i32 %.068.i4988, 4           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !15   ; 2 uses
  %.not83.i.3 = icmp eq ptr %i.k, null
  br i1 %.not83.i.3, label %.split.loop.exit, label %.preheader45.3, !llvm.loop !36

.preheader45.3:                                   ; preds = %.preheader45.2
  %indvars.iv.next64.3 = add nuw nsw i32 %indvars.iv6386, 4
  br label %.preheader45.preheader

.preheader45.preheader:                           ; preds = %bb.b, %.preheader45.3
  %.069.i4889 = phi ptr [ %i.k, %.preheader45.3 ], [ %i.d, %bb.b ]
  %.068.i4988 = phi i32 [ %i.i, %.preheader45.3 ], [ 0, %bb.b ] ; 5 uses
  %indvars.iv6386 = phi i32 [ %indvars.iv.next64.3, %.preheader45.3 ], [ 1, %bb.b ] ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.069.i4889, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !15   ; 2 uses
  %.not83.i = icmp eq ptr %i.m, null
  br i1 %.not83.i, label %.split.loop.exit104, label %.preheader45, !llvm.loop !36

.split.loop.exit:                                 ; preds = %.preheader45.2
  %indvars.iv.next64.2.le = add nuw nsw i32 %indvars.iv6386, 3
  br label %bb.c

.split.loop.exit96:                               ; preds = %.preheader45.1
  %indvars.iv.next64.1.le = add nuw nsw i32 %indvars.iv6386, 2
  %i.n = or disjoint i32 %.068.i4988, 3
  br label %bb.c

.split.loop.exit100:                              ; preds = %.preheader45.preheader.1
  %indvars.iv.next64.le = add nuw nsw i32 %indvars.iv6386, 1
  %i.o = or disjoint i32 %.068.i4988, 2
  br label %bb.c

.split.loop.exit104:                              ; preds = %.preheader45.preheader
  %i.p = or disjoint i32 %.068.i4988, 1
  br label %bb.c

bb.c:                                             ; preds = %.split.loop.exit104, %.split.loop.exit100, %.split.loop.exit96, %.split.loop.exit
  %indvars.iv6386.lcssa = phi i32 [ %indvars.iv.next64.le, %.split.loop.exit100 ], [ %indvars.iv.next64.1.le, %.split.loop.exit96 ], [ %indvars.iv.next64.2.le, %.split.loop.exit ], [ %indvars.iv6386, %.split.loop.exit104 ]
  %.lcssa91 = phi i32 [ %i.o, %.split.loop.exit100 ], [ %i.n, %.split.loop.exit96 ], [ %i.i, %.split.loop.exit ], [ %i.p, %.split.loop.exit104 ] ; 2 uses
  %i.q = shl nuw nsw i32 %.lcssa91, 3
  %i.r = zext nneg i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #13, !inline_history !37 ; 5 uses
  %.not84.i = icmp eq ptr %i.s, null
  br i1 %.not84.i, label %tool2curlparts.exit.thread, label %.preheader44.preheader

.preheader44.preheader:                           ; preds = %bb.c
  %3 = zext nneg i32 %.lcssa91 to i64
  br label %.preheader44

.preheader44:                                     ; preds = %.preheader44.preheader, %.preheader44
  %indvars.iv57.a = phi i64 [ %3, %.preheader44.preheader ], [ %indvars.iv.next58.a, %.preheader44 ] ; 2 uses
  %.170.i50 = phi ptr [ %i.d, %.preheader44.preheader ], [ %i.v, %.preheader44 ] ; 2 uses
  %indvars.iv.next58.a = add nsw i64 %indvars.iv57.a, -1 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv.next58.a
  store ptr %.170.i50, ptr %i.t, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %.170.i50, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !15
  %4 = icmp samesign ugt i64 %indvars.iv57.a, 1
  br i1 %4, label %.preheader44, label %.preheader.preheader, !llvm.loop !38

.preheader.preheader:                             ; preds = %.preheader44
  %wide.trip.count = zext nneg i32 %indvars.iv6386.lcssa to i64
  br label %.preheader

tool2curlparts.exit.thread36:                     ; preds = %bb.q
  tail call void @free(ptr noundef %i.s) #12, !inline_history !37
  br label %tool2curlparts.exit.thread33

.preheader:                                       ; preds = %.preheader.preheader, %bb.q
  %indvars.iv60 = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next61, %bb.q ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %indvars.iv60
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !23   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !17   ; 8 uses
  %i.aa = tail call ptr @curl_mime_addpart(ptr noundef nonnull %i.b) #12, !inline_history !37 ; 10 uses
  %.not85.i = icmp eq ptr %i.aa, null
  br i1 %.not85.i, label %tool2curlparts.exit, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.ab = load i32, ptr %i.x, align 8, !tbaa !24
  switch i32 %i.ab, label %bb.m [
    i32 1, label %bb.e
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.i
    i32 5, label %bb.k
    i32 6, label %bb.l
  ]

bb.e:                                             ; preds = %bb.d
  %i.ac = call i32 @tool2curlmime(ptr noundef %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.a), !inline_history !37 ; 2 uses
  %.not88.i = icmp eq i32 %i.ac, 0
  br i1 %.not88.i, label %bb.f, label %tool2curlparts.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.ae = tail call i32 @curl_mime_subparts(ptr noundef nonnull %i.aa, ptr noundef %i.ad) #12, !inline_history !37 ; 2 uses
  %.not89.i = icmp eq i32 %i.ae, 0
  br i1 %.not89.i, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @curl_mime_free(ptr noundef %i.ad) #12, !inline_history !37
  br label %tool2curlparts.exit

bb.h:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !20
  %i.ah = tail call i32 @curl_mime_data(ptr noundef nonnull %i.aa, ptr noundef %i.ag, i64 noundef -1) #12, !inline_history !37
  br label %bb.m

bb.i:                                             ; preds = %bb.d, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ak = tail call i32 @curl_mime_filedata(ptr noundef nonnull %i.aa, ptr noundef %i.aj) #12, !inline_history !37 ; 2 uses
  %.not87.i = icmp eq i32 %i.ak, 0
  br i1 %.not87.i, label %bb.j, label %tool2curlparts.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %i.x, align 8, !tbaa !24
  %i.am = icmp ne i32 %i.al, 4
  %i.an = icmp ne ptr %i.z, null
  %or.cond.i = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond.i, label %bb.m, label %.thread.sink.split

bb.k:                                             ; preds = %bb.d
  %.not86.i = icmp eq ptr %i.z, null
  %spec.store.select.i = select i1 %.not86.i, ptr @.str.5, ptr %i.z
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.0.i = phi ptr [ %spec.store.select.i, %bb.k ], [ %i.z, %bb.d ]
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 88
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !25
  %i.aq = tail call i32 @curl_mime_data_cb(ptr noundef nonnull %i.aa, i64 noundef %i.ap, ptr noundef nonnull @tool_mime_stdin_read, ptr noundef nonnull @tool_mime_stdin_seek, ptr noundef null, ptr noundef nonnull %i.x) #12, !inline_history !37
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j, %bb.h, %bb.f, %bb.d
  %.172.i = phi i32 [ 0, %bb.d ], [ %i.aq, %bb.l ], [ 0, %bb.j ], [ 0, %bb.f ], [ %i.ah, %bb.h ] ; 2 uses
  %.1.i = phi ptr [ %i.z, %bb.d ], [ %.0.i, %bb.l ], [ %i.z, %bb.j ], [ %i.z, %bb.f ], [ %i.z, %bb.h ] ; 2 uses
  %i.ar = icmp eq i32 %.172.i, 0
  %i.as = icmp ne ptr %.1.i, null
  %or.cond3.i = select i1 %i.ar, i1 %i.as, i1 false
  br i1 %or.cond3.i, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %bb.m, %bb.j
  %.sink = phi ptr [ null, %bb.j ], [ %.1.i, %bb.m ]
  %i.at = tail call i32 @curl_mime_filename(ptr noundef nonnull %i.aa, ptr noundef %.sink) #12
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.m
  %.2.i = phi i32 [ %.172.i, %bb.m ], [ %i.at, %.thread.sink.split ] ; 2 uses
  %.not90.i = icmp eq i32 %.2.i, 0
  br i1 %.not90.i, label %bb.n, label %tool2curlparts.exit

bb.n:                                             ; preds = %.thread
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !18
  %i.aw = tail call i32 @curl_mime_type(ptr noundef nonnull %i.aa, ptr noundef %i.av) #12, !inline_history !37 ; 2 uses
  %.not91.i = icmp eq i32 %i.aw, 0
  br i1 %.not91.i, label %bb.o, label %tool2curlparts.exit

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !21
  %i.az = tail call i32 @curl_mime_headers(ptr noundef nonnull %i.aa, ptr noundef %i.ay, i32 noundef 0) #12, !inline_history !37 ; 2 uses
  %.not92.i = icmp eq i32 %i.az, 0
  br i1 %.not92.i, label %bb.p, label %tool2curlparts.exit

bb.p:                                             ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !19
  %i.bc = tail call i32 @curl_mime_encoder(ptr noundef nonnull %i.aa, ptr noundef %i.bb) #12, !inline_history !37 ; 2 uses
  %.not93.i = icmp eq i32 %i.bc, 0
  br i1 %.not93.i, label %.thread22, label %tool2curlparts.exit

.thread22:                                        ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !16
  %i.bf = tail call i32 @curl_mime_name(ptr noundef nonnull %i.aa, ptr noundef %i.be) #12, !inline_history !37 ; 2 uses
  %.not94.i = icmp eq i32 %i.bf, 0
  br i1 %.not94.i, label %bb.q, label %tool2curlparts.exit

bb.q:                                             ; preds = %.thread22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond66.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count
  br i1 %exitcond66.not, label %tool2curlparts.exit.thread36, label %.preheader, !llvm.loop !39

tool2curlparts.exit:                              ; preds = %bb.e, %bb.i, %.thread, %bb.n, %bb.o, %bb.p, %.thread22, %.preheader, %bb.g
  %.7.i.ph = phi i32 [ %i.ae, %bb.g ], [ %i.ak, %bb.i ], [ %i.ac, %bb.e ], [ %i.az, %bb.o ], [ %i.aw, %bb.n ], [ %i.bc, %bb.p ], [ %.2.i, %.thread ], [ %i.bf, %.thread22 ], [ 27, %.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  tail call void @free(ptr noundef %i.s) #12, !inline_history !37
  %.pre = load ptr, ptr %2, align 8, !tbaa !41
  br label %tool2curlparts.exit.thread

tool2curlparts.exit.thread:                       ; preds = %.preheader45, %bb.c, %bb.a, %tool2curlparts.exit
  %i.bg = phi ptr [ %.pre, %tool2curlparts.exit ], [ %i.b, %bb.c ], [ null, %bb.a ], [ %i.b, %.preheader45 ]
  %.031 = phi i32 [ %.7.i.ph, %tool2curlparts.exit ], [ 27, %bb.c ], [ 27, %bb.a ], [ 43, %.preheader45 ]
  tail call void @curl_mime_free(ptr noundef %i.bg) #12
  store ptr null, ptr %2, align 8, !tbaa !41
  br label %tool2curlparts.exit.thread33

tool2curlparts.exit.thread33:                     ; preds = %bb.b, %tool2curlparts.exit.thread36, %tool2curlparts.exit.thread
  %.032 = phi i32 [ %.031, %tool2curlparts.exit.thread ], [ 0, %tool2curlparts.exit.thread36 ], [ 0, %bb.b ]
  ret i32 %.032
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @curl_mime_init(ptr noundef) local_unnamed_addr #2

declare void @curl_mime_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @formparse(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 11 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca ptr, align 8                      ; 8 uses
  %i.f = alloca ptr, align 8                      ; 16 uses
  %i.g = alloca i32, align 4                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  store ptr null, ptr %i.c, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store ptr null, ptr %i.d, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store ptr null, ptr %i.e, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #12
  store ptr null, ptr %i.f, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  %i.h = load ptr, ptr %2, align 8, !tbaa !23
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #14 ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %tool_mime_new_parts.exit.thread, label %bb.c

tool_mime_new_parts.exit.thread:                  ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !23
  br label %tool_mime_new_parts.exit145

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.i, align 8, !tbaa !24
  store ptr %i.i, ptr %1, align 8, !tbaa !23
  store ptr %i.i, ptr %2, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
end_hunk_0
