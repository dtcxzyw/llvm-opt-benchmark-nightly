Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/compare?download=true
inline.NumInlined: 39
inline.NumDeleted: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.upb_MessageValue = type { %struct.upb_StringView }
%struct.upb_StringView = type { ptr, i64 }

@upb_FieldType_CType.c_type = internal unnamed_addr constant [18 x i32] [i32 7, i32 2, i32 8, i32 9, i32 3, i32 9, i32 4, i32 1, i32 10, i32 6, i32 6, i32 11, i32 4, i32 5, i32 3, i32 8, i32 3, i32 8], align 16

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @upb_Message_IsEmpty(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %2 = alloca %union.upb_MessageValue, align 8    ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = tail call i64 @upb_Message_ExtensionCount(ptr noundef %0) #4
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 -1, ptr %i.b, align 8, !tbaa !7
  %i.d = call zeroext i1 @_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %2, ptr noundef nonnull %i.b) #4
  %i.e = xor i1 %i.d, true
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare i64 @upb_Message_ExtensionCount(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare zeroext i1 @_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define hidden zeroext i1 @upb_Message_IsEqual(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %union.upb_MessageValue, align 8    ; 7 uses
  %5 = alloca %union.upb_MessageValue, align 8    ; 7 uses
  %6 = alloca %union.upb_MessageValue, align 8    ; 6 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 15 uses
  %i.e = alloca ptr, align 8                      ; 15 uses
  %7 = alloca %union.upb_MessageValue, align 8    ; 18 uses
  %8 = alloca %union.upb_MessageValue, align 8    ; 18 uses
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %_upb_Message_ExtensionsAreEqual.exit.thread, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #4
  store i64 -1, ptr %i.b, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #4
  store i64 -1, ptr %i.c, align 8, !tbaa !7
  %9 = getelementptr inbounds nuw i8, ptr %7, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %12 = getelementptr inbounds nuw i8, ptr %5, i64 8
  %13 = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.g = call zeroext i1 @_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %7, ptr noundef nonnull %i.b) #4, !inline_history !10 ; 2 uses
  %i.h = call zeroext i1 @_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %8, ptr noundef nonnull %i.c) #4, !inline_history !10 ; 2 uses
  %i.i = and i1 %i.g, %i.h
  br i1 %i.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b, %.backedge107
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !11   ; 5 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !11
  %.not.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i, label %bb.d, label %.thread.thread

.thread.thread:                                   ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %_upb_Message_ExtensionsAreEqual.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.j, i64 10
  %.val.i25 = load i8, ptr %i.l, align 2, !tbaa !14 ; 3 uses
  %i.m = getelementptr i8, ptr %i.j, i64 11
  %.val3.i = load i8, ptr %i.m, align 1, !tbaa !17 ; 2 uses
  %i.n = zext i8 %.val.i25 to i64                 ; 2 uses
  %i.o = and i8 %.val3.i, 16
  %.not.i.i.i26 = icmp eq i8 %i.o, 0              ; 2 uses
  br i1 %.not.i.i.i26, label %upb_MiniTableField_CType.exit.i28, label %bb.e

bb.e:                                             ; preds = %bb.d
  switch i8 %.val.i25, label %upb_MiniTableField_CType.exit.i28 [
    i8 5, label %upb_MiniTable_SubMessage.exit.thread
    i8 12, label %upb_MiniTable_SubMessage.exit.thread
  ]

upb_MiniTableField_CType.exit.i28:                ; preds = %bb.e, %bb.d
  %i.p = add nuw nsw i64 %i.n, 4294967295
  %i.q = and i64 %i.p, 4294967295                 ; 2 uses
  %i.r = add nsw i64 %i.q, -9
  %i.s = icmp ult i64 %i.r, 2
  br i1 %i.s, label %bb.f, label %upb_MiniTable_SubMessage.exit

bb.f:                                             ; preds = %upb_MiniTableField_CType.exit.i28
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.u = load i16, ptr %i.t, align 4, !tbaa !18
  %i.v = zext i16 %i.u to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19
  br label %upb_MiniTable_SubMessage.exit

upb_MiniTable_SubMessage.exit:                    ; preds = %upb_MiniTableField_CType.exit.i28, %bb.f
  %.0.i27 = phi ptr [ %i.y, %bb.f ], [ null, %upb_MiniTableField_CType.exit.i28 ] ; 2 uses
  br i1 %.not.i.i.i26, label %upb_MiniTableField_CType.exit, label %upb_MiniTable_SubMessage.exit.thread

upb_MiniTable_SubMessage.exit.thread:             ; preds = %bb.e, %bb.e, %upb_MiniTable_SubMessage.exit
  %.0.i2758 = phi ptr [ %.0.i27, %upb_MiniTable_SubMessage.exit ], [ null, %bb.e ], [ null, %bb.e ] ; 3 uses
  switch i8 %.val.i25, label %upb_MiniTable_SubMessage.exit.thread._crit_edge [
    i8 5, label %upb_MiniTableField_CType.exit
    i8 12, label %bb.g
  ]

upb_MiniTable_SubMessage.exit.thread._crit_edge:  ; preds = %upb_MiniTable_SubMessage.exit.thread
  %.pre = add nuw nsw i64 %i.n, 4294967295
  %.pre163 = and i64 %.pre, 4294967295
  br label %upb_MiniTableField_CType.exit

bb.g:                                             ; preds = %upb_MiniTable_SubMessage.exit.thread
  br label %upb_MiniTableField_CType.exit

upb_MiniTableField_CType.exit:                    ; preds = %upb_MiniTable_SubMessage.exit, %upb_MiniTable_SubMessage.exit.thread._crit_edge, %upb_MiniTable_SubMessage.exit.thread, %bb.g
  %.0.i2756 = phi ptr [ %.0.i2758, %upb_MiniTable_SubMessage.exit.thread ], [ %.0.i2758, %bb.g ], [ %.0.i2758, %upb_MiniTable_SubMessage.exit.thread._crit_edge ], [ %.0.i27, %upb_MiniTable_SubMessage.exit ] ; 3 uses
  %.0.i.i24 = phi i64 [ 13, %upb_MiniTable_SubMessage.exit.thread ], [ 8, %bb.g ], [ %.pre163, %upb_MiniTable_SubMessage.exit.thread._crit_edge ], [ %i.q, %upb_MiniTable_SubMessage.exit ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.0.i.i24
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !3   ; 2 uses
  %i.ab = and i8 %.val3.i, 3
  switch i8 %i.ab, label %default.unreachable [
    i8 1, label %.split75
    i8 0, label %bb.h
    i8 2, label %bb.v
    i8 3, label %.backedge107.sink.split
  ]

.split75:                                         ; preds = %upb_MiniTableField_CType.exit
  %i.ac = load ptr, ptr %7, align 8, !tbaa !19
  %i.ad = load ptr, ptr %8, align 8, !tbaa !19
  %i.ae = call fastcc zeroext i1 @_upb_Array_IsEqual(ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %i.aa, ptr noundef %.0.i2756, i32 noundef %3), !inline_history !10
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br i1 %i.ae, label %.backedge107, label %_upb_Message_BaseFieldsAreEqual.exit

.backedge107.sink.split:                          ; preds = %upb_MiniTableField_CType.exit, %bb.h, %bb.x, %.split87
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %.backedge107

.backedge107:                                     ; preds = %.backedge107.sink.split, %.split75, %.split77, %.split79, %.split81, %.split83, %.split85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #4
  %i.af = call zeroext i1 @_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %i.d, ptr noundef nonnull %7, ptr noundef nonnull %i.b) #4, !inline_history !10 ; 2 uses
  %i.ag = call zeroext i1 @_upb_Message_NextBaseField_dont_copy_me__upb_internal_use_only(ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.e, ptr noundef nonnull %8, ptr noundef nonnull %i.c) #4, !inline_history !10 ; 2 uses
  %i.ah = and i1 %i.af, %i.ag
  br i1 %i.ah, label %bb.c, label %.thread

bb.h:                                             ; preds = %upb_MiniTableField_CType.exit
  %i.ai = load ptr, ptr %7, align 8, !tbaa !19    ; 5 uses
  %i.aj = load ptr, ptr %8, align 8, !tbaa !19    ; 4 uses
  %i.ak = icmp eq ptr %i.ai, %i.aj
  br i1 %i.ak, label %.backedge107.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i19 = icmp eq ptr %i.ai, null
  br i1 %.not.i19, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = call i64 @upb_Map_Size(ptr noundef nonnull %i.ai) #4, !inline_history !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = phi i64 [ %i.al, %bb.j ], [ 0, %bb.i ]
  %.not18.i = icmp eq ptr %i.aj, null
  br i1 %.not18.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = call i64 @upb_Map_Size(ptr noundef nonnull %i.aj) #4, !inline_history !20
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ao = phi i64 [ %i.an, %bb.l ], [ 0, %bb.k ]
  %.not19.i = icmp eq i64 %i.am, %i.ao
  br i1 %.not19.i, label %bb.n, label %_upb_Message_BaseFieldsAreEqual.exit.thread

bb.n:                                             ; preds = %bb.m
  %.val21.i = load ptr, ptr %.0.i2756, align 8, !tbaa !11 ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.val21.i, i64 12
  %i.aq = getelementptr i8, ptr %.val21.i, i64 22
  %.val.i.i = load i8, ptr %i.aq, align 2, !tbaa !14 ; 3 uses
  %i.ar = getelementptr i8, ptr %.val21.i, i64 23
  %.val3.i.i = load i8, ptr %i.ar, align 1, !tbaa !17
  %i.as = zext i8 %.val.i.i to i64                ; 2 uses
  %i.at = and i8 %.val3.i.i, 16
  %.not.i.i.i.i = icmp eq i8 %i.at, 0             ; 2 uses
  br i1 %.not.i.i.i.i, label %upb_MiniTableField_CType.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  switch i8 %.val.i.i, label %upb_MiniTableField_CType.exit.i.i [
    i8 5, label %upb_MiniTable_SubMessage.exit.i.thread
    i8 12, label %upb_MiniTable_SubMessage.exit.i.thread
  ]

upb_MiniTableField_CType.exit.i.i:                ; preds = %bb.o, %bb.n
  %i.au = add nuw nsw i64 %i.as, 4294967295
  %i.av = and i64 %i.au, 4294967295               ; 2 uses
  %i.aw = add nsw i64 %i.av, -9
  %i.ax = icmp ult i64 %i.aw, 2
  br i1 %i.ax, label %bb.p, label %upb_MiniTable_SubMessage.exit.i

bb.p:                                             ; preds = %upb_MiniTableField_CType.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.val21.i, i64 20
  %i.az = load i16, ptr %i.ay, align 4, !tbaa !18
  %i.ba = zext i16 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 2
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.bb
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !19
  br label %upb_MiniTable_SubMessage.exit.i

upb_MiniTable_SubMessage.exit.i:                  ; preds = %bb.p, %upb_MiniTableField_CType.exit.i.i
  %.0.i.i = phi ptr [ %i.bd, %bb.p ], [ null, %upb_MiniTableField_CType.exit.i.i ] ; 2 uses
  br i1 %.not.i.i.i.i, label %upb_MiniTableField_CType.exit.i, label %upb_MiniTable_SubMessage.exit.i.thread

upb_MiniTable_SubMessage.exit.i.thread:           ; preds = %bb.o, %bb.o, %upb_MiniTable_SubMessage.exit.i
  %.0.i.i62 = phi ptr [ %.0.i.i, %upb_MiniTable_SubMessage.exit.i ], [ null, %bb.o ], [ null, %bb.o ] ; 3 uses
  switch i8 %.val.i.i, label %upb_MiniTable_SubMessage.exit.i.thread._crit_edge [
    i8 5, label %upb_MiniTableField_CType.exit.i
    i8 12, label %bb.q
  ]

upb_MiniTable_SubMessage.exit.i.thread._crit_edge: ; preds = %upb_MiniTable_SubMessage.exit.i.thread
  %.pre165 = add nuw nsw i64 %i.as, 4294967295
  %.pre167 = and i64 %.pre165, 4294967295
  br label %upb_MiniTableField_CType.exit.i

bb.q:                                             ; preds = %upb_MiniTable_SubMessage.exit.i.thread
  br label %upb_MiniTableField_CType.exit.i

upb_MiniTableField_CType.exit.i:                  ; preds = %upb_MiniTable_SubMessage.exit.i, %upb_MiniTable_SubMessage.exit.i.thread._crit_edge, %bb.q, %upb_MiniTable_SubMessage.exit.i.thread
  %.0.i.i60 = phi ptr [ %.0.i.i62, %upb_MiniTable_SubMessage.exit.i.thread ], [ %.0.i.i62, %bb.q ], [ %.0.i.i62, %upb_MiniTable_SubMessage.exit.i.thread._crit_edge ], [ %.0.i.i, %upb_MiniTable_SubMessage.exit.i ]
  %.0.i.i.i = phi i64 [ 13, %upb_MiniTable_SubMessage.exit.i.thread ], [ 8, %bb.q ], [ %.pre167, %upb_MiniTable_SubMessage.exit.i.thread._crit_edge ], [ %i.av, %upb_MiniTable_SubMessage.exit.i ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.0.i.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  store i64 -1, ptr %i.a, align 8, !tbaa !7
  %i.bg = call zeroext i1 @upb_Map_Next(ptr noundef %i.ai, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %i.a) #4, !inline_history !20
  br i1 %i.bg, label %.lr.ph, label %.split87

.lr.ph:                                           ; preds = %upb_MiniTableField_CType.exit.i, %upb_MessageValue_IsEqual.exit.i.backedge
  %i.bh = load ptr, ptr %4, align 8
  %i.bi = load i64, ptr %11, align 8
  %i.bj = call zeroext i1 @upb_Map_Get(ptr noundef %i.aj, ptr %i.bh, i64 %i.bi, ptr noundef nonnull %6) #4, !inline_history !20
  br i1 %i.bj, label %bb.r, label %.split87.thread

bb.r:                                             ; preds = %.lr.ph
  %i.bk = load ptr, ptr %5, align 8               ; 5 uses
  %i.bl = load i64, ptr %12, align 8              ; 3 uses
  %i.bm = load ptr, ptr %6, align 8               ; 5 uses
  switch i32 %i.bf, label %bb.u [
    i32 1, label %.split
    i32 2, label %.split64
    i32 3, label %.split64
    i32 4, label %.split64
    i32 5, label %.split64
    i32 7, label %.split67.a
    i32 8, label %.split67.a
    i32 9, label %.split67.a
    i32 10, label %bb.s
    i32 11, label %bb.s
    i32 6, label %.split66
  ]

.split:                                           ; preds = %bb.r
  %i.bn = ptrtoint ptr %i.bk to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = and i64 %i.bp, 1
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %upb_MessageValue_IsEqual.exit.i.backedge, label %.split87.thread

upb_MessageValue_IsEqual.exit.i.backedge:         ; preds = %.split, %.split64, %.split65, %.split66, %.split67.a, %bb.t
  %i.bs = call zeroext i1 @upb_Map_Next(ptr noundef %i.ai, ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %i.a) #4, !inline_history !20
  br i1 %i.bs, label %.lr.ph, label %.split87, !llvm.loop !21

.split64:                                         ; preds = %bb.r, %bb.r, %bb.r, %bb.r
  %i.bt = ptrtoint ptr %i.bk to i64
  %.sroa.06.0.extract.trunc.i.i = trunc i64 %i.bt to i32
  %i.bu = ptrtoint ptr %i.bm to i64
  %.sroa.0.0.extract.trunc.i.i = trunc i64 %i.bu to i32
  %i.bv = icmp eq i32 %.sroa.06.0.extract.trunc.i.i, %.sroa.0.0.extract.trunc.i.i
  br i1 %i.bv, label %upb_MessageValue_IsEqual.exit.i.backedge, label %.split87.thread

.split67.a:                                       ; preds = %bb.r, %bb.r, %bb.r
  %i.bw = icmp eq ptr %i.bk, %i.bm
  br i1 %i.bw, label %upb_MessageValue_IsEqual.exit.i.backedge, label %.split87.thread

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.bx = load i64, ptr %13, align 8
  %i.by = icmp eq i64 %i.bl, %i.bx
  br i1 %i.by, label %bb.t, label %.split87.thread

bb.t:                                             ; preds = %bb.s
  %.not.i49 = icmp eq i64 %i.bl, 0
  br i1 %.not.i49, label %upb_MessageValue_IsEqual.exit.i.backedge, label %.split65

.split65:                                         ; preds = %bb.t
  %bcmp.i = call i32 @bcmp(ptr readonly %i.bk, ptr readonly %i.bm, i64 %i.bl)
  %.not5.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not5.i, label %upb_MessageValue_IsEqual.exit.i.backedge, label %.split87.thread

.split66:                                         ; preds = %bb.r
  %i.bz = call zeroext i1 @upb_Message_IsEqual(ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef %.0.i.i60, i32 noundef %3), !inline_history !23
  br i1 %i.bz, label %upb_MessageValue_IsEqual.exit.i.backedge, label %.split87.thread

bb.u:                                             ; preds = %bb.r
  unreachable

.split87.thread:                                  ; preds = %.lr.ph, %.split, %.split64, %.split65, %.split66, %.split67.a, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %_upb_Message_BaseFieldsAreEqual.exit.thread

.split87:                                         ; preds = %upb_MessageValue_IsEqual.exit.i.backedge, %upb_MiniTableField_CType.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #4
  br label %.backedge107.sink.split

bb.v:                                             ; preds = %upb_MiniTableField_CType.exit
  %i.ca = load ptr, ptr %7, align 8               ; 5 uses
  %i.cb = load i64, ptr %9, align 8               ; 3 uses
  %i.cc = load ptr, ptr %8, align 8               ; 5 uses
  switch i32 %i.aa, label %bb.y [
    i32 1, label %.split85
    i32 2, label %.split83
    i32 3, label %.split83
    i32 4, label %.split83
    i32 5, label %.split83
    i32 7, label %.split81
    i32 8, label %.split81
    i32 9, label %.split81
    i32 10, label %bb.w
    i32 11, label %bb.w
    i32 6, label %.split79
  ]

.split85:                                         ; preds = %bb.v
  %i.cd = ptrtoint ptr %i.ca to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = xor i64 %i.ce, %i.cd
  %i.cg = and i64 %i.cf, 1
  %i.ch = icmp eq i64 %i.cg, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br i1 %i.ch, label %.backedge107, label %_upb_Message_BaseFieldsAreEqual.exit

.split83:                                         ; preds = %bb.v, %bb.v, %bb.v, %bb.v
  %i.ci = ptrtoint ptr %i.ca to i64
  %.sroa.06.0.extract.trunc.i = trunc i64 %i.ci to i32
  %i.cj = ptrtoint ptr %i.cc to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.cj to i32
  %i.ck = icmp eq i32 %.sroa.06.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br i1 %i.ck, label %.backedge107, label %_upb_Message_BaseFieldsAreEqual.exit

.split81:                                         ; preds = %bb.v, %bb.v, %bb.v
  %i.cl = icmp eq ptr %i.ca, %i.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br i1 %i.cl, label %.backedge107, label %_upb_Message_BaseFieldsAreEqual.exit

bb.w:                                             ; preds = %bb.v, %bb.v
  %i.cm = load i64, ptr %10, align 8
  %i.cn = icmp eq i64 %i.cb, %i.cm
  br i1 %i.cn, label %bb.x, label %_upb_Message_BaseFieldsAreEqual.exit.thread

bb.x:                                             ; preds = %bb.w
  %.not.i.i = icmp eq i64 %i.cb, 0
  br i1 %.not.i.i, label %.backedge107.sink.split, label %.split77

.split77:                                         ; preds = %bb.x
  %bcmp.i.i = call i32 @bcmp(ptr readonly %i.ca, ptr readonly %i.cc, i64 %i.cb), !inline_history !24
  %.not5.i.i = icmp eq i32 %bcmp.i.i, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br i1 %.not5.i.i, label %.backedge107, label %_upb_Message_BaseFieldsAreEqual.exit

.split79:                                         ; preds = %bb.v
  %i.co = call zeroext i1 @upb_Message_IsEqual(ptr noundef %i.ca, ptr noundef %i.cc, ptr noundef %.0.i2756, i32 noundef %3), !inline_history !24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br i1 %i.co, label %.backedge107, label %_upb_Message_BaseFieldsAreEqual.exit

bb.y:                                             ; preds = %bb.v
  unreachable

default.unreachable:                              ; preds = %upb_MiniTableField_CType.exit
  unreachable

.thread:                                          ; preds = %.backedge107, %bb.b
  %.lcssa129 = phi i1 [ %i.g, %bb.b ], [ %i.af, %.backedge107 ]
  %.lcssa = phi i1 [ %i.h, %bb.b ], [ %i.ag, %.backedge107 ]
  %i.cp = xor i1 %.lcssa129, %.lcssa
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br i1 %i.cp, label %_upb_Message_ExtensionsAreEqual.exit.thread, label %.preheader

.preheader:                                       ; preds = %.thread
  %.val28.i139 = load i64, ptr %0, align 8, !tbaa !19
  %i.cq = and i64 %.val28.i139, -2                ; 2 uses
  %.not.i44140 = icmp eq i64 %i.cq, 0
  br i1 %.not.i44140, label %_upb_Message_ExtensionsAreEqual.exit, label %.preheader.i

_upb_Message_BaseFieldsAreEqual.exit.thread:      ; preds = %bb.m, %bb.w, %.split87.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  br label %_upb_Message_BaseFieldsAreEqual.exit

_upb_Message_BaseFieldsAreEqual.exit:             ; preds = %.split75, %.split77, %.split79, %.split81, %.split83, %.split85, %_upb_Message_BaseFieldsAreEqual.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  br label %_upb_Message_ExtensionsAreEqual.exit.thread

.preheader.i:                                     ; preds = %.preheader, %.backedge
  %.in = phi i64 [ %i.et, %.backedge ], [ %i.cq, %.preheader ]
  %.020.i142 = phi i64 [ %i.ea, %.backedge ], [ 0, %.preheader ] ; 3 uses
  %.053141 = phi i64 [ %i.cx, %.backedge ], [ 0, %.preheader ] ; 2 uses
  %i.cr = inttoptr i64 %.in to ptr                ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !3  ; 2 uses
  %i.ct = zext i32 %i.cs to i64
  %i.cu = icmp ult i64 %.053141, %i.ct
  br i1 %i.cu, label %.lr.ph.i, label %_upb_Message_ExtensionsAreEqual.exit

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  br label %bb.z

bb.z:                                             ; preds = %bb.af, %.lr.ph.i
  %i.cw = phi i32 [ %i.cs, %.lr.ph.i ], [ %i.du, %bb.af ] ; 2 uses
  %.0188.i = phi i64 [ %.053141, %.lr.ph.i ], [ %i.cx, %bb.af ] ; 2 uses
  %i.cx = add nuw nsw i64 %.0188.i, 1             ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.0188.i
  %.sroa.0.0.copyload.i46 = load i64, ptr %i.cy, align 8, !tbaa !7 ; 2 uses
  %i.cz = trunc i64 %.sroa.0.0.copyload.i46 to i1
  br i1 %i.cz, label %bb.aa, label %bb.af

bb.aa:                                            ; preds = %bb.z
  %i.da = and i64 %.sroa.0.0.copyload.i46, -4
  %i.db = inttoptr i64 %i.da to ptr               ; 6 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !25 ; 3 uses
  %i.dd = getelementptr i8, ptr %i.dc, i64 11
  %.val.i.i47 = load i8, ptr %i.dd, align 1, !tbaa !17
  %i.de = and i8 %.val.i.i47, 3
  switch i8 %i.de, label %bb.ae [
    i8 2, label %.loopexit
    i8 1, label %_upb_Extension_IsEmpty_dont_copy_me__upb_internal_use_only.exit.i
    i8 0, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !19 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 3
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !28, !range !31, !noundef !32
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !19
  %i.dm = zext i32 %i.dl to i64
  br label %_upb_Map_Size.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.do = call i64 @upb_inttable_count(ptr noundef nonnull %i.dn) #4
  br label %_upb_Map_Size.exit.i.i

_upb_Map_Size.exit.i.i:                           ; preds = %bb.ad, %bb.ac
  %.0.i.i.i48 = phi i64 [ %i.dm, %bb.ac ], [ %i.do, %bb.ad ]
  %i.dp = icmp eq i64 %.0.i.i.i48, 0
  br i1 %i.dp, label %_upb_Map_Size.exit.i._crit_edge.i, label %_upb_Map_Size.exit.i..thread_crit_edge.i, !llvm.loop !33

_upb_Map_Size.exit.i..thread_crit_edge.i:         ; preds = %_upb_Map_Size.exit.i.i
  %.pre13.i = load ptr, ptr %i.db, align 8, !tbaa !25
  br label %.loopexit, !llvm.loop !33

_upb_Map_Size.exit.i._crit_edge.i:                ; preds = %_upb_Map_Size.exit.i.i
  %.pre.i = load i32, ptr %i.cr, align 8, !tbaa !3
  br label %bb.af, !llvm.loop !33

bb.ae:                                            ; preds = %bb.aa
  unreachable

_upb_Extension_IsEmpty_dont_copy_me__upb_internal_use_only.exit.i: ; preds = %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !19
  %i.ds = getelementptr i8, ptr %i.dr, i64 8
  %.val4.i.i = load i64, ptr %i.ds, align 8, !tbaa !34
  %i.dt = icmp eq i64 %.val4.i.i, 0
  br i1 %i.dt, label %bb.af, label %.loopexit, !llvm.loop !33

bb.af:                                            ; preds = %_upb_Extension_IsEmpty_dont_copy_me__upb_internal_use_only.exit.i, %_upb_Map_Size.exit.i._crit_edge.i, %bb.z
  %i.du = phi i32 [ %.pre.i, %_upb_Map_Size.exit.i._crit_edge.i ], [ %i.cw, %bb.z ], [ %i.cw, %_upb_Extension_IsEmpty_dont_copy_me__upb_internal_use_only.exit.i ] ; 2 uses
  %i.dv = zext i32 %i.du to i64
  %i.dw = icmp ult i64 %i.cx, %i.dv
  br i1 %i.dw, label %bb.z, label %_upb_Message_ExtensionsAreEqual.exit

.loopexit:                                        ; preds = %_upb_Extension_IsEmpty_dont_copy_me__upb_internal_use_only.exit.i, %bb.aa, %_upb_Map_Size.exit.i..thread_crit_edge.i
  %i.dx = phi ptr [ %.pre13.i, %_upb_Map_Size.exit.i..thread_crit_edge.i ], [ %i.dc, %bb.aa ], [ %i.dc, %_upb_Extension_IsEmpty_dont_copy_me__upb_internal_use_only.exit.i ] ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %.sroa.0.0.copyload = load ptr, ptr %i.dy, align 8 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !19 ; 3 uses
  %i.dz = call ptr @_upb_Message_Getext_dont_copy_me__upb_internal_use_only(ptr noundef %1, ptr noundef %i.dx) #4, !inline_history !36 ; 3 uses
  %.not25.i = icmp eq ptr %i.dz, null
  br i1 %.not25.i, label %_upb_Message_ExtensionsAreEqual.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.ea = add i64 %.020.i142, 1                   ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %.sroa.0.0.copyload.i = load ptr, ptr %i.eb, align 8 ; 6 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %.sroa.5.0.copyload.i = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !19
  %i.ec = getelementptr i8, ptr %i.dx, i64 10
  %.val29.i = load i8, ptr %i.ec, align 2, !tbaa !14 ; 4 uses
  %i.ed = and i8 %.val29.i, -2
  %spec.select.i = icmp eq i8 %i.ed, 10
  br i1 %spec.select.i, label %upb_MiniTableExtension_CType.exit.i, label %upb_MiniTableExtension_GetSubMessage.exit

upb_MiniTableExtension_CType.exit.i:              ; preds = %bb.ag
  %narrow = add nuw nsw i8 %.val29.i, 15
  %i.ee = and i8 %narrow, 11
  %i.ef = add nsw i8 %i.ee, -9
  %i.eg = icmp ult i8 %i.ef, 2
  br i1 %i.eg, label %bb.ah, label %upb_MiniTableExtension_GetSubMessage.exit

bb.ah:                                            ; preds = %upb_MiniTableExtension_CType.exit.i
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  br label %upb_MiniTableExtension_GetSubMessage.exit

upb_MiniTableExtension_GetSubMessage.exit:        ; preds = %bb.ah, %upb_MiniTableExtension_CType.exit.i, %bb.ag
  %i.ej = phi ptr [ null, %bb.ag ], [ %i.ei, %bb.ah ], [ null, %upb_MiniTableExtension_CType.exit.i ] ; 2 uses
  %i.ek = getelementptr i8, ptr %i.dx, i64 11
  %.val26.i = load i8, ptr %i.ek, align 1, !tbaa !17 ; 2 uses
  %i.el = zext i8 %.val29.i to i64
  %i.em = and i8 %.val26.i, 16
  %.not.i.i37 = icmp eq i8 %i.em, 0
  br i1 %.not.i.i37, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %upb_MiniTableExtension_GetSubMessage.exit
  switch i8 %.val29.i, label %bb.ak [
    i8 5, label %upb_MiniTableField_CType.exit39
    i8 12, label %bb.aj
  ]

bb.aj:                                            ; preds = %bb.ai
  br label %upb_MiniTableField_CType.exit39

bb.ak:                                            ; preds = %bb.ai, %upb_MiniTableExtension_GetSubMessage.exit
  %i.en = add nuw nsw i64 %i.el, 4294967295
  %i.eo = and i64 %i.en, 4294967295
  br label %upb_MiniTableField_CType.exit39

upb_MiniTableField_CType.exit39:                  ; preds = %bb.ai, %bb.aj, %bb.ak
  %.0.i.i38 = phi i64 [ %i.eo, %bb.ak ], [ 8, %bb.aj ], [ 13, %bb.ai ]
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr @upb_FieldType_CType.c_type, i64 %.0.i.i38
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3  ; 2 uses
  %i.er = and i8 %.val26.i, 3
  switch i8 %i.er, label %.backedge [
    i8 1, label %.split96
    i8 2, label %bb.al
  ]

.split96:                                         ; preds = %upb_MiniTableField_CType.exit39
  %i.es = call fastcc zeroext i1 @_upb_Array_IsEqual(ptr noundef %.sroa.0.0.copyload, ptr noundef %.sroa.0.0.copyload.i, i32 noundef %i.eq, ptr noundef %i.ej, i32 noundef %3), !inline_history !36
  br i1 %i.es, label %.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread

.backedge:                                        ; preds = %upb_MiniTableField_CType.exit39, %bb.an, %.split96, %.split97, %.split98, %.split99, %.split100, %.split101
  %.val28.i = load i64, ptr %0, align 8, !tbaa !19
  %i.et = and i64 %.val28.i, -2                   ; 2 uses
  %.not.i44 = icmp eq i64 %i.et, 0
  br i1 %.not.i44, label %_upb_Message_ExtensionsAreEqual.exit, label %.preheader.i, !llvm.loop !37

bb.al:                                            ; preds = %upb_MiniTableField_CType.exit39
  switch i32 %i.eq, label %bb.ao [
    i32 1, label %.split97
    i32 2, label %.split101
    i32 3, label %.split101
    i32 4, label %.split101
    i32 5, label %.split101
    i32 7, label %.split100
    i32 8, label %.split100
    i32 9, label %.split100
    i32 10, label %bb.am
    i32 11, label %bb.am
    i32 6, label %.split99
  ]

.split97:                                         ; preds = %bb.al
  %i.eu = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.ev = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.ew = xor i64 %i.ev, %i.eu
  %i.ex = and i64 %i.ew, 1
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread

.split101:                                        ; preds = %bb.al, %bb.al, %bb.al, %bb.al
  %i.ez = ptrtoint ptr %.sroa.0.0.copyload to i64
  %.sroa.06.0.extract.trunc.i34 = trunc i64 %i.ez to i32
  %i.fa = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %.sroa.0.0.extract.trunc.i35 = trunc i64 %i.fa to i32
  %i.fb = icmp eq i32 %.sroa.06.0.extract.trunc.i34, %.sroa.0.0.extract.trunc.i35
  br i1 %i.fb, label %.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread

.split100:                                        ; preds = %bb.al, %bb.al, %bb.al
  %i.fc = icmp eq ptr %.sroa.0.0.copyload, %.sroa.0.0.copyload.i
  br i1 %i.fc, label %.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread

bb.am:                                            ; preds = %bb.al, %bb.al
  %i.fd = icmp eq i64 %.sroa.5.0.copyload, %.sroa.5.0.copyload.i
  br i1 %i.fd, label %bb.an, label %_upb_Message_ExtensionsAreEqual.exit.thread

bb.an:                                            ; preds = %bb.am
  %.not.i.i31 = icmp eq i64 %.sroa.5.0.copyload, 0
  br i1 %.not.i.i31, label %.backedge, label %.split98

.split98:                                         ; preds = %bb.an
  %bcmp.i.i32 = call i32 @bcmp(ptr readonly %.sroa.0.0.copyload, ptr readonly %.sroa.0.0.copyload.i, i64 %.sroa.5.0.copyload), !inline_history !38
  %.not5.i.i33 = icmp eq i32 %bcmp.i.i32, 0
  br i1 %.not5.i.i33, label %.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread

.split99:                                         ; preds = %bb.al
  %i.fe = call zeroext i1 @upb_Message_IsEqual(ptr noundef %.sroa.0.0.copyload, ptr noundef %.sroa.0.0.copyload.i, ptr noundef %i.ej, i32 noundef %3), !inline_history !38
  br i1 %i.fe, label %.backedge, label %_upb_Message_ExtensionsAreEqual.exit.thread

bb.ao:                                            ; preds = %bb.al
  unreachable

_upb_Message_ExtensionsAreEqual.exit:             ; preds = %.backedge, %.preheader.i, %bb.af, %.preheader
  %.020.i121 = phi i64 [ %.020.i142, %bb.af ], [ 0, %.preheader ], [ %i.ea, %.backedge ], [ %.020.i142, %.preheader.i ]
  %i.ff = call i64 @upb_Message_ExtensionCount(ptr noundef %1) #4, !inline_history !36
  %.not.i15 = icmp eq i64 %.020.i121, %i.ff
  br i1 %.not.i15, label %bb.ap, label %_upb_Message_ExtensionsAreEqual.exit.thread

bb.ap:                                            ; preds = %_upb_Message_ExtensionsAreEqual.exit
  %i.fg = and i32 %3, 1
  %.not = icmp eq i32 %i.fg, 0
  br i1 %.not, label %_upb_Message_ExtensionsAreEqual.exit.thread, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fh = call i32 @_upb_Message_UnknownFieldsAreEqual_dont_copy_me__upb_internal_use_only(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 100) #4
  %i.fi = icmp eq i32 %i.fh, 0
  br label %_upb_Message_ExtensionsAreEqual.exit.thread

_upb_Message_ExtensionsAreEqual.exit.thread:      ; preds = %bb.am, %.loopexit, %.split96, %.split97, %.split98, %.split99, %.split100, %.split101, %_upb_Message_BaseFieldsAreEqual.exit, %.thread.thread, %.thread, %bb.ap, %_upb_Message_ExtensionsAreEqual.exit, %bb.a, %bb.aq
  %.0 = phi i1 [ true, %bb.a ], [ %i.fi, %bb.aq ], [ false, %_upb_Message_ExtensionsAreEqual.exit ], [ false, %_upb_Message_BaseFieldsAreEqual.exit ], [ true, %bb.ap ], [ false, %.thread ], [ false, %.thread.thread ], [ false, %.split101 ], [ false, %.split100 ], [ false, %.split99 ], [ false, %.split98 ], [ false, %.split97 ], [ false, %.split96 ], [ false, %.loopexit ], [ false, %bb.am ]
  ret i1 %.0
}

declare i32 @_upb_Message_UnknownFieldsAreEqual_dont_copy_me__upb_internal_use_only(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @_upb_Array_IsEqual(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %upb_MessageValue_IsEqual.exit.thread34, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val32 = load i64, ptr %i.b, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.c = phi i64 [ %.val32, %bb.c ], [ 0, %bb.b ] ; 3 uses
  %.not29 = icmp eq ptr %1, null
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = getelementptr i8, ptr %1, i64 8
  %.val = load i64, ptr %i.d, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.e = phi i64 [ %.val, %bb.e ], [ 0, %bb.d ]
  %.not30 = icmp eq i64 %i.c, %i.e
  br i1 %.not30, label %.preheader, label %upb_MessageValue_IsEqual.exit.thread34

.preheader:                                       ; preds = %bb.f
  %.not3139 = icmp eq i64 %i.c, 0
  br i1 %.not3139, label %upb_MessageValue_IsEqual.exit.thread34, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %upb_MessageValue_IsEqual.exit.thread
  %.040 = phi i64 [ %i.w, %upb_MessageValue_IsEqual.exit.thread ], [ 0, %.preheader ] ; 3 uses
  %i.f = tail call { ptr, i64 } @upb_Array_Get(ptr noundef %0, i64 noundef %.040) #4 ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0        ; 5 uses
  %i.h = extractvalue { ptr, i64 } %i.f, 1        ; 3 uses
  %i.i = tail call { ptr, i64 } @upb_Array_Get(ptr noundef %1, i64 noundef %.040) #4 ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 5 uses
  switch i32 %2, label %bb.i [
    i32 1, label %.split
    i32 2, label %upb_MessageValue_IsEqual.exit
    i32 3, label %upb_MessageValue_IsEqual.exit
    i32 4, label %upb_MessageValue_IsEqual.exit
    i32 5, label %upb_MessageValue_IsEqual.exit
    i32 7, label %.split38
    i32 8, label %.split38
    i32 9, label %.split38
    i32 10, label %bb.g
    i32 11, label %bb.g
    i32 6, label %.split37
  ]

.split:                                           ; preds = %.lr.ph
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = xor i64 %i.l, %i.k
  %i.n = and i64 %i.m, 1
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %upb_MessageValue_IsEqual.exit.thread, label %upb_MessageValue_IsEqual.exit.thread34

.split38:                                         ; preds = %.lr.ph, %.lr.ph, %.lr.ph
  %i.p = icmp eq ptr %i.g, %i.j
  br i1 %i.p, label %upb_MessageValue_IsEqual.exit.thread, label %upb_MessageValue_IsEqual.exit.thread34

bb.g:                                             ; preds = %.lr.ph, %.lr.ph
  %i.q = extractvalue { ptr, i64 } %i.i, 1
  %i.r = icmp eq i64 %i.h, %i.q
  br i1 %i.r, label %bb.h, label %upb_MessageValue_IsEqual.exit.thread34

bb.h:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %upb_MessageValue_IsEqual.exit.thread, label %.split36

.split36:                                         ; preds = %bb.h
  %bcmp.i = tail call i32 @bcmp(ptr readonly %i.g, ptr readonly %i.j, i64 %i.h)
  %.not5.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not5.i, label %upb_MessageValue_IsEqual.exit.thread, label %upb_MessageValue_IsEqual.exit.thread34

.split37:                                         ; preds = %.lr.ph
  %i.s = tail call zeroext i1 @upb_Message_IsEqual(ptr noundef %i.g, ptr noundef %i.j, ptr noundef %3, i32 noundef %4), !inline_history !39
  br i1 %i.s, label %upb_MessageValue_IsEqual.exit.thread, label %upb_MessageValue_IsEqual.exit.thread34

bb.i:                                             ; preds = %.lr.ph
  unreachable

upb_MessageValue_IsEqual.exit:                    ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.t = ptrtoint ptr %i.g to i64
  %.sroa.06.0.extract.trunc.i = trunc i64 %i.t to i32
  %i.u = ptrtoint ptr %i.j to i64
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.u to i32
  %i.v = icmp eq i32 %.sroa.06.0.extract.trunc.i, %.sroa.0.0.extract.trunc.i
  br i1 %i.v, label %upb_MessageValue_IsEqual.exit.thread, label %upb_MessageValue_IsEqual.exit.thread34

upb_MessageValue_IsEqual.exit.thread:             ; preds = %bb.h, %.split38, %.split37, %.split36, %.split, %upb_MessageValue_IsEqual.exit
  %i.w = add nuw i64 %.040, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.w, %i.c
  br i1 %exitcond.not, label %upb_MessageValue_IsEqual.exit.thread34, label %.lr.ph, !llvm.loop !40

upb_MessageValue_IsEqual.exit.thread34:           ; preds = %bb.g, %.split38, %.split37, %.split36, %.split, %upb_MessageValue_IsEqual.exit.thread, %upb_MessageValue_IsEqual.exit, %.preheader, %bb.f, %bb.a
  %.4 = phi i1 [ true, %bb.a ], [ false, %bb.f ], [ true, %.preheader ], [ true, %upb_MessageValue_IsEqual.exit.thread ], [ false, %.split ], [ false, %.split36 ], [ false, %.split37 ], [ false, %.split38 ], [ false, %bb.g ], [ false, %upb_MessageValue_IsEqual.exit ]
  ret i1 %.4
}

declare { ptr, i64 } @upb_Array_Get(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @upb_Map_Size(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @upb_Map_Next(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @upb_Map_Get(ptr noundef, ptr, i64, ptr noundef) local_unnamed_addr #1

declare ptr @_upb_Message_Getext_dont_copy_me__upb_internal_use_only(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @upb_inttable_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"long", !5, i64 0}
!9 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!10 = distinct !{null}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTS18upb_MiniTableField", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!15, !5, i64 10}
!15 = !{!"upb_MiniTableField", !4, i64 0, !16, i64 4, !16, i64 6, !16, i64 8, !5, i64 10, !5, i64 11}
!16 = !{!"short", !5, i64 0}
!17 = !{!15, !5, i64 11}
!18 = !{!15, !16, i64 8}
!19 = !{!5, !5, i64 0}
!20 = distinct !{null, null}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{null, null, null}
!24 = distinct !{null, null}
!25 = !{!26, !27, i64 0}
!26 = !{!"", !27, i64 0, !5, i64 8}
!27 = !{!"p1 _ZTS22upb_MiniTableExtension", !13, i64 0}
!28 = !{!29, !30, i64 3}
!29 = !{!"upb_Map", !5, i64 0, !5, i64 1, !30, i64 2, !30, i64 3, !5, i64 8}
!30 = !{!"_Bool", !5, i64 0}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = distinct !{!33, !22}
!34 = !{!35, !8, i64 8}
!35 = !{!"upb_Array", !8, i64 0, !8, i64 8, !8, i64 16}
!36 = distinct !{null}
!37 = distinct !{!37, !22}
!38 = distinct !{null, null}
!39 = distinct !{null}
!40 = distinct !{!40, !22}
end_hunk_0
