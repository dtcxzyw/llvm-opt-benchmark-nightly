Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/insert_molecules?download=true
inline.NumInlined: 1453
inline.NumDeleted: 707
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3gmx20ExceptionInitializerD2Ev:bb.a
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #25
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !107    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !20
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #16

declare void @_Z19readConfAndTopologyRKNSt10filesystem7__cxx114pathEPbP10gmx_mtop_tP7PbcTypePPA3_fSB_SA_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathC2IPKcS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i8 noundef zeroext %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !133    ; 3 uses
  %i.c = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #26 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i64 %i.c, ptr %i.a, align 8, !tbaa !180
  %i.e = icmp ugt i64 %i.c, 15
  br i1 %i.e, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !107
  %i.g = load i64, ptr %i.a, align 8, !tbaa !180
  store i64 %i.g, ptr %i.d, align 8, !tbaa !20
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.a
  %i.h = phi ptr [ %i.f, %.noexc.i.i.i ], [ %i.d, %bb.a ] ; 2 uses
  switch i64 %i.c, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.i = load i8, ptr %i.b, align 1, !tbaa !20
  store i8 %i.i, ptr %i.h, align 1, !tbaa !20
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %i.b, i64 %i.c, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !180  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !19
  %i.l = load ptr, ptr %0, align 8, !tbaa !107
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  invoke void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40) %0)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  ret void

bb.g:                                             ; preds = %bb.d
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

bb.h:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !140  ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %i.q) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.i, %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.p, %bb.h ], [ %i.p, %bb.i ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !107    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.d
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.t = load i64, ptr %i.d, align 8, !tbaa !20
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !140  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %i.b) #26
  br label %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit

_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit:    ; preds = %bb.a, %bb.b
  %i.c = load ptr, ptr %0, align 8, !tbaa !107    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit
  %i.f = load i64, ptr %i.d, align 8, !tbaa !20
  %i.g = add i64 %i.f, 1
  tail call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10filesystem7__cxx114path5_ListD2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN3gmx16GromacsException7setInfoERKSt10type_indexOSt10unique_ptrINS_8internal14IExceptionInfoESt14default_deleteIS6_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx13ExceptionInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEED0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #26
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #25
  ret void
}

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #17

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

declare void @_ZN3gmx16GromacsExceptionC2ERKNS_20ExceptionInitializerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE13_M_assign_auxIPA3_fEEvT_S8_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b                       ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.f = load ptr, ptr %0, align 8, !tbaa !108    ; 14 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 4 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = sdiv exact i64 %i.c, 12
  %i.l = icmp ugt i64 %i.k, 768614336404564650
  br i1 %i.l, label %bb.c, label %.lr.ph.i.i.i.i.i.preheader

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.87) #27
  unreachable

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.b
  %3 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #24 ; 5 uses
  %i.m = add i64 %i.a, -12
  %i.n = sub i64 %i.m, %i.b                       ; 2 uses
  %i.o = udiv i64 %i.n, 12
  %i.p = add nuw nsw i64 %i.o, 1                  ; 2 uses
  %min.iters.check102 = icmp ult i64 %i.n, 84
  br i1 %min.iters.check102, label %.lr.ph.i.i.i.i.i.preheader122, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.p, 4611686018427387896   ; 3 uses
  %i.q = mul i64 %n.vec104, 12                    ; 2 uses
  %i.r = getelementptr i8, ptr %3, i64 %i.q
  %i.s = getelementptr i8, ptr %1, i64 %i.q
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next114, %vector.body105 ] ; 2 uses
  %i.t = mul i64 %index106, 12                    ; 2 uses
  %next.gep107 = getelementptr i8, ptr %3, i64 %i.t
  %next.gep108 = getelementptr i8, ptr %1, i64 %i.t
  %wide.vec109 = load <24 x float>, ptr %next.gep108, align 4, !tbaa !104
  store <24 x float> %wide.vec109, ptr %next.gep107, align 4, !tbaa !104
  %index.next114 = add nuw i64 %index106, 8       ; 2 uses
  %i.u = icmp eq i64 %index.next114, %n.vec104
  br i1 %i.u, label %middle.block115, label %vector.body105, !llvm.loop !299

middle.block115:                                  ; preds = %vector.body105
  %cmp.n116 = icmp eq i64 %i.p, %n.vec104
  br i1 %cmp.n116, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE20_M_allocate_and_copyIPA3_fEEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.i.preheader122

.lr.ph.i.i.i.i.i.preheader122:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block115
  %.015.i.i.i.i.i.ph = phi ptr [ %3, %.lr.ph.i.i.i.i.i.preheader ], [ %i.r, %middle.block115 ]
  %.01214.i.i.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.s, %middle.block115 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader122, %.lr.ph.i.i.i.i.i
  %.015.i.i.i.i.i = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i ], [ %.015.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader122 ] ; 3 uses
  %.01214.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %.01214.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader122 ] ; 3 uses
  %i.v = load <2 x float>, ptr %.01214.i.i.i.i.i, align 4, !tbaa !104
  store <2 x float> %i.v, ptr %.015.i.i.i.i.i, align 4, !tbaa !104
  %i.w = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 8
  %i.y = load float, ptr %i.x, align 4, !tbaa !104
  store float %i.y, ptr %i.w, align 4, !tbaa !104
  %i.z = getelementptr inbounds nuw i8, ptr %.01214.i.i.i.i.i, i64 12 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.015.i.i.i.i.i, i64 12
  %.not.i.i.i.i.i = icmp eq ptr %i.z, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE20_M_allocate_and_copyIPA3_fEEPS2_mT_S9_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !300

_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE20_M_allocate_and_copyIPA3_fEEPS2_mT_S9_.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block115
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ac = load ptr, ptr %0, align 8, !tbaa !108   ; 3 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE20_M_allocate_and_copyIPA3_fEEPS2_mT_S9_.exit
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !109
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
  %i.ag = sub i64 %i.ae, %i.af
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.ag) #25
  br label %_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN3gmx11BasicVectorIfEESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE20_M_allocate_and_copyIPA3_fEEPS2_mT_S9_.exit, %bb.d
  store ptr %3, ptr %0, align 8, !tbaa !108
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %i.c ; 2 uses
  store ptr %i.ah, ptr %i.ab, align 8, !tbaa !148
  store ptr %i.ah, ptr %i.d, align 8, !tbaa !109
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE15_M_erase_at_endEPS2_.exit

bb.e:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !148 ; 3 uses
  %i.ak = ptrtoint ptr %i.aj to i64               ; 3 uses
  %i.al = sub i64 %i.ak, %i.h                     ; 5 uses
  %.not = icmp ult i64 %i.al, %i.c
  br i1 %.not, label %_ZSt9__advanceIPA3_flEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.am = icmp sgt i64 %i.c, 0
  br i1 %i.am, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.f
  %i.an = udiv i64 %i.c, 12                       ; 5 uses
  %i.ao = icmp ugt i64 %i.c, 11                   ; 2 uses
  %.neg = sext i1 %i.ao to i64
  %i.ap = add nuw nsw i64 %i.an, 1
  %i.aq = add nsw i64 %i.ap, %.neg                ; 3 uses
  %min.iters.check = icmp samesign ult i64 %i.aq, 16
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i16.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i.i.i.i.i
  %i.ar = mul nuw i64 %i.an, 12                   ; 2 uses
  %i.as = add i64 %i.ar, 12
  %i.at = select i1 %i.ao, i64 %i.ar, i64 %i.as   ; 2 uses
  %i.au = getelementptr i8, ptr %i.f, i64 %i.at
  %i.av = getelementptr i8, ptr %1, i64 %i.at
  %bound0 = icmp ult ptr %i.f, %i.av
  %bound1 = icmp ult ptr %1, %i.au
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i16.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aq, -8                      ; 4 uses
  %i.aw = sub nsw i64 %i.an, %n.vec
  %i.ax = mul i64 %n.vec, 12                      ; 2 uses
  %i.ay = getelementptr i8, ptr %i.f, i64 %i.ax   ; 2 uses
  %i.az = getelementptr i8, ptr %1, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = mul i64 %index, 12                      ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.ba
  %next.gep41 = getelementptr i8, ptr %1, i64 %i.ba
  %wide.vec = load <24 x float>, ptr %next.gep41, align 4, !tbaa !104, !alias.scope !316
  store <24 x float> %wide.vec, ptr %next.gep, align 4, !alias.scope !317, !noalias !316
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !304

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aq, %n.vec
  br i1 %cmp.n, label %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit.loopexit, label %.lr.ph.i.i.i.i.i16.preheader

.lr.ph.i.i.i.i.i16.preheader:                     ; preds = %vector.memcheck, %.lr.ph.preheader.i.i.i.i.i, %middle.block
  %.012.i.i.i.i.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.preheader.i.i.i.i.i ], [ %i.aw, %middle.block ]
  %.0811.i.i.i.i.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i ], [ %i.ay, %middle.block ]
  %.0910.i.i.i.i.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader.i.i.i.i.i ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i.i16

.lr.ph.i.i.i.i.i16:                               ; preds = %.lr.ph.i.i.i.i.i16.preheader, %.lr.ph.i.i.i.i.i16
  %.012.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i16 ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i16.preheader ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i16 ], [ %.0811.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i16.preheader ] ; 3 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i16 ], [ %.0910.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i16.preheader ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 8
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !104
  %i.be = load <2 x float>, ptr %.0910.i.i.i.i.i, align 4, !tbaa !104
  store <2 x float> %i.be, ptr %.0811.i.i.i.i.i, align 4
  %.sroa.5.0..08.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 8
  store float %i.bd, ptr %.sroa.5.0..08.sroa_idx.i.i.i.i.i, align 4, !tbaa !20
  %i.bf = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 12
  %i.bg = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 12 ; 2 uses
  %i.bh = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bi = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i16, label %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit.loopexit, !llvm.loop !305

_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i16, %middle.block
  %.lcssa39 = phi ptr [ %i.ay, %middle.block ], [ %i.bg, %.lr.ph.i.i.i.i.i16 ]
  %.pre = load ptr, ptr %i.ai, align 8, !tbaa !148
  br label %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit

_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit: ; preds = %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit.loopexit, %bb.f
  %i.bj = phi ptr [ %i.aj, %bb.f ], [ %.pre, %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit.loopexit ]
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.f, %bb.f ], [ %.lcssa39, %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit.loopexit ] ; 2 uses
  %.not.i17 = icmp eq ptr %i.bj, %.08.lcssa.i.i.i.i.i
  br i1 %.not.i17, label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE15_M_erase_at_endEPS2_.exit, label %_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN3gmx11BasicVectorIfEES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit
  store ptr %.08.lcssa.i.i.i.i.i, ptr %i.ai, align 8, !tbaa !148
  br label %_ZNSt6vectorIN3gmx11BasicVectorIfEESaIS2_EE15_M_erase_at_endEPS2_.exit

_ZSt9__advanceIPA3_flEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr i8, ptr %1, i64 %i.al  ; 6 uses
  %i.bk = icmp sgt i64 %i.al, 0
  br i1 %i.bk, label %.lr.ph.preheader.i.i.i.i.i19, label %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26

.lr.ph.preheader.i.i.i.i.i19:                     ; preds = %_ZSt9__advanceIPA3_flEvRT_T0_St26random_access_iterator_tag.exit
  %i.bl = udiv i64 %i.al, 12                      ; 5 uses
  %i.bm = icmp ugt i64 %i.al, 11                  ; 2 uses
  %.neg120 = sext i1 %i.bm to i64
  %i.bn = add nuw nsw i64 %i.bl, 1
  %i.bo = add nsw i64 %i.bn, %.neg120             ; 3 uses
  %min.iters.check52 = icmp samesign ult i64 %i.bo, 16
  br i1 %min.iters.check52, label %.lr.ph.i.i.i.i.i20.preheader, label %vector.memcheck53

vector.memcheck53:                                ; preds = %.lr.ph.preheader.i.i.i.i.i19
  %i.bp = mul nuw i64 %i.bl, 12                   ; 2 uses
  %i.bq = add i64 %i.bp, 12
  %i.br = select i1 %i.bm, i64 %i.bp, i64 %i.bq   ; 2 uses
  %i.bs = getelementptr i8, ptr %i.f, i64 %i.br
  %i.bt = getelementptr i8, ptr %1, i64 %i.br
  %bound054 = icmp ult ptr %i.f, %i.bt
  %bound155 = icmp ult ptr %1, %i.bs
  %found.conflict56 = and i1 %bound054, %bound155
  br i1 %found.conflict56, label %.lr.ph.i.i.i.i.i20.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck53
  %n.vec58 = and i64 %i.bo, -8                    ; 4 uses
  %i.bu = sub nsw i64 %i.bl, %n.vec58
  %i.bv = mul i64 %n.vec58, 12                    ; 2 uses
  %i.bw = getelementptr i8, ptr %i.f, i64 %i.bv
  %i.bx = getelementptr i8, ptr %1, i64 %i.bv
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph57
  %index60 = phi i64 [ 0, %vector.ph57 ], [ %index.next68, %vector.body59 ] ; 2 uses
  %i.by = mul i64 %index60, 12                    ; 2 uses
  %next.gep61 = getelementptr i8, ptr %i.f, i64 %i.by
  %next.gep62 = getelementptr i8, ptr %1, i64 %i.by
  %wide.vec63 = load <24 x float>, ptr %next.gep62, align 4, !tbaa !104, !alias.scope !318
  store <24 x float> %wide.vec63, ptr %next.gep61, align 4, !alias.scope !319, !noalias !318
  %index.next68 = add nuw i64 %index60, 8         ; 2 uses
  %i.bz = icmp eq i64 %index.next68, %n.vec58
  br i1 %i.bz, label %middle.block69, label %vector.body59, !llvm.loop !309

middle.block69:                                   ; preds = %vector.body59
  %cmp.n70 = icmp eq i64 %i.bo, %n.vec58
  br i1 %cmp.n70, label %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26.loopexit, label %.lr.ph.i.i.i.i.i20.preheader

.lr.ph.i.i.i.i.i20.preheader:                     ; preds = %vector.memcheck53, %.lr.ph.preheader.i.i.i.i.i19, %middle.block69
  %.012.i.i.i.i.i21.ph = phi i64 [ %i.bl, %vector.memcheck53 ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i19 ], [ %i.bu, %middle.block69 ]
  %.0811.i.i.i.i.i22.ph = phi ptr [ %i.f, %vector.memcheck53 ], [ %i.f, %.lr.ph.preheader.i.i.i.i.i19 ], [ %i.bw, %middle.block69 ]
  %.0910.i.i.i.i.i23.ph = phi ptr [ %1, %vector.memcheck53 ], [ %1, %.lr.ph.preheader.i.i.i.i.i19 ], [ %i.bx, %middle.block69 ]
  br label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %.lr.ph.i.i.i.i.i20.preheader, %.lr.ph.i.i.i.i.i20
  %.012.i.i.i.i.i21 = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i20 ], [ %.012.i.i.i.i.i21.ph, %.lr.ph.i.i.i.i.i20.preheader ] ; 2 uses
  %.0811.i.i.i.i.i22 = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i20 ], [ %.0811.i.i.i.i.i22.ph, %.lr.ph.i.i.i.i.i20.preheader ] ; 3 uses
  %.0910.i.i.i.i.i23 = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i20 ], [ %.0910.i.i.i.i.i23.ph, %.lr.ph.i.i.i.i.i20.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 8
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !104
  %i.cc = load <2 x float>, ptr %.0910.i.i.i.i.i23, align 4, !tbaa !104
  store <2 x float> %i.cc, ptr %.0811.i.i.i.i.i22, align 4
  %.sroa.5.0..08.sroa_idx.i.i.i.i.i25 = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 8
  store float %i.cb, ptr %.sroa.5.0..08.sroa_idx.i.i.i.i.i25, align 4, !tbaa !20
  %i.cd = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i23, i64 12
  %i.ce = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i22, i64 12
  %i.cf = add nsw i64 %.012.i.i.i.i.i21, -1
  %i.cg = icmp samesign ugt i64 %.012.i.i.i.i.i21, 1
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i20, label %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26.loopexit, !llvm.loop !310

_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26.loopexit: ; preds = %.lr.ph.i.i.i.i.i20, %middle.block69
  %.pre32 = load ptr, ptr %i.ai, align 8, !tbaa !148
  br label %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26

_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26: ; preds = %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26.loopexit, %_ZSt9__advanceIPA3_flEvRT_T0_St26random_access_iterator_tag.exit
  %i.ch = phi ptr [ %.pre32, %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26.loopexit ], [ %i.aj, %_ZSt9__advanceIPA3_flEvRT_T0_St26random_access_iterator_tag.exit ] ; 7 uses
  %.not13.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not13.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPA3_fPN3gmx11BasicVectorIfEES4_ET0_T_S7_S6_RSaIT1_E.exit, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZSt4copyIPA3_fPN3gmx11BasicVectorIfEEET0_T_S7_S6_.exit26
  %i.ci = add i64 %i.h, %i.a
  %i.cj = add i64 %i.ci, -12
  %i.ck = add i64 %i.ak, %i.b
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  %i.cm = udiv i64 %i.cl, 12                      ; 2 uses
  %i.cn = add nuw nsw i64 %i.cm, 1                ; 2 uses
  %min.iters.check80 = icmp ult i64 %i.cl, 372
  br i1 %min.iters.check80, label %.lr.ph.i.i.i.i.preheader123, label %vector.memcheck81
end_hunk_0
