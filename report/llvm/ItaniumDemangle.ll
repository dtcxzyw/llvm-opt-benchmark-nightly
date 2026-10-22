Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ItaniumDemangle?download=true
inline.NumInlined: 2615
inline.NumDeleted: 552
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4llvm16itanium_demangle24ForwardTemplateReference15hasFunctionSlowERNS0_12OutputBufferE:bb.a
  %i.i = trunc nuw nsw i16 %i.h to i8
  %i.j = and i8 %i.i, 3                           ; 2 uses
  %.not.i = icmp eq i8 %i.j, 2
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i8 %i.j, 0
  br label %_ZNK4llvm16itanium_demangle4Node11hasFunctionERNS0_12OutputBufferE.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(11) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %1) #19, !inline_history !11
  br label %_ZNK4llvm16itanium_demangle4Node11hasFunctionERNS0_12OutputBufferE.exit

_ZNK4llvm16itanium_demangle4Node11hasFunctionERNS0_12OutputBufferE.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi i1 [ %i.k, %bb.c ], [ %i.o, %bb.d ]
  store i8 0, ptr %i.a, align 8, !tbaa !129
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZNK4llvm16itanium_demangle4Node11hasFunctionERNS0_12OutputBufferE.exit
  %.0 = phi i1 [ %.0.i, %_ZNK4llvm16itanium_demangle4Node11hasFunctionERNS0_12OutputBufferE.exit ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK4llvm16itanium_demangle24ForwardTemplateReference13getSyntaxNodeERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !150, !range !113, !noundef !114
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !129
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125  ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(11) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %1) #19
  store i8 0, ptr %i.a, align 8, !tbaa !129
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.i, %bb.b ], [ %0, %bb.a ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle24ForwardTemplateReferenceD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle24ForwardTemplateReference9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !150, !range !113, !noundef !114
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !129
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125
  %i.f = load ptr, ptr %1, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.e) #19
  store i8 0, ptr %i.a, align 8, !tbaa !129
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle24ForwardTemplateReference10printRightERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !150, !range !113, !noundef !114
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !129
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !125
  %i.f = load ptr, ptr %1, align 8, !tbaa !23
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.e) #19
  store i8 0, ptr %i.a, align 8, !tbaa !129
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %"class.std::basic_string_view", align 8 ; 7 uses
  %2 = alloca %"class.llvm::itanium_demangle::NodeArray", align 8 ; 8 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = load ptr, ptr %0, align 16, !tbaa !42    ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43   ; 10 uses
  %i.g = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = icmp ult i64 %i.i, 2
  br i1 %i.j, label %.critedge83, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %bb.a
  %i.k = load i16, ptr %i.d, align 1
  %i.l = icmp ne i16 %i.k, 29543
  %i.m = zext i1 %i.l to i32
  %i.n = icmp eq i32 %i.m, 0                      ; 2 uses
  br i1 %i.n, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit, label %.preheader.i

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  store ptr %i.o, ptr %0, align 16, !tbaa !42
  %.pre474.a = ptrtoint ptr %i.o to i64
  %.pre475 = sub i64 %i.g, %.pre474.a             ; 2 uses
  %i.p = icmp ult i64 %.pre475, 2
  br i1 %i.p, label %.critedge83, label %.preheader.i

.preheader.i:                                     ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.q = phi i8 [ 1, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ] ; 2 uses
  %i.r = phi ptr [ %i.o, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ] ; 33 uses
  %.pre-phi476596 = phi i64 [ %.pre475, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ %i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i ]
  %i.s = load i8, ptr %i.r, align 1, !tbaa !24    ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 1 ; 8 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread24.i, %.preheader.i
  %.031.i = phi i64 [ 62, %.preheader.i ], [ %i.af, %.thread24.i ] ; 3 uses
  %.01030.i = phi i64 [ 0, %.preheader.i ], [ %i.ae, %.thread24.i ] ; 3 uses
  %i.u = add i64 %.01030.i, %.031.i
  %i.v = lshr i64 %i.u, 1                         ; 5 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E3OpsE, i64 %i.v ; 2 uses
  %.val15.i = load i8, ptr %i.w, align 16, !tbaa !24 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 1
  %.val16.i = load i8, ptr %i.x, align 1
  %i.y = icmp slt i8 %.val15.i, %i.s
  br i1 %i.y, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.z = add nuw nsw i64 %i.v, 1
  br label %.thread24.i

bb.c:                                             ; preds = %bb.b
  %i.aa = icmp eq i8 %.val15.i, %i.s
  br i1 %i.aa, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i, label %.thread24.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i: ; preds = %bb.c
  %i.ab = load i8, ptr %i.t, align 1, !tbaa !24
  %i.ac = icmp slt i8 %.val16.i, %i.ab
  %cond.fr19.i = freeze i1 %i.ac                  ; 2 uses
  %i.ad = add nuw nsw i64 %i.v, 1
  %spec.select.i = select i1 %cond.fr19.i, i64 %i.ad, i64 %.01030.i
  %spec.select29.i = select i1 %cond.fr19.i, i64 %.031.i, i64 %i.v
  br label %.thread24.i

.thread24.i:                                      ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i, %bb.c, %.thread.i
  %i.ae = phi i64 [ %.01030.i, %bb.c ], [ %spec.select.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i ], [ %i.z, %.thread.i ] ; 4 uses
  %i.af = phi i64 [ %i.v, %bb.c ], [ %spec.select29.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i ], [ %.031.i, %.thread.i ] ; 2 uses
  %.not.i = icmp eq i64 %i.af, %i.ae
  br i1 %.not.i, label %bb.d, label %bb.b, !llvm.loop !12

bb.d:                                             ; preds = %.thread24.i
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E3OpsE, i64 %i.ae ; 17 uses
  %.val17.i = load i8, ptr %i.ag, align 16, !tbaa !24
  %i.ah = icmp eq i8 %.val17.i, %i.s
  br i1 %i.ah, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoneEPKc.exit.i, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoneEPKc.exit.i: ; preds = %bb.d
  %i.ai = getelementptr i8, ptr %i.ag, i64 1
  %.val18.i = load i8, ptr %i.ai, align 1
  %i.aj = load i8, ptr %i.t, align 1, !tbaa !24
  %.not28.i = icmp eq i8 %.val18.i, %i.aj
  br i1 %.not28.i, label %bb.e, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit

bb.e:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoneEPKc.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 4 uses
  store ptr %i.ak, ptr %0, align 16, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #19
  %i.al = getelementptr i8, ptr %i.ag, i64 2
  %.val113 = load i8, ptr %i.al, align 2, !tbaa !363
  %i.am = getelementptr i8, ptr %i.ag, i64 8
  %.val114 = load ptr, ptr %i.am, align 8, !tbaa !158 ; 4 uses
  %i.an = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val114) #19 ; 3 uses
  %i.ao = and i64 %i.ae, 1152921504606846975      ; 4 uses
  %i.ap = shl nuw i64 1, %i.ao                    ; 2 uses
  %i.aq = and i64 %i.ap, 414331165718019679
  %.not = icmp eq i64 %i.aq, 0
  br i1 %.not, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %.val114, i64 8 ; 3 uses
  %i.as = add i64 %i.an, -8                       ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit, label %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i

_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i: ; preds = %bb.f
  %i.au = load i8, ptr %i.ar, align 1, !tbaa !24
  %i.av = icmp eq i8 %i.au, 32
  br i1 %i.av, label %bb.g, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit

bb.g:                                             ; preds = %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %.val114, i64 9
  %i.ax = add i64 %i.an, -9
  br label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit: ; preds = %bb.e, %bb.f, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i, %bb.g
  %.sroa.7.0.i = phi ptr [ %i.aw, %bb.g ], [ %i.ar, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i ], [ %.val114, %bb.e ], [ %i.ar, %bb.f ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.ax, %bb.g ], [ %i.as, %_ZN4llvm16itanium_demangle11starts_withESt17basic_string_viewIcSt11char_traitsIcEEc.exit.i ], [ %i.an, %bb.e ], [ 0, %bb.f ] ; 5 uses
  store i64 %.sroa.0.0.i, ptr %1, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %.sroa.7.0.i, ptr %i.ay, align 8
  switch i8 %.val113, label %bb.dj [
    i8 2, label %bb.h
    i8 0, label %bb.k
    i8 1, label %bb.o
    i8 3, label %bb.u
    i8 4, label %bb.x
    i8 5, label %bb.aa
    i8 6, label %bb.bc
    i8 7, label %bb.bg
    i8 8, label %bb.bw
    i8 9, label %bb.cv
    i8 11, label %bb.cz
    i8 12, label %bb.dc
    i8 10, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit
  ]

bb.h:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.az = getelementptr i8, ptr %i.ag, i64 3
  %.val128 = load i8, ptr %i.az, align 1
  %i.ba = lshr i8 %.val128, 1
  %i.bb = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0), !inline_history !353 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0), !inline_history !353 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_10BinaryExprEJRPNS0_4NodeERSt17basic_string_viewIcSt11char_traitsIcEESB_RNS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 16 dereferenceable(4928) %0, ptr nonnull %i.bb, i64 %.sroa.0.0.i, ptr nonnull %.sroa.7.0.i, ptr nonnull %i.bd, i8 %i.ba), !inline_history !353
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.k:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.bg = getelementptr i8, ptr %i.ag, i64 3
  %.val127 = load i8, ptr %i.bg, align 1
  %i.bh = lshr i8 %.val127, 1
  %i.bi = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0), !inline_history !354 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4912 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 16, !tbaa !67 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !79 ; 2 uses
  %i.bo = add i64 %i.bn, -4032
  %i.bp = icmp ult i64 %i.bo, -4080
  br i1 %i.bp, label %bb.m, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSE_4PrecEEEESF_DpOT0_.exit

bb.m:                                             ; preds = %bb.l
  %i.bq = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #22 ; 5 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.n, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i293

bb.n:                                             ; preds = %bb.m
  tail call void @_ZSt9terminatev() #21
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i293: ; preds = %bb.m
  store ptr %i.bl, ptr %i.bq, align 8, !tbaa !78
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i64 0, ptr %i.bs, align 8, !tbaa !79
  store ptr %i.bq, ptr %i.bk, align 16, !tbaa !67
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSE_4PrecEEEESF_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSE_4PrecEEEESF_DpOT0_.exit: ; preds = %bb.l, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i293
  %i.bt = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i293 ], [ %i.bn, %bb.l ] ; 2 uses
  %i.bu = phi ptr [ %i.bq, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i293 ], [ %i.bl, %bb.l ] ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = add nsw i64 %i.bt, 48
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !79
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.by = getelementptr inbounds i8, ptr %i.bx, i64 %i.bt ; 7 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i8 66, ptr %i.bz, align 8, !tbaa !84
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 9 ; 2 uses
  %i.cb = load i16, ptr %i.ca, align 1
  %i.cc = and i16 %i.cb, -4096
  %i.cd = zext nneg i8 %i.bh to i16
  %i.ce = or disjoint i16 %i.cc, %i.cd
  %i.cf = or i16 %i.ce, 1344
  store i16 %i.cf, ptr %i.ca, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle10PrefixExprE, i64 16), ptr %i.by, align 8, !tbaa !23
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  store i64 %.sroa.0.0.i, ptr %i.cg, align 8, !tbaa !88
  %.sroa.2.0..sroa_idx.i.i.i292 = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr %.sroa.7.0.i, ptr %.sroa.2.0..sroa_idx.i.i.i292, align 8, !tbaa !89
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  store ptr %i.bi, ptr %i.ch, align 8, !tbaa !160
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.o:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %.not.i198 = icmp eq ptr %i.ak, %i.f
  br i1 %.not.i198, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = load i8, ptr %i.ak, align 1, !tbaa !24
  %i.cj = icmp eq i8 %i.ci, 95
  br i1 %i.cj, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.r, i64 3
  store ptr %i.ck, ptr %0, align 16, !tbaa !42
  %i.cl = getelementptr i8, ptr %i.ag, i64 3
  %.val126 = load i8, ptr %i.cl, align 1
  %i.cm = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0), !inline_history !354 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.co = lshr i8 %.val126, 1
  %i.cp = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSE_4PrecEEEESF_DpOT0_(ptr noundef nonnull align 16 dereferenceable(4928) %0, i64 %.sroa.0.0.i, ptr nonnull %.sroa.7.0.i, ptr nonnull %i.cm, i8 %i.co), !inline_history !354
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.s:                                             ; preds = %bb.p, %bb.o
  %i.cq = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cs = getelementptr i8, ptr %i.ag, i64 3
  %.val125 = load i8, ptr %i.cs, align 1
  %i.ct = lshr i8 %.val125, 1
  %i.cu = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_11PostfixExprEJRPNS0_4NodeERSt17basic_string_viewIcSt11char_traitsIcEENS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 16 dereferenceable(4928) %0, ptr nonnull %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 %i.ct)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.u:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.cv = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cx = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.cy = icmp eq ptr %i.cx, null
  br i1 %i.cy, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cz = getelementptr i8, ptr %i.ag, i64 3
  %.val124 = load i8, ptr %i.cz, align 1
  %i.da = lshr i8 %.val124, 1
  %i.db = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_18ArraySubscriptExprEJRPNS0_4NodeESB_NS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 16 dereferenceable(4928) %0, ptr nonnull %i.cv, ptr nonnull %i.cx, i8 %i.da)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.x:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.dc = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dg = getelementptr i8, ptr %i.ag, i64 3
  %.val123 = load i8, ptr %i.dg, align 1
  %i.dh = lshr i8 %.val123, 1
  %i.di = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_10MemberExprEJRPNS0_4NodeERSt17basic_string_viewIcSt11char_traitsIcEESB_NS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 16 dereferenceable(4928) %0, ptr nonnull %i.dc, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.de, i8 %i.dh)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.aa:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 7 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !45
  %i.dm = load ptr, ptr %i.dj, align 16, !tbaa !44
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = ashr exact i64 %i.dp, 3
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.ab

end_hunk_0
begin_hunk_1_@_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv:bb.a

bb.ah:                                            ; preds = %bb.ag
  tail call void @abort() #21
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.ek = icmp sgt i64 %i.ee, 8
  br i1 %i.ek, label %bb.aj, label %bb.ak, !prof !126

bb.aj:                                            ; preds = %bb.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ei, ptr align 8 %i.eb, i64 %i.ee, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.el = icmp eq i64 %i.ee, 8
  br i1 %i.el, label %bb.al, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

bb.al:                                            ; preds = %bb.ak
  %i.em = load ptr, ptr %i.eb, align 8, !tbaa !48
  store ptr %i.em, ptr %i.ei, align 8, !tbaa !48
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i: ; preds = %bb.al, %bb.ak, %bb.aj
  store ptr %i.ei, ptr %i.dj, align 16, !tbaa !44
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i

bb.am:                                            ; preds = %bb.af
  %i.en = tail call ptr @realloc(ptr noundef %i.eb, i64 noundef %i.eh) #20 ; 3 uses
  store ptr %i.en, ptr %i.dj, align 16, !tbaa !44
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.an, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i

bb.an:                                            ; preds = %bb.am
  tail call void @abort() #21
  unreachable

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i: ; preds = %bb.am, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i
  %i.ep = phi ptr [ %i.en, %bb.am ], [ %i.ei, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ee
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.ef
  store ptr %i.er, ptr %i.dr, align 16, !tbaa !46
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit: ; preds = %bb.ae, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i
  %i.es = phi ptr [ %i.eq, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i ], [ %i.dy, %bb.ae ] ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  store ptr %i.et, ptr %i.dk, align 8, !tbaa !45
  store ptr %i.dx, ptr %i.es, align 8, !tbaa !48
  %.pre470.a = load ptr, ptr %0, align 16, !tbaa !42
  %.pre471 = load ptr, ptr %i.e, align 8, !tbaa !43
  br label %bb.ab, !llvm.loop !355

bb.ao:                                            ; preds = %bb.ac
  %i.eu = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store ptr %i.eu, ptr %0, align 16, !tbaa !42
  %i.ev = tail call fastcc { ptr, i64 } @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E20popTrailingNodeArrayEm(ptr noundef nonnull align 16 dereferenceable(4928) %0, i64 noundef %i.dq) ; 2 uses
  %i.ew = extractvalue { ptr, i64 } %i.ev, 0
  %i.ex = extractvalue { ptr, i64 } %i.ev, 1
  %i.ey = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseTypeEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.ez = icmp eq ptr %i.ey, null
  br i1 %i.ez, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fa = load ptr, ptr %0, align 16, !tbaa !42   ; 6 uses
  %i.fb = load ptr, ptr %i.e, align 8, !tbaa !43  ; 3 uses
  %i.fc = ptrtoint ptr %i.fb to i64
  %i.fd = ptrtoint ptr %i.fa to i64
  %i.fe = sub i64 %i.fc, %i.fd
  %i.ff = icmp ult i64 %i.fe, 2
  br i1 %i.ff, label %.split431, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fg = load i16, ptr %i.fa, align 1
  %i.fh = icmp ne i16 %i.fg, 26992
  %i.fi = zext i1 %i.fh to i32
  %i.fj = icmp eq i32 %i.fi, 0
  br i1 %i.fj, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit637, label %.split431

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit637: ; preds = %bb.aq
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fa, i64 2 ; 2 uses
  store ptr %i.fk, ptr %0, align 16, !tbaa !42
  %i.fl = load ptr, ptr %i.dk, align 8, !tbaa !45
  %i.fm = load ptr, ptr %i.dj, align 16, !tbaa !44
  %i.fn = ptrtoint ptr %i.fl to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  br label %.split431.us.a

.split431.us.a:                                   ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit637, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit214.us
  %i.fq = phi ptr [ %i.fb, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit637 ], [ %.pre761, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit214.us ]
  %i.fr = phi ptr [ %i.fk, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit637 ], [ %.pre760.a, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit214.us ] ; 3 uses
  %.not.i209.us = icmp eq ptr %i.fr, %i.fq
  br i1 %.not.i209.us, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %.split431.us.a
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !24
  %i.ft = icmp eq i8 %i.fs, 69
  br i1 %i.ft, label %.split433.us, label %bb.as

bb.as:                                            ; preds = %bb.ar, %.split431.us.a
  %i.fu = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %.not76.us = icmp eq ptr %i.fu, null
  br i1 %.not76.us, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fv = load ptr, ptr %i.dk, align 8, !tbaa !45 ; 3 uses
  %i.fw = load ptr, ptr %i.dr, align 16, !tbaa !46
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %bb.au, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit214.us

bb.au:                                            ; preds = %bb.at
  %i.fy = load ptr, ptr %i.dj, align 16, !tbaa !44 ; 5 uses
  %i.fz = ptrtoint ptr %i.fv to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga                    ; 6 uses
  %i.gc = ashr exact i64 %i.gb, 2
  %i.gd = icmp eq ptr %i.fy, %i.ds
  %i.ge = shl i64 %i.gb, 1                        ; 2 uses
  br i1 %i.gd, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gf = tail call ptr @realloc(ptr noundef %i.fy, i64 noundef %i.ge) #20 ; 3 uses
  store ptr %i.gf, ptr %i.dj, align 16, !tbaa !44
  %i.gg = icmp eq ptr %i.gf, null
  br i1 %i.gg, label %.split436.us, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i212.us

bb.aw:                                            ; preds = %bb.au
  %i.gh = tail call noalias ptr @malloc(i64 noundef %i.ge) #22 ; 5 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %.split438.us, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gj = icmp sgt i64 %i.gb, 8
  br i1 %i.gj, label %bb.ba, label %bb.ay, !prof !126

bb.ay:                                            ; preds = %bb.ax
  %i.gk = icmp eq i64 %i.gb, 8
  br i1 %i.gk, label %bb.az, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i213.us

bb.az:                                            ; preds = %bb.ay
  %i.gl = load ptr, ptr %i.fy, align 8, !tbaa !48
  store ptr %i.gl, ptr %i.gh, align 8, !tbaa !48
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i213.us

bb.ba:                                            ; preds = %bb.ax
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.gh, ptr align 8 %i.fy, i64 %i.gb, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i213.us

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i213.us: ; preds = %bb.ba, %bb.az, %bb.ay
  store ptr %i.gh, ptr %i.dj, align 16, !tbaa !44
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i212.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i212.us: ; preds = %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i213.us, %bb.av
  %i.gm = phi ptr [ %i.gf, %bb.av ], [ %i.gh, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i213.us ] ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %i.gb
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gm, i64 %i.gc
  store ptr %i.go, ptr %i.dr, align 16, !tbaa !46
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit214.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit214.us: ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i212.us, %bb.at
  %i.gp = phi ptr [ %i.gn, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i212.us ], [ %i.fv, %bb.at ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  store ptr %i.gq, ptr %i.dk, align 8, !tbaa !45
  store ptr %i.fu, ptr %i.gp, align 8, !tbaa !48
  %.pre760.a = load ptr, ptr %0, align 16, !tbaa !42
  %.pre761 = load ptr, ptr %i.e, align 8, !tbaa !43
  br label %.split431.us.a, !llvm.loop !356

.split431:                                        ; preds = %bb.ap, %bb.aq
  %.not.i209 = icmp eq ptr %i.fa, %i.fb
  br i1 %.not.i209, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bb

bb.bb:                                            ; preds = %.split431
  %i.gr = load ptr, ptr %i.dk, align 8, !tbaa !45
  %i.gs = ptrtoint ptr %i.gr to i64
  %i.gt = load ptr, ptr %i.dj, align 16, !tbaa !44
  %i.gu = ptrtoint ptr %i.gt to i64
  %i.gv = sub i64 %i.gs, %i.gu
  %i.gw = load i8, ptr %i.fa, align 1, !tbaa !24
  %i.gx = icmp eq i8 %i.gw, 69
  br i1 %i.gx, label %.split433.us, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

.split438.us:                                     ; preds = %bb.aw
  tail call void @abort() #21
  unreachable

.split436.us:                                     ; preds = %bb.av
  tail call void @abort() #21
  unreachable

.split433.us:                                     ; preds = %bb.ar, %bb.bb
  %.in699 = phi i64 [ %i.gv, %bb.bb ], [ %i.fp, %bb.ar ]
  %.us-phi434 = phi ptr [ %i.fa, %bb.bb ], [ %i.fr, %bb.ar ]
  %i.gy = ashr exact i64 %.in699, 3
  %i.gz = getelementptr inbounds nuw i8, ptr %.us-phi434, i64 1
  store ptr %i.gz, ptr %0, align 16, !tbaa !42
  %i.ha = tail call fastcc { ptr, i64 } @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E20popTrailingNodeArrayEm(ptr noundef nonnull align 16 dereferenceable(4928) %0, i64 noundef %i.gy) ; 2 uses
  %i.hb = extractvalue { ptr, i64 } %i.ha, 0
  %i.hc = extractvalue { ptr, i64 } %i.ha, 1
  %i.hd = getelementptr i8, ptr %i.ag, i64 3
  %.val140 = load i8, ptr %i.hd, align 1
  %3 = lshr i64 5189413545564999712, %i.ao
  %4 = trunc i64 %3 to i8
  %i.he = and i8 %4, 1
  %i.hf = lshr i8 %.val140, 1
  %i.hg = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_7NewExprEJRNS0_9NodeArrayERPNS0_4NodeESA_RbbNSB_4PrecEEEESC_DpOT0_(ptr noundef nonnull align 16 dereferenceable(4928) %0, ptr %i.ew, i64 %i.ex, ptr nonnull %i.ey, ptr %i.hb, i64 %i.hc, i8 %i.q, i8 %i.he, i8 %i.hf)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.bc:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.hh = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.hi = icmp eq ptr %i.hh, null
  br i1 %i.hi, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hj = getelementptr i8, ptr %i.ag, i64 3
  %.val139 = load i8, ptr %i.hj, align 1
  %5 = lshr i64 5189413545564999712, %i.ao
  %6 = trunc i64 %5 to i8
  %i.hk = and i8 %6, 1
  %i.hl = lshr i8 %.val139, 1
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 4912 ; 2 uses
  %i.hn = load ptr, ptr %i.hm, align 16, !tbaa !67 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !79 ; 2 uses
  %i.hq = add i64 %i.hp, -4048
  %i.hr = icmp ult i64 %i.hq, -4080
  br i1 %i.hr, label %bb.be, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS9_4PrecEEEESA_DpOT0_.exit

bb.be:                                            ; preds = %bb.bd
  %i.hs = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #22 ; 5 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.bf, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.bf:                                            ; preds = %bb.be
  tail call void @_ZSt9terminatev() #21
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.be
  store ptr %i.hn, ptr %i.hs, align 8, !tbaa !78
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  store i64 0, ptr %i.hu, align 8, !tbaa !79
  store ptr %i.hs, ptr %i.hm, align 16, !tbaa !67
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS9_4PrecEEEESA_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS9_4PrecEEEESA_DpOT0_.exit: ; preds = %bb.bd, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i
  %i.hv = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.hp, %bb.bd ] ; 2 uses
  %i.hw = phi ptr [ %i.hs, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.hn, %bb.bd ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  %i.hy = add nsw i64 %i.hv, 32
  store i64 %i.hy, ptr %i.hx, align 8, !tbaa !79
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %i.ia = getelementptr inbounds i8, ptr %i.hz, i64 %i.hv ; 7 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  store i8 65, ptr %i.ib, align 8, !tbaa !84
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 9 ; 2 uses
  %i.id = load i16, ptr %i.ic, align 1
  %i.ie = and i16 %i.id, -4096
  %i.if = zext nneg i8 %i.hl to i16
  %i.ig = or disjoint i16 %i.ie, %i.if
  %i.ih = or i16 %i.ig, 1344
  store i16 %i.ih, ptr %i.ic, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle10DeleteExprE, i64 16), ptr %i.ia, align 8, !tbaa !23
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  store ptr %i.hh, ptr %i.ii, align 8, !tbaa !162
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  store i8 %i.q, ptr %i.ij, align 8, !tbaa !163
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 25
  store i8 %i.hk, ptr %i.ik, align 1, !tbaa !164
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.bg:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.il = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !45
  %i.iq = load ptr, ptr %i.in, align 16, !tbaa !44
  %i.ir = ptrtoint ptr %i.ip to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = ashr exact i64 %i.it, 3
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.bi

bb.bi:                                            ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit220, %bb.bh
  %i.ix = load ptr, ptr %0, align 16, !tbaa !42   ; 3 uses
  %i.iy = load ptr, ptr %i.e, align 8, !tbaa !43
  %.not.i215 = icmp eq ptr %i.ix, %i.iy
  br i1 %.not.i215, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.iz = load i8, ptr %i.ix, align 1, !tbaa !24
  %i.ja = icmp eq i8 %i.iz, 69
  br i1 %i.ja, label %bb.bv, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.jb = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %.not75 = icmp eq ptr %i.jb, null
  br i1 %.not75, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jc = load ptr, ptr %i.io, align 8, !tbaa !45 ; 3 uses
  %i.jd = load ptr, ptr %i.iv, align 16, !tbaa !46
  %i.je = icmp eq ptr %i.jc, %i.jd
  br i1 %i.je, label %bb.bm, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit220

bb.bm:                                            ; preds = %bb.bl
  %i.jf = load ptr, ptr %i.in, align 16, !tbaa !44 ; 5 uses
  %i.jg = ptrtoint ptr %i.jc to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh                    ; 6 uses
  %i.jj = ashr exact i64 %i.ji, 2
  %i.jk = icmp eq ptr %i.jf, %i.iw
  %i.jl = shl i64 %i.ji, 1                        ; 2 uses
  br i1 %i.jk, label %bb.bn, label %bb.bt

bb.bn:                                            ; preds = %bb.bm
  %i.jm = tail call noalias ptr @malloc(i64 noundef %i.jl) #22 ; 5 uses
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  tail call void @abort() #21
  unreachable

bb.bp:                                            ; preds = %bb.bn
  %i.jo = icmp sgt i64 %i.ji, 8
  br i1 %i.jo, label %bb.bq, label %bb.br, !prof !126

bb.bq:                                            ; preds = %bb.bp
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.jm, ptr align 8 %i.jf, i64 %i.ji, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i219

bb.br:                                            ; preds = %bb.bp
  %i.jp = icmp eq i64 %i.ji, 8
  br i1 %i.jp, label %bb.bs, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i219

bb.bs:                                            ; preds = %bb.br
  %i.jq = load ptr, ptr %i.jf, align 8, !tbaa !48
  store ptr %i.jq, ptr %i.jm, align 8, !tbaa !48
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i219

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i219: ; preds = %bb.bs, %bb.br, %bb.bq
  store ptr %i.jm, ptr %i.in, align 16, !tbaa !44
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i218

bb.bt:                                            ; preds = %bb.bm
  %i.jr = tail call ptr @realloc(ptr noundef %i.jf, i64 noundef %i.jl) #20 ; 3 uses
  store ptr %i.jr, ptr %i.in, align 16, !tbaa !44
  %i.js = icmp eq ptr %i.jr, null
  br i1 %i.js, label %bb.bu, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i218

bb.bu:                                            ; preds = %bb.bt
  tail call void @abort() #21
  unreachable

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i218: ; preds = %bb.bt, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i219
  %i.jt = phi ptr [ %i.jr, %bb.bt ], [ %i.jm, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i219 ] ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.ji
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.jt, i64 %i.jj
  store ptr %i.jv, ptr %i.iv, align 16, !tbaa !46
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit220

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit220: ; preds = %bb.bl, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i218
  %i.jw = phi ptr [ %i.ju, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i218 ], [ %i.jc, %bb.bl ] ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  store ptr %i.jx, ptr %i.io, align 8, !tbaa !45
  store ptr %i.jb, ptr %i.jw, align 8, !tbaa !48
  br label %bb.bi, !llvm.loop !357

bb.bv:                                            ; preds = %bb.bj
  %i.jy = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  store ptr %i.jy, ptr %0, align 16, !tbaa !42
  %i.jz = tail call fastcc { ptr, i64 } @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E20popTrailingNodeArrayEm(ptr noundef nonnull align 16 dereferenceable(4928) %0, i64 noundef %i.iu) ; 2 uses
  %i.ka = extractvalue { ptr, i64 } %i.jz, 0
  %i.kb = extractvalue { ptr, i64 } %i.jz, 1
  %i.kc = getelementptr i8, ptr %i.ag, i64 3
  %.val138 = load i8, ptr %i.kc, align 1
  %7 = lshr i64 5189413545564999712, %i.ao
  %8 = trunc i64 %7 to i8
  %i.kd = and i8 %8, 1
  %i.ke = lshr i8 %.val138, 1
  %i.kf = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_8CallExprEJRPNS0_4NodeENS0_9NodeArrayEbNS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 16 dereferenceable(4928) %0, ptr nonnull %i.il, ptr %i.ka, i64 %i.kb, i8 %i.kd, i8 %i.ke)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.bw:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.kh = load i8, ptr %i.kg, align 8, !tbaa !129, !range !113, !noundef !114
  store i8 0, ptr %i.kg, align 8, !tbaa !129
  %i.ki = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseTypeEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  store i8 %i.kh, ptr %i.kg, align 8, !tbaa !129
  %i.kj = icmp eq ptr %i.ki, null
  br i1 %i.kj, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 7 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !45
  %i.kn = load ptr, ptr %i.kk, align 16, !tbaa !44
  %i.ko = ptrtoint ptr %i.km to i64
  %i.kp = ptrtoint ptr %i.kn to i64
  %i.kq = sub i64 %i.ko, %i.kp
  %i.kr = ashr exact i64 %i.kq, 3                 ; 2 uses
  %i.ks = load ptr, ptr %0, align 16, !tbaa !42   ; 4 uses
  %i.kt = load ptr, ptr %i.e, align 8, !tbaa !43  ; 2 uses
  %.not.i221 = icmp eq ptr %i.ks, %i.kt
  br i1 %.not.i221, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.thread, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ku = load i8, ptr %i.ks, align 1, !tbaa !24  ; 2 uses
  %i.kv = icmp eq i8 %i.ku, 95                    ; 2 uses
  br i1 %i.kv, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.us.preheader, label %bb.cj

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.us.preheader: ; preds = %bb.by
  %i.kw = getelementptr inbounds nuw i8, ptr %i.ks, i64 1 ; 2 uses
  store ptr %i.kw, ptr %0, align 16, !tbaa !42
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.us

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.us: ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.us.preheader, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit229.us
  %i.kz = phi ptr [ %i.kt, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.us.preheader ], [ %.pre469, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit229.us ]
  %i.la = phi ptr [ %i.kw, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.us.preheader ], [ %.pre, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit229.us ] ; 3 uses
  %.not.i224.us = icmp eq ptr %i.la, %i.kz
  br i1 %.not.i224.us, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.us
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !24
  %i.lc = icmp eq i8 %i.lb, 69
  br i1 %i.lc, label %.split.us, label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.us
  %i.ld = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.le = icmp eq ptr %i.ld, null
  br i1 %i.le, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.lf = load ptr, ptr %i.kl, align 8, !tbaa !45 ; 3 uses
  %i.lg = load ptr, ptr %i.kx, align 16, !tbaa !46
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %bb.cc, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit229.us

bb.cc:                                            ; preds = %bb.cb
  %i.li = load ptr, ptr %i.kk, align 16, !tbaa !44 ; 5 uses
  %i.lj = ptrtoint ptr %i.lf to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk                    ; 6 uses
  %i.lm = ashr exact i64 %i.ll, 2
  %i.ln = icmp eq ptr %i.li, %i.ky
  %i.lo = shl i64 %i.ll, 1                        ; 2 uses
  br i1 %i.ln, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.lp = tail call ptr @realloc(ptr noundef %i.li, i64 noundef %i.lo) #20 ; 3 uses
  store ptr %i.lp, ptr %i.kk, align 16, !tbaa !44
  %i.lq = icmp eq ptr %i.lp, null
  br i1 %i.lq, label %.split428.us, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i227.us

bb.ce:                                            ; preds = %bb.cc
  %i.lr = tail call noalias ptr @malloc(i64 noundef %i.lo) #22 ; 5 uses
  %i.ls = icmp eq ptr %i.lr, null
  br i1 %i.ls, label %.split430.us, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lt = icmp sgt i64 %i.ll, 8
  br i1 %i.lt, label %bb.ci, label %bb.cg, !prof !126

bb.cg:                                            ; preds = %bb.cf
  %i.lu = icmp eq i64 %i.ll, 8
  br i1 %i.lu, label %bb.ch, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i228.us

bb.ch:                                            ; preds = %bb.cg
  %i.lv = load ptr, ptr %i.li, align 8, !tbaa !48
  store ptr %i.lv, ptr %i.lr, align 8, !tbaa !48
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i228.us

bb.ci:                                            ; preds = %bb.cf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lr, ptr align 8 %i.li, i64 %i.ll, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i228.us

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i228.us: ; preds = %bb.ci, %bb.ch, %bb.cg
  store ptr %i.lr, ptr %i.kk, align 16, !tbaa !44
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i227.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i227.us: ; preds = %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i228.us, %bb.cd
  %i.lw = phi ptr [ %i.lp, %bb.cd ], [ %i.lr, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i228.us ] ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 %i.ll
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.lw, i64 %i.lm
  store ptr %i.ly, ptr %i.kx, align 16, !tbaa !46
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit229.us

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit229.us: ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i227.us, %bb.cb
  %i.lz = phi ptr [ %i.lx, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i227.us ], [ %i.lf, %bb.cb ] ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  store ptr %i.ma, ptr %i.kl, align 8, !tbaa !45
  store ptr %i.ld, ptr %i.lz, align 8, !tbaa !48
  %.pre = load ptr, ptr %0, align 16, !tbaa !42
  %.pre469 = load ptr, ptr %i.e, align 8, !tbaa !43
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.us

bb.cj:                                            ; preds = %bb.by
  %i.mb = icmp eq i8 %i.ku, 69
  br i1 %i.mb, label %.split.us, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.thread

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.thread: ; preds = %bb.bx, %bb.cj
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.me = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.mf = icmp eq ptr %i.me, null
  br i1 %i.mf, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.ck

bb.ck:                                            ; preds = %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.thread
  %i.mg = load ptr, ptr %i.kl, align 8, !tbaa !45 ; 3 uses
  %i.mh = load ptr, ptr %i.mc, align 16, !tbaa !46
  %i.mi = icmp eq ptr %i.mg, %i.mh
  br i1 %i.mi, label %bb.cl, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit229

bb.cl:                                            ; preds = %bb.ck
  %i.mj = load ptr, ptr %i.kk, align 16, !tbaa !44 ; 5 uses
  %i.mk = ptrtoint ptr %i.mg to i64
  %i.ml = ptrtoint ptr %i.mj to i64
  %i.mm = sub i64 %i.mk, %i.ml                    ; 6 uses
  %i.mn = ashr exact i64 %i.mm, 2
  %i.mo = icmp eq ptr %i.mj, %i.md
  %i.mp = shl i64 %i.mm, 1                        ; 2 uses
  br i1 %i.mo, label %bb.cm, label %bb.cr

bb.cm:                                            ; preds = %bb.cl
  %i.mq = tail call noalias ptr @malloc(i64 noundef %i.mp) #22 ; 5 uses
  %i.mr = icmp eq ptr %i.mq, null
  br i1 %i.mr, label %.split430.us, label %bb.cn

.split430.us:                                     ; preds = %bb.ce, %bb.cm
  tail call void @abort() #21
  unreachable

bb.cn:                                            ; preds = %bb.cm
  %i.ms = icmp sgt i64 %i.mm, 8
  br i1 %i.ms, label %bb.co, label %bb.cp, !prof !126

bb.co:                                            ; preds = %bb.cn
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.mq, ptr align 8 %i.mj, i64 %i.mm, i1 false)
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i228

bb.cp:                                            ; preds = %bb.cn
  %i.mt = icmp eq i64 %i.mm, 8
  br i1 %i.mt, label %bb.cq, label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i228

bb.cq:                                            ; preds = %bb.cp
  %i.mu = load ptr, ptr %i.mj, align 8, !tbaa !48
  store ptr %i.mu, ptr %i.mq, align 8, !tbaa !48
  br label %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i228

_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i228: ; preds = %bb.cq, %bb.cp, %bb.co
  store ptr %i.mq, ptr %i.kk, align 16, !tbaa !44
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i227

bb.cr:                                            ; preds = %bb.cl
  %i.mv = tail call ptr @realloc(ptr noundef %i.mj, i64 noundef %i.mp) #20 ; 3 uses
  store ptr %i.mv, ptr %i.kk, align 16, !tbaa !44
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %.split428.us, label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i227

.split428.us:                                     ; preds = %bb.cd, %bb.cr
  tail call void @abort() #21
  unreachable

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i227: ; preds = %bb.cr, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i228
  %i.mx = phi ptr [ %i.mv, %bb.cr ], [ %i.mq, %_ZSt4copyIPPN4llvm16itanium_demangle4NodeES4_ET0_T_S6_S5_.exit.i.i228 ] ; 2 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mx, i64 %i.mm
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.mx, i64 %i.mn
  store ptr %i.mz, ptr %i.mc, align 16, !tbaa !46
  br label %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit229

_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit229: ; preds = %bb.ck, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i227
  %i.na = phi ptr [ %i.my, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE7reserveEm.exit.i227 ], [ %i.mg, %bb.ck ] ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 8
  store ptr %i.nb, ptr %i.kl, align 8, !tbaa !45
  store ptr %i.me, ptr %i.na, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.nc = tail call fastcc { ptr, i64 } @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E20popTrailingNodeArrayEm(ptr noundef nonnull align 16 dereferenceable(4928) %0, i64 noundef %i.kr) ; 2 uses
  %i.nd = extractvalue { ptr, i64 } %i.nc, 0
  store ptr %i.nd, ptr %2, align 8
  %i.ne = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nf = extractvalue { ptr, i64 } %i.nc, 1      ; 2 uses
  store i64 %i.nf, ptr %i.ne, align 8
  br label %bb.cs

.split.us:                                        ; preds = %bb.bz, %bb.cj
  %.us-phi = phi ptr [ %i.ks, %bb.cj ], [ %i.la, %bb.bz ]
  %i.ng = getelementptr inbounds nuw i8, ptr %.us-phi, i64 1
  store ptr %i.ng, ptr %0, align 16, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.nh = tail call fastcc { ptr, i64 } @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E20popTrailingNodeArrayEm(ptr noundef nonnull align 16 dereferenceable(4928) %0, i64 noundef %i.kr) ; 2 uses
  %i.ni = extractvalue { ptr, i64 } %i.nh, 0
  store ptr %i.ni, ptr %2, align 8
  %i.nj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nk = extractvalue { ptr, i64 } %i.nh, 1      ; 2 uses
  store i64 %i.nk, ptr %i.nj, align 8
  br i1 %i.kv, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit229, %.split.us
  %i.nl = phi i64 [ %i.nf, %_ZN4llvm16itanium_demangle14PODSmallVectorIPNS0_4NodeELm32EE9push_backERKS3_.exit229 ], [ %i.nk, %.split.us ]
  %.not74 = icmp eq i64 %i.nl, 1
  br i1 %.not74, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs, %.split.us
  %i.nm = getelementptr i8, ptr %i.ag, i64 3
  %.val119 = load i8, ptr %i.nm, align 1
  %i.nn = lshr i8 %.val119, 1
  %i.no = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_14ConversionExprEJRPNS0_4NodeERNS0_9NodeArrayENS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 16 dereferenceable(4928) %0, ptr nonnull %i.ki, ptr noundef nonnull align 8 dereferenceable(16) %2, i8 %i.nn)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct
  %.19 = phi ptr [ %i.no, %bb.ct ], [ null, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.cv:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.np = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.nq = icmp eq ptr %i.np, null
  br i1 %i.nq, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.nr = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.ns = icmp eq ptr %i.nr, null
  br i1 %i.ns, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.nt = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.nu = icmp eq ptr %i.nt, null
  br i1 %i.nu, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.nv = getelementptr i8, ptr %i.ag, i64 3
  %.val118 = load i8, ptr %i.nv, align 1
  %i.nw = lshr i8 %.val118, 1
  %i.nx = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_15ConditionalExprEJRPNS0_4NodeESB_SB_NS9_4PrecEEEESA_DpOT0_(ptr noundef nonnull align 16 dereferenceable(4928) %0, ptr nonnull %i.np, ptr nonnull %i.nr, ptr nonnull %i.nt, i8 %i.nw)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.cz:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.ny = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseTypeEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.nz = icmp eq ptr %i.ny, null
  br i1 %i.nz, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.oa = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.ob = icmp eq ptr %i.oa, null
  br i1 %i.ob, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.oc = getelementptr i8, ptr %i.ag, i64 3
  %.val117 = load i8, ptr %i.oc, align 1
  %i.od = lshr i8 %.val117, 1
  %i.oe = call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_8CastExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeESG_NSE_4PrecEEEESF_DpOT0_(ptr noundef nonnull align 16 dereferenceable(4928) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %i.ny, ptr nonnull %i.oa, i8 %i.od)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.dc:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %i.of = getelementptr i8, ptr %i.ag, i64 3
  %9 = and i64 %i.ap, 5189413545564999712
  %.not397 = icmp eq i64 %9, 0
  br i1 %.not397, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.og = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseTypeEv(ptr noundef nonnull align 16 dereferenceable(4928) %0)
  br label %bb.df

bb.de:                                            ; preds = %bb.dc
  %i.oh = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseExprEv(ptr noundef nonnull align 16 dereferenceable(4928) %0)
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd
  %i.oi = phi ptr [ %i.og, %bb.dd ], [ %i.oh, %bb.de ] ; 2 uses
  %.not73 = icmp eq ptr %i.oi, null
  br i1 %.not73, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %.val116 = load i8, ptr %i.of, align 1
  %i.oj = lshr i8 %.val116, 1
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 4912 ; 2 uses
  %i.ol = load ptr, ptr %i.ok, align 16, !tbaa !67 ; 3 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 8
  %i.on = load i64, ptr %i.om, align 8, !tbaa !79 ; 2 uses
  %i.oo = add i64 %i.on, -4016
  %i.op = icmp ult i64 %i.oo, -4080
  br i1 %i.op, label %bb.dh, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSE_4PrecEEEESF_DpOT0_.exit

bb.dh:                                            ; preds = %bb.dg
  %i.oq = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #22 ; 5 uses
  %i.or = icmp eq ptr %i.oq, null
  br i1 %i.or, label %bb.di, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i230

bb.di:                                            ; preds = %bb.dh
  tail call void @_ZSt9terminatev() #21
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i230: ; preds = %bb.dh
  store ptr %i.ol, ptr %i.oq, align 8, !tbaa !78
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 8
  store i64 0, ptr %i.os, align 8, !tbaa !79
  store ptr %i.oq, ptr %i.ok, align 16, !tbaa !67
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSE_4PrecEEEESF_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSE_4PrecEEEESF_DpOT0_.exit: ; preds = %bb.dg, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i230
  %i.ot = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i230 ], [ %i.on, %bb.dg ] ; 2 uses
  %i.ou = phi ptr [ %i.oq, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i230 ], [ %i.ol, %bb.dg ] ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ou, i64 8
  %i.ow = add nsw i64 %i.ot, 64
  store i64 %i.ow, ptr %i.ov, align 8, !tbaa !79
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ou, i64 16
  %i.oy = getelementptr inbounds i8, ptr %i.ox, i64 %i.ot ; 8 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  store i8 60, ptr %i.oz, align 8, !tbaa !84
  %i.pa = getelementptr inbounds nuw i8, ptr %i.oy, i64 9 ; 2 uses
  %i.pb = load i16, ptr %i.pa, align 1
  %i.pc = and i16 %i.pb, -4096
  %i.pd = zext nneg i8 %i.oj to i16
  %i.pe = or disjoint i16 %i.pc, %i.pd
  %i.pf = or i16 %i.pe, 1344
  store i16 %i.pf, ptr %i.pa, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle13EnclosingExprE, i64 16), ptr %i.oy, align 8, !tbaa !23
  %i.pg = getelementptr inbounds nuw i8, ptr %i.oy, i64 16
  store i64 %.sroa.0.0.i, ptr %i.pg, align 8, !tbaa !88
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.oy, i64 24
  store ptr %.sroa.7.0.i, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !89
  %i.ph = getelementptr inbounds nuw i8, ptr %i.oy, i64 32
  store ptr %i.oi, ptr %i.ph, align 8, !tbaa !152
  %i.pi = getelementptr inbounds nuw i8, ptr %i.oy, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.pi, i8 0, i64 16, i1 false)
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit

bb.dj:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  unreachable

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseBinaryExprESt17basic_string_viewIcSt11char_traitsIcEENS0_4Node4PrecE.exit: ; preds = %bb.ca, %bb.bk, %bb.ad, %bb.as, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.thread, %.split431, %bb.bb, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSE_4PrecEEEESF_DpOT0_.exit, %bb.df, %bb.cz, %bb.da, %bb.db, %bb.cv, %bb.cy, %bb.cx, %bb.cw, %bb.bw, %bb.cu, %bb.bg, %bb.bv, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS9_4PrecEEEESA_DpOT0_.exit, %bb.bc, %bb.ao, %.split433.us, %bb.x, %bb.y, %bb.z, %bb.u, %bb.v, %bb.w, %bb.t, %bb.s, %bb.r, %bb.q, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSE_4PrecEEEESF_DpOT0_.exit, %bb.k, %bb.h, %bb.j, %bb.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit
  %.28 = phi ptr [ null, %bb.y ], [ null, %bb.i ], [ null, %bb.k ], [ null, %bb.q ], [ null, %bb.s ], [ null, %bb.v ], [ %i.oy, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_13EnclosingExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeENSE_4PrecEEEESF_DpOT0_.exit ], [ null, %bb.as ], [ null, %bb.bc ], [ null, %bb.ad ], [ %.19, %bb.cu ], [ null, %bb.cx ], [ null, %bb.da ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfo9getSymbolEv.exit ], [ null, %bb.h ], [ %i.bf, %bb.j ], [ %i.by, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_10PrefixExprEJRSt17basic_string_viewIcSt11char_traitsIcEERPNS0_4NodeERNSE_4PrecEEEESF_DpOT0_.exit ], [ %i.cp, %bb.r ], [ %i.cu, %bb.t ], [ null, %bb.u ], [ %i.db, %bb.w ], [ null, %bb.x ], [ %i.di, %bb.z ], [ null, %bb.ao ], [ null, %bb.bk ], [ %i.hg, %.split433.us ], [ %i.ia, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_10DeleteExprEJRPNS0_4NodeERbbNS9_4PrecEEEESA_DpOT0_.exit ], [ null, %bb.bg ], [ %i.kf, %bb.bv ], [ null, %bb.bw ], [ null, %bb.df ], [ null, %bb.cv ], [ null, %bb.cw ], [ %i.nx, %bb.cy ], [ null, %bb.cz ], [ %i.oe, %bb.db ], [ null, %bb.bb ], [ null, %.split431 ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfEc.exit223.split.thread ], [ null, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #19
  br label %.critedge83

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit: ; preds = %bb.d, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoneEPKc.exit.i
  switch i8 %i.s, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i248 [
    i8 76, label %bb.dk
    i8 84, label %bb.dl
    i8 102, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit241
  ]

bb.dk:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit
  %i.pj = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E16parseExprPrimaryEv(ptr noundef nonnull align 16 dereferenceable(4928) %0)
  br label %.critedge83

bb.dl:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit
  %i.pk = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E18parseTemplateParamEv(ptr noundef nonnull align 16 dereferenceable(4928) %0)
  br label %.critedge83

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit241: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit
  %i.pl = load i8, ptr %i.t, align 1, !tbaa !24   ; 2 uses
  %i.pm = icmp eq i8 %i.pl, 112
  br i1 %i.pm, label %bb.dm, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit244

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit244: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit241
  %i.pn = icmp eq i8 %i.pl, 76
  %.not.i245 = icmp ne i64 %.pre-phi476596, 2
  %or.cond = and i1 %.not.i245, %i.pn
  br i1 %or.cond, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit247, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit247.thread

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit247: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit244
  %i.po = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  %i.pp = load i8, ptr %i.po, align 1, !tbaa !24
  %i.pq = sext i8 %i.pp to i32
  %isdigittmp = add nsw i32 %i.pq, -48
  %isdigit = icmp ult i32 %isdigittmp, 10
  br i1 %isdigit, label %bb.dm, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit247.thread

bb.dm:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit247, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit241
  %i.pr = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E18parseFunctionParamEv(ptr noundef nonnull align 16 dereferenceable(4928) %0)
  br label %.critedge83

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit247.thread: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit247, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit244
  %.not.i.i = icmp eq ptr %i.r, %i.f
  br i1 %.not.i.i, label %.critedge83, label %bb.dn

bb.dn:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit247.thread
  store ptr %i.t, ptr %0, align 16, !tbaa !42
  %.not.i23.not.i = icmp eq ptr %i.f, %i.t
  br i1 %.not.i23.not.i, label %.critedge83, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit.i: ; preds = %bb.dn
  %i.ps = load i8, ptr %i.t, align 1, !tbaa !24
  switch i8 %i.ps, label %.critedge83 [
    i8 76, label %bb.do
    i8 82, label %bb.dp
    i8 108, label %bb.dq
    i8 114, label %bb.dr
  ]

bb.do:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit.i
  br label %bb.dr

bb.dp:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit.i
  br label %bb.dr

bb.dq:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit.i
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit.i
  %.035.i = phi i8 [ 1, %bb.do ], [ 0, %bb.dp ], [ 1, %bb.dq ], [ 0, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit.i ] ; 2 uses
  %.0.i = phi i1 [ true, %bb.do ], [ true, %bb.dp ], [ false, %bb.dq ], [ false, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit.i ]
  %i.pt = getelementptr inbounds nuw i8, ptr %i.r, i64 2 ; 3 uses
  store ptr %i.pt, ptr %0, align 16, !tbaa !42
  %i.pu = ptrtoint ptr %i.pt to i64
  %i.pv = sub i64 %i.g, %i.pu
  %i.pw = icmp ult i64 %i.pv, 2
  br i1 %i.pw, label %.critedge83, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.dr
  %i.px = load i8, ptr %i.pt, align 1, !tbaa !24  ; 3 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.r, i64 3 ; 2 uses
  br label %bb.ds

bb.ds:                                            ; preds = %.thread24.i.i, %.preheader.i.i
  %.031.i.i = phi i64 [ 62, %.preheader.i.i ], [ %i.qk, %.thread24.i.i ] ; 3 uses
  %.01030.i.i = phi i64 [ 0, %.preheader.i.i ], [ %i.qj, %.thread24.i.i ] ; 3 uses
  %i.pz = add i64 %.01030.i.i, %.031.i.i
  %i.qa = lshr i64 %i.pz, 1                       ; 5 uses
  %i.qb = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E3OpsE, i64 %i.qa ; 2 uses
  %.val15.i.i = load i8, ptr %i.qb, align 16, !tbaa !24 ; 2 uses
  %i.qc = getelementptr i8, ptr %i.qb, i64 1
  %.val16.i.i = load i8, ptr %i.qc, align 1
  %i.qd = icmp slt i8 %.val15.i.i, %i.px
  br i1 %i.qd, label %.thread.i.i, label %bb.dt

.thread.i.i:                                      ; preds = %bb.ds
  %i.qe = add nuw nsw i64 %i.qa, 1
  br label %.thread24.i.i

bb.dt:                                            ; preds = %bb.ds
  %i.qf = icmp eq i8 %.val15.i.i, %i.px
  br i1 %i.qf, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i.i, label %.thread24.i.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i.i: ; preds = %bb.dt
  %i.qg = load i8, ptr %i.py, align 1, !tbaa !24
  %i.qh = icmp slt i8 %.val16.i.i, %i.qg
  %cond.fr19.i.i = freeze i1 %i.qh                ; 2 uses
  %i.qi = add nuw nsw i64 %i.qa, 1
  %spec.select.i.i = select i1 %cond.fr19.i.i, i64 %i.qi, i64 %.01030.i.i
  %spec.select29.i.i = select i1 %cond.fr19.i.i, i64 %.031.i.i, i64 %i.qa
  br label %.thread24.i.i

.thread24.i.i:                                    ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i.i, %bb.dt, %.thread.i.i
  %i.qj = phi i64 [ %.01030.i.i, %bb.dt ], [ %spec.select.i.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i.i ], [ %i.qe, %.thread.i.i ] ; 4 uses
  %i.qk = phi i64 [ %i.qa, %bb.dt ], [ %spec.select29.i.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i.i ], [ %.031.i.i, %.thread.i.i ] ; 2 uses
  %.not.i25.i = icmp eq i64 %i.qk, %i.qj
  br i1 %.not.i25.i, label %bb.du, label %bb.ds, !llvm.loop !12

bb.du:                                            ; preds = %.thread24.i.i
  %i.ql = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E3OpsE, i64 %i.qj ; 5 uses
  %.val17.i.i = load i8, ptr %i.ql, align 16, !tbaa !24
  %i.qm = icmp eq i8 %.val17.i.i, %i.px
  br i1 %i.qm, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoneEPKc.exit.i.i, label %.critedge83

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoneEPKc.exit.i.i: ; preds = %bb.du
  %i.qn = getelementptr i8, ptr %i.ql, i64 1
  %.val18.i.i = load i8, ptr %i.qn, align 1
  %i.qo = load i8, ptr %i.py, align 1, !tbaa !24
  %.not28.i.i = icmp eq i8 %.val18.i.i, %i.qo
  br i1 %.not28.i.i, label %bb.dv, label %.critedge83

bb.dv:                                            ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoneEPKc.exit.i.i
  %i.qp = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  store ptr %i.qp, ptr %0, align 16, !tbaa !42
  %i.qq = getelementptr i8, ptr %i.ql, i64 2
  %.val16.i907 = load i8, ptr %i.qq, align 2, !tbaa !363
  switch i8 %.val16.i907, label %.critedge83 [
    i8 2, label %.critedge.i
    i8 4, label %bb.dw
  ]

bb.dw:                                            ; preds = %bb.dv
  %i.qr = getelementptr i8, ptr %i.ql, i64 8
end_hunk_1
begin_hunk_2_@_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E23parseBaseUnresolvedNameEv:bb.a
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %bb.m, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  tail call void @_ZSt9terminatev() #21
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.l
  store ptr %i.az, ptr %i.be, align 8, !tbaa !78
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store i64 0, ptr %i.bg, align 8, !tbaa !79
  store ptr %i.be, ptr %i.ay, align 16, !tbaa !67
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESB_EEESA_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESB_EEESA_DpOT0_.exit: ; preds = %bb.k, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i
  %i.bh = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.bb, %bb.k ] ; 2 uses
  %i.bi = phi ptr [ %i.be, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.az, %bb.k ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = add nsw i64 %i.bh, 32
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !79
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bh ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  store i8 45, ptr %i.bn, align 8, !tbaa !84
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 9 ; 2 uses
  %i.bp = load i16, ptr %i.bo, align 1
  %i.bq = and i16 %i.bp, -4096
  %i.br = or disjoint i16 %i.bq, 1344
  store i16 %i.br, ptr %i.bo, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle20NameWithTemplateArgsE, i64 16), ptr %i.bm, align 8, !tbaa !23
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store ptr %i.as, ptr %i.bs, align 8, !tbaa !137
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.aw, ptr %i.bt, align 8, !tbaa !138
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E19parseDestructorNameEv.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E19parseDestructorNameEv.exit: ; preds = %bb.i, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit12, %bb.j, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESB_EEESA_DpOT0_.exit, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit15, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_8DtorNameEJRPNS0_4NodeEEEESA_DpOT0_.exit, %bb.e, %bb.b
  %.2 = phi ptr [ %i.g, %bb.b ], [ null, %bb.e ], [ %i.ag, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_8DtorNameEJRPNS0_4NodeEEEESA_DpOT0_.exit ], [ null, %bb.j ], [ null, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9consumeIfESt17basic_string_viewIcSt11char_traitsIcEE.exit12 ], [ %i.bm, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_20NameWithTemplateArgsEJRPNS0_4NodeESB_EEESA_DpOT0_.exit ], [ %i.as, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit15 ], [ %i.as, %bb.i ]
  ret ptr %.2
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { i64, ptr } @_ZNK4llvm16itanium_demangle13QualifiedName11getBaseNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !228  ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call { i64, ptr } %i.e(ptr noundef nonnull align 8 dereferenceable(11) %i.b) #19
  ret { i64, ptr } %i.f
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle13QualifiedNameD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle13QualifiedName9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !227  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.b) #19, !inline_history !1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.g = load i16, ptr %i.f, align 1
  %.mask3.i = and i16 %i.g, 192
  %.not.i = icmp eq i16 %.mask3.i, 64
  br i1 %.not.i, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.b) #19, !inline_history !1
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit

_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit: ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !74   ; 3 uses
  %i.m = add i64 %i.l, 2
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !75   ; 2 uses
  %i.p = icmp ugt i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !76
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit
  %i.q = add i64 %i.l, 994
  %i.r = shl i64 %i.o, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.r, i64 %i.q) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.n, align 8, !tbaa !75
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.u = tail call ptr @realloc(ptr noundef %i.t, i64 noundef %spec.select.i.i) #20 ; 3 uses
  store ptr %i.u, ptr %i.s, align 8, !tbaa !76
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.d, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.c
  %.pre5.i = load i64, ptr %i.k, align 8, !tbaa !74
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #21
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.w = phi i64 [ %i.l, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.x = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.u, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.w
  store i16 14906, ptr %i.y, align 1
  %i.z = load i64, ptr %i.k, align 8, !tbaa !74
  %i.aa = add i64 %i.z, 2
  store i64 %i.aa, ptr %i.k, align 8, !tbaa !74
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !228 ; 3 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !23
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.ac) #19, !inline_history !1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 9
  %i.ah = load i16, ptr %i.ag, align 1
  %.mask3.i5 = and i16 %i.ah, 192
  %.not.i6 = icmp eq i16 %.mask3.i5, 64
  br i1 %.not.i6, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit7, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i
  %i.ai = load ptr, ptr %1, align 8, !tbaa !23
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.ac) #19, !inline_history !1
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit7

_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit7: ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E17parseOperatorNameEPNS6_9NameStateE(ptr noundef nonnull align 16 dereferenceable(4928) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #3 align 2 {
bb.a:
  %.val.i = load ptr, ptr %0, align 16, !tbaa !42 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val14.i = load ptr, ptr %i.a, align 8, !tbaa !43 ; 3 uses
  %i.b = ptrtoint ptr %.val14.i to i64
  %i.c = ptrtoint ptr %.val.i to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = icmp ult i64 %i.d, 2
  br i1 %i.e, label %.thread62, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.f = load i8, ptr %.val.i, align 1, !tbaa !24 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.thread24.i, %.preheader.i
  %.031.i = phi i64 [ 62, %.preheader.i ], [ %i.s, %.thread24.i ] ; 3 uses
  %.01030.i = phi i64 [ 0, %.preheader.i ], [ %i.r, %.thread24.i ] ; 3 uses
  %i.h = add i64 %.01030.i, %.031.i
  %i.i = lshr i64 %i.h, 1                         ; 5 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E3OpsE, i64 %i.i ; 2 uses
  %.val15.i = load i8, ptr %i.j, align 16, !tbaa !24 ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 1
  %.val16.i = load i8, ptr %i.k, align 1
  %i.l = icmp slt i8 %.val15.i, %i.f
  br i1 %i.l, label %.thread.i, label %bb.c

.thread.i:                                        ; preds = %bb.b
  %i.m = add nuw nsw i64 %i.i, 1
  br label %.thread24.i

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i8 %.val15.i, %i.f
  br i1 %i.n, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i, label %.thread24.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i: ; preds = %bb.c
  %i.o = load i8, ptr %i.g, align 1, !tbaa !24
  %i.p = icmp slt i8 %.val16.i, %i.o
  %cond.fr19.i = freeze i1 %i.p                   ; 2 uses
  %i.q = add nuw nsw i64 %i.i, 1
  %spec.select.i = select i1 %cond.fr19.i, i64 %i.q, i64 %.01030.i
  %spec.select29.i = select i1 %cond.fr19.i, i64 %.031.i, i64 %i.i
  br label %.thread24.i

.thread24.i:                                      ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i, %bb.c, %.thread.i
  %i.r = phi i64 [ %.01030.i, %bb.c ], [ %spec.select.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i ], [ %i.m, %.thread.i ] ; 4 uses
  %i.s = phi i64 [ %i.i, %bb.c ], [ %spec.select29.i, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoltEPKc.exit.i ], [ %.031.i, %.thread.i ] ; 2 uses
  %.not.i = icmp eq i64 %i.s, %i.r
  br i1 %.not.i, label %bb.d, label %bb.b, !llvm.loop !12

bb.d:                                             ; preds = %.thread24.i
  %i.t = getelementptr inbounds nuw [16 x i8], ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E3OpsE, i64 %i.r ; 3 uses
  %.val17.i = load i8, ptr %i.t, align 16, !tbaa !24
  %i.u = icmp eq i8 %.val17.i, %i.f
  br i1 %i.u, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoneEPKc.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoneEPKc.exit.i: ; preds = %bb.d
  %i.v = getelementptr i8, ptr %i.t, i64 1
  %.val18.i = load i8, ptr %i.v, align 1
  %i.w = load i8, ptr %i.g, align 1, !tbaa !24
  %.not28.i = icmp eq i8 %.val18.i, %i.w
  br i1 %.not28.i, label %bb.e, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i

bb.e:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoneEPKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  store ptr %i.x, ptr %0, align 16, !tbaa !42
  %i.y = and i64 %i.r, 1152921504606846975        ; 2 uses
  %i.z = icmp eq i64 %i.y, 13
  br i1 %i.z, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 776 ; 3 uses
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !129, !range !113, !noundef !114
  store i8 0, ptr %i.aa, align 8, !tbaa !129
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 777 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !63, !range !113, !noundef !114 ; 2 uses
  %i.ae = icmp ne ptr %1, null                    ; 2 uses
  %i.af = zext i1 %i.ae to i8
  %i.ag = or i8 %i.ad, %i.af
  store i8 %i.ag, ptr %i.ac, align 1, !tbaa !129
  %i.ah = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E9parseTypeEv(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %1, align 8, !tbaa !120
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4912 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 16, !tbaa !67 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !79 ; 2 uses
  %i.an = add i64 %i.am, -4048
  %i.ao = icmp ult i64 %i.an, -4080
  br i1 %i.ao, label %bb.j, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEESA_DpOT0_.exit

bb.j:                                             ; preds = %bb.i
  %i.ap = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #22 ; 5 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %bb.k, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt9terminatev() #21
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i: ; preds = %bb.j
  store ptr %i.ak, ptr %i.ap, align 8, !tbaa !78
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 0, ptr %i.ar, align 8, !tbaa !79
  store ptr %i.ap, ptr %i.aj, align 16, !tbaa !67
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEESA_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEESA_DpOT0_.exit: ; preds = %bb.i, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i
  %i.as = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.am, %bb.i ] ; 2 uses
  %i.at = phi ptr [ %i.ap, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i ], [ %i.ak, %bb.i ] ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = add nsw i64 %i.as, 32
  store i64 %i.av, ptr %i.au, align 8, !tbaa !79
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.as ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i8 4, ptr %i.ay, align 8, !tbaa !84
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 9 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 1
  %i.bb = and i16 %i.ba, -4096
  %i.bc = or disjoint i16 %i.bb, 1344
  store i16 %i.bc, ptr %i.az, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle22ConversionOperatorTypeE, i64 16), ptr %i.ax, align 8, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.ah, ptr %i.bd, align 8, !tbaa !272
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEESA_DpOT0_.exit
  %.013 = phi ptr [ %i.ax, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEESA_DpOT0_.exit ], [ null, %bb.f ]
  store i8 %i.ad, ptr %i.ac, align 1, !tbaa !129
  store i8 %i.ab, ptr %i.aa, align 8, !tbaa !129
  br label %.thread

bb.m:                                             ; preds = %bb.e
  %i.be = shl nuw i64 1, %i.y                     ; 3 uses
  %i.bf = and i64 %i.be, 8809040871136756128
  %.not = icmp eq i64 %i.bf, 0
  br i1 %.not, label %bb.n, label %.thread

bb.n:                                             ; preds = %bb.m
  %2 = and i64 %i.be, 1266637396770816
  %.not49 = icmp ne i64 %2, 0
  %3 = and i64 %i.be, 1266774834188288
  %.not50 = icmp eq i64 %3, 0
  %or.cond = and i1 %.not49, %.not50
  br i1 %or.cond, label %.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bg = getelementptr i8, ptr %i.t, i64 8
  %.val25 = load ptr, ptr %i.bg, align 8, !tbaa !158 ; 2 uses
  %i.bh = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.val25) #19
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4912 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 16, !tbaa !67 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !79 ; 2 uses
  %i.bm = add i64 %i.bl, -4048
  %i.bn = icmp ult i64 %i.bm, -4080
  br i1 %i.bn, label %bb.p, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit

bb.p:                                             ; preds = %bb.o
  %i.bo = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #22 ; 5 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.q, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i27

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt9terminatev() #21
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i27: ; preds = %bb.p
  store ptr %i.bj, ptr %i.bo, align 8, !tbaa !78
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store i64 0, ptr %i.bq, align 8, !tbaa !79
  store ptr %i.bo, ptr %i.bi, align 16, !tbaa !67
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit: ; preds = %bb.o, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i27
  %i.br = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i27 ], [ %i.bl, %bb.o ] ; 2 uses
  %i.bs = phi ptr [ %i.bo, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i27 ], [ %i.bj, %bb.o ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bu = add nsw i64 %i.br, 32
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !79
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %i.br ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store i8 8, ptr %i.bx, align 8, !tbaa !84
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 9 ; 2 uses
  %i.bz = load i16, ptr %i.by, align 1
  %i.ca = and i16 %i.bz, -4096
  %i.cb = or disjoint i16 %i.ca, 1344
  store i16 %i.cb, ptr %i.by, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle8NameTypeE, i64 16), ptr %i.bw, align 8, !tbaa !23
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %i.bh, ptr %i.cc, align 8, !tbaa !88
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store ptr %.val25, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !tbaa !89
  br label %.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i: ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E12OperatorInfoneEPKc.exit.i, %bb.d
  %i.cd = load i16, ptr %.val.i, align 1
  %i.ce = icmp ne i16 %i.cd, 26988
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.r, label %.thread62

bb.r:                                             ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  store ptr %i.ch, ptr %0, align 16, !tbaa !42
  %i.ci = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 4912 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 16, !tbaa !67 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !79 ; 2 uses
  %i.co = add i64 %i.cn, -4048
  %i.cp = icmp ult i64 %i.co, -4080
  br i1 %i.cp, label %bb.t, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

bb.t:                                             ; preds = %bb.s
  %i.cq = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #22 ; 5 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.u, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i28

bb.u:                                             ; preds = %bb.t
  tail call void @_ZSt9terminatev() #21
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i28: ; preds = %bb.t
  store ptr %i.cl, ptr %i.cq, align 8, !tbaa !78
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store i64 0, ptr %i.cs, align 8, !tbaa !79
  store ptr %i.cq, ptr %i.ck, align 16, !tbaa !67
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit: ; preds = %bb.s, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i28
  %i.ct = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i28 ], [ %i.cn, %bb.s ] ; 2 uses
  %i.cu = phi ptr [ %i.cq, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i28 ], [ %i.cl, %bb.s ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = add nsw i64 %i.ct, 32
  store i64 %i.cw, ptr %i.cv, align 8, !tbaa !79
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %i.ct ; 5 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store i8 20, ptr %i.cz, align 8, !tbaa !84
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 9 ; 2 uses
  %i.db = load i16, ptr %i.da, align 1
  %i.dc = and i16 %i.db, -4096
  %i.dd = or disjoint i16 %i.dc, 1344
  store i16 %i.dd, ptr %i.da, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle15LiteralOperatorE, i64 16), ptr %i.cy, align 8, !tbaa !23
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr %i.ci, ptr %i.de, align 8, !tbaa !274
  br label %.thread

.thread62:                                        ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i
  %.not.i29 = icmp eq ptr %.val.i, %.val14.i
  br i1 %.not.i29, label %.thread, label %bb.v

bb.v:                                             ; preds = %.thread62
  %i.df = load i8, ptr %.val.i, align 1, !tbaa !24
  %i.dg = icmp eq i8 %i.df, 118
  br i1 %i.dg, label %bb.w, label %.thread

bb.w:                                             ; preds = %bb.v
  %i.dh = getelementptr inbounds nuw i8, ptr %.val.i, i64 1 ; 3 uses
  store ptr %i.dh, ptr %0, align 16, !tbaa !42
  %.not.i30.not = icmp eq ptr %.val14.i, %i.dh
  br i1 %.not.i30.not, label %.thread, label %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit

_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit: ; preds = %bb.w
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !24
  %i.dj = add i8 %i.di, -48
  %or.cond.a = icmp ult i8 %i.dj, 10
  br i1 %or.cond.a, label %bb.x, label %.thread

bb.x:                                             ; preds = %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit
  %i.dk = getelementptr inbounds nuw i8, ptr %.val.i, i64 2
  store ptr %i.dk, ptr %0, align 16, !tbaa !42
  %i.dl = tail call fastcc noundef ptr @_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E15parseSourceNameEPNS6_9NameStateE(ptr noundef nonnull align 16 dereferenceable(4928) %0) ; 2 uses
  %i.dm = icmp eq ptr %i.dl, null
  br i1 %i.dm, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 4912 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 16, !tbaa !67 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !79 ; 2 uses
  %i.dr = add i64 %i.dq, -4048
  %i.ds = icmp ult i64 %i.dr, -4080
  br i1 %i.ds, label %bb.z, label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEESA_DpOT0_.exit64

bb.z:                                             ; preds = %bb.y
  %i.dt = tail call noalias dereferenceable_or_null(4096) ptr @malloc(i64 noundef 4096) #22 ; 5 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.aa, label %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i63

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt9terminatev() #21
  unreachable

_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i63: ; preds = %bb.z
  store ptr %i.do, ptr %i.dt, align 8, !tbaa !78
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store i64 0, ptr %i.dv, align 8, !tbaa !79
  store ptr %i.dt, ptr %i.dn, align 16, !tbaa !67
  br label %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEESA_DpOT0_.exit64

_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEESA_DpOT0_.exit64: ; preds = %bb.y, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i63
  %i.dw = phi i64 [ 0, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i63 ], [ %i.dq, %bb.y ] ; 2 uses
  %i.dx = phi ptr [ %i.dt, %_ZN12_GLOBAL__N_120BumpPointerAllocator4growEv.exit.i.i.i63 ], [ %i.do, %bb.y ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = add nsw i64 %i.dw, 32
  store i64 %i.dz, ptr %i.dy, align 8, !tbaa !79
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %i.dw ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  store i8 4, ptr %i.ec, align 8, !tbaa !84
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 9 ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 1
  %i.ef = and i16 %i.ee, -4096
  %i.eg = or disjoint i16 %i.ef, 1344
  store i16 %i.eg, ptr %i.ed, align 1
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN4llvm16itanium_demangle22ConversionOperatorTypeE, i64 16), ptr %i.eb, align 8, !tbaa !23
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store ptr %i.dl, ptr %i.eh, align 8, !tbaa !272
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.w, %.thread62, %bb.v, %bb.m, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit, %bb.l, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEESA_DpOT0_.exit64, %bb.x, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit, %bb.r, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit
  %.4 = phi ptr [ %.013, %bb.l ], [ null, %.thread62 ], [ null, %bb.x ], [ null, %_ZNK4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4lookEj.exit ], [ null, %bb.w ], [ %i.cy, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_15LiteralOperatorEJRPNS0_4NodeEEEESA_DpOT0_.exit ], [ null, %bb.r ], [ %i.eb, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_22ConversionOperatorTypeEJRPNS0_4NodeEEEESA_DpOT0_.exit64 ], [ null, %bb.m ], [ %i.bw, %_ZN4llvm16itanium_demangle22AbstractManglingParserINS0_14ManglingParserIN12_GLOBAL__N_116DefaultAllocatorEEES4_E4makeINS0_8NameTypeEJSt17basic_string_viewIcSt11char_traitsIcEEEEEPNS0_4NodeEDpOT0_.exit ], [ null, %bb.n ], [ null, %bb.v ]
  ret ptr %.4
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle8DtorNameD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle8DtorName9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.c = add i64 %i.b, 1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !76
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.b, 993
  %i.h = shl i64 %i.e, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.g) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.d, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = tail call ptr @realloc(ptr noundef %i.j, i64 noundef %spec.select.i.i) #20 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !76
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.b
  %.pre5.i = load i64, ptr %i.a, align 8, !tbaa !74
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #21
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.m = phi i64 [ %i.b, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.n = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.k, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 126, ptr %i.o, align 1
  %i.p = load i64, ptr %i.a, align 8, !tbaa !74
  %i.q = add i64 %i.p, 1
  store i64 %i.q, ptr %i.a, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !270
  %i.t = load ptr, ptr %1, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.s) #19
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle22ConversionOperatorTypeD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle22ConversionOperatorType9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.c = add i64 %i.b, 9
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !76
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.b, 1001
  %i.h = shl i64 %i.e, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.g) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.d, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = tail call ptr @realloc(ptr noundef %i.j, i64 noundef %spec.select.i.i) #20 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !76
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.b
  %.pre5.i = load i64, ptr %i.a, align 8, !tbaa !74
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #21
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.m = phi i64 [ %i.b, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.n = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.k, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.o, ptr noundef nonnull align 1 dereferenceable(9) @.str.185, i64 9, i1 false)
  %i.p = load i64, ptr %i.a, align 8, !tbaa !74
  %i.q = add i64 %i.p, 9
  store i64 %i.q, ptr %i.a, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !272  ; 3 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.s) #19, !inline_history !1
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %i.x = load i16, ptr %i.w, align 1
  %.mask3.i = and i16 %i.x, 192
  %.not.i3 = icmp eq i16 %.mask3.i, 64
  br i1 %.not.i3, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i
  %i.y = load ptr, ptr %1, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.s) #19, !inline_history !1
  br label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit

_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit: ; preds = %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm16itanium_demangle15LiteralOperatorD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK4llvm16itanium_demangle15LiteralOperator9printLeftERNS0_12OutputBufferE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.c = add i64 %i.b, 11
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !75   ; 2 uses
  %i.f = icmp ugt i64 %i.c, %i.e
  br i1 %i.f, label %bb.b, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i: ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !76
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = add i64 %i.b, 1003
  %i.h = shl i64 %i.e, 1
  %spec.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 %i.g) ; 2 uses
  store i64 %spec.select.i.i, ptr %i.d, align 8, !tbaa !75
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76
  %i.k = tail call ptr @realloc(ptr noundef %i.j, i64 noundef %spec.select.i.i) #20 ; 3 uses
  store ptr %i.k, ptr %i.i, align 8, !tbaa !76
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i

._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i: ; preds = %bb.b
  %.pre5.i = load i64, ptr %i.a, align 8, !tbaa !74
  br label %_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #21
  unreachable

_ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit.i: ; preds = %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i
  %i.m = phi i64 [ %i.b, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %.pre5.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.n = phi ptr [ %.pre.i, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge.i ], [ %i.k, %._ZN4llvm16itanium_demangle12OutputBuffer4growEm.exit_crit_edge4.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.o, ptr noundef nonnull align 1 dereferenceable(11) @.str.186, i64 11, i1 false)
  %i.p = load i64, ptr %i.a, align 8, !tbaa !74
  %i.q = add i64 %i.p, 11
  store i64 %i.q, ptr %i.a, align 8, !tbaa !74
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !274  ; 3 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !23
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(11) %i.s) #19, !inline_history !1
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 9
  %i.x = load i16, ptr %i.w, align 1
  %.mask3.i = and i16 %i.x, 192
  %.not.i3 = icmp eq i16 %.mask3.i, 64
  br i1 %.not.i3, label %_ZNK4llvm16itanium_demangle4Node5printERNS0_12OutputBufferE.exit, label %bb.d
end_hunk_2
