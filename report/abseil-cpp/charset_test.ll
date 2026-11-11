Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/charset_test?download=true
inline.NumInlined: 1029
inline.NumDeleted: 302
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7testing8internal18CmpHelperEQFailureINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEA4_cEENS_15AssertionResultEPKcSB_RKT_RKT0_:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !24
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12, %bb.d
  %.pn = phi { ptr, i32 } [ %i.l, %bb.d ], [ %i.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12 ], [ %i.m, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  %i.s = load ptr, ptr %5, align 8, !tbaa !39     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14
  %i.v = load i64, ptr %i.t, align 8, !tbaa !24
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_118Charmap_Range_TestEED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal noundef nonnull ptr @_ZN7testing8internal15TestFactoryImplIN12_GLOBAL__N_118Charmap_Range_TestEE10CreateTestEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #17 ; 4 uses
  invoke void @_ZN7testing4TestC2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN12_GLOBAL__N_118Charmap_Range_TestE, i64 16), ptr %i.a, align 8, !tbaa !12
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 16) #16
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_118Charmap_Range_TestD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN7testing4TestD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN12_GLOBAL__N_118Charmap_Range_Test8TestBodyEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.testing::Message", align 8  ; 8 uses
  %5 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %6 = alloca %"class.testing::ScopedTrace", align 1 ; 6 uses
  %7 = alloca %"class.testing::AssertionResult", align 8 ; 8 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %9 = alloca %"class.absl::lts_20260526::CharSet", align 8 ; 8 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %11 = alloca %"class.testing::Message", align 8 ; 7 uses
  %12 = alloca %"class.testing::internal::AssertHelper", align 8 ; 7 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(208) ptr @_Znwm(i64 noundef 208) #17 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) @constinit, i64 208, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  br label %bb.b

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %._crit_edge
  call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 208) #16
  ret void

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %.sroa.069.0.idx116 = phi i64 [ 0, %bb.a ], [ %.sroa.069.0.add, %._crit_edge ] ; 3 uses
  %.sroa.069.0.ptr.ptr117 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.069.0.idx116 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  invoke void @_ZN7testing11ScopedTraceC2ImEEPKciRKT_(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull @.str.2, i32 noundef 136, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.069.0.ptr.ptr117)
          to label %.lr.ph unwind label %bb.c

._crit_edge:                                      ; preds = %_ZN7testing15AssertionResultD2Ev.exit
  call void @_ZN7testing11ScopedTraceD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.sroa.069.0.add = add nuw nsw i64 %.sroa.069.0.idx116, 8 ; 2 uses
  %.not = icmp eq i64 %.sroa.069.0.add, 208
  br i1 %.not, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b, !llvm.loop !180

bb.c:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorImSaImEED2Ev.exit55

.lr.ph:                                           ; preds = %bb.b, %_ZN7testing15AssertionResultD2Ev.exit
  %.sroa.063.0.idx114 = phi i64 [ %.sroa.063.0.add, %_ZN7testing15AssertionResultD2Ev.exit ], [ %.sroa.069.0.idx116, %bb.b ] ; 2 uses
  %.sroa.063.0.ptr115 = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.063.0.idx114 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.lr.ph
  %i.n = load ptr, ptr %4, align 8, !tbaa !42
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load i64, ptr %.sroa.063.0.ptr115, align 8, !tbaa !25
  %i.q = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.o, i64 noundef %i.p)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit.i unwind label %bb.f ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit.i:         ; preds = %.noexc
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i
  invoke void @_ZN7testing11ScopedTrace9PushTraceEPKciNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 1 dereferenceable(1) %6, ptr noundef nonnull @.str.2, i32 noundef 138, ptr noundef nonnull align 8 %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %3, align 8, !tbaa !39     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.b
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.b, align 8, !tbaa !24
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.v = load ptr, ptr %4, align 8, !tbaa !42     ; 3 uses
  %.not.i.i.i19 = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i19, label %bb.h, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(128) %i.v) #15, !inline_history !181
  br label %bb.h

bb.f:                                             ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit.i, %.noexc
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

bb.g:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %3, align 8, !tbaa !39    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.b
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.g
  %i.ad = load i64, ptr %i.b, align 8, !tbaa !24
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i ], [ %i.aa, %bb.g ]
  %i.af = load ptr, ptr %4, align 8, !tbaa !42    ; 3 uses
  %.not.i.i10.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i10.i, label %_ZN7testing7MessageD2Ev.exit12.i, label %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i

_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(128) %i.af) #15, !inline_history !181
  br label %_ZN7testing7MessageD2Ev.exit12.i

_ZN7testing7MessageD2Ev.exit12.i:                 ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i11.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.body20

bb.h:                                             ; preds = %_ZNKSt14default_deleteINSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEEEclEPS5_.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #15
  %i.aj = load i64, ptr %.sroa.069.0.ptr.ptr117, align 8, !tbaa !25 ; 2 uses
  %i.ak = trunc i64 %i.aj to i8                   ; 7 uses
  %i.al = load i64, ptr %.sroa.063.0.ptr115, align 8, !tbaa !25 ; 2 uses
  %i.am = trunc i64 %i.al to i8                   ; 13 uses
  %.not5.i.i.i = icmp ult i8 %i.am, 63
  %i.an = add i64 %i.al, 1
  %i.ao = and i64 %i.an, 63
  %narrow.i = sub nuw nsw i64 64, %i.ao
  %i.ap = lshr i64 -1, %narrow.i                  ; 7 uses
  %i.aq = select i1 %.not5.i.i.i, i64 %i.ap, i64 -1 ; 2 uses
  %.not.i4.i.not.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i4.i.not.i, label %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit.thread.i, label %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit.i

_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit.thread.i: ; preds = %bb.h
  %.not.i.not.i24.i = icmp ult i8 %i.am, 64
  %.not5.i.i825.i = icmp ult i8 %i.am, 127
  %i.ar = select i1 %.not5.i.i825.i, i64 %i.ap, i64 -1
  %i.as = select i1 %.not.i.not.i24.i, i64 0, i64 %i.ar
  br label %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.thread.i

_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit.i: ; preds = %bb.h
  %.not5.i5.i.i = icmp ult i8 %i.ak, 64
  %13 = and i64 %i.aj, 63
  %i.at = sub nuw nsw i64 64, %13
  %i.au = lshr i64 -1, %i.at
  %i.av = xor i64 %i.au, -1                       ; 4 uses
  %i.aw = select i1 %.not5.i5.i.i, i64 %i.av, i64 0
  %i.ax = and i64 %i.aq, %i.aw                    ; 3 uses
  %.not.i.not.i.i = icmp ult i8 %i.am, 64
  %.not5.i.i8.i = icmp ult i8 %i.am, 127
  %i.ay = select i1 %.not5.i.i8.i, i64 %i.ap, i64 -1
  %i.az = select i1 %.not.i.not.i.i, i64 0, i64 %i.ay ; 2 uses
  %.not.i4.i9.i = icmp ugt i8 %i.ak, 64
  br i1 %.not.i4.i9.i, label %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.i, label %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.thread.i

_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.thread.i: ; preds = %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit.i, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit.thread.i
  %.ph.i = phi i64 [ %i.aq, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit.thread.i ], [ %i.ax, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit.i ]
  %.ph27.i = phi i64 [ %i.as, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit.thread.i ], [ %i.az, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit.i ]
  %.not.i.not.i1228.i = icmp sgt i8 %i.am, -1
  %.not5.i.i1329.i = icmp samesign ult i8 %i.am, -65
  %i.ba = select i1 %.not5.i.i1329.i, i64 %i.ap, i64 -1
  %i.bb = select i1 %.not.i.not.i1228.i, i64 0, i64 %i.ba
  br label %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.thread.i

_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.i: ; preds = %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit.i
  %.not5.i5.i10.i = icmp sgt i8 %i.ak, -1
  %i.bc = select i1 %.not5.i5.i10.i, i64 %i.av, i64 0
  %i.bd = and i64 %i.az, %i.bc                    ; 2 uses
  %.not.i.not.i12.i = icmp sgt i8 %i.am, -1
  %.not5.i.i13.i = icmp samesign ult i8 %i.am, -65
  %i.be = select i1 %.not5.i.i13.i, i64 %i.ap, i64 -1
  %i.bf = select i1 %.not.i.not.i12.i, i64 0, i64 %i.be ; 2 uses
  %.not.i4.i15.i = icmp ugt i8 %i.ak, -128
  br i1 %.not.i4.i15.i, label %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.i, label %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.thread.i

_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.thread.i: ; preds = %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.i, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.thread.i
  %.ph31.i = phi i64 [ %.ph27.i, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.thread.i ], [ %i.bd, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.i ]
  %.ph32.i = phi i64 [ %.ph.i, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.thread.i ], [ %i.ax, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.i ]
  %.ph33.i = phi i64 [ %i.bb, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.thread.i ], [ %i.bf, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.i ]
  %.not.i.not.i1834.i = icmp ult i8 %i.am, -64
  %.not5.i.i19.not35.i = icmp eq i8 %i.am, -1
  %i.bg = select i1 %.not5.i.i19.not35.i, i64 -1, i64 %i.ap
  %i.bh = select i1 %.not.i.not.i1834.i, i64 0, i64 %i.bg
  br label %bb.i

_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.i: ; preds = %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit11.i
  %.not5.i5.i16.i = icmp samesign ult i8 %i.ak, -64
  %i.bi = select i1 %.not5.i5.i16.i, i64 %i.av, i64 0
  %i.bj = and i64 %i.bf, %i.bi
  %.not.i.not.i18.i = icmp ult i8 %i.am, -64
  %.not5.i.i19.not.i = icmp eq i8 %i.am, -1
  %i.bk = select i1 %.not5.i.i19.not.i, i64 -1, i64 %i.ap
  %i.bl = select i1 %.not.i.not.i18.i, i64 0, i64 %i.bk
  %.not.i4.i21.i = icmp samesign ugt i8 %i.ak, -64
  %i.bm = select i1 %.not.i4.i21.i, i64 %i.av, i64 -1
  %spec.select = and i64 %i.bl, %i.bm
  br label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.i, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.thread.i
  %i.bn = phi i64 [ %.ph33.i, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.thread.i ], [ %i.bj, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.i ]
  %i.bo = phi i64 [ %.ph32.i, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.thread.i ], [ %i.ax, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.i ]
  %i.bp = phi i64 [ %.ph31.i, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.thread.i ], [ %i.bd, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.i ]
  %i.bq = phi i64 [ %i.bh, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.thread.i ], [ %spec.select, %_ZN4absl12lts_202605267CharSet12RangeForWordEccm.exit17.i ]
  store i64 %i.bo, ptr %9, align 8, !tbaa !25, !alias.scope !196
  store i64 %i.bp, ptr %i.c, align 8, !tbaa !25, !alias.scope !196
  store i64 %i.bn, ptr %i.d, align 8, !tbaa !25, !alias.scope !196
  store i64 %i.bq, ptr %i.e, align 8, !tbaa !25, !alias.scope !196
  call void @llvm.experimental.noalias.scope.decl(metadata !197)
  store ptr %i.f, ptr %8, align 8, !tbaa !49, !alias.scope !197
  store i64 0, ptr %i.g, align 8, !tbaa !40, !alias.scope !197
  store i8 0, ptr %i.f, align 8, !tbaa !24, !alias.scope !197
  br label %bb.j

bb.j:                                             ; preds = %bb.n, %bb.i
  %.09.i = phi i64 [ 0, %bb.i ], [ %i.cn, %bb.n ] ; 4 uses
  %i.br = trunc nuw i64 %.09.i to i8
  %i.bs = lshr i64 %.09.i, 6
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !25, !noalias !197
  %i.bv = and i64 %.09.i, 63
  %i.bw = lshr i64 %i.bu, %i.bv
  %i.bx = trunc i64 %i.bw to i1
  br i1 %i.bx, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.by = load i64, ptr %i.g, align 8, !tbaa !40, !alias.scope !197 ; 4 uses
  %i.bz = add i64 %i.by, 1                        ; 3 uses
  %i.ca = load ptr, ptr %8, align 8, !tbaa !39, !alias.scope !197 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.f
  br i1 %i.cb, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i26: ; preds = %bb.k
  %i.cc = icmp ult i64 %i.by, 16
  call void @llvm.assume(i1 %i.cc)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22: ; preds = %bb.k
  %i.cd = load i64, ptr %i.f, align 8, !tbaa !24, !alias.scope !197
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i26
  %i.ce = phi i64 [ %i.cd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i22 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i26 ]
  %i.cf = icmp ugt i64 %i.bz, %i.ce
  br i1 %i.cf, label %bb.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %i.by, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i unwind label %bb.m

.noexc.i:                                         ; preds = %bb.l
  %.pre.i.i = load ptr, ptr %8, align 8, !tbaa !39, !alias.scope !197
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i: ; preds = %.noexc.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.cg = phi ptr [ %.pre.i.i, %.noexc.i ], [ %i.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.by
  store i8 %i.br, ptr %i.ch, align 1, !tbaa !24
  store i64 %i.bz, ptr %i.g, align 8, !tbaa !40, !alias.scope !197
  %i.ci = load ptr, ptr %8, align 8, !tbaa !39, !alias.scope !197
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.bz
  store i8 0, ptr %i.cj, align 1, !tbaa !24
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ck = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cl = load ptr, ptr %8, align 8, !tbaa !39, !alias.scope !197 ; 2 uses
  %i.cm = icmp eq ptr %i.cl, %i.f
  br i1 %i.cm, label %.body27, label %.body27.sink.split

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9push_backEc.exit.i, %bb.j
  %i.cn = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cn, 256
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_17MembersB5cxx11ERKN4absl12lts_202605267CharSetE.exit, label %bb.j, !llvm.loop !1

_ZN12_GLOBAL__N_17MembersB5cxx11ERKN4absl12lts_202605267CharSetE.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %i.co = load i64, ptr %.sroa.069.0.ptr.ptr117, align 8, !tbaa !25
  %i.cp = trunc i64 %i.co to i8
  %i.cq = load i64, ptr %.sroa.063.0.ptr115, align 8, !tbaa !25
  %i.cr = trunc i64 %i.cq to i8
  store ptr %i.h, ptr %10, align 8, !tbaa !49, !alias.scope !198
  store i64 0, ptr %i.i, align 8, !tbaa !40, !alias.scope !198
  store i8 0, ptr %i.h, align 8, !tbaa !24, !alias.scope !198
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %_ZN12_GLOBAL__N_17MembersB5cxx11ERKN4absl12lts_202605267CharSetE.exit
  %.0.i = phi i8 [ %i.cp, %_ZN12_GLOBAL__N_17MembersB5cxx11ERKN4absl12lts_202605267CharSetE.exit ], [ %i.df, %bb.q ] ; 3 uses
  %i.cs = load i64, ptr %i.i, align 8, !tbaa !40, !alias.scope !198 ; 4 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load ptr, ptr %10, align 8, !tbaa !39, !alias.scope !198 ; 2 uses
  %i.cv = icmp eq ptr %i.cu, %i.h
  br i1 %i.cv, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34: ; preds = %bb.o
  %i.cw = icmp ult i64 %i.cs, 16
  call void @llvm.assume(i1 %i.cw)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29: ; preds = %bb.o
  %i.cx = load i64, ptr %i.h, align 8, !tbaa !24, !alias.scope !198
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34
  %i.cy = phi i64 [ %i.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i29 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i34 ]
  %i.cz = icmp ugt i64 %i.ct, %i.cy
  br i1 %i.cz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef %i.cs, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc.i32 unwind label %bb.r

.noexc.i32:                                       ; preds = %bb.p
  %.pre.i.i33 = load ptr, ptr %10, align 8, !tbaa !39, !alias.scope !198
  br label %bb.q

bb.q:                                             ; preds = %.noexc.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30
  %i.da = phi ptr [ %.pre.i.i33, %.noexc.i32 ], [ %i.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i30 ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs
  store i8 %.0.i, ptr %i.db, align 1, !tbaa !24
  store i64 %i.ct, ptr %i.i, align 8, !tbaa !40, !alias.scope !198
  %i.dc = load ptr, ptr %10, align 8, !tbaa !39, !alias.scope !198
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.ct
  store i8 0, ptr %i.dd, align 1, !tbaa !24
  %i.de = icmp eq i8 %.0.i, %i.cr
  %i.df = add i8 %.0.i, 1
  br i1 %i.de, label %_ZN12_GLOBAL__N_117ClosedRangeStringB5cxx11Ehh.exit, label %bb.o, !llvm.loop !188

bb.r:                                             ; preds = %bb.p
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %10, align 8, !tbaa !39, !alias.scope !198 ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.h
  br i1 %i.di, label %.body35, label %.body35.sink.split

_ZN12_GLOBAL__N_117ClosedRangeStringB5cxx11Ehh.exit: ; preds = %bb.q
  %i.dj = load i64, ptr %i.g, align 8, !tbaa !40, !noalias !199 ; 3 uses
  %i.dk = load i64, ptr %i.i, align 8, !tbaa !40, !noalias !199
  %i.dl = icmp eq i64 %i.dj, %i.dk
  br i1 %i.dl, label %bb.s, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i

bb.s:                                             ; preds = %_ZN12_GLOBAL__N_117ClosedRangeStringB5cxx11Ehh.exit
  %i.dm = icmp eq i64 %i.dj, 0
  br i1 %i.dm, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.s
  %i.dn = load ptr, ptr %10, align 8, !tbaa !39, !noalias !199
  %i.do = load ptr, ptr %8, align 8, !tbaa !39, !noalias !199
  %bcmp.i.i.i = call i32 @bcmp(ptr %i.do, ptr %i.dn, i64 %i.dj), !noalias !199
  %i.dp = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.dp, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %bb.s
  invoke void @_ZN7testing16AssertionSuccessEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7)
          to label %_ZN7testing8internal8EqHelper7CompareINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_TnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSI_RKSA_RKSB_.exit unwind label %bb.x

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %_ZN12_GLOBAL__N_117ClosedRangeStringB5cxx11Ehh.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15, !noalias !200
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %.noexc60 unwind label %bb.x

.noexc60:                                         ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread6.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15, !noalias !200
  invoke void @_ZN7testing13PrintToStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES6_RKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES7_RKT_RKT0_.exit.i unwind label %bb.u, !noalias !200

_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES7_RKT_RKT0_.exit.i: ; preds = %.noexc60
  invoke void @_ZN7testing8internal9EqFailureEPKcS2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_b(ptr dead_on_unwind nonnull writable sret(%"class.testing::AssertionResult") align 8 %7, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %_ZN7testing8internal33FormatForComparisonFailureMessageINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EES7_RKT_RKT0_.exit.i
  %i.dq = load ptr, ptr %2, align 8, !tbaa !39, !noalias !200 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, %i.j
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57: ; preds = %bb.t
  %i.ds = load i64, ptr %i.j, align 8, !tbaa !24, !noalias !200
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.dt) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i57
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15, !noalias !200
  %i.du = load ptr, ptr %1, align 8, !tbaa !39, !noalias !200 ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.k
  br i1 %i.dv, label %.noexc38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i58
  %i.dw = load i64, ptr %i.k, align 8, !tbaa !24, !noalias !200
  %i.dx = add i64 %i.dw, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dx) #16
  br label %.noexc38

bb.u:                                             ; preds = %.noexc60
  %i.dy = landingpad { ptr, i32 }
end_hunk_0
