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
  %i.ap = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ak
  store ptr %i.ap, ptr %4, align 8, !tbaa !24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
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
  %i.e = load i8, ptr %i.d, align 1, !tbaa !21    ; 2 uses
  %4 = zext nneg i8 %i.e to i64
  %i.f = shl i64 %.val, %4
  %i.g = add i64 %i.f, 31
  %i.h = and i64 %i.g, -8                         ; 3 uses
  %.val.i.i.i = load ptr, ptr %3, align 8, !tbaa !24 ; 4 uses
  %i.i = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val11.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.j = ptrtoint ptr %.val11.i.i.i to i64
  %i.k = ptrtoint ptr %.val.i.i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ult i64 %i.l, %i.h
  br i1 %i.m, label %upb_Arena_Malloc.exit.i.i, label %upb_Arena_Malloc.exit.thread.i.i, !prof !27

upb_Arena_Malloc.exit.thread.i.i:                 ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.h
  store ptr %i.n, ptr %3, align 8, !tbaa !24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i) ]
  br label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

upb_Arena_Malloc.exit.i.i:                        ; preds = %bb.a
  %i.o = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.h) #7 ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit

_upb_Array_ResizeUninitialized_dont_copy_me__upb_internal_use_only.exit: ; preds = %upb_Arena_Malloc.exit.i.i, %upb_Arena_Malloc.exit.thread.i.i
  %.0.i19.i.i = phi ptr [ %.val.i.i.i, %upb_Arena_Malloc.exit.thread.i.i ], [ %i.o, %upb_Arena_Malloc.exit.i.i ] ; 11 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i19.i.i, i64 24
  %5 = sext i8 %i.e to i64
  %i.q = icmp ne i32 %i.b, 0
  %.neg.i.i.i = sext i1 %i.q to i64
  %i.r = add nsw i64 %5, %.neg.i.i.i
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = or i64 %i.r, %i.s
  store i64 %i.t, ptr %.0.i19.i.i, align 8, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %.0.i19.i.i, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i19.i.i, i64 16
  store i64 %.val, ptr %i.v, align 8, !tbaa !36
  store i64 %.val, ptr %i.u, align 8, !tbaa !33
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
  %.047.us = phi i64 [ %i.z, %upb_Clone_MessageValue.exit.thread.us ], [ 0, %upb_Clone_MessageValue.exit.thread.us.preheader ] ; 3 uses
  %i.w = tail call { ptr, i64 } @upb_Array_Get(ptr noundef nonnull %0, i64 noundef %.047.us) #7 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  tail call void @upb_Array_Set(ptr noundef nonnull %.0.i19.i.i, i64 noundef %.047.us, ptr %i.x, i64 %i.y) #7
  %i.z = add nuw i64 %.047.us, 1                  ; 2 uses
  %exitcond73.not = icmp eq i64 %i.z, %.val
  br i1 %exitcond73.not, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %upb_Clone_MessageValue.exit.thread.us, !llvm.loop !37

.lr.ph.split.us50:                                ; preds = %.lr.ph.split.us50.preheader, %upb_Clone_MessageValue.exit.thread.us52
  %.047.us51 = phi i64 [ %i.am, %upb_Clone_MessageValue.exit.thread.us52 ], [ 0, %.lr.ph.split.us50.preheader ] ; 3 uses
  %i.aa = tail call { ptr, i64 } @upb_Array_Get(ptr noundef %0, i64 noundef %.047.us51) #7 ; 2 uses
  %i.ab = extractvalue { ptr, i64 } %i.aa, 0
  %i.ac = extractvalue { ptr, i64 } %i.aa, 1
  %sext.i.us = shl i64 %i.ac, 32
  %i.ad = ashr exact i64 %sext.i.us, 32           ; 3 uses
  %i.ae = add nsw i64 %i.ad, 7
  %i.af = and i64 %i.ae, -8                       ; 3 uses
  %.val.i.i.us = load ptr, ptr %3, align 8, !tbaa !24 ; 4 uses
  %.val11.i.i.us = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.ag = ptrtoint ptr %.val11.i.i.us to i64
  %i.ah = ptrtoint ptr %.val.i.i.us to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.af
  br i1 %i.aj, label %upb_Arena_Malloc.exit.i.us, label %upb_Arena_Malloc.exit.i.thread.us, !prof !27

upb_Arena_Malloc.exit.i.thread.us:                ; preds = %.lr.ph.split.us50
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i.i.us, i64 %i.af
  store ptr %i.ak, ptr %3, align 8, !tbaa !24
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.us) ]
  br label %upb_Clone_MessageValue.exit.thread.us52

upb_Arena_Malloc.exit.i.us:                       ; preds = %.lr.ph.split.us50
  %i.al = tail call ptr @_upb_Arena_SlowMalloc_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %3, i64 noundef %i.af) #7, !inline_history !38 ; 2 uses
  %.not45.us = icmp eq ptr %i.al, null
  br i1 %.not45.us, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %upb_Clone_MessageValue.exit.thread.us52

upb_Clone_MessageValue.exit.thread.us52:          ; preds = %upb_Arena_Malloc.exit.i.us, %upb_Arena_Malloc.exit.i.thread.us
  %.0.i.i2835.us = phi ptr [ %.val.i.i.us, %upb_Arena_Malloc.exit.i.thread.us ], [ %i.al, %upb_Arena_Malloc.exit.i.us ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.0.i.i2835.us, ptr align 1 %i.ab, i64 %i.ad, i1 false)
  tail call void @upb_Array_Set(ptr noundef nonnull %.0.i19.i.i, i64 noundef %.047.us51, ptr nonnull %.0.i.i2835.us, i64 %i.ad) #7
  %i.am = add nuw i64 %.047.us51, 1               ; 2 uses
  %exitcond71.not = icmp eq i64 %i.am, %.val
  br i1 %exitcond71.not, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %.lr.ph.split.us50, !llvm.loop !37

upb_Clone_MessageValue.exit.us:                   ; preds = %.lr.ph, %upb_Clone_MessageValue.exit.thread.us61
  %.047.us60 = phi i64 [ %i.as, %upb_Clone_MessageValue.exit.thread.us61 ], [ 0, %.lr.ph ] ; 3 uses
  %i.an = tail call { ptr, i64 } @upb_Array_Get(ptr noundef %0, i64 noundef %.047.us60) #7 ; 2 uses
  %i.ao = extractvalue { ptr, i64 } %i.an, 0
  %i.ap = tail call ptr @upb_Message_New(ptr noundef %2, ptr noundef nonnull %3) #7, !inline_history !39
  %i.aq = tail call ptr @_upb_Message_Copy(ptr noundef %i.ap, ptr noundef %i.ao, ptr noundef %2, ptr noundef nonnull %3), !inline_history !39 ; 2 uses
  %.not.us = icmp eq ptr %i.aq, null
  br i1 %.not.us, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %upb_Clone_MessageValue.exit.thread.us61

upb_Clone_MessageValue.exit.thread.us61:          ; preds = %upb_Clone_MessageValue.exit.us
  %i.ar = extractvalue { ptr, i64 } %i.an, 1
  tail call void @upb_Array_Set(ptr noundef nonnull %.0.i19.i.i, i64 noundef %.047.us60, ptr nonnull %i.aq, i64 %i.ar) #7
  %i.as = add nuw i64 %.047.us60, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.as, %.val
  br i1 %exitcond.not, label %_upb_Array_New_dont_copy_me__upb_internal_use_only.exit.thread, label %upb_Clone_MessageValue.exit.us, !llvm.loop !37

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.at = tail call { ptr, i64 } @upb_Array_Get(ptr noundef nonnull %0, i64 noundef 0) #7 ; 0 uses
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
  %.val153251 = load i16, ptr %i.g, align 2, !tbaa !40
  %.not133252.not = icmp eq i16 %.val153251, 0
  br i1 %.not133252.not, label %.critedge144, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %.val = load ptr, ptr %2, align 8, !tbaa !13
  %i.i = getelementptr inbounds nuw [12 x i8], ptr %.val, i64 %indvars.iv ; 24 uses
  %i.j = getelementptr i8, ptr %i.i, i64 11       ; 10 uses
  %.val155 = load i8, ptr %i.j, align 1, !tbaa !19 ; 9 uses
  %i.k = and i8 %.val155, 3
  switch i8 %i.k, label %.unreachabledefault [
    i8 2, label %bb.c
    i8 0, label %bb.ai
    i8 1, label %bb.ar
  ]

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %i.i, i64 10       ; 2 uses
  %.val151 = load i8, ptr %i.l, align 2, !tbaa !16 ; 4 uses
  %i.m = zext i8 %.val151 to i64
  %i.n = and i8 %.val155, 16                      ; 2 uses
  %.not.i.i = icmp eq i8 %i.n, 0
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
end_hunk_0
