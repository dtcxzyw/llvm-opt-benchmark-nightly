Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/number_compact?download=true
inline.NumInlined: 100
inline.NumDeleted: 50
begin_hunk_0_@_ZN6icu_788internal16LocalOpenPointerI15UResourceBundleXadL_Z13ures_close_78EEED2Ev:bb.a
; Function Attrs: nounwind
declare void @_ZN6icu_7812ResourceSinkD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -128, 128) i32 @_ZNK6icu_786number4impl11CompactData13getMultiplierEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1375) %0, i32 noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1373
  %i.c = load i8, ptr %i.b, align 1, !tbaa !29
  %i.d = sext i8 %i.c to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1352
  %i.f = sext i32 %spec.select to i64
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !28
  %i.i = sext i8 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.04 = phi i32 [ %i.i, %bb.b ], [ 0, %bb.a ]
  ret i32 %.04
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6icu_786number4impl11CompactData10getPatternEiPKNS_11PluralRulesERKNS1_15DecimalQuantityE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1375) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(66) %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::UnicodeString", align 8 ; 7 uses
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1373
  %i.c = load i8, ptr %i.b, align 1, !tbaa !29
  %i.d = sext i8 %i.c to i32
  %spec.select = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.d) ; 2 uses
  %i.e = load ptr, ptr %3, align 8, !tbaa !11
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef zeroext i1 %i.g(ptr noundef nonnull align 8 dereferenceable(66) %3)
  br i1 %i.h, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @_ZNK6icu_786number4impl15DecimalQuantity6toLongEb(ptr noundef nonnull align 8 dereferenceable(66) %3, i1 noundef zeroext true)
  switch i64 %i.i, label %.thread [
    i64 0, label %bb.e
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.sink32 = phi i64 [ 64, %bb.d ], [ 56, %bb.c ]
  %i.j = shl nsw i32 %spec.select, 3
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr [8 x i8], ptr %0, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 %.sink32
  %.022 = load ptr, ptr %i.m, align 8, !tbaa !31  ; 2 uses
  %.not = icmp eq ptr %.022, null
  br i1 %.not, label %.thread, label %bb.k

.thread:                                          ; preds = %bb.c, %bb.e, %bb.b
  %i.n = icmp eq ptr %2, null
  br i1 %i.n, label %_ZN6icu_786number4impl5utils17getStandardPluralEPKNS_11PluralRulesERKNS_13IFixedDecimalE.exit, label %bb.f

bb.f:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @_ZNK6icu_7811PluralRules6selectERKNS_13IFixedDecimalE(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::UnicodeString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.o = invoke noundef i32 @_ZN6icu_7814StandardPlural25indexOrNegativeFromStringERKNS_13UnicodeStringE(ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %bb.g unwind label %bb.h       ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.p = icmp sgt i32 %i.o, -1
  %i.q = select i1 %i.p, i32 %i.o, i32 5
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %_ZN6icu_786number4impl5utils17getStandardPluralEPKNS_11PluralRulesERKNS_13IFixedDecimalE.exit

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6icu_7813UnicodeStringD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  resume { ptr, i32 } %i.r

_ZN6icu_786number4impl5utils17getStandardPluralEPKNS_11PluralRulesERKNS_13IFixedDecimalE.exit: ; preds = %.thread, %bb.g
  %.0.i = phi i32 [ %i.q, %bb.g ], [ 5, %.thread ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = shl nsw i32 %spec.select, 3              ; 2 uses
  %i.u = add nsw i32 %.0.i, %i.t
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !31   ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  %i.z = icmp ne i32 %.0.i, 5
  %or.cond = and i1 %i.z, %i.y
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN6icu_786number4impl5utils17getStandardPluralEPKNS_11PluralRulesERKNS_13IFixedDecimalE.exit
  %i.aa = sext i32 %i.t to i64
  %i.ab = getelementptr [8 x i8], ptr %i.s, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZN6icu_786number4impl5utils17getStandardPluralEPKNS_11PluralRulesERKNS_13IFixedDecimalE.exit
  %.1 = phi ptr [ %i.ad, %bb.i ], [ %i.x, %_ZN6icu_786number4impl5utils17getStandardPluralEPKNS_11PluralRulesERKNS_13IFixedDecimalE.exit ] ; 2 uses
  %i.ae = icmp eq ptr %.1, @.str.7
  %spec.store.select = select i1 %i.ae, ptr null, ptr %.1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.e, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ %spec.store.select, %bb.j ], [ %.022, %bb.e ]
  ret ptr %.2
}

declare noundef i64 @_ZNK6icu_786number4impl15DecimalQuantity6toLongEb(ptr noundef nonnull align 8 dereferenceable(66), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK6icu_786number4impl11CompactData17getUniquePatternsERNS_7UVectorER10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1375) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  ret void

bb.c:                                             ; preds = %bb.a, %.loopexit
  %.019.idx23 = phi i64 [ 8, %bb.a ], [ %.019.add, %.loopexit ] ; 2 uses
  %.019.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.idx23
  %i.b = load ptr, ptr %.019.ptr, align 8, !tbaa !31 ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = icmp eq ptr %i.b, @.str.7
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph
  %i.g = icmp sgt i32 %.0.in25, 1
  br i1 %i.g, label %.lr.ph, label %._crit_edge, !llvm.loop !0

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.0.in25 = phi i32 [ %.0, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %.0 = add nsw i32 %.0.in25, -1                  ; 2 uses
  %i.h = tail call noundef ptr @_ZNK6icu_787UVector9elementAtEi(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %.0)
  %i.i = tail call i32 @u_strcmp_78(ptr noundef nonnull %i.b, ptr noundef %i.h)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.loopexit, label %bb.e, !llvm.loop !0

._crit_edge:                                      ; preds = %bb.e, %bb.d
  tail call void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.b, ptr noundef nonnull align 4 dereferenceable(4) %2)
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %._crit_edge, %bb.c
  %.019.add = add nuw nsw i64 %.019.idx23, 8      ; 2 uses
  %.not = icmp eq i64 %.019.add, 1352
  br i1 %.not, label %bb.b, label %bb.c
}

declare i32 @u_strcmp_78(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN6icu_787UVector10addElementEPvR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl11CompactData15CompactDataSink3putEPKcRNS_13ResourceValueEaR10UErrorCode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i8 signext %3, ptr noundef nonnull align 4 dereferenceable(4) %4) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %5 = alloca %"class.icu_78::ResourceTable", align 8 ; 5 uses
  %6 = alloca %"class.icu_78::ResourceTable", align 8 ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.c = load ptr, ptr %2, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.f = load i32, ptr %4, align 4, !tbaa !21
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %.preheader81, label %.loopexit

.preheader81:                                     ; preds = %bb.a
  %i.h = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %5, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not5189 = icmp eq i8 %i.h, 0
  br i1 %.not5189, label %.loopexit, label %.lr.ph91

.lr.ph91:                                         ; preds = %.preheader81
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph91, %.thread76
  %.04290 = phi i32 [ 0, %.lr.ph91 ], [ %i.br, %.thread76 ]
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.k = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.j) #16
  %i.l = trunc i64 %i.k to i8
  %i.m = add i8 %i.l, -1                          ; 5 uses
  %i.n = sext i8 %i.m to i32                      ; 2 uses
  %i.o = icmp sgt i8 %i.m, 19
  br i1 %i.o, label %.thread76, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !81, !nonnull !82, !align !83
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 1352
  %i.r = sext i8 %i.m to i64                      ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !28    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %i.u = load ptr, ptr %2, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr dead_on_unwind nonnull writable sret(%"class.icu_78::ResourceTable") align 8 %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.x = load i32, ptr %4, align 4, !tbaa !21
  %i.y = icmp slt i32 %i.x, 1
  br i1 %i.y, label %.preheader, label %.thread79

.preheader:                                       ; preds = %bb.c
  %i.z = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %6, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not5386 = icmp eq i8 %i.z, 0
  br i1 %.not5386, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.aa = shl nsw i32 %i.n, 3
  %7 = xor i32 %i.n, -1                           ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %.thread64
  %.04088 = phi i32 [ 0, %.lr.ph ], [ %i.bf, %.thread64 ]
  %.04187 = phi i8 [ %i.t, %.lr.ph ], [ %.467, %.thread64 ] ; 3 uses
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !78
  %i.ac = call noundef i32 @_ZN6icu_7814StandardPlural15indexFromStringEPKcR10UErrorCode(ptr noundef %i.ab, ptr noundef nonnull align 4 dereferenceable(4) %4)
  %i.ad = load i32, ptr %4, align 4, !tbaa !21
  %i.ae = icmp slt i32 %i.ad, 1
  br i1 %i.ae, label %bb.e, label %.thread79

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %i.i, align 8, !tbaa !81, !nonnull !82, !align !83
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = add nsw i32 %i.ac, %i.aa
  %i.ai = sext i32 %i.ah to i64                   ; 2 uses
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !31
  %.not55 = icmp eq ptr %i.ak, null
  br i1 %.not55, label %bb.f, label %.thread64

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.al = load ptr, ptr %2, align 8, !tbaa !11
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = call noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %4) ; 2 uses
  %i.ap = load i32, ptr %4, align 4, !tbaa !21
  %i.aq = icmp slt i32 %i.ap, 1
  br i1 %i.aq, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  %i.ar = call i32 @u_strcmp_78(ptr noundef %i.ao, ptr noundef nonnull @.str.1)
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.b, align 4, !tbaa !84
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0 = phi ptr [ @.str.7, %bb.h ], [ %i.ao, %bb.g ] ; 2 uses
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !81, !nonnull !82, !align !83
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds [8 x i8], ptr %i.au, i64 %i.ai
  store ptr %.0, ptr %i.av, align 8, !tbaa !31
  %i.aw = icmp eq i8 %.04187, 0
  br i1 %i.aw, label %bb.j, label %.thread68

bb.j:                                             ; preds = %bb.i
  %i.ax = load i32, ptr %i.b, align 4, !tbaa !84  ; 2 uses
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %.lr.ph.preheader.i, label %.thread68

.lr.ph.preheader.i:                               ; preds = %bb.j
  %wide.trip.count.i = zext nneg i32 %i.ax to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.m ] ; 2 uses
  %.078.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.m ] ; 4 uses
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %.0, i64 %indvars.iv.i
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !38
  %i.bb = icmp eq i16 %i.ba, 48
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i
  %i.bc = add i32 %.078.i, 1
  br label %bb.m

bb.l:                                             ; preds = %.lr.ph.i
  %i.bd = icmp sgt i32 %.078.i, 0
  br i1 %i.bd, label %_ZN12_GLOBAL__N_110countZerosEPKDsi.exit.thread, label %bb.m

_ZN12_GLOBAL__N_110countZerosEPKDsi.exit.thread:  ; preds = %bb.l
  %8 = add i32 %.078.i, %7
  %9 = trunc i32 %8 to i8
  br label %.thread68

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.i = phi i32 [ %i.bc, %bb.k ], [ %.078.i, %bb.l ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_110countZerosEPKDsi.exit, label %.lr.ph.i, !llvm.loop !75

_ZN12_GLOBAL__N_110countZerosEPKDsi.exit:         ; preds = %bb.m
  %i.be = icmp sgt i32 %.1.i, 0
  %10 = add i32 %.1.i, %7
  %11 = trunc i32 %10 to i8
  %spec.select = select i1 %i.be, i8 %11, i8 0
  br label %.thread68

.thread68:                                        ; preds = %_ZN12_GLOBAL__N_110countZerosEPKDsi.exit, %bb.i, %_ZN12_GLOBAL__N_110countZerosEPKDsi.exit.thread, %bb.j
  %.3.ph = phi i8 [ 0, %bb.j ], [ %9, %_ZN12_GLOBAL__N_110countZerosEPKDsi.exit.thread ], [ %spec.select, %_ZN12_GLOBAL__N_110countZerosEPKDsi.exit ], [ %.04187, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.thread64

bb.n:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %.thread79

.thread64:                                        ; preds = %bb.e, %.thread68
  %.467 = phi i8 [ %.3.ph, %.thread68 ], [ %.04187, %bb.e ] ; 2 uses
  %i.bf = add nuw nsw i32 %.04088, 1              ; 2 uses
  %i.bg = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %6, i32 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not53 = icmp eq i8 %i.bg, 0
  br i1 %.not53, label %._crit_edge, label %bb.d, !llvm.loop !76

._crit_edge:                                      ; preds = %.thread64, %.preheader
  %.041.lcssa = phi i8 [ %i.t, %.preheader ], [ %.467, %.thread64 ]
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !81, !nonnull !82, !align !83
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 1352
  %i.bj = getelementptr inbounds i8, ptr %i.bi, i64 %i.r ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !28
  %i.bl = icmp eq i8 %i.bk, 0
  br i1 %i.bl, label %bb.o, label %bb.r

bb.o:                                             ; preds = %._crit_edge
  store i8 %.041.lcssa, ptr %i.bj, align 1, !tbaa !28
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !81, !nonnull !82, !align !83 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 1373 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !29
  %i.bp = icmp sgt i8 %i.m, %i.bo
  br i1 %i.bp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i8 %i.m, ptr %i.bn, align 1, !tbaa !29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 1374
  store i8 0, ptr %i.bq, align 2, !tbaa !14
  br label %bb.r

.thread79:                                        ; preds = %bb.c, %bb.d, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.loopexit

bb.r:                                             ; preds = %._crit_edge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %.thread76

.thread76:                                        ; preds = %bb.b, %bb.r
  %i.br = add nuw nsw i32 %.04290, 1              ; 2 uses
  %i.bs = call noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37) %5, i32 noundef %i.br, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %.not51 = icmp eq i8 %i.bs, 0
  br i1 %.not51, label %.loopexit, label %bb.b, !llvm.loop !77

.loopexit:                                        ; preds = %.thread76, %.preheader81, %.thread79, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void
}

declare noundef signext i8 @_ZNK6icu_7813ResourceTable14getKeyAndValueEiRPKcRNS_13ResourceValueE(ptr noundef nonnull align 8 dereferenceable(37), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6icu_786number4impl14CompactHandlerC2E19UNumberCompactStyleRKNS_6LocaleEPKcNS1_11CompactTypeEPKNS_11PluralRulesEPNS1_22MutablePatternModifierEbPKNS1_19MicroPropsGeneratorER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(2065) initializes((0, 24)) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, ptr noundef %8, ptr noundef nonnull align 4 dereferenceable(4) %9) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %7 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6icu_786number4impl14CompactHandlerE, i64 16), ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %5, ptr %i.b, align 8, !tbaa !61
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %8, ptr %i.c, align 8, !tbaa !62
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.e, ptr %i.d, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 12, ptr %i.f, align 8, !tbaa !64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i8 0, ptr %i.g, align 4, !tbaa !65
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 0, ptr %i.h, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  invoke void @_ZN6icu_786number4impl11CompactDataC1Ev(ptr noundef nonnull align 8 dereferenceable(1375) %i.i)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1616 ; 2 uses
  invoke void @_ZN6icu_786number4impl17ParsedPatternInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(433) %i.j)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2064
  store i8 %i.a, ptr %i.k, align 8, !tbaa !67
  invoke void @_ZN6icu_786number4impl11CompactData8populateERKNS_6LocaleEPKc19UNumberCompactStyleNS1_11CompactTypeER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(1375) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %3, i32 noundef %1, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  br i1 %7, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN6icu_786number4impl14CompactHandler22precomputeAllModifiersERNS1_22MutablePatternModifierER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(2065) %0, ptr noundef nonnull align 8 dereferenceable(392) %6, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %bb.j unwind label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.g:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.e, %bb.c
  %i.n = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6icu_786number4impl17ParsedPatternInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(433) dereferenceable(433) %i.j) #15
  br label %bb.k

bb.i:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 2056
  store ptr %6, ptr %i.o, align 8, !tbaa !68
  br label %bb.j

bb.j:                                             ; preds = %bb.e, %bb.i
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.m, %bb.g ]
  tail call void @_ZN6icu_786number4impl18MultiplierProducerD2Ev(ptr noundef nonnull align 8 dead_on_return(1375) dereferenceable(1375) %i.i) #15
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.k ], [ %i.l, %bb.f ]
  tail call void @_ZN6icu_7815MaybeStackArrayINS_6number4impl14CompactModInfoELi12EED2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.d) #15
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6icu_786number4impl17ParsedPatternInfoC2Ev(ptr noundef nonnull align 8 dereferenceable(433) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN6icu_786number4impl17ParsedPatternInfoE, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN6icu_7813UnicodeStringE, i64 16), ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i16 2, ptr %i.b, align 8, !tbaa !28
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 281474976645120, ptr %i.c, align 8, !tbaa !85
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i32 0, ptr %i.e, align 4, !tbaa !86
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.f, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.g, align 4, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.d, i8 0, i64 33, i1 false)
  invoke void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.h)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i8 0, ptr %i.i, align 8, !tbaa !89
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.j, i8 0, i64 10, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 281474976645120, ptr %i.l, align 8, !tbaa !85
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 0, ptr %i.n, align 4, !tbaa !86
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i8 0, ptr %i.o, align 8, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 292
  store i32 0, ptr %i.p, align 4, !tbaa !88
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 296
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(33) %i.m, i8 0, i64 33, i1 false)
  invoke void @_ZN6icu_786number4impl15DecimalQuantityC1Ev(ptr noundef nonnull align 8 dereferenceable(66) %i.q)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 368
  store i8 0, ptr %i.r, align 8, !tbaa !89
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(10) %i.s, i8 0, i64 10, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 408
  store ptr %i.a, ptr %i.u, align 8, !tbaa !90
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 416
  store i32 0, ptr %i.v, align 8, !tbaa !91
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 424
  store ptr null, ptr %i.w, align 8, !tbaa !92
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 432
  store i8 0, ptr %i.x, align 8, !tbaa !93
  ret void

bb.d:                                             ; preds = %bb.a
end_hunk_0
