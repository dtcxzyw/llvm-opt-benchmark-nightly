Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/tf_graph_simplifier?download=true
inline.NumInlined: 3793
inline.NumDeleted: 1123
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN2cv3dnn14dnn5_v2026060520ReshapeKerasSubgraph5matchERKNS_3PtrINS0_18ImportGraphWrapperEEEiRSt6vectorIiSaIiEE
define linkonce_odr hidden noundef zeroext i1 @_ZN2cv3dnn14dnn5_v2026060520ReshapeKerasSubgraph5matchERKNS_3PtrINS0_18ImportGraphWrapperEEEiRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.cv::Ptr.66", align 8       ; 8 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.a = load ptr, ptr %1, align 8, !tbaa !122    ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"struct.cv::Ptr.66") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %2)
  %i.e = load ptr, ptr %4, align 8, !tbaa !232    ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.l, label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.l = load ptr, ptr %4, align 8, !tbaa !232    ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  invoke void %i.o(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 0)
          to label %bb.e unwind label %bb.k

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !78   ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  %i.t = load ptr, ptr %5, align 8, !tbaa !78     ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  %i.v = icmp eq ptr %i.t, %i.u                   ; 2 uses
  br i1 %i.s, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.v, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.v, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !79   ; 3 uses
  %i.y = icmp ult i64 %i.x, 16
  call void @llvm.assume(i1 %i.y)
  switch i64 %i.x, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.t, align 1, !tbaa !39
  store i8 %i.z, ptr %i.q, align 1, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.t, i64 %i.x, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %bb.f
  %i.aa = load i64, ptr %i.w, align 8, !tbaa !79  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !79
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !78
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1, !tbaa !39
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %i.t, ptr %i.p, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ag = load <2 x i64>, ptr %i.af, align 8, !tbaa !39
  store <2 x i64> %i.ag, ptr %i.ae, align 8, !tbaa !39
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ah = load i64, ptr %i.r, align 8, !tbaa !39
  store ptr %i.t, ptr %i.p, align 8, !tbaa !78
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.ak = load <2 x i64>, ptr %i.ai, align 8, !tbaa !39
  store <2 x i64> %i.ak, ptr %i.aj, align 8, !tbaa !39
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.q, ptr %5, align 8, !tbaa !78
  store i64 %i.ah, ptr %i.u, align 8, !tbaa !39
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.u, ptr %5, align 8, !tbaa !78
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %i.al = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.q, %bb.i ], [ %i.u, %bb.j ]
  %i.am = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.am, align 8, !tbaa !79
  store i8 0, ptr %i.al, align 1, !tbaa !39
  %i.an = load ptr, ptr %5, align 8, !tbaa !78    ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.aq = load i64, ptr %i.ao, align 8, !tbaa !39
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.as = invoke noundef zeroext i1 @_ZN2cv3dnn8Subgraph5matchERKNS_3PtrINS0_18ImportGraphWrapperEEEiRSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.l unwind label %bb.c

bb.k:                                             ; preds = %bb.d
  %i.at = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.s

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %.09 = phi i1 [ false, %bb.b ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !25 ; 8 uses
  %.not.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 4 uses
  %i.ax = load atomic i64, ptr %i.aw acquire, align 8 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, 4294967297
  %i.az = trunc i64 %i.ax to i32                  ; 2 uses
  br i1 %i.ay, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %i.aw, align 8, !tbaa !29
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  store i32 0, ptr %i.ba, align 4, !tbaa !30
  %i.bb = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #22, !inline_history !8
  %i.be = load ptr, ptr %i.av, align 8, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #22, !inline_history !8
  br label %_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.bh = load i8, ptr @__libc_single_threaded, align 1, !tbaa !39
  %.not.i.i.i = icmp eq i8 %i.bh, 0
  br i1 %.not.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bi = add nsw i32 %i.az, -1
  store i32 %i.bi, ptr %i.aw, align 8, !tbaa !40
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.bj = atomicrmw volatile add ptr %i.aw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i = phi i32 [ %i.az, %bb.p ], [ %i.bj, %bb.q ]
  %i.bk = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bk, label %bb.r, label %_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !41

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.av) #22
  br label %_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret i1 %.09

bb.s:                                             ; preds = %bb.k, %bb.c
  %.pn = phi { ptr, i32 } [ %i.k, %bb.c ], [ %i.at, %bb.k ]
  call void @_ZNSt12__shared_ptrIN2cv3dnn17ImportNodeWrapperELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv3dnn14dnn5_v2026060520ReshapeKerasSubgraph8finalizeERN17opencv_tensorflow8GraphDefEPNS3_7NodeDefERSt6vectorIS7_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(152) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !147  ; 2 uses
  %i.c = icmp slt i32 %i.b, -1
  br i1 %i.c, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.32) #24
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.a
  %i.d = add nsw i32 %i.b, 1                      ; 2 uses
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %.not.i.i.i.i = icmp ne i32 %i.d, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.f = shl nuw nsw i64 %i.e, 2                  ; 3 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #23 ; 9 uses
  store i32 0, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr i8, ptr %i.g, i64 4        ; 3 uses
  %4 = add nsw i64 %i.e, -1                       ; 2 uses
  %i.i = icmp eq i64 %4, 0
  br i1 %i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %4, 2     ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.h, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.0.i.i.i.i.i = phi ptr [ %i.j, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.h, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  store i32 -1, ptr %i.g, align 4, !tbaa !40
  %i.k = load i32, ptr %i.a, align 8, !tbaa !147
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.m = load ptr, ptr %3, align 8, !tbaa !223
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !225  ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  invoke void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(120) %i.p)
          to label %.noexc26 unwind label %bb.j

.noexc26:                                         ; preds = %._crit_edge
  invoke void @_ZN6google8protobuf8internal12MapFieldBase11SetMapDirtyEv(ptr noundef nonnull align 8 dereferenceable(120) %i.p)
          to label %_ZN17opencv_tensorflow7NodeDef12mutable_attrB5cxx11Ev.exit unwind label %bb.j

.lr.ph:                                           ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.q = load ptr, ptr %3, align 8, !tbaa !223
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !225  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  invoke void @_ZNK6google8protobuf8internal12MapFieldBase24SyncMapWithRepeatedFieldEv(ptr noundef nonnull align 8 dereferenceable(120) %i.t)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 112
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17opencv_tensorflow9AttrValueEE2atIA6_cEERKS9_RKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 1 dereferenceable(6) @.str.33)
          to label %bb.c unwind label %bb.d       ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40
  %i.y = icmp eq i32 %i.x, 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = select i1 %i.y, ptr %i.aa, ptr @_ZN17opencv_tensorflow30_TensorProto_default_instance_E
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !193
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !40
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !40
  %i.ag = load i32, ptr %i.a, align 8, !tbaa !147
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph, label %._crit_edge, !llvm.loop !488

bb.d:                                             ; preds = %.lr.ph, %bb.b
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit35

_ZN17opencv_tensorflow7NodeDef12mutable_attrB5cxx11Ev.exit: ; preds = %.noexc26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.al = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6google8protobuf3MapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN17opencv_tensorflow9AttrValueEE2atIA6_cEERS9_RKT_(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, ptr noundef nonnull align 1 dereferenceable(6) @.str.33)
          to label %bb.e unwind label %bb.j       ; 5 uses

bb.e:                                             ; preds = %_ZN17opencv_tensorflow7NodeDef12mutable_attrB5cxx11Ev.exit
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 28 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !40
  %i.ao = icmp eq i32 %i.an, 8
  br i1 %i.ao, label %._crit_edge.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.e
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !39
  br label %_ZN17opencv_tensorflow9AttrValue14mutable_tensorEv.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN17opencv_tensorflow9AttrValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(32) %i.al)
          to label %.noexc29 unwind label %bb.j

.noexc29:                                         ; preds = %bb.f
  store i32 8, ptr %i.am, align 4, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !115 ; 2 uses
  %i.ar = trunc i64 %i.aq to i1
  %i.as = and i64 %i.aq, -4
  %i.at = inttoptr i64 %i.as to ptr               ; 2 uses
  br i1 %i.ar, label %bb.g, label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, !prof !41

bb.g:                                             ; preds = %.noexc29
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !117
  br label %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i

_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i: ; preds = %bb.g, %.noexc29
  %.0.i.i.i.i = phi ptr [ %i.au, %bb.g ], [ %i.at, %.noexc29 ]
  %i.av = invoke noundef ptr @_ZN6google8protobuf5Arena18CreateMaybeMessageIN17opencv_tensorflow11TensorProtoEJEEEPT_PS1_DpOT0_(ptr noundef %.0.i.i.i.i)
          to label %.noexc30 unwind label %bb.j   ; 2 uses

.noexc30:                                         ; preds = %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !39
  br label %_ZN17opencv_tensorflow9AttrValue14mutable_tensorEv.exit

_ZN17opencv_tensorflow9AttrValue14mutable_tensorEv.exit: ; preds = %.noexc30, %._crit_edge.i.i
  %i.ax = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.av, %.noexc30 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.az = load i32, ptr %i.a, align 8, !tbaa !147 ; 2 uses
  %i.ba = add nsw i32 %i.az, -1                   ; 2 uses
  %i.bb = icmp sgt i32 %i.az, 1
  br i1 %i.bb, label %.lr.ph.i, label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14DeleteSubrangeEii.exit

.lr.ph.i:                                         ; preds = %_ZN17opencv_tensorflow9AttrValue14mutable_tensorEv.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 32
  %wide.trip.count.i = zext nneg i32 %i.ba to i64
  br label %bb.h

._crit_edge.i:                                    ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11TypeHandlerEEEvi.exit.i
  invoke void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase8CloseGapEii(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i32 noundef 2, i32 noundef %i.ba)
          to label %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14DeleteSubrangeEii.exit unwind label %bb.j

bb.h:                                             ; preds = %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11TypeHandlerEEEvi.exit.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11TypeHandlerEEEvi.exit.i ] ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !111
  %i.be = getelementptr [8 x i8], ptr %i.bd, i64 %indvars.iv.i
  %i.bf = getelementptr i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !38 ; 4 uses
  %i.bh = load ptr, ptr %i.ay, align 8, !tbaa !166
  %i.bi = icmp ne ptr %i.bh, null
  %i.bj = icmp eq ptr %i.bg, null
  %or.cond.i.i.i = or i1 %i.bj, %i.bi
  br i1 %or.cond.i.i.i, label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11TypeHandlerEEEvi.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %i.bg, align 8, !tbaa !78 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.i
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !39
  %i.bo = add i64 %i.bn, 1
  tail call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef 32) #26
  br label %_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11TypeHandlerEEEvi.exit.i

_ZN6google8protobuf8internal20RepeatedPtrFieldBase6DeleteINS0_16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE11TypeHandlerEEEvi.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %bb.h
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.h, !llvm.loop !489

_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14DeleteSubrangeEii.exit: ; preds = %_ZN17opencv_tensorflow9AttrValue14mutable_tensorEv.exit, %._crit_edge.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !111
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !38
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.bp)
          to label %_ZN17opencv_tensorflow7NodeDef9set_inputEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.j

_ZN17opencv_tensorflow7NodeDef9set_inputEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14DeleteSubrangeEii.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ax, i64 48 ; 3 uses
  store i32 0, ptr %i.bu, align 8, !tbaa !192
  %.not = icmp eq ptr %.0.i.i.i.i.i, %i.g
  br i1 %.not, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %.lr.ph46

.lr.ph46:                                         ; preds = %_ZN17opencv_tensorflow7NodeDef9set_inputEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.bv = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.bw = ptrtoint ptr %i.g to i64
  %i.bx = sub i64 %i.bv, %i.bw
  %i.by = ashr exact i64 %i.bx, 2
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ax, i64 52
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ax, i64 56 ; 2 uses
  br label %bb.k

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.n, %_ZN17opencv_tensorflow7NodeDef9set_inputEiRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.f) #26
  ret void

bb.j:                                             ; preds = %_ZN6google8protobuf16RepeatedPtrFieldINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14DeleteSubrangeEii.exit, %._crit_edge.i, %_ZNK6google8protobuf11MessageLite21GetArenaForAllocationEv.exit.i.i, %bb.f, %.noexc26, %._crit_edge, %_ZN17opencv_tensorflow7NodeDef12mutable_attrB5cxx11Ev.exit
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit35

bb.k:                                             ; preds = %.lr.ph46, %bb.n
  %i.cc = phi i32 [ 0, %.lr.ph46 ], [ %.pre-phi.i.i.i, %bb.n ] ; 5 uses
  %indvars.iv48 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next49, %bb.n ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv48
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !40 ; 2 uses
  %i.cf = load i32, ptr %i.bz, align 4, !tbaa !277
  %i.cg = icmp eq i32 %i.cc, %i.cf
  br i1 %i.cg, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ch = add i32 %i.cc, 1                        ; 2 uses
  invoke void @_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i32 noundef %i.ch)
          to label %.noexc33 unwind label %bb.o
end_hunk_0
