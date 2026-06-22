inline.NumInlined: 996
inline.NumDeleted: 405
begin_hunk_0_@_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtCseo6ZV82fEK1_3url3UrlINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories18ObjectStoreFactoryEL_EEEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8
  store ptr %i.o, ptr %0, align 8
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [104 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted11, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !113
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -1664 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog6schema14SchemaProviderEL_EEEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %.not9 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not9, label %.lr.ph, label %._crit_edge16

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted11 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8
  store ptr %i.o, ptr %0, align 8
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted11, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !116
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvMsh_NtNtCsbZMnTeWjWd9_9hashbrown3raw5innerINtB6_12RawIterRangeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCs3JXekYNd0JR_7dashmap4util11SharedValueINtNtB17_4sync3ArcDNtNtCsanCXJAiNsO_18datafusion_catalog7catalog15CatalogProviderEL_EEEE9next_implKb0_ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i16, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %.not9 = icmp eq i16 %i.b, 0
  %.promoted = load ptr, ptr %0, align 8          ; 2 uses
  br i1 %.not9, label %.lr.ph, label %._crit_edge16

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted11 = load ptr, ptr %i.c, align 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store ptr %i.p, ptr %i.c, align 8
  store ptr %i.o, ptr %0, align 8
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %bb.a, %._crit_edge
  %i.d = phi ptr [ %i.o, %._crit_edge ], [ %.promoted, %bb.a ]
  %.lcssa = phi i16 [ %.cast, %._crit_edge ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = add i16 %.lcssa, -1
  %i.f = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.g = zext nneg i16 %i.f to i64
  %i.h = and i16 %i.e, %.lcssa
  store i16 %i.h, ptr %i.a, align 8
  %i.i = sub nsw i64 0, %i.g
  %i.j = getelementptr inbounds [40 x i8], ptr %i.d, i64 %i.i
  ret ptr %i.j

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.k = phi ptr [ %.promoted11, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.o, %bb.b ]
  %i.m = load <16 x i8>, ptr %i.k, align 16, !noalias !119
  %i.n = icmp sgt <16 x i8> %i.m, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast = bitcast <16 x i1> %i.n to i16          ; 2 uses
  %.not = icmp eq i16 %.cast, 0
  br i1 %.not, label %bb.b, label %._crit_edge
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtCseKAYRfgxGTE_14event_listener5InneruEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef readnone captures(none) %0) unnamed_addr #2 {
bb.a:
  ret i64 16
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsI2hFLkJvVt_12futures_task5waker12drop_arc_rawNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16 ; 2 uses
  store ptr %i.b, ptr %i.a, align 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !122
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.b:                                             ; preds = %bb.a
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsI2hFLkJvVt_12futures_task5waker12wake_arc_rawNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_RNvYNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierNtNtCsI2hFLkJvVt_12futures_task8arc_wake7ArcWake4wakeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define hidden void @_RINvNtCsI2hFLkJvVt_12futures_task5waker17increase_refcountNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef captures(none) %0) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -16
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsI2hFLkJvVt_12futures_task5waker19wake_by_ref_arc_rawNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr %i.b, ptr %i.a, align 8
  call void @_RNvXsc_NtNtNtCs8CRAYtH5WmW_12futures_util6future6future6sharedNtB5_8NotifierNtNtCsI2hFLkJvVt_12futures_task8arc_wake7ArcWake11wake_by_ref(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, 536870913) %i.f) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, 536870913) %i.l) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, 536870913) %i.f) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, 536870913) %i.l) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, 536870913) %i.f) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, 536870913) %i.l) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, 536870913) %i.f) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, 536870913) %i.l) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, 536870913) %i.f) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, 536870913) %i.l) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.d
  resume { ptr, i32 } %i.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1a_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2W_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2w_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB25_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2D_.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2D_.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEB2w_.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB25_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr captures(address) %.0.val, i64 %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  %i.a = icmp eq i64 %.8.val, 0
  br i1 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1l_11timer_wheel9TimerNodeNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %.sroa.0.011.i.i.i = phi i64 [ %i.c, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1l_11timer_wheel9TimerNodeNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.c = add nuw i64 %.sroa.0.011.i.i.i, 1        ; 4 uses
  %.val8.i.i.i = load ptr, ptr %i.b, align 8, !alias.scope !129, !nonnull !10, !noundef !10 ; 4 uses
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %.val9.i.i.i = load i64, ptr %i.d, align 8, !alias.scope !129, !noundef !10 ; 6 uses
  %cond = icmp eq i64 %.val9.i.i.i, 0
  br i1 %cond, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1l_11timer_wheel9TimerNodeNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i: ; preds = %.lr.ph
  %i.e = icmp eq i64 %i.g, %.val9.i.i.i
  br i1 %i.e, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i17 = phi i64 [ %i.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %.val8.i.i.i, i64 %.sroa.0.0.i.i.i.i.i17
  %i.g = add i64 %.sroa.0.0.i.i.i.i.i17, 1        ; 4 uses
  invoke void @_RNvXs0_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i unwind label %bb.b, !noalias !129

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i.i.i.i.i: ; preds = %.lr.ph19
  %i.h = add i64 %.sroa.0.1.i.i.i.i.i18, 1        ; 2 uses
  %i.i = icmp eq i64 %i.h, %.val9.i.i.i
  br i1 %i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, label %.lr.ph19

bb.b:                                             ; preds = %.lr.ph
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = icmp eq i64 %i.g, %.val9.i.i.i
  br i1 %i.k, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i18 = phi i64 [ %i.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i.i.i.i.i ], [ %i.g, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %.val8.i.i.i, i64 %.sroa.0.1.i.i.i.i.i18
  invoke void @_RNvXs0_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i.i.i.i.i unwind label %bb.c, !noalias !129

bb.c:                                             ; preds = %.lr.ph19
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !129
  unreachable

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit7.i.i.i.i.i, %bb.b
  %i.n = mul nuw nsw i64 %.val9.i.i.i, 48
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %i.n, i64 noundef 8) #37, !noalias !129
  %i.o = icmp eq i64 %i.c, %.8.val
  br i1 %i.o, label %._crit_edge, label %.lr.ph21

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_11timer_wheel9TimerNodeNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i
  %i.p = mul nuw nsw i64 %.val9.i.i.i, 48
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i.i.i, i64 noundef %i.p, i64 noundef 8) #37, !noalias !129
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1l_11timer_wheel9TimerNodeNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1l_11timer_wheel9TimerNodeNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i
  %i.q = icmp eq i64 %i.c, %.8.val
  br i1 %i.q, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %.lr.ph21
  %i.r = add i64 %.sroa.0.1.i.i.i20, 1            ; 2 uses
  %i.s = icmp eq i64 %i.r, %.8.val
  br i1 %i.s, label %._crit_edge, label %.lr.ph21

.lr.ph21:                                         ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.d
  %.sroa.0.1.i.i.i20 = phi i64 [ %i.r, %bb.d ], [ %i.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %.0.val, i64 %.sroa.0.1.i.i.i20 ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !129, !nonnull !10, !noundef !10
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val7.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !129, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1l_11timer_wheel9TimerNodeNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val.i.i.i, i64 %.val7.i.i.i) #38
          to label %bb.d unwind label %bb.e, !noalias !129

bb.e:                                             ; preds = %.lr.ph21
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !129
  unreachable

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtB1l_11timer_wheel9TimerNodeNtNtBL_6string6StringEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.w = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.w, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

._crit_edge:                                      ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i
  %i.x = shl nuw nsw i64 %.8.val, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.x, i64 noundef 8) #37
  resume { ptr, i32 } %i.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common11timer_wheel10TimerWheelNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6deques6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs0_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(192) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs0_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RNvXs0_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i: ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.e, %bb.c ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvXs0_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6.i unwind label %bb.e

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  invoke void @_RNvXs0_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs95DO3lnzZ3L_4moka6common10concurrent6deques6DequesNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6.i: ; preds = %bb.d, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i
  %.pn2.i = phi { ptr, i32 } [ %i.h, %bb.d ], [ %.pn.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  invoke void @_RNvXs0_NtNtCs95DO3lnzZ3L_4moka6common5dequeINtB5_5DequeINtNtB7_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.g)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit8.i unwind label %bb.e

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6.i

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit6.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6common5deque5DequeINtNtBL_10concurrent11KeyHashDateNtNtCs6Po7BT7Nknu_5alloc6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit4.i, %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
end_hunk_0
begin_hunk_1_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1p_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1p_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticHelpEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic14DiagnosticNoteEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4j34XAPZOn0_4http6header3map3PosENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs4j34XAPZOn0_4http6header3map3PosENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB1e_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBG_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB1l_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarBN_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVecTNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarB1l_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_NtNtBL_6string6StringRL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEp6OutputbNtNtB4_6marker4SyncNtB3F_4SendEL_RNtNtBL_5alloc6GlobalEEB2h_(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_NtNtB7_6string6StringRL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEp6OutputbNtNtBS_6marker4SyncNtB3n_4SendEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1Z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_NtNtB7_6string6StringRL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEp6OutputbNtNtBS_6marker4SyncNtB3n_4SendEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1Z_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !127, !invariant.load !10
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !128, !invariant.load !10
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8) ; 3 uses
  %i.j = add nuw i64 %i.f, 15
  %i.k = add nuw i64 %i.j, %i.i
  %i.l = sub nsw i64 0, %i.i
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_NtNtB7_6string6StringRL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEp6OutputbNtNtBS_6marker4SyncNtB3n_4SendEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1Z_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.m, i64 noundef range(i64 1, 536870913) %i.i) #37
  br label %_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_NtNtB7_6string6StringRL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEp6OutputbNtNtBS_6marker4SyncNtB3n_4SendEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1Z_.exit

_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_NtNtB7_6string6StringRL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEp6OutputbNtNtBS_6marker4SyncNtB3n_4SendEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1Z_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakDG0_INtNtNtB4_3ops8function2FnTRL1_NtNtBL_6string6StringRL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEp6OutputmNtNtB4_6marker4SyncNtB3F_4SendEL_RNtNtBL_5alloc6GlobalEEB2h_(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_NtNtB7_6string6StringRL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEp6OutputmNtNtBS_6marker4SyncNtB3n_4SendEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1Z_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_NtNtB7_6string6StringRL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEp6OutputmNtNtBS_6marker4SyncNtB3n_4SendEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1Z_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !127, !invariant.load !10
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !128, !invariant.load !10
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8) ; 3 uses
  %i.j = add nuw i64 %i.f, 15
  %i.k = add nuw i64 %i.j, %i.i
  %i.l = sub nsw i64 0, %i.i
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_NtNtB7_6string6StringRL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEp6OutputmNtNtBS_6marker4SyncNtB3n_4SendEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1Z_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.m, i64 noundef range(i64 1, 536870913) %i.i) #37
  br label %_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_NtNtB7_6string6StringRL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEp6OutputmNtNtBS_6marker4SyncNtB3n_4SendEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1Z_.exit

_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDG0_INtNtNtCsbvkFyIu7lgC_4core3ops8function2FnTRL1_NtNtB7_6string6StringRL0_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEp6OutputmNtNtBS_6marker4SyncNtB3n_4SendEL_RNtNtB7_5alloc6GlobalENtNtBQ_4drop4Drop4dropB1Z_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtB4_6marker4SyncNtB3v_4SendEL_RNtNtBL_5alloc6GlobalEEB2h_(ptr captures(address) %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #4 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = icmp eq ptr %.0.val, inttoptr (i64 -1 to ptr)
  br i1 %i.a, label %_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2X_4SendEL_RNtNtB7_5alloc6GlobalENtNtNtB2Z_3ops4drop4Drop4dropB1J_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.c = atomicrmw sub ptr %i.b, i64 1 release, align 8
  %i.d = icmp eq i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2X_4SendEL_RNtNtB7_5alloc6GlobalENtNtNtB2Z_3ops4drop4Drop4dropB1J_.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !127, !invariant.load !10
  %i.g = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.h = load i64, ptr %i.g, align 8, !range !128, !invariant.load !10
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 8) ; 3 uses
  %i.j = add nuw i64 %i.f, 15
  %i.k = add nuw i64 %i.j, %i.i
  %i.l = sub nsw i64 0, %i.i
  %i.m = and i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2X_4SendEL_RNtNtB7_5alloc6GlobalENtNtNtB2Z_3ops4drop4Drop4dropB1J_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 0, -9223372036317904881) %i.m, i64 noundef range(i64 1, 536870913) %i.i) #37
  br label %_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2X_4SendEL_RNtNtB7_5alloc6GlobalENtNtNtB2Z_3ops4drop4Drop4dropB1J_.exit

_RNvXsO_NtCs6Po7BT7Nknu_5alloc4syncINtB5_4WeakDINtNtCs95DO3lnzZ3L_4moka6policy6ExpiryNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsENtNtCsbvkFyIu7lgC_4core6marker4SyncNtB2X_4SendEL_RNtNtB7_5alloc6GlobalENtNtNtB2Z_3ops4drop4Drop4dropB1J_.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync8ArcInnerNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !189)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !192, !nonnull !10, !noundef !10
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !192
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.b:                                             ; preds = %bb.a
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #38
          to label %bb.d unwind label %bb.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b, %bb.a
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a)
          to label %bb.g unwind label %bb.f

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.f, %bb.c ]
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !199, !nonnull !10, !noundef !10
  %i.i = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !200
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.i

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8ulvy0Wg6Ot_12delta_kernel8snapshot8SnapshotEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !207, !nonnull !10, !noundef !10
  %i.n = atomicrmw sub ptr %i.m, i64 1 release, align 8, !noalias !208
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaE9drop_slowCs1N9T06jgEdt_11arrow_array(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.l) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.i:                                             ; preds = %bb.e, %bb.c
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %.pn.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8SnapshotECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.g, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.a = load ptr, ptr %.8.val, align 8, !invariant.load !10 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  invoke void %i.a(ptr noundef nonnull %.0.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.c = load i64, ptr %i.b, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i: ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.c, i64 noundef range(i64 1, 536870913) %i.f) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.i = load i64, ptr %i.h, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.l = load i64, ptr %i.k, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef %i.i, i64 noundef range(i64 1, 536870913) %i.l) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core5error5ErrorNtNtBM_6marker4SyncNtB1j_4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4, %bb.d
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !158, !alias.scope !209, !noundef !10
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #37
  ret void

bb.f:                                             ; preds = %bb.e, %bb.c
  %eh.lpad-body = phi { ptr, i32 } [ %i.e, %bb.e ], [ %i.c, %bb.c ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 24, i64 noundef 8) #37
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !26, !alias.scope !212, !noundef !10
  %switch.i.i = icmp samesign ult i64 %i.a, 2
  br i1 %switch.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  invoke void @_RNvXs0_NtNtCs2pqxYH9ZEk8_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #37
  ret void

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef 48, i64 noundef 8) #37
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 32, i64 noundef 8) #37
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.a)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 96, i64 noundef 16) #37
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 96, i64 noundef 16) #37
  resume { ptr, i32 } %i.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %.body.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(144) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.d, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(72) %i.d) #38
          to label %.body2.i unwind label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.0.val, i64 24 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 80
  invoke void @_RINvMsa_NtCs2HSpDNxY7OE_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCsc8g9ilNZkOD_14allocator_api26stable5alloc6global6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.g, i64 noundef 8, i64 noundef 16)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtBL_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e) #38
          to label %.body2.i unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %.body2.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.h:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap5inner4CoreNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs2HSpDNxY7OE_9hashbrown5table9HashTablejEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtCsbpG6u9KFjWn_8indexmap6BucketNtNtB7_6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.i

.body2.i:                                         ; preds = %bb.i, %bb.f, %bb.e, %.body.i
end_hunk_1
begin_hunk_2_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map8IntoIterNtNtBL_5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.p

bb.l:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !383
  store i64 0, ptr %i.i, align 8, !alias.scope !383
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ax)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5 unwind label %bb.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %.body, %bb.m
  %.pn = phi { ptr, i32 } [ %i.az, %bb.m ], [ %eh.lpad-body, %.body ]
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.ay) #38
          to label %common.resume unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.n

bb.n:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.n
  %common.resume.op = phi { ptr, i32 } [ %i.bb, %bb.n ], [ %.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit5
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
  ret void

bb.p:                                             ; preds = %.body, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1z_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtB1v_6string6StringEINtNtNtNtBN_6common10concurrent3arc7MiniArcINtB2q_10ValueEntryB1Y_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3t_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs1_NtNtCs95DO3lnzZ3L_4moka3cht7segmentINtB5_7HashMapINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtBX_6string6StringEINtNtNtNtB9_6common10concurrent3arc7MiniArcINtB1R_10ValueEntryB1q_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB2U_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3 = load i64, ptr %i.b, align 8, !noundef !10 ; 2 uses
  %i.c = icmp eq i64 %.val3, 0
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB1n_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3M_.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.b
  %.val2 = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.d = shl nuw nsw i64 %.val3, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.d, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB1n_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3M_.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.e, align 8, !noundef !10 ; 2 uses
  %i.f = icmp eq i64 %.val1, 0
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB1n_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3M_.exit5, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4: ; preds = %bb.c
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.g = shl nuw nsw i64 %.val1, 4
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB1n_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3M_.exit5

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB1n_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3M_.exit5: ; preds = %bb.c, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSINtNtNtCs95DO3lnzZ3L_4moka3cht7segment7SegmentINtNtBL_4sync3ArcNtNtBL_6string6StringEINtNtNtNtB1n_6common10concurrent3arc7MiniArcINtB2I_10ValueEntryB2h_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEEB3M_.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtBP_6HandleINtBP_7NodeRefNtNtBP_6marker5DyingpppENtB26_2KVE12drop_key_val7DropperINtNtB4_6option6OptionNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.a = load i64, ptr %.0.val, align 8, !range !158, !alias.scope !454, !noundef !10
  %i.b = icmp eq i64 %i.a, -9223372036854775808
  br i1 %i.b, label %_RNvXNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEENtNtNtB2s_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.0.val)
  br label %_RNvXNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEENtNtNtB2s_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB8_6HandleINtB8_7NodeRefNtNtB8_6marker5DyingpppENtB1p_2KVE12drop_key_valINtB2_7DropperINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringEENtNtNtB2s_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXsy_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtBP_8IntoIterpppENtNtNtB4_3ops4drop4Drop4drop9DropGuardNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtB4_6option6OptionB2x_ENtNtBV_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree nonnull captures(none) %.0.val) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtCsbvkFyIu7lgC_4core6option6OptionB17_EE10dying_nextCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %.0.val)
  %i.b = load ptr, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %.not2.i = icmp eq ptr %i.b, null
  br i1 %.not2.i, label %_RNvXNvXsy_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtB1k_6option6OptionB2c_ENtNtBe_5alloc6GlobalEB1e_4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.21.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.c = phi ptr [ %i.b, %.lr.ph.i ], [ %i.d, %bb.b ]
  %.sroa.21.0.copyload.i = load i64, ptr %.sroa.21.0..sroa_idx.i, align 8
  tail call fastcc void @_RNvMsT_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtCsbvkFyIu7lgC_4core6option6OptionB1E_ENtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %i.c, i64 %.sroa.21.0.copyload.i) #39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvMsz_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8IntoIterNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtCsbvkFyIu7lgC_4core6option6OptionB17_EE10dying_nextCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(72) %.0.val)
  %i.d = load ptr, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %_RNvXNvXsy_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtB1k_6option6OptionB2c_ENtNtBe_5alloc6GlobalEB1e_4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

_RNvXNvXsy_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB8_8IntoIterpppENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropINtB2_9DropGuardNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringINtNtB1k_6option6OptionB2c_ENtNtBe_5alloc6GlobalEB1e_4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBO_8LogStoreEL_EB22_17read_commit_entry0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !457, !noundef !10
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, 536870913) %i.j) #37
  br label %common.ret

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, 536870913) %i.p) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultINtNtBO_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBO_8LogStoreEL_EB22_18abort_commit_entry0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.b = load i8, ptr %i.a, align 2, !range !457, !noundef !10
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.g
  ]

common.ret:                                       ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !458, !noundef !10 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.d, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %common.ret

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !467, !nonnull !10, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !467, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !467, !noundef !10
  tail call void %i.i(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.l, i64 noundef %i.n), !inline_history !468
  br label %common.ret

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.o, align 8             ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 56
  %.val2 = load ptr, ptr %i.p, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.q = load ptr, ptr %.val2, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.q(ptr noundef nonnull %.val)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.s, i64 noundef range(i64 1, 536870913) %i.v) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.j:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #37
  br label %.body

.body:                                            ; preds = %bb.j, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ac, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ad, align 8
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBO_8LogStoreEL_EB22_18get_latest_version0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !range !457, !noundef !10
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, 536870913) %i.j) #37
  br label %common.ret

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, 536870913) %i.p) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBO_8LogStoreEL_EB22_18write_commit_entry0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 82
  %i.b = load i8, ptr %i.a, align 2, !range !457, !noundef !10
  switch i8 %i.b, label %common.ret [
    i8 0, label %bb.b
    i8 3, label %bb.g
  ]

common.ret:                                       ; preds = %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !469, !noundef !10 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.d, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.w, %.body ], [ %i.f, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.c
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %common.ret

bb.f:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !475)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !noalias !478, !nonnull !10, !noundef !10
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !478, !noundef !10
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !478, !noundef !10
  tail call void %i.i(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.l, i64 noundef %i.n), !inline_history !468
  br label %common.ret

bb.g:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.o, align 8             ; 5 uses
  %i.p = getelementptr i8, ptr %0, i64 56
  %.val2 = load ptr, ptr %i.p, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.q = load ptr, ptr %.val2, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.q(ptr noundef nonnull %.val)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.s, i64 noundef range(i64 1, 536870913) %i.v) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.j:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #37
  br label %.body

.body:                                            ; preds = %bb.j, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ac, align 8
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.ad, align 8
  br label %common.ret
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBO_8LogStoreEL_EB22_23is_delta_table_location0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !457, !noundef !10
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, 536870913) %i.j) #37
  br label %common.ret

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, 536870913) %i.p) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtBO_8LogStoreEL_EB22_7refresh0ECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i8, ptr %i.a, align 8, !range !457, !noundef !10
  %cond = icmp eq i8 %i.b, 3
  br i1 %cond, label %bb.b, label %common.ret

common.ret:                                       ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.c, align 8             ; 5 uses
  %i.d = getelementptr i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.d, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.e = load ptr, ptr %.val1, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.e(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %common.ret, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.g, i64 noundef range(i64 1, 536870913) %i.j) #37
  br label %common.ret

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, 536870913) %i.p) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtNtCsbvkFyIu7lgC_4core6future6future6Futurep6OutputINtNtBO_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtBO_6marker4SendEL_ENtNtNtBO_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.e
  resume { ptr, i32 } %i.k
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseo6ZV82fEK1_3url3UrlECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorEBI_(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !479, !noundef !10 ; 2 uses
  %i.b = xor i64 %i.a, -9223372036854775808
  %i.c = icmp slt i64 %i.a, 0
  %i.d = select i1 %i.c, i64 %i.b, i64 13
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %bb.p
    i64 3, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 4, label %bb.s
    i64 5, label %bb.v
    i64 6, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 7, label %bb.y
    i64 8, label %bb.ab
    i64 9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 10, label %bb.ae
    i64 11, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 12, label %bb.af
  ]

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %.body.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %bb.c
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.e, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #38
          to label %.body4.i unwind label %bb.k

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i3.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.body4.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i3.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit6.i unwind label %bb.h

.body4.i:                                         ; preds = %bb.h, %bb.f, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.m, %bb.h ], [ %i.j, %bb.f ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l) #38
          to label %common.resume unwind label %bb.k

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i3.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit6.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i3.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseEBK_.exit unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit6.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.ao, %.body, %.body11, %bb.ak, %bb.ai, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.ac, %bb.w, %bb.t, %.body4.i, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body12, %.body11 ], [ %.pn.i, %.body4.i ], [ %i.aa, %bb.t ], [ %i.ad, %bb.w ], [ %i.aj, %bb.ac ], [ %i.au, %bb.ai ], [ %i.bd, %bb.ak ], [ %i.o, %bb.i ], [ %i.au, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %eh.lpad-body, %.body ], [ %i.bj, %bb.ao ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %.body4.i, %.body.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseEBK_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit6.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.l:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.m:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !range !159, !alias.scope !480, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvXs4_NtCsb2ODgYNwnRL_6anyhow5errorNtB7_5ErrorNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.o:                                             ; preds = %bb.m
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.p:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.p
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.aj

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.ah, %bb.o, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit22, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit19, %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5, %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models18TokenErrorResponseEBK_.exit, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.s:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %bb.s
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.v:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit8 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit8: ; preds = %bb.v
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.y:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i10 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.body11 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i10: ; preds = %bb.y
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit13 unwind label %bb.an

bb.ab:                                            ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit16 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit16: ; preds = %bb.ab
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ae:                                            ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.af:                                            ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.am, align 8            ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.an, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.ao = load ptr, ptr %.val2, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.ao, null
  br i1 %.not.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ao(ptr noundef nonnull %.val)
          to label %bb.ah unwind label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.ap = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.ah
  %i.as = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.aq, i64 noundef range(i64 1, 536870913) %i.at) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ai:                                            ; preds = %bb.ag
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.ai
  %i.ay = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.aw, i64 noundef range(i64 1, 536870913) %i.az) #37
  br label %common.resume

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.q, %bb.aj
  %eh.lpad-body = phi { ptr, i32 } [ %i.ba, %bb.aj ], [ %i.x, %bb.q ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb) #38
          to label %common.resume unwind label %bb.am

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit19 unwind label %bb.ak

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %common.resume unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit19: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.am:                                            ; preds = %.body11, %.body
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i10
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %.body11

.body11:                                          ; preds = %bb.z, %bb.an
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.bg, %bb.an ], [ %i.ag, %bb.z ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh) #38
          to label %common.resume unwind label %bb.am

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit13: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i10
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit22 unwind label %bb.ao

bb.ao:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit13
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %common.resume unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit22: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit13
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjkRrtHEnRPD_18reqwest_middleware5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !483, !noundef !10 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775800
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775802
  %i.d = icmp ugt i64 %i.a, -9223372036854775803
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.i
    i64 2, label %bb.l
    i64 3, label %bb.m
    i64 4, label %bb.r
    i64 5, label %bb.v
    i64 6, label %bb.y
    i64 7, label %bb.ab
    i64 8, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 9, label %bb.ae
    i64 10, label %bb.ah
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.bi, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i87, %bb.be, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i82, %bb.ba, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i77, %bb.aw, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i72, %bb.as, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i67, %.body58, %.body53, %.body48, %.body43, %.body38, %.body, %bb.an, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i62, %bb.u, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i32, %bb.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i, %bb.h, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.et, %bb.be ], [ %i.g, %bb.c ], [ %i.q, %bb.h ], [ %i.ai, %bb.q ], [ %i.aw, %bb.u ], [ %i.cc, %bb.an ], [ %eh.lpad-body59, %.body58 ], [ %i.cu, %bb.as ], [ %i.dl, %bb.aw ], [ %i.ec, %bb.ba ], [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.ai, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i ], [ %i.aw, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i32 ], [ %i.cc, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i62 ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body39, %.body38 ], [ %eh.lpad-body44, %.body43 ], [ %eh.lpad-body49, %.body48 ], [ %eh.lpad-body54, %.body53 ], [ %i.cu, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i67 ], [ %i.dl, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i72 ], [ %i.ec, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i77 ], [ %i.et, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i82 ], [ %i.fk, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i87 ], [ %i.fk, %bb.bi ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val27 = load ptr, ptr %i.i, align 8           ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val28 = load ptr, ptr %i.j, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.k = load ptr, ptr %.val28, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  invoke void %i.k(ptr noundef nonnull %.val27)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val27) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef %i.m, i64 noundef range(i64 1, 536870913) %i.p) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val28, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.val28, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val27, i64 noundef %i.s, i64 noundef range(i64 1, 536870913) %i.v) #37
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %.body unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit30 unwind label %bb.ak

bb.l:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.m:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !484)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i = load ptr, ptr %i.z, align 8, !alias.scope !484, !noundef !10 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i = load ptr, ptr %i.aa, align 8, !alias.scope !484 ; 6 uses
  %i.ab = icmp eq ptr %.val.i, null
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.ac = load ptr, ptr %.val1.i, align 8, !invariant.load !10, !noalias !484 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void %i.ac(ptr noundef nonnull %.val.i)
          to label %bb.p unwind label %bb.q, !noalias !484

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !127, !invariant.load !10, !noalias !484 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !128, !invariant.load !10, !noalias !484
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #37, !noalias !484
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.q:                                             ; preds = %bb.o
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !127, !invariant.load !10, !noalias !484 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i: ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !128, !invariant.load !10, !noalias !484
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #37, !noalias !484
  br label %common.resume

bb.r:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val25 = load ptr, ptr %i.ao, align 8          ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val26 = load ptr, ptr %i.ap, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.aq = load ptr, ptr %.val26, align 8, !invariant.load !10 ; 2 uses
  %.not.i31 = icmp eq ptr %i.aq, null
  br i1 %.not.i31, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  invoke void %i.aq(ptr noundef nonnull %.val25)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ar = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i34

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i34: ; preds = %bb.t
  %i.au = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.av = load i64, ptr %i.au, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val25) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef %i.as, i64 noundef range(i64 1, 536870913) %i.av) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.u:                                             ; preds = %bb.s
  %i.aw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.val26, i64 8
  %i.ay = load i64, ptr %i.ax, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.az = icmp eq i64 %i.ay, 0
  br i1 %i.az, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i32

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i32: ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %.val26, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val25, i64 noundef %i.ay, i64 noundef range(i64 1, 536870913) %i.bb) #37
  br label %common.resume

bb.v:                                             ; preds = %bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i37 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %.body38 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i37: ; preds = %bb.v
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bc)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit40 unwind label %bb.ap

bb.y:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %.body43 unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42: ; preds = %bb.y
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit45 unwind label %bb.at

bb.ab:                                            ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i47 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %.body48 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i47: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bi)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit50 unwind label %bb.ax

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i89, %bb.bh, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i84, %bb.bd, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i79, %bb.az, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i74, %bb.av, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i69, %bb.ar, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i64, %bb.am, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i34, %bb.t, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.p, %bb.m, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.g, %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a
  ret void

bb.ae:                                            ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i52 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %.body53 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i52: ; preds = %bb.ae
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit55 unwind label %bb.bb

bb.ah:                                            ; preds = %bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i57 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %.body58 unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i57: ; preds = %bb.ah
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bo)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit60 unwind label %bb.bf

bb.ak:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.ak
  %eh.lpad-body = phi { ptr, i32 } [ %i.br, %bb.ak ], [ %i.x, %bb.j ]
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val23 = load ptr, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val24 = load ptr, ptr %i.bt, align 8, !nonnull !10, !align !175, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val23, ptr nonnull %.val24) #38
          to label %common.resume unwind label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit30: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val21 = load ptr, ptr %i.bu, align 8          ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val22 = load ptr, ptr %i.bv, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.bw = load ptr, ptr %.val22, align 8, !invariant.load !10 ; 2 uses
  %.not.i61 = icmp eq ptr %i.bw, null
  br i1 %.not.i61, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit30
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  invoke void %i.bw(ptr noundef nonnull %.val21)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit30
  %i.bx = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i64

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i64: ; preds = %bb.am
  %i.ca = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.cb = load i64, ptr %i.ca, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val21) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.by, i64 noundef range(i64 1, 536870913) %i.cb) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.an:                                            ; preds = %bb.al
  %i.cc = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.val22, i64 8
  %i.ce = load i64, ptr %i.cd, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i62

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i62: ; preds = %bb.an
  %i.cg = getelementptr inbounds nuw i8, ptr %.val22, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val21, i64 noundef %i.ce, i64 noundef range(i64 1, 536870913) %i.ch) #37
  br label %common.resume

bb.ao:                                            ; preds = %.body, %.body38, %.body43, %.body48, %.body53, %.body58
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ap:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i37
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body38

.body38:                                          ; preds = %bb.w, %bb.ap
  %eh.lpad-body39 = phi { ptr, i32 } [ %i.cj, %bb.ap ], [ %i.bd, %bb.w ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val19 = load ptr, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val20 = load ptr, ptr %i.cl, align 8, !nonnull !10, !align !175, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val19, ptr nonnull %.val20) #38
          to label %common.resume unwind label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit40: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i37
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val17 = load ptr, ptr %i.cm, align 8          ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val18 = load ptr, ptr %i.cn, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.co = load ptr, ptr %.val18, align 8, !invariant.load !10 ; 2 uses
  %.not.i66 = icmp eq ptr %i.co, null
  br i1 %.not.i66, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit40
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  invoke void %i.co(ptr noundef nonnull %.val17)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %bb.aq, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit40
  %i.cp = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.cq = load i64, ptr %i.cp, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 0
  br i1 %i.cr, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i69

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i69: ; preds = %bb.ar
  %i.cs = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val17) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.cq, i64 noundef range(i64 1, 536870913) %i.ct) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.as:                                            ; preds = %bb.aq
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i67

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i67: ; preds = %bb.as
  %i.cy = getelementptr inbounds nuw i8, ptr %.val18, i64 16
  %i.cz = load i64, ptr %i.cy, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val17, i64 noundef %i.cw, i64 noundef range(i64 1, 536870913) %i.cz) #37
  br label %common.resume

bb.at:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body43

.body43:                                          ; preds = %bb.z, %bb.at
  %eh.lpad-body44 = phi { ptr, i32 } [ %i.da, %bb.at ], [ %i.bg, %bb.z ]
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val15 = load ptr, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val16 = load ptr, ptr %i.dc, align 8, !nonnull !10, !align !175, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val15, ptr nonnull %.val16) #38
          to label %common.resume unwind label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit45: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i42
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val13 = load ptr, ptr %i.dd, align 8          ; 5 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val14 = load ptr, ptr %i.de, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.df = load ptr, ptr %.val14, align 8, !invariant.load !10 ; 2 uses
  %.not.i71 = icmp eq ptr %i.df, null
  br i1 %.not.i71, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit45
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  invoke void %i.df(ptr noundef nonnull %.val13)
          to label %bb.av unwind label %bb.aw

bb.av:                                            ; preds = %bb.au, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit45
  %i.dg = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i74

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i74: ; preds = %bb.av
  %i.dj = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.dk = load i64, ptr %i.dj, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val13) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.dh, i64 noundef range(i64 1, 536870913) %i.dk) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.aw:                                            ; preds = %bb.au
  %i.dl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.val14, i64 8
  %i.dn = load i64, ptr %i.dm, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i72

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i72: ; preds = %bb.aw
  %i.dp = getelementptr inbounds nuw i8, ptr %.val14, i64 16
  %i.dq = load i64, ptr %i.dp, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13, i64 noundef %i.dn, i64 noundef range(i64 1, 536870913) %i.dq) #37
  br label %common.resume

bb.ax:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i47
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %.body48

.body48:                                          ; preds = %bb.ac, %bb.ax
  %eh.lpad-body49 = phi { ptr, i32 } [ %i.dr, %bb.ax ], [ %i.bj, %bb.ac ]
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val11 = load ptr, ptr %i.ds, align 8
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val12 = load ptr, ptr %i.dt, align 8, !nonnull !10, !align !175, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val11, ptr nonnull %.val12) #38
          to label %common.resume unwind label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit50: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i47
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val9 = load ptr, ptr %i.du, align 8           ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val10 = load ptr, ptr %i.dv, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.dw = load ptr, ptr %.val10, align 8, !invariant.load !10 ; 2 uses
  %.not.i76 = icmp eq ptr %i.dw, null
  br i1 %.not.i76, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit50
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  invoke void %i.dw(ptr noundef nonnull %.val9)
          to label %bb.az unwind label %bb.ba

bb.az:                                            ; preds = %bb.ay, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit50
  %i.dx = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i79

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i79: ; preds = %bb.az
  %i.ea = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.eb = load i64, ptr %i.ea, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val9) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.dy, i64 noundef range(i64 1, 536870913) %i.eb) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ba:                                            ; preds = %bb.ay
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val10, i64 8
  %i.ee = load i64, ptr %i.ed, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i77

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i77: ; preds = %bb.ba
  %i.eg = getelementptr inbounds nuw i8, ptr %.val10, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9, i64 noundef %i.ee, i64 noundef range(i64 1, 536870913) %i.eh) #37
  br label %common.resume

bb.bb:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i52
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body53

.body53:                                          ; preds = %bb.af, %bb.bb
  %eh.lpad-body54 = phi { ptr, i32 } [ %i.ei, %bb.bb ], [ %i.bm, %bb.af ]
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val7 = load ptr, ptr %i.ej, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val8 = load ptr, ptr %i.ek, align 8, !nonnull !10, !align !175, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val7, ptr nonnull %.val8) #38
          to label %common.resume unwind label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit55: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i52
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5 = load ptr, ptr %i.el, align 8           ; 5 uses
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val6 = load ptr, ptr %i.em, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.en = load ptr, ptr %.val6, align 8, !invariant.load !10 ; 2 uses
  %.not.i81 = icmp eq ptr %i.en, null
  br i1 %.not.i81, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit55
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  invoke void %i.en(ptr noundef nonnull %.val5)
          to label %bb.bd unwind label %bb.be

bb.bd:                                            ; preds = %bb.bc, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit55
  %i.eo = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ep = load i64, ptr %i.eo, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i84

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i84: ; preds = %bb.bd
  %i.er = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.es = load i64, ptr %i.er, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.ep, i64 noundef range(i64 1, 536870913) %i.es) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.be:                                            ; preds = %bb.bc
  %i.et = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.ev = load i64, ptr %i.eu, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.ew = icmp eq i64 %i.ev, 0
  br i1 %i.ew, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i82

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i82: ; preds = %bb.be
  %i.ex = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.ey = load i64, ptr %i.ex, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef %i.ev, i64 noundef range(i64 1, 536870913) %i.ey) #37
  br label %common.resume

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i57
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %.body58

.body58:                                          ; preds = %bb.ai, %bb.bf
  %eh.lpad-body59 = phi { ptr, i32 } [ %i.ez, %bb.bf ], [ %i.bp, %bb.ai ]
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val3 = load ptr, ptr %i.fa, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val4 = load ptr, ptr %i.fb, align 8, !nonnull !10, !align !175, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val3, ptr nonnull %.val4) #38
          to label %common.resume unwind label %bb.ao

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit60: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i57
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.fc, align 8            ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val2 = load ptr, ptr %i.fd, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.fe = load ptr, ptr %.val2, align 8, !invariant.load !10 ; 2 uses
  %.not.i86 = icmp eq ptr %i.fe, null
  br i1 %.not.i86, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit60
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.fe(ptr noundef nonnull %.val)
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit60
  %i.ff = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.fg = load i64, ptr %i.ff, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i89

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i89: ; preds = %bb.bh
  %i.fi = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fj = load i64, ptr %i.fi, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.fg, i64 noundef range(i64 1, 536870913) %i.fj) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.bi:                                            ; preds = %bb.bg
  %i.fk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.fn = icmp eq i64 %i.fm, 0
  br i1 %i.fn, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i87

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i87: ; preds = %bb.bi
  %i.fo = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.fm, i64 noundef range(i64 1, 536870913) %i.fp) #37
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !10  ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !487)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !490)
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !493, !nonnull !10, !noundef !10
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !493, !noundef !10
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !493, !noundef !10
  tail call void %i.g(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef %i.j, i64 noundef %i.l), !inline_history !494
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path4PathECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2pqxYH9ZEk8_3std4path7PathBufECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std3ffi6os_str8OsStringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser6parser11ParserErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !26, !noundef !10
  switch i64 %i.a, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.f
  ]

.sink.split:                                      ; preds = %bb.f, %bb.c
  %.sink = phi ptr [ %i.b, %bb.c ], [ %i.e, %bb.f ]
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.sink)
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.sink.split unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.g, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.f, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.sink.split unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !495, !noundef !10
  switch i64 %i.a, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.h
    i64 3, label %bb.k
    i64 5, label %bb.n
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.p, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.l, %bb.i, %bb.f, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.l, %bb.l ], [ %i.c, %bb.c ], [ %i.f, %bb.f ], [ %i.i, %bb.i ], [ %i.v, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.v, %bb.q ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5 unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %bb.h
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.k:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit7 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit7: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.n, align 8             ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.o, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.p = load ptr, ptr %.val1, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.p(ptr noundef nonnull %.val)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.q = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.p
  %i.t = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.r, i64 noundef range(i64 1, 536870913) %i.u) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.q:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.x = load i64, ptr %i.w, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.q
  %i.z = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.x, i64 noundef range(i64 1, 536870913) %i.aa) #37
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 16 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 16, !range !496, !noundef !10 ; 8 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775745
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775787
  %i.d = icmp ugt i64 %i.a, -9223372036854775788
  %i.e = select i1 %i.d, i64 %i.c, i64 42
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.j
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 5, label %bb.m
    i64 6, label %bb.p
    i64 7, label %bb.t
    i64 8, label %bb.u
    i64 9, label %bb.x
    i64 10, label %bb.y
    i64 11, label %bb.z
    i64 12, label %bb.aa
    i64 13, label %bb.ab
    i64 14, label %bb.ae
    i64 15, label %bb.ah
    i64 16, label %bb.ak
    i64 17, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 18, label %bb.an
    i64 19, label %bb.aq
    i64 20, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 21, label %bb.at
    i64 22, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 23, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 24, label %bb.ax
    i64 25, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 26, label %bb.ba
    i64 27, label %bb.bd
    i64 28, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 29, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 30, label %bb.bg
    i64 31, label %bb.bj
    i64 32, label %bb.bm
    i64 33, label %bb.bp
    i64 34, label %bb.bs
    i64 35, label %bb.bv
    i64 36, label %bb.by
    i64 37, label %bb.cb
    i64 38, label %bb.ce
    i64 39, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 40, label %bb.cu
    i64 41, label %bb.cx
    i64 42, label %bb.da
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.es, %.body29, %.body61, %.body, %bb.dc, %bb.df, %bb.dj, %bb.dl, %bb.dp, %bb.ds, %.body.i.i.i, %bb.ea, %.body.i3.i.i, %bb.ej, %bb.cy, %bb.cg, %bb.cj, %bb.cm, %bb.cp, %bb.cs, %bb.cc, %bb.bz, %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.bh, %bb.be, %bb.ay, %bb.ar, %bb.ao, %bb.al, %bb.ai, %bb.af, %bb.ac, %bb.v, %bb.s, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.n, %bb.k, %bb.h, %bb.c, %bb.eo, %bb.aw
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body62, %.body61 ], [ %i.g, %bb.c ], [ %i.o, %bb.h ], [ %i.r, %bb.k ], [ %i.u, %bb.n ], [ %i.ae, %bb.s ], [ %i.am, %bb.v ], [ %i.at, %bb.ac ], [ %i.aw, %bb.af ], [ %i.az, %bb.ai ], [ %i.bc, %bb.al ], [ %i.bf, %bb.ao ], [ %i.bq, %bb.aw ], [ %i.bi, %bb.ar ], [ %i.bs, %bb.ay ], [ %i.by, %bb.be ], [ %i.cb, %bb.bh ], [ %i.ce, %bb.bk ], [ %i.ch, %bb.bn ], [ %i.ck, %bb.bq ], [ %i.cn, %bb.bt ], [ %i.cq, %bb.bw ], [ %i.ct, %bb.bz ], [ %i.cw, %bb.cc ], [ %i.dj, %bb.cs ], [ %i.dp, %bb.cy ], [ %i.fq, %bb.eo ], [ %eh.lpad-body.i4.i.i, %.body.i3.i.i ], [ %i.ae, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.dh, %bb.cp ], [ %i.db, %bb.cg ], [ %i.dd, %bb.cj ], [ %i.df, %bb.cm ], [ %i.dz, %bb.df ], [ %i.dw, %bb.dc ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.ee, %bb.dj ], [ %i.el, %bb.dp ], [ %i.eo, %bb.ds ], [ %i.eh, %bb.dl ], [ %i.ex, %bb.ea ], [ %i.fk, %bb.ej ], [ %i.k, %.body ], [ %eh.lpad-body30, %.body29 ], [ %i.fy, %bb.es ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !497)
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !497, !nonnull !10, !noundef !10 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 16 dereferenceable(96) %i.j)
          to label %bb.em unwind label %.body, !noalias !497, !inline_history !500

.body:                                            ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef 96, i64 noundef 16) #37, !noalias !497, !inline_history !500
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val4 = load ptr, ptr %i.l, align 16, !nonnull !10, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val4) #38
          to label %common.resume unwind label %bb.ep

bb.f:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.g:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit6 unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit6: ; preds = %bb.g
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.j:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit8 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit8: ; preds = %bb.j
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars9ArrayDataECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars10StructDataECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.du, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars7MapDataECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.dh, %bb.dh, %bb.dh, %bb.dh, %bb.dh, %bb.dh, %bb.dh, %bb.dh, %bb.dh, %bb.dh, %bb.dh, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit2.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.da, %bb.da, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.r, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit71, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit31, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs2pqxYH9ZEk8_3std9backtrace9BacktraceEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit66, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs8ulvy0Wg6Ot_12delta_kernel16table_properties11deserialize18ParseIntervalErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit58, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit55, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit52, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit49, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit46, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit43, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit40, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit37, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit34, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit24, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit22, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit18, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit16, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit14, %bb.aa, %bb.z, %bb.y, %bb.x, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit12, %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit10, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit8, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit6, %bb.f, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  ret void

bb.m:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit10 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit10: ; preds = %bb.m
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.p:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.w, align 8             ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.x, align 16, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.y = load ptr, ptr %.val2, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.y(ptr noundef nonnull %.val)
          to label %bb.r unwind label %bb.s

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.r
  %i.ac = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.aa, i64 noundef range(i64 1, 536870913) %i.ad) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.s:                                             ; preds = %bb.q
  %i.ae = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.s
  %i.ai = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ag, i64 noundef range(i64 1, 536870913) %i.aj) #37
  br label %common.resume

bb.t:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ak)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.u:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit12 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit12: ; preds = %bb.u
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.x:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ao)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.y:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.ap)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.z:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjyY8HP3IvQ6_12object_store4path5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.aq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.aa:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ar)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ab:                                            ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit14 unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
          to label %common.resume unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit14: ; preds = %bb.ab
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.as)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ae:                                            ; preds = %bb.a
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit16 unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %common.resume unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit16: ; preds = %bb.ae
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ah:                                            ; preds = %bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit18 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %common.resume unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit18: ; preds = %bb.ah
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ak:                                            ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit20 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit20: ; preds = %bb.ak
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.an:                                            ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit22 unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %common.resume unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit22: ; preds = %bb.an
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.aq:                                            ; preds = %bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit24 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit24: ; preds = %bb.aq
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.at:                                            ; preds = %bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %.val.i25 = load ptr, ptr %i.bk, align 8, !alias.scope !501, !nonnull !10, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !504)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !507)
  %i.bl = load i64, ptr %.val.i25, align 8, !range !510, !alias.scope !511, !noalias !501, !noundef !10
  switch i64 %i.bl, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i64 0, label %bb.au
    i64 1, label %bb.av
  ]
end_hunk_2
begin_hunk_3_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %.val.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !560, !nonnull !10, !noundef !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef 1) #37, !noalias !560
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #37
  resume { ptr, i32 } %i.f

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCseqDwI8vvjGQ_10serde_json5error9ErrorImplEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %bb.c
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef 40, i64 noundef 8) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5value5ValueECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = load i8, ptr %0, align 8, !range !561, !noundef !10
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.d
    i8 1, label %bb.d
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !562)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !568
  %.sroa.06.0.copyload.i.i = load ptr, ptr %i.c, align 8, !alias.scope !568 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.copyload.i.i, null
  br i1 %.not.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map8BTreeMapNtNtBP_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.58.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.58.0.copyload.i.i = load i64, ptr %.sroa.58.0..sroa_idx.i.i, align 8, !alias.scope !568
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.47.0.copyload.i.i = load i64, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !alias.scope !568 ; 2 uses
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !568
  %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.414.sroa.4.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !568
  %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.414.sroa.5.0..sroa.414.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !568
  %.sroa.616.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.616.0..sroa_idx.i.i, align 8, !noalias !568
  %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.06.0.copyload.i.i, ptr %.sroa.616.sroa.4.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !568
  %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.47.0.copyload.i.i, ptr %.sroa.616.sroa.5.0..sroa.616.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !568
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map8BTreeMapNtNtBP_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map8BTreeMapNtNtBP_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b, %bb.c
  %.sink1 = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]    ; 2 uses
  %.sroa.58.0.copyload.i.i.sink = phi i64 [ %.sroa.58.0.copyload.i.i, %bb.c ], [ 0, %bb.b ]
  store i64 %.sink1, ptr %i.a, align 8, !noalias !568
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink1, ptr %i.d, align 8, !noalias !568
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.58.0.copyload.i.i.sink, ptr %i.e, align 8, !noalias !568
  call fastcc void @_RNvXsy_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a), !noalias !568, !inline_history !569
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !568
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3map8BTreeMapNtNtBP_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a, %bb.a, %bb.a
  ret void

bb.e:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.f ], [ %i.j, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %bb.d

bb.h:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.h
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !570, !noundef !10 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775796
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 12
  switch i64 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i64 0, label %bb.b
    i64 1, label %bb.e
    i64 2, label %bb.i
    i64 3, label %bb.l
    i64 4, label %bb.o
    i64 5, label %bb.r
    i64 6, label %bb.u
    i64 8, label %bb.x
    i64 9, label %bb.aa
    i64 10, label %bb.ad
    i64 11, label %bb.ag
    i64 12, label %bb.aj
    i64 13, label %bb.am
    i64 14, label %bb.ap
    i64 15, label %bb.as
    i64 16, label %bb.av
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit33, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit30, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit27, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit24, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit19, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit9, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %.body, %bb.aw, %bb.at, %bb.aq, %bb.an, %bb.ah, %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.m, %bb.j, %bb.h, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.aw ], [ %i.g, %bb.c ], [ %i.q, %bb.h ], [ %i.x, %bb.j ], [ %i.aa, %bb.m ], [ %i.ad, %bb.p ], [ %i.ag, %bb.s ], [ %i.aj, %bb.v ], [ %i.am, %bb.y ], [ %i.ap, %bb.ab ], [ %i.as, %bb.ae ], [ %i.av, %bb.ah ], [ %i.ba, %bb.an ], [ %i.bd, %bb.aq ], [ %i.bg, %bb.at ], [ %i.q, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.i, align 8             ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.j, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.k = load ptr, ptr %.val1, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.k(ptr noundef nonnull %.val)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.m, i64 noundef range(i64 1, 536870913) %i.p) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.s, i64 noundef range(i64 1, 536870913) %i.v) #37
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
          to label %common.resume unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.l:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5 unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %bb.l
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.z)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.o:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit7 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit7: ; preds = %bb.o
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.r:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit9 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit9: ; preds = %bb.r
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.af)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.u:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11: ; preds = %bb.u
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.x:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit13 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit13: ; preds = %bb.x
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.al)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.aa:                                            ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit15 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit15: ; preds = %bb.aa
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ad:                                            ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17: ; preds = %bb.ad
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ag:                                            ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit19 unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au)
          to label %common.resume unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
end_hunk_3
begin_hunk_4_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.r)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.o:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit13 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit13: ; preds = %bb.o
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.r:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit15 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit15: ; preds = %bb.r
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.u:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17: ; preds = %bb.u
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.x:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !670)
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !670, !nonnull !10, !noundef !10 ; 3 uses
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error11SchemaErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ae)
          to label %bb.bj unwind label %.body18, !noalias !670

.body18:                                          ; preds = %bb.x
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef 40, i64 noundef 8) #37, !noalias !670
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val7 = load ptr, ptr %i.ag, align 8, !nonnull !10, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr nonnull %.val7) #38
          to label %common.resume unwind label %bb.be

bb.y:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit21 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %common.resume unwind label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit21: ; preds = %bb.y
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ab:                                            ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5 = load ptr, ptr %i.ak, align 8, !nonnull !10, !noundef !10 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !673)
  %i.al = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %.val.i.i = load ptr, ptr %i.al, align 8, !alias.scope !673, !noundef !10 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %.val1.i.i = load ptr, ptr %i.am, align 8, !alias.scope !673 ; 6 uses
  %i.an = icmp eq ptr %.val.i.i, null
  br i1 %i.an, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i) ]
  %i.ao = load ptr, ptr %.val1.i.i, align 8, !invariant.load !10, !noalias !673 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  invoke void %i.ao(ptr noundef nonnull %.val.i.i)
          to label %bb.ae unwind label %bb.af, !noalias !673

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ap = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !range !127, !invariant.load !10, !noalias !673 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.ae
  %i.as = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.at = load i64, ptr %i.as, align 8, !range !128, !invariant.load !10, !noalias !673
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.aq, i64 noundef range(i64 1, 536870913) %i.at) #37, !noalias !673
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.af:                                            ; preds = %bb.ad
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !127, !invariant.load !10, !noalias !673 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.ag, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.af
  %i.ay = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !range !128, !invariant.load !10, !noalias !673
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.aw, i64 noundef range(i64 1, 536870913) %i.az) #37, !noalias !673
  br label %bb.ag

bb.ag:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.af
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef 24, i64 noundef 8) #37
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ab, %bb.ae, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5, i64 noundef 24, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ah:                                            ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23 unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %common.resume unwind label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23: ; preds = %bb.ah
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ak:                                            ; preds = %bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.bd, align 8            ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.be, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.bf = load ptr, ptr %.val2, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.bf, null
  br i1 %.not.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.bf(ptr noundef nonnull %.val)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.bg = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.bh = load i64, ptr %i.bg, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.am
  %i.bj = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bh, i64 noundef range(i64 1, 536870913) %i.bk) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.an:                                            ; preds = %bb.al
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.an
  %i.bp = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.bn, i64 noundef range(i64 1, 536870913) %i.bq) #37
  br label %common.resume

bb.ao:                                            ; preds = %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %.body25 unwind label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.ao
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.br)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit27 unwind label %bb.bp

bb.ar:                                            ; preds = %bb.a
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit30 unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
          to label %common.resume unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit30: ; preds = %bb.ar
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bu)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.au:                                            ; preds = %bb.a
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common10diagnostic10DiagnosticEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bx)
          to label %bb.bs unwind label %bb.br

bb.av:                                            ; preds = %bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
          to label %common.resume unwind label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.av
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.by)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ay:                                            ; preds = %bb.a
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !679)
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !682, !nonnull !10, !noundef !10
  %i.cd = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !682
  %i.ce = icmp eq i64 %i.cd, 1
  br i1 %i.ce, label %bb.az, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.az:                                            ; preds = %bb.ay
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cb) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ba:                                            ; preds = %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef 32, i64 noundef 8) #37, !noalias !664
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cg = load i64, ptr %i.cf, align 8, !range !158, !alias.scope !683, !noundef !10
  %i.ch = icmp eq i64 %i.cg, -9223372036854775808
  br i1 %i.ch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
          to label %common.resume unwind label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.bb
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cf)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i32, %bb.bf, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.ba, %bb.az, %bb.ay, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.am, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit36, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit30, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit21, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit15, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit13, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11, %bb.j, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtCsjyY8HP3IvQ6_12object_store5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  ret void

bb.be:                                            ; preds = %.body18, %bb.br, %.body25, %.body8, %.body
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.bf:                                            ; preds = %bb.k
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.o, i64 noundef 32, i64 noundef 8) #37, !noalias !667
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.cm = load i64, ptr %i.cl, align 8, !range !158, !alias.scope !686, !noundef !10
  %i.cn = icmp eq i64 %i.cm, -9223372036854775808
  br i1 %i.cn, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i32 unwind label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.co = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl)
          to label %common.resume unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i32: ; preds = %bb.bg
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.cl)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.bj:                                            ; preds = %bb.x
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef 40, i64 noundef 8) #37, !noalias !670
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val6 = load ptr, ptr %i.cq, align 8, !nonnull !10, !noundef !10 ; 6 uses
  %i.cr = load i64, ptr %.val6, align 8, !range !158, !alias.scope !689, !noundef !10
  %i.cs = icmp eq i64 %i.cr, -9223372036854775808
  br i1 %i.cs, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val6)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ct = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val6)
          to label %bb.bo unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.bk
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val6)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxINtNtB4_6option6OptionNtNtBL_6string6StringEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.bn

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bl
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.cv, %bb.bn ], [ %i.ct, %bb.bl ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef 24, i64 noundef 8) #37
  br label %common.resume

end_hunk_4
begin_hunk_5_@_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core5table7builder16DeltaTableConfigECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc7raw_vec6RawVechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i.i: ; preds = %bb.j
  resume { ptr, i32 } %i.q

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i: ; preds = %bb.i
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore7storage7runtime9IORuntimeEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !732, !noundef !10 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775788
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775790
  %i.d = icmp ugt i64 %i.a, -9223372036854775791
  %i.e = select i1 %i.d, i64 %i.c, i64 2
  switch i64 %i.e, label %bb.b [
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 1, label %bb.e
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 5, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 6, label %bb.k
    i64 7, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.r

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.t, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.n, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.j, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a, %bb.a, %bb.a
  ret void

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %.val.i = load ptr, ptr %i.i, align 8, !alias.scope !733, !nonnull !10, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !739)
  %i.j = load i64, ptr %.val.i, align 8, !range !510, !alias.scope !742, !noalias !733, !noundef !10
  switch i64 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i64 0, label %bb.f
    i64 1, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !742, !noalias !733, !noundef !10 ; 2 uses
  %i.l = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.m, align 8, !alias.scope !742, !noalias !733, !nonnull !10, !noundef !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #37, !noalias !743
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.g:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.h, !noalias !733

common.resume:                                    ; preds = %.body, %bb.u, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.p, %bb.l, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.h ], [ %i.ai, %bb.u ], [ %i.r, %bb.l ], [ %i.v, %bb.p ], [ %i.ai, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #37, !noalias !733
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.e, %bb.f, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #37, !noalias !733
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.i:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.j:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.k:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.k
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.u = load i64, ptr %i.t, align 8, !range !744, !alias.scope !745, !noundef !10
  %switch1.i = icmp slt i64 %i.u, -9223372036854775783
  br i1 %switch1.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.o
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.r:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.r ], [ %i.g, %bb.c ]
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val2 = load ptr, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val3 = load ptr, ptr %i.z, align 8, !nonnull !10, !align !175, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val2, ptr nonnull %.val3) #38
          to label %common.resume unwind label %bb.v

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val = load ptr, ptr %i.aa, align 8            ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val1 = load ptr, ptr %i.ab, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.ac = load ptr, ptr %.val1, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.ac, null
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ac(ptr noundef nonnull %.val)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.t
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.u:                                             ; preds = %bb.s
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #37
  br label %common.resume

bb.v:                                             ; preds = %.body
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !748, !noundef !10 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775786
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, 9223372036854775790
  %i.d = icmp ugt i64 %i.a, -9223372036854775791
  %i.e = select i1 %i.d, i64 %i.c, i64 4
  switch i64 %i.e, label %bb.b [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.i
    i64 3, label %bb.m
    i64 4, label %bb.n
    i64 5, label %bb.o
    i64 6, label %bb.r
    i64 7, label %bb.u
    i64 8, label %bb.x
    i64 9, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 10, label %bb.aa
    i64 11, label %bb.ad
    i64 12, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 13, label %bb.ag
    i64 14, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 15, label %bb.ak
    i64 16, label %bb.an
    i64 17, label %bb.aq
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.ba

bb.e:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsfYVtenZkBsn_12arrow_schema5error10ArrowErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.i)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.f:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.ay, %.body28, %.body35, %.body, %bb.au, %bb.ar, %bb.ae, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p, %bb.l, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.g, %bb.aj
  %common.resume.op = phi { ptr, i32 } [ %i.bo, %.body35 ], [ %i.k, %bb.g ], [ %i.u, %bb.l ], [ %i.ac, %bb.p ], [ %i.af, %bb.s ], [ %i.ai, %bb.v ], [ %i.al, %bb.y ], [ %i.ao, %bb.ab ], [ %i.az, %bb.aj ], [ %i.ar, %bb.ae ], [ %i.br, %bb.ar ], [ %i.bu, %bb.au ], [ %i.u, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %eh.lpad-body, %.body ], [ %i.bg, %.body28 ], [ %i.by, %bb.ay ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5: ; preds = %bb.f
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.i:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.m, align 8             ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val2 = load ptr, ptr %i.n, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.o = load ptr, ptr %.val2, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.o(ptr noundef nonnull %.val)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.q = load i64, ptr %i.p, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.k
  %i.s = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.t = load i64, ptr %i.s, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.q, i64 noundef range(i64 1, 536870913) %i.t) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.l:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.l
  %i.y = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.z = load i64, ptr %i.y, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.w, i64 noundef range(i64 1, 536870913) %i.z) #37
  br label %common.resume

bb.m:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4tdlwR1I4n2_7parquet6errors12ParquetErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aa)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %bb.a
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsjyY8HP3IvQ6_12object_store5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.o:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit8 unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit8: ; preds = %bb.o
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.r:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11 unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %common.resume unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11: ; preds = %bb.r
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.u:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit14 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit14: ; preds = %bb.u
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ah)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.x:                                             ; preds = %bb.a
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17 unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
          to label %common.resume unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17: ; preds = %bb.x
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ak)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.k, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit46, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit43, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit40, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit20, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit17, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit14, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit11, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit8, %bb.n, %bb.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit5, %bb.e, %bb.a, %bb.a, %bb.a
  ret void

bb.aa:                                            ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit20 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
          to label %common.resume unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit20: ; preds = %bb.aa
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.an)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ad:                                            ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
          to label %common.resume unwind label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit23: ; preds = %bb.ad
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ag:                                            ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %.val.i = load ptr, ptr %i.at, align 8, !alias.scope !749, !nonnull !10, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !752)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !755)
  %i.au = load i64, ptr %.val.i, align 8, !range !510, !alias.scope !758, !noalias !749, !noundef !10
  switch i64 %i.au, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i64 0, label %bb.ah
    i64 1, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.av = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %.val1.i.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !758, !noalias !749, !noundef !10 ; 2 uses
  %i.aw = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.aw, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.ah
  %i.ax = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.ax, align 8, !alias.scope !758, !noalias !749, !nonnull !10, !noundef !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %.val1.i.i.i.i, i64 noundef 1) #37, !noalias !759
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ai:                                            ; preds = %bb.ag
  %i.ay = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ay)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.aj, !noalias !749

bb.aj:                                            ; preds = %bb.ai
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #37, !noalias !749
  br label %common.resume

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCseqDwI8vvjGQ_10serde_json5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ag, %bb.ah, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.ai
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef 40, i64 noundef 8) #37, !noalias !749
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ak:                                            ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  %.val.i24 = load ptr, ptr %i.ba, align 8, !alias.scope !760, !nonnull !10, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !766)
  %i.bb = load i64, ptr %.val.i24, align 8, !range !510, !alias.scope !769, !noalias !760, !noundef !10
  switch i64 %i.bb, label %bb.at [
    i64 0, label %bb.al
    i64 1, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.bc = getelementptr inbounds nuw i8, ptr %.val.i24, i64 16
  %.val1.i.i.i.i25 = load i64, ptr %i.bc, align 8, !alias.scope !769, !noalias !760, !noundef !10 ; 2 uses
  %i.bd = icmp eq i64 %.val1.i.i.i.i25, 0
  br i1 %i.bd, label %bb.at, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i26

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i26: ; preds = %bb.al
  %i.be = getelementptr inbounds nuw i8, ptr %.val.i24, i64 8
  %.val.i.i.i.i27 = load ptr, ptr %i.be, align 8, !alias.scope !769, !noalias !760, !nonnull !10, !noundef !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i27, i64 noundef %.val1.i.i.i.i25, i64 noundef 1) #37, !noalias !770
  br label %bb.at

bb.am:                                            ; preds = %bb.ak
  %i.bf = getelementptr inbounds nuw i8, ptr %.val.i24, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bf)
          to label %bb.at unwind label %.body28, !noalias !760

.body28:                                          ; preds = %bb.am
  %i.bg = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i24, i64 noundef 40, i64 noundef 8) #37, !noalias !760
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh) #38
          to label %common.resume unwind label %bb.aw

bb.an:                                            ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !771)
  %.val.i31 = load ptr, ptr %i.bi, align 8, !alias.scope !771, !nonnull !10, !noundef !10 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !777)
  %i.bj = load i64, ptr %.val.i31, align 8, !range !510, !alias.scope !780, !noalias !771, !noundef !10
  switch i64 %i.bj, label %bb.ax [
    i64 0, label %bb.ao
    i64 1, label %bb.ap
  ]

bb.ao:                                            ; preds = %bb.an
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i31, i64 16
  %.val1.i.i.i.i32 = load i64, ptr %i.bk, align 8, !alias.scope !780, !noalias !771, !noundef !10 ; 2 uses
  %i.bl = icmp eq i64 %.val1.i.i.i.i32, 0
  br i1 %i.bl, label %bb.ax, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i33

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i33: ; preds = %bb.ao
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i31, i64 8
  %.val.i.i.i.i34 = load ptr, ptr %i.bm, align 8, !alias.scope !780, !noalias !771, !nonnull !10, !noundef !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i34, i64 noundef %.val1.i.i.i.i32, i64 noundef 1) #37, !noalias !781
  br label %bb.ax

bb.ap:                                            ; preds = %bb.an
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i31, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bn)
          to label %bb.ax unwind label %.body35, !noalias !771

.body35:                                          ; preds = %bb.ap
  %i.bo = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i31, i64 noundef 40, i64 noundef 8) #37, !noalias !771
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bp) #38
          to label %common.resume unwind label %bb.aw

bb.aq:                                            ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit40 unwind label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
          to label %common.resume unwind label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit40: ; preds = %bb.aq
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bq)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.at:                                            ; preds = %bb.am, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i26, %bb.al, %bb.ak
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i24, i64 noundef 40, i64 noundef 8) #37, !noalias !760
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit43 unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
          to label %common.resume unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit43: ; preds = %bb.at
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bt)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.aw:                                            ; preds = %.body, %.body35, %.body28
  %i.bw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.ax:                                            ; preds = %bb.ap, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i33, %bb.ao, %bb.an
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i31, i64 noundef 40, i64 noundef 8) #37, !noalias !771
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit46 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.by = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %common.resume unwind label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit46: ; preds = %bb.ax
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ba:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.ba
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.ba ], [ %i.g, %bb.c ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16) %i.cb) #38
          to label %common.resume unwind label %bb.aw

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema8DataTypeECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(16) %i.cc)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs2pqxYH9ZEk8_3std2io5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.a = ptrtoint ptr %.val to i64
  %i.b = and i64 %i.a, 3
  switch i64 %i.b, label %default.unreachable [
    i64 2, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 3, label %bb.b
    i64 0, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit
    i64 1, label %bb.c
  ], !prof !782

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ult ptr %.val, inttoptr (i64 180388626432 to ptr)
  tail call void @llvm.assume(i1 %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %.val, i64 -1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %.val.i.i.i.i = load ptr, ptr %i.d, align 8     ; 5 uses
  %i.e = getelementptr i8, ptr %.val, i64 7
  %.val1.i.i.i.i = load ptr, ptr %i.e, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.f = load ptr, ptr %.val1.i.i.i.i, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  invoke void %i.f(ptr noundef nonnull %.val.i.i.i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.h, i64 noundef range(i64 1, 536870913) %i.k) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.g, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i: ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.n, i64 noundef range(i64 1, 536870913) %i.q) #37
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i.i, %bb.f
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #37
  resume { ptr, i32 } %i.l

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i, %bb.e
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef 24, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std2io5error14repr_bitpacked4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.a, %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs2pqxYH9ZEk8_3std2io5error6CustomEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2 = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.b = icmp eq i64 %.val2, 0
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val = load ptr, ptr %i.c, align 8, !nonnull !10, !noundef !10
  %i.d = shl nuw nsw i64 %.val2, 2
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.d, i64 noundef 2) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

.body:                                            ; preds = %bb.e, %bb.b
  %.pn = phi { ptr, i32 } [ %i.f, %bb.b ], [ %i.i, %bb.e ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.h) #38
          to label %common.resume unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  ret void

bb.h:                                             ; preds = %.body
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5retry10RetryErrorEBM_(ptr noalias noundef align 8 dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !783, !align !175, !noundef !10
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.e

bb.e:                                             ; preds = %.body
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !786, !align !175, !noundef !10
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit1, label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsgO6CtM78C4N_7reqwest5error5ErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.g)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit1

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit1: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.f
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgO6CtM78C4N_7reqwest5error5ErrorEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCsjyY8HP3IvQ6_12object_store4path5parts11InvalidPartECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %.body unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.a
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.d

bb.d:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.a, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #38
          to label %common.resume unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3 unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %.body, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.e ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit3: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
  ret void

bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16conflict_checker19CommitConflictErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !789, !noundef !10 ; 3 uses
  %i.b = icmp ne i64 %i.a, -9223372036854775803
  tail call void @llvm.assume(i1 %i.b)
  %i.c = xor i64 %i.a, -9223372036854775808
  %i.d = icmp slt i64 %i.a, 0
  %i.e = select i1 %i.d, i64 %i.c, i64 5
  switch i64 %i.e, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit [
    i64 5, label %bb.b
    i64 8, label %bb.e
    i64 9, label %bb.i
  ]

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i7, %bb.k, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

common.resume:                                    ; preds = %bb.l, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i5, %bb.h, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.h ], [ %i.f, %bb.c ], [ %i.p, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i ], [ %i.ad, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i5 ], [ %i.ad, %bb.l ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.b
  tail call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load ptr, ptr %i.h, align 8            ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load ptr, ptr %i.i, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.j = load ptr, ptr %.val3, align 8, !invariant.load !10 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  invoke void %i.j(ptr noundef nonnull %.val2)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.l, i64 noundef range(i64 1, 536870913) %i.o) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.h:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.r = load i64, ptr %i.q, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i: ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.u = load i64, ptr %i.t, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.r, i64 noundef range(i64 1, 536870913) %i.u) #37
  br label %common.resume

bb.i:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.v, align 8             ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.w, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.x = load ptr, ptr %.val1, align 8, !invariant.load !10 ; 2 uses
  %.not.i4 = icmp eq ptr %i.x, null
  br i1 %.not.i4, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.x(ptr noundef nonnull %.val)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.z = load i64, ptr %i.y, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i7

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i7: ; preds = %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.z, i64 noundef range(i64 1, 536870913) %i.ac) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SyncNtB1B_4SendEL_EECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.l:                                             ; preds = %bb.j
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %common.resume, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i5

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i5: ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.af, i64 noundef range(i64 1, 536870913) %i.ai) #37
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error9JoinErrorECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.a, align 8, !noundef !10 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1 = load ptr, ptr %i.b, align 8            ; 6 uses
  %i.c = icmp eq ptr %.val, null
  br i1 %i.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.f, i64 noundef range(i64 1, 536870913) %i.i) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, 536870913) %i.o) #37
  br label %_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i

_RNvXs8_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxDNtNtCsbvkFyIu7lgC_4core3any3AnyNtNtBM_6marker4SendEL_ENtNtNtBM_3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity.exit5.i.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i, %bb.e
  resume { ptr, i32 } %i.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCskQDtHcQtBkN_5tokio7runtime4task5error4ReprECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCs2pqxYH9ZEk8_3std3sys9backtrace28___rust_begin_short_backtraceNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB1i_19UnityCatalogBuilder17execute_uc_futureNCNvB1e_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtB6_11collections4hash3map7HashMapB3S_B3S_EENtB1i_17UnityCatalogErrorEEs_00uEB1i_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(2632) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2616 x i8], align 8              ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !790)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !790
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !790, !nonnull !10, !align !175, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !790
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2616) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(2616) %i.e, i64 2616, i1 false)
  call void @_RINvMNtNtCskQDtHcQtBkN_5tokio7runtime6handleNtB3_6Handle8block_onNCNvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB19_19UnityCatalogBuilder25get_uc_location_and_token0EB19_(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(2616) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !790
  %i.f = load ptr, ptr %0, align 8, !alias.scope !790, !nonnull !10, !align !175, !noundef !10 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !range !26, !alias.scope !793, !noalias !790, !noundef !10 ; 2 uses
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %_RNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtBa_19UnityCatalogBuilder17execute_uc_futureNCNvB6_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2I_B2I_EENtBa_17UnityCatalogErrorEEs_00Ba_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq i64 %i.g, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  br i1 %i.i, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i unwind label %bb.d, !noalias !790

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %.body.i.i.i.i unwind label %bb.e, !noalias !790

bb.e:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !790
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i: ; preds = %bb.c
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBH_BH_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.f, !noalias !790

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.f, %bb.d
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.m, %bb.f ], [ %i.k, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.n)
          to label %.body.i unwind label %bb.g, !noalias !790

bb.g:                                             ; preds = %.body.i.i.i.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !790
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBH_BH_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.p)
          to label %_RNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtBa_19UnityCatalogBuilder17execute_uc_futureNCNvB6_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2I_B2I_EENtBa_17UnityCatalogErrorEEs_00Ba_.exit unwind label %bb.i, !noalias !790

bb.h:                                             ; preds = %bb.b
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsgO8S5jLFugx_23deltalake_catalog_unity17UnityCatalogErrorEBI_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.j)
          to label %_RNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtBa_19UnityCatalogBuilder17execute_uc_futureNCNvB6_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2I_B2I_EENtBa_17UnityCatalogErrorEEs_00Ba_.exit unwind label %bb.i, !noalias !790

bb.i:                                             ; preds = %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBH_BH_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.i, %.body.i.i.i.i
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.q, %bb.i ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !790
  resume { ptr, i32 } %eh.lpad-body.i

_RNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtBa_19UnityCatalogBuilder17execute_uc_futureNCNvB6_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2I_B2I_EENtBa_17UnityCatalogErrorEEs_00Ba_.exit: ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapBH_BH_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.f, ptr noundef nonnull align 8 dereferenceable(80) %i.b, i64 80, i1 false), !noalias !790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !790
  call void asm sideeffect "", "~{memory}"() #37, !srcloc !796
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtCs2pqxYH9ZEk8_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNCINvMs4_CsgO8S5jLFugx_23deltalake_catalog_unityNtB26_19UnityCatalogBuilder17execute_uc_futureNCNvB22_25get_uc_location_and_token0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtNtNtB6_11collections4hash3map7HashMapB4G_B4G_EENtB26_17UnityCatalogErrorEEs_00uEs_000uEB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !797
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RNvMs_NtNtCs2pqxYH9ZEk8_3std6thread9spawnhookNtB4_15ChildSpawnHooks3run(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !797
  call void asm sideeffect "", "~{memory}"() #37, !srcloc !796
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef range(i16 0, -32768) i16 @_RINvNtNtCs4j34XAPZOn0_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 13 uses
  %i.d = load i64, ptr %0, align 8, !range !26, !noundef !10
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.513.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.g = load <2 x i64>, ptr %i.f, align 8        ; 3 uses
  %i.h = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.i = xor <2 x i64> %i.h, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = shufflevector <2 x i64> %i.g, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.k = xor <2 x i64> %i.j, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.k, ptr %.sroa.513.0..sroa_idx, align 16
  store <2 x i64> %i.g, ptr %.sroa.7.0..sroa_idx, align 16
  %.sroa.915.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx, i8 0, i64 24, i1 false)
  %i.l = load ptr, ptr %1, align 8, !noalias !800, !noundef !10 ; 2 uses
  %i.m = icmp ne ptr %i.l, null
end_hunk_5
begin_hunk_6_@_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneReECsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
  %i.d = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.e = xor <2 x i64> %i.d, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.e, ptr %i.b, align 16, !alias.scope !908
  %i.f = shufflevector <2 x i64> %i.c, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.g = xor <2 x i64> %i.f, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.g, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !908
  store <2 x i64> %i.c, ptr %.sroa.711.0..sroa_idx.i, align 16, !alias.scope !908
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !908
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) #39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !911
  store i8 -1, ptr %i.a, align 1, !noalias !911
  call fastcc void @_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1) #39, !noalias !923
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !911
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 16, !alias.scope !924
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !924
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 16, !alias.scope !924 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !924
  %i.h = load i64, ptr %.sroa.913.0..sroa_idx.i, align 16, !alias.scope !924, !noundef !10
  %i.i = shl i64 %i.h, 56
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !924, !noundef !10
  %i.l = or i64 %i.i, %i.k                        ; 2 uses
  %i.m = xor i64 %i.l, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.n = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.o = add i64 %i.m, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.q = xor i64 %i.p, %i.n                       ; 3 uses
  %i.r = tail call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 16)
  %i.s = xor i64 %i.r, %i.o                       ; 3 uses
  %i.t = tail call noundef i64 @llvm.fshl.i64(i64 %i.n, i64 %i.n, i64 32)
  %i.u = add i64 %i.o, %i.q                       ; 3 uses
  %i.v = add i64 %i.s, %i.t                       ; 2 uses
  %i.w = tail call noundef i64 @llvm.fshl.i64(i64 %i.q, i64 %i.q, i64 17)
  %i.x = xor i64 %i.u, %i.w                       ; 3 uses
  %i.y = tail call noundef i64 @llvm.fshl.i64(i64 %i.s, i64 %i.s, i64 21)
  %i.z = xor i64 %i.y, %i.v                       ; 3 uses
  %i.aa = tail call noundef i64 @llvm.fshl.i64(i64 %i.u, i64 %i.u, i64 32)
  %i.ab = xor i64 %i.v, %i.l
  %i.ac = xor i64 %i.aa, 255
  %i.ad = add i64 %i.ab, %i.x                     ; 3 uses
  %i.ae = add i64 %i.z, %i.ac                     ; 2 uses
  %i.af = tail call noundef i64 @llvm.fshl.i64(i64 %i.x, i64 %i.x, i64 13)
  %i.ag = xor i64 %i.ad, %i.af                    ; 3 uses
  %i.ah = tail call noundef i64 @llvm.fshl.i64(i64 %i.z, i64 %i.z, i64 16)
  %i.ai = xor i64 %i.ah, %i.ae                    ; 3 uses
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 32)
  %i.ak = add i64 %i.ag, %i.ae                    ; 3 uses
  %i.al = add i64 %i.ai, %i.aj                    ; 2 uses
  %i.am = tail call noundef i64 @llvm.fshl.i64(i64 %i.ag, i64 %i.ag, i64 17)
  %i.an = xor i64 %i.ak, %i.am                    ; 3 uses
  %i.ao = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 21)
  %i.ap = xor i64 %i.ao, %i.al                    ; 3 uses
  %i.aq = tail call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 32)
  %i.ar = add i64 %i.an, %i.al                    ; 3 uses
  %i.as = add i64 %i.ap, %i.aq                    ; 2 uses
  %i.at = tail call noundef i64 @llvm.fshl.i64(i64 %i.an, i64 %i.an, i64 13)
  %i.au = xor i64 %i.at, %i.ar                    ; 3 uses
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 16)
  %i.aw = xor i64 %i.av, %i.as                    ; 3 uses
  %i.ax = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 32)
  %i.ay = add i64 %i.au, %i.as                    ; 3 uses
  %i.az = add i64 %i.aw, %i.ax                    ; 2 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 17)
  %i.bb = xor i64 %i.ba, %i.ay                    ; 3 uses
  %i.bc = tail call noundef i64 @llvm.fshl.i64(i64 %i.aw, i64 %i.aw, i64 21)
  %i.bd = xor i64 %i.bc, %i.az                    ; 3 uses
  %i.be = tail call noundef i64 @llvm.fshl.i64(i64 %i.ay, i64 %i.ay, i64 32)
  %i.bf = add i64 %i.bb, %i.az
  %i.bg = add i64 %i.bd, %i.be                    ; 2 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 13)
  %i.bi = xor i64 %i.bh, %i.bf                    ; 3 uses
  %i.bj = tail call noundef i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bd, i64 16)
  %i.bk = xor i64 %i.bj, %i.bg                    ; 2 uses
  %i.bl = add i64 %i.bi, %i.bg                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 17)
  %i.bn = tail call noundef i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 21)
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 32)
  %i.bp = xor i64 %i.bn, %i.bm
  %i.bq = xor i64 %i.bp, %i.bo
  %i.br = xor i64 %i.bq, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.br
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_17read_commit_entry0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !457, !noundef !10
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !10, !align !175, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !10
  %.val5 = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val6 = load ptr, ptr %i.i, align 8, !nonnull !10, !align !175, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !128, !invariant.load !10
  %i.l = add nsw i64 %i.k, -1
  %i.m = and i64 %i.l, -16
  %i.n = getelementptr inbounds nuw i8, ptr %.val5, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.val6, i64 80
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !10, !nonnull !10
  %i.r = invoke { ptr, ptr } %i.q(ptr noundef nonnull %i.o, i64 noundef %i.h)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.t, ptr %i.v, align 8
  br label %bb.h

.body:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.n, %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.w, %bb.g ], [ %i.ai, %bb.n ], [ %i.ai, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #35
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #35
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.y, align 8
  %i.x = getelementptr i8, ptr %1, i64 24
  %.val4 = load ptr, ptr %i.x, align 8, !nonnull !10, !align !175, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val3, ptr nonnull %.val4) #38
          to label %.body unwind label %bb.o

bb.h:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultINtNtB8_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.b, align 16, !range !929, !noundef !10
  %i.aa = icmp eq i64 %i.z, -9223372036854775710
  br i1 %i.aa, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val = load ptr, ptr %i.y, align 8             ; 5 uses
  %i.ab = getelementptr i8, ptr %1, i64 24
  %.val2 = load ptr, ptr %i.ab, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.ac = load ptr, ptr %.val2, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.ac(ptr noundef nonnull %.val)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val2, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !128, !invariant.load !10
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #37
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %common.ret

bb.o:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_18abort_commit_entry0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 1                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 82 ; 3 uses
  %i.g = load i8, ptr %i.f, align 2, !range !457, !noundef !10
  switch i8 %i.g, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.b
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !align !175, !noundef !10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.i, align 1
  store i8 1, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %.val = load ptr, ptr %i.k, align 8, !nonnull !10, !noundef !10
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %.val2 = load ptr, ptr %i.o, align 8, !nonnull !10, !align !175, !noundef !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !128, !invariant.load !10
  %i.r = add nsw i64 %i.q, -1
  %i.s = and i64 %i.r, -16
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.val2, i64 96
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !10, !nonnull !10
  %i.x = invoke { ptr, ptr } %i.w(ptr noundef nonnull %i.u, i64 noundef %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.d)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = extractvalue { ptr, ptr } %i.x, 0
  %i.aa = extractvalue { ptr, ptr } %i.x, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.aa, ptr %i.ac, align 8
  br label %bb.i

.body:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.o, %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.ag, %bb.h ], [ %i.as, %bb.o ], [ %i.as, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !930, !noundef !10
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.r, label %bb.q

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #35
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @34) #35
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.ai, align 8
  %i.ah = getelementptr i8, ptr %1, i64 56
  %.val6 = load ptr, ptr %i.ah, align 8, !nonnull !10, !align !175, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val5, ptr nonnull %.val6) #38
          to label %.body unwind label %bb.p

bb.i:                                             ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %i.b, align 8, !range !931, !noundef !10
  %i.ak = icmp eq i64 %i.aj, -9223372036854775780
  br i1 %i.ak, label %bb.k, label %bb.l

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.k
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ 3, %bb.k ]
  store i8 %storemerge, ptr %i.f, align 2
  ret void

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775780, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.ai, align 8           ; 5 uses
  %i.al = getelementptr i8, ptr %1, i64 56
  %.val4 = load ptr, ptr %i.al, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.am = load ptr, ptr %.val4, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.am(ptr noundef nonnull %.val3)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.ao, i64 noundef range(i64 1, 536870913) %i.ar) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !128, !invariant.load !10
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #37
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 0, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %common.ret

bb.p:                                             ; preds = %bb.h, %bb.t, %bb.r
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.q:                                             ; preds = %bb.r, %.body
  store i8 0, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.bb = load i8, ptr %i.ba, align 1, !range !930, !noundef !10
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.t, label %bb.s

bb.r:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %i.e) #38
          to label %bb.q unwind label %bb.p

bb.s:                                             ; preds = %bb.t, %bb.q
  store i8 2, ptr %i.f, align 2
  resume { ptr, i32 } %.pn

bb.t:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %1) #38
          to label %bb.s unwind label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_18get_latest_version0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !457, !noundef !10
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !10, !align !175, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !10
  %.val = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  %i.i = getelementptr i8, ptr %i.f, i64 8
  %.val2 = load ptr, ptr %i.i, align 8, !nonnull !10, !align !175, !noundef !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.k = load i64, ptr %i.j, align 8, !range !128, !invariant.load !10
  %i.l = add nsw i64 %i.k, -1
  %i.m = and i64 %i.l, -16
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 104
  %i.q = load ptr, ptr %i.p, align 8, !invariant.load !10, !nonnull !10
  %i.r = invoke { ptr, ptr } %i.q(ptr noundef nonnull %i.o, i64 noundef %i.h)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.s = extractvalue { ptr, ptr } %i.r, 0
  %i.t = extractvalue { ptr, ptr } %i.r, 1
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.s, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.t, ptr %i.v, align 8
  br label %bb.h

.body:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.n, %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.w, %bb.g ], [ %i.ai, %bb.n ], [ %i.ai, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #35
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @35) #35
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.y, align 8
  %i.x = getelementptr i8, ptr %1, i64 24
  %.val6 = load ptr, ptr %i.x, align 8, !nonnull !10, !align !175, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val5, ptr nonnull %.val6) #38
          to label %.body unwind label %bb.o

bb.h:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.z = load i64, ptr %i.b, align 16, !range !929, !noundef !10
  %i.aa = icmp eq i64 %i.z, -9223372036854775710
  br i1 %i.aa, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.y, align 8            ; 5 uses
  %i.ab = getelementptr i8, ptr %1, i64 24
  %.val4 = load ptr, ptr %i.ab, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.ac = load ptr, ptr %.val4, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.ac(ptr noundef nonnull %.val3)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.an = load i64, ptr %i.am, align 8, !range !128, !invariant.load !10
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #37
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultxNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %common.ret

bb.o:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_18write_commit_entry0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 2 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 1                ; 2 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 82 ; 3 uses
  %i.g = load i8, ptr %i.f, align 2, !range !457, !noundef !10
  switch i8 %i.g, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.b
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !10, !align !175, !noundef !10 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i64, ptr %i.l, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 0, ptr %i.i, align 1
  store i8 1, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(16) %i.n, i64 16, i1 false)
  %.val = load ptr, ptr %i.k, align 8, !nonnull !10, !noundef !10
  %i.o = getelementptr i8, ptr %i.k, i64 8
  %.val2 = load ptr, ptr %i.o, align 8, !nonnull !10, !align !175, !noundef !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !range !128, !invariant.load !10
  %i.r = add nsw i64 %i.q, -1
  %i.s = and i64 %i.r, -16
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 0, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.val2, i64 88
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !10, !nonnull !10
  %i.x = invoke { ptr, ptr } %i.w(ptr noundef nonnull %i.u, i64 noundef %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c, ptr noalias noundef nonnull align 1 captures(address) dereferenceable(16) %i.d)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.body

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = extractvalue { ptr, ptr } %i.x, 0
  %i.aa = extractvalue { ptr, ptr } %i.x, 1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 48
  store ptr %i.z, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  store ptr %i.aa, ptr %i.ac, align 8
  br label %bb.i

.body:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.o, %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.y, %bb.d ], [ %i.ag, %bb.h ], [ %i.as, %bb.o ], [ %i.as, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 8, !range !930, !noundef !10
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.r, label %bb.q

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #35
  unreachable

bb.g:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #35
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.ai, align 8
  %i.ah = getelementptr i8, ptr %1, i64 56
  %.val6 = load ptr, ptr %i.ah, align 8, !nonnull !10, !align !175, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val5, ptr nonnull %.val6) #38
          to label %.body unwind label %bb.p

bb.i:                                             ; preds = %bb.b, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.h

bb.j:                                             ; preds = %bb.i
  %i.aj = load i64, ptr %i.b, align 8, !range !931, !noundef !10
  %i.ak = icmp eq i64 %i.aj, -9223372036854775780
  br i1 %i.ak, label %bb.k, label %bb.l

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.k
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ 3, %bb.k ]
  store i8 %storemerge, ptr %i.f, align 2
  ret void

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775780, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %common.ret

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.ai, align 8           ; 5 uses
  %i.al = getelementptr i8, ptr %1, i64 56
  %.val4 = load ptr, ptr %i.al, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.am = load ptr, ptr %.val4, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.am(ptr noundef nonnull %.val3)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.an = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.n
  %i.aq = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.ao, i64 noundef range(i64 1, 536870913) %i.ar) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.o:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.au = load i64, ptr %i.at, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.o
  %i.aw = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !range !128, !invariant.load !10
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.au, i64 noundef range(i64 1, 536870913) %i.ax) #37
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel11transaction16TransactionErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 80
  store i8 0, ptr %i.ay, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.a, i64 72, i1 false)
  br label %common.ret

bb.p:                                             ; preds = %bb.h, %bb.t, %bb.r
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.q:                                             ; preds = %bb.r, %.body
  store i8 0, ptr %i.ad, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 81
  %i.bb = load i8, ptr %i.ba, align 1, !range !930, !noundef !10
  %i.bc = trunc nuw i8 %i.bb to i1
  br i1 %i.bc, label %bb.t, label %bb.s

bb.r:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %i.e) #38
          to label %bb.q unwind label %bb.p

bb.s:                                             ; preds = %bb.t, %bb.q
  store i8 2, ptr %i.f, align 2
  resume { ptr, i32 } %.pn

bb.t:                                             ; preds = %bb.q
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs14kWLkQVSKO_14deltalake_core8logstore13CommitOrBytesECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(32) %1) #38
          to label %bb.s unwind label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_23is_delta_table_location0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !457, !noundef !10
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !10, !align !175, !noundef !10 ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val2 = load ptr, ptr %i.g, align 8, !nonnull !10, !align !175, !noundef !10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !128, !invariant.load !10
  %i.j = add nsw i64 %i.i, -1
  %i.k = and i64 %i.j, -16
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !10, !nonnull !10
  %i.p = invoke { ptr, ptr } %i.o(ptr noundef nonnull %i.m)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.p, 0
  %i.r = extractvalue { ptr, ptr } %i.p, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.r, ptr %i.t, align 8
  br label %bb.h

.body:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.n, %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.u, %bb.g ], [ %i.ag, %bb.n ], [ %i.ag, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #35
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @37) #35
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.w, align 8
  %i.v = getelementptr i8, ptr %1, i64 16
  %.val6 = load ptr, ptr %i.v, align 8, !nonnull !10, !align !175, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val5, ptr nonnull %.val6) #38
          to label %.body unwind label %bb.o

bb.h:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr %i.b, align 16, !range !929, !noundef !10
  %i.y = icmp eq i64 %i.x, -9223372036854775710
  br i1 %i.y, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.w, align 8            ; 5 uses
  %i.z = getelementptr i8, ptr %1, i64 16
  %.val4 = load ptr, ptr %i.z, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.aa = load ptr, ptr %.val4, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.aa(ptr noundef nonnull %.val3)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !128, !invariant.load !10
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #37
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultbNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %common.ret

bb.o:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs8_NtCs14kWLkQVSKO_14deltalake_core8logstoreINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtB7_8LogStoreEL_EB1l_7refresh0CsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 16 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef align 8 dereferenceable(32) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 16               ; 2 uses
  %i.b = alloca [96 x i8], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load i8, ptr %i.c, align 8, !range !457, !noundef !10
  switch i8 %i.d, label %default.unreachable9 [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.h
  ]

default.unreachable9:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !nonnull !10, !align !175, !noundef !10 ; 2 uses
  %.val = load ptr, ptr %i.f, align 8, !nonnull !10, !noundef !10
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val2 = load ptr, ptr %i.g, align 8, !nonnull !10, !align !175, !noundef !10 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !128, !invariant.load !10
  %i.j = add nsw i64 %i.i, -1
  %i.k = and i64 %i.j, -16
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %.val2, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !10, !nonnull !10
  %i.p = invoke { ptr, ptr } %i.o(ptr noundef nonnull %i.m)
          to label %bb.d unwind label %bb.b       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.p, 0
  %i.r = extractvalue { ptr, ptr } %i.p, 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.r, ptr %i.t, align 8
  br label %bb.h

.body:                                            ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i, %bb.n, %bb.g, %bb.b
  %.pn = phi { ptr, i32 } [ %i.e, %bb.b ], [ %i.u, %bb.g ], [ %i.ag, %bb.n ], [ %i.ag, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i ]
  store i8 2, ptr %i.c, align 8
  resume { ptr, i32 } %.pn

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #35
  unreachable

bb.f:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsbvkFyIu7lgC_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #35
  unreachable

bb.g:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val5 = load ptr, ptr %i.w, align 8
  %i.v = getelementptr i8, ptr %1, i64 16
  %.val6 = load ptr, ptr %i.v, align 8, !nonnull !10, !align !175, !noundef !10
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr %.val5, ptr nonnull %.val6) #38
          to label %.body unwind label %bb.o

bb.h:                                             ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  invoke void @_RNvXs_NtNtCsbvkFyIu7lgC_4core6future6futureINtNtB8_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtB4_6Futurep6OutputINtNtB8_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB8_6marker4SendEL_EEB1v_4pollCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.i unwind label %bb.g

bb.i:                                             ; preds = %bb.h
  %i.x = load i64, ptr %i.b, align 16, !range !929, !noundef !10
  %i.y = icmp eq i64 %i.x, -9223372036854775710
  br i1 %i.y, label %bb.j, label %bb.k

common.ret:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.j
  %storemerge = phi i8 [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ 3, %bb.j ]
  store i8 %storemerge, ptr %i.c, align 8
  ret void

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775710, ptr %0, align 16
  br label %common.ret

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.a, ptr noundef nonnull align 16 dereferenceable(96) %i.b, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.val3 = load ptr, ptr %i.w, align 8            ; 5 uses
  %i.z = getelementptr i8, ptr %1, i64 16
  %.val4 = load ptr, ptr %i.z, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.aa = load ptr, ptr %.val4, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  invoke void %i.aa(ptr noundef nonnull %.val3)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.m
  %i.ae = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.ac, i64 noundef range(i64 1, 536870913) %i.af) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.n:                                             ; preds = %bb.l
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.al = load i64, ptr %i.ak, align 8, !range !128, !invariant.load !10
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3, i64 noundef %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #37
  br label %.body

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultuNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENtNtB4_6marker4SendEL_EEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.a, i64 96, i1 false)
  br label %common.ret

bb.o:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCs3eCsZ2Mx498_14http_body_util9collectedINtB2_9CollectedNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE10push_frameCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(128) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [72 x i8], align 8                ; 11 uses
  %i.c = alloca [72 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 16               ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [40 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 5 uses
  %i.k = alloca [40 x i8], align 8                ; 4 uses
  %i.l = alloca [40 x i8], align 8                ; 7 uses
  %i.m = alloca [40 x i8], align 8                ; 7 uses
  %i.n = alloca [56 x i8], align 8                ; 10 uses
  %.sroa.774.sroa.0.i = alloca [16 x i8], align 8 ; 4 uses
  %i.o = alloca [80 x i8], align 8                ; 9 uses
  %i.p = alloca [40 x i8], align 8                ; 11 uses
  %i.q = alloca [72 x i8], align 8                ; 22 uses
  %i.r = alloca [104 x i8], align 8               ; 17 uses
  %i.s = alloca [32 x i8], align 8                ; 4 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = load i64, ptr %1, align 8, !range !166, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.u, 3
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.val.i = load i64, ptr %i.w, align 8, !noundef !10
  %.not53 = icmp eq i64 %.val.i, 0
  br i1 %.not53, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  %i.x = load ptr, ptr %i.t, align 8, !alias.scope !938, !nonnull !10, !align !175, !noundef !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = load ptr, ptr %i.y, align 8, !noalias !938, !nonnull !10, !noundef !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !alias.scope !938, !noundef !10
  call void %i.z(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.aa, ptr noundef %i.ac, i64 noundef 0), !inline_history !494
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ae = call noundef nonnull align 8 ptr @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE13push_back_mutCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ad, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.s) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapINtNtCs574AjYkQ1m0_9http_body5frame5FrameNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.e
  ret void

bb.g:                                             ; preds = %bb.by, %.body
  resume { ptr, i32 } %.pn

bb.h:                                             ; preds = %bb.by
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.i:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.5125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5125.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx, i64 56, i1 false)
  %.sroa.4124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.4124.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  store i64 %i.u, ptr %i.ag, align 8
  store i64 0, ptr %i.r, align 8
  %.sroa.216.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %.sroa.216.0.copyload = load i64, ptr %.sroa.216.0..sroa_idx, align 8 ; 2 uses
  %.sroa.319.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %.sroa.319.0.copyload = load ptr, ptr %.sroa.319.0..sroa_idx, align 8 ; 5 uses
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %.sroa.422.0.copyload = load i64, ptr %.sroa.422.0..sroa_idx, align 8 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %.sroa.627.0.copyload = load ptr, ptr %.sroa.627.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.ai = load i64, ptr %0, align 8, !range !166, !noundef !10
  %.not12 = icmp eq i64 %i.ai, 3
  br i1 %.not12, label %.thread, label %bb.k

bb.j:                                             ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.pre = load i64, ptr %i.r, align 8, !range !159
  %i.aj = trunc nuw i64 %.pre to i1
  br i1 %i.aj, label %bb.bz, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtNtCs4j34XAPZOn0_4http6header3map9HeaderMapINtNtCs574AjYkQ1m0_9http_body5frame5FrameNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !943)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !939
  tail call void @llvm.experimental.noalias.scope.decl(metadata !944)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.319.0.copyload) ]
  %i.ak = icmp ult i64 %.sroa.422.0.copyload, 88686269585142076
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = getelementptr inbounds nuw [104 x i8], ptr %.sroa.319.0.copyload, i64 %.sroa.422.0.copyload
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  store i64 0, ptr %i.q, align 8, !alias.scope !944, !noalias !947
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  store ptr %.sroa.319.0.copyload, ptr %i.an, align 8, !alias.scope !944, !noalias !947
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 5 uses
  store ptr %.sroa.319.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !944, !noalias !947
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  store i64 %.sroa.216.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !944, !noalias !947
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 3 uses
  store ptr %i.al, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !944, !noalias !947
  %i.ao = icmp eq i64 %.sroa.7.0.copyload, 0
  br i1 %i.ao, label %_RNvXs3_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMapNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.627.0.copyload) ]
  %i.ap = shl nuw nsw i64 %.sroa.7.0.copyload, 2
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.627.0.copyload, i64 noundef %i.ap, i64 noundef 2) #37, !noalias !949
  br label %_RNvXs3_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMapNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RNvXs3_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMapNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !943, !noalias !950, !noundef !10 ; 3 uses
  %i.as = icmp ult i64 %i.ar, 88686269585142076
  tail call void @llvm.assume(i1 %i.as)
  %i.at = icmp eq i64 %i.ar, 0                    ; 2 uses
  %i.au = add nuw nsw i64 %.sroa.422.0.copyload, 1
  %i.av = lshr i64 %i.au, 1
  %.sroa.0.0.i = select i1 %i.at, i64 %.sroa.422.0.copyload, i64 %i.av
  tail call void @llvm.experimental.noalias.scope.decl(metadata !951)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.ax = add nuw nsw i64 %.sroa.0.0.i, %i.ar     ; 2 uses
  %i.ay = udiv i64 %i.ax, 3
  %i.az = add nuw nsw i64 %i.ay, %i.ax            ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !954, !noalias !950, !noundef !10
  %i.bd = icmp ugt i64 %i.az, %i.bc
  br i1 %i.bd, label %bb.m, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

.body.i:                                          ; preds = %bb.bw, %bb.bu, %bb.bp, %bb.bl, %bb.at, %.body33.thread100.loopexit.split-lp.i, %.body33.thread100.loopexit.i, %bb.ak, %bb.ai, %.body.i.i, %bb.q, %bb.l
  %.pn.i = phi { ptr, i32 } [ %lpad.phi.i, %bb.bw ], [ %i.ic, %bb.bp ], [ %i.bx, %bb.q ], [ %i.ee, %bb.ai ], [ %i.be, %bb.l ], [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.ee, %bb.ak ], [ %lpad.phi116.i, %bb.at ], [ %i.it, %bb.bu ], [ %i.hl, %bb.bl ], [ %lpad.loopexit109.i, %.body33.thread100.loopexit.i ], [ %lpad.loopexit.split-lp110.i, %.body33.thread100.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map8IntoIterNtNtBL_5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(72) %i.q) #38
          to label %.body unwind label %bb.al, !noalias !950

bb.l:                                             ; preds = %bb.ac, %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i, %.invoke.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.s, %_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.o
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.m:                                             ; preds = %_RNvXs3_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMapNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.bf = icmp samesign ult i64 %i.az, 2
  %i.bg = add nsw i64 %i.az, -1
  %i.bh = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bi = lshr i64 -1, %i.bh
  %.sroa.022.0.i.i = select i1 %i.bf, i64 0, i64 %i.bi ; 3 uses
  %i.bj = add nuw nsw i64 %.sroa.022.0.i.i, 1     ; 6 uses
  %or.cond.i.i = icmp samesign ugt i64 %.sroa.022.0.i.i, 32767
  br i1 %or.cond.i.i, label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i, label %bb.n, !prof !955

bb.n:                                             ; preds = %bb.m
  br i1 %i.at, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.bk = trunc nuw i64 %i.bj to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = add i16 %i.bk, -1
  store i16 %i.bm, ptr %i.bl, align 8, !alias.scope !954, !noalias !950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !957
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.bj, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4)
          to label %.noexc.i unwind label %bb.l, !noalias !950

.noexc.i:                                         ; preds = %bb.o
  %i.bn = load i64, ptr %i.e, align 8, !range !159, !noalias !957, !noundef !10
  %i.bo = trunc nuw i64 %i.bn to i1
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !range !158, !noalias !957, !noundef !10 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  br i1 %i.bo, label %bb.p, label %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i, !prof !112

bb.p:                                             ; preds = %.noexc.i
  %i.bs = load i64, ptr %i.br, align 8, !noalias !957
  br label %.invoke.i

_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %.noexc.i
  %i.bt = load ptr, ptr %i.br, align 8, !noalias !957, !nonnull !10, !noundef !10
  %i.bu = icmp ult i64 %.sroa.022.0.i.i, %i.bq
  tail call void @llvm.assume(i1 %i.bu)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !957
  store i64 %i.bq, ptr %i.f, align 8, !noalias !957
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.bt, ptr %i.bv, align 8, !noalias !957
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 0, ptr %i.bw, align 8, !noalias !957
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosE11extend_withCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %i.bj, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.q, !noalias !960

bb.q:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(24) %i.f) #38
          to label %.body.i unwind label %bb.r, !noalias !960

bb.r:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !960
  unreachable

_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !957
  %i.bz = invoke { ptr, i64 } @_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtNtCs4j34XAPZOn0_4http6header3map3PosE16into_boxed_sliceCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h)
          to label %.noexc23.i unwind label %bb.l, !noalias !950 ; 2 uses

.noexc23.i:                                       ; preds = %_RINvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_elemNtNtNtCs4j34XAPZOn0_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.ca = extractvalue { ptr, i64 } %i.bz, 0
  %i.cb = extractvalue { ptr, i64 } %i.bz, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !956
  %.val31.i.i = load i64, ptr %i.bb, align 8, !alias.scope !954, !noalias !950, !noundef !10 ; 2 uses
  %i.cc = icmp eq i64 %.val31.i.i, 0
  br i1 %i.cc, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i19.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i19.i: ; preds = %.noexc23.i
  %.val.i20.i = load ptr, ptr %i.ba, align 8, !alias.scope !954, !noalias !950, !nonnull !10, !noundef !10
  %i.cd = shl nuw nsw i64 %.val31.i.i, 2
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i20.i, i64 noundef %i.cd, i64 noundef 2) #37, !noalias !961
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.s:                                             ; preds = %bb.n
  %i.ce = invoke fastcc noundef zeroext i1 @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap8try_growCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.bj) #39
          to label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i unwind label %bb.l, !noalias !950

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i19.i, %.noexc23.i
  store ptr %i.ca, ptr %i.ba, align 8, !alias.scope !954, !noalias !950
  store i64 %i.cb, ptr %i.bb, align 8, !alias.scope !954, !noalias !950
  %i.cf = lshr i64 %i.bj, 2
  %i.cg = sub nsw i64 %i.bj, %i.cf                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !956
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, i64 noundef %i.cg, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
          to label %.noexc25.i unwind label %bb.l, !noalias !950

.noexc25.i:                                       ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxSNtNtNtCs4j34XAPZOn0_4http6header3map3PosEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.ch = load i64, ptr %i.g, align 8, !range !159, !noalias !956, !noundef !10
  %i.ci = trunc nuw i64 %i.ch to i1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ck = load i64, ptr %i.cj, align 8, !range !158, !noalias !956, !noundef !10 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  br i1 %i.ci, label %bb.t, label %bb.u, !prof !112

bb.t:                                             ; preds = %.noexc25.i
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !956
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.t, %bb.p
  %i.cn = phi i64 [ %i.ck, %bb.t ], [ %i.bq, %bb.p ]
  %i.co = phi i64 [ %i.cm, %bb.t ], [ %i.bs, %bb.p ]
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.cn, i64 %i.co) #33
          to label %.cont.i unwind label %bb.l, !noalias !950

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.u:                                             ; preds = %.noexc25.i
  %i.cp = load ptr, ptr %i.cl, align 8, !noalias !956, !nonnull !10, !noundef !10 ; 2 uses
  %i.cq = icmp ule i64 %i.cg, %i.ck
  call void @llvm.assume(i1 %i.cq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !956
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %bb.w unwind label %bb.v, !noalias !950

bb.v:                                             ; preds = %bb.u
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %.body.i.i unwind label %bb.x, !noalias !950

bb.w:                                             ; preds = %bb.u
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %bb.y, !noalias !950

bb.x:                                             ; preds = %bb.v
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !950
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.y, %bb.v
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ct, %bb.y ], [ %i.cr, %bb.v ]
  store i64 %i.ck, ptr %i.aw, align 8, !alias.scope !954, !noalias !950
  %.sroa.5.0..sroa_idx.i21.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cp, ptr %.sroa.5.0..sroa_idx.i21.i, align 8, !alias.scope !954, !noalias !950
  store i64 0, ptr %i.aq, align 8, !alias.scope !954, !noalias !950
  br label %.body.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.w
  store i64 %i.ck, ptr %i.aw, align 8, !alias.scope !954, !noalias !950
  %.sroa.5.0..sroa_idx18.i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.cp, ptr %.sroa.5.0..sroa_idx18.i.i, align 8, !alias.scope !954, !noalias !950
  store i64 0, ptr %i.aq, align 8, !alias.scope !954, !noalias !950
  br label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.s
  br i1 %i.ce, label %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i, label %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, !prof !962

_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i: ; preds = %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.m
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #33
          to label %.noexc27.i unwind label %bb.l, !noalias !950

.noexc27.i:                                       ; preds = %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread.i
  unreachable

_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap11try_reserveCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB1i_5value11HeaderValueEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RNvXs3_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMapNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect12IntoIterator9into_iterCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !939
  call void @llvm.experimental.noalias.scope.decl(metadata !963)
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  %i.cu = load i64, ptr %i.q, align 8, !range !159, !alias.scope !966, !noalias !968, !noundef !10
  %i.cv = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 6 uses
  %i.cw = trunc nuw i64 %i.cu to i1
  br i1 %i.cw, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.cx = load i64, ptr %i.cv, align 8, !alias.scope !966, !noalias !968, !noundef !10 ; 3 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !966, !noalias !968, !noundef !10 ; 2 uses
  %i.da = icmp ult i64 %i.cx, %i.cz
  br i1 %i.da, label %bb.ab, label %bb.ac

bb.aa:                                            ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6resultINtB2_6ResultuNtNtNtCs4j34XAPZOn0_4http6header3map14MaxSizeReachedE6expectCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.db = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !972, !noalias !973, !nonnull !10, !noundef !10
  %i.dc = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !972, !noalias !973, !nonnull !10, !noundef !10 ; 6 uses
  %i.dd = icmp eq ptr %i.dc, %i.db
  br i1 %i.dd, label %bb.ae, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 104
  store ptr %i.de, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !972, !noalias !973
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.dc, align 8, !noalias !975 ; 3 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 2
  br i1 %.not.i.i, label %bb.ae, label %bb.ag

bb.ab:                                            ; preds = %bb.z
  %i.df = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !alias.scope !966, !noalias !968, !nonnull !10, !noundef !10
  %i.dh = getelementptr inbounds nuw [72 x i8], ptr %i.dg, i64 %i.cx ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !range !159, !noalias !976, !noundef !10
  %i.dk = trunc nuw i64 %i.dj to i1
  br i1 %i.dk, label %bb.ad, label %bb.ah

bb.ac:                                            ; preds = %bb.z
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.cx, i64 noundef %i.cz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #35
          to label %.noexc29.i unwind label %bb.l, !noalias !950

.noexc29.i:                                       ; preds = %bb.ac
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dm = load i64, ptr %i.dl, align 8, !noalias !976, !noundef !10
  br label %bb.ah

bb.ae:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !939
  br label %bb.af

bb.af:                                            ; preds = %bb.bf, %bb.ae
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs4j34XAPZOn0_4http6header3map8IntoIterNtNtBL_5value11HeaderValueEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(72) %i.q)
          to label %bb.j unwind label %bb.bx

bb.ag:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 64
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !975
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.do = trunc nuw i64 %.sroa.0.0.copyload.i.i to i1
  %.sroa.05.0.i.i = and i64 %.sroa.0.0.copyload.i.i, 1
  %.sroa.56.0.i.i = select i1 %i.do, i64 %.sroa.7.0.copyload.i.i, i64 undef
  store i64 %.sroa.05.0.i.i, ptr %i.q, align 8, !alias.scope !966, !noalias !968
  store i64 %.sroa.56.0.i.i, ptr %i.cv, align 8, !alias.scope !966, !noalias !968
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i.i, i64 32, i1 false), !noalias !950
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.dn, i64 40, i1 false), !noalias !950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !939
  %i.dp = getelementptr inbounds nuw i8, ptr %i.n, i64 50
  %.sroa.568.0..sroa_idx69.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.671.0..sroa_idx72.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.774.0..sroa_idx75.i = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.774.sroa.4.0..sroa.774.0..sroa_idx75.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 40
  %.sroa.774.sroa.5.0..sroa.774.0..sroa_idx75.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 48
  %.sroa.582.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.dq = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dr = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.ds = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.dt = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.du = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dz = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  br label %bb.am

bb.ah:                                            ; preds = %bb.ad, %bb.ab
  %.sroa.5.0.i.i = phi i64 [ %i.dm, %bb.ad ], [ undef, %bb.ab ]
  %.sroa.0.0.i28.i = phi i64 [ 1, %bb.ad ], [ 0, %bb.ab ]
  store i64 %.sroa.0.0.i28.i, ptr %i.q, align 8, !alias.scope !966, !noalias !968
  store i64 %.sroa.5.0.i.i, ptr %i.cv, align 8, !alias.scope !966, !noalias !968
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.54.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ed, i64 40, i1 false), !noalias !977
  store i64 0, ptr %i.o, align 8, !alias.scope !963, !noalias !978
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @25, ptr noundef nonnull inttoptr (i64 73 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @26) #33
          to label %bb.aj unwind label %bb.ai, !noalias !950

bb.ai:                                            ; preds = %bb.ah
  %i.ee = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ef = load i64, ptr %i.o, align 8, !range !26, !noalias !939, !noundef !10
  %.not10.i = icmp eq i64 %i.ef, 2
  br i1 %.not10.i, label %.body.i, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  unreachable

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !979)
  call void @llvm.experimental.noalias.scope.decl(metadata !982)
  call void @llvm.experimental.noalias.scope.decl(metadata !985)
  %i.eg = load ptr, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !alias.scope !988, !noalias !939, !nonnull !10, !align !175, !noundef !10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load ptr, ptr %i.eh, align 8, !noalias !989, !nonnull !10, !noundef !10
  %i.ej = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.ek = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.el = load ptr, ptr %i.ek, align 8, !alias.scope !988, !noalias !939, !noundef !10
  %i.em = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.en = load i64, ptr %i.em, align 8, !alias.scope !988, !noalias !939, !noundef !10
  invoke void %i.ei(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef %i.el, i64 noundef %i.en)
          to label %.body.i unwind label %bb.al, !noalias !950, !inline_history !371

bb.al:                                            ; preds = %bb.bw, %bb.ak, %.body.i
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !950
  unreachable

bb.am:                                            ; preds = %bb.bg, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.774.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !939
  invoke void @_RINvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB6_9HeaderMap10try_entry2NtNtB8_4name10HeaderNameECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(96) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
          to label %bb.an unwind label %.loopexit.i, !noalias !950

.body33.thread100.loopexit.i:                     ; preds = %bb.ax, %bb.aq
  %lpad.loopexit109.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body33.thread100.loopexit.split-lp.i:            ; preds = %.noexc.i.i, %bb.bd, %bb.az
  %lpad.loopexit.split-lp110.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !990)
  %i.ep = load i8, ptr %i.dp, align 2, !range !457, !alias.scope !993, !noalias !995, !noundef !10 ; 3 uses
  %i.eq = icmp eq i8 %i.ep, 3
  br i1 %i.eq, label %bb.ao, label %bb.ap, !prof !112

bb.ao:                                            ; preds = %bb.an
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #33
          to label %.noexc31.i unwind label %.loopexit.split-lp.i, !noalias !950

.noexc31.i:                                       ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %bb.an
  %.sroa.066.0.copyload67.i = load ptr, ptr %i.n, align 8, !alias.scope !996, !noalias !939 ; 12 uses
  %.sroa.671.0.copyload73.i = load i64, ptr %.sroa.671.0..sroa_idx72.i, align 8, !alias.scope !996, !noalias !939 ; 6 uses
  %i.er = load <2 x i64>, ptr %.sroa.568.0..sroa_idx69.i, align 8, !alias.scope !996, !noalias !939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.774.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.774.0..sroa_idx75.i, i64 16, i1 false), !alias.scope !996, !noalias !939
  %.sroa.774.sroa.4.0.copyload.i = load i64, ptr %.sroa.774.sroa.4.0..sroa.774.0..sroa_idx75.sroa_idx.i, align 8, !alias.scope !996, !noalias !939
  %.sroa.774.sroa.5.0.copyload.i = load i16, ptr %.sroa.774.sroa.5.0..sroa.774.0..sroa_idx75.sroa_idx.i, align 8, !alias.scope !996, !noalias !939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !939
  %.not11.i = icmp eq i8 %i.ep, 2
  br i1 %.not11.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !997
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.582.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.774.sroa.0.i, i64 16, i1 false), !noalias !939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.k, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !939
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.066.0.copyload67.i) ]
  store <2 x i64> %i.er, ptr %i.d, align 16, !noalias !1002
  %i.es = trunc nuw i8 %i.ep to i1
  %i.et = invoke fastcc { i64, i64 } @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap20try_insert_phase_twoCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef align 8 dereferenceable(96) %.sroa.066.0.copyload67.i, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.k, i16 noundef %.sroa.774.sroa.5.0.copyload.i, i64 noundef %.sroa.774.sroa.4.0.copyload.i, i1 noundef zeroext %i.es) #39
          to label %.noexc32.i unwind label %.body33.thread100.loopexit.i, !noalias !950 ; 2 uses

.noexc32.i:                                       ; preds = %bb.aq
  %i.eu = extractvalue { i64, i64 } %i.et, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !997
  %i.ev = trunc nuw i64 %i.eu to i1
  br i1 %i.ev, label %bb.az, label %bb.ba

bb.ar:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.066.0.copyload67.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !939
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  call void @llvm.experimental.noalias.scope.decl(metadata !1006)
  %i.ew = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 32 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 40 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !alias.scope !1003, !noalias !1008, !noundef !10 ; 3 uses
  %i.ez = icmp ult i64 %.sroa.671.0.copyload73.i, %i.ey
  br i1 %i.ez, label %bb.as, label %.invoke.i.i

bb.as:                                            ; preds = %bb.ar
  %i.fa = load ptr, ptr %i.ew, align 8, !alias.scope !1003, !noalias !1008, !nonnull !10, !noundef !10
  %i.fb = getelementptr inbounds nuw [104 x i8], ptr %i.fa, i64 %.sroa.671.0.copyload73.i ; 2 uses
  %i.fc = load i64, ptr %i.fb, align 8, !range !159, !noalias !1010, !noundef !10
  %i.fd = trunc nuw i64 %i.fc to i1
  br i1 %i.fd, label %bb.au, label %bb.av

.loopexit112.i:                                   ; preds = %bb.au
  %lpad.loopexit114.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

.loopexit.split-lp113.i:                          ; preds = %.invoke.i.i
  %lpad.loopexit.split-lp115.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.at:                                            ; preds = %.loopexit.split-lp113.i, %.loopexit112.i
  %lpad.phi116.i = phi { ptr, i32 } [ %lpad.loopexit114.i, %.loopexit112.i ], [ %lpad.loopexit.split-lp115.i, %.loopexit.split-lp113.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  %i.fe = load ptr, ptr %i.l, align 8, !alias.scope !1020, !noalias !1021, !nonnull !10, !align !175, !noundef !10
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fg = load ptr, ptr %i.ff, align 8, !noalias !1022, !nonnull !10, !noundef !10
  %i.fh = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.fi = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !alias.scope !1020, !noalias !1021, !noundef !10
  %i.fk = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.fl = load i64, ptr %i.fk, align 8, !alias.scope !1020, !noalias !1021, !noundef !10
  invoke void %i.fg(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.fh, ptr noundef %i.fj, i64 noundef %i.fl)
          to label %.body.i unwind label %bb.aw, !noalias !1023, !inline_history !371

bb.au:                                            ; preds = %bb.as
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.fn = load i64, ptr %i.fm, align 8, !noalias !1010, !noundef !10
  invoke void @_RNvMs0_NtNtCs4j34XAPZOn0_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(96) %.sroa.066.0.copyload67.i, i64 noundef %i.fn)
          to label %._crit_edge.i.i unwind label %.loopexit112.i, !noalias !1008

._crit_edge.i.i:                                  ; preds = %bb.au
  %.pre.i.i = load i64, ptr %i.ex, align 8, !alias.scope !1003, !noalias !1008
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge.i.i, %bb.as
  %i.fo = phi i64 [ %.pre.i.i, %._crit_edge.i.i ], [ %i.ey, %bb.as ] ; 2 uses
  %i.fp = icmp ult i64 %.sroa.671.0.copyload73.i, %i.fo
  br i1 %i.fp, label %bb.ax, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.av, %bb.ar
  %i.fq = phi i64 [ %i.fo, %bb.av ], [ %i.ey, %bb.ar ]
  %i.fr = phi ptr [ @41, %bb.av ], [ @40, %bb.ar ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.671.0.copyload73.i, i64 noundef %i.fq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fr) #33
          to label %.cont.i.i unwind label %.loopexit.split-lp113.i, !noalias !1010

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.aw:                                            ; preds = %bb.at
  %i.fs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1023
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.ft = load ptr, ptr %i.ew, align 8, !alias.scope !1003, !noalias !1008, !nonnull !10, !noundef !10
  %i.fu = getelementptr inbounds nuw [104 x i8], ptr %i.ft, i64 %.sroa.671.0.copyload73.i
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %i.fv, i64 40, i1 false), !noalias !1024
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fv, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !939
  call void @llvm.experimental.noalias.scope.decl(metadata !1025)
  call void @llvm.experimental.noalias.scope.decl(metadata !1028)
  call void @llvm.experimental.noalias.scope.decl(metadata !1031)
  %i.fw = load ptr, ptr %i.m, align 8, !alias.scope !1034, !noalias !939, !nonnull !10, !align !175, !noundef !10
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !noalias !1035, !nonnull !10, !noundef !10
  %i.fz = load ptr, ptr %i.dr, align 8, !alias.scope !1034, !noalias !939, !noundef !10
  %i.ga = load i64, ptr %i.ds, align 8, !alias.scope !1034, !noalias !939, !noundef !10
  invoke void %i.fy(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef %i.fz, i64 noundef %i.ga)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit36.i unwind label %.body33.thread100.loopexit.i, !noalias !950, !inline_history !371

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit36.i: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !939
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ba, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit36.i
  %.sroa.7.0.i = phi i64 [ %.sroa.671.0.copyload73.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCs4j34XAPZOn0_4http6header5value11HeaderValueECsgO8S5jLFugx_23deltalake_catalog_unity.exit36.i ], [ %i.gi, %bb.ba ] ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.774.sroa.0.i)
  %i.gb = load i64, ptr %i.q, align 8, !range !159, !alias.scope !1036, !noalias !1039, !noundef !10
  %i.gc = trunc nuw i64 %i.gb to i1
  br i1 %i.gc, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ay
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 40
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 32
  %i.gf = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 48 ; 4 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 64 ; 4 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %.sroa.066.0.copyload67.i, i64 56 ; 3 uses
  br label %bb.bb

bb.az:                                            ; preds = %.noexc32.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @23, i64 noundef 23, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @39, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #33
          to label %.noexc37.i unwind label %.body33.thread100.loopexit.split-lp.i, !noalias !950

.noexc37.i:                                       ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %.noexc32.i
  %i.gi = extractvalue { i64, i64 } %i.et, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !939
  br label %bb.ay

bb.bb:                                            ; preds = %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %.lr.ph.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  %i.gj = load i64, ptr %i.cv, align 8, !alias.scope !1041, !noalias !1039, !noundef !10 ; 3 uses
  %i.gk = load i64, ptr %i.dt, align 8, !alias.scope !1041, !noalias !1039, !noundef !10 ; 2 uses
  %i.gl = icmp ult i64 %i.gj, %i.gk
  br i1 %i.gl, label %bb.bc, label %bb.bd

._crit_edge.i:                                    ; preds = %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !1043)
  %i.gm = load ptr, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !alias.scope !1046, !noalias !1047, !nonnull !10, !noundef !10
  %i.gn = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1046, !noalias !1047, !nonnull !10, !noundef !10 ; 6 uses
  %i.go = icmp eq ptr %i.gn, %i.gm
  br i1 %i.go, label %bb.bf, label %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i38.i

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i38.i: ; preds = %._crit_edge.i
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gn, i64 104
  store ptr %i.gp, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1046, !noalias !1047
  %.sroa.0.0.copyload.i39.i = load i64, ptr %i.gn, align 8, !noalias !1049 ; 3 uses
  %.not.i40.i = icmp eq i64 %.sroa.0.0.copyload.i39.i, 2
  br i1 %.not.i40.i, label %bb.bf, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %i.gq = load ptr, ptr %i.du, align 8, !alias.scope !1041, !noalias !1039, !nonnull !10, !noundef !10
  %i.gr = getelementptr inbounds nuw [72 x i8], ptr %i.gq, i64 %i.gj ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load i64, ptr %i.gs, align 8, !range !159, !noalias !1050, !noundef !10
  %i.gu = trunc nuw i64 %i.gt to i1
  br i1 %i.gu, label %bb.be, label %bb.bh

bb.bd:                                            ; preds = %bb.bb
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.gj, i64 noundef %i.gk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @226) #35
          to label %.noexc52.i unwind label %.body33.thread100.loopexit.split-lp.i, !noalias !950

.noexc52.i:                                       ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %bb.bc
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gw = load i64, ptr %i.gv, align 8, !noalias !1050, !noundef !10
  br label %bb.bh

bb.bf:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i38.i, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !939
  br label %bb.af

bb.bg:                                            ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs4j34XAPZOn0_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i38.i
  %.sroa.9.0..sroa_idx.i41.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 64
  %.sroa.7.0..sroa_idx.i42.i = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %.sroa.7.0.copyload.i43.i = load i64, ptr %.sroa.7.0..sroa_idx.i42.i, align 8, !noalias !1049
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i41.i, i64 32, i1 false), !noalias !950
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.gy = trunc nuw i64 %.sroa.0.0.copyload.i39.i to i1
  %.sroa.05.0.i46.i = and i64 %.sroa.0.0.copyload.i39.i, 1
  %.sroa.56.0.i47.i = select i1 %i.gy, i64 %.sroa.7.0.copyload.i43.i, i64 undef
  store i64 %.sroa.05.0.i46.i, ptr %i.q, align 8, !alias.scope !1041, !noalias !1039
  store i64 %.sroa.56.0.i47.i, ptr %i.cv, align 8, !alias.scope !1041, !noalias !1039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(40) %i.gx, i64 40, i1 false), !noalias !950
  br label %bb.am

bb.bh:                                            ; preds = %bb.be, %bb.bc
  %.sroa.5.0.i49.i = phi i64 [ %i.gw, %bb.be ], [ undef, %bb.bc ]
  %.sroa.0.0.i50.i = phi i64 [ 1, %bb.be ], [ 0, %bb.bc ]
  store i64 %.sroa.0.0.i50.i, ptr %i.q, align 8, !alias.scope !1041, !noalias !1039
  store i64 %.sroa.5.0.i49.i, ptr %i.cv, align 8, !alias.scope !1041, !noalias !1039
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gr, i64 32 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.gz, i64 40, i1 false), !noalias !950
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.066.0.copyload67.i) ]
  %i.ha = load i64, ptr %i.gd, align 8, !noalias !1054, !noundef !10 ; 2 uses
  %.not.i54.i = icmp ult i64 %.sroa.7.0.i, %i.ha
  br i1 %.not.i54.i, label %bb.bi, label %bb.bs

bb.bi:                                            ; preds = %bb.bh
  %i.hb = load ptr, ptr %i.ge, align 8, !noalias !1054, !nonnull !10, !noundef !10
  %i.hc = getelementptr inbounds nuw [104 x i8], ptr %i.hb, i64 %.sroa.7.0.i ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1055)
  call void @llvm.experimental.noalias.scope.decl(metadata !1058)
  %i.hd = load i64, ptr %i.hc, align 8, !range !159, !alias.scope !1055, !noalias !1060, !noundef !10
  %i.he = trunc nuw i64 %i.hd to i1
  br i1 %i.he, label %bb.bj, label %bb.bn

bb.bj:                                            ; preds = %bb.bi
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hc, i64 16 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !1055, !noalias !1060, !noundef !10 ; 4 uses
  %i.hh = load i64, ptr %i.gg, align 8, !alias.scope !1058, !noalias !1062, !noundef !10 ; 7 uses
  %i.hi = icmp ult i64 %i.hh, 128102389400760776
  call void @llvm.assume(i1 %i.hi)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dz, ptr noundef nonnull align 8 dereferenceable(40) %i.gz, i64 40, i1 false), !noalias !950
  store i64 1, ptr %i.c, align 8, !noalias !1063
  store i64 %i.hg, ptr %i.ea, align 8, !noalias !1063
  store i64 0, ptr %i.eb, align 8, !noalias !1063
  store i64 %.sroa.7.0.i, ptr %i.ec, align 8, !noalias !1063
  call void @llvm.experimental.noalias.scope.decl(metadata !1064)
  call void @llvm.experimental.noalias.scope.decl(metadata !1067)
  %i.hj = load i64, ptr %i.gf, align 8, !range !127, !alias.scope !1069, !noalias !1070, !noundef !10
  %i.hk = icmp eq i64 %i.hh, %i.hj
  br i1 %i.hk, label %bb.bk, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i

bb.bk:                                            ; preds = %bb.bj
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gf)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i unwind label %bb.bl, !noalias !1070

bb.bl:                                            ; preds = %bb.bk
  %i.hl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1071)
  call void @llvm.experimental.noalias.scope.decl(metadata !1074)
  call void @llvm.experimental.noalias.scope.decl(metadata !1077)
  call void @llvm.experimental.noalias.scope.decl(metadata !1080)
  %i.hm = load ptr, ptr %i.dz, align 8, !alias.scope !1083, !noalias !1084, !nonnull !10, !align !175, !noundef !10
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 32
  %i.ho = load ptr, ptr %i.hn, align 8, !noalias !1085, !nonnull !10, !noundef !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.hq = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8, !alias.scope !1083, !noalias !1084, !noundef !10
  %i.hs = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ht = load i64, ptr %i.hs, align 8, !alias.scope !1083, !noalias !1084, !noundef !10
  invoke void %i.ho(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.hp, ptr noundef %i.hr, i64 noundef %i.ht)
          to label %.body.i unwind label %bb.bm, !noalias !1062, !inline_history !1086

bb.bm:                                            ; preds = %bb.bl
  %i.hu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1062
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i: ; preds = %bb.bk, %bb.bj
  %i.hv = load ptr, ptr %i.gh, align 8, !alias.scope !1069, !noalias !1070, !nonnull !10, !noundef !10
  %i.hw = getelementptr inbounds nuw [72 x i8], ptr %i.hv, i64 %i.hh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.hw, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !noalias !1062
  %i.hx = add nuw nsw i64 %i.hh, 1                ; 2 uses
  store i64 %i.hx, ptr %i.gg, align 8, !alias.scope !1069, !noalias !1070
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1063
  %.not.i.i.i = icmp ugt i64 %i.hg, %i.hh
  br i1 %.not.i.i.i, label %.noexc.i.i, label %bb.br

bb.bn:                                            ; preds = %bb.bi
  %i.hy = load i64, ptr %i.gg, align 8, !alias.scope !1058, !noalias !1062, !noundef !10 ; 6 uses
  %i.hz = icmp ult i64 %i.hy, 128102389400760776
  call void @llvm.assume(i1 %i.hz)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1063
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dv, ptr noundef nonnull align 8 dereferenceable(40) %i.gz, i64 40, i1 false), !noalias !950
  store i64 0, ptr %i.b, align 8, !noalias !1063
  store i64 %.sroa.7.0.i, ptr %i.dw, align 8, !noalias !1063
  store i64 0, ptr %i.dx, align 8, !noalias !1063
  store i64 %.sroa.7.0.i, ptr %i.dy, align 8, !noalias !1063
  call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.ia = load i64, ptr %i.gf, align 8, !range !127, !alias.scope !1092, !noalias !1093, !noundef !10
  %i.ib = icmp eq i64 %i.hy, %i.ia
  br i1 %i.ib, label %bb.bo, label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit9.i.i.i

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCs2DiVQAxFeQE_16aws_smithy_types(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.gf)
          to label %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit9.i.i.i unwind label %bb.bp, !noalias !1093

bb.bp:                                            ; preds = %bb.bo
  %i.ic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  call void @llvm.experimental.noalias.scope.decl(metadata !1097)
  call void @llvm.experimental.noalias.scope.decl(metadata !1100)
  call void @llvm.experimental.noalias.scope.decl(metadata !1103)
  %i.id = load ptr, ptr %i.dv, align 8, !alias.scope !1106, !noalias !1107, !nonnull !10, !align !175, !noundef !10
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 32
  %i.if = load ptr, ptr %i.ie, align 8, !noalias !1108, !nonnull !10, !noundef !10
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ii = load ptr, ptr %i.ih, align 8, !alias.scope !1106, !noalias !1107, !noundef !10
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ik = load i64, ptr %i.ij, align 8, !alias.scope !1106, !noalias !1107, !noundef !10
  invoke void %i.if(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ig, ptr noundef %i.ii, i64 noundef %i.ik)
          to label %.body.i unwind label %bb.bq, !noalias !1062, !inline_history !1086

bb.bq:                                            ; preds = %bb.bp
  %i.il = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1062
  unreachable

_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit9.i.i.i: ; preds = %bb.bo, %bb.bn
  %i.im = load ptr, ptr %i.gh, align 8, !alias.scope !1092, !noalias !1093, !nonnull !10, !noundef !10
  %i.in = getelementptr inbounds nuw [72 x i8], ptr %i.im, i64 %i.hy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.in, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !1062
  %i.io = add nuw nsw i64 %i.hy, 1
  store i64 %i.io, ptr %i.gg, align 8, !alias.scope !1092, !noalias !1093
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1063
  store i64 1, ptr %i.hc, align 8, !alias.scope !1055, !noalias !1060
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  store i64 %i.hy, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !alias.scope !1055, !noalias !1060
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.hc, i64 16
  store i64 %i.hy, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !alias.scope !1055, !noalias !1060
  br label %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.br:                                            ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  %i.ip = load ptr, ptr %i.gh, align 8, !alias.scope !1058, !noalias !1062, !nonnull !10, !noundef !10
  %i.iq = getelementptr inbounds nuw [72 x i8], ptr %i.ip, i64 %i.hg ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  store i64 1, ptr %i.ir, align 8, !noalias !1062
  %i.is = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  store i64 %i.hh, ptr %i.is, align 8, !noalias !1062
  store i64 1, ptr %i.hc, align 8, !alias.scope !1055, !noalias !1060
  store i64 %i.hh, ptr %i.hf, align 8, !alias.scope !1055, !noalias !1060
  br label %_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

.noexc.i.i:                                       ; preds = %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.hg, i64 noundef %i.hx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #33
          to label %.noexc56.i unwind label %.body33.thread100.loopexit.split-lp.i, !noalias !950

.noexc56.i:                                       ; preds = %.noexc.i.i
  unreachable

bb.bs:                                            ; preds = %bb.bh
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7.0.i, i64 noundef %i.ha, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @43) #33
          to label %bb.bt unwind label %bb.bu, !noalias !1054

bb.bt:                                            ; preds = %bb.bs
  unreachable

bb.bu:                                            ; preds = %bb.bs
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1109)
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.iu = load ptr, ptr %i.i, align 8, !alias.scope !1118, !noalias !939, !nonnull !10, !align !175, !noundef !10
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !noalias !1119, !nonnull !10, !noundef !10
  %i.ix = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.iy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.iz = load ptr, ptr %i.iy, align 8, !alias.scope !1118, !noalias !939, !noundef !10
  %i.ja = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !alias.scope !1118, !noalias !939, !noundef !10
  invoke void %i.iw(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ix, ptr noundef %i.iz, i64 noundef %i.jb)
          to label %.body.i unwind label %bb.bv, !noalias !950, !inline_history !371

bb.bv:                                            ; preds = %bb.bu
  %i.jc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !950
  unreachable

_RNvMsO_NtNtCs4j34XAPZOn0_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %bb.br, %_RNvMsF_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs4j34XAPZOn0_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsgO8S5jLFugx_23deltalake_catalog_unity.exit9.i.i.i
  %i.jd = load i64, ptr %i.q, align 8, !range !159, !alias.scope !1120, !noalias !1039, !noundef !10
  %i.je = trunc nuw i64 %i.jd to i1
  br i1 %i.je, label %bb.bb, label %._crit_edge.i

.loopexit.i:                                      ; preds = %bb.am
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

.loopexit.split-lp.i:                             ; preds = %bb.ao
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bw

bb.bw:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1122)
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  %i.jf = load ptr, ptr %i.p, align 8, !alias.scope !1131, !noalias !939, !nonnull !10, !align !175, !noundef !10
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8, !noalias !1132, !nonnull !10, !noundef !10
  %i.ji = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.jj = getelementptr inbounds nuw i8, ptr %i.p, i64 8
end_hunk_6
begin_hunk_7_@_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEE9drop_slowB1U_:bb.a
  %.val1.i.i.i.i = load i64, ptr %i.ee, align 8, !alias.scope !1463, !noundef !10 ; 2 uses
  %i.ef = icmp eq i64 %.val1.i.i.i.i, 0
  br i1 %i.ef, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs95DO3lnzZ3L_4moka6future8key_lock10KeyLockMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4.i.i.i.i: ; preds = %bb.bk
  %.val.i.i.i.i = load ptr, ptr %i.dx, align 8, !alias.scope !1463, !nonnull !10, !noundef !10
  %i.eg = shl nuw nsw i64 %.val1.i.i.i.i, 4
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.eg, i64 noundef 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs95DO3lnzZ3L_4moka6future8key_lock10KeyLockMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

.body70.i:                                        ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.bj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2X_.exit.i
  %.pn26.i = phi { ptr, i32 } [ %.pn24.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2X_.exit.i ], [ %i.ea, %bb.bj ], [ %i.ea, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.e, i64 648
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEEB2F_(ptr noalias noundef align 8 dereferenceable(64) %i.eh) #38
          to label %.body unwind label %bb.bl

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs95DO3lnzZ3L_4moka6future8key_lock10KeyLockMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i4.i.i.i.i, %bb.bk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2X_.exit69.i
  %i.ei = getelementptr inbounds nuw i8, ptr %i.e, i64 648
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11InvalidatorNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEEB2F_(ptr noalias noundef align 8 dereferenceable(64) %i.ei)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEB2b_.exit unwind label %bb.bm

bb.bl:                                            ; preds = %.body70.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtB17_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2X_.exit.i, %bb.bd, %bb.ay, %bb.at, %bb.ao, %.body52.i, %bb.v, %.body49.i, %.body40.i, %.body36.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cell10AtomicCellyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit33.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCslrv8JwANqSj_15crossbeam_utils6atomic11atomic_cell10AtomicCellyEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %.body.i, %bb.b
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.bm:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs95DO3lnzZ3L_4moka6future8key_lock10KeyLockMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body70.i, %bb.bm
  %eh.lpad-body = phi { ptr, i32 } [ %i.ek, %bb.bm ], [ %.pn26.i, %.body70.i ]
  %i.el = icmp eq ptr %i.e, inttoptr (i64 -1 to ptr)
  br i1 %i.el, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateERNtNtBL_5alloc6GlobalEEB2t_.exit, label %bb.bn

bb.bn:                                            ; preds = %.body
  %i.em = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.en = atomicrmw sub ptr %i.em, i64 1 release, align 8
  %i.eo = icmp eq i64 %i.en, 1
  br i1 %i.eo, label %bb.bo, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateERNtNtBL_5alloc6GlobalEEB2t_.exit

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 720, i64 noundef range(i64 1, 536870913) 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateERNtNtBL_5alloc6GlobalEEB2t_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEB2b_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtCs95DO3lnzZ3L_4moka6future8key_lock10KeyLockMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  %i.ep = icmp eq ptr %i.e, inttoptr (i64 -1 to ptr)
  br i1 %i.ep, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateERNtNtBL_5alloc6GlobalEEB2t_.exit2, label %bb.bp

bb.bp:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEB2b_.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.er = atomicrmw sub ptr %i.eq, i64 1 release, align 8
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.bq, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateERNtNtBL_5alloc6GlobalEEB2t_.exit2

bb.bq:                                            ; preds = %bb.bp
  fence acquire
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 720, i64 noundef range(i64 1, 536870913) 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateERNtNtBL_5alloc6GlobalEEB2t_.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateERNtNtBL_5alloc6GlobalEEB2t_.exit2: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEEB2b_.exit, %bb.bp, %bb.bq
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future10base_cache5InnerNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateERNtNtBL_5alloc6GlobalEEB2t_.exit: ; preds = %bb.bo, %bb.bn, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11ScanContextNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE9drop_slowB22_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1471)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.val.i.i = load ptr, ptr %i.c, align 8, !alias.scope !1474, !noundef !10 ; 2 uses
  %i.d = icmp eq ptr %.val.i.i, null
  br i1 %i.d, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseKAYRfgxGTE_14event_listener5EventECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1474
  %i.e = getelementptr inbounds i8, ptr %.val.i.i, i64 -16 ; 2 uses
  store ptr %i.e, ptr %i.a, align 8, !noalias !1474
  %i.f = atomicrmw sub ptr %i.e, i64 1 release, align 8, !noalias !1475
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtCseKAYRfgxGTE_14event_listener5InneruEE9drop_slowCs7kfTgH1B6X1_10async_lock(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i unwind label %bb.d, !noalias !1474

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i: ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1474
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseKAYRfgxGTE_14event_listener5EventECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1a_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB2W_(ptr noalias noundef align 8 dereferenceable(24) %i.i) #38
          to label %.body unwind label %bb.g

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseKAYRfgxGTE_14event_listener5EventECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtCseKAYRfgxGTE_14event_listener5InneruEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB1Y_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1s_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3e_.exit.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseKAYRfgxGTE_14event_listener5EventECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB25_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1s_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3e_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCseKAYRfgxGTE_14event_listener5EventECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB25_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11ScanContextNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit unwind label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1s_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3e_.exit.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.k, %bb.e ], [ %i.h, %bb.d ]
  %i.o = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11ScanContextNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit, label %bb.i

bb.i:                                             ; preds = %.body
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11ScanContextNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit

bb.j:                                             ; preds = %bb.i
  fence acquire
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 56, i64 noundef range(i64 1, 536870913) 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11ScanContextNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11ScanContextNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs7kfTgH1B6X1_10async_lock5mutex5MutexINtNtCs6Po7BT7Nknu_5alloc3vec3VecINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator9PredicateNtNtB1s_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEEEB3e_.exit.i
  %i.s = icmp eq ptr %i.b, inttoptr (i64 -1 to ptr)
  br i1 %i.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11ScanContextNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit2, label %bb.k

bb.k:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11ScanContextNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.l, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11ScanContextNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit2

bb.l:                                             ; preds = %bb.k
  fence acquire
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 56, i64 noundef range(i64 1, 536870913) 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11ScanContextNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11ScanContextNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit2: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11ScanContextNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit, %bb.k, %bb.l
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future11invalidator11ScanContextNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit: ; preds = %bb.j, %bb.i, %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtB7_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEE9drop_slowB22_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load ptr, ptr %i.b, align 8             ; 5 uses
  %i.c = getelementptr i8, ptr %i.a, i64 24
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !10, !align !175, !noundef !10 ; 5 uses
  %i.d = load ptr, ptr %.val1, align 8, !invariant.load !10 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  invoke void %i.d(ptr noundef nonnull %.val)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i: ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !range !128, !invariant.load !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.f, i64 noundef range(i64 1, 536870913) %i.i) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = getelementptr inbounds nuw i8, ptr %.val1, i64 8
  %i.l = load i64, ptr %i.k, align 8, !range !127, !invariant.load !10 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %.body, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i: ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %.val1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !range !128, !invariant.load !10
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.l, i64 noundef range(i64 1, 536870913) %i.o) #37
  br label %.body

.body:                                            ; preds = %bb.d, %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i
  %i.p = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.p, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit, label %bb.e

bb.e:                                             ; preds = %.body
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef range(i64 1, 536870913) 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.c
  %i.t = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.t, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit4, label %bb.g

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit4

bb.h:                                             ; preds = %bb.g
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef range(i64 1, 536870913) 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit4

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit4: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsEEB2j_.exit, %bb.g, %bb.h
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtCs95DO3lnzZ3L_4moka6future8notifier15RemovalNotifierNtNtBL_6string6StringNtNtCsgO8S5jLFugx_23deltalake_catalog_unity6models25TemporaryTableCredentialsERNtNtBL_5alloc6GlobalEEB2B_.exit: ; preds = %bb.f, %bb.e, %.body
  resume { ptr, i32 } %i.j
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexuEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #10 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.b = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.b, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexuERNtNtBL_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexuERNtNtBL_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 24, i64 noundef range(i64 1, 536870913) 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexuERNtNtBL_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs2pqxYH9ZEk8_3std4sync6poison5mutex5MutexuERNtNtBL_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB1N_6future6future6Futurep6OutputuNtNtB1N_6marker4SendEL_EEEE9drop_slowCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1480)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val.i = load ptr, ptr %i.c, align 8, !alias.scope !1480, !noundef !10 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !1480 ; 6 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  %i.e = load ptr, ptr %.val1.i, align 8, !invariant.load !10, !noalias !1480 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.e(ptr noundef nonnull %.val.i)
          to label %bb.d unwind label %bb.e, !noalias !1480

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !127, !invariant.load !10, !noalias !1480 ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.j = load i64, ptr %i.i, align 8, !range !128, !invariant.load !10, !noalias !1480
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.g, i64 noundef range(i64 1, 536870913) %i.j) #37, !noalias !1480
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.m = load i64, ptr %i.l, align 8, !range !127, !invariant.load !10, !noalias !1480 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %.body.i, label %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i

_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i: ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !range !128, !invariant.load !10, !noalias !1480
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef %i.m, i64 noundef range(i64 1, 536870913) %i.p) #37, !noalias !1480
  br label %.body.i

.body.i:                                          ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i4.i.i.i.i.i, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1483)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1486)
  %i.q = load ptr, ptr %i.b, align 8, !alias.scope !1489, !nonnull !10, !noundef !10
  %i.r = atomicrmw sub ptr %i.q, i64 1 release, align 8, !noalias !1489
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.f, label %.body

bb.f:                                             ; preds = %.body.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #36
          to label %.body unwind label %bb.h

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i: ; preds = %_RNvXs_NtCs6Po7BT7Nknu_5alloc5allocNtB4_6GlobalNtNtCsbvkFyIu7lgC_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i, %bb.d, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1490)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1493)
  %i.t = load ptr, ptr %i.b, align 8, !alias.scope !1496, !nonnull !10, !noundef !10
  %i.u = atomicrmw sub ptr %i.t, i64 1 release, align 8, !noalias !1496
  %i.v = icmp eq i64 %i.u, 1
  br i1 %i.v, label %bb.g, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.g:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared8NotifierE9drop_slowCs5wg436RVUAP_24datafusion_physical_plan(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #36
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.body.i, %bb.f, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.x, %bb.i ], [ %i.k, %bb.f ], [ %i.k, %.body.i ]
  %i.y = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.y, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEERNtNtBL_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.j

bb.j:                                             ; preds = %.body
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aa = atomicrmw sub ptr %i.z, i64 1 release, align 8
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEERNtNtBL_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.k:                                             ; preds = %bb.j
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef range(i64 1, 536870913) 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEERNtNtBL_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_4cell10UnsafeCellINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared14FutureOrOutputINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i, %bb.g
  %i.ac = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.ac, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEERNtNtBL_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity.exit2, label %bb.l

bb.l:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = atomicrmw sub ptr %i.ad, i64 1 release, align 8
  %i.af = icmp eq i64 %i.ae, 1
  br i1 %i.af, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEERNtNtBL_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity.exit2

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 40, i64 noundef range(i64 1, 536870913) 8) #37
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEERNtNtBL_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity.exit2

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEERNtNtBL_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity.exit2: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.l, %bb.m
  ret void

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync4WeakINtNtNtNtCs8CRAYtH5WmW_12futures_util6future6future6shared5InnerINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputuNtNtB4_6marker4SendEL_EEERNtNtBL_5alloc6GlobalEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.k, %bb.j, %.body
  resume { ptr, i32 } %eh.lpad-body
}

end_hunk_7
begin_hunk_8_@_RNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB4_7BufListNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtBX_3buf8buf_impl3Buf13copy_to_bytesCsgO8S5jLFugx_23deltalake_catalog_unity:bb.a
bb.au:                                            ; preds = %bb.ao
  %i.gp = add i64 %i.gc, %i.ft
  store i64 %i.gp, ptr %i.bi, align 8, !alias.scope !1789, !noalias !1792
  call void @llvm.experimental.noalias.scope.decl(metadata !1803)
  call void @llvm.experimental.noalias.scope.decl(metadata !1806)
  %i.gq = load ptr, ptr %i.u, align 8, !alias.scope !1809, !nonnull !10, !align !175, !noundef !10
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !noalias !1809, !nonnull !10, !noundef !10
  %i.gt = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.gu = load ptr, ptr %i.fq, align 8, !alias.scope !1809, !noundef !10
  %i.gv = load i64, ptr %i.fs, align 8, !alias.scope !1809, !noundef !10
  invoke void %i.gs(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.gt, ptr noundef %i.gu, i64 noundef %i.gv)
          to label %.noexc39 unwind label %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1802

.noexc39:                                         ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1786
  br label %bb.as

bb.av:                                            ; preds = %bb.at
  %i.gw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !inline_history !1788
  unreachable

bb.aw:                                            ; preds = %.noexc38
  %i.gx = invoke noundef zeroext i1 @_RNvMNtCs9Ct3XQYJhun_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef %i.fl, i1 noundef zeroext true)
          to label %.noexc40 unwind label %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1788 ; 0 uses

.noexc40:                                         ; preds = %bb.aw, %.noexc38
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.hb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  br label %.noexc43

.noexc43:                                         ; preds = %.noexc43.backedge, %.noexc40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1810
  invoke void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE4iterCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
          to label %.noexc110 unwind label %.body.thread160.loopexit.split-lp.loopexit

.noexc110:                                        ; preds = %.noexc43
  %i.hd = invoke noundef zeroext i1 @_RINvXs2_NtNtNtCs6Po7BT7Nknu_5alloc11collections9vec_deque4iterINtB6_4IterNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1K_3any5checkRB19_NCNvXs_NtCs3eCsZ2Mx498_14http_body_util4utilINtB3m_7BufListB19_ENtNtNtB1d_3buf8buf_impl3Buf13has_remaining0E0INtNtNtB1S_3ops12control_flow11ControlFlowuEECsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e)
          to label %.noexc41 unwind label %.body.thread160.loopexit.split-lp.loopexit

.noexc41:                                         ; preds = %.noexc110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1810
  br i1 %i.hd, label %bb.ax, label %_RINvXs1_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit

bb.ax:                                            ; preds = %.noexc41
  call void @llvm.experimental.noalias.scope.decl(metadata !1813)
  %i.he = load i64, ptr %i.ah, align 8, !alias.scope !1813, !noundef !10
  %.not.i.i107 = icmp eq i64 %i.he, 0
  br i1 %.not.i.i107, label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, label %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsgO8S5jLFugx_23deltalake_catalog_unity.exit

_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread: ; preds = %bb.ax
  %i.hf = load i64, ptr %i.bi, align 8, !alias.scope !1816, !noalias !1819, !noundef !10
  br label %bb.az

_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.ax
  %i.hg = load i64, ptr %i.gy, align 8, !alias.scope !1813, !noundef !10 ; 2 uses
  %i.hh = load i64, ptr %1, align 8, !range !127, !alias.scope !1813, !noundef !10 ; 2 uses
  %.not7.i.i = icmp ult i64 %i.hg, %i.hh
  %i.hi = select i1 %.not7.i.i, i64 0, i64 %i.hh
  %.sroa.03.0.i.i = sub nuw i64 %i.hg, %i.hi
  %i.hj = load ptr, ptr %i.gz, align 8, !alias.scope !1813, !nonnull !10, !noundef !10
  %i.hk = getelementptr inbounds nuw [32 x i8], ptr %i.hj, i64 %.sroa.03.0.i.i ; 2 uses
  %i.hl = getelementptr i8, ptr %i.hk, i64 8
  %.val.i.i108 = load ptr, ptr %i.hl, align 8, !noalias !1813, !nonnull !10, !noundef !10 ; 2 uses
  %i.hm = getelementptr i8, ptr %i.hk, i64 16
  %.val8.i.i = load i64, ptr %i.hm, align 8, !noalias !1813, !noundef !10 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1821)
  %i.hn = load i64, ptr %i.bi, align 8, !alias.scope !1821, !noalias !1823, !noundef !10 ; 2 uses
  %i.ho = load i64, ptr %i.bj, align 8, !alias.scope !1821, !noalias !1823, !noundef !10
  %i.hp = sub i64 %i.ho, %i.hn
  %.not.i102 = icmp ugt i64 %.val8.i.i, %i.hp
  br i1 %.not.i102, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.hq = invoke noundef zeroext i1 @_RNvMNtCs9Ct3XQYJhun_5bytes9bytes_mutNtB2_8BytesMut13reserve_inner(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %.val8.i.i, i1 noundef zeroext true)
          to label %.noexc104 unwind label %.body.thread160.loopexit.split-lp.loopexit ; 0 uses

.noexc104:                                        ; preds = %bb.ay
  %.pre.i103 = load i64, ptr %i.bi, align 8, !alias.scope !1821, !noalias !1823
  br label %bb.az

bb.az:                                            ; preds = %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread, %.noexc104, %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %.sroa.0.0.i.i109152 = phi ptr [ %.val.i.i108, %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.val.i.i108, %.noexc104 ], [ inttoptr (i64 1 to ptr), %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread ]
  %.sroa.3.0.i.i151 = phi i64 [ %.val8.i.i, %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.val8.i.i, %.noexc104 ], [ 0, %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread ] ; 6 uses
  %i.hr = phi i64 [ %i.hn, %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsgO8S5jLFugx_23deltalake_catalog_unity.exit ], [ %.pre.i103, %.noexc104 ], [ %i.hf, %_RNvXNtNtCs9Ct3XQYJhun_5bytes3buf8buf_implQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB6_5bytes5BytesENtB2_3Buf5chunkCsgO8S5jLFugx_23deltalake_catalog_unity.exit.thread ]
  %i.hs = load ptr, ptr %i.ae, align 8, !alias.scope !1821, !noalias !1823, !nonnull !10, !noundef !10
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ht, ptr nonnull readonly align 1 %.sroa.0.0.i.i109152, i64 range(i64 0, -9223372036854775808) %.sroa.3.0.i.i151, i1 false)
  %i.hu = load i64, ptr %i.bj, align 8, !alias.scope !1821, !noalias !1823, !noundef !10
  %i.hv = load i64, ptr %i.bi, align 8, !alias.scope !1821, !noalias !1823, !noundef !10 ; 2 uses
  %i.hw = sub i64 %i.hu, %i.hv                    ; 2 uses
  %i.hx = icmp ugt i64 %.sroa.3.0.i.i151, %i.hw
  br i1 %i.hx, label %bb.ba, label %.noexc42, !prof !112

bb.ba:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1825
  store i64 %.sroa.3.0.i.i151, ptr %i.f, align 8, !noalias !1825
  br label %.invoke

.noexc42:                                         ; preds = %bb.az
  %i.hy = add i64 %i.hv, %.sroa.3.0.i.i151
  store i64 %i.hy, ptr %i.bi, align 8, !alias.scope !1821, !noalias !1823
  call void @llvm.experimental.noalias.scope.decl(metadata !1826)
  %.not22.i.i = icmp eq i64 %.sroa.3.0.i.i151, 0
  br i1 %.not22.i.i, label %.noexc43.backedge, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc42, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i
  %.sroa.0.023.i.i = phi i64 [ %i.ik, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i ], [ %.sroa.3.0.i.i151, %.noexc42 ] ; 4 uses
  %i.hz = load i64, ptr %i.ah, align 8, !alias.scope !1826, !noundef !10
  %.not9.i.i = icmp eq i64 %i.hz, 0
  br i1 %.not9.i.i, label %.invoke288, label %bb.bb, !prof !112

bb.bb:                                            ; preds = %.lr.ph.i.i
  %i.ia = load i64, ptr %i.gy, align 8, !alias.scope !1826, !noundef !10 ; 2 uses
  %i.ib = load i64, ptr %1, align 8, !range !127, !alias.scope !1826, !noundef !10 ; 2 uses
  %.not10.i.i = icmp ult i64 %i.ia, %i.ib
  %i.ic = select i1 %.not10.i.i, i64 0, i64 %i.ib
  %.sroa.04.0.i.i = sub nuw i64 %i.ia, %i.ic
  %i.id = load ptr, ptr %i.gz, align 8, !alias.scope !1826, !nonnull !10, !noundef !10
  %i.ie = getelementptr inbounds nuw [32 x i8], ptr %i.id, i64 %.sroa.04.0.i.i ; 3 uses
  %i.if = getelementptr i8, ptr %i.ie, i64 16     ; 3 uses
  %.val.i.i = load i64, ptr %i.if, align 8, !noundef !10 ; 4 uses
  %i.ig = icmp ugt i64 %.val.i.i, %.sroa.0.023.i.i
  br i1 %i.ig, label %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit14.i.i, label %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i

_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i: ; preds = %bb.bb
  store i64 0, ptr %i.if, align 8, !alias.scope !1829
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.ii = load ptr, ptr %i.ih, align 8, !alias.scope !1829, !noundef !10
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 %.val.i.i
  store ptr %i.ij, ptr %i.ih, align 8, !alias.scope !1829
  %i.ik = sub nuw i64 %.sroa.0.023.i.i, %.val.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1826
  invoke void @_RNvMs3_NtNtCs6Po7BT7Nknu_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesE9pop_frontCsgO8S5jLFugx_23deltalake_catalog_unity(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %.noexc100 unwind label %.body.thread160.loopexit

.noexc100:                                        ; preds = %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1832)
  %i.il = load ptr, ptr %i.g, align 8, !alias.scope !1832, !noalias !1826, !noundef !10 ; 2 uses
  %i.im = icmp eq ptr %i.il, null
  br i1 %i.im, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, label %bb.bc

bb.bc:                                            ; preds = %.noexc100
  call void @llvm.experimental.noalias.scope.decl(metadata !1835)
  call void @llvm.experimental.noalias.scope.decl(metadata !1838)
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !noalias !1841, !nonnull !10, !noundef !10
  %i.ip = load ptr, ptr %i.hb, align 8, !alias.scope !1841, !noalias !1826, !noundef !10
  %i.iq = load i64, ptr %i.hc, align 8, !alias.scope !1841, !noalias !1826, !noundef !10
  invoke void %i.io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ha, ptr noundef %i.ip, i64 noundef %i.iq)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i unwind label %.body.thread160.loopexit, !inline_history !1842

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i: ; preds = %bb.bc, %.noexc100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1826
  %.not.i.i98 = icmp eq i64 %i.ik, 0
  br i1 %.not.i.i98, label %.noexc43.backedge, label %.lr.ph.i.i

_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit14.i.i: ; preds = %bb.bb
  %i.ir = sub nuw i64 %.val.i.i, %.sroa.0.023.i.i
  store i64 %i.ir, ptr %i.if, align 8, !alias.scope !1843
  %i.is = getelementptr inbounds nuw i8, ptr %i.ie, i64 8 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !alias.scope !1843, !noundef !10
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 %.sroa.0.023.i.i
  store ptr %i.iu, ptr %i.is, align 8, !alias.scope !1843
  br label %.noexc43.backedge

.noexc43.backedge:                                ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit.i.i, %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit14.i.i, %.noexc42
  br label %.noexc43

.body.thread160.loopexit:                         ; preds = %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i, %bb.bc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread160.loopexit.split-lp.loopexit:       ; preds = %.noexc110, %bb.ay, %.noexc43
  %lpad.loopexit165 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RNvXs3_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesNtNtNtB7_3buf8buf_impl3Buf7advance.exit.i.i.i, %bb.ah
  %lpad.loopexit168 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %.noexc68, %bb.ac, %bb.aa
  %lpad.loopexit170 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.invoke288, %.invoke, %.noexc95, %.noexc91, %bb.n, %.noexc18, %.noexc81, %bb.x, %bb.z, %.noexc129, %.noexc126, %.noexc35, %.noexc36, %.noexc123, %bb.au, %bb.aw, %bb.ai, %bb.o, %.noexc17, %.noexc86, %bb.m, %bb.l, %bb.j, %bb.al, %bb.ak
  %lpad.loopexit.split-lp171 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RINvXs1_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %.noexc23, %.noexc41, %bb.as, %.noexc34, %bb.v, %.noexc
  %.sroa.0.0.copyload = load ptr, ptr %i.ae, align 8 ; 4 uses
  %.sroa.5.0.copyload = load i64, ptr %i.bi, align 8 ; 2 uses
  %.sroa.7.0.copyload = load i64, ptr %i.bj, align 8
  %.sroa.8.0.copyload = load ptr, ptr %i.bk, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1846)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  %i.iv = ptrtoint ptr %.sroa.8.0.copyload to i64 ; 2 uses
  %i.iw = and i64 %i.iv, 1
  %.not.i47 = icmp eq i64 %i.iw, 0
  br i1 %.not.i47, label %bb.be, label %.noexc48

.noexc48:                                         ; preds = %_RINvXs1_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  %i.ix = lshr i64 %i.iv, 5                       ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.iy = sub nsw i64 0, %i.ix
  %i.iz = getelementptr inbounds i8, ptr %.sroa.0.0.copyload, i64 %i.iy
  %i.ja = add i64 %i.ix, %.sroa.5.0.copyload
  %i.jb = add i64 %i.ix, %.sroa.7.0.copyload      ; 2 uses
  %i.jc = icmp sgt i64 %i.jb, -1
  call void @llvm.assume(i1 %i.jc)
  store i64 %i.jb, ptr %i.t, align 8, !noalias !1849
  %i.jd = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.iz, ptr %i.jd, align 8, !noalias !1849
  %i.je = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 %i.ja, ptr %i.je, align 8, !noalias !1849
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1849
  call void @_RNvXsE_NtCs9Ct3XQYJhun_5bytes5bytesNtB5_5BytesINtNtCsbvkFyIu7lgC_4core7convert4FromINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE4from(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1849
  store i64 %i.ix, ptr %i.r, align 8, !noalias !1854
  %i.jf = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.jg = load i64, ptr %i.jf, align 8, !alias.scope !1851, !noalias !1849, !noundef !10 ; 4 uses
  %.not.i.i = icmp ugt i64 %i.ix, %i.jg
  br i1 %.not.i.i, label %bb.bd, label %bb.bg, !prof !112

bb.bd:                                            ; preds = %.noexc48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1854
  store i64 %i.jg, ptr %i.q, align 8, !noalias !1854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1854
  store ptr %i.r, ptr %i.p, align 8, !noalias !1854
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !1854
  %i.jh = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.q, ptr %i.jh, align 8, !noalias !1854
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr @_RNvXsZ_NtNtCsbvkFyIu7lgC_4core3fmt3numjNtB7_5Debug3fmt, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !1854
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking9panic_fmt(ptr noundef nonnull @87, ptr noundef nonnull %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @89) #35
          to label %.noexc.i unwind label %bb.bf, !noalias !1849

.noexc.i:                                         ; preds = %bb.bd
  unreachable

bb.be:                                            ; preds = %_RINvXs1_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB6_8BytesMutNtNtNtB8_3buf7buf_mut6BufMut3putINtNtBU_4take4TakeQINtNtCs3eCsZ2Mx498_14http_body_util4util7BufListNtNtB8_5bytes5BytesEEECsgO8S5jLFugx_23deltalake_catalog_unity.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.copyload, ptr %i.ji, align 8, !alias.scope !1846, !noalias !1855
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.5.0.copyload, ptr %i.jj, align 8, !alias.scope !1846, !noalias !1855
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.8.0.copyload, ptr %i.jk, align 8, !alias.scope !1846, !noalias !1855
  store ptr @_RNvNtCs9Ct3XQYJhun_5bytes9bytes_mut13SHARED_VTABLE, ptr %0, align 8, !alias.scope !1846, !noalias !1855
  br label %bb.bi

bb.bf:                                            ; preds = %bb.bd
  %i.jl = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1856)
  call void @llvm.experimental.noalias.scope.decl(metadata !1859)
  %i.jm = load ptr, ptr %i.s, align 8, !alias.scope !1862, !noalias !1849, !nonnull !10, !align !175, !noundef !10
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 32
  %i.jo = load ptr, ptr %i.jn, align 8, !noalias !1863, !nonnull !10, !noundef !10
  %i.jp = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.jq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.jr = load ptr, ptr %i.jq, align 8, !alias.scope !1862, !noalias !1849, !noundef !10
  invoke void %i.jo(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jp, ptr noundef %i.jr, i64 noundef %i.jg)
          to label %.body.thread156 unwind label %bb.bh, !noalias !1849, !inline_history !1864

bb.bg:                                            ; preds = %.noexc48
  %i.js = sub nuw i64 %i.jg, %i.ix
  store i64 %i.js, ptr %i.jf, align 8, !alias.scope !1851, !noalias !1849
  %i.jt = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.ju = load ptr, ptr %i.jt, align 8, !alias.scope !1851, !noalias !1849, !noundef !10
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 %i.ix
  store ptr %i.jv, ptr %i.jt, align 8, !alias.scope !1851, !noalias !1849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false), !noalias !1855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1849
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34, !noalias !1849
  unreachable

bb.bi:                                            ; preds = %bb.bg, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.bj

bb.bj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, %bb.bi, %bb.f
  ret void

.body.thread156:                                  ; preds = %bb.bl, %.body.thread, %bb.bf
  %.pn = phi { ptr, i32 } [ %eh.lpad-body155, %.body.thread ], [ %i.jl, %bb.bf ], [ %i.jy, %bb.bl ]
  resume { ptr, i32 } %.pn

.body.thread:                                     ; preds = %.body.thread160.loopexit, %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.body.thread160.loopexit.split-lp.loopexit, %bb.at, %bb.ar, %bb.w, %bb.u
  %eh.lpad-body155 = phi { ptr, i32 } [ %i.cq, %bb.w ], [ %i.gh, %bb.ar ], [ %i.gi, %bb.at ], [ %i.cp, %bb.u ], [ %lpad.loopexit, %.body.thread160.loopexit ], [ %lpad.loopexit165, %.body.thread160.loopexit.split-lp.loopexit ], [ %lpad.loopexit168, %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit170, %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp171, %.body.thread160.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXs_NtCs9Ct3XQYJhun_5bytes9bytes_mutNtB4_8BytesMutNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ae)
          to label %.body.thread156 unwind label %bb.bk

bb.bk:                                            ; preds = %bb.bl, %.body.thread
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.bl:                                            ; preds = %bb.bn, %bb.e
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1865)
  call void @llvm.experimental.noalias.scope.decl(metadata !1868)
  %i.jz = load ptr, ptr %i.ag, align 8, !alias.scope !1871, !nonnull !10, !align !175, !noundef !10
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kb = load ptr, ptr %i.ka, align 8, !noalias !1871, !nonnull !10, !noundef !10
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ke = load ptr, ptr %i.kd, align 8, !alias.scope !1871, !noundef !10
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.kg = load i64, ptr %i.kf, align 8, !alias.scope !1871, !noundef !10
  invoke void %i.kb(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kc, ptr noundef %i.ke, i64 noundef %i.kg)
          to label %.body.thread156 unwind label %bb.bk, !inline_history !1864

bb.bm:                                            ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !1872)
  %i.kh = load ptr, ptr %i.af, align 8, !alias.scope !1872, !noundef !10 ; 2 uses
  %i.ki = icmp eq ptr %i.kh, null
  br i1 %i.ki, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !1875)
  call void @llvm.experimental.noalias.scope.decl(metadata !1878)
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kk = load ptr, ptr %i.kj, align 8, !noalias !1881, !nonnull !10, !noundef !10
  %i.kl = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.km = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.kn = load ptr, ptr %i.km, align 8, !alias.scope !1881, !noundef !10
  %i.ko = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.kp = load i64, ptr %i.ko, align 8, !alias.scope !1881, !noundef !10
  invoke void %i.kk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.kl, ptr noundef %i.kn, i64 noundef %i.kp)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit unwind label %bb.bl, !inline_history !1882

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesEECsgO8S5jLFugx_23deltalake_catalog_unity.exit: ; preds = %bb.bm, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ag, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  br label %bb.bj
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs_NtCs4tdlwR1I4n2_7parquet6errorsNtB4_12ParquetErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #14 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !495, !noundef !10
  %i.b = icmp eq i64 %i.a, 5                      ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !align !175
  %.sroa.3.0 = select i1 %i.b, ptr %i.f, ptr undef
  %.sroa.0.0 = select i1 %i.b, ptr %i.d, ptr null
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXs_NtNtCs4j34XAPZOn0_4http6header3mapNtB4_9HeaderMapNtNtCsbvkFyIu7lgC_4core7default7Default7defaultCsgO8S5jLFugx_23deltalake_catalog_unity(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) initializes((0, 8), (24, 90)) %0) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr inttoptr (i64 2 to ptr), ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 0, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal { ptr, ptr } @_RNvXs_NtNtCsgO8S5jLFugx_23deltalake_catalog_unity6client5retryNtB4_10RetryErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0) unnamed_addr #14 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !align !175, !noundef !10
  %.not = icmp eq ptr %i.b, null
  %. = select i1 %.not, ptr null, ptr %i.a
  %i.c = insertvalue { ptr, ptr } poison, ptr %., 0
  %i.d = insertvalue { ptr, ptr } %i.c, ptr @196, 1
  ret { ptr, ptr } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtCs4tdlwR1I4n2_7parquet6errorsNtB5_12ParquetErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #8 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = load i64, ptr %0, align 8, !range !495, !noundef !10
  switch i64 %i.i, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
    i64 4, label %bb.f
    i64 5, label %bb.g
    i64 6, label %bb.h
    i64 7, label %bb.i
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.h, align 8
  %i.k = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @234, i64 noundef 7, ptr noundef nonnull %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.g, align 8
  %i.m = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 3, ptr noundef nonnull %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @95)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.j

bb.d:                                             ; preds = %bb.a
end_hunk_8
