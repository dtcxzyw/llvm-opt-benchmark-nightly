inline.NumInlined: 4742
inline.NumDeleted: 2176
begin_hunk_0_@_ZN5arrow8internal7ToCharsIiJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_DpOT0_:bb.a
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr @__const._ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.__digits, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !14
  %i.dq = getelementptr inbounds nuw i8, ptr %.026.i24, i64 1
  store i8 %i.dp, ptr %i.dq, align 1, !tbaa !14
  %i.dr = load i8, ptr %i.dn, align 2, !tbaa !14
  br label %._crit_edge.loopexit60

bb.af:                                            ; preds = %._crit_edge.i.i.i31
  %i.ds = trunc nuw nsw i32 %.0.lcssa.i.i.i32 to i8
  %i.dt = or disjoint i8 %i.ds, 48
  br label %._crit_edge.loopexit60

.loopexit.split:                                  ; preds = %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

.loopexit.split-lp:                               ; preds = %.split.us
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit

._crit_edge.loopexit60:                           ; preds = %bb.ae, %bb.af
  %storemerge.i.i.i34 = phi i8 [ %i.dt, %bb.af ], [ %i.dr, %bb.ae ]
  store i8 %storemerge.i.i.i34, ptr %.026.i24, align 1, !tbaa !14
  %i.du = getelementptr inbounds nuw i8, ptr %.026.i24, i64 %i.cr
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i.i, %._crit_edge.loopexit60
  %.pn68.i.pn.lcssa = phi ptr [ %i.du, %._crit_edge.loopexit60 ], [ %i.bf, %_ZNSt8__detail18__to_chars_10_implIjEEvPcjT_.exit.i.i ], [ %i.f, %bb.b ]
  %i.dv = load ptr, ptr %0, align 8, !tbaa !103   ; 3 uses
  %i.dw = ptrtoint ptr %.pn68.i.pn.lcssa to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx                    ; 6 uses
  %i.dz = load i64, ptr %i.b, align 8, !tbaa !102 ; 7 uses
  %i.ea = icmp ult i64 %i.dz, %i.dy
  br i1 %i.ea, label %bb.ag, label %bb.am

bb.ag:                                            ; preds = %._crit_edge
  %i.eb = sub nuw i64 %i.dy, %i.dz                ; 4 uses
  %i.ec = sub i64 9223372036854775807, %i.dz
  %i.ed = icmp ult i64 %i.ec, %i.eb
  br i1 %i.ed, label %bb.ah, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i15

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.53) #25
          to label %.noexc21 unwind label %bb.an

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
  %.sroa.072.085 = phi ptr [ %i.aa, %.lr.ph ], [ %i.dk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit55 ] ; 3 uses
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

end_hunk_0
begin_hunk_1_@_ZN5arrow3ipc8internal24WriteSparseTensorMessageERKNS_12SparseTensorElRKSt6vectorINS1_14BufferMetadataESaIS6_EERKNS0_15IpcWriteOptionsE:bb.a
  %i.yt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ex, %.loopexit.split-lp.i.i.i, %.loopexit.i.i.i
  %.sroa.02.081.i.i.i = phi ptr [ %.sroa.02.0.lcssa.i.i.i, %bb.ex ], [ %.sroa.02.0.lcssa.i.i.i, %bb.ey ], [ %.sroa.02.0129.i.i.i, %.loopexit.i.i.i ], [ %.sroa.02.0129.i.i.i, %.loopexit.split-lp.i.i.i ] ; 3 uses
  %.sroa.14.075.i.i.i = phi ptr [ %.sroa.14.0.lcssa.i.i.i, %bb.ex ], [ %.sroa.14.0.lcssa.i.i.i, %bb.ey ], [ %.sroa.14.0131.i.i.i, %.loopexit.i.i.i ], [ %.sroa.14.0131.i.i.i, %.loopexit.split-lp.i.i.i ]
  %.pn65.i.i.i = phi { ptr, i32 } [ %i.ys, %bb.ex ], [ %i.yt, %bb.ey ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i, %.loopexit.split-lp.i.i.i ] ; 2 uses
  %.not.i.i.i140.i.i.i = icmp eq ptr %.sroa.02.081.i.i.i, null
  br i1 %.not.i.i.i140.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i, label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.yu = ptrtoint ptr %.sroa.14.075.i.i.i to i64
  %i.yv = ptrtoint ptr %.sroa.02.081.i.i.i to i64
  %i.yw = sub i64 %i.yu, %i.yv
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.02.081.i.i.i, i64 noundef %i.yw) #24, !noalias !587
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i

_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i:           ; preds = %bb.fa, %bb.ez, %bb.em, %bb.el, %.loopexit.split-lp66.i.i.i, %.loopexit65.i.i.i
  %.sroa.1440.091.i.i.i = phi ptr [ %.sroa.1440.0.lcssa.i.i.i, %bb.fa ], [ %.sroa.1440.0.lcssa.i.i.i, %bb.ez ], [ %.sroa.1440.0.lcssa.i.i.i, %bb.el ], [ %.sroa.1440.0.lcssa.i.i.i, %bb.em ], [ %.sroa.9.0120.i.i.i, %.loopexit65.i.i.i ], [ %.sroa.9.0120.i.i.i, %.loopexit.split-lp66.i.i.i ]
  %.sroa.034.085.i.i.i = phi ptr [ %.sroa.034.0.lcssa.i.i.i, %bb.fa ], [ %.sroa.034.0.lcssa.i.i.i, %bb.ez ], [ %.sroa.034.0.lcssa.i.i.i, %bb.el ], [ %.sroa.034.0.lcssa.i.i.i, %bb.em ], [ %.sroa.034.0121.i.i.i, %.loopexit65.i.i.i ], [ %.sroa.034.0121.i.i.i, %.loopexit.split-lp66.i.i.i ] ; 3 uses
  %.pn69.i.i.i = phi { ptr, i32 } [ %.pn65.i.i.i, %bb.fa ], [ %.pn65.i.i.i, %bb.ez ], [ %i.xo, %bb.el ], [ %i.xp, %bb.em ], [ %lpad.loopexit67.i.i.i, %.loopexit65.i.i.i ], [ %lpad.loopexit.split-lp68.i.i.i, %.loopexit.split-lp66.i.i.i ] ; 2 uses
  %.not.i.i.i142.i.i.i = icmp eq ptr %.sroa.034.085.i.i.i, null
  br i1 %.not.i.i.i142.i.i.i, label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit143.i.i.i, label %bb.fb

bb.fb:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i
  %i.yx = ptrtoint ptr %.sroa.1440.091.i.i.i to i64
  %i.yy = ptrtoint ptr %.sroa.034.085.i.i.i to i64
  %i.yz = sub i64 %i.yx, %i.yy
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.034.085.i.i.i, i64 noundef %i.yz) #24, !noalias !587
  br label %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit143.i.i.i

_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit143.i.i.i: ; preds = %bb.fb, %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.split-lp.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.i.i.i
  %.sroa.1450.0106.i.i.i = phi ptr [ %.sroa.1450.0.lcssa.i.i.i, %bb.fb ], [ %.sroa.1450.0.lcssa.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i ], [ %.sroa.947.0112.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.i.i.i ], [ %.sroa.947.0112.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.split-lp.i.i.i ]
  %.sroa.043.098.i.i.i = phi ptr [ %.sroa.043.0.lcssa.i.i.i, %bb.fb ], [ %.sroa.043.0.lcssa.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i ], [ %.sroa.043.0113.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.i.i.i ], [ %.sroa.043.0113.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.split-lp.i.i.i ] ; 3 uses
  %.pn6961.i.i.i = phi { ptr, i32 } [ %.pn69.i.i.i, %bb.fb ], [ %.pn69.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.i.i.i ], [ %lpad.loopexit70.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.i.i.i ], [ %lpad.loopexit.split-lp71.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit141.thread.loopexit.split-lp.i.i.i ] ; 2 uses
  %.not.i.i.i144.i.i.i = icmp eq ptr %.sroa.043.098.i.i.i, null
  br i1 %.not.i.i.i144.i.i.i, label %.body.i, label %bb.fc

bb.fc:                                            ; preds = %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit143.i.i.i
  %i.za = ptrtoint ptr %.sroa.1450.0106.i.i.i to i64
  %i.zb = ptrtoint ptr %.sroa.043.098.i.i.i to i64
  %i.zc = sub i64 %i.za, %i.zb
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.043.098.i.i.i, i64 noundef %i.zc) #24, !noalias !587
  br label %.body.i

bb.fd:                                            ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE12CreateVectorINS0_6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaISA_EEENS4_INS0_6VectorIT_jEEEERKSt6vectorISD_T0_E.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22, !noalias !549
  invoke void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %10)
          to label %.noexc106.i unwind label %bb.fr, !noalias !524

.noexc106.i:                                      ; preds = %bb.fd
  %i.zd = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  %i.ze = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zd, ptr noundef nonnull @.str.47, i64 noundef 35)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i unwind label %bb.fl, !noalias !549 ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i: ; preds = %.noexc106.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22, !noalias !549
  %i.zf = load ptr, ptr %i.fo, align 8, !tbaa !18, !noalias !549
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 24
  %i.zh = load ptr, ptr %i.zg, align 8, !noalias !549
  invoke void %i.zh(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(12) %i.fo)
          to label %bb.fe unwind label %bb.fm, !noalias !549

bb.fe:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.zi = load ptr, ptr %11, align 8, !tbaa !103, !noalias !549
  %i.zj = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.zk = load i64, ptr %i.zj, align 8, !tbaa !102, !noalias !549
  %i.zl = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.zd, ptr noundef %i.zi, i64 noundef %i.zk)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i unwind label %bb.fn, !noalias !549 ; 3 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i: ; preds = %bb.fe
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !18, !noalias !549
  %i.zn = getelementptr i8, ptr %i.zm, i64 -24
  %i.zo = load i64, ptr %i.zn, align 8, !noalias !549
  %i.zp = getelementptr inbounds i8, ptr %i.zl, i64 %i.zo
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 240
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !625, !noalias !549 ; 6 uses
  %.not.i.i.i.i77.i = icmp eq ptr %i.zr, null
  br i1 %.not.i.i.i.i77.i, label %bb.ff, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i

bb.ff:                                            ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc.i.i unwind label %bb.fn, !noalias !549

.noexc.i.i:                                       ; preds = %bb.ff
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit.i.i
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 56
  %i.zt = load i8, ptr %i.zs, align 8, !tbaa !640, !noalias !549
  %.not.i1.i.i.i.i = icmp eq i8 %i.zt, 0
  br i1 %.not.i1.i.i.i.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zr, i64 67
  %i.zv = load i8, ptr %i.zu, align 1, !tbaa !14, !noalias !549
  br label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i

bb.fh:                                            ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i.i.i
  invoke void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %i.zr)
          to label %.noexc110.i.i unwind label %bb.fn, !noalias !549

.noexc110.i.i:                                    ; preds = %bb.fh
  %i.zw = load ptr, ptr %i.zr, align 8, !tbaa !18, !noalias !549
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 48
  %i.zy = load ptr, ptr %i.zx, align 8, !noalias !549
  %i.zz = invoke noundef signext i8 %i.zy(ptr noundef nonnull align 8 dereferenceable(570) %i.zr, i8 noundef signext 10)
          to label %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i unwind label %bb.fn, !noalias !549, !inline_history !646

_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i: ; preds = %.noexc110.i.i, %bb.fg
  %.0.i.i.i.i78.i = phi i8 [ %i.zv, %bb.fg ], [ %i.zz, %.noexc110.i.i ]
  %i.aaa = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.zl, i8 noundef signext %.0.i.i.i.i78.i)
          to label %.noexc112.i.i unwind label %bb.fn, !noalias !549

.noexc112.i.i:                                    ; preds = %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i
  %i.aab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %i.aaa)
          to label %_ZNSolsEPFRSoS_E.exit.i.i unwind label %bb.fn, !noalias !549 ; 0 uses

_ZNSolsEPFRSoS_E.exit.i.i:                        ; preds = %.noexc112.i.i
  %i.aac = load ptr, ptr %11, align 8, !tbaa !103, !noalias !549 ; 2 uses
  %i.aad = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.aae = icmp eq ptr %i.aac, %i.aad
  br i1 %i.aae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit.i.i
  %i.aaf = load i64, ptr %i.aad, align 8, !tbaa !14, !noalias !549
  %i.aag = add i64 %i.aaf, 1
  call void @_ZdlPvm(ptr noundef %i.aac, i64 noundef %i.aag) #24, !noalias !549
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %_ZNSolsEPFRSoS_E.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !549
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22, !noalias !549
  call void @llvm.experimental.noalias.scope.decl(metadata !647)
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  %i.aah = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  store ptr %i.aah, ptr %12, align 8, !tbaa !101, !alias.scope !653, !noalias !549
  %i.aai = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.aai, align 8, !tbaa !102, !alias.scope !653, !noalias !549
  store i8 0, ptr %i.aah, align 8, !tbaa !14, !alias.scope !653, !noalias !549
  %i.aaj = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aak = load ptr, ptr %i.aaj, align 8, !tbaa !654, !noalias !656 ; 3 uses
  %.not.i.not.i.i.i.i = icmp eq ptr %i.aak, null
  %i.aal = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.aam = load ptr, ptr %i.aal, align 8, !noalias !656 ; 2 uses
  %i.aan = icmp ugt ptr %i.aak, %i.aam
  %.08.i.i.i.i.i = select i1 %i.aan, ptr %i.aak, ptr %i.aam ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %.08.i.i.i.i.i, null
  %.not.i.i100.i.i = select i1 %.not.i.not.i.i.i.i, i1 true, i1 %.not5.i.i.i.i
  br i1 %.not.i.i100.i.i, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.aao = getelementptr inbounds nuw i8, ptr %10, i64 56
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !657, !noalias !656 ; 2 uses
  %i.aaq = ptrtoint ptr %.08.i.i.i.i.i to i64
  %i.aar = ptrtoint ptr %i.aap to i64
  %i.aas = sub i64 %i.aaq, %i.aar
  %i.aat = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %12, i64 noundef 0, i64 noundef 0, ptr noundef %i.aap, i64 noundef %i.aas)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.fj, !noalias !549 ; 0 uses

bb.fj:                                            ; preds = %bb.fk, %bb.fi
  %i.aau = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aav = load ptr, ptr %12, align 8, !tbaa !103, !alias.scope !653, !noalias !549 ; 2 uses
  %i.aaw = icmp eq ptr %i.aav, %i.aah
  br i1 %i.aaw, label %.body.i.i, label %.body.i.i.sink.split

bb.fk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %i.aax = getelementptr inbounds nuw i8, ptr %10, i64 96
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %i.aax)
          to label %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i unwind label %bb.fj, !noalias !549

_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i: ; preds = %bb.fk, %bb.fi
  invoke void @_ZN5arrow6Status8FromArgsIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %16, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZN5arrow6Status14NotImplementedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit.i.i unwind label %bb.fo, !noalias !524

_ZN5arrow6Status14NotImplementedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit.i.i: ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  %i.aay = load ptr, ptr %12, align 8, !tbaa !103, !noalias !549 ; 2 uses
  %i.aaz = icmp eq ptr %i.aay, %i.aah
  br i1 %i.aaz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i.i: ; preds = %_ZN5arrow6Status14NotImplementedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit.i.i
  %i.aba = load i64, ptr %i.aah, align 8, !tbaa !14, !noalias !549
  %i.abb = add i64 %i.aba, 1
  call void @_ZdlPvm(ptr noundef %i.aay, i64 noundef %i.abb) #24, !noalias !524
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i.i: ; preds = %_ZN5arrow6Status14NotImplementedIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES0_DpOT_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i101.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !549
  %i.abc = load ptr, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, align 8, !noalias !549 ; 2 uses
  store ptr %i.abc, ptr %10, align 8, !tbaa !18, !noalias !549
  %i.abd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 64), align 8, !noalias !549
  %i.abe = getelementptr i8, ptr %i.abc, i64 -24
  %i.abf = load i64, ptr %i.abe, align 8, !noalias !524
  %i.abg = getelementptr inbounds i8, ptr %10, i64 %i.abf
  store ptr %i.abd, ptr %i.abg, align 8, !tbaa !18, !noalias !549
  %i.abh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 72), align 8, !noalias !549
  store ptr %i.abh, ptr %i.zd, align 8, !tbaa !18, !noalias !549
  %i.abi = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.abi, align 8, !tbaa !18, !noalias !549
  %i.abj = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.abk = load ptr, ptr %i.abj, align 8, !tbaa !103, !noalias !549 ; 2 uses
  %i.abl = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %i.abm = icmp eq ptr %i.abk, %i.abl
  br i1 %i.abm, label %_ZN5arrow6StatusD2Ev.exit108.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i.i
  %i.abn = load i64, ptr %i.abl, align 8, !tbaa !14, !noalias !549
  %i.abo = add i64 %i.abn, 1
  call void @_ZdlPvm(ptr noundef %i.abk, i64 noundef %i.abo) #24, !noalias !524
  br label %_ZN5arrow6StatusD2Ev.exit108.i

bb.fl:                                            ; preds = %.noexc106.i
  %i.abp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fp

bb.fm:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i.i
  %i.abq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.i.i

bb.fn:                                            ; preds = %.noexc112.i.i, %_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc.exit.i.i.i, %.noexc110.i.i, %bb.fh, %bb.ff, %bb.fe
  %i.abr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.abs = load ptr, ptr %11, align 8, !tbaa !103, !noalias !549 ; 2 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.abu = icmp eq ptr %i.abs, %i.abt
  br i1 %i.abu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104.i.i: ; preds = %bb.fn
  %i.abv = load i64, ptr %i.abt, align 8, !tbaa !14, !noalias !549
  %i.abw = add i64 %i.abv, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abw) #24, !noalias !549
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.i.i: ; preds = %bb.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104.i.i, %bb.fm
  %.pn.i.i = phi { ptr, i32 } [ %i.abq, %bb.fm ], [ %i.abr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i104.i.i ], [ %i.abr, %bb.fn ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22, !noalias !549
  br label %bb.fp

bb.fo:                                            ; preds = %_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv.exit.i.i
  %i.abx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aby = load ptr, ptr %12, align 8, !tbaa !103, !noalias !549 ; 2 uses
  %i.abz = icmp eq ptr %i.aby, %i.aah
  br i1 %i.abz, label %.body.i.i, label %.body.i.i.sink.split

.body.i.i.sink.split:                             ; preds = %bb.fo, %bb.fj
  %.sink = phi ptr [ %i.aav, %bb.fj ], [ %i.aby, %bb.fo ]
  %.pn49.i.i.ph = phi { ptr, i32 } [ %i.aau, %bb.fj ], [ %i.abx, %bb.fo ]
  %i.aca = load i64, ptr %i.aah, align 8, !tbaa !14, !noalias !549
  %i.acb = add i64 %i.aca, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.acb) #24, !noalias !524
  br label %.body.i.i

.body.i.i:                                        ; preds = %.body.i.i.sink.split, %bb.fo, %bb.fj
  %.pn49.i.i = phi { ptr, i32 } [ %i.aau, %bb.fj ], [ %i.abx, %bb.fo ], [ %.pn49.i.i.ph, %.body.i.i.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22, !noalias !549
  br label %bb.fp

bb.fp:                                            ; preds = %.body.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.i.i, %bb.fl
  %.pn49.pn.i.i = phi { ptr, i32 } [ %.pn49.i.i, %.body.i.i ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit106.i.i ], [ %i.abp, %bb.fl ]
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(128) %10) #22, !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !549
  br label %.body.i

_ZN5arrow6StatusD2Ev.exit108.thread.i:            ; preds = %bb.ew, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit.i.i.i, %.noexc97.i, %.noexc90.i, %.noexc83.i
  %.0128.i = phi i8 [ 1, %.noexc83.i ], [ 2, %.noexc90.i ], [ 2, %.noexc97.i ], [ 3, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit.i.i.i ], [ 3, %bb.ew ]
  %.sroa.0.0.i = phi i32 [ %i.ho, %.noexc83.i ], [ %i.kk, %.noexc90.i ], [ %i.ng, %.noexc97.i ], [ %i.yi, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit.i.i.i ], [ %i.yi, %bb.ew ]
  %.0.i = phi i64 [ 1, %.noexc83.i ], [ 2, %.noexc90.i ], [ 2, %.noexc97.i ], [ %i.yl, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit.i.i.i ], [ %i.yl, %bb.ew ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22, !noalias !524
  br label %_ZN5arrow6StatusD2Ev.exit112.i

_ZN5arrow6StatusD2Ev.exit108.i:                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit103.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.abi, align 8, !tbaa !18, !noalias !549
  %i.acc = getelementptr inbounds nuw i8, ptr %10, i64 80
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.acc) #22, !noalias !524
  %i.acd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 16), align 8, !noalias !549 ; 2 uses
  store ptr %i.acd, ptr %10, align 8, !tbaa !18, !noalias !549
  %i.ace = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8, !noalias !549
  %i.acf = getelementptr i8, ptr %i.acd, i64 -24
  %i.acg = load i64, ptr %i.acf, align 8, !noalias !524
  %i.ach = getelementptr inbounds i8, ptr %10, i64 %i.acg
  store ptr %i.ace, ptr %i.ach, align 8, !tbaa !18, !noalias !549
  %i.aci = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.aci, align 8, !tbaa !658, !noalias !549
  %i.acj = getelementptr inbounds nuw i8, ptr %10, i64 128
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.acj) #22, !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22, !noalias !549
  %.pr130.i = load ptr, ptr %16, align 8, !tbaa !22, !noalias !524 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22, !noalias !524
  %i.ack = icmp eq ptr %.pr130.i, null
  br i1 %i.ack, label %_ZN5arrow6StatusD2Ev.exit112.i, label %.critedge59.i

bb.fq:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit63._crit_edge.i
  %i.acl = landingpad { ptr, i32 }
          cleanup
  br label %bb.fy

bb.fr:                                            ; preds = %bb.fd, %.noexc104.i, %.noexc103.i, %.noexc102.i, %.noexc101.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit78.i.i.i, %.noexc99.i, %.noexc98.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i93.i.i, %.noexc96.i, %.noexc95.i, %.noexc94.i, %bb.bz, %.noexc92.i, %.noexc91.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i76.i.i, %.noexc89.i, %.noexc88.i, %.noexc87.i, %bb.bf, %.noexc85.i, %.noexc84.i, %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i.i, %.noexc82.i, %.noexc81.i, %.noexc80.i, %.noexc79.i, %bb.al
  %i.acm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.fr, %bb.fp, %bb.fc, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit143.i.i.i
  %.pn48.i = phi { ptr, i32 } [ %.pn6961.i.i.i, %_ZNSt6vectorIN3org6apache5arrow7flatbuf6BufferESaIS4_EED2Ev.exit143.i.i.i ], [ %i.acm, %bb.fr ], [ %.pn49.pn.i.i, %bb.fp ], [ %.pn6961.i.i.i, %bb.fc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #22, !noalias !524
  br label %bb.fy

_ZN5arrow6StatusD2Ev.exit112.i:                   ; preds = %_ZN5arrow6StatusD2Ev.exit108.i, %_ZN5arrow6StatusD2Ev.exit108.thread.i
  %.1136.i = phi i64 [ %.0.i, %_ZN5arrow6StatusD2Ev.exit108.thread.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit108.i ]
  %.sroa.0.1135.i = phi i32 [ %.sroa.0.0.i, %_ZN5arrow6StatusD2Ev.exit108.thread.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit108.i ]
  %.1129134.i = phi i8 [ %.0128.i, %_ZN5arrow6StatusD2Ev.exit108.thread.i ], [ 0, %_ZN5arrow6StatusD2Ev.exit108.i ]
  %i.acn = load ptr, ptr %3, align 8, !tbaa !457, !noalias !524
  %i.aco = getelementptr inbounds nuw [16 x i8], ptr %i.acn, i64 %.1136.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22, !noalias !524
  %i.acp = load <2 x i64>, ptr %i.aco, align 8, !tbaa !440, !noalias !524
  store <2 x i64> %i.acp, ptr %17, align 16, !tbaa !440, !noalias !524
  %i.acq = load ptr, ptr %i.fn, align 8, !tbaa !543, !noalias !524 ; 3 uses
  %.not.i113.i = icmp eq ptr %i.acq, null
  br i1 %.not.i113.i, label %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.i, label %bb.fs

bb.fs:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit112.i
  %i.acr = load ptr, ptr %i.acq, align 8, !tbaa !18, !noalias !524
  %i.acs = getelementptr inbounds nuw i8, ptr %i.acr, i64 16
  %i.act = load ptr, ptr %i.acs, align 8, !noalias !524
  %i.acu = invoke noundef i64 %i.act(ptr noundef nonnull align 8 dereferenceable(12) %i.acq)
          to label %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.i unwind label %bb.fu, !noalias !524, !inline_history !660

_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.i: ; preds = %bb.fs, %_ZN5arrow6StatusD2Ev.exit112.i
  %i.acv = phi i64 [ 0, %_ZN5arrow6StatusD2Ev.exit112.i ], [ %i.acu, %bb.fs ]
  %i.acw = load i8, ptr %i.a, align 1, !tbaa !506, !noalias !524
  %.sroa.03.0.copyload.i = load i32, ptr %13, align 4, !tbaa !3, !noalias !524
  %i.acx = invoke i32 @_ZN3org6apache5arrow7flatbuf18CreateSparseTensorERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEENS2_4TypeENS4_6OffsetIvEENS9_INS4_6VectorINS9_INS2_9TensorDimEEEjEEEElNS2_17SparseTensorIndexESA_PKNS2_6BufferE(ptr noundef nonnull align 8 dereferenceable(128) %18, i8 noundef zeroext %i.acw, i32 %.sroa.03.0.copyload.i, i32 %i.bj, i64 noundef %i.acv, i8 noundef zeroext %.1129134.i, i32 %.sroa.0.1135.i, ptr noundef nonnull %17)
          to label %bb.ft unwind label %bb.fv, !noalias !524

bb.ft:                                            ; preds = %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22, !noalias !524
  br label %.critedge59.i

bb.fu:                                            ; preds = %bb.fs
  %i.acy = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.fv:                                            ; preds = %_ZNK5arrow12SparseTensor15non_zero_lengthEv.exit.i
  %i.acz = landingpad { ptr, i32 }
          cleanup
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %.pn50.i = phi { ptr, i32 } [ %i.acz, %bb.fv ], [ %i.acy, %bb.fu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #22, !noalias !524
  br label %bb.fy

.critedge59.i:                                    ; preds = %bb.ft, %_ZN5arrow6StatusD2Ev.exit108.i
  %.sroa.0.068 = phi ptr [ null, %bb.ft ], [ %.pr130.i, %_ZN5arrow6StatusD2Ev.exit108.i ] ; 2 uses
  %.sroa.0.0 = phi i32 [ %i.acx, %bb.ft ], [ 0, %_ZN5arrow6StatusD2Ev.exit108.i ]
  %.not.i.i.i115.i = icmp eq ptr %.sroa.0121.0.lcssa.i, null
  br i1 %.not.i.i.i115.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.fx

bb.fx:                                            ; preds = %.critedge59.i
  %i.ada = ptrtoint ptr %.sroa.13.0.lcssa.i to i64
  %i.adb = sub i64 %i.ada, %i.bg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.0.lcssa.i, i64 noundef %i.adb) #24, !noalias !524
  br label %_ZN5arrow6StatusD2Ev.exit

bb.fy:                                            ; preds = %bb.fw, %.body.i, %bb.fq, %.loopexit.split-lp.i, %.loopexit.i, %bb.aa
  %.sroa.13.0166.i = phi ptr [ %.sroa.13.0178.i, %bb.aa ], [ %.sroa.13.0.lcssa.i, %.body.i ], [ %.sroa.13.0.lcssa.i, %bb.fq ], [ %.sroa.13.0.lcssa.i, %bb.fw ], [ %.sroa.13.0178.i, %.loopexit.i ], [ %.sroa.13.0178.i, %.loopexit.split-lp.i ]
  %.sroa.0121.0155.i = phi ptr [ %.sroa.0121.0179.i, %bb.aa ], [ %.sroa.0121.0.lcssa.i, %.body.i ], [ %.sroa.0121.0.lcssa.i, %bb.fq ], [ %.sroa.0121.0.lcssa.i, %bb.fw ], [ %.sroa.0121.0179.i, %.loopexit.i ], [ %.sroa.0121.0179.i, %.loopexit.split-lp.i ] ; 3 uses
  %.pn54.pn.i = phi { ptr, i32 } [ %i.fm, %bb.aa ], [ %.pn48.i, %.body.i ], [ %i.acl, %bb.fq ], [ %.pn50.i, %bb.fw ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i116.i = icmp eq ptr %.sroa.0121.0155.i, null
  br i1 %.not.i.i.i116.i, label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EED2Ev.exit117.i, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  %i.adc = ptrtoint ptr %.sroa.13.0166.i to i64
  %i.add = ptrtoint ptr %.sroa.0121.0155.i to i64
  %i.ade = sub i64 %i.adc, %i.add
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0121.0155.i, i64 noundef %i.ade) #24, !noalias !524
  br label %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EED2Ev.exit117.i

_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EED2Ev.exit117.i: ; preds = %bb.fz, %bb.fy, %bb.k
  %.pn54.pn.pn.i = phi { ptr, i32 } [ %i.bd, %bb.k ], [ %.pn54.pn.i, %bb.fy ], [ %.pn54.pn.i, %bb.fz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.gg

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.fx, %.critedge59.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22, !noalias !524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22, !noalias !524
  store ptr %.sroa.0.068, ptr %19, align 8, !tbaa !22
  %i.adf = icmp eq ptr %.sroa.0.068, null
  br i1 %i.adf, label %bb.gd, label %bb.ga, !prof !60

bb.ga:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit.thread, %_ZN5arrow6StatusD2Ev.exit
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6BufferEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %19) #22
  %i.adg = load ptr, ptr %19, align 8, !tbaa !22  ; 2 uses
  %.not.i14 = icmp eq ptr %i.adg, null
  br i1 %.not.i14, label %_ZN5arrow6StatusD2Ev.exit15, label %bb.gb, !prof !58

bb.gb:                                            ; preds = %bb.ga
  %i.adh = getelementptr inbounds nuw i8, ptr %i.adg, i64 1
  %i.adi = load i8, ptr %i.adh, align 1, !tbaa !61, !range !72, !noundef !73
  %i.adj = trunc nuw i8 %i.adi to i1
  br i1 %i.adj, label %_ZN5arrow6StatusD2Ev.exit15, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %19) #22
  br label %_ZN5arrow6StatusD2Ev.exit15

_ZN5arrow6StatusD2Ev.exit15:                      ; preds = %bb.ga, %bb.gb, %bb.gc
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  br label %bb.gf

bb.gd:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #22
  %i.adk = getelementptr inbounds nuw i8, ptr %4, i64 59
  %i.adl = load i8, ptr %i.adk, align 1, !tbaa !313
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %20, i8 0, i64 16, i1 false)
  %i.adm = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.adn = load ptr, ptr %i.adm, align 8, !tbaa !324
  invoke fastcc void @_ZN5arrow3ipc8internal12_GLOBAL__N_114WriteFBMessageERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEEN3org6apache5arrow7flatbuf13MessageHeaderENS4_6OffsetIvEElNS0_15MetadataVersionERKSt10shared_ptrIKNS_16KeyValueMetadataEEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(128) %18, i8 noundef zeroext 5, i32 %.sroa.0.0, i64 noundef %2, i8 noundef signext %i.adl, ptr null, ptr noundef %i.adn)
          to label %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit unwind label %bb.ge

_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.gd
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.ado = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %20) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.gg

bb.gf:                                            ; preds = %_ZN5arrow6StatusD2Ev.exit15, %_ZNSt12__shared_ptrIKN5arrow16KeyValueMetadataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  ret void

bb.gg:                                            ; preds = %bb.ge, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EED2Ev.exit117.i
  %.pn12 = phi { ptr, i32 } [ %i.ado, %bb.ge ], [ %.pn54.pn.pn.i, %_ZNSt6vectorIN22arrow_vendored_private11flatbuffers6OffsetIN3org6apache5arrow7flatbuf9TensorDimEEESaIS8_EED2Ev.exit117.i ]
  call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EED2Ev(ptr noundef nonnull align 8 dead_on_return(128) dereferenceable(128) %18) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #22
  resume { ptr, i32 } %.pn12
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc8internal22WriteDictionaryMessageElbllRKSt10shared_ptrIKNS_16KeyValueMetadataEERKSt6vectorINS1_13FieldMetadataESaIS9_EERKS8_INS1_14BufferMetadataESaISE_EERKS8_IlSaIlEERKNS0_15IpcWriteOptionsEPS2_INS_6BufferEE(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i64 noundef %1, i1 noundef zeroext %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %7, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %8, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(60) %9, ptr nofree noundef captures(none) %10) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %11 = alloca %"class.arrow_vendored_private::flatbuffers::FlatBufferBuilderImpl", align 8 ; 23 uses
  %12 = alloca %"struct.arrow_vendored_private::flatbuffers::Offset.70", align 4 ; 6 uses
  %13 = alloca %"class.arrow::Status", align 8    ; 5 uses
  %14 = alloca %"class.arrow::Result.62", align 8 ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store ptr null, ptr %11, align 8, !tbaa !293
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i8 0, ptr %i.a, align 8, !tbaa !296
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 1024, ptr %i.b, align 8, !tbaa !297
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i32 2147483647, ptr %i.c, align 8, !tbaa !298
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 32
  store i64 8, ptr %i.d, align 8, !tbaa !299
  %i.e = getelementptr inbounds nuw i8, ptr %11, i64 40
  store i64 0, ptr %i.e, align 8, !tbaa !300
  %i.f = getelementptr inbounds nuw i8, ptr %11, i64 48
  store i32 0, ptr %i.f, align 8, !tbaa !301
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 88
  store i64 0, ptr %i.h, align 8, !tbaa !302
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 96
  store i8 0, ptr %i.i, align 8, !tbaa !305
end_hunk_1
begin_hunk_2_@_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE6FinishEjPKcb:bb.a
  br label %.lr.ph.preheader.i.i.i17

.lr.ph.preheader.i.i.i17:                         ; preds = %bb.m, %bb.l
  %i.ce = phi i32 [ %i.bu, %bb.l ], [ %.pre.i.i24, %bb.m ]
  %i.cf = phi ptr [ %.pre4.i.i.i.i16, %bb.l ], [ %.pre.i.i.i.i23, %bb.m ]
  %i.cg = sub nsw i64 0, %i.by
  %i.ch = getelementptr inbounds i8, ptr %i.cf, i64 %i.cg
  store ptr %i.ch, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !407
  %i.ci = add i32 %i.ce, %i.bx
  store i32 %i.ci, ptr %i.i, align 8, !tbaa !301
  br label %.lr.ph.i.i.i18.epil

.lr.ph.i.i.i18.epil:                              ; preds = %.lr.ph.i.i.i18.epil, %.lr.ph.preheader.i.i.i17
  %.05.i.i.i19.epil = phi i64 [ %i.cl, %.lr.ph.i.i.i18.epil ], [ 0, %.lr.ph.preheader.i.i.i17 ] ; 2 uses
  %epil.iter69 = phi i64 [ %epil.iter69.next, %.lr.ph.i.i.i18.epil ], [ 0, %.lr.ph.preheader.i.i.i17 ]
  %i.cj = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !407
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %.05.i.i.i19.epil
  store i8 0, ptr %i.ck, align 1, !tbaa !14
  %i.cl = add nuw i64 %.05.i.i.i19.epil, 1
  %epil.iter69.next = add i64 %epil.iter69, 1     ; 2 uses
  %epil.iter69.cmp.not = icmp eq i64 %epil.iter69.next, %i.by
  br i1 %epil.iter69.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.loopexit, label %.lr.ph.i.i.i18.epil, !llvm.loop !1266

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.loopexit: ; preds = %.lr.ph.i.i.i18.epil
  %.pre45 = load ptr, ptr %i.c, align 8, !tbaa !491
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.loopexit, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i13
  %i.cm = phi ptr [ %.pre45, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i.loopexit ], [ %.pre46, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i13 ]
  %.pre4.i.i.i21 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !407 ; 2 uses
  %i.cn = ptrtoint ptr %.pre4.i.i.i21 to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = and i64 %i.cp, 4294967292
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %bb.n, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

bb.n:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i22 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !407
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i, %bb.n
  %i.cs = phi ptr [ %.pre4.i.i.i21, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i ], [ %.pre.i.i.i22, %bb.n ]
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 -4 ; 5 uses
  store ptr %i.ct, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !407
  %i.cu = load i32, ptr %i.i, align 8, !tbaa !301
  %i.cv = add i32 %i.cu, 4
  store i32 %i.cv, ptr %i.i, align 8, !tbaa !301
  store i32 %i.bv, ptr %i.ct, align 4, !tbaa !3
  br i1 %3, label %bb.o, label %bb.t

bb.o:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit
  %i.cw = load i32, ptr %i.i, align 8, !tbaa !301 ; 3 uses
  %i.cx = load i64, ptr %i.e, align 8, !tbaa !307
  %i.cy = icmp ult i64 %i.cx, 4
  br i1 %i.cy, label %bb.p, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25

bb.p:                                             ; preds = %bb.o
  store i64 4, ptr %i.e, align 8, !tbaa !307
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25: ; preds = %bb.p, %bb.o
  %i.cz = sub i32 0, %i.cw
  %i.da = and i32 %i.cz, 3                        ; 3 uses
  %i.db = zext nneg i32 %i.da to i64              ; 4 uses
  %.not.i.i.i.i26 = icmp eq i32 %i.da, 0
  %.pre49 = load ptr, ptr %i.c, align 8, !tbaa !491 ; 2 uses
  br i1 %.not.i.i.i.i26, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33, label %bb.q

bb.q:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25
  %i.dc = ptrtoint ptr %i.ct to i64
  %i.dd = ptrtoint ptr %.pre49 to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = and i64 %i.de, 4294967295
  %i.dg = icmp samesign ult i64 %i.df, %i.db
  br i1 %i.dg, label %bb.r, label %.lr.ph.preheader.i.i.i29

bb.r:                                             ; preds = %bb.q
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %i.db)
  %.pre.i.i.i.i36 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !407
  %.pre.i.i37 = load i32, ptr %i.i, align 8, !tbaa !301
  br label %.lr.ph.preheader.i.i.i29

.lr.ph.preheader.i.i.i29:                         ; preds = %bb.r, %bb.q
  %i.dh = phi i32 [ %i.cw, %bb.q ], [ %.pre.i.i37, %bb.r ]
  %i.di = phi ptr [ %i.ct, %bb.q ], [ %.pre.i.i.i.i36, %bb.r ]
  %i.dj = sub nsw i64 0, %i.db
  %i.dk = getelementptr inbounds i8, ptr %i.di, i64 %i.dj
  store ptr %i.dk, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !407
  %i.dl = add i32 %i.dh, %i.da
  store i32 %i.dl, ptr %i.i, align 8, !tbaa !301
  br label %.lr.ph.i.i.i30.epil

.lr.ph.i.i.i30.epil:                              ; preds = %.lr.ph.i.i.i30.epil, %.lr.ph.preheader.i.i.i29
  %.05.i.i.i31.epil = phi i64 [ %i.do, %.lr.ph.i.i.i30.epil ], [ 0, %.lr.ph.preheader.i.i.i29 ] ; 2 uses
  %epil.iter75 = phi i64 [ %epil.iter75.next, %.lr.ph.i.i.i30.epil ], [ 0, %.lr.ph.preheader.i.i.i29 ]
  %i.dm = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !407
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %.05.i.i.i31.epil
  store i8 0, ptr %i.dn, align 1, !tbaa !14
  %i.do = add nuw i64 %.05.i.i.i31.epil, 1
  %epil.iter75.next = add i64 %epil.iter75, 1     ; 2 uses
  %epil.iter75.cmp.not = icmp eq i64 %epil.iter75.next, %i.db
  br i1 %epil.iter75.cmp.not, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33.loopexit, label %.lr.ph.i.i.i30.epil, !llvm.loop !1267

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33.loopexit: ; preds = %.lr.ph.i.i.i30.epil
  %.pre4.i.i.i34.pre = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !407
  %.pre48 = load ptr, ptr %i.c, align 8, !tbaa !491
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33.loopexit, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25
  %i.dp = phi ptr [ %.pre48, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33.loopexit ], [ %.pre49, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25 ]
  %.pre4.i.i.i34 = phi ptr [ %.pre4.i.i.i34.pre, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33.loopexit ], [ %i.ct, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i25 ] ; 2 uses
  %i.dq = ptrtoint ptr %.pre4.i.i.i34 to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = and i64 %i.ds, 4294967292
  %i.du = icmp eq i64 %i.dt, 0
  br i1 %i.du, label %bb.s, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit38

bb.s:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33
  tail call void @_ZN22arrow_vendored_private11flatbuffers15vector_downwardIjE10reallocateEm(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef 4)
  %.pre.i.i.i35 = load ptr, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !407
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit38

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit38: ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33, %bb.s
  %i.dv = phi ptr [ %.pre4.i.i.i34, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE5AlignEm.exit.i33 ], [ %.pre.i.i.i35, %bb.s ]
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 -4 ; 2 uses
  store ptr %i.dw, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !407
  %i.dx = load i32, ptr %i.i, align 8, !tbaa !301
  %i.dy = add i32 %i.dx, 4
  store i32 %i.dy, ptr %i.i, align 8, !tbaa !301
  store i32 %i.cw, ptr %i.dw, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit38, %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE11PushElementIjjEET0_T_.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 97
  store i8 1, ptr %i.dz, align 1, !tbaa !306
  ret void
}

declare void @_ZN5arrow14AllocateBufferElPNS_10MemoryPoolE(ptr dead_on_unwind writable sret(%"class.arrow::Result.246") align 8, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !22     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !58

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !395  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit: ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.d) #22, !inline_history !1268
  %.pr.pre = load ptr, ptr %0, align 8, !tbaa !22 ; 2 uses
  %.not.i = icmp eq ptr %.pr.pre, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, !prof !60

_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit
  %i.h = phi ptr [ %.pr.pre, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !61, !range !72, !noundef !73
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN5arrow6StatusD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #22
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt10unique_ptrINS_6BufferESt14default_deleteIS2_EEE7DestroyEv.exit.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EEC2IS1_St14default_deleteIS1_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !395    ; 3 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !601
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store ptr null, ptr %i.b, align 8, !tbaa !13
  %i.c = icmp eq ptr %i.a, null
  br i1 %i.c, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.c unwind label %bb.p       ; 10 uses

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %1, align 8, !tbaa !395
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 7 uses
  store i32 1, ptr %i.e, align 8, !tbaa !15
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 2 uses
  store i32 1, ptr %i.f, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.a, ptr %i.g, align 8, !tbaa !1269
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread: ; preds = %bb.c
  store i32 2, ptr %i.e, align 8, !tbaa !3
  br label %bb.j

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i: ; preds = %bb.c
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.b, align 8, !tbaa !13 ; 8 uses
  %.not8.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not8.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  %i.j = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.j, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %.pr.pre.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !17
  %i.o = load ptr, ptr %.pr.pre.i, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #22, !inline_history !1271
  %i.r = load ptr, ptr %.pr.pre.i, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #22, !inline_history !1271
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i9.i = icmp eq i8 %i.u, 0
  br i1 %.not.i9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

bb.h:                                             ; preds = %bb.f
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i = phi i32 [ %i.m, %bb.g ], [ %i.w, %bb.h ]
  %i.x = icmp eq i32 %.0.i.i.i, 1
  br i1 %i.x, label %bb.i, label %bb.j, !prof !21

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i) #22
  br label %bb.j

bb.j:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.thread, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i, %bb.e, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i
  store ptr %i.d, ptr %i.b, align 8, !tbaa !13
  %i.y = load atomic i64, ptr %i.e acquire, align 8 ; 2 uses
  %i.z = icmp eq i64 %i.y, 4294967297
  %i.aa = trunc i64 %i.y to i32                   ; 2 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.e, align 8, !tbaa !15
  store i32 0, ptr %i.f, align 4, !tbaa !17
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22, !inline_history !248
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22, !inline_history !248
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.ah = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i7 = icmp eq i8 %i.ah, 0
  br i1 %.not.i.i7, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ai = add nsw i32 %i.aa, -1
  store i32 %i.ai, ptr %i.e, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

bb.n:                                             ; preds = %bb.l
  %i.aj = atomicrmw volatile add ptr %i.e, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8: ; preds = %bb.n, %bb.m
  %.0.i.i.i9 = phi i32 [ %i.aa, %bb.m ], [ %i.aj, %bb.n ]
  %i.ak = icmp eq i32 %.0.i.i.i9, 1
  br i1 %i.ak, label %bb.o, label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d) #22
  br label %_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i8, %bb.o
  ret void

bb.p:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.b) #22
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1272 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.b) #22, !inline_history !1274
  br label %_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit

_ZNKSt14default_deleteIN5arrow6BufferEEclEPS1_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS2_ESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt19_Sp_counted_deleterIPN5arrow6BufferESt14default_deleteIS1_ESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1275 ; 3 uses
  %i.c = icmp eq ptr %i.b, @_ZTSSt14default_deleteIN5arrow6BufferEE
  br i1 %i.c, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.b, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.d, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread3, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.b
  %i.e = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(36) @_ZTSSt14default_deleteIN5arrow6BufferEE) #22
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.a, %_ZNKSt9type_infoeqERKS_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNKSt9type_infoeqERKS_.exit.thread3

_ZNKSt9type_infoeqERKS_.exit.thread3:             ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit, %_ZNKSt9type_infoeqERKS_.exit.thread
  %i.h = phi ptr [ %i.g, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.b ]
  ret ptr %i.h
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr i32 @_ZN3org6apache5arrow7flatbuf17CreateRecordBatchERN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EEElNS4_6OffsetINS4_6VectorIPKNS2_9FieldNodeEjEEEENS8_INS9_IPKNS2_6BufferEjEEEENS8_INS2_15BodyCompressionEEENS8_INS9_IljEEEE(ptr noundef nonnull align 8 dereferenceable(128) %0, i64 noundef %1, i32 %2, i32 %3, i32 %4, i32 %5) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 1, ptr %i.a, align 8, !tbaa !305
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 17 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !301
  tail call void @_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE10AddElementIlEEvtT_S4_(ptr noundef nonnull align 8 dereferenceable(128) %0, i16 noundef zeroext 4, i64 noundef %1, i64 noundef 0)
  %.not.i.i.i = icmp eq i32 %5, 0
  br i1 %.not.i.i.i, label %_ZN3org6apache5arrow7flatbuf18RecordBatchBuilder24add_variadicBufferCountsEN22arrow_vendored_private11flatbuffers6OffsetINS5_6VectorIljEEEE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !307
  %i.f = icmp ult i64 %i.e, 4
  br i1 %i.f, label %bb.c, label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  store i64 4, ptr %i.d, align 8, !tbaa !307
  br label %_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i

_ZN22arrow_vendored_private11flatbuffers21FlatBufferBuilderImplILb0EE13TrackMinAlignEm.exit.i.i.i.i: ; preds = %bb.c, %bb.b
  %i.g = load i32, ptr %i.b, align 8, !tbaa !301  ; 3 uses
  %i.h = sub i32 0, %i.g
end_hunk_2
begin_hunk_3_@_ZN5arrow6Status8FromArgsIJRA36_KcEEES0_NS_10StatusCodeEDpOT_:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA36_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA37_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(37) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !1334
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1334
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !808, !noalias !1334, !nonnull !73, !align !817
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(37) %2) #22, !noalias !1334
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(37) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1334 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1334
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1334
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA37_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow8ListTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJRSt10shared_ptrINS0_5FieldEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !1337
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #23, !noalias !1340 ; 8 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRSt10shared_ptrINS0_5FieldEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i: ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #24
  resume { ptr, i32 } %i.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !1343
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1344 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i32, ptr %i.h monotonic, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow8ListTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.e, align 8, !tbaa !1345
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i3.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !1344
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.g, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i7.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.u, %bb.h ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #22, !inline_history !1346
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.f, align 8, !tbaa !1344
  br label %_ZNSt12__shared_ptrIN5arrow8ListTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow8ListTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRSt10shared_ptrINS0_5FieldEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.8", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !53
  store <2 x ptr> %i.g, ptr %2, align 16, !tbaa !53
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  invoke void @_ZN5arrow8ListTypeC2ESt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull %2)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !13   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.n, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !17
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !1347
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !1347
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i3.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.k, label %bb.l, !prof !21

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  resume { ptr, i32 } %i.ac

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow8ListTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #22, !inline_history !1348
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow8ListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1275 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #22
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8ListTypeC2ESt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.8"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 25, ptr %i.b, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow8ListTypeE, i64 16), ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !53
  store ptr null, ptr %i.d, align 8, !tbaa !13
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !53
  store ptr null, ptr %1, align 8, !tbaa !149
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.f)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.h

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !17
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22, !inline_history !745
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22, !inline_history !745
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.h:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #22
  resume { ptr, i32 } %i.x
}

; Function Attrs: nounwind
declare void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 5 uses
  %i.d = ashr exact i64 %i.c, 4                   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !203
  %i.g = load ptr, ptr %0, align 8, !tbaa !124    ; 5 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.j = sub i64 %i.h, %i.i
  %i.k = icmp ugt i64 %i.c, %i.j
  br i1 %i.k, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.d, 576460752303423487
  br i1 %i.l, label %bb.c, label %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.43) #25
  unreachable

_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #23 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.w, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.m, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.v, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %1, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !13   ; 2 uses
  %i.p = load <2 x ptr>, ptr %.0810.i.i.i.i.i, align 8, !tbaa !53
  store <2 x ptr> %i.p, ptr %.011.i.i.i.i.i, align 8, !tbaa !53
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.u = atomicrmw volatile add ptr %i.q, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e, %.lr.ph.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %2
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1349

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.pre47 = load ptr, ptr %0, align 8, !tbaa !124
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i
  %i.x = phi ptr [ %.pre47, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit.loopexit ], [ %i.g, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !121  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.x, %i.z
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEEEvT_S5_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.ar, %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i ], [ %i.x, %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE20_M_allocate_and_copyIPKS3_EEPS3_mT_SA_.exit ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !13 ; 8 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 4 uses
  %i.ad = load atomic i64, ptr %i.ac acquire, align 8 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 4294967297
  %i.af = trunc i64 %i.ad to i32                  ; 2 uses
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.ac, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 0, ptr %i.ag, align 4, !tbaa !17
  %i.ah = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #22, !inline_history !757
  %i.ak = load ptr, ptr %i.ab, align 8, !tbaa !18
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #22, !inline_history !757
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.an = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.an, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = add nsw i32 %i.af, -1
  store i32 %i.ao, ptr %i.ac, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.ap = atomicrmw volatile add ptr %i.ac, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %i.af, %bb.j ], [ %i.ap, %bb.k ]
  %i.aq = icmp eq i32 %.0.i.i.i.i.i.i.i.i, 1
  br i1 %i.aq, label %bb.l, label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i, !prof !21

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN5arrow5FieldEEEvPT_.exit.i.i: ; preds = %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i, %bb.h, %.lr.ph.i.i
end_hunk_3
begin_hunk_4_@_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag:bb.a
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.ek, align 4, !tbaa !3
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.eo = atomicrmw volatile add ptr %i.ek, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i

_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %bb.ar, %bb.aq, %.lr.ph.i.i.i.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ep, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow5FieldEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1349

_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow5FieldEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit38
  %.0.lcssa.i.i.i.i = phi ptr [ %i.eg, %_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit38 ], [ %i.eq, %_ZSt10_ConstructISt10shared_ptrIN5arrow5FieldEEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.ay, align 8, !tbaa !121
  br label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN5arrow5FieldEES3_EvT_S5_RSaIT0_E.exit.i, %_ZSt4copyIPKSt10shared_ptrIN5arrow5FieldEEPS3_ET0_T_S8_S7_.exit, %_ZSt22__uninitialized_copy_aIPKSt10shared_ptrIN5arrow5FieldEEPS3_S3_ET0_T_S8_S7_RSaIT1_E.exit, %_ZNSt12_Vector_baseISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_deallocateEPS3_m.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA42_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(42) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !1353
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1353
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !808, !noalias !1353, !nonnull !73, !align !817
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(42) %2) #22, !noalias !1353
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(42) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1353 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1353
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1353
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA42_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow13LargeListTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJRSt10shared_ptrINS0_5FieldEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !1356
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #23, !noalias !1359 ; 8 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRSt10shared_ptrINS0_5FieldEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i: ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #24
  resume { ptr, i32 } %i.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !1362
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1344 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i32, ptr %i.h monotonic, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow13LargeListTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.e, align 8, !tbaa !1345
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i3.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !1344
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.g, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i7.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.u, %bb.h ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #22, !inline_history !1363
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.f, align 8, !tbaa !1344
  br label %_ZNSt12__shared_ptrIN5arrow13LargeListTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow13LargeListTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRSt10shared_ptrINS0_5FieldEEEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::shared_ptr.8", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !53
  store <2 x ptr> %i.g, ptr %2, align 16, !tbaa !53
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  invoke void @_ZN5arrow13LargeListTypeC2ESt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull %2)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !13   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.n, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !17
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !1364
  %i.v = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22, !inline_history !1364
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i3.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i3.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.q, %bb.i ], [ %i.aa, %bb.j ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.k, label %bb.l, !prof !21

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #22
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  resume { ptr, i32 } %i.ac

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow13LargeListTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #22, !inline_history !1365
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow13LargeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1275 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #22
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow13LargeListTypeC2ESt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.8"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 36, ptr %i.b, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow13LargeListTypeE, i64 16), ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !53
  store ptr null, ptr %i.d, align 8, !tbaa !13
  store <2 x ptr> %i.e, ptr %2, align 16, !tbaa !53
  store ptr null, ptr %1, align 8, !tbaa !149
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.f)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.h

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !15
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !17
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22, !inline_history !745
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22, !inline_history !745
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #22
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.h:                                             ; preds = %bb.a
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #22
  resume { ptr, i32 } %i.x
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA41_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(41) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !1366
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1366
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !808, !noalias !1366, !nonnull !73, !align !817
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(41) %2) #22, !noalias !1366
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(41) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA41_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1366 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA41_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA41_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1366
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA41_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA41_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1366
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA41_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA41_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJRSt10shared_ptrINS0_5FieldEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !1369
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #23, !noalias !1372 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN5arrow12ListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #24
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !13
  store ptr %i.d, ptr %0, align 8, !tbaa !1375
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1344 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.g, align 8, !tbaa !1345
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i3.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !1344
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i7.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #22, !inline_history !1376
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !1344
  br label %_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow12ListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow12ListViewTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #22, !inline_history !1377
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow12ListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1275 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #22
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow12ListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.8"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 41, ptr %i.b, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow12ListViewTypeE, i64 16), ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !53
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !53
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit:   ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.l)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.k

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.o, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !17
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #22, !inline_history !745
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #22, !inline_history !745
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i3 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #22
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #22
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA46_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(46) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !1378
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1378
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !808, !noalias !1378, !nonnull !73, !align !817
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(46) %2) #22, !noalias !1378
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(46) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1378 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1378
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1378
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA46_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJRSt10shared_ptrINS0_5FieldEEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !1381
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #23, !noalias !1384 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN5arrow17LargeListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #24
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !13
  store ptr %i.d, ptr %0, align 8, !tbaa !1387
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1344 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.g, align 8, !tbaa !1345
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i3.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !1344
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i7.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #22, !inline_history !1388
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !1344
  br label %_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow17LargeListViewTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow17LargeListViewTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #22, !inline_history !1389
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17LargeListViewTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1275 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #22
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17LargeListViewTypeC2ERKSt10shared_ptrINS_5FieldEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca [1 x %"class.std::shared_ptr.8"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 42, ptr %i.b, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow17LargeListViewTypeE, i64 16), ptr %0, align 8, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !53
  store <2 x ptr> %i.f, ptr %2, align 16, !tbaa !53
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit:   ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %2, ptr noundef nonnull %i.l)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.k

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.o, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !17
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #22, !inline_history !745
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #22, !inline_history !745
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i3 = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i3, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.r, %bb.h ], [ %i.ab, %bb.i ]
  %i.ac = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ac, label %bb.j, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #22
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  ret void

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #22
  resume { ptr, i32 } %i.ad
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA50_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(50) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !1390
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1390
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !808, !noalias !1390, !nonnull !73, !align !817
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(50) %2) #22, !noalias !1390
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(50) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1390 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1390
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1390
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA50_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA32_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(32) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !1393
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1393
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !808, !noalias !1393, !nonnull !73, !align !817
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(32) %2) #22, !noalias !1393
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(32) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1393 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1393
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1393
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA32_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow7MapTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJSt10shared_ptrINS0_5FieldEES9_bEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !1396
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #23, !noalias !1399 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow7MapTypeEJSt10shared_ptrINS0_5FieldEES4_bEEvPT_DpOT0_(ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit11.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #24
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !13
  store ptr %i.d, ptr %0, align 8, !tbaa !1402
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1344 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow7MapTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.g, align 8, !tbaa !1345
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i3.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !1344
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i7.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #22, !inline_history !1403
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !1344
  br label %_ZNSt12__shared_ptrIN5arrow7MapTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow7MapTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow7MapTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(73) %i.a) #22, !inline_history !1404
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow7MapTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1275 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #22
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow7MapTypeEJSt10shared_ptrINS0_5FieldEES4_bEEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %5 = alloca %"class.std::shared_ptr.8", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x ptr>, ptr %1, align 8, !tbaa !53
  store ptr null, ptr %i.b, align 8, !tbaa !13
  store <2 x ptr> %i.c, ptr %4, align 16, !tbaa !53
  store ptr null, ptr %1, align 8, !tbaa !149
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load <2 x ptr>, ptr %2, align 8, !tbaa !53
  store ptr null, ptr %i.d, align 8, !tbaa !13
  store <2 x ptr> %i.e, ptr %5, align 16, !tbaa !53
  store ptr null, ptr %2, align 8, !tbaa !149
  %i.f = load i8, ptr %3, align 1, !tbaa !172, !range !72, !noundef !73
  %i.g = trunc nuw i8 %i.f to i1
  invoke void @_ZN5arrow7MapTypeC1ESt10shared_ptrINS_5FieldEES3_b(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull %4, ptr noundef nonnull %5, i1 noundef zeroext %i.g)
          to label %bb.b unwind label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.j, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !17
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #22, !inline_history !745
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #22, !inline_history !745
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.f ], [ %i.w, %bb.g ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.h, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #22
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.b, %bb.d, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.h
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !13   ; 8 uses
  %.not.i.i5 = icmp eq ptr %i.y, null
  br i1 %.not.i.i5, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 4 uses
  %i.aa = load atomic i64, ptr %i.z acquire, align 8 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 4294967297
  %i.ac = trunc i64 %i.aa to i32                  ; 2 uses
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.z, align 8, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.ad, align 4, !tbaa !17
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  call void %i.ag(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22, !inline_history !745
  %i.ah = load ptr, ptr %i.y, align 8, !tbaa !18
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22, !inline_history !745
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9

bb.k:                                             ; preds = %bb.i
  %i.ak = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i6 = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i.i6, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = add nsw i32 %i.ac, -1
  store i32 %i.al, ptr %i.z, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

bb.m:                                             ; preds = %bb.k
  %i.am = atomicrmw volatile add ptr %i.z, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i8 = phi i32 [ %i.ac, %bb.l ], [ %i.am, %bb.m ]
  %i.an = icmp eq i32 %.0.i.i.i.i8, 1
  br i1 %i.an, label %bb.n, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9, !prof !21

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #22
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit9: ; preds = %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7, %bb.n
  ret void

bb.o:                                             ; preds = %bb.a
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #22
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #22
  resume { ptr, i32 } %i.ao
}

declare void @_ZN5arrow7MapTypeC1ESt10shared_ptrINS_5FieldEES3_b(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow17FixedSizeListTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJRSt10shared_ptrINS0_5FieldEEiEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !1405
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #23, !noalias !1408 ; 8 uses
  invoke void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRSt10shared_ptrINS0_5FieldEEiEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i: ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #24
  resume { ptr, i32 } %i.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !1411
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1344 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load atomic i32, ptr %i.h monotonic, align 8
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow17FixedSizeListTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.e, align 8, !tbaa !1345
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 3 uses
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i3.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.k, align 4, !tbaa !3
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %i.k, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.o = atomicrmw volatile add ptr %i.k, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !1344
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.p = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.g, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12 ; 3 uses
  %i.r = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i7.i.i.i.i = icmp eq i8 %i.r, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.q, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.u = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.s, %bb.g ], [ %i.u, %bb.h ]
  %i.v = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.v, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #22, !inline_history !1412
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.f, align 8, !tbaa !1344
  br label %_ZNSt12__shared_ptrIN5arrow17FixedSizeListTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow17FixedSizeListTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEC2IJRSt10shared_ptrINS0_5FieldEEiEEES2_DpOT_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr.8", align 16 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 1, ptr %i.a, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.b, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %0, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13   ; 2 uses
  %i.g = load <2 x ptr>, ptr %1, align 8, !tbaa !53
  store <2 x ptr> %i.g, ptr %3, align 16, !tbaa !53
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.i = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i.i = icmp eq i8 %i.i, 0
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr %i.h, align 4, !tbaa !3
  %i.k = add nsw i32 %i.j, 1
  store i32 %i.k, ptr %i.h, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i

bb.d:                                             ; preds = %bb.b
  %i.l = atomicrmw volatile add ptr %i.h, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i

_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i: ; preds = %bb.d, %bb.c, %bb.a
  %i.m = load i32, ptr %2, align 4, !tbaa !3
  invoke void @_ZN5arrow17FixedSizeListTypeC2ESt10shared_ptrINS_5FieldEEi(ptr noundef nonnull align 8 dereferenceable(76) %i.c, ptr noundef nonnull %3, i32 noundef %i.m)
          to label %bb.e unwind label %.body

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !13   ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.p = load atomic i64, ptr %i.o acquire, align 8 ; 2 uses
  %i.q = icmp eq i64 %i.p, 4294967297
  %i.r = trunc i64 %i.p to i32                    ; 2 uses
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8, !tbaa !15
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.s, align 4, !tbaa !17
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #22, !inline_history !1413
  %i.w = load ptr, ptr %i.n, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  call void %i.y(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #22, !inline_history !1413
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.z = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i4.i = icmp eq i8 %i.z, 0
  br i1 %.not.i.i.i4.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = add nsw i32 %i.r, -1
  store i32 %i.aa, ptr %i.o, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.ab = atomicrmw volatile add ptr %i.o, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.r, %bb.i ], [ %i.ab, %bb.j ]
  %i.ac = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ac, label %bb.k, label %bb.l, !prof !21

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #22
  br label %bb.l

.body:                                            ; preds = %_ZNSt10shared_ptrIN5arrow5FieldEEC2ERKS2_.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  resume { ptr, i32 } %i.ad

bb.l:                                             ; preds = %bb.e, %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow17FixedSizeListTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(76) %i.a) #22, !inline_history !1414
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17FixedSizeListTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1275 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #22
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow17FixedSizeListTypeC2ESt10shared_ptrINS_5FieldEEi(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca [1 x %"class.std::shared_ptr.8"], align 16 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 32, ptr %i.b, align 8, !tbaa !162
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 80) (i8, ptr @_ZTVN5arrow17FixedSizeListTypeE, i64 16), ptr %0, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %2, ptr %i.d, align 8, !tbaa !1175
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load <2 x ptr>, ptr %1, align 8, !tbaa !53
  store ptr null, ptr %i.e, align 8, !tbaa !13
  store <2 x ptr> %i.f, ptr %3, align 16, !tbaa !53
  store ptr null, ptr %1, align 8, !tbaa !149
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  invoke void @_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EE13_M_assign_auxIPKS3_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %3, ptr noundef nonnull %i.g)
          to label %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader unwind label %bb.h

_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader: ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 8 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.k = load atomic i64, ptr %i.j acquire, align 8 ; 2 uses
  %i.l = icmp eq i64 %i.k, 4294967297
  %i.m = trunc i64 %i.k to i32                    ; 2 uses
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.j, align 8, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  store i32 0, ptr %i.n, align 4, !tbaa !17
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  call void %i.q(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #22, !inline_history !745
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !18
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  call void %i.t(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #22, !inline_history !745
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.u = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i = icmp eq i8 %i.u, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = add nsw i32 %i.m, -1
  store i32 %i.v, ptr %i.j, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.w = atomicrmw volatile add ptr %i.j, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.m, %bb.e ], [ %i.w, %bb.f ]
  %i.x = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.x, label %bb.g, label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !21

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.i) #22
  br label %_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorISt10shared_ptrIN5arrow5FieldEESaIS3_EEaSESt16initializer_listIS3_E.exit.preheader, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.h:                                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow5FieldELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @_ZN5arrow12BaseListTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #22
  resume { ptr, i32 } %i.y
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow10StructTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJRSt6vectorISt10shared_ptrINS0_5FieldEESaISA_EEEEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !1415
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #23, !noalias !1418 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow10StructTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZN5arrow10StructTypeC1ERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(80) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10StructTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10StructTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit9.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 96) #24
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !13
  store ptr %i.d, ptr %0, align 8, !tbaa !1421
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1344 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow10StructTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.g, align 8, !tbaa !1345
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i3.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !1344
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i7.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #22, !inline_history !1422
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !1344
  br label %_ZNSt12__shared_ptrIN5arrow10StructTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow10StructTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StructTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StructTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow10StructTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(80) %i.a) #22, !inline_history !1423
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StructTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow10StructTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow10StructTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1275 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #22
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

declare void @_ZN5arrow10StructTypeC1ERKSt6vectorISt10shared_ptrINS_5FieldEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA70_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(70) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !1424
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1424
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !808, !noalias !1424, !nonnull !73, !align !817
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(70) %2) #22, !noalias !1424
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(70) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA70_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1424 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA70_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA70_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA70_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1424
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA70_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA70_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !1424
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA70_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !14
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA70_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !14
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EEC2ISaIvEJRKSt10shared_ptrINS0_8DataTypeEESB_EEESt20_Sp_alloc_shared_tagIT_EDpOT0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !1427
  %i.a = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #23, !noalias !1430 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 4 uses
  store i32 1, ptr %i.c, align 4, !tbaa !17
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  invoke void @_ZSt10_ConstructIN5arrow17RunEndEncodedTypeEJRKSt10shared_ptrINS0_8DataTypeEES6_EEvPT_DpOT0_(ptr noundef nonnull %i.d, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %bb.b unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit10.i: ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 88) #24
  resume { ptr, i32 } %i.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.f, align 8, !tbaa !13
  store ptr %i.d, ptr %0, align 8, !tbaa !1433
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1344 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i.i.i, label %bb.c, label %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i

_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load atomic i32, ptr %i.j monotonic, align 8
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

bb.c:                                             ; preds = %bb.b, %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i
  store ptr %i.d, ptr %i.g, align 8, !tbaa !1345
  %i.m = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i3.i.i.i = icmp eq i8 %i.m, 0
  br i1 %.not.i.i3.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr %i.c, align 4, !tbaa !3
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.c, align 4, !tbaa !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.p = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i.i.i = load ptr, ptr %i.h, align 8, !tbaa !1344
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi ptr [ %.pre.i.i.i, %bb.e ], [ %i.i, %bb.d ] ; 4 uses
  %.not6.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not6.i.i.i.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12 ; 3 uses
  %i.s = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i7.i.i.i.i = icmp eq i8 %i.s, 0
  br i1 %.not.i7.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i32, ptr %i.r, align 4, !tbaa !3    ; 2 uses
  %i.u = add nsw i32 %i.t, -1
  store i32 %i.u, ptr %i.r, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.v = atomicrmw volatile add ptr %i.r, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.h, %bb.g
  %.0.i.i.i.i.i.i = phi i32 [ %i.t, %bb.g ], [ %i.v, %bb.h ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.i, label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

bb.i:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(16) %i.q) #22, !inline_history !1434
  br label %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i

_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i: ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i
  store ptr %i.a, ptr %i.h, align 8, !tbaa !1344
  br label %_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit

_ZNSt12__shared_ptrIN5arrow17RunEndEncodedTypeELN9__gnu_cxx12_Lock_policyE2EE31_M_enable_shared_from_this_withIS1_S1_EENSt9enable_ifIXsr15__has_esft_baseIT0_EE5valueEvE4typeEPT_.exit: ; preds = %_ZNKSt10__weak_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EE9use_countEv.exit.i.i.i, %_ZNSt12__weak_countILN9__gnu_cxx12_Lock_policyE2EEaSERKSt14__shared_countILS1_2EE.exit.i.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt16allocator_traitsISaIvEE7destroyIN5arrow17RunEndEncodedTypeEEEvRS0_PT_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(72) %i.a) #22, !inline_history !1435
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #24
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN5arrow17RunEndEncodedTypeESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1275 ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #22
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt10_ConstructIN5arrow17RunEndEncodedTypeEJRKSt10shared_ptrINS0_8DataTypeEES6_EEvPT_DpOT0_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %4 = alloca %"class.std::shared_ptr", align 16  ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !13   ; 2 uses
  %i.d = load <2 x ptr>, ptr %1, align 8, !tbaa !53
  store <2 x ptr> %i.d, ptr %3, align 16, !tbaa !53
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i = icmp eq i8 %i.f, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.e, align 4, !tbaa !3
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.e, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.i = atomicrmw volatile add ptr %i.e, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !13   ; 2 uses
  %i.m = load <2 x ptr>, ptr %2, align 8, !tbaa !53
  store <2 x ptr> %i.m, ptr %4, align 16, !tbaa !53
  %.not.i.i.i4 = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i4, label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit6, label %bb.e

bb.e:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 3 uses
  %i.o = load i8, ptr @__libc_single_threaded, align 1, !tbaa !14
  %.not.i.i.i.i5 = icmp eq i8 %i.o, 0
  br i1 %.not.i.i.i.i5, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load i32, ptr %i.n, align 4, !tbaa !3
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit6

bb.g:                                             ; preds = %bb.e
  %i.r = atomicrmw volatile add ptr %i.n, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit6

_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit6: ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit, %bb.f, %bb.g
  invoke void @_ZN5arrow17RunEndEncodedTypeC1ESt10shared_ptrINS_8DataTypeEES3_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %3, ptr noundef nonnull %4)
          to label %bb.h unwind label %bb.u

bb.h:                                             ; preds = %_ZNSt10shared_ptrIN5arrow8DataTypeEEC2ERKS2_.exit6
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !13   ; 8 uses
end_hunk_4
