Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/simpleformatter?download=true
inline.NumInlined: 61
inline.NumDeleted: 24
begin_hunk_0_@_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringERS1_R10UErrorCode:bb.a
  br i1 %.not2.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %.preheader78.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11
  br label %.preheader78.i

.preheader78.i:                                   ; preds = %.critedge.i, %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.v, %bb.h ], [ %i.t, %bb.g ], [ null, %.critedge.i ] ; 4 uses
  %i.w = icmp sgt i32 %i.o, 1
  br i1 %i.w, label %.lr.ph81.split.i.preheader, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

.lr.ph81.split.i.preheader:                       ; preds = %.preheader78.i
  %i.x = icmp eq ptr %1, %2
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 12
  br i1 %i.x, label %.lr.ph81.split.i.us, label %.lr.ph81.split.i

.lr.ph81.split.i.us:                              ; preds = %.lr.ph81.split.i.preheader, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i.us
  %.05980.i.us = phi i32 [ %i.ak, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i.us ], [ 1, %.lr.ph81.split.i.preheader ] ; 2 uses
  %i.aa = add nsw i32 %.05980.i.us, 1             ; 2 uses
  %i.ab = sext i32 %.05980.i.us to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !13 ; 2 uses
  %i.ae = icmp ult i16 %i.ad, 256
  br i1 %i.ae, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, label %bb.i

bb.i:                                             ; preds = %.lr.ph81.split.i.us
  %i.af = zext i16 %i.ad to i32
  %i.ag = add nsw i32 %i.af, -256                 ; 2 uses
  %i.ah = sext i32 %i.aa to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.ah ; 3 uses
  %i.aj = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.ai, i32 noundef 0, i32 noundef %i.ag)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i.us unwind label %.split.i.split.us ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i.us: ; preds = %bb.i
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ai) #7, !srcloc !15
  %i.ak = add nsw i32 %i.ag, %i.aa                ; 2 uses
  %i.al = icmp slt i32 %i.ak, %i.o
  br i1 %i.al, label %.lr.ph81.split.i.us, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit, !llvm.loop !0

.split.i.split.us:                                ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.split.i

.lr.ph81.split.i:                                 ; preds = %.lr.ph81.split.i.preheader, %bb.l
  %.05980.i = phi i32 [ %.261.i, %bb.l ], [ 1, %.lr.ph81.split.i.preheader ] ; 2 uses
  %i.an = add nsw i32 %.05980.i, 1                ; 3 uses
  %i.ao = sext i32 %.05980.i to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !13 ; 2 uses
  %i.ar = icmp ult i16 %i.aq, 256
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph81.split.i
  %i.as = load i16, ptr %i.y, align 8, !tbaa !11  ; 2 uses
  %i.at = icmp slt i16 %i.as, 0
  %i.au = ashr i16 %i.as, 5
  %i.av = sext i16 %i.au to i32
  %i.aw = load i32, ptr %i.z, align 4
  %i.ax = select i1 %i.at, i32 %i.aw, i32 %i.av
  %i.ay = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %1, i32 noundef 0, i32 noundef %i.ax) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph81.split.i
  %i.az = zext i16 %i.aq to i32
  %i.ba = add nsw i32 %i.az, -256                 ; 2 uses
  %i.bb = sext i32 %i.an to i64
  %i.bc = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.bb ; 3 uses
  %i.bd = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %i.bc, i32 noundef 0, i32 noundef %i.ba)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i unwind label %.split.i.split ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i: ; preds = %bb.k
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.bc) #7, !srcloc !15
  %i.be = add nsw i32 %i.ba, %i.an
  br label %bb.l

.split.i.split:                                   ; preds = %bb.k
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %.split.i

.split.i:                                         ; preds = %.split.i.split.us, %.split.i.split
  %.us-phi = phi ptr [ %i.bc, %.split.i.split ], [ %i.ai, %.split.i.split.us ]
  %.us-phi4 = phi { ptr, i32 } [ %i.bf, %.split.i.split ], [ %i.am, %.split.i.split.us ]
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %.us-phi) #7, !srcloc !15
  resume { ptr, i32 } %.us-phi4

bb.l:                                             ; preds = %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i, %bb.j
  %.261.i = phi i32 [ %i.be, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i ], [ %i.an, %bb.j ] ; 2 uses
  %i.bg = icmp slt i32 %.261.i, %i.o
  br i1 %i.bg, label %.lr.ph81.split.i, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit, !llvm.loop !0

_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split: ; preds = %.lr.ph81.split.i.us, %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i
  store i32 1, ptr %3, align 4, !tbaa !10
  br label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit: ; preds = %bb.l, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i.us, %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, %.preheader78.i, %bb.a
  ret ptr %2
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef nonnull returned align 8 dereferenceable(64) %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i32, ptr %6, align 4, !tbaa !10
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.c = icmp sgt i32 %2, -1
  %i.d = icmp ne ptr %1, null
  %i.e = icmp eq i32 %2, 0
  %.not20 = or i1 %i.d, %i.e
  %narrow.i.not = and i1 %i.c, %.not20
  br i1 %narrow.i.not, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.f = icmp sgt i32 %5, -1
  %i.g = icmp ne ptr %4, null
  %i.h = icmp eq i32 %5, 0
  %.not23 = or i1 %i.g, %i.h
  %narrow.i17.not = and i1 %i.f, %.not23
  br i1 %narrow.i17.not, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i16, ptr %i.i, align 8, !tbaa !11   ; 5 uses
  %i.k = and i16 %i.j, 17
  %.not.i.i = icmp eq i16 %i.k, 0                 ; 2 uses
  br i1 %.not.i.i, label %bb.e, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

bb.e:                                             ; preds = %bb.d
  %i.l = and i16 %i.j, 2
  %.not2.i.i = icmp eq i16 %i.l, 0
  br i1 %.not2.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !11
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i

_ZNK6icu_7813UnicodeString9getBufferEv.exit.i:    ; preds = %bb.g, %bb.f, %bb.d
  %.0.i.i = phi ptr [ %i.o, %bb.g ], [ %i.m, %bb.f ], [ null, %bb.d ]
  %i.p = icmp slt i16 %i.j, 0
  %i.q = ashr i16 %i.j, 5
  %i.r = sext i16 %i.q to i32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.t = load i32, ptr %i.s, align 4
  %i.u = select i1 %i.p, i32 %i.t, i32 %i.r       ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.critedge, label %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit

_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i
  %i.w = load i16, ptr %.0.i.i, align 2, !tbaa !13
  %i.x = zext i16 %i.w to i32
  %i.y = icmp samesign ult i32 %2, %i.x
  br i1 %i.y, label %bb.h, label %.critedge

bb.h:                                             ; preds = %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit, %bb.c, %bb.b
  store i32 1, ptr %6, align 4, !tbaa !10
  br label %bb.l

.critedge:                                        ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i, %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit
  br i1 %.not.i.i, label %bb.i, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.i:                                             ; preds = %.critedge
  %i.z = and i16 %i.j, 2
  %.not2.i = icmp eq i16 %i.z, 0
  br i1 %.not2.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !11
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit

_ZNK6icu_7813UnicodeString9getBufferEv.exit:      ; preds = %.critedge, %bb.j, %bb.k
  %.0.i = phi ptr [ %i.ac, %bb.k ], [ %i.aa, %bb.j ], [ null, %.critedge ]
  %i.ad = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7815SimpleFormatter6formatEPKDsiPKPKNS_13UnicodeStringERS3_S5_aPiiR10UErrorCode(ptr noundef %.0.i, i32 noundef %i.u, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef null, i8 noundef signext 1, ptr noundef %4, i32 noundef %5, ptr noundef nonnull align 4 dereferenceable(4) %6) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %_ZNK6icu_7813UnicodeString9getBufferEv.exit, %bb.h
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull returned align 8 dereferenceable(64) %3, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [2 x ptr], align 16                 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store ptr %1, ptr %5, align 16, !tbaa !18
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %2, ptr %6, align 8, !tbaa !18
  %i.a = load i32, ptr %4, align 4, !tbaa !10
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i16, ptr %i.c, align 8, !tbaa !11   ; 5 uses
  %i.e = and i16 %i.d, 17
  %.not.i.i.i = icmp eq i16 %i.e, 0               ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.f = and i16 %i.d, 2
  %.not2.i.i.i = icmp eq i16 %i.f, 0
  br i1 %.not2.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i:  ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i = phi ptr [ %i.i, %bb.e ], [ %i.g, %bb.d ], [ null, %bb.b ]
  %i.j = icmp slt i16 %i.d, 0
  %i.k = ashr i16 %i.d, 5
  %i.l = sext i16 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = select i1 %i.j, i32 %i.n, i32 %i.l       ; 3 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.critedge.i, label %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i

_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i
  %i.q = load i16, ptr %.0.i.i.i, align 2, !tbaa !13
  %i.r = icmp ugt i16 %i.q, 2
  br i1 %i.r, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i
  br i1 %.not.i.i.i, label %bb.f, label %.preheader78.i

bb.f:                                             ; preds = %.critedge.i
  %i.s = and i16 %i.d, 2
  %.not2.i.i = icmp eq i16 %i.s, 0
  br i1 %.not2.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %.preheader78.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !11
  br label %.preheader78.i

.preheader78.i:                                   ; preds = %.critedge.i, %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.v, %bb.h ], [ %i.t, %bb.g ], [ null, %.critedge.i ] ; 2 uses
  %i.w = icmp sgt i32 %i.o, 1
  br i1 %i.w, label %.lr.ph81.split.i, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

.lr.ph81.split.i:                                 ; preds = %.preheader78.i, %bb.l
  %.05980.i = phi i32 [ %.261.i, %bb.l ], [ 1, %.preheader78.i ] ; 2 uses
  %i.x = add nsw i32 %.05980.i, 1                 ; 3 uses
  %i.y = sext i32 %.05980.i to i64
  %i.z = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !13  ; 3 uses
  %i.ab = icmp ult i16 %i.aa, 256
  br i1 %i.ab, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph81.split.i
  %7 = zext nneg i16 %i.aa to i64
  %8 = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !18       ; 5 uses
  %i.ac = icmp eq ptr %9, null
  %10 = icmp eq ptr %9, %3
  %or.cond.i = or i1 %i.ac, %10
  br i1 %or.cond.i, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ae = load i16, ptr %i.ad, align 8, !tbaa !11 ; 2 uses
  %i.af = icmp slt i16 %i.ae, 0
  %i.ag = ashr i16 %i.ae, 5
  %i.ah = sext i16 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = select i1 %i.af, i32 %i.aj, i32 %i.ah
  %i.al = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(64) %9, i32 noundef 0, i32 noundef %i.ak) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph81.split.i
  %i.am = zext i16 %i.aa to i32
  %i.an = add nsw i32 %i.am, -256                 ; 2 uses
  %i.ao = sext i32 %i.x to i64
  %i.ap = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.ao ; 3 uses
  %i.aq = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.ap, i32 noundef 0, i32 noundef %i.an)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i unwind label %.split.i ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i: ; preds = %bb.k
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ap) #7, !srcloc !15
  %i.ar = add nsw i32 %i.an, %i.x
  br label %bb.l

.split.i:                                         ; preds = %bb.k
  %i.as = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.ap) #7, !srcloc !15
  resume { ptr, i32 } %i.as

bb.l:                                             ; preds = %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i, %bb.j
  %.261.i = phi i32 [ %i.ar, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i ], [ %i.x, %bb.j ] ; 2 uses
  %i.at = icmp slt i32 %.261.i, %i.o
  br i1 %i.at, label %.lr.ph81.split.i, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit, !llvm.loop !0

_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split: ; preds = %bb.i, %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i
  store i32 1, ptr %4, align 4, !tbaa !10
  br label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit: ; preds = %bb.l, %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, %.preheader78.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret ptr %3
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZNK6icu_7815SimpleFormatter6formatERKNS_13UnicodeStringES3_S3_RS1_R10UErrorCode(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull returned align 8 dereferenceable(64) %4, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x ptr], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr %1, ptr %i.a, align 16, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %3, ptr %i.c, align 16, !tbaa !18
  %i.d = load i32, ptr %5, align 4, !tbaa !10
  %i.e = icmp slt i32 %i.d, 1
  br i1 %i.e, label %bb.b, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i16, ptr %i.f, align 8, !tbaa !11   ; 5 uses
  %i.h = and i16 %i.g, 17
  %.not.i.i.i = icmp eq i16 %i.h, 0               ; 2 uses
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.i = and i16 %i.g, 2
  %.not2.i.i.i = icmp eq i16 %i.i, 0
  br i1 %.not2.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !11
  br label %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i

_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i:  ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.j, %bb.d ], [ null, %bb.b ]
  %i.m = icmp slt i16 %i.g, 0
  %i.n = ashr i16 %i.g, 5
  %i.o = sext i16 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %i.r = select i1 %i.m, i32 %i.q, i32 %i.o       ; 3 uses
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.critedge.i, label %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i

_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i: ; preds = %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i
  %i.t = load i16, ptr %.0.i.i.i, align 2, !tbaa !13
  %i.u = icmp ugt i16 %i.t, 3
  br i1 %i.u, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i, %_ZNK6icu_7813UnicodeString9getBufferEv.exit.i.i
  br i1 %.not.i.i.i, label %bb.f, label %.preheader78.i

bb.f:                                             ; preds = %.critedge.i
  %i.v = and i16 %i.g, 2
  %.not2.i.i = icmp eq i16 %i.v, 0
  br i1 %.not2.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 18
  br label %.preheader78.i

bb.h:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !11
  br label %.preheader78.i

.preheader78.i:                                   ; preds = %.critedge.i, %bb.g, %bb.h
  %.0.i.i = phi ptr [ %i.y, %bb.h ], [ %i.w, %bb.g ], [ null, %.critedge.i ] ; 2 uses
  %i.z = icmp sgt i32 %i.r, 1
  br i1 %i.z, label %.lr.ph81.split.i, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

.lr.ph81.split.i:                                 ; preds = %.preheader78.i, %bb.l
  %.05980.i = phi i32 [ %.261.i, %bb.l ], [ 1, %.preheader78.i ] ; 2 uses
  %i.aa = add nsw i32 %.05980.i, 1                ; 3 uses
  %i.ab = sext i32 %.05980.i to i64
  %i.ac = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.ab
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !13 ; 3 uses
  %i.ae = icmp ult i16 %i.ad, 256
  br i1 %i.ae, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.lr.ph81.split.i
  %i.af = zext nneg i16 %i.ad to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !18 ; 5 uses
  %i.ai = icmp eq ptr %i.ah, null
  %i.aj = icmp eq ptr %i.ah, %4
  %or.cond.i = or i1 %i.ai, %i.aj
  br i1 %or.cond.i, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load i16, ptr %i.ak, align 8, !tbaa !11 ; 2 uses
  %i.am = icmp slt i16 %i.al, 0
  %i.an = ashr i16 %i.al, 5
  %i.ao = sext i16 %i.an to i32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aq = load i32, ptr %i.ap, align 4
  %i.ar = select i1 %i.am, i32 %i.aq, i32 %i.ao
  %i.as = tail call noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendERKS0_ii(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(64) %i.ah, i32 noundef 0, i32 noundef %i.ar) ; 0 uses
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph81.split.i
  %i.at = zext i16 %i.ad to i32
  %i.au = add nsw i32 %i.at, -256                 ; 2 uses
  %i.av = sext i32 %i.aa to i64
  %i.aw = getelementptr inbounds [2 x i8], ptr %.0.i.i, i64 %i.av ; 3 uses
  %i.ax = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %i.aw, i32 noundef 0, i32 noundef %i.au)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i unwind label %.split.i ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i: ; preds = %bb.k
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.aw) #7, !srcloc !15
  %i.ay = add nsw i32 %i.au, %i.aa
  br label %bb.l

.split.i:                                         ; preds = %bb.k
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.aw) #7, !srcloc !15
  resume { ptr, i32 } %i.az

bb.l:                                             ; preds = %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i, %bb.j
  %.261.i = phi i32 [ %i.ay, %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.i ], [ %i.aa, %bb.j ] ; 2 uses
  %i.ba = icmp slt i32 %.261.i, %i.r
  br i1 %i.ba, label %.lr.ph81.split.i, label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit, !llvm.loop !0

_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split: ; preds = %bb.i, %_ZNK6icu_7815SimpleFormatter16getArgumentLimitEv.exit.i
  store i32 1, ptr %5, align 4, !tbaa !10
  br label %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit

_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit: ; preds = %bb.l, %_ZNK6icu_7815SimpleFormatter15formatAndAppendEPKPKNS_13UnicodeStringEiRS1_PiiR10UErrorCode.exit.sink.split, %.preheader78.i, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr %4
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7815SimpleFormatter6formatEPKDsiPKPKNS_13UnicodeStringERS3_S5_aPiiR10UErrorCode(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull returned align 8 dereferenceable(64) %3, ptr noundef %4, i8 noundef signext %5, ptr nofree noundef writeonly captures(none) %6, i32 noundef %7, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %8, align 4, !tbaa !10
  %i.b = icmp slt i32 %i.a, 1
  br i1 %i.b, label %.preheader78, label %.loopexit

.preheader78:                                     ; preds = %bb.a
  %i.c = icmp sgt i32 %7, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader78
  %i.d = zext nneg i32 %7 to i64
  %i.e = shl nuw nsw i64 %i.d, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %6, i8 -1, i64 %i.e, i1 false), !tbaa !19
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %.preheader78
  %i.f = icmp sgt i32 %1, 1
  br i1 %i.f, label %.lr.ph81, label %.loopexit

.lr.ph81:                                         ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 3 uses
  %.not68 = icmp eq i8 %5, 0
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 12
  br i1 %.not68, label %.lr.ph81.split.us, label %.lr.ph81.split

.lr.ph81.split.us:                                ; preds = %.lr.ph81, %bb.n
  %.05980.us = phi i32 [ %.261.us, %bb.n ], [ 1, %.lr.ph81 ] ; 2 uses
  %i.k = add nsw i32 %.05980.us, 1                ; 5 uses
  %i.l = sext i32 %.05980.us to i64
  %i.m = getelementptr inbounds [2 x i8], ptr %0, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2, !tbaa !13   ; 3 uses
  %i.o = zext i16 %i.n to i32                     ; 3 uses
  %i.p = icmp ult i16 %i.n, 256
  br i1 %i.p, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph81.split.us
  %i.q = add nsw i32 %i.o, -256                   ; 2 uses
  %i.r = sext i32 %i.k to i64
  %i.s = getelementptr inbounds [2 x i8], ptr %0, i64 %i.r ; 3 uses
  %i.t = invoke noundef nonnull align 8 dereferenceable(64) ptr @_ZN6icu_7813UnicodeString8doAppendEPKDsii(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %i.s, i32 noundef 0, i32 noundef %i.q)
          to label %_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.us unwind label %.split.us ; 0 uses

_ZN6icu_7813UnicodeString6appendENS_14ConstChar16PtrEi.exit.us: ; preds = %bb.b
  tail call void asm sideeffect "", "rm,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr %i.s) #7, !srcloc !15
  %i.u = add nsw i32 %i.q, %i.k
  br label %bb.n

bb.c:                                             ; preds = %.lr.ph81.split.us
  %i.v = zext nneg i16 %i.n to i64                ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.v
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !18   ; 5 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.loopexit.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = icmp eq ptr %i.x, %3
  br i1 %i.z, label %bb.h, label %bb.e
end_hunk_0
