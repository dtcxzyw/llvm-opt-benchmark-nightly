Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/prettyprinter?download=true
inline.NumInlined: 658
inline.NumDeleted: 193
begin_hunk_0_@_ZN2v88internal11CallPrinter5PrintEPNS0_15FunctionLiteralEi:bb.a
  store i8 1, ptr %i.f, align 8
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i: ; preds = %bb.d
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1), !inline_history !0
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit: ; preds = %bb.b, %bb.c, %bb.e, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = tail call ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40) %i.m) #7 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit, !prof !48

bb.f:                                             ; preds = %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.30) #8
  unreachable

_ZNK2v88internal11MaybeHandleINS0_6StringEE5CheckEv.exit: ; preds = %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit
  ret ptr %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 !guid !58 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %2, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !45, !noundef !46
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.f, align 8
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit: ; preds = %bb.d
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1), !inline_history !57
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit

_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit: ; preds = %bb.e, %bb.c, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit
  %i.m = load i32, ptr %i.d, align 8
  %.not.not = icmp eq i32 %i.e, %i.m
  br i1 %.not.not, label %bb.f, label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit5

bb.f:                                             ; preds = %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit, %bb.b
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str)
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit5

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = load i8, ptr %i.n, align 8, !range !45, !noundef !46
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit5, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp ult i64 %i.q, %i.s
  br i1 %i.t, label %bb.i, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7

bb.i:                                             ; preds = %bb.h
  store i8 1, ptr %i.n, align 8
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit5

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7: ; preds = %bb.h
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1), !inline_history !57
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit5

_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit5: ; preds = %bb.i, %bb.g, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7, %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit, %bb.f
  ret void
}

declare ptr @_ZN2v88internal24IncrementalStringBuilder6FinishEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 !guid !59 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.e = load i8, ptr %i.d, align 1, !range !45
  %i.f = trunc nuw i8 %i.e to i1
  %not. = xor i1 %i.c, true
  %i.g = select i1 %not., i1 true, i1 %i.f
  br i1 %i.g, label %_ZN2v88internal24IncrementalStringBuilder13AppendCStringIcEEvPKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 0
  %i.o = load i8, ptr %1, align 1                 ; 3 uses
  %.not5.i9 = icmp eq i8 %i.o, 0                  ; 2 uses
  br i1 %i.n, label %.preheader, label %.preheader5

.preheader5:                                      ; preds = %bb.b
  br i1 %.not5.i9, label %_ZN2v88internal24IncrementalStringBuilder13AppendCStringIcEEvPKT_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.e

.preheader:                                       ; preds = %bb.b
  br i1 %.not5.i9, label %_ZN2v88internal24IncrementalStringBuilder13AppendCStringIcEEvPKT_.exit, label %.lr.ph11

.lr.ph11:                                         ; preds = %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph11, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit
  %i.v = phi i8 [ %i.o, %.lr.ph11 ], [ %i.aj, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit ]
  %.0.i10 = phi ptr [ %1, %.lr.ph11 ], [ %i.w, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i10, i64 1 ; 2 uses
  %i.x = load ptr, ptr %i.s, align 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = add i64 %i.y, -1
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = load i32, ptr %i.t, align 4             ; 2 uses
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.t, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = zext i32 %i.ab to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ae
  store i8 %i.v, ptr %i.af, align 1
  %i.ag = load i32, ptr %i.t, align 4
  %i.ah = load i32, ptr %i.u, align 8
  %i.ai = icmp eq i32 %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #7
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit

_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit: ; preds = %bb.c, %bb.d
  %i.aj = load i8, ptr %i.w, align 1              ; 2 uses
  %.not5.i = icmp eq i8 %i.aj, 0
  br i1 %.not5.i, label %_ZN2v88internal24IncrementalStringBuilder13AppendCStringIcEEvPKT_.exit, label %bb.c, !llvm.loop !1

bb.e:                                             ; preds = %.lr.ph, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit
  %i.ak = phi i8 [ %i.o, %.lr.ph ], [ %i.az, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit ]
  %.1.i8 = phi ptr [ %1, %.lr.ph ], [ %i.al, %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit ]
  %i.al = getelementptr inbounds nuw i8, ptr %.1.i8, i64 1 ; 2 uses
  %i.am = load ptr, ptr %i.p, align 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = add i64 %i.an, -1
  %i.ap = inttoptr i64 %i.ao to ptr
  %i.aq = load i32, ptr %i.q, align 4             ; 2 uses
  %i.ar = add nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.q, align 4
  %i.as = sext i8 %i.ak to i16
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.au = zext i32 %i.aq to i64
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.au
  store i16 %i.as, ptr %i.av, align 2
  %i.aw = load i32, ptr %i.q, align 4
  %i.ax = load i32, ptr %i.r, align 8
  %i.ay = icmp eq i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #7
  br label %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit

_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit: ; preds = %bb.e, %bb.f
  %i.az = load i8, ptr %i.al, align 1             ; 2 uses
  %.not.i = icmp eq i8 %i.az, 0
  br i1 %.not.i, label %_ZN2v88internal24IncrementalStringBuilder13AppendCStringIcEEvPKT_.exit, label %bb.e, !llvm.loop !2

_ZN2v88internal24IncrementalStringBuilder13AppendCStringIcEEvPKT_.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder6AppendIctEEvT_.exit, %_ZN2v88internal24IncrementalStringBuilder6AppendIchEEvT_.exit, %.preheader5, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN2v88internal11CallPrinter11ShouldPrintEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #3 align 2 !guid !60 {
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 60
  %3 = load i8, ptr %2, align 4, !range !45, !noundef !46
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.a, label %5

bb.a:                                             ; preds = %1
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.b = load i8, ptr %i.a, align 1, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  br label %5

5:                                                ; preds = %bb.a, %1
  %6 = phi i1 [ false, %1 ], [ %i.d, %bb.a ]
  ret i1 %6
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CallPrinter5PrintEc(ptr noundef nonnull align 8 dereferenceable(120) %0, i8 noundef signext %1) local_unnamed_addr #0 align 2 !guid !61 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.e = load i8, ptr %i.d, align 1, !range !45
  %i.f = trunc nuw i8 %i.e to i1
  %not. = xor i1 %i.c, true
  %i.g = select i1 %not., i1 true, i1 %i.f
  br i1 %i.g, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 0
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = add i64 %i.q, -1
  %i.s = inttoptr i64 %i.r to ptr                 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = zext i32 %i.u to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.x
  store i8 %1, ptr %i.y, align 1
  %i.z = load i32, ptr %i.t, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

bb.d:                                             ; preds = %bb.b
  %i.ad = zext i8 %1 to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.af = zext i32 %i.u to i64
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.af
  store i16 %i.ad, ptr %i.ag, align 2
  %i.ah = load i32, ptr %i.t, align 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.ah, %i.aj
  br i1 %i.ak, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split: ; preds = %bb.d, %bb.c
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %i.k) #7
  br label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit: ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %1) local_unnamed_addr #0 align 2 !guid !62 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i8, ptr %i.a, align 4, !range !45, !noundef !46
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.e = load i8, ptr %i.d, align 1, !range !45
  %i.f = trunc nuw i8 %i.e to i1
  %not. = xor i1 %i.c, true
  %i.g = select i1 %not., i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr %1) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

declare void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40), ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CallPrinter10VisitBlockEPNS0_5BlockE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 !guid !64 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZN2v88internal11CallPrinter14FindStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

bb.b:                                             ; preds = %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit.i ] ; 2 uses
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv.i
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i8, ptr %i.e, align 4, !range !45, !noundef !46
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str), !inline_history !65
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit.i

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.f, align 8, !range !45, !noundef !46
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7, !inline_history !66
  %i.p = load i64, ptr %i.g, align 8
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit.i

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.f, align 8
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit.i

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit.i: ; preds = %bb.e
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.j), !inline_history !63
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit.i

_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit.i: ; preds = %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit.i, %bb.f, %bb.d, %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = load i32, ptr %i.b, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next.i, %i.s
  br i1 %i.t, label %bb.b, label %_ZN2v88internal11CallPrinter14FindStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE.exit, !llvm.loop !3

_ZN2v88internal11CallPrinter14FindStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE.exit: ; preds = %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CallPrinter14FindStatementsEPKNS0_8ZoneListIPNS0_9StatementEEE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 !guid !67 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit ] ; 2 uses
  %i.h = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = load i8, ptr %i.e, align 4, !range !45, !noundef !46
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str), !inline_history !47
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

bb.d:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.f, align 8, !range !45, !noundef !46
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7
  %i.p = load i64, ptr %i.g, align 8
  %i.q = icmp ult i64 %i.o, %i.p
  br i1 %i.q, label %bb.f, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.f, align 8
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit: ; preds = %bb.e
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.j), !inline_history !0
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit: ; preds = %bb.f, %bb.d, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.r = load i32, ptr %i.b, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next, %i.s
  br i1 %i.t, label %bb.b, label %.loopexit, !llvm.loop !3

.loopexit:                                        ; preds = %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal11CallPrinter24VisitVariableDeclarationEPNS0_19VariableDeclarationE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #2 align 2 !guid !68 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN2v88internal11CallPrinter24VisitFunctionDeclarationEPNS0_19FunctionDeclarationE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #2 align 2 !guid !69 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CallPrinter24VisitExpressionStatementEPNS0_19ExpressionStatementE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 !guid !70 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i8, ptr %i.c, align 4, !range !45, !noundef !46
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str), !inline_history !47
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !45, !noundef !46
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7, !inline_history !47
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.f, align 8
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i: ; preds = %bb.d
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.b), !inline_history !0
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit: ; preds = %bb.b, %bb.c, %bb.e, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i
  ret void
}
end_hunk_0
begin_hunk_1_@_ZN2v88internal11CallPrinter12PrintLiteralENS0_12DirectHandleINS0_6ObjectEEEb:bb.a
  br i1 %i.aq, label %bb.g, label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20

bb.g:                                             ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.peel
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.as = load i64, ptr %i.ar, align 8            ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.q, i64 560 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.q, i64 568
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = icmp eq ptr %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.peel, !prof !48

bb.h:                                             ; preds = %bb.g
  %i.ay = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.q) #7
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.peel

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.peel: ; preds = %bb.h, %bb.g
  %.0.i17.peel = phi ptr [ %i.ay, %bb.h ], [ %i.au, %bb.g ] ; 3 uses
  %i.az = ptrtoint ptr %.0.i17.peel to i64
  %i.ba = add i64 %i.az, 8
  %i.bb = inttoptr i64 %i.ba to ptr
  store ptr %i.bb, ptr %i.at, align 8
  store i64 %i.as, ptr %.0.i17.peel, align 8
  %i.bc = load i8, ptr %i.a, align 4, !range !45, !noundef !46
  %i.bd = trunc nuw i8 %i.bc to i1
  %i.be = load i8, ptr %i.b, align 1, !range !45
  %i.bf = trunc nuw i8 %i.be to i1
  %not..peel = xor i1 %i.bd, true
  %i.bg = select i1 %not..peel, i1 true, i1 %i.bf
  br i1 %i.bg, label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.peel, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit
  %i.bh = phi i64 [ %i.dl, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %i.as, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.peel ] ; 8 uses
  %.tr94127 = phi ptr [ %.0.i17, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit ], [ %.0.i17.peel, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.peel ] ; 3 uses
  %i.bi = trunc i64 %i.bh to i1                   ; 2 uses
  br i1 %i.bi, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %.lr.ph
  %i.bj = add nsw i64 %i.bh, -1
  %i.bk = inttoptr i64 %i.bj to ptr
  %i.bl = load atomic volatile i64, ptr %i.bk monotonic, align 8
  %i.bm = add i64 %i.bl, 11
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i16, ptr %i.bn monotonic, align 2
  %i.bp = icmp ult i16 %i.bo, 128
  br i1 %i.bp, label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit23, label %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread

.loopexit:                                        ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.peel
  br i1 %2, label %bb.i, label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit23

bb.i:                                             ; preds = %.loopexit
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str.24)
  %i.bq = load i8, ptr %i.a, align 4, !range !45, !noundef !46
  %i.br = trunc nuw i8 %i.bq to i1
  %i.bs = load i8, ptr %i.b, align 1, !range !45
  %i.bt = trunc nuw i8 %i.bs to i1
  %not..i = xor i1 %i.br, true
  %i.bu = select i1 %not..i, i1 true, i1 %i.bt
  br i1 %i.bu, label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.by, ptr nonnull %1) #7
  br label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit

_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit: ; preds = %bb.i, %bb.j
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str.24)
  br label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20

_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %.lr.ph, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.bz = load ptr, ptr %0, align 8               ; 9 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 648
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 664
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = icmp eq i64 %i.bh, %i.cc
  br i1 %i.cd, label %.loopexit147, label %bb.k

.loopexit147:                                     ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread.peel
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str.25)
  br label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20

bb.k:                                             ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 672
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = icmp eq i64 %i.bh, %i.cf
  br i1 %i.cg, label %.loopexit148, label %bb.l

.loopexit148:                                     ; preds = %bb.k, %bb.b
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str.26)
  br label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20

bb.l:                                             ; preds = %bb.k
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 680
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = icmp eq i64 %i.bh, %i.ci
  br i1 %i.cj, label %.loopexit149, label %bb.m

.loopexit149:                                     ; preds = %bb.l, %bb.c
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str.27)
  br label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20

bb.m:                                             ; preds = %bb.l
  %i.ck = load i64, ptr %i.ca, align 8
  %i.cl = icmp eq i64 %i.bh, %i.ck
  br i1 %i.cl, label %.loopexit150, label %bb.n

.loopexit150:                                     ; preds = %bb.m, %bb.d
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str.28)
  br label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20

bb.n:                                             ; preds = %bb.m
  %i.cm = and i64 %i.bh, 1
  %i.cn = icmp eq i64 %i.cm, 0
  br i1 %i.cn, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.n
  %i.co = add nsw i64 %i.bh, -1
  %i.cp = inttoptr i64 %i.co to ptr               ; 3 uses
  %i.cq = load atomic volatile i64, ptr %i.cp monotonic, align 8
  %i.cr = add i64 %i.cq, 11
  %i.cs = inttoptr i64 %i.cr to ptr
  %i.ct = load atomic volatile i16, ptr %i.cs monotonic, align 2
  %i.cu = icmp eq i16 %i.ct, 130
  br i1 %i.cu, label %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, label %bb.p

_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread: ; preds = %bb.n, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.peel, %bb.e
  %.lcssa144 = phi ptr [ %i.q, %bb.e ], [ %i.q, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.peel ], [ %i.bz, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit ], [ %i.bz, %bb.n ]
  %.tr94127.lcssa133 = phi ptr [ %1, %bb.e ], [ %1, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.peel ], [ %.tr94127, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit ], [ %.tr94127, %bb.n ]
  %i.cv = tail call ptr @_ZN2v88internal11FactoryBaseINS0_7FactoryEE14NumberToStringENS0_12DirectHandleINS0_6ObjectEEENS0_15NumberCacheModeE(ptr noundef nonnull align 1 dereferenceable(1) %.lcssa144, ptr nonnull %.tr94127.lcssa133, i32 noundef 2) #7
  %i.cw = load i8, ptr %i.a, align 4, !range !45, !noundef !46
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = load i8, ptr %i.b, align 1, !range !45
  %i.cz = trunc nuw i8 %i.cy to i1
  %not..i19 = xor i1 %i.cx, true
  %i.da = select i1 %not..i19, i1 true, i1 %i.cz
  br i1 %i.da, label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20, label %bb.o

bb.o:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 8
  %i.dd = add nsw i32 %i.dc, 1
  store i32 %i.dd, ptr %i.db, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.de, ptr %i.cv) #7
  br label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20

bb.p:                                             ; preds = %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit
  br i1 %i.bi, label %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit, label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20

_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.p
  %i.df = load atomic volatile i64, ptr %i.cp monotonic, align 8
  %i.dg = add i64 %i.df, 11
  %i.dh = inttoptr i64 %i.dg to ptr
  %i.di = load atomic volatile i16, ptr %i.dh monotonic, align 2
  %i.dj = icmp eq i16 %i.di, 128
  br i1 %i.dj, label %bb.q, label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20

bb.q:                                             ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dl = load i64, ptr %i.dk, align 8            ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bz, i64 560 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8            ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bz, i64 568
  %i.dp = load ptr, ptr %i.do, align 8
  %i.dq = icmp eq ptr %i.dn, %i.dp
  br i1 %i.dq, label %bb.r, label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, !prof !48

bb.r:                                             ; preds = %bb.q
  %i.dr = tail call noundef ptr @_ZN2v88internal11HandleScope6ExtendEPNS0_7IsolateE(ptr noundef nonnull %i.bz) #7
  br label %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit

_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit: ; preds = %bb.q, %bb.r
  %.0.i17 = phi ptr [ %i.dr, %bb.r ], [ %i.dn, %bb.q ] ; 3 uses
  %i.ds = ptrtoint ptr %.0.i17 to i64
  %i.dt = add i64 %i.ds, 8
  %i.du = inttoptr i64 %i.dt to ptr
  store ptr %i.du, ptr %i.dm, align 8
  store i64 %i.dl, ptr %.0.i17, align 8
  %i.dv = load i8, ptr %i.a, align 4, !range !45, !noundef !46
  %i.dw = trunc nuw i8 %i.dv to i1
  %i.dx = load i8, ptr %i.b, align 1, !range !45
  %i.dy = trunc nuw i8 %i.dx to i1
  %not. = xor i1 %i.dw, true
  %i.dz = select i1 %not., i1 true, i1 %i.dy
  br i1 %i.dz, label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20, label %.lr.ph, !llvm.loop !101

_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit23: ; preds = %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit, %.loopexit
  %.tr94127.lcssa156 = phi ptr [ %1, %.loopexit ], [ %.tr94127, %_ZN2v88internal8IsStringENS0_6TaggedINS0_6ObjectEEE.exit ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 8
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN2v88internal24IncrementalStringBuilder12AppendStringENS0_12DirectHandleINS0_6StringEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ed, ptr nonnull %.tr94127.lcssa156) #7
  br label %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20

_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit20: ; preds = %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit, %bb.p, %bb.f, %_ZN2v88internal8IsSymbolENS0_6TaggedINS0_6ObjectEEE.exit.peel, %_ZN2v88internal11HandleScope12CreateHandleEPNS0_7IsolateEm.exit.peel, %bb.a, %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit23, %bb.o, %_ZN2v88internal8IsNumberENS0_6TaggedINS0_6ObjectEEE.exit.thread, %.loopexit147, %.loopexit149, %.loopexit150, %.loopexit148, %_ZN2v88internal11CallPrinter5PrintENS0_12DirectHandleINS0_6StringEEE.exit
  ret void
}

declare ptr @_ZNK2v88internal7Literal10BuildValueINS0_7IsolateEEENS0_12DirectHandleINS0_6ObjectEEEPT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CallPrinter18VisitRegExpLiteralEPNS0_13RegExpLiteralE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 !guid !103 {
bb.a:
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str.1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %.sroa.0.0.copyload.i.i = load ptr, ptr %i.b, align 8
  tail call void @_ZN2v88internal11CallPrinter12PrintLiteralENS0_12DirectHandleINS0_6ObjectEEEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %.sroa.0.0.copyload.i.i, i1 noundef zeroext false)
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str.1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 9 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 128
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZN2v88internal11CallPrinter5PrintEc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.g = load i8, ptr %i.f, align 4, !range !45, !noundef !46
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.j = load i8, ptr %i.i, align 1, !range !45
  %i.k = trunc nuw i8 %i.j to i1
  %not..i = xor i1 %i.h, true
  %i.l = select i1 %not..i, i1 true, i1 %i.k
  br i1 %i.l, label %_ZN2v88internal11CallPrinter5PrintEc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.m, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp eq i32 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i64, ptr %i.u, align 8
  %i.w = add i64 %i.v, -1
  %i.x = inttoptr i64 %i.w to ptr
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.ac = zext i32 %i.z to i64                    ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  store i8 100, ptr %i.ae, align 1
  %i.af = load i32, ptr %i.y, align 4
  %i.ag = load i32, ptr %i.ad, align 8
  %i.ah = icmp eq i32 %i.af, %i.ag
  br i1 %i.ah, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split.i, label %_ZN2v88internal11CallPrinter5PrintEc.exit

bb.e:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.ac
  store i16 100, ptr %i.ai, align 2
  %i.aj = load i32, ptr %i.y, align 4
  %i.ak = load i32, ptr %i.ad, align 8
  %i.al = icmp eq i32 %i.aj, %i.ak
  br i1 %i.al, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split.i, label %_ZN2v88internal11CallPrinter5PrintEc.exit

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split.i: ; preds = %bb.e, %bb.d
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %i.p) #7
  br label %_ZN2v88internal11CallPrinter5PrintEc.exit

_ZN2v88internal11CallPrinter5PrintEc.exit:        ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split.i, %bb.e, %bb.d, %bb.b, %bb.a
  %i.am = load i32, ptr %i.c, align 8
  %i.an = and i32 %i.am, 1
  %.not11 = icmp eq i32 %i.an, 0
  br i1 %.not11, label %_ZN2v88internal11CallPrinter5PrintEc.exit21, label %bb.f

bb.f:                                             ; preds = %_ZN2v88internal11CallPrinter5PrintEc.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ap = load i8, ptr %i.ao, align 4, !range !45, !noundef !46
  %i.aq = trunc nuw i8 %i.ap to i1
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.as = load i8, ptr %i.ar, align 1, !range !45
  %i.at = trunc nuw i8 %i.as to i1
  %not..i19 = xor i1 %i.aq, true
  %i.au = select i1 %not..i19, i1 true, i1 %i.at
  br i1 %i.au, label %_ZN2v88internal11CallPrinter5PrintEc.exit21, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8
  %i.ax = add nsw i32 %i.aw, 1
  store i32 %i.ax, ptr %i.av, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = icmp eq i32 %i.ba, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = add i64 %i.be, -1
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.bi = load i32, ptr %i.bh, align 4            ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bl = zext i32 %i.bi to i64                   ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.bb, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bl
  store i8 103, ptr %i.bn, align 1
  %i.bo = load i32, ptr %i.bh, align 4
  %i.bp = load i32, ptr %i.bm, align 8
  %i.bq = icmp eq i32 %i.bo, %i.bp
  br i1 %i.bq, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split.i20, label %_ZN2v88internal11CallPrinter5PrintEc.exit21

bb.i:                                             ; preds = %bb.g
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.bk, i64 %i.bl
  store i16 103, ptr %i.br, align 2
  %i.bs = load i32, ptr %i.bh, align 4
  %i.bt = load i32, ptr %i.bm, align 8
  %i.bu = icmp eq i32 %i.bs, %i.bt
  br i1 %i.bu, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split.i20, label %_ZN2v88internal11CallPrinter5PrintEc.exit21

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split.i20: ; preds = %bb.i, %bb.h
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ay) #7
  br label %_ZN2v88internal11CallPrinter5PrintEc.exit21

_ZN2v88internal11CallPrinter5PrintEc.exit21:      ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split.i20, %bb.i, %bb.h, %bb.f, %_ZN2v88internal11CallPrinter5PrintEc.exit
  %i.bv = load i32, ptr %i.c, align 8
  %i.bw = and i32 %i.bv, 2
  %.not12 = icmp eq i32 %i.bw, 0
  br i1 %.not12, label %_ZN2v88internal11CallPrinter5PrintEc.exit24, label %bb.j

bb.j:                                             ; preds = %_ZN2v88internal11CallPrinter5PrintEc.exit21
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.by = load i8, ptr %i.bx, align 4, !range !45, !noundef !46
  %i.bz = trunc nuw i8 %i.by to i1
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.cb = load i8, ptr %i.ca, align 1, !range !45
  %i.cc = trunc nuw i8 %i.cb to i1
  %not..i22 = xor i1 %i.bz, true
  %i.cd = select i1 %not..i22, i1 true, i1 %i.cc
  br i1 %i.cd, label %_ZN2v88internal11CallPrinter5PrintEc.exit24, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load i32, ptr %i.ci, align 8
  %i.ck = icmp eq i32 %i.cj, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = add i64 %i.cn, -1
  %i.cp = inttoptr i64 %i.co to ptr
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 4 uses
  %i.cr = load i32, ptr %i.cq, align 4            ; 2 uses
  %i.cs = add nsw i32 %i.cr, 1
  store i32 %i.cs, ptr %i.cq, align 4
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cu = zext i32 %i.cr to i64                   ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br i1 %i.ck, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cu
  store i8 105, ptr %i.cw, align 1
  %i.cx = load i32, ptr %i.cq, align 4
  %i.cy = load i32, ptr %i.cv, align 8
  %i.cz = icmp eq i32 %i.cx, %i.cy
  br i1 %i.cz, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split.i23, label %_ZN2v88internal11CallPrinter5PrintEc.exit24

bb.m:                                             ; preds = %bb.k
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %i.cu
  store i16 105, ptr %i.da, align 2
  %i.db = load i32, ptr %i.cq, align 4
  %i.dc = load i32, ptr %i.cv, align 8
  %i.dd = icmp eq i32 %i.db, %i.dc
  br i1 %i.dd, label %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split.i23, label %_ZN2v88internal11CallPrinter5PrintEc.exit24

_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split.i23: ; preds = %bb.m, %bb.l
  tail call void @_ZN2v88internal24IncrementalStringBuilder6ExtendEv(ptr noundef nonnull align 8 dereferenceable(40) %i.ch) #7
  br label %_ZN2v88internal11CallPrinter5PrintEc.exit24

_ZN2v88internal11CallPrinter5PrintEc.exit24:      ; preds = %_ZN2v88internal24IncrementalStringBuilder15AppendCharacterEh.exit.sink.split.i23, %bb.m, %bb.l, %bb.j, %_ZN2v88internal11CallPrinter5PrintEc.exit21
  %i.de = load i32, ptr %i.c, align 8
  %i.df = and i32 %i.de, 64
  %.not13 = icmp eq i32 %i.df, 0
  br i1 %.not13, label %_ZN2v88internal11CallPrinter5PrintEc.exit27, label %bb.n

end_hunk_1
begin_hunk_2_@_ZN2v88internal11CallPrinter10VisitAwaitEPNS0_5AwaitE:bb.a
bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !45, !noundef !46
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7, !inline_history !47
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.f, align 8
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i: ; preds = %bb.d
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.b), !inline_history !0
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit: ; preds = %bb.b, %bb.c, %bb.e, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CallPrinter10VisitThrowEPNS0_5ThrowE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 !guid !113 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i8, ptr %i.c, align 4, !range !45, !noundef !46
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str), !inline_history !47
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !45, !noundef !46
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7, !inline_history !47
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.f, align 8
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i: ; preds = %bb.d
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.b), !inline_history !0
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit: ; preds = %bb.b, %bb.c, %bb.e, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CallPrinter18VisitOptionalChainEPNS0_13OptionalChainE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 !guid !114 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i8, ptr %i.c, align 4, !range !45, !noundef !46
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str), !inline_history !47
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8, !range !45, !noundef !46
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7, !inline_history !47
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = icmp ult i64 %i.i, %i.k
  br i1 %i.l, label %bb.e, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.f, align 8
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i: ; preds = %bb.d
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.b), !inline_history !0
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit: ; preds = %bb.b, %bb.c, %bb.e, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit7.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CallPrinter13VisitPropertyEPNS0_8PropertyE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 !guid !115 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4
  %i.e = and i32 %i.d, 63
  %i.f = icmp ne i32 %i.e, 45
  %.not46 = icmp eq ptr %i.b, null
  %.not = or i1 %.not46, %i.f
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8
  %i.h = tail call ptr @_ZNK2v88internal7Literal10BuildValueINS0_7IsolateEEENS0_12DirectHandleINS0_6ObjectEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %i.g) #7
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %_ZN2v88internal20IsInternalizedStringENS0_6TaggedINS0_6ObjectEEE.exit, label %.critedge

_ZN2v88internal20IsInternalizedStringENS0_6TaggedINS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.k = add nsw i64 %i.i, -1
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = load atomic volatile i64, ptr %i.l monotonic, align 8
  %i.n = add i64 %i.m, 11
  %i.o = inttoptr i64 %i.n to ptr
  %i.p = load atomic volatile i16, ptr %i.o monotonic, align 2
  %i.q = and i16 %i.p, -96
  %i.r = icmp eq i16 %i.q, 0
  br i1 %i.r, label %bb.c, label %.critedge

bb.c:                                             ; preds = %_ZN2v88internal20IsInternalizedStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4, !range !45, !noundef !46
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 8, !range !45, !noundef !46
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = icmp ult i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit21

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.z, align 8
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit21: ; preds = %bb.e
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.t), !inline_history !0
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i

_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i: ; preds = %bb.f, %bb.d, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit21
  %i.ag = load i32, ptr %i.x, align 8
  %.not.i.not = icmp eq i32 %i.y, %i.ag
  br i1 %.not.i.not, label %bb.g, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

bb.g:                                             ; preds = %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str), !inline_history !47
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

bb.h:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 8, !range !45, !noundef !46
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.am = load i64, ptr %i.al, align 8
  %i.an = icmp ult i64 %i.ak, %i.am
  br i1 %i.an, label %bb.j, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.ah, align 8
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit: ; preds = %bb.i
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.t), !inline_history !0
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit: ; preds = %bb.j, %bb.h, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit, %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i, %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = and i32 %i.ap, 128
  %.not47 = icmp eq i32 %i.aq, 0
  br i1 %.not47, label %2, label %bb.k

bb.k:                                             ; preds = %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str.9)
  br label %2

2:                                                ; preds = %bb.k, %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str.10)
  %3 = load i8, ptr %i.u, align 4, !range !45, !noundef !46
  %4 = trunc nuw i8 %3 to i1
  br i1 %4, label %bb.l, label %bb.ad

bb.l:                                             ; preds = %2
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 61
  %i.as = load i8, ptr %i.ar, align 1, !range !45, !noundef !46
  %i.at = trunc nuw i8 %i.as to i1
  br i1 %i.at, label %bb.ad, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load ptr, ptr %0, align 8
  %i.av = tail call ptr @_ZNK2v88internal7Literal10BuildValueINS0_7IsolateEEENS0_12DirectHandleINS0_6ObjectEEEPT_(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %i.au) #7
  tail call void @_ZN2v88internal11CallPrinter12PrintLiteralENS0_12DirectHandleINS0_6ObjectEEEb(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr %i.av, i1 noundef zeroext false)
  br label %bb.ad

.critedge:                                        ; preds = %bb.b, %bb.a, %_ZN2v88internal20IsInternalizedStringENS0_6TaggedINS0_6ObjectEEE.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 4, !range !45, !noundef !46
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %bb.n, label %bb.r

bb.n:                                             ; preds = %.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 8, !range !45, !noundef !46
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i13, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.p, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit25

bb.p:                                             ; preds = %bb.o
  store i8 1, ptr %i.bd, align 8
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i13

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit25: ; preds = %bb.o
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.ax), !inline_history !0
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i13

_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i13: ; preds = %bb.p, %bb.n, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit25
  %i.bk = load i32, ptr %i.bb, align 8
  %.not.i14.not = icmp eq i32 %i.bc, %i.bk
  br i1 %.not.i14.not, label %bb.q, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit15

bb.q:                                             ; preds = %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i13
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str), !inline_history !47
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit15

bb.r:                                             ; preds = %.critedge
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 8, !range !45, !noundef !46
  %i.bn = trunc nuw i8 %i.bm to i1
  br i1 %i.bn, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit15, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = icmp ult i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.t, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit23

bb.t:                                             ; preds = %bb.s
  store i8 1, ptr %i.bl, align 8
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit15

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit23: ; preds = %bb.s
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.ax), !inline_history !0
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit15

_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit15: ; preds = %bb.t, %bb.r, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit23, %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i13, %bb.q
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bt = load i32, ptr %i.bs, align 4
  %i.bu = and i32 %i.bt, 128
  %.not48 = icmp eq i32 %i.bu, 0
  br i1 %.not48, label %bb.v, label %bb.u

bb.u:                                             ; preds = %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit15
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str.11)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit15
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str.4)
  %i.bv = load i8, ptr %i.ay, align 4, !range !45, !noundef !46
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 8, !range !45, !noundef !46
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i17, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cc = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ce = load i64, ptr %i.cd, align 8
  %i.cf = icmp ult i64 %i.cc, %i.ce
  br i1 %i.cf, label %bb.y, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit29

bb.y:                                             ; preds = %bb.x
  store i8 1, ptr %i.bz, align 8
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i17

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit29: ; preds = %bb.x
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.b), !inline_history !0
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i17

_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i17: ; preds = %bb.y, %bb.w, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit29
  %i.cg = load i32, ptr %i.bx, align 8
  %.not.i18.not = icmp eq i32 %i.by, %i.cg
  br i1 %.not.i18.not, label %bb.z, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit19

bb.z:                                             ; preds = %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i17
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str), !inline_history !47
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit19

bb.aa:                                            ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 8, !range !45, !noundef !46
  %i.cj = trunc nuw i8 %i.ci to i1
  br i1 %i.cj, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit19, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ck = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = icmp ult i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.ac, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit27

bb.ac:                                            ; preds = %bb.ab
  store i8 1, ptr %i.ch, align 8
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit19

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit27: ; preds = %bb.ab
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull %i.b), !inline_history !0
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit19

_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit19: ; preds = %bb.ac, %bb.aa, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit27, %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i17, %bb.z
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str.6)
  br label %bb.ad

bb.ad:                                            ; preds = %2, %bb.m, %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit19, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CallPrinter9VisitCallEPNS0_4CallE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 align 2 !guid !116 {
bb.a:
  %i.a = load i32, ptr %1, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %.critedge15

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.f = load i32, ptr %i.e, align 4
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.i = load i32, ptr %i.h, align 4              ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = sext i32 %i.i to i64
  %i.n = getelementptr [8 x i8], ptr %i.l, i64 %i.m
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = and i32 %i.r, 63
  %i.t = icmp ne i32 %i.s, 49
  %.not46 = icmp eq ptr %i.p, null
  %.not = or i1 %.not46, %i.t
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  store i8 1, ptr %i.u, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.w, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load i32, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 8, !range !45, !noundef !46
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.af = load i64, ptr %i.ae, align 8
  %i.ag = icmp ult i64 %i.ad, %i.af
  br i1 %i.ag, label %bb.g, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit30

bb.g:                                             ; preds = %bb.f
  store i8 1, ptr %i.aa, align 8
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit30: ; preds = %bb.f
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.w), !inline_history !0
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i

_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i: ; preds = %bb.g, %bb.e, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit30
  %i.ah = load i32, ptr %i.y, align 8
  %.not.i.not = icmp eq i32 %i.z, %i.ah
  br i1 %.not.i.not, label %bb.h, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

bb.h:                                             ; preds = %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str), !inline_history !47
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit

_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit: ; preds = %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i, %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 1, ptr %i.ai, align 1
  store i8 0, ptr %i.u, align 4
  br label %_ZN2v88internal11CallPrinter13FindArgumentsEPKNS0_8ZoneListIPNS0_10ExpressionEEE.exit.thread

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 65
  store i8 1, ptr %i.aj, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 6 uses
  %i.al = load i8, ptr %i.ak, align 4, !range !45, !noundef !46
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %.critedge15.thread, label %bb.j

.critedge15.thread:                               ; preds = %bb.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load ptr, ptr %i.an, align 8
  br label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 62
  %i.aq = load i8, ptr %i.ap, align 2, !range !45, !noundef !46
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = and i32 %i.av, 63
  %i.ax = icmp eq i32 %i.aw, 56
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 61
  store i8 1, ptr %i.ay, align 1
  br label %_ZN2v88internal11CallPrinter13FindArgumentsEPKNS0_8ZoneListIPNS0_10ExpressionEEE.exit.thread

bb.m:                                             ; preds = %bb.j, %bb.k
  store i8 1, ptr %i.ak, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.be = load i8, ptr %i.bd, align 8, !range !45, !noundef !46
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i19, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = icmp ult i64 %i.bg, %i.bi
  br i1 %i.bj, label %bb.o, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit34

bb.o:                                             ; preds = %bb.n
  store i8 1, ptr %i.bd, align 8
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i19

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit34: ; preds = %bb.n
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.ba), !inline_history !0
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i19

_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i19: ; preds = %bb.o, %bb.m, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit34
  %i.bk = load i32, ptr %i.bb, align 8
  %.not.i20.not = icmp eq i32 %i.bc, %i.bk
  br i1 %.not.i20.not, label %bb.p, label %.critedge17

bb.p:                                             ; preds = %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i19
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str), !inline_history !47
  br label %.critedge17

.critedge15:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 5 uses
  %.pre = load i8, ptr %.phi.trans.insert, align 4, !range !45
  %i.bl = trunc nuw i8 %.pre to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  br i1 %i.bl, label %bb.q, label %bb.u

bb.q:                                             ; preds = %.critedge15.thread, %.critedge15
  %i.bo = phi ptr [ %i.ak, %.critedge15.thread ], [ %.phi.trans.insert, %.critedge15 ] ; 2 uses
  %i.bp = phi ptr [ %i.ao, %.critedge15.thread ], [ %i.bn, %.critedge15 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.bt = load i8, ptr %i.bs, align 8, !range !45, !noundef !46
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i23, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = tail call noundef i64 @_ZN2v88internal23GetCurrentStackPositionEv() #7
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bx = load i64, ptr %i.bw, align 8
  %i.by = icmp ult i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.s, label %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit38

bb.s:                                             ; preds = %bb.r
  store i8 1, ptr %i.bs, align 8
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i23

_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit38: ; preds = %bb.r
  tail call void @_ZN2v88internal11CallPrinter25VisitNoStackOverflowCheckEPNS0_7AstNodeE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %i.bp), !inline_history !0
  br label %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i23

_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i23: ; preds = %bb.s, %bb.q, %_ZN2v88internal11CallPrinter18CheckStackOverflowEv.exit38
  %i.bz = load i32, ptr %i.bq, align 8
  %.not.i24.not = icmp eq i32 %i.br, %i.bz
  br i1 %.not.i24.not, label %bb.t, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit25

bb.t:                                             ; preds = %_ZN2v88internal11CallPrinter5VisitEPNS0_7AstNodeE.exit.i23
  tail call void @_ZN2v88internal11CallPrinter5PrintEPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @.str), !inline_history !47
  br label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit25

bb.u:                                             ; preds = %.critedge15
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !range !45, !noundef !46
  %i.cc = trunc nuw i8 %i.cb to i1
  br i1 %i.cc, label %_ZN2v88internal11CallPrinter4FindEPNS0_7AstNodeEb.exit25, label %bb.v

bb.v:                                             ; preds = %bb.u
end_hunk_2
