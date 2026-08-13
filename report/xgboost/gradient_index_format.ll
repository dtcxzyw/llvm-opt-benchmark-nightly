inline.NumInlined: 656
inline.NumDeleted: 336
begin_hunk_0_@_ZN7xgboost6common7ReadVecINS0_15RefResourceViewIhEEEEbPNS0_25AlignedResourceReadStreamEPT_:bb.a
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #8, !inline_history !88
  %i.ay = load ptr, ptr %i.ap, align 8, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  call void %i.ba(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #8, !inline_history !88
  br label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bb, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = add nsw i32 %i.at, -1
  store i32 %i.bc, ptr %i.aq, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.bd = atomicrmw volatile add ptr %i.aq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.at, %bb.n ], [ %i.bd, %bb.o ]
  %i.be = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.be, label %bb.p, label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit, !prof !8

bb.p:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ap) #8
  br label %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit

_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit: ; preds = %bb.j, %bb.l, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.p
  %i.bf = load ptr, ptr %i.am, align 8, !tbaa !76 ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  store i32 0, ptr %i.bg, align 8, !tbaa !79
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !81
  %i.bl = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #8, !inline_history !89
  %i.bo = load ptr, ptr %i.bf, align 8, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #8, !inline_history !89
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit

bb.s:                                             ; preds = %bb.q
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i.i12 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i.i12, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i = phi i32 [ %i.bj, %bb.t ], [ %i.bt, %bb.u ]
  %i.bu = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bu, label %bb.v, label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit, !prof !8

bb.v:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bf) #8
  br label %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit

_ZN7xgboost6common15RefResourceViewIhED2Ev.exit:  ; preds = %_ZN7xgboost6common15RefResourceViewIhEaSEOS2_.exit, %bb.r, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.v
  %i.bv = load ptr, ptr %i.ab, align 8, !tbaa !76 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 4 uses
  %i.bx = load atomic i64, ptr %i.bw acquire, align 8 ; 2 uses
  %i.by = icmp eq i64 %i.bx, 4294967297
  %i.bz = trunc i64 %i.bx to i32                  ; 2 uses
  br i1 %i.by, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 0, ptr %i.bw, align 8, !tbaa !79
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bv, i64 12
  store i32 0, ptr %i.ca, align 4, !tbaa !81
  %i.cb = load ptr, ptr %i.bv, align 8, !tbaa !26
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #8, !inline_history !84
  %i.ce = load ptr, ptr %i.bv, align 8, !tbaa !26
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  call void %i.cg(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #8, !inline_history !84
  br label %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.y:                                             ; preds = %bb.w
  %i.ch = load i8, ptr @__libc_single_threaded, align 1, !tbaa !32
  %.not.i.i.i13 = icmp eq i8 %i.ch, 0
  br i1 %.not.i.i.i13, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ci = add nsw i32 %i.bz, -1
  store i32 %i.ci, ptr %i.bw, align 8, !tbaa !78
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.cj = atomicrmw volatile add ptr %i.bw, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.aa, %bb.z
  %.0.i.i.i.i = phi i32 [ %i.bz, %bb.z ], [ %i.cj, %bb.aa ]
  %i.ck = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ck, label %bb.ab, label %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !8

bb.ab:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bv) #8
  br label %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN7xgboost6common15RefResourceViewIhED2Ev.exit, %bb.x, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %bb.ad

bb.ac:                                            ; preds = %_ZN7xgboost6common25AlignedResourceReadStream5ShareEv.exit
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  resume { ptr, i32 } %i.cl

bb.ad:                                            ; preds = %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN7xgboost6common25AlignedResourceReadStream7ConsumeEm.exit, %bb.b, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %_ZN7xgboost6common25AlignedResourceReadStream7ConsumeEm.exit ], [ true, %_ZNSt12__shared_ptrIN7xgboost6common15ResourceHandlerELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN7xgboost6common25AlignedResourceReadStream4ReadIbEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEbE4typeEPS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef i64 %i.e(ptr noundef nonnull align 8 dereferenceable(9) %i.b)
          to label %bb.b unwind label %bb.c       ; 2 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = invoke noundef ptr %i.i(ptr noundef nonnull align 8 dereferenceable(9) %i.g)
          to label %_ZN7xgboost6common25AlignedResourceReadStream7ConsumeEm.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  tail call void @__clang_call_terminate(ptr %i.l) #26
  unreachable

_ZN7xgboost6common25AlignedResourceReadStream7ConsumeEm.exit.i: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !28   ; 4 uses
  %i.o = sub i64 %i.f, %i.n
  %.sroa.speculated8.i.i = tail call i64 @llvm.umin.i64(i64 %i.o, i64 8)
  %i.p = icmp ne i64 %i.f, %i.n                   ; 2 uses
  %i.q = add i64 %.sroa.speculated8.i.i, %i.n
  store i64 %i.q, ptr %i.m, align 8, !tbaa !28
  br i1 %i.p, label %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i, label %_ZN7xgboost6common25AlignedResourceReadStream7ConsumeIbEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEbE4typeEPS4_.exit

_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i: ; preds = %_ZN7xgboost6common25AlignedResourceReadStream7ConsumeEm.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.n
  %i.s = load i8, ptr %i.r, align 1, !tbaa !53, !range !18, !noundef !19
  store i8 %i.s, ptr %1, align 1, !tbaa !53
  br label %_ZN7xgboost6common25AlignedResourceReadStream7ConsumeIbEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEbE4typeEPS4_.exit

_ZN7xgboost6common25AlignedResourceReadStream7ConsumeIbEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEbE4typeEPS4_.exit: ; preds = %_ZN7xgboost6common25AlignedResourceReadStream7ConsumeEm.exit.i, %_ZNSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EED2Ev.exit.i
  ret i1 %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7xgboost6common5Index12SetBinOffsetERKSt6vectorIjSaIjEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !90
  %i.d = load ptr, ptr %1, align 8, !tbaa !49
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %i.i = add nsw i64 %i.h, -1                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !90   ; 4 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !49   ; 5 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 4 uses
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 2                   ; 3 uses
  %i.q = icmp ugt i64 %i.i, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.r = sub nuw nsw i64 %i.i, %i.p
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.r)
  %.pre = load ptr, ptr %i.j, align 8, !tbaa !90
  %.pre5 = load ptr, ptr %i.a, align 8, !tbaa !49 ; 2 uses
  %.pre6 = ptrtoint ptr %.pre5 to i64
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.i, %i.p
  br i1 %i.s, label %bb.d, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %2 = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.i ; 3 uses
  %.not.i.i = icmp eq ptr %i.k, %2
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %2, ptr %i.j, align 8, !tbaa !90
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %.pre-phi = phi i64 [ %.pre6, %bb.b ], [ %i.n, %bb.c ], [ %i.n, %bb.d ], [ %i.n, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ]
  %i.t = phi ptr [ %.pre5, %bb.b ], [ %i.l, %bb.c ], [ %i.l, %bb.d ], [ %i.l, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  %i.u = phi ptr [ %.pre, %bb.b ], [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %2, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i ] ; 2 uses
  %i.v = load ptr, ptr %1, align 8, !tbaa !52     ; 2 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.w, %.pre-phi                  ; 3 uses
  %i.y = icmp eq ptr %i.u, %i.t
  br i1 %i.y, label %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmNS1_IPjS6_EEET1_T_T0_SA_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  %i.z = icmp sgt i64 %i.x, 4
  br i1 %i.z, label %bb.f, label %bb.g, !prof !37

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.t, ptr align 4 %i.v, i64 %i.x, i1 false)
  br label %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmNS1_IPjS6_EEET1_T_T0_SA_.exit

bb.g:                                             ; preds = %bb.e
  %i.aa = icmp eq i64 %i.x, 4
  br i1 %i.aa, label %bb.h, label %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmNS1_IPjS6_EEET1_T_T0_SA_.exit

bb.h:                                             ; preds = %bb.g
  %i.ab = load i32, ptr %i.v, align 4, !tbaa !78
  store i32 %i.ab, ptr %i.t, align 4, !tbaa !78
  br label %_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmNS1_IPjS6_EEET1_T_T0_SA_.exit

_ZSt6copy_nIN9__gnu_cxx17__normal_iteratorIPKjSt6vectorIjSaIjEEEEmNS1_IPjS6_EEET1_T_T0_SA_.exit: ; preds = %bb.f, %bb.g, %bb.h, %_ZNSt6vectorIjSaIjEE6resizeEm.exit
  ret void
}

declare noundef zeroext i1 @_ZN7xgboost16GHistIndexMatrix14ReadColumnPageEPNS_6common25AlignedResourceReadStreamE(ptr noundef nonnull align 8 dereferenceable(225), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN7xgboost4data19GHistIndexRawFormat5WriteERKNS_16GHistIndexMatrixEPNS_6common22AlignedFileWriteStreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(225) %1, ptr noundef nonnull %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %i.e = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !91
  store i64 %i.g, ptr %i.b, align 8, !tbaa !38
  %i.h = call noundef i64 @_ZN7xgboost6common18AlignedWriteStream5WriteEPKvm(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 8)
  %i.i = load i64, ptr %i.b, align 8, !tbaa !38
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN7xgboost6common8WriteVecINS0_15RefResourceViewImEEEEmPNS0_22AlignedFileWriteStreamERKT_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %1, align 8, !tbaa !92
  %i.l = load i64, ptr %i.f, align 8, !tbaa !91
  %i.m = shl i64 %i.l, 3
  %i.n = call noundef i64 @_ZN7xgboost6common18AlignedWriteStream5WriteEPKvm(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.k, i64 noundef %i.m)
  %i.o = add i64 %i.n, %i.h
  br label %_ZN7xgboost6common8WriteVecINS0_15RefResourceViewImEEEEmPNS0_22AlignedFileWriteStreamERKT_.exit

_ZN7xgboost6common8WriteVecINS0_15RefResourceViewImEEEEmPNS0_22AlignedFileWriteStreamERKT_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.o, %bb.b ], [ 8, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.r = load i8, ptr %i.q, align 8, !tbaa !40
  store i8 %i.r, ptr %i.c, align 1, !tbaa !32
  %i.s = call noundef i64 @_ZN7xgboost6common18AlignedWriteStream5WriteEPKvm(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.c, i64 noundef 1)
  %i.t = add i64 %i.s, %.0.i
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !93   ; 2 uses
  %i.w = load i64, ptr %i.p, align 8, !tbaa !94   ; 6 uses
  %i.x = icmp slt i64 %i.w, 0
  br i1 %i.x, label %.noexc.i, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %_ZN7xgboost6common8WriteVecINS0_15RefResourceViewImEEEEmPNS0_22AlignedFileWriteStreamERKT_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #28
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %_ZN7xgboost6common8WriteVecINS0_15RefResourceViewImEEEEmPNS0_22AlignedFileWriteStreamERKT_.exit
  %.not.i.i.i = icmp samesign eq i64 %i.w, 0
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_.exit, label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.y = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #29 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w ; 2 uses
  %.not = icmp eq i64 %i.w, 1
  br i1 %.not, label %bb.d, label %bb.c, !prof !95

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr align 1 %i.v, i64 %i.w, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_.exit

bb.d:                                             ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i
  %i.aa = load i8, ptr %i.v, align 1, !tbaa !32
  store i8 %i.aa, ptr %i.y, align 1, !tbaa !32
  br label %_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_.exit

_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_.exit:      ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i, %bb.d, %bb.c
  %.sroa.16.0 = phi ptr [ %i.z, %bb.d ], [ %i.z, %bb.c ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 2 uses
  %.sroa.046.0 = phi ptr [ %i.y, %bb.d ], [ %i.y, %bb.c ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i.i ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.ab = ptrtoint ptr %.sroa.16.0 to i64
  %i.ac = ptrtoint ptr %.sroa.046.0 to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 4 uses
  store i64 %i.ad, ptr %i.d, align 8, !tbaa !38
  %i.ae = invoke noundef i64 @_ZN7xgboost6common18AlignedWriteStream5WriteEPKvm(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 8)
          to label %_ZN7xgboost6common18AlignedWriteStream5WriteImEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit unwind label %bb.g

_ZN7xgboost6common18AlignedWriteStream5WriteImEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit: ; preds = %_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_.exit
  %i.af = add i64 %i.t, %i.ae                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  %i.ag = icmp eq ptr %.sroa.046.0, %.sroa.16.0
  br i1 %i.ag, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN7xgboost6common18AlignedWriteStream5WriteImEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit
  %i.ah = invoke noundef i64 @_ZN7xgboost6common18AlignedWriteStream5WriteEPKvm(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %.sroa.046.0, i64 noundef %i.ad)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ai = add i64 %i.ah, %i.af
  br label %bb.i

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEEC2IPhvEET_S4_RKS0_.exit
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  br label %bb.o

bb.h:                                             ; preds = %_ZN7xgboost6common18AlignedWriteStream5WriteIiEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit, %bb.k, %bb.j, %bb.i, %_ZN7xgboost6common18AlignedWriteStream5WriteIbEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit, %bb.e
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.i:                                             ; preds = %bb.f, %_ZN7xgboost6common18AlignedWriteStream5WriteImEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit
  %.031 = phi i64 [ %i.af, %_ZN7xgboost6common18AlignedWriteStream5WriteImEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit ], [ %i.ai, %bb.f ]
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 120
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !91
  store i64 %i.an, ptr %i.a, align 8, !tbaa !38
  %i.ao = invoke noundef i64 @_ZN7xgboost6common18AlignedWriteStream5WriteEPKvm(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 8)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.i
  %i.ap = load i64, ptr %i.a, align 8, !tbaa !38
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.noexc
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !92
  %i.as = load i64, ptr %i.am, align 8, !tbaa !91
  %i.at = shl i64 %i.as, 3
  %i.au = invoke noundef i64 @_ZN7xgboost6common18AlignedWriteStream5WriteEPKvm(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %i.ar, i64 noundef %i.at)
          to label %.noexc35 unwind label %bb.h

.noexc35:                                         ; preds = %bb.j
  %i.av = add i64 %i.au, %i.ao
  br label %bb.k

bb.k:                                             ; preds = %.noexc35, %.noexc
  %.0.i34 = phi i64 [ %i.av, %.noexc35 ], [ 8, %.noexc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.ax = invoke noundef i64 @_ZN7xgboost6common18AlignedWriteStream5WriteEPKvm(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.aw, i64 noundef 4)
          to label %_ZN7xgboost6common18AlignedWriteStream5WriteIiEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit unwind label %bb.h

_ZN7xgboost6common18AlignedWriteStream5WriteIiEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit: ; preds = %bb.k
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.az = invoke noundef i64 @_ZN7xgboost6common18AlignedWriteStream5WriteEPKvm(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.ay, i64 noundef 8)
          to label %_ZN7xgboost6common18AlignedWriteStream5WriteImEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit39 unwind label %bb.h

_ZN7xgboost6common18AlignedWriteStream5WriteImEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit39: ; preds = %_ZN7xgboost6common18AlignedWriteStream5WriteIiEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.bb = load i8, ptr %i.ba, align 8, !tbaa !54, !range !18, !noundef !19
  store i8 %i.bb, ptr %i.e, align 1, !tbaa !53
  %i.bc = invoke noundef i64 @_ZN7xgboost6common18AlignedWriteStream5WriteEPKvm(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %i.e, i64 noundef 1)
          to label %_ZN7xgboost6common18AlignedWriteStream5WriteIbEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit unwind label %bb.n

_ZN7xgboost6common18AlignedWriteStream5WriteIbEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit: ; preds = %_ZN7xgboost6common18AlignedWriteStream5WriteImEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  %i.bd = invoke noundef i64 @_ZNK7xgboost16GHistIndexMatrix15WriteColumnPageEPNS_6common22AlignedFileWriteStreamE(ptr noundef nonnull align 8 dereferenceable(225) %1, ptr noundef nonnull %2)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %_ZN7xgboost6common18AlignedWriteStream5WriteIbEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit
  %.not.i.i.i41 = icmp eq ptr %.sroa.046.0, null
  br i1 %.not.i.i.i41, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.046.0, i64 noundef %i.ad) #27
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.l, %bb.m
  %i.be = add i64 %.0.i34, %.031
  %i.bf = add i64 %i.be, %i.ax
  %i.bg = add i64 %i.bf, %i.az
  %i.bh = add i64 %i.bg, %i.bc
  %i.bi = add i64 %i.bh, %i.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret i64 %i.bi

bb.n:                                             ; preds = %_ZN7xgboost6common18AlignedWriteStream5WriteImEENSt9enable_ifIXsr3stdE8is_pod_vIT_EEmE4typeERKS4_.exit39
  %i.bj = landingpad { ptr, i32 }
          cleanup
end_hunk_0
