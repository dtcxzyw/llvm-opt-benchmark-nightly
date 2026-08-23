Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/cfg_params?download=true
inline.NumInlined: 764
inline.NumDeleted: 301
begin_hunk_0_@_ZNK2cv4gapi3wip6onevpl8CfgParam9to_stringB5cxx11Ev:bb.a
bb.g:                                             ; preds = %bb.e, %_ZN2cv4util3getILm1EJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKNS0_17type_list_elementIXT_EJDpT0_EE4typeERKNS0_7variantIJSB_EEE.exit.i.i.i, %_ZN2cv4util3getILm0EJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKNS0_17type_list_elementIXT_EJDpT0_EE4typeERKNS0_7variantIJSB_EEE.exit.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

bb.h:                                             ; preds = %_ZN2cv4util5visitINS_4gapi3wip6onevpl4util19variant_stringifierENS0_7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEEDTclfp_cl3getILi0EEfp0_EEEOT_RKT0_.exit
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = load ptr, ptr %3, align 8, !tbaa !12    ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %bb.h
  %i.am = load i64, ptr %i.ak, align 8, !tbaa !17
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.an) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.g ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ], [ %i.ai, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #26
  %i.ao = load ptr, ptr %2, align 8, !tbaa !12    ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.e
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !17
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.ar) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit14: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %common.resume
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #9 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 4 uses
  %i.e = add i64 %i.d, %i.b                       ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !tbaa !12     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  %i.i = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.i)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  %i.j = load i64, ptr %i.g, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = phi i64 [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  %i.l = icmp ugt i64 %i.e, %i.k
  br i1 %i.l, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.m = load ptr, ptr %2, align 8, !tbaa !12
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13: ; preds = %bb.b
  %i.p = icmp ult i64 %i.d, 16
  tail call void @llvm.assume(i1 %i.p)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12: ; preds = %bb.b
  %i.q = load i64, ptr %i.n, align 8, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12
  %i.r = phi i64 [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i12 ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i13 ]
  %.not = icmp ugt i64 %i.e, %i.r
  br i1 %.not, label %bb.d, label %.critedge

.critedge:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14
  %i.s = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.b) ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.t, ptr %0, align 8, !tbaa !8
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !12   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15

bb.c:                                             ; preds = %.critedge
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !15   ; 2 uses
  %i.z = icmp ult i64 %i.y, 16
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = add nuw nsw i64 %i.y, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.t, ptr noundef nonnull align 8 dereferenceable(1) %i.v, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15: ; preds = %.critedge
  store ptr %i.u, ptr %0, align 8, !tbaa !12
  %i.ab = load i64, ptr %i.v, align 8, !tbaa !17
  store i64 %i.ab, ptr %i.t, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i15
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !15
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !15
  store ptr %i.v, ptr %i.s, align 8, !tbaa !12
  store i64 0, ptr %i.ac, align 8, !tbaa !15
  store i8 0, ptr %i.v, align 8, !tbaa !17
  br label %bb.g

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit14, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit
  %i.af = sub i64 4611686018427387903, %i.b
  %i.ag = icmp ult i64 %i.af, %i.d
  br i1 %i.ag, label %bb.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.28) #29
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit: ; preds = %bb.d
  %i.ah = load ptr, ptr %2, align 8, !tbaa !12
  %i.ai = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.ah, i64 noundef %i.d) ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !8
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !12 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 5 uses
  %i.am = icmp eq ptr %i.ak, %i.al
  br i1 %i.am, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !15 ; 2 uses
  %i.ap = icmp ult i64 %i.ao, 16
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = add nuw nsw i64 %i.ao, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aj, ptr noundef nonnull align 8 dereferenceable(1) %i.al, i64 %i.aq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit
  store ptr %i.ak, ptr %0, align 8, !tbaa !12
  %i.ar = load i64, ptr %i.al, align 8, !tbaa !17
  store i64 %i.ar, ptr %i.aj, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i16
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !15
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.at, ptr %i.au, align 8, !tbaa !15
  store ptr %i.al, ptr %i.ai, align 8, !tbaa !12
  store i64 0, ptr %i.as, align 8, !tbaa !15
  store i8 0, ptr %i.al, align 8, !tbaa !17
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit17
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK2cv4gapi3wip6onevpl8CfgParamltERKS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.cv::gapi::wip::onevpl::util::variant_comparator", align 8 ; 4 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !24     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.f, i64 %i.d) ; 2 uses
  %i.g = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.g, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.j = tail call i32 @memcmp(ptr noundef %i.i, ptr noundef %i.h, i64 noundef %.sroa.speculated.i.i.i) #26 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i, label %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.a
  %i.k = sub i64 %i.d, %i.f                       ; 2 uses
  %i.l = icmp slt i64 %i.k, 0
  br i1 %i.l, label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PrivltERKS4_.exit, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.m = sub i64 %i.d, %i.f                       ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PrivltERKS4_.exit, label %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
  %i.o = icmp slt i32 %i.j, 0
  br label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PrivltERKS4_.exit

_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %.pre-phi.i = phi i64 [ %i.k, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %i.m, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i ]
  %.not = icmp eq i64 %.pre-phi.i, 0
  br i1 %.not, label %bb.b, label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PrivltERKS4_.exit

bb.b:                                             ; preds = %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.r = load i64, ptr %i.p, align 8, !tbaa !18   ; 2 uses
  %i.s = load i64, ptr %i.q, align 8, !tbaa !18   ; 2 uses
  %i.t = icmp ult i64 %i.r, %i.s
  br i1 %i.t, label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PrivltERKS4_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp ugt i64 %i.r, %i.s
  br i1 %i.u, label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PrivltERKS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr %i.q, ptr %2, align 8, !tbaa !130
  %i.v = call noundef zeroext i1 @_ZN2cv4util6detail18apply_visitor_implIbLm0ELm12ENS_4gapi3wip6onevpl4util18variant_comparatorERKNS0_7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEELb0EJEEENSt9enable_ifIXsr3std10is_base_ofINS1_17visitor_interfaceENSt5decayIT2_E4typeEEE5valueET_E4typeEOSM_OT3_St17integral_constantIbLb0EESV_IbXT4_EEDpOT5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(40) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  br label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PrivltERKS4_.exit

_ZNK2cv4gapi3wip6onevpl8CfgParam4PrivltERKS4_.exit: ; preds = %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.b, %bb.c, %bb.d
  %.1.i = phi i1 [ false, %_ZStgtIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ %i.v, %bb.d ], [ true, %bb.b ], [ false, %bb.c ], [ %i.o, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ true, %_ZStltIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread20.i ]
  ret i1 %.1.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK2cv4gapi3wip6onevpl8CfgParameqERKS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !24     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PriveqERKS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i: ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !12
  %bcmp.i.i = tail call i32 @bcmp(ptr %i.j, ptr %i.i, i64 %i.d)
  %i.k = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PriveqERKS4_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load i64, ptr %i.l, align 8, !tbaa !18   ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !18
  %.not.i.i = icmp eq i64 %i.n, %i.o
  br i1 %.not.i.i, label %bb.c, label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PriveqERKS4_.exit

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv4utileqIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbRKNS0_7variantIJDpT_EEESE_E3eqs, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.t = tail call noundef zeroext i1 %i.q(ptr noundef nonnull %i.r, ptr noundef nonnull %i.s), !inline_history !132
  br label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PriveqERKS4_.exit

_ZNK2cv4gapi3wip6onevpl8CfgParam4PriveqERKS4_.exit: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i, %bb.c
  %i.u = phi i1 [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i ], [ %i.t, %bb.c ], [ false, %bb.a ]
  ret i1 %i.u
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK2cv4gapi3wip6onevpl8CfgParamneERKS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !24     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !15   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  %i.g = icmp eq i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PrivneERKS4_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i64 %i.d, 0
  br i1 %i.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i: ; preds = %bb.b
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !12
  %bcmp.i.i.i = tail call i32 @bcmp(ptr %i.j, ptr %i.i, i64 %i.d)
  %i.k = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.k, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PrivneERKS4_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.n = load i64, ptr %i.l, align 8, !tbaa !18   ; 2 uses
  %i.o = load i64, ptr %i.m, align 8, !tbaa !18
  %.not.i.i.i = icmp eq i64 %i.n, %i.o
  br i1 %.not.i.i.i, label %bb.c, label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PrivneERKS4_.exit

bb.c:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i
  %i.p = getelementptr inbounds nuw [8 x i8], ptr @_ZZN2cv4utileqIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEbRKNS0_7variantIJDpT_EEESE_E3eqs, i64 %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.t = tail call noundef zeroext i1 %i.q(ptr noundef nonnull %i.r, ptr noundef nonnull %i.s), !inline_history !133
  %i.u = xor i1 %i.t, true
  br label %_ZNK2cv4gapi3wip6onevpl8CfgParam4PrivneERKS4_.exit

_ZNK2cv4gapi3wip6onevpl8CfgParam4PrivneERKS4_.exit: ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i, %bb.c
  %i.v = phi i1 [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i ], [ true, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.thread.i.i ], [ %i.u, %bb.c ], [ true, %bb.a ]
  ret i1 %i.v
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #10

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #26 ; 0 uses
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE6mctr_hIhE4helpEPNSt15aligned_storageILm32ELm8EE4typeES2_(ptr noundef %0, ptr noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.a, ptr %0, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE6mctr_hIaE4helpEPNSt15aligned_storageILm32ELm8EE4typeES2_(ptr noundef %0, ptr noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !17
  store i8 %i.a, ptr %0, align 1, !tbaa !17
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE6mctr_hItE4helpEPNSt15aligned_storageILm32ELm8EE4typeES2_(ptr noundef %0, ptr noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !65
  store i16 %i.a, ptr %0, align 2, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE6mctr_hIsE4helpEPNSt15aligned_storageILm32ELm8EE4typeES2_(ptr noundef %0, ptr noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %1, align 2, !tbaa !65
  store i16 %i.a, ptr %0, align 2, !tbaa !65
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE6mctr_hIjE4helpEPNSt15aligned_storageILm32ELm8EE4typeES2_(ptr noundef %0, ptr noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !36
  store i32 %i.a, ptr %0, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE6mctr_hIiE4helpEPNSt15aligned_storageILm32ELm8EE4typeES2_(ptr noundef %0, ptr noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !36
  store i32 %i.a, ptr %0, align 4, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE6mctr_hImE4helpEPNSt15aligned_storageILm32ELm8EE4typeES2_(ptr noundef %0, ptr noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !16
  store i64 %i.a, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE6mctr_hIlE4helpEPNSt15aligned_storageILm32ELm8EE4typeES2_(ptr noundef %0, ptr noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !16
  store i64 %i.a, ptr %0, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE6mctr_hIfE4helpEPNSt15aligned_storageILm32ELm8EE4typeES2_(ptr noundef %0, ptr noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = load float, ptr %1, align 4, !tbaa !134
  store float %i.a, ptr %0, align 4, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE6mctr_hIdE4helpEPNSt15aligned_storageILm32ELm8EE4typeES2_(ptr noundef %0, ptr noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !136
  store double %i.a, ptr %0, align 8, !tbaa !136
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE6mctr_hIS2_E4helpEPNSt15aligned_storageILm32ELm8EE4typeES2_(ptr noundef %0, ptr noundef %1) #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !20
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4util7variantIJhatsjimlfdPvNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE6mctr_hIS8_E4helpEPNSt15aligned_storageILm32ELm8EE4typeES2_(ptr noundef %0, ptr noundef %1) #3 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
