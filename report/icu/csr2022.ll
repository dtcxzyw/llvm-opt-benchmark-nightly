Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/csr2022?download=true
inline.NumInlined: 6
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZNK6icu_7819CharsetRecog_2022JP5matchEPNS_9InputTextEPNS_12CharsetMatchE:bb.a
  %i.r = load i8, ptr %gep.i.4, align 1, !tbaa !8
  %.not65.us.i.4 = icmp eq i8 %i.r, 36
  br i1 %.not65.us.i.4, label %.lr.ph.us.i.4.1, label %.lr.ph.us.i.5

.lr.ph.us.i.4.1:                                  ; preds = %.lr.ph.us.i.4
  %gep.i.4.1 = getelementptr i8, ptr %i.f, i64 2
  %i.s = load i8, ptr %gep.i.4.1, align 1, !tbaa !8
  %.not65.us.i.4.1 = icmp eq i8 %i.s, 66
  br i1 %.not65.us.i.4.1, label %.thread.us.i, label %.lr.ph.us.i.5

.lr.ph.us.i.5:                                    ; preds = %.lr.ph.us.i.4, %.lr.ph.us.i.4.1
  %gep.i.5 = getelementptr i8, ptr %i.f, i64 1
  %i.t = load i8, ptr %gep.i.5, align 1, !tbaa !8
  %.not65.us.i.5 = icmp eq i8 %i.t, 38
  br i1 %.not65.us.i.5, label %.lr.ph.us.i.5.1, label %.lr.ph.us.i.6

.lr.ph.us.i.5.1:                                  ; preds = %.lr.ph.us.i.5
  %gep.i.5.1 = getelementptr i8, ptr %i.f, i64 2
  %i.u = load i8, ptr %gep.i.5.1, align 1, !tbaa !8
  %.not65.us.i.5.1 = icmp eq i8 %i.u, 64
  br i1 %.not65.us.i.5.1, label %.thread.us.i, label %.lr.ph.us.i.6

.lr.ph.us.i.6:                                    ; preds = %.lr.ph.us.i.5, %.lr.ph.us.i.5.1
  %gep.i.6 = getelementptr i8, ptr %i.f, i64 1
  %i.v = load i8, ptr %gep.i.6, align 1, !tbaa !8
  %.not65.us.i.6 = icmp eq i8 %i.v, 40
  br i1 %.not65.us.i.6, label %.lr.ph.us.i.6.1, label %.lr.ph.us.i.7

.lr.ph.us.i.6.1:                                  ; preds = %.lr.ph.us.i.6
  %gep.i.6.1 = getelementptr i8, ptr %i.f, i64 2
  %i.w = load i8, ptr %gep.i.6.1, align 1, !tbaa !8
  %.not65.us.i.6.1 = icmp eq i8 %i.w, 66
  br i1 %.not65.us.i.6.1, label %.thread.us.i, label %.lr.ph.us.i.7

.lr.ph.us.i.7:                                    ; preds = %.lr.ph.us.i.6, %.lr.ph.us.i.6.1
  %gep.i.7 = getelementptr i8, ptr %i.f, i64 1
  %i.x = load i8, ptr %gep.i.7, align 1, !tbaa !8
  %.not65.us.i.7 = icmp eq i8 %i.x, 40
  br i1 %.not65.us.i.7, label %.lr.ph.us.i.7.1, label %.lr.ph.us.i.8

.lr.ph.us.i.7.1:                                  ; preds = %.lr.ph.us.i.7
  %gep.i.7.1 = getelementptr i8, ptr %i.f, i64 2
  %i.y = load i8, ptr %gep.i.7.1, align 1, !tbaa !8
  %.not65.us.i.7.1 = icmp eq i8 %i.y, 72
  br i1 %.not65.us.i.7.1, label %.thread.us.i, label %.lr.ph.us.i.8

.lr.ph.us.i.8:                                    ; preds = %.lr.ph.us.i.7, %.lr.ph.us.i.7.1
  %gep.i.8 = getelementptr i8, ptr %i.f, i64 1
  %i.z = load i8, ptr %gep.i.8, align 1, !tbaa !8
  %.not65.us.i.8 = icmp eq i8 %i.z, 40
  br i1 %.not65.us.i.8, label %.lr.ph.us.i.8.1, label %.lr.ph.us.i.9

.lr.ph.us.i.8.1:                                  ; preds = %.lr.ph.us.i.8
  %gep.i.8.1 = getelementptr i8, ptr %i.f, i64 2
  %i.aa = load i8, ptr %gep.i.8.1, align 1, !tbaa !8
  %.not65.us.i.8.1 = icmp eq i8 %i.aa, 73
  br i1 %.not65.us.i.8.1, label %.thread.us.i, label %.lr.ph.us.i.9

.lr.ph.us.i.9:                                    ; preds = %.lr.ph.us.i.8, %.lr.ph.us.i.8.1
  %gep.i.9 = getelementptr i8, ptr %i.f, i64 1
  %i.ab = load i8, ptr %gep.i.9, align 1, !tbaa !8
  %.not65.us.i.9 = icmp eq i8 %i.ab, 40
  br i1 %.not65.us.i.9, label %.lr.ph.us.i.9.1, label %.lr.ph.us.i.10

.lr.ph.us.i.9.1:                                  ; preds = %.lr.ph.us.i.9
  %gep.i.9.1 = getelementptr i8, ptr %i.f, i64 2
  %i.ac = load i8, ptr %gep.i.9.1, align 1, !tbaa !8
  %.not65.us.i.9.1 = icmp eq i8 %i.ac, 74
  br i1 %.not65.us.i.9.1, label %.thread.us.i, label %.lr.ph.us.i.10

.lr.ph.us.i.10:                                   ; preds = %.lr.ph.us.i.9, %.lr.ph.us.i.9.1
  %gep.i.10 = getelementptr i8, ptr %i.f, i64 1
  %i.ad = load i8, ptr %gep.i.10, align 1, !tbaa !8
  %.not65.us.i.10 = icmp eq i8 %i.ad, 46
  br i1 %.not65.us.i.10, label %.lr.ph.us.i.10.1, label %.lr.ph.us.i.11

.lr.ph.us.i.10.1:                                 ; preds = %.lr.ph.us.i.10
  %gep.i.10.1 = getelementptr i8, ptr %i.f, i64 2
  %i.ae = load i8, ptr %gep.i.10.1, align 1, !tbaa !8
  %.not65.us.i.10.1 = icmp eq i8 %i.ae, 65
  br i1 %.not65.us.i.10.1, label %.thread.us.i, label %.lr.ph.us.i.11

.lr.ph.us.i.11:                                   ; preds = %.lr.ph.us.i.10, %.lr.ph.us.i.10.1
  %gep.i.11 = getelementptr i8, ptr %i.f, i64 1
  %i.af = load i8, ptr %gep.i.11, align 1, !tbaa !8
  %.not65.us.i.11 = icmp eq i8 %i.af, 46
  br i1 %.not65.us.i.11, label %.lr.ph.us.i.11.1, label %.loopexit.us.i.11

.lr.ph.us.i.11.1:                                 ; preds = %.lr.ph.us.i.11
  %gep.i.11.1 = getelementptr i8, ptr %i.f, i64 2
  %i.ag = load i8, ptr %gep.i.11.1, align 1, !tbaa !8
  %.not65.us.i.11.1 = icmp eq i8 %i.ag, 70
  br i1 %.not65.us.i.11.1, label %.thread.us.i, label %.loopexit.us.i.11

.loopexit.us.i.11:                                ; preds = %.lr.ph.us.i.11, %.lr.ph.us.i.11.1, %.loopexit.us.i.1
  %i.ah = add nsw i32 %.04678.us.i, 1
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.us.i.11, %.lr.ph81.split.us.i
  %.147.us.i = phi i32 [ %i.ah, %.loopexit.us.i.11 ], [ %.04678.us.i, %.lr.ph81.split.us.i ]
  %i.ai = and i8 %i.g, -2
  %switch.us.i = icmp eq i8 %i.ai, 14
  %i.aj = zext i1 %switch.us.i to i32
  %spec.select.us.i = add nsw i32 %.04579.us.i, %i.aj
  br label %bb.c

.thread.us.i:                                     ; preds = %.lr.ph.us.i.11.1, %.lr.ph.us.i.10.1, %.lr.ph.us.i.9.1, %.lr.ph.us.i.8.1, %.lr.ph.us.i.7.1, %.lr.ph.us.i.6.1, %.lr.ph.us.i.5.1, %.lr.ph.us.i.4.1, %.lr.ph.us.i.3.1, %.lr.ph.us.i.2.1, %.lr.ph.us.i.1.2, %.lr.ph.us.i.299
  %i.ak = phi i32 [ 4, %.lr.ph.us.i.1.2 ], [ 3, %.lr.ph.us.i.2.1 ], [ 3, %.lr.ph.us.i.3.1 ], [ 3, %.lr.ph.us.i.4.1 ], [ 3, %.lr.ph.us.i.5.1 ], [ 3, %.lr.ph.us.i.6.1 ], [ 3, %.lr.ph.us.i.7.1 ], [ 3, %.lr.ph.us.i.8.1 ], [ 3, %.lr.ph.us.i.9.1 ], [ 3, %.lr.ph.us.i.10.1 ], [ 4, %.lr.ph.us.i.299 ], [ 3, %.lr.ph.us.i.11.1 ]
  %i.al = add nsw i32 %.04877.us.i, 1
  %i.am = add nsw i32 %.05475.us.i, -1
  %i.an = add i32 %i.am, %i.ak
  br label %bb.c

bb.c:                                             ; preds = %.thread.us.i, %bb.b
  %.458.us.i = phi i32 [ %i.an, %.thread.us.i ], [ %.05475.us.i, %bb.b ]
  %.4.us.i = phi i32 [ %i.al, %.thread.us.i ], [ %.04877.us.i, %bb.b ] ; 5 uses
  %.2.us.i = phi i32 [ %.04678.us.i, %.thread.us.i ], [ %.147.us.i, %bb.b ] ; 3 uses
  %.1.us.i = phi i32 [ %.04579.us.i, %.thread.us.i ], [ %spec.select.us.i, %bb.b ] ; 2 uses
  %i.ao = add nsw i32 %.458.us.i, 1               ; 2 uses
  %i.ap = icmp slt i32 %i.ao, %i.c
  br i1 %i.ap, label %.lr.ph81.split.us.i, label %._crit_edge82.i, !llvm.loop !11

.preheader70.us.i:                                ; preds = %.lr.ph81.split.us.i
  %i.aq = sub nsw i32 %i.c, %.05475.us.i          ; 2 uses
  %.not.us.i = icmp slt i32 %i.aq, 4
  br i1 %.not.us.i, label %.loopexit.us.i.1, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.preheader70.us.i
  %gep.i = getelementptr i8, ptr %i.f, i64 1
  %i.ar = load i8, ptr %gep.i, align 1, !tbaa !8
  %.not65.us.i = icmp eq i8 %i.ar, 36
  br i1 %.not65.us.i, label %.lr.ph.us.i.193, label %.lr.ph.us.i.1

._crit_edge82.i:                                  ; preds = %bb.c
  %i.as = icmp eq i32 %.4.us.i, 0
  br i1 %i.as, label %_ZNK6icu_7817CharsetRecog_202210match_2022EPKhiPA5_S1_i.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge82.i
  %reass.add.i = sub i32 %.4.us.i, %.2.us.i
  %reass.mul.i = mul i32 %reass.add.i, 100
  %i.at = add nsw i32 %.2.us.i, %.4.us.i
  %i.au = sdiv i32 %reass.mul.i, %i.at
  %i.av = add nsw i32 %.1.us.i, %.4.us.i          ; 2 uses
  %i.aw = icmp slt i32 %i.av, 5
  %i.ax = sub nsw i32 5, %i.av
  %.neg64.i = mul i32 %i.ax, -10
  %i.ay = select i1 %i.aw, i32 %.neg64.i, i32 0
  %.044.i = add i32 %i.au, %i.ay
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %.044.i, i32 0)
  br label %_ZNK6icu_7817CharsetRecog_202210match_2022EPKhiPA5_S1_i.exit

_ZNK6icu_7817CharsetRecog_202210match_2022EPKhiPA5_S1_i.exit: ; preds = %bb.a, %._crit_edge82.i, %bb.d
  %.059.i = phi i32 [ %spec.store.select.i, %bb.d ], [ 0, %._crit_edge82.i ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZN6icu_7812CharsetMatch3setEPNS_9InputTextEPKNS_17CharsetRecognizerEiPKcS7_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef %.059.i, ptr noundef null, ptr noundef null)
  %i.az = icmp ne i32 %.059.i, 0
  %i.ba = zext i1 %i.az to i8
  ret i8 %i.ba
}

declare void @_ZN6icu_7812CharsetMatch3setEPNS_9InputTextEPKNS_17CharsetRecognizerEiPKcS7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7819CharsetRecog_2022KRD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6icu_7817CharsetRecognizerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7819CharsetRecog_2022KRD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6icu_7819CharsetRecog_2022KRD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #11
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_7819CharsetRecog_2022KR7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str.1
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7819CharsetRecog_2022KR5matchEPNS_9InputTextEPNS_12CharsetMatchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph81.split.us.i, label %_ZNK6icu_7817CharsetRecog_202210match_2022EPKhiPA5_S1_i.exit

.lr.ph81.split.us.i:                              ; preds = %bb.a, %bb.c
  %.04579.us.i = phi i32 [ %.1.us.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.04678.us.i = phi i32 [ %.2.us.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.04877.us.i = phi i32 [ %.4.us.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.05475.us.i = phi i32 [ %i.n, %bb.c ], [ 0, %bb.a ] ; 4 uses
  %i.e = sext i32 %.05475.us.i to i64
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e ; 4 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8     ; 2 uses
  %i.h = icmp eq i8 %i.g, 27
  br i1 %i.h, label %.preheader70.us.i.a, label %bb.b

.lr.ph.us.i.1:                                    ; preds = %.lr.ph.us.i.preheader
  %gep.i.1 = getelementptr i8, ptr %i.f, i64 2
  %i.i = load i8, ptr %gep.i.1, align 1, !tbaa !8
  %.not65.us.i.1 = icmp eq i8 %i.i, 41
  br i1 %.not65.us.i.1, label %.lr.ph.us.i.2, label %.loopexit.us.i

.lr.ph.us.i.2:                                    ; preds = %.lr.ph.us.i.1
  %gep.i.2 = getelementptr i8, ptr %i.f, i64 3
  %i.j = load i8, ptr %gep.i.2, align 1, !tbaa !8
  %.not65.us.i.2 = icmp eq i8 %i.j, 67
  br i1 %.not65.us.i.2, label %.thread.us.i, label %.loopexit.us.i

.thread.us.i:                                     ; preds = %.lr.ph.us.i.2
  %3 = add nsw i32 %.04877.us.i, 1
  %4 = add i32 %.05475.us.i, 3
  br label %bb.c

.loopexit.us.i:                                   ; preds = %.lr.ph.us.i.preheader, %.lr.ph.us.i.1, %.lr.ph.us.i.2, %.preheader70.us.i.a
  %i.k = add nsw i32 %.04678.us.i, 1
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.us.i, %.lr.ph81.split.us.i
  %.147.us.i = phi i32 [ %i.k, %.loopexit.us.i ], [ %.04678.us.i, %.lr.ph81.split.us.i ]
  %i.l = and i8 %i.g, -2
  %switch.us.i = icmp eq i8 %i.l, 14
  %i.m = zext i1 %switch.us.i to i32
  %spec.select.us.i = add nsw i32 %.04579.us.i, %i.m
  br label %bb.c

bb.c:                                             ; preds = %.thread.us.i, %bb.b
  %.458.us.i = phi i32 [ %4, %.thread.us.i ], [ %.05475.us.i, %bb.b ]
  %.4.us.i = phi i32 [ %3, %.thread.us.i ], [ %.04877.us.i, %bb.b ] ; 5 uses
  %.2.us.i = phi i32 [ %.04678.us.i, %.thread.us.i ], [ %.147.us.i, %bb.b ] ; 3 uses
  %.1.us.i = phi i32 [ %.04579.us.i, %.thread.us.i ], [ %spec.select.us.i, %bb.b ] ; 2 uses
  %i.n = add nsw i32 %.458.us.i, 1                ; 2 uses
  %i.o = icmp slt i32 %i.n, %i.c
  br i1 %i.o, label %.lr.ph81.split.us.i, label %._crit_edge82.i, !llvm.loop !11

.preheader70.us.i.a:                              ; preds = %.lr.ph81.split.us.i
  %5 = sub nsw i32 %i.c, %.05475.us.i
  %.not.us.i = icmp slt i32 %5, 4
  br i1 %.not.us.i, label %.loopexit.us.i, label %.lr.ph.us.i.preheader

.lr.ph.us.i.preheader:                            ; preds = %.preheader70.us.i.a
  %gep.i = getelementptr i8, ptr %i.f, i64 1
  %6 = load i8, ptr %gep.i, align 1, !tbaa !8
  %.not65.us.i = icmp eq i8 %6, 36
  br i1 %.not65.us.i, label %.lr.ph.us.i.1, label %.loopexit.us.i

._crit_edge82.i:                                  ; preds = %bb.c
  %i.p = icmp eq i32 %.4.us.i, 0
  br i1 %i.p, label %_ZNK6icu_7817CharsetRecog_202210match_2022EPKhiPA5_S1_i.exit, label %bb.d

bb.d:                                             ; preds = %._crit_edge82.i
  %reass.add.i = sub i32 %.4.us.i, %.2.us.i
  %reass.mul.i = mul i32 %reass.add.i, 100
  %i.q = add nsw i32 %.2.us.i, %.4.us.i
  %i.r = sdiv i32 %reass.mul.i, %i.q
  %i.s = add nsw i32 %.1.us.i, %.4.us.i           ; 2 uses
  %i.t = icmp slt i32 %i.s, 5
  %i.u = sub nsw i32 5, %i.s
  %.neg64.i = mul i32 %i.u, -10
  %i.v = select i1 %i.t, i32 %.neg64.i, i32 0
  %.044.i = add i32 %i.r, %i.v
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %.044.i, i32 0)
  br label %_ZNK6icu_7817CharsetRecog_202210match_2022EPKhiPA5_S1_i.exit

_ZNK6icu_7817CharsetRecog_202210match_2022EPKhiPA5_S1_i.exit: ; preds = %bb.a, %._crit_edge82.i, %bb.d
  %.059.i = phi i32 [ %spec.store.select.i, %bb.d ], [ 0, %._crit_edge82.i ], [ 0, %bb.a ] ; 2 uses
  tail call void @_ZN6icu_7812CharsetMatch3setEPNS_9InputTextEPKNS_17CharsetRecognizerEiPKcS7_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull %1, ptr noundef nonnull %0, i32 noundef %.059.i, ptr noundef null, ptr noundef null)
  %i.w = icmp ne i32 %.059.i, 0
  %i.x = zext i1 %i.w to i8
  ret i8 %i.x
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7819CharsetRecog_2022CND2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6icu_7817CharsetRecognizerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6icu_7819CharsetRecog_2022CND0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN6icu_7819CharsetRecog_2022CND1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #11
  tail call void @_ZN6icu_787UMemorydlEPv(ptr noundef nonnull %0) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK6icu_7819CharsetRecog_2022CN7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str.2
}

; Function Attrs: mustprogress uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7819CharsetRecog_2022CN5matchEPNS_9InputTextEPNS_12CharsetMatchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !12
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph81.split.us.i, label %_ZNK6icu_7817CharsetRecog_202210match_2022EPKhiPA5_S1_i.exit

.lr.ph81.split.us.i:                              ; preds = %bb.a, %bb.c
  %.04579.us.i = phi i32 [ %.1.us.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.04678.us.i = phi i32 [ %.2.us.i, %bb.c ], [ 0, %bb.a ] ; 3 uses
  %.04877.us.i = phi i32 [ %.4.us.i, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.05475.us.i = phi i32 [ %i.ar, %bb.c ], [ 0, %bb.a ] ; 4 uses
  %i.e = sext i32 %.05475.us.i to i64
  %i.f = getelementptr inbounds i8, ptr %i.a, i64 %i.e ; 30 uses
  %i.g = load i8, ptr %i.f, align 1, !tbaa !8     ; 2 uses
  %i.h = icmp eq i8 %i.g, 27
  br i1 %i.h, label %.preheader70.us.i, label %bb.b

.lr.ph.us.i.184:                                  ; preds = %.lr.ph.us.i.preheader
  %gep.i.182 = getelementptr i8, ptr %i.f, i64 2
  %i.i = load i8, ptr %gep.i.182, align 1, !tbaa !8
  %.not65.us.i.183 = icmp eq i8 %i.i, 41
  br i1 %.not65.us.i.183, label %.lr.ph.us.i.290, label %.lr.ph.us.i.1

.lr.ph.us.i.290:                                  ; preds = %.lr.ph.us.i.184
  %gep.i.288 = getelementptr i8, ptr %i.f, i64 3
  %i.j = load i8, ptr %gep.i.288, align 1, !tbaa !8
  %.not65.us.i.289 = icmp eq i8 %i.j, 65
  br i1 %.not65.us.i.289, label %.thread.us.i, label %.lr.ph.us.i.1

.lr.ph.us.i.1:                                    ; preds = %.lr.ph.us.i.preheader, %.lr.ph.us.i.184, %.lr.ph.us.i.290
  %gep.i.1 = getelementptr i8, ptr %i.f, i64 1
  %i.k = load i8, ptr %gep.i.1, align 1, !tbaa !8
  %.not65.us.i.1 = icmp eq i8 %i.k, 36
  br i1 %.not65.us.i.1, label %.lr.ph.us.i.1.1, label %.lr.ph.us.i.2

.lr.ph.us.i.1.1:                                  ; preds = %.lr.ph.us.i.1
  %gep.i.1.1 = getelementptr i8, ptr %i.f, i64 2
  %i.l = load i8, ptr %gep.i.1.1, align 1, !tbaa !8
  %.not65.us.i.1.1 = icmp eq i8 %i.l, 41
  br i1 %.not65.us.i.1.1, label %.lr.ph.us.i.1.2, label %.lr.ph.us.i.2

.lr.ph.us.i.1.2:                                  ; preds = %.lr.ph.us.i.1.1
  %gep.i.1.2 = getelementptr i8, ptr %i.f, i64 3
  %i.m = load i8, ptr %gep.i.1.2, align 1, !tbaa !8
  %.not65.us.i.1.2 = icmp eq i8 %i.m, 71
  br i1 %.not65.us.i.1.2, label %.thread.us.i, label %.lr.ph.us.i.2

.lr.ph.us.i.2:                                    ; preds = %.lr.ph.us.i.1, %.lr.ph.us.i.1.1, %.lr.ph.us.i.1.2
  %gep.i.2 = getelementptr i8, ptr %i.f, i64 1
  %i.n = load i8, ptr %gep.i.2, align 1, !tbaa !8
  %.not65.us.i.2 = icmp eq i8 %i.n, 36
  br i1 %.not65.us.i.2, label %.lr.ph.us.i.2.1, label %.lr.ph.us.i.3

.lr.ph.us.i.2.1:                                  ; preds = %.lr.ph.us.i.2
  %gep.i.2.1 = getelementptr i8, ptr %i.f, i64 2
  %i.o = load i8, ptr %gep.i.2.1, align 1, !tbaa !8
  %.not65.us.i.2.1 = icmp eq i8 %i.o, 42
  br i1 %.not65.us.i.2.1, label %.lr.ph.us.i.2.2, label %.lr.ph.us.i.3

.lr.ph.us.i.2.2:                                  ; preds = %.lr.ph.us.i.2.1
  %gep.i.2.2 = getelementptr i8, ptr %i.f, i64 3
  %i.p = load i8, ptr %gep.i.2.2, align 1, !tbaa !8
  %.not65.us.i.2.2 = icmp eq i8 %i.p, 72
  br i1 %.not65.us.i.2.2, label %.thread.us.i, label %.lr.ph.us.i.3

.lr.ph.us.i.3:                                    ; preds = %.lr.ph.us.i.2, %.lr.ph.us.i.2.1, %.lr.ph.us.i.2.2
  %gep.i.3 = getelementptr i8, ptr %i.f, i64 1
  %i.q = load i8, ptr %gep.i.3, align 1, !tbaa !8
  %.not65.us.i.3 = icmp eq i8 %i.q, 36
  br i1 %.not65.us.i.3, label %.lr.ph.us.i.3.1, label %.lr.ph.us.i.4

.lr.ph.us.i.3.1:                                  ; preds = %.lr.ph.us.i.3
  %gep.i.3.1 = getelementptr i8, ptr %i.f, i64 2
  %i.r = load i8, ptr %gep.i.3.1, align 1, !tbaa !8
  %.not65.us.i.3.1 = icmp eq i8 %i.r, 41
  br i1 %.not65.us.i.3.1, label %.lr.ph.us.i.3.2, label %.lr.ph.us.i.4

.lr.ph.us.i.3.2:                                  ; preds = %.lr.ph.us.i.3.1
  %gep.i.3.2 = getelementptr i8, ptr %i.f, i64 3
  %i.s = load i8, ptr %gep.i.3.2, align 1, !tbaa !8
  %.not65.us.i.3.2 = icmp eq i8 %i.s, 69
  br i1 %.not65.us.i.3.2, label %.thread.us.i, label %.lr.ph.us.i.4

.lr.ph.us.i.4:                                    ; preds = %.lr.ph.us.i.3, %.lr.ph.us.i.3.1, %.lr.ph.us.i.3.2
  %gep.i.4 = getelementptr i8, ptr %i.f, i64 1
  %i.t = load i8, ptr %gep.i.4, align 1, !tbaa !8
  %.not65.us.i.4 = icmp eq i8 %i.t, 36
  br i1 %.not65.us.i.4, label %.lr.ph.us.i.4.1, label %.lr.ph.us.i.5

.lr.ph.us.i.4.1:                                  ; preds = %.lr.ph.us.i.4
  %gep.i.4.1 = getelementptr i8, ptr %i.f, i64 2
  %i.u = load i8, ptr %gep.i.4.1, align 1, !tbaa !8
  %.not65.us.i.4.1 = icmp eq i8 %i.u, 43
  br i1 %.not65.us.i.4.1, label %.lr.ph.us.i.4.2, label %.lr.ph.us.i.5

.lr.ph.us.i.4.2:                                  ; preds = %.lr.ph.us.i.4.1
  %gep.i.4.2 = getelementptr i8, ptr %i.f, i64 3
  %i.v = load i8, ptr %gep.i.4.2, align 1, !tbaa !8
  %.not65.us.i.4.2 = icmp eq i8 %i.v, 73
  br i1 %.not65.us.i.4.2, label %.thread.us.i, label %.lr.ph.us.i.5

.lr.ph.us.i.5:                                    ; preds = %.lr.ph.us.i.4, %.lr.ph.us.i.4.1, %.lr.ph.us.i.4.2
  %gep.i.5 = getelementptr i8, ptr %i.f, i64 1
  %i.w = load i8, ptr %gep.i.5, align 1, !tbaa !8
  %.not65.us.i.5 = icmp eq i8 %i.w, 36
  br i1 %.not65.us.i.5, label %.lr.ph.us.i.5.1, label %.lr.ph.us.i.6

.lr.ph.us.i.5.1:                                  ; preds = %.lr.ph.us.i.5
  %gep.i.5.1 = getelementptr i8, ptr %i.f, i64 2
  %i.x = load i8, ptr %gep.i.5.1, align 1, !tbaa !8
  %.not65.us.i.5.1 = icmp eq i8 %i.x, 43
  br i1 %.not65.us.i.5.1, label %.lr.ph.us.i.5.2, label %.lr.ph.us.i.6

.lr.ph.us.i.5.2:                                  ; preds = %.lr.ph.us.i.5.1
  %gep.i.5.2 = getelementptr i8, ptr %i.f, i64 3
  %i.y = load i8, ptr %gep.i.5.2, align 1, !tbaa !8
  %.not65.us.i.5.2 = icmp eq i8 %i.y, 74
  br i1 %.not65.us.i.5.2, label %.thread.us.i, label %.lr.ph.us.i.6

.lr.ph.us.i.6:                                    ; preds = %.lr.ph.us.i.5, %.lr.ph.us.i.5.1, %.lr.ph.us.i.5.2
  %gep.i.6 = getelementptr i8, ptr %i.f, i64 1
  %i.z = load i8, ptr %gep.i.6, align 1, !tbaa !8
  %.not65.us.i.6 = icmp eq i8 %i.z, 36
  br i1 %.not65.us.i.6, label %.lr.ph.us.i.6.1, label %.lr.ph.us.i.7

.lr.ph.us.i.6.1:                                  ; preds = %.lr.ph.us.i.6
  %gep.i.6.1 = getelementptr i8, ptr %i.f, i64 2
  %i.aa = load i8, ptr %gep.i.6.1, align 1, !tbaa !8
  %.not65.us.i.6.1 = icmp eq i8 %i.aa, 43
  br i1 %.not65.us.i.6.1, label %.lr.ph.us.i.6.2, label %.lr.ph.us.i.7

.lr.ph.us.i.6.2:                                  ; preds = %.lr.ph.us.i.6.1
  %gep.i.6.2 = getelementptr i8, ptr %i.f, i64 3
  %i.ab = load i8, ptr %gep.i.6.2, align 1, !tbaa !8
  %.not65.us.i.6.2 = icmp eq i8 %i.ab, 75
  br i1 %.not65.us.i.6.2, label %.thread.us.i, label %.lr.ph.us.i.7

.lr.ph.us.i.7:                                    ; preds = %.lr.ph.us.i.6, %.lr.ph.us.i.6.1, %.lr.ph.us.i.6.2
  %gep.i.7 = getelementptr i8, ptr %i.f, i64 1
  %i.ac = load i8, ptr %gep.i.7, align 1, !tbaa !8
  %.not65.us.i.7 = icmp eq i8 %i.ac, 36
  br i1 %.not65.us.i.7, label %.lr.ph.us.i.7.1, label %.lr.ph.us.i.8

.lr.ph.us.i.7.1:                                  ; preds = %.lr.ph.us.i.7
  %gep.i.7.1 = getelementptr i8, ptr %i.f, i64 2
  %i.ad = load i8, ptr %gep.i.7.1, align 1, !tbaa !8
  %.not65.us.i.7.1 = icmp eq i8 %i.ad, 43
  br i1 %.not65.us.i.7.1, label %.lr.ph.us.i.7.2, label %.lr.ph.us.i.8

.lr.ph.us.i.7.2:                                  ; preds = %.lr.ph.us.i.7.1
end_hunk_0
