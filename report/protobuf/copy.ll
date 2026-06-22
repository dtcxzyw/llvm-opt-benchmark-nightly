inline.NumInlined: 166
inline.NumDeleted: 80
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.upb_MessageValue = type { %struct.upb_StringView }
%struct.upb_StringView = type { ptr, i64 }

@upb_FieldType_CType.c_type = internal unnamed_addr constant [18 x i32] [i32 7, i32 2, i32 8, i32 9, i32 3, i32 9, i32 4, i32 1, i32 10, i32 6, i32 6, i32 11, i32 4, i32 5, i32 3, i32 8, i32 3, i32 8], align 16
@_upb_CType_SizeLg2_dont_copy_me__upb_internal_use_only.size = internal unnamed_addr constant [11 x i8] c"\00\02\02\02\02\03\03\03\03\04\04", align 1

; Function Attrs: nounwind uwtable
define hidden ptr @upb_Map_DeepClone(ptr noundef %0, i32 %1, i32 %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %union.upb_MessageValue, align 8    ; 5 uses
  %6 = alloca %union.upb_MessageValue, align 8    ; 9 uses
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !7
  %i.c = sext i8 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10
  %i.f = sext i8 %i.e to i64
  %i.g = tail call ptr @_upb_Map_New(ptr noundef %4, i64 noundef %i.c, i64 noundef %i.f) #7 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i64 -1, ptr %i.a, align 8, !tbaa !11
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.i = getelementptr i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.c

bb.c:                                             ; preds = %upb_Clone_MessageValue.exit.thread, %bb.b
  %i.k = call zeroext i1 @upb_Map_Next(ptr noundef nonnull %0, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %i.a) #7
  br i1 %i.k, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %3, align 8, !tbaa !13    ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 12
  %i.m = getelementptr i8, ptr %.val, i64 22
  %.val20 = load i8, ptr %i.m, align 2, !tbaa !16 ; 3 uses
  %i.n = getelementptr i8, ptr %.val, i64 23
  %.val21 = load i8, ptr %i.n, align 1, !tbaa !19
  %i.o = zext i8 %.val20 to i64                   ; 2 uses
  %i.p = and i8 %.val21, 16
  %.not.i.i = icmp eq i8 %i.p, 0                  ; 2 uses
  br i1 %.not.i.i, label %upb_MiniTableField_CType.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i8 %.val20, label %upb_MiniTableField_CType.exit [
    i8 5, label %.critedge32.thread
    i8 12, label %.critedge32.thread
  ]

upb_MiniTableField_CType.exit:                    ; preds = %bb.e, %bb.d
  %i.q = add nuw nsw i64 %i.o, 4294967295
  %i.r = and i64 %i.q, 4294967295
  %i.s = add nsw i64 %i.r, -9
  %i.t = icmp ult i64 %i.s, 2
  br i1 %i.t, label %bb.f, label %.critedge32

bb.f:                                             ; preds = %upb_MiniTableField_CType.exit
  %i.u = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.v = load i16, ptr %i.u, align 4, !tbaa !20
  %i.w = zext i16 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 2
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !21
  br label %.critedge32

.critedge32:                                      ; preds = %upb_MiniTableField_CType.exit, %bb.f
  %i.aa = phi ptr [ %i.z, %bb.f ], [ null, %upb_MiniTableField_CType.exit ] ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %.critedge32.thread

.critedge32.thread:                               ; preds = %bb.e, %bb.e, %.critedge32
  %i.ab = phi ptr [ %i.aa, %.critedge32 ], [ null, %bb.e ], [ null, %bb.e ] ; 3 uses
  switch i8 %.val20, label %bb.h [
    i8 5, label %upb_MiniTableField_CType.exit24
    i8 12, label %bb.g
  ]

bb.g:                                             ; preds = %.critedge32.thread
  br label %upb_MiniTableField_CType.exit24

bb.h:                                             ; preds = %.critedge32.thread, %.critedge32
  %i.ac = phi ptr [ %i.ab, %.critedge32.thread ], [ %i.aa, %.critedge32 ]
  %i.ad = add nuw nsw i64 %i.o, 4294967295
  %i.ae = and i64 %i.ad, 4294967295
  br label %upb_MiniTableField_CType.exit24

upb_MiniTableField_CType.exit24:                  ; preds = %.critedge32.thread, %bb.g, %bb.h
  %i.af = phi ptr [ %i.ac, %bb.h ], [ %i.ab, %bb.g ], [ %i.ab, %.critedge32.thread ] ; 2 uses
  %.0.i.i23 = phi i64 [ %i.ae, %bb.h ], [ 8, %bb.g ], [ 13, %.critedge32.thread ]
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.0.i.i23
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  switch i32 %i.ah, label %bb.k [
    i32 1, label %upb_Clone_MessageValue.exit.thread
    i32 2, label %upb_Clone_MessageValue.exit.thread
    i32 3, label %upb_Clone_MessageValue.exit.thread
    i32 4, label %upb_Clone_MessageValue.exit.thread
    i32 5, label %upb_Clone_MessageValue.exit.thread
    i32 7, label %upb_Clone_MessageValue.exit.thread
    i32 8, label %upb_Clone_MessageValue.exit.thread
    i32 9, label %upb_Clone_MessageValue.exit.thread
    i32 10, label %bb.i
    i32 11, label %bb.i
    i32 6, label %upb_Clone_MessageValue.exit
  ]

bb.i:                                             ; preds = %upb_MiniTableField_CType.exit24, %upb_MiniTableField_CType.exit24
  %.sroa.08.0.copyload.i = load ptr, ptr %6, align 8, !tbaa !22
  %.sroa.49.0.copyload.i = load i64, ptr %.sroa.49.0..sroa_idx.i, align 8, !tbaa !11
  %sext.i = shl i64 %.sroa.49.0.copyload.i, 32
  %i.ai = ashr exact i64 %sext.i, 32              ; 3 uses
  %i.aj = add nsw i64 %i.ai, 7
  %i.ak = and i64 %i.aj, -8                       ; 3 uses
  %.val.i = load ptr, ptr %4, align 8, !tbaa !24  ; 4 uses
  %.val11.i = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.al = ptrtoint ptr %.val11.i to i64
  %i.am = ptrtoint ptr %.val.i to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = icmp ult i64 %i.an, %i.ak
  br i1 %i.ao, label %upb_Arena_Malloc.exit, label %upb_Arena_Malloc.exit.thread, !prof !27

upb_Arena_Malloc.exit.thread:                     ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ak
  store ptr %i.ap, ptr %4, align 8, !tbaa !24
  br label %bb.j

upb_Arena_Malloc.exit:                            ; preds = %bb.i
  %i.aq = call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %4, i64 noundef %i.ak) #7 ; 2 uses
  %.not30 = icmp eq ptr %i.aq, null
  br i1 %.not30, label %.critedge, label %bb.j

bb.j:                                             ; preds = %upb_Arena_Malloc.exit.thread, %upb_Arena_Malloc.exit
  %.0.i26 = phi ptr [ %.val.i, %upb_Arena_Malloc.exit.thread ], [ %i.aq, %upb_Arena_Malloc.exit ] ; 2 uses
  store ptr %.0.i26, ptr %6, align 8, !tbaa !22
  store i64 %i.ai, ptr %.sroa.49.0..sroa_idx.i, align 8, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i26, ptr align 1 %.sroa.08.0.copyload.i, i64 %i.ai, i1 false)
  br label %upb_Clone_MessageValue.exit.thread

bb.k:                                             ; preds = %upb_MiniTableField_CType.exit24
  unreachable

upb_Clone_MessageValue.exit:                      ; preds = %upb_MiniTableField_CType.exit24
  %i.ar = load ptr, ptr %6, align 8, !tbaa !28
  %i.as = call ptr @upb_Message_New(ptr noundef %i.af, ptr noundef %4) #7, !inline_history !30
  %i.at = call ptr @_upb_Message_Copy(ptr noundef %i.as, ptr noundef %i.ar, ptr noundef %i.af, ptr noundef %4), !inline_history !30 ; 2 uses
  store ptr %i.at, ptr %6, align 8, !tbaa !28
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %.critedge, label %upb_Clone_MessageValue.exit.thread

upb_Clone_MessageValue.exit.thread:               ; preds = %bb.j, %upb_MiniTableField_CType.exit24, %upb_MiniTableField_CType.exit24, %upb_MiniTableField_CType.exit24, %upb_MiniTableField_CType.exit24, %upb_MiniTableField_CType.exit24, %upb_MiniTableField_CType.exit24, %upb_MiniTableField_CType.exit24, %upb_MiniTableField_CType.exit24, %upb_Clone_MessageValue.exit
  %i.au = load ptr, ptr %5, align 8
  %i.av = load i64, ptr %i.j, align 8
  %i.aw = load ptr, ptr %6, align 8
  %i.ax = load i64, ptr %.sroa.49.0..sroa_idx.i, align 8
  %i.ay = call i32 @upb_Map_Insert(ptr noundef nonnull %i.g, ptr %i.au, i64 %i.av, ptr %i.aw, i64 %i.ax, ptr noundef %4) #7
  %.not31 = icmp eq i32 %i.ay, 2
  br i1 %.not31, label %.critedge, label %bb.c, !llvm.loop !31

.critedge:                                        ; preds = %upb_Arena_Malloc.exit, %upb_Clone_MessageValue.exit, %bb.c, %upb_Clone_MessageValue.exit.thread
  %.2 = phi ptr [ null, %upb_Clone_MessageValue.exit.thread ], [ %i.g, %bb.c ], [ null, %upb_Clone_MessageValue.exit ], [ null, %upb_Arena_Malloc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.critedge
  %.3 = phi ptr [ %.2, %.critedge ], [ null, %bb.a ]
  ret ptr %.3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @_upb_Map_New(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @upb_Map_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @upb_Array_DeepClone(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %.val = load i64, ptr %i.a, align 8, !tbaa !33  ; 7 uses
  %i.b = add i32 %1, -1                           ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr @_upb_CType_SizeLg2_dont_copy_me__upb_internal_use_only.size, i64 %i.c
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21
  %i.f = sext i8 %i.e to i64                      ; 2 uses
  %i.g = and i64 %i.f, 4294967295
  %i.h = shl i64 %.val, %i.g
  %i.i = add i64 %i.h, 31
  %i.j = and i64 %i.i, -8                         ; 3 uses
  %.val.i.i.i = load ptr, ptr %3, align 8, !tbaa !24 ; 4 uses
  %i.k = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val11.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.l = ptrtoint ptr %.val11.i.i.i to i64
  %i.m = ptrtoint ptr %.val.i.i.i to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = icmp ult i64 %i.n, %i.j
  br i1 %i.o, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !27

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.j
  store ptr %i.p, ptr %3, align 8, !tbaa !24
  br label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.a
  %i.q = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.j) #7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit: ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.0.i19.i.i = phi ptr [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.q, %upb_Arena_Malloc.exit.i.i ] ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i19.i.i, i64 24
  %i.s = icmp ne i32 %i.b, 0
  %.neg.i.i.i = sext i1 %i.s to i64
  %i.t = add nsw i64 %i.f, %.neg.i.i.i
  %i.u = ptrtoint ptr %i.r to i64
  %i.v = or i64 %i.t, %i.u
  store i64 %i.v, ptr %.0.i19.i.i, align 8, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i19.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i19.i.i, i64 16
  store i64 %.val, ptr %i.x, align 8, !tbaa !36
  store i64 %.val, ptr %i.w, align 8, !tbaa !33
  %.not2746.not = icmp eq i64 %.val, 0
  br i1 %.not2746.not, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit
  switch i32 %1, label %.lr.ph.split [
    i32 1, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 2, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 3, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 4, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 5, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 7, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 8, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 9, label %upb_Clone_MessageValue.exit.thread.us.preheader
    i32 10, label %.lr.ph.split.us50.preheader
    i32 11, label %.lr.ph.split.us50.preheader
    i32 6, label %upb_Clone_MessageValue.exit.us
  ]

.lr.ph.split.us50.preheader:                      ; preds = %.lr.ph, %.lr.ph
  br label %.lr.ph.split.us50

upb_Clone_MessageValue.exit.thread.us.preheader:  ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  br label %upb_Clone_MessageValue.exit.thread.us

upb_Clone_MessageValue.exit.thread.us:            ; preds = %upb_Clone_MessageValue.exit.thread.us.preheader, %upb_Clone_MessageValue.exit.thread.us
  %.047.us = phi i64 [ %i.ab, %upb_Clone_MessageValue.exit.thread.us ], [ 0, %upb_Clone_MessageValue.exit.thread.us.preheader ] ; 3 uses
  %i.y = tail call { ptr, i64 } @upb_Array_Get(ptr noundef nonnull %0, i64 noundef %.047.us) #7 ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  tail call void @upb_Array_Set(ptr noundef nonnull %.0.i19.i.i, i64 noundef %.047.us, ptr %i.z, i64 %i.aa) #7
  %i.ab = add nuw i64 %.047.us, 1                 ; 2 uses
  %exitcond73.not = icmp eq i64 %i.ab, %.val
  br i1 %exitcond73.not, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %upb_Clone_MessageValue.exit.thread.us, !llvm.loop !37

.lr.ph.split.us50:                                ; preds = %.lr.ph.split.us50.preheader, %upb_Clone_MessageValue.exit.thread.us52
  %.047.us51 = phi i64 [ %i.ao, %upb_Clone_MessageValue.exit.thread.us52 ], [ 0, %.lr.ph.split.us50.preheader ] ; 3 uses
  %i.ac = tail call { ptr, i64 } @upb_Array_Get(ptr noundef %0, i64 noundef %.047.us51) #7 ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1
  %sext.i.us = shl i64 %i.ae, 32
  %i.af = ashr exact i64 %sext.i.us, 32           ; 3 uses
  %i.ag = add nsw i64 %i.af, 7
  %i.ah = and i64 %i.ag, -8                       ; 3 uses
  %.val.i.i.us = load ptr, ptr %3, align 8, !tbaa !24 ; 4 uses
  %.val11.i.i.us = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.ai = ptrtoint ptr %.val11.i.i.us to i64
  %i.aj = ptrtoint ptr %.val.i.i.us to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = icmp ult i64 %i.ak, %i.ah
  br i1 %i.al, label %upb_Arena_Malloc.exit.i.us, label %upb_Arena_Malloc.exit.i.thread.us, !prof !27

upb_Arena_Malloc.exit.i.thread.us:                ; preds = %.lr.ph.split.us50
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.us) ]
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i.i.us, i64 %i.ah
  store ptr %i.am, ptr %3, align 8, !tbaa !24
  br label %upb_Clone_MessageValue.exit.thread.us52

upb_Arena_Malloc.exit.i.us:                       ; preds = %.lr.ph.split.us50
  %i.an = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.ah) #7, !inline_history !38 ; 2 uses
  %.not45.us = icmp eq ptr %i.an, null
  br i1 %.not45.us, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %upb_Clone_MessageValue.exit.thread.us52

upb_Clone_MessageValue.exit.thread.us52:          ; preds = %upb_Arena_Malloc.exit.i.us, %upb_Arena_Malloc.exit.i.thread.us
  %.0.i.i2835.us = phi ptr [ %.val.i.i.us, %upb_Arena_Malloc.exit.i.thread.us ], [ %i.an, %upb_Arena_Malloc.exit.i.us ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i2835.us, ptr align 1 %i.ad, i64 %i.af, i1 false)
  tail call void @upb_Array_Set(ptr noundef nonnull %.0.i19.i.i, i64 noundef %.047.us51, ptr nonnull %.0.i.i2835.us, i64 %i.af) #7
  %i.ao = add nuw i64 %.047.us51, 1               ; 2 uses
  %exitcond71.not = icmp eq i64 %i.ao, %.val
  br i1 %exitcond71.not, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %.lr.ph.split.us50, !llvm.loop !37

upb_Clone_MessageValue.exit.us:                   ; preds = %.lr.ph, %upb_Clone_MessageValue.exit.thread.us61
  %.047.us60 = phi i64 [ %i.au, %upb_Clone_MessageValue.exit.thread.us61 ], [ 0, %.lr.ph ] ; 3 uses
  %i.ap = tail call { ptr, i64 } @upb_Array_Get(ptr noundef %0, i64 noundef %.047.us60) #7 ; 2 uses
  %i.aq = extractvalue { ptr, i64 } %i.ap, 0
  %i.ar = tail call ptr @upb_Message_New(ptr noundef %2, ptr noundef nonnull %3) #7, !inline_history !39
  %i.as = tail call ptr @_upb_Message_Copy(ptr noundef %i.ar, ptr noundef %i.aq, ptr noundef %2, ptr noundef nonnull %3), !inline_history !39 ; 2 uses
  %.not.us = icmp eq ptr %i.as, null
  br i1 %.not.us, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %upb_Clone_MessageValue.exit.thread.us61

upb_Clone_MessageValue.exit.thread.us61:          ; preds = %upb_Clone_MessageValue.exit.us
  %i.at = extractvalue { ptr, i64 } %i.ap, 1
  tail call void @upb_Array_Set(ptr noundef nonnull %.0.i19.i.i, i64 noundef %.047.us60, ptr nonnull %i.as, i64 %i.at) #7
  %i.au = add nuw i64 %.047.us60, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.au, %.val
  br i1 %exitcond.not, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %upb_Clone_MessageValue.exit.us, !llvm.loop !37

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.av = tail call { ptr, i64 } @upb_Array_Get(ptr noundef nonnull %0, i64 noundef 0) #7 ; 0 uses
  unreachable

_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread: ; preds = %upb_Clone_MessageValue.exit.us, %upb_Clone_MessageValue.exit.thread.us61, %upb_Arena_Malloc.exit.i.us, %upb_Clone_MessageValue.exit.thread.us52, %upb_Clone_MessageValue.exit.thread.us, %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit, %upb_Arena_Malloc.exit.i.i
  %.3 = phi ptr [ null, %upb_Arena_Malloc.exit.i.i ], [ null, %upb_Arena_Malloc.exit.i.us ], [ %.0.i19.i.i, %upb_Clone_MessageValue.exit.thread.us ], [ %.0.i19.i.i, %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit ], [ %.0.i19.i.i, %upb_Clone_MessageValue.exit.thread.us52 ], [ %.0.i19.i.i, %upb_Clone_MessageValue.exit.thread.us61 ], [ null, %upb_Clone_MessageValue.exit.us ]
  ret ptr %.3
}

declare { ptr, i64 } @upb_Array_Get(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @upb_Array_Set(ptr noundef, i64 noundef, ptr, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef ptr @_upb_Message_Copy(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !40
  %i.e = zext i16 %i.d to i64
  %i.f = add nsw i64 %i.e, -8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b, i64 %i.f, i1 false)
  %i.g = getelementptr i8, ptr %2, i64 10         ; 2 uses
  %.val153252 = load i16, ptr %i.g, align 2, !tbaa !40
  %.not133253.not = icmp eq i16 %.val153252, 0
  br i1 %.not133253.not, label %.critedge144, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.val = load ptr, ptr %2, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv ; 24 uses
  %i.j = getelementptr i8, ptr %i.i, i64 11       ; 10 uses
  %.val155 = load i8, ptr %i.j, align 1, !tbaa !19 ; 9 uses
  %i.k = and i8 %.val155, 3                       ; 2 uses
  switch i8 %i.k, label %bb.au [
    i8 2, label %bb.c
    i8 0, label %bb.al
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.i, i64 10       ; 2 uses
  %.val151 = load i8, ptr %i.l, align 2, !tbaa !16 ; 5 uses
  %i.m = zext i8 %.val151 to i64
  %i.n = and i8 %.val155, 16
  %.not.i.i = icmp eq i8 %i.n, 0                  ; 2 uses
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i8 %.val151, label %bb.f [
    i8 5, label %upb_MiniTableField_CType.exit
    i8 12, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %upb_MiniTableField_CType.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.o = add nuw nsw i64 %i.m, 4294967295
  %i.p = and i64 %i.o, 4294967295
  br label %upb_MiniTableField_CType.exit

upb_MiniTableField_CType.exit:                    ; preds = %bb.d, %bb.e, %bb.f
  %.0.i.i = phi i64 [ %i.p, %bb.f ], [ 8, %bb.e ], [ 13, %bb.d ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.0.i.i
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3
  switch i32 %i.r, label %.critedge [
    i32 6, label %bb.g
    i32 10, label %bb.q
    i32 11, label %bb.q
  ]

bb.g:                                             ; preds = %upb_MiniTableField_CType.exit
  %i.s = icmp ugt i8 %.val155, -65
  tail call void @llvm.assume(i1 %i.s)
  %i.t = tail call fastcc { ptr, i64 } @upb_Message_GetField(ptr noundef %1, ptr noundef nonnull %i.i, ptr null, i64 undef)
  %i.u = extractvalue { ptr, i64 } %i.t, 0        ; 2 uses
  %.not131 = icmp eq ptr %i.u, null
  br i1 %.not131, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.w = load i16, ptr %i.v, align 4, !tbaa !20
  %i.x = zext i16 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21  ; 2 uses
  %i.ab = tail call ptr @upb_Message_New(ptr noundef %i.aa, ptr noundef %3) #7, !inline_history !41
  %i.ac = tail call ptr @_upb_Message_Copy(ptr noundef %i.ab, ptr noundef nonnull %i.u, ptr noundef %i.aa, ptr noundef %3), !inline_history !41 ; 5 uses
  %.not132 = icmp eq ptr %i.ac, null
  br i1 %.not132, label %.critedge143, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val4.i = load i8, ptr %i.j, align 1, !tbaa !19 ; 4 uses
  %i.ad = icmp ugt i8 %.val4.i, -65
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = and i8 %.val4.i, 8
  %.not.i.i159 = icmp eq i8 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i159)
  %i.af = getelementptr i8, ptr %i.i, i64 6
  %.val6.i.i.i = load i16, ptr %i.af, align 2, !tbaa !42 ; 5 uses
  %i.ag = icmp sgt i16 %.val6.i.i.i, 0
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = lshr i16 %.val6.i.i.i, 3
  %i.ai = trunc i16 %.val6.i.i.i to i8
  %i.aj = and i8 %i.ai, 7
  %i.ak = shl nuw i8 1, %i.aj
  %i.al = zext nneg i16 %i.ah to i64
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !21
  %i.ao = or i8 %i.an, %i.ak
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !21
  %.val7.pre.i.i = load i8, ptr %i.j, align 1, !tbaa !19
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ap = icmp slt i16 %.val6.i.i.i, 0
  br i1 %i.ap, label %bb.l, label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i

bb.l:                                             ; preds = %bb.k
  %.val8.i.i.i = load i32, ptr %i.i, align 4, !tbaa !43
  %i.aq = xor i16 %.val6.i.i.i, -1
  %i.ar = zext nneg i16 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 %i.ar
  store i32 %.val8.i.i.i, ptr %i.as, align 4, !tbaa !3
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i

_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i: ; preds = %bb.l, %bb.k, %bb.j
  %.val7.i.i = phi i8 [ %.val7.pre.i.i, %bb.j ], [ %.val4.i, %bb.k ], [ %.val4.i, %bb.l ]
  %i.at = getelementptr i8, ptr %i.i, i64 4
  %.val8.i.i = load i16, ptr %i.at, align 4, !tbaa !44
  %i.au = zext i16 %.val8.i.i to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %i.au ; 4 uses
  %i.aw = lshr i8 %.val7.i.i, 6
  switch i8 %i.aw, label %default.unreachable [
    i8 0, label %bb.m
    i8 1, label %bb.n
    i8 3, label %bb.o
    i8 2, label %bb.p
  ]

bb.m:                                             ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i
  %i.ax = ptrtoint ptr %i.ac to i64
  %.0.extract.trunc7.i = trunc i64 %i.ax to i8
  store i8 %.0.extract.trunc7.i, ptr %i.av, align 1
  br label %.critedge

bb.n:                                             ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i
  %i.ay = ptrtoint ptr %i.ac to i64
  %.0.extract.trunc.i = trunc i64 %i.ay to i32
  store i32 %.0.extract.trunc.i, ptr %i.av, align 1
  br label %.critedge

bb.o:                                             ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i
  %i.az = ptrtoint ptr %i.ac to i64
  store i64 %i.az, ptr %i.av, align 1
  br label %.critedge

bb.p:                                             ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i
  store ptr %i.ac, ptr %i.av, align 1
  br label %.critedge

default.unreachable:                              ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201, %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i, %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i, %bb.x, %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i
  unreachable

bb.q:                                             ; preds = %upb_MiniTableField_CType.exit, %upb_MiniTableField_CType.exit
  br i1 %.not.i.i, label %upb_MiniTableField_CType.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  switch i8 %.val151, label %.critedge17.i [
    i8 9, label %upb_Message_GetString.exit
    i8 12, label %upb_Message_GetString.exit
  ]

upb_MiniTableField_CType.exit.i:                  ; preds = %bb.q
  %i.ba = icmp eq i8 %.val151, 9
  br i1 %i.ba, label %upb_Message_GetString.exit, label %.critedge17.i

.critedge17.i:                                    ; preds = %upb_MiniTableField_CType.exit.i, %bb.r
  %i.bb = icmp eq i8 %.val151, 12
  tail call void @llvm.assume(i1 %i.bb)
  br label %upb_Message_GetString.exit

upb_Message_GetString.exit:                       ; preds = %bb.r, %bb.r, %upb_MiniTableField_CType.exit.i, %.critedge17.i
  %i.bc = icmp slt i8 %.val155, -64
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = tail call fastcc { ptr, i64 } @upb_Message_GetField(ptr noundef %1, ptr noundef nonnull %i.i, ptr null, i64 0) ; 2 uses
  %i.be = extractvalue { ptr, i64 } %i.bd, 1      ; 5 uses
  %.not130 = icmp eq i64 %i.be, 0
  br i1 %.not130, label %.critedge, label %bb.s

bb.s:                                             ; preds = %upb_Message_GetString.exit
  %i.bf = extractvalue { ptr, i64 } %i.bd, 0
  %i.bg = add i64 %i.be, 7
  %i.bh = and i64 %i.bg, -8                       ; 3 uses
  %.val.i.i = load ptr, ptr %3, align 8, !tbaa !24 ; 4 uses
  %.val11.i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.bi = ptrtoint ptr %.val11.i.i to i64
  %i.bj = ptrtoint ptr %.val.i.i to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = icmp ult i64 %i.bk, %i.bh
  br i1 %i.bl, label %bb.t, label %bb.u, !prof !27

bb.t:                                             ; preds = %bb.s
  %i.bm = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.bh) #7
  br label %upb_Clone_StringView.exit

bb.u:                                             ; preds = %bb.s
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i) ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bh
  store ptr %i.bn, ptr %3, align 8, !tbaa !24
  br label %upb_Clone_StringView.exit

upb_Clone_StringView.exit:                        ; preds = %bb.t, %bb.u
  %.0.i.i160 = phi ptr [ %i.bm, %bb.t ], [ %.val.i.i, %bb.u ] ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.0.i.i160, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.bf, i64 range(i64 1, 0) %i.be, i1 false)
  %.val.i161 = load i8, ptr %i.j, align 1, !tbaa !19 ; 7 uses
  %i.bo = and i8 %.val.i161, 8
  %.not.i = icmp eq i8 %i.bo, 0
  %.val7.i8.i = load i8, ptr %i.l, align 2, !tbaa !16 ; 6 uses
  %i.bp = and i8 %.val.i161, 16
  %.not.i.i.i.i = icmp eq i8 %i.bp, 0             ; 2 uses
  br i1 %.not.i, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %upb_Clone_StringView.exit
  br i1 %.not.i.i.i.i, label %upb_MiniTableExtension_CType.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  switch i8 %.val7.i8.i, label %.critedge17.i.i [
    i8 9, label %.critedge.i.i
    i8 12, label %.critedge.i.i
  ]

upb_MiniTableExtension_CType.exit.i.i:            ; preds = %bb.v
  %i.bq = icmp eq i8 %.val7.i8.i, 9
  br i1 %i.bq, label %.critedge.i.i, label %.critedge17.i.i

.critedge17.i.i:                                  ; preds = %upb_MiniTableExtension_CType.exit.i.i, %bb.w
  %i.br = icmp eq i8 %.val7.i8.i, 12
  tail call void @llvm.assume(i1 %i.br)
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge17.i.i, %upb_MiniTableExtension_CType.exit.i.i, %bb.w, %bb.w
  %i.bs = icmp slt i8 %.val.i161, -64
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = tail call ptr @_upb_Message_GetOrCreateExtension_dont_copy_me__upb_internal_use_only(ptr noundef %0, ptr noundef nonnull %i.i, ptr noundef nonnull %3) #7 ; 3 uses
  %.not.i.i.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i.not.i, label %.critedge143, label %bb.x

bb.x:                                             ; preds = %.critedge.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %.val.i.i.i = load i8, ptr %i.j, align 1, !tbaa !19
  %i.bv = lshr i8 %.val.i.i.i, 6
  switch i8 %i.bv, label %default.unreachable [
    i8 0, label %bb.y
    i8 1, label %bb.z
    i8 3, label %bb.aa
    i8 2, label %bb.ab
  ]

bb.y:                                             ; preds = %bb.x
  %i.bw = ptrtoint ptr %.0.i.i160 to i64
  %.sroa.0.0.extract.trunc16.i.i = trunc i64 %i.bw to i8
  store i8 %.sroa.0.0.extract.trunc16.i.i, ptr %i.bu, align 1
  br label %.critedge

bb.z:                                             ; preds = %bb.x
  %i.bx = ptrtoint ptr %.0.i.i160 to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bx to i32
  store i32 %.sroa.0.0.extract.trunc.i.i, ptr %i.bu, align 1
  br label %.critedge

bb.aa:                                            ; preds = %bb.x
  %i.by = ptrtoint ptr %.0.i.i160 to i64
  store i64 %i.by, ptr %i.bu, align 1
  br label %.critedge

bb.ab:                                            ; preds = %bb.x
  store ptr %.0.i.i160, ptr %i.bu, align 1
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %i.be, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  br label %.critedge

bb.ac:                                            ; preds = %upb_Clone_StringView.exit
  br i1 %.not.i.i.i.i, label %upb_MiniTableField_CType.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  switch i8 %.val7.i8.i, label %.critedge18.i.i [
    i8 9, label %.critedge.i10.i
    i8 12, label %.critedge.i10.i
  ]

upb_MiniTableField_CType.exit.i.i:                ; preds = %bb.ac
  %i.bz = icmp eq i8 %.val7.i8.i, 9
  br i1 %i.bz, label %.critedge.i10.i, label %.critedge18.i.i

.critedge18.i.i:                                  ; preds = %upb_MiniTableField_CType.exit.i.i, %bb.ad
  %i.ca = icmp eq i8 %.val7.i8.i, 12
  tail call void @llvm.assume(i1 %i.ca)
  br label %.critedge.i10.i

.critedge.i10.i:                                  ; preds = %.critedge18.i.i, %upb_MiniTableField_CType.exit.i.i, %bb.ad, %bb.ad
  %i.cb = and i8 %.val.i161, 3
  %i.cc = icmp eq i8 %i.cb, 2
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp slt i8 %.val.i161, -64
  tail call void @llvm.assume(i1 %i.cd)
  %i.ce = getelementptr i8, ptr %i.i, i64 6
  %.val6.i.i.i.i = load i16, ptr %i.ce, align 2, !tbaa !42 ; 5 uses
  %i.cf = icmp sgt i16 %.val6.i.i.i.i, 0
  br i1 %i.cf, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.critedge.i10.i
  %i.cg = lshr i16 %.val6.i.i.i.i, 3
  %i.ch = trunc i16 %.val6.i.i.i.i to i8
  %i.ci = and i8 %i.ch, 7
  %i.cj = shl nuw i8 1, %i.ci
  %i.ck = zext nneg i16 %i.cg to i64
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.ck ; 2 uses
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !21
  %i.cn = or i8 %i.cm, %i.cj
  store i8 %i.cn, ptr %i.cl, align 1, !tbaa !21
  %.val7.pre.i.i.i = load i8, ptr %i.j, align 1, !tbaa !19
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i

bb.af:                                            ; preds = %.critedge.i10.i
  %i.co = icmp slt i16 %.val6.i.i.i.i, 0
  br i1 %i.co, label %bb.ag, label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i

bb.ag:                                            ; preds = %bb.af
  %.val8.i.i.i.i = load i32, ptr %i.i, align 4, !tbaa !43
  %i.cp = xor i16 %.val6.i.i.i.i, -1
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 %i.cq
  store i32 %.val8.i.i.i.i, ptr %i.cr, align 4, !tbaa !3
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i

_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i: ; preds = %bb.ag, %bb.af, %bb.ae
  %.val7.i.i.i = phi i8 [ %.val7.pre.i.i.i, %bb.ae ], [ %.val.i161, %bb.af ], [ %.val.i161, %bb.ag ]
  %i.cs = getelementptr i8, ptr %i.i, i64 4
  %.val8.i.i.i163 = load i16, ptr %i.cs, align 4, !tbaa !44
  %i.ct = zext i16 %.val8.i.i.i163 to i64
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 %i.ct ; 5 uses
  %i.cv = lshr i8 %.val7.i.i.i, 6
  switch i8 %i.cv, label %default.unreachable [
    i8 0, label %bb.ah
    i8 1, label %bb.ai
    i8 3, label %bb.aj
    i8 2, label %bb.ak
  ]

bb.ah:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i
  %i.cw = ptrtoint ptr %.0.i.i160 to i64
  %.sroa.0.0.extract.trunc17.i.i = trunc i64 %i.cw to i8
  store i8 %.sroa.0.0.extract.trunc17.i.i, ptr %i.cu, align 1
  br label %.critedge

bb.ai:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i
  %i.cx = ptrtoint ptr %.0.i.i160 to i64
  %.sroa.0.0.extract.trunc.i13.i = trunc i64 %i.cx to i32
  store i32 %.sroa.0.0.extract.trunc.i13.i, ptr %i.cu, align 1
  br label %.critedge

bb.aj:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i
  %i.cy = ptrtoint ptr %.0.i.i160 to i64
  store i64 %i.cy, ptr %i.cu, align 1
  br label %.critedge

bb.ak:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i.i.i
  store ptr %.0.i.i160, ptr %i.cu, align 1
  %.sroa.5.0..sroa_idx.i12.i = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  store i64 %i.be, ptr %.sroa.5.0..sroa_idx.i12.i, align 1
  br label %.critedge

bb.al:                                            ; preds = %bb.b
  %i.cz = getelementptr i8, ptr %i.i, i64 6
  %i.da = icmp ugt i8 %.val155, -65
  tail call void @llvm.assume(i1 %i.da)
  %i.db = and i8 %.val155, 8
  %.not.i164 = icmp eq i8 %i.db, 0
  tail call void @llvm.assume(i1 %.not.i164)
  %i.dc = getelementptr i8, ptr %i.i, i64 4       ; 2 uses
  %.val7.i165 = load i16, ptr %i.dc, align 4, !tbaa !44
  %i.dd = zext i16 %.val7.i165 to i64
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 1            ; 2 uses
  %.not128 = icmp eq i64 %i.df, 0
  br i1 %.not128, label %.critedge, label %upb_MiniTableField_CType.exit197

upb_MiniTableField_CType.exit197:                 ; preds = %bb.al
  %i.dg = inttoptr i64 %i.df to ptr
  %i.dh = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.di = load i16, ptr %i.dh, align 4, !tbaa !20
  %i.dj = zext i16 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 2
  %i.dl = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.dk
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !21
  %i.dn = tail call ptr @upb_Map_DeepClone(ptr noundef nonnull %i.dg, i32 poison, i32 poison, ptr noundef nonnull %i.dm, ptr noundef %3), !inline_history !45 ; 5 uses
  %.not.i169 = icmp eq ptr %i.dn, null
  br i1 %.not.i169, label %.critedge143, label %bb.am

bb.am:                                            ; preds = %upb_MiniTableField_CType.exit197
  %.val.i186 = load i8, ptr %i.j, align 1, !tbaa !19 ; 3 uses
  %i.do = and i8 %.val.i186, 8
  %.not.i187 = icmp eq i8 %i.do, 0
  tail call void @llvm.assume(i1 %.not.i187)
  %.val6.i.i = load i16, ptr %i.cz, align 2, !tbaa !42 ; 5 uses
  %i.dp = icmp sgt i16 %.val6.i.i, 0
  br i1 %i.dp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
end_hunk_0
begin_hunk_1_@_upb_Message_Copy:bb.a
  %.not.i199 = icmp eq i8 %i.fl, 0
  tail call void @llvm.assume(i1 %.not.i199)
  %.val6.i.i200 = load i16, ptr %i.ei, align 2, !tbaa !42 ; 5 uses
  %i.fm = icmp sgt i16 %.val6.i.i200, 0
  br i1 %i.fm, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %upb_Message_Array_DeepClone.exit
  %i.fn = lshr i16 %.val6.i.i200, 3
  %i.fo = trunc i16 %.val6.i.i200 to i8
  %i.fp = and i8 %i.fo, 7
  %i.fq = shl nuw i8 1, %i.fp
  %i.fr = zext nneg i16 %i.fn to i64
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 %i.fr ; 2 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !21
  %i.fu = or i8 %i.ft, %i.fq
  store i8 %i.fu, ptr %i.fs, align 1, !tbaa !21
  %.val7.pre.i206 = load i8, ptr %i.j, align 1, !tbaa !19
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201

bb.ba:                                            ; preds = %upb_Message_Array_DeepClone.exit
  %i.fv = icmp slt i16 %.val6.i.i200, 0
  br i1 %i.fv, label %bb.bb, label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201

bb.bb:                                            ; preds = %bb.ba
  %.val8.i.i205 = load i32, ptr %i.i, align 4, !tbaa !43
  %i.fw = xor i16 %.val6.i.i200, -1
  %i.fx = zext nneg i16 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 %i.fx
  store i32 %.val8.i.i205, ptr %i.fy, align 4, !tbaa !3
  br label %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201

_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201: ; preds = %bb.bb, %bb.ba, %bb.az
  %.val7.i202 = phi i8 [ %.val7.pre.i206, %bb.az ], [ %.val.i198, %bb.ba ], [ %.val.i198, %bb.bb ]
  %.val8.i203 = load i16, ptr %i.em, align 4, !tbaa !44
  %i.fz = zext i16 %.val8.i203 to i64
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 %i.fz ; 4 uses
  %i.gb = lshr i8 %.val7.i202, 6
  switch i8 %i.gb, label %default.unreachable [
    i8 0, label %bb.bc
    i8 1, label %bb.bd
    i8 3, label %bb.be
    i8 2, label %bb.bf
  ]

bb.bc:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201
  %i.gc = ptrtoint ptr %i.fk to i64
  %.0.extract.trunc233 = trunc i64 %i.gc to i8
  store i8 %.0.extract.trunc233, ptr %i.ga, align 1
  br label %.critedge

bb.bd:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201
  %i.gd = ptrtoint ptr %i.fk to i64
  %.0.extract.trunc231 = trunc i64 %i.gd to i32
  store i32 %.0.extract.trunc231, ptr %i.ga, align 1
  br label %.critedge

bb.be:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201
  %i.ge = ptrtoint ptr %i.fk to i64
  store i64 %i.ge, ptr %i.ga, align 1
  br label %.critedge

bb.bf:                                            ; preds = %_upb_Message_SetPresence_dont_copy_me__upb_internal_use_only.exit.i201
  store ptr %i.fk, ptr %i.ga, align 1
  br label %.critedge

.critedge:                                        ; preds = %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.aa, %bb.z, %bb.y, %bb.ab, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.p, %bb.o, %bb.n, %bb.m, %bb.al, %upb_Message_GetString.exit, %bb.g, %bb.au, %upb_MiniTableField_CType.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val153 = load i16, ptr %i.g, align 2, !tbaa !40
  %i.gf = zext i16 %.val153 to i64
  %.not133 = icmp samesign ult i64 %indvars.iv.next, %i.gf
  br i1 %.not133, label %bb.b, label %.critedge144, !llvm.loop !47

.critedge144:                                     ; preds = %.critedge, %bb.a
  %.val157 = load i64, ptr %1, align 8, !tbaa !21
  %i.gg = and i64 %.val157, -2                    ; 2 uses
  %i.gh = inttoptr i64 %i.gg to ptr               ; 3 uses
  %.not134 = icmp eq i64 %i.gg, 0
  br i1 %.not134, label %.critedge143, label %.preheader

.preheader:                                       ; preds = %.critedge144
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !3
  %.not137255.not = icmp eq i32 %i.gi, 0
  br i1 %.not137255.not, label %.critedge143, label %.lr.ph257

.lr.ph257:                                        ; preds = %.preheader
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gh, i64 8
  %i.gk = getelementptr i8, ptr %3, i64 8
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph257, %.critedge148
  %.0119256 = phi i64 [ 0, %.lr.ph257 ], [ %i.ja, %.critedge148 ] ; 2 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gj, i64 %.0119256
  %.sroa.0.0.copyload = load i64, ptr %i.gl, align 8, !tbaa !11 ; 4 uses
  %i.gm = trunc i64 %.sroa.0.0.copyload to i1
  br i1 %i.gm, label %bb.bh, label %bb.bx

bb.bh:                                            ; preds = %bb.bg
  %i.gn = and i64 %.sroa.0.0.copyload, -4
  %i.go = inttoptr i64 %i.gn to ptr               ; 5 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !48 ; 3 uses
  %i.gq = tail call ptr @_upb_Message_GetOrCreateExtension_dont_copy_me__upb_internal_use_only(ptr noundef %0, ptr noundef %i.gp, ptr noundef %3) #7 ; 4 uses
  %.not135 = icmp eq ptr %i.gq, null
  br i1 %.not135, label %.critedge143, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gr = getelementptr i8, ptr %i.gp, i64 11
  %.val154 = load i8, ptr %i.gr, align 1, !tbaa !19 ; 2 uses
  %i.gs = and i8 %.val154, 3
  %i.gt = icmp eq i8 %i.gs, 2
  br i1 %i.gt, label %bb.bj, label %bb.bq

bb.bj:                                            ; preds = %bb.bi
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !48 ; 3 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gq, i64 8 ; 5 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gv, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i64 16, i1 false), !tbaa.struct !51
  %i.gx = getelementptr i8, ptr %i.gu, i64 10
  %.val.i179 = load i8, ptr %i.gx, align 2, !tbaa !16 ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gu, i64 11
  %.val6.i = load i8, ptr %i.gy, align 1, !tbaa !19
  %i.gz = zext i8 %.val.i179 to i64               ; 3 uses
  %i.ha = and i8 %.val6.i, 16
  %.not.i.i.i225 = icmp eq i8 %i.ha, 0
  br i1 %.not.i.i.i225, label %upb_MiniTableExtension_CType.exit.thread241, label %bb.bk

upb_MiniTableExtension_CType.exit.thread241:      ; preds = %bb.bj
  %i.hb = add nuw nsw i64 %i.gz, 4294967295
  %i.hc = and i64 %i.hb, 4294967295               ; 2 uses
  br label %upb_MiniTableExtension_CType.exit.i223

bb.bk:                                            ; preds = %bb.bj
  switch i8 %.val.i179, label %upb_MiniTableExtension_CType.exit.thread [
    i8 5, label %upb_MiniTableExtension_CType.exit.thread.thread
    i8 12, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  br label %upb_MiniTableExtension_CType.exit.thread.thread

upb_MiniTableExtension_CType.exit.thread.thread:  ; preds = %bb.bl, %bb.bk
  %.0.i.i.i.ph.pn.ph = phi i64 [ 8, %bb.bl ], [ 13, %bb.bk ]
  %.in288 = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.0.i.i.i.ph.pn.ph
  %i.hd = load i32, ptr %.in288, align 4, !tbaa !3
  br label %upb_MiniTableExtension_GetSubMessage.exit224

upb_MiniTableExtension_CType.exit.thread:         ; preds = %bb.bk
  %i.he = add nuw nsw i64 %i.gz, 4294967295
  %i.hf = and i64 %i.he, 4294967295
  %.pre = add nuw nsw i64 %i.gz, 4294967295
  %.pre267 = and i64 %.pre, 4294967295
  br label %upb_MiniTableExtension_CType.exit.i223

upb_MiniTableExtension_CType.exit.i223:           ; preds = %upb_MiniTableExtension_CType.exit.thread, %upb_MiniTableExtension_CType.exit.thread241
  %.pre-phi268 = phi i64 [ %.pre267, %upb_MiniTableExtension_CType.exit.thread ], [ %i.hc, %upb_MiniTableExtension_CType.exit.thread241 ]
  %.pn293 = phi i64 [ %i.hf, %upb_MiniTableExtension_CType.exit.thread ], [ %i.hc, %upb_MiniTableExtension_CType.exit.thread241 ]
  %.in292 = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.pn293
  %i.hg = load i32, ptr %.in292, align 4, !tbaa !3 ; 2 uses
  %i.hh = add nsw i64 %.pre-phi268, -9
  %i.hi = icmp ult i64 %i.hh, 2
  br i1 %i.hi, label %bb.bm, label %upb_MiniTableExtension_GetSubMessage.exit224

bb.bm:                                            ; preds = %upb_MiniTableExtension_CType.exit.i223
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  %i.hk = load ptr, ptr %i.hj, align 8
  br label %upb_MiniTableExtension_GetSubMessage.exit224

upb_MiniTableExtension_GetSubMessage.exit224:     ; preds = %upb_MiniTableExtension_CType.exit.thread.thread, %upb_MiniTableExtension_CType.exit.i223, %bb.bm
  %i.hl = phi i32 [ %i.hg, %bb.bm ], [ %i.hg, %upb_MiniTableExtension_CType.exit.i223 ], [ %i.hd, %upb_MiniTableExtension_CType.exit.thread.thread ]
  %.0.i222 = phi ptr [ %i.hk, %bb.bm ], [ null, %upb_MiniTableExtension_CType.exit.i223 ], [ null, %upb_MiniTableExtension_CType.exit.thread.thread ] ; 2 uses
  switch i32 %i.hl, label %bb.bp [
    i32 1, label %.critedge148
    i32 2, label %.critedge148
    i32 3, label %.critedge148
    i32 4, label %.critedge148
    i32 5, label %.critedge148
    i32 7, label %.critedge148
    i32 8, label %.critedge148
    i32 9, label %.critedge148
    i32 10, label %bb.bn
    i32 11, label %bb.bn
    i32 6, label %upb_Clone_MessageValue.exit
  ]

bb.bn:                                            ; preds = %upb_MiniTableExtension_GetSubMessage.exit224, %upb_MiniTableExtension_GetSubMessage.exit224
  %.sroa.08.0.copyload.i = load ptr, ptr %i.gv, align 8, !tbaa !22
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gq, i64 16 ; 2 uses
  %.sroa.49.0.copyload.i = load i64, ptr %.sroa.49.0..sroa_idx.i, align 8, !tbaa !11
  %sext.i = shl i64 %.sroa.49.0.copyload.i, 32
  %i.hm = ashr exact i64 %sext.i, 32              ; 3 uses
  %i.hn = add nsw i64 %i.hm, 7
  %i.ho = and i64 %i.hn, -8                       ; 3 uses
  %.val.i.i214 = load ptr, ptr %3, align 8, !tbaa !24 ; 4 uses
  %.val11.i.i215 = load ptr, ptr %i.gk, align 8, !tbaa !26
  %i.hp = ptrtoint ptr %.val11.i.i215 to i64
  %i.hq = ptrtoint ptr %.val.i.i214 to i64
  %i.hr = sub i64 %i.hp, %i.hq
  %i.hs = icmp ult i64 %i.hr, %i.ho
  br i1 %i.hs, label %upb_Arena_Malloc.exit.i, label %upb_Arena_Malloc.exit.i.thread, !prof !27

upb_Arena_Malloc.exit.i.thread:                   ; preds = %bb.bn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i214) ]
  %i.ht = getelementptr inbounds nuw i8, ptr %.val.i.i214, i64 %i.ho
  store ptr %i.ht, ptr %3, align 8, !tbaa !24
  br label %bb.bo

upb_Arena_Malloc.exit.i:                          ; preds = %bb.bn
  %i.hu = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.ho) #7, !inline_history !52 ; 2 uses
  %.not249 = icmp eq ptr %i.hu, null
  br i1 %.not249, label %.critedge143, label %bb.bo

bb.bo:                                            ; preds = %upb_Arena_Malloc.exit.i.thread, %upb_Arena_Malloc.exit.i
  %.0.i.i216243 = phi ptr [ %.val.i.i214, %upb_Arena_Malloc.exit.i.thread ], [ %i.hu, %upb_Arena_Malloc.exit.i ] ; 2 uses
  store ptr %.0.i.i216243, ptr %i.gv, align 8, !tbaa !22
  store i64 %i.hm, ptr %.sroa.49.0..sroa_idx.i, align 8, !tbaa !11
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i216243, ptr align 1 %.sroa.08.0.copyload.i, i64 %i.hm, i1 false)
  br label %.critedge148

bb.bp:                                            ; preds = %upb_MiniTableExtension_GetSubMessage.exit224
  unreachable

upb_Clone_MessageValue.exit:                      ; preds = %upb_MiniTableExtension_GetSubMessage.exit224
  %i.hv = load ptr, ptr %i.gv, align 8, !tbaa !28
  %i.hw = tail call ptr @upb_Message_New(ptr noundef %.0.i222, ptr noundef %3) #7, !inline_history !53
  %i.hx = tail call ptr @_upb_Message_Copy(ptr noundef %i.hw, ptr noundef %i.hv, ptr noundef %.0.i222, ptr noundef %3), !inline_history !53 ; 2 uses
  store ptr %i.hx, ptr %i.gv, align 8, !tbaa !28
  %.not248 = icmp eq ptr %i.hx, null
  br i1 %.not248, label %.critedge143, label %.critedge148

bb.bq:                                            ; preds = %bb.bi
  %i.hy = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !21
  %i.ia = getelementptr i8, ptr %i.gp, i64 10
  %.val149 = load i8, ptr %i.ia, align 2, !tbaa !16 ; 2 uses
  %i.ib = zext i8 %.val149 to i64
  %i.ic = and i8 %.val154, 16
  %.not.i.i180 = icmp eq i8 %i.ic, 0
  br i1 %.not.i.i180, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  switch i8 %.val149, label %bb.bt [
    i8 5, label %upb_MiniTableField_CType.exit182
    i8 12, label %bb.bs
  ]

bb.bs:                                            ; preds = %bb.br
  br label %upb_MiniTableField_CType.exit182

bb.bt:                                            ; preds = %bb.br, %bb.bq
  %i.id = add nuw nsw i64 %i.ib, 4294967295
  %i.ie = and i64 %i.id, 4294967295
  br label %upb_MiniTableField_CType.exit182

upb_MiniTableField_CType.exit182:                 ; preds = %bb.br, %bb.bs, %bb.bt
  %.0.i.i181 = phi i64 [ %i.ie, %bb.bt ], [ 8, %bb.bs ], [ 13, %bb.br ]
  %i.if = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.0.i.i181
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !3
  %i.ih = load ptr, ptr %i.go, align 8, !tbaa !48 ; 3 uses
  %i.ii = getelementptr i8, ptr %i.ih, i64 10
  %.val.i183 = load i8, ptr %i.ii, align 2, !tbaa !16 ; 2 uses
  %i.ij = getelementptr i8, ptr %i.ih, i64 11
  %.val3.i = load i8, ptr %i.ij, align 1, !tbaa !19
  %i.ik = zext i8 %.val.i183 to i64
  %i.il = and i8 %.val3.i, 16
  %.not.i.i.i.i184 = icmp eq i8 %i.il, 0
  br i1 %.not.i.i.i.i184, label %upb_MiniTableExtension_CType.exit.i, label %bb.bu

bb.bu:                                            ; preds = %upb_MiniTableField_CType.exit182
  switch i8 %.val.i183, label %upb_MiniTableExtension_CType.exit.i [
    i8 5, label %upb_MiniTableExtension_GetSubMessage.exit
    i8 12, label %upb_MiniTableExtension_GetSubMessage.exit
  ]

upb_MiniTableExtension_CType.exit.i:              ; preds = %bb.bu, %upb_MiniTableField_CType.exit182
  %i.im = add nuw nsw i64 %i.ik, 4294967295
  %i.in = and i64 %i.im, 4294967295
  %i.io = add nsw i64 %i.in, -9
  %i.ip = icmp ult i64 %i.io, 2
  br i1 %i.ip, label %bb.bv, label %upb_MiniTableExtension_GetSubMessage.exit

bb.bv:                                            ; preds = %upb_MiniTableExtension_CType.exit.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8
  br label %upb_MiniTableExtension_GetSubMessage.exit

upb_MiniTableExtension_GetSubMessage.exit:        ; preds = %bb.bu, %bb.bu, %upb_MiniTableExtension_CType.exit.i, %bb.bv
  %.0.i185 = phi ptr [ %i.ir, %bb.bv ], [ null, %upb_MiniTableExtension_CType.exit.i ], [ null, %bb.bu ], [ null, %bb.bu ]
  %i.is = tail call ptr @upb_Array_DeepClone(ptr noundef %i.hz, i32 noundef %i.ig, ptr noundef %.0.i185, ptr noundef %3) ; 2 uses
  %.not136.not = icmp eq ptr %i.is, null
  br i1 %.not136.not, label %.critedge143, label %bb.bw

bb.bw:                                            ; preds = %upb_MiniTableExtension_GetSubMessage.exit
  %i.it = getelementptr inbounds nuw i8, ptr %i.gq, i64 8
  store ptr %i.is, ptr %i.it, align 8, !tbaa !21
  br label %.critedge148

bb.bx:                                            ; preds = %bb.bg
  %.not247 = icmp eq i64 %.sroa.0.0.copyload, 0
  br i1 %.not247, label %.critedge148, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iu = and i64 %.sroa.0.0.copyload, -4
  %i.iv = inttoptr i64 %i.iu to ptr               ; 2 uses
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !54
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 8
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !56
  %i.iz = tail call zeroext i1 @_upb_Message_AddUnknownSlowPath_dont_copy_me__upb_internal_use_only(ptr noundef %0, ptr noundef %i.iw, i64 noundef %i.iy, ptr noundef %3, i1 noundef zeroext false) #7
  br i1 %i.iz, label %.critedge148, label %.critedge143

.critedge148:                                     ; preds = %bb.bo, %upb_MiniTableExtension_GetSubMessage.exit224, %upb_MiniTableExtension_GetSubMessage.exit224, %upb_MiniTableExtension_GetSubMessage.exit224, %upb_MiniTableExtension_GetSubMessage.exit224, %upb_MiniTableExtension_GetSubMessage.exit224, %upb_MiniTableExtension_GetSubMessage.exit224, %upb_MiniTableExtension_GetSubMessage.exit224, %upb_MiniTableExtension_GetSubMessage.exit224, %upb_Clone_MessageValue.exit, %bb.bw, %bb.bx, %bb.by
  %i.ja = add nuw nsw i64 %.0119256, 1            ; 2 uses
  %i.jb = load i32, ptr %i.gh, align 8, !tbaa !3
  %i.jc = zext i32 %i.jb to i64
  %.not137 = icmp samesign ult i64 %i.ja, %i.jc
  br i1 %.not137, label %bb.bg, label %.critedge143, !llvm.loop !57

.critedge143:                                     ; preds = %bb.h, %.critedge.i.i, %upb_MiniTableField_CType.exit197, %upb_Arena_Malloc.exit.i, %bb.by, %upb_MiniTableExtension_GetSubMessage.exit, %upb_Clone_MessageValue.exit, %bb.bh, %.critedge148, %.preheader, %.critedge144
  %.19 = phi ptr [ %0, %.preheader ], [ %0, %.critedge144 ], [ %0, %.critedge148 ], [ null, %bb.bh ], [ null, %upb_Clone_MessageValue.exit ], [ null, %upb_MiniTableExtension_GetSubMessage.exit ], [ null, %bb.by ], [ null, %upb_Arena_Malloc.exit.i ], [ null, %upb_MiniTableField_CType.exit197 ], [ null, %.critedge.i.i ], [ null, %bb.h ]
  ret ptr %.19
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define hidden noundef ptr @upb_Message_DeepClone(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @upb_Message_New(ptr noundef %1, ptr noundef %2) #7
  %i.b = tail call ptr @_upb_Message_Copy(ptr noundef %i.a, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %i.b
}

declare ptr @_upb_Message_GetOrCreateExtension_dont_copy_me__upb_internal_use_only(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden noundef zeroext i1 @upb_Message_DeepCopy(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 8
  %.val = load i16, ptr %i.a, align 8, !tbaa !40
  %.val.i = load i64, ptr %0, align 8, !tbaa !21
  %i.b = and i64 %.val.i, -2                      ; 2 uses
  %i.c = zext i16 %.val to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %0, i8 0, i64 %i.c, i1 false)
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %upb_Message_Clear.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = inttoptr i64 %i.b to ptr
  store i32 0, ptr %i.d, align 8, !tbaa !3
  br label %upb_Message_Clear.exit

upb_Message_Clear.exit:                           ; preds = %bb.a, %bb.b
  %i.e = tail call ptr @_upb_Message_Copy(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3)
  %i.f = icmp ne ptr %i.e, null
  ret i1 %i.f
}

declare ptr @upb_Message_New(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @upb_Message_ShallowCopy(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !40
  %i.c = zext i16 %i.b to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %0, ptr align 8 %1, i64 %i.c, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden ptr @upb_Message_ShallowClone(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @upb_Message_New(ptr noundef %1, ptr noundef %2) #7 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i16, ptr %i.b, align 8, !tbaa !40
  %i.d = zext i16 %i.c to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.a, ptr readonly align 8 %0, i64 %i.d, i1 false)
  ret ptr %i.a
}

declare ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @upb_Map_Insert(ptr noundef, ptr, i64, ptr, i64, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { ptr, i64 } @upb_Message_GetField(ptr noundef %0, ptr noundef %1, ptr %2, i64 %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 11         ; 2 uses
  %.val5 = load i8, ptr %i.a, align 1, !tbaa !19  ; 3 uses
  %i.b = and i8 %.val5, 8
  %.not = icmp eq i8 %i.b, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @_upb_Message_Getext_dont_copy_me__upb_internal_use_only(ptr noundef %0, ptr noundef nonnull %1) #7 ; 3 uses
  %.val.i = load i8, ptr %i.a, align 1, !tbaa !19 ; 3 uses
  %i.d = and i8 %.val.i, 8
  %i.e = icmp ne i8 %i.d, 0
  tail call void @llvm.assume(i1 %i.e)
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
end_hunk_1
