inline.NumInlined: 1628
inline.NumDeleted: 812
begin_hunk_0_@_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEED2Ev:bb.a

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !214  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !217  ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.d, %i.f
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i ], [ %i.d, %bb.b ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !133  ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !152
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !154
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !155
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !246
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !155
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !246
  br label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !132
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 4, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i, !prof !135

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25
  br label %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.x, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !224

_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyISt4pairIlSt10shared_ptrIN5arrow5ArrayEEEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !214
  br label %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.b
  %i.y = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.d, %bb.b ] ; 3 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i1.i.i.i, label %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !218
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ad) #26
  br label %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit

_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit: ; preds = %_ZSt8_DestroyIPSt4pairIlSt10shared_ptrIN5arrow5ArrayEEES5_EvT_S7_RSaIT0_E.exit.i.i.i, %bb.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !74     ; 2 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit.thread, !prof !167

_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit.thread: ; preds = %bb.a, %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit
  %i.ae = phi ptr [ %.pr, %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit ], [ %i.a, %bb.a ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !89, !range !99, !noundef !100
  %i.ah = trunc nuw i8 %i.ag to i1
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit.thread
  tail call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #25
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit, %_ZN5arrow6ResultISt6vectorISt4pairIlSt10shared_ptrINS_5ArrayEEESaIS6_EEE7DestroyEv.exit.thread, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow3ipc19ResolveDictionariesERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS4_EERKNS0_14DictionaryMemoEPNS_10MemoryPoolE(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 6 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %6 = alloca %"struct.arrow::ipc::(anonymous namespace)::DictionaryResolver", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  store ptr %2, ptr %6, align 8, !tbaa !247
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !249
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store ptr null, ptr %4, align 8, !noalias !252
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 4294967295, ptr %i.b, align 8, !noalias !252
  %i.c = load ptr, ptr %1, align 8, !tbaa !140, !noalias !252 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !140, !noalias !252 ; 2 uses
  %i.f = icmp eq ptr %i.c, %i.e
  br i1 %i.f, label %_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver13VisitChildrenERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS6_EENS0_8internal13FieldPositionE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.sroa.025.031.i = phi ptr [ %i.c, %.lr.ph.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.h = load ptr, ptr %.sroa.025.031.i, align 8, !tbaa !146, !noalias !252 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit.i

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !252
  %i.i = load i32, ptr %i.g, align 4, !tbaa !50, !noalias !252
  %i.j = add nsw i32 %i.i, 1
  %.sroa.4.8.insert.ext.i.i = zext i32 %i.j to i64
  %.sroa.4.8.insert.shift.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i.i, 32
  %.sroa.2.8.insert.insert.i.i = add nuw nsw i64 %.sroa.4.8.insert.shift.i.i, %indvars.iv.i
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver10VisitFieldENS0_8internal13FieldPositionEPNS_9ArrayDataE(ptr dead_on_unwind noalias writable align 8 %5, ptr noundef nonnull readonly align 8 dereferenceable(16) %6, ptr nonnull %4, i64 %.sroa.2.8.insert.insert.i.i, ptr noundef nonnull %i.h) #30, !noalias !252, !inline_history !255
  %i.k = load ptr, ptr %5, align 8, !tbaa !74, !noalias !252 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !252
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver13VisitChildrenERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS6_EENS0_8internal13FieldPositionE.exit

bb.c:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.025.031.i, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver13VisitChildrenERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS6_EENS0_8internal13FieldPositionE.exit, label %bb.b

_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver13VisitChildrenERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS6_EENS0_8internal13FieldPositionE.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %bb.c, %bb.a
  %storemerge = phi ptr [ null, %bb.a ], [ %i.k, %_ZN5arrow6StatusD2Ev.exit.i ], [ null, %bb.c ]
  store ptr %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver13VisitChildrenERKSt6vectorISt10shared_ptrINS_9ArrayDataEESaIS6_EENS0_8internal13FieldPositionE(ptr dead_on_unwind noalias writable writeonly align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr %3, i64 %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 4 uses
  %6 = alloca %"class.arrow::Status", align 8     ; 4 uses
  store ptr %3, ptr %5, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %4, ptr %i.a, align 8
  %i.b = load ptr, ptr %2, align 8, !tbaa !140    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !140  ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %.critedge19, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 12
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %.sroa.025.031 = phi ptr [ %i.b, %.lr.ph ], [ %i.l, %bb.c ] ; 2 uses
  %i.g = load ptr, ptr %.sroa.025.031, align 8, !tbaa !146 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.h = load i32, ptr %i.f, align 4, !tbaa !50
  %i.i = add nsw i32 %i.h, 1
  %.sroa.4.8.insert.ext.i = zext i32 %i.i to i64
  %.sroa.4.8.insert.shift.i = shl nuw i64 %.sroa.4.8.insert.ext.i, 32
  %.sroa.2.8.insert.insert.i = or disjoint i64 %.sroa.4.8.insert.shift.i, %indvars.iv
  call fastcc void @_ZN5arrow3ipc12_GLOBAL__N_118DictionaryResolver10VisitFieldENS0_8internal13FieldPositionEPNS_9ArrayDataE(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nonnull %5, i64 %.sroa.2.8.insert.insert.i, ptr noundef nonnull %i.g)
  %i.j = load ptr, ptr %6, align 8, !tbaa !74     ; 2 uses
  store ptr %i.j, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b, %_ZN5arrow6StatusD2Ev.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.025.031, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.d
  br i1 %i.m, label %.critedge19, label %bb.b

.critedge19:                                      ; preds = %bb.c, %bb.a
  store ptr null, ptr %0, align 8, !tbaa !74, !alias.scope !256
  br label %.critedge

.critedge:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit, %.critedge19
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK5arrow6Schema6fieldsEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc21DictionaryFieldMapper4Impl11ImportFieldERKNS0_8internal13FieldPositionERKNS_5FieldE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(96) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %3 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 5 uses
  %4 = alloca %"class.arrow::ipc::internal::FieldPosition", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !170  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !259  ; 2 uses
  %i.e = icmp eq i32 %i.d, 31
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !170  ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !259
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i32 [ %.pre, %bb.b ], [ %i.d, %bb.a ]
  %.0 = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ]  ; 3 uses
  %i.i = icmp eq i32 %i.h, 29
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow3ipc21DictionaryFieldMapper4Impl10InsertPathERKNS0_8internal13FieldPositionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %.0, i64 88
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !170  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 56 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.o = load ptr, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = lshr exact i64 %i.r, 4
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph21, label %_ZN5arrow3ipc21DictionaryFieldMapper4Impl12ImportFieldsERKNS0_8internal13FieldPositionERKSt6vectorISt10shared_ptrINS_5FieldEESaISA_EE.exit

.lr.ph21:                                         ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph21, %bb.e
  %indvars.iv24 = phi i64 [ 0, %.lr.ph21 ], [ %indvars.iv.next25, %bb.e ] ; 3 uses
  %i.x = phi ptr [ %i.o, %.lr.ph21 ], [ %i.ad, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.y = load i32, ptr %i.v, align 4, !tbaa !50
  %i.z = add nsw i32 %i.y, 1
  %.sroa.4.8.insert.ext.i.i = zext i32 %i.z to i64
  %.sroa.4.8.insert.shift.i.i = shl nuw i64 %.sroa.4.8.insert.ext.i.i, 32
  %.sroa.2.8.insert.insert.i.i = or disjoint i64 %.sroa.4.8.insert.shift.i.i, %indvars.iv24
  store ptr %1, ptr %4, align 8
  store i64 %.sroa.2.8.insert.insert.i.i, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %indvars.iv24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !55
  call void @_ZN5arrow3ipc21DictionaryFieldMapper4Impl11ImportFieldERKNS0_8internal13FieldPositionERKNS_5FieldE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(96) %i.ab), !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1 ; 2 uses
  %i.ac = load ptr, ptr %i.m, align 8, !tbaa !51
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !54  ; 2 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af
  %sext28 = shl i64 %i.ag, 28
  %i.ah = ashr i64 %sext28, 32
  %i.ai = icmp slt i64 %indvars.iv.next25, %i.ah
  br i1 %i.ai, label %bb.e, label %_ZN5arrow3ipc21DictionaryFieldMapper4Impl12ImportFieldsERKNS0_8internal13FieldPositionERKSt6vectorISt10shared_ptrINS_5FieldEESaISA_EE.exit, !llvm.loop !60

bb.f:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.0, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0, i64 56 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !54 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = lshr exact i64 %i.ap, 4
  %i.ar = trunc i64 %i.aq to i32
  %i.as = icmp sgt i32 %i.ar, 0
  br i1 %i.as, label %.lr.ph, label %_ZN5arrow3ipc21DictionaryFieldMapper4Impl12ImportFieldsERKNS0_8internal13FieldPositionERKSt6vectorISt10shared_ptrINS_5FieldEESaISA_EE.exit

.lr.ph:                                           ; preds = %bb.f
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 8
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.av = phi ptr [ %i.am, %.lr.ph ], [ %i.bb, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.aw = load i32, ptr %i.at, align 4, !tbaa !50
  %i.ax = add nsw i32 %i.aw, 1
  %.sroa.4.8.insert.ext.i.i12 = zext i32 %i.ax to i64
  %.sroa.4.8.insert.shift.i.i13 = shl nuw i64 %.sroa.4.8.insert.ext.i.i12, 32
  %.sroa.2.8.insert.insert.i.i15 = or disjoint i64 %.sroa.4.8.insert.shift.i.i13, %indvars.iv
  store ptr %1, ptr %3, align 8
  store i64 %.sroa.2.8.insert.insert.i.i15, ptr %i.au, align 8
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %i.av, i64 %indvars.iv
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !55
  call void @_ZN5arrow3ipc21DictionaryFieldMapper4Impl11ImportFieldERKNS0_8internal13FieldPositionERKNS_5FieldE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(96) %i.az), !inline_history !73
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ba = load ptr, ptr %i.ak, align 8, !tbaa !51
  %i.bb = load ptr, ptr %i.aj, align 8, !tbaa !54 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %sext = shl i64 %i.be, 28
  %i.bf = ashr i64 %sext, 32
  %i.bg = icmp slt i64 %indvars.iv.next, %i.bf
  br i1 %i.bg, label %bb.g, label %_ZN5arrow3ipc21DictionaryFieldMapper4Impl12ImportFieldsERKNS0_8internal13FieldPositionERKSt6vectorISt10shared_ptrINS_5FieldEESaISA_EE.exit, !llvm.loop !60

_ZN5arrow3ipc21DictionaryFieldMapper4Impl12ImportFieldsERKNS0_8internal13FieldPositionERKSt6vectorISt10shared_ptrINS_5FieldEESaISA_EE.exit: ; preds = %bb.g, %bb.e, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow3ipc21DictionaryFieldMapper4Impl10InsertPathERKNS0_8internal13FieldPositionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.arrow::FieldPath", align 8  ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !tbaa !72
  store i64 %i.c, ptr %i.a, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !50, !noalias !273 ; 4 uses
  %i.f = sext i32 %i.e to i64                     ; 3 uses
  %i.g = icmp slt i32 %i.e, 0
  br i1 %i.g, label %.noexc.i, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #29, !noalias !273
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i32 %i.e, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit, label %.noexc9.i

.noexc9.i:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.h = shl nuw nsw i64 %i.f, 2
  %i.i = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #24, !noalias !273 ; 5 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.f
  store i32 0, ptr %i.i, align 4, !tbaa !3, !noalias !273
  %i.k = getelementptr i8, ptr %i.i, i64 4        ; 3 uses
  %i.l = add nsw i64 %i.f, -1                     ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i: ; preds = %.noexc9.i
  %.idx.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.l, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.k, i8 0, i64 %.idx.i.i.i.i.i.i.i.i, i1 false), !tbaa !3, !noalias !273
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i.i.i.i.i.i.i.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i, %.noexc9.i
  %.0.i.i.i.i.i.ph.i = phi ptr [ %i.n, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i.i ], [ %i.k, %.noexc9.i ]
  %i.o = zext nneg i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %.0810.i = phi ptr [ %1, %.lr.ph.i ], [ %i.t, %bb.b ] ; 2 uses
  %i.p = add nsw i64 %indvars.iv.i, -1            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.0810.i, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !49, !noalias !273
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.p
  store i32 %i.r, ptr %i.s, align 4, !tbaa !3, !noalias !273
  %i.t = load ptr, ptr %.0810.i, align 8, !tbaa !46, !noalias !273
  %i.u = trunc nuw i64 %indvars.iv.i to i32
  %i.v = icmp sgt i32 %i.u, 1
  br i1 %i.v, label %bb.b, label %_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit, !llvm.loop !276

_ZNK5arrow3ipc8internal13FieldPosition4pathEv.exit: ; preds = %bb.b, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i
  %.sroa.0.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.i, %bb.b ]
  %.sroa.6.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %.0.i.i.i.i.i.ph.i, %bb.b ]
  %.sroa.8.0 = phi ptr [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i.i ], [ %i.j, %bb.b ]
  store ptr %.sroa.0.0, ptr %2, align 8, !tbaa !64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.sroa.6.0, ptr %i.w, align 8, !tbaa !277
end_hunk_0
