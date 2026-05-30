inline.NumInlined: 1116
inline.NumDeleted: 393
begin_hunk_0_@_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE:bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !39
  %i.ah = add i32 %i.f, -1
  store i32 %i.ah, ptr %i.a, align 8, !tbaa !55
  br label %.thread48

bb.f:                                             ; preds = %bb.b
  %.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -20
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -16
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.i, i64 -8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !159 ; 2 uses
  %i.ai = add i32 %i.f, -1
  store i32 %i.ai, ptr %i.a, align 8, !tbaa !55
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.4.0.copyload, 32
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 1
  %i.ak = load i32, ptr %i.aj, align 1, !tbaa !140
  %i.al = zext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !53
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store i64 %.sroa.4.0.copyload, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %.sroa.3.0.copyload, ptr %i.ao, align 8, !tbaa !39
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !30
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %.sroa.2.0.extract.shift.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !56
  %i.at = tail call noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull %2, ptr noundef %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(1552) %1)
  %i.au = zext i8 %i.at to i16
  %i.av = or disjoint i16 %i.au, 256
  br label %.thread48

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.aw = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29 ; 2 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load i8, ptr %i.c, align 8, !tbaa !88, !range !89, !noundef !90
  %i.bc = trunc nuw i8 %i.bb to i1                ; 2 uses
  %i.bd = icmp eq i8 %i.k, 4
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.bf = select i1 %i.bc, i64 -1, i64 1
  %i.bg = getelementptr inbounds [2 x i8], ptr %i.az, i64 %i.bf ; 2 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.bi = select i1 %i.bc, i64 1, i64 -1
  %i.bj = getelementptr inbounds [2 x i8], ptr %i.ax, i64 %i.bi ; 2 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi ptr [ %i.bg, %bb.i ], [ %i.bj, %bb.j ]
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sink, ptr %i.bk, align 8, !tbaa !56
  %i.bl = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !39
  br label %.thread48

.sink.split:                                      ; preds = %bb.g, %bb.d, %bb.c
  %.sink108 = phi i32 [ %i.s, %bb.c ], [ %i.aa, %bb.d ], [ %i.f, %bb.g ]
  %i.bo = add i32 %.sink108, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.b
  %i.bp = phi i32 [ %i.f, %bb.b ], [ %i.bo, %.sink.split ] ; 2 uses
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %.thread48, label %bb.b

.thread48:                                        ; preds = %bb.l, %bb.a, %bb.f, %bb.k, %bb.e
  %.sroa.6.4 = phi i16 [ 256, %bb.e ], [ 256, %bb.k ], [ %i.av, %bb.f ], [ 0, %bb.a ], [ 0, %bb.l ]
  ret i16 %.sroa.6.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6hermes5regex18bracketMatchesCharINS0_16UTF16RegexTraitsEEEbRKNS0_7ContextIT_EEPKNS0_11BracketInsnEPKNS0_14BracketRange32ENS4_9CodePointE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.b = load i8, ptr %i.a, align 1               ; 9 uses
  %i.c = and i8 %i.b, 126
  %or.cond = icmp eq i8 %i.c, 0
  br i1 %or.cond, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %3, -33
  %i.e = add i32 %i.d, -65
  %or.cond17.i = icmp ult i32 %i.e, 26
  %i.f = add i32 %3, -48
  %or.cond5.i = icmp ult i32 %i.f, 10             ; 3 uses
  %i.g = icmp eq i32 %3, 95
  %i.h = or i1 %or.cond17.i, %i.g
  %i.i = or i1 %i.h, %or.cond5.i                  ; 2 uses
  %i.j = add i32 %3, -8192
  %or.cond13.i.i = icmp ult i32 %i.j, 11          ; 2 uses
  %i.k = and i8 %i.b, 2
  %.not35 = icmp eq i8 %i.k, 0
  %i.l = and i8 %i.b, 16                          ; 2 uses
  br i1 %.not35, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not3659 = icmp ne i8 %i.l, 0
  %or.cond61.not = or i1 %.not3659, %or.cond5.i
  br i1 %or.cond61.not, label %.thread55, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46: ; preds = %bb.b
  %.not36 = icmp eq i8 %i.l, 0
  %brmerge = or i1 %.not36, %or.cond5.i
  br i1 %brmerge, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread, label %.thread55

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread: ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46, %bb.c
  %i.m = and i8 %i.b, 4
  %.not35.1 = icmp eq i8 %i.m, 0
  br i1 %.not35.1, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.1, label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread
  switch i32 %3, label %bb.e [
    i32 65279, label %.thread55
    i32 5760, label %.thread55
    i32 160, label %.thread55
    i32 32, label %.thread55
    i32 12, label %.thread55
    i32 11, label %.thread55
    i32 9, label %.thread55
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %or.cond13.i.i, label %.thread55, label %switch.early.test.i.i.1

switch.early.test.i.i.1:                          ; preds = %bb.e
  switch i32 %3, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.1 [
    i32 8287, label %.thread55
    i32 8239, label %.thread55
    i32 12288, label %.thread55
    i32 8232, label %.thread55
    i32 13, label %.thread55
    i32 10, label %.thread55
    i32 8233, label %.thread55
  ]

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.1: ; preds = %switch.early.test.i.i.1, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread
  %i.n = and i8 %i.b, 32
  %.not36.1 = icmp eq i8 %i.n, 0
  br i1 %.not36.1, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.1
  switch i32 %3, label %bb.g [
    i32 65279, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 5760, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 160, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 32, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 12, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 11, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 9, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
  ]

bb.g:                                             ; preds = %bb.f
  br i1 %or.cond13.i.i, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1, label %switch.early.test.i.i42.1

switch.early.test.i.i42.1:                        ; preds = %bb.g
  switch i32 %3, label %.thread55 [
    i32 8287, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 8239, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 12288, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 8232, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 13, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 10, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
    i32 8233, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
  ]

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1: ; preds = %switch.early.test.i.i42.1, %switch.early.test.i.i42.1, %switch.early.test.i.i42.1, %switch.early.test.i.i42.1, %switch.early.test.i.i42.1, %switch.early.test.i.i42.1, %switch.early.test.i.i42.1, %bb.g, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.1
  %i.o = and i8 %i.b, 8
  %.not35.2 = icmp eq i8 %i.o, 0
  %i.p = and i8 %i.b, 64                          ; 2 uses
  br i1 %.not35.2, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.2, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.2

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.2: ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
  %.not36.260 = icmp ne i8 %i.p, 0
  %or.cond62.not = or i1 %.not36.260, %i.i
  br i1 %or.cond62.not, label %.thread55, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.2: ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.1
  %.not36.2 = icmp eq i8 %i.p, 0
  %brmerge63 = or i1 %.not36.2, %i.i
  br i1 %brmerge63, label %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2, label %.thread55

.thread55:                                        ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.2, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.2, %switch.early.test.i.i42.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %switch.early.test.i.i.1, %bb.e, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.c
  %.2.ph.in = and i8 %i.b, 1
  %.2.ph = icmp eq i8 %.2.ph.in, 0
  br label %bb.i

_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2: ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.thread46.2, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit.2, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.r = load i32, ptr %i.q, align 1, !tbaa !118  ; 2 uses
  %i.s = zext i32 %i.r to i64
  %.idx.i.i = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %.not20.not.i.i = icmp eq i32 %i.r, 0
  br i1 %.not20.not.i.i, label %_ZNK6hermes5regex16UTF16RegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEj.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2, %.critedge.i.i
  %.01421.i.i = phi ptr [ %i.x, %.critedge.i.i ], [ %2, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2 ] ; 3 uses
  %i.u = load i32, ptr %.01421.i.i, align 1, !tbaa !161
  %.not16.i.i = icmp ugt i32 %i.u, %3
  br i1 %.not16.i.i, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.01421.i.i, i64 4
  %i.w = load i32, ptr %i.v, align 1, !tbaa !163
  %.not17.i.i = icmp ugt i32 %3, %i.w
  br i1 %.not17.i.i, label %.critedge.i.i, label %_ZNK6hermes5regex16UTF16RegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEj.exit

.critedge.i.i:                                    ; preds = %bb.h, %.lr.ph.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.01421.i.i, i64 8 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.x, %i.t
  br i1 %.not.not.i.i, label %_ZNK6hermes5regex16UTF16RegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEj.exit, label %.lr.ph.i.i

_ZNK6hermes5regex16UTF16RegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEj.exit: ; preds = %bb.h, %.critedge.i.i, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2
  %.not.lcssa.i.i = phi i1 [ false, %_ZNK6hermes5regex16UTF16RegexTraits16characterHasTypeEjNS0_14CharacterClass4TypeE.exit43.thread.2 ], [ false, %.critedge.i.i ], [ true, %bb.h ]
  %i.y = trunc i8 %i.b to i1
  %i.z = xor i1 %.not.lcssa.i.i, %i.y
  br label %bb.i

bb.i:                                             ; preds = %.thread55, %_ZNK6hermes5regex16UTF16RegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEj.exit
  %.3 = phi i1 [ %i.z, %_ZNK6hermes5regex16UTF16RegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEj.exit ], [ %.2.ph, %.thread55 ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1552) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i32, ptr %i.a, align 1, !tbaa !140  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = zext i32 %i.b to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d ; 4 uses
  %i.g = trunc i32 %i.b to i16
  %.sroa.09.0.copyload = load i64, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !55
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i: ; preds = %bb.b, %bb.a
  %i.m = phi i32 [ %.pre.i.i, %bb.b ], [ %i.i, %bb.a ]
  %i.n = load ptr, ptr %3, align 8, !tbaa !53
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.o ; 3 uses
  store i8 1, ptr %i.p, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i16 %i.g, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i64 %.sroa.09.0.copyload, ptr %.sroa.6.0..sroa_idx, align 1
  %i.q = load i32, ptr %i.h, align 8, !tbaa !55
  %i.r = add i32 %i.q, 1                          ; 2 uses
  store i32 %i.r, ptr %i.h, align 8, !tbaa !55
  %i.s = icmp ugt i32 %i.r, 16777216
  br i1 %i.s, label %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread, label %bb.c, !prof !115

bb.c:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !35   ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread, label %bb.d, !prof !115

bb.d:                                             ; preds = %bb.c
  %i.w = add i32 %i.u, -1
  store i32 %i.w, ptr %i.t, align 8, !tbaa !35
  %i.x = load i32, ptr %i.f, align 4, !tbaa !142
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.f, align 4, !tbaa !142
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56
  %i.ab = load ptr, ptr %1, align 8, !tbaa !83
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 1
  %i.ag = trunc i64 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.ag, ptr %i.ah, align 4, !tbaa !149
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.aj = load i16, ptr %i.ai, align 1, !tbaa !164 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 15 ; 2 uses
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !165
  %.not3362.not = icmp eq i16 %i.aj, %i.al
  br i1 %.not3362.not, label %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.am = zext i16 %i.aj to i32
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %.03063 = phi i32 [ %i.am, %.lr.ph ], [ %i.bf, %bb.h ] ; 3 uses
  %i.ap = zext i32 %.03063 to i64
  %i.aq = load ptr, ptr %i.an, align 8, !tbaa !53
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.ap ; 3 uses
  %i.as = trunc i32 %.03063 to i16
  %.sroa.02.0.copyload = load i64, ptr %i.ar, align 4
  %i.at = load i32, ptr %i.h, align 8, !tbaa !55  ; 2 uses
  %i.au = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i35 = icmp ult i32 %i.at, %i.au
  br i1 %.not.i.i35, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i37, label %bb.f, !prof !86

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.ao, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i36 = load i32, ptr %i.h, align 8, !tbaa !55
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i37

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i37: ; preds = %bb.f, %bb.e
  %i.av = phi i32 [ %.pre.i.i36, %bb.f ], [ %i.at, %bb.e ]
  %i.aw = load ptr, ptr %3, align 8, !tbaa !53
  %i.ax = zext i32 %i.av to i64
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ax ; 3 uses
  store i8 0, ptr %i.ay, align 1
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  store i16 %i.as, ptr %.sroa.551.0..sroa_idx, align 1
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store i64 %.sroa.02.0.copyload, ptr %.sroa.652.0..sroa_idx, align 1
  %i.az = load i32, ptr %i.h, align 8, !tbaa !55
  %i.ba = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %i.h, align 8, !tbaa !55
  %i.bb = icmp ugt i32 %i.ba, 16777216
  br i1 %i.bb, label %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread, label %bb.g, !prof !115

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i37
  %i.bc = load i32, ptr %i.t, align 8, !tbaa !35  ; 2 uses
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread, label %bb.h, !prof !115

bb.h:                                             ; preds = %bb.g
  %i.be = add i32 %i.bc, -1
  store i32 %i.be, ptr %i.t, align 8, !tbaa !35
  store i32 -1, ptr %i.ar, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i32 -1, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !3
  %i.bf = add i32 %.03063, 1                      ; 2 uses
  %i.bg = load i16, ptr %i.ak, align 1, !tbaa !165
  %i.bh = zext i16 %i.bg to i32
  %.not33.not = icmp eq i32 %i.bf, %i.bh
  br i1 %.not33.not, label %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread, label %bb.e, !llvm.loop !166

_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i37, %bb.g, %bb.h, %bb.d, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i, %bb.c
  %.3 = phi i8 [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16UTF16RegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i37 ], [ 1, %bb.g ], [ 0, %bb.h ]
  ret i8 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE15matchWidth1LoopEPKNS0_14Width1LoopInsnEPNS0_5StateIS2_EERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1552) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !36
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !36
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !36 ; 8 uses
  %.sroa.13146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.13146.0.copyload = load i8, ptr %.sroa.13146.0..sroa_idx, align 8, !tbaa !37 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.b = load i32, ptr %i.a, align 1, !tbaa !167  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.d = load i32, ptr %i.c, align 1, !tbaa !169
  %i.e = trunc nuw i8 %.sroa.13146.0.copyload to i1 ; 8 uses
  %.sink3.i = select i1 %i.e, ptr %.sroa.11.0.copyload, ptr %.sroa.12.0.copyload
  %.sink2.i = select i1 %i.e, ptr %.sroa.12.0.copyload, ptr %.sroa.0.0.copyload
  %i.f = ptrtoint ptr %.sink3.i to i64
  %i.g = ptrtoint ptr %.sink2.i to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = lshr exact i64 %i.h, 1
  %i.j = trunc i64 %i.i to i32
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.j) ; 19 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1, !tbaa !157
  switch i8 %i.l, label %_ZN6hermes5regex7ContextINS0_16UTF16RegexTraitsEE19matchWidth1LoopBodyILNS0_12Width1OpcodeE7EEEjPKNS0_4InsnENS0_6CursorIS2_EEj.exit [
    i8 7, label %bb.b
    i8 8, label %bb.e
    i8 12, label %bb.h
    i8 13, label %bb.m
    i8 3, label %bb.r
end_hunk_0
begin_hunk_1_@_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE9backtrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEEPNS0_5StateIS2_EE:bb.a
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.al
  store i64 %.sroa.4.0.copyload, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %.sroa.3.0.copyload, ptr %i.ao, align 8, !tbaa !75
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !70
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %.sroa.2.0.extract.shift.i
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !78
  %i.at = tail call noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %2, ptr noundef %.sroa.5.0.copyload, ptr noundef nonnull align 8 dereferenceable(1552) %1)
  %i.au = zext i8 %i.at to i16
  %i.av = or disjoint i16 %i.au, 256
  br label %.thread48

bb.g:                                             ; preds = %bb.b, %bb.b
  %i.aw = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !29 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !29 ; 2 uses
  %i.ba = icmp eq ptr %i.ax, %i.az
  br i1 %i.ba, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = load i8, ptr %i.c, align 8, !tbaa !183, !range !89, !noundef !90
  %i.bc = trunc nuw i8 %i.bb to i1                ; 2 uses
  %i.bd = icmp eq i8 %i.k, 4
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds i8, ptr %i.i, i64 -8
  %i.bf = select i1 %i.bc, i64 -1, i64 1
  %i.bg = getelementptr inbounds i8, ptr %i.az, i64 %i.bf ; 2 uses
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !29
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds i8, ptr %i.i, i64 -16
  %i.bi = select i1 %i.bc, i64 1, i64 -1
  %i.bj = getelementptr inbounds i8, ptr %i.ax, i64 %i.bi ; 2 uses
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !29
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink = phi ptr [ %i.bg, %bb.i ], [ %i.bj, %bb.j ]
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.sink, ptr %i.bk, align 8, !tbaa !78
  %i.bl = getelementptr inbounds i8, ptr %i.i, i64 -20
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !29
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !75
  br label %.thread48

.sink.split:                                      ; preds = %bb.g, %bb.d, %bb.c
  %.sink108 = phi i32 [ %i.s, %bb.c ], [ %i.aa, %bb.d ], [ %i.f, %bb.g ]
  %i.bo = add i32 %.sink108, -1                   ; 2 uses
  store i32 %i.bo, ptr %i.a, align 8, !tbaa !55
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.b
  %i.bp = phi i32 [ %i.f, %bb.b ], [ %i.bo, %.sink.split ] ; 2 uses
  %.not.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i, label %.thread48, label %bb.b

.thread48:                                        ; preds = %bb.l, %bb.a, %bb.f, %bb.k, %bb.e
  %.sroa.6.4 = phi i16 [ 256, %bb.e ], [ 256, %bb.k ], [ %i.av, %bb.f ], [ 0, %bb.a ], [ 0, %bb.l ]
  ret i16 %.sroa.6.4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN6hermes5regex18bracketMatchesCharINS0_16ASCIIRegexTraitsEEEbRKNS0_7ContextIT_EEPKNS0_11BracketInsnEPKNS0_14BracketRange32ENS4_9CodePointE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.b = load i8, ptr %i.a, align 1               ; 14 uses
  %i.c = and i8 %i.b, 126
  %or.cond = icmp eq i8 %i.c, 0
  br i1 %or.cond, label %.split61.us, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %3, -33
  %i.e = add i8 %i.d, -65
  %or.cond19.i = icmp ult i8 %i.e, 26
  %i.f = add i8 %3, -48
  %or.cond8.i = icmp ult i8 %i.f, 10              ; 3 uses
  %i.g = icmp eq i8 %3, 95
  %i.h = or i1 %or.cond19.i, %i.g
  %i.i = or i1 %i.h, %or.cond8.i
  br i1 %i.i, label %.split.us.preheader, label %.split

.split.us.preheader:                              ; preds = %bb.b
  %i.j = and i8 %i.b, 2
  %.not35.us = icmp eq i8 %i.j, 0
  %i.k = and i8 %i.b, 16                          ; 2 uses
  br i1 %.not35.us, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us, label %bb.c

bb.c:                                             ; preds = %.split.us.preheader
  %.not36.us125 = icmp ne i8 %i.k, 0
  %or.cond126.not = or i1 %.not36.us125, %or.cond8.i
  br i1 %or.cond126.not, label %.thread53, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us: ; preds = %.split.us.preheader
  %.not36.us = icmp eq i8 %i.k, 0
  %brmerge = or i1 %.not36.us, %or.cond8.i
  br i1 %brmerge, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us, label %.thread53

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us: ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us, %bb.c
  %i.l = and i8 %i.b, 4
  %.not35.us.1 = icmp eq i8 %i.l, 0
  br i1 %.not35.us.1, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us.1, label %bb.d

bb.d:                                             ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us
  switch i8 %3, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us.1 [
    i8 32, label %.thread53
    i8 9, label %.thread53
    i8 13, label %.thread53
    i8 10, label %.thread53
    i8 11, label %.thread53
    i8 12, label %.thread53
  ]

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us.1: ; preds = %bb.d, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us
  %i.m = and i8 %i.b, 32
  %.not36.us.1 = icmp eq i8 %i.m, 0
  br i1 %.not36.us.1, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1, label %bb.e

bb.e:                                             ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us.1
  switch i8 %3, label %.thread53 [
    i8 32, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
    i8 9, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
    i8 13, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
    i8 10, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
    i8 11, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
    i8 12, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
  ]

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1: ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us.1
  %i.n = and i8 %i.b, 8
  %.not35.us.2 = icmp eq i8 %i.n, 0
  br i1 %.not35.us.2, label %.split61.us, label %.thread53

.split:                                           ; preds = %bb.b
  switch i8 %3, label %.split.split.split.split.preheader [
    i8 32, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
    i8 9, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
    i8 13, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
    i8 10, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
    i8 11, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
    i8 12, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
  ]

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67: ; preds = %.split, %.split, %.split, %.split, %.split, %.split
  %i.o = and i8 %i.b, 20
  %or.cond127 = icmp eq i8 %i.o, 0
  br i1 %or.cond127, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.1, label %.thread53

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.1: ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67
  %i.p = and i8 %i.b, 32
  %.not36.us68.1 = icmp eq i8 %i.p, 0
  br i1 %.not36.us68.1, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2, label %bb.f

bb.f:                                             ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.1
  switch i8 %3, label %.thread53 [
    i8 32, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2
    i8 9, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2
    i8 13, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2
    i8 10, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2
    i8 11, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2
    i8 12, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2
  ]

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2: ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.1, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f, %bb.f
  %i.q = and i8 %i.b, 64
  %.not36.us68.2 = icmp eq i8 %i.q, 0
  br i1 %.not36.us68.2, label %.split61.us, label %.thread53

.split.split.split.split.preheader:               ; preds = %.split
  %i.r = and i8 %i.b, 16
  %.not36 = icmp eq i8 %i.r, 0
  br i1 %.not36, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread, label %.thread53

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread: ; preds = %.split.split.split.split.preheader
  %i.s = and i8 %i.b, 32
  %.not36.1 = icmp eq i8 %i.s, 0
  br i1 %.not36.1, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1, label %bb.g

bb.g:                                             ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread
  switch i8 %3, label %.thread53 [
    i8 32, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1
    i8 9, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1
    i8 13, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1
    i8 10, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1
    i8 11, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1
    i8 12, label %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1
  ]

_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1: ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread
  %i.t = and i8 %i.b, 64
  %.not36.2 = icmp eq i8 %i.t, 0
  br i1 %.not36.2, label %.split61.us, label %.thread53

.thread53:                                        ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us, %bb.f, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2, %bb.g, %.split.split.split.split.preheader, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1, %bb.c, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.e, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1
  %.2.ph.in = and i8 %i.b, 1
  %.2.ph = icmp eq i8 %.2.ph.in, 0
  br label %bb.i

.split61.us:                                      ; preds = %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.us.1, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit.thread44.us67.2, %_ZNK6hermes5regex16ASCIIRegexTraits16characterHasTypeEhNS0_14CharacterClass4TypeE.exit41.thread.1, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.v = load i32, ptr %i.u, align 1, !tbaa !118  ; 2 uses
  %i.w = zext i32 %i.v to i64
  %i.x = zext i8 %3 to i32                        ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.w, 3
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i.i
  %.not20.not.i.i = icmp eq i32 %i.v, 0
  br i1 %.not20.not.i.i, label %_ZNK6hermes5regex16ASCIIRegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEDs.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.split61.us, %.critedge.i.i
  %.01421.i.i = phi ptr [ %i.ac, %.critedge.i.i ], [ %2, %.split61.us ] ; 3 uses
  %i.z = load i32, ptr %.01421.i.i, align 1, !tbaa !161
  %.not16.i.i = icmp ugt i32 %i.z, %i.x
  br i1 %.not16.i.i, label %.critedge.i.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.01421.i.i, i64 4
  %i.ab = load i32, ptr %i.aa, align 1, !tbaa !163
  %.not17.i.i = icmp ult i32 %i.ab, %i.x
  br i1 %.not17.i.i, label %.critedge.i.i, label %_ZNK6hermes5regex16ASCIIRegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEDs.exit

.critedge.i.i:                                    ; preds = %bb.h, %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.01421.i.i, i64 8 ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ac, %i.y
  br i1 %.not.not.i.i, label %_ZNK6hermes5regex16ASCIIRegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEDs.exit, label %.lr.ph.i.i

_ZNK6hermes5regex16ASCIIRegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEDs.exit: ; preds = %bb.h, %.critedge.i.i, %.split61.us
  %.not.lcssa.i.i = phi i1 [ false, %.split61.us ], [ false, %.critedge.i.i ], [ true, %bb.h ]
  %i.ad = trunc i8 %i.b to i1
  %i.ae = xor i1 %.not.lcssa.i.i, %i.ad
  br label %bb.i

bb.i:                                             ; preds = %.thread53, %_ZNK6hermes5regex16ASCIIRegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEDs.exit
  %.3 = phi i1 [ %i.ae, %_ZNK6hermes5regex16ASCIIRegexTraits13rangesContainEN4llvh8ArrayRefINS0_14BracketRange32EEEDs.exit ], [ %.2.ph, %.thread53 ]
  ret i1 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE22prepareToEnterLoopBodyEPNS0_5StateIS2_EEPKNS0_13BeginLoopInsnERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1552) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i32, ptr %i.a, align 1, !tbaa !140  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = zext i32 %i.b to i64
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.d ; 4 uses
  %i.g = trunc i32 %i.b to i16
  %.sroa.09.0.copyload = load i64, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !55   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i = icmp ult i32 %i.i, %i.k
  br i1 %.not.i.i, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i, label %bb.b, !prof !86

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.l, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i = load i32, ptr %i.h, align 8, !tbaa !55
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i: ; preds = %bb.b, %bb.a
  %i.m = phi i32 [ %.pre.i.i, %bb.b ], [ %i.i, %bb.a ]
  %i.n = load ptr, ptr %3, align 8, !tbaa !53
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.o ; 3 uses
  store i8 1, ptr %i.p, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i16 %i.g, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i64 %.sroa.09.0.copyload, ptr %.sroa.6.0..sroa_idx, align 1
  %i.q = load i32, ptr %i.h, align 8, !tbaa !55
  %i.r = add i32 %i.q, 1                          ; 2 uses
  store i32 %i.r, ptr %i.h, align 8, !tbaa !55
  %i.s = icmp ugt i32 %i.r, 16777216
  br i1 %i.s, label %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread, label %bb.c, !prof !115

bb.c:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !74   ; 2 uses
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread, label %bb.d, !prof !115

bb.d:                                             ; preds = %bb.c
  %i.w = add i32 %i.u, -1
  store i32 %i.w, ptr %i.t, align 4, !tbaa !74
  %i.x = load i32, ptr %i.f, align 4, !tbaa !142
  %i.y = add i32 %i.x, 1
  store i32 %i.y, ptr %i.f, align 4, !tbaa !142
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78
  %i.ab = load ptr, ptr %1, align 8, !tbaa !181
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = trunc i64 %i.ae to i32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !149
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 13
  %i.ai = load i16, ptr %i.ah, align 1, !tbaa !164 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 15 ; 2 uses
  %i.ak = load i16, ptr %i.aj, align 1, !tbaa !165
  %.not3362.not = icmp eq i16 %i.ai, %i.ak
  br i1 %.not3362.not, label %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.al = zext i16 %i.ai to i32
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %.03063 = phi i32 [ %i.al, %.lr.ph ], [ %i.be, %bb.h ] ; 3 uses
  %i.ao = zext i32 %.03063 to i64
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ao ; 3 uses
  %i.ar = trunc i32 %.03063 to i16
  %.sroa.02.0.copyload = load i64, ptr %i.aq, align 4
  %i.as = load i32, ptr %i.h, align 8, !tbaa !55  ; 2 uses
  %i.at = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i35 = icmp ult i32 %i.as, %i.at
  br i1 %.not.i.i35, label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i37, label %bb.f, !prof !86

bb.f:                                             ; preds = %bb.e
  tail call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(1552) %3, ptr noundef nonnull %i.an, i64 noundef 0, i64 noundef 24) #10
  %.pre.i.i36 = load i32, ptr %i.h, align 8, !tbaa !55
  br label %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i37

_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i37: ; preds = %bb.f, %bb.e
  %i.au = phi i32 [ %.pre.i.i36, %bb.f ], [ %i.as, %bb.e ]
  %i.av = load ptr, ptr %3, align 8, !tbaa !53
  %i.aw = zext i32 %i.au to i64
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.av, i64 %i.aw ; 3 uses
  store i8 0, ptr %i.ax, align 1
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  store i16 %i.ar, ptr %.sroa.551.0..sroa_idx, align 1
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i64 %.sroa.02.0.copyload, ptr %.sroa.652.0..sroa_idx, align 1
  %i.ay = load i32, ptr %i.h, align 8, !tbaa !55
  %i.az = add i32 %i.ay, 1                        ; 2 uses
  store i32 %i.az, ptr %i.h, align 8, !tbaa !55
  %i.ba = icmp ugt i32 %i.az, 16777216
  br i1 %i.ba, label %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread, label %bb.g, !prof !115

bb.g:                                             ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i37
  %i.bb = load i32, ptr %i.t, align 4, !tbaa !74  ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread, label %bb.h, !prof !115

bb.h:                                             ; preds = %bb.g
  %i.bd = add i32 %i.bb, -1
  store i32 %i.bd, ptr %i.t, align 4, !tbaa !74
  store i32 -1, ptr %i.aq, align 4, !tbaa !3
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 -1, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !3
  %i.be = add i32 %.03063, 1                      ; 2 uses
  %i.bf = load i16, ptr %i.aj, align 1, !tbaa !165
  %i.bg = zext i16 %i.bf to i32
  %.not33.not = icmp eq i32 %i.be, %i.bg
  br i1 %.not33.not, label %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread, label %bb.e, !llvm.loop !189

_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE13pushBacktrackERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEES6_.exit.thread: ; preds = %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i37, %bb.g, %bb.h, %bb.d, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i, %bb.c
  %.3 = phi i8 [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i ], [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %_ZN4llvh23SmallVectorTemplateBaseIN6hermes5regex7ContextINS2_16ASCIIRegexTraitsEE13BacktrackInsnELb1EE9push_backERKS6_.exit.i37 ], [ 1, %bb.g ], [ 0, %bb.h ]
  ret i8 %.3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden i16 @_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE15matchWidth1LoopEPKNS0_14Width1LoopInsnEPNS0_5StateIS2_EERN4llvh11SmallVectorINS3_13BacktrackInsnELj64EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(1552) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !tbaa !13
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.11.0.copyload = load ptr, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !13
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %.sroa.12.0.copyload = load ptr, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !13 ; 8 uses
  %.sroa.13142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %.sroa.13142.0.copyload = load i8, ptr %.sroa.13142.0..sroa_idx, align 8, !tbaa !37 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.b = load i32, ptr %i.a, align 1, !tbaa !167  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.d = load i32, ptr %i.c, align 1, !tbaa !169
  %i.e = trunc nuw i8 %.sroa.13142.0.copyload to i1 ; 8 uses
  %.sink3.i = select i1 %i.e, ptr %.sroa.11.0.copyload, ptr %.sroa.12.0.copyload
  %.sink2.i = select i1 %i.e, ptr %.sroa.12.0.copyload, ptr %.sroa.0.0.copyload
  %i.f = ptrtoint ptr %.sink3.i to i64
  %i.g = ptrtoint ptr %.sink2.i to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = trunc i64 %i.h to i32
  %.sroa.speculated = tail call i32 @llvm.umin.i32(i32 %i.d, i32 %i.i) ; 19 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 18 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !157
  switch i8 %i.k, label %_ZN6hermes5regex7ContextINS0_16ASCIIRegexTraitsEE19matchWidth1LoopBodyILNS0_12Width1OpcodeE7EEEjPKNS0_4InsnENS0_6CursorIS2_EEj.exit [
    i8 7, label %bb.b
    i8 8, label %bb.e
    i8 12, label %bb.h
    i8 13, label %bb.j
    i8 3, label %bb.l
    i8 5, label %bb.m
end_hunk_1
