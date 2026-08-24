Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3ParseGrammar?download=true
inline.NumInlined: 7220
inline.NumDeleted: 1267
loop-unroll.NumCompletelyUnrolled: 46
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZN12AstConfigUseC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_P6AstPinb:bb.a
  store i8 0, ptr %i.ae, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.c, ptr %i.af, align 8, !tbaa !690
  %.not.i.i = icmp eq ptr %4, null
  br i1 %.not.i.i, label %_ZN12AstConfigUse10addParamspEP6AstPin.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  invoke void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull %4)
          to label %_ZN12AstConfigUse10addParamspEP6AstPin.exit unwind label %bb.j

_ZN12AstConfigUse10addParamspEP6AstPin.exit:      ; preds = %bb.g, %bb.h
  ret void

bb.i:                                             ; preds = %.noexc.i12
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !80  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.s
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ak = load i64, ptr %i.s, align 8, !tbaa !79
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.i
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.i ], [ %i.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ah, %bb.j ]
  %i.am = load ptr, ptr %i.d, align 8, !tbaa !80  ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.e
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !79
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN10AstLibraryC2EP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP11AstNodeExprSB_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN7AstNodeC2E6VNTypeP8FileLine(ptr noundef nonnull align 8 dereferenceable(152) %0, i16 40, ptr noundef %1)
  store ptr getelementptr inbounds nuw inrange(-16, 320) (i8, ptr @_ZTV10AstLibrary, i64 16), ptr %0, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !77
  %i.d = load ptr, ptr %2, align 8, !tbaa !80     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !78   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i64 %i.f, ptr %i.a, align 8, !tbaa !81
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !80
  %i.i = load i64, ptr %i.a, align 8, !tbaa !81
  store i64 %i.i, ptr %i.c, align 8, !tbaa !79
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !79
  store i8 %i.k, ptr %i.j, align 1, !tbaa !79
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !81   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i64 %i.l, ptr %i.m, align 8, !tbaa !78
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  %.not.i.i = icmp eq ptr %3, null
  br i1 %.not.i.i, label %_ZN10AstLibrary9addFilespEP11AstNodeExpr.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7AstNode7addOp1pEPS_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %3)
          to label %_ZN10AstLibrary9addFilespEP11AstNodeExpr.exit unwind label %bb.g

_ZN10AstLibrary9addFilespEP11AstNodeExpr.exit:    ; preds = %bb.d, %bb.e
  %.not.i.i9 = icmp eq ptr %4, null
  br i1 %.not.i.i9, label %_ZN10AstLibrary11addIncdirspEP11AstNodeExpr.exit, label %bb.f

bb.f:                                             ; preds = %_ZN10AstLibrary9addFilespEP11AstNodeExpr.exit
  invoke void @_ZN7AstNode7addOp2pEPS_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %4)
          to label %_ZN10AstLibrary11addIncdirspEP11AstNodeExpr.exit unwind label %bb.g

_ZN10AstLibrary11addIncdirspEP11AstNodeExpr.exit: ; preds = %_ZN10AstLibrary9addFilespEP11AstNodeExpr.exit, %bb.f
  ret void

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !80   ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.c
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.s = load i64, ptr %i.c, align 8, !tbaa !79
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.p
}

declare void @_ZN9V3Control9addIgnoreE11V3ErrorCodebRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEii(i8, i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK8V3Number6toUIntEv(ptr noundef nonnull align 8 dereferenceable(56)) #1

declare void @_ZN9V3Control14addIgnoreMatchE11V3ErrorCodeRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_S8_(i8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN9V3Control15addScopeTraceOnEbRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(i1 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

declare void @_ZN9V3Control10addVarAttrEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_NS_11VarSpecKindES9_9VAttrTypeP10AstSenTree(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i8 noundef zeroext, ptr noundef nonnull align 8 dereferenceable(32), i8, ptr noundef) local_unnamed_addr #1

declare void @_ZN9V3Control9addInlineEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_b(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN9V3Control19addCoverageBlockOffERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

declare void @_ZN9V3Control19addCoverageBlockOffERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN9V3Control11addCaseFullERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

declare void @_ZN9V3Control15addModulePragmaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE11VPragmaType(ptr noundef nonnull align 8 dereferenceable(32), i8) local_unnamed_addr #1

declare void @_ZN9V3Control14addHierWorkersEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK8V3Number6toSIntEv(ptr noundef nonnull align 8 dereferenceable(56)) #1

declare void @_ZN9V3Control15addCaseParallelERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi(ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #1

declare void @_ZN9V3Control14addProfileDataEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare noundef i64 @_ZNK8V3Number7toUQuadEv(ptr noundef nonnull align 8 dereferenceable(56)) #1

declare void @_ZN9V3Control14addProfileDataEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_m(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #1

declare void @_ZN9V3Control21addFsmRegisterWrapperEP8FileLineRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES9_S9_S9_S9_S9_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i8 @_ZNK11V3ErrorCodecvNS_2enEEv(ptr noundef nonnull align 1 dereferenceable(1) %0) #4 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !365
  ret i8 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 -2, 1) i32 @_ZL14yysyntax_errorPlPPcPK12yypcontext_t(ptr nofree noundef nonnull captures(none) %0, ptr %.0.val, ptr nofree readonly captures(none) %.0.val1, i32 %.8.val) unnamed_addr #12 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %.not.i = icmp eq i32 %.8.val, -2
  br i1 %.not.i, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.8.val, ptr %i.a, align 16, !tbaa !692
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.val.val.i = load i16, ptr %.0.val1, align 2, !tbaa !88
  %i.c = sext i16 %.val.val.i to i64
  %i.d = getelementptr inbounds [4 x i8], ptr @_ZL6yypact, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !85   ; 4 uses
  %i.f = icmp eq i32 %i.e, -6406
  br i1 %i.f, label %.critedge.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @llvm.smin.i32(i32 %i.e, i32 0)
  %i.h = sub nsw i32 0, %i.g                      ; 2 uses
  %i.i = sub i32 131534, %i.e
  %i.j = tail call i32 @llvm.smin.i32(i32 %i.i, i32 669) ; 2 uses
  %.not4.i.i = icmp sgt i32 %i.j, %i.h
  br i1 %.not4.i.i, label %.lr.ph.preheader.i.i, label %.critedge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.k = zext nneg i32 %i.h to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.k, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 4 uses
  %.0345.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.f ] ; 4 uses
  %1 = trunc nuw i64 %indvars.iv.i.i to i32       ; 2 uses
  %2 = add nsw i32 %i.e, %1
  %3 = zext nneg i32 %2 to i64
  %gep.i.i = getelementptr inbounds nuw [2 x i8], ptr @_ZL7yycheck, i64 %3
  %i.l = load i16, ptr %gep.i.i, align 2, !tbaa !88
  %4 = sext i16 %i.l to i64
  %5 = and i64 %4, 4294967295
  %i.m = icmp eq i64 %indvars.iv.i.i, %5
  %i.n = icmp ne i64 %indvars.iv.i.i, 1
  %or.cond.i.i = and i1 %i.n, %i.m
  br i1 %or.cond.i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.o = icmp eq i32 %.0345.i.i, 4
  br i1 %i.o, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add i32 %.0345.i.i, 1
  %i.q = sext i32 %.0345.i.i to i64
  %i.r = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.q
  store i32 %1, ptr %i.r, align 4, !tbaa !692
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %i.p, %bb.e ], [ %.0345.i.i, %.lr.ph.i.i ] ; 4 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %lftr.wideiv.i.i = trunc nuw i64 %indvars.iv.next.i.i to i32
  %.not.i.i = icmp sgt i32 %i.j, %lftr.wideiv.i.i
  br i1 %.not.i.i, label %.lr.ph.i.i, label %.critedge.i.i, !llvm.loop !694

.critedge.i.i:                                    ; preds = %bb.f
  switch i32 %.1.i.i, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit [
    i32 0, label %.critedge.thread.i.i
    i32 -2, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread8
  ]

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.c, %bb.b
  store i32 -2, ptr %i.b, align 4, !tbaa !692
  br label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6

_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit: ; preds = %.critedge.i.i
  %i.s = add nsw i32 %.1.i.i, 1                   ; 8 uses
  switch i32 %i.s, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6 [
    i32 -2, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread8
    i32 5, label %bb.k
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
  ]

bb.g:                                             ; preds = %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit
  br label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6

bb.h:                                             ; preds = %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit
  br label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6

bb.i:                                             ; preds = %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit
  br label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6

bb.j:                                             ; preds = %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit
  br label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6

bb.k:                                             ; preds = %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit
  br label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6

_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6: ; preds = %bb.d, %.critedge.thread.i.i, %bb.a, %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g
  %.118.i5 = phi i32 [ %i.s, %bb.j ], [ %i.s, %bb.k ], [ %i.s, %bb.g ], [ %i.s, %bb.h ], [ %i.s, %bb.i ], [ %i.s, %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit ], [ 0, %bb.a ], [ 1, %.critedge.thread.i.i ], [ 1, %bb.d ] ; 4 uses
  %.046 = phi ptr [ @.str.744, %bb.j ], [ @.str.745, %bb.k ], [ @.str.741, %bb.g ], [ @.str.742, %bb.h ], [ @.str.743, %bb.i ], [ @.str.181, %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit ], [ @.str.181, %bb.a ], [ @.str.741, %.critedge.thread.i.i ], [ @.str.741, %bb.d ] ; 2 uses
  %i.t = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.046) #36
  %i.u = shl nsw i32 %.118.i5, 1
  %i.v = sext i32 %i.u to i64
  %reass.sub = sub i64 %i.t, %i.v
  %i.w = add i64 %reass.sub, 1                    ; 2 uses
  %.not5520 = icmp sgt i32 %.118.i5, 0
  br i1 %.not5520, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6
  %wide.trip.count = zext nneg i32 %.118.i5 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL9yytnamerrPcPKc.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZL9yytnamerrPcPKc.exit.thread ] ; 2 uses
  %.04421 = phi i64 [ %i.w, %.lr.ph.preheader ], [ %.14513, %_ZL9yytnamerrPcPKc.exit.thread ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.y = load i32, ptr %i.x, align 4, !tbaa !692
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [8 x i8], ptr @_ZL7yytname, i64 %i.z
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !90 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !79
  %i.ad = icmp eq i8 %i.ac, 34
  br i1 %i.ad, label %.preheader.split.us.i, label %_ZL9yytnamerrPcPKc.exit

.preheader.split.us.i:                            ; preds = %.lr.ph, %bb.m
  %.020.us.i = phi i64 [ %i.ai, %bb.m ], [ 0, %.lr.ph ] ; 2 uses
  %.019.us.i = phi ptr [ %.1.us.i, %bb.m ], [ %i.ab, %.lr.ph ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 1 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !79
  switch i8 %i.af, label %bb.m [
    i8 39, label %_ZL9yytnamerrPcPKc.exit
    i8 44, label %_ZL9yytnamerrPcPKc.exit
    i8 92, label %bb.l
    i8 34, label %_ZL9yytnamerrPcPKc.exit.thread
  ]

bb.l:                                             ; preds = %.preheader.split.us.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.019.us.i, i64 2 ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !79
  %.not25.us.i = icmp eq i8 %i.ah, 92
  br i1 %.not25.us.i, label %bb.m, label %_ZL9yytnamerrPcPKc.exit

bb.m:                                             ; preds = %bb.l, %.preheader.split.us.i
  %.1.us.i = phi ptr [ %i.ae, %.preheader.split.us.i ], [ %i.ag, %bb.l ]
  %i.ai = add nuw nsw i64 %.020.us.i, 1
  br label %.preheader.split.us.i, !llvm.loop !695

_ZL9yytnamerrPcPKc.exit:                          ; preds = %.preheader.split.us.i, %.preheader.split.us.i, %bb.l, %.lr.ph
  %i.aj = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ab) #36 ; 2 uses
  %.not = icmp sgt i64 %i.aj, -1
  br i1 %.not, label %_ZL9yytnamerrPcPKc.exit.thread, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread8

_ZL9yytnamerrPcPKc.exit.thread:                   ; preds = %.preheader.split.us.i, %_ZL9yytnamerrPcPKc.exit
  %.020.us.i.pn = phi i64 [ %i.aj, %_ZL9yytnamerrPcPKc.exit ], [ %.020.us.i, %.preheader.split.us.i ]
  %.14513 = add nsw i64 %.020.us.i.pn, %.04421    ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !696

.thread:                                          ; preds = %_ZL9yytnamerrPcPKc.exit.thread, %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6
  %.044.lcssa = phi i64 [ %i.w, %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread6 ], [ %.14513, %_ZL9yytnamerrPcPKc.exit.thread ] ; 3 uses
  %i.ak = load i64, ptr %0, align 8, !tbaa !81
  %i.al = icmp slt i64 %i.ak, %.044.lcssa
  br i1 %i.al, label %bb.n, label %.preheader

bb.n:                                             ; preds = %.thread
  %i.am = shl nsw i64 %.044.lcssa, 1              ; 2 uses
  %.not57 = icmp sgt i64 %.044.lcssa, %i.am
  %spec.store.select = select i1 %.not57, i64 9223372036854775807, i64 %i.am
  store i64 %spec.store.select, ptr %0, align 8
  br label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread8

.preheader:                                       ; preds = %.thread, %_ZL9yytnamerrPcPKc.exit67
  %.147 = phi ptr [ %i.bn, %_ZL9yytnamerrPcPKc.exit67 ], [ %.046, %.thread ] ; 3 uses
  %.039 = phi ptr [ %i.bm, %_ZL9yytnamerrPcPKc.exit67 ], [ %.0.val, %.thread ] ; 6 uses
  %.0 = phi i32 [ %.1, %_ZL9yytnamerrPcPKc.exit67 ], [ 0, %.thread ] ; 5 uses
  %i.an = load i8, ptr %.147, align 1, !tbaa !79  ; 2 uses
  store i8 %i.an, ptr %.039, align 1, !tbaa !79
  switch i8 %i.an, label %_ZL9yytnamerrPcPKc.exit67 [
    i8 0, label %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread8
    i8 37, label %bb.o
  ]

bb.o:                                             ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %.147, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !79
  %i.aq = icmp eq i8 %i.ap, 115
  %i.ar = icmp slt i32 %.0, %.118.i5
  %or.cond = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.p, label %_ZL9yytnamerrPcPKc.exit67

bb.p:                                             ; preds = %bb.o
  %i.as = add nsw i32 %.0, 1                      ; 2 uses
  %i.at = sext i32 %.0 to i64
  %i.au = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !692
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr @_ZL7yytname, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !90 ; 3 uses
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !79
  %i.ba = icmp eq i8 %i.az, 34
  br i1 %i.ba, label %.preheader.split.i, label %.thread.thread.i

.preheader.split.i:                               ; preds = %bb.p, %bb.r
  %.020.i = phi i64 [ %i.bg, %bb.r ], [ 0, %bb.p ] ; 4 uses
  %.019.i = phi ptr [ %.1.i, %bb.r ], [ %i.ay, %bb.p ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.019.i, i64 1 ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !79  ; 2 uses
  switch i8 %i.bc, label %bb.r [
    i8 39, label %.thread.thread.i
    i8 44, label %.thread.thread.i
    i8 92, label %bb.q
    i8 34, label %.split.us.thread.i
  ]

bb.q:                                             ; preds = %.preheader.split.i
  %i.bd = getelementptr inbounds nuw i8, ptr %.019.i, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !79
  %.not25.i = icmp eq i8 %i.be, 92
  br i1 %.not25.i, label %bb.r, label %.thread.thread.i

bb.r:                                             ; preds = %bb.q, %.preheader.split.i
  %.1.i = phi ptr [ %i.bb, %.preheader.split.i ], [ %i.bd, %bb.q ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.039, i64 %.020.i
  store i8 %i.bc, ptr %i.bf, align 1, !tbaa !79
  %i.bg = add nuw nsw i64 %.020.i, 1
  br label %.preheader.split.i, !llvm.loop !695

.split.us.thread.i:                               ; preds = %.preheader.split.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.039, i64 %.020.i
  store i8 0, ptr %i.bh, align 1, !tbaa !79
  br label %_ZL9yytnamerrPcPKc.exit67

.thread.thread.i:                                 ; preds = %bb.q, %.preheader.split.i, %.preheader.split.i, %bb.p
  %i.bi = tail call ptr @stpcpy(ptr noundef nonnull %.039, ptr noundef nonnull readonly %i.ay) #29
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %.039 to i64
  %i.bl = sub i64 %i.bj, %i.bk
  br label %_ZL9yytnamerrPcPKc.exit67

_ZL9yytnamerrPcPKc.exit67:                        ; preds = %bb.o, %.preheader, %.thread.thread.i, %.split.us.thread.i
  %.sink35 = phi i64 [ %.020.i, %.split.us.thread.i ], [ %i.bl, %.thread.thread.i ], [ 1, %.preheader ], [ 1, %bb.o ]
  %.sink = phi i64 [ 2, %.split.us.thread.i ], [ 2, %.thread.thread.i ], [ 1, %.preheader ], [ 1, %bb.o ]
  %.1 = phi i32 [ %i.as, %.split.us.thread.i ], [ %i.as, %.thread.thread.i ], [ %.0, %.preheader ], [ %.0, %bb.o ]
  %i.bm = getelementptr inbounds i8, ptr %.039, i64 %.sink35
  %i.bn = getelementptr inbounds nuw i8, ptr %.147, i64 %.sink
  br label %.preheader, !llvm.loop !697

_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit.thread8: ; preds = %_ZL9yytnamerrPcPKc.exit, %.preheader, %.critedge.i.i, %bb.n, %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit
  %.3 = phi i32 [ %.1.i.i, %.critedge.i.i ], [ %i.s, %_ZL25yy_syntax_error_argumentsPK12yypcontext_tP15yysymbol_kind_ti.exit ], [ 0, %.preheader ], [ -1, %bb.n ], [ -2, %_ZL9yytnamerrPcPKc.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.3
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

end_hunk_0
