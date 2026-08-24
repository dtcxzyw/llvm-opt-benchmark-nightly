Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mvfst/original/dyndep_parser?download=true
inline.NumInlined: 467
inline.NumDeleted: 226
begin_hunk_0_@_ZN12DyndepParser18ParseDyndepVersionEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.cf = load ptr, ptr %3, align 8, !tbaa !102   ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !104 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.cf, %i.ch
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.h, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cl, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i.i ], [ %i.cf, %bb.h ] ; 3 uses
  %i.ci = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ci) #17
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cl, %i.ch
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exitthread-pre-split.i.i, %bb.h
  %i.cm = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exitthread-pre-split.i.i ], [ %i.cf, %bb.h ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cm, null
  br i1 %.not.i.i1.i.i, label %_ZN10EvalStringD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cm) #17
  br label %_ZN10EvalStringD2Ev.exit

_ZN10EvalStringD2Ev.exit:                         ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.cn = load ptr, ptr %2, align 8, !tbaa !47    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.e
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %_ZN10EvalStringD2Ev.exit
  call void @_ZdlPv(ptr noundef %i.cn) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %_ZN10EvalStringD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret i1 %.1
}

declare void @_ZN5Lexer17DescribeLastErrorB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN12DyndepParser8ParseLetEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP10EvalStringS6_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = tail call noundef zeroext i1 @_ZN5Lexer9ReadIdentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %1) #16
  br i1 %i.c, label %bb.b, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 22, ptr %i.a, align 8, !tbaa !54
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !47
  %i.f = load i64, ptr %i.a, align 8, !tbaa !54   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(22) %i.e, ptr noundef nonnull align 1 dereferenceable(22) @.str.5, i64 22, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !50
  %i.h = load ptr, ptr %4, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  %i.j = call noundef zeroext i1 @_ZN5Lexer5ErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %3) #16
  %i.k = load ptr, ptr %4, align 8, !tbaa !47     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.d
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge.i.i
  call void @_ZdlPv(ptr noundef %i.k) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %._crit_edge.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.m = tail call noundef zeroext i1 @_ZN6Parser11ExpectTokenEN5Lexer5TokenEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef 4, ptr noundef %3) #16
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call noundef zeroext i1 @_ZN5Lexer14ReadEvalStringEP10EvalStringbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef %2, i1 noundef zeroext false, ptr noundef %3) #16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.0 = phi i1 [ false, %bb.b ], [ %i.n, %bb.c ], [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  ret i1 %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !50   ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 0
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !47
  %bcmp.i = tail call i32 @bcmp(ptr %i.f, ptr nonnull %1, i64 %i.b)
  %i.g = icmp ne i32 %bcmp.i, 0
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.h = phi i1 [ true, %bb.a ], [ %i.g, %bb.c ], [ false, %bb.b ]
  ret i1 %i.h
}

declare void @_ZNK10EvalString8EvaluateB5cxx11EP3Env(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

declare void @_Z12ParseVersionRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPiS7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN10EvalStringD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !102    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.g, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.d) #17
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exitthread-pre-split.i, %bb.a
  %i.h = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #17
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i, %bb.b
  ret void
}

declare noundef zeroext i1 @_ZN5Lexer9ReadIdentEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6Parser11ExpectTokenEN5Lexer5TokenEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_Z16CanonicalizePathPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPm(ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZNK5State10LookupNodeE11StringPiece(ptr noundef nonnull align 8 dereferenceable(264), ptr, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare noundef zeroext i1 @_ZN5Lexer9PeekTokenENS_5TokenE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIP4NodeSaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %1, 1152921504606846975
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.20) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !127
  %i.d = load ptr, ptr %0, align 8, !tbaa !92
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = icmp ult i64 %i.h, %1
  br i1 %i.i, label %_ZNSt12_Vector_baseIP4NodeSaIS1_EE11_M_allocateEm.exit, label %bb.f

_ZNSt12_Vector_baseIP4NodeSaIS1_EE11_M_allocateEm.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.f
  %i.n = shl nuw nsw i64 %1, 3
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #19 ; 4 uses
  %2 = load ptr, ptr %0, align 8, !tbaa !92       ; 4 uses
  %3 = load ptr, ptr %i.j, align 8, !tbaa !128
  %4 = ptrtoint ptr %3 to i64
  %5 = ptrtoint ptr %2 to i64
  %6 = sub i64 %4, %5                             ; 2 uses
  %i.p = icmp sgt i64 %6, 0
  br i1 %i.p, label %bb.d, label %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIP4NodeSaIS1_EE11_M_allocateEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.o, ptr align 8 %2, i64 %6, i1 false)
  br label %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit

_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZNSt12_Vector_baseIP4NodeSaIS1_EE11_M_allocateEm.exit, %bb.d
  %.not.i8 = icmp eq ptr %2, null
  br i1 %.not.i8, label %_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %2) #17
  br label %_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %bb.e
  store ptr %i.o, ptr %0, align 8, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.m
  store ptr %i.q, ptr %i.j, align 8, !tbaa !128
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %1
  store ptr %i.r, ptr %i.b, align 8, !tbaa !127
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt12_Vector_baseIP4NodeSaIS1_EE13_M_deallocateEPS1_m.exit, %bb.c
  ret void
}

declare noundef ptr @_ZN5State7GetNodeE11StringPiecem(ptr noundef nonnull align 8 dereferenceable(264), ptr, i64, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIP4NodeSaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !128  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !127
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !116
  store ptr %i.e, ptr %i.b, align 8, !tbaa !116
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !128
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !92     ; 4 uses
  %i.h = ptrtoint ptr %i.b to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 5 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #18
  unreachable

_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i, %i.l  ; 2 uses
  %i.n = icmp ult i64 %i.m, %i.l
  %i.o = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975)
  %i.p = select i1 %i.n, i64 1152921504606846975, i64 %i.o ; 3 uses
  %.not.i.i = icmp ne i64 %i.p, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.q = shl nuw nsw i64 %i.p, 3
  %i.r = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.q) #19 ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 %i.j ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !116
  store ptr %i.t, ptr %i.s, align 8, !tbaa !116
  %i.u = icmp sgt i64 %i.j, 0
  br i1 %i.u, label %bb.e, label %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i

bb.e:                                             ; preds = %_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.r, ptr align 8 %i.g, i64 %i.j, i1 false)
  br label %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i

_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i: ; preds = %_ZNKSt6vectorIP4NodeSaIS1_EE12_M_check_lenEmPKc.exit.i, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.not.i17.i = icmp eq ptr %i.g, null
  br i1 %.not.i17.i, label %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.g) #17
  br label %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit

_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit: ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i, %bb.f
  store ptr %i.r, ptr %0, align 8, !tbaa !92
  store ptr %i.v, ptr %i.a, align 8, !tbaa !128
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.p
  store ptr %i.w, ptr %i.c, align 8, !tbaa !127
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIP4NodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorI10EvalStringSaIS0_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !113    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !106  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIP10EvalStringEvT_S2_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyI10EvalStringEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.l, %_ZSt8_DestroyI10EvalStringEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !102 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !104  ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 3 uses
  %i.g = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.g) #17
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.j, %i.f
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !105

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i, align 8, !tbaa !102
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i.i.i.i.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i
  %i.k = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exitthread-pre-split.i.i.i.i.i ], [ %i.d, %.lr.ph.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyI10EvalStringEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #17
  br label %_ZSt8_DestroyI10EvalStringEvPT_.exit.i.i

_ZSt8_DestroyI10EvalStringEvPT_.exit.i.i:         ; preds = %bb.b, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEEvT_SB_.exit.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.l, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIP10EvalStringEvT_S2_.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !119

_ZSt8_DestroyIP10EvalStringEvT_S2_.exitthread-pre-split: ; preds = %_ZSt8_DestroyI10EvalStringEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !113
  br label %_ZSt8_DestroyIP10EvalStringEvT_S2_.exit

_ZSt8_DestroyIP10EvalStringEvT_S2_.exit:          ; preds = %_ZSt8_DestroyIP10EvalStringEvT_S2_.exitthread-pre-split, %bb.a
  %i.m = phi ptr [ %.pr, %_ZSt8_DestroyIP10EvalStringEvT_S2_.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.m, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseI10EvalStringSaIS0_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIP10EvalStringEvT_S2_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.m) #17
  br label %_ZNSt12_Vector_baseI10EvalStringSaIS0_EED2Ev.exit

_ZNSt12_Vector_baseI10EvalStringSaIS0_EED2Ev.exit: ; preds = %_ZSt8_DestroyIP10EvalStringEvT_S2_.exit, %bb.c
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

declare noundef zeroext i1 @_ZN5Lexer14ReadEvalStringEP10EvalStringbPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE16_M_insert_uniqueIS5_EES2_ISt17_Rb_tree_iteratorIS5_EbEOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.02022.i = load ptr, ptr %i.a, align 8, !tbaa !129 ; 2 uses
  %.not23.i = icmp eq ptr %.02022.i, null
  br i1 %.not23.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %2 = load ptr, ptr %1, align 8, !tbaa !130      ; 2 uses
  br label %.lr.ph.i.a

.lr.ph.i.a:                                       ; preds = %.lr.ph.i.a, %.lr.ph.i
  %.02024.i = phi ptr [ %.02022.i, %.lr.ph.i ], [ %.020.i, %.lr.ph.i.a ] ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.02024.i, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !130  ; 2 uses
  %i.e = icmp ult ptr %2, %i.d                    ; 2 uses
  %.in.v.i = select i1 %i.e, i64 16, i64 24
  %.in.i = getelementptr inbounds nuw i8, ptr %.02024.i, i64 %.in.v.i
  %.020.i = load ptr, ptr %.in.i, align 8, !tbaa !129 ; 2 uses
  %.not.i = icmp eq ptr %.020.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i.a, !llvm.loop !131

._crit_edge.i:                                    ; preds = %.lr.ph.i.a
  br i1 %i.e, label %._crit_edge.thread.i, label %bb.c

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.a
  %.019.lcssa29.i = phi ptr [ %.02024.i, %._crit_edge.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = icmp eq ptr %.019.lcssa29.i, %i.g
  br i1 %i.h, label %select.unfold, label %bb.b

bb.b:                                             ; preds = %._crit_edge.thread.i
  %i.i = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.019.lcssa29.i) #20 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !130
  %.pre.a = load ptr, ptr %1, align 8, !tbaa !130
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge.i
  %3 = phi ptr [ %.pre.a, %bb.b ], [ %2, %._crit_edge.i ]
  %i.j = phi ptr [ %.pre, %bb.b ], [ %i.d, %._crit_edge.i ]
  %.019.lcssa28.i = phi ptr [ %.019.lcssa29.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %.sroa.05.0.i = phi ptr [ %i.i, %bb.b ], [ %.02024.i, %._crit_edge.i ]
  %i.k = icmp ult ptr %i.j, %3
  br i1 %i.k, label %select.unfold, label %bb.e

select.unfold:                                    ; preds = %bb.c, %._crit_edge.thread.i
  %.sroa.4.0.i.ph = phi ptr [ %.019.lcssa29.i, %._crit_edge.thread.i ], [ %.019.lcssa28.i, %bb.c ] ; 3 uses
  %i.l = icmp eq ptr %.sroa.4.0.i.ph, %i.b
  br i1 %i.l, label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit, label %bb.d

bb.d:                                             ; preds = %select.unfold
  %4 = load ptr, ptr %1, align 8, !tbaa !130
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.ph, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130
  %i.o = icmp ult ptr %4, %i.n
  br label %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit

_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit: ; preds = %select.unfold, %bb.d
  %i.p = phi i1 [ %i.o, %bb.d ], [ true, %select.unfold ]
  %i.q = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #19 ; 8 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %5 = load ptr, ptr %1, align 8, !tbaa !84
  store ptr %5, ptr %i.r, align 8, !tbaa !84
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i16, ptr %i.t, align 8
  store i16 %i.u, ptr %i.s, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = load <2 x ptr>, ptr %i.w, align 8, !tbaa !132
  store <2 x ptr> %i.x, ptr %i.v, align 8, !tbaa !132
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 64
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !127
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.q, i64 72
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ad = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !132
  store <2 x ptr> %i.ad, ptr %i.ab, align 8, !tbaa !132
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !127
  store ptr %i.ag, ptr %i.ae, align 8, !tbaa !127
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.p, ptr noundef nonnull %i.q, ptr noundef nonnull %.sroa.4.0.i.ph, ptr noundef nonnull align 8 dereferenceable(32) %i.b) #16
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !46
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !tbaa !46
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit
  %.sroa.010.0 = phi ptr [ %i.q, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ %.sroa.05.0.i, %bb.c ]
  %.sroa.3.0 = phi i8 [ 1, %_ZNSt8_Rb_treeIP4EdgeSt4pairIKS1_7DyndepsESt10_Select1stIS5_ESt4lessIS1_ESaIS5_EE10_M_insert_IS5_NSB_11_Alloc_nodeEEESt17_Rb_tree_iteratorIS5_EPSt18_Rb_tree_node_baseSH_OT_RT0_.exit ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorI10EvalStringSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !106  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !113    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorI10EvalStringSaIS0_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.19) #18
  unreachable

_ZNKSt6vectorI10EvalStringSaIS0_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325)
  %i.l = select i1 %i.j, i64 384307168202282325, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 24
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #19 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n
  tail call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EEC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI10EvalStringSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorI10EvalStringSaIS0_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i ], [ %i.p, %_ZNKSt6vectorI10EvalStringSaIS0_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorI10EvalStringSaIS0_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.r = load <2 x ptr>, ptr %.0911.i.i.i.i, align 8, !tbaa !62, !alias.scope !136, !noalias !133
  store <2 x ptr> %i.r, ptr %.012.i.i.i.i, align 8, !tbaa !62, !alias.scope !133, !noalias !136
  %i.s = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !138, !alias.scope !136, !noalias !133
  store ptr %i.u, ptr %i.s, align 8, !tbaa !138, !alias.scope !133, !noalias !136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i8 0, i64 24, i1 false), !alias.scope !136, !noalias !133
  %i.v = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.v, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI10EvalStringSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !139

_ZNSt6vectorI10EvalStringSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorI10EvalStringSaIS0_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorI10EvalStringSaIS0_EE12_M_check_lenEmPKc.exit ], [ %i.w, %.lr.ph.i.i.i.i ]
  %i.x = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorI10EvalStringSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorI10EvalStringSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.ad, %.lr.ph.i.i.i.i17 ], [ %i.x, %_ZNSt6vectorI10EvalStringSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 3 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.ac, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorI10EvalStringSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !143)
  %i.y = load <2 x ptr>, ptr %.0911.i.i.i.i19, align 8, !tbaa !62, !alias.scope !143, !noalias !140
  store <2 x ptr> %i.y, ptr %.012.i.i.i.i18, align 8, !tbaa !62, !alias.scope !140, !noalias !143
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !138, !alias.scope !143, !noalias !140
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !138, !alias.scope !140, !noalias !143
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i19, i8 0, i64 24, i1 false), !alias.scope !143, !noalias !140
  %i.ac = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 24 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ac, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorI10EvalStringSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !139

_ZNSt6vectorI10EvalStringSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorI10EvalStringSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.x, %_ZNSt6vectorI10EvalStringSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit ], [ %i.ad, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseI10EvalStringSaIS0_EE13_M_deallocateEPS0_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorI10EvalStringSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #17
  br label %_ZNSt12_Vector_baseI10EvalStringSaIS0_EE13_M_deallocateEPS0_m.exit

_ZNSt12_Vector_baseI10EvalStringSaIS0_EE13_M_deallocateEPS0_m.exit: ; preds = %_ZNSt6vectorI10EvalStringSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22, %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !113
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !106
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %i.l
  store ptr %i.af, ptr %i.ae, align 8, !tbaa !109
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EEC2ERKSB_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104  ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !102    ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq ptr %i.c, %i.d
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EEC2EmRKSA_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = sdiv exact i64 %i.g, 40
  %i.i = icmp ugt i64 %i.h, 230584300921369395
  br i1 %i.i, label %bb.c, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEE8allocateEmPKv.exit.i.i.i, !prof !145

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #18
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEE8allocateEmPKv.exit.i.i.i: ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #19
  br label %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EEC2EmRKSA_.exit

_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EEC2EmRKSA_.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEE8allocateEmPKv.exit.i.i.i
  %i.k = phi ptr [ %i.j, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEE8allocateEmPKv.exit.i.i.i ], [ null, %bb.a ] ; 5 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !102
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !tbaa !104
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.m, ptr %i.n, align 8, !tbaa !138
  %i.o = load ptr, ptr %1, align 8, !tbaa !62     ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !62   ; 2 uses
  %.not7.i.i.i.i = icmp eq ptr %i.o, %i.p
  br i1 %.not7.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESt6vectorISB_SaISB_EEEEPSB_SB_ET0_T_SK_SJ_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EEC2EmRKSA_.exit, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i
  %.09.i.i.i.i = phi ptr [ %i.ah, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.k, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EEC2EmRKSA_.exit ] ; 8 uses
  %.sroa.04.08.i.i.i.i = phi ptr [ %i.ag, %_ZSt10_ConstructISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEEJRKS9_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.o, %_ZNSt12_Vector_baseISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN10EvalString9TokenTypeEESaIS9_EEC2EmRKSA_.exit ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i, i64 16 ; 3 uses
  store ptr %i.q, ptr %.09.i.i.i.i, align 8, !tbaa !53
  %i.r = load ptr, ptr %.sroa.04.08.i.i.i.i, align 8, !tbaa !47 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !50   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.t, ptr %i.a, align 8, !tbaa !54
  %i.u = icmp ugt i64 %i.t, 15
  br i1 %i.u, label %bb.d, label %._crit_edge.i.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.v = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(36) %.09.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #16 ; 2 uses
  store ptr %i.v, ptr %.09.i.i.i.i, align 8, !tbaa !47
  %i.w = load i64, ptr %i.a, align 8, !tbaa !54
  store i64 %i.w, ptr %i.q, align 8, !tbaa !55
  br label %._crit_edge.i.i.i.i.i.i.i.i
end_hunk_0
