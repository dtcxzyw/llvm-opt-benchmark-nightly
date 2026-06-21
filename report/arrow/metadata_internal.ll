inline.NumInlined: 4742
inline.NumDeleted: 2176
begin_hunk_0_@_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a

.noexc21:                                         ; preds = %bb.ah
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15: ; preds = %bb.ag
  %i.ee = icmp eq ptr %i.dv, %i.a                 ; 2 uses
  br i1 %i.ee, label %bb.ai, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i16

bb.ai:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15
  %i.ef = icmp ult i64 %i.dz, 16
  tail call void @llvm.assume(i1 %i.ef)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i16: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15
  %i.eg = load i64, ptr %i.a, align 8
  %i.eh = select i1 %i.ee, i64 15, i64 %i.eg
  %.not.i.i.i.i17 = icmp ugt i64 %i.dy, %i.eh
  br i1 %.not.i.i.i.i17, label %bb.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i18

bb.aj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.dz, i64 noundef 0, ptr noundef null, i64 noundef %i.eb)
          to label %.noexc22 unwind label %bb.an

.noexc22:                                         ; preds = %bb.aj
  %.pre.i.i20 = load ptr, ptr %0, align 8, !tbaa !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i18: ; preds = %.noexc22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i16
  %i.ei = phi ptr [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i.i16 ], [ %.pre.i.i20, %.noexc22 ]
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.dz ; 2 uses
  %cond.i.i.i.i19 = icmp eq i64 %i.eb, 1
  br i1 %cond.i.i.i.i19, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i18
  store i8 0, ptr %i.ej, align 1, !tbaa !14
  br label %.sink.split.i.i14

bb.al:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i.i18
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ej, i8 0, i64 %i.eb, i1 false)
  br label %.sink.split.i.i14

bb.am:                                            ; preds = %._crit_edge
  %i.ek = icmp ult i64 %i.dy, %i.dz
  br i1 %i.ek, label %.sink.split.i.i14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit23

.sink.split.i.i14:                                ; preds = %bb.am, %bb.al, %bb.ak
  store i64 %i.dy, ptr %i.b, align 8, !tbaa !102
  %i.el = load ptr, ptr %0, align 8, !tbaa !103
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 %i.dy
  store i8 0, ptr %i.em, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit23

bb.an:                                            ; preds = %bb.aj, %bb.ah
  %i.en = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.split-lp, %.loopexit.split, %bb.an
  %.pn10 = phi { ptr, i32 } [ %i.en, %bb.an ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit.split ]
  %i.eo = load ptr, ptr %0, align 8, !tbaa !103   ; 2 uses
  %i.ep = icmp eq ptr %i.eo, %i.a
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.loopexit
  %i.eq = load i64, ptr %i.a, align 8, !tbaa !14
  %i.er = add i64 %i.eq, 1
  tail call void @_ZdlPvm(ptr noundef %i.eo, i64 noundef %i.er) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit23: ; preds = %.sink.split.i.i14, %bb.am
  ret void

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.loopexit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %.pn10
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal19GetKeyValueMetadataEPKN22arrow_vendored_private11flatbuffers6VectorINS3_6OffsetIN3org6apache5arrow7flatbuf8KeyValueEEEjEEPSt10shared_ptrINS_16KeyValueMetadataEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::shared_ptr.39", align 8 ; 7 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %2, align 8, !tbaa !257
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 8 uses
  store ptr null, ptr %i.b, align 8, !tbaa !13
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.f = icmp eq i64 %i.e, 4294967297
  %i.g = trunc i64 %i.e to i32                    ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.d, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.h, align 4, !tbaa !17
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #22, !inline_history !258
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #22, !inline_history !258
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %i.g, -1
  store i32 %i.p, ptr %i.d, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.q = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i = phi i32 [ %i.g, %bb.f ], [ %i.q, %bb.g ]
  %i.r = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.r, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #22
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.d, %bb.b
  store ptr null, ptr %0, align 8, !tbaa !22, !alias.scope !259
  br label %bb.am

bb.i:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  %i.s = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #23, !noalias !265 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 1, ptr %i.t, align 8, !tbaa !15, !noalias !262
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 1, ptr %i.u, align 4, !tbaa !17, !noalias !262
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow16KeyValueMetadataESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.s, align 8, !tbaa !18, !noalias !262
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 5 uses
  invoke void @_ZN5arrow16KeyValueMetadataC1Ev(ptr noundef nonnull align 8 dereferenceable(48) %i.v)
          to label %_ZSt11make_sharedIN5arrow16KeyValueMetadataEJEESt10shared_ptrIT_EDpOT0_.exit unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow16KeyValueMetadataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i, !noalias !262

common.resume:                                    ; preds = %.body, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow16KeyValueMetadataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow16KeyValueMetadataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i ], [ %.pn24.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow16KeyValueMetadataESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit8.i.i.i.i: ; preds = %bb.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef 64) #24, !noalias !262
  br label %common.resume

_ZSt11make_sharedIN5arrow16KeyValueMetadataEJEESt10shared_ptrIT_EDpOT0_.exit: ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.s, ptr %i.x, align 8, !tbaa !13, !alias.scope !262
  store ptr %i.v, ptr %5, align 8, !tbaa !257, !alias.scope !262
  %i.y = load i32, ptr %1, align 4, !tbaa !268
  %i.z = zext i32 %i.y to i64
  invoke void @_ZN5arrow16KeyValueMetadata7reserveEl(ptr noundef nonnull align 8 dereferenceable(48) %i.v, i64 noundef %i.z)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %_ZSt11make_sharedIN5arrow16KeyValueMetadataEJEESt10shared_ptrIT_EDpOT0_.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ab = load i32, ptr %1, align 4, !tbaa !268, !noalias !270
  %i.ac = shl i32 %i.ab, 2                        ; 2 uses
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ad
  %.not84 = icmp eq i32 %i.ac, 0
  br i1 %.not84, label %.critedge30, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.l

bb.k:                                             ; preds = %_ZSt11make_sharedIN5arrow16KeyValueMetadataEJEESt10shared_ptrIT_EDpOT0_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55
  %.sroa.072.085 = phi ptr [ %i.aa, %.lr.ph ], [ %i.de, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ] ; 3 uses
  %i.ak = load i32, ptr %.sroa.072.085, align 4, !tbaa !3
  %i.al = zext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.072.085, i64 %i.al ; 6 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !3
  %i.ao = sext i32 %i.an to i64
  %i.ap = sub nsw i64 0, %i.ao
  %i.aq = getelementptr inbounds i8, ptr %i.am, i64 %i.ap ; 3 uses
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !31 ; 2 uses
  %i.as = icmp ugt i16 %i.ar, 4
  br i1 %i.as, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %bb.m

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.au = load i16, ptr %i.at, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i31 = icmp eq i16 %i.au, 0
  br i1 %.not.i.i.i31, label %bb.m, label %bb.p

bb.m:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22, !noalias !273
  invoke void @_ZN5arrow8internal12JoinToStringIJRA23_KcRA20_S2_RA32_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 1 dereferenceable(23) @.str.18, ptr noundef nonnull align 1 dereferenceable(20) @.str.19, ptr noundef nonnull align 1 dereferenceable(32) @.str.20)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %.noexc
  %i.av = load ptr, ptr %4, align 8, !tbaa !103, !noalias !273 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %_ZN5arrow6Status7IOErrorIJRA23_KcRA20_S2_RA32_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  %i.ay = load i64, ptr %i.aw, align 8, !tbaa !14, !noalias !273
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.az) #24
  br label %_ZN5arrow6Status7IOErrorIJRA23_KcRA20_S2_RA32_S2_EEES0_DpOT_.exit

bb.o:                                             ; preds = %.noexc
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %4, align 8, !tbaa !103, !noalias !273 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i: ; preds = %bb.o
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !14, !noalias !273
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !273
  br label %.body

_ZN5arrow6Status7IOErrorIJRA23_KcRA20_S2_RA32_S2_EEES0_DpOT_.exit: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22, !noalias !273
  br label %.thread

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.m, %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.bg = icmp ugt i16 %i.ar, 6
  br i1 %i.bg, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i32, label %bb.q

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i32: ; preds = %bb.p
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 6
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !31
  %.not.i.i.i33 = icmp eq i16 %i.bi, 0
  br i1 %.not.i.i.i33, label %bb.q, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i42

bb.q:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i32, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !278
  invoke void @_ZN5arrow8internal12JoinToStringIJRA23_KcRA22_S2_RA32_S2_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 1 dereferenceable(23) @.str.18, ptr noundef nonnull align 1 dereferenceable(22) @.str.21, ptr noundef nonnull align 1 dereferenceable(32) @.str.20)
          to label %.noexc39 unwind label %.loopexit.split-lp

.noexc39:                                         ; preds = %bb.q
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %.noexc39
  %i.bj = load ptr, ptr %3, align 8, !tbaa !103, !noalias !278 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bl = icmp eq ptr %i.bj, %i.bk
  br i1 %i.bl, label %_ZN5arrow6Status7IOErrorIJRA23_KcRA22_S2_RA32_S2_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37: ; preds = %bb.r
  %i.bm = load i64, ptr %i.bk, align 8, !tbaa !14, !noalias !278
  %i.bn = add i64 %i.bm, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bn) #24
  br label %_ZN5arrow6Status7IOErrorIJRA23_KcRA22_S2_RA32_S2_EEES0_DpOT_.exit

bb.s:                                             ; preds = %.noexc39
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %3, align 8, !tbaa !103, !noalias !278 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.br = icmp eq ptr %i.bp, %i.bq
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i34: ; preds = %bb.s
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !14, !noalias !278
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bt) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit7.i.i35: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !278
  br label %.body

_ZN5arrow6Status7IOErrorIJRA23_KcRA22_S2_RA32_S2_EEES0_DpOT_.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !278
  br label %.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i42: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i32
  %i.bu = zext i16 %i.au to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bu ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.bx ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4 ; 2 uses
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !98, !noalias !283 ; 3 uses
  %i.cb = zext i32 %i.ca to i64                   ; 5 uses
  store ptr %i.af, ptr %6, align 8, !tbaa !101, !alias.scope !283
  %i.cc = icmp ugt i32 %i.ca, 15
  br i1 %i.cc, label %.noexc.i, label %._crit_edge.i.i.i

.noexc.i:                                         ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i42
  %i.cd = add nuw nsw i64 %i.cb, 1
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #23
          to label %.noexc45 unwind label %.loopexit ; 2 uses

.noexc45:                                         ; preds = %.noexc.i
  store ptr %i.ce, ptr %6, align 8, !tbaa !103, !alias.scope !283
  store i64 %i.cb, ptr %i.af, align 8, !tbaa !14, !alias.scope !283
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc45, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i42
  %i.cf = phi ptr [ %i.ce, %.noexc45 ], [ %i.af, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i42 ] ; 3 uses
  switch i32 %i.ca, label %bb.u [
    i32 1, label %bb.t
    i32 0, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46
  ]

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.cg = load i8, ptr %i.bz, align 4, !tbaa !14, !noalias !283
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !14
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46

bb.u:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cf, ptr nonnull align 4 %i.bz, i64 %i.cb, i1 false)
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46: ; preds = %bb.u, %bb.t, %._crit_edge.i.i.i
  store i64 %i.cb, ptr %i.ag, align 8, !tbaa !102, !alias.scope !283
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.cb
  store i8 0, ptr %i.ch, align 1, !tbaa !14
  %8 = load i32, ptr %i.am, align 4, !tbaa !3
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 0, %9
  %11 = getelementptr inbounds i8, ptr %i.am, i64 %10
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 6
  %13 = load i16, ptr %12, align 2, !tbaa !31     ; 2 uses
  %.not.i.i.i47 = icmp ne i16 %13, 0
  call void @llvm.assume(i1 %.not.i.i.i47)
  %i.ci = zext i16 %13 to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cl ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4 ; 2 uses
  %i.co = load i32, ptr %i.cm, align 4, !tbaa !98, !noalias !286 ; 3 uses
  %i.cp = zext i32 %i.co to i64                   ; 5 uses
  store ptr %i.ah, ptr %7, align 8, !tbaa !101, !alias.scope !286
  %i.cq = icmp ugt i32 %i.co, 15
  br i1 %i.cq, label %.noexc.i50, label %._crit_edge.i.i.i49

.noexc.i50:                                       ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46
  %i.cr = add nuw nsw i64 %i.cp, 1
  %i.cs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cr) #23
          to label %.noexc51 unwind label %bb.y   ; 2 uses

.noexc51:                                         ; preds = %.noexc.i50
  store ptr %i.cs, ptr %7, align 8, !tbaa !103, !alias.scope !286
  store i64 %i.cp, ptr %i.ah, align 8, !tbaa !14, !alias.scope !286
  br label %._crit_edge.i.i.i49

._crit_edge.i.i.i49:                              ; preds = %.noexc51, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46
  %i.ct = phi ptr [ %i.cs, %.noexc51 ], [ %i.ah, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i46 ] ; 3 uses
  switch i32 %i.co, label %bb.w [
    i32 1, label %bb.v
    i32 0, label %bb.x
  ]

bb.v:                                             ; preds = %._crit_edge.i.i.i49
  %i.cu = load i8, ptr %i.cn, align 4, !tbaa !14, !noalias !286
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !14
  br label %bb.x

bb.w:                                             ; preds = %._crit_edge.i.i.i49
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr nonnull align 4 %i.cn, i64 %i.cp, i1 false)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %._crit_edge.i.i.i49
  store i64 %i.cp, ptr %i.ai, align 8, !tbaa !102, !alias.scope !286
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cp
  store i8 0, ptr %i.cv, align 1, !tbaa !14
  invoke void @_ZN5arrow16KeyValueMetadata6AppendENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_(ptr noundef nonnull align 8 dereferenceable(48) %i.v, ptr noundef nonnull %6, ptr noundef nonnull %7)
          to label %.critedge unwind label %bb.z

.critedge:                                        ; preds = %bb.x
  %i.cw = load ptr, ptr %7, align 8, !tbaa !103   ; 2 uses
  %i.cx = icmp eq ptr %i.cw, %i.ah
  br i1 %i.cx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge
  %i.cy = load i64, ptr %i.ah, align 8, !tbaa !14
  %i.cz = add i64 %i.cy, 1
  call void @_ZdlPvm(ptr noundef %i.cw, i64 noundef %i.cz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.da = load ptr, ptr %6, align 8, !tbaa !103   ; 2 uses
  %i.db = icmp eq ptr %i.da, %i.af
  br i1 %i.db, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dc = load i64, ptr %i.af, align 8, !tbaa !14
  %i.dd = add i64 %i.dc, 1
  call void @_ZdlPvm(ptr noundef %i.da, i64 noundef %i.dd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i53
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.072.085, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.de, %i.ae
  br i1 %.not, label %.critedge30, label %bb.l

bb.y:                                             ; preds = %.noexc.i50
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

bb.z:                                             ; preds = %bb.x
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dh = load ptr, ptr %7, align 8, !tbaa !103   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ah
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56: ; preds = %bb.z
  %i.dj = load i64, ptr %i.ah, align 8, !tbaa !14
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dh, i64 noundef %i.dk) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56, %bb.y
  %.pn = phi { ptr, i32 } [ %i.df, %bb.y ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i56 ], [ %i.dg, %bb.z ] ; 2 uses
  %i.dl = load ptr, ptr %6, align 8, !tbaa !103   ; 2 uses
  %i.dm = icmp eq ptr %i.dl, %i.af
  br i1 %i.dm, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i59: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit58
  %i.dn = load i64, ptr %i.af, align 8, !tbaa !14
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.do) #24
  br label %.body

.critedge30:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55, %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %2, align 8, !tbaa !257
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !13 ; 8 uses
  store ptr %i.s, ptr %i.dp, align 8, !tbaa !13
  %.not.i.i.i.i62 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i.i62, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %.critedge30
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 4 uses
  %i.ds = load atomic i64, ptr %i.dr acquire, align 8 ; 2 uses
  %i.dt = icmp eq i64 %i.ds, 4294967297
  %i.du = trunc i64 %i.ds to i32                  ; 2 uses
  br i1 %i.dt, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.dr, align 8, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dq, i64 12
  store i32 0, ptr %i.dv, align 4, !tbaa !17
  %i.dw = load ptr, ptr %i.dq, align 8, !tbaa !18
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8
  call void %i.dy(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #22, !inline_history !258
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  call void %i.eb(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #22, !inline_history !258
  br label %bb.ag

bb.ac:                                            ; preds = %bb.aa
  %i.ec = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i63 = icmp eq i8 %i.ec, 0
  br i1 %.not.i.i.i.i.i63, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ed = add nsw i32 %i.du, -1
  store i32 %i.ed, ptr %i.dr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64

bb.ae:                                            ; preds = %bb.ac
  %i.ee = atomicrmw volatile add ptr %i.dr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64: ; preds = %bb.ae, %bb.ad
  %.0.i.i.i.i.i.i65 = phi i32 [ %i.du, %bb.ad ], [ %i.ee, %bb.ae ]
  %i.ef = icmp eq i32 %.0.i.i.i.i.i.i65, 1
  br i1 %i.ef, label %bb.af, label %bb.ag, !prof !21

bb.af:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dq) #22
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i64, %bb.ab, %.critedge30
  store ptr null, ptr %0, align 8, !tbaa !22, !alias.scope !289
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !13  ; 2 uses
  %.not.i.i67 = icmp eq ptr %.pre, null
  br i1 %.not.i.i67, label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71, label %.thread

.thread:                                          ; preds = %_ZN5arrow6Status7IOErrorIJRA23_KcRA22_S2_RA32_S2_EEES0_DpOT_.exit, %_ZN5arrow6Status7IOErrorIJRA23_KcRA20_S2_RA32_S2_EEES0_DpOT_.exit, %bb.ag
  %i.eg = phi ptr [ %.pre, %bb.ag ], [ %i.s, %_ZN5arrow6Status7IOErrorIJRA23_KcRA20_S2_RA32_S2_EEES0_DpOT_.exit ], [ %i.s, %_ZN5arrow6Status7IOErrorIJRA23_KcRA22_S2_RA32_S2_EEES0_DpOT_.exit ] ; 7 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 4 uses
  %i.ei = load atomic i64, ptr %i.eh acquire, align 8 ; 2 uses
  %i.ej = icmp eq i64 %i.ei, 4294967297
  %i.ek = trunc i64 %i.ei to i32                  ; 2 uses
  br i1 %i.ej, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread
  store i32 0, ptr %i.eh, align 8, !tbaa !15
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  store i32 0, ptr %i.el, align 4, !tbaa !17
  %i.em = load ptr, ptr %i.eg, align 8, !tbaa !18
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #22, !inline_history !292
  %i.ep = load ptr, ptr %i.eg, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.er = load ptr, ptr %i.eq, align 8
  call void %i.er(ptr noundef nonnull align 8 dereferenceable(16) %i.eg) #22, !inline_history !292
  br label %_ZNSt12__shared_ptrIN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit71

bb.ai:                                            ; preds = %.thread
  %i.es = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i68 = icmp eq i8 %i.es, 0
  br i1 %.not.i.i.i68, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.et = add nsw i32 %i.ek, -1
  store i32 %i.et, ptr %i.eh, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69

bb.ak:                                            ; preds = %bb.ai
  %i.eu = atomicrmw volatile add ptr %i.eh, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i69: ; preds = %bb.ak, %bb.aj
  %.0.i.i.i.i70 = phi i32 [ %i.ek, %bb.aj ], [ %i.eu, %bb.ak ]
  %i.ev = icmp eq i32 %.0.i.i.i.i70, 1
end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev:bb.a
_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !203
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #24
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal17GetTensorMetadataERKNS_6BufferEPSt10shared_ptrINS_8DataTypeEEPSt6vectorIlSaIlEESC_PS9_INSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISI_EE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 initializes((0, 8)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %1, ptr noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr noundef %5) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.arrow_vendored_private::flatbuffers::Verifier", align 8 ; 13 uses
  %7 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::vector", align 8       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !399, !range !72, !noundef !73
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = select i1 %i.c, ptr %i.e, ptr null, !prof !58 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !605  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !758
  %.tr.i.i = trunc i64 %i.h to i32
  %i.i = shl i32 %.tr.i.i, 3
  store ptr %i.f, ptr %6, align 8, !tbaa !761, !noalias !758
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.h, ptr %i.j, align 8, !tbaa !765, !noalias !758
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 128, ptr %i.k, align 8, !tbaa !3, !noalias !758
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 %i.i, ptr %.sroa.43.0..sroa_idx.i.i.i, align 4, !tbaa !3, !noalias !758
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !172, !noalias !758
  %.sroa.64.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 1, ptr %.sroa.64.0..sroa_idx.i.i.i, align 1, !tbaa !172, !noalias !758
  %.sroa.75.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 2147483647, ptr %.sroa.75.0..sroa_idx.i.i.i, align 8, !tbaa !440, !noalias !758
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i8 0, ptr %.sroa.8.0..sroa_idx.i.i.i, align 8, !tbaa !172, !noalias !758
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false), !noalias !758
  %i.m = icmp ugt i64 %i.h, 11
  br i1 %i.m, label %bb.b, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !758 ; 2 uses
  %or.cond.i.i.i.i.i = icmp sgt i32 %i.n, 0
  br i1 %or.cond.i.i.i.i.i, label %bb.c, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.o = zext nneg i32 %i.n to i64                ; 2 uses
  %i.p = add i64 %i.h, -1
  %.not.i.i.i.i.i = icmp ult i64 %i.p, %i.o
  br i1 %.not.i.i.i.i.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, label %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !758
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i: ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.o
  %i.r = call noundef zeroext i1 @_ZNK3org6apache5arrow7flatbuf7Message6VerifyERN22arrow_vendored_private11flatbuffers8VerifierE(ptr noundef nonnull align 1 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(72) %6), !noalias !758
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !758
  br i1 %i.r, label %_ZN5arrow6StatusD2Ev.exit.thread, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit.thread:                 ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  %i.s = load i32, ptr %i.e, align 4, !tbaa !3, !noalias !758
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.t ; 4 uses
  store ptr null, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.v = load i32, ptr %i.u, align 4, !tbaa !3
  %i.w = sext i32 %i.v to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.u, i64 %i.x ; 3 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !31   ; 2 uses
  %i.aa = icmp ugt i16 %i.z, 6
  br i1 %i.aa, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.thread.i, %_ZN5arrow3ipc8internal17VerifyFlatbuffersIN3org6apache5arrow7flatbuf7MessageEEEbPKhl.exit.i
  call void @_ZN5arrow6Status8FromArgsIJRA29_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %7, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(29) @.str.50)
  %.pr = load ptr, ptr %7, align 8, !tbaa !22, !nonnull !73, !noundef !73
  store ptr %.pr, ptr %0, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %.critedge

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i: ; preds = %_ZN5arrow6StatusD2Ev.exit.thread
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i

_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i
  %i.ad = zext i16 %i.ac to i64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ad
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !14
  %i.ag = icmp eq i8 %i.af, 4
  %i.ah = icmp ugt i16 %i.z, 8
  %or.cond.i = and i1 %i.ah, %i.ag
  br i1 %or.cond.i, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.aj, 0
  br i1 %.not.i.i.i.i, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread, label %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit

_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i
  %i.ak = zext i16 %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.an ; 16 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.aq = sext i32 %i.ap to i64
  %i.ar = sub nsw i64 0, %i.aq                    ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i16, ptr %i.at, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i47 = icmp ne i16 %i.au, 0
  call void @llvm.assume(i1 %.not.i.i.i47)
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !766 ; 4 uses
  %.not = icmp eq i32 %i.ba, 0
  br i1 %.not, label %._crit_edge, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50.lr.ph

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50.lr.ph: ; preds = %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 13 uses
  %i.be = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %wide.trip.count = zext i32 %i.ba to i64
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50

_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit.thread: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i.i, %_ZNK3org6apache5arrow7flatbuf7Message11header_typeEv.exit.i, %_ZN5arrow6StatusD2Ev.exit.thread
  call void @_ZN5arrow6Status8FromArgsIJRA57_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(57) @.str.25)
  br label %.critedge

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre100 = load i32, ptr %i.ao, align 4, !tbaa !3
  %.pre104 = sext i32 %.pre100 to i64
  %.pre105 = sub nsw i64 0, %.pre104
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit
  %.pre-phi106 = phi i64 [ %.pre105, %._crit_edge.loopexit ], [ %i.ar, %_ZNK3org6apache5arrow7flatbuf7Message16header_as_TensorEv.exit ] ; 4 uses
  %i.bh = getelementptr inbounds i8, ptr %i.ao, i64 %.pre-phi106 ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 2, !tbaa !31
  %i.bj = icmp ugt i16 %i.bi, 10
  br i1 %i.bj, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i48, label %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i48: ; preds = %._crit_edge
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 10
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i49 = icmp eq i16 %i.bl, 0
  br i1 %.not.i.i.i49, label %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i61

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %indvars.iv = phi i64 [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50.lr.ph ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.bm = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.bn = sext i32 %i.bm to i64
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = getelementptr inbounds i8, ptr %i.ao, i64 %i.bo
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i51 = icmp ne i16 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i51)
  %i.bs = zext i16 %i.br to i64
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.bs ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bv = zext i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = shl i64 %indvars.iv, 2
  %i.bz = and i64 %i.by, 4294967292
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  %i.cc = zext i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.cc ; 6 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = sext i32 %i.ce to i64
  %i.cg = sub nsw i64 0, %i.cf                    ; 2 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cd, i64 %i.cg ; 2 uses
  %i.ci = load i16, ptr %i.ch, align 2, !tbaa !31
  %i.cj = icmp ugt i16 %i.ci, 4
  br i1 %i.cj, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !31 ; 2 uses
  %.not.i.i = icmp eq i16 %i.cl, 0
  br i1 %.not.i.i, label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i
  %i.cm = zext i16 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !440
  br label %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit

_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i, %bb.d
  %i.cp = phi i64 [ %i.co, %bb.d ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i ], [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50 ] ; 2 uses
  %i.cq = load ptr, ptr %i.bb, align 8, !tbaa !488 ; 4 uses
  %i.cr = load ptr, ptr %i.bc, align 8, !tbaa !736
  %.not.i.i53 = icmp eq ptr %i.cq, %i.cr
  br i1 %.not.i.i53, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit
  store i64 %i.cp, ptr %i.cq, align 8, !tbaa !440
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  store ptr %i.cs, ptr %i.bb, align 8, !tbaa !488
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

bb.f:                                             ; preds = %_ZNK3org6apache5arrow7flatbuf9TensorDim4sizeEv.exit
  %i.ct = load ptr, ptr %3, align 8, !tbaa !490   ; 4 uses
  %i.cu = ptrtoint ptr %i.cq to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 6 uses
  %i.cx = icmp eq i64 %i.cw, 9223372036854775800
  br i1 %i.cx, label %bb.g, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.37) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.cy = ashr exact i64 %i.cw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.cy, i64 1)
  %i.cz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.cy ; 2 uses
  %i.da = icmp ult i64 %i.cz, %i.cy
  %i.db = call i64 @llvm.umin.i64(i64 %i.cz, i64 1152921504606846975)
  %i.dc = select i1 %i.da, i64 1152921504606846975, i64 %i.db ; 3 uses
  %.not.i.i.i.i54 = icmp ne i64 %i.dc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i54)
  %i.dd = shl nuw nsw i64 %i.dc, 3
  %i.de = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #23 ; 4 uses
  %i.df = getelementptr inbounds i8, ptr %i.de, i64 %i.cw ; 2 uses
  store i64 %i.cp, ptr %i.df, align 8, !tbaa !440
  %i.dg = icmp sgt i64 %i.cw, 0
  br i1 %i.dg, label %bb.h, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.de, ptr align 8 %i.ct, i64 %i.cw, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cw) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i
  store ptr %i.de, ptr %3, align 8, !tbaa !490
  store ptr %i.dh, ptr %i.bb, align 8, !tbaa !488
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.dc
  store ptr %i.di, ptr %i.bc, align 8, !tbaa !736
  %.pre = load i32, ptr %i.cd, align 4, !tbaa !3
  %.pre111 = sext i32 %.pre to i64
  %.pre113 = sub nsw i64 0, %.pre111
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit

_ZNSt6vectorIlSaIlEE9push_backEOl.exit:           ; preds = %bb.e, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i
  %.pre-phi114 = phi i64 [ %i.cg, %bb.e ], [ %.pre113, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.dj = getelementptr inbounds i8, ptr %i.cd, i64 %.pre-phi114 ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !31
  %i.dl = icmp ugt i16 %i.dk, 6
  br i1 %i.dl, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i55, label %._crit_edge.i.i.i

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i55: ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 6
  %i.dn = load i16, ptr %i.dm, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i56 = icmp eq i16 %i.dn, 0
  br i1 %.not.i.i.i56, label %._crit_edge.i.i.i, label %bb.j

._crit_edge.i.i.i:                                ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i55, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit
  store ptr %i.bd, ptr %8, align 8, !tbaa !101, !alias.scope !768
  store i64 0, ptr %i.be, align 8, !tbaa !102, !alias.scope !768
  store i8 0, ptr %i.bd, align 8, !tbaa !14, !alias.scope !768
  br label %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit

bb.j:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i55
  %i.do = zext i16 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.do ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !3
  %i.dr = zext i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.dr ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 4 ; 2 uses
  %i.du = load i32, ptr %i.ds, align 4, !tbaa !98, !noalias !774 ; 3 uses
  %i.dv = zext i32 %i.du to i64                   ; 5 uses
  store ptr %i.bd, ptr %8, align 8, !tbaa !101, !alias.scope !774
  %i.dw = icmp ugt i32 %i.du, 15
  br i1 %i.dw, label %.noexc.i14.i, label %._crit_edge.i.i.i.i

.noexc.i14.i:                                     ; preds = %bb.j
  %i.dx = add nuw nsw i64 %i.dv, 1
  %i.dy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #23 ; 2 uses
  store ptr %i.dy, ptr %8, align 8, !tbaa !103, !alias.scope !774
  store i64 %i.dv, ptr %i.bd, align 8, !tbaa !14, !alias.scope !774
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i14.i, %bb.j
  %i.dz = phi ptr [ %i.dy, %.noexc.i14.i ], [ %i.bd, %bb.j ] ; 3 uses
  switch i32 %i.du, label %bb.l [
    i32 1, label %bb.k
    i32 0, label %bb.m
  ]

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ea = load i8, ptr %i.dt, align 4, !tbaa !14, !noalias !774
  store i8 %i.ea, ptr %i.dz, align 1, !tbaa !14
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dz, ptr nonnull align 4 %i.dt, i64 %i.dv, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %._crit_edge.i.i.i.i
  store i64 %i.dv, ptr %i.be, align 8, !tbaa !102, !alias.scope !774
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.dv
  store i8 0, ptr %i.eb, align 1, !tbaa !14
  br label %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit

_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit: ; preds = %._crit_edge.i.i.i, %bb.m
  %i.ec = load ptr, ptr %i.bf, align 8, !tbaa !775 ; 6 uses
  %i.ed = load ptr, ptr %i.bg, align 8, !tbaa !777
  %.not.i.i57 = icmp eq ptr %i.ec, %i.ed
  br i1 %.not.i.i57, label %bb.p, label %bb.n

bb.n:                                             ; preds = %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 3 uses
  store ptr %i.ee, ptr %i.ec, align 8, !tbaa !101
  %i.ef = load ptr, ptr %8, align 8, !tbaa !103   ; 2 uses
  %i.eg = icmp eq ptr %i.ef, %i.bd
  br i1 %i.eg, label %bb.o, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.eh = load i64, ptr %i.be, align 8, !tbaa !102 ; 3 uses
  %i.ei = icmp ult i64 %i.eh, 16
  call void @llvm.assume(i1 %i.ei)
  %i.ej = add nuw nsw i64 %i.eh, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ee, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.ej, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.n
  store ptr %i.ef, ptr %i.ec, align 8, !tbaa !103
  %i.ek = load i64, ptr %i.bd, align 8, !tbaa !14
  store i64 %i.ek, ptr %i.ee, align 8, !tbaa !14
  %.pre98 = load i64, ptr %i.be, align 8, !tbaa !102
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.el = phi i64 [ %.pre98, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.eh, %bb.o ]
  %i.em = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store i64 %i.el, ptr %i.em, align 8, !tbaa !102
  store ptr %i.bd, ptr %8, align 8, !tbaa !103
  store i64 0, ptr %i.be, align 8, !tbaa !102
  %i.en = load ptr, ptr %i.bf, align 8, !tbaa !775
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  store ptr %i.eo, ptr %i.bf, align 8, !tbaa !775
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.p:                                             ; preds = %_ZN5arrow3ipc8internal21StringFromFlatbuffersB5cxx11EPKN22arrow_vendored_private11flatbuffers6StringE.exit
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr %i.ec, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.q

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.p
  %.pre99 = load ptr, ptr %8, align 8, !tbaa !103 ; 2 uses
  %i.ep = icmp eq ptr %.pre99, %i.bd
  br i1 %i.ep, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  %i.eq = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.er = add i64 %i.eq, 1
  call void @_ZdlPvm(ptr noundef %.pre99, i64 noundef %i.er) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i50, !llvm.loop !778

bb.q:                                             ; preds = %bb.p
  %i.es = landingpad { ptr, i32 }
          cleanup
  %i.et = load ptr, ptr %8, align 8, !tbaa !103   ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.bd
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58: ; preds = %bb.q
  %i.ev = load i64, ptr %i.bd, align 8, !tbaa !14
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit60: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ai

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i61: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i48
  %i.ex = zext i16 %i.bl to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !3
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fa
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !779 ; 2 uses
  %.not38 = icmp eq i32 %i.fc, 0
  br i1 %.not38, label %_ZNK3org6apache5arrow7flatbuf6Tensor7stridesEv.exit.thread, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i64

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i64: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i61
  %.not39 = icmp eq i32 %i.fc, %i.ba
  br i1 %.not39, label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67.lr.ph, label %bb.r

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67.lr.ph: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i64
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %wide.trip.count96 = zext i32 %i.ba to i64
  %.pre101 = load ptr, ptr %i.fd, align 8, !tbaa !488
  %.pre102 = load ptr, ptr %i.fe, align 8, !tbaa !736
  br label %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67

bb.r:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i64
  call void @_ZN5arrow6Status8FromArgsIJRA59_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 5, ptr noundef nonnull align 1 dereferenceable(59) @.str.26)
  br label %.critedge

_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67: ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67.lr.ph, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit77
  %i.ff = phi ptr [ %.pre102, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67.lr.ph ], [ %i.gm, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit77 ] ; 3 uses
  %i.fg = phi ptr [ %.pre101, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67.lr.ph ], [ %i.gn, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit77 ] ; 3 uses
  %indvars.iv93 = phi i64 [ 0, %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67.lr.ph ], [ %indvars.iv.next94, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit77 ] ; 2 uses
  %i.fh = load i32, ptr %i.ao, align 4, !tbaa !3
  %i.fi = sext i32 %i.fh to i64
  %i.fj = sub nsw i64 0, %i.fi
  %i.fk = getelementptr inbounds i8, ptr %i.ao, i64 %i.fj
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 10
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !31 ; 2 uses
  %.not.i.i.i68 = icmp ne i16 %i.fm, 0
  call void @llvm.assume(i1 %.not.i.i.i68)
  %i.fn = zext i16 %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.fn ; 2 uses
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !3
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 4
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fs, i64 %indvars.iv93
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !440 ; 2 uses
  %.not.i.i70 = icmp eq ptr %i.fg, %i.ff
  br i1 %.not.i.i70, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67
  store i64 %i.fu, ptr %i.fg, align 8, !tbaa !440
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fg, i64 8 ; 2 uses
  store ptr %i.fv, ptr %i.fd, align 8, !tbaa !488
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit77

bb.t:                                             ; preds = %_ZNK22arrow_vendored_private11flatbuffers5Table22GetOptionalFieldOffsetEt.exit.i.i.i67
  %i.fw = load ptr, ptr %4, align 8, !tbaa !490   ; 4 uses
  %i.fx = ptrtoint ptr %i.ff to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 6 uses
  %i.ga = icmp eq i64 %i.fz, 9223372036854775800
end_hunk_1
