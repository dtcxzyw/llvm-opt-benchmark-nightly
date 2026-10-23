Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/tokenizer?download=true
inline.NumInlined: 657
inline.NumDeleted: 223
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN6google8protobuf2io9Tokenizer19ConsumeBlockCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54: ; preds = %bb.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52, %bb.bd
  %.pn = phi { ptr, i32 } [ %i.go, %bb.bd ], [ %i.gp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i52 ], [ %i.gp, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bg

bb.bf:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit29.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit48, %_ZN6google8protobuf2io9Tokenizer13StopRecordingEv.exit51, %bb.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5eraseEmm.exit
  ret void

bb.bg:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39
  %.pn25.pn = phi { ptr, i32 } [ %.pn25, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit54 ]
  resume { ptr, i32 } %.pn25.pn
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 0, 4) i32 @_ZN6google8protobuf2io9Tokenizer22TryConsumeCommentStartEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = load i32, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq i8 %i.e, 47
  br i1 %i.f, label %bb.c, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.g = load i8, ptr %i.d, align 8, !tbaa !44
  switch i8 %i.g, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2 [
    i8 47, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread
    i8 42, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread
  ]

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread: ; preds = %bb.c
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread: ; preds = %bb.c
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2: ; preds = %bb.c
  store i32 6, ptr %0, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  %i.k = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 noundef 0, i64 noundef %i.j, ptr noundef nonnull @.str.15, i64 noundef 1) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31
  %i.p = load <2 x i32>, ptr %i.l, align 4, !tbaa !11
  %i.q = add nsw <2 x i32> %i.p, <i32 0, i32 -1>
  store <2 x i32> %i.q, ptr %i.m, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.o, ptr %i.r, align 8, !tbaa !38
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit: ; preds = %bb.a
  %i.s = icmp eq i32 %i.b, 1
  %i.t = icmp eq i8 %i.e, 35
  %or.cond = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread: ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3: ; preds = %bb.b, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2
  %.0 = phi i32 [ 0, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit3.thread ], [ 0, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit1.thread ], [ 2, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2 ], [ 1, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit2.thread ], [ 3, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit ], [ 3, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.b = load i8, ptr %i.a, align 1, !tbaa !55, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !44    ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit [
    i8 32, label %.preheader
    i8 13, label %.preheader
    i8 11, label %.preheader
    i8 9, label %.preheader
    i8 12, label %.preheader
  ]

.preheader:                                       ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.preheader
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.f = load i8, ptr %i.d, align 8, !tbaa !44
  switch i8 %i.f, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit [
    i8 32, label %.backedge
    i8 13, label %.backedge
    i8 11, label %.backedge
    i8 9, label %.backedge
    i8 12, label %.backedge
  ]

.backedge:                                        ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  br label %bb.c, !llvm.loop !3

_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit: ; preds = %bb.c
  store i32 7, ptr %0, align 8, !tbaa !39
  br label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit

bb.d:                                             ; preds = %bb.a
  switch i8 %i.e, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit [
    i8 32, label %.preheader2
    i8 13, label %.preheader2
    i8 11, label %.preheader2
    i8 10, label %.preheader2
    i8 9, label %.preheader2
    i8 12, label %.preheader2
  ]

.preheader2:                                      ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d
  br label %bb.e

bb.e:                                             ; preds = %.backedge3, %.preheader2
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.g = load i8, ptr %i.d, align 8, !tbaa !44
  switch i8 %i.g, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit [
    i8 32, label %.backedge3
    i8 13, label %.backedge3
    i8 11, label %.backedge3
    i8 10, label %.backedge3
    i8 9, label %.backedge3
    i8 12, label %.backedge3
  ]

.backedge3:                                       ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  br label %bb.e, !llvm.loop !85

_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit: ; preds = %bb.e
  store i32 7, ptr %0, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.i = load i8, ptr %i.h, align 2, !tbaa !54, !range !42, !noundef !43
  %i.j = trunc nuw i8 %i.i to i1
  br label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit

_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEbv.exit: ; preds = %bb.d, %bb.b, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit
  %.0 = phi i1 [ true, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit ], [ false, %bb.b ], [ %i.j, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_110WhitespaceEEEvv.exit ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv(ptr noundef nonnull align 8 dereferenceable(192) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 190
  %i.b = load i8, ptr %i.a, align 2, !tbaa !54, !range !42, !noundef !43
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.e = load i8, ptr %i.d, align 1, !range !42
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.h = load i8, ptr %i.g, align 8
  %i.i = icmp eq i8 %i.h, 10
  %or.cond6 = select i1 %or.cond, i1 %i.i, i1 false ; 2 uses
  br i1 %or.cond6, label %bb.b, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  store i32 8, ptr %0, align 8, !tbaa !39
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit: ; preds = %bb.a, %bb.b
  ret i1 %or.cond6
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer4NextEv(ptr noundef nonnull align 8 dereferenceable(192) initializes((56, 60)) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %1 = alloca [1 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 5 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load i32, ptr %0, align 8, !tbaa !40
  store i32 %i.e, ptr %i.d, align 8, !tbaa !40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.h, ptr noundef nonnull align 8 dereferenceable(12) %i.i, i64 12, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 8 uses
  %i.k = load i8, ptr %i.j, align 8, !tbaa !41, !range !42, !noundef !43
  %.not.not143 = icmp eq i8 %i.k, 0
  br i1 %.not.not143, label %.lr.ph, label %.critedge2.thread50

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 12 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 191
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 14 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 190 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.critedge229.backedge, %.lr.ph
  store i32 0, ptr %0, align 8, !tbaa !39
  store i64 0, ptr %i.l, align 8, !tbaa !18
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !53
  store i8 0, ptr %i.ac, align 1, !tbaa !19
  %i.ad = load <2 x i32>, ptr %i.m, align 4, !tbaa !11
  store <2 x i32> %i.ad, ptr %i.i, align 8, !tbaa !11
  store ptr %i.g, ptr %i.p, align 8, !tbaa !32
  %i.ae = load i32, ptr %i.q, align 4, !tbaa !48
  store i32 %i.ae, ptr %i.r, align 8, !tbaa !33
  %i.af = load i8, ptr %i.s, align 1, !tbaa !55, !range !42, !noundef !43
  %i.ag = trunc nuw i8 %i.af to i1
  %i.ah = load i8, ptr %i.t, align 8, !tbaa !44   ; 2 uses
  %switch.tableidx = add i8 %i.ah, -9             ; 5 uses
  %i.ai = icmp ult i8 %switch.tableidx, 24        ; 2 uses
  br i1 %i.ag, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  br i1 %i.ai, label %switch.hole_check, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread

switch.hole_check:                                ; preds = %bb.c
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 8388637, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread

switch.hole_check202:                             ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43
  %switch.maskindex204 = zext nneg i8 %switch.tableidx200 to i32
  %switch.shifted205 = lshr i32 8388637, %switch.maskindex204
  %switch.lobit206 = trunc i32 %switch.shifted205 to i1
  br i1 %switch.lobit206, label %switch.lookup, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47

switch.lookup:                                    ; preds = %switch.hole_check, %switch.hole_check202
  %switch.tableidx200.sink = phi i8 [ %switch.tableidx200, %switch.hole_check202 ], [ %switch.tableidx, %switch.hole_check ]
  %switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.7.sink = phi ptr [ @switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.7, %switch.hole_check202 ], [ @switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.7, %switch.hole_check ]
  %i.aj = zext nneg i8 %switch.tableidx200.sink to i64
  %switch.gep207 = getelementptr inbounds nuw i8, ptr %switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.7.sink, i64 %i.aj
  %switch.load208 = load i8, ptr %switch.gep207, align 1
  switch i8 %switch.load208, label %bb.f [
    i8 10, label %bb.d
    i8 9, label %bb.e
  ]

bb.d:                                             ; preds = %switch.lookup
  %i.ak = load i32, ptr %i.m, align 4, !tbaa !30
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.m, align 4, !tbaa !30
  br label %bb.g

bb.e:                                             ; preds = %switch.lookup
  %i.am = load i32, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  %i.an = srem i32 %i.am, 8
  %reass.sub.i39 = add i32 %i.am, 8
  %i.ao = sub i32 %reass.sub.i39, %i.an
  br label %bb.g

bb.f:                                             ; preds = %switch.lookup
  %i.ap = load i32, ptr %i.n, align 8, !tbaa !31
  %i.aq = add nsw i32 %i.ap, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.sink = phi i32 [ %i.aq, %bb.f ], [ %i.ao, %bb.e ], [ 0, %bb.d ]
  store i32 %.sink, ptr %i.n, align 8, !tbaa !31
  %i.ar = load i32, ptr %i.q, align 4, !tbaa !48
  %i.as = add nsw i32 %i.ar, 1                    ; 3 uses
  store i32 %i.as, ptr %i.q, align 4, !tbaa !48
  %i.at = load i32, ptr %i.u, align 8, !tbaa !45  ; 3 uses
  %i.au = icmp slt i32 %i.as, %i.at
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.aw = sext i32 %i.as to i64
  %i.ax = getelementptr inbounds i8, ptr %i.av, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !19  ; 2 uses
  store i8 %i.ay, ptr %i.t, align 8, !tbaa !44
  br label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43

bb.i:                                             ; preds = %bb.g
  %i.az = load i8, ptr %i.j, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ba = trunc nuw i8 %i.az to i1
  br i1 %i.ba, label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43.thread, label %bb.j

_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43.thread: ; preds = %bb.i
  store i8 0, ptr %i.t, align 8, !tbaa !44
  br label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !32  ; 3 uses
  %.not.i.i40 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i40, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = load i32, ptr %i.r, align 8, !tbaa !33  ; 3 uses
  %i.bd = icmp slt i32 %i.bc, %i.at
  br i1 %i.bd, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.be = sub nsw i32 %i.at, %i.bc
  %i.bf = zext nneg i32 %i.be to i64              ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !18
  %i.bi = sub i64 4611686018427387903, %i.bh
  %i.bj = icmp ult i64 %i.bi, %i.bf
  br i1 %i.bj, label %bb.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i42

bb.m:                                             ; preds = %bb.l
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i42: ; preds = %bb.l
  %i.bk = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.bl = sext i32 %i.bc to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  %i.bn = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef %i.bm, i64 noundef %i.bf) ; 0 uses
  store i32 0, ptr %i.r, align 8, !tbaa !33
  br label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i42, %bb.k, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !47
  store ptr null, ptr %i.v, align 8, !tbaa !46
  store i32 0, ptr %i.q, align 4, !tbaa !48
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %i.bo = load ptr, ptr %i.w, align 8, !tbaa !28  ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !50
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = call noundef zeroext i1 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.bo, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u), !inline_history !57
  br i1 %i.bs, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.u, align 8, !tbaa !45
  store i8 1, ptr %i.j, align 8, !tbaa !41
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bt = load i32, ptr %i.u, align 8, !tbaa !45
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.o, label %bb.r, !llvm.loop !0

bb.r:                                             ; preds = %bb.q
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  store ptr %i.bv, ptr %i.v, align 8, !tbaa !46
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !19
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.sink.i.i41 = phi i8 [ %i.bw, %bb.r ], [ 0, %bb.p ] ; 2 uses
  store i8 %.sink.i.i41, ptr %i.t, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43

_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43: ; preds = %bb.h, %bb.s
  %i.bx = phi i8 [ %i.ay, %bb.h ], [ %.sink.i.i41, %bb.s ]
  %switch.tableidx200 = add i8 %i.bx, -9          ; 3 uses
  %i.by = icmp ult i8 %switch.tableidx200, 24
  br i1 %i.by, label %switch.hole_check202, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47

_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47: ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43, %switch.hole_check202, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit43.thread
  store i32 7, ptr %0, align 8, !tbaa !39
  br label %.critedge15

bb.t:                                             ; preds = %bb.b
  br i1 %i.ai, label %switch.hole_check211, label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit

switch.hole_check211:                             ; preds = %bb.t
  %switch.maskindex213 = zext nneg i8 %switch.tableidx to i32
  %switch.shifted214 = lshr i32 8388639, %switch.maskindex213
  %switch.lobit215 = trunc i32 %switch.shifted214 to i1
  br i1 %switch.lobit215, label %switch.lookup212, label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit

switch.hole_check220:                             ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit
  %switch.maskindex222 = zext nneg i8 %switch.tableidx218 to i32
  %switch.shifted223 = lshr i32 8388639, %switch.maskindex222
  %switch.lobit224 = trunc i32 %switch.shifted223 to i1
  br i1 %switch.lobit224, label %switch.lookup212, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit

switch.lookup212:                                 ; preds = %switch.hole_check211, %switch.hole_check220
  %switch.tableidx218.sink = phi i8 [ %switch.tableidx218, %switch.hole_check220 ], [ %switch.tableidx, %switch.hole_check211 ]
  %switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.9.sink = phi ptr [ @switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.9, %switch.hole_check220 ], [ @switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.9, %switch.hole_check211 ]
  %i.bz = zext nneg i8 %switch.tableidx218.sink to i64
  %switch.gep225 = getelementptr inbounds nuw i8, ptr %switch.table._ZN6google8protobuf2io9Tokenizer4NextEv.9.sink, i64 %i.bz
  %switch.load226 = load i8, ptr %switch.gep225, align 1
  switch i8 %switch.load226, label %bb.w [
    i8 10, label %bb.u
    i8 9, label %bb.v
  ]

bb.u:                                             ; preds = %switch.lookup212
  %i.ca = load i32, ptr %i.m, align 4, !tbaa !30
  %i.cb = add nsw i32 %i.ca, 1
  store i32 %i.cb, ptr %i.m, align 4, !tbaa !30
  br label %bb.x

bb.v:                                             ; preds = %switch.lookup212
  %i.cc = load i32, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  %i.cd = srem i32 %i.cc, 8
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf2io9Tokenizer4NextEv:bb.a
  br i1 %i.dk, label %bb.af, label %bb.ai, !llvm.loop !0

bb.ai:                                            ; preds = %bb.ah
  %i.dl = load ptr, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  store ptr %i.dl, ptr %i.v, align 8, !tbaa !46
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !19
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %.sink.i.i = phi i8 [ %i.dm, %bb.ai ], [ 0, %bb.ag ] ; 2 uses
  store i8 %.sink.i.i, ptr %i.t, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit

_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit: ; preds = %bb.y, %bb.aj
  %i.dn = phi i8 [ %i.co, %bb.y ], [ %.sink.i.i, %bb.aj ]
  %switch.tableidx218 = add i8 %i.dn, -9          ; 3 uses
  %i.do = icmp ult i8 %switch.tableidx218, 24
  br i1 %i.do, label %switch.hole_check220, label %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit

_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit: ; preds = %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit, %switch.hole_check220, %_ZN6google8protobuf2io9Tokenizer8NextCharEv.exit.thread
  store i32 7, ptr %0, align 8, !tbaa !39
  %i.dp = load i8, ptr %i.x, align 2, !tbaa !54, !range !42, !noundef !43
  %i.dq = trunc nuw i8 %i.dp to i1
  br i1 %i.dq, label %.critedge15, label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit

_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread: ; preds = %switch.hole_check, %bb.c
  %i.dr = load i8, ptr %i.x, align 2, !tbaa !54, !range !42, !noundef !43
  %i.ds = trunc nuw i8 %i.dr to i1
  %i.dt = icmp eq i8 %i.ah, 10
  %or.cond6.i = select i1 %i.ds, i1 %i.dt, i1 false
  br i1 %or.cond6.i, label %bb.ak, label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit

bb.ak:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  store i32 8, ptr %0, align 8, !tbaa !39
  br label %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit

_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit: ; preds = %bb.t, %switch.hole_check211, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread, %bb.ak
  %or.cond6.i174 = phi i1 [ true, %bb.ak ], [ false, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread ], [ false, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit ], [ false, %switch.hole_check211 ], [ false, %bb.t ]
  %i.du = load i32, ptr %i.q, align 4, !tbaa !48  ; 2 uses
  %i.dv = load i32, ptr %i.r, align 8, !tbaa !33  ; 3 uses
  %.not.i.i = icmp eq i32 %i.du, %i.dv
  br i1 %.not.i.i, label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit, label %bb.al

bb.al:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit
  %i.dw = load ptr, ptr %i.p, align 8, !tbaa !32  ; 2 uses
  %i.dx = sub nsw i32 %i.du, %i.dv
  %i.dy = sext i32 %i.dx to i64                   ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !18
  %i.eb = sub i64 4611686018427387903, %i.ea
  %i.ec = icmp ult i64 %i.eb, %i.dy
  br i1 %i.ec, label %bb.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

bb.am:                                            ; preds = %bb.al
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.al
  %i.ed = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.ee = sext i32 %i.dv to i64
  %i.ef = getelementptr inbounds i8, ptr %i.ed, i64 %i.ee
  %i.eg = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dw, ptr noundef %i.ef, i64 noundef %i.dy) ; 0 uses
  br label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit

_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit: ; preds = %_ZN6google8protobuf2io9Tokenizer17TryConsumeNewlineEv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  store ptr null, ptr %i.p, align 8, !tbaa !32
  store i32 -1, ptr %i.r, align 8, !tbaa !33
  %i.eh = load i32, ptr %i.n, align 8, !tbaa !31
  store i32 %i.eh, ptr %i.y, align 8, !tbaa !38
  br i1 %or.cond6.i174, label %.critedge2.thread, label %bb.ap

.critedge15:                                      ; preds = %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit, %_ZN6google8protobuf2io9Tokenizer20TryConsumeWhitespaceEv.exit.thread47
  %i.ei = load i32, ptr %i.q, align 4, !tbaa !48  ; 2 uses
  %i.ej = load i32, ptr %i.r, align 8, !tbaa !33  ; 3 uses
  %.not.i.i16 = icmp eq i32 %i.ei, %i.ej
  br i1 %.not.i.i16, label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit18, label %bb.an

bb.an:                                            ; preds = %.critedge15
  %i.ek = load ptr, ptr %i.p, align 8, !tbaa !32  ; 2 uses
  %i.el = sub nsw i32 %i.ei, %i.ej
  %i.em = sext i32 %i.el to i64                   ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.eo = load i64, ptr %i.en, align 8, !tbaa !18
  %i.ep = sub i64 4611686018427387903, %i.eo
  %i.eq = icmp ult i64 %i.ep, %i.em
  br i1 %i.eq, label %bb.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i17

bb.ao:                                            ; preds = %bb.an
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i17: ; preds = %bb.an
  %i.er = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.es = sext i32 %i.ej to i64
  %i.et = getelementptr inbounds i8, ptr %i.er, i64 %i.es
  %i.eu = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ek, ptr noundef %i.et, i64 noundef %i.em) ; 0 uses
  br label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit18

_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit18: ; preds = %.critedge15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i17
  store ptr null, ptr %i.p, align 8, !tbaa !32
  store i32 -1, ptr %i.r, align 8, !tbaa !33
  %i.ev = load i32, ptr %i.n, align 8, !tbaa !31
  store i32 %i.ev, ptr %i.y, align 8, !tbaa !38
  br label %.critedge2.thread

bb.ap:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit
  %i.ew = call noundef i32 @_ZN6google8protobuf2io9Tokenizer22TryConsumeCommentStartEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  switch i32 %i.ew, label %default.unreachable [
    i32 0, label %.preheader
    i32 1, label %bb.as
    i32 2, label %.critedge2.thread
    i32 3, label %bb.at
  ]

.preheader:                                       ; preds = %bb.ap, %bb.aq
  %i.ex = load i8, ptr %i.t, align 8, !tbaa !44
  switch i8 %i.ex, label %bb.aq [
    i8 10, label %bb.ar
    i8 0, label %.critedge2
  ], !llvm.loop !86

bb.aq:                                            ; preds = %.preheader
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %.preheader, !llvm.loop !2

bb.ar:                                            ; preds = %.preheader
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %.critedge2, !llvm.loop !86

bb.as:                                            ; preds = %bb.ap
  call void @_ZN6google8protobuf2io9Tokenizer19ConsumeBlockCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef null)
  br label %.critedge2, !llvm.loop !86

default.unreachable:                              ; preds = %bb.ap
  unreachable

bb.at:                                            ; preds = %bb.ap
  %i.ey = load i8, ptr %i.j, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %.critedge2.thread50, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val = load i8, ptr %i.t, align 8, !tbaa !44
  %or.cond = icmp ult i8 %.val, 32
  br i1 %or.cond, label %.noexc.i, label %bb.ax

.noexc.i:                                         ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr %i.z, ptr %2, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 47, ptr %i.c, align 8, !tbaa !56
  %i.fa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.av    ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.fa, ptr %2, align 8, !tbaa !53
  %i.fb = load i64, ptr %i.c, align 8, !tbaa !56  ; 3 uses
  store i64 %i.fb, ptr %i.z, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %i.fa, ptr noundef nonnull align 1 dereferenceable(47) @.str.16, i64 47, i1 false)
  store i64 %i.fb, ptr %i.aa, align 8, !tbaa !18
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 %i.fb
  store i8 0, ptr %i.fc, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.fd = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.fe = load i32, ptr %i.m, align 4, !tbaa !30
  %i.ff = load i32, ptr %i.n, align 8, !tbaa !31
  %i.fg = load ptr, ptr %2, align 8, !tbaa !53
  %i.fh = load i64, ptr %i.aa, align 8, !tbaa !18
  %i.fi = load ptr, ptr %i.fd, align 8, !tbaa !50
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8
  invoke void %i.fk(ptr noundef nonnull align 8 dereferenceable(8) %i.fd, i32 noundef %i.fe, i32 noundef %i.ff, i64 %i.fh, ptr %i.fg)
          to label %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.aw, !inline_history !1

_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc
  %i.fl = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.fm = icmp eq ptr %i.fl, %i.z
  br i1 %i.fm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.fn = load i64, ptr %i.z, align 8, !tbaa !19
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fl, i64 noundef %i.fo) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %.critedge

.critedge:                                        ; preds = %.critedge.backedge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.fp = load i8, ptr %i.t, align 8, !tbaa !44   ; 2 uses
  %i.fq = add i8 %i.fp, -1
  %i.fr = icmp ult i8 %i.fq, 31
  br i1 %i.fr, label %.critedge.backedge, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_111UnprintableEEEbv.exit

_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_111UnprintableEEEbv.exit: ; preds = %.critedge
  %i.fs = load i8, ptr %i.j, align 8, !tbaa !41, !range !42, !noundef !43
  %4 = trunc nuw i8 %i.fs to i1
  br i1 %4, label %.critedge2.thread50, label %5

5:                                                ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_111UnprintableEEEbv.exit
  %6 = icmp eq i8 %i.fp, 0
  br i1 %6, label %.critedge.backedge, label %.critedge229.backedge

.critedge.backedge:                               ; preds = %5, %.critedge
  br label %.critedge, !llvm.loop !87

bb.av:                                            ; preds = %.noexc.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

bb.aw:                                            ; preds = %.noexc
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fv = load ptr, ptr %2, align 8, !tbaa !53    ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.z
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20: ; preds = %bb.aw
  %i.fx = load i64, ptr %i.z, align 8, !tbaa !19
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22: ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20, %bb.av
  %.pn = phi { ptr, i32 } [ %i.ft, %bb.av ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i20 ], [ %i.fu, %bb.aw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.bp

bb.ax:                                            ; preds = %bb.au
  store i32 0, ptr %0, align 8, !tbaa !39
  store i64 0, ptr %i.l, align 8, !tbaa !18
  %i.fz = load ptr, ptr %i.g, align 8, !tbaa !53
  store i8 0, ptr %i.fz, align 1, !tbaa !19
  %i.ga = load i32, ptr %i.m, align 4, !tbaa !30  ; 2 uses
  store i32 %i.ga, ptr %i.i, align 8, !tbaa !36
  %i.gb = load i32, ptr %i.n, align 8, !tbaa !31  ; 2 uses
  store i32 %i.gb, ptr %i.o, align 4, !tbaa !37
  store ptr %i.g, ptr %i.p, align 8, !tbaa !32
  %i.gc = load i32, ptr %i.q, align 4, !tbaa !48
  store i32 %i.gc, ptr %i.r, align 8, !tbaa !33
  %i.gd = load i8, ptr %i.t, align 8, !tbaa !44   ; 7 uses
  %i.ge = and i8 %i.gd, -33
  %i.gf = add i8 %i.ge, -65
  %or.cond10.i.i = icmp ult i8 %i.gf, 26
  %i.gg = icmp eq i8 %i.gd, 95
  %i.gh = or i1 %i.gg, %or.cond10.i.i
  br i1 %i.gh, label %bb.ay, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_16LetterEEEbv.exit

bb.ay:                                            ; preds = %bb.ax
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.gi = load i8, ptr %i.t, align 8, !tbaa !44   ; 3 uses
  %i.gj = and i8 %i.gi, -33
  %i.gk = add i8 %i.gj, -65
  %or.cond15.i1.i = icmp ult i8 %i.gk, 26
  %i.gl = add i8 %i.gi, -48
  %or.cond8.i2.i = icmp ult i8 %i.gl, 10
  %or.cond16.i3.i = or i1 %or.cond8.i2.i, %or.cond15.i1.i
  %i.gm = icmp eq i8 %i.gi, 95
  %i.gn = or i1 %i.gm, %or.cond16.i3.i
  br i1 %i.gn, label %.lr.ph.i, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

.lr.ph.i:                                         ; preds = %bb.ay, %.lr.ph.i
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.go = load i8, ptr %i.t, align 8, !tbaa !44   ; 3 uses
  %i.gp = and i8 %i.go, -33
  %i.gq = add i8 %i.gp, -65
  %or.cond15.i.i = icmp ult i8 %i.gq, 26
  %i.gr = add i8 %i.go, -48
  %or.cond8.i.i = icmp ult i8 %i.gr, 10
  %or.cond16.i.i = or i1 %or.cond8.i.i, %or.cond15.i.i
  %i.gs = icmp eq i8 %i.go, 95
  %i.gt = or i1 %i.gs, %or.cond16.i.i
  br i1 %i.gt, label %.lr.ph.i, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit, !llvm.loop !88

_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_16LetterEEEbv.exit: ; preds = %bb.ax
  switch i8 %i.gd, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit24 [
    i8 48, label %bb.az
    i8 46, label %bb.ba
  ]

bb.az:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_16LetterEEEbv.exit
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.gu = call noundef i32 @_ZN6google8protobuf2io9Tokenizer13ConsumeNumberEbb(ptr noundef nonnull align 8 dereferenceable(192) %0, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

bb.ba:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_16LetterEEEbv.exit
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.gv = load i8, ptr %i.t, align 8, !tbaa !44
  %i.gw = add i8 %i.gv, -48
  %i.gx = icmp ult i8 %i.gw, 10
  br i1 %i.gx, label %bb.bb, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

bb.bb:                                            ; preds = %bb.ba
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.gy = load i32, ptr %i.d, align 8, !tbaa !91
  %i.gz = icmp eq i32 %i.gy, 2
  br i1 %i.gz, label %bb.bc, label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  %i.ha = load i32, ptr %i.i, align 8, !tbaa !36
  %i.hb = load i32, ptr %i.h, align 8, !tbaa !92
  %i.hc = icmp eq i32 %i.ha, %i.hb
  br i1 %i.hc, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.hd = load i32, ptr %i.o, align 4, !tbaa !37
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !93
  %i.hg = icmp eq i32 %i.hd, %i.hf
  br i1 %i.hg, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.hh = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  %i.hi = load i32, ptr %i.m, align 4, !tbaa !30
  %i.hj = load i32, ptr %i.n, align 8, !tbaa !31
  %i.hk = add nsw i32 %i.hj, -2
  %i.hl = load ptr, ptr %i.hh, align 8, !tbaa !50
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.hn = load ptr, ptr %i.hm, align 8
  call void %i.hn(ptr noundef nonnull align 8 dereferenceable(8) %i.hh, i32 noundef %i.hi, i32 noundef %i.hk, i64 48, ptr nonnull @.str.17)
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb
  %i.ho = call noundef i32 @_ZN6google8protobuf2io9Tokenizer13ConsumeNumberEbb(ptr noundef nonnull align 8 dereferenceable(192) %0, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit24: ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_16LetterEEEbv.exit
  %i.hp = add i8 %i.gd, -48
  %i.hq = icmp ult i8 %i.hp, 10
  br i1 %i.hq, label %bb.bg, label %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_15DigitEEEbv.exit25

bb.bg:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit24
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  %i.hr = call noundef i32 @_ZN6google8protobuf2io9Tokenizer13ConsumeNumberEbb(ptr noundef nonnull align 8 dereferenceable(192) %0, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_15DigitEEEbv.exit25: ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit24
  switch i8 %i.gd, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit27 [
    i8 34, label %bb.bh
    i8 39, label %bb.bi
  ]

bb.bh:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_15DigitEEEbv.exit25
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  call void @_ZN6google8protobuf2io9Tokenizer13ConsumeStringEc(ptr noundef nonnull align 8 dereferenceable(192) %0, i8 noundef signext 34)
  br label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

bb.bi:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_15DigitEEEbv.exit25
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  call void @_ZN6google8protobuf2io9Tokenizer13ConsumeStringEc(ptr noundef nonnull align 8 dereferenceable(192) %0, i8 noundef signext 39)
  br label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit27: ; preds = %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_15DigitEEEbv.exit25
  %.not = icmp sgt i8 %i.gd, -1
  br i1 %.not, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit27
  %i.hs = load ptr, ptr %i.ab, align 8, !tbaa !29 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !94
  %.sroa.0.0.insert.ext.i.i.i.i = zext i8 %i.gd to i64
  %i.ht = inttoptr i64 %.sroa.0.0.insert.ext.i.i.i.i to ptr
  store ptr %i.ht, ptr %1, align 8, !tbaa !19, !noalias !94
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchIhEEbNS2_4DataENS1_24FormatConversionSpecImplEPv, ptr %i.hu, align 8, !tbaa !59, !noalias !94
  call void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr nonnull @.str.18, i64 36, ptr nonnull %1, i64 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !94
  %i.hv = load ptr, ptr %3, align 8, !tbaa !53
  %i.hw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.hx = load i64, ptr %i.hw, align 8, !tbaa !18
  %i.hy = load ptr, ptr %i.hs, align 8, !tbaa !50
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %i.ia = load ptr, ptr %i.hz, align 8
  invoke void %i.ia(ptr noundef nonnull align 8 dereferenceable(8) %i.hs, i32 noundef %i.ga, i32 noundef %i.gb, i64 %i.hx, ptr %i.hv)
          to label %bb.bk unwind label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.ib = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.id = icmp eq ptr %i.ib, %i.ic
  br i1 %i.id, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28: ; preds = %bb.bk
  %i.ie = load i64, ptr %i.ic, align 8, !tbaa !19
  %i.if = add i64 %i.ie, 1
  call void @_ZdlPvm(ptr noundef %i.ib, i64 noundef %i.if) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30: ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bj
  %i.ig = landingpad { ptr, i32 }
          cleanup
  %i.ih = load ptr, ptr %3, align 8, !tbaa !53    ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.bl
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !19
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bp

bb.bm:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit30, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit27
  call void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
  br label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit

_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit: ; preds = %.lr.ph.i, %bb.ba, %bb.ay, %bb.az, %bb.bg, %bb.bi, %bb.bm, %bb.bh, %bb.bf
  %.sink188 = phi i32 [ %i.gu, %bb.az ], [ %i.hr, %bb.bg ], [ 5, %bb.bi ], [ 6, %bb.bm ], [ 5, %bb.bh ], [ %i.ho, %bb.bf ], [ 2, %bb.ay ], [ 6, %bb.ba ], [ 2, %.lr.ph.i ]
  store i32 %.sink188, ptr %0, align 8, !tbaa !39
  %i.im = load i32, ptr %i.q, align 4, !tbaa !48  ; 2 uses
  %i.in = load i32, ptr %i.r, align 8, !tbaa !33  ; 3 uses
  %.not.i.i34 = icmp eq i32 %i.im, %i.in
  br i1 %.not.i.i34, label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit36, label %bb.bn

bb.bn:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit
  %i.io = load ptr, ptr %i.p, align 8, !tbaa !32  ; 2 uses
  %i.ip = sub nsw i32 %i.im, %i.in
  %i.iq = sext i32 %i.ip to i64                   ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 8
  %i.is = load i64, ptr %i.ir, align 8, !tbaa !18
  %i.it = sub i64 4611686018427387903, %i.is
  %i.iu = icmp ult i64 %i.it, %i.iq
  br i1 %i.iu, label %bb.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i35

bb.bo:                                            ; preds = %bb.bn
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i35: ; preds = %bb.bn
  %i.iv = load ptr, ptr %i.v, align 8, !tbaa !46
  %i.iw = sext i32 %i.in to i64
  %i.ix = getelementptr inbounds i8, ptr %i.iv, i64 %i.iw
  %i.iy = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.io, ptr noundef %i.ix, i64 noundef %i.iq) ; 0 uses
  br label %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit36

_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit36: ; preds = %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_112AlphanumericEEEvv.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i35
  store ptr null, ptr %i.p, align 8, !tbaa !32
  store i32 -1, ptr %i.r, align 8, !tbaa !33
  %i.iz = load i32, ptr %i.n, align 8, !tbaa !31
  store i32 %i.iz, ptr %i.y, align 8, !tbaa !38
  br label %.critedge2.thread

.critedge2:                                       ; preds = %.preheader, %bb.as, %bb.ar
  %i.ja = load i8, ptr %i.j, align 8, !tbaa !41
  %7 = icmp eq i8 %i.ja, 0
  br i1 %7, label %.critedge229.backedge, label %.critedge2.thread50

.critedge229.backedge:                            ; preds = %5, %.critedge2
  br label %bb.b

bb.bp:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22
  %.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22 ], [ %i.ig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33 ]
  resume { ptr, i32 } %.pn.pn

.critedge2.thread50:                              ; preds = %.critedge2, %bb.at, %_ZN6google8protobuf2io9Tokenizer13TryConsumeOneINS1_12_GLOBAL__N_111UnprintableEEEbv.exit, %bb.a
  store i32 1, ptr %0, align 8, !tbaa !39
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.jb, align 8, !tbaa !18
  %i.jc = load ptr, ptr %i.g, align 8, !tbaa !53
  store i8 0, ptr %i.jc, align 1, !tbaa !19
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !31
  %i.jg = load <2 x i32>, ptr %i.jd, align 4, !tbaa !11
  store <2 x i32> %i.jg, ptr %i.i, align 8, !tbaa !11
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.jf, ptr %i.jh, align 8, !tbaa !38
  br label %.critedge2.thread

.critedge2.thread:                                ; preds = %bb.ap, %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit, %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit18, %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit36, %.critedge2.thread50
  %.2 = phi i1 [ false, %.critedge2.thread50 ], [ true, %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit36 ], [ true, %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit18 ], [ true, %_ZN6google8protobuf2io9Tokenizer8EndTokenEv.exit ], [ true, %bb.ap ]
  ret i1 %.2
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer16NextWithCommentsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS8_SaIS8_EES9_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.google::protobuf::io::(anonymous namespace)::CommentCollector", align 8 ; 31 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr %1, ptr %5, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %2, ptr %i.g, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %3, ptr %i.h, align 8, !tbaa !64
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 4 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !15
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 32
  store i64 0, ptr %i.k, align 8, !tbaa !18
  store i8 0, ptr %i.j, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 56 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 63 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.l, i8 0, i64 7, i1 false)
  store i8 1, ptr %i.m, align 1, !tbaa !65
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !18
  %i.o = load ptr, ptr %1, align 8, !tbaa !53
  store i8 0, ptr %i.o, align 1, !tbaa !19
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not12.i = icmp eq ptr %2, null
  br i1 %.not12.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %2, align 8, !tbaa !67     ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !68   ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.r, %i.p
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i ], [ %i.p, %bb.d ] ; 3 uses
  %i.s = load ptr, ptr %.05.i.i.i.i.i, align 8, !tbaa !53 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !19
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.r
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i
  store ptr %i.p, ptr %i.q, align 8, !tbaa !68
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.d, %bb.c
  %.not13.i = icmp eq ptr %3, null
  br i1 %.not13.i, label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS9_SaIS9_EESA_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.y, align 8, !tbaa !18
  %i.z = load ptr, ptr %3, align 8, !tbaa !53
  store i8 0, ptr %i.z, align 1, !tbaa !19
  br label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS9_SaIS9_EESA_.exit

_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS9_SaIS9_EESA_.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5clearEv.exit.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 5 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !30 ; 3 uses
  %i.ac = load i32, ptr %0, align 8, !tbaa !39
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 10 uses
  br i1 %i.ad, label %bb.f, label %bb.n

bb.f:                                             ; preds = %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS9_SaIS9_EESA_.exit
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !44
  %i.ag = icmp eq i8 %i.af, -17
  br i1 %i.ag, label %bb.g, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.ah = load i8, ptr %i.ae, align 8, !tbaa !44
  %i.ai = icmp eq i8 %i.ah, -69
  br i1 %i.ai, label %bb.i, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit21

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %bb.i
  %i.aj = load i8, ptr %i.ae, align 8, !tbaa !44
  %i.ak = icmp eq i8 %i.aj, -65
  br i1 %i.ak, label %bb.k, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit21

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit21: ; preds = %bb.j, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.al, ptr %6, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i64 85, ptr %i.f, align 8, !tbaa !56
  %i.am = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc24 unwind label %bb.l   ; 3 uses

.noexc24:                                         ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit21
  store ptr %i.am, ptr %6, align 8, !tbaa !53
  %i.an = load i64, ptr %i.f, align 8, !tbaa !56  ; 3 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(85) %i.am, ptr noundef nonnull align 1 dereferenceable(85) @.str.19, i64 85, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.an, ptr %i.ao, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  store i8 0, ptr %i.ap, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !29 ; 2 uses
  %i.as = load i32, ptr %i.aa, align 4, !tbaa !30
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.au = load i32, ptr %i.at, align 8, !tbaa !31
  %i.av = load ptr, ptr %6, align 8, !tbaa !53
  %i.aw = load i64, ptr %i.ao, align 8, !tbaa !18
  %i.ax = load ptr, ptr %i.ar, align 8, !tbaa !50
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i32 noundef %i.as, i32 noundef %i.au, i64 %i.aw, ptr %i.av)
          to label %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.m, !inline_history !1

_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %.noexc24
  %i.ba = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.bb = icmp eq ptr %i.ba, %i.al
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bc = load i64, ptr %i.al, align 8, !tbaa !19
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.bd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6google8protobuf2io9Tokenizer8AddErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit

bb.l:                                             ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit21
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.m:                                             ; preds = %.noexc24
  %i.bf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bg = load ptr, ptr %6, align 8, !tbaa !53    ; 2 uses
  %i.bh = icmp eq ptr %i.bg, %i.al
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.m
  %i.bi = load i64, ptr %i.al, align 8, !tbaa !19
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bj) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.l
  %.pn = phi { ptr, i32 } [ %i.be, %bb.l ], [ %i.bf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.bf, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %.body

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit: ; preds = %bb.k, %bb.f
  store i8 0, ptr %i.m, align 1, !tbaa !65
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit41.thread

bb.n:                                             ; preds = %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorC2EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS9_SaIS9_EESA_.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre = load i8, ptr %i.ae, align 8, !tbaa !44
  br label %.noexc29

.noexc29:                                         ; preds = %.noexc29.backedge, %bb.n
  %i.bs = phi i8 [ %.pre, %bb.n ], [ %.be279, %.noexc29.backedge ]
  switch i8 %i.bs, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit [
    i8 9, label %bb.o
    i8 11, label %bb.p
    i8 12, label %bb.p
    i8 13, label %bb.p
    i8 32, label %bb.p
  ]

bb.o:                                             ; preds = %.noexc29
  %i.bt = load i32, ptr %i.bk, align 8, !tbaa !31 ; 2 uses
  %i.bu = srem i32 %i.bt, 8
  %reass.sub.i = add i32 %i.bt, 8
  %i.bv = sub i32 %reass.sub.i, %i.bu
  br label %bb.q

bb.p:                                             ; preds = %.noexc29, %.noexc29, %.noexc29, %.noexc29
  %i.bw = load i32, ptr %i.bk, align 8, !tbaa !31
  %i.bx = add nsw i32 %i.bw, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %storemerge = phi i32 [ %i.bx, %bb.p ], [ %i.bv, %bb.o ]
  store i32 %storemerge, ptr %i.bk, align 8, !tbaa !31
  %i.by = load i32, ptr %i.bl, align 4, !tbaa !48
  %i.bz = add nsw i32 %i.by, 1                    ; 3 uses
  store i32 %i.bz, ptr %i.bl, align 4, !tbaa !48
  %i.ca = load i32, ptr %i.bm, align 8, !tbaa !45 ; 3 uses
  %i.cb = icmp slt i32 %i.bz, %i.ca
  br i1 %i.cb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cc = load ptr, ptr %i.bq, align 8, !tbaa !46
  %i.cd = sext i32 %i.bz to i64
  %i.ce = getelementptr inbounds i8, ptr %i.cc, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !19  ; 2 uses
  store i8 %i.cf, ptr %i.ae, align 8, !tbaa !44
  br label %.noexc29.backedge

bb.s:                                             ; preds = %bb.q
  %i.cg = load i8, ptr %i.bn, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ch = trunc nuw i8 %i.cg to i1
  br i1 %i.ch, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i8 0, ptr %i.ae, align 8, !tbaa !44
  br label %.noexc29.backedge

bb.u:                                             ; preds = %bb.s
  %i.ci = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 3 uses
  %.not.i.i77 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i77, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = load i32, ptr %i.bp, align 8, !tbaa !33 ; 3 uses
  %i.ck = icmp slt i32 %i.cj, %i.ca
  br i1 %i.ck, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.cl = sub nsw i32 %i.ca, %i.cj
  %i.cm = zext nneg i32 %i.cl to i64              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !18
  %i.cp = sub i64 4611686018427387903, %i.co
  %i.cq = icmp ult i64 %i.cp, %i.cm
  br i1 %i.cq, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i78

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i78: ; preds = %bb.w
  %i.cr = load ptr, ptr %i.bq, align 8, !tbaa !46
  %i.cs = sext i32 %i.cj to i64
  %i.ct = getelementptr inbounds i8, ptr %i.cr, i64 %i.cs
  %i.cu = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.ci, ptr noundef %i.ct, i64 noundef %i.cm)
          to label %.noexc80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc80:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i78
  store i32 0, ptr %i.bp, align 8, !tbaa !33
  br label %bb.x

bb.x:                                             ; preds = %.noexc80, %bb.v, %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store ptr null, ptr %i.d, align 8, !tbaa !47
  store ptr null, ptr %i.bq, align 8, !tbaa !46
  store i32 0, ptr %i.bl, align 4, !tbaa !48
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %bb.x
  %i.cv = load ptr, ptr %i.br, align 8, !tbaa !28 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !50
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.cy = load ptr, ptr %i.cx, align 8
  %i.cz = invoke noundef zeroext i1 %i.cy(ptr noundef nonnull align 8 dereferenceable(8) %i.cv, ptr noundef nonnull %i.d, ptr noundef nonnull %i.bm)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !96

.noexc81:                                         ; preds = %bb.y
  br i1 %i.cz, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.noexc81
  store i32 0, ptr %i.bm, align 8, !tbaa !45
  store i8 1, ptr %i.bn, align 8, !tbaa !41
  br label %bb.ac

bb.aa:                                            ; preds = %.noexc81
  %i.da = load i32, ptr %i.bm, align 8, !tbaa !45
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.y, label %bb.ab, !llvm.loop !0

bb.ab:                                            ; preds = %bb.aa
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !47  ; 2 uses
  store ptr %i.dc, ptr %i.bq, align 8, !tbaa !46
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !19
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  %.sink.i.i = phi i8 [ %i.dd, %bb.ab ], [ 0, %bb.z ] ; 2 uses
  store i8 %.sink.i.i, ptr %i.ae, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.noexc29.backedge

.noexc29.backedge:                                ; preds = %bb.ac, %bb.t, %bb.r
  %.be279 = phi i8 [ %.sink.i.i, %bb.ac ], [ 0, %bb.t ], [ %i.cf, %bb.r ]
  br label %.noexc29, !llvm.loop !3

_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit: ; preds = %.noexc29
  %i.de = invoke noundef i32 @_ZN6google8protobuf2io9Tokenizer22TryConsumeCommentStartEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit
  switch i32 %i.de, label %default.unreachable212 [
    i32 0, label %bb.ae
    i32 1, label %bb.al
    i32 2, label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit
    i32 3, label %bb.aq
  ]

bb.ae:                                            ; preds = %bb.ad
  %i.df = load i32, ptr %i.aa, align 4, !tbaa !30
  %i.dg = getelementptr inbounds nuw i8, ptr %5, i64 61 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !69, !range !42, !noundef !43
  %.not.i30 = icmp eq i8 %i.dh, 0
  %i.di = getelementptr inbounds nuw i8, ptr %5, i64 62 ; 2 uses
  %i.dj = load i8, ptr %i.di, align 2, !range !42
  %i.dk = trunc nuw i8 %i.dj to i1
  %or.cond.i = select i1 %.not.i30, i1 true, i1 %i.dk
  br i1 %or.cond.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector5FlushEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.ag unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.ae, %bb.af
  store i8 1, ptr %i.dg, align 1, !tbaa !69
  store i8 1, ptr %i.di, align 2, !tbaa !97
  store ptr %i.i, ptr %i.bo, align 8, !tbaa !32
  %i.dl = load i32, ptr %i.bl, align 4, !tbaa !48
  store i32 %i.dl, ptr %i.bp, align 8, !tbaa !33
  br label %.noexc33

.noexc33:                                         ; preds = %bb.ah, %bb.ag
  %i.dm = load i8, ptr %i.ae, align 8, !tbaa !44
  switch i8 %i.dm, label %bb.ah [
    i8 10, label %bb.ai
    i8 0, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit.i
  ]

bb.ah:                                            ; preds = %.noexc33
  invoke void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %.noexc33 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !2

bb.ai:                                            ; preds = %.noexc33
  invoke void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit.i: ; preds = %.noexc33, %bb.ai
  %i.dn = load i32, ptr %i.bl, align 4, !tbaa !48 ; 2 uses
  %i.do = load i32, ptr %i.bp, align 8, !tbaa !33 ; 3 uses
  %.not.i.i = icmp eq i32 %i.dn, %i.do
  br i1 %.not.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit.i
  %i.dp = load ptr, ptr %i.bo, align 8, !tbaa !32 ; 2 uses
  %i.dq = sub nsw i32 %i.dn, %i.do
  %i.dr = sext i32 %i.dq to i64                   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !18
  %i.du = sub i64 4611686018427387903, %i.dt
  %i.dv = icmp ult i64 %i.du, %i.dr
  br i1 %i.dv, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %bb.aj
  %i.dw = load ptr, ptr %i.bq, align 8, !tbaa !46
  %i.dx = sext i32 %i.do to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx
  %i.dz = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, ptr noundef %i.dy, i64 noundef %i.dr)
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.ak:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  store ptr null, ptr %i.bo, align 8, !tbaa !32
  store i32 -1, ptr %i.bp, align 8, !tbaa !33
  invoke fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector5FlushEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit41.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ad
  %i.ea = getelementptr inbounds nuw i8, ptr %5, i64 61 ; 2 uses
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !69, !range !42, !noundef !43
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector5FlushEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.an unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.an:                                            ; preds = %bb.al, %bb.am
  store i8 1, ptr %i.ea, align 1, !tbaa !69
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 62
  store i8 0, ptr %i.ed, align 2, !tbaa !97
  invoke void @_ZN6google8protobuf2io9Tokenizer19ConsumeBlockCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %i.i)
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.an
  %i.ee = load i32, ptr %i.aa, align 4, !tbaa !30
  br label %.noexc38

.noexc38:                                         ; preds = %bb.ap, %bb.ao
  %i.ef = load i8, ptr %i.ae, align 8, !tbaa !44
  switch i8 %i.ef, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit39 [
    i8 32, label %bb.ap
    i8 13, label %bb.ap
    i8 11, label %bb.ap
    i8 9, label %bb.ap
    i8 12, label %bb.ap
  ]

bb.ap:                                            ; preds = %.noexc38, %.noexc38, %.noexc38, %.noexc38, %.noexc38
  invoke void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !3

_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit39: ; preds = %.noexc38
  invoke fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector5FlushEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit41.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aq:                                            ; preds = %bb.ad
  %i.eg = load i8, ptr %i.ae, align 8, !tbaa !44
  %i.eh = icmp eq i8 %i.eg, 10
  br i1 %i.eh, label %bb.ar, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit41

bb.ar:                                            ; preds = %bb.aq
  invoke void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit41.thread unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit41: ; preds = %bb.aq
  %i.ei = invoke noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer4NextEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

default.unreachable212:                           ; preds = %bb.bh, %bb.ad
  unreachable

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit41.thread: ; preds = %bb.ar, %bb.ak, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit39, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit
  %.014 = phi i32 [ -1, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit ], [ %i.ab, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit39 ], [ %i.ab, %bb.ak ], [ %i.ab, %bb.ar ]
  %.013 = phi i32 [ -1, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit ], [ %i.ee, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit39 ], [ %i.df, %bb.ak ], [ -1, %bb.ar ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 13 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 9 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 11 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 12 uses
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 6 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 9 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 13 uses
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %5, i64 61 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 62 ; 3 uses
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit62

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit62: ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit62.backedge, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit41.thread
  %.pre164 = load i8, ptr %i.ej, align 8, !tbaa !44
  br label %.noexc42

.noexc42:                                         ; preds = %.noexc42.backedge, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit62
  %i.eu = phi i8 [ %.pre164, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit62 ], [ %.be263, %.noexc42.backedge ]
  switch i8 %i.eu, label %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit43 [
    i8 9, label %bb.as
    i8 11, label %bb.at
    i8 12, label %bb.at
    i8 13, label %bb.at
    i8 32, label %bb.at
  ]

bb.as:                                            ; preds = %.noexc42
  %i.ev = load i32, ptr %i.ek, align 8, !tbaa !31 ; 2 uses
  %i.ew = srem i32 %i.ev, 8
  %reass.sub.i82 = add i32 %i.ev, 8
  %i.ex = sub i32 %reass.sub.i82, %i.ew
  br label %bb.au

bb.at:                                            ; preds = %.noexc42, %.noexc42, %.noexc42, %.noexc42
  %i.ey = load i32, ptr %i.ek, align 8, !tbaa !31
  %i.ez = add nsw i32 %i.ey, 1
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %storemerge213 = phi i32 [ %i.ez, %bb.at ], [ %i.ex, %bb.as ]
  store i32 %storemerge213, ptr %i.ek, align 8, !tbaa !31
  %i.fa = load i32, ptr %i.el, align 4, !tbaa !48
  %i.fb = add nsw i32 %i.fa, 1                    ; 3 uses
  store i32 %i.fb, ptr %i.el, align 4, !tbaa !48
  %i.fc = load i32, ptr %i.em, align 8, !tbaa !45 ; 3 uses
  %i.fd = icmp slt i32 %i.fb, %i.fc
  br i1 %i.fd, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fe = load ptr, ptr %i.eq, align 8, !tbaa !46
  %i.ff = sext i32 %i.fb to i64
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !19  ; 2 uses
  store i8 %i.fh, ptr %i.ej, align 8, !tbaa !44
  br label %.noexc42.backedge

bb.aw:                                            ; preds = %bb.au
  %i.fi = load i8, ptr %i.en, align 8, !tbaa !41, !range !42, !noundef !43
  %i.fj = trunc nuw i8 %i.fi to i1
  br i1 %i.fj, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i8 0, ptr %i.ej, align 8, !tbaa !44
  br label %.noexc42.backedge

bb.ay:                                            ; preds = %bb.aw
  %i.fk = load ptr, ptr %i.eo, align 8, !tbaa !32 ; 3 uses
  %.not.i.i83 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i83, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fl = load i32, ptr %i.ep, align 8, !tbaa !33 ; 3 uses
  %i.fm = icmp slt i32 %i.fl, %i.fc
  br i1 %i.fm, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fn = sub nsw i32 %i.fc, %i.fl
  %i.fo = zext nneg i32 %i.fn to i64              ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  %i.fq = load i64, ptr %i.fp, align 8, !tbaa !18
  %i.fr = sub i64 4611686018427387903, %i.fq
  %i.fs = icmp ult i64 %i.fr, %i.fo
  br i1 %i.fs, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i85: ; preds = %bb.ba
  %i.ft = load ptr, ptr %i.eq, align 8, !tbaa !46
  %i.fu = sext i32 %i.fl to i64
  %i.fv = getelementptr inbounds i8, ptr %i.ft, i64 %i.fu
  %i.fw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.fk, ptr noundef %i.fv, i64 noundef %i.fo)
          to label %.noexc87 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc87:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i85
  store i32 0, ptr %i.ep, align 8, !tbaa !33
  br label %bb.bb

bb.bb:                                            ; preds = %.noexc87, %bb.az, %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store ptr null, ptr %i.c, align 8, !tbaa !47
  store ptr null, ptr %i.eq, align 8, !tbaa !46
  store i32 0, ptr %i.el, align 4, !tbaa !48
  br label %bb.bc

bb.bc:                                            ; preds = %bb.be, %bb.bb
  %i.fx = load ptr, ptr %i.er, align 8, !tbaa !28 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !50
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = invoke noundef zeroext i1 %i.ga(ptr noundef nonnull align 8 dereferenceable(8) %i.fx, ptr noundef nonnull %i.c, ptr noundef nonnull %i.em)
          to label %.noexc88 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !96

.noexc88:                                         ; preds = %bb.bc
  br i1 %i.gb, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %.noexc88
  store i32 0, ptr %i.em, align 8, !tbaa !45
  store i8 1, ptr %i.en, align 8, !tbaa !41
  br label %bb.bg

bb.be:                                            ; preds = %.noexc88
  %i.gc = load i32, ptr %i.em, align 8, !tbaa !45
  %i.gd = icmp eq i32 %i.gc, 0
  br i1 %i.gd, label %bb.bc, label %bb.bf, !llvm.loop !0

bb.bf:                                            ; preds = %bb.be
  %i.ge = load ptr, ptr %i.c, align 8, !tbaa !47  ; 2 uses
  store ptr %i.ge, ptr %i.eq, align 8, !tbaa !46
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !19
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.bd
  %.sink.i.i84 = phi i8 [ %i.gf, %bb.bf ], [ 0, %bb.bd ] ; 2 uses
  store i8 %.sink.i.i84, ptr %i.ej, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.noexc42.backedge

.noexc42.backedge:                                ; preds = %bb.bg, %bb.ax, %bb.av
  %.be263 = phi i8 [ %.sink.i.i84, %bb.bg ], [ 0, %bb.ax ], [ %i.fh, %bb.av ]
  br label %.noexc42, !llvm.loop !3

_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit43: ; preds = %.noexc42
  %i.gg = invoke noundef i32 @_ZN6google8protobuf2io9Tokenizer22TryConsumeCommentStartEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.bh unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bh:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit43
  switch i32 %i.gg, label %default.unreachable212 [
    i32 0, label %bb.bi
    i32 1, label %bb.cc
    i32 2, label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit
    i32 3, label %bb.cv
  ]

bb.bi:                                            ; preds = %bb.bh
  %i.gh = load i8, ptr %i.es, align 1, !tbaa !69, !range !42, !noundef !43
  %.not.i44 = icmp eq i8 %i.gh, 0
  %i.gi = load i8, ptr %i.et, align 2, !range !42
  %i.gj = trunc nuw i8 %i.gi to i1
  %or.cond.i45 = select i1 %.not.i44, i1 true, i1 %i.gj
  br i1 %or.cond.i45, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  invoke fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector5FlushEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  store i8 1, ptr %i.es, align 1, !tbaa !69
  store i8 1, ptr %i.et, align 2, !tbaa !97
  store ptr %i.i, ptr %i.eo, align 8, !tbaa !32
  %i.gk = load i32, ptr %i.el, align 4, !tbaa !48
  store i32 %i.gk, ptr %i.ep, align 8, !tbaa !33
  %.pre166.a = load i8, ptr %i.ej, align 8, !tbaa !44
  br label %.noexc52

.noexc52:                                         ; preds = %.noexc52.backedge, %bb.bk
  %i.gl = phi i8 [ %.pre166.a, %bb.bk ], [ %.be, %.noexc52.backedge ]
  switch i8 %i.gl, label %bb.bm [
    i8 10, label %bb.ca
    i8 0, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit.i49
    i8 9, label %bb.bl
  ]

bb.bl:                                            ; preds = %.noexc52
  %i.gm = load i32, ptr %i.ek, align 8, !tbaa !31 ; 2 uses
  %i.gn = srem i32 %i.gm, 8
  %reass.sub.i90 = add i32 %i.gm, 8
  %i.go = sub i32 %reass.sub.i90, %i.gn
  br label %bb.bn

bb.bm:                                            ; preds = %.noexc52
  %i.gp = load i32, ptr %i.ek, align 8, !tbaa !31
  %i.gq = add nsw i32 %i.gp, 1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %storemerge217.a = phi i32 [ %i.go, %bb.bl ], [ %i.gq, %bb.bm ]
  store i32 %storemerge217.a, ptr %i.ek, align 8, !tbaa !31
  %i.gr = load i32, ptr %i.el, align 4, !tbaa !48
  %i.gs = add nsw i32 %i.gr, 1                    ; 3 uses
  store i32 %i.gs, ptr %i.el, align 4, !tbaa !48
  %i.gt = load i32, ptr %i.em, align 8, !tbaa !45 ; 3 uses
  %i.gu = icmp slt i32 %i.gs, %i.gt
  br i1 %i.gu, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.gv = load ptr, ptr %i.eq, align 8, !tbaa !46
  %i.gw = sext i32 %i.gs to i64
  %i.gx = getelementptr inbounds i8, ptr %i.gv, i64 %i.gw
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !19  ; 2 uses
  store i8 %i.gy, ptr %i.ej, align 8, !tbaa !44
  br label %.noexc52.backedge

bb.bp:                                            ; preds = %bb.bn
  %i.gz = load i8, ptr %i.en, align 8, !tbaa !41, !range !42, !noundef !43
  %i.ha = trunc nuw i8 %i.gz to i1
  br i1 %i.ha, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i8 0, ptr %i.ej, align 8, !tbaa !44
  br label %.noexc52.backedge

bb.br:                                            ; preds = %bb.bp
  %i.hb = load ptr, ptr %i.eo, align 8, !tbaa !32 ; 3 uses
  %.not.i.i91 = icmp eq ptr %i.hb, null
  br i1 %.not.i.i91, label %bb.bu, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.hc = load i32, ptr %i.ep, align 8, !tbaa !33 ; 3 uses
  %i.hd = icmp slt i32 %i.hc, %i.gt
  br i1 %i.hd, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.he = sub nsw i32 %i.gt, %i.hc
  %i.hf = zext nneg i32 %i.he to i64              ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !18
  %i.hi = sub i64 4611686018427387903, %i.hh
  %i.hj = icmp ult i64 %i.hi, %i.hf
  br i1 %i.hj, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i93: ; preds = %bb.bt
  %i.hk = load ptr, ptr %i.eq, align 8, !tbaa !46
  %i.hl = sext i32 %i.hc to i64
  %i.hm = getelementptr inbounds i8, ptr %i.hk, i64 %i.hl
  %i.hn = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.hb, ptr noundef %i.hm, i64 noundef %i.hf)
          to label %.noexc95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc95:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i93
  store i32 0, ptr %i.ep, align 8, !tbaa !33
  br label %bb.bu

bb.bu:                                            ; preds = %.noexc95, %bb.bs, %bb.br
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store ptr null, ptr %i.b, align 8, !tbaa !47
  store ptr null, ptr %i.eq, align 8, !tbaa !46
  store i32 0, ptr %i.el, align 4, !tbaa !48
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bx, %bb.bu
  %i.ho = load ptr, ptr %i.er, align 8, !tbaa !28 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !50
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.hr = load ptr, ptr %i.hq, align 8
  %i.hs = invoke noundef zeroext i1 %i.hr(ptr noundef nonnull align 8 dereferenceable(8) %i.ho, ptr noundef nonnull %i.b, ptr noundef nonnull %i.em)
          to label %.noexc96 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !96

.noexc96:                                         ; preds = %bb.bv
  br i1 %i.hs, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %.noexc96
  store i32 0, ptr %i.em, align 8, !tbaa !45
  store i8 1, ptr %i.en, align 8, !tbaa !41
  br label %bb.bz

bb.bx:                                            ; preds = %.noexc96
  %i.ht = load i32, ptr %i.em, align 8, !tbaa !45
  %i.hu = icmp eq i32 %i.ht, 0
  br i1 %i.hu, label %bb.bv, label %bb.by, !llvm.loop !0

bb.by:                                            ; preds = %bb.bx
  %i.hv = load ptr, ptr %i.b, align 8, !tbaa !47  ; 2 uses
  store ptr %i.hv, ptr %i.eq, align 8, !tbaa !46
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !19
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bw
  %.sink.i.i92 = phi i8 [ %i.hw, %bb.by ], [ 0, %bb.bw ] ; 2 uses
  store i8 %.sink.i.i92, ptr %i.ej, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.noexc52.backedge

.noexc52.backedge:                                ; preds = %bb.bz, %bb.bq, %bb.bo
  %.be = phi i8 [ %.sink.i.i92, %bb.bz ], [ 0, %bb.bq ], [ %i.gy, %bb.bo ]
  br label %.noexc52, !llvm.loop !2

bb.ca:                                            ; preds = %.noexc52
  invoke void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit.i49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit.i49: ; preds = %.noexc52, %bb.ca
  %i.hx = load i32, ptr %i.el, align 4, !tbaa !48 ; 2 uses
  %i.hy = load i32, ptr %i.ep, align 8, !tbaa !33 ; 3 uses
  %.not.i.i50 = icmp eq i32 %i.hx, %i.hy
  br i1 %.not.i.i50, label %_ZN6google8protobuf2io9Tokenizer18ConsumeLineCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit56, label %bb.cb

bb.cb:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit.i49
  %i.hz = load ptr, ptr %i.eo, align 8, !tbaa !32 ; 2 uses
  %i.ia = sub nsw i32 %i.hx, %i.hy
  %i.ib = sext i32 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !18
  %i.ie = sub i64 4611686018427387903, %i.id
  %i.if = icmp ult i64 %i.ie, %i.ib
  br i1 %i.if, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i51

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i51: ; preds = %bb.cb
  %i.ig = load ptr, ptr %i.eq, align 8, !tbaa !46
  %i.ih = sext i32 %i.hy to i64
  %i.ii = getelementptr inbounds i8, ptr %i.ig, i64 %i.ih
  %i.ij = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.hz, ptr noundef %i.ii, i64 noundef %i.ib)
          to label %_ZN6google8protobuf2io9Tokenizer18ConsumeLineCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZN6google8protobuf2io9Tokenizer18ConsumeLineCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit56: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i51, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit.i49
  store ptr null, ptr %i.eo, align 8, !tbaa !32
  store i32 -1, ptr %i.ep, align 8, !tbaa !33
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit62.backedge

bb.cc:                                            ; preds = %bb.bh
  %i.ik = load i8, ptr %i.es, align 1, !tbaa !69, !range !42, !noundef !43
  %i.il = trunc nuw i8 %i.ik to i1
  br i1 %i.il, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  invoke fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector5FlushEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.ce unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  store i8 1, ptr %i.es, align 1, !tbaa !69
  store i8 0, ptr %i.et, align 2, !tbaa !97
  invoke void @_ZN6google8protobuf2io9Tokenizer19ConsumeBlockCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef nonnull %i.i)
          to label %.preheader.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader.preheader:                             ; preds = %bb.ce
  %.pre165 = load i8, ptr %i.ej, align 8, !tbaa !44
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.preheader
  %i.im = phi i8 [ %.pre165, %.preheader.preheader ], [ %.be259, %.preheader.backedge ]
  switch i8 %i.im, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit62.backedge [
    i8 9, label %bb.cf
    i8 11, label %bb.cg
    i8 12, label %bb.cg
    i8 13, label %bb.cg
    i8 32, label %bb.cg
    i8 10, label %bb.cu
  ], !llvm.loop !95
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf2io9Tokenizer16NextWithCommentsEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIS8_SaIS8_EES9_:bb.a
  %i.ip = sub i32 %reass.sub.i98, %i.io
  br label %bb.ch

bb.cg:                                            ; preds = %.preheader, %.preheader, %.preheader, %.preheader
  %i.iq = load i32, ptr %i.ek, align 8, !tbaa !31
  %i.ir = add nsw i32 %i.iq, 1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %storemerge216 = phi i32 [ %i.ir, %bb.cg ], [ %i.ip, %bb.cf ]
  store i32 %storemerge216, ptr %i.ek, align 8, !tbaa !31
  %i.is = load i32, ptr %i.el, align 4, !tbaa !48
  %i.it = add nsw i32 %i.is, 1                    ; 3 uses
  store i32 %i.it, ptr %i.el, align 4, !tbaa !48
  %i.iu = load i32, ptr %i.em, align 8, !tbaa !45 ; 3 uses
  %i.iv = icmp slt i32 %i.it, %i.iu
  br i1 %i.iv, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.iw = load ptr, ptr %i.eq, align 8, !tbaa !46
  %i.ix = sext i32 %i.it to i64
  %i.iy = getelementptr inbounds i8, ptr %i.iw, i64 %i.ix
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !19  ; 2 uses
  store i8 %i.iz, ptr %i.ej, align 8, !tbaa !44
  br label %.preheader.backedge

bb.cj:                                            ; preds = %bb.ch
  %i.ja = load i8, ptr %i.en, align 8, !tbaa !41, !range !42, !noundef !43
  %i.jb = trunc nuw i8 %i.ja to i1
  br i1 %i.jb, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  store i8 0, ptr %i.ej, align 8, !tbaa !44
  br label %.preheader.backedge

bb.cl:                                            ; preds = %bb.cj
  %i.jc = load ptr, ptr %i.eo, align 8, !tbaa !32 ; 3 uses
  %.not.i.i99 = icmp eq ptr %i.jc, null
  br i1 %.not.i.i99, label %bb.co, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.jd = load i32, ptr %i.ep, align 8, !tbaa !33 ; 3 uses
  %i.je = icmp slt i32 %i.jd, %i.iu
  br i1 %i.je, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.jf = sub nsw i32 %i.iu, %i.jd
  %i.jg = zext nneg i32 %i.jf to i64              ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jc, i64 8
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !18
  %i.jj = sub i64 4611686018427387903, %i.ji
  %i.jk = icmp ult i64 %i.jj, %i.jg
  br i1 %i.jk, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i101

.invoke:                                          ; preds = %bb.w, %bb.cb, %bb.ba, %bb.cn, %bb.bt, %bb.aj
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i101: ; preds = %bb.cn
  %i.jl = load ptr, ptr %i.eq, align 8, !tbaa !46
  %i.jm = sext i32 %i.jd to i64
  %i.jn = getelementptr inbounds i8, ptr %i.jl, i64 %i.jm
  %i.jo = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.jc, ptr noundef %i.jn, i64 noundef %i.jg)
          to label %.noexc103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.noexc103:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i101
  store i32 0, ptr %i.ep, align 8, !tbaa !33
  br label %bb.co

bb.co:                                            ; preds = %.noexc103, %bb.cm, %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr null, ptr %i.a, align 8, !tbaa !47
  store ptr null, ptr %i.eq, align 8, !tbaa !46
  store i32 0, ptr %i.el, align 4, !tbaa !48
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cr, %bb.co
  %i.jp = load ptr, ptr %i.er, align 8, !tbaa !28 ; 2 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !50
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load ptr, ptr %i.jr, align 8
  %i.jt = invoke noundef zeroext i1 %i.js(ptr noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.em)
          to label %.noexc104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !96

.noexc104:                                        ; preds = %bb.cp
  br i1 %i.jt, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %.noexc104
  store i32 0, ptr %i.em, align 8, !tbaa !45
  store i8 1, ptr %i.en, align 8, !tbaa !41
  br label %bb.ct

bb.cr:                                            ; preds = %.noexc104
  %i.ju = load i32, ptr %i.em, align 8, !tbaa !45
  %i.jv = icmp eq i32 %i.ju, 0
  br i1 %i.jv, label %bb.cp, label %bb.cs, !llvm.loop !0

bb.cs:                                            ; preds = %bb.cr
  %i.jw = load ptr, ptr %i.a, align 8, !tbaa !47  ; 2 uses
  store ptr %i.jw, ptr %i.eq, align 8, !tbaa !46
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !19
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cq
  %.sink.i.i100 = phi i8 [ %i.jx, %bb.cs ], [ 0, %bb.cq ] ; 2 uses
  store i8 %.sink.i.i100, ptr %i.ej, align 8, !tbaa !44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.ct, %bb.ck, %bb.ci
  %.be259 = phi i8 [ %.sink.i.i100, %bb.ct ], [ 0, %bb.ck ], [ %i.iz, %bb.ci ]
  br label %.preheader, !llvm.loop !3

bb.cu:                                            ; preds = %.preheader
  invoke void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit62.backedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit62.backedge: ; preds = %.preheader, %bb.cu, %_ZN6google8protobuf2io9Tokenizer18ConsumeLineCommentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit56, %bb.cy
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit62, !llvm.loop !95

bb.cv:                                            ; preds = %bb.bh
  %i.jy = load i8, ptr %i.ej, align 8, !tbaa !44
  %i.jz = icmp eq i8 %i.jy, 10
  br i1 %i.jz, label %bb.cw, label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit64

bb.cw:                                            ; preds = %bb.cv
  invoke void @_ZN6google8protobuf2io9Tokenizer8NextCharEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.cx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cx:                                            ; preds = %bb.cw
  invoke fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector5FlushEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.cy unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cy:                                            ; preds = %bb.cx
  store i8 0, ptr %i.m, align 1, !tbaa !65
  br label %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit62.backedge

_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit64: ; preds = %bb.cv
  %i.ka = invoke noundef zeroext i1 @_ZN6google8protobuf2io9Tokenizer4NextEv(ptr noundef nonnull align 8 dereferenceable(192) %0)
          to label %bb.cz unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.cz:                                            ; preds = %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit64
  br i1 %i.ka, label %bb.da, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.da:                                            ; preds = %bb.cz
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !18
  %cond = icmp eq i64 %i.kc, 1
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.da
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !53 ; 3 uses
  %lhsc = load i8, ptr %i.ke, align 1
  %i.kf = icmp eq i8 %lhsc, 125
  br i1 %i.kf, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %lhsc214 = load i8, ptr %i.ke, align 1
  %i.kg = icmp eq i8 %lhsc214, 93
  br i1 %i.kg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66
  %lhsc215 = load i8, ptr %i.ke, align 1
  %i.kh = icmp eq i8 %lhsc215, 41
  br i1 %i.kh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit66, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %bb.cz
  invoke fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector5FlushEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %bb.db unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i101, %bb.cp, %bb.bv, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i93, %bb.cx, %bb.ce, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit43, %bb.bj, %bb.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i51, %bb.cd, %bb.cu, %bb.cw, %bb.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i78, %.invoke, %bb.dk, %.noexc.i.i, %bb.ar, %bb.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.ai, %bb.af, %bb.k, %bb.i, %bb.g, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit, %bb.ak, %bb.an, %_ZN6google8protobuf2io9Tokenizer17ConsumeZeroOrMoreINS1_12_GLOBAL__N_119WhitespaceNoNewlineEEEvv.exit39, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit41, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit64
  %lpad.loopexit.split-lp277 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.db:                                            ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  br i1 %i.ka, label %.thread, label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit

.thread:                                          ; preds = %bb.da, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit68, %bb.db
  %i.ki = load i32, ptr %i.aa, align 4, !tbaa !30 ; 2 uses
  %i.kj = icmp eq i32 %.014, %i.ki
  %i.kk = icmp eq i32 %.013, %i.ki
  %or.cond = select i1 %i.kj, i1 true, i1 %i.kk
  br i1 %or.cond, label %bb.dc, label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit

bb.dc:                                            ; preds = %.thread
  %i.kl = load i32, ptr %i.l, align 8, !tbaa !70
  %i.km = load i8, ptr %i.es, align 1, !tbaa !69, !range !42, !noundef !43
  %i.kn = zext nneg i8 %i.km to i32
  %spec.select.i = add nsw i32 %i.kl, %i.kn
  %i.ko = icmp eq i32 %spec.select.i, 1
  br i1 %i.ko, label %bb.dd, label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit

bb.dd:                                            ; preds = %bb.dc
  %i.kp = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.kq = load i8, ptr %i.kp, align 4, !tbaa !71, !range !42, !noundef !43
  %.not6.i = icmp eq i8 %i.kq, 0
  %i.kr = load ptr, ptr %5, align 8               ; 3 uses
  %.not.i69 = icmp eq ptr %i.kr, null
  %or.cond.not.i = select i1 %.not6.i, i1 true, i1 %.not.i69
  br i1 %or.cond.not.i, label %bb.dk, label %bb.de

bb.de:                                            ; preds = %bb.dd
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.ks, ptr %4, align 8, !tbaa !15
  %i.kt = load ptr, ptr %i.kr, align 8, !tbaa !53 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i64 %i.kv, ptr %i.e, align 8, !tbaa !56
  %i.kw = icmp ugt i64 %i.kv, 15
  br i1 %i.kw, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.de
  %i.kx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc70:                                         ; preds = %.noexc.i.i
  store ptr %i.kx, ptr %4, align 8, !tbaa !53
  %i.ky = load i64, ptr %i.e, align 8, !tbaa !56
  store i64 %i.ky, ptr %i.ks, align 8, !tbaa !19
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc70, %bb.de
  %i.kz = phi ptr [ %i.kx, %.noexc70 ], [ %i.ks, %bb.de ] ; 2 uses
  switch i64 %i.kv, label %bb.dg [
    i64 1, label %bb.df
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  ]

bb.df:                                            ; preds = %._crit_edge.i.i.i
  %i.la = load i8, ptr %i.kt, align 1, !tbaa !19
  store i8 %i.la, ptr %i.kz, align 1, !tbaa !19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.dg:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kz, ptr align 1 %i.kt, i64 %i.kv, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.dg, %bb.df, %._crit_edge.i.i.i
  %i.lb = load i64, ptr %i.e, align 8, !tbaa !56  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.lb, ptr %i.lc, align 8, !tbaa !18
  %i.ld = load ptr, ptr %4, align 8, !tbaa !53
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 %i.lb
  store i8 0, ptr %i.le, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  %i.lf = load ptr, ptr %i.g, align 8, !tbaa !63  ; 3 uses
  %.not5.i = icmp eq ptr %i.lf, null
  br i1 %.not5.i, label %bb.dj, label %bb.dh

bb.dh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.lg = load ptr, ptr %i.lf, align 8, !tbaa !72
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPS5_S7_EEmRKS5_(ptr noundef nonnull align 8 dereferenceable(24) %i.lf, ptr %i.lg, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.dj unwind label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.lh = landingpad { ptr, i32 }
          cleanup
  %i.li = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.lj = icmp eq ptr %i.li, %i.ks
  br i1 %i.lj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.di
  %i.lk = load i64, ptr %i.ks, align 8, !tbaa !19
  %i.ll = add i64 %i.lk, 1
  call void @_ZdlPvm(ptr noundef %i.li, i64 noundef %i.ll) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.di, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %.body

bb.dj:                                            ; preds = %bb.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i
  %i.lm = load ptr, ptr %5, align 8, !tbaa !62    ; 2 uses
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 8
  store i64 0, ptr %i.ln, align 8, !tbaa !18
  %i.lo = load ptr, ptr %i.lm, align 8, !tbaa !53
  store i8 0, ptr %i.lo, align 1, !tbaa !19
  %i.lp = load ptr, ptr %4, align 8, !tbaa !53    ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.ks
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.dj
  %i.lr = load i64, ptr %i.ks, align 8, !tbaa !19
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.dj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.dk

bb.dk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, %bb.dd
  invoke fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector5FlushEv(ptr noundef nonnull align 8 dereferenceable(64) %5)
          to label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit: ; preds = %bb.bh, %bb.dc, %bb.dk, %bb.db, %.thread, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit41, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.015 = phi i1 [ %i.ei, %_ZN6google8protobuf2io9Tokenizer10TryConsumeEc.exit41 ], [ true, %bb.dc ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ true, %bb.ad ], [ true, %.thread ], [ false, %bb.db ], [ true, %bb.dk ], [ true, %bb.bh ]
  %i.lt = load ptr, ptr %i.h, align 8, !tbaa !64  ; 2 uses
  %.not.i72 = icmp ne ptr %i.lt, null
  %i.lu = getelementptr inbounds nuw i8, ptr %5, i64 61
  %i.lv = load i8, ptr %i.lu, align 1, !range !42
  %i.lw = trunc nuw i8 %i.lv to i1
  %or.cond.i73 = select i1 %.not.i72, i1 %i.lw, i1 false
  br i1 %or.cond.i73, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.lt) #24
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector18MaybeDetachCommentEv.exit
  %i.lx = load ptr, ptr %i.i, align 8, !tbaa !53  ; 2 uses
  %i.ly = icmp eq ptr %i.lx, %i.j
  br i1 %i.ly, label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74: ; preds = %bb.dm
  %i.lz = load i64, ptr %i.j, align 8, !tbaa !19
  %i.ma = add i64 %i.lz, 1
  call void @_ZdlPvm(ptr noundef %i.lx, i64 noundef %i.ma) #25
  br label %_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorD2Ev.exit

_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorD2Ev.exit: ; preds = %bb.dm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i74
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret i1 %.015

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28
  %.pn18 = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ], [ %i.lh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %lpad.loopexit.split-lp277, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollectorD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn18
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6google8protobuf2io12_GLOBAL__N_116CommentCollector5FlushEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 61 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !tbaa !69, !range !42, !noundef !43
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 63 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !65, !range !42, !noundef !43
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %.not2 = icmp eq ptr %i.h, null
  br i1 %.not2, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !18
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.j
  br i1 %i.n, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #23
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.q = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef %i.p, i64 noundef %i.j) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.r, align 4, !tbaa !71
  store i8 0, ptr %i.e, align 1, !tbaa !65
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.g:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !63   ; 4 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !68   ; 8 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !73
  %.not.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.w, align 8, !tbaa !15
  %i.aa = load ptr, ptr %i.u, align 8, !tbaa !53  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !18 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
end_hunk_2
