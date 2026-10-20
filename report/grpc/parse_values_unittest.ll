Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/parse_values_unittest?download=true
inline.NumInlined: 1656
inline.NumDeleted: 327
begin_hunk_0_@_ZN4bssl3der4test33ParseValuesTest_UTCTimeRange_Test8TestBodyEv:bb.a

bb.bh:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #13
  %.pr160 = load ptr, ptr %i.dy, align 8, !tbaa !53 ; 4 uses
  %.not.i.i126 = icmp eq ptr %.pr160, null
  br i1 %.not.i.i126, label %_ZN7testing15AssertionResultD2Ev.exit130, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ew = load ptr, ptr %.pr160, align 8, !tbaa !40 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.pr160, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127: ; preds = %bb.bi
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !41
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128: ; preds = %bb.bi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i127
  call void @_ZdlPvm(ptr noundef nonnull %.pr160, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit130

_ZN7testing15AssertionResultD2Ev.exit130:         ; preds = %_ZN7testing15AssertionResultD2Ev.exit113, %bb.bh, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i128
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  store i16 2050, ptr %1, align 2, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #13
  %i.fb = call noundef zeroext i1 @_ZNK4bssl3der15GeneralizedTime14InUTCTimeRangeEv(ptr noundef nonnull align 2 dereferenceable(8) %1) ; 2 uses
  %i.fc = xor i1 %i.fb, true
  %i.fd = zext i1 %i.fc to i8
  store i8 %i.fd, ptr %22, align 8, !tbaa !35
  %i.fe = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 2 uses
  store ptr null, ptr %i.fe, align 8, !tbaa !36
  br i1 %i.fb, label %bb.bj, label %_ZN7testing15AssertionResultD2Ev.exit147

bb.bj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit130
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bk unwind label %bb.bo

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #13
  invoke void @_ZN7testing8internal30GetBoolAssertionFailureMessageB5cxx11ERKNS_15AssertionResultEPKcS5_S5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %25, ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4)
          to label %bb.bl unwind label %bb.bp

bb.bl:                                            ; preds = %bb.bk
  %i.ff = load ptr, ptr %25, align 8, !tbaa !40
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 196, ptr noundef %i.ff)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %bb.bn unwind label %bb.br

bb.bn:                                            ; preds = %bb.bm
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #13
  %i.fg = load ptr, ptr %25, align 8, !tbaa !40   ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.fi = icmp eq ptr %i.fg, %i.fh
  br i1 %i.fi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131: ; preds = %bb.bn
  %i.fj = load i64, ptr %i.fh, align 8, !tbaa !41
  %i.fk = add i64 %i.fj, 1
  call void @_ZdlPvm(ptr noundef %i.fg, i64 noundef %i.fk) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133: ; preds = %bb.bn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  %i.fl = load ptr, ptr %23, align 8, !tbaa !43   ; 3 uses
  %.not.i.i134 = icmp eq ptr %i.fl, null
  br i1 %.not.i.i134, label %bb.bt, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !14
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  call void %i.fo(ptr noundef nonnull align 8 dereferenceable(128) %i.fl) #13, !call_target !52, !inline_history !0
  br label %bb.bt

bb.bo:                                            ; preds = %bb.bj
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit142

bb.bp:                                            ; preds = %bb.bk
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

bb.bq:                                            ; preds = %bb.bl
  %i.fr = landingpad { ptr, i32 }
          cleanup
  br label %bb.bs

bb.br:                                            ; preds = %bb.bm
  %i.fs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %24) #13
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %.pn46 = phi { ptr, i32 } [ %i.fs, %bb.br ], [ %i.fr, %bb.bq ] ; 2 uses
  %i.ft = load ptr, ptr %25, align 8, !tbaa !40   ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 2 uses
  %i.fv = icmp eq ptr %i.ft, %i.fu
  br i1 %i.fv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137: ; preds = %bb.bs
  %i.fw = load i64, ptr %i.fu, align 8, !tbaa !41
  %i.fx = add i64 %i.fw, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fx) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139: ; preds = %bb.bs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137, %bb.bp
  %.pn46.pn = phi { ptr, i32 } [ %i.fq, %bb.bp ], [ %.pn46, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i137 ], [ %.pn46, %bb.bs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #13
  %i.fy = load ptr, ptr %23, align 8, !tbaa !43   ; 3 uses
  %.not.i.i140 = icmp eq ptr %i.fy, null
  br i1 %.not.i.i140, label %_ZN7testing7MessageD2Ev.exit142, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !14
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(128) %i.fy) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit142

_ZN7testing7MessageD2Ev.exit142:                  ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139, %bb.bo
  %.pn46.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.bo ], [ %.pn46.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit139 ], [ %.pn46.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i141 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %22) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  br label %bb.bw

bb.bt:                                            ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i135, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit133
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #13
  %.pr163 = load ptr, ptr %i.fe, align 8, !tbaa !53 ; 4 uses
  %.not.i.i143 = icmp eq ptr %.pr163, null
  br i1 %.not.i.i143, label %_ZN7testing15AssertionResultD2Ev.exit147, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.gc = load ptr, ptr %.pr163, align 8, !tbaa !40 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.pr163, i64 16 ; 2 uses
  %i.ge = icmp eq ptr %i.gc, %i.gd
  br i1 %i.ge, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144: ; preds = %bb.bu
  %i.gf = load i64, ptr %i.gd, align 8, !tbaa !41
  %i.gg = add i64 %i.gf, 1
  call void @_ZdlPvm(ptr noundef %i.gc, i64 noundef %i.gg) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145: ; preds = %bb.bu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i144
  call void @_ZdlPvm(ptr noundef nonnull %.pr163, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit147

_ZN7testing15AssertionResultD2Ev.exit147:         ; preds = %_ZN7testing15AssertionResultD2Ev.exit130, %bb.bt, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i145
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #13
  br label %bb.bv

bb.bv:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit, %_ZN7testing15AssertionResultD2Ev.exit147
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  ret void

bb.bw:                                            ; preds = %_ZN7testing7MessageD2Ev.exit142, %_ZN7testing7MessageD2Ev.exit125, %_ZN7testing7MessageD2Ev.exit108, %_ZN7testing7MessageD2Ev.exit91, %_ZN7testing7MessageD2Ev.exit74, %_ZN7testing7MessageD2Ev.exit57
  %.pn46.pn.pn.pn = phi { ptr, i32 } [ %.pn46.pn.pn, %_ZN7testing7MessageD2Ev.exit142 ], [ %.pn42.pn.pn, %_ZN7testing7MessageD2Ev.exit125 ], [ %.pn38.pn.pn, %_ZN7testing7MessageD2Ev.exit108 ], [ %.pn34.pn.pn, %_ZN7testing7MessageD2Ev.exit91 ], [ %.pn30.pn.pn, %_ZN7testing7MessageD2Ev.exit74 ], [ %.pn.pn.pn, %_ZN7testing7MessageD2Ev.exit57 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  resume { ptr, i32 } %.pn46.pn.pn.pn
}

declare noundef zeroext i1 @_ZNK4bssl3der15GeneralizedTime14InUTCTimeRangeEv(ptr noundef nonnull align 2 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4bssl3der4test32ParseValuesTest_ParseUint64_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %1 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

bb.c:                                             ; preds = %bb.a, %bb.aj
  %storemerge42 = phi i64 [ 0, %bb.a ], [ %i.bm, %bb.aj ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr @_ZN4bssl3der4testL15kUint64TestDataE, i64 %storemerge42 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.2, i32 noundef 228, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.h, align 16, !tbaa !98
  %i.j = invoke noundef zeroext i1 @_ZN4bssl3der11ParseUint64ENS0_5InputEPm(ptr nonnull %i.g, i64 %i.i, ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = zext i1 %i.j to i8                       ; 2 uses
  store i8 %i.k, ptr %i.c, align 1, !tbaa !54
  %i.l = load i8, ptr %i.f, align 16, !tbaa !54, !range !55, !noalias !99, !noundef !56
  %i.m = icmp eq i8 %i.l, %i.k
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.g

_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.n = load i8, ptr %2, align 8, !tbaa !35, !range !55, !noundef !56
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.q, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.v

bb.h:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.j, %bb.i
  %i.s = phi ptr [ %i.r, %bb.j ], [ @.str.170, %bb.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 232, ptr noundef %i.s)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.t = load ptr, ptr %3, align 8, !tbaa !43     ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.t, null
  br i1 %.not.i.i22, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit25

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.z, %bb.o ], [ %i.y, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.aa = load ptr, ptr %3, align 8, !tbaa !43    ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i23, label %_ZN7testing7MessageD2Ev.exit25, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24: ; preds = %bb.p
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(128) %i.aa) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit25

_ZN7testing7MessageD2Ev.exit25:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #13
  br label %bb.v

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !53  ; 4 uses
  %.not.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i26, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !41
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %8 = shl nuw nsw i64 1, %storemerge42
  %9 = and i64 %8, 53
  %.not = icmp eq i64 %9, 0
  br i1 %.not, label %bb.aj, label %bb.s

bb.s:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !60, !noalias !100
  %i.am = load i64, ptr %i.b, align 8, !tbaa !60, !noalias !100
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.w

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN7testing8internal18CmpHelperEQFailureImmEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef nonnull align 8 dereferenceable(8) %i.ak, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.w

_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.t, %bb.u
  %i.ao = load i8, ptr %5, align 8, !tbaa !35, !range !55, !noundef !56
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.ag, label %bb.x

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit25, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit25 ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.ak

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i29, label %_ZNK7testing15AssertionResult15failure_messageEv.exit30, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !40
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit30

_ZNK7testing15AssertionResult15failure_messageEv.exit30: ; preds = %bb.z, %bb.y
  %i.at = phi ptr [ %i.as, %bb.z ], [ @.str.170, %bb.y ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 234, ptr noundef %i.at)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit30
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.au = load ptr, ptr %6, align 8, !tbaa !43    ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.au, null
  br i1 %.not.i.i31, label %_ZN7testing7MessageD2Ev.exit33, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32: ; preds = %bb.ab
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(128) %i.au) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit33

_ZN7testing7MessageD2Ev.exit33:                   ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.ag

bb.ac:                                            ; preds = %bb.x
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit36

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit30
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #13
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn16 = phi { ptr, i32 } [ %i.ba, %bb.ae ], [ %i.az, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.bb = load ptr, ptr %6, align 8, !tbaa !43    ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i34, label %_ZN7testing7MessageD2Ev.exit36, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35: ; preds = %bb.af
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(128) %i.bb) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit36

_ZN7testing7MessageD2Ev.exit36:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35, %bb.af, %bb.ac
  %.pn16.pn = phi { ptr, i32 } [ %i.ay, %bb.ac ], [ %.pn16, %bb.af ], [ %.pn16, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #13
  br label %bb.ai

bb.ag:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareImmTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit33
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !53  ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i37, label %_ZN7testing15AssertionResultD2Ev.exit41, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38: ; preds = %bb.ah
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !41
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit41

_ZN7testing15AssertionResultD2Ev.exit41:          ; preds = %bb.ag, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN7testing7MessageD2Ev.exit36, %bb.w
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %_ZN7testing7MessageD2Ev.exit36 ], [ %i.aq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit41, %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !60
  %i.bm = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !60
  %i.bn = icmp ult i64 %i.bm, 11
  br i1 %i.bn, label %bb.c, label %bb.b, !llvm.loop !96

bb.ak:                                            ; preds = %bb.ai, %bb.v
  %.pn16.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn, %bb.ai ], [ %.pn.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  resume { ptr, i32 } %.pn16.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.testing::Message", align 8  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.a = load ptr, ptr %5, align 8, !tbaa !43
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %3, align 8, !tbaa !60
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef %i.c)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit unwind label %bb.d ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit:           ; preds = %bb.a
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !41
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr %5, align 8, !tbaa !43     ; 3 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !14
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  call void %i.m(ptr noundef nonnull align 8 dereferenceable(128) %i.j) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  ret void

bb.d:                                             ; preds = %bb.a, %_ZN7testing7MessagelsImEERS0_RKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = load ptr, ptr %4, align 8, !tbaa !40     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.e
  %i.s = load i64, ptr %i.q, align 8, !tbaa !41
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.t) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.d
  %.pn = phi { ptr, i32 } [ %i.n, %bb.d ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.o, %bb.e ]
  %i.u = load ptr, ptr %5, align 8, !tbaa !43     ; 3 uses
  %.not.i.i10 = icmp eq ptr %i.u, null
  br i1 %.not.i.i10, label %_ZN7testing7MessageD2Ev.exit12, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(128) %i.u) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit12

_ZN7testing7MessageD2Ev.exit12:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  resume { ptr, i32 } %.pn
}

declare noundef zeroext i1 @_ZN4bssl3der11ParseUint64ENS0_5InputEPm(ptr, i64, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4bssl3der4test31ParseValuesTest_ParseUint8_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %1 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

bb.c:                                             ; preds = %bb.a, %bb.aj
  %storemerge42 = phi i64 [ 0, %bb.a ], [ %i.bm, %bb.aj ] ; 2 uses
  %i.f = getelementptr inbounds nuw [32 x i8], ptr @_ZN4bssl3der4testL14kUint8TestDataE, i64 %storemerge42 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.2, i32 noundef 265, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.i = load i64, ptr %i.h, align 16, !tbaa !111
  %i.j = invoke noundef zeroext i1 @_ZN4bssl3der10ParseUint8ENS0_5InputEPh(ptr nonnull %i.g, i64 %i.i, ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = zext i1 %i.j to i8                       ; 2 uses
  store i8 %i.k, ptr %i.c, align 1, !tbaa !54
  %i.l = load i8, ptr %i.f, align 16, !tbaa !54, !range !55, !noalias !112, !noundef !56
  %i.m = icmp eq i8 %i.l, %i.k
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.96, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.g

_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.n = load i8, ptr %2, align 8, !tbaa !35, !range !55, !noundef !56
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.q, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.v

bb.h:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.j, %bb.i
  %i.s = phi ptr [ %i.r, %bb.j ], [ @.str.170, %bb.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 269, ptr noundef %i.s)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.t = load ptr, ptr %3, align 8, !tbaa !43     ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.t, null
  br i1 %.not.i.i22, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit25

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.z, %bb.o ], [ %i.y, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.aa = load ptr, ptr %3, align 8, !tbaa !43    ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i23, label %_ZN7testing7MessageD2Ev.exit25, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24: ; preds = %bb.p
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(128) %i.aa) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit25

_ZN7testing7MessageD2Ev.exit25:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #13
  br label %bb.v

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !53  ; 4 uses
  %.not.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i26, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !41
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %8 = shl nuw nsw i64 1, %storemerge42
  %9 = and i64 %8, 101
  %.not = icmp eq i64 %9, 0
  br i1 %.not, label %bb.aj, label %bb.s

bb.s:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !41, !noalias !113
  %i.am = load i8, ptr %i.b, align 1, !tbaa !41, !noalias !113
  %i.an = icmp eq i8 %i.al, %i.am
  br i1 %i.an, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.w

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIhhEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.93, ptr noundef nonnull align 1 dereferenceable(1) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.w

_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.t, %bb.u
  %i.ao = load i8, ptr %5, align 8, !tbaa !35, !range !55, !noundef !56
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.ag, label %bb.x

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit25, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit25 ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.ak

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %.not.i.i29 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i29, label %_ZNK7testing15AssertionResult15failure_messageEv.exit30, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !40
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit30

_ZNK7testing15AssertionResult15failure_messageEv.exit30: ; preds = %bb.z, %bb.y
  %i.at = phi ptr [ %i.as, %bb.z ], [ @.str.170, %bb.y ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 271, ptr noundef %i.at)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit30
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.au = load ptr, ptr %6, align 8, !tbaa !43    ; 3 uses
  %.not.i.i31 = icmp eq ptr %i.au, null
  br i1 %.not.i.i31, label %_ZN7testing7MessageD2Ev.exit33, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32: ; preds = %bb.ab
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(128) %i.au) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit33

_ZN7testing7MessageD2Ev.exit33:                   ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.ag

bb.ac:                                            ; preds = %bb.x
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit36

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit30
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #13
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn16 = phi { ptr, i32 } [ %i.ba, %bb.ae ], [ %i.az, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.bb = load ptr, ptr %6, align 8, !tbaa !43    ; 3 uses
  %.not.i.i34 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i34, label %_ZN7testing7MessageD2Ev.exit36, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35: ; preds = %bb.af
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(128) %i.bb) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit36

_ZN7testing7MessageD2Ev.exit36:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35, %bb.af, %bb.ac
  %.pn16.pn = phi { ptr, i32 } [ %i.ay, %bb.ac ], [ %.pn16, %bb.af ], [ %.pn16, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i35 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #13
  br label %bb.ai

bb.ag:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIhhTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit33
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !53  ; 4 uses
  %.not.i.i37 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i37, label %_ZN7testing15AssertionResultD2Ev.exit41, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38: ; preds = %bb.ah
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !41
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i38
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit41

_ZN7testing15AssertionResultD2Ev.exit41:          ; preds = %bb.ag, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN7testing7MessageD2Ev.exit36, %bb.w
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %_ZN7testing7MessageD2Ev.exit36 ], [ %i.aq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit41, %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !60
  %i.bm = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !60
  %i.bn = icmp ult i64 %i.bm, 11
  br i1 %i.bn, label %bb.c, label %bb.b, !llvm.loop !109

bb.ak:                                            ; preds = %bb.ai, %bb.v
  %.pn16.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn, %bb.ai ], [ %.pn.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  resume { ptr, i32 } %.pn16.pn.pn.pn
}

declare noundef zeroext i1 @_ZN4bssl3der10ParseUint8ENS0_5InputEPh(ptr, i64, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4bssl3der4test35ParseValuesTest_IsValidInteger_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 7 uses
  %1 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %6 = alloca %"class.testing::Message", align 8  ; 7 uses
  %7 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void

bb.c:                                             ; preds = %bb.a, %bb.aj
  %storemerge43 = phi i64 [ 0, %bb.a ], [ %i.bm, %bb.aj ] ; 2 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr @_ZN4bssl3der4testL23kIsValidIntegerTestDataE, i64 %storemerge43 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull @.str.2, i32 noundef 311, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !124
  %i.j = invoke noundef zeroext i1 @_ZN4bssl3der14IsValidIntegerENS0_5InputEPb(ptr nonnull %i.g, i64 %i.i, ptr noundef nonnull %i.b)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = zext i1 %i.j to i8                       ; 2 uses
  store i8 %i.k, ptr %i.c, align 1, !tbaa !54
  %i.l = load i8, ptr %i.f, align 8, !tbaa !54, !range !55, !noalias !125, !noundef !56
  %i.m = icmp eq i8 %i.l, %i.k
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2)
          to label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %2, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.99, ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.c)
          to label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit unwind label %bb.g

_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  %i.n = load i8, ptr %2, align 8, !tbaa !35, !range !55, !noundef !56
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.q, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  br label %bb.v

bb.h:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNK7testing15AssertionResult15failure_messageEv.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !40
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit

_ZNK7testing15AssertionResult15failure_messageEv.exit: ; preds = %bb.j, %bb.i
  %i.s = phi ptr [ %i.r, %bb.j ], [ @.str.170, %bb.i ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 316, ptr noundef %i.s)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.t = load ptr, ptr %3, align 8, !tbaa !43     ; 3 uses
  %.not.i.i22 = icmp eq ptr %i.t, null
  br i1 %.not.i.i22, label %_ZN7testing7MessageD2Ev.exit, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.l
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  call void %i.w(ptr noundef nonnull align 8 dereferenceable(128) %i.t) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.l, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  br label %bb.q

bb.m:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit25

bb.n:                                             ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #13
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.z, %bb.o ], [ %i.y, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %i.aa = load ptr, ptr %3, align 8, !tbaa !43    ; 3 uses
  %.not.i.i23 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i23, label %_ZN7testing7MessageD2Ev.exit25, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24: ; preds = %bb.p
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !14
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  call void %i.ad(ptr noundef nonnull align 8 dereferenceable(128) %i.aa) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit25

_ZN7testing7MessageD2Ev.exit25:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24, %bb.p, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.x, %bb.m ], [ %.pn, %bb.p ], [ %.pn, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #13
  br label %bb.v

bb.q:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit, %_ZN7testing7MessageD2Ev.exit
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !53  ; 4 uses
  %.not.i.i26 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i26, label %_ZN7testing15AssertionResultD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !40 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %i.ah = icmp eq ptr %i.af, %i.ag
  br i1 %i.ah, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.r
  %i.ai = load i64, ptr %i.ag, align 8, !tbaa !41
  %i.aj = add i64 %i.ai, 1
  call void @_ZdlPvm(ptr noundef %i.af, i64 noundef %i.aj) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit

_ZN7testing15AssertionResultD2Ev.exit:            ; preds = %bb.q, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %8 = shl nuw nsw i64 1, %storemerge43
  %9 = and i64 %8, 218
  %.not = icmp eq i64 %9, 0
  br i1 %.not, label %bb.aj, label %bb.s

bb.s:                                             ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !54, !range !55, !noalias !126, !noundef !56
  %i.am = load i8, ptr %i.b, align 1, !tbaa !54, !range !55, !noalias !126, !noundef !56
  %i.an = icmp eq i8 %i.al, %i.am
  br i1 %i.an, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5)
          to label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit29 unwind label %bb.w

bb.u:                                             ; preds = %bb.s
  invoke void @_ZN7testing8internal18CmpHelperEQFailureIbbEENS_15AssertionResultEPKcS4_RKT_RKT0_(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %5, ptr noundef nonnull @.str.100, ptr noundef nonnull @.str.101, ptr noundef nonnull align 1 dereferenceable(1) %i.ak, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit29 unwind label %bb.w

_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit29: ; preds = %bb.t, %bb.u
  %i.ao = load i8, ptr %5, align 8, !tbaa !35, !range !55, !noundef !56
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.ag, label %bb.x

bb.v:                                             ; preds = %_ZN7testing7MessageD2Ev.exit25, %bb.g
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %_ZN7testing7MessageD2Ev.exit25 ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.ak

bb.w:                                             ; preds = %bb.u, %bb.t
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.x:                                             ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.y unwind label %bb.ac

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !53  ; 2 uses
  %.not.i.i30 = icmp eq ptr %i.ar, null
  br i1 %.not.i.i30, label %_ZNK7testing15AssertionResult15failure_messageEv.exit31, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !40
  br label %_ZNK7testing15AssertionResult15failure_messageEv.exit31

_ZNK7testing15AssertionResult15failure_messageEv.exit31: ; preds = %bb.z, %bb.y
  %i.at = phi ptr [ %i.as, %bb.z ], [ @.str.170, %bb.y ]
  invoke void @_ZN7testing8internal12AssertHelperC1ENS_14TestPartResult4TypeEPKciS5_(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef 318, ptr noundef %i.at)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit31
  invoke void @_ZNK7testing8internal12AssertHelperaSERKNS_7MessageE(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ab unwind label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.au = load ptr, ptr %6, align 8, !tbaa !43    ; 3 uses
  %.not.i.i32 = icmp eq ptr %i.au, null
  br i1 %.not.i.i32, label %_ZN7testing7MessageD2Ev.exit34, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i33

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i33: ; preds = %bb.ab
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(128) %i.au) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit34

_ZN7testing7MessageD2Ev.exit34:                   ; preds = %bb.ab, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  br label %bb.ag

bb.ac:                                            ; preds = %bb.x
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %_ZN7testing7MessageD2Ev.exit37

bb.ad:                                            ; preds = %_ZNK7testing15AssertionResult15failure_messageEv.exit31
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.ae:                                            ; preds = %bb.aa
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal12AssertHelperD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #13
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.pn16 = phi { ptr, i32 } [ %i.ba, %bb.ae ], [ %i.az, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.bb = load ptr, ptr %6, align 8, !tbaa !43    ; 3 uses
  %.not.i.i35 = icmp eq ptr %i.bb, null
  br i1 %.not.i.i35, label %_ZN7testing7MessageD2Ev.exit37, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36: ; preds = %bb.af
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  call void %i.be(ptr noundef nonnull align 8 dereferenceable(128) %i.bb) #13, !call_target !52, !inline_history !0
  br label %_ZN7testing7MessageD2Ev.exit37

_ZN7testing7MessageD2Ev.exit37:                   ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36, %bb.af, %bb.ac
  %.pn16.pn = phi { ptr, i32 } [ %i.ay, %bb.ac ], [ %.pn16, %bb.af ], [ %.pn16, %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i36 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  call void @_ZN7testing15AssertionResultD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #13
  br label %bb.ai

bb.ag:                                            ; preds = %_ZN7testing8internal8EqHelper7CompareIbbTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_.exit29, %_ZN7testing7MessageD2Ev.exit34
  %i.bf = load ptr, ptr %i.e, align 8, !tbaa !53  ; 4 uses
  %.not.i.i38 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i38, label %_ZN7testing15AssertionResultD2Ev.exit42, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %i.bi = icmp eq ptr %i.bg, %i.bh
  br i1 %i.bi, label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39: ; preds = %bb.ah
  %i.bj = load i64, ptr %i.bh, align 8, !tbaa !41
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bg, i64 noundef %i.bk) #14
  br label %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40

_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i39
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef 32) #14
  br label %_ZN7testing15AssertionResultD2Ev.exit42

_ZN7testing15AssertionResultD2Ev.exit42:          ; preds = %bb.ag, %_ZNKSt14default_deleteINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.aj

bb.ai:                                            ; preds = %_ZN7testing7MessageD2Ev.exit37, %bb.w
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %_ZN7testing7MessageD2Ev.exit37 ], [ %i.aq, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN7testing15AssertionResultD2Ev.exit42, %_ZN7testing15AssertionResultD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.bl = load i64, ptr %i.a, align 8, !tbaa !60
  %i.bm = add i64 %i.bl, 1                        ; 3 uses
  store i64 %i.bm, ptr %i.a, align 8, !tbaa !60
  %i.bn = icmp ult i64 %i.bm, 8
  br i1 %i.bn, label %bb.c, label %bb.b, !llvm.loop !122

bb.ak:                                            ; preds = %bb.ai, %bb.v
  %.pn16.pn.pn.pn = phi { ptr, i32 } [ %.pn16.pn.pn, %bb.ai ], [ %.pn.pn.pn, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  resume { ptr, i32 } %.pn16.pn.pn.pn
}

declare noundef zeroext i1 @_ZN4bssl3der14IsValidIntegerENS0_5InputEPb(ptr, i64, ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4bssl3der4test52ParseValuesTest_ParseBitStringEmptyNoUnusedBits_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %1 = alloca %"class.std::optional", align 8     ; 10 uses
  %2 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %3 = alloca %"class.testing::Message", align 8  ; 7 uses
  %4 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %7 = alloca %"class.testing::Message", align 8  ; 7 uses
  %8 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %9 = alloca %"class.testing::AssertionResult", align 8 ; 9 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %10 = alloca %"class.testing::Message", align 8 ; 7 uses
  %11 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %12 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %13 = alloca %"class.testing::Message", align 8 ; 7 uses
  %14 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %16 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %17 = alloca %"class.testing::Message", align 8 ; 7 uses
  %18 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %20 = alloca %"class.testing::AssertionResult", align 8 ; 7 uses
  %21 = alloca %"class.testing::Message", align 8 ; 7 uses
  %22 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZN4bssl3der14ParseBitStringENS0_5InputE(ptr dead_on_unwind nonnull writable sret(%"class.std::optional") align 8 %1, ptr nonnull %i.a, i64 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.g = load i8, ptr %i.f, align 8, !tbaa !63, !range !55, !noundef !56 ; 2 uses
  %i.h = trunc nuw i8 %i.g to i1
end_hunk_0
