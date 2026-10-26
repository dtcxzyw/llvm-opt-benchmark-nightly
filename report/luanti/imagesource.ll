Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/imagesource?download=true
inline.NumInlined: 1740
inline.NumDeleted: 374
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:bb.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZL15unescape_stringB5cxx11St17basic_string_viewIcSt11char_traitsIcEEc(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %1, ptr %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !61
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store i64 0, ptr %i.b, align 8, !tbaa !44
  store i8 0, ptr %i.a, align 8, !tbaa !33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
          to label %.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.lr.ph

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.lr.ph: ; preds = %.preheader
  %i.c = ptrtoint ptr %2 to i64
  br label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.lr.ph, %bb.e
  %.01242 = phi i64 [ 0, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i.lr.ph ], [ %i.ak, %bb.e ] ; 5 uses
  %i.d = sub nuw i64 %1, %.01242                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.01242 ; 2 uses
  %i.f = tail call ptr @memchr(ptr noundef %i.e, i32 noundef 92, i64 noundef %i.d) #23 ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = sub i64 %i.g, %i.c                       ; 4 uses
  %i.i = icmp eq i64 %i.h, -1
  br i1 %i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, label %bb.c

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit, %bb.e, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.012.lcssa = phi i64 [ %.01242, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i ], [ %.01242, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit ], [ %i.ak, %bb.e ] ; 3 uses
  %i.j = icmp ugt i64 %.012.lcssa, %1
  br i1 %i.j, label %bb.b, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread.thread

bb.b:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, i64 noundef %.012.lcssa, i64 noundef %1) #25
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread.thread: ; preds = %.preheader, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread
  %.012.lcssa55 = phi i64 [ %.012.lcssa, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread ], [ 0, %.preheader ] ; 2 uses
  %i.k = sub nuw i64 %1, %.012.lcssa55            ; 2 uses
  %i.l = load i64, ptr %i.b, align 8, !tbaa !44
  %i.m = sub i64 4611686018427387903, %i.l
  %i.n = icmp ult i64 %i.m, %i.k
  br i1 %i.n, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i

.invoke:                                          ; preds = %bb.c, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread.thread
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.89) #25
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i: ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread.thread
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.012.lcssa55
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.o, i64 noundef %i.k)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i
  ret void

bb.c:                                             ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit
  %i.q = sub i64 %i.h, %.01242
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.q) ; 2 uses
  %i.r = load i64, ptr %i.b, align 8, !tbaa !44
  %i.s = sub i64 4611686018427387903, %i.r
  %i.t = icmp ult i64 %i.s, %.sroa.speculated.i
  br i1 %i.t, label %.invoke, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i22

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i22: ; preds = %bb.c
  %i.u = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.e, i64 noundef %.sroa.speculated.i)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i22
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %i.x = load i8, ptr %i.w, align 1, !tbaa !33
  %i.y = load i64, ptr %i.b, align 8, !tbaa !44   ; 4 uses
  %i.z = add i64 %i.y, 1                          ; 3 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.a
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit27
  %i.ac = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.ac)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEpLISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit27
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  %i.ae = phi i64 [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i ]
  %i.af = icmp ugt i64 %i.z, %i.ae
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.y, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %bb.d
  %.pre.i.i = load ptr, ptr %0, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %.noexc28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i
  %i.ag = phi ptr [ %.pre.i.i, %.noexc28 ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.y
  store i8 %i.x, ptr %i.ah, align 1, !tbaa !33
  store i64 %i.z, ptr %i.b, align 8, !tbaa !44
  %i.ai = load ptr, ptr %0, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.z
  store i8 0, ptr %i.aj, align 1, !tbaa !33
  %i.ak = add i64 %i.h, 2                         ; 3 uses
  %i.al = icmp ult i64 %i.ak, %1
  br i1 %i.al, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE13find_first_ofEcm.exit.thread, !llvm.loop !180

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i22, %.invoke, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendISt17basic_string_viewIcS2_EEENSt9enable_ifIXsr6__and_ISt14is_convertibleIRKT_S7_ESt6__not_IS9_IPSB_PKS4_EESE_IS9_ISC_PKcEEEE5valueERS4_E4typeESC_.exit.i, %bb.a
  %lpad.loopexit.split-lp1 = landingpad { ptr, i32 }
          cleanup
  %i.am = load ptr, ptr %0, align 8, !tbaa !32    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.a
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !33
  %i.ap = add i64 %i.ao, 1
  tail call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %lpad.loopexit.split-lp1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11BasicStrfndIcE8next_escERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEc(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i8 noundef signext %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !110  ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !44
  %.not = icmp ult i64 %i.c, %i.e
  br i1 %.not, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.pre = load i64, ptr %i.f, align 8, !tbaa !44
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !61
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8, !tbaa !44
  store i8 0, ptr %i.g, align 8, !tbaa !33
  br label %bb.k

bb.c:                                             ; preds = %.preheader, %bb.g
  %i.i = phi i64 [ %i.c, %.preheader ], [ %i.q, %bb.g ]
  %i.j = phi i64 [ %.pre, %.preheader ], [ %i.p, %bb.g ] ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %2, align 8, !tbaa !32
  %i.m = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.l, i64 noundef %i.i, i64 noundef %i.j) #23 ; 5 uses
  %i.n = icmp eq i64 %i.m, -1
  br i1 %i.n, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = load i64, ptr %i.d, align 8, !tbaa !44   ; 3 uses
  store i64 %i.o, ptr %i.b, align 8, !tbaa !110
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.p = load i64, ptr %i.f, align 8, !tbaa !44   ; 2 uses
  %i.q = add i64 %i.p, %i.m                       ; 2 uses
  store i64 %i.q, ptr %i.b, align 8, !tbaa !110
  %.not11 = icmp eq i64 %i.m, 0
  br i1 %.not11, label %.critedge.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %1, align 8, !tbaa !32
  %i.s = getelementptr i8, ptr %i.r, i64 %i.m
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !tbaa !33
  %i.v = icmp eq i8 %i.u, %3
  br i1 %i.v, label %bb.c, label %.critedge.loopexit, !llvm.loop !181

.critedge.loopexit:                               ; preds = %bb.g, %bb.f
  %.pre12 = load i64, ptr %i.d, align 8, !tbaa !44, !noalias !184
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.e
  %i.w = phi i64 [ %i.o, %bb.e ], [ %.pre12, %.critedge.loopexit ] ; 3 uses
  %.0 = phi i64 [ %i.o, %bb.e ], [ %i.m, %.critedge.loopexit ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  %i.x = icmp ugt i64 %i.c, %i.w
  br i1 %i.x, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.h:                                             ; preds = %.critedge
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.104, ptr noundef nonnull @.str.103, i64 noundef %i.c, i64 noundef %i.w) #25, !noalias !184
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %.critedge
  %i.y = sub i64 %.0, %i.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !61, !alias.scope !184
  %i.aa = load ptr, ptr %1, align 8, !tbaa !32, !noalias !184
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.c ; 2 uses
  %i.ac = sub nuw i64 %i.w, %i.c
  %spec.select.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.y, i64 %i.ac) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23, !noalias !184
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !103, !noalias !184
  %i.ad = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.ad, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ae = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !32, !alias.scope !184
  %i.af = load i64, ptr %i.a, align 8, !tbaa !103, !noalias !184
  store i64 %i.af, ptr %i.z, align 8, !tbaa !33, !alias.scope !184
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ag = phi ptr [ %i.ae, %.noexc10.i.i ], [ %i.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.ah = load i8, ptr %i.ab, align 1, !tbaa !33
  store i8 %i.ah, ptr %i.ag, align 1, !tbaa !33
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.ab, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.ai = load i64, ptr %i.a, align 8, !tbaa !103, !noalias !184 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !44, !alias.scope !184
  %i.ak = load ptr, ptr %0, align 8, !tbaa !32, !alias.scope !184
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.ai
  store i8 0, ptr %i.al, align 1, !tbaa !33
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23, !noalias !184
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRN4core8vector2dIiEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79     ; 5 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %i.a, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !86
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %0, align 8, !tbaa !79
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.i = phi ptr [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %1, align 4, !tbaa !108 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull @.str.106, i64 noundef 1) ; 0 uses
  %i.k = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.i, i32 noundef %.sroa.0.0.extract.trunc.i) ; 2 uses
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull @.str.20, i64 noundef 1) ; 0 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.k, i32 noundef %.sroa.2.0.extract.trunc.i)
  %i.n = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.m, ptr noundef nonnull @.str.107, i64 noundef 1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret ptr %0
}

; Function Attrs: uwtable
define dso_local noundef ptr @_ZN11ImageSource13generateImageESt17basic_string_viewIcSt11char_traitsIcEERSt3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessIS8_ESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %1, ptr %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca ptr, align 8                      ; 4 uses
  %i.j = alloca ptr, align 8                      ; 4 uses
  %i.k = alloca ptr, align 8                      ; 4 uses
  %i.l = alloca ptr, align 8                      ; 4 uses
  %i.m = alloca ptr, align 8                      ; 4 uses
  %i.n = alloca ptr, align 8                      ; 4 uses
  %i.o = alloca ptr, align 8                      ; 4 uses
  %i.p = alloca ptr, align 8                      ; 4 uses
  %4 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %i.q = alloca ptr, align 8                      ; 8 uses
  %5 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  store i64 %1, ptr %4, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.r, align 8
  %i.s = trunc i64 %1 to i32                      ; 2 uses
  %.034151 = add i32 %i.s, -1                     ; 2 uses
  %i.t = icmp slt i32 %.034151, 0
  br i1 %i.t, label %.thread204, label %.lr.ph

.thread204:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  br label %.sink.split

.lr.ph:                                           ; preds = %bb.a, %bb.s
  %.034155 = phi i32 [ %.034, %bb.s ], [ %.034151, %bb.a ] ; 6 uses
  %.034.in153 = phi i32 [ %.034155, %bb.s ], [ %i.s, %bb.a ]
  %.036152 = phi i8 [ %.137, %bb.s ], [ 0, %bb.a ] ; 7 uses
  %.not = icmp eq i32 %.034155, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.u = add i32 %.034.in153, -2
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !33
  %i.y = icmp eq i8 %i.x, 92
  br i1 %i.y, label %bb.s, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.z = zext nneg i32 %.034155 to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !33
  switch i8 %i.ab, label %bb.s [
    i8 94, label %bb.d
    i8 40, label %bb.e
    i8 41, label %bb.r
  ]

bb.d:                                             ; preds = %bb.c
  %i.ac = icmp eq i8 %.036152, 0
  br i1 %i.ac, label %.critedge.thread201, label %bb.s

bb.e:                                             ; preds = %bb.c
  %i.ad = icmp eq i8 %.036152, 0
  br i1 %i.ad, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %.not.i = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i, label %_ZTW11errorstream.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit

_ZTW11errorstream.exit:                           ; preds = %bb.f, %bb.g
  %i.ae = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !75, !nonnull !76, !align !77 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !41
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef zeroext i1 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.af), !inline_history !7
  %.v.i = select i1 %i.ai, i64 976, i64 984
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.v.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr @.str.76, ptr %i.p, align 8, !tbaa !78
  %i.ak = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store ptr @.str.77, ptr %i.o, align 8, !tbaa !78
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull align 8 dereferenceable(8) %i.o) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !79 ; 5 uses
  %.not.i45 = icmp eq ptr %i.am, null
  br i1 %.not.i45, label %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZTW11errorstream.exit
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !41
  %i.ao = getelementptr i8, ptr %i.an, i64 -24
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !86
  %i.at = icmp eq i32 %i.as, 0
end_hunk_0
begin_hunk_1_@_ZN11ImageSource13generateImageESt17basic_string_viewIcSt11char_traitsIcEERSt3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessIS8_ESaIS8_EE:bb.a
  br i1 %.not.i46, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.k

bb.k:                                             ; preds = %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !41
  %i.az = getelementptr i8, ptr %i.ay, i64 -24
  %i.ba = load i64, ptr %i.az, align 8            ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ax, i64 %i.ba
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !86
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.ax)
  %.pre.i47 = load ptr, ptr %i.aw, align 8, !tbaa !79 ; 2 uses
  %.pre = load ptr, ptr %.pre.i47, align 8, !tbaa !41
  %.phi.trans.insert = getelementptr i8, ptr %.pre, i64 -24
  %.pre157 = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bf = phi i64 [ %.pre157, %bb.l ], [ %i.ba, %bb.k ]
  %i.bg = phi ptr [ %.pre.i47, %bb.l ], [ %i.ax, %bb.k ] ; 2 uses
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.bf
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 240
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !93 ; 6 uses
  %.not.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i, label %bb.n, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 56
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !99
  %.not.i1.i.i = icmp eq i8 %i.bl, 0
  br i1 %.not.i1.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 67
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

bb.p:                                             ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.bj)
  %i.bo = load ptr, ptr %i.bj, align 8, !tbaa !41
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef signext i8 %i.bq(ptr noundef nonnull align 8 dereferenceable(570) %i.bj, i8 noundef signext 10), !inline_history !4
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %bb.o, %bb.p
  %.0.i.i.i = phi i8 [ %i.bn, %bb.o ], [ %i.br, %bb.p ]
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bg, i8 noundef signext %.0.i.i.i)
  %i.bt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

bb.q:                                             ; preds = %bb.e
  %i.bu = add i8 %.036152, -1
  br label %bb.s

bb.r:                                             ; preds = %bb.c
  %i.bv = add i8 %.036152, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %bb.q, %bb.r, %bb.c, %bb.b
  %.137 = phi i8 [ %.036152, %bb.b ], [ %.036152, %bb.c ], [ %i.bv, %bb.r ], [ %.036152, %bb.d ], [ %i.bu, %bb.q ] ; 2 uses
  %.034 = add nsw i32 %.034155, -1
  %i.bw = icmp eq i32 %.034155, 0
  br i1 %i.bw, label %.critedge, label %.lr.ph, !llvm.loop !185

.critedge:                                        ; preds = %bb.s
  %i.bx = icmp eq i8 %.137, 0
  br i1 %i.bx, label %.critedge.thread201, label %bb.t

bb.t:                                             ; preds = %.critedge
  %.not.i48 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i48, label %_ZTW11errorstream.exit49, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit49

_ZTW11errorstream.exit49:                         ; preds = %bb.t, %bb.u
  %i.by = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !75, !nonnull !76, !align !77 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !41
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = tail call noundef zeroext i1 %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %i.bz), !inline_history !7
  %.v.i50 = select i1 %i.cc, i64 976, i64 984
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 %.v.i50 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr @.str.76, ptr %i.m, align 8, !tbaa !78
  %i.ce = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.m) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store ptr @.str.78, ptr %i.l, align 8, !tbaa !78
  %i.cf = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cd, ptr noundef nonnull align 8 dereferenceable(8) %i.l) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !79 ; 5 uses
  %.not.i51 = icmp eq ptr %i.cg, null
  br i1 %.not.i51, label %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit56, label %bb.v

bb.v:                                             ; preds = %_ZTW11errorstream.exit49
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !41
  %i.ci = getelementptr i8, ptr %i.ch, i64 -24
  %i.cj = load i64, ptr %i.ci, align 8
  %i.ck = getelementptr inbounds i8, ptr %i.cg, i64 %i.cj
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !86
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cg)
  %.pre.i52 = load ptr, ptr %i.cf, align 8, !tbaa !79
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.co = phi ptr [ %.pre.i52, %bb.w ], [ %i.cg, %bb.v ]
  %i.cp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.co, ptr noundef nonnull %2, i64 noundef %1) ; 0 uses
  br label %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit56

_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit56: ; preds = %_ZTW11errorstream.exit49, %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr @.str.1, ptr %i.k, align 8, !tbaa !78
  %i.cq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, ptr noundef nonnull align 8 dereferenceable(8) %i.k) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !79 ; 5 uses
  %.not.i57 = icmp eq ptr %i.cr, null
  br i1 %.not.i57, label %_ZN11StreamProxylsEPFRSoS0_E.exit, label %bb.y

bb.y:                                             ; preds = %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !41
  %i.ct = getelementptr i8, ptr %i.cs, i64 -24
  %i.cu = load i64, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cr, i64 %i.cu
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 32
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !86
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.cr)
  %.pre.i58 = load ptr, ptr %i.cq, align 8, !tbaa !79 ; 2 uses
  %.pre158 = load ptr, ptr %.pre.i58, align 8, !tbaa !41
  %.phi.trans.insert159 = getelementptr i8, ptr %.pre158, i64 -24
  %.pre160 = load i64, ptr %.phi.trans.insert159, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cz = phi i64 [ %.pre160, %bb.z ], [ %i.cu, %bb.y ]
  %i.da = phi ptr [ %.pre.i58, %bb.z ], [ %i.cr, %bb.y ] ; 2 uses
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %i.cz
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 240
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !93 ; 6 uses
  %.not.i.i.i118 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i118, label %bb.ab, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119

bb.ab:                                            ; preds = %bb.aa
  call void @_ZSt16__throw_bad_castv() #25
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119: ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 56
  %i.df = load i8, ptr %i.de, align 8, !tbaa !99
  %.not.i1.i.i120 = icmp eq i8 %i.df, 0
  br i1 %.not.i1.i.i120, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 67
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !33
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit122

bb.ad:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i119
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.dd)
  %i.di = load ptr, ptr %i.dd, align 8, !tbaa !41
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call noundef signext i8 %i.dk(ptr noundef nonnull align 8 dereferenceable(570) %i.dd, i8 noundef signext 10), !inline_history !4
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit122

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit122: ; preds = %bb.ac, %bb.ad
  %.0.i.i.i121 = phi i8 [ %i.dh, %bb.ac ], [ %i.dl, %bb.ad ]
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.da, i8 noundef signext %.0.i.i.i121)
  %i.dn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.dm) ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit

.critedge.thread201:                              ; preds = %bb.d, %.critedge
  %.030.lcssa200 = phi i32 [ -1, %.critedge ], [ %.034155, %bb.d ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #23
  store ptr null, ptr %i.q, align 8, !tbaa !62
  %.not40 = icmp eq i32 %.030.lcssa200, -1
  br i1 %.not40, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.critedge.thread201
  %i.do = zext nneg i32 %.030.lcssa200 to i64
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %1, i64 %i.do)
  %i.dp = tail call noundef ptr @_ZN11ImageSource13generateImageESt17basic_string_viewIcSt11char_traitsIcEERSt3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessIS8_ESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %.sroa.speculated.i, ptr nonnull %2, ptr noundef nonnull align 8 dereferenceable(48) %3)
  %i.dq = add nsw i32 %.030.lcssa200, 1
  %i.dr = zext nneg i32 %i.dq to i64
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ae, %.thread204
  %.sink = phi ptr [ null, %.thread204 ], [ %i.dp, %bb.ae ] ; 2 uses
  %.030.lcssa200207.ph = phi i64 [ 0, %.thread204 ], [ %i.dr, %bb.ae ]
  store ptr %.sink, ptr %i.q, align 8, !tbaa !62
  br label %bb.af

bb.af:                                            ; preds = %.sink.split, %.critedge.thread201
  %.030.lcssa200207 = phi i64 [ 0, %.critedge.thread201 ], [ %.030.lcssa200207.ph, %.sink.split ] ; 5 uses
  %i.ds = phi ptr [ null, %.critedge.thread201 ], [ %.sink, %.sink.split ] ; 2 uses
  %i.dt = icmp ult i64 %1, %.030.lcssa200207
  br i1 %i.dt, label %bb.ag, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.ag:                                            ; preds = %bb.af
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.90, i64 noundef %.030.lcssa200207, i64 noundef %1) #25
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %bb.af
  %i.du = sub nuw i64 %1, %.030.lcssa200207       ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %2, i64 %.030.lcssa200207 ; 4 uses
  %i.dw = icmp eq i64 %1, %.030.lcssa200207
  br i1 %i.dw, label %_ZN11StreamProxylsEPFRSoS0_E.exit91, label %bb.ah

bb.ah:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %i.dx = load i8, ptr %i.dv, align 1, !tbaa !33
  %i.dy = icmp eq i8 %i.dx, 40
  br i1 %i.dy, label %bb.ai, label %bb.as

bb.ai:                                            ; preds = %bb.ah
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 %1
  %i.ea = getelementptr inbounds i8, ptr %i.dz, i64 -1
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !33
  %i.ec = icmp eq i8 %i.eb, 41
  br i1 %i.ec, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit66, label %bb.as

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit66: ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ed = add i64 %i.du, -2
  %i.ee = add i64 %i.du, -1
  %.sroa.speculated.i63 = tail call i64 @llvm.umin.i64(i64 %i.ee, i64 %i.ed) ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 2 uses
  store i64 %.sroa.speculated.i63, ptr %5, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.ef, ptr %i.eg, align 8
  %i.eh = tail call noundef ptr @_ZN11ImageSource13generateImageESt17basic_string_viewIcSt11char_traitsIcEERSt3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessIS8_ESaIS8_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %.sroa.speculated.i63, ptr nonnull %i.ef, ptr noundef nonnull align 8 dereferenceable(48) %3) ; 6 uses
  %.not41.not = icmp eq ptr %i.eh, null
  br i1 %.not41.not, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit66
  %.not.i67 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i67, label %_ZTW11errorstream.exit68, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit68

_ZTW11errorstream.exit68:                         ; preds = %bb.aj, %bb.ak
  %i.ei = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !75, !nonnull !76, !align !77 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !41
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = tail call noundef zeroext i1 %i.el(ptr noundef nonnull align 8 dereferenceable(8) %i.ej), !inline_history !6
  %.v.i69 = select i1 %i.em, i64 976, i64 984
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.v.i69 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store ptr @.str.79, ptr %i.j, align 8, !tbaa !78
  %i.eo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.ep = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.en, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr @.str.80, ptr %i.i, align 8, !tbaa !78
  %i.eq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.ep, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.er = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.eq, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @.str.1, ptr %i.h, align 8, !tbaa !78
  %i.es = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.er, ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !79 ; 5 uses
  %.not.i70 = icmp eq ptr %i.et, null
  br i1 %.not.i70, label %_ZN11StreamProxylsEPFRSoS0_E.exit72, label %bb.al

bb.al:                                            ; preds = %_ZTW11errorstream.exit68
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !41
  %i.ev = getelementptr i8, ptr %i.eu, i64 -24
  %i.ew = load i64, ptr %i.ev, align 8
  %i.ex = getelementptr inbounds i8, ptr %i.et, i64 %i.ew
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !86
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.et)
  %.pre.i71 = load ptr, ptr %i.es, align 8, !tbaa !79
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fb = phi ptr [ %.pre.i71, %bb.am ], [ %i.et, %bb.al ]
  %i.fc = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8) %i.fb), !inline_history !5 ; 0 uses
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit72

bb.ao:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit66
  %.not42 = icmp eq ptr %i.ds, null
  br i1 %.not42, label %bb.ar, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eh, i64 12
  %i.fe = load i64, ptr %i.fd, align 4, !tbaa !108
  tail call fastcc void @_ZL16blit_with_alpha2ILb0EEvPN5video6IImageES2_N4core8vector2dIiEES5_NS4_IjEE(ptr noundef nonnull %i.eh, ptr noundef nonnull readonly %i.ds, i64 0, i64 0, i64 %i.fe)
  %i.ff = load ptr, ptr %i.eh, align 8, !tbaa !41
  %i.fg = getelementptr i8, ptr %i.ff, i64 -24
  %i.fh = load i64, ptr %i.fg, align 8
  %i.fi = getelementptr inbounds i8, ptr %i.eh, i64 %i.fh ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 8 ; 2 uses
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !43
  %i.fl = add nsw i32 %i.fk, -1                   ; 2 uses
  store i32 %i.fl, ptr %i.fj, align 8, !tbaa !43
  %.not.i73 = icmp eq i32 %i.fl, 0
  br i1 %.not.i73, label %bb.aq, label %_ZN11StreamProxylsEPFRSoS0_E.exit72.thread

bb.aq:                                            ; preds = %bb.ap
  %i.fm = load ptr, ptr %i.fi, align 8, !tbaa !41
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load ptr, ptr %i.fn, align 8
  tail call void %i.fo(ptr noundef nonnull align 8 dereferenceable(12) %i.fi) #23, !inline_history !0
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit72.thread

bb.ar:                                            ; preds = %bb.ao
  store ptr %i.eh, ptr %i.q, align 8, !tbaa !62
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit72.thread

_ZN11StreamProxylsEPFRSoS0_E.exit72.thread:       ; preds = %bb.aq, %bb.ap, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit91

_ZN11StreamProxylsEPFRSoS0_E.exit72:              ; preds = %bb.an, %_ZTW11errorstream.exit68
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %_ZN11StreamProxylsEPFRSoS0_E.exit103

bb.as:                                            ; preds = %bb.ai, %bb.ah
  %i.fp = call noundef zeroext i1 @_ZN11ImageSource17generateImagePartESt17basic_string_viewIcSt11char_traitsIcEERPN5video6IImageERSt3setINSt7__cxx1112basic_stringIcS2_SaIcEEESt4lessISC_ESaISC_EE(ptr noundef nonnull align 8 dereferenceable(64) %0, i64 %i.du, ptr nonnull %i.dv, ptr noundef nonnull align 8 dereferenceable(8) %i.q, ptr noundef nonnull align 8 dereferenceable(48) %3)
  br i1 %i.fp, label %_ZN11StreamProxylsEPFRSoS0_E.exit91, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.not.i74 = icmp eq ptr @_ZTH11errorstream, null
  br i1 %.not.i74, label %_ZTW11errorstream.exit75, label %bb.au

bb.au:                                            ; preds = %bb.at
  tail call void @_ZTH11errorstream()
  br label %_ZTW11errorstream.exit75

_ZTW11errorstream.exit75:                         ; preds = %bb.at, %bb.au
  %i.fq = tail call noundef align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @errorstream) ; 2 uses
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !75, !nonnull !76, !align !77 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !41
  %i.ft = load ptr, ptr %i.fs, align 8
  %i.fu = tail call noundef zeroext i1 %i.ft(ptr noundef nonnull align 8 dereferenceable(8) %i.fr), !inline_history !6
  %.v.i76 = select i1 %i.fu, i64 976, i64 984
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.v.i76 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr @.str.79, ptr %i.g, align 8, !tbaa !78
  %i.fw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull align 8 dereferenceable(8) %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.fx = load ptr, ptr %i.fv, align 8, !tbaa !79 ; 5 uses
  %.not.i77 = icmp eq ptr %i.fx, null
  br i1 %.not.i77, label %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit82, label %bb.av

bb.av:                                            ; preds = %_ZTW11errorstream.exit75
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !41
  %i.fz = getelementptr i8, ptr %i.fy, i64 -24
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = getelementptr inbounds i8, ptr %i.fx, i64 %i.ga
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 32
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !86
  %i.ge = icmp eq i32 %i.gd, 0
  br i1 %i.ge, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @_ZN11StreamProxy16fix_stream_stateERSo(ptr noundef nonnull align 8 dereferenceable(8) %i.fx)
  %.pre.i78 = load ptr, ptr %i.fv, align 8, !tbaa !79
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.gf = phi ptr [ %.pre.i78, %bb.aw ], [ %i.fx, %bb.av ]
  %i.gg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, ptr noundef nonnull %i.dv, i64 noundef %i.du) ; 0 uses
  br label %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit82

_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit82: ; preds = %_ZTW11errorstream.exit75, %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @.str.80, ptr %i.f, align 8, !tbaa !78
  %i.gh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11StreamProxy20emit_with_null_checkIPKcEERS_OT_(ptr noundef nonnull align 8 dereferenceable(8) %i.fv, ptr noundef nonnull align 8 dereferenceable(8) %i.f) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !79 ; 5 uses
  %.not.i83 = icmp eq ptr %i.gi, null
  br i1 %.not.i83, label %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit88, label %bb.ay

bb.ay:                                            ; preds = %_ZN11StreamProxylsIRSt17basic_string_viewIcSt11char_traitsIcEEEERS_OT_.exit82
end_hunk_1
