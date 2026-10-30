Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ast-function-literal-id-reindexer?download=true
inline.NumInlined: 712
inline.NumDeleted: 172
begin_hunk_0_@_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE10VisitBlockEPNS0_5BlockE:bb.a
  %i.ah = load i32, ptr %i.ab, align 4
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %.lr.ph.split.preheader, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE15VisitStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE.exit, !llvm.loop !50

.lr.ph.split.preheader:                           ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph ] ; 2 uses
  %i.ak = load ptr, ptr %i.aa, align 8
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !3
  %i.ao = load i64, ptr %0, align 8
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit.thread, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit.thread: ; preds = %.lr.ph.split.preheader
  store i8 1, ptr %i.ae, align 8
  br label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE15VisitStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE.exit

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit: ; preds = %.lr.ph.split.preheader
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.am), !inline_history !3
  %.pre = load i8, ptr %i.ae, align 8, !range !9
  %i.aq = trunc nuw i8 %.pre to i1
  br i1 %i.aq, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE15VisitStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE.exit, label %bb.e

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE15VisitStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE.exit: ; preds = %bb.e, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE17VisitDeclarationsEPNS_4base16ThreadedListBaseINS0_11DeclarationENS4_9EmptyBaseENS4_18ThreadedListTraitsIS6_EELb0EEE.exit.thread, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit.thread, %.lr.ph, %bb.d, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE17VisitDeclarationsEPNS_4base16ThreadedListBaseINS0_11DeclarationENS4_9EmptyBaseENS4_18ThreadedListTraitsIS6_EELb0EEE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE20VisitSwitchStatementEPNS0_15SwitchStatementE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.d = load i8, ptr %i.c, align 8, !range !9, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !0
  %i.g = load i64, ptr %0, align 8
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %.critedge.sink.split, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit: ; preds = %bb.b
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.b), !inline_history !0
  %.pre = load i8, ptr %i.c, align 8, !range !9
  %i.i = trunc nuw i8 %.pre to i1
  br i1 %i.i, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph30, label %.critedge

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE15VisitStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE.exit: ; preds = %bb.f, %bb.e
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1 ; 2 uses
  %i.n = load i32, ptr %i.k, align 4
  %i.o = sext i32 %i.n to i64
  %i.p = icmp slt i64 %indvars.iv.next34, %i.o
  br i1 %i.p, label %.lr.ph30, label %.critedge, !llvm.loop !51

.lr.ph30:                                         ; preds = %bb.c, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE15VisitStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE.exit
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE15VisitStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE.exit ], [ 0, %bb.c ] ; 2 uses
  %i.q = load ptr, ptr %i.j, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv33
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph30
  %i.v = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !0
  %i.w = load i64, ptr %0, align 8
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %.critedge.sink.split, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit21

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit21: ; preds = %bb.d
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %i.t), !inline_history !0
  %.pre36 = load i8, ptr %i.c, align 8, !range !9
  %i.y = trunc nuw i8 %.pre36 to i1
  br i1 %i.y, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit21, %.lr.ph30
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 20 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.split.preheader, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE15VisitStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE.exit

bb.f:                                             ; preds = %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i32, ptr %i.aa, align 4
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph.split.preheader, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE15VisitStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE.exit, !llvm.loop !52

.lr.ph.split.preheader:                           ; preds = %bb.e, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %bb.e ] ; 2 uses
  %i.ag = load ptr, ptr %i.z, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !3
  %i.ak = load i64, ptr %0, align 8
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %.critedge.sink.split, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit24

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit24: ; preds = %.lr.ph.split.preheader
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.ai), !inline_history !3
  %.pre37 = load i8, ptr %i.c, align 8, !range !9
  %i.am = trunc nuw i8 %.pre37 to i1
  br i1 %i.am, label %.critedge, label %bb.f

.critedge.sink.split:                             ; preds = %bb.d, %.lr.ph.split.preheader, %bb.b
  store i8 1, ptr %i.c, align 8
  br label %.critedge

.critedge:                                        ; preds = %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit21, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE15VisitStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE.exit, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit24, %.critedge.sink.split, %bb.a, %bb.c, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE16VisitIfStatementEPNS0_11IfStatementE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.d = load i8, ptr %i.c, align 8, !range !9, !noundef !10
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit10, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !0
  %i.g = load i64, ptr %0, align 8
  %i.h = icmp ult i64 %i.f, %i.g
  br i1 %i.h, label %bb.c, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.c, align 8
  br label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit10

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit: ; preds = %bb.b
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.b), !inline_history !0
  %.pre = load i8, ptr %i.c, align 8, !range !9
  %i.i = trunc nuw i8 %.pre to i1
  br i1 %i.i, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit10, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !0
  %i.m = load i64, ptr %0, align 8
  %i.n = icmp ult i64 %i.l, %i.m
  br i1 %i.n, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit7.thread, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit7

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit7.thread: ; preds = %bb.d
  store i8 1, ptr %i.c, align 8
  br label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit10

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit7: ; preds = %bb.d
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.k), !inline_history !0
  %.pre14 = load i8, ptr %i.c, align 8, !range !9
  %i.o = trunc nuw i8 %.pre14 to i1
  br i1 %i.o, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit10, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit7
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !0
  %i.s = load i64, ptr %0, align 8
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE18CheckStackOverflowEv.exit.i8.thread, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE18CheckStackOverflowEv.exit.i8

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE18CheckStackOverflowEv.exit.i8.thread: ; preds = %bb.e
  store i8 1, ptr %i.c, align 8
  br label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit10

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE18CheckStackOverflowEv.exit.i8: ; preds = %bb.e
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.q), !inline_history !0
  br label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit10

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit10: ; preds = %bb.a, %bb.c, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit7.thread, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE18CheckStackOverflowEv.exit.i8, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE18CheckStackOverflowEv.exit.i8.thread, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit7, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE36VisitInitializeClassMembersStatementEPNS0_31InitializeClassMembersStatementE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 3 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %.pre21.pre = load i8, ptr %i.f, align 8, !range !9
  %i.g = trunc nuw i8 %.pre21.pre to i1           ; 2 uses
  %i.h = load ptr, ptr %i.b, align 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, -2
  %i.l = inttoptr i64 %i.k to ptr                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 63
  %i.p = icmp eq i32 %i.o, 45
  br i1 %i.p, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !0
  %i.r = load i64, ptr %0, align 8
  %i.s = icmp ult i64 %i.q, %i.r
  br i1 %i.s, label %.critedge.sink.split, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit.peel

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit.peel: ; preds = %bb.c
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %i.l), !inline_history !0
  %.pre.peel = load i8, ptr %i.f, align 8, !range !9
  %i.t = trunc nuw i8 %.pre.peel to i1
  br i1 %i.t, label %.critedge, label %.thread.peel

bb.d:                                             ; preds = %.lr.ph
  br i1 %i.g, label %.critedge, label %.thread.peel

.thread.peel:                                     ; preds = %bb.d, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit.peel
  %.in.peel = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.u = load ptr, ptr %.in.peel, align 8
  %i.v = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !0
  %i.w = load i64, ptr %0, align 8
  %i.x = icmp ult i64 %i.v, %i.w
  br i1 %i.x, label %.critedge.sink.split, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit16.peel

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit16.peel: ; preds = %.thread.peel
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.u), !inline_history !0
  %.pre22.peel = load i8, ptr %i.f, align 8, !range !9
  %i.y = trunc nuw i8 %.pre22.peel to i1
  br i1 %i.y, label %.critedge, label %bb.e

bb.e:                                             ; preds = %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit16.peel
  %i.z = load i32, ptr %i.c, align 4
  %i.aa = icmp sgt i32 %i.z, 1
  br i1 %i.aa, label %.lr.ph.peel.newph, label %.critedge

bb.f:                                             ; preds = %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit16
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph.peel.newph, label %.critedge, !llvm.loop !53

.lr.ph.peel.newph:                                ; preds = %bb.e, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 1, %bb.e ] ; 2 uses
  %i.ae = load ptr, ptr %i.b, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = and i64 %i.ah, -2
  %i.aj = inttoptr i64 %i.ai to ptr               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = and i32 %i.al, 63
  %i.an = icmp eq i32 %i.am, 45
  br i1 %i.an, label %.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.peel.newph
  %i.ao = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !0
  %i.ap = load i64, ptr %0, align 8
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %.critedge.sink.split, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit: ; preds = %bb.g
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %i.aj), !inline_history !0
  %.pre = load i8, ptr %i.f, align 8, !range !9
  %i.ar = trunc nuw i8 %.pre to i1
  br i1 %i.ar, label %.critedge, label %.thread

.thread:                                          ; preds = %.lr.ph.peel.newph, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit
  %.in = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.as = load ptr, ptr %.in, align 8
  %i.at = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !0
  %i.au = load i64, ptr %0, align 8
  %i.av = icmp ult i64 %i.at, %i.au
  br i1 %i.av, label %.critedge.sink.split, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit16

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit16: ; preds = %.thread
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.as), !inline_history !0
  %.pre22 = load i8, ptr %i.f, align 8, !range !9
  %i.aw = trunc nuw i8 %.pre22 to i1
  br i1 %i.aw, label %.critedge, label %bb.f

.critedge.sink.split:                             ; preds = %.thread, %bb.g, %.thread.peel, %bb.c
  store i8 1, ptr %i.f, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit.peel, %bb.d, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit16.peel, %bb.e, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit, %bb.f, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit16, %.critedge.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE43VisitInitializeClassStaticElementsStatementEPNS0_38InitializeClassStaticElementsStatementE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge19
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge19 ] ; 2 uses
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = load i8, ptr %i.i, align 8
  switch i8 %i.j, label %.critedge19 [
    i8 0, label %bb.c
    i8 1, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = load i64, ptr %i.l, align 8
  %i.n = and i64 %i.m, -2
  %i.o = inttoptr i64 %i.n to ptr                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 63
  %i.s = icmp eq i32 %i.r, 45
  %.pre32 = load i8, ptr %i.f, align 8, !range !9
  %i.t = trunc nuw i8 %.pre32 to i1               ; 2 uses
  br i1 %i.s, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.t, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !0
  %i.v = load i64, ptr %0, align 8
  %i.w = icmp ult i64 %i.u, %i.v
  br i1 %i.w, label %.critedge.sink.split, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit: ; preds = %bb.e
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull %i.o), !inline_history !0
  %.pre31 = load i8, ptr %i.f, align 8, !range !9
  %i.x = trunc nuw i8 %.pre31 to i1
  br i1 %i.x, label %.critedge, label %.thread

bb.f:                                             ; preds = %bb.c
  br i1 %i.t, label %.critedge, label %.thread

.thread:                                          ; preds = %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit, %bb.f
  %.in = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.y = load ptr, ptr %.in, align 8
  %i.z = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !0
  %i.aa = load i64, ptr %0, align 8
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %.critedge.sink.split, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit22

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit22: ; preds = %.thread
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.y), !inline_history !0
  %.pre33 = load i8, ptr %i.f, align 8, !range !9
  %i.ac = trunc nuw i8 %.pre33 to i1
  br i1 %i.ac, label %.critedge, label %.critedge19

bb.g:                                             ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load i8, ptr %i.f, align 8, !range !9, !noundef !10
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %.critedge, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #5, !inline_history !0
  %i.ai = load i64, ptr %0, align 8
  %i.aj = icmp ult i64 %i.ah, %i.ai
  br i1 %i.aj, label %.critedge.sink.split, label %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit25

_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit25: ; preds = %bb.h
  tail call void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.ae), !inline_history !0
  %.pre = load i8, ptr %i.f, align 8, !range !9
  %i.ak = trunc nuw i8 %.pre to i1
  br i1 %i.ak, label %.critedge, label %.critedge19

.critedge19:                                      ; preds = %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit25, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit22, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load i32, ptr %i.c, align 4
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %bb.b, label %.critedge, !llvm.loop !54

.critedge.sink.split:                             ; preds = %bb.h, %.thread, %bb.e
  store i8 1, ptr %i.f, align 8
  br label %.critedge

.critedge:                                        ; preds = %bb.g, %bb.f, %bb.d, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit22, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit25, %_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE5VisitEPNS0_7AstNodeE.exit, %.critedge19, %.critedge.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal19AstTraversalVisitorINS0_29AstFunctionLiteralIdReindexerEE18VisitObjectLiteralEPNS0_13ObjectLiteralE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
end_hunk_0
