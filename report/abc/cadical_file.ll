Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_file?download=true
inline.NumInlined: 86
inline.NumDeleted: 42
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%"class.std::vector.129" = type { %"struct.std::_Vector_base.130" }
%"struct.std::_Vector_base.130" = type { %"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl" }
%"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl" = type { %"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl_data" }
%"struct.std::_Vector_base<char *, std::allocator<char *>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to open '%s' to check signature\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"file type signature check for '%s' failed\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c".xz\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"xz -c -d %s\00", align 1
@_ZN7CaDiCaLL5xzsigE = internal global [8 x i32] [i32 253, i32 55, i32 122, i32 88, i32 90, i32 0, i32 0, i32 -1], align 16
@.str.9 = private unnamed_addr constant [6 x i8] c".lzma\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"lzma -c -d %s\00", align 1
@_ZN7CaDiCaLL7lzmasigE = internal global [2 x i32] [i32 93, i32 -1], align 4
@.str.11 = private unnamed_addr constant [5 x i8] c".bz2\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"bzip2 -c -d %s\00", align 1
@_ZN7CaDiCaLL6bz2sigE = internal global [4 x i32] [i32 66, i32 90, i32 104, i32 -1], align 16
@.str.13 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"gzip -c -d %s\00", align 1
@_ZN7CaDiCaLL5gzsigE = internal global [3 x i32] [i32 31, i32 139, i32 -1], align 4
@.str.15 = private unnamed_addr constant [4 x i8] c".7z\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"7z x -so %s 2>/dev/null\00", align 1
@_ZN7CaDiCaLL5sig7zE = internal global [7 x i32] [i32 55, i32 122, i32 188, i32 175, i32 39, i32 28, i32 -1], align 16
@.str.17 = private unnamed_addr constant [6 x i8] c"xz -c\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"bzip2 -c\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"gzip -c\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"7z a -an -txz -si -so\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN7CaDiCaL4FileC1EPNS_8InternalEbiiP8_IO_FILEPKc = unnamed_addr alias void (ptr, ptr, i1, i32, i32, ptr, ptr), ptr @_ZN7CaDiCaL4FileC2EPNS_8InternalEbiiP8_IO_FILEPKc
@_ZN7CaDiCaL4FileD1Ev = unnamed_addr alias void (ptr), ptr @_ZN7CaDiCaL4FileD2Ev

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable
define void @_ZN7CaDiCaL4FileC2EPNS_8InternalEbiiP8_IO_FILEPKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef %1, i1 zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef readonly captures(none) %6) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %3, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %4, ptr %i.b, align 4, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %5, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = tail call noalias ptr @strdup(ptr noundef %6) #20
  store ptr %i.e, ptr %i.d, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 1, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 0, ptr %i.g, align 8, !tbaa !40
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias ptr @strdup(ptr noundef readonly captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL4File6existsEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @access(ptr noundef %0, i32 noundef 4) #20
  %.not3 = icmp eq i32 %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %.not3, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @access(ptr noundef readonly captures(none), i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL4File8writableEPKc(ptr noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 7 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(10) @.str) #21
  %.not23 = icmp eq i32 %i.a, 0
  br i1 %.not23, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load i8, ptr %0, align 1, !tbaa !20
  %.not24 = icmp eq i8 %i.b, 0
  br i1 %.not24, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.c = tail call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 47) #21 ; 3 uses
  %.not25 = icmp eq ptr %i.c, null
  br i1 %.not25, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.d = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %1) #20
  %.not26 = icmp eq i32 %i.d, 0
  br i1 %.not26, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.e = tail call ptr @__errno_location() #22
  %i.f = load i32, ptr %i.e, align 4, !tbaa !21
  %i.g = icmp eq i32 %i.f, 2
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !43
  %i.j = and i32 %i.i, 61440
  %i.k = icmp eq i32 %i.j, 16384
  br i1 %i.k, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = tail call i32 @access(ptr noundef nonnull %0, i32 noundef 2) #20
  %.not27 = icmp eq i32 %i.l, 0
  br label %bb.q

bb.i:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !20
  %.not28 = icmp eq i8 %i.n, 0
  br i1 %.not28, label %bb.q, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = ptrtoint ptr %i.c to i64
  %i.p = ptrtoint ptr %0 to i64
  %i.q = sub i64 %i.o, %i.p                       ; 3 uses
  %i.r = add i64 %i.q, 1
  %i.s = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.r) #23 ; 5 uses
  %i.t = tail call ptr @strncpy(ptr noundef nonnull %i.s, ptr noundef nonnull %0, i64 noundef %i.q) #20 ; 0 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.u, align 1, !tbaa !20
  %i.v = call i32 @stat(ptr noundef nonnull %i.s, ptr noundef nonnull %1) #20
  %.not29 = icmp eq i32 %i.v, 0
  br i1 %.not29, label %bb.k, label %bb.p

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i32, ptr %i.w, align 8, !tbaa !43
  %i.y = and i32 %i.x, 61440
  %i.z = icmp eq i32 %i.y, 16384
  br i1 %i.z, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.aa = tail call i32 @access(ptr noundef nonnull %i.s, i32 noundef 2) #20
  %.not30 = icmp eq i32 %i.aa, 0
  br i1 %.not30, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ab = call i32 @stat(ptr noundef nonnull %0, ptr noundef nonnull %1) #20
  %.not31 = icmp eq i32 %i.ab, 0
  br i1 %.not31, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ac = tail call ptr @__errno_location() #22
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !21
  %i.ae = icmp eq i32 %i.ad, 2
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.af = tail call i32 @access(ptr noundef nonnull %0, i32 noundef 2) #20
  %.not32 = icmp eq i32 %i.af, 0
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.j, %bb.k, %bb.l
  %.0 = phi i1 [ false, %bb.j ], [ false, %bb.k ], [ %i.ae, %bb.n ], [ %.not32, %bb.o ], [ false, %bb.l ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.i, %bb.g, %bb.p, %bb.f, %bb.h
  %.1 = phi i1 [ %.0, %bb.p ], [ false, %bb.g ], [ %i.g, %bb.f ], [ %.not27, %bb.h ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.q
  %.2 = phi i1 [ %.1, %bb.q ], [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.2
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL4File6pipingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call i32 @fileno(ptr noundef %i.b) #20
  %i.d = call i32 @fstat(i32 noundef %i.c, ptr noundef nonnull %1) #20
  %.not = icmp ne i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 61440
  %i.h = icmp eq i32 %i.g, 4096
  %.0 = select i1 %.not, i1 true, i1 %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i1 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fstat(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL4File5matchEPNS_8InternalEPKcPKi(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.1) ; 6 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7warningEPKcz(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull @.str.2, ptr noundef %1) #20
  br label %bb.h

bb.c:                                             ; preds = %.preheader, %getc_unlocked.exit
  %.020 = phi ptr [ %2, %.preheader ], [ %i.o, %getc_unlocked.exit ] ; 3 uses
  %i.d = load i32, ptr %.020, align 4, !tbaa !21  ; 2 uses
  %.not18 = icmp eq i32 %i.d, -1
  br i1 %.not18, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.c
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !27   ; 3 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !28
  %.not.i = icmp ult ptr %i.f, %i.g
  br i1 %.not.i, label %bb.f, label %bb.e, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.h = tail call i32 @__uflow(ptr noundef nonnull %i.a) #20, !inline_history !0
  %.pre = load i32, ptr %.020, align 4, !tbaa !21
  br label %getc_unlocked.exit

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  store ptr %i.i, ptr %i.b, align 8, !tbaa !27
  %i.j = load i8, ptr %i.f, align 1, !tbaa !20
  %i.k = zext i8 %i.j to i32
  br label %getc_unlocked.exit

getc_unlocked.exit:                               ; preds = %bb.e, %bb.f
  %i.l = phi i32 [ %.pre, %bb.e ], [ %i.d, %bb.f ]
  %i.m = phi i32 [ %i.h, %bb.e ], [ %i.k, %bb.f ]
  %i.n = icmp eq i32 %i.m, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %.020, i64 4
  br i1 %i.n, label %bb.c, label %bb.g, !llvm.loop !1

bb.g:                                             ; preds = %getc_unlocked.exit
  %i.p = tail call i32 @fclose(ptr noundef nonnull %i.a) ; 0 uses
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7warningEPKcz(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull @.str.3, ptr noundef %1) #20
  br label %bb.h

bb.h:                                             ; preds = %.critedge, %bb.g, %bb.b
  %.016 = phi i1 [ false, %bb.b ], [ false, %bb.g ], [ true, %.critedge ]
  ret i1 %.016
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

declare void @_ZN7CaDiCaL8Internal7warningEPKcz(ptr noundef nonnull align 8 dereferenceable(7296), ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind uwtable
define noundef i64 @_ZN7CaDiCaL4File4sizeEPKc(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = call i32 @stat(ptr noundef %0, ptr noundef nonnull %1) #20
  %.not = icmp eq i32 %i.a, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load i64, ptr %i.b, align 8
  %.0 = select i1 %.not, i64 %i.c, i64 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i64 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN7CaDiCaL4File12find_programEPKc(ptr noundef %0) local_unnamed_addr #5 align 2 {
bb.a:
  %1 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21
  %i.b = tail call ptr @getenv(ptr noundef nonnull @.str.4) #20 ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #21 ; 3 uses
  %i.d = add i64 %i.c, 1
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #23 ; 4 uses
  %i.f = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull dereferenceable(1) %i.b) #20 ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %.not41 = icmp eq i64 %i.c, 0
  br i1 %.not41, label %._crit_edge, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.h = add i64 %i.a, 1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.d
  %.03040 = phi ptr [ %i.e, %.preheader.lr.ph ], [ %i.j, %bb.d ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.preheader
  %.0 = phi ptr [ %.03040, %.preheader ], [ %i.j, %bb.c ] ; 3 uses
  %i.i = load i8, ptr %.0, align 1, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 4 uses
  switch i8 %i.i, label %bb.c [
    i8 0, label %.critedge
    i8 58, label %.critedge
  ], !llvm.loop !44

.critedge:                                        ; preds = %bb.c, %bb.c
  store i8 0, ptr %.0, align 1, !tbaa !20
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %.03040 to i64
  %i.m = sub i64 %i.h, %i.l
  %i.n = add i64 %i.m, %i.k                       ; 2 uses
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #23 ; 5 uses
  %i.p = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.o, i64 noundef %i.n, ptr noundef nonnull @.str.5, ptr noundef nonnull %.03040, ptr noundef nonnull %0) #20 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.q = call i32 @stat(ptr noundef nonnull readonly %i.o, ptr noundef nonnull %1) #20
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %_ZN7CaDiCaL4File6existsEPKc.exit, label %_ZN7CaDiCaL4File6existsEPKc.exit.thread

_ZN7CaDiCaL4File6existsEPKc.exit.thread:          ; preds = %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.d

_ZN7CaDiCaL4File6existsEPKc.exit:                 ; preds = %.critedge
  %i.r = tail call i32 @access(ptr noundef nonnull readonly %i.o, i32 noundef 4) #20
  %.not3.i = icmp eq i32 %i.r, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br i1 %.not3.i, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %_ZN7CaDiCaL4File6existsEPKc.exit, %_ZN7CaDiCaL4File6existsEPKc.exit.thread
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #24
  %i.s = icmp ult ptr %i.j, %i.g
  br i1 %i.s, label %.preheader, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %_ZN7CaDiCaL4File6existsEPKc.exit, %bb.d, %bb.b
  %.031.lcssa = phi ptr [ null, %bb.b ], [ %i.o, %_ZN7CaDiCaL4File6existsEPKc.exit ], [ null, %bb.d ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #24
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %._crit_edge
  %.032 = phi ptr [ %.031.lcssa, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.032
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind uwtable
define noalias noundef ptr @_ZN7CaDiCaL4File9open_fileEPNS_8InternalEPKcS4_(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef %2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noalias noundef ptr @_ZN7CaDiCaL4File9read_fileEPNS_8InternalEPKc(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %1, ptr noundef nonnull @.str.1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind uwtable
define noalias noundef ptr @_ZN7CaDiCaL4File10write_fileEPNS_8InternalEPKc(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = tail call noalias noundef ptr @fopen(ptr noundef readonly %1, ptr noundef nonnull @.str.6)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL4File9split_strEPKcRSt6vectorIPcSaIS4_EE(ptr noundef %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #5 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.023 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]  ; 3 uses
  %i.a = load i8, ptr %.023, align 1, !tbaa !20   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.023, i64 1
  switch i8 %i.a, label %.preheader.lr.ph [
    i8 32, label %bb.b
    i8 0, label %.critedge._crit_edge
  ]

.preheader.lr.ph:                                 ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit, %.preheader.lr.ph
  %i.e = phi i8 [ %i.a, %.preheader.lr.ph ], [ %i.ak, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ]
  %.12436 = phi ptr [ %.023, %.preheader.lr.ph ], [ %.1, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ] ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.d
  %i.f = phi i8 [ %.pre, %bb.d ], [ %i.e, %.preheader ]
  %.0 = phi ptr [ %i.g, %bb.d ], [ %.12436, %.preheader ] ; 3 uses
  switch i8 %i.f, label %bb.d [
    i8 0, label %.critedge2
    i8 32, label %.critedge2
  ]

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.g, align 1, !tbaa !20
  br label %bb.c, !llvm.loop !46

.critedge2:                                       ; preds = %bb.c, %bb.c
  %i.h = ptrtoint ptr %.0 to i64
  %i.i = ptrtoint ptr %.12436 to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  %i.k = add i64 %i.j, 1
  %i.l = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.k) #23 ; 4 uses
  %i.m = tail call ptr @strncpy(ptr noundef nonnull %i.l, ptr noundef nonnull %.12436, i64 noundef %i.j) #20 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.n, align 1, !tbaa !20
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !34   ; 4 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !35
  %.not.i = icmp eq ptr %i.o, %i.p
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.critedge2
  store ptr %i.l, ptr %i.o, align 8, !tbaa !36
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.q, ptr %i.c, align 8, !tbaa !34
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit.preheader

bb.f:                                             ; preds = %.critedge2
  %i.r = load ptr, ptr %1, align 8, !tbaa !37     ; 4 uses
  %i.s = ptrtoint ptr %i.o to i64
  %i.t = ptrtoint ptr %i.r to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 5 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.g, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #25
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.w = ashr exact i64 %i.u, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i, %i.w ; 2 uses
  %i.y = icmp ult i64 %i.x, %i.w
  %i.z = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975)
  %i.aa = select i1 %i.y, i64 1152921504606846975, i64 %i.z ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #23 ; 4 uses
  %i.ad = getelementptr inbounds i8, ptr %i.ac, i64 %i.u ; 2 uses
  store ptr %i.l, ptr %i.ad, align 8, !tbaa !36
  %i.ae = icmp sgt i64 %i.u, 0
  br i1 %i.ae, label %bb.h, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ac, ptr align 8 %i.r, i64 %i.u, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.not.i17.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !35
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.ah, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.ai) #24
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i
  store ptr %i.ac, ptr %1, align 8, !tbaa !37
  store ptr %i.af, ptr %i.c, align 8, !tbaa !34
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.aa
  store ptr %i.aj, ptr %i.d, align 8, !tbaa !35
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit.preheader

_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit.preheader: ; preds = %bb.e, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit

_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit:     ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit.preheader, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  %.1 = phi ptr [ %i.al, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit ], [ %.0, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit.preheader ] ; 3 uses
  %i.ak = load i8, ptr %.1, align 1, !tbaa !20    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.1, i64 1
  switch i8 %i.ak, label %.preheader [
    i8 32, label %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
    i8 0, label %.critedge._crit_edge
  ]

.critedge._crit_edge:                             ; preds = %bb.b, %_ZNSt6vectorIPcSaIS0_EE9push_backERKS0_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL4File17delete_str_vectorERSt6vectorIPcSaIS2_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47   ; 2 uses
  %.not7 = icmp eq ptr %i.a, %i.c
  br i1 %.not7, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.sroa.04.08 = phi ptr [ %i.f, %bb.c ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.sroa.04.08, align 8, !tbaa !36 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.04.08, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define noalias noundef ptr @_ZN7CaDiCaL4File9open_pipeEPNS_8InternalEPKcS4_S4_(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 align 2 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.b ]     ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.0
  %i.b = load i8, ptr %i.a, align 1, !tbaa !20
  %i.c = add i64 %.0, 1                           ; 2 uses
  switch i8 %i.b, label %bb.b [
    i8 0, label %.critedge
    i8 32, label %.critedge
  ], !llvm.loop !48

.critedge:                                        ; preds = %bb.b, %bb.b
  %i.d = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.c) #23 ; 4 uses
  %i.e = tail call ptr @strncpy(ptr noundef nonnull %i.d, ptr noundef nonnull %1, i64 noundef %.0) #20 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0
  store i8 0, ptr %i.f, align 1, !tbaa !20
  %i.g = tail call noundef ptr @_ZN7CaDiCaL4File12find_programEPKc(ptr noundef nonnull %i.d) ; 2 uses
  tail call void @_ZdaPv(ptr noundef nonnull %i.d) #24
  %.not32 = icmp eq ptr %i.g, null
  br i1 %.not32, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.critedge
  tail call void @_ZdaPv(ptr noundef nonnull %i.g) #24
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21
  %i.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #21
  %i.j = add i64 %i.i, %i.h                       ; 2 uses
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #23 ; 3 uses
  %i.l = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.k, i64 noundef %i.j, ptr noundef nonnull %1, ptr noundef nonnull %2) #20 ; 0 uses
  %i.m = tail call noalias ptr @popen(ptr noundef nonnull %i.k, ptr noundef %3)
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #24
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %bb.c
  %.028 = phi ptr [ %i.m, %bb.c ], [ null, %.critedge ]
  ret ptr %.028
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @popen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noalias noundef ptr @_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.a = call i32 @stat(ptr noundef readonly %3, ptr noundef nonnull %4) #20
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN7CaDiCaL4File6existsEPKc.exit, label %_ZN7CaDiCaL4File6existsEPKc.exit.thread

_ZN7CaDiCaL4File6existsEPKc.exit.thread:          ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.e

_ZN7CaDiCaL4File6existsEPKc.exit:                 ; preds = %bb.a
  %i.b = tail call i32 @access(ptr noundef readonly %3, i32 noundef 4) #20
  %.not3.i = icmp eq i32 %i.b, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br i1 %.not3.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %_ZN7CaDiCaL4File6existsEPKc.exit
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %5

5:                                                ; preds = %bb.b
  %6 = tail call noalias ptr @fopen(ptr noundef %3, ptr noundef nonnull @.str.1) ; 6 uses
  %.not.i10 = icmp eq ptr %6, null
  br i1 %.not.i10, label %9, label %.preheader.i

.preheader.i:                                     ; preds = %5
  %7 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %10

9:                                                ; preds = %5
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7warningEPKcz(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull @.str.2, ptr noundef %3) #20
  br label %bb.e

10:                                               ; preds = %bb.c, %.preheader.i
  %.020.i = phi ptr [ %2, %.preheader.i ], [ %24, %bb.c ] ; 3 uses
  %11 = load i32, ptr %.020.i, align 4, !tbaa !21 ; 2 uses
  %.not18.i = icmp eq i32 %11, -1
  br i1 %.not18.i, label %_ZN7CaDiCaL4File5matchEPNS_8InternalEPKcPKi.exit, label %12

12:                                               ; preds = %10
  %13 = load ptr, ptr %7, align 8, !tbaa !27      ; 3 uses
  %14 = load ptr, ptr %8, align 8, !tbaa !28
  %.not.i.i = icmp ult ptr %13, %14
  br i1 %.not.i.i, label %17, label %15, !prof !29

15:                                               ; preds = %12
  %16 = tail call i32 @__uflow(ptr noundef nonnull %6) #20, !inline_history !0
  %.pre.i = load i32, ptr %.020.i, align 4, !tbaa !21
  br label %bb.c

17:                                               ; preds = %12
  %18 = getelementptr inbounds nuw i8, ptr %13, i64 1
  store ptr %18, ptr %7, align 8, !tbaa !27
  %19 = load i8, ptr %13, align 1, !tbaa !20
  %20 = zext i8 %19 to i32
  br label %bb.c

bb.c:                                             ; preds = %17, %15
  %21 = phi i32 [ %.pre.i, %15 ], [ %11, %17 ]
  %22 = phi i32 [ %16, %15 ], [ %20, %17 ]
  %23 = icmp eq i32 %22, %21
  %24 = getelementptr inbounds nuw i8, ptr %.020.i, i64 4
  br i1 %23, label %10, label %25, !llvm.loop !1

25:                                               ; preds = %bb.c
  %26 = tail call i32 @fclose(ptr noundef nonnull %6) ; 0 uses
  tail call void (ptr, ptr, ...) @_ZN7CaDiCaL8Internal7warningEPKcz(ptr noundef nonnull align 8 dereferenceable(7296) %0, ptr noundef nonnull @.str.3, ptr noundef %3) #20
  br label %bb.e

_ZN7CaDiCaL4File5matchEPNS_8InternalEPKcPKi.exit: ; preds = %10
  %27 = tail call i32 @fclose(ptr noundef nonnull %6) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZN7CaDiCaL4File5matchEPNS_8InternalEPKcPKi.exit, %bb.b
  %i.c = tail call noundef ptr @_ZN7CaDiCaL4File9open_pipeEPNS_8InternalEPKcS4_S4_(ptr poison, ptr noundef %1, ptr noundef %3, ptr noundef nonnull @.str.1)
  br label %bb.e

bb.e:                                             ; preds = %25, %9, %_ZN7CaDiCaL4File6existsEPKc.exit.thread, %_ZN7CaDiCaL4File6existsEPKc.exit, %bb.d
  %.0 = phi ptr [ %i.c, %bb.d ], [ null, %_ZN7CaDiCaL4File6existsEPKc.exit ], [ null, %_ZN7CaDiCaL4File6existsEPKc.exit.thread ], [ null, %9 ], [ null, %25 ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define noalias noundef ptr @_ZN7CaDiCaL4File10write_pipeEPNS_8InternalEPKcS4_Ri(ptr nofree readnone captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %4 = alloca %"class.std::vector.129", align 8   ; 8 uses
  %i.a = alloca [2 x i32], align 4                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @_ZN7CaDiCaL4File9split_strEPKcRSt6vectorIPcSaIS4_EE(ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %4)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, %i.e
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.c, align 8, !tbaa !36
  %.pre = load ptr, ptr %4, align 8, !tbaa !37
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !37     ; 4 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 6 uses
  %i.j = icmp eq i64 %i.i, 9223372036854775800
  br i1 %i.j, label %bb.d, label %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #25
  unreachable

_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.c
  %i.k = ashr exact i64 %i.i, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 1)
  %i.l = add nsw i64 %.sroa.speculated.i.i.i.i, %i.k ; 2 uses
  %i.m = icmp ult i64 %i.l, %i.k
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.l, i64 1152921504606846975)
  %i.o = select i1 %i.m, i64 1152921504606846975, i64 %i.n ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.o, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.p = shl nuw nsw i64 %i.o, 3
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23 ; 4 uses
  %i.r = getelementptr inbounds i8, ptr %i.q, i64 %i.i ; 2 uses
  store ptr null, ptr %i.r, align 8, !tbaa !36
  %i.s = icmp sgt i64 %i.i, 0
  br i1 %i.s, label %bb.e, label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

bb.e:                                             ; preds = %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.q, ptr align 8 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i

_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i: ; preds = %bb.e, %_ZNKSt6vectorIPcSaIS0_EE12_M_check_lenEmPKc.exit.i.i.i
  %.not.i17.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef %i.i) #24
  br label %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i

_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIPcSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit16.i.i.i
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.o
  br label %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit

_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit:      ; preds = %bb.b, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i
  %i.u = phi ptr [ %i.e, %bb.b ], [ %i.t, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ]
  %.pn = phi ptr [ %i.c, %bb.b ], [ %i.r, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 2 uses
  %i.v = phi ptr [ %.pre, %bb.b ], [ %i.q, %_ZNSt6vectorIPcSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i.i ] ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.pn, i64 8
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !36
  %i.y = tail call noundef ptr @_ZN7CaDiCaL4File12find_programEPKc(ptr noundef %i.x) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %bb.r, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit
  %i.z = call i32 @pipe(ptr noundef nonnull %i.a) #20
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = call i32 (ptr, i32, ...) @open(ptr noundef %2, i32 noundef 577, i32 noundef 420) #20 ; 3 uses
  %i.ac = icmp slt i32 %i.ab, 0
  br i1 %i.ac, label %bb.q, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = call i32 @fork() #20                    ; 3 uses
  store i32 %i.ad, ptr %3, align 4, !tbaa !21
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.af = call i32 @close(i32 noundef %i.ab) #20  ; 0 uses
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %.not20 = icmp eq i32 %i.ad, 0
  %i.ag = load i32, ptr %i.a, align 4, !tbaa !21  ; 2 uses
  br i1 %.not20, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = call i32 @close(i32 noundef %i.ag) #20  ; 0 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !21
  %i.ak = call noalias ptr @fdopen(i32 noundef %i.aj, ptr noundef nonnull @.str.6) #20
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.al = call i32 @dup2(i32 noundef %i.ag, i32 noundef 0) #20 ; 0 uses
  %i.am = call i32 @dup2(i32 noundef %i.ab, i32 noundef 1) #20 ; 0 uses
  %i.an = load i8, ptr %1, align 1, !tbaa !20
  %i.ao = icmp eq i8 %i.an, 55
  br i1 %i.ao, label %bb.n, label %.preheader

.preheader:                                       ; preds = %bb.n, %bb.m
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.ap = call i32 @close(i32 noundef 2) #20      ; 0 uses
  br label %.preheader

bb.o:                                             ; preds = %bb.p
  %i.aq = call i32 @execv(ptr noundef nonnull %i.y, ptr noundef nonnull %i.v) #20 ; 0 uses
  call void @_exit(i32 noundef 1) #25
  unreachable

bb.p:                                             ; preds = %.preheader, %bb.p
  %.026 = phi i32 [ %i.as, %bb.p ], [ 3, %.preheader ] ; 2 uses
  %i.ar = call i32 @close(i32 noundef %.026) #20  ; 0 uses
  %i.as = add nuw nsw i32 %.026, 1                ; 2 uses
  %.not21 = icmp eq i32 %i.as, 1024
  br i1 %.not21, label %bb.o, label %bb.p, !llvm.loop !49

bb.q:                                             ; preds = %bb.g, %bb.j, %bb.l, %bb.h
  %.016.ph = phi ptr [ %i.ak, %bb.l ], [ null, %bb.j ], [ null, %bb.h ], [ null, %bb.g ]
  call void @_ZdaPv(ptr noundef nonnull %i.y) #24
  br label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit, %bb.q
  %.01625 = phi ptr [ %.016.ph, %bb.q ], [ null, %_ZNSt6vectorIPcSaIS0_EE9push_backEOS0_.exit ]
  %.not7.i = icmp eq ptr %i.v, %i.w
  br i1 %.not7.i, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.r, %bb.t
  %.sroa.04.08.i = phi ptr [ %i.av, %bb.t ], [ %i.v, %bb.r ] ; 3 uses
  %i.at = load ptr, ptr %.sroa.04.08.i, align 8, !tbaa !36 ; 2 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  call void @_ZdaPv(ptr noundef nonnull %i.at) #24
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i, i64 8
  %.not.i = icmp eq ptr %.sroa.04.08.i, %.pn
  br i1 %.not.i, label %_ZNSt6vectorIPcSaIS0_EED2Ev.exit, label %.lr.ph.i

_ZNSt6vectorIPcSaIS0_EED2Ev.exit:                 ; preds = %bb.t, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.aw = ptrtoint ptr %i.u to i64
  %i.ax = ptrtoint ptr %i.v to i64
  %i.ay = sub i64 %i.aw, %i.ax
  call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.ay) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  ret ptr %.01625
}

; Function Attrs: nounwind
declare i32 @pipe(ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare i32 @fork() local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @dup2(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare i32 @execv(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_exit(i32 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN7CaDiCaL4File4readEPNS_8InternalEP8_IO_FILEPKc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 2 uses
  tail call void @_ZN7CaDiCaL4FileC1EPNS_8InternalEbiiP8_IO_FILEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %0, i1 noundef zeroext false, i32 noundef 0, i32 noundef 0, ptr noundef %1, ptr noundef %2) #20
  ret ptr %i.a
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull ptr @_ZN7CaDiCaL4File5writeEPNS_8InternalEP8_IO_FILEPKc(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 2 uses
  tail call void @_ZN7CaDiCaL4FileC1EPNS_8InternalEbiiP8_IO_FILEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef %0, i1 noundef zeroext true, i32 noundef 0, i32 noundef 0, ptr noundef %1, ptr noundef %2) #20
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN7CaDiCaL4File4readEPNS_8InternalEPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN7CaDiCaL10has_suffixEPKcS1_(ptr noundef %1, ptr noundef nonnull @.str.7) #20
  br i1 %i.a, label %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit, label %bb.b

_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit: ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_(ptr noundef %0, ptr noundef nonnull @.str.8, ptr noundef nonnull @_ZN7CaDiCaLL5xzsigE, ptr noundef %1) ; 2 uses
  %.not37 = icmp eq ptr %i.b, null
  br i1 %.not37, label %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit.thread, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_ZN7CaDiCaL10has_suffixEPKcS1_(ptr noundef %1, ptr noundef nonnull @.str.9) #20
  br i1 %i.c, label %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit44, label %bb.c

_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit44: ; preds = %bb.b
  %i.d = tail call noundef ptr @_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_(ptr noundef %0, ptr noundef nonnull @.str.10, ptr noundef nonnull @_ZN7CaDiCaLL7lzmasigE, ptr noundef %1) ; 2 uses
  %.not36 = icmp eq ptr %i.d, null
  br i1 %.not36, label %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit.thread, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noundef zeroext i1 @_ZN7CaDiCaL10has_suffixEPKcS1_(ptr noundef %1, ptr noundef nonnull @.str.11) #20
  br i1 %i.e, label %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit50, label %bb.d

_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit50: ; preds = %bb.c
  %i.f = tail call noundef ptr @_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @_ZN7CaDiCaLL6bz2sigE, ptr noundef %1) ; 2 uses
  %.not35 = icmp eq ptr %i.f, null
  br i1 %.not35, label %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit.thread, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call noundef zeroext i1 @_ZN7CaDiCaL10has_suffixEPKcS1_(ptr noundef %1, ptr noundef nonnull @.str.13) #20
  br i1 %i.g, label %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit56, label %bb.e

_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit56: ; preds = %bb.d
  %i.h = tail call noundef ptr @_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @_ZN7CaDiCaLL5gzsigE, ptr noundef %1) ; 2 uses
  %.not34 = icmp eq ptr %i.h, null
  br i1 %.not34, label %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit.thread, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.i = tail call noundef zeroext i1 @_ZN7CaDiCaL10has_suffixEPKcS1_(ptr noundef %1, ptr noundef nonnull @.str.15) #20
  br i1 %i.i, label %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit62, label %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit.thread

_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit62: ; preds = %bb.e
  %i.j = tail call noundef ptr @_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_(ptr noundef %0, ptr noundef nonnull @.str.16, ptr noundef nonnull @_ZN7CaDiCaLL5sig7zE, ptr noundef %1) ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit.thread, label %.thread

_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit.thread: ; preds = %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit44, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit50, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit56, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit62, %bb.e
  %i.k = tail call noalias noundef ptr @fopen(ptr noundef readonly %1, ptr noundef nonnull @.str.1) ; 2 uses
  %.not38 = icmp eq ptr %i.k, null
  br i1 %.not38, label %bb.f, label %.thread

.thread:                                          ; preds = %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit62, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit56, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit50, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit44, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit.thread
  %.077 = phi i32 [ 1, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit.thread ], [ 2, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit ], [ 2, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit44 ], [ 2, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit50 ], [ 2, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit56 ], [ 2, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit62 ]
  %.02776 = phi ptr [ %i.k, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit.thread ], [ %i.b, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit ], [ %i.d, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit44 ], [ %i.f, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit50 ], [ %i.h, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit56 ], [ %i.j, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit62 ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 2 uses
  tail call void @_ZN7CaDiCaL4FileC1EPNS_8InternalEbiiP8_IO_FILEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef %0, i1 noundef zeroext false, i32 noundef %.077, i32 noundef 0, ptr noundef nonnull %.02776, ptr noundef %1) #20
  br label %bb.f

bb.f:                                             ; preds = %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit.thread, %.thread
  %.028 = phi ptr [ %i.l, %.thread ], [ null, %_ZN7CaDiCaL4File9read_pipeEPNS_8InternalEPKcPKiS4_.exit.thread ]
  ret ptr %.028
}

declare noundef zeroext i1 @_ZN7CaDiCaL10has_suffixEPKcS1_(ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN7CaDiCaL4File5writeEPNS_8InternalEPKc(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 0, ptr %i.a, align 4, !tbaa !21
  %i.b = tail call noundef zeroext i1 @_ZN7CaDiCaL10has_suffixEPKcS1_(ptr noundef %1, ptr noundef nonnull @.str.7) #20
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = call noundef ptr @_ZN7CaDiCaL4File10write_pipeEPNS_8InternalEPKcS4_Ri(ptr poison, ptr noundef nonnull @.str.17, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN7CaDiCaL10has_suffixEPKcS1_(ptr noundef %1, ptr noundef nonnull @.str.11) #20
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = call noundef ptr @_ZN7CaDiCaL4File10write_pipeEPNS_8InternalEPKcS4_Ri(ptr poison, ptr noundef nonnull @.str.18, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.f = tail call noundef zeroext i1 @_ZN7CaDiCaL10has_suffixEPKcS1_(ptr noundef %1, ptr noundef nonnull @.str.13) #20
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.g = call noundef ptr @_ZN7CaDiCaL4File10write_pipeEPNS_8InternalEPKcS4_Ri(ptr poison, ptr noundef nonnull @.str.19, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.h = tail call noundef zeroext i1 @_ZN7CaDiCaL10has_suffixEPKcS1_(ptr noundef %1, ptr noundef nonnull @.str.15) #20
  br i1 %i.h, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.i = call noundef ptr @_ZN7CaDiCaL4File10write_pipeEPNS_8InternalEPKcS4_Ri(ptr poison, ptr noundef nonnull @.str.20, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.j = tail call noalias noundef ptr @fopen(ptr noundef readonly %1, ptr noundef nonnull @.str.6)
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.h, %bb.i, %bb.f, %bb.b
  %.019 = phi ptr [ %i.c, %bb.b ], [ %i.e, %bb.d ], [ %i.g, %bb.f ], [ %i.i, %bb.h ], [ %i.j, %bb.i ] ; 2 uses
  %.0 = phi i32 [ 3, %bb.b ], [ 3, %bb.d ], [ 3, %bb.f ], [ 3, %bb.h ], [ 1, %bb.i ]
  %.not = icmp eq ptr %.019, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #23 ; 2 uses
  %i.l = load i32, ptr %i.a, align 4, !tbaa !21
  tail call void @_ZN7CaDiCaL4FileC1EPNS_8InternalEbiiP8_IO_FILEPKc(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef %0, i1 noundef zeroext true, i32 noundef %.0, i32 noundef %i.l, ptr noundef nonnull %.019, ptr noundef %1) #20
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.020 = phi ptr [ %i.k, %bb.k ], [ null, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %.020
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL4File5closeEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, i1 noundef zeroext %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = tail call i32 @fclose(ptr noundef %i.e)  ; 0 uses
  %.pr = load i32, ptr %i.a, align 8, !tbaa !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ %.pr, %bb.b ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.k = tail call i32 @pclose(ptr noundef %i.j)  ; 0 uses
  %.pre = load i32, ptr %i.a, align 8, !tbaa !16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = phi i32 [ %.pre, %bb.d ], [ %i.g, %bb.c ]
  %i.m = icmp eq i32 %i.l, 3
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.p = tail call i32 @fclose(ptr noundef %i.o)  ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !17
  %i.s = tail call i32 @waitpid(i32 noundef %i.r, ptr noundef null, i32 noundef 0) #20 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.t, align 8, !tbaa !18
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @pclose(ptr noundef captures(none)) local_unnamed_addr #4

declare i32 @waitpid(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind uwtable
define void @_ZN7CaDiCaL4File5flushEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = tail call i32 @fflush(ptr noundef %i.b)  ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL4FileD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(48) dereferenceable(48) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %.pr.i = load i32, ptr %i.c, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %.pr.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.h = icmp eq i32 %i.g, 2
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.j = tail call i32 @pclose(ptr noundef %i.i)  ; 0 uses
  %.pre.i = load i32, ptr %i.c, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = phi i32 [ %.pre.i, %bb.e ], [ %i.g, %bb.d ]
  %i.l = icmp eq i32 %i.k, 3
  br i1 %i.l, label %bb.g, label %_ZN7CaDiCaL4File5closeEb.exit

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.n = tail call i32 @fclose(ptr noundef %i.m)  ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load i32, ptr %i.o, align 4, !tbaa !17
  %i.q = tail call i32 @waitpid(i32 noundef %i.p, ptr noundef null, i32 noundef 0) #20 ; 0 uses
  br label %_ZN7CaDiCaL4File5closeEb.exit

_ZN7CaDiCaL4File5closeEb.exit:                    ; preds = %bb.f, %bb.g
  store ptr null, ptr %i.a, align 8, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %_ZN7CaDiCaL4File5closeEb.exit, %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  tail call void @free(ptr noundef %i.s) #20
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #16

declare i32 @__uflow(ptr noundef) local_unnamed_addr #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #19

attributes #0 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind willreturn memory(none) }
attributes #23 = { builtin nounwind allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{!1, !30}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !10, i64 0}
!12 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!"long", !6, i64 0}
!15 = !{!"_ZTSN7CaDiCaL4FileE", !11, i64 0, !7, i64 8, !7, i64 12, !12, i64 16, !13, i64 24, !14, i64 32, !14, i64 40}
!16 = !{!15, !7, i64 8}
!17 = !{!15, !7, i64 12}
!18 = !{!15, !12, i64 16}
!19 = !{!15, !13, i64 24}
!20 = !{!6, !6, i64 0}
!21 = !{!7, !7, i64 0}
!22 = !{!"p1 _ZTS10_IO_marker", !10, i64 0}
!23 = !{!"short", !6, i64 0}
!24 = !{!"p1 _ZTS11_IO_codecvt", !10, i64 0}
!25 = !{!"p1 _ZTS13_IO_wide_data", !10, i64 0}
!26 = !{!"_ZTS8_IO_FILE", !7, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !22, i64 96, !12, i64 104, !7, i64 112, !7, i64 116, !14, i64 120, !23, i64 128, !6, i64 130, !6, i64 131, !10, i64 136, !14, i64 144, !24, i64 152, !25, i64 160, !12, i64 168, !10, i64 176, !14, i64 184, !7, i64 192, !6, i64 196}
!27 = !{!26, !13, i64 8}
!28 = !{!26, !13, i64 16}
!29 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"any p2 pointer", !10, i64 0}
!32 = !{!"p2 omnipotent char", !31, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIPcSaIS0_EE17_Vector_impl_dataE", !32, i64 0, !32, i64 8, !32, i64 16}
!34 = !{!33, !32, i64 8}
!35 = !{!33, !32, i64 16}
!36 = !{!13, !13, i64 0}
!37 = !{!33, !32, i64 0}
!38 = !{!15, !11, i64 0}
!39 = !{!15, !14, i64 32}
!40 = !{!15, !14, i64 40}
!41 = !{!"_ZTS8timespec", !14, i64 0, !14, i64 8}
!42 = !{!"_ZTS4stat", !14, i64 0, !14, i64 8, !14, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !41, i64 72, !41, i64 88, !41, i64 104, !6, i64 120}
!43 = !{!42, !7, i64 24}
!44 = distinct !{!44, !30}
!45 = distinct !{!45, !30}
!46 = distinct !{!46, !30}
!47 = !{!32, !32, i64 0}
!48 = distinct !{!48, !30}
!49 = distinct !{!49, !30}
end_hunk_0
