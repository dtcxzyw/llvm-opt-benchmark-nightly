Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ucharstriebuilder?download=true
inline.NumInlined: 74
inline.NumDeleted: 31
begin_hunk_0_@_ZN6icu_7817UCharsTrieBuilder11buildUCharsE22UStringTrieBuildOptionR10UErrorCode:bb.a
  %spec.store.select2 = select i1 %i.by, i32 %i.cb, i32 1024 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !32
  %i.ce = icmp slt i32 %i.cd, %spec.store.select2
  br i1 %i.ce, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !29
  call void @uprv_free_78(ptr noundef %i.cf)
  %i.cg = shl nuw nsw i32 %spec.store.select2, 1
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = call noalias ptr @uprv_malloc_78(i64 noundef %i.ch) #14 ; 2 uses
  store ptr %i.ci, ptr %i.c, align 8, !tbaa !29
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 7, ptr %2, align 4, !tbaa !10
  store i32 0, ptr %i.cc, align 8, !tbaa !32
  br label %bb.y

bb.v:                                             ; preds = %bb.t
  store i32 %spec.store.select2, ptr %i.cc, align 8, !tbaa !32
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.s
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !31
  call void @_ZN6icu_7817StringTrieBuilder5buildE22UStringTrieBuildOptioniR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %i.cl, ptr noundef nonnull align 4 dereferenceable(4) %2)
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 7, ptr %2, align 4, !tbaa !10
  br label %bb.y

bb.y:                                             ; preds = %bb.b, %bb.r, %bb.u, %bb.x, %bb.w, %bb.h, %bb.a, %bb.g, %bb.e
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZN6icu_787UMemorynwEm(i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7817UCharsTrieBuilder18buildUnicodeStringE22UStringTrieBuildOptionRNS_13UnicodeStringER10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull returned align 8 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.icu_78::ConstChar16Ptr", align 8 ; 4 uses
  tail call void @_ZN6icu_7817UCharsTrieBuilder11buildUCharsE22UStringTrieBuildOptionR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %i.a = load i32, ptr %3, align 4, !tbaa !10
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i32, ptr %i.e, align 8, !tbaa !32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.h = load i32, ptr %i.g, align 4, !tbaa !30   ; 2 uses
  %i.i = sub nsw i32 %i.f, %i.h
  %i.j = sext i32 %i.i to i64
  %i.k = getelementptr inbounds [2 x i8], ptr %i.d, i64 %i.j
  store ptr %i.k, ptr %4, align 8, !tbaa !62
  %i.l = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64) %2, i8 noundef signext 0, ptr noundef nonnull align 8 %4, i32 noundef %i.h)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %4, align 8, !tbaa !62
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.m) #12, !srcloc !63
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !62
  call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.o) #12, !srcloc !63
  resume { ptr, i32 } %i.n

bb.e:                                             ; preds = %bb.c, %bb.a
  ret ptr %2
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString5setToEaNS_14ConstChar16PtrEi(ptr noundef nonnull align 8 dereferenceable(64), i8 noundef signext, ptr noundef align 8, i32 noundef) local_unnamed_addr #3

declare void @uprv_sortArray_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef signext, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 -128, 128) i32 @_ZN6icu_78L21compareElementStringsEPKvS1_S1_(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call noundef i32 @_ZNK6icu_7817UCharsTrieElement15compareStringToERKS0_RKNS_13UnicodeStringE(ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(64) %0)
  ret i32 %i.a
}

declare noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString12fastCopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64)) local_unnamed_addr #3

; Function Attrs: allocsize(0)
declare noalias ptr @uprv_malloc_78(i64 noundef) local_unnamed_addr #7

declare void @_ZN6icu_7817StringTrieBuilder5buildE22UStringTrieBuildOptioniR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 0, 65536) i32 @_ZNK6icu_7817UCharsTrieBuilder22getElementStringLengthEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i16, ptr %i.f, align 8, !tbaa !11   ; 3 uses
  %i.h = icmp slt i16 %i.g, 0
  %i.i = ashr i16 %i.g, 5
  %i.j = sext i16 %i.i to i32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.l = load i32, ptr %i.k, align 4
  %i.m = select i1 %i.h, i32 %i.l, i32 %i.j
  %i.n = icmp ult i32 %i.e, %i.m
  br i1 %i.n, label %bb.b, label %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit

bb.b:                                             ; preds = %bb.a
  %i.o = and i16 %i.g, 2
  %.not.i.i.i.i = icmp eq i16 %i.o, 0
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = select i1 %.not.i.i.i.i, ptr %i.r, ptr %i.p
  %i.t = sext i32 %i.e to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %i.s, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !15
  %i.w = zext i16 %i.v to i32
  br label %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit

_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi i32 [ %i.w, %bb.b ], [ 65535, %bb.a ]
  ret i32 %.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i16 @_ZNK6icu_7817UCharsTrieBuilder14getElementUnitEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13
  %i.f = add i32 %2, 1
  %i.g = add i32 %i.f, %i.e                       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i16, ptr %i.h, align 8, !tbaa !11   ; 3 uses
  %i.j = icmp slt i16 %i.i, 0
  %i.k = ashr i16 %i.i, 5
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %i.j, i32 %i.n, i32 %i.l
  %i.p = icmp ult i32 %i.g, %i.o
  br i1 %i.p, label %bb.b, label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit

bb.b:                                             ; preds = %bb.a
  %i.q = and i16 %i.i, 2
  %.not.i.i.i.i = icmp eq i16 %i.q, 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i.i, ptr %i.t, ptr %i.r
  %i.v = sext i32 %i.g to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.u, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !15
  br label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit

_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit: ; preds = %bb.a, %bb.b
  %.0.i.i.i = phi i16 [ %i.x, %bb.b ], [ -1, %bb.a ]
  ret i16 %.0.i.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZNK6icu_7817UCharsTrieBuilder15getElementValueEi(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !16
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_ZNK6icu_7817UCharsTrieBuilder21getLimitOfLinearMatchEiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.c
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.d, align 4, !tbaa !13   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i16, ptr %i.h, align 8, !tbaa !11
  %.fr26 = freeze i16 %i.i                        ; 4 uses
  %i.j = icmp slt i16 %.fr26, 0
  %i.k = lshr i16 %.fr26, 5
  %i.l = zext nneg i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %i.j, i32 %i.n, i32 %i.l       ; 5 uses
  %i.p = icmp ult i32 %i.g, %i.o
  br i1 %i.p, label %bb.b, label %._ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit_crit_edge

._ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit_crit_edge: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  %.pre24 = and i16 %.fr26, 2
  br label %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit

bb.b:                                             ; preds = %bb.a
  %4 = and i16 %.fr26, 2                          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %4, 0
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = select i1 %.not.i.i.i.i, ptr %i.s, ptr %i.q
  %i.u = sext i32 %i.g to i64
  %i.v = getelementptr inbounds [2 x i8], ptr %i.t, i64 %i.u
  %i.w = load i16, ptr %i.v, align 2, !tbaa !15
  %i.x = zext i16 %i.w to i32
  br label %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit

_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit: ; preds = %._ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit_crit_edge, %bb.b
  %.pre-phi = phi i16 [ %.pre24, %._ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit_crit_edge ], [ %4, %bb.b ]
  %5 = phi ptr [ %.pre, %._ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit_crit_edge ], [ %i.s, %bb.b ] ; 2 uses
  %.0.i.i.i = phi i32 [ 65535, %._ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit_crit_edge ], [ %i.x, %bb.b ] ; 2 uses
  %.not.i.i.i.i12 = icmp eq i16 %.pre-phi, 0      ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %6 = select i1 %.not.i.i.i.i12, ptr %5, ptr %i.y ; 2 uses
  %i.z = sext i32 %3 to i64                       ; 3 uses
  %i.aa = zext nneg i32 %.0.i.i.i to i64          ; 3 uses
  %i.ab = add i32 %3, 1
  %smax44 = tail call i32 @llvm.smax.i32(i32 %.0.i.i.i, i32 %i.ab) ; 4 uses
  %indvars.iv.next4368 = add nsw i64 %i.z, 1      ; 3 uses
  %i.ac = icmp slt i64 %indvars.iv.next4368, %i.aa ; 2 uses
  br i1 %.not.i.i.i.i12, label %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.us.split.us.preheader, label %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.split.preheader

_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.split.preheader: ; preds = %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit
  br i1 %i.ac, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.split.preheader
  %i.ad = load i32, ptr %i.f, align 4, !tbaa !13
  br label %.lr.ph

_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.us.split.us.preheader: ; preds = %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit
  br i1 %i.ac, label %.lr.ph71.preheader, label %.critedge

.lr.ph71.preheader:                               ; preds = %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.us.split.us.preheader
  %i.ae = load i32, ptr %i.f, align 4, !tbaa !13
  br label %.lr.ph71

_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.us.split.us: ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit15.us.us
  %indvars.iv.next43 = add nsw i64 %indvars.iv.next4370, 1 ; 2 uses
  %i.af = icmp slt i64 %indvars.iv.next43, %i.aa
  br i1 %i.af, label %.lr.ph71, label %.critedge, !llvm.loop !64

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.us.split.us
  %indvars.iv.next4370 = phi i64 [ %indvars.iv.next43, %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.us.split.us ], [ %indvars.iv.next4368, %.lr.ph71.preheader ] ; 3 uses
  %indvars.iv4269 = phi i64 [ %indvars.iv.next4370, %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.us.split.us ], [ %i.z, %.lr.ph71.preheader ]
  %i.ag = trunc i64 %indvars.iv4269 to i32
  %i.ah = add i32 %i.ag, 2                        ; 2 uses
  %i.ai = add i32 %i.ah, %i.g                     ; 2 uses
  %i.aj = icmp ult i32 %i.ai, %i.o
  br i1 %i.aj, label %bb.c, label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us.us

bb.c:                                             ; preds = %.lr.ph71
  %i.ak = sext i32 %i.ai to i64
  %i.al = getelementptr inbounds [2 x i8], ptr %6, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !15
  br label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us.us

_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us.us: ; preds = %bb.c, %.lr.ph71
  %.0.i.i.i11.us.us = phi i16 [ %i.am, %bb.c ], [ -1, %.lr.ph71 ]
  %i.an = add i32 %i.ae, %i.ah                    ; 2 uses
  %i.ao = icmp ult i32 %i.an, %i.o
  br i1 %i.ao, label %bb.d, label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit15.us.us

bb.d:                                             ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us.us
  %i.ap = sext i32 %i.an to i64
  %i.aq = getelementptr inbounds [2 x i8], ptr %5, i64 %i.ap
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !15
  br label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit15.us.us

_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit15.us.us: ; preds = %bb.d, %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us.us
  %.0.i.i.i13.us.us = phi i16 [ %i.ar, %bb.d ], [ -1, %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us.us ]
  %i.as = icmp eq i16 %.0.i.i.i11.us.us, %.0.i.i.i13.us.us
  br i1 %i.as, label %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.us.split.us, label %.critedge.loopexit.split.loop.exit60, !llvm.loop !64

_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.split: ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit15
  %indvars.iv.next = add nsw i64 %indvars.iv.next67, 1 ; 2 uses
  %i.at = icmp slt i64 %indvars.iv.next, %i.aa
  br i1 %i.at, label %.lr.ph, label %.critedge, !llvm.loop !64

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.split
  %indvars.iv.next67 = phi i64 [ %indvars.iv.next, %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.split ], [ %indvars.iv.next4368, %.lr.ph.preheader ] ; 3 uses
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.split ], [ %i.z, %.lr.ph.preheader ]
  %i.au = trunc i64 %indvars.iv66 to i32
  %i.av = add i32 %i.au, 2                        ; 2 uses
  %i.aw = add i32 %i.av, %i.g                     ; 2 uses
  %i.ax = icmp ult i32 %i.aw, %i.o
  br i1 %i.ax, label %bb.e, label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit

bb.e:                                             ; preds = %.lr.ph
  %i.ay = sext i32 %i.aw to i64
  %i.az = getelementptr inbounds [2 x i8], ptr %6, i64 %i.ay
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !15
  br label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit

_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit: ; preds = %.lr.ph, %bb.e
  %.0.i.i.i11 = phi i16 [ %i.ba, %bb.e ], [ -1, %.lr.ph ]
  %i.bb = add i32 %i.ad, %i.av                    ; 2 uses
  %i.bc = icmp ult i32 %i.bb, %i.o
  br i1 %i.bc, label %bb.f, label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit15

bb.f:                                             ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit
  %i.bd = sext i32 %i.bb to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %i.y, i64 %i.bd
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !15
  br label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit15

_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit15: ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit, %bb.f
  %.0.i.i.i13 = phi i16 [ %i.bf, %bb.f ], [ -1, %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit ]
  %i.bg = icmp eq i16 %.0.i.i.i11, %.0.i.i.i13
  br i1 %i.bg, label %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.split, label %.critedge.loopexit56.split.loop.exit, !llvm.loop !64

.critedge.loopexit.split.loop.exit60:             ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit15.us.us
  %i.bh = trunc nsw i64 %indvars.iv.next4370 to i32
  br label %.critedge

.critedge.loopexit56.split.loop.exit:             ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit15
  %i.bi = trunc nsw i64 %indvars.iv.next67 to i32
  br label %.critedge

.critedge:                                        ; preds = %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.split, %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.us.split.us, %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.split.preheader, %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.us.split.us.preheader, %.critedge.loopexit56.split.loop.exit, %.critedge.loopexit.split.loop.exit60
  %.us-phi = phi i32 [ %smax44, %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.us.split.us.preheader ], [ %i.bh, %.critedge.loopexit.split.loop.exit60 ], [ %i.bi, %.critedge.loopexit56.split.loop.exit ], [ %smax44, %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.split.preheader ], [ %smax44, %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.us.split.us ], [ %smax44, %_ZNK6icu_7817UCharsTrieElement15getStringLengthERKNS_13UnicodeStringE.exit.split.split ]
  ret i32 %.us-phi
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_ZNK6icu_7817UCharsTrieBuilder17countElementUnitsEiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = add i32 %3, 1                            ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i16, ptr %i.d, align 8, !tbaa !11
  %.fr21 = freeze i16 %i.e                        ; 3 uses
  %i.f = icmp slt i16 %.fr21, 0
  %i.g = lshr i16 %.fr21, 5
  %i.h = zext nneg i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h       ; 4 uses
  %i.l = and i16 %.fr21, 2
  %.not.i.i.i.i15 = icmp eq i16 %i.l, 0           ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = select i1 %.not.i.i.i.i15, ptr %i.o, ptr %i.m ; 2 uses
  %i.q = sext i32 %2 to i64                       ; 4 uses
  %.phi.trans.insert30 = sext i32 %1 to i64
  %.phi.trans.insert31 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.phi.trans.insert30
  %.pre32 = load i32, ptr %.phi.trans.insert31, align 4, !tbaa !13 ; 2 uses
  %i.r = sext i32 %1 to i64                       ; 2 uses
  br i1 %.not.i.i.i.i15, label %.split19.us, label %.split19

.split19.us:                                      ; preds = %bb.a, %.critedge.split.us.us
  %i.s = phi i32 [ %i.ab, %.critedge.split.us.us ], [ %.pre32, %bb.a ]
  %.013.us = phi i32 [ %i.ai, %.critedge.split.us.us ], [ 0, %bb.a ] ; 3 uses
  %.0.us = phi i64 [ %indvars.iv.next2749, %.critedge.split.us.us ], [ %i.r, %bb.a ]
  %i.t = add i32 %i.s, %i.c                       ; 2 uses
  %i.u = icmp ult i32 %i.t, %i.k
  br i1 %i.u, label %bb.b, label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us

bb.b:                                             ; preds = %.split19.us
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.v
  %i.x = load i16, ptr %i.w, align 2, !tbaa !15
  br label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us

_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us: ; preds = %bb.b, %.split19.us
  %.0.i.i.i.us = phi i16 [ %i.x, %bb.b ], [ -1, %.split19.us ]
  %indvars.iv.next2748 = add nsw i64 %.0.us, 1    ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next2748, %i.q
  br i1 %i.y, label %.lr.ph50, label %.split.us

bb.c:                                             ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit16.us.us
  %indvars.iv.next27 = add nsw i64 %indvars.iv.next2749, 1 ; 2 uses
  %i.z = icmp slt i64 %indvars.iv.next27, %i.q
  br i1 %i.z, label %.lr.ph50, label %.split.us, !llvm.loop !65

.lr.ph50:                                         ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us, %bb.c
  %indvars.iv.next2749 = phi i64 [ %indvars.iv.next27, %bb.c ], [ %indvars.iv.next2748, %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us ] ; 3 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next2749
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !13 ; 2 uses
  %i.ac = add i32 %i.ab, %i.c                     ; 2 uses
  %i.ad = icmp ult i32 %i.ac, %i.k
  br i1 %i.ad, label %bb.d, label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit16.us.us

bb.d:                                             ; preds = %.lr.ph50
  %i.ae = sext i32 %i.ac to i64
  %i.af = getelementptr inbounds [2 x i8], ptr %i.o, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !15
  br label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit16.us.us

_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit16.us.us: ; preds = %bb.d, %.lr.ph50
  %.0.i.i.i14.us.us = phi i16 [ %i.ag, %bb.d ], [ -1, %.lr.ph50 ]
  %i.ah = icmp eq i16 %.0.i.i.i.us, %.0.i.i.i14.us.us
  br i1 %i.ah, label %bb.c, label %.critedge.split.us.us, !llvm.loop !65

.critedge.split.us.us:                            ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit16.us.us
  %i.ai = add nuw nsw i32 %.013.us, 1
  br label %.split19.us

.split19:                                         ; preds = %bb.a, %.critedge.split
  %i.aj = phi i32 [ %i.as, %.critedge.split ], [ %.pre32, %bb.a ]
  %.013 = phi i32 [ %i.az, %.critedge.split ], [ 0, %bb.a ] ; 3 uses
  %.0 = phi i64 [ %indvars.iv.next46, %.critedge.split ], [ %i.r, %bb.a ]
  %i.ak = add i32 %i.aj, %i.c                     ; 2 uses
  %i.al = icmp ult i32 %i.ak, %i.k
  br i1 %i.al, label %bb.e, label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit

bb.e:                                             ; preds = %.split19
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !15
  br label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit

_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit: ; preds = %.split19, %bb.e
  %.0.i.i.i = phi i16 [ %i.ao, %bb.e ], [ -1, %.split19 ]
  %indvars.iv.next45 = add nsw i64 %.0, 1         ; 2 uses
  %i.ap = icmp slt i64 %indvars.iv.next45, %i.q
  br i1 %i.ap, label %.lr.ph, label %.split.us

bb.f:                                             ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit16
  %indvars.iv.next = add nsw i64 %indvars.iv.next46, 1 ; 2 uses
  %i.aq = icmp slt i64 %indvars.iv.next, %i.q
  br i1 %i.aq, label %.lr.ph, label %.split.us, !llvm.loop !65

.lr.ph:                                           ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit, %bb.f
  %indvars.iv.next46 = phi i64 [ %indvars.iv.next, %bb.f ], [ %indvars.iv.next45, %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit ] ; 3 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.b, i64 %indvars.iv.next46
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !13 ; 2 uses
  %i.at = add i32 %i.as, %i.c                     ; 2 uses
  %i.au = icmp ult i32 %i.at, %i.k
  br i1 %i.au, label %bb.g, label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit16

bb.g:                                             ; preds = %.lr.ph
  %i.av = sext i32 %i.at to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %i.m, i64 %i.av
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !15
  br label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit16

_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit16: ; preds = %.lr.ph, %bb.g
  %.0.i.i.i14 = phi i16 [ %i.ax, %bb.g ], [ -1, %.lr.ph ]
  %i.ay = icmp eq i16 %.0.i.i.i, %.0.i.i.i14
  br i1 %i.ay, label %bb.f, label %.critedge.split, !llvm.loop !65

.critedge.split:                                  ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit16
  %i.az = add nuw nsw i32 %.013, 1
  br label %.split19

.split.us:                                        ; preds = %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit, %bb.f, %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us, %bb.c
  %.us-phi = phi i32 [ %.013, %bb.f ], [ %.013.us, %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us ], [ %.013.us, %bb.c ], [ %.013, %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit ]
  %i.ba = add nuw nsw i32 %.us-phi, 1
  ret i32 %i.ba
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_ZNK6icu_7817UCharsTrieBuilder23skipElementsBySomeUnitsEiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(112) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 3 uses
  %i.c = add i32 %2, 1                            ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i16, ptr %i.d, align 8, !tbaa !11
  %.fr17 = freeze i16 %i.e                        ; 3 uses
  %i.f = icmp slt i16 %.fr17, 0
  %i.g = lshr i16 %.fr17, 5
  %i.h = zext nneg i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.j = load i32, ptr %i.i, align 4
  %i.k = select i1 %i.f, i32 %i.j, i32 %i.h       ; 4 uses
  %i.l = and i16 %.fr17, 2
  %.not.i.i.i.i11 = icmp eq i16 %i.l, 0           ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = select i1 %.not.i.i.i.i11, ptr %i.o, ptr %i.m ; 2 uses
  %.phi.trans.insert24 = sext i32 %1 to i64
  %.phi.trans.insert25 = getelementptr inbounds [8 x i8], ptr %i.b, i64 %.phi.trans.insert24
  %.pre26 = load i32, ptr %.phi.trans.insert25, align 4, !tbaa !13 ; 2 uses
  %i.q = sext i32 %1 to i64                       ; 2 uses
  br i1 %.not.i.i.i.i11, label %.split13.us, label %.split13

.split13.us:                                      ; preds = %bb.a, %.split.us.us
  %i.r = phi i32 [ %i.y, %.split.us.us ], [ %.pre26, %bb.a ]
  %.08.us = phi i64 [ %indvars.iv.next21, %.split.us.us ], [ %i.q, %bb.a ]
  %.0.us = phi i32 [ %i.af, %.split.us.us ], [ %3, %bb.a ] ; 2 uses
  %i.s = add i32 %i.r, %i.c                       ; 2 uses
  %i.t = icmp ult i32 %i.s, %i.k
  br i1 %i.t, label %bb.b, label %_ZNK6icu_7817UCharsTrieElement6charAtEiRKNS_13UnicodeStringE.exit.us

bb.b:                                             ; preds = %.split13.us
  %i.u = sext i32 %i.s to i64
end_hunk_0
