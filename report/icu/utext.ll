Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/utext?download=true
inline.NumInlined: 135
inline.NumDeleted: 35
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZL17unistrTextReplaceP5UTextllPKDsiP10UErrorCode:bb.a
  %.0 = phi i32 [ %i.as, %_ZNK6icu_7813UnicodeString9getBufferEv.exit ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL14unistrTextCopyP5UTextlllaP10UErrorCode(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i8 noundef signext %4, ptr nofree noundef captures(none) %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load i32, ptr %5, align 4, !tbaa !38
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %_ZL8pinIndexRll.exit, label %bb.n

_ZL8pinIndexRll.exit:                             ; preds = %bb.a
  %i.f = load i16, ptr %i.c, align 8, !tbaa !51   ; 2 uses
  %i.g = icmp slt i16 %i.f, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.i = load i32, ptr %i.h, align 4
  %i.j = ashr i16 %i.f, 5
  %i.k = sext i16 %i.j to i32
  %i.l = select i1 %i.g, i32 %i.i, i32 %i.k
  %i.m = sext i32 %i.l to i64                     ; 3 uses
  %i.n = icmp slt i64 %1, 0
  %spec.select64 = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.m)
  %i.o = trunc nsw i64 %spec.select64 to i32
  %i.p = select i1 %i.n, i32 0, i32 %i.o          ; 8 uses
  %i.q = icmp slt i64 %2, 0
  %spec.select65 = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.m)
  %i.r = trunc nsw i64 %spec.select65 to i32
  %i.s = select i1 %i.q, i32 0, i32 %i.r          ; 8 uses
  %i.t = icmp slt i64 %3, 0
  %spec.select66 = tail call i64 @llvm.smin.i64(i64 %3, i64 %i.m)
  %i.u = trunc nsw i64 %spec.select66 to i32
  %i.v = select i1 %i.t, i32 0, i32 %i.u          ; 8 uses
  %i.w = icmp sgt i32 %i.p, %i.s
  br i1 %i.w, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZL8pinIndexRll.exit
  %i.x = icmp slt i32 %i.p, %i.v
  %i.y = icmp slt i32 %i.v, %i.s
  %or.cond = and i1 %i.x, %i.y
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %_ZL8pinIndexRll.exit
  store i32 8, ptr %5, align 4, !tbaa !38
  br label %bb.n

bb.d:                                             ; preds = %bb.b
  %.not53 = icmp ne i8 %4, 0                      ; 3 uses
  br i1 %.not53, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.z = sub nsw i32 %i.s, %i.p                   ; 2 uses
  %i.aa = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef %i.p, i32 noundef %i.s, i32 noundef %i.v)
  %i.ad = icmp slt i32 %i.v, %i.p
  %spec.select = select i1 %i.ad, i32 %i.s, i32 %i.p ; 4 uses
  %i.ae = icmp slt i32 %spec.select, 1
  %i.af = icmp eq i32 %i.z, 2147483647
  %or.cond.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = load i16, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.ah = and i16 %i.ag, 1
  %.not.i.i = icmp eq i16 %i.ah, 0
  %i.ai = and i16 %i.ag, 30
  %storemerge.i.i = select i1 %.not.i.i, i16 %i.ai, i16 2
  store i16 %storemerge.i.i, ptr %i.c, align 8, !tbaa !51
  br label %_ZN6icu_7813UnicodeString6removeEii.exit

bb.g:                                             ; preds = %bb.e
  %i.aj = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef %spec.select, i32 noundef %i.z, ptr noundef null, i32 noundef 0, i32 noundef 0) ; 0 uses
  br label %_ZN6icu_7813UnicodeString6removeEii.exit

bb.h:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(64) %i.b, i32 noundef %i.p, i32 noundef %i.s, i32 noundef %i.v)
  br label %_ZN6icu_7813UnicodeString6removeEii.exit

_ZN6icu_7813UnicodeString6removeEii.exit:         ; preds = %bb.g, %bb.f, %bb.h
  %.1 = phi i32 [ %i.p, %bb.h ], [ %spec.select, %bb.f ], [ %spec.select, %bb.g ] ; 3 uses
  %i.an = load i16, ptr %i.c, align 8, !tbaa !51  ; 2 uses
  %i.ao = and i16 %i.an, 17
  %.not.i = icmp eq i16 %i.ao, 0
  br i1 %.not.i, label %bb.i, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.i:                                             ; preds = %_ZN6icu_7813UnicodeString6removeEii.exit
  %i.ap = and i16 %i.an, 2
  %.not2.i = icmp eq i16 %i.ap, 0
  br i1 %.not2.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !51
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %_ZN6icu_7813UnicodeString6removeEii.exit, %bb.j, %bb.k
  %.0.i61 = phi ptr [ %i.as, %bb.k ], [ %i.aq, %bb.j ], [ null, %_ZN6icu_7813UnicodeString6removeEii.exit ]
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.0.i61, ptr %i.at, align 8, !tbaa !21
  br i1 %.not53, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.au = sub nsw i32 %i.s, %.1
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !16
  %i.ax = add nsw i32 %i.aw, %i.au                ; 3 uses
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !16
  %i.ay = sext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !17
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ax, ptr %i.ba, align 4, !tbaa !30
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZNK6icu_7813UnicodeString9getBufferEv.exit
  %i.bb = add nsw i32 %i.v, %i.s
  %i.bc = sub i32 %i.bb, %.1
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = icmp sgt i32 %i.v, %.1
  %or.cond54 = and i1 %.not53, %i.be
  %spec.store.select = select i1 %or.cond54, i32 %i.v, i32 %i.bc
  store i32 %spec.store.select, ptr %i.bd, align 8, !tbaa !15
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL15unistrTextCloseP5UText(ptr nofree noundef captures(none) %0) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = and i32 %i.b, 32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(64) %i.e) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr null, ptr %i.d, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #10

declare void @_ZN6icu_7813UnicodeStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN6icu_787UMemorydlEPv(ptr noundef) local_unnamed_addr #10

declare noundef i32 @_ZNK6icu_7813UnicodeString14getChar32StartEi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef) local_unnamed_addr #5

declare void @_ZNK6icu_7813UnicodeString9doExtractEiiPDsi(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString9doReplaceEiiPKDsii(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL14ucstrTextCloneP5UTextPKS_aP10UErrorCode(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = tail call fastcc noundef ptr @_ZL16shallowTextCloneP5UTextPKS_P10UErrorCode(ptr noundef %0, ptr noundef %1, ptr noundef %3) ; 5 uses
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %3, align 4, !tbaa !38
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !28
  %i.h = tail call noundef i64 %i.g(ptr noundef %i.a), !inline_history !58 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !35   ; 3 uses
  %i.k = shl i64 %i.h, 32                         ; 2 uses
  %sext = add i64 %i.k, 4294967296
  %i.l = ashr exact i64 %sext, 31
  %i.m = tail call noalias ptr @uprv_malloc_78(i64 noundef %i.l) #14 ; 6 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.o = ashr exact i64 %i.k, 32                  ; 7 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %min.iters.check = icmp ult i64 %i.o, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check27 = icmp ult i64 %i.o, 16
  br i1 %min.iters.check27, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.q = and i64 %i.h, 15                         ; 3 uses
  %n.vec = sub nuw nsw i64 %i.o, %i.q             ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %wide.load = load <8 x i16>, ptr %i.r, align 2, !tbaa !23
  %wide.load28 = load <8 x i16>, ptr %i.s, align 2, !tbaa !23
  %i.t = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <8 x i16> %wide.load, ptr %i.t, align 2, !tbaa !23
  store <8 x i16> %wide.load28, ptr %i.u, align 2, !tbaa !23
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !93

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, 0
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp samesign ult i64 %i.q, 4
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !96

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.w = and i64 %i.h, 3                          ; 2 uses
  %n.vec29 = sub nsw i64 %i.o, %i.w               ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index30 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next32, %vec.epilog.vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %index30
  %wide.load31 = load <4 x i16>, ptr %i.x, align 2, !tbaa !23
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %index30
  store <4 x i16> %wide.load31, ptr %i.y, align 2, !tbaa !23
  %index.next32 = add nuw i64 %index30, 4         ; 2 uses
  %i.z = icmp eq i64 %index.next32, %n.vec29
  br i1 %i.z, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !94

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n33 = icmp eq i64 %i.w, 0
  br i1 %cmp.n33, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.025.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec29, %vec.epilog.middle.block ]
  br label %.lr.ph

bb.d:                                             ; preds = %bb.c
  store i32 7, ptr %3, align 4, !tbaa !38
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.025 = phi i64 [ %i.ad, %.lr.ph ], [ %.025.ph, %.lr.ph.preheader ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.025
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !23
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %.025
  store i16 %i.ab, ptr %i.ac, align 2, !tbaa !23
  %i.ad = add nuw nsw i64 %.025, 1                ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ad, %i.o
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !95

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.ae = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.o
  store i16 0, ptr %i.ae, align 2, !tbaa !23
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.m, ptr %i.af, align 8, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !29
  %i.ai = or i32 %i.ah, 32
  store i32 %i.ai, ptr %i.ag, align 8, !tbaa !29
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge, %bb.b, %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i64 @_ZL15ucstrTextLengthP5UText(ptr nofree noundef captures(none) %0) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load i64, ptr %i.f, align 8, !tbaa !17 ; 3 uses
  %i.g = getelementptr inbounds [2 x i8], ptr %i.e, i64 %.promoted
  %i.h = load i16, ptr %i.g, align 2, !tbaa !23
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.j = phi i64 [ %i.k, %.lr.ph ], [ %.promoted, %bb.b ]
  %i.k = add nsw i64 %i.j, 1                      ; 4 uses
  %i.l = getelementptr inbounds [2 x i8], ptr %i.e, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !23
  %i.n = icmp eq i16 %i.m, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph, !llvm.loop !97

._crit_edge:                                      ; preds = %.lr.ph
  store i64 %i.k, ptr %i.f, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.lcssa = phi i64 [ %i.k, %._crit_edge ], [ %.promoted, %bb.b ] ; 3 uses
  store i64 %.lcssa, ptr %i.a, align 8, !tbaa !52
  %i.o = trunc i64 %.lcssa to i32                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.o, ptr %i.p, align 4, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.o, ptr %i.q, align 4, !tbaa !30
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !29
  %i.t = and i32 %i.s, -3
  store i32 %i.t, ptr %i.r, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %i.u = phi i64 [ %.lcssa, %bb.c ], [ %i.b, %bb.a ]
  ret i64 %i.u
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL15ucstrTextAccessP5UTextla(ptr nofree noundef captures(none) %0, i64 noundef %1, i8 noundef signext %2) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 5 uses
  %i.c = icmp slt i64 %1, 0
  br i1 %i.c, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !17   ; 3 uses
  %i.f = icmp slt i64 %1, %i.e
  br i1 %i.f, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %1 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !23
  %i.i = and i16 %i.h, -1024
  %i.j = icmp eq i16 %i.i, -9216
  %i.k = icmp ne i64 %1, 0
  %or.cond = and i1 %i.k, %i.j
  br i1 %or.cond, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.g, i64 -2
  %i.m = load i16, ptr %i.l, align 2, !tbaa !23
  %i.n = and i16 %i.m, -1024
  %i.o = icmp eq i16 %i.n, -10240
  %i.p = sext i1 %i.o to i64
  %spec.select = add nsw i64 %1, %i.p
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !52   ; 2 uses
  %i.s = icmp sgt i64 %i.r, -1
  br i1 %i.s, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = icmp samesign ugt i64 %1, 2147483615
  %i.u = trunc nuw nsw i64 %1 to i32
  %i.v = add nuw nsw i32 %i.u, 32
  %.082 = select i1 %i.t, i32 2147483647, i32 %i.v ; 3 uses
  %i.w = trunc i64 %i.e to i32                    ; 2 uses
  %i.x = icmp sgt i32 %.082, %i.w
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.f
  %sext = shl i64 %i.e, 32
  %i.y = ashr exact i64 %sext, 32
  %wide.trip.count = sext i32 %.082 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.k
  %indvars.iv = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.k ] ; 7 uses
  %i.z = getelementptr inbounds [2 x i8], ptr %i.b, i64 %indvars.iv
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !23
  %i.ab = icmp eq i16 %i.aa, 0
  br i1 %i.ab, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.lr.ph
  %i.ac = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  store i64 %indvars.iv, ptr %i.q, align 8, !tbaa !52
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ac, ptr %i.ad, align 4, !tbaa !16
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ac, ptr %i.ae, align 4, !tbaa !30
  %.not = icmp slt i64 %1, %indvars.iv
  br i1 %.not, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %1 ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !23
  %i.ah = and i16 %i.ag, -1024
  %i.ai = icmp eq i16 %i.ah, -9216
  %i.aj = icmp ne i64 %1, 0
  %or.cond3 = and i1 %i.aj, %i.ai
  br i1 %or.cond3, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr i8, ptr %i.af, i64 -2
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !23
  %i.am = and i16 %i.al, -1024
  %i.an = icmp eq i16 %i.am, -10240
  %i.ao = sext i1 %i.an to i64
  %spec.select92 = add nsw i64 %1, %i.ao
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g, %bb.h
  %.084 = phi i64 [ %1, %bb.h ], [ %indvars.iv, %bb.g ], [ %spec.select92, %bb.i ]
  store i64 %indvars.iv, ptr %i.d, align 8, !tbaa !17
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !29
  %i.ar = and i32 %i.aq, -3
  store i32 %i.ar, ptr %i.ap, align 8, !tbaa !29
  br label %bb.p

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !98

._crit_edge:                                      ; preds = %bb.k, %bb.f
  %.081.lcssa = phi i32 [ %i.w, %bb.f ], [ %.082, %bb.k ] ; 3 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.b, i64 %1 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2, !tbaa !23
  %i.au = and i16 %i.at, -1024
  %i.av = icmp eq i16 %i.au, -9216
  %i.aw = icmp ne i64 %1, 0
  %or.cond5 = and i1 %i.aw, %i.av
  br i1 %or.cond5, label %bb.l, label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.ax = getelementptr i8, ptr %i.as, i64 -2
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !23
  %i.az = and i16 %i.ay, -1024
  %i.ba = icmp eq i16 %i.az, -10240
  %i.bb = sext i1 %i.ba to i64
  %spec.select93 = add nsw i64 %1, %i.bb
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge
  %.185 = phi i64 [ %1, %._crit_edge ], [ %spec.select93, %bb.l ] ; 2 uses
  %i.bc = icmp eq i32 %.081.lcssa, 2147483647
  br i1 %i.bc, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 2147483647, ptr %i.q, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 2147483647, ptr %i.bd, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 2147483647, ptr %i.be, align 4, !tbaa !30
  %spec.select94 = tail call i64 @llvm.smin.i64(i64 %.185, i64 2147483647)
  store i64 2147483647, ptr %i.d, align 8, !tbaa !17
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !29
  %i.bh = and i32 %i.bg, -3
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !29
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bi = sext i32 %.081.lcssa to i64
  %i.bj = getelementptr [2 x i8], ptr %i.b, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !23
  %i.bm = and i16 %i.bl, -1024
  %i.bn = icmp eq i16 %i.bm, -10240
  %i.bo = sext i1 %i.bn to i32
  %spec.select95 = add nsw i32 %.081.lcssa, %i.bo ; 3 uses
  %i.bp = sext i32 %spec.select95 to i64
  store i64 %i.bp, ptr %i.d, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %spec.select95, ptr %i.bq, align 4, !tbaa !30
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %spec.select95, ptr %i.br, align 4, !tbaa !16
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.j, %bb.o, %bb.n, %bb.e, %bb.a, %bb.c
  %.5 = phi i64 [ %i.r, %bb.e ], [ 0, %bb.a ], [ %.185, %bb.o ], [ %1, %bb.c ], [ %spec.select, %bb.d ], [ %.084, %bb.j ], [ %spec.select94, %bb.n ] ; 3 uses
  %i.bs = trunc i64 %.5 to i32
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.bs, ptr %i.bt, align 8, !tbaa !15
  %.not91 = icmp eq i8 %2, 0                      ; 2 uses
  br i1 %.not91, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !17
  %i.bw = icmp slt i64 %.5, %i.bv
  br i1 %i.bw, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bx = icmp sgt i64 %.5, 0
  %i.by = select i1 %.not91, i1 %i.bx, i1 false
  %i.bz = zext i1 %i.by to i8
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.ca = phi i8 [ 1, %bb.q ], [ %i.bz, %bb.r ]
  ret i8 %i.ca
}

; Function Attrs: mustprogress uwtable
define internal noundef i32 @_ZL16ucstrTextExtractP5UTextllPDsiP10UErrorCode(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64
  %i.b = load i32, ptr %5, align 4, !tbaa !38
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.t

bb.b:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %4, 0
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = icmp eq ptr %3, null
  %i.f = icmp ne i32 %4, 0
  %or.cond = and i1 %i.e, %i.f
  %i.g = icmp sgt i64 %1, %2
  %or.cond83 = or i1 %i.g, %or.cond
  br i1 %or.cond83, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %5, align 4, !tbaa !38
  br label %bb.t

bb.e:                                             ; preds = %bb.c
  %i.h = tail call noundef signext i8 @_ZL15ucstrTextAccessP5UTextla(ptr noundef %0, i64 noundef %1, i8 noundef signext 1) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 5 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !15   ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !52   ; 2 uses
  %i.p = trunc i64 %i.o to i32                    ; 6 uses
  %i.q = icmp sgt i32 %i.p, -1
  br i1 %i.q, label %_ZL8pinIndexRll.exit, label %_ZL8pinIndexRll.exit87

_ZL8pinIndexRll.exit:                             ; preds = %bb.e
  %i.r = and i64 %i.o, 2147483647
  %i.s = icmp slt i64 %2, 0
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.r)
  %i.t = trunc nuw nsw i64 %spec.select to i32
  %i.u = select i1 %i.s, i32 0, i32 %i.t
  br label %bb.f

_ZL8pinIndexRll.exit87:                           ; preds = %bb.e
  %i.v = tail call i64 @llvm.smax.i64(i64 %2, i64 0)
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.v, i64 2147483647)
  %i.x = trunc nuw nsw i64 %i.w to i32
  br label %bb.f

bb.f:                                             ; preds = %_ZL8pinIndexRll.exit87, %_ZL8pinIndexRll.exit
  %.070 = phi i32 [ %i.u, %_ZL8pinIndexRll.exit ], [ %i.x, %_ZL8pinIndexRll.exit87 ] ; 3 uses
  %i.y = icmp slt i32 %i.m, %.070
  br i1 %i.y, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.f
  %i.z = icmp slt i32 %i.p, 0
  %i.aa = sub i32 %.070, %i.m
  %.fr = freeze i32 %i.aa                         ; 4 uses
  %wide.trip.count136 = zext i32 %.fr to i64      ; 3 uses
  br i1 %i.z, label %.lr.ph.split.us.split.preheader, label %.lr.ph.split.split.us.preheader

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph
  %i.ab = sext i32 %i.m to i64                    ; 5 uses
  %wide.trip.count = zext nneg i32 %4 to i64      ; 2 uses
  %i.ac = add nsw i64 %wide.trip.count136, -1
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %wide.trip.count) ; 2 uses
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ad, 16
  br i1 %min.iters.check, label %.lr.ph.split.split.us.preheader157, label %vector.memcheck

.lr.ph.split.split.us.preheader157:               ; preds = %vector.body, %vector.memcheck, %.lr.ph.split.split.us.preheader
  %indvars.iv122.ph = phi i64 [ %i.ab, %vector.memcheck ], [ %i.ab, %.lr.ph.split.split.us.preheader ], [ %i.al, %vector.body ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.split.split.us.preheader ], [ %n.vec, %vector.body ]
  br label %.lr.ph.split.split.us

vector.memcheck:                                  ; preds = %.lr.ph.split.split.us.preheader
  %i.af = shl nsw i64 %i.ab, 1
  %i.ag = add i64 %i.af, %i.k
  %i.ah = sub i64 %i.ag, %i.a
  %diff.check = icmp ugt i64 %i.ah, -32
  br i1 %diff.check, label %.lr.ph.split.split.us.preheader157, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ai = and i64 %i.ae, 15                       ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = select i1 %i.aj, i64 16, i64 %i.ai
  %n.vec = sub nsw i64 %i.ae, %i.ak               ; 3 uses
  %i.al = add nsw i64 %n.vec, %i.ab
  %invariant.gep = getelementptr [2 x i8], ptr %i.j, i64 %i.ab
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <8 x i16>, ptr %gep, align 2, !tbaa !23
  %wide.load153 = load <8 x i16>, ptr %i.am, align 2, !tbaa !23
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <8 x i16> %wide.load, ptr %i.an, align 2, !tbaa !23
  store <8 x i16> %wide.load153, ptr %i.ao, align 2, !tbaa !23
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %.lr.ph.split.split.us.preheader157, label %vector.body, !llvm.loop !99

.lr.ph.split.us.split.preheader:                  ; preds = %.lr.ph
  %i.aq = zext nneg i32 %4 to i64
  %i.ar = sext i32 %i.m to i64
  br label %.lr.ph.split.us.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us.split.preheader, %bb.i
  %indvars.iv131 = phi i64 [ %i.ar, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next132, %bb.i ] ; 5 uses
  %indvars.iv129 = phi i64 [ 0, %.lr.ph.split.us.split.preheader ], [ %indvars.iv.next130, %bb.i ] ; 4 uses
  %i.as = getelementptr inbounds [2 x i8], ptr %i.j, i64 %indvars.iv131
  %i.at = load i16, ptr %i.as, align 2, !tbaa !23 ; 2 uses
  %i.au = icmp eq i16 %i.at, 0
  br i1 %i.au, label %.split.us, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us.split
  %i.av = icmp samesign ult i64 %indvars.iv129, %i.aq
  br i1 %i.av, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv129
  store i16 %i.at, ptr %i.aw, align 2, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %indvars.iv.next132 = add nsw i64 %indvars.iv131, 1 ; 2 uses
  %exitcond137.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count136
  br i1 %exitcond137.not, label %.loopexit.loopexit, label %.lr.ph.split.us.split, !llvm.loop !100

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader157, %bb.j
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %bb.j ], [ %indvars.iv122.ph, %.lr.ph.split.split.us.preheader157 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ %indvars.iv.ph, %.lr.ph.split.split.us.preheader157 ] ; 3 uses
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.split.us
  %i.ax = getelementptr inbounds [2 x i8], ptr %i.j, i64 %indvars.iv122
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !23
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv
  store i16 %i.ay, ptr %i.az, align 2, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next, %wide.trip.count136
  br i1 %exitcond128.not, label %.loopexit.loopexit114, label %.lr.ph.split.split.us, !llvm.loop !101

.split.us:                                        ; preds = %.lr.ph.split.us.split
  %i.ba = trunc nsw i64 %indvars.iv131 to i32     ; 4 uses
  %i.bb = trunc nuw nsw i64 %indvars.iv129 to i32
  store i64 %indvars.iv131, ptr %i.n, align 8, !tbaa !52
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %indvars.iv131, ptr %i.bc, align 8, !tbaa !17
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.ba, ptr %i.bd, align 4, !tbaa !16
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ba, ptr %i.be, align 4, !tbaa !30
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.i
  %i.bf = trunc nsw i64 %indvars.iv.next132 to i32
  br label %.loopexit

.loopexit.loopexit114:                            ; preds = %bb.j
  %i.bg = trunc nsw i64 %indvars.iv.next123 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.split.split.us, %.loopexit.loopexit114, %.loopexit.loopexit, %bb.f, %.split.us
  %.173 = phi i32 [ %i.ba, %.split.us ], [ %i.bg, %.loopexit.loopexit114 ], [ %i.m, %bb.f ], [ %i.bf, %.loopexit.loopexit ], [ %.070, %.lr.ph.split.split.us ] ; 7 uses
  %.1 = phi i32 [ %i.bb, %.split.us ], [ %.fr, %.loopexit.loopexit114 ], [ 0, %bb.f ], [ %.fr, %.loopexit.loopexit ], [ %.fr, %.lr.ph.split.split.us ] ; 7 uses
  %.0 = phi i32 [ %i.ba, %.split.us ], [ %i.p, %.loopexit.loopexit114 ], [ %i.p, %bb.f ], [ %i.p, %.loopexit.loopexit ], [ %i.p, %.lr.ph.split.split.us ]
  %i.bh = icmp sgt i32 %.173, 0
  br i1 %i.bh, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.loopexit
  %i.bi = zext nneg i32 %.173 to i64
  %i.bj = getelementptr [2 x i8], ptr %i.j, i64 %i.bi ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 -2
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !23
  %i.bm = and i16 %i.bl, -1024
  %i.bn = icmp eq i16 %i.bm, -10240
  %or.cond3 = icmp ugt i32 %.0, %.173
  %or.cond84 = and i1 %or.cond3, %i.bn
  br i1 %or.cond84, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.bo = load i16, ptr %i.bj, align 2, !tbaa !23 ; 2 uses
  %i.bp = and i16 %i.bo, -1024
  %i.bq = icmp eq i16 %i.bp, -9216
  br i1 %i.bq, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.br = icmp slt i32 %.1, %4
  br i1 %i.br, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bs = add nsw i32 %.1, 1
  %i.bt = sext i32 %.1 to i64
  %i.bu = getelementptr inbounds [2 x i8], ptr %3, i64 %i.bt
  store i16 %i.bo, ptr %i.bu, align 2, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2 = phi i32 [ %i.bs, %bb.n ], [ %.1, %bb.m ]
  %i.bv = add nuw nsw i32 %.173, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l, %bb.k, %.loopexit
  %.274 = phi i32 [ %i.bv, %bb.o ], [ %.173, %bb.l ], [ %.173, %.loopexit ], [ %.173, %bb.k ] ; 2 uses
  %.3 = phi i32 [ %.2, %bb.o ], [ %.1, %bb.l ], [ %.1, %.loopexit ], [ %.1, %bb.k ] ; 2 uses
  %i.bw = sext i32 %.274 to i64                   ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !17
  %.not81 = icmp slt i64 %i.by, %i.bw
  br i1 %.not81, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i32 %.274, ptr %i.l, align 8, !tbaa !15
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.bz = tail call noundef signext i8 @_ZL15ucstrTextAccessP5UTextla(ptr noundef nonnull %0, i64 noundef %i.bw, i8 noundef signext 1) ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.ca = tail call i32 @u_terminateUChars_78(ptr noundef %3, i32 noundef %4, i32 noundef %.3, ptr noundef nonnull %5) ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.s, %bb.d
  %.075 = phi i32 [ %.3, %bb.s ], [ 0, %bb.d ], [ 0, %bb.a ]
  ret i32 %.075
}

; Function Attrs: mustprogress uwtable
define internal void @_ZL14ucstrTextCloseP5UText(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !29
  %i.c = and i32 %i.b, 32
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !35
  tail call void @uprv_free_78(ptr noundef %i.e)
  store ptr null, ptr %i.d, align 8, !tbaa !35
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef ptr @_ZL17charIterTextCloneP5UTextPKS_aP10UErrorCode(ptr noundef %0, ptr noundef %1, i8 noundef signext %2, ptr nofree noundef captures(none) %3) #0 {
bb.a:
  %i.a = load i32, ptr %3, align 4, !tbaa !38
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %.not18 = icmp eq i8 %2, 0
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 16, ptr %3, align 4, !tbaa !38
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(24) %i.d) ; 4 uses
  %i.i = load i32, ptr %3, align 4, !tbaa !38
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !56
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 16, ptr %3, align 4, !tbaa !38
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.n = tail call ptr @utext_setup_78(ptr noundef %0, i32 noundef 64, ptr noundef nonnull %3), !inline_history !102 ; 21 uses
  %i.o = load i32, ptr %3, align 4, !tbaa !38
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 56 ; 4 uses
  store ptr @_ZL13charIterFuncs, ptr %i.q, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 72
  store ptr %i.h, ptr %i.r, align 8, !tbaa !35
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 0, ptr %i.s, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.u = load i32, ptr %i.t, align 4, !tbaa !57
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 %i.v, ptr %i.w, align 8, !tbaa !52
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !43   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.n, i64 80
  store ptr %i.y, ptr %i.z, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i32 -1, ptr %i.aa, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.n, i64 88
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 124
  store i32 -1, ptr %i.ad, align 4, !tbaa !46
  %i.ae = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 3 uses
  store ptr %i.y, ptr %i.ae, align 8, !tbaa !21
  %i.af = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 3 uses
  store i64 -1, ptr %i.af, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 40 ; 6 uses
  store i32 1, ptr %i.ag, align 8, !tbaa !15
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store i64 0, ptr %i.ah, align 8, !tbaa !17
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 44 ; 2 uses
  store i32 0, ptr %i.ai, align 4, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 28 ; 2 uses
  store i32 1, ptr %i.aj, align 4, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !15 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !30
  %.not.i = icmp sgt i32 %i.al, %i.an
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !26
  %i.aq = sext i32 %i.al to i64
  %i.ar = add nsw i64 %i.ap, %i.aq
  br label %utext_getNativeIndex_78.exit

bb.j:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !18
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !31
  %i.aw = tail call noundef i64 %i.av(ptr noundef nonnull %1), !inline_history !36
  %.pre = load i64, ptr %i.af, align 8, !tbaa !26
  br label %utext_getNativeIndex_78.exit

utext_getNativeIndex_78.exit:                     ; preds = %bb.i, %bb.j
  %i.ax = phi i64 [ -1, %bb.i ], [ %.pre, %bb.j ] ; 2 uses
  %.0.i20 = phi i64 [ %i.ar, %bb.i ], [ %i.aw, %bb.j ] ; 5 uses
  %i.ay = icmp slt i64 %.0.i20, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.k

bb.k:                                             ; preds = %utext_getNativeIndex_78.exit
  %i.az = load i64, ptr %i.ah, align 8, !tbaa !17
  %.not.i21 = icmp slt i64 %.0.i20, %i.az
  br i1 %.not.i21, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %utext_getNativeIndex_78.exit
  %i.ba = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !20
  %i.bd = tail call noundef signext i8 %i.bc(ptr noundef nonnull %i.n, i64 noundef %.0.i20, i8 noundef signext 1), !inline_history !33 ; 0 uses
  %.pre.i = load i32, ptr %i.ag, align 8, !tbaa !15
  br label %bb.p

bb.m:                                             ; preds = %bb.k
  %i.be = sub nsw i64 %.0.i20, %i.ax
  %i.bf = trunc i64 %i.be to i32                  ; 3 uses
  %i.bg = load i32, ptr %i.aj, align 4, !tbaa !30
  %.not34.i = icmp slt i32 %i.bg, %i.bf
  br i1 %.not34.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 %i.bf, ptr %i.ag, align 8, !tbaa !15
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bh = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !32
  %i.bk = tail call noundef i32 %i.bj(ptr noundef nonnull %i.n, i64 noundef %.0.i20), !inline_history !33 ; 2 uses
  store i32 %i.bk, ptr %i.ag, align 8, !tbaa !15
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l
  %i.bl = phi i32 [ %i.bf, %bb.n ], [ %i.bk, %bb.o ], [ %.pre.i, %bb.l ] ; 4 uses
  %i.bm = load i32, ptr %i.ai, align 4, !tbaa !16
  %i.bn = icmp slt i32 %i.bl, %i.bm
  br i1 %i.bn, label %bb.q, label %bb.w

bb.q:                                             ; preds = %bb.p
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.bp = sext i32 %i.bl to i64
  %i.bq = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !23
  %i.bs = and i16 %i.br, -1024
  %i.bt = icmp eq i16 %i.bs, -9216
  br i1 %i.bt, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.bu = icmp eq i32 %i.bl, 0
  br i1 %i.bu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bv = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !20
  %i.by = load i64, ptr %i.af, align 8, !tbaa !26
  %i.bz = tail call noundef signext i8 %i.bx(ptr noundef nonnull %i.n, i64 noundef %i.by, i8 noundef signext 0), !inline_history !33 ; 0 uses
  %.pre27 = load i32, ptr %i.ag, align 8, !tbaa !15
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ca = phi i32 [ %.pre27, %bb.s ], [ %i.bl, %bb.r ] ; 3 uses
  %i.cb = icmp sgt i32 %i.ca, 0
  br i1 %i.cb, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cc = load ptr, ptr %i.ae, align 8, !tbaa !21
  %i.cd = zext nneg i32 %i.ca to i64
  %i.ce = getelementptr [2 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = getelementptr i8, ptr %i.ce, i64 -2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !23
  %i.ch = and i16 %i.cg, -1024
  %i.ci = icmp eq i16 %i.ch, -10240
  br i1 %i.ci, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cj = add nsw i32 %i.ca, -1
  store i32 %i.cj, ptr %i.ag, align 8, !tbaa !15
  br label %bb.w

bb.w:                                             ; preds = %bb.p, %bb.q, %bb.t, %bb.u, %bb.v
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 96
  store ptr %i.h, ptr %i.ck, align 8, !tbaa !65
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.f, %bb.d, %bb.w, %bb.a, %bb.c
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.n, %bb.w ], [ null, %bb.d ], [ %i.n, %bb.g ], [ null, %bb.f ]
  ret ptr %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef range(i64 -2147483648, 2147483648) i64 @_ZL18charIterTextLengthP5UText(ptr nofree noundef readonly captures(none) %0) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52
  %i.c = shl i64 %i.b, 32
  %i.d = ashr exact i64 %i.c, 32
  ret i64 %i.d
}

; Function Attrs: mustprogress uwtable
define internal noundef signext range(i8 0, 2) i8 @_ZL18charIterTextAccessP5UTextla(ptr nofree noundef captures(none) initializes((40, 44)) %0, i64 noundef %1, i8 noundef signext %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !35   ; 34 uses
  %i.c = trunc i64 %1 to i32                      ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = icmp eq i8 %2, 0
  br i1 %i.e, label %bb.f, label %.thread._crit_edge

.thread._crit_edge:                               ; preds = %.thread
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !52
  br label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = and i64 %1, 2147483647
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i64, ptr %i.g, align 8, !tbaa !52   ; 3 uses
  %.not = icmp slt i64 %i.f, %i.h
  %i.i = trunc i64 %i.h to i32
  %spec.select = select i1 %.not, i32 %i.c, i32 %i.i ; 6 uses
  %i.j = icmp eq i8 %2, 0                         ; 2 uses
  %i.k = icmp sgt i32 %spec.select, 0             ; 2 uses
  %or.cond = and i1 %i.j, %i.k
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = add nsw i32 %spec.select, -1
end_hunk_0
begin_hunk_1_@_ZL18charIterTextAccessP5UTextla:bb.a
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = tail call noundef zeroext i16 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.cy = getelementptr inbounds nuw i8, ptr %.067, i64 14
  store i16 %i.cx, ptr %i.cy, align 2, !tbaa !23
  %i.cz = add nsw i64 %i.w, 7
  %i.da = load i64, ptr %i.at, align 8, !tbaa !52
  %i.db = icmp slt i64 %i.da, %i.cz
  br i1 %i.db, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = tail call noundef zeroext i16 %i.de(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.dg = getelementptr inbounds nuw i8, ptr %.067, i64 16
  store i16 %i.df, ptr %i.dg, align 2, !tbaa !23
  %i.dh = add nsw i64 %i.w, 8
  %i.di = load i64, ptr %i.at, align 8, !tbaa !52
  %i.dj = icmp slt i64 %i.di, %i.dh
  br i1 %i.dj, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dk = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 40
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = tail call noundef zeroext i16 %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.do = getelementptr inbounds nuw i8, ptr %.067, i64 18
  store i16 %i.dn, ptr %i.do, align 2, !tbaa !23
  %i.dp = add nsw i64 %i.w, 9
  %i.dq = load i64, ptr %i.at, align 8, !tbaa !52
  %i.dr = icmp slt i64 %i.dq, %i.dp
  br i1 %i.dr, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ds = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.du = load ptr, ptr %i.dt, align 8
  %i.dv = tail call noundef zeroext i16 %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.dw = getelementptr inbounds nuw i8, ptr %.067, i64 20
  store i16 %i.dv, ptr %i.dw, align 2, !tbaa !23
  %i.dx = add nsw i64 %i.w, 10
  %i.dy = load i64, ptr %i.at, align 8, !tbaa !52
  %i.dz = icmp slt i64 %i.dy, %i.dx
  br i1 %i.dz, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ea = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = tail call noundef zeroext i16 %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.ee = getelementptr inbounds nuw i8, ptr %.067, i64 22
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !23
  %i.ef = add nsw i64 %i.w, 11
  %i.eg = load i64, ptr %i.at, align 8, !tbaa !52
  %i.eh = icmp slt i64 %i.eg, %i.ef
  br i1 %i.eh, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 40
  %i.ek = load ptr, ptr %i.ej, align 8
  %i.el = tail call noundef zeroext i16 %i.ek(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.em = getelementptr inbounds nuw i8, ptr %.067, i64 24
  store i16 %i.el, ptr %i.em, align 2, !tbaa !23
  %i.en = add nsw i64 %i.w, 12
  %i.eo = load i64, ptr %i.at, align 8, !tbaa !52
  %i.ep = icmp slt i64 %i.eo, %i.en
  br i1 %i.ep, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eq = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = tail call noundef zeroext i16 %i.es(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.eu = getelementptr inbounds nuw i8, ptr %.067, i64 26
  store i16 %i.et, ptr %i.eu, align 2, !tbaa !23
  %i.ev = add nsw i64 %i.w, 13
  %i.ew = load i64, ptr %i.at, align 8, !tbaa !52
  %i.ex = icmp slt i64 %i.ew, %i.ev
  br i1 %i.ex, label %.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ey = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = tail call noundef zeroext i16 %i.fa(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.fc = getelementptr inbounds nuw i8, ptr %.067, i64 28
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !23
  %i.fd = add nsw i64 %i.w, 14
  %i.fe = load i64, ptr %i.at, align 8, !tbaa !52
  %i.ff = icmp slt i64 %i.fe, %i.fd
  br i1 %i.ff, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 40
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = tail call noundef zeroext i16 %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.fk = getelementptr inbounds nuw i8, ptr %.067, i64 30
  store i16 %i.fj, ptr %i.fk, align 2, !tbaa !23
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ab, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.j, %bb.h
  %.1 = phi ptr [ %i.ah, %bb.j ], [ %i.ac, %bb.h ], [ %.067, %bb.m ], [ %.067, %bb.ab ], [ %.067, %bb.aa ], [ %.067, %bb.z ], [ %.067, %bb.y ], [ %.067, %bb.x ], [ %.067, %bb.w ], [ %.067, %bb.v ], [ %.067, %bb.u ], [ %.067, %bb.t ], [ %.067, %bb.s ], [ %.067, %bb.r ], [ %.067, %bb.q ], [ %.067, %bb.p ], [ %.067, %bb.o ], [ %.067, %bb.n ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.1, ptr %i.fl, align 8, !tbaa !21
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  store i32 16, ptr %i.fm, align 4, !tbaa !16
  store i64 %i.w, ptr %i.u, align 8, !tbaa !26
  %i.fn = add nsw i32 %i.t, 16
  %i.fo = sext i32 %i.fn to i64                   ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i64 %i.fo, ptr %i.fp, align 8, !tbaa !17
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !52 ; 3 uses
  %i.fs = icmp slt i64 %i.fr, %i.fo
  br i1 %i.fs, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit
  store i64 %i.fr, ptr %i.fp, align 8, !tbaa !17
  %i.ft = trunc i64 %i.fr to i32
  %i.fu = sub nsw i32 %i.ft, %i.t                 ; 2 uses
  store i32 %i.fu, ptr %i.fm, align 4, !tbaa !16
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.loopexit
  %i.fv = phi i32 [ %i.fu, %bb.ac ], [ 16, %.loopexit ]
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !30
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.ad
  %i.fx = phi i64 [ %i.v, %bb.f ], [ %i.w, %bb.ad ]
  %i.fy = trunc nsw i64 %i.fx to i32
  %i.fz = sub nsw i32 %.06981, %i.fy              ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.fz, ptr %i.ga, align 8, !tbaa !15
  br i1 %i.r, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !16
  %i.gd = icmp slt i32 %i.fz, %i.gc
  br label %bb.ag

bb.af:                                            ; preds = %.critedge
  %i.ge = icmp sgt i32 %i.fz, 0
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.gf = phi i1 [ %i.gd, %bb.ae ], [ %i.ge, %bb.af ]
  %i.gg = zext i1 %i.gf to i8
  ret i8 %i.gg
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -2147483647, -2147483648) i32 @_ZL19charIterTextExtractP5UTextllPDsiP10UErrorCode(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !38
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.c = icmp slt i32 %4, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %3, null
  %i.e = icmp ne i32 %4, 0
  %or.cond = and i1 %i.d, %i.e
  %i.f = icmp sgt i64 %1, %2
  %or.cond60 = or i1 %i.f, %or.cond
  br i1 %or.cond60, label %bb.d, label %_ZL8pinIndexRll.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  store i32 1, ptr %5, align 4, !tbaa !38
  br label %bb.k

_ZL8pinIndexRll.exit:                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load i64, ptr %i.g, align 8, !tbaa !52
  %i.i = shl i64 %i.h, 32
  %i.j = ashr exact i64 %i.i, 32                  ; 2 uses
  %i.k = icmp slt i64 %1, 0
  %spec.select = tail call i64 @llvm.smin.i64(i64 %1, i64 %i.j)
  %i.l = trunc nsw i64 %spec.select to i32
  %i.m = select i1 %i.k, i32 0, i32 %i.l
  %i.n = icmp slt i64 %2, 0
  %spec.select61 = tail call i64 @llvm.smin.i64(i64 %2, i64 %i.j)
  %i.o = trunc nsw i64 %spec.select61 to i32
  %i.p = select i1 %i.n, i32 0, i32 %i.o          ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !35   ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 128
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i32 noundef %i.m) ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !104  ; 4 uses
  %i.y = icmp slt i32 %i.x, %i.p
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZL8pinIndexRll.exit, %bb.j
  %.064 = phi i32 [ %.1, %bb.j ], [ %i.x, %_ZL8pinIndexRll.exit ]
  %.04563 = phi i32 [ %.pre-phi, %bb.j ], [ %i.x, %_ZL8pinIndexRll.exit ] ; 2 uses
  %.04662 = phi i32 [ %.2, %bb.j ], [ 0, %_ZL8pinIndexRll.exit ] ; 5 uses
  %i.z = load ptr, ptr %i.r, align 8, !tbaa !50
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.r) ; 4 uses
  %i.ad = icmp ult i32 %i.ac, 65536               ; 2 uses
  %i.ae = select i1 %i.ad, i32 1, i32 2           ; 3 uses
  %i.af = add nsw i32 %i.ae, %.04662              ; 2 uses
  %.not53 = icmp sgt i32 %i.af, %4
  br i1 %.not53, label %bb.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = trunc nuw i32 %i.ac to i16
  %i.ah = add nsw i32 %.04662, 1
  %i.ai = sext i32 %.04662 to i64
  %i.aj = getelementptr inbounds [2 x i8], ptr %3, i64 %i.ai
  store i16 %i.ag, ptr %i.aj, align 2, !tbaa !23
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ak = lshr i32 %i.ac, 10
  %i.al = trunc i32 %i.ak to i16
  %i.am = add i16 %i.al, -10304
  %i.an = sext i32 %.04662 to i64
  %i.ao = getelementptr inbounds [2 x i8], ptr %3, i64 %i.an ; 2 uses
  store i16 %i.am, ptr %i.ao, align 2, !tbaa !23
  %i.ap = trunc i32 %i.ac to i16
  %i.aq = and i16 %i.ap, 1023
  %i.ar = or disjoint i16 %i.aq, -9216
  %i.as = add nsw i32 %.04662, 2
  %i.at = getelementptr i8, ptr %i.ao, i64 2
  store i16 %i.ar, ptr %i.at, align 2, !tbaa !23
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.147 = phi i32 [ %i.ah, %bb.f ], [ %i.as, %bb.g ]
  %i.au = add nsw i32 %i.ae, %.04563              ; 2 uses
  br label %bb.j

bb.i:                                             ; preds = %.lr.ph
  store i32 15, ptr %5, align 4, !tbaa !38
  %.pre = add nsw i32 %i.ae, %.04563
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pre-phi = phi i32 [ %.pre, %bb.i ], [ %i.au, %bb.h ] ; 2 uses
  %.2 = phi i32 [ %i.af, %bb.i ], [ %.147, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %.064, %bb.i ], [ %i.au, %bb.h ] ; 2 uses
  %i.av = icmp slt i32 %.pre-phi, %i.p
  br i1 %i.av, label %.lr.ph, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %bb.j, %_ZL8pinIndexRll.exit
  %.046.lcssa = phi i32 [ 0, %_ZL8pinIndexRll.exit ], [ %.2, %bb.j ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.x, %_ZL8pinIndexRll.exit ], [ %.1, %bb.j ]
  %i.aw = sext i32 %.0.lcssa to i64
  %i.ax = tail call noundef signext i8 @_ZL18charIterTextAccessP5UTextla(ptr noundef %0, i64 noundef %i.aw, i8 noundef signext 1) ; 0 uses
  %i.ay = tail call i32 @u_terminateUChars_78(ptr noundef %3, i32 noundef %4, i32 noundef %.046.lcssa, ptr noundef nonnull %5) ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %._crit_edge, %bb.d
  %.048 = phi i32 [ %.046.lcssa, %._crit_edge ], [ 0, %bb.d ], [ 0, %bb.a ]
  ret i32 %.048
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZL17charIterTextCloseP5UText(ptr nofree noundef captures(none) %0) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(24) %i.b) #15
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !65
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr captures(none)) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { allocsize(0) }
attributes #15 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 char16_t", !11, i64 0}
!13 = !{!"p1 _ZTS10UTextFuncs", !11, i64 0}
!14 = !{!"_ZTS5UText", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !10, i64 16, !7, i64 24, !7, i64 28, !10, i64 32, !7, i64 40, !7, i64 44, !12, i64 48, !13, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !10, i64 112, !7, i64 120, !7, i64 124, !10, i64 128, !7, i64 136, !7, i64 140}
!15 = !{!14, !7, i64 40}
!16 = !{!14, !7, i64 44}
!17 = !{!14, !10, i64 16}
!18 = !{!14, !13, i64 56}
!19 = !{!"_ZTS10UTextFuncs", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104}
!20 = !{!19, !11, i64 32}
!21 = !{!14, !12, i64 48}
!22 = !{!"char16_t", !6, i64 0}
!23 = !{!22, !22, i64 0}
!24 = !{ptr @utext_next32_78}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!14, !10, i64 32}
!27 = !{ptr @utext_previous32_78}
!28 = !{!19, !11, i64 24}
!29 = !{!14, !7, i64 8}
!30 = !{!14, !7, i64 28}
!31 = !{!19, !11, i64 64}
!32 = !{!19, !11, i64 72}
!33 = !{ptr @utext_setNativeIndex_78}
!34 = !{!14, !7, i64 0}
!35 = !{!14, !11, i64 72}
!36 = !{ptr @utext_getNativeIndex_78}
!37 = !{!"_ZTS10UErrorCode", !6, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!7, !7, i64 0}
!40 = !{!11, !11, i64 0}
!41 = !{!14, !7, i64 4}
!42 = !{!14, !7, i64 24}
!43 = !{!14, !11, i64 64}
!44 = !{!19, !11, i64 80}
!45 = !{!14, !7, i64 120}
!46 = !{!14, !7, i64 124}
!47 = !{!14, !11, i64 80}
!48 = !{!14, !11, i64 88}
!49 = !{!"vtable pointer", !5, i64 0}
!50 = !{!49, !49, i64 0}
!51 = !{!6, !6, i64 0}
!52 = !{!14, !10, i64 112}
!53 = !{!"_ZTSN6icu_787UObjectE"}
!54 = !{!"_ZTSN6icu_7824ForwardCharacterIteratorE", !53, i64 0}
!55 = !{!"_ZTSN6icu_7817CharacterIteratorE", !54, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20}
!56 = !{!55, !7, i64 16}
!57 = !{!55, !7, i64 20}
!58 = !{ptr @utext_nativeLength_78}
!59 = !{!"_ZTS7UTF8Buf", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !6, i64 24, !6, i64 96, !6, i64 132, !7, i64 236}
!60 = !{!59, !7, i64 20}
!61 = !{!59, !7, i64 8}
!62 = !{i64 2149110597}
!63 = !{!"llvm.loop.isvectorized", i32 1}
!64 = !{!"llvm.loop.unroll.runtime.disable"}
!65 = !{!14, !11, i64 96}
!66 = distinct !{null}
!67 = distinct !{!67, !25}
!68 = distinct !{!68, !25}
!69 = !{ptr @utext_current32_78}
!70 = !{!19, !11, i64 40}
!71 = !{!19, !11, i64 48}
!72 = !{!19, !11, i64 56}
!73 = !{!19, !11, i64 16}
!74 = !{!10, !10, i64 0}
!75 = !{!12, !12, i64 0}
!76 = !{!13, !13, i64 0}
!77 = !{i64 0, i64 4, !39, i64 4, i64 4, !39, i64 8, i64 4, !39, i64 12, i64 4, !39, i64 16, i64 8, !74, i64 24, i64 4, !39, i64 28, i64 4, !39, i64 32, i64 8, !74, i64 40, i64 4, !39, i64 44, i64 4, !39, i64 48, i64 8, !75, i64 56, i64 8, !76, i64 64, i64 8, !40, i64 72, i64 8, !40, i64 80, i64 8, !40, i64 88, i64 8, !40, i64 96, i64 8, !40, i64 104, i64 8, !40, i64 112, i64 8, !74, i64 120, i64 4, !39, i64 124, i64 4, !39, i64 128, i64 8, !74, i64 136, i64 4, !39, i64 140, i64 4, !39}
!78 = distinct !{!78, !25}
!79 = distinct !{!79, !25}
!80 = distinct !{!80, !25}
!81 = distinct !{!81, !25}
!82 = !{!59, !7, i64 0}
!83 = !{!59, !7, i64 4}
!84 = !{!59, !7, i64 12}
!85 = !{!59, !7, i64 16}
!86 = distinct !{!86, !25}
!87 = distinct !{!87, !25}
!88 = !{!14, !7, i64 12}
!89 = distinct !{null}
!90 = !{!"_ZTSN6icu_7814ConstChar16PtrE", !12, i64 0}
!91 = !{!90, !12, i64 0}
!92 = !{i64 2149110452}
!93 = distinct !{!93, !25, !63, !64}
!94 = distinct !{!94, !25, !63, !64}
!95 = distinct !{!95, !25, !64, !63}
!96 = !{!"branch_weights", i32 4, i32 12}
!97 = distinct !{!97, !25}
!98 = distinct !{!98, !25}
!99 = distinct !{!99, !25, !63, !64}
!100 = distinct !{!100, !25}
!101 = distinct !{!101, !25, !63}
!102 = !{ptr @utext_openCharacterIterator_78}
!103 = distinct !{!103, !25}
!104 = !{!55, !7, i64 12}
end_hunk_1
