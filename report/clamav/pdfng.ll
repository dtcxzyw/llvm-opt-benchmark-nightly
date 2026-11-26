Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/pdfng?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"UTF-16\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"pdf_convert_utf: could not initialize iconv for encoding %s: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"pdf_parse_string: Recursion limit reached.\0A\00", align 1
@.str.4 = private unnamed_addr constant [110 x i8] c"Malformed PDF: Alleged size of obj in object stream in PDF would extend further than the object stream data.\0A\00", align 1
@.str.5 = private unnamed_addr constant [83 x i8] c"Malformed PDF: Alleged size of obj in PDF would extend further than the PDF data.\0A\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"pdf_parse_string: object not contained in PDF\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"pdf_parse_dict: Recursion limit reached\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"pdf_parse_array: Recursion limit reached\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"array[%lu][%lu]: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"dict[%lu][%s]: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"dict[%lu][%s]: Array =>\0A\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"pdf_decrypt_string: length < 2\0A\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"pdf_decrypt_string: cli_hex2str_to() failed\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"pdf_decrypt_string: decrypt_any() failed\0A\00", align 1

; Function Attrs: nounwind uwtable
define noalias ptr @pdf_convert_utf(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  %i.f = add i64 %1, 1                            ; 2 uses
  %i.g = tail call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %i.f) #13 ; 5 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %0, i64 %1, i1 false)
  %i.h = tail call ptr @cli_max_calloc(i64 noundef 1, i64 noundef %i.f) #13 ; 5 uses
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %2, label %.preheader.preheader

2:                                                ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.g) #13
  br label %bb.g

.preheader.preheader:                             ; preds = %bb.b
  store ptr %i.g, ptr %i.a, align 8, !tbaa !10
  store ptr %i.h, ptr %i.b, align 8, !tbaa !10
  store i64 %1, ptr %i.d, align 8, !tbaa !12
  store i64 %1, ptr %i.c, align 8, !tbaa !12
  %i.i = tail call noalias ptr @iconv_open(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str) #13 ; 4 uses
  %i.j = icmp eq ptr %i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.preheader.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  %i.k = tail call ptr @__errno_location() #14
  %i.l = load i32, ptr %i.k, align 4, !tbaa !13
  %i.m = call ptr @cli_strerror(i32 noundef %i.l, ptr noundef nonnull %i.e, i64 noundef 128) #13 ; 0 uses
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, ptr noundef nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  br label %.loopexit

bb.d:                                             ; preds = %.preheader.preheader
  %i.n = call i64 @iconv(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #13 ; 0 uses
  %i.o = load i64, ptr %i.d, align 8, !tbaa !12   ; 2 uses
  %i.p = icmp eq i64 %i.o, %1
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 @iconv_close(ptr noundef %i.i) #13 ; 0 uses
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.r = sub i64 %1, %i.o
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.r
  store i8 0, ptr %i.s, align 1, !tbaa !14
  %i.t = call noalias ptr @strdup(ptr noundef nonnull %i.h) #13
  %i.u = call i32 @iconv_close(ptr noundef %i.i) #13 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.f
  %.027 = phi ptr [ %i.t, %bb.f ], [ null, %bb.e ], [ null, %bb.c ]
  call void @free(ptr noundef nonnull %i.g) #13
  call void @free(ptr noundef nonnull %i.h) #13
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %.loopexit, %2
  %.028 = phi ptr [ %.027, %.loopexit ], [ null, %2 ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret ptr %.028
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare ptr @cli_max_calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

declare noalias ptr @iconv_open(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @cli_strerror(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i64 @iconv(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @iconv_close(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @is_object_reference(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !10     ; 16 uses
  %i.c = ptrtoaddr ptr %i.b to i64                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.d = icmp ult ptr %0, %i.b
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.e = ptrtoaddr ptr %0 to i64
  %i.f = tail call ptr @__ctype_b_loc() #14
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = sub i64 %i.c, %i.e
  %scevgep = getelementptr i8, ptr %0, i64 %i.h
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %.065 = phi ptr [ %0, %.lr.ph ], [ %i.n, %bb.c ] ; 3 uses
  %i.i = load i8, ptr %.065, align 1, !tbaa !14
  %i.j = sext i8 %i.i to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.g, i64 %i.j
  %i.l = load i16, ptr %i.k, align 2, !tbaa !18
  %i.m = and i16 %i.l, 8192
  %.not = icmp eq i16 %i.m, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.065, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.n, %i.b
  br i1 %exitcond.not, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.c, %bb.a
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %scevgep, %bb.c ], [ %.065, %bb.b ] ; 4 uses
  %i.o = icmp eq ptr %.0.lcssa, %i.b
  br i1 %i.o, label %bb.s, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.p = tail call ptr @__ctype_b_loc() #14       ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !16   ; 2 uses
  %i.r = load i8, ptr %.0.lcssa, align 1, !tbaa !14
  %i.s = sext i8 %i.r to i64
  %i.t = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.s
  %i.u = load i16, ptr %i.t, align 2, !tbaa !18
  %i.v = and i16 %i.u, 2048
  %.not54 = icmp eq i16 %i.v, 0
  br i1 %.not54, label %bb.s, label %.preheader64.preheader

.preheader64.preheader:                           ; preds = %bb.d
  %storemerge91 = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 1 ; 4 uses
  store ptr %storemerge91, ptr %i.a, align 8, !tbaa !10
  %i.w = icmp ult ptr %storemerge91, %i.b
  br i1 %i.w, label %.lr.ph93, label %.critedge2

.preheader64:                                     ; preds = %.lr.ph93
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge92, i64 1 ; 4 uses
  store ptr %storemerge, ptr %i.a, align 8, !tbaa !10
  %i.x = icmp ult ptr %storemerge, %i.b
  br i1 %i.x, label %.lr.ph93, label %.critedge2

.lr.ph93:                                         ; preds = %.preheader64.preheader, %.preheader64
  %storemerge92 = phi ptr [ %storemerge, %.preheader64 ], [ %storemerge91, %.preheader64.preheader ] ; 3 uses
  %i.y = load i8, ptr %storemerge92, align 1, !tbaa !14
  %i.z = sext i8 %i.y to i64
  %i.aa = getelementptr inbounds [2 x i8], ptr %i.q, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !18
  %i.ac = and i16 %i.ab, 8192
  %.not55 = icmp eq i16 %i.ac, 0
  br i1 %.not55, label %.preheader64, label %.critedge2

.critedge2:                                       ; preds = %.lr.ph93, %.preheader64, %.preheader64.preheader
  %storemerge.lcssa = phi ptr [ %storemerge91, %.preheader64.preheader ], [ %storemerge92, %.lr.ph93 ], [ %storemerge, %.preheader64 ]
  %i.ad = icmp eq ptr %storemerge.lcssa, %i.b
  br i1 %i.ad, label %bb.s, label %bb.e

bb.e:                                             ; preds = %.critedge2
  %i.ae = call i64 @__isoc23_strtoul(ptr noundef nonnull %.0.lcssa, ptr noundef nonnull %i.a, i32 noundef 10) #13 ; 2 uses
  %i.af = icmp eq i64 %i.ae, -1
  br i1 %i.af, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = tail call ptr @__errno_location() #14
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !13
  %.not56 = icmp eq i32 %i.ah, 0
  br i1 %.not56, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ai = shl i64 %i.ae, 8
  %i.aj = load ptr, ptr %i.a, align 8, !tbaa !10  ; 5 uses
  %i.ak = icmp ult ptr %i.aj, %i.b
  br i1 %i.ak, label %.lr.ph69, label %.critedge4

.lr.ph69:                                         ; preds = %bb.g
  %i.al = ptrtoaddr ptr %i.aj to i64
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !16
  %i.an = sub i64 %i.c, %i.al
  %scevgep78 = getelementptr i8, ptr %i.aj, i64 %i.an
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph69, %bb.i
  %.168 = phi ptr [ %i.aj, %.lr.ph69 ], [ %i.at, %bb.i ] ; 3 uses
  %i.ao = load i8, ptr %.168, align 1, !tbaa !14
  %i.ap = sext i8 %i.ao to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !18
  %i.as = and i16 %i.ar, 8192
  %.not57 = icmp eq i16 %i.as, 0
  br i1 %.not57, label %.critedge4, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.at = getelementptr inbounds nuw i8, ptr %.168, i64 1 ; 2 uses
  %exitcond79.not = icmp eq ptr %i.at, %i.b
  br i1 %exitcond79.not, label %.critedge4, label %bb.h

.critedge4:                                       ; preds = %bb.h, %bb.i, %bb.g
  %.1.lcssa = phi ptr [ %i.aj, %bb.g ], [ %scevgep78, %bb.i ], [ %.168, %bb.h ] ; 4 uses
  %i.au = icmp eq ptr %.1.lcssa, %i.b
  br i1 %i.au, label %bb.s, label %bb.j

bb.j:                                             ; preds = %.critedge4
  %i.av = load ptr, ptr %i.p, align 8, !tbaa !16  ; 2 uses
  %i.aw = load i8, ptr %.1.lcssa, align 1, !tbaa !14
  %i.ax = sext i8 %i.aw to i64
  %i.ay = getelementptr inbounds [2 x i8], ptr %i.av, i64 %i.ax
  %i.az = load i16, ptr %i.ay, align 2, !tbaa !18
  %i.ba = and i16 %i.az, 2048
  %.not58 = icmp eq i16 %i.ba, 0
end_hunk_0
