inline.NumInlined: 3173
inline.NumDeleted: 1582
begin_hunk_0_@_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEED0Ev:bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE26matchesExactlyOneCharacterEv(ptr noundef nonnull align 8 dereferenceable(91) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.b = load i8, ptr %i.a, align 2, !tbaa !535, !range !278, !noundef !242
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i8 @_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE16matchConstraintsEv(ptr noundef nonnull align 8 dereferenceable(91) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.b = load i8, ptr %i.a, align 1, !tbaa !534, !range !278, !noundef !242
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.e = load i8, ptr %i.d, align 2, !range !278
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.i, label %_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i8, ptr %i.g, align 8, !tbaa !523, !range !278, !noundef !242
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !29   ; 2 uses
  %i.n = zext i32 %i.m to i64
  %.idx51.i = shl nuw nsw i64 %i.n, 3
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx51.i
  %.not2744.i = icmp eq i32 %i.m, 0
  br i1 %.not2744.i, label %_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit, label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %bb.c, %.critedge.i
  %.02145.i = phi ptr [ %i.u, %.critedge.i ], [ %i.k, %bb.c ] ; 3 uses
  %i.p = load i32, ptr %.02145.i, align 4, !tbaa !439
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.lr.ph47.i
  %i.r = getelementptr inbounds nuw i8, ptr %.02145.i, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !437
  %i.t = icmp ugt i32 %i.s, 127
  br i1 %i.t, label %_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit, label %.critedge.i

.critedge.i:                                      ; preds = %bb.d, %.lr.ph47.i
  %i.u = getelementptr inbounds nuw i8, ptr %.02145.i, i64 8 ; 2 uses
  %.not27.i = icmp eq ptr %i.u, %i.o
  br i1 %.not27.i, label %_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit, label %.lr.ph47.i

bb.e:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !549
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !549
  %i.z = icmp eq ptr %i.w, %i.y
  br i1 %i.z, label %bb.f, label %_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !27 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !29 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %.idx.i = shl nuw nsw i64 %i.ae, 3
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx.i
  %.not40.i = icmp eq i32 %i.ad, 0
  br i1 %.not40.i, label %_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit, label %.lr.ph.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.02241.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.ag, %i.af
  br i1 %.not.i, label %_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.g
  %.02241.i = phi ptr [ %i.ag, %bb.g ], [ %i.ab, %bb.f ] ; 2 uses
  %i.ah = load i32, ptr %.02241.i, align 4, !tbaa !439
  %i.ai = icmp ult i32 %i.ah, 128
  br i1 %i.ai, label %_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit, label %bb.g

_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit: ; preds = %.lr.ph.i, %bb.g, %.critedge.i, %bb.d, %bb.c, %bb.a, %bb.e, %bb.f
  %i.aj = phi i8 [ 0, %bb.c ], [ 1, %bb.d ], [ 1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.a ], [ 0, %.critedge.i ], [ 0, %.lr.ph.i ], [ 1, %bb.g ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !29
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.h, label %.thread

.thread:                                          ; preds = %_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit
  %i.an = or disjoint i8 %i.aj, 4
  br label %bb.i

bb.h:                                             ; preds = %_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE13canMatchASCIIEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !549
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !549
  %i.as = icmp ne ptr %i.ap, %i.ar
  %i.at = or disjoint i8 %i.aj, 4
  %cond.fr = freeze i1 %i.as
  %spec.select = select i1 %cond.fr, i8 %i.at, i8 %i.aj
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread
  %i.au = phi i8 [ %spec.select, %bb.h ], [ %i.an, %.thread ]
  ret i8 %i.au
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZN6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE8emitStepERNS0_19RegexBytecodeStreamE(ptr noundef nonnull align 8 dereferenceable(91) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.d = load i8, ptr %i.c, align 2, !tbaa !535, !range !278, !noundef !242
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201  ; 5 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !197    ; 7 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j                       ; 7 uses
  %i.l = icmp ult i64 %i.k, -6                    ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  store i8 0, ptr %i.b, align 1, !tbaa !18
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.g, i64 noundef 6, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !197
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14U16BracketInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr i8, ptr %i.h, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 6        ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.n
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14U16BracketInsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.n, ptr %i.f, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14U16BracketInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14U16BracketInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.o = phi ptr [ %.pre.i, %bb.c ], [ %i.h, %bb.d ], [ %i.h, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.k
  store i8 18, ptr %i.p, align 1, !tbaa !219
  %i.q = trunc i64 %i.k to i32
  call void @_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE19populateInstructionINS0_19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEEEEvRS5_T_(ptr noundef nonnull align 8 dereferenceable(91) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr nonnull %1, i32 %i.q)
  br label %bb.j

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i8 0, ptr %i.a, align 1, !tbaa !18
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.g, i64 noundef 6, ptr noundef nonnull align 1 dereferenceable(1) %i.a)
  %.pre.i16 = load ptr, ptr %1, align 8, !tbaa !197
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_11BracketInsnEEENS1_18InstructionWrapperIT_EEv.exit

bb.h:                                             ; preds = %bb.f
  %i.r = getelementptr i8, ptr %i.h, i64 %i.k
  %i.s = getelementptr i8, ptr %i.r, i64 6        ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.g, %i.s
  br i1 %.not.i.i.i13, label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_11BracketInsnEEENS1_18InstructionWrapperIT_EEv.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  store ptr %i.s, ptr %i.f, align 8, !tbaa !201
  br label %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_11BracketInsnEEENS1_18InstructionWrapperIT_EEv.exit

_ZN6hermes5regex19RegexBytecodeStream4emitINS0_11BracketInsnEEENS1_18InstructionWrapperIT_EEv.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.t = phi ptr [ %.pre.i16, %bb.g ], [ %i.h, %bb.h ], [ %i.h, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.k
  store i8 17, ptr %i.u, align 1, !tbaa !219
  %i.v = trunc i64 %i.k to i32
  call void @_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE19populateInstructionINS0_19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEEEEvRS5_T_(ptr noundef nonnull align 8 dereferenceable(91) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr nonnull %1, i32 %i.v)
  br label %bb.j

bb.j:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_11BracketInsnEEENS1_18InstructionWrapperIT_EEv.exit, %_ZN6hermes5regex19RegexBytecodeStream4emitINS0_14U16BracketInsnEEENS1_18InstructionWrapperIT_EEv.exit
  ret ptr null
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE19populateInstructionINS0_19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEEEEvRS5_T_(ptr noundef nonnull align 8 dereferenceable(91) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %2, i32 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.hermes::regex::BracketRange32", align 8 ; 5 uses
  %5 = alloca %"class.hermes::CodePointSet", align 8 ; 18 uses
  %i.a = zext i32 %3 to i64                       ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.d = load ptr, ptr %2, align 8, !tbaa !197    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, %i.a
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.a, i64 noundef %i.g) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !523, !range !278, !noundef !242
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 5 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, -2
  %i.n = or disjoint i8 %i.m, %i.i
  store i8 %i.n, ptr %i.k, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !549  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !549  ; 2 uses
  %.not3840 = icmp eq ptr %i.p, %i.r
  br i1 %.not3840, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit16, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.t = load i8, ptr %i.s, align 1, !tbaa !534, !range !278, !noundef !242
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.u, label %_ZN6hermes12CodePointSetC2ERKS0_.exit, label %bb.g

.lr.ph:                                           ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit16
  %.sroa.027.041 = phi ptr [ %i.ai, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit16 ], [ %i.p, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit ] ; 3 uses
  %.sroa.09.0.copyload = load i8, ptr %.sroa.027.041, align 1, !tbaa !550
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.027.041, i64 1
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !119
  %i.w = trunc i8 %.sroa.5.0.copyload to i1
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.y = load ptr, ptr %2, align 8, !tbaa !197    ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %.not.i.i.i17 = icmp ugt i64 %i.ab, %i.a        ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  br i1 %.not.i.i.i17, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit16, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.a, i64 noundef %i.ab) #17
  unreachable

bb.e:                                             ; preds = %.lr.ph
  br i1 %.not.i.i.i17, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit16, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.a, i64 noundef %i.ab) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit16: ; preds = %bb.e, %bb.c
  %.sink69 = phi i8 [ 1, %bb.c ], [ 4, %bb.e ]
  %.sink68 = phi i8 [ 14, %bb.c ], [ 112, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 5 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = shl i8 %.sroa.09.0.copyload, %.sink69
  %i.ag = and i8 %i.af, %.sink68
  %i.ah = or i8 %i.ae, %i.ag
  store i8 %i.ah, ptr %i.ad, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.027.041, i64 2 ; 2 uses
  %.not38 = icmp eq ptr %i.ai, %i.r
  br i1 %.not38, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.aj, ptr %5, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.al, align 4, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !29 ; 6 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread, label %bb.h

_ZN6hermes12CodePointSetC2ERKS0_.exit.thread:     ; preds = %bb.g
  %i.ap = load ptr, ptr %5, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %._crit_edge45

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp ugt i32 %i.an, 4
  br i1 %i.ar, label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i, label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i: ; preds = %bb.h
  %i.as = zext i32 %i.an to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.aj, i64 noundef %i.as, i64 noundef 8) #15
  %.pre.i.i = load i32, ptr %i.am, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61, label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !27
  br label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i, %bb.h
  %i.at = phi ptr [ %.pre.i, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.aj, %bb.h ]
  %i.au = phi i32 [ %.pre.i.i, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.an, %bb.h ]
  %i.av = zext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.v, align 8, !tbaa !27
  %gepdiff.i.i.i = shl nuw nsw i64 %i.av, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 4 %i.aw, i64 %gepdiff.i.i.i, i1 false)
  br label %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61

_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61:   ; preds = %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !29
  %i.ax = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = zext i32 %i.an to i64
  %.idx62 = shl nuw nsw i64 %i.az, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx62
  br label %.lr.ph44

_ZN6hermes12CodePointSetC2ERKS0_.exit:            ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !535, !range !278, !noundef !242
  %i.bd = trunc nuw i8 %i.bc to i1
  call void @_ZN6hermes25makeCanonicallyEquivalentERKNS_12CodePointSetEb(ptr dead_on_unwind nonnull writable sret(%"class.hermes::CodePointSet") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i1 noundef zeroext %i.bd) #15
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !29 ; 2 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !27    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bg = zext i32 %.pre to i64
  %.idx = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx
  %.not42 = icmp eq i32 %.pre, 0
  br i1 %.not42, label %._crit_edge45, label %.lr.ph44

.lr.ph44:                                         ; preds = %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61, %_ZN6hermes12CodePointSetC2ERKS0_.exit
  %i.bi = phi ptr [ %i.ba, %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61 ], [ %i.bh, %_ZN6hermes12CodePointSetC2ERKS0_.exit ]
  %i.bj = phi ptr [ %i.ay, %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61 ], [ %i.bf, %_ZN6hermes12CodePointSetC2ERKS0_.exit ]
  %i.bk = phi ptr [ %i.ax, %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61 ], [ %i.be, %_ZN6hermes12CodePointSetC2ERKS0_.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.k

._crit_edge45.loopexit:                           ; preds = %bb.k
  %.pre47 = load ptr, ptr %5, align 8, !tbaa !27
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread, %._crit_edge45.loopexit, %_ZN6hermes12CodePointSetC2ERKS0_.exit
  %i.bn = phi ptr [ %i.bj, %._crit_edge45.loopexit ], [ %i.bf, %_ZN6hermes12CodePointSetC2ERKS0_.exit ], [ %i.aq, %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread ]
  %i.bo = phi ptr [ %.pre47, %._crit_edge45.loopexit ], [ %i.be, %_ZN6hermes12CodePointSetC2ERKS0_.exit ], [ %i.ap, %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread ] ; 2 uses
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.bq = load ptr, ptr %2, align 8, !tbaa !197   ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  %.not.i.i.i22 = icmp ugt i64 %i.bt, %i.a
  br i1 %.not.i.i.i22, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit23, label %bb.i

bb.i:                                             ; preds = %._crit_edge45
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.a, i64 noundef %i.bt) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit23: ; preds = %._crit_edge45
  %i.bu = load i32, ptr %i.bn, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i32 %i.bu, ptr %i.bw, align 1, !tbaa !552
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.by = icmp eq ptr %i.bo, %i.bx
  br i1 %i.by, label %_ZN6hermes12CodePointSetD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit23
  call void @free(ptr noundef %i.bo) #15
  br label %_ZN6hermes12CodePointSetD2Ev.exit

_ZN6hermes12CodePointSetD2Ev.exit:                ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_14U16BracketInsnEEptEv.exit23, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

bb.k:                                             ; preds = %.lr.ph44, %bb.k
  %.043 = phi ptr [ %i.bk, %.lr.ph44 ], [ %i.ck, %bb.k ] ; 3 uses
  %i.bz = load i32, ptr %.043, align 4, !tbaa !439 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.043, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !437
  %i.cc = add i32 %i.bz, -1
  %i.cd = add i32 %i.cc, %i.cb
  %.sroa.2.0.insert.ext = zext i32 %i.cd to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.bz to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.insert.insert, ptr %4, align 8
  %i.ce = load ptr, ptr %i.bl, align 8, !tbaa !208
  %i.cf = load ptr, ptr %1, align 8, !tbaa !208   ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.cj, ptr noundef nonnull %4, ptr noundef nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ck = getelementptr inbounds nuw i8, ptr %.043, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.bi
  br i1 %.not, label %._crit_edge45.loopexit, label %bb.k
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK6hermes5regex11BracketNodeINS0_16UTF16RegexTraitsEE19populateInstructionINS0_19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEEEEvRS5_T_(ptr noundef nonnull align 8 dereferenceable(91) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %2, i32 %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %"struct.hermes::regex::BracketRange32", align 8 ; 5 uses
  %5 = alloca %"class.hermes::CodePointSet", align 8 ; 18 uses
  %i.a = zext i32 %3 to i64                       ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.d = load ptr, ptr %2, align 8, !tbaa !197    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %.not.i.i.i = icmp ugt i64 %i.g, %i.a
  br i1 %.not.i.i.i, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.a, i64 noundef %i.g) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i8, ptr %i.h, align 8, !tbaa !523, !range !278, !noundef !242
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 5 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = and i8 %i.l, -2
  %i.n = or disjoint i8 %i.m, %i.i
  store i8 %i.n, ptr %i.k, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !549  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !549  ; 2 uses
  %.not3840 = icmp eq ptr %i.p, %i.r
  br i1 %.not3840, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit16, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 89
  %i.t = load i8, ptr %i.s, align 1, !tbaa !534, !range !278, !noundef !242
  %i.u = trunc nuw i8 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.u, label %_ZN6hermes12CodePointSetC2ERKS0_.exit, label %bb.g

.lr.ph:                                           ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit16
  %.sroa.027.041 = phi ptr [ %i.ai, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit16 ], [ %i.p, %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit ] ; 3 uses
  %.sroa.09.0.copyload = load i8, ptr %.sroa.027.041, align 1, !tbaa !550
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.027.041, i64 1
  %.sroa.5.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1, !tbaa !119
  %i.w = trunc i8 %.sroa.5.0.copyload to i1
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.y = load ptr, ptr %2, align 8, !tbaa !197    ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %.not.i.i.i17 = icmp ugt i64 %i.ab, %i.a        ; 2 uses
  br i1 %i.w, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  br i1 %.not.i.i.i17, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit16, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.a, i64 noundef %i.ab) #17
  unreachable

bb.e:                                             ; preds = %.lr.ph
  br i1 %.not.i.i.i17, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit16, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.a, i64 noundef %i.ab) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit16: ; preds = %bb.e, %bb.c
  %.sink69 = phi i8 [ 1, %bb.c ], [ 4, %bb.e ]
  %.sink68 = phi i8 [ 14, %bb.c ], [ 112, %bb.e ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.a
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 5 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = shl i8 %.sroa.09.0.copyload, %.sink69
  %i.ag = and i8 %i.af, %.sink68
  %i.ah = or i8 %i.ae, %i.ag
  store i8 %i.ah, ptr %i.ad, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.027.041, i64 2 ; 2 uses
  %.not38 = icmp eq ptr %i.ai, %i.r
  br i1 %.not38, label %._crit_edge, label %.lr.ph

bb.g:                                             ; preds = %._crit_edge
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.aj, ptr %5, align 8, !tbaa !27
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i32 0, ptr %i.ak, align 8, !tbaa !29
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 4, ptr %i.al, align 4, !tbaa !30
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i32, ptr %i.am, align 8, !tbaa !29 ; 6 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread, label %bb.h

_ZN6hermes12CodePointSetC2ERKS0_.exit.thread:     ; preds = %bb.g
  %i.ap = load ptr, ptr %5, align 8, !tbaa !27
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %._crit_edge45

bb.h:                                             ; preds = %bb.g
  %i.ar = icmp ugt i32 %i.an, 4
  br i1 %i.ar, label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i, label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i: ; preds = %bb.h
  %i.as = zext i32 %i.an to i64
  call void @_ZN4llvh15SmallVectorBase8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull %i.aj, i64 noundef %i.as, i64 noundef 8) #15
  %.pre.i.i = load i32, ptr %i.am, align 8, !tbaa !29 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %.pre.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61, label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i

_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i: ; preds = %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !27
  br label %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i

_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i: ; preds = %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i, %bb.h
  %i.at = phi ptr [ %.pre.i, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.aj, %bb.h ]
  %i.au = phi i32 [ %.pre.i.i, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i._ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i_crit_edge.i ], [ %i.an, %bb.h ]
  %i.av = zext i32 %i.au to i64
  %i.aw = load ptr, ptr %i.v, align 8, !tbaa !27
  %gepdiff.i.i.i = shl nuw nsw i64 %i.av, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr align 4 %i.aw, i64 %gepdiff.i.i.i, i1 false)
  br label %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61

_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61:   ; preds = %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.i.i, %_ZSt4copyIPKN6hermes14CodePointRangeEPS1_ET0_T_S6_S5_.exit30.i.thread.i.i
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !29
  %i.ax = load ptr, ptr %5, align 8, !tbaa !27    ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = zext i32 %i.an to i64
  %.idx62 = shl nuw nsw i64 %i.az, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.idx62
  br label %.lr.ph44

_ZN6hermes12CodePointSetC2ERKS0_.exit:            ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 90
  %i.bc = load i8, ptr %i.bb, align 2, !tbaa !535, !range !278, !noundef !242
  %i.bd = trunc nuw i8 %i.bc to i1
  call void @_ZN6hermes25makeCanonicallyEquivalentERKNS_12CodePointSetEb(ptr dead_on_unwind nonnull writable sret(%"class.hermes::CodePointSet") align 8 %5, ptr noundef nonnull align 8 dereferenceable(48) %i.v, i1 noundef zeroext %i.bd) #15
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !29 ; 2 uses
  %i.be = load ptr, ptr %5, align 8, !tbaa !27    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bg = zext i32 %.pre to i64
  %.idx = shl nuw nsw i64 %i.bg, 3
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx
  %.not42 = icmp eq i32 %.pre, 0
  br i1 %.not42, label %._crit_edge45, label %.lr.ph44

.lr.ph44:                                         ; preds = %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61, %_ZN6hermes12CodePointSetC2ERKS0_.exit
  %i.bi = phi ptr [ %i.ba, %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61 ], [ %i.bh, %_ZN6hermes12CodePointSetC2ERKS0_.exit ]
  %i.bj = phi ptr [ %i.ay, %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61 ], [ %i.bf, %_ZN6hermes12CodePointSetC2ERKS0_.exit ]
  %i.bk = phi ptr [ %i.ax, %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread61 ], [ %i.be, %_ZN6hermes12CodePointSetC2ERKS0_.exit ]
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.k

._crit_edge45.loopexit:                           ; preds = %bb.k
  %.pre47 = load ptr, ptr %5, align 8, !tbaa !27
  br label %._crit_edge45

._crit_edge45:                                    ; preds = %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread, %._crit_edge45.loopexit, %_ZN6hermes12CodePointSetC2ERKS0_.exit
  %i.bn = phi ptr [ %i.bj, %._crit_edge45.loopexit ], [ %i.bf, %_ZN6hermes12CodePointSetC2ERKS0_.exit ], [ %i.aq, %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread ]
  %i.bo = phi ptr [ %.pre47, %._crit_edge45.loopexit ], [ %i.be, %_ZN6hermes12CodePointSetC2ERKS0_.exit ], [ %i.ap, %_ZN6hermes12CodePointSetC2ERKS0_.exit.thread ] ; 2 uses
  %i.bp = load ptr, ptr %i.b, align 8, !tbaa !201
  %i.bq = load ptr, ptr %2, align 8, !tbaa !197   ; 2 uses
  %i.br = ptrtoint ptr %i.bp to i64
  %i.bs = ptrtoint ptr %i.bq to i64
  %i.bt = sub i64 %i.br, %i.bs                    ; 2 uses
  %.not.i.i.i22 = icmp ugt i64 %i.bt, %i.a
  br i1 %.not.i.i.i22, label %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit23, label %bb.i

bb.i:                                             ; preds = %._crit_edge45
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.15, i64 noundef %i.a, i64 noundef %i.bt) #17
  unreachable

_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit23: ; preds = %._crit_edge45
  %i.bu = load i32, ptr %i.bn, align 8, !tbaa !29
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.a
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i32 %i.bu, ptr %i.bw, align 1, !tbaa !552
  %i.bx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.by = icmp eq ptr %i.bo, %i.bx
  br i1 %i.by, label %_ZN6hermes12CodePointSetD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit23
  call void @free(ptr noundef %i.bo) #15
  br label %_ZN6hermes12CodePointSetD2Ev.exit

_ZN6hermes12CodePointSetD2Ev.exit:                ; preds = %_ZN6hermes5regex19RegexBytecodeStream18InstructionWrapperINS0_11BracketInsnEEptEv.exit23, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

bb.k:                                             ; preds = %.lr.ph44, %bb.k
  %.043 = phi ptr [ %i.bk, %.lr.ph44 ], [ %i.ck, %bb.k ] ; 3 uses
  %i.bz = load i32, ptr %.043, align 4, !tbaa !439 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.043, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !437
  %i.cc = add i32 %i.bz, -1
  %i.cd = add i32 %i.cc, %i.cb
  %.sroa.2.0.insert.ext = zext i32 %i.cd to i64
  %.sroa.2.0.insert.shift = shl nuw i64 %.sroa.2.0.insert.ext, 32
  %.sroa.0.0.insert.ext = zext i32 %i.bz to i64
  %.sroa.0.0.insert.insert = or disjoint i64 %.sroa.2.0.insert.shift, %.sroa.0.0.insert.ext
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store i64 %.sroa.0.0.insert.insert, ptr %4, align 8
  %i.ce = load ptr, ptr %i.bl, align 8, !tbaa !208
  %i.cf = load ptr, ptr %1, align 8, !tbaa !208   ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.cf, i64 %i.ci
  call void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(25) %1, ptr %i.cj, ptr noundef nonnull %4, ptr noundef nonnull %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ck = getelementptr inbounds nuw i8, ptr %.043, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ck, %i.bi
  br i1 %.not, label %._crit_edge45.loopexit, label %bb.k
}

declare void @_ZN6hermes25makeCanonicallyEquivalentERKNS_12CodePointSetEb(ptr dead_on_unwind writable sret(%"class.hermes::CodePointSet") align 8, ptr noundef nonnull align 8 dereferenceable(48), i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE15_M_range_insertIPKhEEvN9__gnu_cxx17__normal_iteratorIPhS1_EET_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPKhN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEET0_T_SA_S9_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 16 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !200
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !201  ; 8 uses
  %i.h = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.j = sub i64 %i.h, %i.i
  %.not46 = icmp ult i64 %i.j, %i.c
  br i1 %.not46, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.l = sub i64 %i.i, %i.k                       ; 10 uses
  %i.m = icmp ugt i64 %i.l, %i.c
  br i1 %i.m, label %bb.d, label %_ZSt9__advanceIPKhlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %i.c
  %i.o = getelementptr inbounds i8, ptr %i.g, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %i.c, 1                     ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f, !prof !44

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.o, i64 %i.c, i1 false)
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %i.c, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !18
  store i8 %i.s, ptr %i.g, align 1, !tbaa !18
  br label %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !201
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.c
  store ptr %i.u, ptr %i.f, align 8, !tbaa !201
  %i.v = sub i64 %i.p, %i.k                       ; 4 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %bb.i, !prof !44

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.x = sub nsw i64 0, %i.v
  %i.y = getelementptr inbounds i8, ptr %i.g, i64 %i.x
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %1, i64 %i.v, i1 false)
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPhS0_SaIhEET0_T_S3_S2_RT1_.exit
  %i.z = icmp eq i64 %i.v, 1
  br i1 %i.z, label %bb.j, label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 -1
  %i.ab = load i8, ptr %1, align 1, !tbaa !18
  store i8 %i.ab, ptr %i.aa, align 1, !tbaa !18
  br label %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.q, label %bb.k, label %bb.l, !prof !44

bb.k:                                             ; preds = %_ZSt13move_backwardIPhS0_ET0_T_S2_S1_.exit
end_hunk_0
