inline.NumInlined: 12
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.UriIp4ParserStruct = type { i8, i8, i8, i8 }

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriParseIpFourAddressA(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.UriIp4ParserStruct, align 1 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not50 = and i1 %i.a, %i.b
  %.not = icmp ugt ptr %2, %1
  %or.cond44 = and i1 %or.cond.not50, %.not
  br i1 %or.cond44, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !8
  %i.c = call fastcc ptr @uriParseDecOctetA(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %2) ; 4 uses
  %i.d = icmp ne ptr %i.c, null
  %.not37 = icmp ult ptr %i.c, %2
  %or.cond45 = and i1 %i.d, %.not37
  br i1 %or.cond45, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = load i8, ptr %i.c, align 1, !tbaa !10
  %.not38 = icmp eq i8 %i.e, 46
  br i1 %.not38, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @uriStackToOctet(ptr noundef nonnull %3, ptr noundef nonnull %0) #4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.g = call fastcc ptr @uriParseDecOctetA(ptr noundef %3, ptr noundef %i.f, ptr noundef nonnull %2) ; 4 uses
  %i.h = icmp ne ptr %i.g, null
  %.not39 = icmp ult ptr %i.g, %2
  %or.cond46 = and i1 %i.h, %.not39
  br i1 %or.cond46, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.i = load i8, ptr %i.g, align 1, !tbaa !10
  %.not40 = icmp eq i8 %i.i, 46
  br i1 %.not40, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @uriStackToOctet(ptr noundef nonnull %3, ptr noundef nonnull %i.j) #4
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = call fastcc ptr @uriParseDecOctetA(ptr noundef %3, ptr noundef %i.k, ptr noundef nonnull %2) ; 4 uses
  %i.m = icmp ne ptr %i.l, null
  %.not41 = icmp ult ptr %i.l, %2
  %or.cond47 = and i1 %i.m, %.not41
  br i1 %or.cond47, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.n = load i8, ptr %i.l, align 1, !tbaa !10
  %.not42 = icmp eq i8 %i.n, 46
  br i1 %.not42, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @uriStackToOctet(ptr noundef nonnull %3, ptr noundef nonnull %i.o) #4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.q = call fastcc ptr @uriParseDecOctetA(ptr noundef %3, ptr noundef %i.p, ptr noundef nonnull %2)
  %.not43 = icmp eq ptr %i.q, %2
  br i1 %.not43, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3
  call void @uriStackToOctet(ptr noundef nonnull %3, ptr noundef nonnull %i.r) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.g, %bb.d, %bb.e, %bb.b, %bb.c, %bb.a, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @uriParseDecOctetA(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(address, ret: address, provenance) %1, ptr nofree noundef readnone captures(address, ret: address, provenance) %2) unnamed_addr #2 {
bb.a:
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %bb.b, label %uriParseDecOctetOneA.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !tbaa !10      ; 2 uses
  switch i8 %i.a, label %uriParseDecOctetOneA.exit [
    i8 48, label %bb.c
    i8 49, label %bb.d
    i8 50, label %bb.i
    i8 51, label %bb.p
    i8 52, label %bb.p
    i8 53, label %bb.p
    i8 54, label %bb.p
    i8 55, label %bb.p
    i8 56, label %bb.p
    i8 57, label %bb.p
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext 0) #4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %uriParseDecOctetOneA.exit

bb.d:                                             ; preds = %bb.b
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext 1) #4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %.not.i = icmp ult ptr %i.c, %2
  br i1 %.not.i, label %bb.e, label %uriParseDecOctetOneA.exit

bb.e:                                             ; preds = %bb.d
  %i.d = load i8, ptr %i.c, align 1, !tbaa !10
  %.off.i = add i8 %i.d, -48                      ; 2 uses
  %switch.i = icmp ult i8 %.off.i, 10
  br i1 %switch.i, label %bb.f, label %uriParseDecOctetOneA.exit

bb.f:                                             ; preds = %bb.e
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext %.off.i) #4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %.not.i.i = icmp ult ptr %i.e, %2
  br i1 %.not.i.i, label %bb.g, label %uriParseDecOctetOneA.exit

bb.g:                                             ; preds = %bb.f
  %i.f = load i8, ptr %i.e, align 1, !tbaa !10
  %.off.i.i = add i8 %i.f, -48                    ; 2 uses
  %switch.i.i = icmp ult i8 %.off.i.i, 10
  br i1 %switch.i.i, label %bb.h, label %uriParseDecOctetOneA.exit

bb.h:                                             ; preds = %bb.g
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext %.off.i.i) #4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3
  br label %uriParseDecOctetOneA.exit

bb.i:                                             ; preds = %bb.b
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext 2) #4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 4 uses
  %.not.i21 = icmp ult ptr %i.h, %2
  br i1 %.not.i21, label %bb.j, label %uriParseDecOctetOneA.exit

bb.j:                                             ; preds = %bb.i
  %i.i = load i8, ptr %i.h, align 1, !tbaa !10    ; 3 uses
  switch i8 %i.i, label %uriParseDecOctetOneA.exit [
    i8 48, label %bb.k
    i8 49, label %bb.k
    i8 50, label %bb.k
    i8 51, label %bb.k
    i8 52, label %bb.k
    i8 53, label %bb.m
    i8 54, label %bb.o
    i8 55, label %bb.o
    i8 56, label %bb.o
    i8 57, label %bb.o
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.j = add nsw i8 %i.i, -48
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext %i.j) #4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %.not.i.i23 = icmp ult ptr %i.k, %2
  br i1 %.not.i.i23, label %bb.l, label %uriParseDecOctetOneA.exit

bb.l:                                             ; preds = %bb.k
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10
  %.off.i.i24 = add i8 %i.l, -48                  ; 2 uses
  %switch.i.i25 = icmp ult i8 %.off.i.i24, 10
  br i1 %switch.i.i25, label %uriParseDecOctetThreeA.exit.sink.split.i, label %uriParseDecOctetOneA.exit

bb.m:                                             ; preds = %bb.j
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext 5) #4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 2 ; 3 uses
  %.not.i20.i = icmp ult ptr %i.m, %2
  br i1 %.not.i20.i, label %bb.n, label %uriParseDecOctetOneA.exit

bb.n:                                             ; preds = %bb.m
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  %.off.i22.i = add i8 %i.n, -48                  ; 2 uses
  %switch.i23.i = icmp ult i8 %.off.i22.i, 6
  br i1 %switch.i23.i, label %uriParseDecOctetThreeA.exit.sink.split.i, label %uriParseDecOctetOneA.exit

bb.o:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j
  %i.o = add nsw i8 %i.i, -48
  br label %uriParseDecOctetThreeA.exit.sink.split.i

uriParseDecOctetThreeA.exit.sink.split.i:         ; preds = %bb.o, %bb.n, %bb.l
  %.off.i22.sink.i = phi i8 [ %.off.i.i24, %bb.l ], [ %i.o, %bb.o ], [ %.off.i22.i, %bb.n ]
  %.sink.i = phi i64 [ 2, %bb.l ], [ 1, %bb.o ], [ 2, %bb.n ]
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext %.off.i22.sink.i) #4
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 %.sink.i
  br label %uriParseDecOctetOneA.exit

bb.p:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.q = add nsw i8 %i.a, -48
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext %i.q) #4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %.not.i26 = icmp ult ptr %i.r, %2
  br i1 %.not.i26, label %bb.q, label %uriParseDecOctetOneA.exit

bb.q:                                             ; preds = %bb.p
  %i.s = load i8, ptr %i.r, align 1, !tbaa !10
  %.off.i28 = add i8 %i.s, -48                    ; 2 uses
  %switch.i29 = icmp ult i8 %.off.i28, 10
  br i1 %switch.i29, label %bb.r, label %uriParseDecOctetOneA.exit

bb.r:                                             ; preds = %bb.q
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext %.off.i28) #4
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %uriParseDecOctetOneA.exit

uriParseDecOctetOneA.exit:                        ; preds = %bb.r, %bb.q, %bb.p, %uriParseDecOctetThreeA.exit.sink.split.i, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.p, %uriParseDecOctetThreeA.exit.sink.split.i ], [ null, %bb.a ], [ %i.b, %bb.c ], [ null, %bb.b ], [ %i.e, %bb.g ], [ %i.c, %bb.e ], [ %2, %bb.d ], [ %i.g, %bb.h ], [ %2, %bb.f ], [ %i.m, %bb.n ], [ %2, %bb.i ], [ %i.h, %bb.j ], [ %i.k, %bb.l ], [ %2, %bb.m ], [ %2, %bb.k ], [ %i.t, %bb.r ], [ %2, %bb.p ], [ %i.r, %bb.q ]
  ret ptr %.0
}

declare void @uriStackToOctet(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @uriParseIpFourAddressW(ptr noundef %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.UriIp4ParserStruct, align 1 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond.not50 = and i1 %i.a, %i.b
  %.not = icmp ugt ptr %2, %1
  %or.cond44 = and i1 %or.cond.not50, %.not
  br i1 %or.cond44, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %3, align 1, !tbaa !8
  %i.c = call fastcc ptr @uriParseDecOctetW(ptr noundef %3, ptr noundef %1, ptr noundef nonnull %2) ; 4 uses
  %i.d = icmp ne ptr %i.c, null
  %.not37 = icmp ult ptr %i.c, %2
  %or.cond45 = and i1 %i.d, %.not37
  br i1 %or.cond45, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.c, align 4, !tbaa !11
  %.not38 = icmp eq i32 %i.e, 46
  br i1 %.not38, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @uriStackToOctet(ptr noundef nonnull %3, ptr noundef nonnull %0) #4
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = call fastcc ptr @uriParseDecOctetW(ptr noundef %3, ptr noundef %i.f, ptr noundef nonnull %2) ; 4 uses
  %i.h = icmp ne ptr %i.g, null
  %.not39 = icmp ult ptr %i.g, %2
  %or.cond46 = and i1 %i.h, %.not39
  br i1 %or.cond46, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.i = load i32, ptr %i.g, align 4, !tbaa !11
  %.not40 = icmp eq i32 %i.i, 46
  br i1 %.not40, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @uriStackToOctet(ptr noundef nonnull %3, ptr noundef nonnull %i.j) #4
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = call fastcc ptr @uriParseDecOctetW(ptr noundef %3, ptr noundef %i.k, ptr noundef nonnull %2) ; 4 uses
  %i.m = icmp ne ptr %i.l, null
  %.not41 = icmp ult ptr %i.l, %2
  %or.cond47 = and i1 %i.m, %.not41
  br i1 %or.cond47, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.n = load i32, ptr %i.l, align 4, !tbaa !11
  %.not42 = icmp eq i32 %i.n, 46
  br i1 %.not42, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @uriStackToOctet(ptr noundef nonnull %3, ptr noundef nonnull %i.o) #4
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.q = call fastcc ptr @uriParseDecOctetW(ptr noundef %3, ptr noundef %i.p, ptr noundef nonnull %2)
  %.not43 = icmp eq ptr %i.q, %2
  br i1 %.not43, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3
  call void @uriStackToOctet(ptr noundef nonnull %3, ptr noundef nonnull %i.r) #4
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.f, %bb.g, %bb.d, %bb.e, %bb.b, %bb.c, %bb.a, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ 1, %bb.a ], [ 1, %bb.b ], [ 1, %bb.d ], [ 1, %bb.f ], [ 1, %bb.c ], [ 1, %bb.e ], [ 1, %bb.g ], [ 1, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  ret i32 %.0
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @uriParseDecOctetW(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(address, ret: address, provenance) %1, ptr nofree noundef readnone captures(address, ret: address, provenance) %2) unnamed_addr #2 {
bb.a:
  %.not = icmp ult ptr %1, %2
  br i1 %.not, label %bb.b, label %uriParseDecOctetOneW.exit

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !11     ; 2 uses
  switch i32 %i.a, label %uriParseDecOctetOneW.exit [
    i32 48, label %bb.c
    i32 49, label %bb.d
    i32 50, label %bb.i
    i32 51, label %bb.o
    i32 52, label %bb.o
    i32 53, label %bb.o
    i32 54, label %bb.o
    i32 55, label %bb.o
    i32 56, label %bb.o
    i32 57, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext 0) #4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %uriParseDecOctetOneW.exit

bb.d:                                             ; preds = %bb.b
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext 1) #4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %.not.i = icmp ult ptr %i.c, %2
  br i1 %.not.i, label %bb.e, label %uriParseDecOctetOneW.exit

bb.e:                                             ; preds = %bb.d
  %i.d = load i32, ptr %i.c, align 4, !tbaa !11   ; 2 uses
  %.off.i = add i32 %i.d, -48
  %switch.i = icmp ult i32 %.off.i, 10
  br i1 %switch.i, label %bb.f, label %uriParseDecOctetOneW.exit

bb.f:                                             ; preds = %bb.e
  %i.e = trunc nuw nsw i32 %i.d to i8
  %i.f = add nsw i8 %i.e, -48
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext %i.f) #4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not.i.i = icmp ult ptr %i.g, %2
  br i1 %.not.i.i, label %bb.g, label %uriParseDecOctetOneW.exit

bb.g:                                             ; preds = %bb.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !11   ; 2 uses
  %.off.i.i = add i32 %i.h, -48
  %switch.i.i = icmp ult i32 %.off.i.i, 10
  br i1 %switch.i.i, label %bb.h, label %uriParseDecOctetOneW.exit

bb.h:                                             ; preds = %bb.g
  %i.i = trunc nuw nsw i32 %i.h to i8
  %i.j = add nsw i8 %i.i, -48
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext %i.j) #4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  br label %uriParseDecOctetOneW.exit

bb.i:                                             ; preds = %bb.b
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext 2) #4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %.not.i21 = icmp ult ptr %i.l, %2
  br i1 %.not.i21, label %bb.j, label %uriParseDecOctetOneW.exit

bb.j:                                             ; preds = %bb.i
  %i.m = load i32, ptr %i.l, align 4, !tbaa !11   ; 6 uses
  switch i32 %i.m, label %uriParseDecOctetOneW.exit [
    i32 48, label %bb.k
    i32 49, label %bb.k
    i32 50, label %bb.k
    i32 51, label %bb.k
    i32 52, label %bb.k
    i32 53, label %bb.m
    i32 54, label %uriParseDecOctetThreeW.exit.sink.split.i
    i32 55, label %uriParseDecOctetThreeW.exit.sink.split.i
    i32 56, label %uriParseDecOctetThreeW.exit.sink.split.i
    i32 57, label %uriParseDecOctetThreeW.exit.sink.split.i
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j, %bb.j, %bb.j
  %i.n = trunc nuw nsw i32 %i.m to i8
  %i.o = add nsw i8 %i.n, -48
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext %i.o) #4
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not.i.i23 = icmp ult ptr %i.p, %2
  br i1 %.not.i.i23, label %bb.l, label %uriParseDecOctetOneW.exit

bb.l:                                             ; preds = %bb.k
  %i.q = load i32, ptr %i.p, align 4, !tbaa !11   ; 2 uses
  %.off.i.i24 = add i32 %i.q, -48
  %switch.i.i25 = icmp ult i32 %.off.i.i24, 10
  br i1 %switch.i.i25, label %uriParseDecOctetThreeW.exit.sink.split.i, label %uriParseDecOctetOneW.exit

bb.m:                                             ; preds = %bb.j
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext 5) #4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.not.i20.i = icmp ult ptr %i.r, %2
  br i1 %.not.i20.i, label %bb.n, label %uriParseDecOctetOneW.exit

bb.n:                                             ; preds = %bb.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !11   ; 2 uses
  %.off.i22.i = add i32 %i.s, -48
  %switch.i23.i = icmp ult i32 %.off.i22.i, 6
  br i1 %switch.i23.i, label %uriParseDecOctetThreeW.exit.sink.split.i, label %uriParseDecOctetOneW.exit

uriParseDecOctetThreeW.exit.sink.split.i:         ; preds = %bb.n, %bb.l, %bb.j, %bb.j, %bb.j, %bb.j
  %.sink30.i = phi i32 [ %i.q, %bb.l ], [ %i.s, %bb.n ], [ %i.m, %bb.j ], [ %i.m, %bb.j ], [ %i.m, %bb.j ], [ %i.m, %bb.j ]
  %.sink.i = phi i64 [ 8, %bb.l ], [ 8, %bb.n ], [ 4, %bb.j ], [ 4, %bb.j ], [ 4, %bb.j ], [ 4, %bb.j ]
  %i.t = trunc nuw nsw i32 %.sink30.i to i8
  %i.u = add nsw i8 %i.t, -48
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext %i.u) #4
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %.sink.i
  br label %uriParseDecOctetOneW.exit

bb.o:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.w = trunc nuw nsw i32 %i.a to i8
  %i.x = add nsw i8 %i.w, -48
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext %i.x) #4
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %.not.i26 = icmp ult ptr %i.y, %2
  br i1 %.not.i26, label %bb.p, label %uriParseDecOctetOneW.exit

bb.p:                                             ; preds = %bb.o
  %i.z = load i32, ptr %i.y, align 4, !tbaa !11   ; 2 uses
  %.off.i28 = add i32 %i.z, -48
  %switch.i29 = icmp ult i32 %.off.i28, 10
  br i1 %switch.i29, label %bb.q, label %uriParseDecOctetOneW.exit

bb.q:                                             ; preds = %bb.p
  %i.aa = trunc nuw nsw i32 %i.z to i8
  %i.ab = add nsw i8 %i.aa, -48
  tail call void @uriPushToStack(ptr noundef nonnull %0, i8 noundef zeroext %i.ab) #4
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %uriParseDecOctetOneW.exit

uriParseDecOctetOneW.exit:                        ; preds = %bb.q, %bb.p, %bb.o, %uriParseDecOctetThreeW.exit.sink.split.i, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.v, %uriParseDecOctetThreeW.exit.sink.split.i ], [ null, %bb.a ], [ %i.b, %bb.c ], [ null, %bb.b ], [ %i.g, %bb.g ], [ %i.c, %bb.e ], [ %2, %bb.d ], [ %i.k, %bb.h ], [ %2, %bb.f ], [ %i.r, %bb.n ], [ %2, %bb.i ], [ %i.l, %bb.j ], [ %i.p, %bb.l ], [ %2, %bb.m ], [ %2, %bb.k ], [ %i.ac, %bb.q ], [ %2, %bb.o ], [ %i.y, %bb.p ]
  ret ptr %.0
}

declare void @uriPushToStack(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !6, i64 0}
!9 = !{!"UriIp4ParserStruct", !6, i64 0, !6, i64 1, !6, i64 2, !6, i64 3}
!10 = !{!6, !6, i64 0}
!11 = !{!5, !5, i64 0}
end_hunk_0
