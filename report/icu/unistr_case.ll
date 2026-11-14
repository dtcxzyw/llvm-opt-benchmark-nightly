Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/unistr_case?download=true
inline.NumInlined: 51
inline.NumDeleted: 30
begin_hunk_0_@_ZN6icu_7813UnicodeString7caseMapEijPNS_13BreakIteratorEPFiijS2_PDsiPKDsiPNS_5EditsER10UErrorCodeE:bb.a
bb.al:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp112, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bp, %bb.z ], [ %i.bq, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @_ZN6icu_785EditsD1Ev(ptr noundef nonnull align 8 dead_on_return(228) dereferenceable(232) %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %bb.ax

bb.am:                                            ; preds = %bb.u, %bb.ak
  %.060 = phi ptr [ %i.bg, %bb.ak ], [ %i.a, %bb.u ]
  %.259 = phi i32 [ %i.cu, %bb.ak ], [ %i.ar, %bb.u ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store ptr null, ptr %i.d, align 8, !tbaa !36
  %i.cv = invoke noundef signext i8 @_ZN6icu_7813UnicodeString18cloneArrayIfNeededEiiaPPia(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %.259, i32 noundef %.259, i8 noundef signext 0, ptr noundef nonnull %i.d, i8 noundef signext 1)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.not81 = icmp eq i8 %i.cv, 0
  br i1 %.not81, label %_ZN6icu_7813UnicodeString9setLengthEi.exit95, label %bb.ap

bb.ao:                                            ; preds = %bb.aw, %bb.ar, %bb.ap, %bb.am
  %i.cw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %bb.ax

bb.ap:                                            ; preds = %bb.an
  store i32 0, ptr %i.b, align 4, !tbaa !10
  %i.cx = load i16, ptr %i.e, align 8, !tbaa !8
  %i.cy = and i16 %i.cx, 2
  %.not.i92 = icmp eq i16 %i.cy, 0                ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = select i1 %.not.i92, ptr %i.db, ptr %i.cz
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.de = load i32, ptr %i.dd, align 8
  %i.df = select i1 %.not.i92, i32 %i.de, i32 27
  %i.dg = invoke noundef i32 %4(i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %i.dc, i32 noundef %i.df, ptr noundef %.060, i32 noundef %i.n, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %bb.aq unwind label %bb.ao     ; 3 uses

bb.aq:                                            ; preds = %bb.ap
  %i.dh = load ptr, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  %.not82 = icmp eq ptr %i.dh, null
  br i1 %.not82, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  invoke void @uprv_free_78(ptr noundef nonnull %i.dh)
          to label %bb.as unwind label %bb.ao

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.di = load i32, ptr %i.b, align 4, !tbaa !10
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dk = icmp slt i32 %i.dg, 1024
  %i.dl = load i16, ptr %i.e, align 8, !tbaa !8   ; 2 uses
  br i1 %i.dk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.dm = and i16 %i.dl, 31
  %.tr.i.i94 = trunc i32 %i.dg to i16
  %i.dn = shl i16 %.tr.i.i94, 5
  %i.do = or disjoint i16 %i.dm, %i.dn
  store i16 %i.do, ptr %i.e, align 8, !tbaa !8
  br label %_ZN6icu_7813UnicodeString9setLengthEi.exit95

bb.av:                                            ; preds = %bb.at
  %i.dp = or i16 %i.dl, -32
  store i16 %i.dp, ptr %i.e, align 8, !tbaa !8
  store i32 %i.dg, ptr %i.l, align 4, !tbaa !8
  br label %_ZN6icu_7813UnicodeString9setLengthEi.exit95

bb.aw:                                            ; preds = %bb.as
  invoke void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64) %0)
          to label %_ZN6icu_7813UnicodeString9setLengthEi.exit95 unwind label %bb.ao

_ZN6icu_7813UnicodeString9setLengthEi.exit95:     ; preds = %bb.av, %bb.au, %bb.aw, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  br label %.critedge87

.critedge:                                        ; preds = %.invoke, %bb.ah, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @_ZN6icu_785EditsD1Ev(ptr noundef nonnull align 8 dead_on_return(228) dereferenceable(232) %7) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #6
  br label %.critedge87

.critedge87:                                      ; preds = %bb.t, %bb.s, %bb.k, %bb.v, %.critedge, %_ZN6icu_7813UnicodeString9setLengthEi.exit95
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ay

bb.ax:                                            ; preds = %bb.i, %bb.o, %bb.ao, %bb.al
  %.pn84 = phi { ptr, i32 } [ %i.cw, %bb.ao ], [ %.pn, %bb.al ], [ %i.ai, %bb.i ], [ %i.ap, %bb.o ]
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  resume { ptr, i32 } %.pn84

bb.ay:                                            ; preds = %bb.a, %.critedge87
  ret ptr %0
}

declare i32 @__gxx_personality_v0(...)

declare ptr @u_memcpy_78(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare noundef signext i8 @_ZN6icu_7813UnicodeString18cloneArrayIfNeededEiiaPPia(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, i8 noundef signext, ptr noundef, i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) local_unnamed_addr #2

declare void @_ZN6icu_7813UnicodeString10setToBogusEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_785EditsD1Ev(ptr noundef nonnull align 8 dead_on_return(228) dereferenceable(232)) unnamed_addr #3

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8foldCaseEj(ptr noundef nonnull returned align 8 dereferenceable(64) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7caseMapEijPNS_13BreakIteratorEPFiijS2_PDsiPKDsiPNS_5EditsER10UErrorCodeE(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef 1, i32 noundef %1, ptr noundef null, ptr noundef nonnull @ustrcase_internalFold_78) ; 0 uses
  ret ptr %0
}

declare i32 @ustrcase_internalFold_78(i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: mustprogress uwtable
define noundef i32 @uhash_hashCaselessUnicodeString_78(ptr %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.icu_78::UnicodeString", align 8 ; 8 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  call void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.b = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString7caseMapEijPNS_13BreakIteratorEPFiijS2_PDsiPKDsiPNS_5EditsER10UErrorCodeE(ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 1, i32 noundef 0, ptr noundef null, ptr noundef nonnull @ustrcase_internalFold_78)
          to label %_ZN6icu_7813UnicodeString8foldCaseEj.exit unwind label %bb.c ; 0 uses

_ZN6icu_7813UnicodeString8foldCaseEj.exit:        ; preds = %bb.b
  %i.c = invoke noundef i32 @_ZNK6icu_7813UnicodeString10doHashCodeEv(ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %_ZNK6icu_7813UnicodeString8hashCodeEv.exit unwind label %bb.c

_ZNK6icu_7813UnicodeString8hashCodeEv.exit:       ; preds = %_ZN6icu_7813UnicodeString8foldCaseEj.exit
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.d

bb.c:                                             ; preds = %_ZN6icu_7813UnicodeString8foldCaseEj.exit, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %1) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  resume { ptr, i32 } %i.d

bb.d:                                             ; preds = %bb.a, %_ZNK6icu_7813UnicodeString8hashCodeEv.exit
  %.0 = phi i32 [ %i.c, %_ZNK6icu_7813UnicodeString8hashCodeEv.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define signext range(i8 0, 2) i8 @uhash_compareCaselessUnicodeString_78(ptr %0, ptr %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, null
  %i.d = icmp eq ptr %1, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i16, ptr %i.e, align 8, !tbaa !8    ; 5 uses
  %i.g = icmp slt i16 %i.f, 0
  %i.h = ashr i16 %i.f, 5
  %i.i = sext i16 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = select i1 %i.g, i32 %i.k, i32 %i.i       ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i16, ptr %i.m, align 8, !tbaa !8    ; 4 uses
  %i.o = icmp slt i16 %i.n, 0
  %i.p = ashr i16 %i.n, 5
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.s = load i32, ptr %i.r, align 4
  %i.t = select i1 %i.o, i32 %i.s, i32 %i.q       ; 4 uses
  %i.u = and i16 %i.n, 1
  %.not.i = icmp eq i16 %i.u, 0
  br i1 %.not.i, label %.sink.split.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = trunc i16 %i.f to i8
  %i.w = and i8 %i.v, 1
  br label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit

.sink.split.i.i:                                  ; preds = %bb.c
  %i.x = and i16 %i.f, 1
  %.not.i8.i = icmp eq i16 %i.x, 0
  br i1 %.not.i8.i, label %.sink.split.i.i.i, label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit

.sink.split.i.i.i:                                ; preds = %.sink.split.i.i
  %i.y = and i16 %i.n, 2
  %.not.i.i = icmp eq i16 %i.y, 0
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.ac = select i1 %.not.i.i, ptr %i.aa, ptr %i.ab ; 2 uses
  %2 = icmp slt i32 %i.t, 0
  %spec.select14.i = tail call i32 @llvm.smin.i32(i32 %i.t, i32 0) ; 2 uses
  %3 = sub nsw i32 %i.t, %spec.select14.i
  %spec.select15.i = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %3)
  %spec.select38.i.i = tail call i32 @llvm.smin.i32(i32 %i.l, i32 0)
  %.0.i.i = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0) ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null                 ; 2 uses
  %4 = or i1 %2, %i.ad
  %spec.select32.i.i = select i1 %4, i32 0, i32 %spec.select15.i ; 3 uses
  %i.ae = and i16 %i.f, 2
  %.not.i.i.i = icmp eq i16 %i.ae, 0
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = select i1 %.not.i.i.i, ptr %i.ah, ptr %i.af
  %i.aj = sext i32 %spec.select38.i.i to i64
  %i.ak = getelementptr inbounds [2 x i8], ptr %i.ai, i64 %i.aj ; 2 uses
  %i.al = sext i32 %spec.select14.i to i64
  %i.am = select i1 %i.ad, i64 0, i64 %i.al       ; 2 uses
  %i.an = getelementptr inbounds [2 x i8], ptr %i.ac, i64 %i.am ; 3 uses
  %.not29.i.i = icmp eq ptr %i.ak, %i.an
  br i1 %.not29.i.i, label %5, label %bb.e

bb.e:                                             ; preds = %.sink.split.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !10
  %i.ao = call i32 @u_strcmpFold_78(ptr noundef %i.ak, i32 noundef %.0.i.i, ptr noundef %i.an, i32 noundef %spec.select32.i.i, i32 noundef 65536, ptr noundef nonnull %i.a)
  %.not31.i.i = icmp eq i32 %i.ao, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %.not31.i.i, label %bb.g, label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit

5:                                                ; preds = %.sink.split.i.i.i
  %6 = icmp slt i32 %spec.select32.i.i, 0
  br i1 %6, label %7, label %bb.f

7:                                                ; preds = %5
  %8 = getelementptr inbounds [2 x i8], ptr %i.an, i64 %i.am
  %9 = tail call i32 @u_strlen_78(ptr noundef %8)
  br label %bb.f

bb.f:                                             ; preds = %7, %5
  %.122.i.i = phi i32 [ %9, %7 ], [ %spec.select32.i.i, %5 ]
  %.not30.i.i = icmp eq i32 %.0.i.i, %.122.i.i
  br i1 %.not30.i.i, label %bb.g, label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit

_ZNK6icu_7813UnicodeString13doCaseCompareEiiRKS0_iij.exit: ; preds = %bb.g, %bb.e, %.sink.split.i.i, %bb.d, %bb.f, %bb.b, %bb.a
  %.0 = phi i8 [ 0, %bb.b ], [ 1, %bb.a ], [ %i.w, %bb.d ], [ 0, %.sink.split.i.i ], [ 1, %bb.g ], [ 0, %bb.e ], [ 0, %bb.f ]
  ret i8 %.0
}

declare noundef i32 @_ZNK6icu_7813UnicodeString8refCountEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

declare void @_ZN6icu_785Edits8IteratorC1EPKtiaa(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, i8 noundef signext, i8 noundef signext) unnamed_addr #2

declare noundef signext i8 @_ZN6icu_785Edits8Iterator4nextEaR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef i32 @_ZNK6icu_7813UnicodeString10doHashCodeEv(ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"_ZTS10UErrorCode", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = distinct !{!11, i1 true, !"_ZNK6icu_785Edits24getCoarseChangesIteratorEv"}
!12 = distinct !{!12, !11, !"_ZNK6icu_785Edits24getCoarseChangesIteratorEv: argument 0"}
!13 = distinct !{!13, !34}
!14 = !{!"vtable pointer", !3, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = !{!"p1 char16_t", !16, i64 0}
!18 = !{!"_ZTSN6icu_7814ConstChar16PtrE", !17, i64 0}
!19 = !{!18, !17, i64 0}
!20 = !{i64 2148934679}
!21 = !{!"p1 short", !16, i64 0}
!22 = !{!"_ZTSN6icu_785EditsE", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !9, i64 24, !4, i64 28}
!23 = !{!22, !21, i64 0}
!24 = !{!22, !5, i64 8}
!25 = !{!22, !5, i64 16}
!26 = !{!12}
!27 = !{!22, !5, i64 12}
!28 = !{!"_ZTSN6icu_785Edits8IteratorE", !21, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !4, i64 20, !4, i64 21, !4, i64 22, !4, i64 23, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40}
!29 = !{!28, !4, i64 20}
!30 = !{!28, !5, i64 40}
!31 = !{!28, !5, i64 24}
!32 = !{!28, !5, i64 36}
!33 = !{!28, !5, i64 28}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"p1 int", !16, i64 0}
!36 = !{!35, !35, i64 0}
end_hunk_0
