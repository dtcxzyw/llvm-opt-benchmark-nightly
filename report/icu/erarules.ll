Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/erarules?download=true
inline.NumInlined: 89
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZNK6icu_788EraRules12getStartDateEiRA3_iR10UErrorCode:bb.a
  %i.i = sext i32 %i.e to i64
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19   ; 5 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.l, -2147483391
  %i.n = ashr i32 %i.l, 16
  %i.o = lshr i32 %i.l, 8
  %i.p = and i32 %i.o, 255
  %i.q = and i32 %i.l, 255
  %.sink10.i = select i1 %i.m, i32 -1, i32 %i.n
  store i32 %.sink10.i, ptr %2, align 4, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.p, ptr %i.r, align 4, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.q, ptr %i.s, align 4, !tbaa !19
  br label %bb.f

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d
  store i32 1, ptr %3, align 4, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -32768, -2147483648) i32 @_ZNK6icu_788EraRules12getStartYearEiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !18
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !15   ; 2 uses
  %.not17 = icmp slt i32 %1, %i.d
  br i1 %.not17, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = sub nsw i32 %1, %i.d                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14
  %i.h = icmp slt i32 %i.e, %i.g
  br i1 %i.h, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.e to i64
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  %i.k = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !19   ; 3 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = icmp eq i32 %i.l, -2147483391
  %i.n = ashr i32 %i.l, 16
  %.sink10.i = select i1 %i.m, i32 -1, i32 %i.n
  br label %bb.f

.thread:                                          ; preds = %bb.c, %bb.b, %bb.d
  store i32 1, ptr %2, align 4, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread, %bb.a
  %.113 = phi i32 [ 2147483647, %bb.a ], [ %.sink10.i, %bb.e ], [ 2147483647, %.thread ]
  ret i32 %.113
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6icu_788EraRules10getEraCodeEiiiR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = load i32, ptr %4, align 4, !tbaa !18
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = add i32 %2, -13
  %or.cond = icmp ult i32 %i.c, -12
  %i.d = add i32 %3, -32
  %i.e = icmp ult i32 %i.d, -31
  %or.cond5 = or i1 %or.cond, %i.e
  br i1 %or.cond5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %4, align 4, !tbaa !18
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !16
  %i.h = icmp sgt i32 %i.g, 1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !14   ; 7 uses
  br i1 %i.h, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %0, align 8, !tbaa !11     ; 4 uses
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr [4 x i8], ptr %i.k, i64 %i.l
  %i.n = getelementptr i8, ptr %i.m, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = icmp eq i32 %i.o, -2147483391
  %i.q = icmp sgt i32 %i.j, 0
  %or.cond74 = and i1 %i.p, %i.q
  br i1 %or.cond74, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.e
  %i.r = icmp slt i32 %1, -32768
  %i.s = shl nsw i32 %1, 16
  %i.t = shl nuw nsw i32 %2, 8
  %i.u = or disjoint i32 %i.t, %i.s
  %i.v = or disjoint i32 %i.u, %3
  br i1 %i.r, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count101 = zext nneg i32 %i.j to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43.us
  %indvars.iv98 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next99, %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43.us ] ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv98
  %i.x = load i32, ptr %i.w, align 4, !tbaa !19
  %cond = icmp eq i32 %i.x, -2147483391
  br i1 %cond, label %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread, label %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43.us

_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43.us: ; preds = %.lr.ph.split.us
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %.thread, label %.lr.ph.split.us, !llvm.loop !45

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.y = icmp sgt i32 %1, 32767
  %wide.trip.count96 = zext nneg i32 %i.j to i64  ; 2 uses
  br i1 %i.y, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43.us58
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43.us58 ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv93
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !19
  %.not51.us57 = icmp eq i32 %i.aa, 0
  br i1 %.not51.us57, label %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43.us58, label %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread

_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43.us58: ; preds = %.lr.ph.split.split.us
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %.thread, label %.lr.ph.split.split.us, !llvm.loop !45

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43 ], [ 0, %.lr.ph.split ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !19 ; 2 uses
  %.not51 = icmp eq i32 %i.ac, 0
  %.not52 = icmp sgt i32 %i.ac, %i.v
  %or.cond72 = select i1 %.not51, i1 true, i1 %.not52
  br i1 %or.cond72, label %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43, label %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread

_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43: ; preds = %.lr.ph.split.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count96
  br i1 %exitcond.not, label %.thread, label %.lr.ph.split.split, !llvm.loop !45

_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread: ; preds = %.lr.ph.split.split, %.lr.ph.split.split.us, %.lr.ph.split.us
  %.us-phi.in = phi i64 [ %indvars.iv98, %.lr.ph.split.us ], [ %indvars.iv93, %.lr.ph.split.split.us ], [ %indvars.iv, %.lr.ph.split.split ]
  %.us-phi = trunc i64 %.us-phi.in to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !15
  %i.af = add nsw i32 %i.ae, %.us-phi
  br label %bb.f

.thread:                                          ; preds = %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43, %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43.us58, %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread43.us, %bb.d, %bb.e
  %i.ag = icmp sgt i32 %i.j, 0
  br i1 %i.ag, label %.lr.ph62, label %.critedge._crit_edge

.lr.ph62:                                         ; preds = %.thread
  %i.ah = load ptr, ptr %0, align 8, !tbaa !11    ; 3 uses
  %i.ai = icmp slt i32 %1, -32768
  %i.aj = shl nsw i32 %1, 16
  %i.ak = shl nuw nsw i32 %2, 8
  %i.al = or disjoint i32 %i.ak, %i.aj
  %i.am = or disjoint i32 %i.al, %3
  br i1 %i.ai, label %.lr.ph62.split.us.preheader, label %.lr.ph62.split

.lr.ph62.split.us.preheader:                      ; preds = %.lr.ph62
  %i.an = zext nneg i32 %i.j to i64
  br label %.lr.ph62.split.us

.lr.ph62.split.us:                                ; preds = %.lr.ph62.split.us.preheader, %.critedge.backedge.us
  %indvars.iv109 = phi i64 [ %i.an, %.lr.ph62.split.us.preheader ], [ %indvars.iv.next110, %.critedge.backedge.us ] ; 2 uses
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, -1 ; 3 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next110
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !19
  %cond75 = icmp eq i32 %i.ap, -2147483391
  br i1 %cond75, label %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit41.thread, label %.critedge.backedge.us

.critedge.backedge.us:                            ; preds = %.lr.ph62.split.us
  %i.aq = icmp samesign ugt i64 %indvars.iv109, 1
  br i1 %i.aq, label %.lr.ph62.split.us, label %.critedge._crit_edge, !llvm.loop !46

.lr.ph62.split:                                   ; preds = %.lr.ph62
  %i.ar = icmp sgt i32 %1, 32767
  %i.as = zext nneg i32 %i.j to i64               ; 2 uses
  br i1 %i.ar, label %.lr.ph62.split.split.us, label %.lr.ph62.split.split

.lr.ph62.split.split.us:                          ; preds = %.lr.ph62.split, %.critedge.backedge.us67
  %indvars.iv106 = phi i64 [ %indvars.iv.next107, %.critedge.backedge.us67 ], [ %i.as, %.lr.ph62.split ] ; 2 uses
  %indvars.iv.next107 = add nsw i64 %indvars.iv106, -1 ; 3 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next107
  %i.au = load i32, ptr %i.at, align 4, !tbaa !19
  %.not.us66 = icmp eq i32 %i.au, 0
  br i1 %.not.us66, label %.critedge.backedge.us67, label %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit41.thread

.critedge.backedge.us67:                          ; preds = %.lr.ph62.split.split.us
  %i.av = icmp samesign ugt i64 %indvars.iv106, 1
  br i1 %i.av, label %.lr.ph62.split.split.us, label %.critedge._crit_edge, !llvm.loop !46

.lr.ph62.split.split:                             ; preds = %.lr.ph62.split, %.critedge.backedge
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %.critedge.backedge ], [ %i.as, %.lr.ph62.split ] ; 2 uses
  %indvars.iv.next104 = add nsw i64 %indvars.iv103, -1 ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.next104
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19 ; 2 uses
  %.not = icmp ne i32 %i.ax, 0
  %i.ay = icmp sle i32 %i.ax, %i.am
  %or.cond73 = select i1 %.not, i1 %i.ay, i1 false
  br i1 %or.cond73, label %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit41.thread, label %.critedge.backedge

.critedge.backedge:                               ; preds = %.lr.ph62.split.split
  %i.az = icmp samesign ugt i64 %indvars.iv103, 1
  br i1 %i.az, label %.lr.ph62.split.split, label %.critedge._crit_edge, !llvm.loop !46

_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit41.thread: ; preds = %.lr.ph62.split.split, %.lr.ph62.split.split.us, %.lr.ph62.split.us
  %.us-phi63.in = phi i64 [ %indvars.iv.next110, %.lr.ph62.split.us ], [ %indvars.iv.next107, %.lr.ph62.split.split.us ], [ %indvars.iv.next104, %.lr.ph62.split.split ]
  %.us-phi63 = trunc i64 %.us-phi63.in to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !15
  %i.bc = add nsw i32 %i.bb, %.us-phi63
  br label %bb.f

.critedge._crit_edge:                             ; preds = %.critedge.backedge, %.critedge.backedge.us67, %.critedge.backedge.us, %.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !15
  br label %bb.f

bb.f:                                             ; preds = %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit41.thread, %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread, %bb.a, %.critedge._crit_edge, %bb.c
  %.3 = phi i32 [ %i.af, %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit.thread ], [ -1, %bb.c ], [ %i.be, %.critedge._crit_edge ], [ %i.bc, %_ZN6icu_78L25compareEncodedDateWithYMDEiiii.exit41.thread ], [ -1, %bb.a ]
  ret i32 %.3
}

declare double @ucal_getNow_78() local_unnamed_addr #3

declare noundef ptr @_ZN6icu_788TimeZone13createDefaultEv() local_unnamed_addr #3

declare void @_ZN6icu_785Grego12timeToFieldsEdRiRaS2_S1_R10UErrorCode(double noundef, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef signext i8 @_ZN6icu_789UVector3214expandCapacityEiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare void @uprv_free_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

declare void @ures_close_78(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { allocsize(0) }

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
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 int", !8, i64 0}
!10 = !{!"_ZTSN6icu_7816LocalPointerBaseIiEE", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"_ZTSN6icu_7811LocalMemoryIiEE", !10, i64 0}
!13 = !{!"_ZTSN6icu_788EraRulesE", !12, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20}
!14 = !{!13, !5, i64 8}
!15 = !{!13, !5, i64 12}
!16 = !{!13, !5, i64 16}
!17 = !{!"_ZTS10UErrorCode", !4, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!5, !5, i64 0}
!20 = !{!"p1 _ZTS15UResourceBundle", !8, i64 0}
!21 = !{!"_ZTSN6icu_7816LocalPointerBaseI15UResourceBundleEE", !20, i64 0}
!22 = !{!21, !20, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"vtable pointer", !3, i64 0}
!25 = !{!24, !24, i64 0}
!26 = !{!13, !5, i64 20}
!27 = !{!4, !4, i64 0}
!28 = distinct !{!28, !23}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23, !42, !43}
!34 = distinct !{!34, !44}
!35 = distinct !{!35, !23, !42}
!36 = !{!"p1 omnipotent char", !8, i64 0}
!37 = !{!36, !36, i64 0}
!38 = !{!"_ZTSN6icu_787UObjectE"}
!39 = !{!"_ZTSN6icu_789UVector32E", !38, i64 0, !5, i64 8, !5, i64 12, !5, i64 16, !9, i64 24}
!40 = !{!39, !5, i64 8}
!41 = !{!39, !9, i64 24}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = distinct !{!45, !23}
!46 = distinct !{!46, !23}
end_hunk_0
