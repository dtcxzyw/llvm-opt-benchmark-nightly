begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.agxbuf = type { %union.anon.1 }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { ptr, i64, i64, [7 x i8], i8 }
%struct.stream_t = type { ptr, %struct.agxbuf }

@ImageDict = internal unnamed_addr global ptr null, align 8
@gvusershape_file_access.usershape_files_open_cnt = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Filename \22%s\22 is unsafe\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"%s while opening %s\0A\00", align 1
@gvusershape_size.oldpath = internal unnamed_addr global ptr null, align 8
@HTTPServerEnVar = external local_unnamed_addr global ptr, align 8
@Gvimagepath = external local_unnamed_addr global ptr, align 8
@Dttree = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [59 x i8] c"\22%s\22 was not found as a file or as a shape library member\0A\00", align 1
@ImageDictDisc = internal global { i32, i32, i32, [4 x i8], ptr, ptr, ptr } { i32 16, i32 -1, i32 0, [4 x i8] zeroinitializer, ptr null, ptr @usershape_close, ptr null }, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [49 x i8] c"out of memory when trying to allocate %zu bytes\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"svg\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"webp\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"(lib)\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"\89PNG\0D\0A\1A\0A\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"%!PS-Adobe-\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"ps\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"BM\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"bmp\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"GIF8\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"gif\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"\FF\D8\FF\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"jpeg\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"%PDF-\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"pdf\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"\C5\D0\D3\C6\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"eps\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"<?xml\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"xml\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"riff\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"\00\00\01\00\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c"ico\00", align 1
@knowntypes = internal unnamed_addr constant [10 x { ptr, i64, i32, [4 x i8], ptr }] [{ ptr, i64, i32, [4 x i8], ptr } { ptr @.str.12, i64 8, i32 3, [4 x i8] zeroinitializer, ptr @.str.13 }, { ptr, i64, i32, [4 x i8], ptr } { ptr @.str.14, i64 11, i32 6, [4 x i8] zeroinitializer, ptr @.str.15 }, { ptr, i64, i32, [4 x i8], ptr } { ptr @.str.16, i64 2, i32 1, [4 x i8] zeroinitializer, ptr @.str.17 }, { ptr, i64, i32, [4 x i8], ptr } { ptr @.str.18, i64 4, i32 2, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, i64, i32, [4 x i8], ptr } { ptr @.str.20, i64 3, i32 4, [4 x i8] zeroinitializer, ptr @.str.21 }, { ptr, i64, i32, [4 x i8], ptr } { ptr @.str.22, i64 5, i32 5, [4 x i8] zeroinitializer, ptr @.str.23 }, { ptr, i64, i32, [4 x i8], ptr } { ptr @.str.24, i64 4, i32 7, [4 x i8] zeroinitializer, ptr @.str.25 }, { ptr, i64, i32, [4 x i8], ptr } { ptr @.str.26, i64 5, i32 9, [4 x i8] zeroinitializer, ptr @.str.27 }, { ptr, i64, i32, [4 x i8], ptr } { ptr @.str.28, i64 4, i32 10, [4 x i8] zeroinitializer, ptr @.str.29 }, { ptr, i64, i32, [4 x i8], ptr } { ptr @.str.30, i64 4, i32 12, [4 x i8] zeroinitializer, ptr @.str.31 }], align 16
@.str.33 = private unnamed_addr constant [24 x i8] c"Parsing of \22%s\22 failed\0A\00", align 1
@.str.34 = private unnamed_addr constant [15 x i8] c"%%BoundingBox:\00", align 1
@.str.35 = private unnamed_addr constant [29 x i8] c"%%%%BoundingBox: %d %d %d %d\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"%lf%2s\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"pt\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"viewBox\00", align 1
@.str.42 = private unnamed_addr constant [16 x i8] c"%*f %*f %lf %lf\00", align 1
@bboxPDF.KEY = internal unnamed_addr constant [10 x i8] c"/MediaBox\00", align 1

; Function Attrs: nounwind uwtable
define ptr @gvusershape_find(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @ImageDict, align 8, !tbaa !8 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call ptr %i.b(ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef 512) #19
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef zeroext i1 @gvusershape_file_access(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @rewind(ptr noundef nonnull %i.b)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.e = tail call ptr @safefile(ptr noundef %i.d) #19 ; 3 uses
  %.not13 = icmp eq ptr %i.e, null
  br i1 %.not13, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !24
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str, ptr noundef %i.f) #19
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.g = tail call ptr @gv_fopen(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.1) #19 ; 2 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !16
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @__errno_location() #20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !25
  %i.k = tail call ptr @strerror(i32 noundef %i.j) #19
  tail call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.2, ptr noundef %i.k, ptr noundef nonnull %i.e) #19
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.l = load i32, ptr @gvusershape_file_access.usershape_files_open_cnt, align 4, !tbaa !25 ; 2 uses
  %i.m = icmp sgt i32 %i.l, 49
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 1, ptr %i.n, align 1, !tbaa !26
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.o = add nsw i32 %i.l, 1
  store i32 %i.o, ptr @gvusershape_file_access.usershape_files_open_cnt, align 4, !tbaa !25
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.i, %bb.h, %bb.f, %bb.d
  %.0 = phi i1 [ false, %bb.d ], [ false, %bb.f ], [ true, %bb.h ], [ true, %bb.i ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @safefile(ptr noundef) local_unnamed_addr #3

declare void @agwarningf(ptr noundef, ...) local_unnamed_addr #3

declare hidden ptr @gv_fopen(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define void @gvusershape_file_release(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 29
  %i.b = load i8, ptr %i.a, align 1, !tbaa !26, !range !27, !noundef !28
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !16   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.e) ; 0 uses
  store ptr null, ptr %i.d, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define i64 @gvusershape_size_dpi(ptr nofree noundef readonly captures(address_is_null) %0, double %1, double %2) local_unnamed_addr #7 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %.not8 = icmp eq i32 %i.b, 0                    ; 2 uses
  %i.c = sitofp i32 %i.b to double                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.3.0 = select i1 %.not8, double %2, double %i.c
  %.sroa.0.0 = select i1 %.not8, double %1, double %i.c
  %i.e = load <2 x double>, ptr %i.d, align 8, !tbaa !30
  %i.f = fmul <2 x double> %i.e, splat (double 7.200000e+01)
  %i.g = insertelement <2 x double> poison, double %.sroa.0.0, i64 0
  %i.h = insertelement <2 x double> %i.g, double %.sroa.3.0, i64 1
  %i.i = fdiv <2 x double> %i.f, %i.h             ; 2 uses
  %3 = extractelement <2 x double> %i.i, i64 0
  %4 = fptosi double %3 to i32
  %5 = extractelement <2 x double> %i.i, i64 1
  %6 = fptosi double %5 to i32
  %7 = zext i32 %6 to i64
  %8 = shl nuw i64 %7, 32
  %9 = zext i32 %4 to i64
  %10 = or disjoint i64 %8, %9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.05.0.insert.insert = phi i64 [ %10, %bb.b ], [ -1, %bb.a ]
  ret i64 %.sroa.05.0.insert.insert
}

; Function Attrs: nounwind uwtable
define i64 @gvusershape_size(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [20 x i8], align 16               ; 19 uses
  %i.b = alloca [4 x i8], align 4                 ; 9 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %gvusershape_size_dpi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1, !tbaa !31
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %gvusershape_size_dpi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr @HTTPServerEnVar, align 8, !tbaa !32
  %.not10 = icmp eq ptr %i.e, null
  br i1 %.not10, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr @ImageDict, align 8, !tbaa !8
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @gvusershape_size.oldpath, align 8, !tbaa !32
  %i.g = load ptr, ptr @Gvimagepath, align 8, !tbaa !32 ; 2 uses
  %.not11 = icmp eq ptr %i.f, %i.g
  %.pre18 = load ptr, ptr @ImageDict, align 8, !tbaa !8 ; 3 uses
  br i1 %.not11, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.g, ptr @gvusershape_size.oldpath, align 8, !tbaa !32
  %.not12 = icmp eq ptr %.pre18, null
  br i1 %.not12, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = tail call i32 @dtclose(ptr noundef nonnull %.pre18) #19 ; 0 uses
  store ptr null, ptr @ImageDict, align 8, !tbaa !8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load double, ptr %i.m, align 8, !tbaa !56 ; 2 uses
  %i.o = fcmp ult double %i.n, 1.000000e+00
  %.31 = select i1 %i.o, double 9.600000e+01, double %i.n
  br label %bb.h

bb.g:                                             ; preds = %._crit_edge, %bb.d
  %i.p = phi ptr [ %.pre, %._crit_edge ], [ %.pre18, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !37
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !56 ; 2 uses
  %i.w = fcmp ult double %i.v, 1.000000e+00
  %. = select i1 %i.w, double 9.600000e+01, double %i.v ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.h, label %gvusershape_find.exit.i

bb.h:                                             ; preds = %.thread, %bb.g
  %.36 = phi double [ %.31, %.thread ], [ %., %bb.g ] ; 2 uses
  %i.x = load ptr, ptr @Dttree, align 8, !tbaa !58
  %i.y = tail call ptr @dtopen(ptr noundef nonnull @ImageDictDisc, ptr noundef %i.x) #19 ; 3 uses
  store ptr %i.y, ptr @ImageDict, align 8, !tbaa !8
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %gvusershape_find.exit.thread.i, label %gvusershape_find.exit.i

gvusershape_find.exit.i:                          ; preds = %bb.h, %bb.g
  %.34 = phi double [ %.36, %bb.h ], [ %., %bb.g ] ; 4 uses
  %i.z = phi ptr [ %i.y, %bb.h ], [ %i.p, %bb.g ] ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !11
  %i.ab = tail call ptr %i.aa(ptr noundef nonnull %i.z, ptr noundef nonnull %1, i32 noundef 512) #19, !inline_history !59 ; 6 uses
  %.not26.i = icmp eq ptr %i.ab, null
  br i1 %.not26.i, label %gvusershape_find.exit.thread.i, label %bb.ag

gvusershape_find.exit.thread.i:                   ; preds = %gvusershape_find.exit.i, %bb.h
  %.35 = phi double [ %.34, %gvusershape_find.exit.i ], [ %.36, %bb.h ]
  %i.ac = tail call noalias dereferenceable_or_null(120) ptr @calloc(i64 noundef 1, i64 noundef 120) #21 ; 27 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %gv_alloc.exit.i

bb.i:                                             ; preds = %gvusershape_find.exit.thread.i
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !60
  %i.af = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ae, ptr noundef nonnull @.str.6, i64 noundef 120) #22 ; 0 uses
  tail call fastcc void @graphviz_exit() #23
  unreachable

gv_alloc.exit.i:                                  ; preds = %gvusershape_find.exit.thread.i
  %i.ag = tail call ptr @agstrdup(ptr noundef null, ptr noundef nonnull %1) #19
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 3 uses
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !24
  %i.ai = tail call zeroext i1 @gvusershape_file_access(ptr noundef nonnull %i.ac)
  br i1 %i.ai, label %bb.l, label %bb.j

bb.j:                                             ; preds = %gv_alloc.exit.i
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 2 uses
  %.not.i28.i = icmp eq ptr %i.aj, null
  br i1 %.not.i28.i, label %freeUsershape.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = tail call i32 @agstrfree(ptr noundef null, ptr noundef nonnull %i.aj, i1 noundef zeroext false) #19 ; 0 uses
  br label %freeUsershape.exit.i

freeUsershape.exit.i:                             ; preds = %bb.k, %bb.j
  tail call void @free(ptr noundef nonnull %i.ac) #19
  br label %gvusershape_size_dpi.exit

bb.l:                                             ; preds = %gv_alloc.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %i.a, i8 0, i64 20, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 32 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16 ; 5 uses
  %.not.i29.i = icmp eq ptr %i.am, null
  br i1 %.not.i29.i, label %imagetype.exit.thread37.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.an = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 20, ptr noundef nonnull %i.am)
  %i.ao = icmp eq i64 %i.an, 20
  br i1 %i.ao, label %.preheader59.preheader.i.i, label %imagetype.exit.thread37.i

.preheader59.preheader.i.i:                       ; preds = %bb.m
  %lhsv66.i.i = load i64, ptr %i.a, align 16      ; 3 uses
  %.not67.i.i = icmp eq i64 %lhsv66.i.i, 727905341920923785
  %i.ap = trunc i64 %lhsv66.i.i to i32            ; 3 uses
  br i1 %.not67.i.i, label %.thread78.i.i, label %.preheader59.1.i.i

.thread78.i.i:                                    ; preds = %.preheader59.8.i.i, %.preheader59.6.i.i, %.preheader59.5.i.i, %.preheader59.4.i.i, %.preheader59.3.i.i, %.preheader59.2.i.i, %.preheader59.1.i.i, %.preheader59.preheader.i.i
  %.lcssa.ph.i.i = phi ptr [ getelementptr inbounds nuw (i8, ptr @knowntypes, i64 288), %.preheader59.8.i.i ], [ getelementptr inbounds nuw (i8, ptr @knowntypes, i64 192), %.preheader59.6.i.i ], [ getelementptr inbounds nuw (i8, ptr @knowntypes, i64 160), %.preheader59.5.i.i ], [ getelementptr inbounds nuw (i8, ptr @knowntypes, i64 128), %.preheader59.4.i.i ], [ getelementptr inbounds nuw (i8, ptr @knowntypes, i64 96), %.preheader59.3.i.i ], [ getelementptr inbounds nuw (i8, ptr @knowntypes, i64 64), %.preheader59.2.i.i ], [ getelementptr inbounds nuw (i8, ptr @knowntypes, i64 32), %.preheader59.1.i.i ], [ @knowntypes, %.preheader59.preheader.i.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i.i, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !61
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %.lcssa.ph.i.i, i64 16
  %i.au = load i32, ptr %i.at, align 16, !tbaa !64 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i32 %i.au, ptr %i.av, align 8, !tbaa !65
  br label %imagetype.exit.i

bb.n:                                             ; preds = %.preheader59.7.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 48 ; 2 uses
  store ptr @.str.27, ptr %i.aw, align 8, !tbaa !63
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 40 ; 2 uses
  store i32 9, ptr %i.ax, align 8, !tbaa !65
  %i.ay = call ptr @memchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 62, i64 noundef 20) #24
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %.preheader58.i.i, label %.thread49.i.i

.preheader58.i.i:                                 ; preds = %bb.n, %.preheader58.i.i
  %i.ba = call i32 @fgetc(ptr noundef nonnull %i.am)
  switch i32 %i.ba, label %.preheader58.i.i [
    i32 -1, label %imagetype.exit.thread51.i
    i32 62, label %.thread49.i.i
  ]

imagetype.exit.thread51.i:                        ; preds = %.preheader58.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.ad

.thread49.i.i:                                    ; preds = %.preheader58.i.i, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  store i32 0, ptr %i.b, align 4
  %i.bb = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 4, ptr noundef nonnull %i.am)
  %.not44.i.i = icmp eq i64 %i.bb, 4
  br i1 %.not44.i.i, label %.preheader.i.i, label %.thread52.i.i

.preheader.i.i:                                   ; preds = %.thread49.i.i
  %lhsv = load i32, ptr %i.b, align 4
  %.not37 = icmp eq i32 %lhsv, 1735815996
  br i1 %.not37, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  br label %bb.o

._crit_edge.i.i:                                  ; preds = %bb.p, %.preheader.i.i
  store ptr @.str.8, ptr %i.aw, align 8, !tbaa !63
  store i32 8, ptr %i.ax, align 8, !tbaa !65
  br label %.thread52.i.i

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.i
  %i.be = call i32 @fgetc(ptr noundef nonnull %i.am) ; 2 uses
  %.not46.i.i = icmp eq i32 %i.be, -1
  br i1 %.not46.i.i, label %.thread52.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) %i.bc, i64 3, i1 false)
  %i.bf = trunc i32 %i.be to i8
  store i8 %i.bf, ptr %i.bd, align 1, !tbaa !31
  %lhsv38 = load i32, ptr %i.b, align 4
  %.not39 = icmp eq i32 %lhsv38, 1735815996
  br i1 %.not39, label %._crit_edge.i.i, label %bb.o

end_hunk_0
begin_hunk_1_@gvusershape_size:bb.a
  %i.bl = getelementptr i8, ptr %i.a, i64 3
  %i.bm = load i64, ptr %i.bl, align 1
  %i.bn = xor i64 %i.bm, 3271128934917418323
  %i.bo = or i64 %i.bk, %i.bn
  %i.bp = icmp ne i64 %i.bo, 0
  %i.bq = zext i1 %i.bp to i32
  %.not42.1.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not42.1.i.i, label %.thread78.i.i, label %.preheader59.2.i.i

.preheader59.2.i.i:                               ; preds = %.preheader59.1.i.i
  %i.br = and i64 %lhsv66.i.i, 65535
  %.not69.i.i = icmp eq i64 %i.br, 19778
  br i1 %.not69.i.i, label %.thread78.i.i, label %.preheader59.3.i.i

.preheader59.3.i.i:                               ; preds = %.preheader59.2.i.i
  %.not71.i.i = icmp eq i32 %i.ap, 944130375
  br i1 %.not71.i.i, label %.thread78.i.i, label %.preheader59.4.i.i

.preheader59.4.i.i:                               ; preds = %.preheader59.3.i.i
  %i.bs = load i16, ptr %i.a, align 16
  %i.bt = xor i16 %i.bs, -9985
  %i.bu = getelementptr i8, ptr %i.a, i64 2
  %i.bv = load i8, ptr %i.bu, align 2
  %i.bw = zext i8 %i.bv to i16
  %i.bx = xor i16 %i.bw, 255
  %i.by = or i16 %i.bt, %i.bx
  %i.bz = icmp ne i16 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %.not42.4.i.i = icmp eq i32 %i.ca, 0
  br i1 %.not42.4.i.i, label %.thread78.i.i, label %.preheader59.5.i.i

.preheader59.5.i.i:                               ; preds = %.preheader59.4.i.i
  %i.cb = load i32, ptr %i.a, align 16
  %i.cc = xor i32 %i.cb, 1178882085
  %i.cd = getelementptr i8, ptr %i.a, i64 4
  %i.ce = load i8, ptr %i.cd, align 4
  %i.cf = zext i8 %i.ce to i32
  %i.cg = xor i32 %i.cf, 45
  %i.ch = or i32 %i.cc, %i.cg
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %.not42.5.i.i = icmp eq i32 %i.cj, 0
  br i1 %.not42.5.i.i, label %.thread78.i.i, label %.preheader59.6.i.i

.preheader59.6.i.i:                               ; preds = %.preheader59.5.i.i
  %.not73.i.i = icmp eq i32 %i.ap, -959196987
  br i1 %.not73.i.i, label %.thread78.i.i, label %.preheader59.7.i.i

.preheader59.7.i.i:                               ; preds = %.preheader59.6.i.i
  %i.ck = load i32, ptr %i.a, align 16
  %i.cl = xor i32 %i.ck, 1836597052
  %i.cm = getelementptr i8, ptr %i.a, i64 4
  %i.cn = load i8, ptr %i.cm, align 4
  %i.co = zext i8 %i.cn to i32
  %i.cp = xor i32 %i.co, 108
  %i.cq = or i32 %i.cl, %i.cp
  %i.cr = icmp ne i32 %i.cq, 0
  %i.cs = zext i1 %i.cr to i32
  %.not42.7.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not42.7.i.i, label %bb.n, label %.preheader59.8.i.i

.preheader59.8.i.i:                               ; preds = %.preheader59.7.i.i
  switch i32 %i.ap, label %imagetype.exit.thread37.i [
    i32 1179011410, label %bb.q
    i32 65536, label %.thread78.i.i
  ]

imagetype.exit.thread37.i:                        ; preds = %.preheader59.8.i.i, %bb.m, %bb.l
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  store ptr @.str.11, ptr %i.ct, align 8, !tbaa !63
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ac, i64 40
  store i32 0, ptr %i.cu, align 8, !tbaa !65
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %bb.r

imagetype.exit.i:                                 ; preds = %.thread52.i.i, %.thread78.i.i
  %.7.i.i = phi i32 [ %.5.i.i, %.thread52.i.i ], [ %i.au, %.thread78.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  switch i32 %.7.i.i, label %bb.ad [
    i32 0, label %bb.r
    i32 2, label %bb.u
    i32 3, label %bb.v
    i32 1, label %bb.w
    i32 4, label %bb.x
    i32 6, label %bb.y
    i32 11, label %bb.z
    i32 8, label %bb.aa
    i32 5, label %bb.ab
    i32 12, label %bb.ac
  ]

bb.r:                                             ; preds = %imagetype.exit.i, %imagetype.exit.thread37.i
  %i.cv = load ptr, ptr %i.ah, align 8, !tbaa !24 ; 4 uses
  %i.cw = call ptr @find_user_shape(ptr noundef %i.cv) #19 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ac, i64 96
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !66
  %.not27.i = icmp eq ptr %i.cw, null
  br i1 %.not27.i, label %bb.s, label %bb.ad

bb.s:                                             ; preds = %bb.r
  call void (ptr, ...) @agwarningf(ptr noundef nonnull @.str.3, ptr noundef %i.cv) #19
  %.not.i14 = icmp eq ptr %i.cv, null
  br i1 %.not.i14, label %freeUsershape.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = call i32 @agstrfree(ptr noundef null, ptr noundef nonnull %i.cv, i1 noundef zeroext false) #19 ; 0 uses
  br label %freeUsershape.exit

freeUsershape.exit:                               ; preds = %bb.s, %bb.t
  call void @free(ptr noundef nonnull %i.ac) #19
  br label %gvusershape_size_dpi.exit

bb.u:                                             ; preds = %imagetype.exit.i
  call fastcc void @gif_size(ptr noundef nonnull %i.ac)
  br label %bb.ad

bb.v:                                             ; preds = %imagetype.exit.i
  call fastcc void @png_size(ptr noundef nonnull %i.ac)
  br label %bb.ad

bb.w:                                             ; preds = %imagetype.exit.i
  call fastcc void @bmp_size(ptr noundef nonnull %i.ac)
  br label %bb.ad

bb.x:                                             ; preds = %imagetype.exit.i
  call fastcc void @jpeg_size(ptr noundef nonnull %i.ac)
  br label %bb.ad

bb.y:                                             ; preds = %imagetype.exit.i
  call fastcc void @ps_size(ptr noundef nonnull %i.ac)
  br label %bb.ad

bb.z:                                             ; preds = %imagetype.exit.i, %imagetype.exit.thread39.i
  call fastcc void @webp_size(ptr noundef nonnull %i.ac)
  br label %bb.ad

bb.aa:                                            ; preds = %imagetype.exit.i
  call fastcc void @svg_size(ptr noundef nonnull %i.ac)
  br label %bb.ad

bb.ab:                                            ; preds = %imagetype.exit.i
  call fastcc void @pdf_size(ptr noundef nonnull %i.ac)
  br label %bb.ad

bb.ac:                                            ; preds = %imagetype.exit.i
  call fastcc void @ico_size(ptr noundef nonnull %i.ac)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.r, %imagetype.exit.i, %imagetype.exit.thread.i, %imagetype.exit.thread51.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ac, i64 29
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !26, !range !27, !noundef !28
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.ae, label %gvusershape_file_release.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.dc = load ptr, ptr %i.al, align 8, !tbaa !16 ; 2 uses
  %.not.i30.i = icmp eq ptr %i.dc, null
  br i1 %.not.i30.i, label %gvusershape_file_release.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dd = call i32 @fclose(ptr noundef nonnull %i.dc) ; 0 uses
  store ptr null, ptr %i.al, align 8, !tbaa !16
  br label %gvusershape_file_release.exit.i

gvusershape_file_release.exit.i:                  ; preds = %bb.af, %bb.ae, %bb.ad
  %i.de = load ptr, ptr @ImageDict, align 8, !tbaa !8 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !11
  %i.dg = call ptr %i.df(ptr noundef nonnull %i.de, ptr noundef nonnull %i.ac, i32 noundef 1) #19, !inline_history !67 ; 0 uses
  br label %bb.aj

bb.ag:                                            ; preds = %gvusershape_find.exit.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ab, i64 29
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !26, !range !27, !noundef !28
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ab, i64 32 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !16 ; 2 uses
  %.not.i31.i = icmp eq ptr %i.dl, null
  br i1 %.not.i31.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dm = tail call i32 @fclose(ptr noundef nonnull %i.dl) ; 0 uses
  store ptr null, ptr %i.dk, align 8, !tbaa !16
  br label %bb.aj

bb.aj:                                            ; preds = %gvusershape_file_release.exit.i, %bb.ag, %bb.ah, %bb.ai
  %.33 = phi double [ %.34, %bb.ai ], [ %.34, %bb.ah ], [ %.34, %bb.ag ], [ %.35, %gvusershape_file_release.exit.i ]
  %.0.i.ph = phi ptr [ %i.ab, %bb.ai ], [ %i.ab, %bb.ah ], [ %i.ab, %bb.ag ], [ %i.ac, %gvusershape_file_release.exit.i ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 88
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !29 ; 2 uses
  %.not8.i = icmp eq i32 %i.do, 0
  %i.dp = sitofp i32 %i.do to double
  %.sroa.3.0.i = select i1 %.not8.i, double %.33, double %i.dp
  %i.dq = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 72
  %i.dr = load <2 x double>, ptr %i.dq, align 8, !tbaa !30
  %i.ds = fmul <2 x double> %i.dr, splat (double 7.200000e+01)
  %i.dt = insertelement <2 x double> poison, double %.sroa.3.0.i, i64 0
  %i.du = shufflevector <2 x double> %i.dt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dv = fdiv <2 x double> %i.ds, %i.du          ; 2 uses
  %2 = extractelement <2 x double> %i.dv, i64 0
  %3 = fptosi double %2 to i32
  %4 = extractelement <2 x double> %i.dv, i64 1
  %5 = fptosi double %4 to i32
  %6 = zext i32 %5 to i64
  %7 = shl nuw i64 %6, 32
  %8 = zext i32 %3 to i64
  %9 = or disjoint i64 %7, %8
  br label %gvusershape_size_dpi.exit

gvusershape_size_dpi.exit:                        ; preds = %bb.aj, %freeUsershape.exit.i, %freeUsershape.exit, %bb.a, %bb.b
  %.sroa.06.0.insert.insert = phi i64 [ -1, %bb.a ], [ -1, %bb.b ], [ %9, %bb.aj ], [ -1, %freeUsershape.exit.i ], [ -1, %freeUsershape.exit ]
  ret i64 %.sroa.06.0.insert.insert
}

declare i32 @dtclose(ptr noundef) local_unnamed_addr #3

declare ptr @dtopen(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @agstrdup(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @find_user_shape(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @gif_size(ptr nofree noundef captures(none) initializes((88, 92)) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call i32 @fseek(ptr noundef %i.c, i64 noundef 6, i32 noundef 0) ; 0 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.f = tail call i32 @fgetc(ptr noundef %i.e)
  %i.g = tail call i32 @feof(ptr noundef %i.e) #19
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.b, label %get_int_lsb_first.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @fgetc(ptr noundef %i.e)
  %i.i = tail call i32 @feof(ptr noundef %i.e) #19
  %.not.i.1 = icmp eq i32 %i.i, 0
  br i1 %.not.i.1, label %bb.c, label %get_int_lsb_first.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = shl i32 %i.h, 8
  %i.k = or i32 %i.j, %i.f                        ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %get_int_lsb_first.exit.thread, label %get_int_lsb_first.exit

get_int_lsb_first.exit:                           ; preds = %bb.c
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.n = tail call i32 @fgetc(ptr noundef %i.m)
  %i.o = tail call i32 @feof(ptr noundef %i.m) #19
  %.not.i8 = icmp eq i32 %i.o, 0
  br i1 %.not.i8, label %bb.d, label %get_int_lsb_first.exit.thread

bb.d:                                             ; preds = %get_int_lsb_first.exit
  %i.p = tail call i32 @fgetc(ptr noundef %i.m)
  %i.q = tail call i32 @feof(ptr noundef %i.m) #19
  %.not.i8.1 = icmp eq i32 %i.q, 0
  br i1 %.not.i8.1, label %bb.e, label %get_int_lsb_first.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = shl i32 %i.p, 8
  %i.s = or i32 %i.r, %i.n                        ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %get_int_lsb_first.exit.thread, label %get_int_lsb_first.exit12

get_int_lsb_first.exit12:                         ; preds = %bb.e
  %i.u = uitofp nneg i32 %i.k to double
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.u, ptr %i.v, align 8, !tbaa !68
  %i.w = uitofp nneg i32 %i.s to double
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.w, ptr %i.x, align 8, !tbaa !69
  br label %get_int_lsb_first.exit.thread

get_int_lsb_first.exit.thread:                    ; preds = %bb.a, %bb.b, %get_int_lsb_first.exit, %bb.d, %bb.e, %bb.c, %get_int_lsb_first.exit12
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @png_size(ptr nofree noundef captures(none) initializes((88, 92)) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call i32 @fseek(ptr noundef %i.c, i64 noundef 16, i32 noundef 0) ; 0 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !16   ; 8 uses
  %i.f = tail call i32 @fgetc(ptr noundef %i.e)
  %i.g = tail call i32 @feof(ptr noundef %i.e) #19
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.b, label %get_int_msb_first.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @fgetc(ptr noundef %i.e)
  %i.i = tail call i32 @feof(ptr noundef %i.e) #19
  %.not.i.1 = icmp eq i32 %i.i, 0
  br i1 %.not.i.1, label %bb.c, label %get_int_msb_first.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @fgetc(ptr noundef %i.e)
  %i.k = tail call i32 @feof(ptr noundef %i.e) #19
  %.not.i.2 = icmp eq i32 %i.k, 0
  br i1 %.not.i.2, label %bb.d, label %get_int_msb_first.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i32 @fgetc(ptr noundef %i.e)
  %i.m = tail call i32 @feof(ptr noundef %i.e) #19
  %.not.i.3 = icmp eq i32 %i.m, 0
  br i1 %.not.i.3, label %bb.e, label %get_int_msb_first.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.n = shl i32 %i.f, 16
  %i.o = shl i32 %i.h, 8
  %i.p = or i32 %i.n, %i.o
  %i.q = or i32 %i.j, %i.p
  %i.r = shl i32 %i.q, 8
  %i.s = or i32 %i.l, %i.r                        ; 2 uses
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %get_int_msb_first.exit.thread, label %get_int_msb_first.exit

get_int_msb_first.exit:                           ; preds = %bb.e
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !16   ; 8 uses
  %i.v = tail call i32 @fgetc(ptr noundef %i.u)
  %i.w = tail call i32 @feof(ptr noundef %i.u) #19
  %.not.i8 = icmp eq i32 %i.w, 0
  br i1 %.not.i8, label %bb.f, label %get_int_msb_first.exit.thread

bb.f:                                             ; preds = %get_int_msb_first.exit
  %i.x = tail call i32 @fgetc(ptr noundef %i.u)
  %i.y = tail call i32 @feof(ptr noundef %i.u) #19
  %.not.i8.1 = icmp eq i32 %i.y, 0
  br i1 %.not.i8.1, label %bb.g, label %get_int_msb_first.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.z = tail call i32 @fgetc(ptr noundef %i.u)
  %i.aa = tail call i32 @feof(ptr noundef %i.u) #19
  %.not.i8.2 = icmp eq i32 %i.aa, 0
  br i1 %.not.i8.2, label %bb.h, label %get_int_msb_first.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ab = tail call i32 @fgetc(ptr noundef %i.u)
  %i.ac = tail call i32 @feof(ptr noundef %i.u) #19
  %.not.i8.3 = icmp eq i32 %i.ac, 0
  br i1 %.not.i8.3, label %bb.i, label %get_int_msb_first.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.ad = shl i32 %i.v, 16
  %i.ae = shl i32 %i.x, 8
  %i.af = or i32 %i.ad, %i.ae
  %i.ag = or i32 %i.z, %i.af
  %i.ah = shl i32 %i.ag, 8
  %i.ai = or i32 %i.ab, %i.ah                     ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %get_int_msb_first.exit.thread, label %get_int_msb_first.exit11

get_int_msb_first.exit11:                         ; preds = %bb.i
  %i.ak = uitofp nneg i32 %i.s to double
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.ak, ptr %i.al, align 8, !tbaa !68
  %i.am = uitofp nneg i32 %i.ai to double
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 80
  store double %i.am, ptr %i.an, align 8, !tbaa !69
  br label %get_int_msb_first.exit.thread

get_int_msb_first.exit.thread:                    ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %get_int_msb_first.exit, %bb.f, %bb.g, %bb.h, %bb.i, %bb.e, %get_int_msb_first.exit11
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @bmp_size(ptr nofree noundef captures(none) initializes((88, 92)) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.a, align 8, !tbaa !29
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !16
  %i.d = tail call i32 @fseek(ptr noundef %i.c, i64 noundef 16, i32 noundef 0) ; 0 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.f = tail call i32 @fgetc(ptr noundef %i.e)
  %i.g = tail call i32 @feof(ptr noundef %i.e) #19
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.b, label %get_int_lsb_first.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = tail call i32 @fgetc(ptr noundef %i.e)
  %i.i = tail call i32 @feof(ptr noundef %i.e) #19
  %.not.i.1 = icmp eq i32 %i.i, 0
  br i1 %.not.i.1, label %bb.c, label %get_int_lsb_first.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.j = shl i32 %i.h, 8
  %i.k = or i32 %i.j, %i.f                        ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %get_int_lsb_first.exit.thread, label %get_int_lsb_first.exit

get_int_lsb_first.exit:                           ; preds = %bb.c
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !16   ; 4 uses
  %i.n = tail call i32 @fgetc(ptr noundef %i.m)
  %i.o = tail call i32 @feof(ptr noundef %i.m) #19
  %.not.i10 = icmp eq i32 %i.o, 0
  br i1 %.not.i10, label %bb.d, label %get_int_lsb_first.exit.thread

bb.d:                                             ; preds = %get_int_lsb_first.exit
  %i.p = tail call i32 @fgetc(ptr noundef %i.m)
  %i.q = tail call i32 @feof(ptr noundef %i.m) #19
  %.not.i10.1 = icmp eq i32 %i.q, 0
  br i1 %.not.i10.1, label %bb.e, label %get_int_lsb_first.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.r = shl i32 %i.p, 8
end_hunk_1
