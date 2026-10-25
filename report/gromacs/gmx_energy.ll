Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/gmx_energy?download=true
inline.NumInlined: 676
inline.NumDeleted: 290
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN3gmxlsINS_17InvalidInputErrorENS_22ExceptionInfoLocation_ENS_13ThrowLocationEEENSt9enable_ifIXsr3stdE12is_base_of_vINS_16GromacsExceptionET_EES6_E4typeES6_RKNS_13ExceptionInfoIT0_T1_EE:bb.a
  resume { ptr, i32 } %i.h

_ZN3gmx16GromacsException7setInfoINS_22ExceptionInfoLocation_ENS_13ThrowLocationEEEvRKNS_13ExceptionInfoIT_T0_EE.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN3gmx8internal14IExceptionInfoEEclEPS2_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load <2 x ptr>, ptr %i.n, align 8, !tbaa !13
  store ptr null, ptr %i.o, align 8, !tbaa !78
  store <2 x ptr> %i.p, ptr %i.m, align 8, !tbaa !13
  store ptr null, ptr %i.n, align 8, !tbaa !319
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx17InvalidInputErrorE, i64 16), ptr %0, align 8, !tbaa !31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerC2EPKc(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !32
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.171) #30
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.d, ptr %i.a, align 8, !tbaa !34
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !23
  %i.g = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.g, ptr %i.b, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.h = phi ptr [ %i.f, %.noexc.i ], [ %i.b, %bb.b ] ; 2 uses
  switch i64 %i.d, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.i = load i8, ptr %1, align 1, !tbaa !24
  store i8 %i.i, ptr %i.h, align 1, !tbaa !24
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !33
  %i.l = load ptr, ptr %0, align 8, !tbaa !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx16GromacsExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN3gmx16GromacsExceptionE, i64 16), ptr %0, align 8, !tbaa !31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 8 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !322
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !323
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !320
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27, !inline_history !320
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !24
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !11
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !324

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #27
  br label %_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN3gmx8internal13ExceptionDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #27
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN3gmx8internal14IExceptionInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN3gmx20ExceptionInitializerD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !328  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !329  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.f, %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !331
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %.05.i.i.i) #27
  br label %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !325

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt15__exception_ptr13exception_ptrEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !328
  br label %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.g = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !332
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #28
  br label %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit

_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt15__exception_ptr13exception_ptrES1_EvT_S3_RSaIT0_E.exit.i, %bb.c
  %i.m = load ptr, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit
  %i.p = load i64, ptr %i.n, align 8, !tbaa !24
  %i.q = add i64 %i.p, 1
  tail call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt15__exception_ptr13exception_ptrESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define internal fastcc noundef ptr @_ZL14select_by_nameiP11gmx_enxnm_tPi(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #12 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = alloca [4096 x i8], align 16             ; 9 uses
  %3 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.c = tail call ptr @getenv(ptr noundef nonnull @.str.174) #27
  %.not97 = icmp eq ptr %i.c, null                ; 2 uses
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !61
  %fputc = tail call i32 @fputc(i32 10, ptr %i.d) ; 0 uses
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !61
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.175, i64 53, i64 1, ptr %i.e) #33 ; 0 uses
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !61
  %fwrite98 = tail call i64 @fwrite(ptr nonnull @.str.176, i64 68, i64 1, ptr %i.f) #33 ; 0 uses
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !61
  %fwrite99 = tail call i64 @fwrite(ptr nonnull @.str.177, i64 49, i64 1, ptr %i.g) #33 ; 0 uses
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !61
  %fwrite100 = tail call i64 @fwrite(ptr nonnull @.str.178, i64 68, i64 1, ptr %i.h) #33 ; 0 uses
  %i.i = sext i32 %0 to i64                       ; 6 uses
  %i.j = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.140, i32 noundef 166, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 8) ; 5 uses
  %i.k = icmp sgt i32 %0, 0                       ; 4 uses
  br i1 %i.k, label %.lr.ph136.preheader, label %._crit_edge137

.lr.ph136.preheader:                              ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph136

.lr.ph136:                                        ; preds = %.lr.ph136.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph136.preheader ], [ %indvars.iv.next.pre-phi, %bb.l ] ; 9 uses
  %.075133 = phi i1 [ false, %.lr.ph136.preheader ], [ %.4, %bb.l ] ; 2 uses
  %.087132 = phi i32 [ 0, %.lr.ph136.preheader ], [ %.188, %bb.l ] ; 4 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.n = tail call noundef ptr @_Z10gmx_strdupPKc(ptr noundef %i.m) ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv ; 4 uses
  store ptr %i.n, ptr %i.o, align 8, !tbaa !18
  %i.p = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.n, i32 noundef 32) #29 ; 2 uses
  %.not107129 = icmp eq ptr %i.p, null
  br i1 %.not107129, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph136, %.lr.ph
  %i.q = phi ptr [ %i.s, %.lr.ph ], [ %i.p, %.lr.ph136 ]
  store i8 45, ptr %i.q, align 1, !tbaa !24
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.s = tail call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.r, i32 noundef 32) #29 ; 2 uses
  %.not107 = icmp eq ptr %i.s, null
  br i1 %.not107, label %._crit_edge, label %.lr.ph, !llvm.loop !333

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph136
  br i1 %.not97, label %bb.b, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.pre171 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.l

bb.b:                                             ; preds = %._crit_edge
  %i.t = icmp eq i32 %.087132, 0
  br i1 %i.t, label %bb.c, label %.split

bb.c:                                             ; preds = %bb.b
  %.not110 = icmp eq i64 %indvars.iv, 0
  br i1 %.not110, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load ptr, ptr @stderr, align 8, !tbaa !61
  %fputc112 = tail call i32 @fputc(i32 10, ptr %i.u) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.v = load ptr, ptr %i.l, align 8, !tbaa !26
  %i.w = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.v) #29
  %i.x = icmp ugt i64 %i.w, 14                    ; 2 uses
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.y = icmp slt i64 %indvars.iv.next156, %i.i
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next156
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !26
  %i.ab = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #29
  %i.ac = icmp ugt i64 %i.ab, 14
  %spec.select.1 = select i1 %i.ac, i1 true, i1 %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.2.1 = phi i1 [ %i.x, %bb.e ], [ %spec.select.1, %bb.f ] ; 2 uses
  %indvars.iv.next156.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ad = icmp slt i64 %indvars.iv.next156.1, %i.i
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next156.1
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !26
  %i.ag = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.af) #29
  %i.ah = icmp ugt i64 %i.ag, 14
  %spec.select.2 = select i1 %i.ah, i1 true, i1 %.2.1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2.2 = phi i1 [ %.2.1, %bb.g ], [ %spec.select.2, %bb.h ] ; 2 uses
  %indvars.iv.next156.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ai = icmp slt i64 %indvars.iv.next156.2, %i.i
  br i1 %i.ai, label %.split181, label %.loopexit

.split181:                                        ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.next156.2
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !26
  %i.al = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ak) #29
  %i.am = icmp ugt i64 %i.al, 14
  %spec.select.3 = select i1 %i.am, i1 true, i1 %.2.2
  br i1 %spec.select.3, label %bb.k, label %bb.j

.split:                                           ; preds = %bb.b
  %i.an = load ptr, ptr @stderr, align 8, !tbaa !61
  %fputc109 = tail call i32 @fputc(i32 32, ptr %i.an) ; 0 uses
  br i1 %.075133, label %bb.k, label %bb.j

.loopexit:                                        ; preds = %bb.i
  br i1 %.2.2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.split181, %.split, %.loopexit
  %i.ao = load ptr, ptr @stderr, align 8, !tbaa !61
  %i.ap = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.aq = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.ar = trunc nuw nsw i64 %i.ap to i32
  %i.as = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ao, ptr noundef nonnull @.str.172, i32 noundef %i.ar, ptr noundef %i.aq) #31 ; 0 uses
  %i.at = add nsw i32 %.087132, 1                 ; 2 uses
  %i.au = icmp eq i32 %i.at, 4
  %spec.store.select = select i1 %i.au, i32 0, i32 %i.at
  br label %bb.l

bb.k:                                             ; preds = %.split181, %.split, %.loopexit
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !61
  %i.aw = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.ax = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.ay = trunc nuw nsw i64 %i.aw to i32
  %i.az = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.av, ptr noundef nonnull @.str.173, i32 noundef %i.ay, ptr noundef %i.ax) #31 ; 0 uses
  %i.ba = add nsw i32 %.087132, 1                 ; 2 uses
  %i.bb = icmp eq i32 %i.ba, 2
  %spec.store.select1 = select i1 %i.bb, i32 0, i32 %i.ba
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge._crit_edge, %bb.k, %bb.j
  %indvars.iv.next.pre-phi = phi i64 [ %.pre171, %._crit_edge._crit_edge ], [ %i.aw, %bb.k ], [ %i.ap, %bb.j ] ; 2 uses
  %.188 = phi i32 [ %.087132, %._crit_edge._crit_edge ], [ %spec.store.select1, %bb.k ], [ %spec.store.select, %bb.j ]
  %.4 = phi i1 [ %.075133, %._crit_edge._crit_edge ], [ true, %bb.k ], [ false, %bb.j ]
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge137, label %.lr.ph136, !llvm.loop !334

._crit_edge137:                                   ; preds = %bb.l, %bb.a
  br i1 %.not97, label %bb.m, label %4

bb.m:                                             ; preds = %._crit_edge137
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !61
  %fwrite101 = tail call i64 @fwrite(ptr nonnull @.str.181, i64 2, i64 1, ptr %i.bc) #33 ; 0 uses
  br label %4

4:                                                ; preds = %bb.m, %._crit_edge137
  %5 = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.140, i32 noundef 222, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 1) ; 10 uses
  br label %.critedge191

.critedge191:                                     ; preds = %.critedge191.backedge, %4
  %i.bd = load ptr, ptr @stdin, align 8, !tbaa !61
  %i.be = call noundef ptr @_Z6fgets2PciP8_IO_FILE(ptr noundef nonnull %i.b, i32 noundef 4095, ptr noundef %i.bd)
  %.not102.a = icmp eq ptr %i.be, null
  br i1 %.not102.a, label %.critedge, label %bb.n

bb.n:                                             ; preds = %.critedge191
  %i.bf = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #29
  %i.bg = trunc i64 %i.bf to i32                  ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i, label %_ZL5chompPc.exit

.lr.ph.i:                                         ; preds = %bb.n, %bb.o
  %.06.i = phi i32 [ %i.bn, %bb.o ], [ %i.bg, %bb.n ] ; 3 uses
  %i.bi = zext nneg i32 %.06.i to i64
  %i.bj = getelementptr i8, ptr %i.b, i64 %i.bi
  %i.bk = getelementptr i8, ptr %i.bj, i64 -1     ; 2 uses
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !24
  %i.bm = icmp eq i8 %i.bl, 10
  br i1 %i.bm, label %bb.o, label %_ZL5chompPc.exit

bb.o:                                             ; preds = %.lr.ph.i
  store i8 0, ptr %i.bk, align 1, !tbaa !24
  %i.bn = add nsw i32 %.06.i, -1
  %i.bo = icmp sgt i32 %.06.i, 1
  br i1 %i.bo, label %.lr.ph.i, label %_ZL5chompPc.exit, !llvm.loop !335

_ZL5chompPc.exit:                                 ; preds = %.lr.ph.i, %bb.o, %bb.n
  call void @_Z4trimPc(ptr noundef nonnull %i.b)
  %char0 = load i8, ptr %i.b, align 16
  %i.bp = icmp eq i8 %char0, 0
  br i1 %i.bp, label %.critedge, label %.preheader128

.preheader128:                                    ; preds = %_ZL5chompPc.exit, %bb.aa
  %.074 = phi ptr [ %i.da, %bb.aa ], [ %i.b, %_ZL5chompPc.exit ] ; 6 uses
  store i32 0, ptr %i.a, align 4, !tbaa !11
  br i1 %i.k, label %.lr.ph141, label %._crit_edge142.thread

.lr.ph141:                                        ; preds = %.preheader128, %bb.q
  %.081139 = phi i32 [ %.182, %bb.q ], [ 0, %.preheader128 ] ; 2 uses
  %storemerge138 = phi i32 [ %i.by, %bb.q ], [ 0, %.preheader128 ]
  %i.bq = sext i32 %storemerge138 to i64
  %i.br = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.bq
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !18
  %i.bt = call noundef i32 @_Z14gmx_strcasecmpPKcS0_(ptr noundef %i.bs, ptr noundef nonnull %.074)
  %i.bu = icmp eq i32 %i.bt, 0
  %.pre = load i32, ptr %i.a, align 4, !tbaa !11  ; 2 uses
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.lr.ph141
  %i.bv = sext i32 %.pre to i64
  %i.bw = getelementptr inbounds i8, ptr %5, i64 %i.bv
  store i8 1, ptr %i.bw, align 1, !tbaa !36
  %i.bx = add nsw i32 %.081139, 1
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph141, %bb.p
  %.182 = phi i32 [ %i.bx, %bb.p ], [ %.081139, %.lr.ph141 ] ; 2 uses
  %i.by = add nsw i32 %.pre, 1                    ; 3 uses
  store i32 %i.by, ptr %i.a, align 4, !tbaa !11
  %i.bz = icmp slt i32 %i.by, %0
  br i1 %i.bz, label %.lr.ph141, label %._crit_edge142, !llvm.loop !336

._crit_edge142:                                   ; preds = %bb.q
  %i.ca = icmp eq i32 %.182, 0
  br i1 %i.ca, label %._crit_edge142.thread, label %bb.y

._crit_edge142.thread:                            ; preds = %.preheader128, %._crit_edge142
  %i.cb = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.074, ptr noundef nonnull @.str.183, ptr noundef nonnull %i.a) #27
  %i.cc = icmp eq i32 %i.cb, 1
  br i1 %i.cc, label %bb.r, label %bb.v

bb.r:                                             ; preds = %._crit_edge142.thread
  %i.cd = load i32, ptr %i.a, align 4, !tbaa !11  ; 5 uses
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.y, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cf = icmp slt i32 %i.cd, 1
  %.not104 = icmp sgt i32 %i.cd, %0
  %or.cond = or i1 %i.cf, %.not104
  br i1 %or.cond, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cg = zext nneg i32 %i.cd to i64
  %i.ch = getelementptr i8, ptr %5, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  store i8 1, ptr %i.ci, align 1, !tbaa !36
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !61
  %i.ck = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cj, ptr noundef nonnull @.str.184, i32 noundef %i.cd) #31 ; 0 uses
  br label %bb.y

bb.v:                                             ; preds = %._crit_edge142.thread
  %i.cl = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.074) #29
  %i.cm = trunc i64 %i.cl to i32
  store i32 0, ptr %i.a, align 4, !tbaa !11
  br i1 %i.k, label %.lr.ph146, label %._crit_edge147.thread

.lr.ph146:                                        ; preds = %bb.v, %bb.x
  %.283144 = phi i32 [ %.384, %bb.x ], [ 0, %bb.v ] ; 2 uses
  %storemerge103143 = phi i32 [ %i.cv, %bb.x ], [ 0, %bb.v ]
  %i.cn = sext i32 %storemerge103143 to i64
  %i.co = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.cn
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !18
  %i.cq = call noundef i32 @_Z15gmx_strncasecmpPKcS0_i(ptr noundef %i.cp, ptr noundef nonnull %.074, i32 noundef %i.cm)
  %i.cr = icmp eq i32 %i.cq, 0
  %.pre170 = load i32, ptr %i.a, align 4, !tbaa !11 ; 2 uses
  br i1 %i.cr, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.lr.ph146
  %i.cs = sext i32 %.pre170 to i64
  %i.ct = getelementptr inbounds i8, ptr %5, i64 %i.cs
  store i8 1, ptr %i.ct, align 1, !tbaa !36
  %i.cu = add nsw i32 %.283144, 1
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph146, %bb.w
  %.384 = phi i32 [ %i.cu, %bb.w ], [ %.283144, %.lr.ph146 ] ; 2 uses
  %i.cv = add nsw i32 %.pre170, 1                 ; 3 uses
  store i32 %i.cv, ptr %i.a, align 4, !tbaa !11
  %i.cw = icmp slt i32 %i.cv, %0
  br i1 %i.cw, label %.lr.ph146, label %._crit_edge147, !llvm.loop !337

._crit_edge147:                                   ; preds = %bb.x
  %i.cx = icmp eq i32 %.384, 0
  br i1 %i.cx, label %._crit_edge147.thread, label %bb.y

._crit_edge147.thread:                            ; preds = %bb.v, %._crit_edge147
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !61
  %i.cz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cy, ptr noundef nonnull @.str.185, ptr noundef nonnull %.074) #31 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.r, %._crit_edge142, %._crit_edge147, %._crit_edge147.thread, %bb.u, %bb.t
  %.279 = phi i1 [ true, %bb.r ], [ false, %._crit_edge142 ], [ false, %bb.t ], [ false, %bb.u ], [ false, %._crit_edge147.thread ], [ false, %._crit_edge147 ] ; 2 uses
  %i.da = call noundef ptr @strchr(ptr noundef nonnull dereferenceable(1) %.074, i32 noundef 32) #29 ; 4 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %.critedge3, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_Z4trimPc(ptr noundef nonnull %i.da)
  br i1 %.279, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %char0106 = load i8, ptr %i.da, align 1
  %.not = icmp eq i8 %char0106, 0
  br i1 %.not, label %.critedge191.backedge, label %.preheader128, !llvm.loop !338

.critedge3:                                       ; preds = %bb.y
  br i1 %.279, label %.critedge, label %.critedge191.backedge

.critedge191.backedge:                            ; preds = %bb.aa, %.critedge3
  br label %.critedge191, !llvm.loop !339

.critedge:                                        ; preds = %_ZL5chompPc.exit, %.critedge3, %.critedge191, %bb.z
  %i.dc = call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.143, ptr noundef nonnull @.str.140, i32 noundef 301, i64 noundef range(i64 -2147483648, 2147483648) %i.i, i64 noundef 4) ; 6 uses
  store i32 0, ptr %2, align 4, !tbaa !11
  br i1 %i.k, label %.lr.ph150.preheader, label %._crit_edge151.thread

.lr.ph150.preheader:                              ; preds = %.critedge
  %wide.trip.count162 = zext nneg i32 %0 to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count162, 3      ; 3 uses
  %i.dd = icmp ult i32 %0, 4
  br i1 %i.dd, label %.lr.ph150.epil.preheader, label %.lr.ph150.preheader.new

.lr.ph150.preheader.new:                          ; preds = %.lr.ph150.preheader
  %unroll_iter = and i64 %wide.trip.count162, 2147483644
  br label %.lr.ph150

.lr.ph150:                                        ; preds = %bb.af, %.lr.ph150.preheader.new
  %indvars.iv159 = phi i64 [ 0, %.lr.ph150.preheader.new ], [ %indvars.iv.next160.3, %bb.af ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph150.preheader.new ], [ %niter.next.3, %bb.af ]
  %i.de = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv159
  %i.df = load i8, ptr %i.de, align 1, !tbaa !36, !range !37, !noundef !38
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.ab, label %.lr.ph150.1

bb.ab:                                            ; preds = %.lr.ph150
  %i.dh = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %i.di = add nsw i32 %i.dh, 1
  store i32 %i.di, ptr %2, align 4, !tbaa !11
  %i.dj = sext i32 %i.dh to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dj
  %i.dl = trunc nuw nsw i64 %indvars.iv159 to i32
  store i32 %i.dl, ptr %i.dk, align 4, !tbaa !11
  br label %.lr.ph150.1

.lr.ph150.1:                                      ; preds = %.lr.ph150, %bb.ab
  %indvars.iv.next160 = or disjoint i64 %indvars.iv159, 1 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next160
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !36, !range !37, !noundef !38
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %bb.ac, label %.lr.ph150.2

bb.ac:                                            ; preds = %.lr.ph150.1
  %i.dp = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %i.dq = add nsw i32 %i.dp, 1
  store i32 %i.dq, ptr %2, align 4, !tbaa !11
  %i.dr = sext i32 %i.dp to i64
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dr
  %i.dt = trunc nuw nsw i64 %indvars.iv.next160 to i32
  store i32 %i.dt, ptr %i.ds, align 4, !tbaa !11
  br label %.lr.ph150.2

.lr.ph150.2:                                      ; preds = %bb.ac, %.lr.ph150.1
  %indvars.iv.next160.1 = or disjoint i64 %indvars.iv159, 2 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next160.1
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !36, !range !37, !noundef !38
  %i.dw = trunc nuw i8 %i.dv to i1
  br i1 %i.dw, label %bb.ad, label %.lr.ph150.3

bb.ad:                                            ; preds = %.lr.ph150.2
  %i.dx = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %i.dy = add nsw i32 %i.dx, 1
  store i32 %i.dy, ptr %2, align 4, !tbaa !11
  %i.dz = sext i32 %i.dx to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.dz
  %i.eb = trunc nuw nsw i64 %indvars.iv.next160.1 to i32
  store i32 %i.eb, ptr %i.ea, align 4, !tbaa !11
  br label %.lr.ph150.3

.lr.ph150.3:                                      ; preds = %bb.ad, %.lr.ph150.2
  %indvars.iv.next160.2 = or disjoint i64 %indvars.iv159, 3 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv.next160.2
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !36, !range !37, !noundef !38
  %i.ee = trunc nuw i8 %i.ed to i1
  br i1 %i.ee, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.lr.ph150.3
  %i.ef = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %i.eg = add nsw i32 %i.ef, 1
  store i32 %i.eg, ptr %2, align 4, !tbaa !11
  %i.eh = sext i32 %i.ef to i64
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.eh
  %i.ej = trunc nuw nsw i64 %indvars.iv.next160.2 to i32
  store i32 %i.ej, ptr %i.ei, align 4, !tbaa !11
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %.lr.ph150.3
  %indvars.iv.next160.3 = add nuw nsw i64 %indvars.iv159, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge151.unr-lcssa, label %.lr.ph150, !llvm.loop !340

._crit_edge151.unr-lcssa:                         ; preds = %bb.af
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge151, label %.lr.ph150.epil.preheader

.lr.ph150.epil.preheader:                         ; preds = %._crit_edge151.unr-lcssa, %.lr.ph150.preheader
  %indvars.iv159.epil.init = phi i64 [ 0, %.lr.ph150.preheader ], [ %indvars.iv.next160.3, %._crit_edge151.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod195)
  br label %.lr.ph150.epil

.lr.ph150.epil:                                   ; preds = %bb.ah, %.lr.ph150.epil.preheader
  %indvars.iv159.epil = phi i64 [ %indvars.iv159.epil.init, %.lr.ph150.epil.preheader ], [ %indvars.iv.next160.epil, %bb.ah ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph150.epil.preheader ], [ %epil.iter.next, %bb.ah ]
  %i.ek = getelementptr inbounds nuw i8, ptr %5, i64 %indvars.iv159.epil
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !36, !range !37, !noundef !38
  %i.em = trunc nuw i8 %i.el to i1
  br i1 %i.em, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.lr.ph150.epil
  %i.en = load i32, ptr %2, align 4, !tbaa !11    ; 2 uses
  %i.eo = add nsw i32 %i.en, 1
  store i32 %i.eo, ptr %2, align 4, !tbaa !11
  %i.ep = sext i32 %i.en to i64
  %i.eq = getelementptr inbounds [4 x i8], ptr %i.dc, i64 %i.ep
  %i.er = trunc nuw nsw i64 %indvars.iv159.epil to i32
  store i32 %i.er, ptr %i.eq, align 4, !tbaa !11
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.lr.ph150.epil
  %indvars.iv.next160.epil = add nuw nsw i64 %indvars.iv159.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge151, label %.lr.ph150.epil, !llvm.loop !341

._crit_edge151:                                   ; preds = %bb.ah, %._crit_edge151.unr-lcssa
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.140, i32 noundef 310, ptr noundef nonnull %5)
  %i.es = load i32, ptr %2, align 4, !tbaa !11
  %i.et = icmp eq i32 %i.es, 0
  br i1 %i.et, label %bb.ai, label %.lr.ph153.preheader

._crit_edge151.thread:                            ; preds = %.critedge
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.182, ptr noundef nonnull @.str.140, i32 noundef 310, ptr noundef %5)
  %i.eu = load i32, ptr %2, align 4, !tbaa !11
  %i.ev = icmp eq i32 %i.eu, 0
  br i1 %i.ev, label %bb.ai, label %._crit_edge154

.lr.ph153.preheader:                              ; preds = %._crit_edge151
  %wide.trip.count167 = zext nneg i32 %0 to i64
  br label %.lr.ph153

bb.ai:                                            ; preds = %._crit_edge151.thread, %._crit_edge151
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @_ZNSt10filesystem7__cxx114pathC2IA66_cS1_EERKT_NS1_6formatE(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 1 dereferenceable(66) @.str.140, i8 noundef zeroext 2)
  invoke void (i32, ptr, i32, ptr, ...) @_Z9gmx_fataliRKNSt10filesystem7__cxx114pathEiPKcz(i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(40) %3, i32 noundef 314, ptr noundef nonnull @.str.186) #30
          to label %bb.aj unwind label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.ew = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10filesystem7__cxx114pathD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  resume { ptr, i32 } %i.ew

.lr.ph153:                                        ; preds = %.lr.ph153.preheader, %.lr.ph153
  %indvars.iv164 = phi i64 [ 0, %.lr.ph153.preheader ], [ %indvars.iv.next165, %.lr.ph153 ] ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv164
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !18
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.140, i32 noundef 319, ptr noundef %i.ey)
  %indvars.iv.next165 = add nuw nsw i64 %indvars.iv164, 1 ; 2 uses
  %exitcond168.not = icmp eq i64 %indvars.iv.next165, %wide.trip.count167
  br i1 %exitcond168.not, label %._crit_edge154, label %.lr.ph153, !llvm.loop !342

._crit_edge154:                                   ; preds = %.lr.ph153, %._crit_edge151.thread
  call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.140, i32 noundef 321, ptr noundef %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %i.dc
}

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias noundef readonly captures(none)) local_unnamed_addr #13

declare noundef ptr @_Z8xvgropenRKNSt10filesystem7__cxx114pathEPKcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESD_PK16gmx_output_env_t(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z6opt2fnPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12emplace_backIJRPcEEERS5_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !40
  %.not = icmp eq ptr %i.c, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !18     ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !32
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.noexc, label %bb.c

.noexc:                                           ; preds = %bb.b
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.171) #30
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.f) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.i, ptr %i.a, align 8, !tbaa !34
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.c
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.k, ptr %i.c, align 8, !tbaa !23
  %i.l = load i64, ptr %i.a, align 8, !tbaa !34
  store i64 %i.l, ptr %i.g, align 8, !tbaa !24
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.c
  %i.m = phi ptr [ %i.k, %.noexc.i ], [ %i.g, %bb.c ] ; 2 uses
  switch i64 %i.i, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPcEEEvPT_DpOT0_.exit
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.n = load i8, ptr %i.f, align 1, !tbaa !24
  store i8 %i.n, ptr %i.m, align 1, !tbaa !24
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPcEEEvPT_DpOT0_.exit

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr nonnull align 1 %i.f, i64 %i.i, i1 false)
  br label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPcEEEvPT_DpOT0_.exit

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPcEEEvPT_DpOT0_.exit: ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.o = load i64, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !33
  %i.q = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 2 uses
  store ptr %i.t, ptr %i.b, align 8, !tbaa !39
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRPcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.c, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !343
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPcEEEvPT_DpOT0_.exit
  %i.u = phi ptr [ %.pre, %bb.f ], [ %i.t, %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9constructIS5_JRPcEEEvPT_DpOT0_.exit ]
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  ret ptr %i.v
}

declare void @_Z10xvgrLegendP8_IO_FILEN3gmx8ArrayRefIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEPK16gmx_output_env_t(ptr noundef, ptr, ptr, ptr noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare noundef zeroext i1 @_Z6do_enxP9ener_fileP10t_enxframe(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z11check_timesf(float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare void @_Z14done_ener_fileP9ener_file(ptr noundef) local_unnamed_addr #3

declare void @_Z9xvgrcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare noundef i32 @_Z14gmx_fio_fcloseP8_IO_FILE(ptr noundef) local_unnamed_addr #3

declare void @_Z13free_enxframeP10t_enxframe(ptr noundef) local_unnamed_addr #3

declare void @_Z11free_enxnmsiP11gmx_enxnm_t(i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z7do_viewPK16gmx_output_env_tPKcS3_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z11opt2fn_nullPKciPK8t_filenm(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z15output_env_doneP16gmx_output_env_t(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN10t_inputrecD1Ev(ptr noundef nonnull align 8 dead_on_return(888) dereferenceable(888)) unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !41     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !23 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.g = load i64, ptr %i.e, align 8, !tbaa !24
  %i.h = add i64 %i.g, 1
  tail call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #28
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32 ; 2 uses
  %.not.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !41
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.j = phi ptr [ %.pr, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.j, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.b

end_hunk_0
