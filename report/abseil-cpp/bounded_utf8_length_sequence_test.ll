inline.NumInlined: 755
inline.NumDeleted: 187
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4absl12lts_2026052618debugging_internal12_GLOBAL__N_175BoundedUtf8LengthSequenceTest_RepeatedInsertsShiftValuesOutTheRightEnd_Test8TestBodyEv:_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  br i1 %i.fa, label %bb.br, label %bb.bg

bb.bg:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %bb.bh unwind label %bb.bl

bb.bh:                                            ; preds = %bb.bg
  %i.fb = load ptr, ptr %14, align 8, !tbaa !39
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fc, ptr noundef nonnull @.str.50, i64 noundef 35)
          to label %_ZN7testing7MessagelsIA36_cEERS0_RKT_.exit129 unwind label %bb.bm ; 0 uses

_ZN7testing7MessagelsIA36_cEERS0_RKT_.exit129:    ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  %i.fe = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !34 ; 2 uses
  %.not.i.i130 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i130, label %_ZNK7testing15AssertionResult15failure_messageEv.exit131, label %bb.bi

bb.bi:                                            ; preds = %_ZN7testing7MessagelsIA36_cEERS0_RKT_.exit129
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !35
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
  %i.fi = load ptr, ptr %14, align 8, !tbaa !39   ; 3 uses
  %.not.i.i132 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i132, label %_ZN7testing7MessageD2Ev.exit134, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i133: ; preds = %bb.bk
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !9
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 8
  %i.fl = load ptr, ptr %i.fk, align 8
  call void %i.fl(ptr noundef nonnull align 8 dereferenceable(128) %i.fi) #13, !inline_history !41
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
  %i.fq = load ptr, ptr %14, align 8, !tbaa !39   ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.fq, null
  br i1 %.not.i.i135, label %_ZN7testing7MessageD2Ev.exit137, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136: ; preds = %bb.bq
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !9
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 8
  %i.ft = load ptr, ptr %i.fs, align 8
  call void %i.ft(ptr noundef nonnull align 8 dereferenceable(128) %i.fq) #13, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit137

_ZN7testing7MessageD2Ev.exit137:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136, %bb.bq, %bb.bl
  %.pn46.pn.pn = phi { ptr, i32 } [ %i.fm, %bb.bl ], [ %.pn46.pn, %bb.bq ], [ %.pn46.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i136 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  br label %bb.bu

bb.br:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit128, %_ZN7testing7MessageD2Ev.exit134
  %i.fu = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !34 ; 4 uses
  %.not.i.i138 = icmp eq ptr %i.fv, null
  br i1 %.not.i.i138, label %_ZN7testing15AssertionResultD2Ev.exit142, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !35 ; 2 uses
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
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN4absl12lts_2026052618debugging_internal12_GLOBAL__N_170BoundedUtf8LengthSequenceTest_InsertsIntoWord1LeaveWord0Untouched_TestE, i64 16), ptr %i.a, align 8, !tbaa !9
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
  %i.h = phi i64 [ 0, %bb.a ], [ %i.s, %bb.q ]    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.i = shl nuw nsw i64 %indvars.iv, 1           ; 4 uses
  %notmask.i = shl nsw i64 -1, %i.i               ; 2 uses
  %i.j = xor i64 %notmask.i, -1
  %i.k = and i64 %i.h, %i.j                       ; 3 uses
  %10 = call range(i64 0, 63) i64 @llvm.ctpop.i64(i64 %i.k)
  %11 = trunc nuw nsw i64 %10 to i32
  %12 = and i64 %i.k, 3074457345618258602
  %13 = call range(i64 0, 32) i64 @llvm.ctpop.i64(i64 %12)
  %i.l = trunc nuw nsw i64 %13 to i32
  %14 = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = add nuw nsw i32 %14, %11
  %i.n = add nuw nsw i32 %i.m, %i.l               ; 2 uses
  %i.o = shl nuw nsw i64 1, %i.i
  %i.p = and i64 %i.h, %notmask.i
  %i.q = shl i64 %i.p, 2
  %i.r = or i64 %i.o, %i.q
  %i.s = or i64 %i.r, %i.k                        ; 2 uses
  store i32 %i.n, ptr %i.a, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.t = trunc nuw nsw i64 %i.i to i32
  store i32 %i.t, ptr %i.b, align 4, !tbaa !43
  %i.u = zext i32 %i.n to i64
  %i.v = icmp eq i64 %i.i, %i.u
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph48.i
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1)
  br label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.c:                                             ; preds = %.lr.ph48.i
  call void @_ZN7testing8internal18CmpHelperEQFailureIjjEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %1, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.w = load i8, ptr %1, align 8, !tbaa !22, !range !32, !noundef !33
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %2, align 8, !tbaa !39
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.53, i64 noundef 9)
          to label %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit:       ; preds = %bb.e
  %i.ab = load ptr, ptr %2, align 8, !tbaa !39
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef %indvars.iv)
          to label %_ZN7testing7MessagelsIjEERS0_RKT_.exit unwind label %bb.k ; 0 uses

_ZN7testing7MessagelsIjEERS0_RKT_.exit:           ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !34  ; 2 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7testing7MessagelsIjEERS0_RKT_.exit
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !35
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.f, %_ZN7testing7MessagelsIjEERS0_RKT_.exit
  %i.ag = phi ptr [ %i.af, %bb.f ], [ @.str.27, %_ZN7testing7MessagelsIjEERS0_RKT_.exit ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef 90, ptr noundef %i.ag)
          to label %bb.g unwind label %bb.l

bb.g:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.ah = load ptr, ptr %2, align 8, !tbaa !39    ; 3 uses
  %.not.i.i26 = icmp eq ptr %i.ah, null
  br i1 %.not.i.i26, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(128) %i.ah) #13, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.h, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %i.al = load ptr, ptr %i.g, align 8, !tbaa !34  ; 4 uses
  %.not.i.i27 = icmp eq ptr %i.al, null
  br i1 %.not.i.i27, label %bb.r, label %bb.i

bb.i:                                             ; preds = %_ZN7testing7MessageD2Ev.exit
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !35 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16 ; 2 uses
  %i.ao = icmp eq ptr %i.am, %i.an
  br i1 %i.ao, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.ap = load i64, ptr %i.an, align 8, !tbaa !42
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.aq) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef 32) #14
  br label %bb.r

bb.j:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit30

bb.k:                                             ; preds = %_ZN7testing7MessagelsIA10_cEERS0_RKT_.exit, %bb.e
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.l:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.g
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #13
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.at, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.k
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.n ], [ %i.as, %bb.k ] ; 2 uses
  %i.av = load ptr, ptr %2, align 8, !tbaa !39    ; 3 uses
  %.not.i.i28 = icmp eq ptr %i.av, null
  br i1 %.not.i.i28, label %_ZN7testing7MessageD2Ev.exit30, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29: ; preds = %bb.o
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  call void %i.ay(ptr noundef nonnull align 8 dereferenceable(128) %i.av) #13, !inline_history !41
  br label %_ZN7testing7MessageD2Ev.exit30

_ZN7testing7MessageD2Ev.exit30:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29, %bb.o, %bb.j
  %.pn.pn.pn = phi { ptr, i32 } [ %i.ar, %bb.j ], [ %.pn.pn, %bb.o ], [ %.pn.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  br label %bb.at

.critedge:                                        ; preds = %_ZN7testing8internal8EqHelper7CompareIjjTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !34  ; 4 uses
  %.not.i.i31 = icmp eq ptr %i.az, null
  br i1 %.not.i.i31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !35 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32: ; preds = %bb.p
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !42
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i33

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i33: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i32
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 32) #14
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
  %i.bf = insertelement <2 x i64> poison, i64 %i.s, i64 0
  %i.bg = shufflevector <2 x i64> %i.bf, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.bh = and <2 x i64> %i.bg, <i64 -1, i64 -6148914691236517206>
  %i.bi = call range(i64 0, 65) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.bh) ; 2 uses
  %i.bj = bitcast <2 x i64> %i.bi to <4 x i32>
  %i.bk = extractelement <4 x i32> %i.bj, i64 0
  %i.bl = bitcast <2 x i64> %i.bi to <4 x i32>
  %i.bm = extractelement <4 x i32> %i.bl, i64 2
  %i.bn = add nuw nsw i32 %i.bk, 32
  %i.bo = add nuw nsw i32 %i.bn, %i.bm            ; 3 uses
  store i32 %i.bo, ptr %i.c, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 64, ptr %i.d, align 4, !tbaa !43
  %i.bp = icmp eq i32 %i.bo, 64                   ; 2 uses
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.critedge25
  call void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4)
  br label %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

bb.t:                                             ; preds = %.critedge25
  call void @_ZN7testing8internal18CmpHelperEQFailureIjiEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %4, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 4 dereferenceable(4) %i.d)
  br label %_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit

_ZN7testing8internal8EqHelper7CompareIjiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.s, %bb.t
end_hunk_0
