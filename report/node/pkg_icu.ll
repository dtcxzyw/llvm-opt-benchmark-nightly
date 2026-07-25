inline.NumInlined: 14
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stderr = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [19 x i8] c"missing list file\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"icupkg: unable to open list file \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"\22%&'()*+,-./:;<=>?_\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @readList(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 15 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %1, align 1
  %i.d = icmp eq i8 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @stderr, align 8
  %i.f = tail call i64 @fwrite(ptr nonnull @.str, i64 18, i64 1, ptr %i.e) #11 ; 0 uses
  br label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.g = icmp eq ptr %3, null
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = tail call noalias noundef nonnull dereferenceable(201240) ptr @_Znwm(i64 noundef 201240) #12 ; 2 uses
  tail call void @_ZN6icu_787PackageC1Ev(ptr noundef nonnull align 8 dereferenceable(201237) %i.h) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.055 = phi ptr [ %i.h, %bb.e ], [ %3, %bb.d ]  ; 14 uses
  %strlen = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) ; 2 uses
  %strchr = getelementptr inbounds i8, ptr %1, i64 %strlen
  %i.i = icmp sgt i64 %strlen, 4
  %i.j = getelementptr inbounds i8, ptr %strchr, i64 -4 ; 4 uses
  br i1 %i.i, label %.split.preheader.i, label %bb.u

.split.preheader.i:                               ; preds = %bb.f
  %i.k = load i32, ptr %i.j, align 1
  %i.l = icmp ne i32 %i.k, 1954051118
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %_ZL14isListTextFilePKc.exit.thread, label %.split.1.i

.split.1.i:                                       ; preds = %.split.preheader.i
  %i.o = load i32, ptr %i.j, align 1
  %i.p = icmp ne i32 %i.o, 1953721390
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_ZL14isListTextFilePKc.exit.thread, label %_ZL14isListTextFilePKc.exit

_ZL14isListTextFilePKc.exit:                      ; preds = %.split.1.i
  %i.s = load i32, ptr %i.j, align 1
  %i.t = icmp ne i32 %i.s, 1886221358
  %i.u = zext i1 %i.t to i32
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %_ZL14isListTextFilePKc.exit.thread, label %bb.s

_ZL14isListTextFilePKc.exit.thread:               ; preds = %.split.1.i, %.split.preheader.i, %_ZL14isListTextFilePKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.v = tail call noalias ptr @fopen64(ptr noundef nonnull %1, ptr noundef nonnull @.str.2) ; 5 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.l, label %.preheader77

.preheader77:                                     ; preds = %_ZL14isListTextFilePKc.exit.thread
  %i.x = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.v)
  %.not6381 = icmp eq ptr %i.x, null
  br i1 %.not6381, label %._crit_edge, label %.lr.ph82

.lr.ph82:                                         ; preds = %.preheader77
  %.not71 = icmp eq i8 %2, 0
  br i1 %.not71, label %.lr.ph82.split.us, label %.lr.ph82.split

.lr.ph82.split.us:                                ; preds = %.lr.ph82, %.backedge.us
  %i.y = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 35) #14 ; 2 uses
  %.not64.us = icmp eq ptr %i.y, null
  br i1 %.not64.us, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph82.split.us
  store i8 0, ptr %i.y, align 1
  br label %.critedge.us

bb.h:                                             ; preds = %.lr.ph82.split.us
  %strlen65.us = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) ; 2 uses
  %i.z = icmp sgt i64 %strlen65.us, 0
  br i1 %i.z, label %.lr.ph.us.preheader, label %.critedge.us

.lr.ph.us.preheader:                              ; preds = %bb.h
  %strchr66.us = getelementptr inbounds nuw i8, ptr %i.a, i64 %strlen65.us
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %.critedge2.us
  %.05379.us = phi ptr [ %i.aa, %.critedge2.us ], [ %strchr66.us, %.lr.ph.us.preheader ]
  %i.aa = getelementptr inbounds i8, ptr %.05379.us, i64 -1 ; 4 uses
  %i.ab = load i8, ptr %i.aa, align 1
  switch i8 %i.ab, label %.critedge.us [
    i8 13, label %.critedge2.us
    i8 10, label %.critedge2.us
  ]

.critedge2.us:                                    ; preds = %.lr.ph.us, %.lr.ph.us
  store i8 0, ptr %i.aa, align 1
  %i.ac = icmp ult ptr %i.a, %i.aa
  br i1 %i.ac, label %.lr.ph.us, label %.critedge.us, !llvm.loop !5

.critedge.us:                                     ; preds = %.lr.ph.us, %.critedge2.us, %bb.h, %bb.g
  %i.ad = call ptr @u_skipWhitespace(ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1             ; 3 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %.backedge.us, label %bb.i

bb.i:                                             ; preds = %.critedge.us
  %i.ag = sext i8 %i.ae to i32
  %memchr.us = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.4, i32 %i.ag, i64 20)
  %.not67.us = icmp eq ptr %memchr.us, null
  br i1 %.not67.us, label %.preheader.us, label %.backedge.us

.backedge.us:                                     ; preds = %bb.k, %.loopexit.us.us.thread, %.critedge.us, %bb.i
  %i.ah = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.v)
  %.not63.us = icmp eq ptr %i.ah, null
  br i1 %.not63.us, label %._crit_edge, label %.lr.ph82.split.us, !llvm.loop !7

.preheader.us:                                    ; preds = %bb.i, %bb.k
  %i.ai = phi i8 [ %i.am, %bb.k ], [ %i.ae, %bb.i ]
  %.0.us.us = phi ptr [ %i.al, %bb.k ], [ %i.ad, %bb.i ] ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %4, %.preheader.us
  %i.aj = phi i8 [ %i.ai, %.preheader.us ], [ %.pre86, %4 ]
  %.1.us.us = phi ptr [ %.0.us.us, %.preheader.us ], [ %5, %4 ] ; 3 uses
  switch i8 %i.aj, label %4 [
    i8 0, label %.loopexit.us.us.thread
    i8 9, label %bb.k
    i8 32, label %bb.k
  ]

.loopexit.us.us.thread:                           ; preds = %bb.j
  call void @_ZN6icu_787Package7addItemEPKc(ptr noundef nonnull align 8 dereferenceable(201237) %.055, ptr noundef nonnull %.0.us.us) #13
  br label %.backedge.us

bb.k:                                             ; preds = %bb.j, %bb.j
  store i8 0, ptr %.1.us.us, align 1
  call void @_ZN6icu_787Package7addItemEPKc(ptr noundef nonnull align 8 dereferenceable(201237) %.055, ptr noundef nonnull %.0.us.us) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %.1.us.us, i64 1
  %i.al = call ptr @u_skipWhitespace(ptr noundef nonnull %i.ak) #13 ; 2 uses
  %i.am = load i8, ptr %i.al, align 1             ; 2 uses
  %i.an = icmp eq i8 %i.am, 0
  br i1 %i.an, label %.backedge.us, label %.preheader.us, !llvm.loop !8

4:                                                ; preds = %bb.j
  %5 = getelementptr inbounds nuw i8, ptr %.1.us.us, i64 1 ; 2 uses
  %.pre86 = load i8, ptr %5, align 1
  br label %bb.j, !llvm.loop !9

bb.l:                                             ; preds = %_ZL14isListTextFilePKc.exit.thread
  %i.ao = load ptr, ptr @stderr, align 8
  %i.ap = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.3, ptr noundef nonnull %1) #15 ; 0 uses
  tail call void @_ZN6icu_787PackageD1Ev(ptr noundef nonnull align 8 dead_on_return(201237) dereferenceable(201237) %.055) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %.055, i64 noundef 201240) #16
  tail call void @exit(i32 noundef 4) #17
  unreachable

.lr.ph82.split:                                   ; preds = %.lr.ph82, %.backedge
  %i.aq = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 35) #14 ; 2 uses
  %.not64 = icmp eq ptr %i.aq, null
  br i1 %.not64, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph82.split
  store i8 0, ptr %i.aq, align 1
  br label %.critedge

bb.n:                                             ; preds = %.lr.ph82.split
  %strlen65 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) ; 2 uses
  %i.ar = icmp sgt i64 %strlen65, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.n
  %strchr66 = getelementptr inbounds nuw i8, ptr %i.a, i64 %strlen65
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.critedge2
  %.05379 = phi ptr [ %i.as, %.critedge2 ], [ %strchr66, %.lr.ph.preheader ]
  %i.as = getelementptr inbounds i8, ptr %.05379, i64 -1 ; 4 uses
  %i.at = load i8, ptr %i.as, align 1
  switch i8 %i.at, label %.critedge [
    i8 13, label %.critedge2
    i8 10, label %.critedge2
  ]

.critedge2:                                       ; preds = %.lr.ph, %.lr.ph
  store i8 0, ptr %i.as, align 1
  %i.au = icmp ult ptr %i.a, %i.as
  br i1 %i.au, label %.lr.ph, label %.critedge, !llvm.loop !5

.critedge:                                        ; preds = %.critedge2, %.lr.ph, %bb.n, %bb.m
  %i.av = call ptr @u_skipWhitespace(ptr noundef nonnull %i.a) #13 ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1             ; 3 uses
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %.backedge, label %bb.o

bb.o:                                             ; preds = %.critedge
  %i.ay = sext i8 %i.aw to i32
  %memchr = call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.4, i32 %i.ay, i64 20)
  %.not67 = icmp eq ptr %memchr, null
  br i1 %.not67, label %.preheader, label %.backedge

.backedge:                                        ; preds = %bb.r, %.loopexit.thread, %.critedge, %bb.o
  %i.az = call ptr @fgets(ptr noundef nonnull %i.a, i32 noundef 1024, ptr noundef nonnull %i.v)
  %.not63 = icmp eq ptr %i.az, null
  br i1 %.not63, label %._crit_edge, label %.lr.ph82.split, !llvm.loop !7

.preheader:                                       ; preds = %bb.o, %bb.r
  %i.ba = phi i8 [ %i.bf, %bb.r ], [ %i.aw, %bb.o ]
  %.0 = phi ptr [ %i.be, %bb.r ], [ %i.av, %bb.o ] ; 3 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %.preheader
  %i.bb = phi i8 [ %i.ba, %.preheader ], [ %.pre, %bb.q ]
  %.1 = phi ptr [ %.0, %.preheader ], [ %i.bc, %bb.q ] ; 3 uses
  switch i8 %i.bb, label %bb.q [
    i8 0, label %.loopexit.thread
    i8 9, label %bb.r
    i8 32, label %bb.r
  ]

.loopexit.thread:                                 ; preds = %bb.p
  call void @_ZN6icu_787Package7addFileEPKcS2_(ptr noundef nonnull align 8 dereferenceable(201237) %.055, ptr noundef %0, ptr noundef nonnull %.0) #13
  br label %.backedge

bb.q:                                             ; preds = %bb.p
  %i.bc = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.bc, align 1
  br label %bb.p, !llvm.loop !9

bb.r:                                             ; preds = %bb.p, %bb.p
  store i8 0, ptr %.1, align 1
  call void @_ZN6icu_787Package7addFileEPKcS2_(ptr noundef nonnull align 8 dereferenceable(201237) %.055, ptr noundef %0, ptr noundef nonnull %.0) #13
  %i.bd = getelementptr inbounds nuw i8, ptr %.1, i64 1
  %i.be = call ptr @u_skipWhitespace(ptr noundef nonnull %i.bd) #13 ; 2 uses
  %i.bf = load i8, ptr %i.be, align 1             ; 2 uses
  %i.bg = icmp eq i8 %i.bf, 0
  br i1 %i.bg, label %.backedge, label %.preheader, !llvm.loop !8

._crit_edge:                                      ; preds = %.backedge, %.backedge.us, %.preheader77
  %i.bh = call i32 @fclose(ptr noundef nonnull %i.v) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.x

bb.s:                                             ; preds = %_ZL14isListTextFilePKc.exit
  %i.bi = load i32, ptr %i.j, align 1
  %i.bj = icmp ne i32 %i.bi, 1952539694
  %i.bk = zext i1 %i.bj to i32
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds nuw i8, ptr %.055, i64 1170
  store i8 1, ptr %i.bm, align 2
  tail call void @_ZN6icu_787Package11readPackageEPKc(ptr noundef nonnull align 8 dereferenceable(201237) %.055, ptr noundef nonnull %1) #13
  br label %bb.x

bb.u:                                             ; preds = %bb.f, %bb.s
  %.not62 = icmp eq i8 %2, 0
  br i1 %.not62, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN6icu_787Package7addFileEPKcS2_(ptr noundef nonnull align 8 dereferenceable(201237) %.055, ptr noundef %0, ptr noundef nonnull %1) #13
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  tail call void @_ZN6icu_787Package7addItemEPKc(ptr noundef nonnull align 8 dereferenceable(201237) %.055, ptr noundef nonnull %1) #13
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge, %bb.v, %bb.w, %bb.t, %bb.c
  %.054 = phi ptr [ null, %bb.c ], [ %.055, %bb.t ], [ %.055, %bb.w ], [ %.055, %bb.v ], [ %.055, %._crit_edge ]
  ret ptr %.054
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare void @_ZN6icu_787PackageC1Ev(ptr noundef nonnull align 8 dereferenceable(201237)) unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_787PackageD1Ev(ptr noundef nonnull align 8 dead_on_return(201237) dereferenceable(201237)) unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef writeonly, i32 noundef, ptr noundef captures(none)) local_unnamed_addr #2

declare ptr @u_skipWhitespace(ptr noundef) local_unnamed_addr #4

declare void @_ZN6icu_787Package7addFileEPKcS2_(ptr noundef nonnull align 8 dereferenceable(201237), ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN6icu_787Package7addItemEPKc(ptr noundef nonnull align 8 dereferenceable(201237), ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @_ZN6icu_787Package11readPackageEPKc(ptr noundef nonnull align 8 dereferenceable(201237), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local range(i32 0, 2) i32 @writePackageDatFile(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i8 noundef signext %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %4, null
  br i1 %i.a, label %_ZN6icu_7812LocalPointerINS_7PackageEE12adoptInsteadEPS1_.exit11, label %_ZN6icu_7812LocalPointerINS_7PackageEED2Ev.exit

_ZN6icu_7812LocalPointerINS_7PackageEE12adoptInsteadEPS1_.exit11: ; preds = %bb.a
  %i.b = tail call noalias noundef nonnull dereferenceable(201240) ptr @_Znwm(i64 noundef 201240) #12 ; 5 uses
  tail call void @_ZN6icu_787PackageC1Ev(ptr noundef nonnull align 8 dereferenceable(201237) %i.b) #13
  %i.c = tail call ptr @readList(ptr noundef %2, ptr noundef %3, i8 noundef signext 1, ptr noundef null) ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6icu_7812LocalPointerINS_7PackageEE12adoptInsteadEPS1_.exit11
  tail call void @_ZN6icu_787Package8addItemsERKS0_(ptr noundef nonnull align 8 dereferenceable(201237) %i.b, ptr noundef nonnull align 8 dereferenceable(201237) %i.c) #13
  tail call void @_ZN6icu_787Package12writePackageEPKccS2_(ptr noundef nonnull align 8 dereferenceable(201237) %i.b, ptr noundef %0, i8 noundef signext %5, ptr noundef %1) #13
  tail call void @_ZN6icu_787PackageD1Ev(ptr noundef nonnull align 8 dead_on_return(201237) dereferenceable(201237) %i.c) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef 201240) #16
  br label %.thread

_ZN6icu_7812LocalPointerINS_7PackageEED2Ev.exit:  ; preds = %bb.a
  tail call void @_ZN6icu_787Package12writePackageEPKccS2_(ptr noundef nonnull align 8 dereferenceable(201237) %4, ptr noundef %0, i8 noundef signext %5, ptr noundef %1) #13
  br label %_ZN6icu_7812LocalPointerINS_7PackageEED2Ev.exit12

.thread:                                          ; preds = %_ZN6icu_7812LocalPointerINS_7PackageEE12adoptInsteadEPS1_.exit11, %bb.b
  %.026.ph = phi i32 [ 0, %bb.b ], [ 1, %_ZN6icu_7812LocalPointerINS_7PackageEE12adoptInsteadEPS1_.exit11 ]
  tail call void @_ZN6icu_787PackageD1Ev(ptr noundef nonnull align 8 dead_on_return(201237) dereferenceable(201237) %i.b) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 201240) #16
  br label %_ZN6icu_7812LocalPointerINS_7PackageEED2Ev.exit12

_ZN6icu_7812LocalPointerINS_7PackageEED2Ev.exit12: ; preds = %_ZN6icu_7812LocalPointerINS_7PackageEED2Ev.exit, %.thread
  %.02634 = phi i32 [ 0, %_ZN6icu_7812LocalPointerINS_7PackageEED2Ev.exit ], [ %.026.ph, %.thread ]
  ret i32 %.02634
}

declare void @_ZN6icu_787Package8addItemsERKS0_(ptr noundef nonnull align 8 dereferenceable(201237), ptr noundef nonnull align 8 dereferenceable(201237)) local_unnamed_addr #4

declare void @_ZN6icu_787Package12writePackageEPKccS2_(ptr noundef nonnull align 8 dereferenceable(201237), ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #10 = { nofree nounwind }
attributes #11 = { cold }
attributes #12 = { builtin nounwind allocsize(0) }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { cold nounwind }
attributes #16 = { builtin nounwind }
attributes #17 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
!9 = distinct !{!9, !6}
end_hunk_0
