Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/CPlusPlusLanguage?download=true
inline.NumInlined: 8510
inline.NumDeleted: 2274
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNK4llvm16itanium_demangle24ForwardTemplateReference15hasFunctionSlowERNS0_12OutputBufferE:bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(11) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %1) #27, !inline_history !29
  br label %_ZNK4llvm16itanium_demangle4Node11hasFunctionERNS0_12OutputBufferE.exit

_ZNK4llvm16itanium_demangle4Node11hasFunctionERNS0_12OutputBufferE.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i1 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  store i8 0, ptr %i.a, align 8, !tbaa !223
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNK4llvm16itanium_demangle4Node11hasFunctionERNS0_12OutputBufferE.exit
  %.0 = phi i1 [ %.0.i, %_ZNK4llvm16itanium_demangle4Node11hasFunctionERNS0_12OutputBufferE.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm16itanium_demangle24ForwardTemplateReference13getSyntaxNodeERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !427, !range !90, !noundef !91
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !223
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !388  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(11) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %1) #27
  store i8 0, ptr %i.a, align 8, !tbaa !223
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle24ForwardTemplateReferenceD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle24ForwardTemplateReference9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !427, !range !90, !noundef !91
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !223
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !388
  %i.f = load ptr, ptr %1, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.e) #27
  store i8 0, ptr %i.a, align 8, !tbaa !223
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle24ForwardTemplateReference10printRightERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !427, !range !90, !noundef !91
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !223
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !388
  %i.f = load ptr, ptr %1, align 8, !tbaa !47
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.e) #27
  store i8 0, ptr %i.a, align 8, !tbaa !223
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 7 uses
  %2 = alloca %"class.llvm::itanium_demangle::NodeArray", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.f = load ptr, ptr %0, align 8, !tbaa !155    ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !156  ; 8 uses
  %i.i = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.j = ptrtoint ptr %i.f to i64
  %i.k = sub i64 %i.i, %i.j                       ; 2 uses
  %i.l = icmp ult i64 %i.k, 2
  br i1 %i.l, label %.critedge82, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.a
  %i.m = load i16, ptr %i.f, align 1
  %i.n = icmp ne i16 %i.m, 29543
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0                      ; 2 uses
  br i1 %i.p, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread614

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread614: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  store i8 0, ptr %i.a, align 1, !tbaa !223
  br label %.preheader.i

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 2 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !155
  %.pre490.a = ptrtoint ptr %i.q to i64
  %.pre491 = sub i64 %i.i, %.pre490.a             ; 2 uses
  store i8 1, ptr %i.a, align 1, !tbaa !223
  %i.r = icmp ult i64 %.pre491, 2
  br i1 %i.r, label %.critedge82, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread614, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.s = phi i8 [ 0, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread614 ], [ 1, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.t = phi ptr [ %i.f, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread614 ], [ %i.q, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 29 uses
  %.pre-phi492618 = phi i64 [ %i.k, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread614 ], [ %.pre491, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.u = load i8, ptr %i.t, align 1, !tbaa !58    ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread24.i, %.preheader.i
  %.031.i = phi i64 [ 62, %.preheader.i ], [ %i.ah, %.thread24.i ] ; 3 uses
  %.01030.i = phi i64 [ 0, %.preheader.i ], [ %i.ag, %.thread24.i ] ; 3 uses
  %i.w = add i64 %.01030.i, %.031.i
  %i.x = lshr i64 %i.w, 1                         ; 5 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE3OpsE, i64 %i.x ; 2 uses
  %.val15.i = load i8, ptr %i.y, align 16, !tbaa !58 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 1
  %.val16.i = load i8, ptr %i.z, align 1
  %i.aa = icmp slt i8 %.val15.i, %i.u
  br i1 %i.aa, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.ab = add nuw nsw i64 %i.x, 1
  br label %.thread24.i

bb.c:                                             ; preds = %bb.b
  %i.ac = icmp eq i8 %.val15.i, %i.u
  br i1 %i.ac, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i, label %.thread24.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i: ; preds = %bb.c
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !58
  %i.ae = icmp slt i8 %.val16.i, %i.ad
  %cond.fr19.i = freeze i1 %i.ae                  ; 2 uses
  %i.af = add nuw nsw i64 %i.x, 1
  %spec.select.i = select i1 %cond.fr19.i, i64 %i.af, i64 %.01030.i
  %spec.select29.i = select i1 %cond.fr19.i, i64 %.031.i, i64 %i.x
  br label %.thread24.i

.thread24.i:                                      ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i, %bb.c, %.thread.i
  %i.ag = phi i64 [ %.01030.i, %bb.c ], [ %spec.select.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i ], [ %i.ab, %.thread.i ] ; 4 uses
  %i.ah = phi i64 [ %i.x, %bb.c ], [ %spec.select29.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i ], [ %.031.i, %.thread.i ] ; 2 uses
  %.not.i = icmp eq i64 %i.ah, %i.ag
  br i1 %.not.i, label %bb.d, label %bb.b, !llvm.loop !30

bb.d:                                             ; preds = %.thread24.i
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE3OpsE, i64 %i.ag ; 17 uses
  %.val17.i = load i8, ptr %i.ai, align 16, !tbaa !58
  %i.aj = icmp eq i8 %.val17.i, %i.u
  br i1 %i.aj, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i: ; preds = %bb.d
  %i.ak = getelementptr i8, ptr %i.ai, i64 1
  %.val18.i = load i8, ptr %i.ak, align 1
  %i.al = load i8, ptr %i.v, align 1, !tbaa !58
  %.not28.i = icmp eq i8 %.val18.i, %i.al
  br i1 %.not28.i, label %bb.e, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit

bb.e:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 4 uses
  store ptr %i.am, ptr %0, align 8, !tbaa !155
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.an = getelementptr i8, ptr %i.ai, i64 2
  %.val112 = load i8, ptr %i.an, align 2, !tbaa !437
  %i.ao = getelementptr i8, ptr %i.ai, i64 8
  %.val113 = load ptr, ptr %i.ao, align 8, !tbaa !438 ; 4 uses
  %i.ap = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val113) #27 ; 3 uses
  %i.aq = and i64 %i.ag, 1152921504606846975      ; 4 uses
  %i.ar = shl nuw i64 1, %i.aq                    ; 2 uses
  %i.as = and i64 %i.ar, 414331165718019679
  %.not = icmp eq i64 %i.as, 0
  br i1 %.not, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = getelementptr inbounds nuw i8, ptr %.val113, i64 8 ; 3 uses
  %i.au = add i64 %i.ap, -8                       ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i: ; preds = %bb.f
  %i.aw = load i8, ptr %i.at, align 1, !tbaa !58
  %i.ax = icmp eq i8 %i.aw, 32
  br i1 %i.ax, label %bb.g, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit

bb.g:                                             ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.val113, i64 9
  %i.az = add i64 %i.ap, -9
  br label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit: ; preds = %bb.e, %bb.f, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i, %bb.g
  %.sroa.7.0.i = phi ptr [ %i.ay, %bb.g ], [ %i.at, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i ], [ %.val113, %bb.e ], [ %i.at, %bb.f ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.az, %bb.g ], [ %i.au, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i ], [ %i.ap, %bb.e ], [ 0, %bb.f ] ; 5 uses
  store i64 %.sroa.0.0.i, ptr %1, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.7.0.i, ptr %i.ba, align 8
  switch i8 %.val112, label %bb.ds [
    i8 2, label %bb.h
    i8 0, label %bb.k
    i8 1, label %bb.o
    i8 3, label %bb.u
    i8 4, label %bb.x
    i8 5, label %bb.aa
    i8 6, label %bb.bh
    i8 7, label %bb.bl
    i8 8, label %bb.cb
    i8 9, label %bb.de
    i8 11, label %bb.di
    i8 12, label %bb.dl
    i8 10, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit
  ]

bb.h:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.bb = getelementptr i8, ptr %i.ai, i64 3
  %.val127 = load i8, ptr %i.bb, align 1
  %i.bc = lshr i8 %.val127, 1
  %i.bd = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0), !inline_history !1425 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0), !inline_history !1425 ; 2 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_10BinaryExprEJRPNS0_4NodeERSt17basic_string_viewIcSt11char_traitsIcEESA_RNS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.bd, i64 %.sroa.0.0.i, ptr nonnull %.sroa.7.0.i, ptr nonnull %i.bf, i8 %i.bc), !inline_history !1425
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.k:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.bi = getelementptr i8, ptr %i.ai, i64 3
  %.val126 = load i8, ptr %i.bi, align 1
  %i.bj = lshr i8 %.val126, 1
  %i.bk = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0), !inline_history !1426 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !172 ; 2 uses
  %i.bo = ptrtoint ptr %i.bn to i64
  %i.bp = add i64 %i.bo, 40                       ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !173
  %i.bs = icmp ult i64 %i.bp, %i.br
  br i1 %i.bs, label %bb.m, label %bb.n, !prof !174

bb.m:                                             ; preds = %bb.l
  %i.bt = inttoptr i64 %i.bp to ptr
  store ptr %i.bt, ptr %i.bm, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSD_4PrecEEEESE_DpOT0_.exit

bb.n:                                             ; preds = %bb.l
  %i.bu = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bm, i64 noundef 40, i64 noundef 40, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSD_4PrecEEEESE_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSD_4PrecEEEESE_DpOT0_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i313 = phi ptr [ %i.bn, %bb.m ], [ %i.bu, %bb.n ] ; 7 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i313, i64 8
  store i8 66, ptr %i.bv, align 8, !tbaa !179
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i313, i64 9 ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 1
  %i.by = and i16 %i.bx, -4096
  %i.bz = zext nneg i8 %i.bj to i16
  %i.ca = or disjoint i16 %i.by, %i.bz
  %i.cb = or i16 %i.ca, 1344
  store i16 %i.cb, ptr %i.bw, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle10PrefixExprE, i64 16), ptr %.0.i.i.i.i313, align 8, !tbaa !47
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i313, i64 16
  store i64 %.sroa.0.0.i, ptr %i.cc, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i.i.i314 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i313, i64 24
  store ptr %.sroa.7.0.i, ptr %.sroa.2.0..sroa_idx.i.i.i314, align 8, !tbaa !64
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i313, i64 32
  store ptr %i.bk, ptr %i.cd, align 8, !tbaa !440
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.o:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %.not.i196 = icmp eq ptr %i.am, %i.h
  br i1 %.not.i196, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load i8, ptr %i.am, align 1, !tbaa !58
  %i.cf = icmp eq i8 %i.ce, 95
  br i1 %i.cf, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  store ptr %i.cg, ptr %0, align 8, !tbaa !155
  %i.ch = getelementptr i8, ptr %i.ai, i64 3
  %.val125 = load i8, ptr %i.ch, align 1
  %i.ci = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0), !inline_history !1426 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = lshr i8 %.val125, 1
  %i.cl = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSD_4PrecEEEESE_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, i64 %.sroa.0.0.i, ptr nonnull %.sroa.7.0.i, ptr nonnull %i.ci, i8 %i.ck), !inline_history !1426
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.s:                                             ; preds = %bb.p, %bb.o
  %i.cm = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = getelementptr i8, ptr %i.ai, i64 3
  %.val124 = load i8, ptr %i.co, align 1
  %i.cp = lshr i8 %.val124, 1
  %i.cq = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_11PostfixExprEJRPNS0_4NodeERSt17basic_string_viewIcSt11char_traitsIcEENS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 %i.cp)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.u:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.cr = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ct = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = getelementptr i8, ptr %i.ai, i64 3
  %.val123 = load i8, ptr %i.cv, align 1
  %i.cw = lshr i8 %.val123, 1
  %i.cx = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_18ArraySubscriptExprEJRPNS0_4NodeESA_NS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.cr, ptr nonnull %i.ct, i8 %i.cw)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.x:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.cy = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.da = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dc = getelementptr i8, ptr %i.ai, i64 3
  %.val122 = load i8, ptr %i.dc, align 1
  %i.dd = lshr i8 %.val122, 1
  %i.de = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_10MemberExprEJRPNS0_4NodeERSt17basic_string_viewIcSt11char_traitsIcEESA_NS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.cy, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.da, i8 %i.dd)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.aa:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !157 ; 2 uses
  %i.di = load ptr, ptr %i.df, align 8, !tbaa !118
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = sub i64 %i.dj, %i.dk                    ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit, %bb.aa
  %i.do = phi ptr [ %i.ep, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ %i.dh, %bb.aa ]
  %i.dp = phi ptr [ %.pre487, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ %i.h, %bb.aa ]
  %i.dq = phi ptr [ %.pre486.a, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ %i.am, %bb.aa ] ; 3 uses
  %.not.i204 = icmp eq ptr %i.dq, %i.dp
  br i1 %.not.i204, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !58
  %i.ds = icmp eq i8 %i.dr, 95
  br i1 %i.ds, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
end_hunk_0
begin_hunk_1_@_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv:bb.a
bb.ao:                                            ; preds = %bb.ac
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  store ptr %i.eq, ptr %0, align 8, !tbaa !155
  %i.er = load ptr, ptr %i.df, align 8, !tbaa !118
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %i.dl ; 3 uses
  %i.et = ptrtoint ptr %i.do to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 7 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !172 ; 2 uses
  %i.ey = ptrtoint ptr %i.ex to i64
  %i.ez = add i64 %i.ev, %i.ey                    ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !173
  %i.fc = icmp ult i64 %i.ez, %i.fb
  br i1 %i.fc, label %bb.ap, label %bb.aq, !prof !174

bb.ap:                                            ; preds = %bb.ao
  %i.fd = inttoptr i64 %i.ez to ptr
  store ptr %i.fd, ptr %i.ew, align 8, !tbaa !172
  br label %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.fe = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ew, i64 noundef %i.ev, i64 noundef %i.ev, i8 3)
  br label %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i

_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i = phi ptr [ %i.ex, %bb.ap ], [ %i.fe, %bb.aq ] ; 3 uses
  %i.ff = icmp sgt i64 %i.ev, 8
  br i1 %i.ff, label %bb.ar, label %bb.as, !prof !174

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.i.i.i.i.i, ptr align 8 %i.es, i64 %i.ev, i1 false)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit

bb.as:                                            ; preds = %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i
  %i.fg = icmp eq i64 %i.ev, 8
  br i1 %i.fg, label %bb.at, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit

bb.at:                                            ; preds = %bb.as
  %i.fh = load ptr, ptr %i.es, align 8, !tbaa !121
  store ptr %i.fh, ptr %.0.i.i.i.i.i, align 8, !tbaa !121
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit: ; preds = %bb.ar, %bb.as, %bb.at
  %i.fi = ashr exact i64 %i.ev, 3
  %i.fj = load ptr, ptr %i.df, align 8, !tbaa !118
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 %i.dl
  store ptr %i.fk, ptr %i.dg, align 8, !tbaa !157
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %.sroa.01.0.copyload.i = load ptr, ptr %i.fl, align 8, !tbaa !64
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !76
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %.sroa.0.0.copyload.i = load ptr, ptr %i.fm, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !76
  tail call fastcc void @_ZN12_GLOBAL__N_119ManglingSubstitutorINS_15TypeSubstitutorEE13trySubstituteEN4llvm9StringRefES4_(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr %.sroa.01.0.copyload.i, i64 %.sroa.22.0.copyload.i, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i), !inline_history !183
  %i.fn = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(1088) %0), !inline_history !183 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit
  %i.fp = load ptr, ptr %0, align 8, !tbaa !155   ; 6 uses
  %i.fq = load ptr, ptr %i.g, align 8, !tbaa !156 ; 3 uses
  %i.fr = ptrtoint ptr %i.fq to i64
  %i.fs = ptrtoint ptr %i.fp to i64
  %i.ft = sub i64 %i.fr, %i.fs
  %i.fu = icmp ult i64 %i.ft, 2
  br i1 %i.fu, label %.split447, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fv = load i16, ptr %i.fp, align 1
  %i.fw = icmp ne i16 %i.fv, 26992
  %i.fx = zext i1 %i.fw to i32
  %i.fy = icmp eq i32 %i.fx, 0
  br i1 %i.fy, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit668, label %.split447

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit668: ; preds = %bb.av
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fp, i64 2 ; 2 uses
  store ptr %i.fz, ptr %0, align 8, !tbaa !155
  %i.ga = load ptr, ptr %i.dg, align 8, !tbaa !157
  %i.gb = load ptr, ptr %i.df, align 8, !tbaa !118
  %i.gc = ptrtoint ptr %i.ga to i64
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = sub i64 %i.gc, %i.gd
  br label %.split447.us.a

.split447.us.a:                                   ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit668, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit212.us
  %i.gf = phi ptr [ %i.fq, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit668 ], [ %.pre808, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit212.us ]
  %i.gg = phi ptr [ %i.fz, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit668 ], [ %.pre807.a, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit212.us ] ; 3 uses
  %.not.i207.us = icmp eq ptr %i.gg, %i.gf
  br i1 %.not.i207.us, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.split447.us.a
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !58
  %i.gi = icmp eq i8 %i.gh, 69
  br i1 %i.gi, label %.split449.us, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.split447.us.a
  %i.gj = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %.not75.us = icmp eq ptr %i.gj, null
  br i1 %.not75.us, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gk = load ptr, ptr %i.dg, align 8, !tbaa !157 ; 3 uses
  %i.gl = load ptr, ptr %i.dm, align 8, !tbaa !119
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %bb.az, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit212.us

bb.az:                                            ; preds = %bb.ay
  %i.gn = load ptr, ptr %i.df, align 8, !tbaa !118 ; 5 uses
  %i.go = ptrtoint ptr %i.gk to i64
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = sub i64 %i.go, %i.gp                    ; 6 uses
  %i.gr = ashr exact i64 %i.gq, 2
  %i.gs = icmp eq ptr %i.gn, %i.dn
  %i.gt = shl i64 %i.gq, 1                        ; 2 uses
  br i1 %i.gs, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gu = tail call ptr @realloc(ptr noundef %i.gn, i64 noundef %i.gt) #34 ; 3 uses
  store ptr %i.gu, ptr %i.df, align 8, !tbaa !118
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %.split452.us, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i210.us

bb.bb:                                            ; preds = %bb.az
  %i.gw = tail call noalias ptr @malloc(i64 noundef %i.gt) #33 ; 5 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %.split454.us, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gy = icmp sgt i64 %i.gq, 8
  br i1 %i.gy, label %bb.bf, label %bb.bd, !prof !174

bb.bd:                                            ; preds = %bb.bc
  %i.gz = icmp eq i64 %i.gq, 8
  br i1 %i.gz, label %bb.be, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i211.us

bb.be:                                            ; preds = %bb.bd
  %i.ha = load ptr, ptr %i.gn, align 8, !tbaa !121
  store ptr %i.ha, ptr %i.gw, align 8, !tbaa !121
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i211.us

bb.bf:                                            ; preds = %bb.bc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gw, ptr align 8 %i.gn, i64 %i.gq, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i211.us

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i211.us: ; preds = %bb.bf, %bb.be, %bb.bd
  store ptr %i.gw, ptr %i.df, align 8, !tbaa !118
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i210.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i210.us: ; preds = %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i211.us, %bb.ba
  %i.hb = phi ptr [ %i.gu, %bb.ba ], [ %i.gw, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i211.us ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %i.gq
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.gr
  store ptr %i.hd, ptr %i.dm, align 8, !tbaa !119
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit212.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit212.us: ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i210.us, %bb.ay
  %i.he = phi ptr [ %i.hc, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i210.us ], [ %i.gk, %bb.ay ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 8
  store ptr %i.hf, ptr %i.dg, align 8, !tbaa !157
  store ptr %i.gj, ptr %i.he, align 8, !tbaa !121
  %.pre807.a = load ptr, ptr %0, align 8, !tbaa !155
  %.pre808 = load ptr, ptr %i.g, align 8, !tbaa !156
  br label %.split447.us.a, !llvm.loop !1428

.split447:                                        ; preds = %bb.au, %bb.av
  %.not.i207 = icmp eq ptr %i.fp, %i.fq
  br i1 %.not.i207, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bg

bb.bg:                                            ; preds = %.split447
  %i.hg = load ptr, ptr %i.dg, align 8, !tbaa !157
  %i.hh = ptrtoint ptr %i.hg to i64
  %i.hi = load ptr, ptr %i.df, align 8, !tbaa !118
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.hh, %i.hj
  %i.hl = load i8, ptr %i.fp, align 1, !tbaa !58
  %i.hm = icmp eq i8 %i.hl, 69
  br i1 %i.hm, label %.split449.us, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

.split454.us:                                     ; preds = %bb.bb
  tail call void @abort() #30
  unreachable

.split452.us:                                     ; preds = %bb.ba
  tail call void @abort() #30
  unreachable

.split449.us:                                     ; preds = %bb.aw, %bb.bg
  %.in730 = phi i64 [ %i.hk, %bb.bg ], [ %i.ge, %bb.aw ]
  %.us-phi450 = phi ptr [ %i.fp, %bb.bg ], [ %i.gg, %bb.aw ]
  %i.hn = ashr exact i64 %.in730, 3
  %i.ho = getelementptr inbounds nuw i8, ptr %.us-phi450, i64 1
  store ptr %i.ho, ptr %0, align 8, !tbaa !155
  %i.hp = tail call fastcc { ptr, i64 } @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm(ptr noundef nonnull align 8 dereferenceable(888) %0, i64 noundef %i.hn) ; 2 uses
  %i.hq = extractvalue { ptr, i64 } %i.hp, 0
  %i.hr = extractvalue { ptr, i64 } %i.hp, 1
  %i.hs = getelementptr i8, ptr %i.ai, i64 3
  %.val139 = load i8, ptr %i.hs, align 1
  %3 = lshr i64 5189413545564999712, %i.aq
  %4 = trunc i64 %3 to i8
  %i.ht = and i8 %4, 1
  %i.hu = lshr i8 %.val139, 1
  %i.hv = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_7NewExprEJRNS0_9NodeArrayERPNS0_4NodeES9_RbbNSA_4PrecEEEESB_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr %.0.i.i.i.i.i, i64 %i.fi, ptr nonnull %i.fn, ptr %i.hq, i64 %i.hr, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i8 %i.ht, i8 %i.hu)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.bh:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.hw = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.hx = icmp eq ptr %i.hw, null
  br i1 %i.hx, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hy = getelementptr i8, ptr %i.ai, i64 3
  %.val138 = load i8, ptr %i.hy, align 1
  %5 = lshr i64 5189413545564999712, %i.aq
  %6 = trunc i64 %5 to i8
  %i.hz = and i8 %6, 1
  %i.ia = lshr i8 %.val138, 1
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !172 ; 2 uses
  %i.id = ptrtoint ptr %i.ic to i64
  %i.ie = add i64 %i.id, 32                       ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !173
  %i.ih = icmp ult i64 %i.ie, %i.ig
  br i1 %i.ih, label %bb.bj, label %bb.bk, !prof !174

bb.bj:                                            ; preds = %bb.bi
  %i.ii = inttoptr i64 %i.ie to ptr
  store ptr %i.ii, ptr %i.ib, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS8_4PrecEEEES9_DpOT0_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.ij = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ib, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS8_4PrecEEEES9_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS8_4PrecEEEES9_DpOT0_.exit: ; preds = %bb.bj, %bb.bk
  %.0.i.i.i.i = phi ptr [ %i.ic, %bb.bj ], [ %i.ij, %bb.bk ] ; 7 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i8 65, ptr %i.ik, align 8, !tbaa !179
  %i.il = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 9 ; 2 uses
  %i.im = load i16, ptr %i.il, align 1
  %i.in = and i16 %i.im, -4096
  %i.io = zext nneg i8 %i.ia to i16
  %i.ip = or disjoint i16 %i.in, %i.io
  %i.iq = or i16 %i.ip, 1344
  store i16 %i.iq, ptr %i.il, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle10DeleteExprE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !47
  %i.ir = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store ptr %i.hw, ptr %i.ir, align 8, !tbaa !442
  %i.is = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  store i8 %i.s, ptr %i.is, align 8, !tbaa !443
  %i.it = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 25
  store i8 %i.hz, ptr %i.it, align 1, !tbaa !444
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.bl:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.iu = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.iv = icmp eq ptr %i.iu, null
  br i1 %i.iv, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !157
  %i.iz = load ptr, ptr %i.iw, align 8, !tbaa !118
  %i.ja = ptrtoint ptr %i.iy to i64
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %i.ja, %i.jb
  %i.jd = ashr exact i64 %i.jc, 3
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit218, %bb.bm
  %i.jg = load ptr, ptr %0, align 8, !tbaa !155   ; 3 uses
  %i.jh = load ptr, ptr %i.g, align 8, !tbaa !156
  %.not.i213 = icmp eq ptr %i.jg, %i.jh
  br i1 %.not.i213, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ji = load i8, ptr %i.jg, align 1, !tbaa !58
  %i.jj = icmp eq i8 %i.ji, 69
  br i1 %i.jj, label %bb.ca, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.jk = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %.not74 = icmp eq ptr %i.jk, null
  br i1 %.not74, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jl = load ptr, ptr %i.ix, align 8, !tbaa !157 ; 3 uses
  %i.jm = load ptr, ptr %i.je, align 8, !tbaa !119
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %bb.br, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit218

bb.br:                                            ; preds = %bb.bq
  %i.jo = load ptr, ptr %i.iw, align 8, !tbaa !118 ; 5 uses
  %i.jp = ptrtoint ptr %i.jl to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 6 uses
  %i.js = ashr exact i64 %i.jr, 2
  %i.jt = icmp eq ptr %i.jo, %i.jf
  %i.ju = shl i64 %i.jr, 1                        ; 2 uses
  br i1 %i.jt, label %bb.bs, label %bb.by

bb.bs:                                            ; preds = %bb.br
  %i.jv = tail call noalias ptr @malloc(i64 noundef %i.ju) #33 ; 5 uses
  %i.jw = icmp eq ptr %i.jv, null
  br i1 %i.jw, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  tail call void @abort() #30
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.jx = icmp sgt i64 %i.jr, 8
  br i1 %i.jx, label %bb.bv, label %bb.bw, !prof !174

bb.bv:                                            ; preds = %bb.bu
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jv, ptr align 8 %i.jo, i64 %i.jr, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i217

bb.bw:                                            ; preds = %bb.bu
  %i.jy = icmp eq i64 %i.jr, 8
  br i1 %i.jy, label %bb.bx, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i217

bb.bx:                                            ; preds = %bb.bw
  %i.jz = load ptr, ptr %i.jo, align 8, !tbaa !121
  store ptr %i.jz, ptr %i.jv, align 8, !tbaa !121
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i217

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i217: ; preds = %bb.bx, %bb.bw, %bb.bv
  store ptr %i.jv, ptr %i.iw, align 8, !tbaa !118
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i216

bb.by:                                            ; preds = %bb.br
  %i.ka = tail call ptr @realloc(ptr noundef %i.jo, i64 noundef %i.ju) #34 ; 3 uses
  store ptr %i.ka, ptr %i.iw, align 8, !tbaa !118
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.bz, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i216

bb.bz:                                            ; preds = %bb.by
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i216: ; preds = %bb.by, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i217
  %i.kc = phi ptr [ %i.ka, %bb.by ], [ %i.jv, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i217 ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.jr
  %i.ke = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.js
  store ptr %i.ke, ptr %i.je, align 8, !tbaa !119
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit218

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit218: ; preds = %bb.bq, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i216
  %i.kf = phi ptr [ %i.kd, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i216 ], [ %i.jl, %bb.bq ] ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 8
  store ptr %i.kg, ptr %i.ix, align 8, !tbaa !157
  store ptr %i.jk, ptr %i.kf, align 8, !tbaa !121
  br label %bb.bn, !llvm.loop !1429

bb.ca:                                            ; preds = %bb.bo
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jg, i64 1
  store ptr %i.kh, ptr %0, align 8, !tbaa !155
  %i.ki = tail call fastcc { ptr, i64 } @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm(ptr noundef nonnull align 8 dereferenceable(888) %0, i64 noundef %i.jd) ; 2 uses
  %i.kj = extractvalue { ptr, i64 } %i.ki, 0
  %i.kk = extractvalue { ptr, i64 } %i.ki, 1
  %i.kl = getelementptr i8, ptr %i.ai, i64 3
  %.val137 = load i8, ptr %i.kl, align 1
  %7 = lshr i64 5189413545564999712, %i.aq
  %8 = trunc i64 %7 to i8
  %i.km = and i8 %8, 1
  %i.kn = lshr i8 %.val137, 1
  %i.ko = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_8CallExprEJRPNS0_4NodeENS0_9NodeArrayEbNS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.iu, ptr %i.kj, i64 %i.kk, i8 %i.km, i8 %i.kn)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.cb:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.kq = load i8, ptr %i.kp, align 8, !tbaa !223, !range !90, !noundef !91
  store i8 0, ptr %i.kp, align 8, !tbaa !223
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %.sroa.01.0.copyload.i219 = load ptr, ptr %i.kr, align 8, !tbaa !64
  %.sroa.22.0..sroa_idx.i220 = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.sroa.22.0.copyload.i221 = load i64, ptr %.sroa.22.0..sroa_idx.i220, align 8, !tbaa !76
  %i.ks = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %.sroa.0.0.copyload.i222 = load ptr, ptr %i.ks, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i223 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %.sroa.2.0.copyload.i224 = load i64, ptr %.sroa.2.0..sroa_idx.i223, align 8, !tbaa !76
  tail call fastcc void @_ZN12_GLOBAL__N_119ManglingSubstitutorINS_15TypeSubstitutorEE13trySubstituteEN4llvm9StringRefES4_(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr %.sroa.01.0.copyload.i219, i64 %.sroa.22.0.copyload.i221, ptr %.sroa.0.0.copyload.i222, i64 %.sroa.2.0.copyload.i224), !inline_history !183
  %i.kt = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(1088) %0), !inline_history !183 ; 2 uses
  store i8 %i.kq, ptr %i.kp, align 8, !tbaa !223
  %i.ku = icmp eq ptr %i.kt, null
  br i1 %i.ku, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !157 ; 3 uses
  %i.ky = load ptr, ptr %i.kv, align 8, !tbaa !118
  %i.kz = ptrtoint ptr %i.kx to i64
  %i.la = ptrtoint ptr %i.ky to i64
  %i.lb = sub i64 %i.kz, %i.la                    ; 2 uses
  %i.lc = load ptr, ptr %0, align 8, !tbaa !155   ; 4 uses
  %i.ld = load ptr, ptr %i.g, align 8, !tbaa !156 ; 2 uses
  %.not.i225 = icmp eq ptr %i.lc, %i.ld
  br i1 %.not.i225, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.le = load i8, ptr %i.lc, align 1, !tbaa !58  ; 2 uses
  %i.lf = icmp eq i8 %i.le, 95                    ; 2 uses
  br i1 %i.lf, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.us.preheader, label %bb.co

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.us.preheader: ; preds = %bb.cd
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lc, i64 1 ; 2 uses
  store ptr %i.lg, ptr %0, align 8, !tbaa !155
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.us

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.us: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.us.preheader, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit233.us
  %i.lj = phi ptr [ %i.kx, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.us.preheader ], [ %i.ml, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit233.us ]
  %i.lk = phi ptr [ %i.ld, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.us.preheader ], [ %.pre485, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit233.us ]
  %i.ll = phi ptr [ %i.lg, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.us.preheader ], [ %.pre, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit233.us ] ; 3 uses
  %.not.i228.us = icmp eq ptr %i.ll, %i.lk
  br i1 %.not.i228.us, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.us
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !58
  %i.ln = icmp eq i8 %i.lm, 69
  br i1 %i.ln, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit230, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.us
  %i.lo = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lq = load ptr, ptr %i.kw, align 8, !tbaa !157 ; 3 uses
  %i.lr = load ptr, ptr %i.lh, align 8, !tbaa !119
  %i.ls = icmp eq ptr %i.lq, %i.lr
  br i1 %i.ls, label %bb.ch, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit233.us

bb.ch:                                            ; preds = %bb.cg
  %i.lt = load ptr, ptr %i.kv, align 8, !tbaa !118 ; 5 uses
  %i.lu = ptrtoint ptr %i.lq to i64
  %i.lv = ptrtoint ptr %i.lt to i64
  %i.lw = sub i64 %i.lu, %i.lv                    ; 6 uses
  %i.lx = ashr exact i64 %i.lw, 2
  %i.ly = icmp eq ptr %i.lt, %i.li
  %i.lz = shl i64 %i.lw, 1                        ; 2 uses
  br i1 %i.ly, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.ma = tail call ptr @realloc(ptr noundef %i.lt, i64 noundef %i.lz) #34 ; 3 uses
  store ptr %i.ma, ptr %i.kv, align 8, !tbaa !118
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %.split.us, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i231.us

bb.cj:                                            ; preds = %bb.ch
  %i.mc = tail call noalias ptr @malloc(i64 noundef %i.lz) #33 ; 5 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %.split446.us, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.me = icmp sgt i64 %i.lw, 8
  br i1 %i.me, label %bb.cn, label %bb.cl, !prof !174

bb.cl:                                            ; preds = %bb.ck
  %i.mf = icmp eq i64 %i.lw, 8
  br i1 %i.mf, label %bb.cm, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i232.us

bb.cm:                                            ; preds = %bb.cl
  %i.mg = load ptr, ptr %i.lt, align 8, !tbaa !121
  store ptr %i.mg, ptr %i.mc, align 8, !tbaa !121
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i232.us

bb.cn:                                            ; preds = %bb.ck
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mc, ptr align 8 %i.lt, i64 %i.lw, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i232.us

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i232.us: ; preds = %bb.cn, %bb.cm, %bb.cl
  store ptr %i.mc, ptr %i.kv, align 8, !tbaa !118
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i231.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i231.us: ; preds = %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i232.us, %bb.ci
  %i.mh = phi ptr [ %i.ma, %bb.ci ], [ %i.mc, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i232.us ] ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.lw
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.mh, i64 %i.lx
  store ptr %i.mj, ptr %i.lh, align 8, !tbaa !119
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit233.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit233.us: ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i231.us, %bb.cg
  %i.mk = phi ptr [ %i.mi, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i231.us ], [ %i.lq, %bb.cg ] ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8 ; 2 uses
  store ptr %i.ml, ptr %i.kw, align 8, !tbaa !157
  store ptr %i.lo, ptr %i.mk, align 8, !tbaa !121
  %.pre = load ptr, ptr %0, align 8, !tbaa !155
  %.pre485 = load ptr, ptr %i.g, align 8, !tbaa !156
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.us

bb.co:                                            ; preds = %bb.cd
  %i.mm = icmp eq i8 %i.le, 69
  br i1 %i.mm, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit230, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.thread

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit230: ; preds = %bb.ce, %bb.co
  %i.mn = phi ptr [ %i.kx, %bb.co ], [ %i.lj, %bb.ce ]
  %.us-phi = phi ptr [ %i.lc, %bb.co ], [ %i.ll, %bb.ce ]
  %i.mo = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1
  store ptr %i.mo, ptr %0, align 8, !tbaa !155
  br label %.thread392

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.thread: ; preds = %bb.cc, %bb.co
  %i.mp = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mr = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.thread
  %i.mt = load ptr, ptr %i.kw, align 8, !tbaa !157 ; 3 uses
  %i.mu = load ptr, ptr %i.mp, align 8, !tbaa !119
  %i.mv = icmp eq ptr %i.mt, %i.mu
  br i1 %i.mv, label %bb.cq, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit233

bb.cq:                                            ; preds = %bb.cp
  %i.mw = load ptr, ptr %i.kv, align 8, !tbaa !118 ; 5 uses
  %i.mx = ptrtoint ptr %i.mt to i64
  %i.my = ptrtoint ptr %i.mw to i64
  %i.mz = sub i64 %i.mx, %i.my                    ; 6 uses
  %i.na = ashr exact i64 %i.mz, 2
  %i.nb = icmp eq ptr %i.mw, %i.mq
  %i.nc = shl i64 %i.mz, 1                        ; 2 uses
  br i1 %i.nb, label %bb.cr, label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  %i.nd = tail call noalias ptr @malloc(i64 noundef %i.nc) #33 ; 5 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %.split446.us, label %bb.cs

.split446.us:                                     ; preds = %bb.cj, %bb.cr
  tail call void @abort() #30
  unreachable

bb.cs:                                            ; preds = %bb.cr
  %i.nf = icmp sgt i64 %i.mz, 8
  br i1 %i.nf, label %bb.ct, label %bb.cu, !prof !174

bb.ct:                                            ; preds = %bb.cs
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.nd, ptr align 8 %i.mw, i64 %i.mz, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i232

bb.cu:                                            ; preds = %bb.cs
  %i.ng = icmp eq i64 %i.mz, 8
  br i1 %i.ng, label %bb.cv, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i232

bb.cv:                                            ; preds = %bb.cu
  %i.nh = load ptr, ptr %i.mw, align 8, !tbaa !121
  store ptr %i.nh, ptr %i.nd, align 8, !tbaa !121
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i232

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i232: ; preds = %bb.cv, %bb.cu, %bb.ct
  store ptr %i.nd, ptr %i.kv, align 8, !tbaa !118
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i231

bb.cw:                                            ; preds = %bb.cq
  %i.ni = tail call ptr @realloc(ptr noundef %i.mw, i64 noundef %i.nc) #34 ; 3 uses
  store ptr %i.ni, ptr %i.kv, align 8, !tbaa !118
  %i.nj = icmp eq ptr %i.ni, null
  br i1 %i.nj, label %.split.us, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i231

.split.us:                                        ; preds = %bb.ci, %bb.cw
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i231: ; preds = %bb.cw, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i232
  %i.nk = phi ptr [ %i.ni, %bb.cw ], [ %i.nd, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i232 ] ; 2 uses
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %i.mz
  %i.nm = getelementptr inbounds nuw [8 x i8], ptr %i.nk, i64 %i.na
  store ptr %i.nm, ptr %i.mp, align 8, !tbaa !119
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit233

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit233: ; preds = %bb.cp, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i231
  %i.nn = phi ptr [ %i.nl, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i231 ], [ %i.mt, %bb.cp ] ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 8 ; 2 uses
  store ptr %i.no, ptr %i.kw, align 8, !tbaa !157
  store ptr %i.mr, ptr %i.nn, align 8, !tbaa !121
  br label %.thread392

.thread392:                                       ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit233, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit230
  %.0.i226622 = phi i1 [ false, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit233 ], [ %i.lf, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit230 ]
  %i.np = phi ptr [ %i.no, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit233 ], [ %i.mn, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit230 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.nq = load ptr, ptr %i.kv, align 8, !tbaa !118
  %i.nr = getelementptr inbounds i8, ptr %i.nq, i64 %i.lb ; 3 uses
  %i.ns = ptrtoint ptr %i.np to i64
  %i.nt = ptrtoint ptr %i.nr to i64
  %i.nu = sub i64 %i.ns, %i.nt                    ; 8 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !172 ; 2 uses
  %i.nx = ptrtoint ptr %i.nw to i64
  %i.ny = add i64 %i.nu, %i.nx                    ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !173
  %i.ob = icmp ult i64 %i.ny, %i.oa
  br i1 %i.ob, label %bb.cx, label %bb.cy, !prof !174

bb.cx:                                            ; preds = %.thread392
  %i.oc = inttoptr i64 %i.ny to ptr
  store ptr %i.oc, ptr %i.nv, align 8, !tbaa !172
  br label %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i234

bb.cy:                                            ; preds = %.thread392
  %i.od = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.nv, i64 noundef %i.nu, i64 noundef %i.nu, i8 3)
  br label %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i234

_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i234: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i.i235 = phi ptr [ %i.nw, %bb.cx ], [ %i.od, %bb.cy ] ; 3 uses
  %i.oe = icmp sgt i64 %i.nu, 8
  br i1 %i.oe, label %bb.cz, label %bb.da, !prof !174

bb.cz:                                            ; preds = %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i234
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.i.i.i.i.i235, ptr align 8 %i.nr, i64 %i.nu, i1 false)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit238

bb.da:                                            ; preds = %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i234
  %i.of = icmp eq i64 %i.nu, 8
  br i1 %i.of, label %bb.db, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit238

bb.db:                                            ; preds = %bb.da
  %i.og = load ptr, ptr %i.nr, align 8, !tbaa !121
  store ptr %i.og, ptr %.0.i.i.i.i.i235, align 8, !tbaa !121
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit238

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit238: ; preds = %bb.cz, %bb.da, %bb.db
  %i.oh = ashr exact i64 %i.nu, 3
  %i.oi = load ptr, ptr %i.kv, align 8, !tbaa !118
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.lb
  store ptr %i.oj, ptr %i.kw, align 8, !tbaa !157
  store ptr %.0.i.i.i.i.i235, ptr %2, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.oh, ptr %i.ok, align 8
  %.not73 = icmp eq i64 %i.nu, 8
  %or.cond = or i1 %.0.i226622, %.not73
  br i1 %or.cond, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit238
  %i.ol = getelementptr i8, ptr %i.ai, i64 3
  %.val118 = load i8, ptr %i.ol, align 1
  %i.om = lshr i8 %.val118, 1
  %i.on = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_14ConversionExprEJRPNS0_4NodeERNS0_9NodeArrayENS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.kt, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 %i.om)
  br label %bb.dd

bb.dd:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit238, %bb.dc
  %.19 = phi ptr [ %i.on, %bb.dc ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit238 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.de:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.oo = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.op = icmp eq ptr %i.oo, null
  br i1 %i.op, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.oq = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.os = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.ou = getelementptr i8, ptr %i.ai, i64 3
  %.val117 = load i8, ptr %i.ou, align 1
  %i.ov = lshr i8 %.val117, 1
  %i.ow = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_15ConditionalExprEJRPNS0_4NodeESA_SA_NS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.oo, ptr nonnull %i.oq, ptr nonnull %i.os, i8 %i.ov)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.di:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.ox = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %.sroa.01.0.copyload.i239 = load ptr, ptr %i.ox, align 8, !tbaa !64
  %.sroa.22.0..sroa_idx.i240 = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.sroa.22.0.copyload.i241 = load i64, ptr %.sroa.22.0..sroa_idx.i240, align 8, !tbaa !76
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %.sroa.0.0.copyload.i242 = load ptr, ptr %i.oy, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i243 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %.sroa.2.0.copyload.i244 = load i64, ptr %.sroa.2.0..sroa_idx.i243, align 8, !tbaa !76
  tail call fastcc void @_ZN12_GLOBAL__N_119ManglingSubstitutorINS_15TypeSubstitutorEE13trySubstituteEN4llvm9StringRefES4_(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr %.sroa.01.0.copyload.i239, i64 %.sroa.22.0.copyload.i241, ptr %.sroa.0.0.copyload.i242, i64 %.sroa.2.0.copyload.i244), !inline_history !183
  %i.oz = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(1088) %0), !inline_history !183 ; 2 uses
  %i.pa = icmp eq ptr %i.oz, null
  br i1 %i.pa, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.pb = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.pc = icmp eq ptr %i.pb, null
  br i1 %i.pc, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.pd = getelementptr i8, ptr %i.ai, i64 3
  %.val116 = load i8, ptr %i.pd, align 1
  %i.pe = lshr i8 %.val116, 1
  %i.pf = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_8CastExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeESF_NSD_4PrecEEEESE_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.oz, ptr nonnull %i.pb, i8 %i.pe)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.dl:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.pg = getelementptr i8, ptr %i.ai, i64 3
  %9 = and i64 %i.ar, 5189413545564999712
  %.not415 = icmp eq i64 %9, 0
  br i1 %.not415, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %.sroa.01.0.copyload.i245 = load ptr, ptr %i.ph, align 8, !tbaa !64
  %.sroa.22.0..sroa_idx.i246 = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.sroa.22.0.copyload.i247 = load i64, ptr %.sroa.22.0..sroa_idx.i246, align 8, !tbaa !76
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %.sroa.0.0.copyload.i248 = load ptr, ptr %i.pi, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i249 = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %.sroa.2.0.copyload.i250 = load i64, ptr %.sroa.2.0..sroa_idx.i249, align 8, !tbaa !76
  tail call fastcc void @_ZN12_GLOBAL__N_119ManglingSubstitutorINS_15TypeSubstitutorEE13trySubstituteEN4llvm9StringRefES4_(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr %.sroa.01.0.copyload.i245, i64 %.sroa.22.0.copyload.i247, ptr %.sroa.0.0.copyload.i248, i64 %.sroa.2.0.copyload.i250), !inline_history !183
  %i.pj = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(1088) %0), !inline_history !183
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.pk = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0)
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.pl = phi ptr [ %i.pj, %bb.dm ], [ %i.pk, %bb.dn ] ; 2 uses
  %.not72 = icmp eq ptr %i.pl, null
  br i1 %.not72, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.val115 = load i8, ptr %i.pg, align 1
  %i.pm = lshr i8 %.val115, 1
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !172 ; 2 uses
  %i.pp = ptrtoint ptr %i.po to i64
  %i.pq = add i64 %i.pp, 56                       ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ps = load i64, ptr %i.pr, align 8, !tbaa !173
  %i.pt = icmp ult i64 %i.pq, %i.ps
  br i1 %i.pt, label %bb.dq, label %bb.dr, !prof !174

bb.dq:                                            ; preds = %bb.dp
  %i.pu = inttoptr i64 %i.pq to ptr
  store ptr %i.pu, ptr %i.pn, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSD_4PrecEEEESE_DpOT0_.exit

bb.dr:                                            ; preds = %bb.dp
  %i.pv = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.pn, i64 noundef 56, i64 noundef 56, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSD_4PrecEEEESE_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSD_4PrecEEEESE_DpOT0_.exit: ; preds = %bb.dq, %bb.dr
  %.0.i.i.i.i251 = phi ptr [ %i.po, %bb.dq ], [ %i.pv, %bb.dr ] ; 8 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i251, i64 8
  store i8 60, ptr %i.pw, align 8, !tbaa !179
  %i.px = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i251, i64 9 ; 2 uses
  %i.py = load i16, ptr %i.px, align 1
  %i.pz = and i16 %i.py, -4096
  %i.qa = zext nneg i8 %i.pm to i16
  %i.qb = or disjoint i16 %i.pz, %i.qa
  %i.qc = or i16 %i.qb, 1344
  store i16 %i.qc, ptr %i.px, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle13EnclosingExprE, i64 16), ptr %.0.i.i.i.i251, align 8, !tbaa !47
  %i.qd = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i251, i64 16
  store i64 %.sroa.0.0.i, ptr %i.qd, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i251, i64 24
  store ptr %.sroa.7.0.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !64
  %i.qe = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i251, i64 32
  store ptr %i.pl, ptr %i.qe, align 8, !tbaa !429
  %i.qf = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i251, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.qf, i8 0, i64 16, i1 false)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.ds:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  unreachable

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit: ; preds = %bb.cf, %bb.bp, %bb.ad, %bb.ax, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.thread, %.split447, %bb.bg, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSD_4PrecEEEESE_DpOT0_.exit, %bb.do, %bb.di, %bb.dj, %bb.dk, %bb.de, %bb.dh, %bb.dg, %bb.df, %bb.cb, %bb.dd, %bb.bl, %bb.ca, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS8_4PrecEEEES9_DpOT0_.exit, %bb.bh, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit, %.split449.us, %bb.x, %bb.y, %bb.z, %bb.u, %bb.v, %bb.w, %bb.t, %bb.s, %bb.r, %bb.q, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSD_4PrecEEEESE_DpOT0_.exit, %bb.k, %bb.h, %bb.j, %bb.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %.28 = phi ptr [ null, %bb.y ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.q ], [ null, %bb.s ], [ null, %bb.v ], [ %.0.i.i.i.i251, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSD_4PrecEEEESE_DpOT0_.exit ], [ null, %bb.ax ], [ null, %bb.bh ], [ null, %bb.ad ], [ %.19, %bb.dd ], [ null, %bb.dg ], [ null, %bb.dj ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit ], [ null, %bb.h ], [ %i.bh, %bb.j ], [ %.0.i.i.i.i313, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSD_4PrecEEEESE_DpOT0_.exit ], [ %i.cl, %bb.r ], [ %i.cq, %bb.t ], [ null, %bb.u ], [ %i.cx, %bb.w ], [ null, %bb.x ], [ %i.de, %bb.z ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit ], [ null, %bb.bp ], [ %i.hv, %.split449.us ], [ %.0.i.i.i.i, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS8_4PrecEEEES9_DpOT0_.exit ], [ null, %bb.bl ], [ %i.ko, %bb.ca ], [ null, %bb.cb ], [ null, %bb.do ], [ null, %bb.de ], [ null, %bb.df ], [ %i.ow, %bb.dh ], [ null, %bb.di ], [ %i.pf, %bb.dk ], [ null, %bb.bg ], [ null, %.split447 ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit227.split.thread ], [ null, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %.critedge82

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit: ; preds = %bb.d, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i
  switch i8 %i.u, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i269 [
    i8 76, label %bb.dt
    i8 84, label %bb.du
    i8 102, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit262
  ]

bb.dt:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit
  %i.qg = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE16parseExprPrimaryEv(ptr noundef nonnull align 8 dereferenceable(888) %0)
  br label %.critedge82

bb.du:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit
  %i.qh = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE18parseTemplateParamEv(ptr noundef nonnull align 8 dereferenceable(888) %0)
  br label %.critedge82

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit262: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit
  %i.qi = load i8, ptr %i.v, align 1, !tbaa !58   ; 2 uses
  %i.qj = icmp eq i8 %i.qi, 112
  br i1 %i.qj, label %bb.dv, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit265

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit265: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit262
  %i.qk = icmp eq i8 %i.qi, 76
  %.not.i266 = icmp ne i64 %.pre-phi492618, 2
  %or.cond413 = and i1 %.not.i266, %i.qk
  br i1 %or.cond413, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit268, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit268.thread

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit268: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit265
  %i.ql = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.qm = load i8, ptr %i.ql, align 1, !tbaa !58
  %i.qn = sext i8 %i.qm to i32
  %isdigittmp = add nsw i32 %i.qn, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.dv, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit268.thread

bb.dv:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit268, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit262
  %i.qo = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE18parseFunctionParamEv(ptr noundef nonnull align 8 dereferenceable(888) %0)
  br label %.critedge82

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit268.thread: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit268, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit265
  %i.qp = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE13parseFoldExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0)
  br label %.critedge82

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i269: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit
  %i.qq = load i16, ptr %i.t, align 1
  %i.qr = icmp ne i16 %i.qq, 27753
  %i.qs = zext i1 %i.qr to i32
  %i.qt = icmp eq i32 %i.qs, 0
  br i1 %i.qt, label %bb.dw, label %bb.el

bb.dw:                                            ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i269
  %i.qu = getelementptr inbounds nuw i8, ptr %i.t, i64 2 ; 2 uses
  store ptr %i.qu, ptr %0, align 8, !tbaa !155
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.qx = load ptr, ptr %i.qw, align 8, !tbaa !157
  %i.qy = load ptr, ptr %i.qv, align 8, !tbaa !118
  %i.qz = ptrtoint ptr %i.qx to i64
  %i.ra = ptrtoint ptr %i.qy to i64
  %i.rb = sub i64 %i.qz, %i.ra
  %i.rc = ashr exact i64 %i.rb, 3
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.dx

bb.dx:                                            ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit279, %bb.dw
  %i.rf = phi ptr [ %.pre489, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit279 ], [ %i.h, %bb.dw ]
  %i.rg = phi ptr [ %.pre488, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit279 ], [ %i.qu, %bb.dw ] ; 3 uses
  %.not.i274 = icmp eq ptr %i.rg, %i.rf
  br i1 %.not.i274, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.rh = load i8, ptr %i.rg, align 1, !tbaa !58
  %i.ri = icmp eq i8 %i.rh, 69
  br i1 %i.ri, label %bb.ek, label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.dx
  %i.rj = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseBracedExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %.not71 = icmp eq ptr %i.rj, null
  br i1 %.not71, label %.critedge82, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.rk = load ptr, ptr %i.qw, align 8, !tbaa !157 ; 3 uses
  %i.rl = load ptr, ptr %i.rd, align 8, !tbaa !119
  %i.rm = icmp eq ptr %i.rk, %i.rl
  br i1 %i.rm, label %bb.eb, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit279

bb.eb:                                            ; preds = %bb.ea
  %i.rn = load ptr, ptr %i.qv, align 8, !tbaa !118 ; 5 uses
  %i.ro = ptrtoint ptr %i.rk to i64
  %i.rp = ptrtoint ptr %i.rn to i64
  %i.rq = sub i64 %i.ro, %i.rp                    ; 6 uses
  %i.rr = ashr exact i64 %i.rq, 2
  %i.rs = icmp eq ptr %i.rn, %i.re
  %i.rt = shl i64 %i.rq, 1                        ; 2 uses
  br i1 %i.rs, label %bb.ec, label %bb.ei

bb.ec:                                            ; preds = %bb.eb
  %i.ru = tail call noalias ptr @malloc(i64 noundef %i.rt) #33 ; 5 uses
  %i.rv = icmp eq ptr %i.ru, null
  br i1 %i.rv, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  tail call void @abort() #30
  unreachable

bb.ee:                                            ; preds = %bb.ec
  %i.rw = icmp sgt i64 %i.rq, 8
  br i1 %i.rw, label %bb.ef, label %bb.eg, !prof !174

bb.ef:                                            ; preds = %bb.ee
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ru, ptr align 8 %i.rn, i64 %i.rq, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i278

bb.eg:                                            ; preds = %bb.ee
  %i.rx = icmp eq i64 %i.rq, 8
  br i1 %i.rx, label %bb.eh, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i278

bb.eh:                                            ; preds = %bb.eg
  %i.ry = load ptr, ptr %i.rn, align 8, !tbaa !121
  store ptr %i.ry, ptr %i.ru, align 8, !tbaa !121
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i278

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i278: ; preds = %bb.eh, %bb.eg, %bb.ef
  store ptr %i.ru, ptr %i.qv, align 8, !tbaa !118
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i277

bb.ei:                                            ; preds = %bb.eb
  %i.rz = tail call ptr @realloc(ptr noundef %i.rn, i64 noundef %i.rt) #34 ; 3 uses
  store ptr %i.rz, ptr %i.qv, align 8, !tbaa !118
  %i.sa = icmp eq ptr %i.rz, null
  br i1 %i.sa, label %bb.ej, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i277

bb.ej:                                            ; preds = %bb.ei
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i277: ; preds = %bb.ei, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i278
  %i.sb = phi ptr [ %i.rz, %bb.ei ], [ %i.ru, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i278 ] ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %i.rq
  %i.sd = getelementptr inbounds nuw [8 x i8], ptr %i.sb, i64 %i.rr
  store ptr %i.sd, ptr %i.rd, align 8, !tbaa !119
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit279

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit279: ; preds = %bb.ea, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i277
  %i.se = phi ptr [ %i.sc, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i277 ], [ %i.rk, %bb.ea ] ; 2 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  store ptr %i.sf, ptr %i.qw, align 8, !tbaa !157
  store ptr %i.rj, ptr %i.se, align 8, !tbaa !121
  %.pre488 = load ptr, ptr %0, align 8, !tbaa !155
  %.pre489 = load ptr, ptr %i.g, align 8, !tbaa !156
  br label %bb.dx, !llvm.loop !1430

end_hunk_1
begin_hunk_2_@_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE23parseBaseUnresolvedNameEv:bb.a

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !172 ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = add i64 %i.bp, 32                       ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !173
  %i.bt = icmp ult i64 %i.bq, %i.bs
  br i1 %i.bt, label %bb.q, label %bb.r, !prof !174

bb.q:                                             ; preds = %bb.p
  %i.bu = inttoptr i64 %i.bq to ptr
  store ptr %i.bu, ptr %i.bn, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit

bb.r:                                             ; preds = %bb.p
  %i.bv = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bn, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit: ; preds = %bb.q, %bb.r
  %.0.i.i.i.i = phi ptr [ %i.bo, %bb.q ], [ %i.bv, %bb.r ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i8 45, ptr %i.bw, align 8, !tbaa !179
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 9 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 1
  %i.bz = and i16 %i.by, -4096
  %i.ca = or disjoint i16 %i.bz, 1344
  store i16 %i.ca, ptr %i.bx, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle20NameWithTemplateArgsE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store ptr %i.bh, ptr %i.cb, align 8, !tbaa !397
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  store ptr %i.bl, ptr %i.cc, align 8, !tbaa !398
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE19parseDestructorNameEv.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE19parseDestructorNameEv.exit: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit.i, %bb.d, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i, %bb.c, %bb.b, %bb.n, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit11, %bb.o, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit14, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_8DtorNameEJRPNS0_4NodeEEEES9_DpOT0_.exit, %bb.j
  %.2 = phi ptr [ %i.bh, %bb.n ], [ null, %bb.j ], [ %.0.i.i.i.i15, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_8DtorNameEJRPNS0_4NodeEEEES9_DpOT0_.exit ], [ null, %bb.o ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit11 ], [ %.0.i.i.i.i, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit ], [ %i.bh, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit14 ], [ null, %bb.d ], [ null, %bb.b ], [ %.0.i.i.i.i.i, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit.i ], [ %i.g, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i ], [ %i.g, %bb.c ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, ptr } @_ZNK4llvm16itanium_demangle13QualifiedName11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !510  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull align 8 dereferenceable(11) %i.b) #27
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle13QualifiedNameD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle13QualifiedName9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !509  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !47
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.b) #27, !inline_history !25
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.g = load i16, ptr %i.f, align 1
  %.mask3.i = and i16 %i.g, 192
  %.not.i = icmp eq i16 %.mask3.i, 64
  br i1 %.not.i, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.b) #27, !inline_history !25
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit

_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !421  ; 3 uses
  %i.m = add i64 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !422  ; 2 uses
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !423
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit
  %i.q = add i64 %i.l, 994
  %i.r = shl i64 %i.o, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.q) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.n, align 8, !tbaa !422
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !423
  %i.u = tail call ptr @realloc(ptr noundef %i.t, i64 noundef %spec.select.i.i) #34 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !423
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.c
  %.pre5.i = load i64, ptr %i.k, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.w = phi i64 [ %i.l, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.x = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.u, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i16 14906, ptr %i.y, align 1
  %i.z = load i64, ptr %i.k, align 8, !tbaa !421
  %i.aa = add i64 %i.z, 2
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !421
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !510 ; 3 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !47
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.ac) #27, !inline_history !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 9
  %i.ah = load i16, ptr %i.ag, align 1
  %.mask3.i5 = and i16 %i.ah, 192
  %.not.i6 = icmp eq i16 %.mask3.i5, 64
  br i1 %.not.i6, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit7, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i
  %i.ai = load ptr, ptr %1, align 8, !tbaa !47
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.ac) #27, !inline_history !25
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit7

_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit7: ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE17parseOperatorNameEPNS5_9NameStateE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 align 2 {
bb.a:
  %.val.i = load ptr, ptr %0, align 8, !tbaa !155 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14.i = load ptr, ptr %i.a, align 8, !tbaa !156 ; 3 uses
  %i.b = ptrtoint ptr %.val14.i to i64
  %i.c = ptrtoint ptr %.val.i to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %.thread62, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.f = load i8, ptr %.val.i, align 1, !tbaa !58 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread24.i, %.preheader.i
  %.031.i = phi i64 [ 62, %.preheader.i ], [ %i.s, %.thread24.i ] ; 3 uses
  %.01030.i = phi i64 [ 0, %.preheader.i ], [ %i.r, %.thread24.i ] ; 3 uses
  %i.h = add i64 %.01030.i, %.031.i
  %i.i = lshr i64 %i.h, 1                         ; 5 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE3OpsE, i64 %i.i ; 2 uses
  %.val15.i = load i8, ptr %i.j, align 16, !tbaa !58 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 1
  %.val16.i = load i8, ptr %i.k, align 1
  %i.l = icmp slt i8 %.val15.i, %i.f
  br i1 %i.l, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.m = add nuw nsw i64 %i.i, 1
  br label %.thread24.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i8 %.val15.i, %i.f
  br i1 %i.n, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i, label %.thread24.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i: ; preds = %bb.c
  %i.o = load i8, ptr %i.g, align 1, !tbaa !58
  %i.p = icmp slt i8 %.val16.i, %i.o
  %cond.fr19.i = freeze i1 %i.p                   ; 2 uses
  %i.q = add nuw nsw i64 %i.i, 1
  %spec.select.i = select i1 %cond.fr19.i, i64 %i.q, i64 %.01030.i
  %spec.select29.i = select i1 %cond.fr19.i, i64 %.031.i, i64 %i.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i, %bb.c, %.thread.i
  %i.r = phi i64 [ %.01030.i, %bb.c ], [ %spec.select.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i ], [ %i.m, %.thread.i ] ; 4 uses
  %i.s = phi i64 [ %i.i, %bb.c ], [ %spec.select29.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i ], [ %.031.i, %.thread.i ] ; 2 uses
  %.not.i = icmp eq i64 %i.s, %i.r
  br i1 %.not.i, label %bb.d, label %bb.b, !llvm.loop !30

bb.d:                                             ; preds = %.thread24.i
  %i.t = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE3OpsE, i64 %i.r ; 3 uses
  %.val17.i = load i8, ptr %i.t, align 16, !tbaa !58
  %i.u = icmp eq i8 %.val17.i, %i.f
  br i1 %i.u, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i: ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.t, i64 1
  %.val18.i = load i8, ptr %i.v, align 1
  %i.w = load i8, ptr %i.g, align 1, !tbaa !58
  %.not28.i = icmp eq i8 %.val18.i, %i.w
  br i1 %.not28.i, label %bb.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

bb.e:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  store ptr %i.x, ptr %0, align 8, !tbaa !155
  %i.y = and i64 %i.r, 1152921504606846975        ; 2 uses
  %i.z = icmp eq i64 %i.y, 13
  br i1 %i.z, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !223, !range !90, !noundef !91
  store i8 0, ptr %i.aa, align 8, !tbaa !223
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 777 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !161, !range !90, !noundef !91 ; 2 uses
  %i.ae = icmp ne ptr %1, null                    ; 2 uses
  %i.af = zext i1 %i.ae to i8
  %i.ag = or i8 %i.ad, %i.af
  store i8 %i.ag, ptr %i.ac, align 1, !tbaa !223
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %.sroa.01.0.copyload.i = load ptr, ptr %i.ah, align 8, !tbaa !64
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %.sroa.22.0.copyload.i = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %.sroa.0.0.copyload.i = load ptr, ptr %i.ai, align 8, !tbaa !64
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !76
  tail call fastcc void @_ZN12_GLOBAL__N_119ManglingSubstitutorINS_15TypeSubstitutorEE13trySubstituteEN4llvm9StringRefES4_(ptr noundef nonnull align 8 dereferenceable(1088) %0, ptr %.sroa.01.0.copyload.i, i64 %.sroa.22.0.copyload.i, ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i), !inline_history !183
  %i.aj = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(1088) %0), !inline_history !183 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %1, align 8, !tbaa !383
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !172 ; 2 uses
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = add i64 %i.an, 24                       ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !173
  %i.ar = icmp ult i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.j, label %bb.k, !prof !174

bb.j:                                             ; preds = %bb.i
  %i.as = inttoptr i64 %i.ao to ptr
  store ptr %i.as, ptr %i.al, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit

bb.k:                                             ; preds = %bb.i
  %i.at = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.al, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i = phi ptr [ %i.am, %bb.j ], [ %i.at, %bb.k ] ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i8 4, ptr %i.au, align 8, !tbaa !179
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 9 ; 2 uses
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = and i16 %i.aw, -4096
  %i.ay = or disjoint i16 %i.ax, 1344
  store i16 %i.ay, ptr %i.av, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle22ConversionOperatorTypeE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store ptr %i.aj, ptr %i.az, align 8, !tbaa !607
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit
  %.013 = phi ptr [ %.0.i.i.i.i, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit ], [ null, %bb.f ]
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !223
  store i8 %i.ab, ptr %i.aa, align 8, !tbaa !223
  br label %.thread

bb.m:                                             ; preds = %bb.e
  %i.ba = shl nuw i64 1, %i.y                     ; 3 uses
  %i.bb = and i64 %i.ba, 8809040871136756128
  %.not = icmp eq i64 %i.bb, 0
  br i1 %.not, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %2 = and i64 %i.ba, 1266637396770816
  %.not49 = icmp ne i64 %2, 0
  %3 = and i64 %i.ba, 1266774834188288
  %.not50 = icmp eq i64 %3, 0
  %or.cond = and i1 %.not49, %.not50
  br i1 %or.cond, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = getelementptr i8, ptr %i.t, i64 8
  %.val25 = load ptr, ptr %i.bc, align 8, !tbaa !438 ; 2 uses
  %i.bd = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val25) #27
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !172 ; 2 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = add i64 %i.bg, 32                       ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !173
  %i.bk = icmp ult i64 %i.bh, %i.bj
  br i1 %i.bk, label %bb.p, label %bb.q, !prof !174

bb.p:                                             ; preds = %bb.o
  %i.bl = inttoptr i64 %i.bh to ptr
  store ptr %i.bl, ptr %i.be, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit

bb.q:                                             ; preds = %bb.o
  %i.bm = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.be, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit: ; preds = %bb.p, %bb.q
  %.0.i.i.i.i27 = phi ptr [ %i.bf, %bb.p ], [ %i.bm, %bb.q ] ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i27, i64 8
  store i8 8, ptr %i.bn, align 8, !tbaa !179
  %i.bo = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i27, i64 9 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 1
  %i.bq = and i16 %i.bp, -4096
  %i.br = or disjoint i16 %i.bq, 1344
  store i16 %i.br, ptr %i.bo, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle8NameTypeE, i64 16), ptr %.0.i.i.i.i27, align 8, !tbaa !47
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i27, i64 16
  store i64 %i.bd, ptr %i.bs, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i27, i64 24
  store ptr %.val25, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !64
  br label %.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i, %bb.d
  %i.bt = load i16, ptr %.val.i, align 1
  %i.bu = icmp ne i16 %i.bt, 26988
  %i.bv = zext i1 %i.bu to i32
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %.thread62

bb.r:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  store ptr %i.bx, ptr %0, align 8, !tbaa !155
  %i.by = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseSourceNameEPNS5_9NameStateE(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !172 ; 2 uses
  %i.cc = ptrtoint ptr %i.cb to i64
  %i.cd = add i64 %i.cc, 24                       ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !173
  %i.cg = icmp ult i64 %i.cd, %i.cf
  br i1 %i.cg, label %bb.t, label %bb.u, !prof !174

bb.t:                                             ; preds = %bb.s
  %i.ch = inttoptr i64 %i.cd to ptr
  store ptr %i.ch, ptr %i.ca, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEES9_DpOT0_.exit

bb.u:                                             ; preds = %bb.s
  %i.ci = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ca, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEES9_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEES9_DpOT0_.exit: ; preds = %bb.t, %bb.u
  %.0.i.i.i.i28 = phi ptr [ %i.cb, %bb.t ], [ %i.ci, %bb.u ] ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i28, i64 8
  store i8 20, ptr %i.cj, align 8, !tbaa !179
  %i.ck = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i28, i64 9 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 1
  %i.cm = and i16 %i.cl, -4096
  %i.cn = or disjoint i16 %i.cm, 1344
  store i16 %i.cn, ptr %i.ck, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle15LiteralOperatorE, i64 16), ptr %.0.i.i.i.i28, align 8, !tbaa !47
  %i.co = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i28, i64 16
  store ptr %i.by, ptr %i.co, align 8, !tbaa !609
  br label %.thread

.thread62:                                        ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.not.i29 = icmp eq ptr %.val.i, %.val14.i
  br i1 %.not.i29, label %.thread, label %bb.v

bb.v:                                             ; preds = %.thread62
  %i.cp = load i8, ptr %.val.i, align 1, !tbaa !58
  %i.cq = icmp eq i8 %i.cp, 118
  br i1 %i.cq, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.cr = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 3 uses
  store ptr %i.cr, ptr %0, align 8, !tbaa !155
  %.not.i30.not = icmp eq ptr %.val14.i, %i.cr
  br i1 %.not.i30.not, label %.thread, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit: ; preds = %bb.w
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !58
  %i.ct = add i8 %i.cs, -48
  %or.cond.a = icmp ult i8 %i.ct, 10
  br i1 %or.cond.a, label %bb.x, label %.thread

bb.x:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit
  %i.cu = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  store ptr %i.cu, ptr %0, align 8, !tbaa !155
  %i.cv = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE15parseSourceNameEPNS5_9NameStateE(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !172 ; 2 uses
  %i.cz = ptrtoint ptr %i.cy to i64
  %i.da = add i64 %i.cz, 24                       ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !173
  %i.dd = icmp ult i64 %i.da, %i.dc
  br i1 %i.dd, label %bb.z, label %bb.aa, !prof !174

bb.z:                                             ; preds = %bb.y
  %i.de = inttoptr i64 %i.da to ptr
  store ptr %i.de, ptr %i.cx, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit64

bb.aa:                                            ; preds = %bb.y
  %i.df = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.cx, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit64

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit64: ; preds = %bb.z, %bb.aa
  %.0.i.i.i.i63 = phi ptr [ %i.cy, %bb.z ], [ %i.df, %bb.aa ] ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i63, i64 8
  store i8 4, ptr %i.dg, align 8, !tbaa !179
  %i.dh = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i63, i64 9 ; 2 uses
  %i.di = load i16, ptr %i.dh, align 1
  %i.dj = and i16 %i.di, -4096
  %i.dk = or disjoint i16 %i.dj, 1344
  store i16 %i.dk, ptr %i.dh, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle22ConversionOperatorTypeE, i64 16), ptr %.0.i.i.i.i63, align 8, !tbaa !47
  %i.dl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i63, i64 16
  store ptr %i.cv, ptr %i.dl, align 8, !tbaa !607
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.w, %.thread62, %bb.v, %bb.m, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit, %bb.l, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit64, %bb.x, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEES9_DpOT0_.exit, %bb.r, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit
  %.4 = phi ptr [ %.013, %bb.l ], [ null, %.thread62 ], [ null, %bb.x ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4lookEj.exit ], [ null, %bb.w ], [ %.0.i.i.i.i28, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEES9_DpOT0_.exit ], [ null, %bb.r ], [ %.0.i.i.i.i63, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit64 ], [ null, %bb.m ], [ %.0.i.i.i.i27, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_115TypeSubstitutorENS2_13NodeAllocatorEE4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit ], [ null, %bb.n ], [ null, %bb.v ]
  ret ptr %.4
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle8DtorNameD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle8DtorName9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !421  ; 3 uses
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !422  ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !423
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.b, 993
  %i.h = shl i64 %i.e, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.g) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.d, align 8, !tbaa !422
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !423
  %i.k = tail call ptr @realloc(ptr noundef %i.j, i64 noundef %spec.select.i.i) #34 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !423
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.b
  %.pre5.i = load i64, ptr %i.a, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.m = phi i64 [ %i.b, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.n = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.k, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 126, ptr %i.o, align 1
  %i.p = load i64, ptr %i.a, align 8, !tbaa !421
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.a, align 8, !tbaa !421
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !605
  %i.t = load ptr, ptr %1, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.s) #27
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle22ConversionOperatorTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle22ConversionOperatorType9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !421  ; 3 uses
  %i.c = add i64 %i.b, 9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !422  ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !423
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.b, 1001
  %i.h = shl i64 %i.e, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.g) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.d, align 8, !tbaa !422
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !423
  %i.k = tail call ptr @realloc(ptr noundef %i.j, i64 noundef %spec.select.i.i) #34 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !423
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.b
  %.pre5.i = load i64, ptr %i.a, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.m = phi i64 [ %i.b, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.n = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.k, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.o, ptr noundef nonnull align 1 dereferenceable(9) @.str.660, i64 9, i1 false)
  %i.p = load i64, ptr %i.a, align 8, !tbaa !421
  %i.q = add i64 %i.p, 9
  store i64 %i.q, ptr %i.a, align 8, !tbaa !421
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !607  ; 3 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.s) #27, !inline_history !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %i.x = load i16, ptr %i.w, align 1
  %.mask3.i = and i16 %i.x, 192
  %.not.i3 = icmp eq i16 %.mask3.i, 64
  br i1 %.not.i3, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i
  %i.y = load ptr, ptr %1, align 8, !tbaa !47
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.s) #27, !inline_history !25
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit

_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit: ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle15LiteralOperatorD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle15LiteralOperator9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !421  ; 3 uses
  %i.c = add i64 %i.b, 11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !422  ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !423
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.b, 1003
  %i.h = shl i64 %i.e, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.g) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.d, align 8, !tbaa !422
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !423
  %i.k = tail call ptr @realloc(ptr noundef %i.j, i64 noundef %spec.select.i.i) #34 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !423
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.b
  %.pre5.i = load i64, ptr %i.a, align 8, !tbaa !421
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.m = phi i64 [ %i.b, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.n = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.k, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.o, ptr noundef nonnull align 1 dereferenceable(11) @.str.661, i64 11, i1 false)
  %i.p = load i64, ptr %i.a, align 8, !tbaa !421
  %i.q = add i64 %i.p, 11
  store i64 %i.q, ptr %i.a, align 8, !tbaa !421
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !609  ; 3 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !47
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.s) #27, !inline_history !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %i.x = load i16, ptr %i.w, align 1
  %.mask3.i = and i16 %i.x, 192
  %.not.i3 = icmp eq i16 %.mask3.i, 64
  br i1 %.not.i3, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit, label %bb.d
end_hunk_2
begin_hunk_3_@_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parseUnqualifiedNameEPNS5_9NameStateEPNS0_4NodeEPNS0_10ModuleNameE:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle10NestedNameE, i64 16), ptr %.0.i.i.i.i59, align 8, !tbaa !47
  br label %.critedge23.sink.split

.critedge23.sink.split:                           ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_20MemberLikeFriendNameEJRPNS0_4NodeESA_EEES9_DpOT0_.exit, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10NestedNameEJRPNS0_4NodeESA_EEES9_DpOT0_.exit
  %.0.i.i.i.i59.sink218 = phi ptr [ %.0.i.i.i.i59, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10NestedNameEJRPNS0_4NodeESA_EEES9_DpOT0_.exit ], [ %.0.i.i.i.i58, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_20MemberLikeFriendNameEJRPNS0_4NodeESA_EEES9_DpOT0_.exit ] ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i59.sink218, i64 16
  store ptr %.091, ptr %i.ih, align 8, !tbaa !121
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i59.sink218, i64 24
  store ptr %i.hc, ptr %i.ii, align 8, !tbaa !121
  br label %.critedge23

.critedge23:                                      ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit50, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i, %.critedge23.sink.split, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit77.i, %bb.al, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit74.i, %bb.as, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit53.i, %bb.bd, %bb.j, %bb.ad, %.thread143, %bb.a
  %.3 = phi ptr [ null, %bb.a ], [ null, %bb.ad ], [ %i.hc, %.thread143 ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i ], [ %.0.i.i.i.i59.sink218, %.critedge23.sink.split ], [ null, %bb.j ], [ null, %bb.al ], [ null, %bb.bd ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit53.i ], [ null, %bb.as ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit74.i ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit77.i ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit50 ]
  ret ptr %.3
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 32                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.f = load i64, ptr %i.e, align 8, !tbaa !173
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !174

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.d to ptr
  store ptr %i.h, ptr %i.a, align 8, !tbaa !172
  br label %_ZN12_GLOBAL__N_113NodeAllocator8makeNodeIN4llvm16itanium_demangle8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN12_GLOBAL__N_113NodeAllocator8makeNodeIN4llvm16itanium_demangle8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPT_DpOT0_.exit

_ZN12_GLOBAL__N_113NodeAllocator8makeNodeIN4llvm16itanium_demangle8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.c ] ; 6 uses
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !64
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i8 8, ptr %i.j, align 8, !tbaa !179
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 9 ; 2 uses
  %i.l = load i16, ptr %i.k, align 1
  %i.m = and i16 %i.l, -4096
  %i.n = or disjoint i16 %i.m, 1344
  store i16 %i.n, ptr %i.k, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle8NameTypeE, i64 16), ptr %.0.i.i.i, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %.sroa.2.0.copyload.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !64
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef nonnull ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8NameTypeEJRA5_KcEEEPNS0_4NodeEDpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 1 dereferenceable(5) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = add i64 %i.c, 32                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.f = load i64, ptr %i.e, align 8, !tbaa !173
  %i.g = icmp ult i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.c, !prof !174

bb.b:                                             ; preds = %bb.a
  %i.h = inttoptr i64 %i.d to ptr
  store ptr %i.h, ptr %i.a, align 8, !tbaa !172
  br label %_ZN12_GLOBAL__N_113NodeAllocator8makeNodeIN4llvm16itanium_demangle8NameTypeEJRA5_KcEEEPT_DpOT0_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN12_GLOBAL__N_113NodeAllocator8makeNodeIN4llvm16itanium_demangle8NameTypeEJRA5_KcEEEPT_DpOT0_.exit

_ZN12_GLOBAL__N_113NodeAllocator8makeNodeIN4llvm16itanium_demangle8NameTypeEJRA5_KcEEEPT_DpOT0_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.b, %bb.b ], [ %i.i, %bb.c ] ; 6 uses
  %i.j = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %1) #27
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  store i8 8, ptr %i.k, align 8, !tbaa !179
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 9 ; 2 uses
  %i.m = load i16, ptr %i.l, align 1
  %i.n = and i16 %i.m, -4096
  %i.o = or disjoint i16 %i.n, 1344
  store i16 %i.o, ptr %i.l, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle8NameTypeE, i64 16), ptr %.0.i.i.i, align 8, !tbaa !47
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 16
  store i64 %i.j, ptr %i.p, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 24
  store ptr %1, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !tbaa !64
  ret ptr %.0.i.i.i
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %1 = alloca %"class.std::basic_string_view", align 8 ; 7 uses
  %2 = alloca %"class.llvm::itanium_demangle::NodeArray", align 8 ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.e = load ptr, ptr %0, align 8, !tbaa !194    ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !195  ; 10 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 4 uses
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  %i.k = icmp ult i64 %i.j, 2
  br i1 %i.k, label %.critedge82, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.a
  %i.l = load i16, ptr %i.e, align 1
  %i.m = icmp ne i16 %i.l, 29543
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0                      ; 2 uses
  br i1 %i.o, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread596

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread596: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  store i8 0, ptr %i.a, align 1, !tbaa !223
  br label %.preheader.i

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 2 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !194
  %.pre472.a = ptrtoint ptr %i.p to i64
  %.pre473 = sub i64 %i.h, %.pre472.a             ; 2 uses
  store i8 1, ptr %i.a, align 1, !tbaa !223
  %i.q = icmp ult i64 %.pre473, 2
  br i1 %i.q, label %.critedge82, label %.preheader.i

.preheader.i:                                     ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread596, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.r = phi i8 [ 0, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread596 ], [ 1, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.s = phi ptr [ %i.e, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread596 ], [ %i.p, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit ] ; 33 uses
  %.pre-phi474600 = phi i64 [ %i.j, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit.thread596 ], [ %.pre473, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit ]
  %i.t = load i8, ptr %i.s, align 1, !tbaa !58    ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread24.i, %.preheader.i
  %.031.i = phi i64 [ 62, %.preheader.i ], [ %i.ag, %.thread24.i ] ; 3 uses
  %.01030.i = phi i64 [ 0, %.preheader.i ], [ %i.af, %.thread24.i ] ; 3 uses
  %i.v = add i64 %.01030.i, %.031.i
  %i.w = lshr i64 %i.v, 1                         ; 5 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE3OpsE, i64 %i.w ; 2 uses
  %.val15.i = load i8, ptr %i.x, align 16, !tbaa !58 ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 1
  %.val16.i = load i8, ptr %i.y, align 1
  %i.z = icmp slt i8 %.val15.i, %i.t
  br i1 %i.z, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.aa = add nuw nsw i64 %i.w, 1
  br label %.thread24.i

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i8 %.val15.i, %i.t
  br i1 %i.ab, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i, label %.thread24.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i: ; preds = %bb.c
  %i.ac = load i8, ptr %i.u, align 1, !tbaa !58
  %i.ad = icmp slt i8 %.val16.i, %i.ac
  %cond.fr19.i = freeze i1 %i.ad                  ; 2 uses
  %i.ae = add nuw nsw i64 %i.w, 1
  %spec.select.i = select i1 %cond.fr19.i, i64 %i.ae, i64 %.01030.i
  %spec.select29.i = select i1 %cond.fr19.i, i64 %.031.i, i64 %i.w
  br label %.thread24.i

.thread24.i:                                      ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i, %bb.c, %.thread.i
  %i.af = phi i64 [ %.01030.i, %bb.c ], [ %spec.select.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i ], [ %i.aa, %.thread.i ] ; 4 uses
  %i.ag = phi i64 [ %i.w, %bb.c ], [ %spec.select29.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i ], [ %.031.i, %.thread.i ] ; 2 uses
  %.not.i = icmp eq i64 %i.ag, %i.af
  br i1 %.not.i, label %bb.d, label %bb.b, !llvm.loop !36

bb.d:                                             ; preds = %.thread24.i
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE3OpsE, i64 %i.af ; 17 uses
  %.val17.i = load i8, ptr %i.ah, align 16, !tbaa !58
  %i.ai = icmp eq i8 %.val17.i, %i.t
  br i1 %i.ai, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i: ; preds = %bb.d
  %i.aj = getelementptr i8, ptr %i.ah, i64 1
  %.val18.i = load i8, ptr %i.aj, align 1
  %i.ak = load i8, ptr %i.u, align 1, !tbaa !58
  %.not28.i = icmp eq i8 %.val18.i, %i.ak
  br i1 %.not28.i, label %bb.e, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit

bb.e:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 4 uses
  store ptr %i.al, ptr %0, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #27
  %i.am = getelementptr i8, ptr %i.ah, i64 2
  %.val112 = load i8, ptr %i.am, align 2, !tbaa !1493
  %i.an = getelementptr i8, ptr %i.ah, i64 8
  %.val113 = load ptr, ptr %i.an, align 8, !tbaa !631 ; 4 uses
  %i.ao = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val113) #27 ; 3 uses
  %i.ap = and i64 %i.af, 1152921504606846975      ; 4 uses
  %i.aq = shl nuw i64 1, %i.ap                    ; 2 uses
  %i.ar = and i64 %i.aq, 414331165718019679
  %.not = icmp eq i64 %i.ar, 0
  br i1 %.not, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %.val113, i64 8 ; 3 uses
  %i.at = add i64 %i.ao, -8                       ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i: ; preds = %bb.f
  %i.av = load i8, ptr %i.as, align 1, !tbaa !58
  %i.aw = icmp eq i8 %i.av, 32
  br i1 %i.aw, label %bb.g, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit

bb.g:                                             ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.val113, i64 9
  %i.ay = add i64 %i.ao, -9
  br label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit: ; preds = %bb.e, %bb.f, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i, %bb.g
  %.sroa.7.0.i = phi ptr [ %i.ax, %bb.g ], [ %i.as, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i ], [ %.val113, %bb.e ], [ %i.as, %bb.f ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.ay, %bb.g ], [ %i.at, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i ], [ %i.ao, %bb.e ], [ 0, %bb.f ] ; 5 uses
  store i64 %.sroa.0.0.i, ptr %1, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.7.0.i, ptr %i.az, align 8
  switch i8 %.val112, label %bb.ds [
    i8 2, label %bb.h
    i8 0, label %bb.k
    i8 1, label %bb.o
    i8 3, label %bb.u
    i8 4, label %bb.x
    i8 5, label %bb.aa
    i8 6, label %bb.bh
    i8 7, label %bb.bl
    i8 8, label %bb.cb
    i8 9, label %bb.de
    i8 11, label %bb.di
    i8 12, label %bb.dl
    i8 10, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit
  ]

bb.h:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.ba = getelementptr i8, ptr %i.ah, i64 3
  %.val127 = load i8, ptr %i.ba, align 1
  %i.bb = lshr i8 %.val127, 1
  %i.bc = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0), !inline_history !1483 ; 2 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.be = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0), !inline_history !1483 ; 2 uses
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10BinaryExprEJRPNS0_4NodeERSt17basic_string_viewIcSt11char_traitsIcEESA_RNS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.bc, i64 %.sroa.0.0.i, ptr nonnull %.sroa.7.0.i, ptr nonnull %i.be, i8 %i.bb), !inline_history !1483
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.k:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.bh = getelementptr i8, ptr %i.ah, i64 3
  %.val126 = load i8, ptr %i.bh, align 1
  %i.bi = lshr i8 %.val126, 1
  %i.bj = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0), !inline_history !1484 ; 2 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !172 ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = add i64 %i.bn, 40                       ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !173
  %i.br = icmp ult i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.m, label %bb.n, !prof !174

bb.m:                                             ; preds = %bb.l
  %i.bs = inttoptr i64 %i.bo to ptr
  store ptr %i.bs, ptr %i.bl, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSD_4PrecEEEESE_DpOT0_.exit

bb.n:                                             ; preds = %bb.l
  %i.bt = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bl, i64 noundef 40, i64 noundef 40, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSD_4PrecEEEESE_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSD_4PrecEEEESE_DpOT0_.exit: ; preds = %bb.m, %bb.n
  %.0.i.i.i.i295 = phi ptr [ %i.bm, %bb.m ], [ %i.bt, %bb.n ] ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i295, i64 8
  store i8 66, ptr %i.bu, align 8, !tbaa !179
  %i.bv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i295, i64 9 ; 2 uses
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = and i16 %i.bw, -4096
  %i.by = zext nneg i8 %i.bi to i16
  %i.bz = or disjoint i16 %i.bx, %i.by
  %i.ca = or i16 %i.bz, 1344
  store i16 %i.ca, ptr %i.bv, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle10PrefixExprE, i64 16), ptr %.0.i.i.i.i295, align 8, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i295, i64 16
  store i64 %.sroa.0.0.i, ptr %i.cb, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i.i.i296 = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i295, i64 24
  store ptr %.sroa.7.0.i, ptr %.sroa.2.0..sroa_idx.i.i.i296, align 8, !tbaa !64
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i295, i64 32
  store ptr %i.bj, ptr %i.cc, align 8, !tbaa !440
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.o:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %.not.i196 = icmp eq ptr %i.al, %i.g
  br i1 %.not.i196, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = load i8, ptr %i.al, align 1, !tbaa !58
  %i.ce = icmp eq i8 %i.cd, 95
  br i1 %i.ce, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  store ptr %i.cf, ptr %0, align 8, !tbaa !194
  %i.cg = getelementptr i8, ptr %i.ah, i64 3
  %.val125 = load i8, ptr %i.cg, align 1
  %i.ch = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0), !inline_history !1484 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = lshr i8 %.val125, 1
  %i.ck = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSD_4PrecEEEESE_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, i64 %.sroa.0.0.i, ptr nonnull %.sroa.7.0.i, ptr nonnull %i.ch, i8 %i.cj), !inline_history !1484
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.s:                                             ; preds = %bb.p, %bb.o
  %i.cl = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cn = getelementptr i8, ptr %i.ah, i64 3
  %.val124 = load i8, ptr %i.cn, align 1
  %i.co = lshr i8 %.val124, 1
  %i.cp = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_11PostfixExprEJRPNS0_4NodeERSt17basic_string_viewIcSt11char_traitsIcEENS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 %i.co)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.u:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.cq = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cs = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cu = getelementptr i8, ptr %i.ah, i64 3
  %.val123 = load i8, ptr %i.cu, align 1
  %i.cv = lshr i8 %.val123, 1
  %i.cw = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_18ArraySubscriptExprEJRPNS0_4NodeESA_NS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.cq, ptr nonnull %i.cs, i8 %i.cv)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.x:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.cx = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cz = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.db = getelementptr i8, ptr %i.ah, i64 3
  %.val122 = load i8, ptr %i.db, align 1
  %i.dc = lshr i8 %.val122, 1
  %i.dd = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10MemberExprEJRPNS0_4NodeERSt17basic_string_viewIcSt11char_traitsIcEESA_NS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.cx, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.cz, i8 %i.dc)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.aa:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 11 uses
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !157 ; 2 uses
  %i.dh = load ptr, ptr %i.de, align 8, !tbaa !118
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj                    ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.ab

bb.ab:                                            ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit, %bb.aa
  %i.dn = phi ptr [ %i.eo, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ %i.dg, %bb.aa ]
  %i.do = phi ptr [ %.pre469, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ %i.g, %bb.aa ]
  %i.dp = phi ptr [ %.pre468.a, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit ], [ %i.al, %bb.aa ] ; 3 uses
  %.not.i204 = icmp eq ptr %i.dp, %i.do
  br i1 %.not.i204, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !58
  %i.dr = icmp eq i8 %i.dq, 95
  br i1 %i.dr, label %bb.ao, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
end_hunk_3
begin_hunk_4_@_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv:bb.a
_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit: ; preds = %bb.ae, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i
  %i.en = phi ptr [ %i.el, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i ], [ %i.dt, %bb.ae ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 8 ; 2 uses
  store ptr %i.eo, ptr %i.df, align 8, !tbaa !157
  store ptr %i.ds, ptr %i.en, align 8, !tbaa !121
  %.pre468.a = load ptr, ptr %0, align 8, !tbaa !194
  %.pre469 = load ptr, ptr %i.f, align 8, !tbaa !195
  br label %bb.ab, !llvm.loop !1485

bb.ao:                                            ; preds = %bb.ac
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  store ptr %i.ep, ptr %0, align 8, !tbaa !194
  %i.eq = load ptr, ptr %i.de, align 8, !tbaa !118
  %i.er = getelementptr inbounds i8, ptr %i.eq, i64 %i.dk ; 3 uses
  %i.es = ptrtoint ptr %i.dn to i64
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = sub i64 %i.es, %i.et                    ; 7 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !172 ; 2 uses
  %i.ex = ptrtoint ptr %i.ew to i64
  %i.ey = add i64 %i.eu, %i.ex                    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.fa = load i64, ptr %i.ez, align 8, !tbaa !173
  %i.fb = icmp ult i64 %i.ey, %i.fa
  br i1 %i.fb, label %bb.ap, label %bb.aq, !prof !174

bb.ap:                                            ; preds = %bb.ao
  %i.fc = inttoptr i64 %i.ey to ptr
  store ptr %i.fc, ptr %i.ev, align 8, !tbaa !172
  br label %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.fd = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.ev, i64 noundef %i.eu, i64 noundef %i.eu, i8 3)
  br label %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i

_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i: ; preds = %bb.aq, %bb.ap
  %.0.i.i.i.i.i = phi ptr [ %i.ew, %bb.ap ], [ %i.fd, %bb.aq ] ; 3 uses
  %i.fe = icmp sgt i64 %i.eu, 8
  br i1 %i.fe, label %bb.ar, label %bb.as, !prof !174

bb.ar:                                            ; preds = %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.i.i.i.i.i, ptr align 8 %i.er, i64 %i.eu, i1 false)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit

bb.as:                                            ; preds = %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i
  %i.ff = icmp eq i64 %i.eu, 8
  br i1 %i.ff, label %bb.at, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit

bb.at:                                            ; preds = %bb.as
  %i.fg = load ptr, ptr %i.er, align 8, !tbaa !121
  store ptr %i.fg, ptr %.0.i.i.i.i.i, align 8, !tbaa !121
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit: ; preds = %bb.ar, %bb.as, %bb.at
  %i.fh = ashr exact i64 %i.eu, 3
  %i.fi = load ptr, ptr %i.de, align 8, !tbaa !118
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.dk
  store ptr %i.fj, ptr %i.df, align 8, !tbaa !157
  %i.fk = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.fl = icmp eq ptr %i.fk, null
  br i1 %i.fl, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.au

bb.au:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit
  %i.fm = load ptr, ptr %0, align 8, !tbaa !194   ; 6 uses
  %i.fn = load ptr, ptr %i.f, align 8, !tbaa !195 ; 3 uses
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fm to i64
  %i.fq = sub i64 %i.fo, %i.fp
  %i.fr = icmp ult i64 %i.fq, 2
  br i1 %i.fr, label %.split429, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fs = load i16, ptr %i.fm, align 1
  %i.ft = icmp ne i16 %i.fs, 26992
  %i.fu = zext i1 %i.ft to i32
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit650, label %.split429

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit650: ; preds = %bb.av
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fm, i64 2 ; 2 uses
  store ptr %i.fw, ptr %0, align 8, !tbaa !194
  %i.fx = load ptr, ptr %i.df, align 8, !tbaa !157
  %i.fy = load ptr, ptr %i.de, align 8, !tbaa !118
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  br label %.split429.us.a

.split429.us.a:                                   ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit650, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit212.us
  %i.gc = phi ptr [ %i.fn, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit650 ], [ %.pre790, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit212.us ]
  %i.gd = phi ptr [ %i.fw, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit650 ], [ %.pre789.a, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit212.us ] ; 3 uses
  %.not.i207.us = icmp eq ptr %i.gd, %i.gc
  br i1 %.not.i207.us, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %.split429.us.a
  %i.ge = load i8, ptr %i.gd, align 1, !tbaa !58
  %i.gf = icmp eq i8 %i.ge, 69
  br i1 %i.gf, label %.split431.us, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %.split429.us.a
  %i.gg = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %.not75.us = icmp eq ptr %i.gg, null
  br i1 %.not75.us, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.gh = load ptr, ptr %i.df, align 8, !tbaa !157 ; 3 uses
  %i.gi = load ptr, ptr %i.dl, align 8, !tbaa !119
  %i.gj = icmp eq ptr %i.gh, %i.gi
  br i1 %i.gj, label %bb.az, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit212.us

bb.az:                                            ; preds = %bb.ay
  %i.gk = load ptr, ptr %i.de, align 8, !tbaa !118 ; 5 uses
  %i.gl = ptrtoint ptr %i.gh to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm                    ; 6 uses
  %i.go = ashr exact i64 %i.gn, 2
  %i.gp = icmp eq ptr %i.gk, %i.dm
  %i.gq = shl i64 %i.gn, 1                        ; 2 uses
  br i1 %i.gp, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.gr = tail call ptr @realloc(ptr noundef %i.gk, i64 noundef %i.gq) #34 ; 3 uses
  store ptr %i.gr, ptr %i.de, align 8, !tbaa !118
  %i.gs = icmp eq ptr %i.gr, null
  br i1 %i.gs, label %.split434.us, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i210.us

bb.bb:                                            ; preds = %bb.az
  %i.gt = tail call noalias ptr @malloc(i64 noundef %i.gq) #33 ; 5 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %.split436.us, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gv = icmp sgt i64 %i.gn, 8
  br i1 %i.gv, label %bb.bf, label %bb.bd, !prof !174

bb.bd:                                            ; preds = %bb.bc
  %i.gw = icmp eq i64 %i.gn, 8
  br i1 %i.gw, label %bb.be, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i211.us

bb.be:                                            ; preds = %bb.bd
  %i.gx = load ptr, ptr %i.gk, align 8, !tbaa !121
  store ptr %i.gx, ptr %i.gt, align 8, !tbaa !121
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i211.us

bb.bf:                                            ; preds = %bb.bc
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gt, ptr align 8 %i.gk, i64 %i.gn, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i211.us

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i211.us: ; preds = %bb.bf, %bb.be, %bb.bd
  store ptr %i.gt, ptr %i.de, align 8, !tbaa !118
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i210.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i210.us: ; preds = %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i211.us, %bb.ba
  %i.gy = phi ptr [ %i.gr, %bb.ba ], [ %i.gt, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i211.us ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 %i.gn
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.go
  store ptr %i.ha, ptr %i.dl, align 8, !tbaa !119
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit212.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit212.us: ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i210.us, %bb.ay
  %i.hb = phi ptr [ %i.gz, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i210.us ], [ %i.gh, %bb.ay ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store ptr %i.hc, ptr %i.df, align 8, !tbaa !157
  store ptr %i.gg, ptr %i.hb, align 8, !tbaa !121
  %.pre789.a = load ptr, ptr %0, align 8, !tbaa !194
  %.pre790 = load ptr, ptr %i.f, align 8, !tbaa !195
  br label %.split429.us.a, !llvm.loop !1486

.split429:                                        ; preds = %bb.au, %bb.av
  %.not.i207 = icmp eq ptr %i.fm, %i.fn
  br i1 %.not.i207, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bg

bb.bg:                                            ; preds = %.split429
  %i.hd = load ptr, ptr %i.df, align 8, !tbaa !157
  %i.he = ptrtoint ptr %i.hd to i64
  %i.hf = load ptr, ptr %i.de, align 8, !tbaa !118
  %i.hg = ptrtoint ptr %i.hf to i64
  %i.hh = sub i64 %i.he, %i.hg
  %i.hi = load i8, ptr %i.fm, align 1, !tbaa !58
  %i.hj = icmp eq i8 %i.hi, 69
  br i1 %i.hj, label %.split431.us, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

.split436.us:                                     ; preds = %bb.bb
  tail call void @abort() #30
  unreachable

.split434.us:                                     ; preds = %bb.ba
  tail call void @abort() #30
  unreachable

.split431.us:                                     ; preds = %bb.aw, %bb.bg
  %.in712 = phi i64 [ %i.hh, %bb.bg ], [ %i.gb, %bb.aw ]
  %.us-phi432 = phi ptr [ %i.fm, %bb.bg ], [ %i.gd, %bb.aw ]
  %i.hk = ashr exact i64 %.in712, 3
  %i.hl = getelementptr inbounds nuw i8, ptr %.us-phi432, i64 1
  store ptr %i.hl, ptr %0, align 8, !tbaa !194
  %i.hm = tail call fastcc { ptr, i64 } @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm(ptr noundef nonnull align 8 dereferenceable(888) %0, i64 noundef %i.hk) ; 2 uses
  %i.hn = extractvalue { ptr, i64 } %i.hm, 0
  %i.ho = extractvalue { ptr, i64 } %i.hm, 1
  %i.hp = getelementptr i8, ptr %i.ah, i64 3
  %.val139 = load i8, ptr %i.hp, align 1
  %3 = lshr i64 5189413545564999712, %i.ap
  %4 = trunc i64 %3 to i8
  %i.hq = and i8 %4, 1
  %i.hr = lshr i8 %.val139, 1
  %i.hs = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_7NewExprEJRNS0_9NodeArrayERPNS0_4NodeES9_RbbNSA_4PrecEEEESB_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr %.0.i.i.i.i.i, i64 %i.fh, ptr nonnull %i.fk, ptr %i.hn, i64 %i.ho, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i8 %i.hq, i8 %i.hr)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.bh:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.ht = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.hv = getelementptr i8, ptr %i.ah, i64 3
  %.val138 = load i8, ptr %i.hv, align 1
  %5 = lshr i64 5189413545564999712, %i.ap
  %6 = trunc i64 %5 to i8
  %i.hw = and i8 %6, 1
  %i.hx = lshr i8 %.val138, 1
  %i.hy = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.hz = load ptr, ptr %i.hy, align 8, !tbaa !172 ; 2 uses
  %i.ia = ptrtoint ptr %i.hz to i64
  %i.ib = add i64 %i.ia, 32                       ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.id = load i64, ptr %i.ic, align 8, !tbaa !173
  %i.ie = icmp ult i64 %i.ib, %i.id
  br i1 %i.ie, label %bb.bj, label %bb.bk, !prof !174

bb.bj:                                            ; preds = %bb.bi
  %i.if = inttoptr i64 %i.ib to ptr
  store ptr %i.if, ptr %i.hy, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS8_4PrecEEEES9_DpOT0_.exit

bb.bk:                                            ; preds = %bb.bi
  %i.ig = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.hy, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS8_4PrecEEEES9_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS8_4PrecEEEES9_DpOT0_.exit: ; preds = %bb.bj, %bb.bk
  %.0.i.i.i.i = phi ptr [ %i.hz, %bb.bj ], [ %i.ig, %bb.bk ] ; 7 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i8 65, ptr %i.ih, align 8, !tbaa !179
  %i.ii = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 9 ; 2 uses
  %i.ij = load i16, ptr %i.ii, align 1
  %i.ik = and i16 %i.ij, -4096
  %i.il = zext nneg i8 %i.hx to i16
  %i.im = or disjoint i16 %i.ik, %i.il
  %i.in = or i16 %i.im, 1344
  store i16 %i.in, ptr %i.ii, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle10DeleteExprE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !47
  %i.io = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store ptr %i.ht, ptr %i.io, align 8, !tbaa !442
  %i.ip = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  store i8 %i.r, ptr %i.ip, align 8, !tbaa !443
  %i.iq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 25
  store i8 %i.hw, ptr %i.iq, align 1, !tbaa !444
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.bl:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.ir = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.is = icmp eq ptr %i.ir, null
  br i1 %i.is, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !157
  %i.iw = load ptr, ptr %i.it, align 8, !tbaa !118
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = ptrtoint ptr %i.iw to i64
  %i.iz = sub i64 %i.ix, %i.iy
  %i.ja = ashr exact i64 %i.iz, 3
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.bn

bb.bn:                                            ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit218, %bb.bm
  %i.jd = load ptr, ptr %0, align 8, !tbaa !194   ; 3 uses
  %i.je = load ptr, ptr %i.f, align 8, !tbaa !195
  %.not.i213 = icmp eq ptr %i.jd, %i.je
  br i1 %.not.i213, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jf = load i8, ptr %i.jd, align 1, !tbaa !58
  %i.jg = icmp eq i8 %i.jf, 69
  br i1 %i.jg, label %bb.ca, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.jh = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %.not74 = icmp eq ptr %i.jh, null
  br i1 %.not74, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ji = load ptr, ptr %i.iu, align 8, !tbaa !157 ; 3 uses
  %i.jj = load ptr, ptr %i.jb, align 8, !tbaa !119
  %i.jk = icmp eq ptr %i.ji, %i.jj
  br i1 %i.jk, label %bb.br, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit218

bb.br:                                            ; preds = %bb.bq
  %i.jl = load ptr, ptr %i.it, align 8, !tbaa !118 ; 5 uses
  %i.jm = ptrtoint ptr %i.ji to i64
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = sub i64 %i.jm, %i.jn                    ; 6 uses
  %i.jp = ashr exact i64 %i.jo, 2
  %i.jq = icmp eq ptr %i.jl, %i.jc
  %i.jr = shl i64 %i.jo, 1                        ; 2 uses
  br i1 %i.jq, label %bb.bs, label %bb.by

bb.bs:                                            ; preds = %bb.br
  %i.js = tail call noalias ptr @malloc(i64 noundef %i.jr) #33 ; 5 uses
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  tail call void @abort() #30
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.ju = icmp sgt i64 %i.jo, 8
  br i1 %i.ju, label %bb.bv, label %bb.bw, !prof !174

bb.bv:                                            ; preds = %bb.bu
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.js, ptr align 8 %i.jl, i64 %i.jo, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i217

bb.bw:                                            ; preds = %bb.bu
  %i.jv = icmp eq i64 %i.jo, 8
  br i1 %i.jv, label %bb.bx, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i217

bb.bx:                                            ; preds = %bb.bw
  %i.jw = load ptr, ptr %i.jl, align 8, !tbaa !121
  store ptr %i.jw, ptr %i.js, align 8, !tbaa !121
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i217

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i217: ; preds = %bb.bx, %bb.bw, %bb.bv
  store ptr %i.js, ptr %i.it, align 8, !tbaa !118
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i216

bb.by:                                            ; preds = %bb.br
  %i.jx = tail call ptr @realloc(ptr noundef %i.jl, i64 noundef %i.jr) #34 ; 3 uses
  store ptr %i.jx, ptr %i.it, align 8, !tbaa !118
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.bz, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i216

bb.bz:                                            ; preds = %bb.by
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i216: ; preds = %bb.by, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i217
  %i.jz = phi ptr [ %i.jx, %bb.by ], [ %i.js, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i217 ] ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.jo
  %i.kb = getelementptr inbounds nuw [8 x i8], ptr %i.jz, i64 %i.jp
  store ptr %i.kb, ptr %i.jb, align 8, !tbaa !119
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit218

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit218: ; preds = %bb.bq, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i216
  %i.kc = phi ptr [ %i.ka, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i216 ], [ %i.ji, %bb.bq ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store ptr %i.kd, ptr %i.iu, align 8, !tbaa !157
  store ptr %i.jh, ptr %i.kc, align 8, !tbaa !121
  br label %bb.bn, !llvm.loop !1487

bb.ca:                                            ; preds = %bb.bo
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jd, i64 1
  store ptr %i.ke, ptr %0, align 8, !tbaa !194
  %i.kf = tail call fastcc { ptr, i64 } @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm(ptr noundef nonnull align 8 dereferenceable(888) %0, i64 noundef %i.ja) ; 2 uses
  %i.kg = extractvalue { ptr, i64 } %i.kf, 0
  %i.kh = extractvalue { ptr, i64 } %i.kf, 1
  %i.ki = getelementptr i8, ptr %i.ah, i64 3
  %.val137 = load i8, ptr %i.ki, align 1
  %7 = lshr i64 5189413545564999712, %i.ap
  %8 = trunc i64 %7 to i8
  %i.kj = and i8 %8, 1
  %i.kk = lshr i8 %.val137, 1
  %i.kl = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8CallExprEJRPNS0_4NodeENS0_9NodeArrayEbNS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.ir, ptr %i.kg, i64 %i.kh, i8 %i.kj, i8 %i.kk)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.cb:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.kn = load i8, ptr %i.km, align 8, !tbaa !223, !range !90, !noundef !91
  store i8 0, ptr %i.km, align 8, !tbaa !223
  %i.ko = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  store i8 %i.kn, ptr %i.km, align 8, !tbaa !223
  %i.kp = icmp eq ptr %i.ko, null
  br i1 %i.kp, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.kq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !157 ; 3 uses
  %i.kt = load ptr, ptr %i.kq, align 8, !tbaa !118
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv                    ; 2 uses
  %i.kx = load ptr, ptr %0, align 8, !tbaa !194   ; 4 uses
  %i.ky = load ptr, ptr %i.f, align 8, !tbaa !195 ; 2 uses
  %.not.i219 = icmp eq ptr %i.kx, %i.ky
  br i1 %.not.i219, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.kz = load i8, ptr %i.kx, align 1, !tbaa !58  ; 2 uses
  %i.la = icmp eq i8 %i.kz, 95                    ; 2 uses
  br i1 %i.la, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.us.preheader, label %bb.co

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.us.preheader: ; preds = %bb.cd
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kx, i64 1 ; 2 uses
  store ptr %i.lb, ptr %0, align 8, !tbaa !194
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.us

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.us: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.us.preheader, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit227.us
  %i.le = phi ptr [ %i.ks, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.us.preheader ], [ %i.mg, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit227.us ]
  %i.lf = phi ptr [ %i.ky, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.us.preheader ], [ %.pre467, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit227.us ]
  %i.lg = phi ptr [ %i.lb, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.us.preheader ], [ %.pre, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit227.us ] ; 3 uses
  %.not.i222.us = icmp eq ptr %i.lg, %i.lf
  br i1 %.not.i222.us, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.us
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !58
  %i.li = icmp eq i8 %i.lh, 69
  br i1 %i.li, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit224, label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.us
  %i.lj = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.lk = icmp eq ptr %i.lj, null
  br i1 %i.lk, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ll = load ptr, ptr %i.kr, align 8, !tbaa !157 ; 3 uses
  %i.lm = load ptr, ptr %i.lc, align 8, !tbaa !119
  %i.ln = icmp eq ptr %i.ll, %i.lm
  br i1 %i.ln, label %bb.ch, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit227.us

bb.ch:                                            ; preds = %bb.cg
  %i.lo = load ptr, ptr %i.kq, align 8, !tbaa !118 ; 5 uses
  %i.lp = ptrtoint ptr %i.ll to i64
  %i.lq = ptrtoint ptr %i.lo to i64
  %i.lr = sub i64 %i.lp, %i.lq                    ; 6 uses
  %i.ls = ashr exact i64 %i.lr, 2
  %i.lt = icmp eq ptr %i.lo, %i.ld
  %i.lu = shl i64 %i.lr, 1                        ; 2 uses
  br i1 %i.lt, label %bb.cj, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.lv = tail call ptr @realloc(ptr noundef %i.lo, i64 noundef %i.lu) #34 ; 3 uses
  store ptr %i.lv, ptr %i.kq, align 8, !tbaa !118
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %.split.us, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i225.us

bb.cj:                                            ; preds = %bb.ch
  %i.lx = tail call noalias ptr @malloc(i64 noundef %i.lu) #33 ; 5 uses
  %i.ly = icmp eq ptr %i.lx, null
  br i1 %i.ly, label %.split428.us, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.lz = icmp sgt i64 %i.lr, 8
  br i1 %i.lz, label %bb.cn, label %bb.cl, !prof !174

bb.cl:                                            ; preds = %bb.ck
  %i.ma = icmp eq i64 %i.lr, 8
  br i1 %i.ma, label %bb.cm, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i226.us

bb.cm:                                            ; preds = %bb.cl
  %i.mb = load ptr, ptr %i.lo, align 8, !tbaa !121
  store ptr %i.mb, ptr %i.lx, align 8, !tbaa !121
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i226.us

bb.cn:                                            ; preds = %bb.ck
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lx, ptr align 8 %i.lo, i64 %i.lr, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i226.us

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i226.us: ; preds = %bb.cn, %bb.cm, %bb.cl
  store ptr %i.lx, ptr %i.kq, align 8, !tbaa !118
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i225.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i225.us: ; preds = %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i226.us, %bb.ci
  %i.mc = phi ptr [ %i.lv, %bb.ci ], [ %i.lx, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i226.us ] ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 %i.lr
  %i.me = getelementptr inbounds nuw [8 x i8], ptr %i.mc, i64 %i.ls
  store ptr %i.me, ptr %i.lc, align 8, !tbaa !119
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit227.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit227.us: ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i225.us, %bb.cg
  %i.mf = phi ptr [ %i.md, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i225.us ], [ %i.ll, %bb.cg ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 8 ; 2 uses
  store ptr %i.mg, ptr %i.kr, align 8, !tbaa !157
  store ptr %i.lj, ptr %i.mf, align 8, !tbaa !121
  %.pre = load ptr, ptr %0, align 8, !tbaa !194
  %.pre467 = load ptr, ptr %i.f, align 8, !tbaa !195
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.us

bb.co:                                            ; preds = %bb.cd
  %i.mh = icmp eq i8 %i.kz, 69
  br i1 %i.mh, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit224, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.thread

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit224: ; preds = %bb.ce, %bb.co
  %i.mi = phi ptr [ %i.ks, %bb.co ], [ %i.le, %bb.ce ]
  %.us-phi = phi ptr [ %i.kx, %bb.co ], [ %i.lg, %bb.ce ]
  %i.mj = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1
  store ptr %i.mj, ptr %0, align 8, !tbaa !194
  br label %.thread374

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.thread: ; preds = %bb.cc, %bb.co
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mm = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.mn = icmp eq ptr %i.mm, null
  br i1 %i.mn, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.cp

bb.cp:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.thread
  %i.mo = load ptr, ptr %i.kr, align 8, !tbaa !157 ; 3 uses
  %i.mp = load ptr, ptr %i.mk, align 8, !tbaa !119
  %i.mq = icmp eq ptr %i.mo, %i.mp
  br i1 %i.mq, label %bb.cq, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit227

bb.cq:                                            ; preds = %bb.cp
  %i.mr = load ptr, ptr %i.kq, align 8, !tbaa !118 ; 5 uses
  %i.ms = ptrtoint ptr %i.mo to i64
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = sub i64 %i.ms, %i.mt                    ; 6 uses
  %i.mv = ashr exact i64 %i.mu, 2
  %i.mw = icmp eq ptr %i.mr, %i.ml
  %i.mx = shl i64 %i.mu, 1                        ; 2 uses
  br i1 %i.mw, label %bb.cr, label %bb.cw

bb.cr:                                            ; preds = %bb.cq
  %i.my = tail call noalias ptr @malloc(i64 noundef %i.mx) #33 ; 5 uses
  %i.mz = icmp eq ptr %i.my, null
  br i1 %i.mz, label %.split428.us, label %bb.cs

.split428.us:                                     ; preds = %bb.cj, %bb.cr
  tail call void @abort() #30
  unreachable

bb.cs:                                            ; preds = %bb.cr
  %i.na = icmp sgt i64 %i.mu, 8
  br i1 %i.na, label %bb.ct, label %bb.cu, !prof !174

bb.ct:                                            ; preds = %bb.cs
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.my, ptr align 8 %i.mr, i64 %i.mu, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i226

bb.cu:                                            ; preds = %bb.cs
  %i.nb = icmp eq i64 %i.mu, 8
  br i1 %i.nb, label %bb.cv, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i226

bb.cv:                                            ; preds = %bb.cu
  %i.nc = load ptr, ptr %i.mr, align 8, !tbaa !121
  store ptr %i.nc, ptr %i.my, align 8, !tbaa !121
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i226

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i226: ; preds = %bb.cv, %bb.cu, %bb.ct
  store ptr %i.my, ptr %i.kq, align 8, !tbaa !118
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i225

bb.cw:                                            ; preds = %bb.cq
  %i.nd = tail call ptr @realloc(ptr noundef %i.mr, i64 noundef %i.mx) #34 ; 3 uses
  store ptr %i.nd, ptr %i.kq, align 8, !tbaa !118
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %.split.us, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i225

.split.us:                                        ; preds = %bb.ci, %bb.cw
  tail call void @abort() #30
  unreachable

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i225: ; preds = %bb.cw, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i226
  %i.nf = phi ptr [ %i.nd, %bb.cw ], [ %i.my, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i226 ] ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 %i.mu
  %i.nh = getelementptr inbounds nuw [8 x i8], ptr %i.nf, i64 %i.mv
  store ptr %i.nh, ptr %i.mk, align 8, !tbaa !119
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit227

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit227: ; preds = %bb.cp, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i225
  %i.ni = phi ptr [ %i.ng, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i225 ], [ %i.mo, %bb.cp ] ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 8 ; 2 uses
  store ptr %i.nj, ptr %i.kr, align 8, !tbaa !157
  store ptr %i.mm, ptr %i.ni, align 8, !tbaa !121
  br label %.thread374

.thread374:                                       ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit227, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit224
  %.0.i220604 = phi i1 [ false, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit227 ], [ %i.la, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit224 ]
  %i.nk = phi ptr [ %i.nj, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit227 ], [ %i.mi, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit224 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.nl = load ptr, ptr %i.kq, align 8, !tbaa !118
  %i.nm = getelementptr inbounds i8, ptr %i.nl, i64 %i.kw ; 3 uses
  %i.nn = ptrtoint ptr %i.nk to i64
  %i.no = ptrtoint ptr %i.nm to i64
  %i.np = sub i64 %i.nn, %i.no                    ; 8 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !172 ; 2 uses
  %i.ns = ptrtoint ptr %i.nr to i64
  %i.nt = add i64 %i.np, %i.ns                    ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !173
  %i.nw = icmp ult i64 %i.nt, %i.nv
  br i1 %i.nw, label %bb.cx, label %bb.cy, !prof !174

bb.cx:                                            ; preds = %.thread374
  %i.nx = inttoptr i64 %i.nt to ptr
  store ptr %i.nx, ptr %i.nq, align 8, !tbaa !172
  br label %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i228

bb.cy:                                            ; preds = %.thread374
  %i.ny = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.nq, i64 noundef %i.np, i64 noundef %i.np, i8 3)
  br label %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i228

_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i228: ; preds = %bb.cy, %bb.cx
  %.0.i.i.i.i.i229 = phi ptr [ %i.nr, %bb.cx ], [ %i.ny, %bb.cy ] ; 3 uses
  %i.nz = icmp sgt i64 %i.np, 8
  br i1 %i.nz, label %bb.cz, label %bb.da, !prof !174

bb.cz:                                            ; preds = %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i228
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.0.i.i.i.i.i229, ptr align 8 %i.nm, i64 %i.np, i1 false)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit232

bb.da:                                            ; preds = %_ZN12_GLOBAL__N_113NodeAllocator17allocateNodeArrayEm.exit.i.i228
  %i.oa = icmp eq i64 %i.np, 8
  br i1 %i.oa, label %bb.db, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit232

bb.db:                                            ; preds = %bb.da
  %i.ob = load ptr, ptr %i.nm, align 8, !tbaa !121
  store ptr %i.ob, ptr %.0.i.i.i.i.i229, align 8, !tbaa !121
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit232

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit232: ; preds = %bb.cz, %bb.da, %bb.db
  %i.oc = ashr exact i64 %i.np, 3
  %i.od = load ptr, ptr %i.kq, align 8, !tbaa !118
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.kw
  store ptr %i.oe, ptr %i.kr, align 8, !tbaa !157
  store ptr %.0.i.i.i.i.i229, ptr %2, align 8
  %i.of = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.oc, ptr %i.of, align 8
  %.not73 = icmp eq i64 %i.np, 8
  %or.cond = or i1 %.0.i220604, %.not73
  br i1 %or.cond, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit232
  %i.og = getelementptr i8, ptr %i.ah, i64 3
  %.val118 = load i8, ptr %i.og, align 1
  %i.oh = lshr i8 %.val118, 1
  %i.oi = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_14ConversionExprEJRPNS0_4NodeERNS0_9NodeArrayENS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.ko, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 %i.oh)
  br label %bb.dd

bb.dd:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit232, %bb.dc
  %.19 = phi ptr [ %i.oi, %bb.dc ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit232 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.de:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.oj = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.ok = icmp eq ptr %i.oj, null
  br i1 %i.ok, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.ol = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.om = icmp eq ptr %i.ol, null
  br i1 %i.om, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.on = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.oo = icmp eq ptr %i.on, null
  br i1 %i.oo, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.op = getelementptr i8, ptr %i.ah, i64 3
  %.val117 = load i8, ptr %i.op, align 1
  %i.oq = lshr i8 %.val117, 1
  %i.or = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_15ConditionalExprEJRPNS0_4NodeESA_SA_NS8_4PrecEEEES9_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nonnull %i.oj, ptr nonnull %i.ol, ptr nonnull %i.on, i8 %i.oq)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.di:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.os = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.ot = icmp eq ptr %i.os, null
  br i1 %i.ot, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.ou = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.ow = getelementptr i8, ptr %i.ah, i64 3
  %.val116 = load i8, ptr %i.ow, align 1
  %i.ox = lshr i8 %.val116, 1
  %i.oy = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8CastExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeESF_NSD_4PrecEEEESE_DpOT0_(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.os, ptr nonnull %i.ou, i8 %i.ox)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.dl:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %i.oz = getelementptr i8, ptr %i.ah, i64 3
  %9 = and i64 %i.aq, 5189413545564999712
  %.not397 = icmp eq i64 %9, 0
  br i1 %.not397, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.pa = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(888) %0)
  br label %bb.do

bb.dn:                                            ; preds = %bb.dl
  %i.pb = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0)
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %i.pc = phi ptr [ %i.pa, %bb.dm ], [ %i.pb, %bb.dn ] ; 2 uses
  %.not72 = icmp eq ptr %i.pc, null
  br i1 %.not72, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.val115 = load i8, ptr %i.oz, align 1
  %i.pd = lshr i8 %.val115, 1
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !172 ; 2 uses
  %i.pg = ptrtoint ptr %i.pf to i64
  %i.ph = add i64 %i.pg, 56                       ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.pj = load i64, ptr %i.pi, align 8, !tbaa !173
  %i.pk = icmp ult i64 %i.ph, %i.pj
  br i1 %i.pk, label %bb.dq, label %bb.dr, !prof !174

bb.dq:                                            ; preds = %bb.dp
  %i.pl = inttoptr i64 %i.ph to ptr
  store ptr %i.pl, ptr %i.pe, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSD_4PrecEEEESE_DpOT0_.exit

bb.dr:                                            ; preds = %bb.dp
  %i.pm = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.pe, i64 noundef 56, i64 noundef 56, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSD_4PrecEEEESE_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSD_4PrecEEEESE_DpOT0_.exit: ; preds = %bb.dq, %bb.dr
  %.0.i.i.i.i233 = phi ptr [ %i.pf, %bb.dq ], [ %i.pm, %bb.dr ] ; 8 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i233, i64 8
  store i8 60, ptr %i.pn, align 8, !tbaa !179
  %i.po = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i233, i64 9 ; 2 uses
  %i.pp = load i16, ptr %i.po, align 1
  %i.pq = and i16 %i.pp, -4096
  %i.pr = zext nneg i8 %i.pd to i16
  %i.ps = or disjoint i16 %i.pq, %i.pr
  %i.pt = or i16 %i.ps, 1344
  store i16 %i.pt, ptr %i.po, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle13EnclosingExprE, i64 16), ptr %.0.i.i.i.i233, align 8, !tbaa !47
  %i.pu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i233, i64 16
  store i64 %.sroa.0.0.i, ptr %i.pu, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i233, i64 24
  store ptr %.sroa.7.0.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !64
  %i.pv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i233, i64 32
  store ptr %i.pc, ptr %i.pv, align 8, !tbaa !429
  %i.pw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i233, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pw, i8 0, i64 16, i1 false)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.ds:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  unreachable

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit: ; preds = %bb.cf, %bb.bp, %bb.ad, %bb.ax, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.thread, %.split429, %bb.bg, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSD_4PrecEEEESE_DpOT0_.exit, %bb.do, %bb.di, %bb.dj, %bb.dk, %bb.de, %bb.dh, %bb.dg, %bb.df, %bb.cb, %bb.dd, %bb.bl, %bb.ca, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS8_4PrecEEEES9_DpOT0_.exit, %bb.bh, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit, %.split431.us, %bb.x, %bb.y, %bb.z, %bb.u, %bb.v, %bb.w, %bb.t, %bb.s, %bb.r, %bb.q, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSD_4PrecEEEESE_DpOT0_.exit, %bb.k, %bb.h, %bb.j, %bb.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit
  %.28 = phi ptr [ null, %bb.y ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.q ], [ null, %bb.s ], [ null, %bb.v ], [ %.0.i.i.i.i233, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSD_4PrecEEEESE_DpOT0_.exit ], [ null, %bb.ax ], [ null, %bb.bh ], [ null, %bb.ad ], [ %.19, %bb.dd ], [ null, %bb.dg ], [ null, %bb.dj ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfo9getSymbolEv.exit ], [ null, %bb.h ], [ %i.bg, %bb.j ], [ %.0.i.i.i.i295, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSD_4PrecEEEESE_DpOT0_.exit ], [ %i.ck, %bb.r ], [ %i.cp, %bb.t ], [ null, %bb.u ], [ %i.cw, %bb.w ], [ null, %bb.x ], [ %i.dd, %bb.z ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20popTrailingNodeArrayEm.exit ], [ null, %bb.bp ], [ %i.hs, %.split431.us ], [ %.0.i.i.i.i, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS8_4PrecEEEES9_DpOT0_.exit ], [ null, %bb.bl ], [ %i.kl, %bb.ca ], [ null, %bb.cb ], [ null, %bb.do ], [ null, %bb.de ], [ null, %bb.df ], [ %i.or, %bb.dh ], [ null, %bb.di ], [ %i.oy, %bb.dk ], [ null, %bb.bg ], [ null, %.split429 ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfEc.exit221.split.thread ], [ null, %bb.cf ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #27
  br label %.critedge82

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit: ; preds = %bb.d, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i
  switch i8 %i.t, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i251 [
    i8 76, label %bb.dt
    i8 84, label %bb.du
    i8 102, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit244
  ]

bb.dt:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit
  %i.px = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE16parseExprPrimaryEv(ptr noundef nonnull align 8 dereferenceable(888) %0)
  br label %.critedge82

bb.du:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit
  %i.py = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE18parseTemplateParamEv(ptr noundef nonnull align 8 dereferenceable(888) %0)
  br label %.critedge82

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit244: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit
  %i.pz = load i8, ptr %i.u, align 1, !tbaa !58   ; 2 uses
  %i.qa = icmp eq i8 %i.pz, 112
  br i1 %i.qa, label %bb.dv, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit247

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit247: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit244
  %i.qb = icmp eq i8 %i.pz, 76
  %.not.i248 = icmp ne i64 %.pre-phi474600, 2
  %or.cond395 = and i1 %.not.i248, %i.qb
  br i1 %or.cond395, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit250, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit250.thread

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit250: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit247
  %i.qc = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.qd = load i8, ptr %i.qc, align 1, !tbaa !58
  %i.qe = sext i8 %i.qd to i32
  %isdigittmp = add nsw i32 %i.qe, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.dv, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit250.thread

bb.dv:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit250, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit244
  %i.qf = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE18parseFunctionParamEv(ptr noundef nonnull align 8 dereferenceable(888) %0)
  br label %.critedge82

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit250.thread: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit250, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit247
  %.not.i.i = icmp eq ptr %i.s, %i.g
  br i1 %.not.i.i, label %.critedge82, label %bb.dw

bb.dw:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit250.thread
  store ptr %i.u, ptr %0, align 8, !tbaa !194
  %.not.i21.not.i = icmp eq ptr %i.g, %i.u
  br i1 %.not.i21.not.i, label %.critedge82, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i: ; preds = %bb.dw
  %i.qg = load i8, ptr %i.u, align 1, !tbaa !58
  switch i8 %i.qg, label %.critedge82 [
    i8 76, label %bb.dx
    i8 82, label %bb.dy
    i8 108, label %bb.dz
    i8 114, label %bb.ea
  ]

bb.dx:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i
  br label %bb.ea

bb.dy:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i
  br label %bb.ea

bb.dz:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy, %bb.dx, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i
  %.035.i = phi i8 [ 1, %bb.dx ], [ 0, %bb.dy ], [ 1, %bb.dz ], [ 0, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i ] ; 2 uses
  %.0.i = phi i1 [ true, %bb.dx ], [ true, %bb.dy ], [ false, %bb.dz ], [ false, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i ]
  %i.qh = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 3 uses
  store ptr %i.qh, ptr %0, align 8, !tbaa !194
  %i.qi = ptrtoint ptr %i.qh to i64
  %i.qj = sub i64 %i.h, %i.qi
  %i.qk = icmp ult i64 %i.qj, 2
  br i1 %i.qk, label %.critedge82, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.ea
  %i.ql = load i8, ptr %i.qh, align 1, !tbaa !58  ; 3 uses
  %i.qm = getelementptr inbounds nuw i8, ptr %i.s, i64 3 ; 2 uses
  br label %bb.eb

bb.eb:                                            ; preds = %.thread24.i.i, %.preheader.i.i
  %.031.i.i = phi i64 [ 62, %.preheader.i.i ], [ %i.qy, %.thread24.i.i ] ; 3 uses
  %.01030.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.qx, %.thread24.i.i ] ; 3 uses
  %i.qn = add i64 %.01030.i.i, %.031.i.i
  %i.qo = lshr i64 %i.qn, 1                       ; 5 uses
  %i.qp = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE3OpsE, i64 %i.qo ; 2 uses
  %.val15.i.i = load i8, ptr %i.qp, align 16, !tbaa !58 ; 2 uses
  %i.qq = getelementptr i8, ptr %i.qp, i64 1
  %.val16.i.i = load i8, ptr %i.qq, align 1
  %i.qr = icmp slt i8 %.val15.i.i, %i.ql
  br i1 %i.qr, label %.thread.i.i, label %bb.ec

.thread.i.i:                                      ; preds = %bb.eb
  %i.qs = add nuw nsw i64 %i.qo, 1
  br label %.thread24.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.qt = icmp eq i8 %.val15.i.i, %i.ql
  br i1 %i.qt, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i.i, label %.thread24.i.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i.i: ; preds = %bb.ec
  %i.qu = load i8, ptr %i.qm, align 1, !tbaa !58
  %i.qv = icmp slt i8 %.val16.i.i, %i.qu
  %cond.fr19.i.i = freeze i1 %i.qv                ; 2 uses
  %i.qw = add nuw nsw i64 %i.qo, 1
  %spec.select.i.i = select i1 %cond.fr19.i.i, i64 %i.qw, i64 %.01030.i.i
  %spec.select29.i.i = select i1 %cond.fr19.i.i, i64 %.031.i.i, i64 %i.qo
  br label %.thread24.i.i

.thread24.i.i:                                    ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i.i, %bb.ec, %.thread.i.i
  %i.qx = phi i64 [ %.01030.i.i, %bb.ec ], [ %spec.select.i.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i.i ], [ %i.qs, %.thread.i.i ] ; 4 uses
  %i.qy = phi i64 [ %i.qo, %bb.ec ], [ %spec.select29.i.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i.i ], [ %.031.i.i, %.thread.i.i ] ; 2 uses
  %.not.i23.i = icmp eq i64 %i.qy, %i.qx
  br i1 %.not.i23.i, label %bb.ed, label %bb.eb, !llvm.loop !36

bb.ed:                                            ; preds = %.thread24.i.i
  %i.qz = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE3OpsE, i64 %i.qx ; 5 uses
  %.val17.i.i = load i8, ptr %i.qz, align 16, !tbaa !58
  %i.ra = icmp eq i8 %.val17.i.i, %i.ql
  br i1 %i.ra, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i.i, label %.critedge82

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i.i: ; preds = %bb.ed
  %i.rb = getelementptr i8, ptr %i.qz, i64 1
  %.val18.i.i = load i8, ptr %i.rb, align 1
  %i.rc = load i8, ptr %i.qm, align 1, !tbaa !58
  %.not28.i.i = icmp eq i8 %.val18.i.i, %i.rc
  br i1 %.not28.i.i, label %bb.ee, label %.critedge82

bb.ee:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i.i
  %i.rd = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store ptr %i.rd, ptr %0, align 8, !tbaa !194
  %i.re = getelementptr i8, ptr %i.qz, i64 2
  %.val16.i950 = load i8, ptr %i.re, align 2, !tbaa !1493
  switch i8 %.val16.i950, label %.critedge82 [
    i8 2, label %.critedge.i
    i8 4, label %bb.ef
  ]

bb.ef:                                            ; preds = %bb.ee
  %i.rf = getelementptr i8, ptr %i.qz, i64 8
  %.val17.i951 = load ptr, ptr %i.rf, align 8, !tbaa !631 ; 2 uses
  %i.rg = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val17.i951) #27, !inline_history !1488
  %i.rh = getelementptr inbounds nuw i8, ptr %.val17.i951, i64 %i.rg
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 -1
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !58
  %.not.i952 = icmp eq i8 %i.rj, 42
  br i1 %.not.i952, label %.critedge.i, label %.critedge82

.critedge.i:                                      ; preds = %bb.ef, %bb.ee
  %i.rk = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseExprEv(ptr noundef nonnull align 8 dereferenceable(888) %0), !inline_history !1488 ; 4 uses
  %i.rl = icmp eq ptr %i.rk, null
  br i1 %i.rl, label %.critedge82, label %bb.eg
end_hunk_4
begin_hunk_5_@_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE23parseBaseUnresolvedNameEv:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i, i64 24
  store ptr %i.k, ptr %i.ab, align 8, !tbaa !398
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseDestructorNameEv.exit

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.thread: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit
  %i.ac = icmp ult i64 %i.d, 2
  br i1 %i.ac, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit11, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.thread
  %i.ad = load i16, ptr %.val3, align 1
  %i.ae = icmp ne i16 %i.ad, 28260
  %i.af = zext i1 %i.ae to i32
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i7

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.val3, i64 2 ; 3 uses
  store ptr %i.ah, ptr %0, align 8, !tbaa !194
  %.not.i16.not = icmp eq ptr %.val4, %i.ah
  br i1 %.not.i16.not, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit18.thread, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit18

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit18: ; preds = %bb.h
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !58
  %i.aj = sext i8 %i.ai to i32
  %isdigittmp.i = add nsw i32 %i.aj, -48
  %isdigit.i = icmp ult i32 %isdigittmp.i, 10
  br i1 %isdigit.i, label %bb.i, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit18.thread

bb.i:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit18
  %i.ak = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE13parseSimpleIdEv(ptr noundef nonnull align 8 dereferenceable(888) %0), !inline_history !1500
  br label %bb.j

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit18.thread: ; preds = %bb.h, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit18
  %i.al = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseUnresolvedTypeEv(ptr noundef nonnull align 8 dereferenceable(888) %0), !inline_history !1500
  br label %bb.j

bb.j:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit18.thread, %bb.i
  %storemerge.i = phi ptr [ %i.al, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit18.thread ], [ %i.ak, %bb.i ] ; 2 uses
  %i.am = icmp eq ptr %storemerge.i, null
  br i1 %i.am, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseDestructorNameEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !172 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = add i64 %i.ap, 24                       ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !173
  %i.at = icmp ult i64 %i.aq, %i.as
  br i1 %i.at, label %bb.l, label %bb.m, !prof !174

bb.l:                                             ; preds = %bb.k
  %i.au = inttoptr i64 %i.aq to ptr
  store ptr %i.au, ptr %i.an, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8DtorNameEJRPNS0_4NodeEEEES9_DpOT0_.exit

bb.m:                                             ; preds = %bb.k
  %i.av = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.an, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8DtorNameEJRPNS0_4NodeEEEES9_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8DtorNameEJRPNS0_4NodeEEEES9_DpOT0_.exit: ; preds = %bb.l, %bb.m
  %.0.i.i.i.i15 = phi ptr [ %i.ao, %bb.l ], [ %i.av, %bb.m ] ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i15, i64 8
  store i8 50, ptr %i.aw, align 8, !tbaa !179
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i15, i64 9 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 1
  %i.az = and i16 %i.ay, -4096
  %i.ba = or disjoint i16 %i.az, 1344
  store i16 %i.ba, ptr %i.ax, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle8DtorNameE, i64 16), ptr %.0.i.i.i.i15, align 8, !tbaa !47
  %i.bb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i15, i64 16
  store ptr %storemerge.i, ptr %i.bb, align 8, !tbaa !605
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseDestructorNameEv.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i7: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.bc = load i16, ptr %.val3, align 1
  %i.bd = icmp ne i16 %i.bc, 28271
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i10, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit11

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i10: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i7
  %i.bg = getelementptr inbounds nuw i8, ptr %.val3, i64 2
  store ptr %i.bg, ptr %0, align 8, !tbaa !194
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit11

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit11: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.thread, %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i7, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEES4_.exit.i10
  %i.bh = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE17parseOperatorNameEPNS5_9NameStateE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef null) ; 4 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseDestructorNameEv.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit11
  %.val = load ptr, ptr %0, align 8, !tbaa !194   ; 2 uses
  %.val2 = load ptr, ptr %i.a, align 8, !tbaa !195
  %.not.i12.not = icmp eq ptr %.val2, %.val
  br i1 %.not.i12.not, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseDestructorNameEv.exit, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit14

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit14: ; preds = %bb.n
  %i.bj = load i8, ptr %.val, align 1, !tbaa !58
  %i.bk = icmp eq i8 %i.bj, 73
  br i1 %i.bk, label %bb.o, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseDestructorNameEv.exit

bb.o:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit14
  %i.bl = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE17parseTemplateArgsEb(ptr noundef nonnull align 8 dereferenceable(888) %0, i1 noundef zeroext false) ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseDestructorNameEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !172 ; 2 uses
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = add i64 %i.bp, 32                       ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !173
  %i.bt = icmp ult i64 %i.bq, %i.bs
  br i1 %i.bt, label %bb.q, label %bb.r, !prof !174

bb.q:                                             ; preds = %bb.p
  %i.bu = inttoptr i64 %i.bq to ptr
  store ptr %i.bu, ptr %i.bn, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit

bb.r:                                             ; preds = %bb.p
  %i.bv = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bn, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit: ; preds = %bb.q, %bb.r
  %.0.i.i.i.i = phi ptr [ %i.bo, %bb.q ], [ %i.bv, %bb.r ] ; 6 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i8 45, ptr %i.bw, align 8, !tbaa !179
  %i.bx = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 9 ; 2 uses
  %i.by = load i16, ptr %i.bx, align 1
  %i.bz = and i16 %i.by, -4096
  %i.ca = or disjoint i16 %i.bz, 1344
  store i16 %i.ca, ptr %i.bx, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle20NameWithTemplateArgsE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store ptr %i.bh, ptr %i.cb, align 8, !tbaa !397
  %i.cc = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  store ptr %i.bl, ptr %i.cc, align 8, !tbaa !398
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseDestructorNameEv.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseDestructorNameEv.exit: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit.i, %bb.d, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i, %bb.c, %bb.b, %bb.n, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit11, %bb.o, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit14, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8DtorNameEJRPNS0_4NodeEEEES9_DpOT0_.exit, %bb.j
  %.2 = phi ptr [ %i.bh, %bb.n ], [ null, %bb.j ], [ %.0.i.i.i.i15, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8DtorNameEJRPNS0_4NodeEEEES9_DpOT0_.exit ], [ null, %bb.o ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit11 ], [ %.0.i.i.i.i, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit ], [ %i.bh, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit14 ], [ null, %bb.d ], [ null, %bb.b ], [ %.0.i.i.i.i.i, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESA_EEES9_DpOT0_.exit.i ], [ %i.g, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i ], [ %i.g, %bb.c ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE17parseOperatorNameEPNS5_9NameStateE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 align 2 {
bb.a:
  %.val.i = load ptr, ptr %0, align 8, !tbaa !194 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14.i = load ptr, ptr %i.a, align 8, !tbaa !195 ; 3 uses
  %i.b = ptrtoint ptr %.val14.i to i64
  %i.c = ptrtoint ptr %.val.i to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %.thread62, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.f = load i8, ptr %.val.i, align 1, !tbaa !58 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread24.i, %.preheader.i
  %.031.i = phi i64 [ 62, %.preheader.i ], [ %i.s, %.thread24.i ] ; 3 uses
  %.01030.i = phi i64 [ 0, %.preheader.i ], [ %i.r, %.thread24.i ] ; 3 uses
  %i.h = add i64 %.01030.i, %.031.i
  %i.i = lshr i64 %i.h, 1                         ; 5 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE3OpsE, i64 %i.i ; 2 uses
  %.val15.i = load i8, ptr %i.j, align 16, !tbaa !58 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 1
  %.val16.i = load i8, ptr %i.k, align 1
  %i.l = icmp slt i8 %.val15.i, %i.f
  br i1 %i.l, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.m = add nuw nsw i64 %i.i, 1
  br label %.thread24.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i8 %.val15.i, %i.f
  br i1 %i.n, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i, label %.thread24.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i: ; preds = %bb.c
  %i.o = load i8, ptr %i.g, align 1, !tbaa !58
  %i.p = icmp slt i8 %.val16.i, %i.o
  %cond.fr19.i = freeze i1 %i.p                   ; 2 uses
  %i.q = add nuw nsw i64 %i.i, 1
  %spec.select.i = select i1 %cond.fr19.i, i64 %i.q, i64 %.01030.i
  %spec.select29.i = select i1 %cond.fr19.i, i64 %.031.i, i64 %i.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i, %bb.c, %.thread.i
  %i.r = phi i64 [ %.01030.i, %bb.c ], [ %spec.select.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i ], [ %i.m, %.thread.i ] ; 4 uses
  %i.s = phi i64 [ %i.i, %bb.c ], [ %spec.select29.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoltEPKc.exit.i ], [ %.031.i, %.thread.i ] ; 2 uses
  %.not.i = icmp eq i64 %i.s, %i.r
  br i1 %.not.i, label %bb.d, label %bb.b, !llvm.loop !36

bb.d:                                             ; preds = %.thread24.i
  %i.t = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE3OpsE, i64 %i.r ; 3 uses
  %.val17.i = load i8, ptr %i.t, align 16, !tbaa !58
  %i.u = icmp eq i8 %.val17.i, %i.f
  br i1 %i.u, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i: ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.t, i64 1
  %.val18.i = load i8, ptr %i.v, align 1
  %i.w = load i8, ptr %i.g, align 1, !tbaa !58
  %.not28.i = icmp eq i8 %.val18.i, %i.w
  br i1 %.not28.i, label %bb.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

bb.e:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  store ptr %i.x, ptr %0, align 8, !tbaa !194
  %i.y = and i64 %i.r, 1152921504606846975        ; 2 uses
  %i.z = icmp eq i64 %i.y, 13
  br i1 %i.z, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !223, !range !90, !noundef !91
  store i8 0, ptr %i.aa, align 8, !tbaa !223
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 777 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !198, !range !90, !noundef !91 ; 2 uses
  %i.ae = icmp ne ptr %1, null                    ; 2 uses
  %i.af = zext i1 %i.ae to i8
  %i.ag = or i8 %i.ad, %i.af
  store i8 %i.ag, ptr %i.ac, align 1, !tbaa !223
  %i.ah = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE9parseTypeEv(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %1, align 8, !tbaa !624
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !172 ; 2 uses
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = add i64 %i.al, 24                       ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !173
  %i.ap = icmp ult i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !174

bb.j:                                             ; preds = %bb.i
  %i.aq = inttoptr i64 %i.am to ptr
  store ptr %i.aq, ptr %i.aj, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit

bb.k:                                             ; preds = %bb.i
  %i.ar = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.aj, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit: ; preds = %bb.j, %bb.k
  %.0.i.i.i.i = phi ptr [ %i.ak, %bb.j ], [ %i.ar, %bb.k ] ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i8 4, ptr %i.as, align 8, !tbaa !179
  %i.at = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 9 ; 2 uses
  %i.au = load i16, ptr %i.at, align 1
  %i.av = and i16 %i.au, -4096
  %i.aw = or disjoint i16 %i.av, 1344
  store i16 %i.aw, ptr %i.at, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle22ConversionOperatorTypeE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store ptr %i.ah, ptr %i.ax, align 8, !tbaa !607
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit
  %.013 = phi ptr [ %.0.i.i.i.i, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit ], [ null, %bb.f ]
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !223
  store i8 %i.ab, ptr %i.aa, align 8, !tbaa !223
  br label %.thread

bb.m:                                             ; preds = %bb.e
  %i.ay = shl nuw i64 1, %i.y                     ; 3 uses
  %i.az = and i64 %i.ay, 8809040871136756128
  %.not = icmp eq i64 %i.az, 0
  br i1 %.not, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %2 = and i64 %i.ay, 1266637396770816
  %.not49 = icmp ne i64 %2, 0
  %3 = and i64 %i.ay, 1266774834188288
  %.not50 = icmp eq i64 %3, 0
  %or.cond = and i1 %.not49, %.not50
  br i1 %or.cond, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = getelementptr i8, ptr %i.t, i64 8
  %.val25 = load ptr, ptr %i.ba, align 8, !tbaa !631 ; 2 uses
  %i.bb = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val25) #27
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !172 ; 2 uses
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = add i64 %i.be, 32                       ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !173
  %i.bi = icmp ult i64 %i.bf, %i.bh
  br i1 %i.bi, label %bb.p, label %bb.q, !prof !174

bb.p:                                             ; preds = %bb.o
  %i.bj = inttoptr i64 %i.bf to ptr
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit

bb.q:                                             ; preds = %bb.o
  %i.bk = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.bc, i64 noundef 32, i64 noundef 32, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit: ; preds = %bb.p, %bb.q
  %.0.i.i.i.i27 = phi ptr [ %i.bd, %bb.p ], [ %i.bk, %bb.q ] ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i27, i64 8
  store i8 8, ptr %i.bl, align 8, !tbaa !179
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i27, i64 9 ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 1
  %i.bo = and i16 %i.bn, -4096
  %i.bp = or disjoint i16 %i.bo, 1344
  store i16 %i.bp, ptr %i.bm, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle8NameTypeE, i64 16), ptr %.0.i.i.i.i27, align 8, !tbaa !47
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i27, i64 16
  store i64 %i.bb, ptr %i.bq, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i27, i64 24
  store ptr %.val25, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !64
  br label %.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12OperatorInfoneEPKc.exit.i, %bb.d
  %i.br = load i16, ptr %.val.i, align 1
  %i.bs = icmp ne i16 %i.br, 26988
  %i.bt = zext i1 %i.bs to i32
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.r, label %.thread62

bb.r:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  store ptr %i.bv, ptr %0, align 8, !tbaa !194
  %i.bw = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseSourceNameEPNS5_9NameStateE(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !172 ; 2 uses
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = add i64 %i.ca, 24                       ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !173
  %i.ce = icmp ult i64 %i.cb, %i.cd
  br i1 %i.ce, label %bb.t, label %bb.u, !prof !174

bb.t:                                             ; preds = %bb.s
  %i.cf = inttoptr i64 %i.cb to ptr
  store ptr %i.cf, ptr %i.by, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEES9_DpOT0_.exit

bb.u:                                             ; preds = %bb.s
  %i.cg = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.by, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEES9_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEES9_DpOT0_.exit: ; preds = %bb.t, %bb.u
  %.0.i.i.i.i28 = phi ptr [ %i.bz, %bb.t ], [ %i.cg, %bb.u ] ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i28, i64 8
  store i8 20, ptr %i.ch, align 8, !tbaa !179
  %i.ci = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i28, i64 9 ; 2 uses
  %i.cj = load i16, ptr %i.ci, align 1
  %i.ck = and i16 %i.cj, -4096
  %i.cl = or disjoint i16 %i.ck, 1344
  store i16 %i.cl, ptr %i.ci, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle15LiteralOperatorE, i64 16), ptr %.0.i.i.i.i28, align 8, !tbaa !47
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i28, i64 16
  store ptr %i.bw, ptr %i.cm, align 8, !tbaa !609
  br label %.thread

.thread62:                                        ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.not.i29 = icmp eq ptr %.val.i, %.val14.i
  br i1 %.not.i29, label %.thread, label %bb.v

bb.v:                                             ; preds = %.thread62
  %i.cn = load i8, ptr %.val.i, align 1, !tbaa !58
  %i.co = icmp eq i8 %i.cn, 118
  br i1 %i.co, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.cp = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 3 uses
  store ptr %i.cp, ptr %0, align 8, !tbaa !194
  %.not.i30.not = icmp eq ptr %.val14.i, %i.cp
  br i1 %.not.i30.not, label %.thread, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit: ; preds = %bb.w
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !58
  %i.cr = add i8 %i.cq, -48
  %or.cond.a = icmp ult i8 %i.cr, 10
  br i1 %or.cond.a, label %bb.x, label %.thread

bb.x:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  store ptr %i.cs, ptr %0, align 8, !tbaa !194
  %i.ct = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE15parseSourceNameEPNS5_9NameStateE(ptr noundef nonnull align 8 dereferenceable(888) %0) ; 2 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !172 ; 2 uses
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = add i64 %i.cx, 24                       ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !173
  %i.db = icmp ult i64 %i.cy, %i.da
  br i1 %i.db, label %bb.z, label %bb.aa, !prof !174

bb.z:                                             ; preds = %bb.y
  %i.dc = inttoptr i64 %i.cy to ptr
  store ptr %i.dc, ptr %i.cv, align 8, !tbaa !172
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit64

bb.aa:                                            ; preds = %bb.y
  %i.dd = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.cv, i64 noundef 24, i64 noundef 24, i8 3)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit64

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit64: ; preds = %bb.z, %bb.aa
  %.0.i.i.i.i63 = phi ptr [ %i.cw, %bb.z ], [ %i.dd, %bb.aa ] ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i63, i64 8
  store i8 4, ptr %i.de, align 8, !tbaa !179
  %i.df = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i63, i64 9 ; 2 uses
  %i.dg = load i16, ptr %i.df, align 1
  %i.dh = and i16 %i.dg, -4096
  %i.di = or disjoint i16 %i.dh, 1344
  store i16 %i.di, ptr %i.df, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle22ConversionOperatorTypeE, i64 16), ptr %.0.i.i.i.i63, align 8, !tbaa !47
  %i.dj = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i63, i64 16
  store ptr %i.ct, ptr %i.dj, align 8, !tbaa !607
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.w, %.thread62, %bb.v, %bb.m, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit, %bb.l, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit64, %bb.x, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEES9_DpOT0_.exit, %bb.r, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit
  %.4 = phi ptr [ %.013, %bb.l ], [ null, %.thread62 ], [ null, %bb.x ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit ], [ null, %bb.w ], [ %.0.i.i.i.i28, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEES9_DpOT0_.exit ], [ null, %bb.r ], [ %.0.i.i.i.i63, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEES9_DpOT0_.exit64 ], [ null, %bb.m ], [ %.0.i.i.i.i27, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit ], [ null, %bb.n ], [ null, %bb.v ]
  ret ptr %.4
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE12parseAbiTagsEPNS0_4NodeE(ptr noundef nonnull align 8 dereferenceable(888) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !194    ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !195  ; 2 uses
  %.not.i13 = icmp eq ptr %i.b, %i.c
  br i1 %.not.i13, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 816
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %i.f = phi ptr [ %i.c, %.lr.ph ], [ %i.az, %bb.g ] ; 4 uses
  %i.g = phi ptr [ %i.b, %.lr.ph ], [ %i.ay, %bb.g ] ; 3 uses
  %.014 = phi ptr [ %1, %.lr.ph ], [ %.0.i.i.i.i, %bb.g ] ; 3 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !58
  %i.i = icmp eq i8 %i.h, 66
  br i1 %i.i, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 1 ; 4 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !194
  %.not.i.not.i.i = icmp eq ptr %i.f, %i.j
  br i1 %.not.i.not.i.i, label %.thread, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i.i: ; preds = %bb.c
  %i.k = load i8, ptr %i.j, align 1, !tbaa !58
  %i.l = add i8 %i.k, -58
  %or.cond30.i.i = icmp ult i8 %i.l, -10
  br i1 %or.cond30.i.i, label %.thread, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i.preheader

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i.preheader: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 2 ; 4 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !194
  %i.n = load i8, ptr %i.j, align 1, !tbaa !58
  %i.o = sext i8 %i.n to i64
  %i.p = add nsw i64 %i.o, -48                    ; 2 uses
  %.not.i15.not.i.i39 = icmp eq ptr %i.f, %i.m
  br i1 %.not.i15.not.i.i39, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit17thread-pre-split.i.i.lr.ph, !llvm.loop !35

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit17thread-pre-split.i.i.lr.ph: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i.preheader
  br label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit17thread-pre-split.i.i, !llvm.loop !35

_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit17thread-pre-split.i.i: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit17thread-pre-split.i.i.lr.ph, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i
  %i.q = phi i64 [ %i.p, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit17thread-pre-split.i.i.lr.ph ], [ %i.y, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i ] ; 2 uses
  %i.r = phi ptr [ %i.m, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit17thread-pre-split.i.i.lr.ph ], [ %i.u, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i ] ; 4 uses
  %.pr.i.i = load i8, ptr %i.r, align 1, !tbaa !58
  %i.s = add i8 %.pr.i.i, -48
  %or.cond.i.i = icmp ult i8 %i.s, 10
  br i1 %or.cond.i.i, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit.i

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit17thread-pre-split.i.i
  %i.t = mul i64 %i.q, 10
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 4 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !194
  %i.v = load i8, ptr %i.r, align 1, !tbaa !58
  %i.w = sext i8 %i.v to i64
  %i.x = add i64 %i.t, -48
  %i.y = add i64 %i.x, %i.w                       ; 2 uses
  %.not.i15.not.i.i = icmp eq ptr %i.f, %i.u
  br i1 %.not.i15.not.i.i, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit17thread-pre-split.i.i, !llvm.loop !35

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i, !llvm.loop !35

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i.preheader
  %.lcssa37 = phi ptr [ %i.u, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge ], [ %i.m, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i.preheader ]
  %.lcssa = phi i64 [ %i.y, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i_crit_edge ], [ %i.p, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i.i.preheader ]
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit.i, !llvm.loop !35

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit.i: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit17thread-pre-split.i.i, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i
  %i.z = phi ptr [ %.lcssa37, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i ], [ %i.r, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit17thread-pre-split.i.i ] ; 3 uses
  %i.aa = phi i64 [ %.lcssa, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE7consumeEv.exit.i._ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit_crit_edge.i ], [ %i.q, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit17thread-pre-split.i.i ] ; 4 uses
  %i.ab = ptrtoint ptr %i.f to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp ult i64 %i.ad, %i.aa
  br i1 %i.ae, label %.thread, label %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseBareSourceNameEv.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseBareSourceNameEv.exit: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store ptr %i.af, ptr %0, align 8, !tbaa !194
  %i.ag = icmp eq i64 %i.aa, 0
  br i1 %i.ag, label %.thread, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseBareSourceNameEv.exit
  %i.ah = load ptr, ptr %i.d, align 8, !tbaa !172 ; 2 uses
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = add i64 %i.ai, 40                       ; 2 uses
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !173
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.e, label %bb.f, !prof !174

bb.e:                                             ; preds = %bb.d
  %i.am = inttoptr i64 %i.aj to ptr
  store ptr %i.am, ptr %i.d, align 8, !tbaa !172
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.an = tail call noundef nonnull ptr @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EE12AllocateSlowEmmNS_5AlignE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, i64 noundef 40, i64 noundef 40, i8 3)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi ptr [ %i.ah, %bb.e ], [ %i.an, %bb.f ] ; 8 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.014, i64 9
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  store i8 9, ptr %i.aq, align 8, !tbaa !179
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 9 ; 2 uses
  %i.as = load i16, ptr %i.ar, align 1
  %i.at = and i16 %i.as, -4096
  %i.au = and i16 %i.ap, 4032
  %i.av = or disjoint i16 %i.at, %i.au
  store i16 %i.av, ptr %i.ar, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle10AbiTagAttrE, i64 16), ptr %.0.i.i.i.i, align 8, !tbaa !47
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16
  store ptr %.014, ptr %i.aw, align 8, !tbaa !611
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  store i64 %i.aa, ptr %i.ax, align 8, !tbaa !76
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 32
  store ptr %i.z, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !64
  %i.ay = load ptr, ptr %0, align 8, !tbaa !194   ; 2 uses
  %i.az = load ptr, ptr %i.a, align 8, !tbaa !195 ; 2 uses
  %.not.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.b, %bb.g, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseBareSourceNameEv.exit, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i.i, %bb.c, %bb.a
  %.2 = phi ptr [ %1, %bb.a ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE19parseBareSourceNameEv.exit ], [ %.0.i.i.i.i, %bb.g ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE20parsePositiveIntegerEPm.exit.i ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserIN12_GLOBAL__N_119CtorDtorSubstitutorENS2_13NodeAllocatorEE4lookEj.exit.i.i ], [ null, %bb.c ], [ %.014, %bb.b ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_119ManglingSubstitutorINS_19CtorDtorSubstitutorEE13trySubstituteEN4llvm9StringRefES4_(ptr noundef nonnull align 8 dereferenceable(1049) %0, ptr nofree readonly captures(none) %1, i64 %2, ptr nofree readonly captures(none) %3, i64 %4) unnamed_addr #0 align 2 {
bb.a:
  %.val6 = load ptr, ptr %0, align 8, !tbaa !194  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.a, align 8, !tbaa !195
  %i.b = ptrtoint ptr %.val5 to i64
  %i.c = ptrtoint ptr %.val6 to i64               ; 2 uses
  %i.d = sub i64 %i.b, %i.c
  %.not.i = icmp ult i64 %i.d, %2
  br i1 %.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread9, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %2, 0
  br i1 %i.e, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %.val6, ptr %1, i64 %2)
  %i.f = icmp eq i32 %bcmp.i, 0
  br i1 %i.f, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread9

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %bb.b, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !200  ; 3 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = sub i64 %i.c, %i.i                       ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 7 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !170  ; 2 uses
  %i.n = add i64 %i.j, %i.m                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !154
  %i.q = icmp ult i64 %i.p, %i.n
  br i1 %i.q, label %bb.c, label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i

bb.c:                                             ; preds = %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 920
  tail call void @_ZN4llvm15SmallVectorBaseImE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(152) %i.k, ptr noundef nonnull %i.r, i64 noundef %i.n, i64 noundef 1) #27
  %.pre8.pre.i.i.i = load i64, ptr %i.l, align 8, !tbaa !170
  br label %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i

_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i: ; preds = %bb.c, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %.pre8.i.i.i = phi i64 [ %i.m, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ], [ %.pre8.pre.i.i.i, %bb.c ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.val6, %i.h
  br i1 %.not.i.i.i.i, label %_ZN12_GLOBAL__N_119ManglingSubstitutorINS_19CtorDtorSubstitutorEE20appendUnchangedInputEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !153
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.pre8.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %i.h, i64 %i.j, i1 false)
  %.pre.i.i.i = load i64, ptr %i.l, align 8, !tbaa !170
  br label %_ZN12_GLOBAL__N_119ManglingSubstitutorINS_19CtorDtorSubstitutorEE20appendUnchangedInputEv.exit

_ZN12_GLOBAL__N_119ManglingSubstitutorINS_19CtorDtorSubstitutorEE20appendUnchangedInputEv.exit: ; preds = %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i, %bb.d
  %i.u = phi i64 [ %.pre8.i.i.i, %_ZN4llvm15SmallVectorImplIcE7reserveEm.exit.i.i.i ], [ %.pre.i.i.i, %bb.d ]
  %i.v = add i64 %i.u, %i.j                       ; 3 uses
  store i64 %i.v, ptr %i.l, align 8, !tbaa !170
  %.val.i = load ptr, ptr %0, align 8, !tbaa !194
  store ptr %.val.i, ptr %i.g, align 8, !tbaa !200
  %i.w = add i64 %i.v, %4                         ; 2 uses
  %i.x = load i64, ptr %i.o, align 8, !tbaa !154
  %i.y = icmp ult i64 %i.x, %i.w
end_hunk_5
