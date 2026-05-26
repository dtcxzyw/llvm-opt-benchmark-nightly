inline.NumInlined: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@ares_tolower_lookup = internal unnamed_addr constant [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", align 16

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ares_strnlen(ptr noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @memchr(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %1) #14 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %0 to i64
  %i.f = sub i64 %i.d, %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i64 [ %i.f, %bb.c ], [ 0, %bb.a ], [ %1, %bb.b ]
  ret i64 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @ares_strlen(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @ares_strdup(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.f, label %ares_strlen.exit

ares_strlen.exit:                                 ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #14 ; 5 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %ares_strlen.exit
  %i.d = add nuw i64 %i.b, 1
  %i.e = tail call ptr @ares_malloc(i64 noundef %i.d) #15 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.e, ptr nonnull align 1 %0, i64 %i.b, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  store i8 0, ptr %i.g, align 1, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %ares_strlen.exit, %bb.a, %bb.e
  %.0 = phi ptr [ %i.e, %bb.e ], [ null, %bb.a ], [ null, %ares_strlen.exit ], [ null, %bb.b ]
  ret ptr %.0
}

declare ptr @ares_malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local range(i64 0, -1) i64 @ares_strcpy(ptr noundef writeonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %2, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %ares_strlen.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #14
  br label %ares_strlen.exit

ares_strlen.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.d, %bb.c ], [ 0, %bb.b ]   ; 2 uses
  %.not = icmp ult i64 %.0.i, %2
  %i.e = add i64 %2, -1
  %spec.select = select i1 %.not, i64 %.0.i, i64 %i.e ; 4 uses
  %.not18 = icmp eq i64 %spec.select, 0
  br i1 %.not18, label %bb.e, label %bb.d

bb.d:                                             ; preds = %ares_strlen.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %0, ptr align 1 %1, i64 %spec.select, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %ares_strlen.exit
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select
  store i8 0, ptr %i.f, align 1, !tbaa !12
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.014 = phi i64 [ %spec.select, %bb.e ], [ 0, %bb.a ]
  ret i64 %.014
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ares_str_isnum(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.d = add i64 %.013, 1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12    ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !13

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.g = phi i8 [ %i.f, %bb.c ], [ %i.b, %bb.b ]
  %.013 = phi i64 [ %i.d, %bb.c ], [ 0, %bb.b ]
  %i.h = add i8 %i.g, -48
  %or.cond = icmp ult i8 %i.h, 10
  br i1 %or.cond, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.a, %bb.b
  %.09 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 0, %.lr.ph ], [ 1, %bb.c ]
  ret i32 %.09
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ares_str_isalnum(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph

bb.c:                                             ; preds = %.lr.ph
  %i.d = add i64 %.027, 1                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12    ; 2 uses
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !15

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.g = phi i8 [ %i.f, %bb.c ], [ %i.b, %bb.b ]  ; 2 uses
  %.027 = phi i64 [ %i.d, %bb.c ], [ 0, %bb.b ]
  %i.h = add i8 %i.g, -48
  %or.cond = icmp ult i8 %i.h, 10
  %i.i = and i8 %i.g, -33
  %i.j = add i8 %i.i, -65
  %i.k = icmp ult i8 %i.j, 26
  %or.cond25 = or i1 %or.cond, %i.k
  br i1 %or.cond25, label %bb.c, label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.lr.ph, %bb.a, %bb.b
  %.017 = phi i32 [ 0, %bb.b ], [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %.lr.ph ]
  ret i32 %.017
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define dso_local void @ares_str_rtrim(ptr noundef captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %ares_strlen.exit

ares_strlen.exit:                                 ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #14 ; 2 uses
  %.not20 = icmp eq i64 %i.b, 0
  br i1 %.not20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %ares_strlen.exit, %bb.b
  %.021 = phi i64 [ %i.f, %bb.b ], [ %i.b, %ares_strlen.exit ] ; 3 uses
  %i.c = getelementptr i8, ptr %0, i64 %.021
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  switch i8 %i.e, label %._crit_edge [
    i8 13, label %bb.b
    i8 9, label %bb.b
    i8 32, label %bb.b
    i8 11, label %bb.b
    i8 12, label %bb.b
    i8 10, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.f = add i64 %.021, -1                        ; 2 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

._crit_edge:                                      ; preds = %bb.b, %.lr.ph, %ares_strlen.exit
  %.0.lcssa = phi i64 [ 0, %ares_strlen.exit ], [ %.021, %.lr.ph ], [ 0, %bb.b ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa
  store i8 0, ptr %i.g, align 1, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define dso_local void @ares_str_ltrim(ptr noundef captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.a, %.critedge2
  %.0 = phi i64 [ %i.d, %.critedge2 ], [ 0, %bb.a ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.0
  %i.c = load i8, ptr %i.b, align 1, !tbaa !12
  switch i8 %i.c, label %.critedge [
    i8 10, label %.critedge2
    i8 13, label %.critedge2
    i8 9, label %.critedge2
    i8 32, label %.critedge2
    i8 11, label %.critedge2
    i8 12, label %.critedge2
  ]

.critedge2:                                       ; preds = %.preheader, %.preheader, %.preheader, %.preheader, %.preheader, %.preheader
  %i.d = add i64 %.0, 1
  br label %.preheader, !llvm.loop !17

.critedge:                                        ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.0
  %i.f = icmp eq i64 %.0, 0
  br i1 %i.f, label %bb.c, label %ares_strlen.exit

ares_strlen.exit:                                 ; preds = %.critedge
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #14 ; 2 uses
  %.not32 = icmp eq i64 %.0, %i.g
  br i1 %.not32, label %ares_strlen.exit._crit_edge, label %bb.b

bb.b:                                             ; preds = %ares_strlen.exit
  %i.h = sub i64 %i.g, %.0                        ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %i.e, i64 %i.h, i1 false)
  br label %ares_strlen.exit._crit_edge

ares_strlen.exit._crit_edge:                      ; preds = %ares_strlen.exit, %bb.b
  %.pre-phi = phi i64 [ %i.h, %bb.b ], [ 0, %ares_strlen.exit ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.pre-phi
  store i8 0, ptr %i.i, align 1, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %.critedge, %bb.a, %ares_strlen.exit._crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree norecurse nounwind memory(argmem: readwrite) uwtable
define dso_local void @ares_str_trim(ptr noundef captures(address_is_null) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ares_str_rtrim.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a, %.critedge2.i
  %.0.i = phi i64 [ %i.d, %.critedge2.i ], [ 0, %bb.a ] ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i
  %i.c = load i8, ptr %i.b, align 1, !tbaa !12
  switch i8 %i.c, label %.critedge.i [
    i8 10, label %.critedge2.i
    i8 13, label %.critedge2.i
    i8 9, label %.critedge2.i
    i8 32, label %.critedge2.i
    i8 11, label %.critedge2.i
    i8 12, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i, %.preheader.i
  %i.d = add i64 %.0.i, 1
  br label %.preheader.i, !llvm.loop !17

.critedge.i:                                      ; preds = %.preheader.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.0.i
  %i.f = icmp eq i64 %.0.i, 0
  br i1 %i.f, label %ares_strlen.exit.i2, label %ares_strlen.exit.i

ares_strlen.exit.i:                               ; preds = %.critedge.i
  %i.g = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #14 ; 2 uses
  %.not32.i = icmp eq i64 %.0.i, %i.g
  br i1 %.not32.i, label %ares_strlen.exit._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %ares_strlen.exit.i
  %i.h = sub i64 %i.g, %.0.i                      ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %0, ptr nonnull align 1 %i.e, i64 %i.h, i1 false)
  br label %ares_strlen.exit._crit_edge.i

ares_strlen.exit._crit_edge.i:                    ; preds = %bb.b, %ares_strlen.exit.i
  %.pre-phi.i = phi i64 [ %i.h, %bb.b ], [ 0, %ares_strlen.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.pre-phi.i
  store i8 0, ptr %i.i, align 1, !tbaa !12
  br label %ares_strlen.exit.i2

ares_strlen.exit.i2:                              ; preds = %.critedge.i, %ares_strlen.exit._crit_edge.i
  %i.j = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #14 ; 2 uses
  %.not20.i = icmp eq i64 %i.j, 0
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %ares_strlen.exit.i2, %bb.c
  %.021.i = phi i64 [ %i.n, %bb.c ], [ %i.j, %ares_strlen.exit.i2 ] ; 3 uses
  %i.k = getelementptr i8, ptr %0, i64 %.021.i
  %i.l = getelementptr i8, ptr %i.k, i64 -1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !12
  switch i8 %i.m, label %._crit_edge.i [
    i8 13, label %bb.c
    i8 9, label %bb.c
    i8 32, label %bb.c
    i8 11, label %bb.c
    i8 12, label %bb.c
    i8 10, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.n = add i64 %.021.i, -1                      ; 2 uses
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !16

._crit_edge.i:                                    ; preds = %bb.c, %.lr.ph.i, %ares_strlen.exit.i2
  %.0.lcssa.i = phi i64 [ 0, %ares_strlen.exit.i2 ], [ 0, %bb.c ], [ %.021.i, %.lr.ph.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.0.lcssa.i
  store i8 0, ptr %i.o, align 1, !tbaa !12
  br label %ares_str_rtrim.exit

ares_str_rtrim.exit:                              ; preds = %bb.a, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local zeroext i8 @ares_tolower(i8 noundef zeroext %0) local_unnamed_addr #8 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr inbounds nuw i8, ptr @ares_tolower_lookup, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !tbaa !12
  ret i8 %i.c
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @ares_str_lower(ptr noundef captures(address_is_null) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  %.not8 = icmp eq i8 %i.b, 0
  br i1 %.not8, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.c = phi i8 [ %i.j, %.lr.ph ], [ %i.b, %.preheader ]
  %.09 = phi i64 [ %i.h, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.09
  %i.e = zext i8 %i.c to i64
  %i.f = getelementptr inbounds nuw i8, ptr @ares_tolower_lookup, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !12
  store i8 %i.g, ptr %i.d, align 1, !tbaa !12
  %i.h = add i64 %.09, 1                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !12    ; 2 uses
  %.not = icmp eq i8 %i.j, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local ptr @ares_memmem(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(address_is_null) %2, i64 noundef %3) local_unnamed_addr #10 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq i64 %1, 0
  %or.cond3 = or i1 %i.c, %or.cond
  %i.d = icmp eq i64 %3, 0
  %or.cond5 = or i1 %i.d, %or.cond3
  br i1 %or.cond5, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = load i8, ptr %2, align 1, !tbaa !12
  %i.f = zext i8 %i.e to i32                      ; 2 uses
  %i.g = tail call ptr @memchr(ptr noundef nonnull %0, i32 noundef %i.f, i64 noundef %1) #14 ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.i = phi ptr [ %i.q, %bb.c ], [ %i.g, %.preheader ] ; 4 uses
  %.02533 = phi ptr [ %i.o, %bb.c ], [ %0, %.preheader ]
  %.02632 = phi i64 [ %i.p, %bb.c ], [ %1, %.preheader ]
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %.02533 to i64
  %.neg = sub i64 %i.k, %i.j
  %i.l = add i64 %.neg, %.02632                   ; 2 uses
  %i.m = icmp ult i64 %i.l, %3
  br i1 %i.m, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.i, ptr nonnull %2, i64 %3)
  %i.n = icmp eq i32 %bcmp, 0
  br i1 %i.n, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %i.p = add i64 %i.l, -1                         ; 2 uses
  %i.q = tail call ptr @memchr(ptr noundef nonnull %i.o, i32 noundef %i.f, i64 noundef %i.p) #14 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %bb.b, %.lr.ph, %bb.c, %.preheader, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ null, %.preheader ], [ null, %.lr.ph ], [ %i.i, %bb.b ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ares_memeq(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %bcmp = tail call i32 @bcmp(ptr %0, ptr %1, i64 %2)
  %i.a = icmp eq i32 %bcmp, 0
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ares_memeq_ci(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %.not11 = icmp eq i64 %2, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = add nuw i64 %.08, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.a, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.08 = phi i64 [ %i.a, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.08
  %i.c = load i8, ptr %i.b, align 1, !tbaa !12
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @ares_tolower_lookup, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.08
  %i.h = load i8, ptr %i.g, align 1, !tbaa !12
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @ares_tolower_lookup, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !12
  %.not = icmp eq i8 %i.f, %i.k
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.07 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.07
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ares_is_hostname(ptr noundef readonly captures(address_is_null) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !12      ; 2 uses
  %.not36 = icmp eq i8 %i.b, 0
  br i1 %.not36, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.c
  %i.c = phi i8 [ %i.i, %bb.c ], [ %i.b, %.preheader ] ; 3 uses
  %.037 = phi i64 [ %i.g, %bb.c ], [ 0, %.preheader ]
  %i.d = and i8 %i.c, -33
  %i.e = add i8 %i.d, -65
  %or.cond34 = icmp ult i8 %i.e, 26
  %i.f = add i8 %i.c, -48
  %or.cond33 = icmp ult i8 %i.f, 10
  %or.cond35 = or i1 %or.cond33, %or.cond34
  br i1 %or.cond35, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  switch i8 %i.c, label %.loopexit [
    i8 45, label %bb.c
    i8 46, label %bb.c
    i8 95, label %bb.c
    i8 47, label %bb.c
    i8 42, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %.lr.ph
  %i.g = add i64 %.037, 1                         ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !12    ; 2 uses
  %.not = icmp eq i8 %i.i, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !20

.loopexit:                                        ; preds = %bb.b, %bb.c, %.preheader, %bb.a
  %.026 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.026
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ares_str_isprint(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp ne i64 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !21

.lr.ph:                                           ; preds = %.preheader, %bb.b
  %.013 = phi i64 [ %i.c, %bb.b ], [ 0, %.preheader ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.013
  %i.e = load i8, ptr %i.d, align 1, !tbaa !12
  %i.f = add i8 %i.e, -32
  %or.cond12 = icmp ult i8 %i.f, 95
  br i1 %or.cond12, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.b, %.preheader, %bb.a
  %.010 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 0, %.lr.ph ], [ 1, %bb.b ]
  ret i32 %.010
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ares_strcmp(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %0, null
  %or.cond3 = and i1 %i.c, %i.b
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %0, align 1, !tbaa !12
  %i.e = icmp ne i8 %i.d, 0
  %. = zext i1 %i.e to i32
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.a, %i.f
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %1, align 1, !tbaa !12
  %i.h = icmp ne i8 %i.g, 0
  %.17 = sext i1 %i.h to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.f
  %.0 = phi i32 [ %i.i, %bb.f ], [ %., %bb.c ], [ 0, %bb.a ], [ %.17, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @ares_strncmp(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null                     ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne ptr %0, null
  %or.cond3 = and i1 %i.d, %i.c
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %0, align 1, !tbaa !12
  %i.f = icmp ne i8 %i.e, 0
  %. = zext i1 %i.f to i32
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.b, %i.g
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load i8, ptr %1, align 1, !tbaa !12
  %i.i = icmp ne i8 %i.h, 0
  %.20 = sext i1 %i.i to i32
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = tail call i32 @strncmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.a, %bb.g
  %.0 = phi i32 [ %i.j, %bb.g ], [ 0, %bb.a ], [ %., %bb.d ], [ 0, %bb.b ], [ %.20, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local i32 @ares_strcasecmp(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %0, null
  %or.cond3 = and i1 %i.c, %i.b
  br i1 %or.cond3, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %0, align 1, !tbaa !12
  %i.e = icmp ne i8 %i.d, 0
  %. = zext i1 %i.e to i32
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.a, %i.f
  br i1 %or.cond5, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %1, align 1, !tbaa !12
  %i.h = icmp ne i8 %i.g, 0
  %.17 = sext i1 %i.h to i32
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef %1) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.c, %bb.a, %bb.f
  %.0 = phi i32 [ %i.i, %bb.f ], [ %., %bb.c ], [ 0, %bb.a ], [ %.17, %bb.e ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local i32 @ares_strncasecmp(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null                     ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne ptr %0, null
  %or.cond3 = and i1 %i.d, %i.c
  br i1 %or.cond3, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %0, align 1, !tbaa !12
  %i.f = icmp ne i8 %i.e, 0
  %. = zext i1 %i.f to i32
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ne ptr %1, null
  %or.cond5 = and i1 %i.b, %i.g
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load i8, ptr %1, align 1, !tbaa !12
  %i.i = icmp ne i8 %i.h, 0
  %.20 = sext i1 %i.i to i32
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.j = tail call i32 @strncasecmp(ptr noundef %0, ptr noundef %1, i64 noundef %2) #14
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.d, %bb.b, %bb.a, %bb.g
  %.0 = phi i32 [ %i.j, %bb.g ], [ 0, %bb.a ], [ %., %bb.d ], [ 0, %bb.b ], [ %.20, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strncasecmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @ares_strcaseeq(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %ares_strcasecmp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %0, null
  %or.cond3.i = and i1 %i.c, %i.b
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %0, align 1, !tbaa !12
  %i.e = icmp ne i8 %i.d, 0
  %..i = zext i1 %i.e to i32
  br label %ares_strcasecmp.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ne ptr %1, null
  %or.cond5.i = and i1 %i.a, %i.f
  br i1 %or.cond5.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %1, align 1, !tbaa !12
  %i.h = icmp ne i8 %i.g, 0
  %.17.i = sext i1 %i.h to i32
  br label %ares_strcasecmp.exit

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcasecmp(ptr noundef readonly %0, ptr noundef readonly %1) #14
  br label %ares_strcasecmp.exit

ares_strcasecmp.exit:                             ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.i, %bb.f ], [ %..i, %bb.c ], [ 0, %bb.a ], [ %.17.i, %bb.e ]
  %i.j = icmp eq i32 %.0.i, 0
  %i.k = zext i1 %i.j to i32
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read) uwtable
define dso_local range(i32 0, 2) i32 @ares_strcaseeq_max(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %ares_strncasecmp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null                     ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %or.cond.i = and i1 %i.b, %i.c
  br i1 %or.cond.i, label %ares_strncasecmp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne ptr %0, null
  %or.cond3.i = and i1 %i.d, %i.c
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %0, align 1, !tbaa !12
  %i.f = icmp ne i8 %i.e, 0
  %..i = zext i1 %i.f to i32
  br label %ares_strncasecmp.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ne ptr %1, null
  %or.cond5.i = and i1 %i.b, %i.g
  br i1 %or.cond5.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load i8, ptr %1, align 1, !tbaa !12
  %i.i = icmp ne i8 %i.h, 0
  %.20.i = sext i1 %i.i to i32
  br label %ares_strncasecmp.exit

bb.g:                                             ; preds = %bb.e
  %i.j = tail call i32 @strncasecmp(ptr noundef readonly %0, ptr noundef readonly %1, i64 noundef %2) #14
  br label %ares_strncasecmp.exit

ares_strncasecmp.exit:                            ; preds = %bb.a, %bb.b, %bb.d, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.j, %bb.g ], [ 0, %bb.a ], [ %..i, %bb.d ], [ 0, %bb.b ], [ %.20.i, %bb.f ]
  %i.k = icmp eq i32 %.0.i, 0
  %i.l = zext i1 %i.k to i32
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ares_streq(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null                     ; 2 uses
  %i.b = icmp eq ptr %1, null                     ; 2 uses
  %or.cond.i = and i1 %i.a, %i.b
  br i1 %or.cond.i, label %ares_strcmp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ne ptr %0, null
  %or.cond3.i = and i1 %i.c, %i.b
  br i1 %or.cond3.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %0, align 1, !tbaa !12
  %i.e = icmp ne i8 %i.d, 0
  %..i = zext i1 %i.e to i32
  br label %ares_strcmp.exit

bb.d:                                             ; preds = %bb.b
  %i.f = icmp ne ptr %1, null
  %or.cond5.i = and i1 %i.a, %i.f
  br i1 %or.cond5.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = load i8, ptr %1, align 1, !tbaa !12
  %i.h = icmp ne i8 %i.g, 0
  %.17.i = sext i1 %i.h to i32
  br label %ares_strcmp.exit

bb.f:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %0, ptr noundef nonnull readonly dereferenceable(1) %1) #14
  br label %ares_strcmp.exit

ares_strcmp.exit:                                 ; preds = %bb.a, %bb.c, %bb.e, %bb.f
  %.0.i = phi i32 [ %i.i, %bb.f ], [ %..i, %bb.c ], [ 0, %bb.a ], [ %.17.i, %bb.e ]
  %i.j = icmp eq i32 %.0.i, 0
  %i.k = zext i1 %i.j to i32
  ret i32 %i.k
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 0, 2) i32 @ares_streq_max(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %ares_strncmp.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %0, null                     ; 2 uses
  %i.c = icmp eq ptr %1, null                     ; 2 uses
  %or.cond.i = and i1 %i.b, %i.c
  br i1 %or.cond.i, label %ares_strncmp.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne ptr %0, null
  %or.cond3.i = and i1 %i.d, %i.c
  br i1 %or.cond3.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = load i8, ptr %0, align 1, !tbaa !12
  %i.f = icmp ne i8 %i.e, 0
  %..i = zext i1 %i.f to i32
  br label %ares_strncmp.exit

bb.e:                                             ; preds = %bb.c
  %i.g = icmp ne ptr %1, null
  %or.cond5.i = and i1 %i.b, %i.g
  br i1 %or.cond5.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load i8, ptr %1, align 1, !tbaa !12
  %i.i = icmp ne i8 %i.h, 0
  %.20.i = sext i1 %i.i to i32
  br label %ares_strncmp.exit

bb.g:                                             ; preds = %bb.e
  %i.j = tail call i32 @strncmp(ptr noundef readonly %0, ptr noundef readonly %1, i64 noundef %2) #14
  br label %ares_strncmp.exit

ares_strncmp.exit:                                ; preds = %bb.a, %bb.b, %bb.d, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.j, %bb.g ], [ 0, %bb.a ], [ %..i, %bb.d ], [ 0, %bb.b ], [ %.20.i, %bb.f ]
  %i.k = icmp eq i32 %.0.i, 0
  %i.l = zext i1 %i.k to i32
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define dso_local void @ares_free_array(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  switch i64 %1, label %.lr.ph [
    i64 -1, label %.preheader
    i64 0, label %.loopexit
  ]

.preheader:                                       ; preds = %bb.c
  %i.b = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %.not2024 = icmp eq ptr %i.b, null
  br i1 %.not2024, label %.loopexit, label %.lr.ph26

.lr.ph26:                                         ; preds = %.preheader, %.lr.ph26
  %i.c = phi ptr [ %i.f, %.lr.ph26 ], [ %i.b, %.preheader ]
  %.025 = phi i64 [ %i.d, %.lr.ph26 ], [ 0, %.preheader ]
  tail call void %2(ptr noundef nonnull %i.c) #15
  %i.d = add i64 %.025, 1                         ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !22   ; 2 uses
  %.not20 = icmp eq ptr %i.f, null
  br i1 %.not20, label %.loopexit, label %.lr.ph26, !llvm.loop !24

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.123 = phi i64 [ %i.i, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.123
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22
  tail call void %2(ptr noundef %i.h) #15
  %i.i = add nuw i64 %.123, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !25

.loopexit:                                        ; preds = %.lr.ph26, %.lr.ph, %bb.c, %.preheader, %bb.b
  tail call void @ares_free(ptr noundef nonnull %0) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %.loopexit
  ret void
}

declare void @ares_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

attributes #0 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree norecurse nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nounwind willreturn memory(read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!10, !10, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = !{!23, !23, i64 0}
!23 = !{!"any pointer", !10, i64 0}
!24 = distinct !{!24, !14}
!25 = distinct !{!25, !14}
end_hunk_0
