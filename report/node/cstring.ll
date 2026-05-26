inline.NumInlined: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext range(i8 0, 2) i8 @uprv_isASCIILetter_78(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i8 %0, -33
  %i.b = add i8 %i.a, -65
  %narrow = icmp ult i8 %i.b, 26
  %i.c = zext i1 %narrow to i8
  ret i8 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext range(i8 123, 97) i8 @uprv_toupper_78(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %0, -97
  %or.cond = icmp ult i8 %i.a, 26
  %narrow = add nsw i8 %0, -32
  %spec.select = select i1 %or.cond, i8 %narrow, i8 %0
  ret i8 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i8 @uprv_asciitolower_78(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = add i8 %0, -65
  %or.cond = icmp ult i8 %i.a, 26
  %i.b = or disjoint i8 %0, 32
  %spec.select = select i1 %or.cond, i8 %i.b, i8 %0
  ret i8 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i8 @uprv_ebcdictolower_78(i8 noundef signext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = and i8 %0, -17
  %i.b = add i8 %i.a, 63
  %or.cond16 = icmp ult i8 %i.b, 9
  %i.c = add i8 %0, 30
  %or.cond8 = icmp ult i8 %i.c, 8
  %or.cond17 = or i1 %or.cond8, %or.cond16
  %i.d = add nsw i8 %0, -64
  %.0 = select i1 %or.cond17, i8 %i.d, i8 %0
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @T_CString_toLowerCase_78(ptr noundef returned captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi ptr [ %i.d, %.preheader ], [ %0, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.0, align 1                ; 3 uses
  %i.b = add i8 %i.a, -65
  %or.cond.i = icmp ult i8 %i.b, 26
  %i.c = or disjoint i8 %i.a, 32
  %spec.select.i = select i1 %or.cond.i, i8 %i.c, i8 %i.a ; 2 uses
  store i8 %spec.select.i, ptr %.0, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.not7 = icmp eq i8 %spec.select.i, 0
  br i1 %.not7, label %.loopexit, label %.preheader, !llvm.loop !5

.loopexit:                                        ; preds = %.preheader, %bb.a
  ret ptr %0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef ptr @T_CString_toUpperCase_78(ptr noundef returned captures(address_is_null, ret: address, provenance) %0) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %.preheader
  %.0 = phi ptr [ %i.c, %.preheader ], [ %0, %bb.a ] ; 3 uses
  %i.a = load i8, ptr %.0, align 1                ; 3 uses
  %i.b = add i8 %i.a, -97
  %or.cond.i = icmp ult i8 %i.b, 26
  %narrow.i = add nsw i8 %i.a, -32
  %spec.select.i = select i1 %or.cond.i, i8 %narrow.i, i8 %i.a ; 2 uses
  store i8 %spec.select.i, ptr %.0, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %.not7 = icmp eq i8 %spec.select.i, 0
  br i1 %.not7, label %.loopexit, label %.preheader, !llvm.loop !7

.loopexit:                                        ; preds = %.preheader, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @T_CString_integerToString_78(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [30 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp slt i32 %1, 0
  %i.c = icmp eq i32 %2, 10
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i32 0, %1
  store i8 45, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]      ; 2 uses
  %.0 = phi i32 [ %i.d, %bb.b ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  store i8 0, ptr %i.e, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 29, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %i.n, %bb.d ], [ %.0, %bb.c ]   ; 3 uses
  %i.f = urem i32 %.1, %2                         ; 3 uses
  %i.g = and i32 %i.f, 254
  %i.h = icmp samesign ult i32 %i.g, 10
  %i.i = or i32 %i.f, 48
  %i.j = add i32 %i.f, 55
  %i.k = select i1 %i.h, i32 %i.i, i32 %i.j
  %i.l = trunc i32 %i.k to i8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.l, ptr %i.m, align 1
  %i.n = udiv i32 %.1, %2
  %.not = icmp ugt i32 %2, %.1
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !8

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  %i.p = trunc nsw i64 %indvars.iv to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %.022
  %i.r = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.q, ptr noundef nonnull dereferenceable(1) %i.o) #9 ; 0 uses
  %i.s = trunc nuw nsw i64 %.022 to i32
  %i.t = sub i32 %i.s, %i.p
  %i.u = add i32 %i.t, 30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.u
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local i32 @T_CString_int64ToString_78(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca [30 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = icmp slt i64 %1, 0
  %i.c = icmp eq i32 %2, 10
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i64 0, %1
  store i8 45, ptr %0, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.022 = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]      ; 2 uses
  %.0 = phi i64 [ %i.d, %bb.b ], [ %1, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 29
  store i8 0, ptr %i.e, align 1
  %i.f = zext i32 %2 to i64                       ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.d ], [ 29, %bb.c ] ; 2 uses
  %.1 = phi i64 [ %i.p, %bb.d ], [ %.0, %bb.c ]   ; 3 uses
  %i.g = urem i64 %.1, %i.f
  %i.h = trunc nuw i64 %i.g to i32                ; 3 uses
  %i.i = and i32 %i.h, 254
  %i.j = icmp samesign ult i32 %i.i, 10
  %i.k = or i32 %i.h, 48
  %i.l = add i32 %i.h, 55
  %i.m = select i1 %i.j, i32 %i.k, i32 %i.l
  %i.n = trunc i32 %i.m to i8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.o = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  store i8 %i.n, ptr %i.o, align 1
  %i.p = udiv i64 %.1, %i.f
  %.not = icmp ult i64 %.1, %i.f
  br i1 %.not, label %bb.e, label %bb.d, !llvm.loop !9

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds i8, ptr %i.a, i64 %indvars.iv.next
  %i.r = trunc nsw i64 %indvars.iv to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.022
  %i.t = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(1) %i.q) #9 ; 0 uses
  %i.u = trunc nuw nsw i64 %.022 to i32
  %i.v = sub i32 %i.u, %i.r
  %i.w = add i32 %i.v, 30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local i32 @T_CString_stringToInteger_78(ptr noundef %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = call i64 @__isoc23_strtoul(ptr noundef %0, ptr noundef nonnull %i.a, i32 noundef %1) #9
  %i.c = trunc i64 %i.b to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %i.c
}

; Function Attrs: nounwind
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -254, 255) i32 @uprv_stricmp_78(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %1, null
  %. = sext i1 %i.b to i32
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.d = load i8, ptr %0, align 1                 ; 2 uses
  %i.e = load i8, ptr %1, align 1                 ; 2 uses
  %i.f = icmp eq i8 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %.preheader
  %.lcssa = phi i8 [ %i.e, %.preheader ], [ %i.u, %bb.e ]
  %i.g = icmp ne i8 %.lcssa, 0
  %.19 = sext i1 %i.g to i32
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %i.h = phi i8 [ %i.u, %bb.e ], [ %i.e, %.preheader ] ; 4 uses
  %i.i = phi i8 [ %i.t, %bb.e ], [ %i.d, %.preheader ] ; 3 uses
  %.01424 = phi ptr [ %i.r, %bb.e ], [ %0, %.preheader ]
  %.01523 = phi ptr [ %i.s, %bb.e ], [ %1, %.preheader ]
  %i.j = icmp eq i8 %i.h, 0
  br i1 %i.j, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.k = add i8 %i.i, -65
  %or.cond.i = icmp ult i8 %i.k, 26
  %i.l = or disjoint i8 %i.i, 32
  %spec.select.i = select i1 %or.cond.i, i8 %i.l, i8 %i.i
  %i.m = zext i8 %spec.select.i to i32
  %i.n = add i8 %i.h, -65
  %or.cond.i20 = icmp ult i8 %i.n, 26
  %i.o = or disjoint i8 %i.h, 32
  %spec.select.i21 = select i1 %or.cond.i20, i8 %i.o, i8 %i.h
  %i.p = zext i8 %spec.select.i21 to i32
  %i.q = sub nsw i32 %i.m, %i.p                   ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.01424, i64 1 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.01523, i64 1 ; 2 uses
  %i.t = load i8, ptr %i.r, align 1               ; 2 uses
  %i.u = load i8, ptr %i.s, align 1               ; 2 uses
  %i.v = icmp eq i8 %i.t, 0
  br i1 %i.v, label %._crit_edge, label %.lr.ph, !llvm.loop !10

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %._crit_edge, %bb.c, %bb.b
  %.1 = phi i32 [ %., %bb.b ], [ 1, %bb.c ], [ %.19, %._crit_edge ], [ %i.q, %bb.d ], [ 1, %.lr.ph ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local range(i32 -254, 255) i32 @uprv_strnicmp_78(ptr noundef readonly captures(address_is_null) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ne ptr %1, null
  %. = sext i1 %i.b to i32
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %.not.not27 = icmp eq i32 %2, 0
  br i1 %.not.not27, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.in = phi i32 [ %i.d, %bb.g ], [ %2, %.preheader ]
  %.01729 = phi ptr [ %i.q, %bb.g ], [ %0, %.preheader ] ; 2 uses
  %.01828 = phi ptr [ %i.r, %bb.g ], [ %1, %.preheader ] ; 2 uses
  %i.d = add i32 %.in, -1                         ; 2 uses
  %i.e = load i8, ptr %.01729, align 1            ; 4 uses
  %i.f = load i8, ptr %.01828, align 1            ; 5 uses
  %i.g = icmp eq i8 %i.e, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.h = icmp ne i8 %i.f, 0
  %.24 = sext i1 %i.h to i32
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  %i.i = icmp eq i8 %i.f, 0
  br i1 %i.i, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = add i8 %i.e, -65
  %or.cond.i = icmp ult i8 %i.j, 26
  %i.k = or disjoint i8 %i.e, 32
  %spec.select.i = select i1 %or.cond.i, i8 %i.k, i8 %i.e
  %i.l = zext i8 %spec.select.i to i32
  %i.m = add i8 %i.f, -65
  %or.cond.i25 = icmp ult i8 %i.m, 26
  %i.n = or disjoint i8 %i.f, 32
  %spec.select.i26 = select i1 %or.cond.i25, i8 %i.n, i8 %i.f
  %i.o = zext i8 %spec.select.i26 to i32
  %i.p = sub nsw i32 %i.l, %i.o                   ; 2 uses
  %.not23 = icmp eq i32 %i.p, 0
  br i1 %.not23, label %bb.g, label %.loopexit

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %.01729, i64 1
  %i.r = getelementptr inbounds nuw i8, ptr %.01828, i64 1
  %.not.not = icmp eq i32 %i.d, 0
  br i1 %.not.not, label %.loopexit, label %.lr.ph, !llvm.loop !11

.loopexit:                                        ; preds = %bb.g, %bb.f, %bb.e, %.preheader, %bb.d, %bb.c, %bb.b
  %.1 = phi i32 [ %., %bb.b ], [ 1, %bb.c ], [ %.24, %bb.d ], [ 0, %.preheader ], [ %i.p, %bb.f ], [ 0, %bb.g ], [ 1, %bb.e ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias ptr @uprv_strdup_78(ptr noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #10
  %i.b = add i64 %i.a, 1                          ; 2 uses
  %i.c = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.b) #11 ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.c, ptr nonnull align 1 %0, i64 %i.b, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret ptr %i.c
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noalias ptr @uprv_strndup_78(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #10
  %i.c = add i64 %i.b, 1                          ; 2 uses
  %i.d = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.c) #11 ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %uprv_strdup_78.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull readonly align 1 %0, i64 %i.c, i1 false)
  br label %uprv_strdup_78.exit

bb.d:                                             ; preds = %bb.a
  %i.e = add nuw nsw i32 %1, 1
  %i.f = zext nneg i32 %i.e to i64
  %i.g = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.f) #11 ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %uprv_strdup_78.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = zext nneg i32 %1 to i64                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr align 1 %0, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.h
  store i8 0, ptr %i.i, align 1
  br label %uprv_strdup_78.exit

uprv_strdup_78.exit:                              ; preds = %bb.c, %bb.b, %bb.d, %bb.e
  %.0 = phi ptr [ null, %bb.d ], [ %i.g, %bb.e ], [ null, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(0) }

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
!10 = distinct !{!10, !6}
!11 = distinct !{!11, !6}
end_hunk_0
