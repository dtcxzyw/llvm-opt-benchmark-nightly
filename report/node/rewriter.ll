inline.NumInlined: 403
inline.NumDeleted: 173
begin_hunk_0_@_ZN2v88internal9Processor21AssignUndefinedBeforeEPNS0_9StatementE:bb.a
_ZN2v88internal4Zone13AllocateArrayIPNS0_9StatementEA_S4_EEPT_m.exit.i.i.i.i9: ; preds = %bb.s, %bb.r
  %i.cs = phi i64 [ %.pre.i.i.i.i.i.i14, %bb.s ], [ %i.cp, %bb.r ] ; 2 uses
  %i.ct = inttoptr i64 %i.cs to ptr               ; 5 uses
  %i.cu = add i64 %i.cs, %i.cl
  store i64 %i.cu, ptr %i.co, align 8
  %i.cv = load i32, ptr %i.ab, align 4            ; 3 uses
  %i.cw = icmp sgt i32 %i.cv, 0
  br i1 %i.cw, label %bb.t, label %_ZN2v88internal8ZoneListIPNS0_9StatementEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i10

bb.t:                                             ; preds = %_ZN2v88internal4Zone13AllocateArrayIPNS0_9StatementEA_S4_EEPT_m.exit.i.i.i.i9
  %i.cx = load ptr, ptr %i.z, align 8             ; 3 uses
  switch i32 %i.cv, label %bb.w [
    i32 2, label %bb.v
    i32 1, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t
  %i.cy = load i64, ptr %i.cx, align 1
  store i64 %i.cy, ptr %i.ct, align 1
  br label %_ZN2v88internal8ZoneListIPNS0_9StatementEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i10

bb.v:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ct, ptr noundef nonnull align 1 dereferenceable(16) %i.cx, i64 16, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_9StatementEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i10

bb.w:                                             ; preds = %bb.t
  %i.cz = zext nneg i32 %i.cv to i64
  %i.da = shl nuw nsw i64 %i.cz, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.cx, i64 %i.da, i1 false)
  br label %_ZN2v88internal8ZoneListIPNS0_9StatementEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i10

_ZN2v88internal8ZoneListIPNS0_9StatementEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i10: ; preds = %bb.w, %bb.v, %bb.u, %_ZN2v88internal4Zone13AllocateArrayIPNS0_9StatementEA_S4_EEPT_m.exit.i.i.i.i9
  store ptr %i.ct, ptr %i.z, align 8
  store i32 %i.ci, ptr %i.aa, align 8
  %i.db = load i32, ptr %i.ab, align 4
  br label %_ZN2v88internal8ZoneListIPNS0_9StatementEE3AddERKS3_PNS0_4ZoneE.exit15

_ZN2v88internal8ZoneListIPNS0_9StatementEE3AddERKS3_PNS0_4ZoneE.exit15: ; preds = %bb.o, %_ZN2v88internal8ZoneListIPNS0_9StatementEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i10
  %.sink12.i11 = phi i32 [ %i.db, %_ZN2v88internal8ZoneListIPNS0_9StatementEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i10 ], [ %i.cd, %bb.o ] ; 2 uses
  %.sink8.i12 = phi ptr [ %i.ct, %_ZN2v88internal8ZoneListIPNS0_9StatementEE9ResizeAddERKS3_PNS0_4ZoneE.exit.i10 ], [ %i.cg, %bb.o ]
  %i.dc = add nsw i32 %.sink12.i11, 1
  store i32 %i.dc, ptr %i.ab, align 4
  %i.dd = sext i32 %.sink12.i11 to i64
  %i.de = getelementptr inbounds [8 x i8], ptr %.sink8.i12, i64 %i.dd
  store ptr %1, ptr %i.de, align 8
  ret ptr %i.v
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN2v88internal9Processor9SetResultEPNS0_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 81
  store i8 1, ptr %i.a, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %i.i = sub i64 %i.f, %i.h
  %i.j = icmp ult i64 %i.i, 24
  br i1 %i.j, label %bb.b, label %_ZN2v88internal14AstNodeFactory16NewVariableProxyEPNS0_8VariableEi.exit, !prof !5

bb.b:                                             ; preds = %bb.a
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.d, i64 noundef 24) #6
  %.pre.i.i.i = load i64, ptr %i.g, align 8
  br label %_ZN2v88internal14AstNodeFactory16NewVariableProxyEPNS0_8VariableEi.exit

_ZN2v88internal14AstNodeFactory16NewVariableProxyEPNS0_8VariableEi.exit: ; preds = %bb.a, %bb.b
  %i.k = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.h, %bb.a ] ; 2 uses
  %i.l = inttoptr i64 %i.k to ptr                 ; 4 uses
  %i.m = add i64 %i.k, 24
  store i64 %i.m, ptr %i.g, align 8
  tail call void @_ZN2v88internal13VariableProxyC1EPNS0_8VariableEi(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef %i.c, i32 noundef -1) #6
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4              ; 3 uses
  %i.p = and i32 %i.o, 63
  %i.q = icmp eq i32 %i.p, 56
  br i1 %i.q, label %bb.c, label %_ZN2v88internal13VariableProxy15set_is_assignedEv.exit.i

bb.c:                                             ; preds = %_ZN2v88internal14AstNodeFactory16NewVariableProxyEPNS0_8VariableEi.exit
  %i.r = or i32 %i.o, 128
  store i32 %i.r, ptr %i.n, align 4
  %i.s = and i32 %i.o, 256
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %_ZN2v88internal13VariableProxy15set_is_assignedEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @_ZN2v88internal8Variable16SetMaybeAssignedEv(ptr noundef nonnull align 8 dereferenceable(48) %i.u)
  br label %_ZN2v88internal13VariableProxy15set_is_assignedEv.exit.i

_ZN2v88internal13VariableProxy15set_is_assignedEv.exit.i: ; preds = %bb.d, %bb.c, %_ZN2v88internal14AstNodeFactory16NewVariableProxyEPNS0_8VariableEi.exit
  %i.v = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8              ; 2 uses
  %i.aa = sub i64 %i.x, %i.z
  %i.ab = icmp ult i64 %i.aa, 24
  br i1 %i.ab, label %bb.e, label %_ZN2v88internal14AstNodeFactory13NewAssignmentENS0_5Token5ValueEPNS0_10ExpressionES5_i.exit, !prof !5

bb.e:                                             ; preds = %_ZN2v88internal13VariableProxy15set_is_assignedEv.exit.i
  tail call preserve_mostcc void @_ZN2v88internal4Zone6ExpandEm(ptr noundef nonnull align 8 dereferenceable(64) %i.v, i64 noundef 24) #6
  %.pre.i.i.i3 = load i64, ptr %i.y, align 8
  br label %_ZN2v88internal14AstNodeFactory13NewAssignmentENS0_5Token5ValueEPNS0_10ExpressionES5_i.exit

_ZN2v88internal14AstNodeFactory13NewAssignmentENS0_5Token5ValueEPNS0_10ExpressionES5_i.exit: ; preds = %_ZN2v88internal13VariableProxy15set_is_assignedEv.exit.i, %bb.e
  %i.ac = phi i64 [ %.pre.i.i.i3, %bb.e ], [ %i.z, %_ZN2v88internal13VariableProxy15set_is_assignedEv.exit.i ] ; 2 uses
  %i.ad = inttoptr i64 %i.ac to ptr               ; 2 uses
  %i.ae = add i64 %i.ac, 24
  store i64 %i.ae, ptr %i.y, align 8
  tail call void @_ZN2v88internal10AssignmentC1ENS0_7AstNode8NodeTypeENS0_5Token5ValueEPNS0_10ExpressionES7_i(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 noundef zeroext 27, i8 noundef zeroext 17, ptr noundef nonnull %i.l, ptr noundef %1, i32 noundef -1) #6
  ret ptr %i.ad
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 83
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit
  %indvars.iv = phi i64 [ %i.i, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.j = load i8, ptr %i.d, align 1, !range !7, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  %.not = xor i1 %i.k, true
  %i.l = load i8, ptr %i.e, align 2, !range !7
  %i.m = trunc nuw i8 %i.l to i1
  %or.cond = select i1 %.not, i1 %i.m, i1 false
  br i1 %or.cond, label %.critedge, label %.critedge2

.critedge:                                        ; preds = %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit, %bb.b, %bb.a
  ret void

.critedge2:                                       ; preds = %bb.b
  %i.n = load ptr, ptr %1, align 8
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv.next
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i8, ptr %i.f, align 8, !range !7, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit, label %bb.c

bb.c:                                             ; preds = %.critedge2
  %i.s = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #6
  %i.t = load i64, ptr %i.g, align 8
  %i.u = icmp ult i64 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZN2v88internal9Processor18CheckStackOverflowEv.exit

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.f, align 8
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit

_ZN2v88internal9Processor18CheckStackOverflowEv.exit: ; preds = %bb.c
  tail call void @_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.p), !inline_history !9
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit

_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit: ; preds = %bb.d, %.critedge2, %_ZN2v88internal9Processor18CheckStackOverflowEv.exit
  %i.v = load ptr, ptr %i.h, align 8
  %i.w = load ptr, ptr %1, align 8
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv.next
  store ptr %i.v, ptr %i.x, align 8
  %i.y = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.y, label %bb.b, label %.critedge, !llvm.loop !10
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Processor10VisitBlockEPNS0_5BlockE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = and i32 %i.b, 64
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 128
  %i.e = icmp ne i32 %i.d, 0
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 83 ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !range !7, !noundef !8 ; 2 uses
  %2 = zext i1 %i.e to i8
  %3 = or i8 %i.g, %2
  store i8 %3, ptr %i.f, align 1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.j = load i32, ptr %i.i, align 4              ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph, label %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit

.lr.ph:                                           ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = zext nneg i32 %i.j to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i
  %indvars.iv = phi i64 [ %i.p, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.q = load i8, ptr %i.f, align 1, !range !7, !noundef !8
  %i.r = trunc nuw i8 %i.q to i1
  %.not.i = xor i1 %i.r, true
  %i.s = load i8, ptr %i.l, align 2, !range !7
  %i.t = trunc nuw i8 %i.s to i1
  %or.cond.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond.i, label %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit, label %.critedge2.i

.critedge2.i:                                     ; preds = %bb.c
  %i.u = load ptr, ptr %i.h, align 8
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %indvars.iv.next
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load i8, ptr %i.m, align 8, !range !7, !noundef !8
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i, label %bb.d

bb.d:                                             ; preds = %.critedge2.i
  %i.z = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #6
  %i.aa = load i64, ptr %i.n, align 8
  %i.ab = icmp ult i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %_ZN2v88internal9Processor18CheckStackOverflowEv.exit

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.m, align 8
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i

_ZN2v88internal9Processor18CheckStackOverflowEv.exit: ; preds = %bb.d
  tail call void @_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.w), !inline_history !12
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i

_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i: ; preds = %bb.e, %.critedge2.i, %_ZN2v88internal9Processor18CheckStackOverflowEv.exit
  %i.ac = load ptr, ptr %i.o, align 8
  %i.ad = load ptr, ptr %i.h, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.af, label %bb.c, label %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit, !llvm.loop !10

_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit: ; preds = %bb.c, %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i, %bb.b
  store i8 %i.g, ptr %i.f, align 1
  br label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit, %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ag, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Processor24VisitExpressionStatementEPNS0_19ExpressionStatementE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 2 uses
  %i.b = load i8, ptr %i.a, align 2, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr @_ZN2v88internal9Processor9SetResultEPNS0_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.e)
  store ptr %i.f, ptr %i.d, align 8
  store i8 1, ptr %i.a, align 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Processor16VisitIfStatementEPNS0_11IfStatementE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 5 uses
  %i.b = load i8, ptr %i.a, align 2, !range !7, !noundef !8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.f = load i8, ptr %i.e, align 8, !range !7, !noundef !8
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #6, !inline_history !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 8
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit

_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i: ; preds = %bb.b
  tail call void @_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.d), !inline_history !9
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit

_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit: ; preds = %bb.c, %bb.a, %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.c, align 8
  %i.n = load i8, ptr %i.a, align 2, !range !7, !noundef !8
  %i.o = trunc nuw i8 %i.n to i1
  store i8 %i.b, ptr %i.a, align 2
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load i8, ptr %i.e, align 8, !range !7, !noundef !8
  %i.s = trunc nuw i8 %i.r to i1
  br i1 %i.s, label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit11, label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit
  %i.t = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #6, !inline_history !9
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i9

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.e, align 8
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit11

_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i9: ; preds = %bb.d
  tail call void @_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.q), !inline_history !9
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit11

_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit11: ; preds = %bb.e, %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit, %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i9
  %i.x = load ptr, ptr %i.l, align 8
  store ptr %i.x, ptr %i.p, align 8
  %i.y = load i8, ptr %i.a, align 2, !range !7
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond = select i1 %i.o, i1 %i.z, i1 false
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit11
  %i.aa = tail call noundef ptr @_ZN2v88internal9Processor21AssignUndefinedBeforeEPNS0_9StatementE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1)
  br label %bb.g

bb.g:                                             ; preds = %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit11, %bb.f
  %i.ab = phi ptr [ %i.aa, %bb.f ], [ %1, %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit11 ]
  store ptr %i.ab, ptr %i.l, align 8
  store i8 1, ptr %i.a, align 2
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 83 ; 3 uses
  %i.b = load i8, ptr %i.a, align 1, !range !7, !noundef !8
  store i8 1, ptr %i.a, align 1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !7, !noundef !8
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #6, !inline_history !9
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.e, align 8
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit

_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i: ; preds = %bb.b
  tail call void @_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.d), !inline_history !9
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit

_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit: ; preds = %bb.c, %bb.a, %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  store ptr %i.m, ptr %i.c, align 8
  %i.n = tail call noundef ptr @_ZN2v88internal9Processor21AssignUndefinedBeforeEPNS0_9StatementE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1)
  store ptr %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 1, ptr %i.o, align 2
  store i8 %i.b, ptr %i.a, align 1
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE:bb.a

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2) #7
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 83 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !range !7, !noundef !8
  store i8 1, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.j = load i8, ptr %i.i, align 8, !range !7, !noundef !8
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #6, !inline_history !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.n = load i64, ptr %i.m, align 8
  %i.o = icmp ult i64 %i.l, %i.n
  br i1 %i.o, label %bb.f, label %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.i, align 8
  br label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit

_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i: ; preds = %bb.e
  tail call void @_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.h), !inline_history !20
  br label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit

_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit: ; preds = %bb.f, %bb.d, %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8
  store ptr %i.q, ptr %i.g, align 8
  %i.r = tail call noundef ptr @_ZN2v88internal9Processor21AssignUndefinedBeforeEPNS0_9StatementE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1), !inline_history !21
  store ptr %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 1, ptr %i.s, align 2
  store i8 %i.f, ptr %i.e, align 1
  br label %bb.cg

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 83 ; 3 uses
  %i.u = load i8, ptr %i.t, align 1, !range !7, !noundef !8
  store i8 1, ptr %i.t, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.y = load i8, ptr %i.x, align 8, !range !7, !noundef !8
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit63, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #6, !inline_history !22
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.i, label %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i61

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.x, align 8
  br label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit63

_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i61: ; preds = %bb.h
  tail call void @_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.w), !inline_history !22
  br label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit63

_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit63: ; preds = %bb.i, %bb.g, %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i61
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  store ptr %i.af, ptr %i.v, align 8
  %i.ag = tail call noundef ptr @_ZN2v88internal9Processor21AssignUndefinedBeforeEPNS0_9StatementE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1), !inline_history !23
  store ptr %i.ag, ptr %i.ae, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 1, ptr %i.ah, align 2
  store i8 %i.u, ptr %i.t, align 1
  br label %bb.cg

bb.j:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 83 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 1, !range !7, !noundef !8
  store i8 1, ptr %i.ai, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !range !7, !noundef !8
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit66, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #6, !inline_history !24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = load i64, ptr %i.aq, align 8
  %i.as = icmp ult i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.l, label %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i64

bb.l:                                             ; preds = %bb.k
  store i8 1, ptr %i.am, align 8
  br label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit66

_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i64: ; preds = %bb.k
  tail call void @_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.al), !inline_history !24
  br label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit66

_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit66: ; preds = %bb.l, %bb.j, %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i64
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8
  store ptr %i.au, ptr %i.ak, align 8
  %i.av = tail call noundef ptr @_ZN2v88internal9Processor21AssignUndefinedBeforeEPNS0_9StatementE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1), !inline_history !25
  store ptr %i.av, ptr %i.at, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 1, ptr %i.aw, align 2
  store i8 %i.aj, ptr %i.ai, align 1
  br label %bb.cg

bb.m:                                             ; preds = %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 83 ; 3 uses
  %i.ay = load i8, ptr %i.ax, align 1, !range !7, !noundef !8
  store i8 1, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 8, !range !7, !noundef !8
  %i.bd = trunc nuw i8 %i.bc to i1
  br i1 %i.bd, label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit69, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #6, !inline_history !26
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = icmp ult i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.o, label %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i67

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.bb, align 8
  br label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit69

_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i67: ; preds = %bb.n
  tail call void @_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.ba), !inline_history !26
  br label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit69

_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit69: ; preds = %bb.o, %bb.m, %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i67
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8
  store ptr %i.bj, ptr %i.az, align 8
  %i.bk = tail call noundef ptr @_ZN2v88internal9Processor21AssignUndefinedBeforeEPNS0_9StatementE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1), !inline_history !27
  store ptr %i.bk, ptr %i.bi, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 1, ptr %i.bl, align 2
  store i8 %i.ay, ptr %i.ax, align 1
  br label %bb.cg

bb.p:                                             ; preds = %bb.a
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 83 ; 3 uses
  %i.bn = load i8, ptr %i.bm, align 1, !range !7, !noundef !8
  store i8 1, ptr %i.bm, align 1
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.br = load i8, ptr %i.bq, align 8, !range !7, !noundef !8
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit72, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bt = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #6, !inline_history !28
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bv = load i64, ptr %i.bu, align 8
  %i.bw = icmp ult i64 %i.bt, %i.bv
  br i1 %i.bw, label %bb.r, label %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i70

bb.r:                                             ; preds = %bb.q
  store i8 1, ptr %i.bq, align 8
  br label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit72

_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i70: ; preds = %bb.q
  tail call void @_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.bp), !inline_history !28
  br label %_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit72

_ZN2v88internal9Processor23VisitIterationStatementEPNS0_18IterationStatementE.exit72: ; preds = %bb.r, %bb.p, %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i70
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  store ptr %i.by, ptr %i.bo, align 8
  %i.bz = tail call noundef ptr @_ZN2v88internal9Processor21AssignUndefinedBeforeEPNS0_9StatementE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1), !inline_history !29
  store ptr %i.bz, ptr %i.bx, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 1, ptr %i.ca, align 2
  store i8 %i.bn, ptr %i.bm, align 1
  br label %bb.cg

bb.s:                                             ; preds = %bb.a
  %i.cb = and i32 %i.b, 64
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %bb.t, label %_ZN2v88internal9Processor10VisitBlockEPNS0_5BlockE.exit

bb.t:                                             ; preds = %bb.s
  %i.cc = and i32 %i.b, 128
  %i.cd = icmp ne i32 %i.cc, 0
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 83 ; 4 uses
  %i.cf = load i8, ptr %i.ce, align 1, !range !7, !noundef !8 ; 2 uses
  %2 = zext i1 %i.cd to i8
  %3 = or i8 %i.cf, %2
  store i8 %3, ptr %i.ce, align 1
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ci = load i32, ptr %i.ch, align 4            ; 2 uses
  %i.cj = icmp sgt i32 %i.ci, 0
  br i1 %i.cj, label %.lr.ph.i, label %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit.i

.lr.ph.i:                                         ; preds = %bb.t
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.co = zext nneg i32 %i.ci to i64
  br label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.co, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 3 uses
  %i.cp = load i8, ptr %i.ce, align 1, !range !7, !noundef !8
  %i.cq = trunc nuw i8 %i.cp to i1
  %.not.i.i = xor i1 %i.cq, true
  %i.cr = load i8, ptr %i.ck, align 2, !range !7
  %i.cs = trunc nuw i8 %i.cr to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.cs, i1 false
  br i1 %or.cond.i.i, label %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit.i, label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.u
  %i.ct = load ptr, ptr %i.cg, align 8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %indvars.iv.next.i
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = load i8, ptr %i.cl, align 8, !range !7, !noundef !8
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i, label %bb.v

bb.v:                                             ; preds = %.critedge2.i.i
  %i.cy = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #6, !inline_history !30
  %i.cz = load i64, ptr %i.cm, align 8
  %i.da = icmp ult i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.w, label %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i

bb.w:                                             ; preds = %bb.v
  store i8 1, ptr %i.cl, align 8
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i

_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i: ; preds = %bb.v
  tail call void @_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.cv), !inline_history !31
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i

_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i: ; preds = %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i, %bb.w, %.critedge2.i.i
  %i.db = load ptr, ptr %i.cn, align 8
  %i.dc = load ptr, ptr %i.cg, align 8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.dc, i64 %indvars.iv.next.i
  store ptr %i.db, ptr %i.dd, align 8
  %i.de = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.de, label %bb.u, label %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit.i, !llvm.loop !10

_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit.i: ; preds = %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i, %bb.u, %bb.t
  store i8 %i.cf, ptr %i.ce, align 1
  br label %_ZN2v88internal9Processor10VisitBlockEPNS0_5BlockE.exit

_ZN2v88internal9Processor10VisitBlockEPNS0_5BlockE.exit: ; preds = %bb.s, %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit.i
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.df, align 8
  br label %bb.cg

bb.x:                                             ; preds = %bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 83 ; 4 uses
  %i.dh = load i8, ptr %i.dg, align 1, !range !7, !noundef !8
  store i8 1, ptr %i.dg, align 1
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.dk = load i32, ptr %i.dj, align 4            ; 2 uses
  %i.dl = icmp sgt i32 %i.dk, 0
  br i1 %i.dl, label %.lr.ph14.i, label %_ZN2v88internal9Processor20VisitSwitchStatementEPNS0_15SwitchStatementE.exit

.lr.ph14.i:                                       ; preds = %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dq = zext nneg i32 %i.dk to i64
  br label %bb.y

bb.y:                                             ; preds = %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit.i90, %.lr.ph14.i
  %indvars.iv16.i = phi i64 [ %i.dq, %.lr.ph14.i ], [ %indvars.iv.next17.i, %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit.i90 ] ; 2 uses
  %indvars.iv.next17.i = add nsw i64 %indvars.iv16.i, -1 ; 2 uses
  %i.dr = load ptr, ptr %i.di, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %indvars.iv.next17.i
  %i.dt = load ptr, ptr %i.ds, align 8            ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 20
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.preheader.i, label %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit.i90

.lr.ph.preheader.i:                               ; preds = %bb.y
  %i.dy = zext nneg i32 %i.dw to i64
  br label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i98, %.lr.ph.preheader.i
  %indvars.iv.i92 = phi i64 [ %i.dy, %.lr.ph.preheader.i ], [ %indvars.iv.next.i93, %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i98 ] ; 2 uses
  %indvars.iv.next.i93 = add nsw i64 %indvars.iv.i92, -1 ; 3 uses
  %i.dz = load i8, ptr %i.dg, align 1, !range !7, !noundef !8
  %i.ea = trunc nuw i8 %i.dz to i1
  %.not.i.i94 = xor i1 %i.ea, true
  %i.eb = load i8, ptr %i.dm, align 2, !range !7
  %i.ec = trunc nuw i8 %i.eb to i1
  %or.cond.i.i95 = select i1 %.not.i.i94, i1 %i.ec, i1 false
  br i1 %or.cond.i.i95, label %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit.i90, label %.critedge2.i.i96

.critedge2.i.i96:                                 ; preds = %.lr.ph.i91
  %i.ed = load ptr, ptr %i.du, align 8
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ed, i64 %indvars.iv.next.i93
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = load i8, ptr %i.dn, align 8, !range !7, !noundef !8
  %i.eh = trunc nuw i8 %i.eg to i1
  br i1 %i.eh, label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i98, label %bb.z

bb.z:                                             ; preds = %.critedge2.i.i96
  %i.ei = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #6, !inline_history !32
  %i.ej = load i64, ptr %i.do, align 8
  %i.ek = icmp ult i64 %i.ei, %i.ej
  br i1 %i.ek, label %bb.aa, label %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i97

bb.aa:                                            ; preds = %bb.z
  store i8 1, ptr %i.dn, align 8
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i98

_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i97: ; preds = %bb.z
  tail call void @_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.ef), !inline_history !33
  br label %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i98

_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i98: ; preds = %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i97, %bb.aa, %.critedge2.i.i96
  %i.el = load ptr, ptr %i.dp, align 8
  %i.em = load ptr, ptr %i.du, align 8
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %indvars.iv.next.i93
  store ptr %i.el, ptr %i.en, align 8
  %i.eo = icmp samesign ugt i64 %indvars.iv.i92, 1
  br i1 %i.eo, label %.lr.ph.i91, label %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit.i90, !llvm.loop !10

_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit.i90: ; preds = %_ZN2v88internal9Processor5VisitEPNS0_7AstNodeE.exit.i.i98, %.lr.ph.i91, %bb.y
  %i.ep = icmp sgt i64 %indvars.iv16.i, 1
  br i1 %i.ep, label %bb.y, label %_ZN2v88internal9Processor20VisitSwitchStatementEPNS0_15SwitchStatementE.exit, !llvm.loop !18

_ZN2v88internal9Processor20VisitSwitchStatementEPNS0_15SwitchStatementE.exit: ; preds = %_ZN2v88internal9Processor7ProcessEPNS0_8ZoneListIPNS0_9StatementEEE.exit.i90, %bb.x
  %i.eq = tail call noundef ptr @_ZN2v88internal9Processor21AssignUndefinedBeforeEPNS0_9StatementE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1), !inline_history !32
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eq, ptr %i.er, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 82
  store i8 1, ptr %i.es, align 2
  store i8 %i.dh, ptr %i.dg, align 1
  br label %bb.cg

bb.ab:                                            ; preds = %bb.a
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 82 ; 2 uses
  %i.eu = load i8, ptr %i.et, align 2, !range !7, !noundef !8
  %i.ev = trunc nuw i8 %i.eu to i1
  br i1 %i.ev, label %_ZN2v88internal9Processor24VisitExpressionStatementEPNS0_19ExpressionStatementE.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = tail call noundef ptr @_ZN2v88internal9Processor9SetResultEPNS0_10ExpressionE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.ex)
  store ptr %i.ey, ptr %i.ew, align 8
  store i8 1, ptr %i.et, align 2
  br label %_ZN2v88internal9Processor24VisitExpressionStatementEPNS0_19ExpressionStatementE.exit

_ZN2v88internal9Processor24VisitExpressionStatementEPNS0_19ExpressionStatementE.exit: ; preds = %bb.ab, %bb.ac
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.ez, align 8
  br label %bb.cg

bb.ad:                                            ; preds = %bb.a
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.fa, align 8
  br label %bb.cg

bb.ae:                                            ; preds = %bb.a
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fe = load i8, ptr %i.fd, align 8, !range !7, !noundef !8
  %i.ff = trunc nuw i8 %i.fe to i1
  br i1 %i.ff, label %_ZN2v88internal9Processor33VisitSloppyBlockFunctionStatementEPNS0_28SloppyBlockFunctionStatementE.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fg = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #6, !inline_history !34
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fi = load i64, ptr %i.fh, align 8
  %i.fj = icmp ult i64 %i.fg, %i.fi
  br i1 %i.fj, label %bb.ag, label %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i99

bb.ag:                                            ; preds = %bb.af
  store i8 1, ptr %i.fd, align 8
  br label %_ZN2v88internal9Processor33VisitSloppyBlockFunctionStatementEPNS0_28SloppyBlockFunctionStatementE.exit

_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i99: ; preds = %bb.af
  tail call void @_ZN2v88internal9Processor25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %i.fc), !inline_history !34
  br label %_ZN2v88internal9Processor33VisitSloppyBlockFunctionStatementEPNS0_28SloppyBlockFunctionStatementE.exit

_ZN2v88internal9Processor33VisitSloppyBlockFunctionStatementEPNS0_28SloppyBlockFunctionStatementE.exit: ; preds = %bb.ae, %bb.ag, %_ZN2v88internal9Processor18CheckStackOverflowEv.exit.i.i99
end_hunk_1
