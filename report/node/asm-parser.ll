inline.NumInlined: 2031
inline.NumDeleted: 541
begin_hunk_0_@_ZN2v88internal4wasm11AsmJsParser24ScanToClosingParenthesisEv:bb.a
  %i.f = icmp slt i32 %.0, 1
  br i1 %i.f, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.1 = phi i32 [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %.0, %bb.b ]
  tail call void @_ZN2v88internal12AsmJsScanner4NextEv(ptr noundef nonnull align 8 dereferenceable(317) %i.b) #15
  br label %bb.b, !llvm.loop !62

bb.f:                                             ; preds = %bb.b, %bb.d
  ret void
}

declare void @_ZN2v88internal12AsmJsScanner4SeekEm(ptr noundef nonnull align 8 dereferenceable(317), i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm11AsmJsParser11GatherCasesEPNS0_10ZoneVectorIiEE(ptr noundef nonnull align 8 dereferenceable(768) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.k, %bb.a
  %.010 = phi i32 [ 0, %bb.a ], [ %.1, %bb.k ]    ; 5 uses
  %i.i = load i32, ptr %i.d, align 8              ; 3 uses
  switch i32 %i.i, label %bb.e [
    i32 123, label %bb.c
    i32 125, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = add nsw i32 %.010, 1
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.010, -1
  %i.l = icmp slt i32 %.010, 2
  br i1 %i.l, label %_ZN2v88internal4wasm11AsmJsParser16CheckForUnsignedEPj.exit, label %bb.k

bb.e:                                             ; preds = %bb.b
  %i.m = icmp eq i32 %.010, 1
  %i.n = icmp eq i32 %i.i, -9959
  %or.cond22 = and i1 %i.m, %i.n
  br i1 %or.cond22, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal12AsmJsScanner4NextEv(ptr noundef nonnull align 8 dereferenceable(317) %i.a) #15
  %i.o = load i32, ptr %i.d, align 8              ; 2 uses
  %i.p = icmp eq i32 %i.o, 45                     ; 2 uses
  br i1 %i.p, label %bb.g, label %_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN2v88internal12AsmJsScanner4NextEv(ptr noundef nonnull align 8 dereferenceable(317) %i.a) #15
  %.pr = load i32, ptr %i.d, align 8
  br label %_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit

_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit:   ; preds = %bb.f, %bb.g
  %i.q = phi i32 [ %i.o, %bb.f ], [ %.pr, %bb.g ]
  %i.r = icmp eq i32 %i.q, -3
  br i1 %i.r, label %bb.h, label %_ZN2v88internal4wasm11AsmJsParser16CheckForUnsignedEPj.exit

bb.h:                                             ; preds = %_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit
  %i.s = load i32, ptr %i.e, align 8              ; 3 uses
  tail call void @_ZN2v88internal12AsmJsScanner4NextEv(ptr noundef nonnull align 8 dereferenceable(317) %i.a) #15
  %i.t = icmp ne i32 %i.s, -2147483648
  %or.cond = select i1 %i.p, i1 %i.t, i1 false
  %i.u = sub nsw i32 0, %i.s
  %spec.select = select i1 %or.cond, i32 %i.u, i32 %i.s
  %i.v = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.w = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.x = icmp ult ptr %i.v, %i.w
  br i1 %i.x, label %_ZN2v88internal4wasm11AsmJsParser16CheckForUnsignedEPj.exit.thread19, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.y = load ptr, ptr %i.h, align 8
  %i.z = ptrtoint ptr %i.w to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = ashr exact i64 %i.ab, 2
  %i.ad = add nsw i64 %i.ac, 1
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIiE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ad)
  %.pre.i = load ptr, ptr %i.f, align 8
  br label %_ZN2v88internal4wasm11AsmJsParser16CheckForUnsignedEPj.exit.thread19

_ZN2v88internal4wasm11AsmJsParser16CheckForUnsignedEPj.exit.thread19: ; preds = %bb.i, %bb.h
  %i.ae = phi ptr [ %i.v, %bb.h ], [ %.pre.i, %bb.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store ptr %i.af, ptr %i.f, align 8
  store i32 %spec.select, ptr %i.ae, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %switch = icmp ugt i32 %i.i, -3
  br i1 %switch, label %_ZN2v88internal4wasm11AsmJsParser16CheckForUnsignedEPj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZN2v88internal4wasm11AsmJsParser16CheckForUnsignedEPj.exit.thread19, %bb.d, %bb.c
  %.1 = phi i32 [ %i.j, %bb.c ], [ %i.k, %bb.d ], [ 1, %_ZN2v88internal4wasm11AsmJsParser16CheckForUnsignedEPj.exit.thread19 ], [ %.010, %bb.j ]
  tail call void @_ZN2v88internal12AsmJsScanner4NextEv(ptr noundef nonnull align 8 dereferenceable(317) %i.a) #15
  br label %bb.b, !llvm.loop !63

_ZN2v88internal4wasm11AsmJsParser16CheckForUnsignedEPj.exit: ; preds = %bb.j, %_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit, %bb.d
  tail call void @_ZN2v88internal12AsmJsScanner4SeekEm(ptr noundef nonnull align 8 dereferenceable(317) %i.a, i64 noundef %i.c) #15
  ret void
}

declare void @_ZN2v88internal4wasm19WasmFunctionBuilder12EmitGetLocalEj(ptr noundef nonnull align 8 dereferenceable(316), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm11AsmJsParser12ValidateCaseEv(ptr noundef nonnull align 8 dereferenceable(768) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not10 = icmp eq i32 %i.c, -9959
  br i1 %.not10, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i8 1, ptr %i.d, align 4
  br label %.critedge.sink.split

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12AsmJsScanner4NextEv(ptr noundef nonnull align 8 dereferenceable(317) %i.a) #15
  %i.e = load i32, ptr %i.b, align 8              ; 2 uses
  %.not15 = icmp eq i32 %i.e, 45                  ; 2 uses
  br i1 %.not15, label %bb.d, label %_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal12AsmJsScanner4NextEv(ptr noundef nonnull align 8 dereferenceable(317) %i.a) #15
  %.pr = load i32, ptr %i.b, align 8
  br label %_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit

_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit:   ; preds = %bb.c, %bb.d
  %i.f = phi i32 [ %i.e, %bb.c ], [ %.pr, %bb.d ]
  %i.g = icmp eq i32 %i.f, -3
  br i1 %i.g, label %bb.e, label %_ZN2v88internal4wasm11AsmJsParser16CheckForUnsignedEPj.exit

_ZN2v88internal4wasm11AsmJsParser16CheckForUnsignedEPj.exit: ; preds = %_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i8 1, ptr %i.h, align 4
  br label %.critedge.sink.split

bb.e:                                             ; preds = %_ZN2v88internal4wasm11AsmJsParser5CheckEi.exit
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  tail call void @_ZN2v88internal12AsmJsScanner4NextEv(ptr noundef nonnull align 8 dereferenceable(317) %i.a) #15
  %i.k = icmp ult i32 %i.j, -2147483647
  %i.l = icmp sgt i32 %i.j, -1
  %or.cond12 = select i1 %.not15, i1 %i.k, i1 %i.l
  br i1 %or.cond12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i8 1, ptr %i.m, align 4
  br label %.critedge.sink.split

bb.g:                                             ; preds = %bb.e
  %i.n = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.n, 58
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i8 1, ptr %i.o, align 4
  br label %.critedge.sink.split

bb.i:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal12AsmJsScanner4NextEv(ptr noundef nonnull align 8 dereferenceable(317) %i.a) #15
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 352
  %.old = load i8, ptr %i.p, align 4, !range !9, !noundef !10
  %.old17 = trunc nuw i8 %.old to i1
  br i1 %.old17, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.i, %bb.l
  %i.r = load i32, ptr %i.b, align 8
  switch i32 %i.r, label %bb.j [
    i32 125, label %.critedge
    i32 -9959, label %.critedge
    i32 -9956, label %.critedge
  ]

bb.j:                                             ; preds = %.preheader
  %i.s = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #15
  %i.t = load i64, ptr %i.q, align 8
  %i.u = icmp ult i64 %i.s, %i.t
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 1, ptr %i.p, align 4
  br label %.critedge.sink.split

bb.l:                                             ; preds = %bb.j
  tail call void @_ZN2v88internal4wasm11AsmJsParser17ValidateStatementEv(ptr noundef nonnull align 8 dereferenceable(768) %0)
  %i.v = load i8, ptr %i.p, align 4, !range !9, !noundef !10
  %1 = trunc nuw i8 %i.v to i1
  br i1 %1, label %.critedge, label %.preheader, !llvm.loop !64

.critedge.sink.split:                             ; preds = %bb.b, %bb.h, %bb.k, %bb.f, %_ZN2v88internal4wasm11AsmJsParser16CheckForUnsignedEPj.exit
  %.str.14.sink = phi ptr [ @.str.14, %_ZN2v88internal4wasm11AsmJsParser16CheckForUnsignedEPj.exit ], [ @.str.13, %bb.f ], [ @.str.2, %bb.k ], [ @.str.3, %bb.h ], [ @.str.3, %bb.b ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr %.str.14.sink, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load i64, ptr %i.x, align 8
  %i.z = trunc i64 %i.y to i32
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %i.z, ptr %i.aa, align 8
  br label %.critedge

.critedge:                                        ; preds = %.preheader, %.preheader, %.preheader, %bb.l, %.critedge.sink.split, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal4wasm11AsmJsParser15ValidateDefaultEv(ptr noundef nonnull align 8 dereferenceable(768) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.c = load i32, ptr %i.b, align 8
  %.not = icmp eq i32 %i.c, -9956
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i8 1, ptr %i.d, align 4
  br label %.critedge.sink.split

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal12AsmJsScanner4NextEv(ptr noundef nonnull align 8 dereferenceable(317) %i.a) #15
  %i.e = load i32, ptr %i.b, align 8
  %.not1 = icmp eq i32 %i.e, 58
  br i1 %.not1, label %.peel.begin, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i8 1, ptr %i.f, align 4
  br label %.critedge.sink.split

.peel.begin:                                      ; preds = %bb.c
  tail call void @_ZN2v88internal12AsmJsScanner4NextEv(ptr noundef nonnull align 8 dereferenceable(317) %i.a) #15
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %.pre = load i8, ptr %i.g, align 4, !range !9
  %i.i = trunc nuw i8 %.pre to i1
  %i.j = load i32, ptr %i.b, align 8
  %i.k = icmp eq i32 %i.j, 125
  %or.cond.peel = select i1 %i.i, i1 true, i1 %i.k
  br i1 %or.cond.peel, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.peel.begin
  %i.l = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #15
  %i.m = load i64, ptr %i.h, align 8
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal4wasm11AsmJsParser17ValidateStatementEv(ptr noundef nonnull align 8 dereferenceable(768) %0)
  %i.o = load i8, ptr %i.g, align 4, !range !9, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  %.old = load i32, ptr %i.b, align 8
  %.old8 = icmp eq i32 %.old, 125
  %or.cond9 = select i1 %i.p, i1 true, i1 %.old8
  br i1 %or.cond9, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.h
  %i.q = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #15
  %i.r = load i64, ptr %i.h, align 8
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %.loopexit, label %bb.h

.loopexit:                                        ; preds = %bb.g, %bb.e
  store i8 1, ptr %i.g, align 4
  br label %.critedge.sink.split

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN2v88internal4wasm11AsmJsParser17ValidateStatementEv(ptr noundef nonnull align 8 dereferenceable(768) %0)
  %i.t = load i8, ptr %i.g, align 4, !range !9, !noundef !10
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = load i32, ptr %i.b, align 8
  %i.w = icmp eq i32 %i.v, 125
  %or.cond = select i1 %i.u, i1 true, i1 %i.w
  br i1 %or.cond, label %.critedge, label %bb.g, !llvm.loop !65

.critedge.sink.split:                             ; preds = %bb.b, %bb.d, %.loopexit
  %.str.2.sink = phi ptr [ @.str.2, %.loopexit ], [ @.str.3, %bb.d ], [ @.str.3, %bb.b ]
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr %.str.2.sink, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = trunc i64 %i.z to i32
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %i.aa, ptr %i.ab, align 8
  br label %.critedge

.critedge:                                        ; preds = %.peel.begin, %bb.f, %bb.h, %.critedge.sink.split
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef ptr @_ZN2v88internal4wasm11AsmJsParser20AssignmentExpressionEv(ptr noundef nonnull align 8 dereferenceable(768) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8              ; 3 uses
  %i.d = icmp sgt i32 %i.c, 255
  br i1 %i.d, label %bb.b, label %bb.aj

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN2v88internal4wasm11AsmJsParser10GetVarInfoEi(ptr noundef nonnull align 8 dereferenceable(768) %0, i32 noundef %i.c)
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 @_ZN2v88internal4wasm7AsmType3IsAEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull inttoptr (i64 3 to ptr)) #15
  br i1 %i.g, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #15
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 548
  store i8 1, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr @.str.2, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %i.p, ptr %i.q, align 8
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.r = tail call noundef ptr @_ZN2v88internal4wasm11AsmJsParser21ConditionalExpressionEv(ptr noundef nonnull align 8 dereferenceable(768) %0) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 548 ; 5 uses
  %i.t = load i8, ptr %i.s, align 4, !range !9, !noundef !10
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %i.b, align 8
  %i.w = icmp eq i32 %i.v, 61
  br i1 %i.w, label %bb.g, label %bb.bd

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !range !9, !noundef !10
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.s, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr @.str.63, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %i.ad, ptr %i.ae, align 8
  br label %.thread

bb.i:                                             ; preds = %bb.g
  store i8 0, ptr %i.x, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.ag = load ptr, ptr %i.af, align 8            ; 10 uses
  tail call void @_ZN2v88internal12AsmJsScanner4NextEv(ptr noundef nonnull align 8 dereferenceable(317) %i.a) #15
  %i.ah = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #15
  %i.ai = load i64, ptr %i.i, align 8
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.s, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr @.str.2, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.am = load i64, ptr %i.al, align 8
  %i.an = trunc i64 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 560
  store i32 %i.an, ptr %i.ao, align 8
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.ap = tail call noundef ptr @_ZN2v88internal4wasm11AsmJsParser20AssignmentExpressionEv(ptr noundef nonnull align 8 dereferenceable(768) %0) ; 5 uses
  %i.aq = load i8, ptr %i.s, align 4, !range !9, !noundef !10
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = tail call noundef zeroext i1 @_ZN2v88internal4wasm7AsmType3IsAEPS2_(ptr noundef nonnull align 1 dereferenceable(1) %i.ap, ptr noundef %i.r) #15
  br i1 %i.as, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i8 1, ptr %i.s, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 552
  store ptr @.str.64, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
end_hunk_0
