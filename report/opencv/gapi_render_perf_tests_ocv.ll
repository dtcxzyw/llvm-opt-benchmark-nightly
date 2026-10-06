Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/gapi_render_perf_tests_ocv?download=true
inline.NumInlined: 6261
inline.NumDeleted: 2450
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN7testing8internal26CartesianProductGenerator5IN2cv5Size_IiEENS2_5Rect_IiEENS2_7Scalar_IdEEdSt6vectorINS2_11GCompileArgESaISA_EEE8IteratorC2ERKSE_:bb.a
  tail call void @_ZN7testing8internal13ParamIteratorIN2cv7Scalar_IdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bh) #24
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.x
  %.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn, %bb.al ], [ %i.dn, %bb.x ]
  tail call void @_ZN7testing8internal13ParamIteratorIN2cv7Scalar_IdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ba) #24
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.w
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn, %bb.am ], [ %i.dm, %bb.w ]
  tail call void @_ZN7testing8internal13ParamIteratorIN2cv7Scalar_IdEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.at) #24
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.v
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.an ], [ %i.dl, %bb.v ]
  tail call void @_ZN7testing8internal13ParamIteratorIN2cv5Rect_IiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.am) #24
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.u
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ao ], [ %i.dk, %bb.u ]
  tail call void @_ZN7testing8internal13ParamIteratorIN2cv5Rect_IiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.af) #24
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.t
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ap ], [ %i.dj, %bb.t ]
  tail call void @_ZN7testing8internal13ParamIteratorIN2cv5Rect_IiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #24
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.s
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.aq ], [ %i.di, %bb.s ]
  tail call void @_ZN7testing8internal13ParamIteratorIN2cv5Size_IiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #24
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.r
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ar ], [ %i.dh, %bb.r ]
  tail call void @_ZN7testing8internal13ParamIteratorIN2cv5Size_IiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.k) #24
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.q
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.as ], [ %i.dg, %bb.q ]
  tail call void @_ZN7testing8internal13ParamIteratorIN2cv5Size_IiEEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.d) #24
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN7testing8internal27CheckedDowncastToActualTypeIKNS0_26CartesianProductGenerator5IN2cv5Size_IiEENS3_5Rect_IiEENS3_7Scalar_IdEEdSt6vectorINS3_11GCompileArgESaISB_EEE8IteratorEKNS0_22ParamIteratorInterfaceISt5tupleIJS5_S7_S9_dSD_EEEEEEPT_PT0_(ptr noundef %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.testing::internal::GTestLog", align 4 ; 6 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__cxa_bad_typeid() #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !133
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !370  ; 3 uses
  %i.g = icmp eq ptr %i.f, @_ZTSN7testing8internal26CartesianProductGenerator5IN2cv5Size_IiEENS2_5Rect_IiEENS2_7Scalar_IdEEdSt6vectorINS2_11GCompileArgESaISA_EEE8IteratorE
  br i1 %i.g, label %_ZNKSt9type_infoeqERKS_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i8, ptr %i.f, align 1, !tbaa !142
  %.not.i = icmp eq i8 %i.h, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(140) @_ZTSN7testing8internal26CartesianProductGenerator5IN2cv5Size_IiEENS2_5Rect_IiEENS2_7Scalar_IdEEdSt6vectorINS2_11GCompileArgESaISA_EEE8IteratorE) #24
  %i.j = icmp eq i32 %i.i, 0
  br label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i1 [ true, %bb.c ], [ false, %bb.d ], [ %i.j, %bb.e ]
  %i.k = tail call noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext %.0.i)
  br i1 %i.k, label %bb.h, label %bb.f

bb.f:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  call void @_ZN7testing8internal8GTestLogC1ENS0_16GTestLogSeverityEPKci(ptr noundef nonnull align 4 dereferenceable(4) %1, i32 noundef 3, ptr noundef nonnull @.str.39, i32 noundef 2881)
  %i.l = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cerr, ptr noundef nonnull @.str.43, i64 noundef 51)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit unwind label %bb.g ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %bb.f
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing8internal8GTestLogD1Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %1) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  resume { ptr, i32 } %i.m

bb.h:                                             ; preds = %_ZNKSt9type_infoeqERKS_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit
  %i.n = call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN7testing8internal22ParamIteratorInterfaceISt5tupleIJN2cv5Size_IiEENS3_5Rect_IiEENS3_7Scalar_IdEEdSt6vectorINS3_11GCompileArgESaISB_EEEEEE, ptr nonnull @_ZTIN7testing8internal26CartesianProductGenerator5IN2cv5Size_IiEENS2_5Rect_IiEENS2_7Scalar_IdEEdSt6vectorINS2_11GCompileArgESaISA_EEE8IteratorE, i64 0) #24
  ret ptr %i.n
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing8internal16DefaultParamNameISt5tupleIJN2cv5Size_IiEENS3_5Rect_IiEENS3_7Scalar_IdEEdSt6vectorINS3_11GCompileArgESaISB_EEEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_13TestParamInfoIT_EE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(96) %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::Message", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @_ZN7testing7MessageC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %2, align 8, !tbaa !469
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.a, align 8, !tbaa !141
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.d)
          to label %_ZN7testing7MessagelsImEERS0_RKT_.exit unwind label %bb.g ; 0 uses

_ZN7testing7MessagelsImEERS0_RKT_.exit:           ; preds = %bb.a
  invoke void @_ZNK7testing7Message9GetStringB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %_ZN7testing7MessagelsImEERS0_RKT_.exit
  %i.f = load ptr, ptr %2, align 8, !tbaa !469
  %.not.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = invoke noundef zeroext i1 @_ZN7testing8internal6IsTrueEb(i1 noundef zeroext true)
          to label %.noexc.i.i unwind label %bb.f

.noexc.i.i:                                       ; preds = %bb.c
  br i1 %i.g, label %bb.d, label %_ZN7testing7MessageD2Ev.exit

bb.d:                                             ; preds = %.noexc.i.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !469    ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN7testing7MessageD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !133
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  call void %i.l(ptr noundef nonnull align 8 dereferenceable(128) %i.h) #24, !inline_history !75
  br label %_ZN7testing7MessageD2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #26
  unreachable

_ZN7testing7MessageD2Ev.exit:                     ; preds = %bb.b, %.noexc.i.i, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.g:                                             ; preds = %bb.a, %_ZN7testing7MessagelsImEERS0_RKT_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7testing7MessageD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7testing6ValuesISt6vectorIN2cv6Point_IiEESaIS4_EEEENS_8internal11ValueArray1IT_EES9_(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::ValueArray1.367") align 8 %0, ptr noundef align 8 %1) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !252  ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !250    ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.f, 9223372036854775800
  br i1 %i.g, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i, !prof !253

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #28
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.b
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #27
  %.pre = load ptr, ptr %1, align 8, !tbaa !254
  %.pre18 = load ptr, ptr %i.a, align 8, !tbaa !254
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i, %bb.a
  %i.i = phi ptr [ %i.b, %bb.a ], [ %.pre18, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  %i.j = phi ptr [ %i.c, %bb.a ], [ %.pre, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i ] ; 3 uses
  %i.k = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i ] ; 9 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f
  %i.m = ptrtoaddr ptr %i.j to i64
  %i.n = ptrtoaddr ptr %i.i to i64
  %.not7.i.i.i.i.i = icmp eq ptr %i.j, %i.i
  br i1 %.not7.i.i.i.i.i, label %.noexc2.thread, label %.lr.ph.i.i.i.i.i

.noexc2.thread:                                   ; preds = %bb.c
  %i.o = ptrtoint ptr %i.k to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %.loopexit

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.c, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.k, %bb.c ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i.i ], [ %i.j, %bb.c ] ; 2 uses
  %i.p = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !159
  store i64 %i.p, ptr %.09.i.i.i.i.i, align 4, !tbaa !159
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.q, %i.i
  br i1 %.not.i.i.i.i.i, label %bb.d, label %.lr.ph.i.i.i.i.i, !llvm.loop !4

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.v = icmp ugt i64 %i.u, 9223372036854775800
  br i1 %i.v, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !253

.noexc.i.i.i:                                     ; preds = %bb.d
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #28
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.d
  %i.w = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #27
          to label %.noexc2 unwind label %bb.f    ; 4 uses

.noexc2:                                          ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.w, ptr %0, align 8, !tbaa !250
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.x, ptr %i.y, align 8, !tbaa !251
  %i.z = add i64 %i.n, -8
  %i.aa = sub i64 %i.z, %i.m
  %i.ab = and i64 %i.aa, -8
  %i.ac = add i64 %i.ab, 8                        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.w, ptr align 4 %i.k, i64 %i.ac, i1 false), !tbaa !159
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ac
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc2, %.noexc2.thread
  %i.ad = phi i64 [ %i.o, %.noexc2.thread ], [ %i.t, %.noexc2 ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc2.thread ], [ %scevgep, %.noexc2 ]
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %2, align 8, !tbaa !252
  %.not.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ae = ptrtoint ptr %i.l to i64
  %i.af = sub i64 %i.ae, %i.ad
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.af) #25
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit:    ; preds = %.loopexit, %bb.e
  ret void

bb.f:                                             ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IiEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %.not.i.i.i3 = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit4, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.f) #25
  br label %_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit4

_ZNSt6vectorIN2cv6Point_IiEESaIS2_EED2Ev.exit4:   ; preds = %bb.f, %bb.g
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7testing8internal23CartesianProductHolder7INS0_11ValueArray3IN2cv5Size_IiEES5_S5_EENS0_11ValueArray1ISt6vectorINS3_6Point_IiEESaISA_EEEENS7_INS3_7Scalar_IdEEEENS7_IiEENS7_INS3_9LineTypesEEESH_NS7_IS8_INS3_11GCompileArgESaISK_EEEEEcvNS0_14ParamGeneratorISt5tupleIJT_T0_T1_T2_T3_T4_T5_EEEEIS5_SC_SF_iiiSM_EEv(ptr dead_on_unwind noalias writable sret(%"class.testing::internal::ParamGenerator.89") align 8 %0, ptr noundef nonnull align 8 dereferenceable(120) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.testing::internal::ParamGenerator.142", align 8 ; 8 uses
  %3 = alloca %"class.testing::internal::ParamGenerator.371", align 8 ; 8 uses
  %4 = alloca %"class.testing::internal::ParamGenerator.148", align 8 ; 8 uses
  %5 = alloca %"class.testing::internal::ParamGenerator.146", align 8 ; 8 uses
  %6 = alloca %"class.testing::internal::ParamGenerator.146", align 8 ; 8 uses
  %7 = alloca %"class.testing::internal::ParamGenerator.146", align 8 ; 8 uses
  %8 = alloca %"class.testing::internal::ParamGenerator.152", align 8 ; 8 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #27 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1741)
  %i.b = load <2 x i64>, ptr %1, align 8, !tbaa !159, !noalias !1741
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !159, !noalias !1741
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  %i.e = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc unwind label %bb.az    ; 6 uses

.noexc:                                           ; preds = %bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN2cv5Size_IiEEEE, i64 16), ptr %i.e, align 8, !tbaa !133, !noalias !1744
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false), !noalias !1744
  %i.g = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.b unwind label %.body.i.i.i, !noalias !1744 ; 4 uses

.body.i.i.i:                                      ; preds = %.noexc
  %i.h = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef 32) #25, !noalias !1744
  br label %bb.bj

bb.b:                                             ; preds = %.noexc
  store ptr %i.g, ptr %i.f, align 8, !tbaa !266, !noalias !1744
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.i, ptr %i.j, align 8, !tbaa !267, !noalias !1744
  store <2 x i64> %i.b, ptr %i.g, align 4, !tbaa !159, !noalias !1744
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !159, !noalias !1744
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.i, ptr %i.k, align 8, !tbaa !268, !noalias !1744
  store ptr %i.e, ptr %2, align 8, !tbaa !273, !alias.scope !1744
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  store ptr %i.l, ptr %i.l, align 8, !tbaa !274, !alias.scope !1744
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  invoke void @_ZNK7testing8internal11ValueArray1ISt6vectorIN2cv6Point_IiEESaIS5_EEEcvNS0_14ParamGeneratorIT_EEIS7_EEv(ptr dead_on_unwind nonnull writable sret(%"class.testing::internal::ParamGenerator.371") align 8 %3, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %bb.c unwind label %bb.ba

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.experimental.noalias.scope.decl(metadata !1745)
  %i.o = load <2 x double>, ptr %i.n, align 8, !tbaa !164, !noalias !1745
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = load <2 x double>, ptr %i.p, align 8, !tbaa !164, !noalias !1745
  call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  %i.r = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc25 unwind label %bb.bb  ; 6 uses

.noexc25:                                         ; preds = %bb.c
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIN2cv7Scalar_IdEEEE, i64 16), ptr %i.r, align 8, !tbaa !133, !noalias !1748
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i8 0, i64 24, i1 false), !noalias !1748
  %i.t = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %bb.d unwind label %.body.i.i.i24, !noalias !1748 ; 4 uses

.body.i.i.i24:                                    ; preds = %.noexc25
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef 32) #25, !noalias !1748
  br label %.body26

bb.d:                                             ; preds = %.noexc25
  store ptr %i.t, ptr %i.s, align 8, !tbaa !288, !noalias !1748
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  store ptr %i.v, ptr %i.w, align 8, !tbaa !289, !noalias !1748
  store <2 x double> %i.o, ptr %i.t, align 8, !tbaa !164, !noalias !1748
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store <2 x double> %i.q, ptr %i.x, align 8, !tbaa !164, !noalias !1748
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store ptr %i.v, ptr %i.y, align 8, !tbaa !290, !noalias !1748
  store ptr %i.r, ptr %4, align 8, !tbaa !293, !alias.scope !1748
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store ptr %i.z, ptr %i.z, align 8, !tbaa !274, !alias.scope !1748
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80
  call void @llvm.experimental.noalias.scope.decl(metadata !1749)
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !166, !noalias !1749
  call void @llvm.experimental.noalias.scope.decl(metadata !1750)
  call void @llvm.experimental.noalias.scope.decl(metadata !1751)
  %i.ac = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc29 unwind label %bb.bc  ; 6 uses

.noexc29:                                         ; preds = %bb.d
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIiEE, i64 16), ptr %i.ac, align 8, !tbaa !133, !noalias !1752
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i8 0, i64 24, i1 false), !noalias !1752
  %i.ae = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #27
          to label %bb.e unwind label %.body.i.i.i28, !noalias !1752 ; 3 uses

.body.i.i.i28:                                    ; preds = %.noexc29
  %i.af = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef 32) #25, !noalias !1752
  br label %.body30

bb.e:                                             ; preds = %.noexc29
  store ptr %i.ae, ptr %i.ad, align 8, !tbaa !280, !noalias !1752
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !281, !noalias !1752
  store i32 %i.ab, ptr %i.ae, align 4, !tbaa !159, !noalias !1752
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store ptr %i.ag, ptr %i.ai, align 8, !tbaa !282, !noalias !1752
  store ptr %i.ac, ptr %5, align 8, !tbaa !285, !alias.scope !1752
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store ptr %i.aj, ptr %i.aj, align 8, !tbaa !274, !alias.scope !1752
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 84
  call void @llvm.experimental.noalias.scope.decl(metadata !1753)
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !169, !noalias !1753
  call void @llvm.experimental.noalias.scope.decl(metadata !1754)
  call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  %i.am = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc33 unwind label %bb.bd  ; 6 uses

.noexc33:                                         ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIiEE, i64 16), ptr %i.am, align 8, !tbaa !133, !noalias !1756
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false), !noalias !1756
  %i.ao = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #27
          to label %bb.f unwind label %.body.i.i.i32, !noalias !1756 ; 3 uses

.body.i.i.i32:                                    ; preds = %.noexc33
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef 32) #25, !noalias !1756
  br label %.body34

bb.f:                                             ; preds = %.noexc33
  store ptr %i.ao, ptr %i.an, align 8, !tbaa !280, !noalias !1756
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  store ptr %i.aq, ptr %i.ar, align 8, !tbaa !281, !noalias !1756
  store i32 %i.al, ptr %i.ao, align 4, !tbaa !159, !noalias !1756
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store ptr %i.aq, ptr %i.as, align 8, !tbaa !282, !noalias !1756
  store ptr %i.am, ptr %6, align 8, !tbaa !285, !alias.scope !1756
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  store ptr %i.at, ptr %i.at, align 8, !tbaa !274, !alias.scope !1756
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.experimental.noalias.scope.decl(metadata !1757)
  %i.av = load i32, ptr %i.au, align 8, !tbaa !166, !noalias !1757
  call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  call void @llvm.experimental.noalias.scope.decl(metadata !1759)
  %i.aw = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #27
          to label %.noexc37 unwind label %bb.be  ; 6 uses

.noexc37:                                         ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN7testing8internal30ValuesInIteratorRangeGeneratorIiEE, i64 16), ptr %i.aw, align 8, !tbaa !133, !noalias !1760
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false), !noalias !1760
  %i.ay = invoke noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #27
          to label %bb.g unwind label %.body.i.i.i36, !noalias !1760 ; 3 uses

.body.i.i.i36:                                    ; preds = %.noexc37
  %i.az = landingpad { ptr, i32 }
end_hunk_0
