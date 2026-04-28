inline.NumInlined: 385
inline.NumDeleted: 196
begin_hunk_0_@_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %.promoted39 = load i64, ptr %i.d, align 8
  %1 = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %2 = shufflevector <4 x i32> %1, <4 x i32> poison, <4 x i32> zeroinitializer
  %3 = and <4 x i32> %2, <i32 524288, i32 16, i32 2, i32 64>
  %4 = icmp eq <4 x i32> %3, zeroinitializer      ; 4 uses
  %5 = extractelement <4 x i1> %4, i64 0
  %6 = extractelement <4 x i1> %4, i64 1
  %7 = extractelement <4 x i1> %4, i64 2
  %8 = extractelement <4 x i1> %4, i64 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
end_hunk_0
begin_hunk_1_@_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv:bb.a
  %i.m = zext nneg i8 %i.l to i64
  %i.n = add i64 %i.g, %i.m                       ; 2 uses
  store i64 %i.n, ptr %i.d, align 8
  br i1 %6, label %.critedge, label %_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE7SetModeENS2_4ModeE.exit.thread

_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE7SetModeENS2_4ModeE.exit.thread: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_1
begin_hunk_2_@_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv:bb.a
  %i.p = zext nneg i8 %i.l to i64
  %i.q = add i64 %i.g, %i.p                       ; 2 uses
  store i64 %i.q, ptr %i.d, align 8
  br i1 %7, label %.critedge, label %_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE7SetModeENS2_4ModeE.exit16.thread

_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE7SetModeENS2_4ModeE.exit16.thread: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_2
begin_hunk_3_@_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv:bb.a
  %i.s = zext nneg i8 %i.l to i64
  %i.t = add i64 %i.g, %i.s                       ; 2 uses
  store i64 %i.t, ptr %i.d, align 8
  br i1 %8, label %.critedge, label %_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE7SetModeENS2_4ModeE.exit17.thread

_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE7SetModeENS2_4ModeE.exit17.thread: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_3
begin_hunk_4_@_ZN2v88internal17RelocIteratorBaseINS0_9RelocInfoEE4nextEv:bb.a
bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds i8, ptr %i.h, i64 -3 ; 3 uses
  store ptr %i.bc, ptr %0, align 8
  br i1 %5, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_4
begin_hunk_5_@_ZN2v88internal17RelocIteratorBaseINS0_17WritableRelocInfoEE4nextEv:bb.a
.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.f = load i32, ptr %i.e, align 4              ; 3 uses
  %.promoted39 = load i64, ptr %i.d, align 8
  %1 = insertelement <4 x i32> poison, i32 %i.f, i64 0
  %2 = shufflevector <4 x i32> %1, <4 x i32> poison, <4 x i32> zeroinitializer
  %3 = and <4 x i32> %2, <i32 524288, i32 16, i32 2, i32 64>
  %4 = icmp eq <4 x i32> %3, zeroinitializer      ; 4 uses
  %5 = extractelement <4 x i1> %4, i64 0
  %6 = extractelement <4 x i1> %4, i64 1
  %7 = extractelement <4 x i1> %4, i64 2
  %8 = extractelement <4 x i1> %4, i64 3
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge
end_hunk_5
begin_hunk_6_@_ZN2v88internal17RelocIteratorBaseINS0_17WritableRelocInfoEE4nextEv:bb.a
  %i.m = zext nneg i8 %i.l to i64
  %i.n = add i64 %i.g, %i.m                       ; 2 uses
  store i64 %i.n, ptr %i.d, align 8
  br i1 %6, label %.critedge, label %_ZN2v88internal17RelocIteratorBaseINS0_17WritableRelocInfoEE7SetModeENS0_9RelocInfo4ModeE.exit.thread

_ZN2v88internal17RelocIteratorBaseINS0_17WritableRelocInfoEE7SetModeENS0_9RelocInfo4ModeE.exit.thread: ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_6
begin_hunk_7_@_ZN2v88internal17RelocIteratorBaseINS0_17WritableRelocInfoEE4nextEv:bb.a
  %i.p = zext nneg i8 %i.l to i64
  %i.q = add i64 %i.g, %i.p                       ; 2 uses
  store i64 %i.q, ptr %i.d, align 8
  br i1 %7, label %.critedge, label %_ZN2v88internal17RelocIteratorBaseINS0_17WritableRelocInfoEE7SetModeENS0_9RelocInfo4ModeE.exit16.thread

_ZN2v88internal17RelocIteratorBaseINS0_17WritableRelocInfoEE7SetModeENS0_9RelocInfo4ModeE.exit16.thread: ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_7
begin_hunk_8_@_ZN2v88internal17RelocIteratorBaseINS0_17WritableRelocInfoEE4nextEv:bb.a
  %i.s = zext nneg i8 %i.l to i64
  %i.t = add i64 %i.g, %i.s                       ; 2 uses
  store i64 %i.t, ptr %i.d, align 8
  br i1 %8, label %.critedge, label %_ZN2v88internal17RelocIteratorBaseINS0_17WritableRelocInfoEE7SetModeENS0_9RelocInfo4ModeE.exit17.thread

_ZN2v88internal17RelocIteratorBaseINS0_17WritableRelocInfoEE7SetModeENS0_9RelocInfo4ModeE.exit17.thread: ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_8
begin_hunk_9_@_ZN2v88internal17RelocIteratorBaseINS0_17WritableRelocInfoEE4nextEv:bb.a
bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds i8, ptr %i.h, i64 -3 ; 3 uses
  store ptr %i.bc, ptr %0, align 8
  br i1 %5, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_9
