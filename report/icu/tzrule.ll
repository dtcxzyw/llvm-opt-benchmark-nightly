Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/tzrule?download=true
inline.NumInlined: 52
inline.NumDeleted: 15
begin_hunk_0_@_ZNK6icu_7821TimeArrayTimeZoneRuleeqERKNS_12TimeZoneRuleE:bb.a
  %.not17 = icmp eq i32 %i.x, %i.z
  br i1 %.not17, label %.preheader, label %_ZNKSt9type_infoneERKS_.exit.thread

.preheader:                                       ; preds = %bb.e
  %.not2223 = icmp sgt i32 %i.x, 0
  br i1 %.not2223, label %.lr.ph, label %_ZNKSt9type_infoneERKS_.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36
  %wide.trip.count = zext nneg i32 %i.x to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv
  %i.af = load double, ptr %i.ae, align 8, !tbaa !29
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !29
  %i.ai = fcmp oeq double %i.af, %i.ah            ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp ne i64 %indvars.iv.next, %wide.trip.count
  %or.cond.not = select i1 %i.ai, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.f, label %_ZNKSt9type_infoneERKS_.exit.thread, !llvm.loop !39

_ZNKSt9type_infoneERKS_.exit.thread:              ; preds = %bb.f, %.preheader, %bb.c, %bb.e, %bb.d, %_ZNKSt9type_infoneERKS_.exit, %_ZNKSt9type_infoneERKS_.exit.thread19, %bb.a
  %.1 = phi i1 [ false, %_ZNKSt9type_infoneERKS_.exit ], [ true, %bb.a ], [ false, %_ZNKSt9type_infoneERKS_.exit.thread19 ], [ false, %bb.d ], [ false, %bb.e ], [ false, %bb.c ], [ true, %.preheader ], [ %i.ai, %bb.f ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6icu_7821TimeArrayTimeZoneRuleneERKNS_12TimeZoneRuleE(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(352) %0, ptr noundef nonnull align 8 dereferenceable(80) %1)
  %i.e = xor i1 %i.d, true
  ret i1 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_7821TimeArrayTimeZoneRule11getTimeTypeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7821TimeArrayTimeZoneRule14getStartTimeAtEiRd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, i32 noundef %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = icmp sge i32 %1, %i.b
  %i.d = icmp slt i32 %1, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !36
  %i.g = zext nneg i32 %1 to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.g
  %i.i = load double, ptr %i.h, align 8, !tbaa !29
  store double %i.i, ptr %2, align 8, !tbaa !29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i32 @_ZNK6icu_7821TimeArrayTimeZoneRule15countStartTimesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7821TimeArrayTimeZoneRule14isEquivalentToERKNS_12TimeZoneRuleE(ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(352) %0, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(80) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZNKSt9type_infoneERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !9
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %1, align 8, !tbaa !9
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !20   ; 3 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %_ZNKSt9type_infoeqERKS_.exit.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.i, align 1, !tbaa !21
  %.not.i.i = icmp eq i8 %i.m, 42
  br i1 %.not.i.i, label %_ZNKSt9type_infoneERKS_.exit.thread, label %_ZNKSt9type_infoneERKS_.exit

_ZNKSt9type_infoneERKS_.exit:                     ; preds = %bb.c
  %i.n = load i8, ptr %i.k, align 1, !tbaa !21
  %i.o = icmp eq i8 %i.n, 42
  %.idx.i.i.i = zext i1 %i.o to i64
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i
  %i.q = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.i, ptr noundef nonnull dereferenceable(1) %i.p) #17
  %.not23 = icmp eq i32 %i.q, 0
  br i1 %.not23, label %_ZNKSt9type_infoeqERKS_.exit.thread.i, label %_ZNKSt9type_infoneERKS_.exit.thread

_ZNKSt9type_infoeqERKS_.exit.thread.i:            ; preds = %_ZNKSt9type_infoneERKS_.exit, %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = load i32, ptr %i.r, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i32, ptr %i.t, align 8, !tbaa !14
  %i.v = icmp eq i32 %i.s, %i.u
  br i1 %i.v, label %_ZNK6icu_7812TimeZoneRule14isEquivalentToERKS0_.exit, label %_ZNKSt9type_infoneERKS_.exit.thread

_ZNK6icu_7812TimeZoneRule14isEquivalentToERKS0_.exit: ; preds = %_ZNKSt9type_infoeqERKS_.exit.thread.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.x = load i32, ptr %i.w, align 4, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.z = load i32, ptr %i.y, align 4, !tbaa !15
  %.not24 = icmp eq i32 %i.x, %i.z
  br i1 %.not24, label %bb.d, label %_ZNKSt9type_infoneERKS_.exit.thread

bb.d:                                             ; preds = %_ZNK6icu_7812TimeZoneRule14isEquivalentToERKS0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !35
  %.not = icmp eq i32 %i.ab, %i.ad
  br i1 %.not, label %bb.e, label %_ZNKSt9type_infoneERKS_.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !37 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !37
  %.not17 = icmp eq i32 %i.af, %i.ah
  br i1 %.not17, label %.preheader, label %_ZNKSt9type_infoneERKS_.exit.thread

.preheader:                                       ; preds = %bb.e
  %i.ai = icmp sgt i32 %i.af, 0
  br i1 %i.ai, label %.lr.ph, label %_ZNKSt9type_infoneERKS_.exit.thread

.lr.ph:                                           ; preds = %.preheader
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !36
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !36
  %wide.trip.count = zext nneg i32 %i.af to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %_ZNKSt9type_infoneERKS_.exit.thread, label %bb.g, !llvm.loop !40

bb.g:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv
  %i.ao = load double, ptr %i.an, align 8, !tbaa !29
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !29
  %i.ar = fcmp une double %i.ao, %i.aq
  br i1 %i.ar, label %_ZNKSt9type_infoneERKS_.exit.thread, label %bb.f

_ZNKSt9type_infoneERKS_.exit.thread:              ; preds = %bb.f, %bb.g, %.preheader, %_ZNKSt9type_infoeqERKS_.exit.thread.i, %bb.c, %bb.e, %bb.d, %_ZNKSt9type_infoneERKS_.exit, %_ZNK6icu_7812TimeZoneRule14isEquivalentToERKS0_.exit, %bb.a
  %.1 = phi i8 [ 0, %_ZNKSt9type_infoneERKS_.exit ], [ 1, %bb.a ], [ 0, %_ZNK6icu_7812TimeZoneRule14isEquivalentToERKS0_.exit ], [ 0, %bb.d ], [ 0, %bb.e ], [ 0, %_ZNKSt9type_infoeqERKS_.exit.thread.i ], [ 1, %.preheader ], [ 0, %bb.c ], [ 1, %bb.f ], [ 0, %bb.g ]
  ret i8 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7821TimeArrayTimeZoneRule13getFirstStartEiiRd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load double, ptr %i.e, align 8, !tbaa !29 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load i32, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq i32 %i.i, 2
  %i.j = sitofp i32 %1 to double
  %i.k = fsub double %i.g, %i.j
  %.0.i = select i1 %.not.i, double %i.g, double %i.k ; 2 uses
  %i.l = icmp eq i32 %i.i, 0
  %i.m = sitofp i32 %2 to double
  %i.n = fsub double %.0.i, %i.m
  %.1.i = select i1 %i.l, double %i.n, double %.0.i
  store double %.1.i, ptr %3, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef double @_ZNK6icu_7821TimeArrayTimeZoneRule6getUTCEdii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, double noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq i32 %i.b, 2
  %i.c = sitofp i32 %2 to double
  %i.d = fsub double %1, %i.c
  %.0 = select i1 %.not, double %1, double %i.d   ; 2 uses
  %i.e = icmp eq i32 %i.b, 0
  %i.f = sitofp i32 %3 to double
  %i.g = fsub double %.0, %i.f
  %.1 = select i1 %i.e, double %i.g, double %.0
  ret double %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7821TimeArrayTimeZoneRule13getFinalStartEiiRd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) unnamed_addr #13 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext nneg i32 %i.b to i64
  %i.h = getelementptr [8 x i8], ptr %i.e, i64 %i.g
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %i.j = load double, ptr %i.i, align 8, !tbaa !29 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35   ; 2 uses
  %.not.i = icmp eq i32 %i.l, 2
  %i.m = sitofp i32 %1 to double
  %i.n = fsub double %i.j, %i.m
  %.0.i = select i1 %.not.i, double %i.j, double %i.n ; 2 uses
  %i.o = icmp eq i32 %i.l, 0
  %i.p = sitofp i32 %2 to double
  %i.q = fsub double %.0.i, %i.p
  %.1.i = select i1 %i.o, double %i.q, double %.0.i
  store double %.1.i, ptr %3, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i8 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7821TimeArrayTimeZoneRule12getNextStartEdiiaRd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, double noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 10 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.a
  %.01520 = add nsw i32 %i.b, -1                  ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36   ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !35
  %.fr78 = freeze i32 %i.g                        ; 2 uses
  %.not.i = icmp eq i32 %.fr78, 2
  %i.h = sitofp i32 %2 to double                  ; 5 uses
  %i.i = icmp eq i32 %.fr78, 0                    ; 2 uses
  %i.j = sitofp i32 %3 to double                  ; 4 uses
  %.not = icmp eq i8 %4, 0                        ; 3 uses
  %i.k = zext nneg i32 %.01520 to i64             ; 7 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  %i.m = load double, ptr %i.l, align 8, !tbaa !29 ; 6 uses
  br i1 %.not.i, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %.not, label %.lr.ph.split.us.split.split.preheader, label %.lr.ph.split.us.split.us

.lr.ph.split.us.split.split.preheader:            ; preds = %.lr.ph.split.us
  %or.cond75164 = fcmp ugt double %i.m, %1
  br i1 %or.cond75164, label %.lr.ph166, label %.thread

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us
  %i.n = fcmp olt double %i.m, %1
  br i1 %i.n, label %.thread, label %.lr.ph70.split.preheader

.lr.ph70.split.preheader:                         ; preds = %.lr.ph.split.us.split.us
  %i.o = fsub double %i.m, %i.j
  %.1.i.us.us67 = select i1 %i.i, double %i.o, double %i.m
  store double %.1.i.us.us67, ptr %5, align 8, !tbaa !29
  %.not171 = icmp eq i32 %.01520, 0
  br i1 %.not171, label %.thread, label %.lr.ph163, !llvm.loop !41

.lr.ph163:                                        ; preds = %.lr.ph70.split.preheader
  br label %bb.b, !llvm.loop !41

bb.b:                                             ; preds = %.lr.ph163, %.lr.ph70.split
  %indvars.iv99162 = phi i64 [ %i.k, %.lr.ph163 ], [ %indvars.iv.next100, %.lr.ph70.split ] ; 3 uses
  %indvars.iv.next100 = add nsw i64 %indvars.iv99162, -1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next100
  %i.q = load double, ptr %i.p, align 8, !tbaa !29 ; 2 uses
  %i.r = fcmp olt double %i.q, %1
  br i1 %i.r, label %.thread.loopexit123.split.loop.exit, label %.lr.ph70.split, !llvm.loop !41

.lr.ph70.split:                                   ; preds = %bb.b
  store double %i.q, ptr %5, align 8, !tbaa !29
  %i.s = icmp sgt i64 %indvars.iv99162, 1
  br i1 %i.s, label %bb.b, label %.lr.ph49..thread.loopexit145_crit_edge, !llvm.loop !41

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph166
  %indvars.iv.next106 = add nsw i64 %indvars.iv105165, -1 ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next106
  %i.u = load double, ptr %i.t, align 8, !tbaa !29 ; 2 uses
  %or.cond75 = fcmp ugt double %i.u, %1
  br i1 %or.cond75, label %.lr.ph166, label %.lr.ph.split.us.split.split..thread.loopexit_crit_edge, !llvm.loop !41

.lr.ph166:                                        ; preds = %.lr.ph.split.us.split.split.preheader, %.lr.ph.split.us.split.split
  %i.v = phi double [ %i.u, %.lr.ph.split.us.split.split ], [ %i.m, %.lr.ph.split.us.split.split.preheader ]
  %indvars.iv105165 = phi i64 [ %indvars.iv.next106, %.lr.ph.split.us.split.split ], [ %i.k, %.lr.ph.split.us.split.split.preheader ] ; 3 uses
  store double %i.v, ptr %5, align 8, !tbaa !29
  %i.w = icmp sgt i64 %indvars.iv105165, 0
  br i1 %i.w, label %.lr.ph.split.us.split.split, label %.lr.ph49..thread.loopexit145_crit_edge, !llvm.loop !41

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.x = fsub double %i.m, %i.h                   ; 5 uses
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.y = fsub double %i.x, %i.j                   ; 4 uses
  br i1 %.not, label %.lr.ph.split.split.us.split.preheader, label %.lr.ph.split.split.us.split.us

.lr.ph.split.split.us.split.preheader:            ; preds = %.lr.ph.split.split.us
  %or.cond76157 = fcmp ugt double %i.y, %1
  br i1 %or.cond76157, label %.lr.ph159, label %.thread

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us
  %i.z = fcmp olt double %i.y, %1
  br i1 %i.z, label %.thread, label %.lr.ph54.preheader

.lr.ph54.preheader:                               ; preds = %.lr.ph.split.split.us.split.us
  store double %i.y, ptr %5, align 8, !tbaa !29
  %.not170 = icmp eq i32 %.01520, 0
  br i1 %.not170, label %.thread, label %.lr.ph156, !llvm.loop !41

.lr.ph156:                                        ; preds = %.lr.ph54.preheader
  br label %bb.c, !llvm.loop !41

bb.c:                                             ; preds = %.lr.ph156, %.lr.ph54
  %indvars.iv93155 = phi i64 [ %i.k, %.lr.ph156 ], [ %indvars.iv.next94, %.lr.ph54 ] ; 3 uses
  %indvars.iv.next94 = add nsw i64 %indvars.iv93155, -1 ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next94
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !29
  %i.ac = fsub double %i.ab, %i.h
  %i.ad = fsub double %i.ac, %i.j                 ; 2 uses
  %i.ae = fcmp olt double %i.ad, %1
  br i1 %i.ae, label %.thread.loopexit127.split.loop.exit, label %.lr.ph54, !llvm.loop !41

.lr.ph54:                                         ; preds = %bb.c
  store double %i.ad, ptr %5, align 8, !tbaa !29
  %i.af = icmp sgt i64 %indvars.iv93155, 1
  br i1 %i.af, label %bb.c, label %.lr.ph49..thread.loopexit145_crit_edge, !llvm.loop !41

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph159
  %indvars.iv.next97 = add nsw i64 %indvars.iv96158, -1 ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next97
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !29
  %i.ai = fsub double %i.ah, %i.h
  %i.aj = fsub double %i.ai, %i.j                 ; 2 uses
  %or.cond76 = fcmp ugt double %i.aj, %1
  br i1 %or.cond76, label %.lr.ph159, label %.lr.ph.split.split.us.split..thread.loopexit140_crit_edge, !llvm.loop !41

.lr.ph159:                                        ; preds = %.lr.ph.split.split.us.split.preheader, %.lr.ph.split.split.us.split
  %i.ak = phi double [ %i.aj, %.lr.ph.split.split.us.split ], [ %i.y, %.lr.ph.split.split.us.split.preheader ]
  %indvars.iv96158 = phi i64 [ %indvars.iv.next97, %.lr.ph.split.split.us.split ], [ %i.k, %.lr.ph.split.split.us.split.preheader ] ; 3 uses
  store double %i.ak, ptr %5, align 8, !tbaa !29
  %i.al = icmp sgt i64 %indvars.iv96158, 0
  br i1 %i.al, label %.lr.ph.split.split.us.split, label %.lr.ph49..thread.loopexit145_crit_edge, !llvm.loop !41

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %.not, label %.lr.ph.split.split.split.preheader, label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.preheader:               ; preds = %.lr.ph.split.split
  %or.cond77151 = fcmp ugt double %i.x, %1
  br i1 %or.cond77151, label %.lr.ph153, label %.thread

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split
  %i.am = fcmp olt double %i.x, %1
  br i1 %i.am, label %.thread, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %.lr.ph.split.split.split.us
  store double %i.x, ptr %5, align 8, !tbaa !29
  %.not169 = icmp eq i32 %.01520, 0
  br i1 %.not169, label %.thread, label %.lr.ph150, !llvm.loop !41

.lr.ph150:                                        ; preds = %.lr.ph49.preheader
  br label %bb.d, !llvm.loop !41

bb.d:                                             ; preds = %.lr.ph150, %.lr.ph49
  %indvars.iv149 = phi i64 [ %i.k, %.lr.ph150 ], [ %indvars.iv.next, %.lr.ph49 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv149, -1 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next
  %i.ao = load double, ptr %i.an, align 8, !tbaa !29
  %i.ap = fsub double %i.ao, %i.h                 ; 2 uses
  %i.aq = fcmp olt double %i.ap, %1
  br i1 %i.aq, label %.thread.loopexit131.split.loop.exit, label %.lr.ph49, !llvm.loop !41

.lr.ph49:                                         ; preds = %bb.d
  store double %i.ap, ptr %5, align 8, !tbaa !29
  %i.ar = icmp sgt i64 %indvars.iv149, 1
  br i1 %i.ar, label %bb.d, label %.lr.ph49..thread.loopexit145_crit_edge, !llvm.loop !41

.lr.ph.split.split.split:                         ; preds = %.lr.ph153
  %indvars.iv.next91 = add nsw i64 %indvars.iv90152, -1 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next91
  %i.at = load double, ptr %i.as, align 8, !tbaa !29
  %i.au = fsub double %i.at, %i.h                 ; 2 uses
  %or.cond77 = fcmp ugt double %i.au, %1
  br i1 %or.cond77, label %.lr.ph153, label %.lr.ph.split.split.split..thread.loopexit143_crit_edge, !llvm.loop !41

.lr.ph153:                                        ; preds = %.lr.ph.split.split.split.preheader, %.lr.ph.split.split.split
  %i.av = phi double [ %i.au, %.lr.ph.split.split.split ], [ %i.x, %.lr.ph.split.split.split.preheader ]
  %indvars.iv90152 = phi i64 [ %indvars.iv.next91, %.lr.ph.split.split.split ], [ %i.k, %.lr.ph.split.split.split.preheader ] ; 3 uses
  store double %i.av, ptr %5, align 8, !tbaa !29
  %i.aw = icmp sgt i64 %indvars.iv90152, 0
  br i1 %i.aw, label %.lr.ph.split.split.split, label %.lr.ph49..thread.loopexit145_crit_edge, !llvm.loop !41

.thread.loopexit123.split.loop.exit:              ; preds = %bb.b
  %i.ax = trunc nuw nsw i64 %indvars.iv99162 to i32
  br label %.thread

.thread.loopexit127.split.loop.exit:              ; preds = %bb.c
  %i.ay = trunc nuw nsw i64 %indvars.iv93155 to i32
  br label %.thread

.thread.loopexit131.split.loop.exit:              ; preds = %bb.d
  %i.az = trunc nuw nsw i64 %indvars.iv149 to i32
  br label %.thread

.lr.ph.split.us.split.split..thread.loopexit_crit_edge: ; preds = %.lr.ph.split.us.split.split
  %i.ba = trunc nuw nsw i64 %indvars.iv105165 to i32
  br label %.thread

.lr.ph.split.split.us.split..thread.loopexit140_crit_edge: ; preds = %.lr.ph.split.split.us.split
  %i.bb = trunc nuw nsw i64 %indvars.iv96158 to i32
  br label %.thread

.lr.ph.split.split.split..thread.loopexit143_crit_edge: ; preds = %.lr.ph.split.split.split
  %i.bc = trunc nuw nsw i64 %indvars.iv90152 to i32
  br label %.thread

.lr.ph49..thread.loopexit145_crit_edge:           ; preds = %.lr.ph49, %.lr.ph153, %.lr.ph54, %.lr.ph159, %.lr.ph70.split, %.lr.ph166
  br label %.thread, !llvm.loop !41

.thread:                                          ; preds = %.lr.ph49.preheader, %.lr.ph49..thread.loopexit145_crit_edge, %.lr.ph.split.split.split.preheader, %.lr.ph.split.split.split..thread.loopexit143_crit_edge, %.lr.ph54.preheader, %.lr.ph.split.split.us.split.preheader, %.lr.ph.split.split.us.split..thread.loopexit140_crit_edge, %.lr.ph70.split.preheader, %.lr.ph.split.us.split.split.preheader, %.lr.ph.split.us.split.split..thread.loopexit_crit_edge, %.thread.loopexit131.split.loop.exit, %.thread.loopexit127.split.loop.exit, %.thread.loopexit123.split.loop.exit, %.lr.ph.split.us.split.us, %.lr.ph.split.split.split.us, %.lr.ph.split.split.us.split.us, %bb.a
  %.015.in.lcssa = phi i32 [ %i.b, %bb.a ], [ %i.b, %.lr.ph.split.split.split.us ], [ %i.az, %.thread.loopexit131.split.loop.exit ], [ %i.b, %.lr.ph.split.split.split.preheader ], [ %i.ay, %.thread.loopexit127.split.loop.exit ], [ %i.b, %.lr.ph.split.us.split.us ], [ %i.b, %.lr.ph.split.split.us.split.preheader ], [ %i.b, %.lr.ph.split.split.us.split.us ], [ 0, %.lr.ph70.split.preheader ], [ 0, %.lr.ph54.preheader ], [ %i.ax, %.thread.loopexit123.split.loop.exit ], [ %i.b, %.lr.ph.split.us.split.split.preheader ], [ 0, %.lr.ph49.preheader ], [ %i.ba, %.lr.ph.split.us.split.split..thread.loopexit_crit_edge ], [ 0, %.lr.ph49..thread.loopexit145_crit_edge ], [ %i.bb, %.lr.ph.split.split.us.split..thread.loopexit140_crit_edge ], [ %i.bc, %.lr.ph.split.split.split..thread.loopexit143_crit_edge ]
  %i.bd = icmp ne i32 %.015.in.lcssa, %i.b
  %. = zext i1 %i.bd to i8
  ret i8 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef signext range(i8 0, 2) i8 @_ZNK6icu_7821TimeArrayTimeZoneRule16getPreviousStartEdiiaRd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(352) %0, double noundef %1, i32 noundef %2, i32 noundef %3, i8 noundef signext %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %5) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.b = load i32, ptr %i.a, align 4, !tbaa !37   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.d = load ptr, ptr %i.c, align 8              ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = load i32, ptr %i.e, align 8
  %.fr49 = freeze i32 %i.f
  %i.g = sitofp i32 %2 to double                  ; 4 uses
  %i.h = sitofp i32 %3 to double                  ; 2 uses
  %.not.not = icmp eq i8 %4, 0                    ; 3 uses
  %i.i = icmp sgt i32 %i.b, 0                     ; 6 uses
  switch i32 %.fr49, label %.split.split [
    i32 2, label %.split.us
    i32 0, label %.split.split.us
  ]

.split.us:                                        ; preds = %bb.a
  br i1 %.not.not, label %.split.us.split.us, label %.split.us.split.split.preheader

.split.us.split.us:                               ; preds = %.split.us
  br i1 %i.i, label %.lr.ph43.split.preheader, label %.loopexit

.lr.ph43.split.preheader:                         ; preds = %.split.us.split.us
  %.014.us.us41 = add nsw i32 %i.b, -1
  %i.j = zext nneg i32 %.014.us.us41 to i64
end_hunk_0
