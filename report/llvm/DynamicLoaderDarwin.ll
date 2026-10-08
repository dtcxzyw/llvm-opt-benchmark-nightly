Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DynamicLoaderDarwin?download=true
inline.NumInlined: 3420
inline.NumDeleted: 1772
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN12lldb_private19DynamicLoaderDarwin15UnloadAllImagesEv:bb.a
  call void @_ZdlPvm(ptr noundef %i.dl, i64 noundef %i.dp) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.dq = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 120
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !105 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.dr, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12lldb_private19DynamicLoaderDarwin7SegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 136
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !106
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.dr to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.dr, i64 noundef %i.dw) #24
  br label %_ZNSt6vectorIN12lldb_private19DynamicLoaderDarwin7SegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i

_ZNSt6vectorIN12lldb_private19DynamicLoaderDarwin7SegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i: ; preds = %bb.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !96 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64
  %i.ea = icmp eq ptr %i.dy, %i.dz
  br i1 %i.ea, label %_ZSt8_DestroyIN12lldb_private19DynamicLoaderDarwin9ImageInfoEEvPT_.exit.i.i.i.i, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIN12lldb_private19DynamicLoaderDarwin7SegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i
  call void @free(ptr noundef %i.dy) #23
  br label %_ZSt8_DestroyIN12lldb_private19DynamicLoaderDarwin9ImageInfoEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN12lldb_private19DynamicLoaderDarwin9ImageInfoEEvPT_.exit.i.i.i.i: ; preds = %bb.ap, %_ZNSt6vectorIN12lldb_private19DynamicLoaderDarwin7SegmentESaIS2_EED2Ev.exit.i.i.i.i.i.i
  %i.eb = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 200 ; 2 uses
  %.not.i.i.i.i30 = icmp eq ptr %i.eb, %i.dj
  br i1 %.not.i.i.i.i30, label %_ZSt8_DestroyIPN12lldb_private19DynamicLoaderDarwin9ImageInfoEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN12lldb_private19DynamicLoaderDarwin9ImageInfoEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIN12lldb_private19DynamicLoaderDarwin9ImageInfoEEvPT_.exit.i.i.i.i
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !108
  br label %_ZNSt6vectorIN12lldb_private19DynamicLoaderDarwin9ImageInfoESaIS2_EE5clearEv.exit

_ZNSt6vectorIN12lldb_private19DynamicLoaderDarwin9ImageInfoESaIS2_EE5clearEv.exit: ; preds = %bb.an, %_ZSt8_DestroyIPN12lldb_private19DynamicLoaderDarwin9ImageInfoEEvT_S4_.exit.i.i
  %i.ec = load ptr, ptr %i.e, align 8, !tbaa !114
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 344
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !196
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i32 %i.ee, ptr %i.ef, align 8, !tbaa !93
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt6vectorIN12lldb_private19DynamicLoaderDarwin9ImageInfoESaIS2_EE5clearEv.exit, %_ZN12lldb_private22LockingAdaptedIterableISt15recursive_mutexSt6vectorISt10shared_ptrINS_6ModuleEESaIS5_EEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEED2Ev.exit
  %.not.i.i31 = icmp eq ptr %.sroa.441.0, null
  br i1 %.not.i.i31, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit35, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.441.0, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.eg, align 8, !tbaa !126
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.441.0, i64 12
  store i32 0, ptr %i.ek, align 4, !tbaa !127
  %i.el = load ptr, ptr %.sroa.441.0, align 8, !tbaa !37
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.441.0) #23, !inline_history !6
  %i.eo = load ptr, ptr %.sroa.441.0, align 8, !tbaa !37
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.441.0) #23, !inline_history !6
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit35

bb.at:                                            ; preds = %bb.ar
  %i.er = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i.i.i32 = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i32, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

bb.av:                                            ; preds = %bb.at
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i34 = phi i32 [ %i.ej, %bb.au ], [ %i.et, %bb.av ]
  %i.eu = icmp eq i32 %.0.i.i.i.i34, 1
  br i1 %i.eu, label %bb.aw, label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit35, !prof !128

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.441.0) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit35

_ZNSt12__shared_ptrIN12lldb_private6ModuleELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit35: ; preds = %bb.aq, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i33, %bb.aw
  %i.ev = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ah) #23 ; 0 uses
  call void @_ZN12lldb_private10ModuleListD1Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define dso_local void @_ZN12lldb_private19DynamicLoaderDarwin13GetDYLDModuleEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::shared_ptr") align 8 captures(none) initializes((8, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %1) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !112, !noalias !405 ; 3 uses
  store ptr %i.d, ptr %i.b, align 8, !tbaa !130, !alias.scope !405
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN12lldb_private6ModuleEE4lockEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.f = load atomic i32, ptr %i.e monotonic, align 8, !noalias !405
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.f, %bb.b ], [ %i.j, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = add nsw i32 %.06.i.i.i.i.i, 1
  %i.h = cmpxchg weak ptr %i.e, i32 %.06.i.i.i.i.i, i32 %i.g acq_rel monotonic, align 8, !noalias !405 ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  %i.j = extractvalue { i32, i1 } %i.h, 0
  br i1 %i.i, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.c, !llvm.loop !2

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i: ; preds = %bb.c
  store ptr null, ptr %i.b, align 8, !tbaa !130, !alias.scope !405
  br label %_ZNKSt8weak_ptrIN12lldb_private6ModuleEE4lockEv.exit

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.d
  %i.k = load atomic i32, ptr %i.e monotonic, align 8, !noalias !405
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNKSt8weak_ptrIN12lldb_private6ModuleEE4lockEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !203, !noalias !405
  br label %_ZNKSt8weak_ptrIN12lldb_private6ModuleEE4lockEv.exit

_ZNKSt8weak_ptrIN12lldb_private6ModuleEE4lockEv.exit: ; preds = %bb.a, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, %bb.e
  %i.m = phi ptr [ %i.l, %bb.e ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i ], [ null, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE23_M_add_ref_lock_nothrowEv.exit.i.i.i.i ], [ null, %bb.a ]
  store ptr %i.m, ptr %0, align 8, !tbaa !140, !alias.scope !405
  ret void
}

declare void @_ZN12lldb_private10ModuleList6AppendERKSt10shared_ptrINS_6ModuleEEb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(16), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private19DynamicLoaderDarwin22UpdateImageLoadAddressEPNS_6ModuleERNS0_9ImageInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(196) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::formatv_object.1125", align 8 ; 21 uses
  %4 = alloca %"class.llvm::formatv_object.1118", align 8 ; 15 uses
  %5 = alloca %"class.std::shared_ptr.498", align 8 ; 7 uses
  %6 = alloca %"class.std::shared_ptr.498", align 8 ; 6 uses
  %7 = alloca %"struct.lldb_private::Range", align 16 ; 4 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN12lldb_private13LogChannelForINS_7LLDBLogEEERNS_3Log7ChannelEv() #23
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i64 @_ZNK12lldb_private3Log7GetMaskEv(ptr noundef nonnull align 8 dereferenceable(104) %i.b) #23
  %i.d = and i64 %i.c, 256
  %.not6.i.i = icmp eq i64 %i.d, 0
  br i1 %.not6.i.i, label %bb.c, label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  br label %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit

_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit: ; preds = %bb.b, %bb.c
  %.0.i.i = phi ptr [ null, %bb.c ], [ %i.b, %bb.b ] ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZNSt6vectorIjSaIjEED2Ev.exit.a, label %bb.d

bb.d:                                             ; preds = %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %i.e = load ptr, ptr %1, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(952) %1) #23 ; 3 uses
  %.not72 = icmp eq ptr %i.h, null
  br i1 %.not72, label %_ZNSt6vectorIjSaIjEED2Ev.exit.a, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(200) %i.h, i1 noundef zeroext true) #23 ; 3 uses
  %.not73 = icmp eq ptr %i.l, null
  br i1 %.not73, label %_ZNSt6vectorIjSaIjEED2Ev.exit.a, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 8 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !115  ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8, !tbaa !105  ; 2 uses
  %.not144 = icmp eq ptr %i.o, %i.p
  br i1 %.not144, label %_ZNSt6vectorIjSaIjEED2Ev.exit.a, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 56
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.not77 = icmp eq ptr %.0.i.i, null             ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i86 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i87 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 72
  %.ptr.1.i.i.i.i.i88 = getelementptr inbounds nuw i8, ptr %3, i64 96
  %.ptr.2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 112
  %.ptr.3.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ad = ptrtoint ptr %i.ac to i64
  %i.ae = ptrtoint ptr %i.ab to i64
  %i.af = ptrtoint ptr %i.aa to i64
  %i.ag = ptrtoint ptr %i.z to i64
  %.sroa.4.0..sroa_idx.i.i.i.i89 = getelementptr inbounds nuw i8, ptr %3, i64 88
  %.sroa.6.0..sroa_idx.i.i.i.i90 = getelementptr inbounds nuw i8, ptr %3, i64 104
  %.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 120
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.4107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.ptr.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.al to i64
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 88
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %bb.g

._crit_edge:                                      ; preds = %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aq = ptrtoint ptr %.sroa.14.1 to i64
  %8 = trunc nuw i8 %.5 to i1
  %i.ar = icmp ne ptr %.sroa.0115.1, %.sroa.9.1
  %or.cond125.not = select i1 %8, i1 %i.ar, i1 false
  br i1 %or.cond125.not, label %.lr.ph143, label %.loopexit

.lr.ph143:                                        ; preds = %._crit_edge
  %i.as = ptrtoint ptr %.sroa.9.1 to i64
  %i.at = ptrtoint ptr %.sroa.0115.1 to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 2
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.ak

bb.g:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.0138 = phi i8 [ 0, %.lr.ph ], [ %.5, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 5 uses
  %.063136 = phi i64 [ 0, %.lr.ph ], [ %i.ff, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 7 uses
  %.sroa.0115.0135 = phi ptr [ null, %.lr.ph ], [ %.sroa.0115.1, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 9 uses
  %.sroa.9.0134 = phi ptr [ null, %.lr.ph ], [ %.sroa.9.1, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 8 uses
  %.sroa.14.0133 = phi ptr [ null, %.lr.ph ], [ %.sroa.14.1, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.ay = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.az = getelementptr inbounds nuw [56 x i8], ptr %i.ay, i64 %.063136 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !204
  %i.bb = call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.az) #23
  call void @_ZNK12lldb_private11SectionList17FindSectionByNameEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.498") align 8 %5, ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.ba, i64 %i.bb) #23
  %i.bc = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.bd = getelementptr inbounds nuw [56 x i8], ptr %i.bc, i64 %.063136 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !418
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.bh = trunc i64 %.063136 to i32               ; 2 uses
  %.not.i.i80 = icmp eq ptr %.sroa.9.0134, %.sroa.14.0133
  br i1 %.not.i.i80, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.bh, ptr %.sroa.9.0134, align 4, !tbaa !113
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.9.0134, i64 4
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.j:                                             ; preds = %bb.h
  %i.bj = ptrtoint ptr %.sroa.9.0134 to i64
  %i.bk = ptrtoint ptr %.sroa.0115.0135 to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 6 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775804
  br i1 %i.bm, label %bb.k, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #25
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.bn = ashr exact i64 %i.bl, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bn, i64 1)
  %i.bo = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bn ; 2 uses
  %i.bp = icmp ult i64 %i.bo, %i.bn
  %i.bq = call i64 @llvm.umin.i64(i64 %i.bo, i64 2305843009213693951)
  %i.br = select i1 %i.bp, i64 2305843009213693951, i64 %i.bq ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.br, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bs = shl nuw nsw i64 %i.br, 2
  %i.bt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bs) #26 ; 4 uses
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 %i.bl ; 2 uses
  store i32 %i.bh, ptr %i.bu, align 4, !tbaa !113
  %i.bv = icmp sgt i64 %i.bl, 0
  br i1 %i.bv, label %bb.l, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bt, ptr align 4 %.sroa.0115.0135, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.l, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0115.0135, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0115.0135, i64 noundef %i.bl) #24
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.m, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.br
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.n:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !206
  %i.ca = load i64, ptr %i.u, align 8, !tbaa !95
  %i.cb = add i64 %i.ca, %i.bz
  %i.cc = load atomic i8, ptr @_ZGVZN12lldb_private19DynamicLoaderDarwin22UpdateImageLoadAddressEPNS_6ModuleERNS0_9ImageInfoEE23g_section_name_LINKEDIT acquire, align 8
  %i.cd = icmp eq i8 %i.cc, 0
  br i1 %i.cd, label %bb.o, label %bb.q, !prof !207

bb.o:                                             ; preds = %bb.n
  %i.ce = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12lldb_private19DynamicLoaderDarwin22UpdateImageLoadAddressEPNS_6ModuleERNS0_9ImageInfoEE23g_section_name_LINKEDIT) #23
  %.not75 = icmp eq i32 %i.ce, 0
  br i1 %.not75, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZN12lldb_private11ConstStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN12lldb_private19DynamicLoaderDarwin22UpdateImageLoadAddressEPNS_6ModuleERNS0_9ImageInfoEE23g_section_name_LINKEDIT, ptr noundef nonnull @.str.7) #23
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12lldb_private19DynamicLoaderDarwin22UpdateImageLoadAddressEPNS_6ModuleERNS0_9ImageInfoEE23g_section_name_LINKEDIT) #23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.cf = load ptr, ptr %5, align 8, !tbaa !209   ; 3 uses
  %.not128 = icmp eq ptr %i.cf, null
  br i1 %.not128, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 80
  %.sroa.0.0.copyload.i = load ptr, ptr %i.cg, align 8, !tbaa !146
  %.sroa.013.0.copyload = load ptr, ptr @_ZZN12lldb_private19DynamicLoaderDarwin22UpdateImageLoadAddressEPNS_6ModuleERNS0_9ImageInfoEE23g_section_name_LINKEDIT, align 8, !tbaa !146
  %i.ch = icmp ne ptr %.sroa.0.0.copyload.i, %.sroa.013.0.copyload
  %i.ci = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.cj = getelementptr inbounds nuw [56 x i8], ptr %i.ci, i64 %.063136
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !210 ; 2 uses
  %.not79 = icmp eq i64 %i.cl, 0
  br i1 %.not79, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  br i1 %.not77, label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cm = load ptr, ptr %i.v, align 8, !tbaa !204
  %i.cn = call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #23
  %i.co = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.cp = getelementptr inbounds nuw [56 x i8], ptr %i.co, i64 %.063136
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !204 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit, label %_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i

_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i: ; preds = %bb.t
  %i.cs = load i8, ptr %i.cq, align 1, !tbaa !101
  %i.ct = icmp eq i8 %i.cs, 0
  %spec.select.i = select i1 %i.ct, ptr @.str.9, ptr %i.cq
  br label %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit

_ZNK12lldb_private11ConstString9AsCStringEPKc.exit: ; preds = %bb.t, %_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i
  %i.cu = phi ptr [ @.str.9, %bb.t ], [ %spec.select.i, %_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.cv = ptrtoint ptr %i.cu to i64
  store ptr @.str.8, ptr %4, align 8, !tbaa !146, !alias.scope !419
  store i64 35, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !141, !alias.scope !419
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !187, !alias.scope !419
  store i64 2, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !141, !alias.scope !419
  store i8 1, ptr %i.ak, align 8, !tbaa !191, !alias.scope !419
  store i64 %i.cv, ptr %i.al, align 8, !tbaa !146, !alias.scope !419
  store ptr %i.cm, ptr %i.am, align 8
  store i64 %i.cn, ptr %.sroa.4107.0..sroa_idx, align 8
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIS3_EEEEvlS2_S3_, ptr %i.ai, align 8, !alias.scope !419
  store i64 %i.an, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !419
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIPKcEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i.i, align 8, !alias.scope !419
  store i64 %i.ao, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !tbaa !101, !alias.scope !419
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str, i64 103, ptr nonnull @__func__._ZN12lldb_private19DynamicLoaderDarwin22UpdateImageLoadAddressEPNS_6ModuleERNS0_9ImageInfoE, i64 22, ptr noundef nonnull align 8 dereferenceable(33) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.u:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !420
  %.not76 = icmp eq i64 %i.cl, %i.cx
  %or.cond = or i1 %.not77, %.not76
  br i1 %or.cond, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cy = load ptr, ptr %i.v, align 8, !tbaa !204
  %i.cz = call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.v) #23
  %i.da = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.db = getelementptr inbounds nuw [56 x i8], ptr %i.da, i64 %.063136 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !204 ; 3 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit85, label %_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i83

_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i83: ; preds = %bb.v
  %i.de = load i8, ptr %i.dc, align 1, !tbaa !101
  %i.df = icmp eq i8 %i.de, 0
  %spec.select.i84 = select i1 %i.df, ptr @.str.9, ptr %i.dc
  br label %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit85

_ZNK12lldb_private11ConstString9AsCStringEPKc.exit85: ; preds = %bb.v, %_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i83
  %i.dg = phi ptr [ @.str.9, %bb.v ], [ %spec.select.i84, %_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i83 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.di = load ptr, ptr %5, align 8, !tbaa !209
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 96
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !420
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.dl = ptrtoint ptr %i.dg to i64
  %i.dm = ptrtoint ptr %i.dh to i64
  store ptr @.str.10, ptr %3, align 8, !tbaa !146, !alias.scope !421
  store i64 75, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i86, align 8, !tbaa !141, !alias.scope !421
  store ptr %i.w, ptr %i.x, align 8, !tbaa !187, !alias.scope !421
  store i64 4, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i87, align 8, !tbaa !141, !alias.scope !421
  store i8 1, ptr %i.y, align 8, !tbaa !191, !alias.scope !421
  store i64 %i.dk, ptr %i.z, align 8, !tbaa !141, !alias.scope !421
  store i64 %i.dm, ptr %i.aa, align 8, !tbaa !201, !alias.scope !421
  store i64 %i.dl, ptr %i.ab, align 8, !tbaa !146, !alias.scope !421
  store ptr %i.cy, ptr %i.ac, align 8
  store i64 %i.cz, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIS3_EEEEvlS2_S3_, ptr %i.w, align 8, !alias.scope !421
  store i64 %i.ad, ptr %.sroa.4.0..sroa_idx.i.i.i.i89, align 8, !alias.scope !421
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIPKcEEEEvlS2_S3_, ptr %.ptr.1.i.i.i.i.i88, align 8, !alias.scope !421
  store i64 %i.ae, ptr %.sroa.6.0..sroa_idx.i.i.i.i90, align 8, !alias.scope !421
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorIRmEEEEvlS2_S3_, ptr %.ptr.2.i.i.i.i.i, align 8, !alias.scope !421
  store i64 %i.af, ptr %.sroa.8.0..sroa_idx.i.i.i.i, align 8, !alias.scope !421
  store ptr @_ZN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEE11callback_fnINS_7support6detail13FormatFunctorImEEEEvlS2_S3_, ptr %.ptr.3.i.i.i.i.i, align 8, !alias.scope !421
  store i64 %i.ag, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !tbaa !101, !alias.scope !421
  call void @_ZN12lldb_private3Log6FormatEN4llvm9StringRefES2_RKNS1_19formatv_object_baseE(ptr noundef nonnull align 8 dereferenceable(104) %.0.i.i, ptr nonnull @.str, i64 103, ptr nonnull @__func__._ZN12lldb_private19DynamicLoaderDarwin22UpdateImageLoadAddressEPNS_6ModuleERNS0_9ImageInfoE, i64 22, ptr noundef nonnull align 8 dereferenceable(33) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.w

bb.w:                                             ; preds = %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit85, %bb.u
  %i.dn = load ptr, ptr %i.ah, align 8, !tbaa !114 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 152
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !112, !noalias !422, !nonnull !121, !noundef !121 ; 7 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 7 uses
  %i.dr = load atomic i32, ptr %i.dq monotonic, align 8, !noalias !422
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.06.i.i.i.i.i.i = phi i32 [ %i.dr, %bb.w ], [ %i.dv, %bb.x ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i)
  %i.ds = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.dt = cmpxchg weak ptr %i.dq, i32 %.06.i.i.i.i.i.i, i32 %i.ds acq_rel monotonic, align 8, !noalias !422 ; 2 uses
  %i.du = extractvalue { i32, i1 } %i.dt, 1
  %i.dv = extractvalue { i32, i1 } %i.dt, 0
  br i1 %i.du, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.x, !llvm.loop !2

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.x
  %i.dw = load atomic i32, ptr %i.dq monotonic, align 8, !noalias !422
  %.not.i.i.i.i91 = icmp eq i32 %i.dw, 0
  br i1 %.not.i.i.i.i91, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 144
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !124, !noalias !422
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i: ; preds = %bb.y, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.dz = phi ptr [ %i.dy, %bb.y ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ]
  %i.ea = load atomic i64, ptr %i.dq acquire, align 8 ; 2 uses
  %i.eb = icmp eq i64 %i.ea, 4294967297
  %i.ec = trunc i64 %i.ea to i32                  ; 2 uses
  br i1 %i.eb, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  store i32 0, ptr %i.dq, align 8, !tbaa !126
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 0, ptr %i.ed, align 4, !tbaa !127
  %i.ee = load ptr, ptr %i.dp, align 8, !tbaa !37
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.eg(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #23, !inline_history !3
  %i.eh = load ptr, ptr %i.dp, align 8, !tbaa !37
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 24
  %i.ej = load ptr, ptr %i.ei, align 8
  call void %i.ej(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #23, !inline_history !3
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

bb.aa:                                            ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  %i.ek = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i.i.i1.i = icmp eq i8 %i.ek, 0
  br i1 %.not.i.i.i1.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.el = add nsw i32 %i.ec, -1
  store i32 %i.el, ptr %i.dq, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.em = atomicrmw volatile add ptr %i.dq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i = phi i32 [ %i.ec, %bb.ab ], [ %i.em, %bb.ac ]
  %i.en = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.en, label %bb.ad, label %_ZN12lldb_private7Process9GetTargetEv.exit, !prof !128

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.dp) #23
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

_ZN12lldb_private7Process9GetTargetEv.exit:       ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ad
  %i.eo = call noundef zeroext i1 @_ZN12lldb_private6Target21SetSectionLoadAddressERKSt10shared_ptrINS_7SectionEEmb(ptr noundef nonnull align 8 dereferenceable(2200) %i.dz, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 noundef %i.cb, i1 noundef zeroext %i.ch) #23
  %9 = zext i1 %i.eo to i8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.i, %_ZN12lldb_private7Process9GetTargetEv.exit, %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit, %bb.s, %bb.q
  %.sroa.14.1 = phi ptr [ %.sroa.14.0133, %bb.q ], [ %.sroa.14.0133, %bb.s ], [ %.sroa.14.0133, %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit ], [ %.sroa.14.0133, %_ZN12lldb_private7Process9GetTargetEv.exit ], [ %i.bx, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.14.0133, %bb.i ] ; 2 uses
  %.sroa.9.1 = phi ptr [ %.sroa.9.0134, %bb.q ], [ %.sroa.9.0134, %bb.s ], [ %.sroa.9.0134, %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit ], [ %.sroa.9.0134, %_ZN12lldb_private7Process9GetTargetEv.exit ], [ %i.bw, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.bi, %bb.i ] ; 3 uses
  %.sroa.0115.1 = phi ptr [ %.sroa.0115.0135, %bb.q ], [ %.sroa.0115.0135, %bb.s ], [ %.sroa.0115.0135, %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit ], [ %.sroa.0115.0135, %_ZN12lldb_private7Process9GetTargetEv.exit ], [ %i.bt, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.sroa.0115.0135, %bb.i ] ; 7 uses
  %.5 = phi i8 [ %.0138, %bb.q ], [ %.0138, %bb.s ], [ %.0138, %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit ], [ %9, %_ZN12lldb_private7Process9GetTargetEv.exit ], [ %.0138, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %.0138, %bb.i ] ; 4 uses
  %i.ep = load ptr, ptr %i.ap, align 8, !tbaa !130 ; 8 uses
  %.not.i.i92 = icmp eq ptr %i.ep, null
  br i1 %.not.i.i92, label %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8 ; 4 uses
  %i.er = load atomic i64, ptr %i.eq acquire, align 8 ; 2 uses
  %i.es = icmp eq i64 %i.er, 4294967297
  %i.et = trunc i64 %i.er to i32                  ; 2 uses
  br i1 %i.es, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 0, ptr %i.eq, align 8, !tbaa !126
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ep, i64 12
  store i32 0, ptr %i.eu, align 4, !tbaa !127
  %i.ev = load ptr, ptr %i.ep, align 8, !tbaa !37
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr %i.ew, align 8
  call void %i.ex(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #23, !inline_history !13
  %i.ey = load ptr, ptr %i.ep, align 8, !tbaa !37
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fa = load ptr, ptr %i.ez, align 8
  call void %i.fa(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #23, !inline_history !13
  br label %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.ag:                                            ; preds = %bb.ae
  %i.fb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i.i.i = icmp eq i8 %i.fb, 0
  br i1 %.not.i.i.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fc = add nsw i32 %i.et, -1
  store i32 %i.fc, ptr %i.eq, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.fd = atomicrmw volatile add ptr %i.eq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.ai, %bb.ah
  %.0.i.i.i.i = phi i32 [ %i.et, %bb.ah ], [ %i.fd, %bb.ai ]
  %i.fe = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.fe, label %bb.aj, label %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !128

bb.aj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ep) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIjSaIjEE9push_backEOj.exit, %bb.af, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.ff = add nuw i64 %.063136, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ff, %i.t
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !416

bb.ak:                                            ; preds = %.lr.ph143, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit100
  %i.fg = phi i64 [ 0, %.lr.ph143 ], [ %i.gs, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit100 ]
  %.062142 = phi i32 [ 0, %.lr.ph143 ], [ %i.gr, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit100 ]
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0115.1, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !113
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.fj = zext i32 %i.fi to i64                   ; 2 uses
  %i.fk = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.fl = getelementptr inbounds nuw [56 x i8], ptr %i.fk, i64 %i.fj ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !204
  %i.fn = call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.fl) #23
  call void @_ZNK12lldb_private11SectionList17FindSectionByNameEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.498") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr %i.fm, i64 %i.fn) #23
  %i.fo = load ptr, ptr %6, align 8, !tbaa !209
  %.not127 = icmp eq ptr %i.fo, null
  br i1 %.not127, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fp = load atomic i8, ptr @_ZGVZN12lldb_private19DynamicLoaderDarwin22UpdateImageLoadAddressEPNS_6ModuleERNS0_9ImageInfoEE23g_pagezero_section_name acquire, align 8
  %i.fq = icmp eq i8 %i.fp, 0
  br i1 %i.fq, label %bb.am, label %bb.ao, !prof !207

bb.am:                                            ; preds = %bb.al
  %i.fr = call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN12lldb_private19DynamicLoaderDarwin22UpdateImageLoadAddressEPNS_6ModuleERNS0_9ImageInfoEE23g_pagezero_section_name) #23
  %.not74 = icmp eq i32 %i.fr, 0
  br i1 %.not74, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @_ZN12lldb_private11ConstStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZZN12lldb_private19DynamicLoaderDarwin22UpdateImageLoadAddressEPNS_6ModuleERNS0_9ImageInfoEE23g_pagezero_section_name, ptr noundef nonnull @.str.11) #23
  call void @__cxa_guard_release(ptr nonnull @_ZGVZN12lldb_private19DynamicLoaderDarwin22UpdateImageLoadAddressEPNS_6ModuleERNS0_9ImageInfoEE23g_pagezero_section_name) #23
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %i.fs = load ptr, ptr %6, align 8, !tbaa !209
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 80
  %.sroa.0.0.copyload.i95 = load ptr, ptr %i.ft, align 8, !tbaa !146
  %i.fu = load ptr, ptr @_ZZN12lldb_private19DynamicLoaderDarwin22UpdateImageLoadAddressEPNS_6ModuleERNS0_9ImageInfoEE23g_pagezero_section_name, align 8, !tbaa !204
  %i.fv = icmp eq ptr %i.fu, %.sroa.0.0.copyload.i95
  br i1 %i.fv, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.fw = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.fx = getelementptr inbounds nuw [56 x i8], ptr %i.fw, i64 %i.fj
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 8
  %i.fz = load <2 x i64>, ptr %i.fy, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  store <2 x i64> %i.fz, ptr %7, align 16, !tbaa !141
  %i.ga = load ptr, ptr %i.aw, align 8, !tbaa !114
  call void @_ZN12lldb_private7Process22AddInvalidMemoryRegionERKNS_5RangeImmEE(ptr noundef nonnull align 8 dereferenceable(3224) %i.ga, ptr noundef nonnull align 8 dereferenceable(16) %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.ak
  %i.gb = load ptr, ptr %i.ax, align 8, !tbaa !130 ; 8 uses
  %.not.i.i96 = icmp eq ptr %i.gb, null
  br i1 %.not.i.i96, label %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit100, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 4 uses
  %i.gd = load atomic i64, ptr %i.gc acquire, align 8 ; 2 uses
  %i.ge = icmp eq i64 %i.gd, 4294967297
  %i.gf = trunc i64 %i.gd to i32                  ; 2 uses
  br i1 %i.ge, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i32 0, ptr %i.gc, align 8, !tbaa !126
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gb, i64 12
  store i32 0, ptr %i.gg, align 4, !tbaa !127
  %i.gh = load ptr, ptr %i.gb, align 8, !tbaa !37
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16
  %i.gj = load ptr, ptr %i.gi, align 8
  call void %i.gj(ptr noundef nonnull align 8 dereferenceable(16) %i.gb) #23, !inline_history !13
  %i.gk = load ptr, ptr %i.gb, align 8, !tbaa !37
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  call void %i.gm(ptr noundef nonnull align 8 dereferenceable(16) %i.gb) #23, !inline_history !13
  br label %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit100

bb.at:                                            ; preds = %bb.ar
  %i.gn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i.i.i97 = icmp eq i8 %i.gn, 0
  br i1 %.not.i.i.i97, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.go = add nsw i32 %i.gf, -1
  store i32 %i.go, ptr %i.gc, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98

bb.av:                                            ; preds = %bb.at
  %i.gp = atomicrmw volatile add ptr %i.gc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98: ; preds = %bb.av, %bb.au
  %.0.i.i.i.i99 = phi i32 [ %i.gf, %bb.au ], [ %i.gp, %bb.av ]
  %i.gq = icmp eq i32 %.0.i.i.i.i99, 1
  br i1 %i.gq, label %bb.aw, label %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit100, !prof !128

bb.aw:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.gb) #23
  br label %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit100

_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit100: ; preds = %bb.aq, %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i98, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %i.gr = add i32 %.062142, 1                     ; 2 uses
  %i.gs = zext i32 %i.gr to i64                   ; 2 uses
  %i.gt = icmp ugt i64 %i.av, %i.gs
  br i1 %i.gt, label %bb.ak, label %.loopexit.thread170, !llvm.loop !417

.loopexit:                                        ; preds = %._crit_edge
  %.not.i.i.i101 = icmp eq ptr %.sroa.0115.1, null
  br i1 %.not.i.i.i101, label %_ZNSt6vectorIjSaIjEED2Ev.exit.a, label %.loopexit.thread170

.loopexit.thread170:                              ; preds = %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit100, %.loopexit
  %i.gu = ptrtoint ptr %.sroa.0115.1 to i64
  %i.gv = sub i64 %i.aq, %i.gu
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0115.1, i64 noundef %i.gv) #24
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.a

_ZNSt6vectorIjSaIjEED2Ev.exit.a:                  ; preds = %bb.f, %.loopexit.thread170, %.loopexit, %bb.d, %bb.e, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit
  %.8 = phi i8 [ 0, %_ZN12lldb_private6GetLogINS_7LLDBLogEEEPNS_3LogET_.exit ], [ 0, %bb.d ], [ 0, %bb.e ], [ %.5, %.loopexit ], [ %.5, %.loopexit.thread170 ], [ 0, %bb.f ]
  %i.gw = getelementptr inbounds nuw i8, ptr %2, i64 144 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !116
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !114
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 344
  %i.hb = load i32, ptr %i.ha, align 8, !tbaa !196 ; 2 uses
  %i.hc = icmp eq i32 %i.gx, %i.hb
  br i1 %i.hc, label %bb.az, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.a
  %10 = trunc nuw i8 %.8 to i1
  br i1 %10, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  store i32 %i.hb, ptr %i.gw, align 8, !tbaa !116
  br label %bb.az

bb.az:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.a, %bb.ax, %bb.ay
  %.9 = phi i1 [ false, %bb.ax ], [ true, %bb.ay ], [ true, %_ZNSt6vectorIjSaIjEED2Ev.exit.a ]
  ret i1 %.9
}

declare void @_ZNK12lldb_private11SectionList17FindSectionByNameEN4llvm9StringRefE(ptr dead_on_unwind writable sret(%"class.std::shared_ptr.498") align 8, ptr noundef nonnull align 8 dereferenceable(24), ptr, i64) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #9

declare void @_ZN12lldb_private11ConstStringC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #9

declare noundef zeroext i1 @_ZN12lldb_private6Target21SetSectionLoadAddressERKSt10shared_ptrINS_7SectionEEmb(ptr noundef nonnull align 8 dereferenceable(2200), ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN12lldb_private7Process22AddInvalidMemoryRegionERKNS_5RangeImmEE(ptr noundef nonnull align 8 dereferenceable(3224), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN12lldb_private19DynamicLoaderDarwin20UnloadModuleSectionsEPNS_6ModuleERNS0_9ImageInfoE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(392) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(196) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.llvm::raw_string_ostream", align 8 ; 11 uses
  %4 = alloca %"class.std::tuple.507", align 8    ; 7 uses
  %5 = alloca %"class.llvm::support::detail::FormatFunctor", align 8 ; 4 uses
  %6 = alloca %"class.std::shared_ptr.498", align 8 ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %8 = alloca %"class.llvm::formatv_object", align 8 ; 16 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(952) %1) #23 ; 5 uses
  %.not24 = icmp eq ptr %i.d, null
  br i1 %.not24, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(200) %i.d, i1 noundef zeroext true) #23 ; 2 uses
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !115  ; 2 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !105  ; 2 uses
  %.not32 = icmp eq ptr %i.k, %i.l
  br i1 %.not32, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 56
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 9 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 16
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.z = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %.ptr.1.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 96
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.aa to i64
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 88
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 104
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %.031 = phi i1 [ false, %.lr.ph ], [ %.2, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 2 uses
  %.02030 = phi i64 [ 0, %.lr.ph ], [ %i.ef, %_ZNSt12__shared_ptrIN12lldb_private7SectionELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.ap = getelementptr inbounds nuw [56 x i8], ptr %i.ao, i64 %.02030 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !204
  %i.ar = call noundef i64 @_ZNK12lldb_private11ConstString9GetLengthEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ap) #23
  call void @_ZNK12lldb_private11SectionList17FindSectionByNameEN4llvm9StringRefE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.498") align 8 %6, ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr %i.aq, i64 %i.ar) #23
  %i.as = load ptr, ptr %6, align 8, !tbaa !209
  %.not29 = icmp eq ptr %i.as, null
  br i1 %.not29, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.au = getelementptr inbounds nuw [56 x i8], ptr %i.at, i64 %.02030
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !206
  %i.ax = load i64, ptr %i.q, align 8, !tbaa !95
  %i.ay = load ptr, ptr %i.r, align 8, !tbaa !114 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !112, !noalias !437, !nonnull !121, !noundef !121 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 7 uses
  %i.bc = load atomic i32, ptr %i.bb monotonic, align 8, !noalias !437
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %.06.i.i.i.i.i.i = phi i32 [ %i.bc, %bb.f ], [ %i.bg, %bb.g ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i.i = icmp ne i32 %.06.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %.not.not.not.i.not.i.i.i.i.i)
  %i.bd = add nsw i32 %.06.i.i.i.i.i.i, 1
  %i.be = cmpxchg weak ptr %i.bb, i32 %.06.i.i.i.i.i.i, i32 %i.bd acq_rel monotonic, align 8, !noalias !437 ; 2 uses
  %i.bf = extractvalue { i32, i1 } %i.be, 1
  %i.bg = extractvalue { i32, i1 } %i.be, 0
  br i1 %i.bf, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i, label %bb.g, !llvm.loop !2

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i: ; preds = %bb.g
  %i.bh = add i64 %i.ax, %i.aw
  %i.bi = load atomic i32, ptr %i.bb monotonic, align 8, !noalias !437
  %.not.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i, label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ay, i64 144
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !124, !noalias !437
  br label %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i

_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i: ; preds = %bb.h, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i
  %i.bl = phi ptr [ %i.bk, %bb.h ], [ null, %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i.i ]
  %i.bm = load atomic i64, ptr %i.bb acquire, align 8 ; 2 uses
  %i.bn = icmp eq i64 %i.bm, 4294967297
  %i.bo = trunc i64 %i.bm to i32                  ; 2 uses
  br i1 %i.bn, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  store i32 0, ptr %i.bb, align 8, !tbaa !126
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 0, ptr %i.bp, align 4, !tbaa !127
  %i.bq = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #23, !inline_history !3
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !37
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #23, !inline_history !3
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

bb.j:                                             ; preds = %_ZNKSt8weak_ptrIN12lldb_private6TargetEE4lockEv.exit.i
  %i.bw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !101
  %.not.i.i.i1.i = icmp eq i8 %i.bw, 0
  br i1 %.not.i.i.i1.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = add nsw i32 %i.bo, -1
  store i32 %i.bx, ptr %i.bb, align 8, !tbaa !113
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.by = atomicrmw volatile add ptr %i.bb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.bo, %bb.k ], [ %i.by, %bb.l ]
  %i.bz = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.bz, label %bb.m, label %_ZN12lldb_private7Process9GetTargetEv.exit, !prof !128

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba) #23
  br label %_ZN12lldb_private7Process9GetTargetEv.exit

_ZN12lldb_private7Process9GetTargetEv.exit:       ; preds = %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  %i.ca = call noundef zeroext i1 @_ZN12lldb_private6Target18SetSectionUnloadedERKSt10shared_ptrINS_7SectionEEm(ptr noundef nonnull align 8 dereferenceable(2200) %i.bl, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %i.bh) #23
  %spec.select = select i1 %i.ca, i1 true, i1 %.031
  br label %bb.q

bb.n:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #23
  %i.cb = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.cc = getelementptr inbounds nuw [56 x i8], ptr %i.cb, i64 %.02030
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !204 ; 3 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit, label %_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i

_ZNK12lldb_private11ConstString7IsEmptyEv.exit.i: ; preds = %bb.n
  %i.cf = load i8, ptr %i.cd, align 1, !tbaa !101
  %i.cg = icmp eq i8 %i.cf, 0
  %spec.select.i = select i1 %i.cg, ptr @.str.13, ptr %i.cd
  br label %_ZNK12lldb_private11ConstString9AsCStringEPKc.exit
end_hunk_0
