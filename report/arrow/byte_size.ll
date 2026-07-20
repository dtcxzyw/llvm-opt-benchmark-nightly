inline.NumInlined: 1682
inline.NumDeleted: 750
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN5arrow4util20ReferencedBufferSizeERKNS_9ArrayDataE:bb.a
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.h ], [ %i.w, %bb.i ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !181

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.g) #20
  br label %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.d, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %i.y

bb.l:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.b
  %i.z = load ptr, ptr %2, align 8, !tbaa !148    ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.m, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !68

bb.m:                                             ; preds = %bb.l
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !110 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 4294967297
  %i.ag = trunc i64 %i.ae to i32                  ; 2 uses
  br i1 %i.af, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.ad, align 8, !tbaa !177
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.ah, align 4, !tbaa !179
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !81
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !205
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !81
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20, !inline_history !205
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

bb.p:                                             ; preds = %bb.n
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !112
  %.not.i.i.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.ag, %bb.q ], [ %i.aq, %bb.r ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.s, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, !prof !181

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i: ; preds = %bb.s, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.o, %bb.m
  %.pr.i = load ptr, ptr %2, align 8, !tbaa !148  ; 2 uses
  %.not.i.i7 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i7, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, !prof !182

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %bb.l
  %i.as = phi ptr [ %.pr.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i ], [ %i.z, %bb.l ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.au = load i8, ptr %i.at, align 1, !tbaa !151, !range !66, !noundef !67
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #20
  br label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultIlEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator.90", align 1 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  store ptr null, ptr %0, align 8, !tbaa !148
  invoke void @_ZN5arrow6Status8CopyFromERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN5arrow6StatusC2ERKS0_.exit unwind label %bb.h

_ZN5arrow6StatusC2ERKS0_.exit:                    ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !148
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.g, !prof !181

bb.b:                                             ; preds = %_ZN5arrow6StatusC2ERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.h

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  invoke void @_ZNK5arrow6Status8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.d unwind label %bb.h

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5arrow8internal14DieWithMessageERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.c = load ptr, ptr %2, align 8, !tbaa !189    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.f = load i64, ptr %i.d, align 8, !tbaa !112
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.c, i64 noundef %i.g) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.h = load ptr, ptr %5, align 8, !tbaa !189    ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !112
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.m = load ptr, ptr %3, align 8, !tbaa !189    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6
  %i.p = load i64, ptr %i.n, align 8, !tbaa !112
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.g

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZN5arrow6StatusC2ERKS0_.exit
  ret void

bb.h:                                             ; preds = %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #23
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i64 @_ZN5arrow4util12_GLOBAL__N_117RangesToLengthSumERKNS_5ArrayE(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::shared_ptr.221", align 8 ; 6 uses
  %2 = alloca %"class.std::shared_ptr.44", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @_ZNK5arrow11StructArray5fieldEi(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.44") align 8 %2, ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 2)
  call void @llvm.experimental.noalias.scope.decl(metadata !206)
  call void @llvm.experimental.noalias.scope.decl(metadata !209)
  %i.a = load ptr, ptr %2, align 8, !tbaa !78, !noalias !212 ; 4 uses
  store ptr %i.a, ptr %1, align 8, !tbaa !213, !alias.scope !212
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !110, !noalias !212 ; 3 uses
  store ptr null, ptr %i.c, align 8, !tbaa !110, !noalias !212
  store ptr %i.d, ptr %i.b, align 8, !tbaa !110, !alias.scope !212
  store ptr null, ptr %2, align 8, !tbaa !78, !noalias !212
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !142  ; 4 uses
  %.not31 = icmp eq i64 %i.h, 0
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 4 uses
  %i.k = load ptr, ptr %i.i, align 8, !tbaa !216  ; 4 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.n = load i64, ptr %i.m, align 8, !tbaa !120  ; 3 uses
  %i.o = icmp eq i64 %i.h, 1
  br i1 %i.o, label %.epil.preheader, label %.lr.ph.split.us.new

.lr.ph.split.us.new:                              ; preds = %.lr.ph.split.us
  %unroll_iter = and i64 %i.h, -2
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.split.us.new
  %.0933.us = phi i64 [ 0, %.lr.ph.split.us.new ], [ %i.an, %bb.f ]
  %.sroa.626.032.us = phi i64 [ 0, %.lr.ph.split.us.new ], [ %i.ao, %bb.f ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.split.us.new ], [ %niter.next.1, %bb.f ]
  %i.p = add nsw i64 %i.n, %.sroa.626.032.us      ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !112
  %i.t = trunc i64 %i.p to i8
  %i.u = and i8 %i.t, 7
  %i.v = lshr i8 %i.s, %i.u
  %i.w = trunc i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !218
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.sroa.626.032.us
  %i.z = load i64, ptr %i.y, align 8, !tbaa !203
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.us = phi i64 [ %i.z, %bb.c ], [ undef, %bb.b ]
  %i.aa = add nsw i64 %.sroa.0.0.i.us, %.0933.us
  %i.ab = or disjoint i64 %.sroa.626.032.us, 1    ; 2 uses
  %i.ac = add nsw i64 %i.n, %i.ab                 ; 2 uses
  %i.ad = lshr i64 %i.ac, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !112
  %i.ag = trunc i64 %i.ac to i8
  %i.ah = and i8 %i.ag, 7
  %i.ai = lshr i8 %i.af, %i.ah
  %i.aj = trunc i8 %i.ai to i1
  br i1 %i.aj, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.j, align 8, !tbaa !218
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ab
  %i.am = load i64, ptr %i.al, align 8, !tbaa !203
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.0.0.i.us.1 = phi i64 [ %i.am, %bb.e ], [ undef, %bb.d ]
  %i.an = add nsw i64 %.sroa.0.0.i.us.1, %i.aa    ; 2 uses
  %i.ao = add nuw nsw i64 %.sroa.626.032.us, 2    ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.epil.preheader, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.t
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !110
  br label %._crit_edge

.epil.preheader:                                  ; preds = %.lr.ph.split.us, %bb.f
  %.0933.us.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %i.an, %bb.f ]
  %.sroa.626.032.us.epil.init = phi i64 [ 0, %.lr.ph.split.us ], [ %i.ao, %bb.f ] ; 2 uses
  %i.ap = add nsw i64 %i.n, %.sroa.626.032.us.epil.init ; 2 uses
  %i.aq = lshr i64 %i.ap, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !112
  %i.at = trunc i64 %i.ap to i8
  %i.au = and i8 %i.at, 7
  %i.av = lshr i8 %i.as, %i.au
  %i.aw = trunc i8 %i.av to i1
  br i1 %i.aw, label %bb.g, label %._crit_edge.loopexit45.epilog-lcssa

bb.g:                                             ; preds = %.epil.preheader
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !218
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %.sroa.626.032.us.epil.init
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !203
  br label %._crit_edge.loopexit45.epilog-lcssa

._crit_edge.loopexit45.epilog-lcssa:              ; preds = %bb.g, %.epil.preheader
  %.sroa.0.0.i.us.epil = phi i64 [ %i.az, %bb.g ], [ undef, %.epil.preheader ]
  %i.ba = add nsw i64 %.sroa.0.0.i.us.epil, %.0933.us.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit45.epilog-lcssa, %._crit_edge.loopexit, %bb.a
  %3 = phi ptr [ %i.d, %bb.a ], [ %.pre, %._crit_edge.loopexit ], [ %i.d, %._crit_edge.loopexit45.epilog-lcssa ] ; 8 uses
  %.09.lcssa = phi i64 [ 0, %bb.a ], [ %i.cq, %._crit_edge.loopexit ], [ %i.ba, %._crit_edge.loopexit45.epilog-lcssa ]
  %.not.i.i14 = icmp eq ptr %3, null
  br i1 %.not.i.i14, label %_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_10UInt64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.bc = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 4294967297
  %i.be = trunc i64 %i.bc to i32                  ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.bb, align 8, !tbaa !177
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.bf, align 4, !tbaa !179
  %i.bg = load ptr, ptr %3, align 8, !tbaa !81
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  call void %i.bi(ptr noundef nonnull align 8 dereferenceable(16) %3) #20, !inline_history !223
  %i.bj = load ptr, ptr %3, align 8, !tbaa !81
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(16) %3) #20, !inline_history !223
  br label %_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_10UInt64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.bm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !112
  %.not.i.i.i15 = icmp eq i8 %i.bm, 0
  br i1 %.not.i.i.i15, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bn = add nsw i32 %i.be, -1
  store i32 %i.bn, ptr %i.bb, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

bb.l:                                             ; preds = %bb.j
  %i.bo = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i17 = phi i32 [ %i.be, %bb.k ], [ %i.bo, %bb.l ]
  %i.bp = icmp eq i32 %.0.i.i.i.i17, 1
  br i1 %i.bp, label %bb.m, label %_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_10UInt64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !181

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #20
  br label %_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_10UInt64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_10UInt64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %._crit_edge, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i16, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i64 %.09.lcssa

.lr.ph.splitthread-pre-split:                     ; preds = %bb.t
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !216
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.bq = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ null, %.lr.ph ] ; 2 uses
  %.0933 = phi i64 [ %i.cq, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ]
  %.sroa.626.032 = phi i64 [ %i.cr, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 6 uses
  %.not.i.i.i18 = icmp eq ptr %i.bq, null
  %i.br = load ptr, ptr %i.e, align 8, !tbaa !73  ; 6 uses
  br i1 %.not.i.i.i18, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !120
  %i.bu = add nsw i64 %i.bt, %.sroa.626.032       ; 2 uses
  %i.bv = lshr i64 %i.bu, 3
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !112
  %i.by = trunc i64 %i.bu to i8
  %i.bz = and i8 %i.by, 7
  %i.ca = lshr i8 %i.bx, %i.bz
  %i.cb = trunc i8 %i.ca to i1
  br i1 %i.cb, label %bb.s, label %bb.t

bb.o:                                             ; preds = %.lr.ph.split
  %i.cc = load ptr, ptr %i.br, align 8, !tbaa !147
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !224
  switch i32 %i.ce, label %bb.r [
    i32 27, label %_ZNK5arrow5Array6IsNullEl.exit.i
    i32 28, label %bb.p
    i32 38, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cf = invoke noundef zeroext i1 @_ZN5arrow8internal16IsNullDenseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.br, i64 noundef %.sroa.626.032)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.p
  br i1 %i.cf, label %bb.t, label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.cg = invoke noundef zeroext i1 @_ZN5arrow8internal19IsNullRunEndEncodedERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.br, i64 noundef %.sroa.626.032)
          to label %.noexc21 unwind label %bb.u

.noexc21:                                         ; preds = %bb.q
  br i1 %i.cg, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ci = load atomic i64, ptr %i.ch seq_cst, align 8
  %i.cj = load ptr, ptr %i.e, align 8, !tbaa !73
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !142
  %.not.i = icmp eq i64 %i.ci, %i.cl
  br i1 %.not.i, label %bb.t, label %bb.s

_ZNK5arrow5Array6IsNullEl.exit.i:                 ; preds = %bb.o
  %i.cm = invoke noundef zeroext i1 @_ZN5arrow8internal17IsNullSparseUnionERKNS_9ArrayDataEl(ptr noundef nonnull align 8 dereferenceable(120) %i.br, i64 noundef %.sroa.626.032)
          to label %.noexc22 unwind label %bb.u

.noexc22:                                         ; preds = %_ZNK5arrow5Array6IsNullEl.exit.i
  br i1 %i.cm, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.noexc22, %bb.r, %.noexc21, %.noexc, %bb.n
  %i.cn = load ptr, ptr %i.j, align 8, !tbaa !218
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %.sroa.626.032
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !203
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.noexc22, %bb.r, %.noexc21, %.noexc, %bb.n
  %.sroa.0.0.i = phi i64 [ %i.cp, %bb.s ], [ undef, %.noexc22 ], [ undef, %bb.n ], [ undef, %bb.r ], [ undef, %.noexc21 ], [ undef, %.noexc ]
  %i.cq = add nsw i64 %.sroa.0.0.i, %.0933        ; 2 uses
  %i.cr = add nuw nsw i64 %.sroa.626.032, 1       ; 2 uses
  %.not = icmp eq i64 %i.cr, %i.h
  br i1 %.not, label %._crit_edge.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !238

bb.u:                                             ; preds = %_ZNK5arrow5Array6IsNullEl.exit.i, %bb.q, %bb.p
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow12NumericArrayINS0_10UInt64TypeEEELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.cs
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow5ArrayELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 8 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !177
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !179
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !240
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20, !inline_history !240
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !112
  %.not.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !181

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #20
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !148    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10shared_ptrINS_5ArrayEEE7DestroyEv.exit.thread, !prof !68

end_hunk_0
