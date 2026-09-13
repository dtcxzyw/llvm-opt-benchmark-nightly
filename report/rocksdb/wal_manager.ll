Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/wal_manager?download=true
inline.NumInlined: 1462
inline.NumDeleted: 630
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_:bb.a
  br i1 %cmp.n88, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %vector.memcheck51, %iter.check75, %vec.epilog.iter.check77, %vec.epilog.middle.block87
  %.012.i.i.i18.ph = phi ptr [ %i.ax, %iter.check75 ], [ %i.ax, %vector.memcheck51 ], [ %i.bj, %vec.epilog.iter.check77 ], [ %i.bx, %vec.epilog.middle.block87 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %iter.check75 ], [ %1, %vector.memcheck51 ], [ %i.bk, %vec.epilog.iter.check77 ], [ %i.by, %vec.epilog.middle.block87 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.cd, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.cc, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.cb = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !100, !alias.scope !404, !noalias !403
  store i64 %i.cb, ptr %.012.i.i.i18, align 8, !tbaa !100, !alias.scope !403, !noalias !404
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !100, !alias.scope !404, !noalias !403
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.cc, %i.b
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !398

_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block71, %vec.epilog.middle.block87, %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ax, %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.bx, %vec.epilog.middle.block87 ], [ %i.bj, %middle.block71 ], [ %i.cd, %.lr.ph.i.i.i17 ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !106
  %i.cg = ptrtoint ptr %i.cf to i64
  %i.ch = sub i64 %i.cg, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ch) #22
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS2_EESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22, %bb.c
  store ptr %i.p, ptr %0, align 8, !tbaa !97
  store ptr %.0.lcssa.i.i.i21, ptr %i.a, align 8, !tbaa !98
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l
  store ptr %i.ci, ptr %i.ce, align 8, !tbaa !106
  ret void
}

declare void @_ZN7rocksdb6Status9CopyStateEPKc(ptr dead_on_unwind writable sret(%"class.std::unique_ptr") align 8, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb7WalFileD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN7rocksdb11WalFileImplD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK7rocksdb11WalFileImpl8PathNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !120
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.c, label %._crit_edge.i.i, label %._crit_edge.i.i14

._crit_edge.i.i:                                  ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.e, ptr %2, align 8, !tbaa !78
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !77
  store i8 0, ptr %i.e, align 8, !tbaa !27
  %i.g = load i64, ptr %i.d, align 8, !tbaa !119
  invoke void @_ZN7rocksdb19ArchivedLogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.g)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.h = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.i = icmp eq ptr %i.h, %i.e
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.j = load i64, ptr %i.e, align 8, !tbaa !27
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.k) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %2, align 8, !tbaa !26     ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.e
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.c
  %i.o = load i64, ptr %i.e, align 8, !tbaa !27
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.g

._crit_edge.i.i14:                                ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !78
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !77
  store i8 0, ptr %i.q, align 8, !tbaa !27
  %i.s = load i64, ptr %i.d, align 8, !tbaa !119
  invoke void @_ZN7rocksdb11LogFileNameERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i14
  %i.t = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.q
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.d
  %i.v = load i64, ptr %i.q, align 8, !tbaa !27
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i14
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = load ptr, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.q
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.e
  %i.aa = load i64, ptr %i.q, align 8, !tbaa !27
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13
  %.pn6.pn = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13 ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ]
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb11WalFileImpl9LogNumberEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !119
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZNK7rocksdb11WalFileImpl4TypeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !120
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb11WalFileImpl13StartSequenceEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !121
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef i64 @_ZNK7rocksdb11WalFileImpl13SizeFileBytesEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !122
  ret i64 %i.b
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::unique_ptr.44", align 8 ; 6 uses
  %4 = alloca %"class.std::unique_ptr.44", align 8 ; 6 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph53

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEET_SS_SS_T0_.exit"
  %i.h = icmp eq i64 %i.ao, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph53, !llvm.loop !407

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa49 = phi i64 [ %i.d, %.lr.ph ], [ %i.ds, %bb.b ] ; 2 uses
  %.lcssa47 = phi i64 [ %i.c, %.lr.ph ], [ %i.dr, %bb.b ]
  %storemerge25.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.i = add nsw i64 %.lcssa49, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit13.i.i.i, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.q, %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit13.i.i.i ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !100
  store ptr null, ptr %i.k, align 8, !tbaa !100
  store i64 %i.l, ptr %4, align 8, !tbaa !100
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_T0_ST_T1_T2_"(ptr nonnull %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa49, ptr noundef align 8 %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr %4, align 8, !tbaa !100    ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit13.i.i.i, label %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i: ; preds = %bb.d
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !80
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m) #23, !inline_history !408
  br label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit13.i.i.i

_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit13.i.i.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i, %bb.d
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.q = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_RT0_.exit.i.i", label %bb.c, !llvm.loop !409

bb.e:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !100    ; 2 uses
  %.not.i14.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i14.i.i.i, label %common.resume.i, label %common.resume.sink.split.i

common.resume.sink.split.i:                       ; preds = %bb.g, %bb.e
  %.sink31.i = phi ptr [ %i.al, %bb.g ], [ %i.s, %bb.e ] ; 2 uses
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.r, %bb.e ]
  %i.t = load ptr, ptr %.sink31.i, align 8, !tbaa !80
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %.sink31.i) #23, !inline_history !410
  br label %common.resume.i

common.resume.i:                                  ; preds = %bb.g, %common.resume.sink.split.i, %bb.e
  %common.resume.op.i = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.r, %bb.e ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ]
  resume { ptr, i32 } %common.resume.op.i

"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_RT0_.exit.i.i": ; preds = %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit13.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %5 = icmp sgt i64 %.lcssa47, 8
  br i1 %5, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_T0_.exit"

.lr.ph.i9.i:                                      ; preds = %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_RT0_.exit.i.i", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_RT0_.exit.i16.i"
  %.sroa.0.03.i.i = phi ptr [ %i.w, %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_RT0_.exit.i16.i" ], [ %storemerge25.lcssa, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_RT0_.exit.i.i" ]
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.x = load i64, ptr %i.w, align 8, !tbaa !100
  store ptr null, ptr %i.w, align 8, !tbaa !100
  %i.y = load ptr, ptr %0, align 8, !tbaa !100
  store ptr null, ptr %0, align 8, !tbaa !100
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !100  ; 3 uses
  store ptr %i.y, ptr %i.w, align 8, !tbaa !100
  %.not.i.i.i.i.i.i10.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i10.i, label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit.i.i12.i, label %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i.i.i11.i

_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i.i.i11.i: ; preds = %.lr.ph.i9.i
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %i.z) #23, !inline_history !411
  br label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit.i.i12.i

_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit.i.i12.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i.i.i11.i, %.lr.ph.i9.i
  %i.ad = ptrtoint ptr %i.w to i64
  %i.ae = sub i64 %i.ad, %i.a                     ; 2 uses
  %i.af = ashr exact i64 %i.ae, 3
  store i64 %i.x, ptr %3, align 8, !tbaa !100
  invoke fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_T0_ST_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.af, ptr noundef align 8 %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit.i.i12.i
  %i.ag = load ptr, ptr %3, align 8, !tbaa !100   ; 3 uses
  %.not.i.i.i14.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i14.i, label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_RT0_.exit.i16.i", label %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i15.i

_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i15.i: ; preds = %bb.f
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.ag) #23, !inline_history !412
  br label %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_RT0_.exit.i16.i"

bb.g:                                             ; preds = %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit.i.i12.i
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !100   ; 2 uses
  %.not.i6.i.i13.i = icmp eq ptr %i.al, null
  br i1 %.not.i6.i.i13.i, label %common.resume.i, label %common.resume.sink.split.i

"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_RT0_.exit.i16.i": ; preds = %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i15.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.am = icmp sgt i64 %i.ae, 8
  br i1 %i.am, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_T0_.exit", !llvm.loop !413

.lr.ph53:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2552 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02651 = phi i64 [ %i.ao, %bb.b ], [ %2, %.lr.ph ]
  %i.an = phi i64 [ %i.ds, %bb.b ], [ %i.d, %.lr.ph ]
  %i.ao = add nsw i64 %.02651, -1                 ; 3 uses
  %i.ap = lshr i64 %i.an, 1
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ap ; 7 uses
  %i.ar = getelementptr inbounds i8, ptr %storemerge2552, i64 -8 ; 7 uses
  %.val.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !100 ; 2 uses
  %.val1.i.i.i = load ptr, ptr %i.aq, align 8, !tbaa !100 ; 2 uses
  %i.as = load ptr, ptr %.val.i.i.i, align 8, !tbaa !80
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = tail call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(40) %.val.i.i.i), !inline_history !414
  %i.aw = load ptr, ptr %.val1.i.i.i, align 8, !tbaa !80
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = tail call noundef i64 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i.i.i), !inline_history !414
  %i.ba = icmp ult i64 %i.av, %i.az
  %.val1.i27.i.i = load ptr, ptr %i.ar, align 8, !tbaa !100 ; 4 uses
  br i1 %i.ba, label %bb.h, label %bb.m

bb.h:                                             ; preds = %.lr.ph53
  %.val.i26.i.i = load ptr, ptr %i.aq, align 8, !tbaa !100 ; 2 uses
  %i.bb = load ptr, ptr %.val.i26.i.i, align 8, !tbaa !80
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef i64 %i.bd(ptr noundef nonnull align 8 dereferenceable(40) %.val.i26.i.i), !inline_history !414
  %i.bf = load ptr, ptr %.val1.i27.i.i, align 8, !tbaa !80
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = tail call noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i27.i.i), !inline_history !414
  %i.bj = icmp ult i64 %i.be, %i.bi
  br i1 %i.bj, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bk = load ptr, ptr %0, align 8, !tbaa !100
  %i.bl = load ptr, ptr %i.aq, align 8, !tbaa !100
  store ptr %i.bl, ptr %0, align 8, !tbaa !100
  store ptr %i.bk, ptr %i.aq, align 8, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.j:                                             ; preds = %bb.h
  %.val.i28.i.i = load ptr, ptr %i.f, align 8, !tbaa !100 ; 2 uses
  %.val1.i29.i.i = load ptr, ptr %i.ar, align 8, !tbaa !100 ; 2 uses
  %i.bm = load ptr, ptr %.val.i28.i.i, align 8, !tbaa !80
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef i64 %i.bo(ptr noundef nonnull align 8 dereferenceable(40) %.val.i28.i.i), !inline_history !414
  %i.bq = load ptr, ptr %.val1.i29.i.i, align 8, !tbaa !80
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = tail call noundef i64 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i29.i.i), !inline_history !414
  %i.bu = icmp ult i64 %i.bp, %i.bt
  %i.bv = load ptr, ptr %0, align 8, !tbaa !100   ; 2 uses
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bw = load ptr, ptr %i.ar, align 8, !tbaa !100
  store ptr %i.bw, ptr %0, align 8, !tbaa !100
  store ptr %i.bv, ptr %i.ar, align 8, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.l:                                             ; preds = %bb.j
  %i.bx = load ptr, ptr %i.f, align 8, !tbaa !100
  store ptr %i.bx, ptr %0, align 8, !tbaa !100
  store ptr %i.bv, ptr %i.f, align 8, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.m:                                             ; preds = %.lr.ph53
  %.val.i30.i.i = load ptr, ptr %i.f, align 8, !tbaa !100 ; 2 uses
  %i.by = load ptr, ptr %.val.i30.i.i, align 8, !tbaa !80
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef i64 %i.ca(ptr noundef nonnull align 8 dereferenceable(40) %.val.i30.i.i), !inline_history !414
  %i.cc = load ptr, ptr %.val1.i27.i.i, align 8, !tbaa !80
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call noundef i64 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i27.i.i), !inline_history !414
  %i.cg = icmp ult i64 %i.cb, %i.cf
  br i1 %i.cg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ch = load <2 x ptr>, ptr %0, align 8, !tbaa !100
  %i.ci = shufflevector <2 x ptr> %i.ch, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ci, ptr %0, align 8, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.o:                                             ; preds = %bb.m
  %.val.i32.i.i = load ptr, ptr %i.aq, align 8, !tbaa !100 ; 2 uses
  %.val1.i33.i.i = load ptr, ptr %i.ar, align 8, !tbaa !100 ; 2 uses
  %i.cj = load ptr, ptr %.val.i32.i.i, align 8, !tbaa !80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = tail call noundef i64 %i.cl(ptr noundef nonnull align 8 dereferenceable(40) %.val.i32.i.i), !inline_history !414
  %i.cn = load ptr, ptr %.val1.i33.i.i, align 8, !tbaa !80
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef i64 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i33.i.i), !inline_history !414
  %i.cr = icmp ult i64 %i.cm, %i.cq
  %i.cs = load ptr, ptr %0, align 8, !tbaa !100   ; 2 uses
  br i1 %i.cr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ct = load ptr, ptr %i.ar, align 8, !tbaa !100
  store ptr %i.ct, ptr %0, align 8, !tbaa !100
  store ptr %i.cs, ptr %i.ar, align 8, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

bb.q:                                             ; preds = %bb.o
  %i.cu = load ptr, ptr %i.aq, align 8, !tbaa !100
  store ptr %i.cu, ptr %0, align 8, !tbaa !100
  store ptr %i.cs, ptr %i.aq, align 8, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader": ; preds = %bb.q, %bb.p, %bb.n, %bb.l, %bb.k, %bb.i
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader", %bb.t
  %.sroa.014.0.i.i = phi ptr [ %i.de, %bb.t ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.t ], [ %storemerge2552, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i.preheader" ]
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i" ], [ %i.de, %bb.r ] ; 9 uses
  %.val.i.i13.i = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !100 ; 2 uses
  %.val1.i.i14.i = load ptr, ptr %0, align 8, !tbaa !100 ; 2 uses
  %i.cv = load ptr, ptr %.val.i.i13.i, align 8, !tbaa !80
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = tail call noundef i64 %i.cx(ptr noundef nonnull align 8 dereferenceable(40) %.val.i.i13.i), !inline_history !415
  %i.cz = load ptr, ptr %.val1.i.i14.i, align 8, !tbaa !80
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = tail call noundef i64 %i.db(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i.i14.i), !inline_history !415
  %i.dd = icmp ult i64 %i.cy, %i.dc
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br i1 %i.dd, label %bb.r, label %.preheader.i.i, !llvm.loop !416

.preheader.i.i:                                   ; preds = %bb.r, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.r ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %.val.i10.i.i = load ptr, ptr %0, align 8, !tbaa !100 ; 2 uses
  %.val1.i11.i.i = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !100 ; 2 uses
  %i.df = load ptr, ptr %.val.i10.i.i, align 8, !tbaa !80
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = tail call noundef i64 %i.dh(ptr noundef nonnull align 8 dereferenceable(40) %.val.i10.i.i), !inline_history !415
  %i.dj = load ptr, ptr %.val1.i11.i.i, align 8, !tbaa !80
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8
  %i.dm = tail call noundef i64 %i.dl(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i11.i.i), !inline_history !415
  %i.dn = icmp ult i64 %i.di, %i.dm
  br i1 %i.dn, label %.preheader.i.i, label %bb.s, !llvm.loop !417

bb.s:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.t, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEET_SS_SS_T0_.exit"

bb.t:                                             ; preds = %bb.s
  %i.do = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !100
  %i.dp = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !100
  store ptr %i.dp, ptr %.sroa.014.1.i.i, align 8, !tbaa !100
  store ptr %i.do, ptr %.sroa.0.1.i.i, align 8, !tbaa !100
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_SS_T0_.exit.i", !llvm.loop !418

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEET_SS_SS_T0_.exit": ; preds = %bb.s
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElNS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2552, i64 noundef %i.ao)
  %i.dq = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.dr = sub i64 %i.dq, %i.a                     ; 2 uses
  %i.ds = ashr exact i64 %i.dr, 3                 ; 3 uses
  %i.dt = icmp sgt i64 %i.ds, 16
  br i1 %i.dt, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_T0_.exit", !llvm.loop !407

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEET_SS_SS_T0_.exit", %"_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_SS_RT0_.exit.i16.i", %bb.a, %"_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_RT0_.exit.i.i"
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEElS7_NS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_T0_ST_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull align 8 captures(none) %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit
  %.047 = phi i64 [ %spec.select, %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.047, 1                         ; 2 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %0, i64 %i.e
  %i.g = or disjoint i64 %i.d, 1                  ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !100 ; 2 uses
  %.val1.i = load ptr, ptr %i.h, align 8, !tbaa !100 ; 2 uses
  %i.i = load ptr, ptr %.val.i, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(40) %.val.i), !inline_history !9
  %i.m = load ptr, ptr %.val1.i, align 8, !tbaa !80
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef i64 %i.o(ptr noundef nonnull align 8 dereferenceable(8) %.val1.i), !inline_history !9
  %i.q = icmp ult i64 %i.l, %i.p
  %spec.select = select i1 %i.q, i64 %i.g, i64 %i.e ; 4 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %0, i64 %.047 ; 2 uses
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !100
  store ptr null, ptr %i.r, align 8, !tbaa !100
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !100  ; 3 uses
  store ptr %i.t, ptr %i.s, align 8, !tbaa !100
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i: ; preds = %.lr.ph
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !80
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(8) %i.u) #23, !inline_history !419
  br label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit

_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit: ; preds = %.lr.ph, %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i
  %i.y = icmp slt i64 %spec.select, %i.b
  br i1 %i.y, label %.lr.ph, label %._crit_edge, !llvm.loop !420

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit ] ; 5 uses
  %i.z = and i64 %2, 1
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.b, label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit27

bb.b:                                             ; preds = %._crit_edge
  %i.ab = add nsw i64 %2, -2
  %i.ac = ashr exact i64 %i.ab, 1
  %i.ad = icmp eq i64 %.0.lcssa, %i.ac
  br i1 %i.ad, label %bb.c, label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit27

bb.c:                                             ; preds = %bb.b
  %i.ae = shl nsw i64 %.0.lcssa, 1
  %i.af = or disjoint i64 %i.ae, 1                ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !100
  store ptr null, ptr %i.ag, align 8, !tbaa !100
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !100 ; 3 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !100
  %.not.i.i.i.i25 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i.i25, label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit27, label %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i26

_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i26: ; preds = %bb.c
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !80
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj) #23, !inline_history !419
  br label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit27

_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit27: ; preds = %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i26, %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %.0.lcssa, %._crit_edge ], [ %.0.lcssa, %bb.b ], [ %i.af, %bb.c ], [ %i.af, %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i26 ] ; 3 uses
  %i.an = load i64, ptr %3, align 8, !tbaa !100   ; 2 uses
  %i.ao = inttoptr i64 %i.an to ptr               ; 5 uses
  store ptr null, ptr %3, align 8, !tbaa !100
  %i.ap = icmp sgt i64 %.1, %1
  br i1 %i.ap, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit27, %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit.i
  %.010.i = phi i64 [ %.0911.i, %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit.i ], [ %.1, %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit27 ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i ; 3 uses
  %.val.i.i = load ptr, ptr %i.aq, align 8, !tbaa !100 ; 2 uses
  %i.ar = load ptr, ptr %.val.i.i, align 8, !tbaa !80
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = invoke noundef i64 %i.at(ptr noundef nonnull align 8 dereferenceable(40) %.val.i.i)
          to label %.noexc unwind label %bb.e, !inline_history !421

.noexc:                                           ; preds = %.lr.ph.i
  %i.av = load ptr, ptr %i.ao, align 8, !tbaa !80
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef i64 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %i.ao)
          to label %.noexc29 unwind label %.thread, !inline_history !421

.thread:                                          ; preds = %.noexc
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i31

.noexc29:                                         ; preds = %.noexc
  %i.ba = icmp ult i64 %i.au, %i.ay
  br i1 %i.ba, label %bb.d, label %.critedge.i

bb.d:                                             ; preds = %.noexc29
  %i.bb = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i ; 2 uses
  %i.bc = load ptr, ptr %i.aq, align 8, !tbaa !100
  store ptr null, ptr %i.aq, align 8, !tbaa !100
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !100 ; 3 uses
  store ptr %i.bc, ptr %i.bb, align 8, !tbaa !100
  %.not.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit.i, label %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !80
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd) #23, !inline_history !422
  br label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit.i

_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit.i: ; preds = %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i.i, %bb.d
  %i.bh = icmp sgt i64 %.0911.i, %1
  br i1 %i.bh, label %.lr.ph.i, label %.critedge.i, !llvm.loop !423

.critedge.i:                                      ; preds = %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit.i, %.noexc29, %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit27
  %.0.lcssa.i = phi i64 [ %.1, %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit27 ], [ %.010.i, %.noexc29 ], [ %.0911.i, %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EEaSEOS4_.exit.i ]
  %i.bi = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !100 ; 3 uses
  store ptr %i.ao, ptr %i.bi, align 8, !tbaa !100
  %.not.i.i.i.i10.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i10.i, label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i11.i

_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i11.i: ; preds = %.critedge.i
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.bj) #23, !inline_history !422
  br label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit: ; preds = %.critedge.i, %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i.i.i.i11.i
  ret void

bb.e:                                             ; preds = %.lr.ph.i
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i30 = icmp eq i64 %i.an, 0
  br i1 %.not.i30, label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit32, label %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i31

_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i31: ; preds = %.thread, %bb.e
  %i.bo = phi { ptr, i32 } [ %i.az, %.thread ], [ %i.bn, %bb.e ]
  %i.bp = load ptr, ptr %i.ao, align 8, !tbaa !80
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %i.ao) #23, !inline_history !424
  br label %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit32

_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit32: ; preds = %bb.e, %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i31
  %i.bs = phi { ptr, i32 } [ %i.bn, %bb.e ], [ %i.bo, %_ZNKSt14default_deleteIN7rocksdb7WalFileEEclEPS1_.exit.i31 ]
  resume { ptr, i32 } %i.bs
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS4_EESt6vectorIS7_SaIS7_EEEENS0_5__ops15_Iter_comp_iterIZNS3_10WalManager19GetSortedWalsOfTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSB_NS3_11WalFileTypeEbE3$_0EEEvT_SS_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit22, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.013.024 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = icmp eq ptr %.sroa.013.024, %1
  br i1 %i.b, label %.loopexit22, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.c = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit
  %.sroa.013.026 = phi ptr [ %.sroa.013.024, %.lr.ph ], [ %.sroa.013.0, %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit ] ; 8 uses
  %.pn25 = phi ptr [ %0, %.lr.ph ], [ %.sroa.013.026, %_ZNSt10unique_ptrIN7rocksdb7WalFileESt14default_deleteIS1_EED2Ev.exit ]
  %.val.i = load ptr, ptr %.sroa.013.026, align 8, !tbaa !100 ; 2 uses
  %.val1.i = load ptr, ptr %0, align 8, !tbaa !100 ; 2 uses
  %i.d = load ptr, ptr %.val.i, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
end_hunk_0
