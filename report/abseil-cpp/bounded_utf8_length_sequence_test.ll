Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/bounded_utf8_length_sequence_test?download=true
inline.NumInlined: 755
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_175BoundedUtf8LengthSequenceTest_RepeatedInsertsShiftValuesOutTheRightEnd_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
bb.bi:                                            ; preds = %_ZN7testing7MessagelsIA36_cEERS0_RKT_.exit129
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !39
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit131

_ZNK7testing15AssertionResult15failure_messageEv.exit131: ; preds = %bb.bi, %_ZN7testing7MessagelsIA36_cEERS0_RKT_.exit129
  %i.fh = phi ptr [ %i.fg, %bb.bi ], [ @.str.27, %_ZN7testing7MessagelsIA36_cEERS0_RKT_.exit129 ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %15, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef %i.fh)
          to label %bb.bj unwind label %bb.bn

bb.bj:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.fi = load ptr, ptr %14, align 8, !tbaa !41   ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.bk
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !11
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(128) %i.fi) #13, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit134

_ZN7testing7MessageD2Ev.exit134:                  ; preds = %bb.bk, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.br

bb.bl:                                            ; preds = %bb.bg
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit137

bb.bm:                                            ; preds = %bb.bh
  %i.fn = landingpad { ptr, i32 }
          cleanup
  br label %bb.bq

bb.bn:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit131
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %bb.bp

bb.bo:                                            ; preds = %bb.bj
  %i.fp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %15) #13
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %.pn46 = phi { ptr, i32 } [ %i.fp, %bb.bo ], [ %i.fo, %bb.bn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bm
  %.pn46.pn = phi { ptr, i32 } [ %.pn46, %bb.bp ], [ %i.fn, %bb.bm ] ; 2 uses
  %i.fq = load ptr, ptr %14, align 8, !tbaa !41   ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.bq
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !11
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(128) %i.fq) #13, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, %bb.bq, %bb.bl
  %.pn46.pn.pn = phi { ptr, i32 } [ %i.fm, %bb.bl ], [ %.pn46.pn, %bb.bq ], [ %.pn46.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.bu

bb.br:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit128, %_ZN7testing7MessageD2Ev.exit134
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !35 ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i138, label %_ZN7testing15AssertionResultD2Ev.exit142, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !39 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 16 ; 2 uses
  %i.fy = icmp eq ptr %i.fw, %i.fx
  br i1 %i.fy, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139: ; preds = %bb.bs
  %i.fz = load i64, ptr %i.fx, align 8, !tbaa !42
  %i.ga = add i64 %i.fz, 1
  call void @_ZdlPvm(ptr noundef %i.fw, i64 noundef %i.ga) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i139
  call void @_ZdlPvm(ptr noundef nonnull %i.fv, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit142

_ZN7testing15AssertionResultD2Ev.exit142:         ; preds = %bb.br, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i140
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.bt

bb.bt:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit119, %_ZN7testing15AssertionResultD2Ev.exit79, %_ZN7testing15AssertionResultD2Ev.exit100, %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit142
  ret void

bb.bu:                                            ; preds = %_ZN7testing7MessageD2Ev.exit82, %_ZN7testing7MessageD2Ev.exit103, %_ZN7testing7MessageD2Ev.exit137, %_ZN7testing7MessageD2Ev.exit122, %_ZN7testing7MessageD2Ev.exit63
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn, %_ZN7testing7MessageD2Ev.exit137 ], [ %.pn42.pn.pn, %_ZN7testing7MessageD2Ev.exit122 ], [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit63 ], [ %.pn37.pn.pn, %_ZN7testing7MessageD2Ev.exit103 ], [ %.pn33.pn.pn, %_ZN7testing7MessageD2Ev.exit82 ]
  resume { ptr, i32 } %.pn46.pn.pn.pn
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #0

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618debugging_internal12_GLOBAL__N_170BoundedUtf8LengthSequenceTest_InsertsIntoWord1LeaveWord0Untouched_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN4absl12lts_2026052618debugging_internal12_GLOBAL__N_170BoundedUtf8LengthSequenceTest_InsertsIntoWord1LeaveWord0Untouched_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #15 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618debugging_internal12_GLOBAL__N_170BoundedUtf8LengthSequenceTest_InsertsIntoWord1LeaveWord0Untouched_TestE, i64 16), ptr %i.a, align 8, !tbaa !11
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #14
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_170BoundedUtf8LengthSequenceTest_InsertsIntoWord1LeaveWord0Untouched_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_170BoundedUtf8LengthSequenceTest_InsertsIntoWord1LeaveWord0Untouched_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  %3 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %4 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %5 = alloca %"class.testing::Message", align 8  ; 7 uses
  %6 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %8 = alloca %"class.testing::Message", align 8  ; 7 uses
  %9 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br label %.lr.ph48.i

.lr.ph48.i:                                       ; preds = %bb.a, %bb.q
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.q ] ; 4 uses
  %i.h = phi i64 [ 0, %bb.a ], [ %i.z, %bb.q ]    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.i = shl nuw nsw i64 %indvars.iv, 1           ; 4 uses
  %notmask.i = shl nsw i64 -1, %i.i               ; 2 uses
  %i.j = xor i64 %notmask.i, -1
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %i.l = and i64 %i.k, 3074457345618258602
  %i.m = insertelement <2 x i64> poison, i64 %i.k, i64 0
  %i.n = insertelement <2 x i64> %i.m, i64 %i.l, i64 1
  %i.o = call range(i64 0, 63) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.n)
  %i.p = trunc nuw nsw <2 x i64> %i.o to <2 x i32> ; 2 uses
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = extractelement <2 x i32> %i.p, i64 0
  %i.s = add nuw nsw i32 %i.r, %i.q
  %i.t = extractelement <2 x i32> %i.p, i64 1
  %i.u = add nuw nsw i32 %i.s, %i.t               ; 2 uses
  %i.v = shl nuw nsw i64 1, %i.i
  %i.w = and i64 %i.h, %notmask.i
  %i.x = shl i64 %i.w, 2
  %i.y = or i64 %i.v, %i.x
  %i.z = or i64 %i.y, %i.k                        ; 2 uses
  store i32 %i.u, ptr %i.a, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.aa = trunc nuw nsw i64 %i.i to i32
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !43
  %i.ab = zext nneg i32 %i.u to i64
  %i.ac = icmp eq i64 %i.i, %i.ab
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph48.i
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  br label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.c:                                             ; preds = %.lr.ph48.i
  call void @_ZN7testing8internal18CmpHelperEQFailureIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.ad = load i8, ptr %1, align 8, !tbaa !32, !range !33, !noundef !34
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.af = load ptr, ptr %2, align 8, !tbaa !41
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ag, ptr noundef nonnull @.str.53, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit:       ; preds = %bb.e
  %i.ai = load ptr, ptr %2, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i64 noundef %indvars.iv)
          to label %_ZN7testing7MessagelsIjEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIjEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !35  ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7testing7MessagelsIjEERS0_RKT_.exit
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !39
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %_ZN7testing7MessagelsIjEERS0_RKT_.exit
  %i.an = phi ptr [ %i.am, %bb.f ], [ @.str.27, %_ZN7testing7MessagelsIjEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef %i.an)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ao = load ptr, ptr %2, align 8, !tbaa !41    ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i26, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(128) %i.ao) #13, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.as = load ptr, ptr %i.g, align 8, !tbaa !35  ; 4 uses
  %.not.i.i27 = icmp eq ptr %i.as, null
  br i1 %.not.i.i27, label %bb.r, label %bb.i

bb.i:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !39 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 16 ; 2 uses
  %i.av = icmp eq ptr %i.at, %i.au
  br i1 %i.av, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.aw = load i64, ptr %i.au, align 8, !tbaa !42
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.ax) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef 32) #14
  br label %bb.r

bb.j:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit30

bb.k:                                             ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit, %bb.e
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.m ], [ %i.ba, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.az, %bb.k ] ; 2 uses
  %i.bc = load ptr, ptr %2, align 8, !tbaa !41    ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i28, label %_ZN7testing7MessageD2Ev.exit30, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29: ; preds = %bb.o
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !11
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(128) %i.bc) #13, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit30

_ZN7testing7MessageD2Ev.exit30:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29, %bb.o, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ay, %bb.j ], [ %.pn.pn, %bb.o ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.at

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.bg = load ptr, ptr %i.g, align 8, !tbaa !35  ; 4 uses
  %.not.i.i31 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !39 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bj = icmp eq ptr %i.bh, %i.bi
  br i1 %i.bj, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32: ; preds = %bb.p
  %i.bk = load i64, ptr %i.bi, align 8, !tbaa !42
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bl) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i33

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i33: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32
  call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 32) #14
  br label %bb.q

bb.q:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i33, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond, label %.critedge25, label %.lr.ph48.i, !llvm.loop !67

bb.r:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, %_ZN7testing7MessageD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.as

.critedge25:                                      ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.bm = insertelement <2 x i64> poison, i64 %i.z, i64 0
  %i.bn = shufflevector <2 x i64> %i.bm, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bo = and <2 x i64> %i.bn, <i64 -1, i64 -6148914691236517206>
  %i.bp = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bo) ; 2 uses
  %i.bq = bitcast <2 x i64> %i.bp to <4 x i32>
  %i.br = extractelement <4 x i32> %i.bq, i64 0
  %i.bs = bitcast <2 x i64> %i.bp to <4 x i32>
  %i.bt = extractelement <4 x i32> %i.bs, i64 2
  %i.bu = add nuw nsw i32 %i.br, 32
  %i.bv = add nuw nsw i32 %i.bu, %i.bt            ; 3 uses
  store i32 %i.bv, ptr %i.c, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 64, ptr %i.d, align 4, !tbaa !43
  %i.bw = icmp eq i32 %i.bv, 64                   ; 2 uses
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.critedge25
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
  br label %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.t:                                             ; preds = %.critedge25
  call void @_ZN7testing8internal18CmpHelperEQFailureIjiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  br label %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.bx = load i8, ptr %4, align 8, !tbaa !32, !range !33, !noundef !34
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.ad, label %bb.u
end_hunk_0
